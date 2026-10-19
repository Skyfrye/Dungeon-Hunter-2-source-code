// ===== 572b58 std::priv::__ufill<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,int>(glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ufill<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,int>(
        _DWORD *result,
        int a2,
        int a3)
{
  int v4; // r5
  _DWORD *v5; // r4

  v4 = 954437177 * ((a2 - (int)result) >> 4);
  if ( v4 > 0 )
  {
    v5 = result;
    do
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v5,
        a3);
      result = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
                 v5 + 18,
                 a3 + 72);
      --v4;
      v5 += 36;
    }
    while ( v4 );
  }
  return result;
}


// ===== 572bbc std::priv::__ucopy<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,int>(glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v6; // r9
  int v7; // r6
  int v8; // r5

  v3 = (a2 - a1) >> 4;
  v6 = 954437177 * v3;
  if ( 954437177 * v3 <= 0 )
    return a3;
  v7 = 954437177 * v3;
  v8 = 0;
  do
  {
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)(a3 + v8),
      a1 + v8);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)(a3 + v8 + 72),
      a1 + v8 + 72);
    --v7;
    v8 += 144;
  }
  while ( v7 );
  return a3 + 144 * v6;
}


// ===== 572c3c std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,uint,uint,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0> const&) =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  int v5; // r12
  unsigned int v6; // lr
  unsigned int v7; // lr
  unsigned int v8; // r3

  a1[16] = a1;
  a1[17] = a1;
  v5 = *(_DWORD *)(a2 + 68);
  v6 = (*(_DWORD *)(a2 + 64) - v5) >> 2;
  if ( a3 > v6 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
    return a1;
  }
  else
  {
    v7 = v6 - a3;
    if ( a4 > v7 )
      v8 = a3 + v7;
    else
      v8 = a3 + a4;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      a1,
      (_BYTE *)(v5 + 4 * a3),
      (_BYTE *)(v5 + 4 * v8));
    return a1;
  }
}


// ===== 572ca4 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::convertTextData<ulong>(ulong *,char *,int) =====
void __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::convertTextData<unsigned long>(
        _DWORD *a1,
        unsigned int *a2,
        void *a3,
        signed int a4)
{
  unsigned int v5; // r0
  bool v8; // cc
  int v10; // r0
  unsigned int v11; // r3
  bool v12; // cc
  int v13; // r3
  unsigned int v14; // r3
  unsigned int *v15; // r2
  unsigned int v16; // t1
  _BYTE *v17; // r0
  int v18; // r3

  v5 = a1[8];
  v8 = v5 > 3;
  if ( v5 != 3 )
    v8 = v5 > 1;
  v10 = !v8 || v5 == 5;
  v11 = a1[7];
  v12 = v11 > 3;
  if ( v11 != 3 )
    v12 = v11 > 1;
  v13 = !v12 || v11 == 5;
  if ( v10 != v13 )
  {
    v14 = *a2;
    if ( *a2 )
    {
      v15 = a2;
      do
      {
        *v15 = HIBYTE(v14) | (v14 << 24) | ((v14 & 0xFF0000) >> 8) | ((v14 & 0xFF00) << 8);
        v16 = v15[1];
        ++v15;
        v14 = v16;
      }
      while ( v16 );
    }
  }
  v17 = operator new[](a4, 0);
  a1[2] = v17;
  if ( a4 > 0 )
  {
    v18 = 0;
    while ( 1 )
    {
      v17[v18] = a2[v18];
      if ( ++v18 == a4 )
        break;
      v17 = (_BYTE *)a1[2];
    }
    v17 = (_BYTE *)a1[2];
  }
  a1[5] = a4;
  a1[4] = v17;
  if ( a3 )
    operator delete[](a3);
}


// ===== 572d94 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::convertTextData<ushort>(ushort *,char *,int) =====
void __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::convertTextData<unsigned short>(
        _DWORD *a1,
        _WORD *a2,
        void *a3,
        signed int a4)
{
  unsigned int v5; // r0
  bool v8; // cc
  int v10; // r0
  unsigned int v11; // r3
  bool v12; // cc
  int v13; // r3
  int v14; // r3
  _WORD *v15; // r2
  int v16; // t1
  _BYTE *v17; // r0
  int v18; // r3

  v5 = a1[8];
  v8 = v5 > 3;
  if ( v5 != 3 )
    v8 = v5 > 1;
  v10 = !v8 || v5 == 5;
  v11 = a1[7];
  v12 = v11 > 3;
  if ( v11 != 3 )
    v12 = v11 > 1;
  v13 = !v12 || v11 == 5;
  if ( v10 != v13 )
  {
    v14 = (unsigned __int16)*a2;
    if ( *a2 )
    {
      v15 = a2;
      do
      {
        *v15 = (v14 >> 8) | ((_WORD)v14 << 8);
        v16 = (unsigned __int16)v15[1];
        ++v15;
        v14 = v16;
      }
      while ( v16 );
    }
  }
  v17 = operator new[](a4, 0);
  a1[2] = v17;
  if ( a4 > 0 )
  {
    v18 = 0;
    while ( 1 )
    {
      v17[v18] = a2[v18];
      if ( ++v18 == a4 )
        break;
      v17 = (_BYTE *)a1[2];
    }
    v17 = (_BYTE *)a1[2];
  }
  a1[5] = a4;
  a1[4] = v17;
  if ( a3 )
    operator delete[](a3);
}


// ===== 572e78 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::readFile(glitch::io::IFileReadCallBack *) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::readFile(_DWORD *a1, int a2)
{
  int v4; // r0
  int v5; // r8
  int v6; // r7
  unsigned int *v7; // r4
  char *v9; // r2
  int v10; // r3
  int v11; // r2
  int v12; // r2
  int v13; // r3
  int v14; // r2

  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2);
  v5 = v4;
  if ( v4 < 0 )
    return 0;
  v6 = v4 + 4;
  v7 = (unsigned int *)operator new[](v4 + 4, 0);
  if ( !(*(int (__fastcall **)(int, unsigned int *, int))(*(_DWORD *)a2 + 8))(a2, v7, v5) )
  {
    if ( v7 )
    {
      operator delete[](v7);
      return 0;
    }
    return 0;
  }
  v9 = (char *)v7 + v6;
  *(v9 - 4) = 0;
  *(v9 - 1) = 0;
  *(v9 - 2) = 0;
  *(v9 - 3) = 0;
  if ( *v7 == -131072 )
  {
    v10 = v6 >> 2;
    v11 = 4;
LABEL_16:
    a1[7] = v11;
    glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::convertTextData<unsigned long>(a1, v7 + 1, v7, v10 - 1);
    return 1;
  }
  if ( *v7 == 65279 )
  {
    v10 = v6 >> 2;
    v11 = 5;
    goto LABEL_16;
  }
  v12 = *(unsigned __int16 *)v7;
  if ( v12 == 65534 )
  {
    v13 = v6 >> 1;
    v14 = 2;
  }
  else
  {
    if ( v12 != 65279 )
    {
      a1[5] = v6;
      a1[7] = 0;
      a1[2] = v7;
      a1[4] = v7;
      return 1;
    }
    v13 = v6 >> 1;
    v14 = 3;
  }
  a1[7] = v14;
  glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::convertTextData<unsigned short>(
    a1,
    (_WORD *)v7 + 1,
    v7,
    v13 - 1);
  return 1;
}


// ===== 572fb0 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<ushort>(ushort *,char *,int) =====
void __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<unsigned short>(
        _DWORD *a1,
        _WORD *a2,
        void *a3,
        int a4)
{
  unsigned int v5; // r0
  bool v8; // cc
  int v10; // r0
  unsigned int v11; // r3
  bool v12; // cc
  int v13; // r3
  int v14; // r3
  _WORD *v15; // r2
  int v16; // t1
  char *v17; // r0
  int v18; // r3

  v5 = a1[8];
  v8 = v5 > 3;
  if ( v5 != 3 )
    v8 = v5 > 1;
  v10 = !v8 || v5 == 5;
  v11 = a1[7];
  v12 = v11 > 3;
  if ( v11 != 3 )
    v12 = v11 > 1;
  v13 = !v12 || v11 == 5;
  if ( v10 != v13 )
  {
    v14 = (unsigned __int16)*a2;
    if ( *a2 )
    {
      v15 = a2;
      do
      {
        *v15 = (v14 >> 8) | ((_WORD)v14 << 8);
        v16 = (unsigned __int16)v15[1];
        ++v15;
        v14 = v16;
      }
      while ( v16 );
    }
  }
  v17 = (char *)operator new[](4 * a4, 0);
  a1[2] = v17;
  if ( a4 > 0 )
  {
    v18 = 0;
    while ( 1 )
    {
      *(_DWORD *)&v17[1 * v18] = (unsigned __int16)a2[v18];
      if ( ++v18 == a4 )
        break;
      v17 = (char *)a1[2];
    }
    v17 = (char *)a1[2];
  }
  a1[5] = a4;
  a1[4] = v17;
  if ( a3 )
    operator delete[](a3);
}


// ===== 573094 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<char>(char *,char *,int) =====
void __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<char>(
        _DWORD *a1,
        int a2,
        void *a3,
        int a4)
{
  _DWORD *v8; // r0
  int v9; // r3

  v8 = operator new[](4 * a4, 0);
  a1[2] = v8;
  if ( a4 > 0 )
  {
    v9 = 0;
    while ( 1 )
    {
      v8[v9] = *(char *)(a2 + v9);
      if ( ++v9 == a4 )
        break;
      v8 = (_DWORD *)a1[2];
    }
    v8 = (_DWORD *)a1[2];
  }
  a1[5] = a4;
  a1[4] = v8;
  if ( a3 )
    operator delete[](a3);
}


// ===== 573104 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::readFile(glitch::io::IFileReadCallBack *) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::readFile(_DWORD *a1, int a2)
{
  int v4; // r0
  int v5; // r8
  int v6; // r6
  unsigned int *v7; // r4
  char *v9; // r2
  int v10; // r3
  int v11; // r2
  int v12; // r2
  int v13; // r3
  int v14; // r2

  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2);
  v5 = v4;
  if ( v4 < 0 )
    return 0;
  v6 = v4 + 4;
  v7 = (unsigned int *)operator new[](v4 + 4, 0);
  if ( !(*(int (__fastcall **)(int, unsigned int *, int))(*(_DWORD *)a2 + 8))(a2, v7, v5) )
  {
    if ( v7 )
    {
      operator delete[](v7);
      return 0;
    }
    return 0;
  }
  v9 = (char *)v7 + v6;
  *(v9 - 4) = 0;
  *(v9 - 1) = 0;
  *(v9 - 2) = 0;
  *(v9 - 3) = 0;
  if ( *v7 == -131072 )
  {
    v10 = v6 >> 2;
    v11 = 4;
LABEL_16:
    a1[7] = v11;
    glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<unsigned long>(
      a1,
      v7 + 1,
      (int)v7,
      v10 - 1);
    return 1;
  }
  if ( *v7 == 65279 )
  {
    v10 = v6 >> 2;
    v11 = 5;
    goto LABEL_16;
  }
  v12 = *(unsigned __int16 *)v7;
  if ( v12 == 65534 )
  {
    v13 = v6 >> 1;
    v14 = 2;
  }
  else
  {
    if ( v12 != 65279 )
    {
      a1[7] = 0;
      glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<char>(a1, (int)v7, v7, v5 + 4);
      return 1;
    }
    v13 = v6 >> 1;
    v14 = 3;
  }
  a1[7] = v14;
  glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<unsigned short>(
    a1,
    (_WORD *)v7 + 1,
    v7,
    v13 - 1);
  return 1;
}


// ===== 573244 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::find(wchar_t,uint) [clone] =====
int __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::find(
        int a1,
        unsigned int a2)
{
  int v3; // r3
  int v4; // r0
  _DWORD *v5; // r0
  int v7; // [sp+0h] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 64);
  v4 = *(_DWORD *)(a1 + 68);
  if ( a2 >= (v3 - v4) >> 2 )
    return -1;
  v7 = 38;
  v5 = std::priv::__find_if<wchar_t const*,std::priv::_Eq_char_bound<std::char_traits<wchar_t>>>(
         (_DWORD *)(v4 + 4 * a2),
         v3,
         &v7);
  if ( v5 == *(_DWORD **)(a1 + 64) )
    return -1;
  else
    return ((int)v5 - *(_DWORD *)(a1 + 68)) >> 2;
}


// ===== 5732ac glitch::io::CIrrXMLFileReadCallBack::~CIrrXMLFileReadCallBack() =====
void __fastcall glitch::io::CIrrXMLFileReadCallBack::~CIrrXMLFileReadCallBack(
        glitch::io::CIrrXMLFileReadCallBack *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 1);
  *(_DWORD *)this = off_9745B0;
  glitch::IReferenceCounted::drop(v2);
  LC_API_FREE_0(this);
}


// ===== 5732ec std::priv::__copy<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,int>(glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v4; // r7
  int v5; // r4
  int v6; // r8
  int v7; // r6
  int v8; // r5

  v3 = (a2 - a1) >> 4;
  v4 = a3;
  v5 = a1;
  v6 = 954437177 * v3;
  if ( 954437177 * v3 > 0 )
  {
    v7 = 954437177 * v3;
    v8 = a3;
    while ( 1 )
    {
      if ( v8 != v5 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v8,
          *(const wchar_t **)(v5 + 68),
          *(_DWORD **)(v5 + 64));
      if ( v8 + 72 != v5 + 72 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v8 + 72,
          *(const wchar_t **)(v5 + 140),
          *(_DWORD **)(v5 + 136));
      --v7;
      v8 += 144;
      if ( !v7 )
        break;
      v5 += 144;
    }
    v4 += 144 * v6;
  }
  return v4;
}


// ===== 573384 std::priv::__copy<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,int>(glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,int>(
        _BYTE **a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  _BYTE **v4; // r4
  _DWORD *v5; // r7
  int v6; // r8
  _DWORD *v7; // r5
  int v8; // r6

  v3 = (a2 - (int)a1) >> 4;
  v4 = a1;
  v5 = a3;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 > 0 )
  {
    v7 = a3;
    v8 = -1431655765 * v3;
    while ( 1 )
    {
      if ( v7 != v4 )
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v7,
          v4[5],
          v4[4]);
      if ( v7 + 6 != v4 + 6 )
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v7 + 6,
          v4[11],
          v4[10]);
      --v8;
      v7 += 12;
      if ( !v8 )
        break;
      v4 += 12;
    }
    v5 += 12 * v6;
  }
  return v5;
}


// ===== 573414 std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute*,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute*,std::__false_type const&) =====
int __fastcall std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v5; // r0
  int v6; // r7
  int v7; // r8
  int v8; // r6
  int v9; // r3
  void *v10; // r3
  bool v11; // zf

  v5 = std::priv::__copy<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(_DWORD *)(a1 + 4);
  v7 = v5;
  if ( v6 != v5 )
  {
    v8 = v5;
    do
    {
      v9 = *(_DWORD *)(v8 + 140);
      if ( v9 != v8 + 72 && v9 )
        GlitchFree(*(void **)(v8 + 140));
      v10 = *(void **)(v8 + 68);
      v11 = v10 == (void *)v8;
      v8 += 144;
      if ( !v11 && v10 )
        GlitchFree(v10);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 5734b0 std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute const&) =====
void __fastcall std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  int v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  void *v8; // r6
  _DWORD *v9; // r8
  void **v10; // r5
  void **v11; // r10
  _DWORD *v12; // r8
  void **v13; // r3
  void **v14; // r3

  v2 = a1[1];
  if ( v2 == a1[2] )
  {
    v5 = 954437177 * ((v2 - *a1) >> 4);
    if ( v5 )
      v6 = 1908874354 * ((v2 - *a1) >> 4);
    else
      v6 = 1;
    if ( v6 > 0x1C71C71 || v5 > v6 )
      v7 = -112;
    else
      v7 = 144 * v6;
    v8 = GlitchAlloc(v7, 0);
    v9 = (_DWORD *)std::priv::__ucopy<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute *,int>(
                     *a1,
                     v2,
                     (int)v8);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v9,
      a2);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v9 + 18,
      a2 + 72);
    v10 = (void **)a1[1];
    v11 = (void **)*a1;
    v12 = v9 + 36;
    if ( v10 != (void **)*a1 )
    {
      do
      {
        v10 -= 36;
        v13 = (void **)v10[35];
        if ( v13 != v10 + 18 && v13 )
          GlitchFree(v10[35]);
        v14 = (void **)v10[17];
        if ( v14 != v10 )
        {
          if ( v14 )
            GlitchFree(v10[17]);
        }
      }
      while ( v11 != v10 );
      v11 = (void **)*a1;
    }
    GlitchFree(v11);
    a1[2] = (int)v8 + v7;
    *a1 = (int)v8;
    a1[1] = (int)v12;
  }
  else
  {
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)a1[1],
      a2);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)(v2 + 72),
      a2 + 72);
    a1[1] += 144;
  }
}


// ===== 573610 std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3
  void **v5; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 36;
    v4 = (void **)v1[35];
    if ( v4 != v1 + 18 && v4 )
      GlitchFree(v1[35]);
    v5 = (void **)v1[17];
    if ( v5 != v1 && v5 )
      GlitchFree(v1[17]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 573688 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        int a1,
        int a2,
        int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r6
  _DWORD *v9; // r5
  _DWORD *v10; // r8
  void **v11; // r7
  void **v12; // r10
  _DWORD *v13; // r8
  void **v14; // r3

  v6 = 954437177 * ((*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 3);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 <= 0x38E38E3 && v6 <= v7 )
    v8 = 18 * v7;
  else
    v8 = -10;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = std::priv::__uninitialized_move<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::__false_type>(
          *(_DWORD **)a1,
          a2,
          v9);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v10,
    a3);
  v11 = *(void ***)(a1 + 4);
  v12 = *(void ***)a1;
  v13 = v10 + 18;
  if ( v11 != *(void ***)a1 )
  {
    do
    {
      v11 -= 18;
      v14 = (void **)v11[17];
      if ( v14 != v11 && v14 )
        GlitchFree(v11[17]);
    }
    while ( v12 != v11 );
    v12 = *(void ***)a1;
  }
  GlitchFree(v12);
  *(_DWORD *)(a1 + 8) = &v9[v8];
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v13;
}


// ===== 57378c glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseComment(void) =====
void __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseComment(_DWORD *a1)
{
  int v1; // r2
  int v3; // r1
  int v4; // r2
  int v5; // r0
  int v6; // r3
  int v7; // r3
  int v8; // r3
  _DWORD v9[16]; // [sp+0h] [bp-48h] BYREF
  _DWORD *v10; // [sp+40h] [bp-8h]
  void *p; // [sp+44h] [bp-4h]

  v1 = a1[3];
  v3 = v1 + 4;
  a1[6] = 4;
  a1[3] = v1 + 4;
  v4 = v1 + 8;
  v5 = 1;
  do
  {
    v6 = *(_DWORD *)(v4 - 4);
    if ( v6 == 62 )
    {
      --v5;
    }
    else if ( v6 == 60 )
    {
      ++v5;
    }
    a1[3] = v4;
    v7 = v4;
    v4 += 4;
  }
  while ( v5 );
  v8 = v7 - 12;
  a1[3] = v8;
  v10 = v9;
  p = v9;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v9,
    (_BYTE *)(v3 + 8),
    (_BYTE *)(v3 + ((v8 - v3) & 0xFFFFFFFC)));
  if ( a1 + 9 != v9 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)(a1 + 9),
      (const wchar_t *)p,
      v10);
  if ( p != v9 && p )
    GlitchFree(p);
  a1[3] += 12;
}


// ===== 573854 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseClosingXMLElement(void) =====
void __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseClosingXMLElement(int a1)
{
  int v1; // r1
  int v2; // r2
  int v4; // r3
  _BYTE *v5; // r1
  unsigned int v6; // r2
  char *v7; // r3
  char *v8; // r2
  int v9; // t1
  _DWORD v10[16]; // [sp+4h] [bp-4Ch] BYREF
  _DWORD *v11; // [sp+44h] [bp-Ch]
  void *p; // [sp+48h] [bp-8h]

  v1 = *(_DWORD *)(a1 + 196);
  v2 = *(_DWORD *)(a1 + 200);
  *(_DWORD *)(a1 + 24) = 2;
  *(_BYTE *)(a1 + 180) = 0;
  if ( v1 != v2 )
    std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1 + 196,
      v1,
      v2);
  v4 = *(_DWORD *)(a1 + 12);
  v5 = (_BYTE *)(v4 + 4);
  *(_DWORD *)(a1 + 12) = v4 + 4;
  if ( *(_DWORD *)(v4 + 4) == 62 )
  {
    v6 = 0;
  }
  else
  {
    v7 = (char *)(v4 + 8);
    do
    {
      *(_DWORD *)(a1 + 12) = v7;
      v8 = v7;
      v9 = *(_DWORD *)v7;
      v7 += 4;
    }
    while ( v9 != 62 );
    v6 = (v8 - v5) & 0xFFFFFFFC;
  }
  v11 = v10;
  p = v10;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v10,
    v5,
    &v5[v6]);
  if ( (_DWORD *)(a1 + 36) != v10 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 36,
      (const wchar_t *)p,
      v11);
  if ( p != v10 && p )
    GlitchFree(p);
  *(_DWORD *)(a1 + 12) += 4;
}


// ===== 573928 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::~CXMLReaderImpl() =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::~CXMLReaderImpl(int a1)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  v2 = *(void **)(a1 + 8);
  *(_DWORD *)a1 = off_974690;
  if ( v2 )
    operator delete[](v2);
  std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)(a1 + 196));
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)(a1 + 184));
  v3 = *(void **)(a1 + 176);
  if ( v3 != (void *)(a1 + 108) && v3 )
    GlitchFree(v3);
  v4 = *(void **)(a1 + 104);
  if ( v4 != (void *)(a1 + 36) && v4 )
    GlitchFree(v4);
  return a1;
}


// ===== 5739b0 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::~CXMLReaderImpl() =====
void *__fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::~CXMLReaderImpl(void *a1)
{
  glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::~CXMLReaderImpl((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 5739cc glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeByName(wchar_t const*) =====
wchar_t *__fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeByName(
        int a1,
        wchar_t *a2)
{
  wchar_t *v2; // r6
  int v4; // r0
  int v5; // r6
  int v6; // r7
  _DWORD v8[17]; // [sp+4h] [bp-50h] BYREF
  void *p; // [sp+48h] [bp-Ch]

  v2 = a2;
  if ( a2 )
  {
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v8,
      a2);
    v4 = *(_DWORD *)(a1 + 196);
    if ( *(_DWORD *)(a1 + 200) - v4 <= 143 )
    {
LABEL_11:
      v2 = nullptr;
    }
    else
    {
      v5 = 0;
      v6 = 0;
      while ( 1 )
      {
        ++v6;
        if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
               v4 + v5,
               (int)v8) )
        {
          break;
        }
        v4 = *(_DWORD *)(a1 + 196);
        v5 += 144;
        if ( v6 >= 954437177 * ((*(_DWORD *)(a1 + 200) - v4) >> 4) )
          goto LABEL_11;
      }
      v2 = (wchar_t *)(*(_DWORD *)(a1 + 196) + v5);
    }
    if ( p != v8 && p )
      GlitchFree(p);
  }
  return v2;
}


// ===== 573a94 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueSafe(wchar_t const*) =====
wchar_t __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueSafe(
        int a1,
        wchar_t *a2)
{
  wchar_t *AttributeByName; // r0

  AttributeByName = glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeByName(a1, a2);
  if ( AttributeByName )
    return AttributeByName[35];
  else
    return *(_DWORD *)(a1 + 176);
}


// ===== 573ab0 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValue(wchar_t const*) =====
wchar_t *__fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValue(
        int a1,
        wchar_t *a2)
{
  wchar_t *result; // r0

  result = glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeByName(a1, a2);
  if ( result )
    return (wchar_t *)result[35];
  return result;
}


// ===== 573ac4 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void ***a1,
        int a2,
        int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r10
  void **v9; // r0
  void **v10; // r12
  void **v11; // r5
  int v12; // r3
  int v13; // r8
  void **v14; // r8
  int v15; // r6
  void **v16; // lr
  void **v17; // r3
  void *v18; // r1
  void *v19; // r2
  void *v20; // r3
  _BYTE *v21; // r2
  _BYTE *v22; // r3
  void **v23; // r6
  void **v24; // r7
  void **v25; // r8
  void **v26; // r3

  v6 = -1431655765 * (((char *)a1[1] - (char *)*a1) >> 3);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 <= 0xAAAAAAA && v6 <= v7 )
    v8 = 6 * v7;
  else
    v8 = -4;
  v9 = (void **)GlitchAlloc(v8 * 4, 0);
  v10 = *a1;
  v11 = v9;
  v12 = (a2 - (int)*a1) >> 3;
  v13 = -1431655765 * v12;
  if ( -1431655765 * v12 <= 0 )
  {
    v14 = v9;
    goto LABEL_15;
  }
  v15 = -1431655765 * v12;
  v16 = v9;
  while ( 1 )
  {
    v16[5] = v10[5];
    v17 = (void **)v10[5];
    if ( v17 == v10 )
      break;
    v16[5] = v17;
    --v15;
    v16[4] = v10[4];
    *v16 = *v10;
    v10[5] = nullptr;
    v16 += 6;
    if ( !v15 )
      goto LABEL_14;
LABEL_11:
    v10 += 6;
  }
  v18 = v10[1];
  v19 = v10[2];
  v20 = v10[3];
  *v16 = *v10;
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  v21 = v10[4];
  v22 = v10[5];
  --v15;
  v16[5] = v16;
  v16[4] = (char *)v16 + v21 - v22;
  v16 += 6;
  if ( v15 )
    goto LABEL_11;
LABEL_14:
  v14 = &v9[6 * v13];
LABEL_15:
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v14,
    a3);
  v23 = a1[1];
  v24 = *a1;
  v25 = v14 + 6;
  if ( v23 != *a1 )
  {
    do
    {
      v23 -= 6;
      v26 = (void **)v23[5];
      if ( v26 != v23 && v26 )
        GlitchFree(v23[5]);
    }
    while ( v24 != v23 );
    v24 = *a1;
  }
  GlitchFree(v24);
  *a1 = v11;
  a1[1] = v25;
  a1[2] = &v11[v8];
}


// ===== 573c44 std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute const&) =====
void __fastcall std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  int v2; // r8
  unsigned int v5; // r2
  unsigned int v6; // r1
  size_t v7; // r7
  void *v8; // r6
  _DWORD *v9; // r8
  void **v10; // r5
  void **v11; // r10
  _DWORD *v12; // r8
  void **v13; // r3
  void **v14; // r3

  v2 = a1[1];
  if ( v2 == a1[2] )
  {
    v5 = -1431655765 * ((v2 - *a1) >> 4);
    if ( v5 )
      v6 = 1431655766 * ((v2 - *a1) >> 4);
    else
      v6 = 1;
    if ( v6 > 0x5555555 || v5 > v6 )
      v7 = -16;
    else
      v7 = 48 * v6;
    v8 = GlitchAlloc(v7, 0);
    v9 = (_DWORD *)std::priv::__ucopy<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,int>(
                     *a1,
                     v2,
                     (int)v8);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v9,
      a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v9 + 6,
      a2 + 24);
    v10 = (void **)a1[1];
    v11 = (void **)*a1;
    v12 = v9 + 12;
    if ( v10 != (void **)*a1 )
    {
      do
      {
        v10 -= 12;
        v13 = (void **)v10[11];
        if ( v13 != v10 + 6 && v13 )
          GlitchFree(v10[11]);
        v14 = (void **)v10[5];
        if ( v14 != v10 )
        {
          if ( v14 )
            GlitchFree(v10[5]);
        }
      }
      while ( v11 != v10 );
      v11 = (void **)*a1;
    }
    GlitchFree(v11);
    a1[2] = (int)v8 + v7;
    *a1 = (int)v8;
    a1[1] = (int)v12;
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)a1[1],
      a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)(v2 + 24),
      a2 + 24);
    a1[1] += 48;
  }
}


// ===== 573d9c std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute*,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        _BYTE **a3)
{
  _DWORD *v5; // r0
  _DWORD *v6; // r7
  _DWORD *v7; // r8
  _DWORD *v8; // r6
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  bool v11; // zf

  v5 = std::priv::__copy<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(_DWORD **)(a1 + 4);
  v7 = v5;
  if ( v6 != v5 )
  {
    v8 = v5;
    do
    {
      v9 = (_DWORD *)v8[11];
      if ( v9 != v8 + 6 && v9 )
        GlitchFree((void *)v8[11]);
      v10 = (_DWORD *)v8[5];
      v11 = v10 == v8;
      v8 += 12;
      if ( !v11 && v10 )
        GlitchFree(v10);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 573e38 std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3
  void **v5; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 12;
    v4 = (void **)v1[11];
    if ( v4 != v1 + 6 && v4 )
      GlitchFree(v1[11]);
    v5 = (void **)v1[5];
    if ( v5 != v1 && v5 )
      GlitchFree(v1[5]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 573eb0 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::~CXMLReaderImpl() =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::~CXMLReaderImpl(int a1)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  v2 = *(void **)(a1 + 8);
  *(_DWORD *)a1 = off_9745E0;
  if ( v2 )
    operator delete[](v2);
  std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)(a1 + 100));
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)(a1 + 88));
  v3 = *(void **)(a1 + 80);
  if ( v3 != (void *)(a1 + 60) && v3 )
    GlitchFree(v3);
  v4 = *(void **)(a1 + 56);
  if ( v4 != (void *)(a1 + 36) && v4 )
    GlitchFree(v4);
  return a1;
}


// ===== 573f38 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::~CXMLReaderImpl() =====
void *__fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::~CXMLReaderImpl(void *a1)
{
  glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::~CXMLReaderImpl((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 573f54 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseClosingXMLElement(void) =====
void *__fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseClosingXMLElement(int a1)
{
  _DWORD *v1; // r1
  _BYTE **v2; // r2
  int v4; // r3
  _BYTE *v5; // r1
  int v6; // r2
  char *v7; // r3
  char *v8; // r2
  int v9; // t1
  void *result; // r0
  _DWORD v11[4]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE *v12; // [sp+14h] [bp-Ch]
  void *p; // [sp+18h] [bp-8h]

  v1 = *(_DWORD **)(a1 + 100);
  v2 = *(_BYTE ***)(a1 + 104);
  *(_DWORD *)(a1 + 24) = 2;
  *(_BYTE *)(a1 + 84) = 0;
  if ( v1 != v2 )
    std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1 + 100,
      v1,
      v2);
  v4 = *(_DWORD *)(a1 + 12);
  v5 = (_BYTE *)(v4 + 1);
  *(_DWORD *)(a1 + 12) = v4 + 1;
  if ( *(_BYTE *)(v4 + 1) == 62 )
  {
    v6 = 0;
  }
  else
  {
    v7 = (char *)(v4 + 2);
    do
    {
      *(_DWORD *)(a1 + 12) = v7;
      v8 = v7;
      v9 = *v7++;
    }
    while ( v9 != 62 );
    v6 = v8 - v5;
  }
  v12 = v11;
  p = v11;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v11,
    v5,
    &v5[v6]);
  if ( (_DWORD *)(a1 + 36) != v11 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 36),
      p,
      v12);
  result = p;
  if ( p != v11 && p )
    GlitchFree(p);
  ++*(_DWORD *)(a1 + 12);
  return result;
}


// ===== 57405c glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseComment(void) =====
void *__fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseComment(_DWORD *a1)
{
  int v1; // r2
  int v3; // r1
  int v4; // r3
  int v5; // r2
  int v6; // r0
  int v7; // r3
  int v8; // r3
  _BYTE *v9; // r3
  void *result; // r0
  _DWORD v11[4]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE *v12; // [sp+14h] [bp-Ch]
  void *p; // [sp+18h] [bp-8h]
  int v14; // [sp+1Ch] [bp-4h]

  v1 = a1[3];
  v3 = v1 + 1;
  v4 = _stack_chk_guard;
  a1[6] = 4;
  v5 = v1 + 2;
  v14 = v4;
  v6 = 1;
  a1[3] = v3;
  do
  {
    v7 = *(char *)(v5 - 1);
    if ( v7 == 62 )
    {
      --v6;
    }
    else if ( v7 == 60 )
    {
      ++v6;
    }
    a1[3] = v5;
    v8 = v5++;
  }
  while ( v6 );
  v9 = (_BYTE *)(v8 - 3);
  a1[3] = v9;
  v12 = v11;
  p = v11;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v11,
    (_BYTE *)(v3 + 2),
    v9);
  if ( a1 + 9 != v11 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 9,
      p,
      v12);
  result = p;
  if ( p != v11 && p )
    GlitchFree(p);
  a1[3] += 3;
  return result;
}


// ===== 574164 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeByName(char const*) =====
char *__fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeByName(int a1, char *a2)
{
  char *v2; // r4
  int v4; // r8
  int v5; // r10
  void **v6; // r9
  int v7; // r5
  int v8; // r6
  size_t v9; // r7
  const void *v10; // r0
  void *v12[5]; // [sp+Ch] [bp-20h] BYREF
  void *v13; // [sp+20h] [bp-Ch]

  v2 = a2;
  if ( a2 )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v12,
      a2);
    v4 = *(_DWORD *)(a1 + 100);
    v5 = -1431655765 * ((*(_DWORD *)(a1 + 104) - v4) >> 4);
    if ( v5 <= 0 )
    {
      v6 = (void **)v13;
      v2 = nullptr;
    }
    else
    {
      v6 = (void **)v13;
      v7 = 0;
      v8 = 0;
      v9 = (char *)v12[4] - (char *)v13;
      while ( 1 )
      {
        v2 = (char *)(v4 + v7);
        v10 = *(const void **)(v4 + v7 + 20);
        if ( *(_DWORD *)(v4 + v7 + 16) - (_DWORD)v10 == v9 && !memcmp(v10, v6, v9) )
          break;
        ++v8;
        v7 += 48;
        if ( v8 == v5 )
        {
          v2 = nullptr;
          break;
        }
      }
    }
    if ( v6 != v12 && v6 )
      GlitchFree(v6);
  }
  return v2;
}


// ===== 574288 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueSafe(char const*) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueSafe(int a1, char *a2)
{
  char *AttributeByName; // r0

  AttributeByName = glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeByName(a1, a2);
  if ( AttributeByName )
    return *((_DWORD *)AttributeByName + 11);
  else
    return *(_DWORD *)(a1 + 80);
}


// ===== 5742a4 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValue(char const*) =====
char *__fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValue(int a1, char *a2)
{
  char *result; // r0

  result = glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeByName(a1, a2);
  if ( result )
    return *((char **)result + 11);
  return result;
}


// ===== 5742b8 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsFloat(char const*) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsFloat(int a1, char *a2)
{
  char *AttributeByName; // r0
  float v3; // r7
  float v4; // r0
  _DWORD v6[5]; // [sp+4h] [bp-20h] BYREF
  char *v7; // [sp+18h] [bp-Ch]

  AttributeByName = glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeByName(a1, a2);
  if ( AttributeByName )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v6,
      *((char **)AttributeByName + 11));
    v4 = strtod(v7, nullptr);
    v3 = v4;
    if ( v7 != (char *)v6 && v7 )
      GlitchFree(v7);
  }
  else
  {
    v3 = 0.0;
  }
  return LODWORD(v3);
}


// ===== 574354 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsFloat(int) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsFloat(int a1)
{
  char *v1; // r1
  int v2; // r7
  float *v3; // r2
  char v5[4]; // [sp+4h] [bp-28h] BYREF
  _DWORD v6[5]; // [sp+Ch] [bp-20h] BYREF
  void *p; // [sp+20h] [bp-Ch]

  v1 = (char *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 32))(a1);
  if ( !v1 )
    return 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v6,
    v1);
  glitch::core::fast_atof_move((glitch::core *)p, (float *)v5, v3);
  v2 = *(_DWORD *)v5;
  if ( p != v6 && p )
    GlitchFree(p);
  return v2;
}


// ===== 5743f0 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsFloat(int) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsFloat(int a1)
{
  const wchar_t *v1; // r1
  int v2; // r7
  float *v3; // r2
  int v5; // [sp+0h] [bp-24h] BYREF
  _BYTE v6[20]; // [sp+4h] [bp-20h] BYREF
  void *p; // [sp+18h] [bp-Ch]

  v1 = (const wchar_t *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 32))(a1);
  if ( !v1 )
    return 0;
  glitch::core::stringw2stringc((glitch::core *)v6, v1);
  glitch::core::fast_atof_move((glitch::core *)p, (float *)&v5, v3);
  v2 = v5;
  if ( p != v6 && p )
    GlitchFree(p);
  return v2;
}


// ===== 574488 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsFloat(wchar_t const*) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsFloat(
        int a1,
        wchar_t *a2)
{
  wchar_t *AttributeByName; // r0
  float v3; // r7
  float v4; // r0
  _BYTE v6[20]; // [sp+4h] [bp-20h] BYREF
  char *v7; // [sp+18h] [bp-Ch]

  AttributeByName = glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeByName(a1, a2);
  if ( AttributeByName )
  {
    glitch::core::stringw2stringc((glitch::core *)v6, (const wchar_t *)AttributeByName[35]);
    v4 = strtod(v7, nullptr);
    v3 = v4;
    if ( v7 != v6 && v7 )
      GlitchFree(v7);
  }
  else
  {
    v3 = 0.0;
  }
  return LODWORD(v3);
}


// ===== 574520 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::replaceSpecialCharacters(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> &) =====
_DWORD *__fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::replaceSpecialCharacters(
        _DWORD *a1,
        int a2,
        int a3)
{
  int v4; // r6
  int v5; // r8
  int v6; // r3
  int v8; // r10
  int v9; // r11
  signed int v10; // r3
  int v11; // r4
  _DWORD *v12; // r8
  int v13; // r9
  int v14; // r0
  int v15; // r1
  int v16; // r7
  int v17; // r12
  int v18; // r2
  int v19; // r3
  _DWORD *v20; // r0
  signed int v21; // r4
  bool v22; // cc
  int v23; // lr
  bool v24; // cc
  signed int v26; // [sp+10h] [bp-1A4h]
  void *v28[17]; // [sp+30h] [bp-184h] BYREF
  void *v29; // [sp+74h] [bp-140h]
  _DWORD v30[17]; // [sp+78h] [bp-13Ch] BYREF
  _DWORD *v31; // [sp+BCh] [bp-F8h]
  void *v32[17]; // [sp+C0h] [bp-F4h] BYREF
  void *v33; // [sp+104h] [bp-B0h]
  void *v34[17]; // [sp+108h] [bp-ACh] BYREF
  void *v35; // [sp+14Ch] [bp-68h]
  _DWORD v36[16]; // [sp+150h] [bp-64h] BYREF
  _DWORD *v37; // [sp+190h] [bp-24h]
  void *p; // [sp+194h] [bp-20h]
  wchar_t v39[2]; // [sp+198h] [bp-1Ch] BYREF

  v4 = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::find(
         a3,
         0);
  if ( v4 == -1 )
  {
    v4 = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::find(
           a3,
           0);
    if ( v4 == -1 )
    {
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        a1,
        a3);
      return a1;
    }
  }
  v37 = v36;
  p = v36;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v36,
    0x10u);
  v26 = 0;
  *v37 = 0;
  do
  {
    v5 = *(_DWORD *)(a3 + 68);
    v6 = (*(_DWORD *)(a3 + 64) - v5) >> 2;
    if ( v6 - 2 <= v4 )
    {
      if ( v26 < v6 - 1 )
        goto LABEL_25;
      goto LABEL_5;
    }
    v8 = *(_DWORD *)(a2 + 184);
    v9 = 954437177 * ((*(_DWORD *)(a2 + 188) - v8) >> 3);
    if ( v9 > 0 )
    {
      v10 = v4 + 1;
      v11 = 0;
      v12 = (_DWORD *)(v5 + 4 * (v4 + 1));
      v13 = 0;
      while ( 1 )
      {
        v14 = *(_DWORD *)(v8 + v11 + 68);
        v15 = *(_DWORD *)(v14 + 4);
        v16 = ((*(_DWORD *)(v8 + v11 + 64) - v14) >> 2) - 1;
        if ( !v15 )
          goto LABEL_13;
        v22 = *v12 <= 0;
        if ( *v12 )
          v22 = ((*(_DWORD *)(v8 + v11 + 64) - v14) >> 2) - 1 <= 0;
        if ( v22 )
        {
LABEL_13:
          v17 = 0;
          v18 = 0;
        }
        else
        {
          if ( *v12 != v15 )
            goto LABEL_38;
          v18 = 0;
          while ( 1 )
          {
            v15 = *(_DWORD *)(v14 + 8);
            v17 = ++v18;
            if ( !v15 )
              break;
            v23 = v12[v18];
            v14 += 4;
            v24 = v23 <= 0;
            if ( v23 )
              v24 = v16 <= v18;
            if ( v24 )
              break;
            if ( v15 != v23 )
              goto LABEL_38;
          }
        }
        if ( v16 == v18 || !v15 && !v12[v17] )
        {
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v34,
            a3,
            v26,
            v4 - v26);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v36,
            v35,
            (_DWORD *)v34[16]);
          if ( v35 != v34 && v35 )
            GlitchFree(v35);
          v19 = *(_DWORD *)(a2 + 184);
          v39[0] = 0;
          v39[1] = 0;
          v39[0] = **(_DWORD **)(v19 + v11 + 68);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v32,
            v39);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v36,
            v33,
            (_DWORD *)v32[16]);
          v20 = v33;
          v21 = v4
              + ((*(_DWORD *)(*(_DWORD *)(a2 + 184) + v11 + 64) - *(_DWORD *)(*(_DWORD *)(a2 + 184) + v11 + 68)) >> 2);
          if ( v33 != v32 )
            goto LABEL_21;
          goto LABEL_23;
        }
LABEL_38:
        ++v13;
        v11 += 72;
        if ( v13 == v9 )
          goto LABEL_39;
      }
    }
    v10 = v4 + 1;
LABEL_39:
    v21 = v10;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v30,
      a3,
      v26,
      v10 - v26);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v36,
      v31,
      (_DWORD *)v30[16]);
    v20 = v31;
    if ( v31 != v30 )
    {
LABEL_21:
      if ( v20 )
        GlitchFree(v20);
    }
LABEL_23:
    v4 = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::find(
           a3,
           v21);
    v26 = v21;
  }
  while ( v4 != -1 );
  v6 = (*(_DWORD *)(a3 + 64) - *(_DWORD *)(a3 + 68)) >> 2;
  if ( v21 < v6 - 1 )
  {
LABEL_25:
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v28,
      a3,
      v26,
      v6 - v26);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v36,
      v29,
      (_DWORD *)v28[16]);
    if ( v29 != v28 && v29 )
      GlitchFree(v29);
  }
LABEL_5:
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    a1,
    (int)v36);
  if ( p != v36 && p )
    GlitchFree(p);
  return a1;
}


// ===== 5748ac glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::setText(wchar_t *,wchar_t *) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::setText(int a1, int *a2, int *a3)
{
  int *v4; // r12
  int v5; // r0
  bool v6; // zf
  bool v7; // zf
  void **v8; // r0
  void *v10[17]; // [sp+0h] [bp-94h] BYREF
  void *p; // [sp+44h] [bp-50h]
  void *v12[17]; // [sp+48h] [bp-4Ch] BYREF
  void *v13; // [sp+8Ch] [bp-8h]

  if ( (char *)a3 - (char *)a2 <= 11 )
  {
    if ( a3 == a2 )
      return 0;
    v4 = a2;
    while ( 1 )
    {
      v5 = *v4;
      v6 = *v4 == 32;
      if ( *v4 != 32 )
        v6 = v5 == 9;
      if ( !v6 )
      {
        v7 = v5 == 10;
        if ( v5 != 10 )
          v7 = v5 == 13;
        if ( !v7 )
          break;
      }
      if ( a3 == ++v4 )
        return 0;
    }
    if ( v4 == a3 )
      return 0;
  }
  v12[16] = v12;
  v13 = v12;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v12,
    a2,
    (_BYTE *)a2 + (((char *)a3 - (char *)a2) & 0xFFFFFFFC));
  glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::replaceSpecialCharacters(v10, a1, (int)v12);
  if ( (void **)(a1 + 36) != v10 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 36,
      (const wchar_t *)p,
      (_DWORD *)v10[16]);
  if ( p != v10 && p )
    GlitchFree(p);
  v8 = (void **)v13;
  *(_DWORD *)(a1 + 24) = 3;
  if ( v8 == v12 || !v8 )
    return 1;
  GlitchFree(v8);
  return 1;
}


// ===== 5749a0 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseOpeningXMLElement(void) =====
void __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseOpeningXMLElement(int a1)
{
  int v1; // r1
  int v2; // r2
  int v4; // r0
  int v5; // r3
  bool v6; // zf
  _BYTE *v7; // r11
  bool v8; // zf
  bool v9; // zf
  _DWORD *v10; // r9
  int v11; // r3
  bool v12; // zf
  int *v13; // r3
  int v14; // r2
  bool v15; // zf
  char *v16; // r8
  int v17; // r3
  char *v18; // r3
  bool v19; // zf
  bool v20; // zf
  int *v21; // r1
  bool v22; // zf
  _BYTE *v23; // r3
  _BYTE *v24; // r3
  bool v25; // zf
  bool v26; // zf
  bool v27; // zf
  int v28; // r2
  unsigned int v29; // [sp+4h] [bp-1D0h]
  int *v30; // [sp+Ch] [bp-1C8h]
  _BYTE *v31; // [sp+10h] [bp-1C4h]
  _BYTE *v32; // [sp+14h] [bp-1C0h]
  _DWORD v33[16]; // [sp+1Ch] [bp-1B8h] BYREF
  _DWORD *v34; // [sp+5Ch] [bp-178h]
  void *v35; // [sp+60h] [bp-174h]
  _DWORD v36[16]; // [sp+64h] [bp-170h] BYREF
  _DWORD *v37; // [sp+A4h] [bp-130h]
  void *v38; // [sp+A8h] [bp-12Ch]
  _DWORD v39[16]; // [sp+ACh] [bp-128h] BYREF
  _DWORD *v40; // [sp+ECh] [bp-E8h]
  void *p; // [sp+F0h] [bp-E4h]
  void *v42[17]; // [sp+F4h] [bp-E0h] BYREF
  void *v43; // [sp+138h] [bp-9Ch]
  void *v44[17]; // [sp+13Ch] [bp-98h] BYREF
  void *v45; // [sp+180h] [bp-54h]
  _DWORD v46[16]; // [sp+184h] [bp-50h] BYREF
  _DWORD *v47; // [sp+1C4h] [bp-10h]
  void *v48; // [sp+1C8h] [bp-Ch]

  v1 = *(_DWORD *)(a1 + 196);
  v2 = *(_DWORD *)(a1 + 200);
  *(_DWORD *)(a1 + 24) = 1;
  *(_BYTE *)(a1 + 180) = 0;
  v4 = a1 + 196;
  v30 = (int *)v4;
  if ( v1 != v2 )
    std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      v4,
      v1,
      v2);
  v31 = *(_BYTE **)(a1 + 12);
  v5 = *(_DWORD *)v31;
  if ( *(_DWORD *)v31 == 62 )
    goto LABEL_8;
  v6 = v5 == 32;
  if ( v5 != 32 )
    v6 = v5 == 9;
  if ( v6 )
    goto LABEL_8;
  v25 = v5 == 10;
  if ( v5 != 10 )
    v25 = v5 == 13;
  if ( v25 )
  {
LABEL_8:
    v7 = *(_BYTE **)(a1 + 12);
  }
  else
  {
    v7 = *(_BYTE **)(a1 + 12);
    do
    {
      v7 += 4;
      *(_DWORD *)(a1 + 12) = v7;
      v5 = *(_DWORD *)v7;
      if ( *(_DWORD *)v7 == 62 )
        break;
      v27 = v5 == 32;
      if ( v5 != 32 )
        v27 = v5 == 9;
      if ( v27 )
        break;
      v26 = v5 == 10;
      if ( v5 != 10 )
        v26 = v5 == 13;
    }
    while ( !v26 );
  }
  v32 = v7;
  if ( v5 == 62 )
  {
LABEL_49:
    v23 = v32;
    if ( v31 < v32 )
      goto LABEL_89;
    goto LABEL_50;
  }
  while ( 1 )
  {
    v8 = v5 == 32;
    if ( v5 != 32 )
      v8 = v5 == 9;
    if ( !v8 )
    {
      v9 = v5 == 10;
      if ( v5 != 10 )
        v9 = v5 == 13;
      if ( !v9 )
        break;
    }
    *(_DWORD *)(a1 + 12) = v7 + 4;
LABEL_48:
    v7 = *(_BYTE **)(a1 + 12);
    v5 = *(_DWORD *)v7;
    if ( *(_DWORD *)v7 == 62 )
      goto LABEL_49;
  }
  if ( v5 != 47 )
  {
    if ( v5 == 61 )
    {
      v10 = v7;
    }
    else
    {
      v10 = v7;
      while ( 1 )
      {
        *(_DWORD *)(a1 + 12) = ++v10;
        v11 = *v10;
        v12 = *v10 == 32;
        if ( *v10 != 32 )
          v12 = v11 == 9;
        if ( v12 )
          break;
        v19 = v11 == 10;
        if ( v11 != 10 )
          v19 = v11 == 13;
        if ( v19 )
          break;
        if ( v11 == 61 )
        {
          v13 = v10 + 1;
          *(_DWORD *)(a1 + 12) = v10 + 1;
          v14 = v10[1];
          v20 = v14 == 39;
          if ( v14 != 39 )
            v20 = v14 == 34;
          if ( v20 )
            goto LABEL_28;
          goto LABEL_40;
        }
      }
    }
    v13 = v10 + 1;
    *(_DWORD *)(a1 + 12) = v10 + 1;
    v14 = v10[1];
    v15 = v14 == 39;
    if ( v14 != 39 )
      v15 = v14 == 34;
    if ( !v15 )
    {
LABEL_40:
      if ( !v14 )
        return;
      v21 = v10 + 2;
      while ( 1 )
      {
        *(_DWORD *)(a1 + 12) = v21;
        v14 = *v21;
        v13 = v21++;
        v22 = v14 == 39;
        if ( v14 != 39 )
          v22 = v14 == 34;
        if ( v22 )
          break;
        if ( !v14 )
          return;
      }
    }
LABEL_28:
    if ( !v14 )
      return;
    v16 = (char *)(v13 + 1);
    *(_DWORD *)(a1 + 12) = v13 + 1;
    v17 = v13[1];
    if ( v17 == v14 )
    {
      v18 = v16;
      v29 = 0;
    }
    else
    {
      if ( !v17 )
        return;
      v18 = v16;
      while ( 1 )
      {
        v18 += 4;
        *(_DWORD *)(a1 + 12) = v18;
        if ( *(_DWORD *)v18 == v14 )
          break;
        if ( !*(_DWORD *)v18 )
          return;
      }
      v29 = (v18 - v16) & 0xFFFFFFFC;
    }
    *(_DWORD *)(a1 + 12) = v18 + 4;
    v34 = v33;
    v35 = v33;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v33,
      0x10u);
    *v34 = 0;
    v37 = v36;
    v38 = v36;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v36,
      0x10u);
    *v37 = 0;
    v47 = v46;
    v48 = v46;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v46,
      v7,
      &v7[((char *)v10 - v7) & 0xFFFFFFFC]);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)v33,
      (const wchar_t *)v48,
      v47);
    if ( v48 != v46 && v48 )
      GlitchFree(v48);
    v44[16] = v44;
    v45 = v44;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v44,
      v16,
      &v16[v29]);
    glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::replaceSpecialCharacters(v42, a1, (int)v44);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)v36,
      (const wchar_t *)v43,
      (_DWORD *)v42[16]);
    if ( v43 != v42 && v43 )
      GlitchFree(v43);
    std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v30,
      (int)v33);
    if ( v45 != v44 && v45 )
      GlitchFree(v45);
    if ( v38 != v36 && v38 )
      GlitchFree(v38);
    if ( v35 != v33 && v35 )
      GlitchFree(v35);
    goto LABEL_48;
  }
  *(_DWORD *)(a1 + 12) = v7 + 4;
  *(_BYTE *)(a1 + 180) = 1;
  v23 = v32;
  if ( v31 < v32 )
  {
LABEL_89:
    v28 = *((_DWORD *)v23 - 1);
    v24 = v23 - 4;
    if ( v28 == 47 )
    {
      *(_BYTE *)(a1 + 180) = 1;
      goto LABEL_51;
    }
  }
LABEL_50:
  v24 = v32;
LABEL_51:
  v40 = v39;
  p = v39;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v39,
    v31,
    &v31[(v24 - v31) & 0xFFFFFFFC]);
  if ( (_DWORD *)(a1 + 36) != v39 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 36,
      (const wchar_t *)p,
      v40);
  if ( p != v39 )
  {
    if ( p )
      GlitchFree(p);
  }
  *(_DWORD *)(a1 + 12) += 4;
}


// ===== 574da8 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseCDATA(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseCDATA(_DWORD *a1)
{
  int *v1; // r1
  int v4; // r2
  int v5; // r3
  _BOOL4 v6; // r0
  int *v7; // r3
  int v8; // r0
  char *v9; // r3
  bool v10; // r12
  char *v11; // r2
  int v12; // r12
  _DWORD *v13; // r5
  wchar_t *v14; // r0
  _DWORD *v15; // r5
  _DWORD v16[16]; // [sp+0h] [bp-94h] BYREF
  _DWORD *v17; // [sp+40h] [bp-54h]
  wchar_t *v18; // [sp+44h] [bp-50h]
  _DWORD v19[16]; // [sp+48h] [bp-4Ch] BYREF
  _DWORD *v20; // [sp+88h] [bp-Ch]
  void *p; // [sp+8Ch] [bp-8h]

  v1 = (int *)a1[3];
  if ( v1[1] != 91 )
    return 0;
  a1[6] = 5;
  v4 = *v1;
  if ( *v1 )
  {
    v5 = 0;
    do
    {
      a1[3] = ++v1;
      v4 = *v1;
      v6 = ++v5 <= 7;
      if ( !*v1 )
        v6 = 0;
    }
    while ( v6 );
  }
  if ( !v4 )
    return 1;
  v7 = (int *)a1[3];
  v8 = *v7;
  if ( !*v7 )
    goto LABEL_21;
  v9 = (char *)(v7 - 2);
  do
  {
    if ( v8 == 62 && *((_DWORD *)v9 + 1) == 93 && (v11 = v9, *(_DWORD *)v9 == 93) )
    {
      v10 = v9 == nullptr;
    }
    else
    {
      v10 = 1;
      v11 = nullptr;
    }
    a1[3] = v9 + 12;
    v8 = *((_DWORD *)v9 + 3);
    v9 += 4;
    if ( v8 )
      v12 = v10;
    else
      v12 = 0;
  }
  while ( v12 );
  if ( v11 )
  {
    v15 = a1 + 9;
    v20 = v19;
    p = v19;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v19,
      v1,
      (_BYTE *)v1 + ((v11 - (char *)v1) & 0xFFFFFFFC));
    if ( v15 != v19 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v15,
        (const wchar_t *)p,
        v20);
    v14 = (wchar_t *)p;
    if ( p == v19 )
      return 1;
  }
  else
  {
LABEL_21:
    v17 = v16;
    v18 = v16;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v16,
      0x10u);
    v13 = a1 + 9;
    *v17 = 0;
    if ( v13 != v16 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v13,
        v18,
        v17);
    v14 = v18;
    if ( v18 == v16 )
      return 1;
  }
  if ( !v14 )
    return 1;
  GlitchFree(v14);
  return 1;
}


// ===== 574f48 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseCurrentNode(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseCurrentNode(_DWORD *a1)
{
  int *v1; // r1
  int result; // r0
  bool v4; // zf
  int *v5; // r2
  bool v6; // zf
  int v7; // r3
  int *v8; // r1
  int v9; // r2
  int *v10; // r3
  int v11; // t1

  v1 = (int *)a1[3];
  result = *v1;
  v4 = *v1 == 0;
  if ( *v1 )
    v4 = result == 60;
  if ( v4 )
  {
    v5 = v1;
  }
  else
  {
    v5 = v1;
    do
    {
      a1[3] = ++v5;
      result = *v5;
      v6 = *v5 == 0;
      if ( *v5 )
        v6 = result == 60;
    }
    while ( !v6 );
  }
  if ( !result )
    return result;
  if ( (char *)v5 - (char *)v1 > 3 )
  {
    if ( glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::setText((int)a1, v1, v5) )
      return 1;
    v7 = a1[3];
    v8 = (int *)(v7 + 4);
    a1[3] = v7 + 4;
    v9 = *(_DWORD *)(v7 + 4);
    if ( v9 != 47 )
      goto LABEL_13;
LABEL_21:
    glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseClosingXMLElement((int)a1);
    return 1;
  }
  v7 = a1[3];
  v8 = (int *)(v7 + 4);
  a1[3] = v7 + 4;
  v9 = *(_DWORD *)(v7 + 4);
  if ( v9 == 47 )
    goto LABEL_21;
LABEL_13:
  if ( v9 != 63 )
  {
    if ( v9 != 33 )
    {
      glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseOpeningXMLElement((int)a1);
      return 1;
    }
    if ( !glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseCDATA(a1) )
    {
      glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseComment(a1);
      return 1;
    }
    return 1;
  }
  a1[6] = 6;
  if ( *(_DWORD *)(v7 + 4) != 62 )
  {
    v10 = (int *)(v7 + 8);
    do
    {
      a1[3] = v10;
      v8 = v10;
      v11 = *v10++;
    }
    while ( v11 != 62 );
  }
  a1[3] = v8 + 1;
  return 1;
}


// ===== 57506c glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::read(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::read(int a1)
{
  int v2; // r1
  int v3; // r2
  _DWORD *v5; // r3

  if ( (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 68))(a1) )
  {
    v2 = *(_DWORD *)(a1 + 196);
    v3 = *(_DWORD *)(a1 + 200);
    *(_DWORD *)(a1 + 24) = 2;
    *(_BYTE *)(a1 + 180) = 0;
    if ( v2 != v3 )
      std::vector<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1 + 196,
        v2,
        v3);
    return 1;
  }
  else
  {
    v5 = *(_DWORD **)(a1 + 12);
    if ( v5 && *(_DWORD *)(a1 + 20) - 1 > (unsigned int)(((int)v5 - *(_DWORD *)(a1 + 16)) >> 2) && *v5 )
      return glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::parseCurrentNode((_DWORD *)a1);
    else
      return 0;
  }
}


// ===== 575108 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList(void) =====
void __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList(int a1)
{
  int v1; // r5
  _DWORD v2[17]; // [sp+4h] [bp-17Ch] BYREF
  void *v3; // [sp+48h] [bp-138h]
  _DWORD v4[17]; // [sp+4Ch] [bp-134h] BYREF
  void *v5; // [sp+90h] [bp-F0h]
  _DWORD v6[17]; // [sp+94h] [bp-ECh] BYREF
  void *v7; // [sp+D8h] [bp-A8h]
  _DWORD v8[17]; // [sp+DCh] [bp-A4h] BYREF
  void *v9; // [sp+120h] [bp-60h]
  _DWORD v10[17]; // [sp+124h] [bp-5Ch] BYREF
  void *p; // [sp+168h] [bp-18h]

  v1 = a1 + 184;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v10,
    (wchar_t *)glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList(void)::amp);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v10);
  if ( p != v10 && p )
    GlitchFree(p);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v8,
    (wchar_t *)glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList(void)::lt);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v8);
  if ( v9 != v8 && v9 )
    GlitchFree(v9);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v6,
    (wchar_t *)glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList(void)::gt);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v6);
  if ( v7 != v6 && v7 )
    GlitchFree(v7);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v4,
    (wchar_t *)glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList(void)::quot);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v4);
  if ( v5 != v4 && v5 )
    GlitchFree(v5);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v2,
    (wchar_t *)glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList(void)::apos);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v2);
  if ( v3 != v2 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 575268 glitch::io::createIXMLReader(glitch::io::IReadFile *) =====
_DWORD *__fastcall glitch::io::createIXMLReader(glitch::io *this, glitch::io::IReadFile *a2)
{
  _DWORD *v3; // r7
  _DWORD *v4; // r4

  if ( !this )
    return nullptr;
  v3 = operator new(8u, 0);
  v3[1] = this;
  *v3 = off_9745B0;
  ++*((_DWORD *)this + 1);
  v4 = operator new(0xD0u, 0);
  v4[1] = 1;
  *v4 = off_974690;
  v4[25] = v4 + 9;
  v4[26] = v4 + 9;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v4 + 9,
    0x10u);
  *(_DWORD *)v4[25] = 0;
  v4[43] = v4 + 27;
  v4[44] = v4 + 27;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v4 + 27,
    0x10u);
  *(_DWORD *)v4[43] = 0;
  v4[8] = 5;
  v4[51] = 0;
  v4[46] = 0;
  v4[47] = 0;
  v4[48] = 0;
  v4[49] = 0;
  v4[50] = 0;
  glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::readFile(v4, (int)v3);
  (*(void (__fastcall **)(_DWORD *))(*v3 + 4))(v3);
  glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::createSpecialCharacterList((int)v4);
  v4[3] = v4[4];
  return v4;
}


// ===== 57539c glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::replaceSpecialCharacters(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> &) =====
_DWORD *__fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::replaceSpecialCharacters(
        _DWORD *a1,
        int a2,
        int a3)
{
  int v4; // r12
  char *v5; // r3
  char *v7; // r0
  char *v8; // r6
  char *v9; // r3
  int v10; // r8
  char *v11; // r8
  int v13; // r10
  int v14; // r11
  unsigned int v15; // r3
  int v16; // r4
  char *v17; // r8
  int v18; // r9
  int v19; // r0
  int v20; // r1
  int v21; // lr
  int v22; // r0
  int v23; // r2
  int v24; // r3
  _BYTE *v25; // r0
  unsigned int v26; // r4
  int v27; // r1
  int v28; // r0
  char *v29; // r0
  int v30; // r2
  bool v31; // cc
  int v32; // r12
  bool v33; // cc
  char *v34; // r0
  signed int v35; // [sp+10h] [bp-D4h]
  __int16 v37; // [sp+38h] [bp-ACh] BYREF
  char v38[4]; // [sp+44h] [bp-A0h] BYREF
  char v39[4]; // [sp+50h] [bp-94h] BYREF
  char v40[4]; // [sp+58h] [bp-8Ch] BYREF
  void *v41[5]; // [sp+64h] [bp-80h] BYREF
  void *v42; // [sp+78h] [bp-6Ch]
  _DWORD v43[5]; // [sp+7Ch] [bp-68h] BYREF
  _BYTE *v44; // [sp+90h] [bp-54h]
  void *v45[5]; // [sp+94h] [bp-50h] BYREF
  void *v46; // [sp+A8h] [bp-3Ch]
  void *v47[5]; // [sp+ACh] [bp-38h] BYREF
  void *v48; // [sp+C0h] [bp-24h]
  _DWORD v49[4]; // [sp+C4h] [bp-20h] BYREF
  _BYTE *v50; // [sp+D4h] [bp-10h]
  void *p; // [sp+D8h] [bp-Ch]

  v4 = *(_DWORD *)(a3 + 16);
  v5 = *(char **)(a3 + 20);
  if ( (char *)v4 == v5 )
  {
LABEL_49:
    if ( (char *)v4 == v5
      || (v39[0] = 38,
          v34 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(v5, v4, v39),
          v34 == *(char **)(a3 + 16))
      || (v8 = &v34[-*(_DWORD *)(a3 + 20)], v8 == (char *)-1) )
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        a1,
        a3);
      return a1;
    }
    goto LABEL_5;
  }
  v40[0] = 38;
  v7 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(v5, v4, v40);
  v4 = *(_DWORD *)(a3 + 16);
  if ( v7 == (char *)v4 )
  {
    v5 = *(char **)(a3 + 20);
    goto LABEL_49;
  }
  v5 = *(char **)(a3 + 20);
  v8 = (char *)(v7 - v5);
  if ( v7 - v5 == -1 )
    goto LABEL_49;
LABEL_5:
  v50 = v49;
  p = v49;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v49,
    0x10u);
  v35 = 0;
  *v50 = 0;
  v9 = *(char **)(a3 + 16);
  v10 = *(_DWORD *)(a3 + 20);
  while ( 1 )
  {
    if ( (int)&v9[-v10 - 2] <= (int)v8 )
    {
LABEL_7:
      v11 = &v9[-v10];
      if ( v35 < (int)(v11 - 1) )
        goto LABEL_46;
      goto LABEL_8;
    }
    v13 = *(_DWORD *)(a2 + 88);
    v14 = -1431655765 * ((*(_DWORD *)(a2 + 92) - v13) >> 3);
    if ( v14 > 0 )
    {
      v15 = (unsigned int)(v8 + 1);
      v16 = 0;
      v17 = &v8[v10 + 1];
      v18 = 0;
      while ( 1 )
      {
        v19 = *(_DWORD *)(v13 + v16 + 20);
        v20 = *(unsigned __int8 *)(v19 + 1);
        v21 = *(_DWORD *)(v13 + v16 + 16) - v19 - 1;
        if ( !*(_BYTE *)(v19 + 1) )
          goto LABEL_16;
        v30 = *v17;
        v31 = v30 <= 0;
        if ( *v17 )
          v31 = *(_DWORD *)(v13 + v16 + 16) - v19 - 1 <= 0;
        if ( v31 )
        {
LABEL_16:
          v22 = 0;
          v23 = 0;
        }
        else
        {
          if ( (char)v20 != v30 )
            goto LABEL_40;
          v23 = 0;
          while ( 1 )
          {
            v20 = *(unsigned __int8 *)(v19 + 2);
            ++v23;
            if ( !*(_BYTE *)(v19 + 2) )
              break;
            v32 = v17[v23];
            v33 = v32 <= 0;
            if ( v17[v23] )
              v33 = v21 <= v23;
            if ( v33 )
              break;
            ++v19;
            if ( (char)v20 != v32 )
              goto LABEL_40;
          }
          v22 = v23;
        }
        if ( v21 == v23 || !v20 && !v17[v22] )
        {
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v47,
            a3,
            v35,
            (unsigned int)&v8[-v35]);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v49,
            v48,
            (_BYTE *)v47[4]);
          if ( v48 != v47 && v48 )
            GlitchFree(v48);
          v24 = *(_DWORD *)(a2 + 88);
          v37 = 0;
          LOBYTE(v37) = **(_BYTE **)(v24 + v16 + 20);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v45,
            (char *)&v37);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v49,
            v46,
            (_BYTE *)v45[4]);
          v25 = v46;
          v26 = (unsigned int)&v8[*(_DWORD *)(*(_DWORD *)(a2 + 88) + v16 + 16)
                                - *(_DWORD *)(*(_DWORD *)(a2 + 88) + v16 + 20)];
          if ( v46 != v45 )
            goto LABEL_24;
          goto LABEL_26;
        }
LABEL_40:
        ++v18;
        v16 += 24;
        if ( v18 == v14 )
          goto LABEL_41;
      }
    }
    v15 = (unsigned int)(v8 + 1);
LABEL_41:
    v26 = v15;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v43,
      a3,
      v35,
      v15 - v35);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v49,
      v44,
      (_BYTE *)v43[4]);
    v25 = v44;
    if ( v44 != (_BYTE *)v43 )
    {
LABEL_24:
      if ( v25 )
        GlitchFree(v25);
    }
LABEL_26:
    v27 = *(_DWORD *)(a3 + 16);
    v28 = *(_DWORD *)(a3 + 20);
    v11 = (char *)(v27 - v28);
    if ( v26 >= v27 - v28 )
      goto LABEL_45;
    v38[0] = 38;
    v29 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(
            (char *)(v28 + v26),
            v27,
            v38);
    v9 = *(char **)(a3 + 16);
    if ( v29 == v9 )
      break;
    v10 = *(_DWORD *)(a3 + 20);
    v35 = v26;
    v8 = &v29[-v10];
    if ( &v29[-v10] == (char *)-1 )
      goto LABEL_7;
  }
  v11 = &v29[-*(_DWORD *)(a3 + 20)];
LABEL_45:
  v35 = v26;
  if ( (int)v26 < (int)(v11 - 1) )
  {
LABEL_46:
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v41,
      a3,
      v35,
      (unsigned int)&v11[-v35]);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v49,
      v42,
      (_BYTE *)v41[4]);
    if ( v42 != v41 && v42 )
      GlitchFree(v42);
  }
LABEL_8:
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    a1,
    (int)v49);
  if ( p != v49 && p )
    GlitchFree(p);
  return a1;
}


// ===== 5757f0 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::setText(char *,char *) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::setText(int a1, char *a2, char *a3)
{
  char *v4; // r12
  int v5; // r0
  bool v6; // zf
  bool v7; // zf
  void **v8; // r0
  void *v10[5]; // [sp+4h] [bp-38h] BYREF
  void *p; // [sp+18h] [bp-24h]
  void *v12[5]; // [sp+1Ch] [bp-20h] BYREF
  void *v13; // [sp+30h] [bp-Ch]

  if ( a3 - a2 <= 2 )
  {
    if ( a3 == a2 )
      return 0;
    v4 = a2;
    while ( 1 )
    {
      v5 = *v4;
      v6 = v5 == 32;
      if ( v5 != 32 )
        v6 = v5 == 9;
      if ( !v6 )
      {
        v7 = v5 == 10;
        if ( v5 != 10 )
          v7 = v5 == 13;
        if ( !v7 )
          break;
      }
      if ( ++v4 == a3 )
        return 0;
    }
    if ( v4 == a3 )
      return 0;
  }
  v12[4] = v12;
  v13 = v12;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v12,
    a2,
    a3);
  glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::replaceSpecialCharacters(v10, a1, (int)v12);
  if ( (void **)(a1 + 36) != v10 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 36),
      p,
      (_BYTE *)v10[4]);
  if ( p != v10 && p )
    GlitchFree(p);
  v8 = (void **)v13;
  *(_DWORD *)(a1 + 24) = 3;
  if ( v8 == v12 || !v8 )
    return 1;
  GlitchFree(v8);
  return 1;
}


// ===== 575918 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseOpeningXMLElement(void) =====
void *__fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseOpeningXMLElement(int a1)
{
  _DWORD *v1; // r1
  _BYTE **v2; // r2
  int v4; // r3
  bool v5; // zf
  _BYTE *v6; // r11
  bool v7; // zf
  bool v8; // zf
  char *v9; // r9
  int v10; // r3
  bool v11; // zf
  char *v12; // r2
  void *result; // r0
  void *v14; // r1
  bool v15; // zf
  _BYTE *v16; // r8
  _BYTE *v17; // r3
  bool v18; // zf
  bool v19; // zf
  char *i; // r3
  bool v21; // zf
  _BYTE *v22; // r3
  _BYTE *v23; // r2
  bool v24; // zf
  bool v25; // zf
  bool v26; // zf
  int v27; // r3
  bool v28; // zf
  int v29; // [sp+4h] [bp-B8h]
  int *v30; // [sp+Ch] [bp-B0h]
  _BYTE *v31; // [sp+14h] [bp-A8h]
  _BYTE *v32; // [sp+1Ch] [bp-A0h]
  _DWORD v33[4]; // [sp+24h] [bp-98h] BYREF
  _BYTE *v34; // [sp+34h] [bp-88h]
  void *v35; // [sp+38h] [bp-84h]
  _DWORD v36[4]; // [sp+3Ch] [bp-80h] BYREF
  _BYTE *v37; // [sp+4Ch] [bp-70h]
  void *v38; // [sp+50h] [bp-6Ch]
  _DWORD v39[4]; // [sp+54h] [bp-68h] BYREF
  _BYTE *v40; // [sp+64h] [bp-58h]
  void *p; // [sp+68h] [bp-54h]
  void *v42[5]; // [sp+6Ch] [bp-50h] BYREF
  void *v43; // [sp+80h] [bp-3Ch]
  void *v44[5]; // [sp+84h] [bp-38h] BYREF
  void *v45; // [sp+98h] [bp-24h]
  _DWORD v46[4]; // [sp+9Ch] [bp-20h] BYREF
  _BYTE *v47; // [sp+ACh] [bp-10h]
  void *v48; // [sp+B0h] [bp-Ch]

  v1 = *(_DWORD **)(a1 + 100);
  v2 = *(_BYTE ***)(a1 + 104);
  *(_DWORD *)(a1 + 24) = 1;
  *(_BYTE *)(a1 + 84) = 0;
  v30 = (int *)(a1 + 100);
  if ( v1 != v2 )
    std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1 + 100,
      v1,
      v2);
  v31 = *(_BYTE **)(a1 + 12);
  v4 = (char)*v31;
  if ( v4 == 62 )
    goto LABEL_8;
  v5 = v4 == 32;
  if ( v4 != 32 )
    v5 = v4 == 9;
  if ( v5 )
    goto LABEL_8;
  v24 = v4 == 10;
  if ( v4 != 10 )
    v24 = v4 == 13;
  if ( v24 )
  {
LABEL_8:
    v6 = *(_BYTE **)(a1 + 12);
  }
  else
  {
    v6 = *(_BYTE **)(a1 + 12);
    do
    {
      *(_DWORD *)(a1 + 12) = ++v6;
      v4 = (char)*v6;
      if ( v4 == 62 )
        break;
      v26 = v4 == 32;
      if ( v4 != 32 )
        v26 = v4 == 9;
      if ( v26 )
        break;
      v25 = v4 == 10;
      if ( v4 != 10 )
        v25 = v4 == 13;
    }
    while ( !v25 );
  }
  v32 = v6;
  if ( v4 == 62 )
  {
LABEL_49:
    v22 = v32;
    if ( v31 < v32 )
      goto LABEL_89;
    goto LABEL_50;
  }
  while ( 1 )
  {
    v7 = v4 == 32;
    if ( v4 != 32 )
      v7 = v4 == 9;
    if ( !v7 )
    {
      v8 = v4 == 10;
      if ( v4 != 10 )
        v8 = v4 == 13;
      if ( !v8 )
        break;
    }
    *(_DWORD *)(a1 + 12) = v6 + 1;
LABEL_48:
    v6 = *(_BYTE **)(a1 + 12);
    v4 = (char)*v6;
    if ( v4 == 62 )
      goto LABEL_49;
  }
  if ( v4 != 47 )
  {
    if ( v4 == 61 )
    {
      v9 = v6;
    }
    else
    {
      v9 = v6;
      while ( 1 )
      {
        *(_DWORD *)(a1 + 12) = ++v9;
        v10 = *v9;
        v11 = v10 == 32;
        if ( v10 != 32 )
          v11 = v10 == 9;
        if ( v11 )
          break;
        v18 = v10 == 10;
        if ( v10 != 10 )
          v18 = v10 == 13;
        if ( v18 )
          break;
        if ( v10 == 61 )
        {
          v12 = v9 + 1;
          *(_DWORD *)(a1 + 12) = v9 + 1;
          result = (void *)(unsigned __int8)v9[1];
          v14 = (void *)(char)result;
          v19 = (char)result == 39;
          if ( (char)result != 39 )
            v19 = (char)result == 34;
          if ( v19 )
            goto LABEL_28;
          goto LABEL_40;
        }
      }
    }
    v12 = v9 + 1;
    *(_DWORD *)(a1 + 12) = v9 + 1;
    result = (void *)(unsigned __int8)v9[1];
    v14 = (void *)(char)result;
    v15 = (char)result == 39;
    if ( (char)result != 39 )
      v15 = (char)result == 34;
    if ( !v15 )
    {
LABEL_40:
      if ( !result )
        return result;
      for ( i = v9 + 2; ; ++i )
      {
        *(_DWORD *)(a1 + 12) = i;
        result = (void *)(unsigned __int8)*i;
        v12 = i;
        v14 = (void *)(char)result;
        v21 = (char)result == 39;
        if ( (char)result != 39 )
          v21 = (char)result == 34;
        if ( v21 )
          break;
        if ( !result )
          return result;
      }
    }
LABEL_28:
    if ( !result )
      return result;
    v16 = v12 + 1;
    *(_DWORD *)(a1 + 12) = v12 + 1;
    if ( (void *)v12[1] == v14 )
    {
      v17 = v12 + 1;
      v29 = 0;
    }
    else
    {
      if ( !v12[1] )
        return result;
      v17 = v12 + 1;
      while ( 1 )
      {
        *(_DWORD *)(a1 + 12) = ++v17;
        result = (void *)(char)*v17;
        if ( result == v14 )
          break;
        if ( !*v17 )
          return result;
      }
      v29 = v17 - v16;
    }
    *(_DWORD *)(a1 + 12) = v17 + 1;
    v34 = v33;
    v35 = v33;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v33,
      0x10u);
    *v34 = 0;
    v37 = v36;
    v38 = v36;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v36,
      0x10u);
    *v37 = 0;
    v47 = v46;
    v48 = v46;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v46,
      v6,
      v9);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v33,
      v48,
      v47);
    if ( v48 != v46 && v48 )
      GlitchFree(v48);
    v44[4] = v44;
    v45 = v44;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v44,
      v16,
      &v16[v29]);
    glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::replaceSpecialCharacters(v42, a1, (int)v44);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v36,
      v43,
      (_BYTE *)v42[4]);
    if ( v43 != v42 && v43 )
      GlitchFree(v43);
    std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v30,
      (int)v33);
    if ( v45 != v44 && v45 )
      GlitchFree(v45);
    if ( v38 != v36 && v38 )
      GlitchFree(v38);
    if ( v35 != v33 && v35 )
      GlitchFree(v35);
    goto LABEL_48;
  }
  *(_DWORD *)(a1 + 12) = v6 + 1;
  *(_BYTE *)(a1 + 84) = 1;
  v22 = v32;
  if ( v31 < v32 )
  {
LABEL_89:
    v27 = (char)*(v22 - 1);
    v28 = v27 == 47;
    if ( v27 == 47 )
      LOBYTE(v27) = 1;
    v23 = v32 - 1;
    if ( v28 )
    {
      *(_BYTE *)(a1 + 84) = v27;
      goto LABEL_51;
    }
  }
LABEL_50:
  v23 = v32;
LABEL_51:
  v40 = v39;
  p = v39;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v39,
    v31,
    v23);
  if ( (_DWORD *)(a1 + 36) != v39 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 36),
      p,
      v40);
  result = p;
  if ( p != v39 )
  {
    if ( p )
      GlitchFree(p);
  }
  ++*(_DWORD *)(a1 + 12);
  return result;
}


// ===== 575d68 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseCDATA(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseCDATA(_DWORD *a1)
{
  unsigned __int8 *v1; // r2
  int v4; // r0
  unsigned __int8 *v5; // r1
  int v6; // r3
  _BOOL4 v7; // r12
  _BYTE *v8; // r3
  int v9; // r0
  _BYTE *v10; // r3
  bool v11; // r12
  _BYTE *v12; // r2
  int v13; // r12
  _DWORD *v14; // r7
  _BYTE *v15; // r0
  _DWORD *v16; // r7
  _DWORD v17[4]; // [sp+4h] [bp-38h] BYREF
  _BYTE *v18; // [sp+14h] [bp-28h]
  _BYTE *v19; // [sp+18h] [bp-24h]
  _DWORD v20[4]; // [sp+1Ch] [bp-20h] BYREF
  _BYTE *v21; // [sp+2Ch] [bp-10h]
  void *p; // [sp+30h] [bp-Ch]

  v1 = (unsigned __int8 *)a1[3];
  if ( v1[1] != 91 )
    return 0;
  a1[6] = 5;
  v4 = *v1;
  v5 = v1;
  if ( *v1 )
  {
    v6 = 1;
    do
    {
      v5 = &v1[v6];
      a1[3] = &v1[v6];
      v4 = v1[v6];
      v7 = v6++ <= 7;
      if ( !v4 )
        v7 = 0;
    }
    while ( v7 );
  }
  if ( !v4 )
    return 1;
  v8 = (_BYTE *)a1[3];
  v9 = (char)*v8;
  if ( !*v8 )
    goto LABEL_21;
  v10 = v8 - 2;
  do
  {
    if ( v9 == 62 && v10[1] == 93 && (v12 = v10, *v10 == 93) )
    {
      v11 = v10 == nullptr;
    }
    else
    {
      v11 = 1;
      v12 = nullptr;
    }
    a1[3] = v10 + 3;
    LOBYTE(v9) = v10[3];
    ++v10;
    v9 = (char)v9;
    if ( (_BYTE)v9 )
      v13 = v11;
    else
      v13 = 0;
  }
  while ( v13 );
  if ( v12 )
  {
    v16 = a1 + 9;
    v21 = v20;
    p = v20;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v20,
      v5,
      v12);
    if ( v16 != v20 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v16,
        p,
        v21);
    v15 = p;
    if ( p == v20 )
      return 1;
  }
  else
  {
LABEL_21:
    v18 = v17;
    v19 = v17;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v17,
      0x10u);
    v14 = a1 + 9;
    *v18 = 0;
    if ( v14 != v17 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v14,
        v19,
        v18);
    v15 = v19;
    if ( v19 == (_BYTE *)v17 )
      return 1;
  }
  if ( !v15 )
    return 1;
  GlitchFree(v15);
  return 1;
}


// ===== 575f3c glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseCurrentNode(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseCurrentNode(_DWORD *a1)
{
  char *v1; // r1
  int result; // r0
  bool v4; // zf
  char *v5; // r2
  bool v6; // zf
  int v7; // r3
  char *v8; // r1
  int v9; // r2
  char *v10; // r3
  int v11; // t1

  v1 = (char *)a1[3];
  result = (unsigned __int8)*v1;
  v4 = result == 0;
  if ( *v1 )
    v4 = result == 60;
  if ( v4 )
  {
    v5 = v1;
  }
  else
  {
    v5 = v1;
    do
    {
      a1[3] = ++v5;
      result = (unsigned __int8)*v5;
      v6 = result == 0;
      if ( *v5 )
        v6 = result == 60;
    }
    while ( !v6 );
  }
  if ( result )
  {
    if ( v5 - v1 > 0 && glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::setText((int)a1, v1, v5) )
      return 1;
    v7 = a1[3];
    v8 = (char *)(v7 + 1);
    a1[3] = v7 + 1;
    v9 = *(char *)(v7 + 1);
    if ( v9 == 47 )
    {
      glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseClosingXMLElement((int)a1);
      return 1;
    }
    if ( v9 != 63 )
    {
      if ( v9 != 33 )
      {
        glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseOpeningXMLElement((int)a1);
        return 1;
      }
      if ( !glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseCDATA(a1) )
      {
        glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseComment(a1);
        return 1;
      }
      return 1;
    }
    a1[6] = 6;
    if ( *(_BYTE *)(v7 + 1) != 62 )
    {
      v10 = (char *)(v7 + 2);
      do
      {
        a1[3] = v10;
        v8 = v10;
        v11 = *v10++;
      }
      while ( v11 != 62 );
    }
    a1[3] = v8 + 1;
    return 1;
  }
  return result;
}


// ===== 576048 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::read(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::read(int a1)
{
  _DWORD *v2; // r1
  _BYTE **v3; // r2
  _BYTE *v5; // r3

  if ( (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 68))(a1) )
  {
    v2 = *(_DWORD **)(a1 + 100);
    v3 = *(_BYTE ***)(a1 + 104);
    *(_DWORD *)(a1 + 24) = 2;
    *(_BYTE *)(a1 + 84) = 0;
    if ( v2 != v3 )
      std::vector<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1 + 100,
        v2,
        v3);
    return 1;
  }
  else
  {
    v5 = *(_BYTE **)(a1 + 12);
    if ( v5 && (unsigned int)&v5[-*(_DWORD *)(a1 + 16)] < *(_DWORD *)(a1 + 20) - 1 && *v5 )
      return glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::parseCurrentNode((_DWORD *)a1);
    else
      return 0;
  }
}


// ===== 5760e4 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList(void) =====
void __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList(int a1)
{
  int v1; // r5
  _DWORD v2[5]; // [sp+14h] [bp-80h] BYREF
  void *v3; // [sp+28h] [bp-6Ch]
  _DWORD v4[5]; // [sp+2Ch] [bp-68h] BYREF
  void *v5; // [sp+40h] [bp-54h]
  _DWORD v6[5]; // [sp+44h] [bp-50h] BYREF
  void *v7; // [sp+58h] [bp-3Ch]
  _DWORD v8[5]; // [sp+5Ch] [bp-38h] BYREF
  void *v9; // [sp+70h] [bp-24h]
  _DWORD v10[5]; // [sp+74h] [bp-20h] BYREF
  void *p; // [sp+88h] [bp-Ch]

  v1 = a1 + 88;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v10,
    glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList(void)::amp);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v10);
  if ( p != v10 && p )
    GlitchFree(p);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v8,
    glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList(void)::lt);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v8);
  if ( v9 != v8 && v9 )
    GlitchFree(v9);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v6,
    glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList(void)::gt);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v6);
  if ( v7 != v6 && v7 )
    GlitchFree(v7);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v4,
    glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList(void)::quot);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v4);
  if ( v5 != v4 && v5 )
    GlitchFree(v5);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v2,
    glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList(void)::apos);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    v1,
    (unsigned int)v2);
  if ( v3 != v2 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 576270 glitch::io::createIXMLReaderUTF8(glitch::io::IReadFile *) =====
_DWORD *__fastcall glitch::io::createIXMLReaderUTF8(glitch::io *this, glitch::io::IReadFile *a2)
{
  _DWORD *v3; // r7
  _DWORD *v4; // r4

  if ( !this )
    return nullptr;
  v3 = operator new(8u, 0);
  v3[1] = this;
  *v3 = off_9745B0;
  ++*((_DWORD *)this + 1);
  v4 = operator new(0x70u, 0);
  v4[13] = v4 + 9;
  *v4 = off_9745E0;
  v4[14] = v4 + 9;
  v4[1] = 1;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v4 + 9,
    0x10u);
  *(_BYTE *)v4[13] = 0;
  v4[19] = v4 + 15;
  v4[20] = v4 + 15;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v4 + 15,
    0x10u);
  *(_BYTE *)v4[19] = 0;
  v4[27] = 0;
  v4[8] = 1;
  v4[22] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[25] = 0;
  v4[26] = 0;
  glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::readFile(v4, (int)v3);
  (*(void (__fastcall **)(_DWORD *))(*v3 + 4))(v3);
  glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::createSpecialCharacterList((int)v4);
  v4[3] = v4[4];
  return v4;
}


// ===== 5763a0 glitch::io::IXMLWriter::~IXMLWriter() =====
void __fastcall glitch::io::IXMLWriter::~IXMLWriter(glitch::io::IXMLWriter *this)
{
  ;
}


// ===== 5763a4 glitch::io::CXMLWriter::CXMLWriter(glitch::io::IWriteFile *) =====
int __fastcall glitch::io::CXMLWriter::CXMLWriter(int this, glitch::io::IWriteFile *a2)
{
  *(_DWORD *)this = off_974770;
  *(_DWORD *)(this + 4) = 1;
  *(_BYTE *)(this + 16) = 0;
  *(_DWORD *)(this + 8) = a2;
  *(_DWORD *)(this + 12) = 0;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  return this;
}


// ===== 5763f4 glitch::io::CXMLWriter::CXMLWriter(glitch::io::IWriteFile *) =====
int __fastcall glitch::io::CXMLWriter::CXMLWriter(int this, glitch::io::IWriteFile *a2)
{
  *(_DWORD *)this = off_974770;
  *(_DWORD *)(this + 4) = 1;
  *(_BYTE *)(this + 16) = 0;
  *(_DWORD *)(this + 8) = a2;
  *(_DWORD *)(this + 12) = 0;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  return this;
}


// ===== 576444 glitch::io::CXMLWriter::~CXMLWriter() =====
void __fastcall glitch::io::CXMLWriter::~CXMLWriter(glitch::io::CXMLWriter *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_974770;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 576484 glitch::io::CXMLWriter::~CXMLWriter() =====
void __fastcall glitch::io::CXMLWriter::~CXMLWriter(glitch::io::CXMLWriter *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_974770;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
}


// ===== 5764c4 glitch::io::CXMLWriter::writeComment(wchar_t const*) =====
int __fastcall glitch::io::CXMLWriter::writeComment(int this, const wchar_t *a2)
{
  int v2; // r3
  _DWORD **v3; // r4
  bool v5; // zf

  v2 = *(_DWORD *)(this + 8);
  v3 = (_DWORD **)this;
  v5 = v2 == 0;
  if ( v2 )
    v5 = a2 == nullptr;
  if ( !v5 )
  {
    (*(void (__fastcall **)(_DWORD, void *, int))(*(_DWORD *)v2 + 12))(*(_DWORD *)(this + 8), &unk_8DF008, 16);
    ((void (__fastcall *)(_DWORD **, const wchar_t *))(*v3)[8])(v3, a2);
    return (*(int (__fastcall **)(_DWORD *, void *, int))(*v3[2] + 12))(v3[2], &unk_8DF020, 12);
  }
  return this;
}


// ===== 57653c glitch::io::CXMLWriter::writeLineBreak(void) =====
int __fastcall glitch::io::CXMLWriter::writeLineBreak(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 8);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD, void *, int))(*(_DWORD *)v1 + 12))(*(_DWORD *)(this + 8), &unk_8DF030, 4);
  return this;
}


// ===== 576570 `global constructor keyed to'.._source_glitch_io_CXMLWriter.cpp =====
void `global constructor keyed to'.._source_glitch_io_CXMLWriter.cpp()
{
  dword_9F67FC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F67F8 = 1056964608;
}


// ===== 576590 glitch::io::CXMLWriter::writeClosingTag(wchar_t const*) =====
int __fastcall glitch::io::CXMLWriter::writeClosingTag(int this, const wchar_t *a2)
{
  int v2; // r3
  int v3; // r4
  bool v5; // zf
  int v6; // r2
  int v7; // r5
  size_t v8; // r0

  v2 = *(_DWORD *)(this + 8);
  v3 = this;
  v5 = v2 == 0;
  if ( v2 )
    v5 = a2 == nullptr;
  if ( !v5 )
  {
    v6 = *(_DWORD *)(this + 12) - 1;
    v5 = *(_DWORD *)(this + 12) == 1;
    *(_DWORD *)(this + 12) = v6;
    if ( v6 >= 0 && !v5 )
    {
      v7 = *(unsigned __int8 *)(this + 16);
      if ( !*(_BYTE *)(this + 16) )
      {
        while ( 1 )
        {
          (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)v2 + 12))(v2, &unk_8DF038, 4);
          if ( *(_DWORD *)(v3 + 12) <= ++v7 )
            break;
          v2 = *(_DWORD *)(v3 + 8);
        }
        v2 = *(_DWORD *)(v3 + 8);
      }
    }
    (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)v2 + 12))(v2, &unk_8DF040, 8);
    v8 = wcslen(a2);
    (*(void (__fastcall **)(_DWORD, const wchar_t *, size_t))(**(_DWORD **)(v3 + 8) + 12))(
      *(_DWORD *)(v3 + 8),
      a2,
      4 * v8);
    (*(void (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(v3 + 8) + 12))(*(_DWORD *)(v3 + 8), &unk_8DF028, 4);
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v3 + 8) + 16))(*(_DWORD *)(v3 + 8));
    *(_BYTE *)(v3 + 16) = 0;
  }
  return this;
}


// ===== 576694 glitch::io::CXMLWriter::writeAttribute(wchar_t const*,wchar_t const*) =====
int __fastcall glitch::io::CXMLWriter::writeAttribute(int this, const wchar_t *a2, const wchar_t *a3)
{
  bool v3; // zf
  _DWORD **v6; // r4
  size_t v7; // r0

  v3 = a2 == nullptr;
  if ( a2 )
    v3 = a3 == nullptr;
  v6 = (_DWORD **)this;
  if ( !v3 )
  {
    (*(void (__fastcall **)(_DWORD, const char *, int))(**(_DWORD **)(this + 8) + 12))(*(_DWORD *)(this + 8), " ", 4);
    v7 = wcslen(a2);
    (*(void (__fastcall **)(_DWORD *, const wchar_t *, size_t))(*v6[2] + 12))(v6[2], a2, 4 * v7);
    (*(void (__fastcall **)(_DWORD *, void *, int))(*v6[2] + 12))(v6[2], &unk_8DF050, 8);
    ((void (__fastcall *)(_DWORD **, const wchar_t *))(*v6)[8])(v6, a3);
    return (*(int (__fastcall **)(_DWORD *, void *, int))(*v6[2] + 12))(v6[2], &unk_8DF060, 4);
  }
  return this;
}


// ===== 576758 glitch::io::CXMLWriter::writeElement(wchar_t const*,bool,std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>> &,std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
int __fastcall glitch::io::CXMLWriter::writeElement(int result, const wchar_t *a2, int a3, int *a4, int *a5)
{
  int v5; // r12
  int v6; // r4
  bool v8; // zf
  int v10; // r6
  size_t v12; // r0
  int v13; // r0
  int v14; // r3
  int v15; // r10
  unsigned int v16; // r6

  v5 = *(_DWORD *)(result + 8);
  v6 = result;
  v8 = v5 == 0;
  if ( v5 )
    v8 = a2 == nullptr;
  v10 = v8;
  if ( !v8 )
  {
    if ( *(int *)(result + 12) > 0 )
    {
      while ( 1 )
      {
        (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)v5 + 12))(v5, &unk_8DF038, 4);
        if ( *(_DWORD *)(v6 + 12) <= ++v10 )
          break;
        v5 = *(_DWORD *)(v6 + 8);
      }
      v5 = *(_DWORD *)(v6 + 8);
    }
    (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)v5 + 12))(v5, &unk_8DF068, 4);
    v12 = wcslen(a2);
    (*(void (__fastcall **)(_DWORD, const wchar_t *, size_t))(**(_DWORD **)(v6 + 8) + 12))(
      *(_DWORD *)(v6 + 8),
      a2,
      4 * v12);
    v13 = *a4;
    if ( 954437177 * ((a4[1] - *a4) >> 3) )
    {
      v14 = *a5;
      if ( 954437177 * ((a5[1] - *a5) >> 3) )
      {
        v15 = 0;
        v16 = 0;
        while ( 1 )
        {
          glitch::io::CXMLWriter::writeAttribute(
            v6,
            *(const wchar_t **)(v13 + v15 + 68),
            *(const wchar_t **)(v14 + v15 + 68));
          v13 = *a4;
          ++v16;
          v15 += 72;
          if ( v16 >= 954437177 * ((a4[1] - *a4) >> 3) )
            break;
          v14 = *a5;
          if ( v16 >= 954437177 * ((a5[1] - *a5) >> 3) )
          {
            if ( a3 )
              goto LABEL_14;
            goto LABEL_22;
          }
        }
      }
    }
    if ( a3 )
    {
LABEL_14:
      result = (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(v6 + 8) + 12))(
                 *(_DWORD *)(v6 + 8),
                 &unk_8DF070,
                 12);
      *(_BYTE *)(v6 + 16) = 0;
    }
    else
    {
LABEL_22:
      result = (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(v6 + 8) + 12))(
                 *(_DWORD *)(v6 + 8),
                 &unk_8DF028,
                 4);
      ++*(_DWORD *)(v6 + 12);
      *(_BYTE *)(v6 + 16) = 0;
    }
  }
  return result;
}


// ===== 576988 glitch::io::CXMLWriter::writeElement(wchar_t const*,bool,wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*) =====
int __fastcall glitch::io::CXMLWriter::writeElement(
        int this,
        const wchar_t *a2,
        int a3,
        const wchar_t *a4,
        wchar_t *a5,
        wchar_t *a6,
        wchar_t *a7,
        wchar_t *a8,
        wchar_t *a9,
        wchar_t *a10,
        wchar_t *a11,
        wchar_t *a12,
        wchar_t *a13)
{
  int v13; // r12
  int v14; // r4
  bool v16; // zf
  int v18; // r6
  size_t v20; // r0

  v13 = *(_DWORD *)(this + 8);
  v14 = this;
  v16 = v13 == 0;
  if ( v13 )
    v16 = a2 == nullptr;
  v18 = v16;
  if ( !v16 )
  {
    if ( *(int *)(this + 12) > 0 )
    {
      while ( 1 )
      {
        (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)v13 + 12))(v13, &unk_8DF038, 4);
        if ( *(_DWORD *)(v14 + 12) <= ++v18 )
          break;
        v13 = *(_DWORD *)(v14 + 8);
      }
      v13 = *(_DWORD *)(v14 + 8);
    }
    (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)v13 + 12))(v13, &unk_8DF068, 4);
    v20 = wcslen(a2);
    (*(void (__fastcall **)(_DWORD, const wchar_t *, size_t))(**(_DWORD **)(v14 + 8) + 12))(
      *(_DWORD *)(v14 + 8),
      a2,
      4 * v20);
    glitch::io::CXMLWriter::writeAttribute(v14, a4, a5);
    glitch::io::CXMLWriter::writeAttribute(v14, a6, a7);
    glitch::io::CXMLWriter::writeAttribute(v14, a8, a9);
    glitch::io::CXMLWriter::writeAttribute(v14, a10, a11);
    glitch::io::CXMLWriter::writeAttribute(v14, a12, a13);
    if ( a3 )
    {
      this = (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(v14 + 8) + 12))(
               *(_DWORD *)(v14 + 8),
               &unk_8DF070,
               12);
    }
    else
    {
      this = (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(v14 + 8) + 12))(
               *(_DWORD *)(v14 + 8),
               &unk_8DF028,
               4);
      ++*(_DWORD *)(v14 + 12);
    }
    *(_BYTE *)(v14 + 16) = 0;
  }
  return this;
}


// ===== 576b00 glitch::io::CXMLWriter::writeXMLHeader(void) =====
int __fastcall glitch::io::CXMLWriter::writeXMLHeader(int this)
{
  int v1; // r3
  int v2; // r4
  size_t v3; // r0
  int v4; // [sp+4h] [bp-8h] BYREF

  v1 = *(_DWORD *)(this + 8);
  v2 = this;
  if ( v1 )
  {
    v4 = 65279;
    (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v1 + 12))(v1, &v4, 4);
    v3 = wcslen(U"<?xml version=\"1.0\"?>");
    (*(void (__fastcall **)(_DWORD, const wchar_t *, size_t))(**(_DWORD **)(v2 + 8) + 12))(
      *(_DWORD *)(v2 + 8),
      U"<?xml version=\"1.0\"?>",
      4 * v3);
    this = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 36))(v2);
    *(_BYTE *)(v2 + 16) = 0;
  }
  return this;
}


// ===== 576b88 glitch::io::CXMLWriter::~CXMLWriter() =====
void __fastcall glitch::io::CXMLWriter::~CXMLWriter(glitch::io::CXMLWriter *this)
{
  glitch::io::CXMLWriter::~CXMLWriter(this);
  LC_API_FREE_0(this);
}


// ===== 576ba4 glitch::io::IXMLWriter::~IXMLWriter() =====
void __fastcall glitch::io::IXMLWriter::~IXMLWriter(glitch::io::IXMLWriter *this)
{
  LC_API_FREE_0(this);
}


// ===== 576bb8 glitch::io::CXMLWriter::writeText(wchar_t const*) =====
void __fastcall glitch::io::CXMLWriter::writeText(glitch::io::CXMLWriter *this, wchar_t *a2)
{
  int v2; // r3
  bool v4; // zf
  wchar_t v5; // r0
  const wchar_t *v6; // r5
  int v7; // r1
  int v8; // r3
  int v9; // r2
  size_t v10; // r0
  wchar_t v11; // t1
  _DWORD *v12; // r0
  wchar_t *v13; // r9
  size_t v14; // r0
  _DWORD v15[16]; // [sp+0h] [bp-50h] BYREF
  char *v16; // [sp+40h] [bp-10h]
  void *p; // [sp+44h] [bp-Ch]
  wchar_t s[2]; // [sp+48h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 2);
  v4 = v2 == 0;
  if ( v2 )
    v4 = a2 == nullptr;
  if ( !v4 )
  {
    v15[0] = 0;
    v16 = (char *)v15;
    p = v15;
    v5 = *a2;
    if ( *a2 )
    {
      v6 = a2;
      do
      {
        if ( v5 == 38 )
        {
          v7 = 0;
LABEL_20:
          v13 = *(wchar_t **)((char *)&glitch::io::XMLWSChar + v7 + 4);
          v14 = wcslen(v13);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v15,
            v13,
            &v13[v14]);
        }
        else
        {
          v8 = 0;
          while ( 1 )
          {
            ++v8;
            v9 = *((_DWORD *)&glitch::io::XMLWSChar + 2 * v8);
            v7 = 8 * v8;
            if ( !v9 )
              break;
            if ( v5 == v9 )
              goto LABEL_20;
          }
          s[0] = 0;
          s[1] = 0;
          s[0] = *v6;
          v10 = wcslen(s);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v15,
            s,
            &s[v10]);
        }
        v11 = v6[1];
        ++v6;
        v5 = v11;
      }
      while ( v11 );
      v2 = *((_DWORD *)this + 2);
    }
    (*(void (__fastcall **)(int, void *, unsigned int))(*(_DWORD *)v2 + 12))(v2, p, (v16 - (_BYTE *)p) & 0xFFFFFFFC);
    v12 = p;
    *((_BYTE *)this + 16) = 1;
    if ( v12 != v15 )
    {
      if ( v12 )
        GlitchFree(v12);
    }
  }
}


// ===== 576cf0 glitch::io::CZipReader::getFileCount(void) =====
int __fastcall glitch::io::CZipReader::getFileCount(glitch::io::CZipReader *this)
{
  return 1749801491 * ((*((_DWORD *)this + 6) - *((_DWORD *)this + 5)) >> 2);
}


// ===== 576d1c glitch::io::CZipReader::getFileInfo(int) =====
int __fastcall glitch::io::CZipReader::getFileInfo(glitch::io::CZipReader *this, int a2)
{
  return *((_DWORD *)this + 5) + 108 * a2;
}


// ===== 576d2c glitch::io::CZipReader::isValid(glitch::io::IReadFile *) =====
bool __fastcall glitch::io::CZipReader::isValid(glitch::io::CZipReader *this, glitch::io::IReadFile *a2)
{
  int v2; // r3
  int v4; // r5
  int v6; // [sp+0h] [bp-Ch] BYREF
  int v7; // [sp+4h] [bp-8h]

  v2 = *(_DWORD *)this;
  v7 = 67324752;
  v4 = (*(int (__fastcall **)(glitch::io::CZipReader *, glitch::io::IReadFile *))(v2 + 36))(this, a2);
  (*(void (__fastcall **)(glitch::io::CZipReader *, _DWORD, _DWORD))(*(_DWORD *)this + 24))(this, 0, 0);
  (*(void (__fastcall **)(glitch::io::CZipReader *, int *, int))(*(_DWORD *)this + 12))(this, &v6, 4);
  (*(void (__fastcall **)(glitch::io::CZipReader *, int, _DWORD))(*(_DWORD *)this + 24))(this, v4, 0);
  return v6 == v7;
}


// ===== 576db8 glitch::io::CUnzipReadFile::getFileName(void) =====
int __fastcall glitch::io::CUnzipReadFile::getFileName(glitch::io::CUnzipReadFile *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 576dc0 glitch::io::CUnZipReader::buildDirectory(void) =====
void __fastcall glitch::io::CUnZipReader::buildDirectory(glitch::io::CUnZipReader *this)
{
  ;
}


// ===== 576dc4 glitch::io::CUnZipReader::findFile(char const*) =====
int __fastcall glitch::io::CUnZipReader::findFile(glitch::io::CUnZipReader *this, const char *a2)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::io::CUnZipReader *, const char *))(*(_DWORD *)this + 12))(
                                      this,
                                      a2);
  if ( !v2 )
    return -1;
  glitch::IReferenceCounted::drop(v2);
  return 1;
}


// ===== 576df0 `global constructor keyed to'.._source_glitch_io_CZipReader.cpp =====
void `global constructor keyed to'.._source_glitch_io_CZipReader.cpp()
{
  dword_9F6808 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6804 = 1056964608;
}


// ===== 576e10 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int *a1,
        unsigned int a2,
        int a3)
{
  unsigned int v3; // r5
  int *v5; // r3
  size_t v6; // r1
  unsigned int v7; // r3

  v3 = a2;
  if ( a2 == -1 )
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  v5 = (int *)a1[5];
  if ( v3 < a1[4] - (int)v5 )
    v3 = a1[4] - (_DWORD)v5;
  if ( v5 != a1 )
    a3 = *a1;
  v6 = v3 + 1;
  if ( v5 == a1 )
    v7 = 16;
  else
    v7 = a3 - (_DWORD)v5;
  if ( v6 >= v7 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
      a1,
      v6);
}


// ===== 576e78 glitch::io::SZipFileEntry::SZipFileEntry(glitch::io::SZipFileEntry const&) =====
int __fastcall glitch::io::SZipFileEntry::SZipFileEntry(int a1, int *a2)
{
  int *v3; // r5
  int v4; // r3
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3

  v3 = a2;
  *(_DWORD *)(a1 + 16) = a1;
  *(_DWORD *)(a1 + 20) = a1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    (_DWORD *)a1,
    (_BYTE *)a2[5],
    (_BYTE *)a2[4]);
  *(_DWORD *)(a1 + 40) = a1 + 24;
  *(_DWORD *)(a1 + 44) = a1 + 24;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    (_DWORD *)(a1 + 24),
    (_BYTE *)v3[11],
    (_BYTE *)v3[10]);
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    (_DWORD *)(a1 + 48),
    (_BYTE *)v3[17],
    (_BYTE *)v3[16]);
  v4 = v3[18];
  v3 += 19;
  *(_DWORD *)(a1 + 72) = v4;
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v3 += 4;
  *(_DWORD *)(a1 + 76) = v5;
  *(_DWORD *)(a1 + 80) = v6;
  *(_DWORD *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 88) = v8;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  *(_DWORD *)(a1 + 92) = *v3;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 100) = v10;
  *(_WORD *)(a1 + 104) = v11;
  return a1;
}


// ===== 576ef4 glitch::io::CZipReader::isValid(char const*) =====
bool __fastcall glitch::io::CZipReader::isValid(glitch::io::CZipReader *this, const char *a2)
{
  glitch::io::CReadFile *File; // r5
  glitch::io::IReadFile *v3; // r1
  _BOOL4 isValid; // r4

  File = glitch::io::createReadFile(this, a2);
  isValid = glitch::io::CZipReader::isValid(File, v3);
  glitch::IReferenceCounted::drop(File);
  return isValid;
}


// ===== 576f18 glitch::io::CZipReader::openFile(int) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CZipReader::openFile(glitch::io::CZipReader *this, int a2)
{
  int v2; // r5
  int v4; // r2
  int v5; // r6
  int v6; // r1
  int v7; // r5
  int v8; // r3
  int v9; // r6
  const char *v10; // r5
  int v11; // r6
  glitch::io::CLimitReadFile *v12; // r8
  int v14; // r10
  size_t v15; // r6
  void *v16; // r11
  void *v17; // r7
  int v18; // r5
  int v19; // r3
  int v20; // r6
  const char *v21; // r5
  int v22; // r6
  bool v23; // [sp+0h] [bp-44h]
  _DWORD v24[15]; // [sp+8h] [bp-3Ch] BYREF

  v2 = 108 * a2;
  v4 = *((_DWORD *)this + 5) + 108 * a2;
  v5 = *(__int16 *)(v4 + 84);
  if ( *(_WORD *)(v4 + 84) )
  {
    if ( v5 == 8 )
    {
      v14 = *(unsigned __int16 *)(v4 + 98) | (*(unsigned __int16 *)(v4 + 100) << 16);
      v15 = *(unsigned __int16 *)(v4 + 94) | (*(unsigned __int16 *)(v4 + 96) << 16);
      v16 = operator new[](v14, 0);
      if ( v16 && (v17 = operator new[](v15, 0)) != nullptr )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 2) + 24))(
          *((_DWORD *)this + 2),
          *(_DWORD *)(*((_DWORD *)this + 5) + v2 + 72),
          0);
        (*(void (__fastcall **)(_DWORD, void *, size_t))(**((_DWORD **)this + 2) + 12))(*((_DWORD *)this + 2), v17, v15);
        v24[1] = v15;
        v24[0] = v17;
        v24[3] = v16;
        v24[4] = v14;
        v24[8] = 0;
        v24[9] = 0;
        if ( inflateInit2_(v24, -15, "1.2.3", 56) )
        {
          operator delete[](v17);
          glitch::os::Printer::log("Error decompressing", *(_DWORD *)(*((_DWORD *)this + 5) + v2 + 44), 3);
          operator delete[](v16);
          return nullptr;
        }
        else
        {
          inflate(v24, 4);
          inflateEnd_0(v24);
          inflateEnd_0(v24);
          operator delete[](v17);
          return glitch::io::createMemoryReadFile(
                   (glitch::io *)v16,
                   v14,
                   *(char **)(*((_DWORD *)this + 5) + v2 + 20),
                   (const char *)&dword_0 + 1,
                   v23);
        }
      }
      else
      {
        glitch::os::Printer::log("Not enough memory for decompressing", *(_DWORD *)(*((_DWORD *)this + 5) + v2 + 44), 3);
        return nullptr;
      }
    }
    else
    {
      glitch::os::Printer::log("file has unsupported compression method.", *(_DWORD *)(v4 + 44), 3);
      return nullptr;
    }
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 2) + 24))(
      *((_DWORD *)this + 2),
      *(_DWORD *)(v4 + 72),
      *(__int16 *)(v4 + 84));
    if ( (*((_DWORD *)this + 4) & 1) != 0 )
    {
      v6 = v5;
      v7 = *((_DWORD *)this + 5) + v2;
      v8 = *(unsigned __int16 *)(v7 + 98);
      v9 = *(unsigned __int16 *)(v7 + 100);
      v10 = *(const char **)(v7 + 44);
      v11 = v8 | (v9 << 16);
      v12 = (glitch::io::CLimitReadFile *)operator new(0x50u, v6);
      glitch::io::CLimitReadFile::CLimitReadFile(v12, *((glitch::io::IReadFile **)this + 2), v11, v10, v10);
    }
    else
    {
      v18 = *((_DWORD *)this + 5) + v2;
      v19 = *(unsigned __int16 *)(v18 + 98);
      v20 = *(unsigned __int16 *)(v18 + 100);
      v21 = *(const char **)(v18 + 44);
      v22 = v19 | (v20 << 16);
      v12 = (glitch::io::CLimitReadFile *)operator new(0x50u, 0);
      glitch::io::CLimitReadFile::CLimitReadFile(v12, *((glitch::io::IReadFile **)this + 2), v22, v21);
    }
    return v12;
  }
}


// ===== 5771a4 std::priv::__lower_bound<glitch::io::SZipFileEntry const*,glitch::io::SZipFileEntry,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,int>(glitch::io::SZipFileEntry const*,glitch::io::SZipFileEntry const*,glitch::io::SZipFileEntry const&,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,int *) =====
int __fastcall std::priv::__lower_bound<glitch::io::SZipFileEntry const*,glitch::io::SZipFileEntry,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,int>(
        int result,
        int a2,
        int a3)
{
  int v4; // r10
  char *v5; // r7
  unsigned int v6; // r4
  int v7; // r6
  int v8; // r8
  char *v9; // r5
  unsigned int v10; // r2
  int v11; // r1
  int v12; // r3

  v4 = 1749801491 * ((a2 - result) >> 2);
  while ( v4 > 0 )
  {
    v5 = *(char **)(a3 + 44);
    v6 = *(_DWORD *)(a3 + 40) - (_DWORD)v5;
    while ( 1 )
    {
      v7 = v4 >> 1;
      v8 = result + 108 * (v4 >> 1);
      v9 = *(char **)(v8 + 44);
      v10 = *(_DWORD *)(v8 + 40) - (_DWORD)v9;
      if ( !v10 || !v6 )
        goto LABEL_3;
      v11 = *v9 - *v5;
      if ( v11 )
        break;
      v12 = 0;
      while ( ++v12 != v10 && v12 != v6 )
      {
        v11 = v9[v12] - v5[v12];
        if ( v11 )
          goto LABEL_13;
      }
LABEL_3:
      if ( v10 < v6 )
        goto LABEL_14;
LABEL_4:
      v4 >>= 1;
      if ( !v7 )
        return result;
    }
LABEL_13:
    if ( v11 >= 0 )
      goto LABEL_4;
LABEL_14:
    v4 = v4 - 1 - v7;
    result = v8 + 108;
  }
  return result;
}


// ===== 577284 glitch::io::SZipFileEntry::operator=(glitch::io::SZipFileEntry const&) =====
int __fastcall glitch::io::SZipFileEntry::operator=(int a1, int a2)
{
  int v4; // r3
  int *v5; // r4
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3

  if ( a1 != a2 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a1,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
  if ( a1 + 24 != a2 + 24 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 24),
      *(_BYTE **)(a2 + 44),
      *(_BYTE **)(a2 + 40));
  if ( a1 + 48 != a2 + 48 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)(a1 + 48),
      *(_BYTE **)(a2 + 68),
      *(_BYTE **)(a2 + 64));
  v4 = *(_DWORD *)(a2 + 72);
  v5 = (int *)(a2 + 76);
  *(_DWORD *)(a1 + 72) = v4;
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v5 += 4;
  *(_DWORD *)(a1 + 76) = v6;
  *(_DWORD *)(a1 + 80) = v7;
  *(_DWORD *)(a1 + 84) = v8;
  *(_DWORD *)(a1 + 88) = v9;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  *(_DWORD *)(a1 + 92) = *v5;
  *(_DWORD *)(a1 + 96) = v10;
  *(_DWORD *)(a1 + 100) = v11;
  *(_WORD *)(a1 + 104) = v12;
  return a1;
}


// ===== 577308 glitch::io::SZipFileEntry::SZipFileEntry(void) =====
glitch::io::SZipFileEntry *__fastcall glitch::io::SZipFileEntry::SZipFileEntry(glitch::io::SZipFileEntry *this)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    0x10u);
  **((_BYTE **)this + 4) = 0;
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 6,
    0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 16) = (char *)this + 48;
  *((_DWORD *)this + 17) = (char *)this + 48;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 12,
    0x10u);
  **((_BYTE **)this + 16) = 0;
  return this;
}


// ===== 577374 glitch::io::CUnzipReadFile::~CUnzipReadFile() =====
void __fastcall glitch::io::CUnzipReadFile::~CUnzipReadFile(glitch::io::CUnzipReadFile *this)
{
  char *v2; // r1
  char *v3; // r0

  *(_DWORD *)this = off_9747A0;
  v2 = (char *)this + 48;
  v3 = *((char **)this + 17);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  glitch::io::CReadFile::~CReadFile(this);
}


// ===== 5773c8 glitch::io::CUnzipReadFile::~CUnzipReadFile() =====
void __fastcall glitch::io::CUnzipReadFile::~CUnzipReadFile(glitch::io::CUnzipReadFile *this)
{
  glitch::io::CUnzipReadFile::~CUnzipReadFile(this);
  LC_API_FREE_0(this);
}


// ===== 5773e4 glitch::io::SZipFileEntry::~SZipFileEntry() =====
void __fastcall glitch::io::SZipFileEntry::~SZipFileEntry(glitch::io::SZipFileEntry *this)
{
  char *v1; // r3
  char *v3; // r0
  char *v4; // r0
  glitch::io::SZipFileEntry *v5; // r0

  v1 = (char *)this + 48;
  v3 = *((char **)this + 17);
  if ( v3 != v1 && v3 )
    GlitchFree(v3);
  v4 = *((char **)this + 11);
  if ( v4 != (char *)this + 24 && v4 )
    GlitchFree(v4);
  v5 = *((glitch::io::SZipFileEntry **)this + 5);
  if ( v5 != this )
  {
    if ( v5 )
      GlitchFree(v5);
  }
}


// ===== 577444 std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::io::SZipFileEntry **__fastcall std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::io::SZipFileEntry **a1)
{
  glitch::io::SZipFileEntry *v1; // r4
  glitch::io::SZipFileEntry *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (glitch::io::SZipFileEntry *)((char *)v1 - 108);
    glitch::io::SZipFileEntry::~SZipFileEntry(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 577488 glitch::io::CZipReader::~CZipReader() =====
void __fastcall glitch::io::CZipReader::~CZipReader(glitch::io::CZipReader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_974800;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::io::SZipFileEntry **)this + 5);
}


// ===== 5774d0 glitch::io::CZipReader::~CZipReader() =====
void __fastcall glitch::io::CZipReader::~CZipReader(glitch::io::CZipReader *this)
{
  glitch::io::CZipReader::~CZipReader(this);
  LC_API_FREE_0(this);
}


// ===== 5774ec glitch::io::CZipReader::~CZipReader() =====
void __fastcall glitch::io::CZipReader::~CZipReader(glitch::io::CZipReader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_974800;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::io::SZipFileEntry **)this + 5);
}


// ===== 577534 glitch::io::CUnZipReader::~CUnZipReader() =====
void __fastcall glitch::io::CUnZipReader::~CUnZipReader(glitch::io::CUnZipReader *this)
{
  char *v2; // r1
  char *v3; // r0

  *(_DWORD *)this = off_9747E8;
  v2 = (char *)this + 36;
  v3 = *((char **)this + 14);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  glitch::io::CZipReader::~CZipReader(this);
}


// ===== 577588 glitch::io::CUnZipReader::~CUnZipReader() =====
void __fastcall glitch::io::CUnZipReader::~CUnZipReader(glitch::io::CUnZipReader *this)
{
  glitch::io::CUnZipReader::~CUnZipReader(this);
  LC_API_FREE_0(this);
}


// ===== 5775a4 glitch::core::heapsink<glitch::io::SZipFileEntry>(glitch::io::SZipFileEntry *,int,int) =====
unsigned int __fastcall glitch::core::heapsink<glitch::io::SZipFileEntry>(unsigned int result, int a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r9
  int v5; // r6
  int v6; // r5
  int *v7; // r4
  char *v8; // r8
  int v9; // r6
  char *v10; // r10
  unsigned int v11; // r2
  unsigned int v12; // r1
  int v13; // r3
  _BOOL4 v14; // r1
  unsigned int v15; // r2
  int v16; // r1
  char *v17; // r2
  unsigned int v18; // r1
  unsigned int v19; // r12
  int v20; // r2
  _BOOL4 v21; // r1
  char *v23; // [sp+Ch] [bp-80h]
  _BYTE v24[108]; // [sp+18h] [bp-74h] BYREF

  v3 = 2 * a2;
  if ( a3 > 2 * a2 )
  {
    v4 = result;
    v5 = a2;
    while ( 1 )
    {
      v6 = v3 + 1;
      if ( a3 <= v3 + 1 )
      {
        v7 = (int *)(v4 + 108 * v3);
        v8 = (char *)v7[11];
        result = v7[10] - (_DWORD)v8;
        goto LABEL_5;
      }
      v7 = (int *)(v4 + 108 * v3);
      v15 = v4 + 108 * v6;
      v8 = (char *)v7[11];
      result = v7[10] - (_DWORD)v8;
      if ( !result )
        break;
      v16 = *(_DWORD *)(v15 + 40);
      v17 = *(char **)(v15 + 44);
      v18 = v16 - (_DWORD)v17;
      v23 = v17;
      if ( !v18 )
        goto LABEL_25;
      v19 = *v8 - *v17;
      if ( !v19 )
      {
        v20 = 0;
        while ( ++v20 != result && v20 != v18 )
        {
          v19 = v8[v20] - v23[v20];
          if ( v19 )
            goto LABEL_30;
        }
        goto LABEL_25;
      }
LABEL_30:
      v21 = v19 >> 31;
LABEL_26:
      if ( v21 )
      {
        v7 = (int *)(v4 + 108 * v6);
        v8 = (char *)v7[11];
        result = v7[10] - (_DWORD)v8;
        goto LABEL_6;
      }
LABEL_5:
      v6 = v3;
LABEL_6:
      v9 = v4 + 108 * v5;
      v10 = *(char **)(v9 + 44);
      v11 = *(_DWORD *)(v9 + 40) - (_DWORD)v10;
      if ( !v11 || !result )
        goto LABEL_12;
      v12 = *v10 - *v8;
      if ( !v12 )
      {
        v13 = 0;
        while ( v11 != ++v13 && v13 != result )
        {
          v12 = v10[v13] - v8[v13];
          if ( v12 )
            goto LABEL_18;
        }
LABEL_12:
        v14 = v11 < result;
        goto LABEL_13;
      }
LABEL_18:
      v14 = v12 >> 31;
LABEL_13:
      if ( v14 )
      {
        glitch::io::SZipFileEntry::SZipFileEntry((int)v24, v7);
        glitch::io::SZipFileEntry::operator=((int)v7, v9);
        glitch::io::SZipFileEntry::operator=(v9, (int)v24);
        glitch::io::SZipFileEntry::~SZipFileEntry((glitch::io::SZipFileEntry *)v24);
        v3 = 2 * v6;
        v5 = v6;
        if ( 2 * v6 < a3 )
          continue;
      }
      return result;
    }
    v18 = *(_DWORD *)(v15 + 40) - *(_DWORD *)(v15 + 44);
LABEL_25:
    v21 = result < v18;
    goto LABEL_26;
  }
  return result;
}


// ===== 5777ac glitch::core::heapsort<glitch::io::SZipFileEntry>(glitch::io::SZipFileEntry *,int) =====
void __fastcall glitch::core::heapsort<glitch::io::SZipFileEntry>(int *a1, int a2)
{
  int v2; // r10
  int v3; // r9
  unsigned int v5; // r6
  int v6; // r4
  int v7; // r7
  int v8; // r10
  _BYTE v9[108]; // [sp+0h] [bp-74h] BYREF

  v2 = a2 - 1;
  v3 = a2;
  v5 = (unsigned int)(a1 - 27);
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      glitch::core::heapsink<glitch::io::SZipFileEntry>(v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = (int)&a1[27 * v2];
    do
    {
      glitch::io::SZipFileEntry::SZipFileEntry((int)v9, a1);
      glitch::io::SZipFileEntry::operator=((int)a1, v8);
      glitch::io::SZipFileEntry::operator=(v8, (int)v9);
      glitch::core::heapsink<glitch::io::SZipFileEntry>(v5, 1, v3);
      glitch::io::SZipFileEntry::~SZipFileEntry((glitch::io::SZipFileEntry *)v9);
      --v3;
      v8 -= 108;
    }
    while ( v3 );
  }
}


// ===== 57788c std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::io::SZipFileEntry const&) =====
void __fastcall std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::io::SZipFileEntry **a1,
        int *a2)
{
  glitch::io::SZipFileEntry *v3; // r4
  int v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  size_t v8; // r9
  glitch::io::SZipFileEntry *v9; // r0
  glitch::io::SZipFileEntry *v10; // r8
  glitch::io::SZipFileEntry *v11; // r7
  int v12; // r4
  int v13; // r11
  int v14; // r11
  int v15; // r5
  int v16; // r4
  glitch::io::SZipFileEntry *v17; // r4
  glitch::io::SZipFileEntry *v18; // r5
  int v19; // r11

  v3 = a1[2];
  v4 = (int)a1[1];
  if ( (glitch::io::SZipFileEntry *)v4 == v3 )
  {
    v6 = 1749801491 * ((v3 - *a1) >> 2);
    if ( v6 )
      v7 = -795364314 * ((v3 - *a1) >> 2);
    else
      v7 = 1;
    if ( v7 > 0x25ED097 || v6 > v7 )
      v8 = -76;
    else
      v8 = 108 * v7;
    v9 = (glitch::io::SZipFileEntry *)GlitchAlloc(v8, 0);
    v10 = *a1;
    v11 = v9;
    v12 = 19 * ((v3 - *a1) >> 2);
    v13 = -133956095 * v12;
    if ( -133956095 * v12 > 0 )
    {
      v15 = -133956095 * v12;
      v16 = 0;
      do
      {
        glitch::io::SZipFileEntry::SZipFileEntry((int)v11 + v16, (int *)((char *)v10 + v16));
        --v15;
        v16 += 108;
      }
      while ( v15 );
      v14 = (int)v11 + 108 * v13;
    }
    else
    {
      v14 = (int)v9;
    }
    glitch::io::SZipFileEntry::SZipFileEntry(v14, a2);
    v17 = a1[1];
    v18 = *a1;
    v19 = v14 + 108;
    if ( v17 != *a1 )
    {
      do
      {
        v17 = (glitch::io::SZipFileEntry *)((char *)v17 - 108);
        glitch::io::SZipFileEntry::~SZipFileEntry(v17);
      }
      while ( v18 != v17 );
      v18 = *a1;
    }
    GlitchFree(v18);
    a1[2] = (glitch::io::SZipFileEntry *)((char *)v11 + v8);
    *a1 = v11;
    a1[1] = (glitch::io::SZipFileEntry *)v19;
  }
  else
  {
    glitch::io::SZipFileEntry::SZipFileEntry(v4, a2);
    a1[1] = (glitch::io::SZipFileEntry *)((char *)a1[1] + 108);
  }
}


// ===== 5779cc glitch::io::CUnzipReadFile::CUnzipReadFile(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,char const*) =====
glitch::io::CReadFile *__fastcall glitch::io::CUnzipReadFile::CUnzipReadFile(
        glitch::io::CReadFile *a1,
        int a2,
        char *a3)
{
  size_t v5; // r0

  glitch::io::CReadFile::CReadFile(a1, *(char **)(a2 + 20), 0);
  *(_DWORD *)a1 = off_9747A0;
  *((_DWORD *)a1 + 16) = (char *)a1 + 48;
  *((_DWORD *)a1 + 17) = (char *)a1 + 48;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)a1 + 12,
    0x10u);
  **((_BYTE **)a1 + 16) = 0;
  v5 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)a1 + 12,
    a3,
    &a3[v5]);
  return a1;
}


// ===== 577a48 glitch::io::CUnZipReader::openFile(char const*) =====
glitch::io::CReadFile *__fastcall glitch::io::CUnZipReader::openFile(glitch::io::CUnZipReader *this, char *a2)
{
  size_t v4; // r0
  glitch::io::CReadFile *v5; // r7
  _DWORD v7[4]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE *v8; // [sp+14h] [bp-Ch]
  void *p; // [sp+18h] [bp-8h]

  v8 = v7;
  p = v7;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v7,
    0x10u);
  *v8 = 0;
  if ( v7 != (_DWORD *)((char *)this + 36) )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v7,
      *((_BYTE **)this + 14),
      *((_BYTE **)this + 13));
  v4 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v7,
    a2,
    &a2[v4]);
  v5 = (glitch::io::CReadFile *)operator new(0x48u, 0);
  glitch::io::CUnzipReadFile::CUnzipReadFile(v5, (int)v7, a2);
  if ( !(*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)v5 + 60))(v5) )
  {
    glitch::IReferenceCounted::drop(v5);
    v5 = nullptr;
  }
  if ( p != v7 && p )
    GlitchFree(p);
  return v5;
}


// ===== 577b50 glitch::io::CZipReader::deletePathFromFilename(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::io::CZipReader::deletePathFromFilename(int a1, int a2)
{
  int v2; // r2
  int v4; // r3
  int v5; // r5
  bool v6; // zf
  char *v7; // r5
  size_t v8; // r0
  int v9; // r3
  int v10; // t1
  bool v11; // zf

  v2 = *(_DWORD *)(a2 + 20);
  v4 = **(char **)(a2 + 16);
  v5 = *(_DWORD *)(a2 + 16);
  v6 = v4 == 47;
  if ( v4 != 47 )
    v6 = v4 == 92;
  if ( !v6 )
  {
    if ( v5 == v2 )
      return;
    while ( 1 )
    {
      v10 = *(char *)--v5;
      v9 = v10;
      v11 = v10 == 92;
      if ( v10 != 92 )
        v11 = v9 == 47;
      if ( v11 )
        break;
      if ( v5 == v2 )
        return;
    }
  }
  if ( v5 != v2 )
  {
    v7 = (char *)(v5 + 1);
    v8 = LC_API_STRLEN_0(v7);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a2,
      v7,
      &v7[v8]);
  }
}


// ===== 577bc8 glitch::io::CZipReader::extractFilename(glitch::io::SZipFileEntry *) =====
void __fastcall glitch::io::CZipReader::extractFilename(glitch::io::CZipReader *this, glitch::io::SZipFileEntry *a2)
{
  int v2; // r10
  char *v5; // r8
  char *v6; // r1
  unsigned int v7; // r3
  char v8; // r2
  char *v9; // r1
  int v10; // r3
  char *v11; // r10
  int v12; // t1
  char *v13; // r10
  size_t v14; // r0
  _DWORD *v15; // r9
  _BYTE *v16; // r1
  char *v17; // r2
  size_t v18; // r0
  _DWORD v19[4]; // [sp+4h] [bp-20h] BYREF
  _BYTE *v20; // [sp+14h] [bp-10h]
  void *p; // [sp+18h] [bp-Ch]

  v2 = *((__int16 *)a2 + 51);
  if ( !*((_WORD *)a2 + 51) )
    return;
  if ( *((_BYTE *)this + 12) )
  {
    v5 = *((char **)a2 + 4);
    v6 = *((char **)a2 + 5);
    if ( v5 != v6 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = v6[v7];
        v9 = &v6[v7++];
        if ( (unsigned __int8)(v8 - 65) <= 0x19u )
          v8 += 32;
        *v9 = v8;
        v5 = *((char **)a2 + 5);
        if ( v7 >= *((_DWORD *)a2 + 4) - (int)v5 )
          break;
        v6 = *((char **)a2 + 5);
      }
    }
  }
  else
  {
    v5 = *((char **)a2 + 5);
  }
  v10 = v5[v2];
  v11 = &v5[v2];
  if ( v10 != 47 )
  {
    while ( v11 != v5 )
    {
      v12 = *--v11;
      if ( v12 == 47 )
        goto LABEL_13;
    }
    goto LABEL_23;
  }
LABEL_13:
  if ( v5 == v11 )
  {
LABEL_23:
    v18 = LC_API_STRLEN_0(v5);
    v15 = (_DWORD *)((char *)a2 + 24);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a2 + 6,
      v5,
      &v5[v18]);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a2 + 12,
      "",
      "");
    goto LABEL_24;
  }
  v13 = v11 + 1;
  v14 = LC_API_STRLEN_0(v13);
  v15 = (_DWORD *)((char *)a2 + 24);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)a2 + 6,
    v13,
    &v13[v14]);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)a2 + 12,
    "",
    "");
  v16 = *((_BYTE **)a2 + 5);
  if ( v13 - v16 > (unsigned int)(*((_DWORD *)a2 + 4) - (_DWORD)v16) )
    v17 = *((char **)a2 + 4);
  else
    v17 = v13;
  v20 = v19;
  p = v19;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v19,
    v16,
    v17);
  if ( (_DWORD *)((char *)a2 + 48) != v19 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a2 + 12,
      p,
      v20);
  if ( p == v19 || !p )
  {
LABEL_24:
    if ( !*((_BYTE *)this + 13) )
      goto LABEL_25;
    return;
  }
  GlitchFree(p);
  if ( !*((_BYTE *)this + 13) )
LABEL_25:
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v15,
      *((_BYTE **)a2 + 5),
      *((_BYTE **)a2 + 4));
}


// ===== 577db4 glitch::io::CZipReader::scanLocalHeader(void) =====
int __fastcall glitch::io::CZipReader::scanLocalHeader(glitch::io::CZipReader *this)
{
  int v2; // r3
  int v3; // r4
  size_t v5; // r0
  int v6; // r0
  int v7; // r3
  char v8[1024]; // [sp+0h] [bp-474h] BYREF
  int v9[18]; // [sp+400h] [bp-74h] BYREF
  int v10; // [sp+448h] [bp-2Ch]
  int v11; // [sp+44Ch] [bp-28h] BYREF
  int v12; // [sp+450h] [bp-24h]
  int v13; // [sp+454h] [bp-20h]
  int v14; // [sp+458h] [bp-1Ch] BYREF
  int v15; // [sp+45Ch] [bp-18h]
  int v16; // [sp+460h] [bp-14h]
  int v17; // [sp+464h] [bp-10h]
  __int16 v18; // [sp+468h] [bp-Ch]

  glitch::io::SZipFileEntry::SZipFileEntry((glitch::io::SZipFileEntry *)v9);
  v2 = *((_DWORD *)this + 2);
  v3 = 0;
  v18 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v2 + 12))(v2, &v11, 30);
  if ( v11 == 67324752 )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      v9,
      SHIWORD(v17) + 2,
      (int)v9);
    (*(void (__fastcall **)(_DWORD, char *, _DWORD))(**((_DWORD **)this + 2) + 12))(
      *((_DWORD *)this + 2),
      v8,
      SHIWORD(v17));
    v8[SHIWORD(v17)] = 0;
    v5 = LC_API_STRLEN_0(v8);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v9,
      v8,
      &v8[v5]);
    glitch::io::CZipReader::extractFilename(this, (glitch::io::SZipFileEntry *)v9);
    if ( v18 )
      (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 2) + 24))(*((_DWORD *)this + 2), v18, 1);
    if ( (v12 & 0x80000) != 0 )
      (*(void (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 2) + 12))(
        *((_DWORD *)this + 2),
        (char *)&v14 + 2,
        12);
    v3 = 1;
    v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 36))(*((_DWORD *)this + 2));
    v7 = *((_DWORD *)this + 2);
    v10 = v6;
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v7 + 24))(v7, HIWORD(v15) | ((unsigned __int16)v16 << 16), 1);
    std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      (glitch::io::SZipFileEntry **)this + 5,
      v9);
  }
  glitch::io::SZipFileEntry::~SZipFileEntry((glitch::io::SZipFileEntry *)v9);
  return v3;
}


// ===== 577fa4 glitch::io::CZipReader::CZipReader(glitch::io::IReadFile *,bool,bool) =====
glitch::io::CZipReader *__fastcall glitch::io::CZipReader::CZipReader(
        glitch::io::CZipReader *this,
        glitch::io::IReadFile *a2,
        bool a3,
        bool a4)
{
  int *v5; // r0
  unsigned int v6; // r1

  *(_DWORD *)this = off_974800;
  *((_DWORD *)this + 1) = 1;
  *((_BYTE *)this + 12) = a3;
  *((_BYTE *)this + 13) = a4;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  if ( a2 )
  {
    ++*((_DWORD *)a2 + 1);
    while ( glitch::io::CZipReader::scanLocalHeader(this) )
      ;
    v5 = *((int **)this + 5);
    v6 = 1749801491 * ((*((_DWORD *)this + 6) - (int)v5) >> 2);
    if ( v6 > 1 )
      glitch::core::heapsort<glitch::io::SZipFileEntry>(v5, v6);
  }
  return this;
}


// ===== 578050 glitch::io::CZipReader::CZipReader(glitch::io::IReadFile *,bool,bool) =====
glitch::io::CZipReader *__fastcall glitch::io::CZipReader::CZipReader(
        glitch::io::CZipReader *this,
        glitch::io::IReadFile *a2,
        bool a3,
        bool a4)
{
  int *v5; // r0
  unsigned int v6; // r1

  *(_DWORD *)this = off_974800;
  *((_DWORD *)this + 1) = 1;
  *((_BYTE *)this + 12) = a3;
  *((_BYTE *)this + 13) = a4;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  if ( a2 )
  {
    ++*((_DWORD *)a2 + 1);
    while ( glitch::io::CZipReader::scanLocalHeader(this) )
      ;
    v5 = *((int **)this + 5);
    v6 = 1749801491 * ((*((_DWORD *)this + 6) - (int)v5) >> 2);
    if ( v6 > 1 )
      glitch::core::heapsort<glitch::io::SZipFileEntry>(v5, v6);
  }
  return this;
}


// ===== 5780fc glitch::io::CUnZipReader::CUnZipReader(glitch::io::IFileSystem *,char const*,bool,bool) =====
glitch::io::CUnZipReader *__fastcall glitch::io::CUnZipReader::CUnZipReader(
        glitch::io::CUnZipReader *this,
        glitch::io::IFileSystem *a2,
        char *a3,
        bool a4,
        bool a5)
{
  size_t v8; // r0
  int v9; // r3

  glitch::io::CZipReader::CZipReader(this, nullptr, a4, a5);
  *(_DWORD *)this = off_9747E8;
  *((_DWORD *)this + 8) = a2;
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  v8 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)this + 9,
    a3,
    &a3[v8]);
  v9 = *(char *)(*((_DWORD *)this + 13) - 1);
  if ( v9 != 92 && v9 != 47 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      (_DWORD *)this + 9,
      "/",
      "");
  return this;
}


// ===== 5781b4 glitch::io::CUnZipReader::CUnZipReader(glitch::io::IFileSystem *,char const*,bool,bool) =====
glitch::io::CUnZipReader *__fastcall glitch::io::CUnZipReader::CUnZipReader(
        glitch::io::CUnZipReader *this,
        glitch::io::IFileSystem *a2,
        char *a3,
        bool a4,
        bool a5)
{
  size_t v8; // r0
  int v9; // r3

  glitch::io::CZipReader::CZipReader(this, nullptr, a4, a5);
  *(_DWORD *)this = off_9747E8;
  *((_DWORD *)this + 8) = a2;
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  v8 = LC_API_STRLEN_0(a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)this + 9,
    a3,
    &a3[v8]);
  v9 = *(char *)(*((_DWORD *)this + 13) - 1);
  if ( v9 != 92 && v9 != 47 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      (_DWORD *)this + 9,
      "/",
      "");
  return this;
}


// ===== 57826c glitch::io::CZipReader::CZipReader(char const*,bool,bool) =====
glitch::io::CZipReader *__fastcall glitch::io::CZipReader::CZipReader(
        glitch::io::CZipReader *this,
        glitch::io *a2,
        bool a3,
        bool a4)
{
  glitch::io::CReadFile *File; // r0
  int *v6; // r0
  unsigned int v7; // r1

  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_974800;
  *((_BYTE *)this + 12) = a3;
  *((_BYTE *)this + 13) = a4;
  File = glitch::io::createReadFile(a2, (const char *)a2);
  *((_DWORD *)this + 2) = File;
  if ( File )
  {
    while ( glitch::io::CZipReader::scanLocalHeader(this) )
      ;
    v6 = *((int **)this + 5);
    v7 = 1749801491 * ((*((_DWORD *)this + 6) - (int)v6) >> 2);
    if ( v7 > 1 )
      glitch::core::heapsort<glitch::io::SZipFileEntry>(v6, v7);
  }
  return this;
}


// ===== 578318 glitch::io::CZipReader::CZipReader(char const*,bool,bool) =====
glitch::io::CZipReader *__fastcall glitch::io::CZipReader::CZipReader(
        glitch::io::CZipReader *this,
        glitch::io *a2,
        bool a3,
        bool a4)
{
  glitch::io::CReadFile *File; // r0
  int *v6; // r0
  unsigned int v7; // r1

  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_974800;
  *((_BYTE *)this + 12) = a3;
  *((_BYTE *)this + 13) = a4;
  File = glitch::io::createReadFile(a2, (const char *)a2);
  *((_DWORD *)this + 2) = File;
  if ( File )
  {
    while ( glitch::io::CZipReader::scanLocalHeader(this) )
      ;
    v6 = *((int **)this + 5);
    v7 = 1749801491 * ((*((_DWORD *)this + 6) - (int)v6) >> 2);
    if ( v7 > 1 )
      glitch::core::heapsort<glitch::io::SZipFileEntry>(v6, v7);
  }
  return this;
}


// ===== 5783c4 glitch::core::binary_search<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>(std::vector<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::io::SZipFileEntry const&) =====
int __fastcall glitch::core::binary_search<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>(
        int *a1,
        int a2)
{
  int v3; // r3
  int v4; // r0
  int v7; // r0
  char *v8; // r7
  unsigned int v9; // r2
  char *v10; // r8
  char *v11; // r6
  unsigned int v12; // r5
  unsigned int v13; // r3
  unsigned int v14; // r8
  unsigned int v15; // r1
  _BOOL4 v16; // r2
  unsigned int v17; // r1
  int v18; // r3

  v3 = a1[1];
  v4 = *a1;
  if ( v4 == v3 )
    return -1;
  v7 = std::priv::__lower_bound<glitch::io::SZipFileEntry const*,glitch::io::SZipFileEntry,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,std::priv::__less_2<glitch::io::SZipFileEntry,glitch::io::SZipFileEntry>,int>(
         v4,
         v3,
         a2);
  if ( v7 == a1[1] )
    return -1;
  v8 = *(char **)(v7 + 44);
  v9 = *(_DWORD *)(v7 + 40) - (_DWORD)v8;
  if ( !v9 )
  {
    v10 = *(char **)(a2 + 40);
    v11 = *(char **)(a2 + 44);
    v12 = v10 - v11;
LABEL_6:
    v13 = v12 > v9;
    goto LABEL_7;
  }
  v10 = *(char **)(a2 + 40);
  v11 = *(char **)(a2 + 44);
  v12 = v10 - v11;
  if ( v10 == v11 )
    goto LABEL_6;
  v17 = *v8 - *v11;
  if ( !v17 )
  {
    v18 = 0;
    while ( ++v18 != v9 && v18 != v12 )
    {
      v17 = v8[v18] - v11[v18];
      if ( v17 )
        goto LABEL_22;
    }
    goto LABEL_6;
  }
LABEL_22:
  v13 = v17 >> 31;
LABEL_7:
  if ( v13 )
    return -1;
  v14 = v10 - v11;
  if ( !v14 || !v9 )
    goto LABEL_12;
  v15 = *v11 - *v8;
  if ( !v15 )
  {
    while ( v14 != ++v13 && v13 != v9 )
    {
      v15 = v11[v13] - v8[v13];
      if ( v15 )
        goto LABEL_25;
    }
LABEL_12:
    v16 = v14 < v9;
    goto LABEL_13;
  }
LABEL_25:
  v16 = v15 >> 31;
LABEL_13:
  if ( v16 )
    return -1;
  return 1749801491 * ((v7 - *a1) >> 2);
}


// ===== 578520 glitch::io::CZipReader::findFile(char const*) =====
int __fastcall glitch::io::CZipReader::findFile(glitch::io::CZipReader *this, char *a2)
{
  size_t v4; // r0
  int v5; // r2
  unsigned int v6; // r3
  char v7; // r1
  _BYTE *v8; // r2
  int v9; // r6
  _BYTE v11[24]; // [sp+0h] [bp-70h] BYREF
  _DWORD v12[4]; // [sp+18h] [bp-58h] BYREF
  int v13; // [sp+28h] [bp-48h]
  int v14; // [sp+2Ch] [bp-44h]

  glitch::io::SZipFileEntry::SZipFileEntry((glitch::io::SZipFileEntry *)v11);
  v4 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v12,
    a2,
    &a2[v4]);
  if ( *((_BYTE *)this + 12) )
  {
    v5 = v14;
    if ( v14 != v13 )
    {
      v6 = 0;
      do
      {
        v7 = *(_BYTE *)(v5 + v6);
        v8 = (_BYTE *)(v5 + v6++);
        if ( (unsigned __int8)(v7 - 65) <= 0x19u )
          v7 += 32;
        *v8 = v7;
        v5 = v14;
      }
      while ( v6 < v13 - v14 );
    }
  }
  if ( *((_BYTE *)this + 13) )
    glitch::io::CZipReader::deletePathFromFilename((int)this, (int)v12);
  v9 = glitch::core::binary_search<glitch::io::SZipFileEntry,glitch::core::SAllocator<glitch::io::SZipFileEntry,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 5,
         (int)v11);
  glitch::io::SZipFileEntry::~SZipFileEntry((glitch::io::SZipFileEntry *)v11);
  return v9;
}


// ===== 578624 glitch::io::CZipReader::openFile(char const*) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CZipReader::openFile(glitch::io::CZipReader *this, char *a2)
{
  int File; // r1

  File = glitch::io::CZipReader::findFile(this, a2);
  if ( File == -1 )
    return nullptr;
  else
    return glitch::io::CZipReader::openFile(this, File);
}


// ===== 578650 `global constructor keyed to'.._source_glitch_io_Utils.cpp =====
void `global constructor keyed to'.._source_glitch_io_Utils.cpp()
{
  dword_9F6814 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6810 = 1056964608;
}


// ===== 578670 glitch::io::fromString(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::video::IVideoDriver *) =====
glitch::IReferenceCounted **__fastcall glitch::io::fromString(glitch::IReferenceCounted **a1, int a2, int a3)
{
  unsigned int v3; // r11
  int v5; // r3
  int v8; // r1
  char *v9; // r0
  char *v10; // r0
  char *v11; // r3
  bool v12; // zf
  unsigned int v13; // r3
  glitch::IReferenceCounted *v14; // r3
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v17; // [sp+8h] [bp-4Ch] BYREF
  char v18[4]; // [sp+14h] [bp-40h] BYREF
  _DWORD v19[5]; // [sp+1Ch] [bp-38h] BYREF
  void *p; // [sp+30h] [bp-24h]
  _DWORD v21[5]; // [sp+34h] [bp-20h] BYREF
  char *v22; // [sp+48h] [bp-Ch]
  int v23; // [sp+4Ch] [bp-8h]

  v5 = _stack_chk_guard;
  *a1 = nullptr;
  v23 = v5;
  if ( a3 )
  {
    v8 = *(_DWORD *)(a2 + 16);
    v9 = *(char **)(a2 + 20);
    if ( (char *)v8 != v9 )
    {
      v18[0] = 59;
      v10 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(v9, v8, v18);
      v11 = *(char **)(a2 + 16);
      v12 = v10 == v11;
      if ( v10 == v11 )
      {
        v3 = 0;
        v13 = -1;
      }
      else
      {
        v13 = *(_DWORD *)(a2 + 20);
      }
      if ( !v12 )
      {
        v13 = (unsigned int)&v10[-v13];
        v3 = v13 + 1;
      }
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v21,
        a2,
        0,
        v13);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v19,
        a2,
        v3,
        0xFFFFFFFF);
      glitch::video::CTextureManager::getTexture(
        (glitch::video::CTextureManager *)&v17,
        *(const char **)(a3 + 224),
        v22);
      v14 = v17;
      if ( v17 )
        ++*((_DWORD *)v17 + 1);
      v15 = *a1;
      *a1 = v14;
      if ( v15 )
        glitch::IReferenceCounted::drop(v15);
      if ( v17 )
        glitch::IReferenceCounted::drop(v17);
      if ( p != v19 && p )
        GlitchFree(p);
      if ( v22 != (char *)v21 && v22 )
        GlitchFree(v22);
    }
  }
  return a1;
}


// ===== 5787cc glitch::io::toString(boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::io::toString(_DWORD *a1, int a2, int a3)
{
  int v6; // r0
  unsigned int v7; // r1
  int v8; // r2
  int *v9; // r3
  int v10; // r3
  char *v11; // r6
  char *v12; // r2
  _DWORD *v13; // r1
  _DWORD *v14; // r3
  bool v15; // zf
  int v16; // r3
  size_t size; // r0

  a1[4] = a1;
  a1[5] = a1;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    0x10u);
  *(_BYTE *)a1[4] = 0;
  if ( *(_DWORD *)a2 && a3 )
  {
    v6 = *(_DWORD *)(a3 + 224);
    v7 = *(unsigned __int16 *)(*(_DWORD *)a2 + 60);
    v8 = *(_DWORD *)(v6 + 24);
    if ( v7 >= (*(_DWORD *)(v6 + 28) - v8) >> 3 )
      v9 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
    else
      v9 = (int *)(v8 + 8 * v7);
    if ( *v9 && (v10 = *(_DWORD *)(v8 + 8 * v7 + 4), v11 = *(char **)(v10 + 44), v11 != *(char **)(v10 + 40)) && v11 )
    {
      v12 = &v11[LC_API_STRLEN_0(*(const char **)(v10 + 44))];
    }
    else
    {
      v11 = "<null>";
      v12 = "";
    }
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1,
      v11,
      v12);
    v14 = (_DWORD *)a1[5];
    v15 = a1 == v14;
    if ( a1 != v14 )
      v13 = (_DWORD *)*a1;
    v16 = a1[4];
    if ( v15 )
      v13 = a1 + 4;
    if ( (char *)v13 - v16 == (char *)&dword_0 + 1 )
    {
      size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
               (int)a1,
               1u);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
        a1,
        size);
      v16 = a1[4];
    }
    *(_BYTE *)(v16 + 1) = 0;
    *(_BYTE *)a1[4]++ = 59;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      a1,
      *(_BYTE **)(*(_DWORD *)a2 + 28),
      *(_BYTE **)(*(_DWORD *)a2 + 24));
  }
  return a1;
}


// ===== 578920 glitch::scene::CBatchMesh::loadSegmentExtraData(void *,glitch::io::IReadFile *,bool) =====
void __fastcall glitch::scene::CBatchMesh::loadSegmentExtraData(
        glitch::scene::CBatchMesh *this,
        void *a2,
        glitch::io::IReadFile *a3,
        bool a4)
{
  ;
}


// ===== 578924 glitch::scene::CBatchMesh::CBatchMesh(void) =====
int __fastcall glitch::scene::CBatchMesh::CBatchMesh(int this)
{
  *(_DWORD *)this = off_974818;
  *(_DWORD *)(this + 108) = -1;
  *(_DWORD *)(this + 112) = 44;
  *(_DWORD *)(this + 120) = 0;
  *(_DWORD *)(this + 88) = -1082130432;
  *(_DWORD *)(this + 100) = 1065353216;
  *(_BYTE *)(this + 116) = 1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = -1082130432;
  *(_DWORD *)(this + 60) = -1082130432;
  *(_DWORD *)(this + 64) = -1082130432;
  *(_DWORD *)(this + 68) = 1065353216;
  *(_DWORD *)(this + 72) = 1065353216;
  *(_DWORD *)(this + 76) = 1065353216;
  *(_DWORD *)(this + 80) = -1082130432;
  *(_DWORD *)(this + 84) = -1082130432;
  *(_DWORD *)(this + 92) = 1065353216;
  *(_DWORD *)(this + 96) = 1065353216;
  *(_DWORD *)(this + 104) = 0;
  return this;
}


// ===== 5789e4 glitch::scene::CBatchMesh::CBatchMesh(void) =====
int __fastcall glitch::scene::CBatchMesh::CBatchMesh(int this)
{
  *(_DWORD *)this = off_974818;
  *(_DWORD *)(this + 108) = -1;
  *(_DWORD *)(this + 112) = 44;
  *(_DWORD *)(this + 120) = 0;
  *(_DWORD *)(this + 88) = -1082130432;
  *(_DWORD *)(this + 100) = 1065353216;
  *(_BYTE *)(this + 116) = 1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = -1082130432;
  *(_DWORD *)(this + 60) = -1082130432;
  *(_DWORD *)(this + 64) = -1082130432;
  *(_DWORD *)(this + 68) = 1065353216;
  *(_DWORD *)(this + 72) = 1065353216;
  *(_DWORD *)(this + 76) = 1065353216;
  *(_DWORD *)(this + 80) = -1082130432;
  *(_DWORD *)(this + 84) = -1082130432;
  *(_DWORD *)(this + 92) = 1065353216;
  *(_DWORD *)(this + 96) = 1065353216;
  *(_DWORD *)(this + 104) = 0;
  return this;
}


// ===== 578aa4 glitch::scene::CBatchMesh::CBatchMesh(uint) =====
int __fastcall glitch::scene::CBatchMesh::CBatchMesh(int this, unsigned int a2)
{
  *(_DWORD *)this = off_974818;
  *(_DWORD *)(this + 112) = a2;
  *(_DWORD *)(this + 120) = 0;
  *(_DWORD *)(this + 88) = -1082130432;
  *(_DWORD *)(this + 100) = 1065353216;
  *(_DWORD *)(this + 108) = -1;
  *(_BYTE *)(this + 116) = 1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = -1082130432;
  *(_DWORD *)(this + 60) = -1082130432;
  *(_DWORD *)(this + 64) = -1082130432;
  *(_DWORD *)(this + 68) = 1065353216;
  *(_DWORD *)(this + 72) = 1065353216;
  *(_DWORD *)(this + 76) = 1065353216;
  *(_DWORD *)(this + 80) = -1082130432;
  *(_DWORD *)(this + 84) = -1082130432;
  *(_DWORD *)(this + 92) = 1065353216;
  *(_DWORD *)(this + 96) = 1065353216;
  *(_DWORD *)(this + 104) = 0;
  return this;
}


// ===== 578b60 glitch::scene::CBatchMesh::CBatchMesh(uint) =====
int __fastcall glitch::scene::CBatchMesh::CBatchMesh(int this, unsigned int a2)
{
  *(_DWORD *)this = off_974818;
  *(_DWORD *)(this + 112) = a2;
  *(_DWORD *)(this + 120) = 0;
  *(_DWORD *)(this + 88) = -1082130432;
  *(_DWORD *)(this + 100) = 1065353216;
  *(_DWORD *)(this + 108) = -1;
  *(_BYTE *)(this + 116) = 1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = -1082130432;
  *(_DWORD *)(this + 60) = -1082130432;
  *(_DWORD *)(this + 64) = -1082130432;
  *(_DWORD *)(this + 68) = 1065353216;
  *(_DWORD *)(this + 72) = 1065353216;
  *(_DWORD *)(this + 76) = 1065353216;
  *(_DWORD *)(this + 80) = -1082130432;
  *(_DWORD *)(this + 84) = -1082130432;
  *(_DWORD *)(this + 92) = 1065353216;
  *(_DWORD *)(this + 96) = 1065353216;
  *(_DWORD *)(this + 104) = 0;
  return this;
}


// ===== 578c1c glitch::scene::CBatchMesh::clone(void) =====
_DWORD *__fastcall glitch::scene::CBatchMesh::clone(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 578c28 glitch::scene::CBatchMesh::getMeshBufferCount(void) =====
int __fastcall glitch::scene::CBatchMesh::getMeshBufferCount(glitch::scene::CBatchMesh *this)
{
  return -858993459 * ((*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 2);
}


// ===== 578c50 glitch::scene::CBatchMesh::getMeshBuffer(uint) =====
_DWORD *__fastcall glitch::scene::CBatchMesh::getMeshBuffer(_DWORD *this, unsigned int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(*(_DWORD *)(a2 + 32) + 20 * a3);
  *this = v3;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  return this;
}


// ===== 578c78 glitch::scene::CBatchMesh::setBoundingBox(glitch::core::aabbox3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CBatchMesh::setBoundingBox(_DWORD *result, _DWORD *a2)
{
  result[27] = glitch::os::Timer::TickCount;
  result[20] = *a2;
  result[21] = a2[1];
  result[22] = a2[2];
  result[23] = a2[3];
  result[24] = a2[4];
  result[25] = a2[5];
  return result;
}


// ===== 578ccc glitch::scene::CBatchMesh::getMaterial(uint) =====
_DWORD *__fastcall glitch::scene::CBatchMesh::getMaterial(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 32) + 20 * a3 + 4);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 578cf4 glitch::scene::CBatchMesh::getMaterialVertexAttributeMap(uint) =====
_DWORD *__fastcall glitch::scene::CBatchMesh::getMaterialVertexAttributeMap(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 32) + 20 * a3 + 8);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 578d1c glitch::scene::CBatchMesh::SBatch::SBatch(void) =====
int __fastcall glitch::scene::CBatchMesh::SBatch::SBatch(int this)
{
  *(_WORD *)(this + 16) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_WORD *)(this + 12) = 0;
  *(_WORD *)(this + 14) = 0;
  return this;
}


// ===== 578d3c glitch::scene::CBatchMesh::SBatch::SBatch(void) =====
int __fastcall glitch::scene::CBatchMesh::SBatch::SBatch(int this)
{
  *(_WORD *)(this + 16) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_WORD *)(this + 12) = 0;
  *(_WORD *)(this + 14) = 0;
  return this;
}


// ===== 578d5c glitch::scene::CBatchMesh::SBatch::SBatch(ushort) =====
int __fastcall glitch::scene::CBatchMesh::SBatch::SBatch(int this, unsigned __int16 a2)
{
  *(_WORD *)(this + 16) = 0;
  *(_WORD *)(this + 14) = a2;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_WORD *)(this + 12) = a2;
  return this;
}


// ===== 578d7c glitch::scene::CBatchMesh::SBatch::SBatch(ushort) =====
int __fastcall glitch::scene::CBatchMesh::SBatch::SBatch(int this, unsigned __int16 a2)
{
  *(_WORD *)(this + 16) = 0;
  *(_WORD *)(this + 14) = a2;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_WORD *)(this + 12) = a2;
  return this;
}


// ===== 578d9c glitch::scene::getNbVertexAttributeMapsDataSize(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
int __fastcall glitch::scene::getNbVertexAttributeMapsDataSize(int a1)
{
  int v1; // r3
  int result; // r0
  int v3; // r1
  int v4; // r3
  int v5; // r12
  __int16 v6; // r2

  v1 = *(_DWORD *)(*(_DWORD *)a1 + 4);
  result = *(unsigned __int8 *)(v1 + 16);
  if ( *(_BYTE *)(v1 + 16) )
  {
    v3 = *(_DWORD *)(v1 + 24);
    v4 = 0;
    v5 = 12 * (unsigned __int8)(result - 1) + 12;
    LOWORD(result) = 0;
    do
    {
      v6 = *(unsigned __int8 *)(v3 + v4 + 4);
      v4 += 12;
      result = (unsigned __int16)(result + v6);
    }
    while ( v4 != v5 );
  }
  return result;
}


// ===== 578dec glitch::os::byteswap<float>(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::os::byteswap<float>(_DWORD *result, _BYTE *a2)
{
  int v2; // r7
  int v3; // r12
  int v4; // [sp+4h] [bp-4h]

  LOBYTE(v4) = a2[3];
  BYTE1(v4) = a2[2];
  BYTE2(v4) = a2[1];
  HIBYTE(v4) = *a2;
  v2 = v4;
  LOBYTE(v4) = a2[7];
  BYTE1(v4) = a2[6];
  BYTE2(v4) = a2[5];
  HIBYTE(v4) = a2[4];
  v3 = v4;
  LOBYTE(v4) = a2[11];
  BYTE1(v4) = a2[10];
  BYTE2(v4) = a2[9];
  HIBYTE(v4) = a2[8];
  *result = v2;
  result[1] = v3;
  result[2] = v4;
  return result;
}


// ===== 578e80 glitch::os::byteswap<float>(glitch::core::aabbox3d<float> const&) =====
_DWORD *__fastcall glitch::os::byteswap<float>(_DWORD *a1, _BYTE *a2)
{
  int v4; // r12
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r5
  _DWORD v10[3]; // [sp+0h] [bp-1Ch] BYREF
  _DWORD v11[4]; // [sp+Ch] [bp-10h] BYREF

  glitch::os::byteswap<float>(v11, a2);
  glitch::os::byteswap<float>(v10, a2 + 12);
  v4 = v11[1];
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  v8 = v11[0];
  a1[2] = v11[2];
  a1[1] = v4;
  *a1 = v8;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return a1;
}


// ===== 578ee0 glitch::scene::CBatchMesh::SSegment::save(glitch::io::IWriteFile *,bool) =====
int __fastcall glitch::scene::CBatchMesh::SSegment::save(
        glitch::scene::CBatchMesh::SSegment *this,
        glitch::io::IWriteFile *a2,
        int a3)
{
  int v6; // r3
  char v7; // r2
  char v8; // r1
  char v9; // r3
  int v10; // r3
  char v11; // r2
  char v12; // r1
  char v13; // r3
  int v14; // r3
  char v15; // r2
  char v16; // r1
  char v17; // r3
  int v18; // r3
  int v19; // r3
  char v20; // r3
  char v21; // r3
  char v22; // r3
  char v23; // r3
  _DWORD v24[6]; // [sp+0h] [bp-2Ch] BYREF
  int v25; // [sp+18h] [bp-14h]
  int v26; // [sp+1Ch] [bp-10h] BYREF
  __int16 v27; // [sp+22h] [bp-Ah] BYREF
  __int16 v28; // [sp+24h] [bp-8h] BYREF
  char v29; // [sp+27h] [bp-5h] BYREF

  if ( a3 )
  {
    v6 = *((_DWORD *)this + 1);
    LOBYTE(v25) = HIBYTE(v6);
    BYTE1(v25) = BYTE2(v6);
    BYTE2(v25) = BYTE1(v6);
    HIBYTE(v25) = v6;
    v26 = v25;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(*(_DWORD *)a2 + 12))(a2, &v26, 4);
    glitch::os::byteswap<float>(v24, *((_BYTE **)this + 3));
    (*(void (__fastcall **)(glitch::io::IWriteFile *, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v24, 24);
    v7 = *((_BYTE *)this + 17);
    v8 = *((_BYTE *)this + 18);
    v9 = *((_BYTE *)this + 16);
    LOBYTE(v25) = *((_BYTE *)this + 19);
    BYTE1(v25) = v8;
    BYTE2(v25) = v7;
    HIBYTE(v25) = v9;
    v10 = *(_DWORD *)a2;
    v26 = v25;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(v10 + 12))(a2, &v26, 4);
    v11 = *((_BYTE *)this + 21);
    v12 = *((_BYTE *)this + 22);
    v13 = *((_BYTE *)this + 20);
    LOBYTE(v25) = *((_BYTE *)this + 23);
    BYTE1(v25) = v12;
    BYTE2(v25) = v11;
    HIBYTE(v25) = v13;
    v14 = *(_DWORD *)a2;
    v26 = v25;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(v14 + 12))(a2, &v26, 4);
    v15 = *((_BYTE *)this + 25);
    v16 = *((_BYTE *)this + 26);
    v17 = *((_BYTE *)this + 24);
    LOBYTE(v25) = *((_BYTE *)this + 27);
    BYTE1(v25) = v16;
    BYTE2(v25) = v15;
    HIBYTE(v25) = v17;
    v18 = *(_DWORD *)a2;
    v26 = v25;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, int *, int))(v18 + 12))(a2, &v26, 4);
    v19 = *(_DWORD *)a2;
    v29 = *((_BYTE *)this + 32);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(v19 + 12))(a2, &v29, 1);
    v20 = *((_BYTE *)this + 34);
    LOBYTE(v25) = *((_BYTE *)this + 35);
    BYTE1(v25) = v20;
    v28 = v25;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(*(_DWORD *)a2 + 12))(a2, &v28, 2);
    v21 = *((_BYTE *)this + 36);
    LOBYTE(v25) = *((_BYTE *)this + 37);
    BYTE1(v25) = v21;
    v27 = v25;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(*(_DWORD *)a2 + 12))(a2, &v27, 2);
    v22 = *((_BYTE *)this + 38);
    LOBYTE(v25) = *((_BYTE *)this + 39);
    BYTE1(v25) = v22;
    v27 = v25;
    (*(void (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(*(_DWORD *)a2 + 12))(a2, &v27, 2);
    v23 = *((_BYTE *)this + 41);
    BYTE1(v25) = *((_BYTE *)this + 40);
    LOBYTE(v25) = v23;
    v27 = v25;
    return (*(int (__fastcall **)(glitch::io::IWriteFile *, __int16 *, int))(*(_DWORD *)a2 + 12))(a2, &v27, 2);
  }
  else
  {
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 4, 4);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, _DWORD, int))(*(_DWORD *)a2 + 12))(a2, *((_DWORD *)this + 3), 24);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 16, 4);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 20, 4);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 24, 4);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 32, 1);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 34, 2);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 36, 2);
    (*(void (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 38, 2);
    return (*(int (__fastcall **)(glitch::io::IWriteFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 40, 2);
  }
}


// ===== 579210 std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::core::aabbox3d<float>*,uint,glitch::core::aabbox3d<float> const&,std::__false_type const&) =====
int __fastcall std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3,
        char *a4)
{
  _DWORD *v5; // r5
  char *v6; // r6
  int result; // r0
  int v8; // r1
  int v9; // r4
  char *v10; // r2
  int v11; // r7
  char *v12; // r7
  char *v13; // r1
  char *i; // r0
  int v15; // r8
  int v16; // r1
  int v17; // r4
  char *v18; // r4
  int v19; // r2
  int v20; // r0
  _DWORD *v21; // r2
  int v22; // r6

  v5 = a2;
  if ( (unsigned int)a4 >= *a1 )
  {
    v6 = (char *)a1[1];
    if ( a4 < v6 )
      return std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(a1);
  }
  else
  {
    v6 = (char *)a1[1];
  }
  v8 = -1431655765 * ((v6 - (char *)a2) >> 3);
  if ( a3 >= v8 )
  {
    v18 = &v6[24 * (a3 - v8)];
    result = (int)(24 * (a3 - v8)) >> 3;
    v19 = -1431655765 * result;
    if ( -1431655765 * result > 0 )
    {
      while ( 1 )
      {
        --v19;
        *(_DWORD *)v6 = *(_DWORD *)a4;
        *((_DWORD *)v6 + 1) = *((_DWORD *)a4 + 1);
        *((_DWORD *)v6 + 2) = *((_DWORD *)a4 + 2);
        *((_DWORD *)v6 + 3) = *((_DWORD *)a4 + 3);
        *((_DWORD *)v6 + 4) = *((_DWORD *)a4 + 4);
        result = *((_DWORD *)a4 + 5);
        *((_DWORD *)v6 + 5) = result;
        if ( !v19 )
          break;
        v6 += 24;
      }
    }
    a1[1] = v18;
    if ( v8 <= 0 )
    {
      a1[1] = &v18[24 * v8];
    }
    else
    {
      v20 = v8;
      v21 = v5;
      while ( 1 )
      {
        --v20;
        *(_DWORD *)v18 = *v21;
        *((_DWORD *)v18 + 1) = v21[1];
        *((_DWORD *)v18 + 2) = v21[2];
        *((_DWORD *)v18 + 3) = v21[3];
        *((_DWORD *)v18 + 4) = v21[4];
        v22 = v21[5];
        v21 += 6;
        *((_DWORD *)v18 + 5) = v22;
        if ( !v20 )
          break;
        v18 += 24;
      }
      result = 24;
      a1[1] += 24 * v8;
      do
      {
        --v8;
        *v5 = *(_DWORD *)a4;
        v5[1] = *((_DWORD *)a4 + 1);
        v5[2] = *((_DWORD *)a4 + 2);
        v5[3] = *((_DWORD *)a4 + 3);
        v5[4] = *((_DWORD *)a4 + 4);
        v5[5] = *((_DWORD *)a4 + 5);
        v5 += 6;
      }
      while ( v8 );
    }
  }
  else
  {
    v9 = 24 * a3;
    v10 = &v6[-24 * a3];
    v11 = -1431655765 * (v9 >> 3);
    if ( v11 > 0 )
    {
      v13 = &v6[-v9];
      for ( i = v6; ; i += 24 )
      {
        --v11;
        *(_DWORD *)i = *(_DWORD *)v13;
        *((_DWORD *)i + 1) = *((_DWORD *)v13 + 1);
        *((_DWORD *)i + 2) = *((_DWORD *)v13 + 2);
        *((_DWORD *)i + 3) = *((_DWORD *)v13 + 3);
        *((_DWORD *)i + 4) = *((_DWORD *)v13 + 4);
        v15 = *((_DWORD *)v13 + 5);
        v13 += 24;
        *((_DWORD *)i + 5) = v15;
        if ( !v11 )
          break;
      }
      v12 = (char *)a1[1];
    }
    else
    {
      v12 = v6;
    }
    result = (v10 - (char *)v5) >> 3;
    a1[1] = &v12[v9];
    v16 = -1431655765 * result;
    if ( -1431655765 * result > 0 )
    {
      do
      {
        --v16;
        *((_DWORD *)v6 - 6) = *((_DWORD *)v10 - 6);
        *((_DWORD *)v6 - 5) = *((_DWORD *)v10 - 5);
        *((_DWORD *)v6 - 4) = *((_DWORD *)v10 - 4);
        *((_DWORD *)v6 - 3) = *((_DWORD *)v10 - 3);
        *((_DWORD *)v6 - 2) = *((_DWORD *)v10 - 2);
        result = *((_DWORD *)v10 - 1);
        v10 -= 24;
        *((_DWORD *)v6 - 1) = result;
        v6 -= 24;
      }
      while ( v16 );
    }
    v17 = -1431655765 * (v9 >> 3);
    if ( v17 > 0 )
    {
      do
      {
        --v17;
        *v5 = *(_DWORD *)a4;
        v5[1] = *((_DWORD *)a4 + 1);
        v5[2] = *((_DWORD *)a4 + 2);
        v5[3] = *((_DWORD *)a4 + 3);
        v5[4] = *((_DWORD *)a4 + 4);
        v5[5] = *((_DWORD *)a4 + 5);
        v5 += 6;
      }
      while ( v17 );
    }
  }
  return result;
}


// ===== 579520 std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::CBatchMesh::SSegmentInfo*,uint,glitch::scene::CBatchMesh::SSegmentInfo const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *result,
        int a2,
        unsigned int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r12
  unsigned int v7; // r6
  int v8; // r2
  int v9; // r7
  int v10; // r4
  unsigned int v11; // r2
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r8
  int v15; // r1
  int v16; // r0
  int v17; // r1
  int v18; // r4
  int j; // r2
  _DWORD *v20; // r1
  unsigned int v21; // r4
  int v22; // r10
  unsigned int v23; // r4
  int i; // r1
  bool v25; // cc
  int v26; // r6
  int v27; // r1
  int v28; // r0
  _DWORD *v29; // r1

  v4 = result;
  if ( (unsigned int)a4 >= *result )
  {
    v7 = result[1];
    if ( (unsigned int)a4 < v7 )
      return (_DWORD *)std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
  }
  else
  {
    v7 = result[1];
  }
  v8 = (int)(v7 - a2) >> 3;
  v9 = v8;
  if ( a3 >= v8 )
  {
    v21 = a3 - v8;
    v22 = (int)(8 * v21) >> 3;
    v23 = v7 + 8 * v21;
    if ( v22 > 0 )
    {
      for ( i = 0; i != v22; ++i )
      {
        result = (_DWORD *)(v7 + 8 * i);
        *result = *a4;
        result[1] = a4[1];
      }
    }
    v25 = v8 <= 0;
    if ( v8 <= 0 )
      v8 = v23 + 8 * v8;
    v4[1] = v23;
    if ( v25 )
    {
      v4[1] = v8;
    }
    else
    {
      v26 = 0;
      do
      {
        --v8;
        *(_DWORD *)(v23 + v26) = *(_DWORD *)(a2 + v26);
        v27 = v23 + v26;
        v28 = *(_DWORD *)(a2 + v26 + 4);
        v26 += 8;
        *(_DWORD *)(v27 + 4) = v28;
      }
      while ( v8 );
      v4[1] += 8 * v9;
      do
      {
        v29 = (_DWORD *)(a2 + 8 * v8);
        *v29 = *a4;
        result = (_DWORD *)a4[1];
        ++v8;
        v29[1] = result;
      }
      while ( v9 != v8 );
    }
  }
  else
  {
    v10 = 8 * a3;
    v11 = v7 - v10;
    v12 = v10 >> 3;
    if ( v10 >> 3 > 0 )
    {
      v14 = 0;
      do
      {
        --v12;
        *(_DWORD *)(v7 + v14) = *(_DWORD *)(v11 + v14);
        v15 = v7 + v14;
        v16 = *(_DWORD *)(v11 + v14 + 4);
        v14 += 8;
        *(_DWORD *)(v15 + 4) = v16;
      }
      while ( v12 );
      v13 = v4[1];
    }
    else
    {
      v13 = v7;
    }
    v17 = (int)(v11 - a2) >> 3;
    result = (_DWORD *)(v13 + v10);
    v4[1] = result;
    if ( v17 > 0 )
    {
      do
      {
        --v17;
        *(_DWORD *)(v7 - 8) = *(_DWORD *)(v11 - 8);
        result = *(_DWORD **)(v11 - 4);
        v11 -= 8;
        *(_DWORD *)(v7 - 4) = result;
        v7 -= 8;
      }
      while ( v17 );
    }
    v18 = v10 >> 3;
    if ( v18 > 0 )
    {
      for ( j = 0; j != v18; ++j )
      {
        v20 = (_DWORD *)(a2 + 8 * j);
        *v20 = *a4;
        result = (_DWORD *)a4[1];
        v20[1] = result;
      }
    }
  }
  return result;
}


// ===== 5796e0 std::priv::__ufill<glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch,int>(glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch const&,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ufill<glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch,int>(
        int result,
        int a2,
        int *a3)
{
  int v3; // r3
  int v4; // r1
  _DWORD *v5; // r1
  _DWORD *v6; // r1

  v3 = -858993459 * ((a2 - result) >> 2);
  if ( v3 > 0 )
  {
    while ( 1 )
    {
      v4 = *a3;
      *(_DWORD *)result = *a3;
      if ( v4 )
        ++*(_DWORD *)(v4 + 4);
      v5 = (_DWORD *)a3[1];
      *(_DWORD *)(result + 4) = v5;
      if ( v5 )
        ++*v5;
      v6 = (_DWORD *)a3[2];
      *(_DWORD *)(result + 8) = v6;
      if ( v6 )
        ++*v6;
      --v3;
      *(_WORD *)(result + 12) = *((_WORD *)a3 + 6);
      *(_WORD *)(result + 14) = *((_WORD *)a3 + 7);
      *(_WORD *)(result + 16) = *((_WORD *)a3 + 8);
      if ( !v3 )
        break;
      result += 20;
    }
  }
  return result;
}


// ===== 579774 std::priv::__ucopy<glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch *,int>(glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch *,int>(
        int *a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v5; // r4
  int v6; // r1
  int v7; // r12
  _DWORD *v8; // r12
  _DWORD *v9; // r12

  v3 = -858993459 * ((a2 - (int)a1) >> 2);
  if ( v3 <= 0 )
    return a3;
  v5 = -858993459 * ((a2 - (int)a1) >> 2);
  v6 = a3;
  while ( 1 )
  {
    v7 = *a1;
    *(_DWORD *)v6 = *a1;
    if ( v7 )
      ++*(_DWORD *)(v7 + 4);
    v8 = (_DWORD *)a1[1];
    *(_DWORD *)(v6 + 4) = v8;
    if ( v8 )
      ++*v8;
    v9 = (_DWORD *)a1[2];
    *(_DWORD *)(v6 + 8) = v9;
    if ( v9 )
      ++*v9;
    --v5;
    *(_WORD *)(v6 + 12) = *((_WORD *)a1 + 6);
    *(_WORD *)(v6 + 14) = *((_WORD *)a1 + 7);
    *(_WORD *)(v6 + 16) = *((_WORD *)a1 + 8);
    v6 += 20;
    if ( !v5 )
      break;
    a1 += 5;
  }
  return a3 + 20 * v3;
}


// ===== 57982c `global constructor keyed to'.._source_glitch_scene_CBatchMesh.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CBatchMesh.cpp()
{
  dword_9F6820 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F681C = 1056964608;
}


// ===== 57984c std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 3;
  if ( 0x1FFFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x1FFFFFFF || result < v2 )
    return 0x1FFFFFFF;
  return result;
}


// ===== 5798ac std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
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


// ===== 57990c std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = -1431655765 * ((a1[1] - *a1) >> 3);
  if ( 178956970 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0xAAAAAAA || result < v3 )
    return 178956970;
  return result;
}


// ===== 57998c std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegmentInfo*>(uint &,glitch::scene::CBatchMesh::SSegmentInfo*,glitch::scene::CBatchMesh::SSegmentInfo*) =====
char *__fastcall std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegmentInfo*>(
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
  result = (char *)GlitchAlloc(8 * *a2, 0);
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


// ===== 5799e4 std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SBatch*>(uint &,glitch::scene::CBatchMesh::SBatch*,glitch::scene::CBatchMesh::SBatch*) =====
void *__fastcall std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SBatch*>(
        int a1,
        _DWORD *a2,
        int *a3,
        int a4)
{
  void *v6; // r4

  v6 = GlitchAlloc(20 * *a2, 0);
  std::priv::__ucopy<glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch *,int>(a3, a4, (int)v6);
  return v6;
}


// ===== 579a34 boost::pool<glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::ordered_malloc_need_resize(void) =====
_DWORD *__fastcall boost::pool<glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::ordered_malloc_need_resize(
        int a1)
{
  unsigned int v1; // r5
  unsigned int v3; // r4
  unsigned int v4; // r0
  unsigned int v5; // r3
  unsigned int v6; // r7
  int v7; // r10
  int v8; // r8
  char *v9; // r5
  unsigned int v10; // r0
  char *v11; // r12
  int v12; // r7
  char *v13; // r2
  _DWORD *v14; // r0
  char *v15; // r3
  char *v16; // r1
  unsigned int v17; // r3
  int *v18; // r2
  unsigned int v19; // r3
  char **i; // r1
  int v21; // r12
  char *v22; // r4
  _DWORD *result; // r0
  char *v24; // r1

  v1 = *(_DWORD *)(a1 + 12);
  v3 = 4;
  v4 = v1;
  do
  {
    v5 = v3;
    v3 = v4 % v3;
    v4 = v5;
  }
  while ( v3 );
  v6 = 4 * (v1 / v5);
  v7 = *(_DWORD *)(a1 + 16) * v6;
  v8 = v7 + 8;
  v9 = (char *)GlitchAlloc(v7 + 8, 0);
  if ( !v9 )
    return nullptr;
  *(_DWORD *)(a1 + 16) *= 2;
  v10 = v6 * ((v7 - v6) / v6);
  v11 = &v9[v10];
  *(_DWORD *)&v9[v10] = *(_DWORD *)a1;
  if ( v9 != &v9[v10] )
  {
    v12 = -v6;
    v13 = &v11[v12];
    if ( v9 == &v11[v12] )
    {
      v14 = v9;
    }
    else
    {
      v15 = &v13[v12];
      v16 = &v13[v12];
      while ( 1 )
      {
        v16 += v12;
        *(_DWORD *)v13 = v11;
        v14 = v15;
        if ( v9 == &v16[-v12] )
          break;
        v11 = v13;
        v13 = v15;
        v15 += v12;
      }
      v11 = v13;
    }
    *v14 = v11;
  }
  v17 = *(_DWORD *)(a1 + 4);
  *(_DWORD *)a1 = v9;
  if ( v17 && (unsigned int)v9 >= v17 )
  {
    v18 = (int *)(v17 + *(_DWORD *)(a1 + 8) - 4);
    v19 = *(v18 - 1);
    for ( i = (char **)(v18 - 1); v19 && v19 <= (unsigned int)v9; i = (char **)(v18 - 1) )
    {
      v18 = (int *)(v19 + *v18 - 4);
      v19 = *(v18 - 1);
    }
    v21 = *v18;
    v22 = &v9[v7 + 4];
    *((_DWORD *)v22 - 1) = v19;
    *(_DWORD *)v22 = v21;
    *i = v9;
    *v18 = v8;
    result = *(_DWORD **)a1;
    *(_DWORD *)a1 = **(_DWORD **)a1;
  }
  else
  {
    v24 = &v9[v7 + 4];
    *((_DWORD *)v24 - 1) = v17;
    *(_DWORD *)v24 = *(_DWORD *)(a1 + 8);
    result = *(_DWORD **)a1;
    *(_DWORD *)(a1 + 4) = v9;
    *(_DWORD *)(a1 + 8) = v8;
    *(_DWORD *)a1 = *result;
  }
  return result;
}


// ===== 579bc8 std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CBatchMesh::SSegmentInfo*,glitch::scene::CBatchMesh::SSegmentInfo const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        unsigned __int8 a6)
{
  int v9; // r10
  size_t v10; // r8
  _DWORD *v11; // r0
  char *v12; // r12
  _DWORD *v13; // r9
  int v14; // lr
  _DWORD *v15; // lr
  int v16; // r1
  int v17; // r0
  _DWORD *v18; // r3
  int v19; // r2
  int v20; // r0
  _DWORD *v21; // r5
  int i; // r3
  _DWORD *v23; // r2
  char *v24; // r0
  int v25; // r12
  int v26; // r1
  char *v27; // r3
  int v28; // r2
  _DWORD *v29; // r8

  v9 = a6;
  v10 = 2
      * std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
          a1,
          a5);
  v11 = GlitchAlloc(v10 * 4, 0);
  v12 = (char *)*a1;
  v13 = v11;
  v14 = (a2 - *a1) >> 3;
  if ( v14 > 0 )
  {
    v16 = (a2 - *a1) >> 3;
    v17 = 0;
    do
    {
      --v16;
      v13[v17] = *(_DWORD *)&v12[v17 * 4];
      v18 = &v13[v17];
      v19 = *(_DWORD *)&v12[v17 * 4 + 4];
      v17 += 2;
      v18[1] = v19;
    }
    while ( v16 );
    v15 = &v13[2 * v14];
  }
  else
  {
    v15 = v11;
  }
  if ( a5 == 1 )
  {
    v21 = v15 + 2;
    *v15 = *a3;
    v15[1] = a3[1];
  }
  else
  {
    v20 = (int)(8 * a5) >> 3;
    v21 = &v15[2 * a5];
    if ( v20 > 0 )
    {
      for ( i = 0; i != v20; ++i )
      {
        v23 = &v15[2 * i];
        *v23 = *a3;
        v23[1] = a3[1];
      }
    }
  }
  if ( a6 )
  {
    v24 = (char *)a1[1];
  }
  else
  {
    v24 = (char *)a1[1];
    v25 = (int)&v24[-a2] >> 3;
    if ( v25 > 0 )
    {
      v26 = (int)&v24[-a2] >> 3;
      do
      {
        --v26;
        *(_DWORD *)((char *)v21 + v9) = *(_DWORD *)(a2 + v9);
        v27 = (char *)v21 + v9;
        v28 = *(_DWORD *)(a2 + v9 + 4);
        v9 += 8;
        *((_DWORD *)v27 + 1) = v28;
      }
      while ( v26 );
      v24 = (char *)a1[1];
      v21 += 2 * v25;
    }
  }
  v29 = &v13[v10];
  if ( (char *)*a1 != v24 )
    v24 += 8 * ~((unsigned int)&v24[-*a1 - 8] >> 3);
  GlitchFree(v24);
  a1[1] = v21;
  a1[2] = v29;
  *a1 = v13;
}


// ===== 579d14 std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CBatchMesh::SSegmentInfo*,uint,glitch::scene::CBatchMesh::SSegmentInfo const&) =====
void __fastcall std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        int a2,
        unsigned int a3,
        _DWORD *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (a1[2] - a1[1]) >> 3 )
      std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 579d68 std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::CBatchMesh::SSegmentInfo const&) =====
void __fastcall std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if ( a2 >= v5 )
  {
    std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *a1 + 8 * a2;
    if ( v6 != v3 )
      a1[1] = v6;
  }
}


// ===== 579dac std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
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
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = a1[1];
    v6 = (v5 - v3) >> 3;
    if ( v3 )
    {
      v7 = std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegmentInfo*>(
             (int)a1,
             &v10,
             v3,
             v5);
      v8 = (char *)a1[1];
      if ( v8 != (char *)*a1 )
        v8 += 8 * ~((unsigned int)&v8[-*a1 - 8] >> 3);
      GlitchFree(v8);
    }
    else
    {
      v7 = GlitchAlloc(8 * v10, 0);
    }
    v9 = v10;
    a1[1] = (int)v7 + 8 * v6;
    a1[2] = (int)v7 + 8 * v9;
    *a1 = (int)v7;
  }
}


// ===== 579e6c std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<uchar *>(uint &,uchar *,uchar *) =====
void *__fastcall std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<unsigned char *>(
        int a1,
        size_t *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = GlitchAlloc(*a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 579ea4 std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int a1,
        size_t a2)
{
  _BYTE *v2; // r2
  unsigned int v4; // r3
  _BYTE *v5; // r3
  int v6; // r5
  char *v7; // r6
  size_t v8; // r3
  size_t v9; // [sp+4h] [bp-4h] BYREF

  v2 = *(_BYTE **)a1;
  v4 = *(_DWORD *)(a1 + 8) - *(_DWORD *)a1;
  v9 = a2;
  if ( a2 > v4 )
  {
    v5 = *(_BYTE **)(a1 + 4);
    v6 = v5 - v2;
    if ( v2 )
    {
      v7 = (char *)std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<unsigned char *>(
                     a1,
                     &v9,
                     v2,
                     v5);
      GlitchFree(*(void **)a1);
    }
    else
    {
      v7 = (char *)GlitchAlloc(a2, 0);
    }
    v8 = v9;
    *(_DWORD *)(a1 + 4) = &v7[v6];
    *(_DWORD *)(a1 + 8) = &v7[v8];
    *(_DWORD *)a1 = v7;
  }
}


// ===== 579f20 std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::_M_fill_insert_aux(uint *,uint,uint const&,std::__false_type const&) =====
char *__fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_fill_insert_aux(
        char *result,
        char *a2,
        unsigned int a3,
        char *a4)
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
      return (char *)std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_fill_insert_aux(result);
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


// ===== 57a068 std::vector<glitch::scene::CBatchMesh::SSegment *,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegment **>(uint &,glitch::scene::CBatchMesh::SSegment **,glitch::scene::CBatchMesh::SSegment **) =====
void *__fastcall std::vector<glitch::scene::CBatchMesh::SSegment *,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegment **>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r5

  v6 = GlitchAlloc(4 * *a2, 0);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 57a0a4 std::vector<glitch::scene::CBatchMesh::SSegment *,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::scene::CBatchMesh::SSegment *,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
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
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *(_BYTE **)a1;
    }
    v5 = *(_BYTE **)(a1 + 4);
    v6 = (v5 - v3) >> 2;
    if ( v3 )
    {
      v7 = (char *)std::vector<glitch::scene::CBatchMesh::SSegment *,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegment **>(
                     a1,
                     &v9,
                     v3,
                     v5);
      GlitchFree(*(void **)a1);
    }
    else
    {
      v7 = (char *)GlitchAlloc(4 * v9, 0);
    }
    v8 = v9;
    *(_DWORD *)(a1 + 4) = &v7[4 * v6];
    *(_DWORD *)(a1 + 8) = &v7[4 * v8];
    *(_DWORD *)a1 = v7;
  }
}


// ===== 57a14c std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(uchar *,uint,uchar const&,std::__false_type const&) =====
void *__fastcall std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        char *a2,
        size_t a3,
        char *a4)
{
  char *v8; // r5
  int v10; // r10
  char *v11; // r3
  char *v12; // r10
  char *v13; // r0
  int v14; // r3

  if ( (unsigned int)a4 >= *a1 )
  {
    v8 = (char *)a1[1];
    if ( a4 < v8 )
      return (void *)std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(a1);
  }
  else
  {
    v8 = (char *)a1[1];
  }
  v10 = v8 - a2;
  if ( a3 >= v8 - a2 )
  {
    v13 = &a2[a3];
    if ( (int)(a3 - v10) > 0 )
    {
      v14 = 0;
      do
        v8[v14++] = *a4;
      while ( v14 != a3 - v10 );
    }
    a1[1] = v13;
    if ( a2 != v8 )
    {
      memcpy(v13, a2, v8 - a2);
      v13 = (char *)a1[1];
    }
    a1[1] = &v13[v10];
    return LC_API_MEMSET_0(a2, (unsigned __int8)*a4, v8 - a2);
  }
  else
  {
    v11 = &v8[-a3];
    if ( &v8[-a3] == v8 )
    {
      v12 = v8;
    }
    else
    {
      v12 = &v8[-a3];
      memcpy(v8, &v8[-a3], a3);
      v11 = (char *)a1[1];
    }
    a1[1] = &v11[a3];
    if ( v12 - a2 > 0 )
      memmove(&v8[-(v12 - a2)], a2, v12 - a2);
    return LC_API_MEMSET_0(a2, (unsigned __int8)*a4, a3);
  }
}


// ===== 57a26c boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr() =====
glitch::video::CMaterialVertexAttributeMap **__fastcall boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(
        glitch::video::CMaterialVertexAttributeMap **a1)
{
  glitch::video::CMaterialVertexAttributeMap *v1; // r4

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v1);
      LC_API_FREE_0(v1);
    }
  }
  return a1;
}


// ===== 57a2ac glitch::scene::CBatchMesh::setMaterial(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
glitch::video::CMaterialVertexAttributeMap **__fastcall glitch::scene::CBatchMesh::setMaterial(
        int a1,
        unsigned int a2,
        glitch::video::CMaterial **a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  int v5; // r12
  glitch::video::CMaterialVertexAttributeMap **result; // r0
  glitch::video::CMaterial *v8; // r3
  int v9; // r6
  glitch::video::CMaterialVertexAttributeMap **v10; // r2
  int v11; // r2
  glitch::video::CMaterialVertexAttributeMap *v12; // r3
  int v13; // r1
  int v14; // r6
  glitch::video::CMaterialVertexAttributeMap *v15; // [sp+0h] [bp-8h] BYREF
  glitch::video::CMaterial *v16; // [sp+4h] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 36);
  result = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 32);
  if ( a2 < -858993459 * ((v5 - (int)result) >> 2) )
  {
    v8 = *a3;
    v9 = 5 * a2;
    v16 = v8;
    if ( v8 )
      a2 = *(_DWORD *)v8;
    v10 = &result[v9];
    if ( v8 )
    {
      *(_DWORD *)v8 = a2 + 1;
      v8 = v16;
    }
    v16 = v10[1];
    v10[1] = v8;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
    v12 = *a4;
    v13 = *(_DWORD *)(a1 + 32);
    v15 = v12;
    if ( v12 )
      v11 = *(_DWORD *)v12;
    v14 = v13 + v9 * 4;
    if ( v12 )
    {
      *(_DWORD *)v12 = v11 + 1;
      v12 = v15;
    }
    v15 = *(glitch::video::CMaterialVertexAttributeMap **)(v14 + 8);
    *(_DWORD *)(v14 + 8) = v12;
    return boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v15);
  }
  return result;
}


// ===== 57a368 glitch::scene::CBatchMesh::SBatch::~SBatch() =====
void __fastcall glitch::scene::CBatchMesh::SBatch::~SBatch(glitch::video::CMaterialVertexAttributeMap **this)
{
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 1);
  if ( *this )
    glitch::IReferenceCounted::drop(*this);
}


// ===== 57a398 std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int **a1,
        unsigned int a2)
{
  int *v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  int *v7; // r0
  glitch::video::CMaterialVertexAttributeMap **v8; // r6
  int *v9; // r7
  int *v10; // r8
  int *v11; // r3
  unsigned int v12; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = a1[2] - *a1;
  v12 = a2;
  if ( a2 > -858993459 * v4 )
  {
    if ( a2 > 0xCCCCCCC )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = (int)a1[1];
    v6 = -858993459 * ((v5 - (int)v3) >> 2);
    if ( v3 )
    {
      v7 = (int *)std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::scene::CBatchMesh::SBatch*>(
                    (int)a1,
                    &v12,
                    v3,
                    v5);
      v8 = (glitch::video::CMaterialVertexAttributeMap **)a1[1];
      v9 = *a1;
      v10 = v7;
      if ( v8 != (glitch::video::CMaterialVertexAttributeMap **)*a1 )
      {
        do
        {
          v8 -= 5;
          glitch::scene::CBatchMesh::SBatch::~SBatch(v8);
        }
        while ( v9 != (int *)v8 );
        v8 = (glitch::video::CMaterialVertexAttributeMap **)*a1;
      }
      GlitchFree(v8);
    }
    else
    {
      v10 = (int *)GlitchAlloc(20 * v12, 0);
    }
    v11 = &v10[5 * v12];
    a1[1] = &v10[5 * v6];
    a1[2] = v11;
    *a1 = v10;
  }
}


// ===== 57a4a8 glitch::scene::CBatchMesh::strip(void) =====
void __fastcall glitch::scene::CBatchMesh::strip(glitch::scene::CBatchMesh *this)
{
  int v1; // r3
  int v3; // r2
  int v4; // r3
  unsigned int v5; // r1
  int v6; // r3
  size_t v7; // r1

  v1 = *((_DWORD *)this + 8);
  v3 = (*((_DWORD *)this + 9) - v1) >> 2;
  if ( -858993459 * v3 != -858993459 * ((*((_DWORD *)this + 10) - v1) >> 2) )
    std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (int **)this + 8,
      -858993459 * v3);
  v4 = *((_DWORD *)this + 5);
  v5 = (*((_DWORD *)this + 6) - v4) >> 3;
  if ( v5 != (*((_DWORD *)this + 7) - v4) >> 3 )
    std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (int *)this + 5,
      v5);
  v6 = *((_DWORD *)this + 2);
  v7 = *((_DWORD *)this + 3) - v6;
  if ( v7 != *((_DWORD *)this + 4) - v6 )
    std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (int)this + 8,
      v7);
}


// ===== 57a558 std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterialVertexAttributeMap ***__fastcall std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterialVertexAttributeMap ***a1)
{
  glitch::video::CMaterialVertexAttributeMap **v1; // r4
  glitch::video::CMaterialVertexAttributeMap **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 5;
    glitch::scene::CBatchMesh::SBatch::~SBatch(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 57a59c glitch::scene::CBatchMesh::~CBatchMesh() =====
void __fastcall glitch::scene::CBatchMesh::~CBatchMesh(glitch::scene::CBatchMesh *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  v2 = *((void **)this + 11);
  *(_DWORD *)this = off_974818;
  if ( v2 )
    GlitchFree(v2);
  std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 8);
  v3 = *((void **)this + 5);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((void **)this + 2);
  if ( v4 )
    GlitchFree(v4);
}


// ===== 57a604 glitch::scene::CBatchMesh::~CBatchMesh() =====
void __fastcall glitch::scene::CBatchMesh::~CBatchMesh(glitch::scene::CBatchMesh *this)
{
  glitch::scene::CBatchMesh::~CBatchMesh(this);
  LC_API_FREE_0(this);
}


// ===== 57a620 glitch::scene::CBatchMesh::~CBatchMesh() =====
void __fastcall glitch::scene::CBatchMesh::~CBatchMesh(glitch::scene::CBatchMesh *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  v2 = *((void **)this + 11);
  *(_DWORD *)this = off_974818;
  if ( v2 )
    GlitchFree(v2);
  std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 8);
  v3 = *((void **)this + 5);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((void **)this + 2);
  if ( v4 )
    GlitchFree(v4);
}


// ===== 57a688 glitch::scene::CBatchMesh::SBatch::~SBatch() =====
void __fastcall glitch::scene::CBatchMesh::SBatch::~SBatch(glitch::video::CMaterialVertexAttributeMap **this)
{
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 1);
  if ( *this )
    glitch::IReferenceCounted::drop(*this);
}


// ===== 57a6b8 std::allocator<ushort>::deallocate(ushort *,uint) =====
void __fastcall std::allocator<unsigned short>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(2 * a3) > 0x80 )
      LC_API_FREE_0(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 2 * a3);
  }
}


// ===== 57a6d4 glitch::scene::CBatchMesh::updateBoundingBox(void) =====
int __fastcall glitch::scene::CBatchMesh::updateBoundingBox(glitch::scene::CBatchMesh *this)
{
  int v2; // r3
  int result; // r0
  int v4; // r10
  unsigned int v5; // r11
  unsigned int v6; // r5
  int v7; // r8
  int v8; // r1
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r5
  int v14; // r6
  int v15; // r5
  int v16; // r12
  int v17; // r1
  int v18; // r3
  unsigned int v19; // r10
  int v20; // r9
  int v21; // r6
  unsigned __int16 *v22; // r2
  int v23; // r3
  unsigned int v24; // r5
  unsigned int v25; // r7
  int v26; // r3
  int v27; // r1
  int v28; // r2
  int v29; // r3
  int v30; // r5
  int v31; // r12
  int v32; // r1
  int v33; // r2
  int v34; // r3
  int v35; // [sp+4h] [bp-48h]
  int i; // [sp+8h] [bp-44h]
  unsigned int v37; // [sp+Ch] [bp-40h]
  int v38; // [sp+18h] [bp-34h] BYREF
  int v39; // [sp+1Ch] [bp-30h]
  int v40; // [sp+20h] [bp-2Ch]
  int v41; // [sp+24h] [bp-28h]
  int v42; // [sp+28h] [bp-24h]
  int v43; // [sp+2Ch] [bp-20h]
  int v44; // [sp+30h] [bp-1Ch] BYREF
  int v45; // [sp+34h] [bp-18h]
  int v46; // [sp+38h] [bp-14h]
  int v47; // [sp+3Ch] [bp-10h]
  int v48; // [sp+40h] [bp-Ch]
  int v49; // [sp+44h] [bp-8h]

  v2 = *((_DWORD *)this + 9);
  result = *((_DWORD *)this + 8);
  v37 = -858993459 * ((v2 - result) >> 2);
  if ( *((_BYTE *)this + 116) )
  {
    if ( -858993459 * ((v2 - result) >> 2) )
    {
      v4 = 0;
      v35 = 0;
      for ( i = 1; ; i = 0 )
      {
        v44 = -1082130432;
        v45 = -1082130432;
        v46 = -1082130432;
        v47 = 1065353216;
        v48 = 1065353216;
        v49 = 1065353216;
        v5 = *(unsigned __int16 *)(result + v4 + 16);
        if ( *(_WORD *)(result + v4 + 16) )
        {
          v6 = 0;
          v7 = 1;
          while ( 1 )
          {
            v38 = -1082130432;
            v39 = -1082130432;
            v40 = -1082130432;
            v41 = 1065353216;
            v42 = 1065353216;
            v43 = 1065353216;
            v8 = *((_DWORD *)this + 28) * (v6 + *(unsigned __int16 *)(result + v4 + 12));
            glitch::video::CVertexStreams::computeBoundingBox(
              *(_DWORD *)(*(_DWORD *)(result
                                    + 20
                                    * *(_DWORD *)(**(_DWORD **)(*((_DWORD *)this + 2) + v8)
                                                + 8 * *(_DWORD *)(*((_DWORD *)this + 2) + v8 + 4)))
                        + 20),
              *(unsigned __int16 *)(*((_DWORD *)this + 2) + v8 + 36),
              *(unsigned __int16 *)(*((_DWORD *)this + 2) + v8 + 38),
              &v38);
            if ( v7 )
            {
              ++v6;
              v44 = v38;
              v7 = 0;
              v45 = v39;
              v46 = v40;
              v47 = v41;
              v48 = v42;
              v49 = v43;
              if ( v5 <= v6 )
                break;
            }
            else
            {
              ++v6;
              glitch::core::aabbox3d<float>::addInternalBox((float *)&v44, (float *)&v38);
              v7 = 0;
              if ( v5 <= v6 )
                break;
            }
            result = *((_DWORD *)this + 8);
          }
        }
        if ( i )
        {
          v9 = v46;
          v10 = v47;
          v11 = v48;
          v12 = v49;
          v13 = v44;
          *((_DWORD *)this + 15) = v45;
          *((_DWORD *)this + 16) = v9;
          *((_DWORD *)this + 14) = v13;
          *((_DWORD *)this + 17) = v10;
          *((_DWORD *)this + 18) = v11;
          *((_DWORD *)this + 19) = v12;
        }
        else
        {
          glitch::core::aabbox3d<float>::addInternalBox((float *)this + 14, (float *)&v44);
        }
        v4 += 20;
        if ( ++v35 == v37 )
          break;
        result = *((_DWORD *)this + 8);
      }
    }
    v14 = *((_DWORD *)this + 14);
    v15 = *((_DWORD *)this + 15);
    v16 = *((_DWORD *)this + 16);
    result = *((_DWORD *)this + 17);
    v17 = *((_DWORD *)this + 18);
    *((_DWORD *)this + 25) = *((_DWORD *)this + 19);
    *((_DWORD *)this + 20) = v14;
    *((_DWORD *)this + 21) = v15;
    *((_DWORD *)this + 22) = v16;
    *((_DWORD *)this + 23) = result;
    *((_DWORD *)this + 24) = v17;
    v18 = glitch::os::Timer::TickCount;
    *((_BYTE *)this + 116) = 0;
    *((_DWORD *)this + 27) = v18;
  }
  v19 = *((_DWORD *)this + 26);
  if ( !v19 )
    return result;
  if ( v19 < v37 )
  {
    v31 = *((_DWORD *)this + 15);
    result = *((_DWORD *)this + 16);
    v32 = *((_DWORD *)this + 17);
    v33 = *((_DWORD *)this + 18);
    v34 = *((_DWORD *)this + 19);
    *((_DWORD *)this + 20) = *((_DWORD *)this + 14);
    *((_DWORD *)this + 21) = v31;
    *((_DWORD *)this + 22) = result;
    *((_DWORD *)this + 23) = v32;
    *((_DWORD *)this + 24) = v33;
    *((_DWORD *)this + 25) = v34;
    v20 = 0;
  }
  else
  {
    v20 = 1;
  }
  v43 = -8388609;
  v40 = 2139095039;
  v41 = -8388609;
  v42 = -8388609;
  v38 = 2139095039;
  v39 = 2139095039;
  v21 = 0;
  do
  {
    while ( 1 )
    {
      v22 = (unsigned __int16 *)(*((_DWORD *)this + 8) + v21);
      v23 = v22[6];
      v24 = v22[8];
      v25 = v22[7] - v23;
      if ( v24 < v25 )
        break;
LABEL_20:
      --v19;
      v21 += 20;
      if ( !v19 )
        goto LABEL_27;
    }
    while ( 1 )
    {
      v26 = *((_DWORD *)this + 2) + *((_DWORD *)this + 28) * (v23 + v24++);
      glitch::core::aabbox3d<float>::addInternalBox((float *)&v38, *(float **)(v26 + 12));
      if ( v25 <= v24 )
        break;
      v23 = *(unsigned __int16 *)(*((_DWORD *)this + 8) + v21 + 12);
    }
    if ( !v20 )
    {
      result = glitch::core::aabbox3d<float>::addInternalBox((float *)this + 20, (float *)&v38);
      goto LABEL_20;
    }
    result = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v38;
    --v19;
    *((_DWORD *)this + 21) = v39;
    *((_DWORD *)this + 20) = v30;
    *((_DWORD *)this + 22) = result;
    *((_DWORD *)this + 23) = v27;
    *((_DWORD *)this + 24) = v28;
    *((_DWORD *)this + 25) = v29;
    v20 = 0;
    v21 += 20;
  }
  while ( v19 );
LABEL_27:
  *((_DWORD *)this + 27) = glitch::os::Timer::TickCount;
  return result;
}


// ===== 57aa8c glitch::scene::CBatchMesh::getBoundingBox(void) =====
char *__fastcall glitch::scene::CBatchMesh::getBoundingBox(glitch::scene::CBatchMesh *this)
{
  if ( *((_BYTE *)this + 116) || *((_DWORD *)this + 26) && *((_DWORD *)this + 27) != glitch::os::Timer::TickCount )
    glitch::scene::CBatchMesh::updateBoundingBox(this);
  return (char *)this + 80;
}


// ===== 57aae4 glitch::scene::CBatchMesh::updateSegmentContent(void *,glitch::scene::CMeshBuffer const*,uint,bool,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const&,glitch::video::IVideoDriver const*) =====
int __fastcall glitch::scene::CBatchMesh::updateSegmentContent(
        _DWORD *a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        glitch::video::CMaterial **a6,
        _DWORD *a7,
        int a8)
{
  int v8; // r12
  int v10; // r1
  int v12; // r8
  int v13; // r6
  int v14; // r12
  int v15; // r6
  bool v16; // zf
  _DWORD *v18; // r3
  int v19; // r6
  int v21; // r11
  int result; // r0
  int v23; // r9
  int v24; // r11
  int v25; // r12
  int v26; // r3
  glitch::IReferenceCounted *v27; // r7
  char *v28; // r2
  glitch::video::CPrimitiveStream *v29; // r10
  glitch::video::CMaterial *v30; // r3
  int v31; // r11
  int v32; // r11
  int PrimitiveCount; // r0
  glitch::video::CPrimitiveStream *v34; // r0
  int v35; // r10
  glitch::video::CMaterial *v36; // [sp+3Ch] [bp-30h]
  glitch::video::CMaterial *v37; // [sp+40h] [bp-2Ch]
  int v38; // [sp+48h] [bp-24h]
  int v39; // [sp+4Ch] [bp-20h]
  int v40; // [sp+54h] [bp-18h]
  void (__fastcall *v41)(glitch::IReferenceCounted *, char ***, glitch::video::CPrimitiveStream *, glitch::video::CMaterial *, int, int, int, int, glitch::video::CMaterial *, int, int, int, int, _DWORD, int, _DWORD, unsigned int, int); // [sp+58h] [bp-14h]
  int Technique; // [sp+5Ch] [bp-10h]
  char **v43; // [sp+60h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v44; // [sp+64h] [bp-8h] BYREF

  v8 = a1[5];
  v10 = a1[8];
  v12 = *(unsigned __int16 *)(v10 + 20 * *(_DWORD *)(v8 + 8 * a2) + 12);
  v13 = *(_DWORD *)(v8 + 8 * a2 + 4);
  v14 = a1[2];
  v15 = a1[28] * (v12 + v13);
  v16 = a4 == 0;
  v18 = *(_DWORD **)(v14 + v15);
  v19 = v14 + v15;
  v21 = 20 * *(_DWORD *)(*v18 + 8 * *(_DWORD *)(v19 + 4));
  result = a5;
  v23 = *(_DWORD *)(v10 + v21);
  v24 = v10 + v21;
  if ( !v16 )
  {
    v39 = *(unsigned __int16 *)(a3 + 36);
    v38 = *(unsigned __int16 *)(a3 + 40);
    glitch::video::CMaterial::getTechnique(*a6);
    glitch::video::IShader::getBatchBaker((glitch::video::IShader *)&v44);
    v27 = v44;
    if ( v44 )
    {
      ++*((_DWORD *)v44 + 1);
      if ( v44 )
        glitch::IReferenceCounted::drop(v44);
    }
    v28 = *(char **)(*(_DWORD *)v27 + 12);
    v43 = *(char ***)(a3 + 20);
    v41 = (void (__fastcall *)(glitch::IReferenceCounted *, char ***, glitch::video::CPrimitiveStream *, glitch::video::CMaterial *, int, int, int, int, glitch::video::CMaterial *, int, int, int, int, _DWORD, int, _DWORD, unsigned int, int))v28;
    if ( v43 )
      v28 = *v43;
    v29 = (glitch::video::CPrimitiveStream *)(a3 + 24);
    if ( v43 )
      *v43 = v28 + 1;
    v37 = *a6;
    Technique = glitch::video::CMaterial::getTechnique(*a6);
    v30 = *(glitch::video::CMaterial **)(v24 + 4);
    v31 = *(_DWORD *)(v24 + 8);
    v36 = v30;
    v40 = *a7 + 4;
    v32 = *(_DWORD *)(v31
                    + 330382100
                    * ((*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v31 + 4) + 24)
                                  + 12 * glitch::video::CMaterial::getTechnique(v30)
                                  + 8)
                      - *(_DWORD *)(*(_DWORD *)(v31 + 4) + 28)) >> 2)
                    + 8);
    PrimitiveCount = glitch::video::CPrimitiveStream::getPrimitiveCount(v29);
    v41(
      v27,
      &v43,
      v29,
      v37,
      Technique,
      v40,
      v23 + 20,
      v23 + 24,
      v36,
      v32 + 4,
      a8,
      v39,
      v38,
      0,
      PrimitiveCount,
      *(unsigned __int16 *)(v19 + 36),
      *(_DWORD *)(v19 + 16) / 3u,
      a4);
    boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr((glitch::video::CVertexStreams **)&v43);
    v34 = v29;
    *(_WORD *)(v19 + 38) = v38 + *(_WORD *)(v19 + 36) - v39;
    v35 = *(_DWORD *)(v19 + 16);
    *(_DWORD *)(v19 + 20) = 3 * glitch::video::CPrimitiveStream::getPrimitiveCount(v34) + v35;
    result = glitch::IReferenceCounted::drop(v27);
  }
  v25 = a1[30];
  if ( v25 )
  {
    v26 = a4;
    if ( a4 )
      v26 = 1;
    return (*(int (__fastcall **)(_DWORD, _DWORD *, int, int, _DWORD))(*(_DWORD *)v25 + 8))(a1[30], a1, a2, v26, a5);
  }
  return result;
}


// ===== 57ad78 std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::vector(uint) =====
_DWORD *__fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::vector(
        _DWORD *a1,
        int a2)
{
  size_t v2; // r6
  char *v4; // r0
  char *v5; // r5

  v2 = 4 * a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (char *)glitch::core::allocProcessBuffer((glitch::core *)(4 * a2), a2);
  v5 = &v4[v2];
  *a1 = v4;
  a1[1] = v4;
  a1[2] = &v4[v2];
  LC_API_MEMSET_0(v4, 0, v2);
  a1[1] = v5;
  return a1;
}


// ===== 57adc0 std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::_M_allocate_and_copy<uint *>(uint &,uint *,uint *) =====
void *__fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_allocate_and_copy<unsigned int *>(
        int a1,
        _DWORD *a2,
        _BYTE *a3,
        _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r4

  v6 = (void *)glitch::core::allocProcessBuffer((glitch::core *)(4 * *a2), (int)a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 57adf8 std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::reserve(uint) =====
void __fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::reserve(
        int a1,
        unsigned int a2)
{
  glitch::core *v3; // r2
  int v4; // r0
  _BYTE *v5; // r3
  int v6; // r5
  void *v7; // r1
  char *v8; // r6
  unsigned int v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v3 = *(glitch::core **)a1;
  v4 = *(_DWORD *)(a1 + 8);
  v10 = a2;
  if ( a2 > (v4 - (int)v3) >> 2 )
  {
    if ( a2 > 0x3FFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *(glitch::core **)a1;
    }
    v5 = *(_BYTE **)(a1 + 4);
    v6 = (v5 - (_BYTE *)v3) >> 2;
    if ( v3 )
    {
      v8 = (char *)std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_allocate_and_copy<unsigned int *>(
                     a1,
                     &v10,
                     v3,
                     v5);
      if ( *(_DWORD *)a1 )
        glitch::core::releaseProcessBuffer(*(glitch::core **)a1, v7);
    }
    else
    {
      v8 = (char *)glitch::core::allocProcessBuffer((glitch::core *)(4 * v10), a2);
    }
    v9 = v10;
    *(_DWORD *)(a1 + 4) = &v8[4 * v6];
    *(_DWORD *)(a1 + 8) = &v8[4 * v9];
    *(_DWORD *)a1 = v8;
  }
}


// ===== 57aea4 std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::core::aabbox3d<float>*,uint,glitch::core::aabbox3d<float> const&) =====
void __fastcall std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3,
        int a4)
{
  _DWORD *v6; // r4
  size_t v8; // r8
  _DWORD *v9; // r0
  _DWORD *v10; // r3
  _DWORD *v11; // r10
  int v12; // r2
  int v13; // r12
  char *v14; // r3
  int v15; // r1
  _DWORD *v16; // r2
  int v17; // r0
  char *v18; // r7
  int v19; // r2
  _BYTE *v20; // r0
  int v21; // r12
  int v22; // r2
  char *v23; // r3
  int v24; // r1

  v6 = a2;
  if ( a3 )
  {
    if ( a3 <= -1431655765 * ((a1[2] - a1[1]) >> 3) )
    {
      std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        (char *)a4);
    }
    else
    {
      v8 = 6
         * std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = GlitchAlloc(v8 * 4, 0);
      v10 = (_DWORD *)*a1;
      v11 = v9;
      v12 = ((int)v6 - *a1) >> 3;
      v13 = -1431655765 * v12;
      if ( -1431655765 * v12 > 0 )
      {
        v15 = -1431655765 * v12;
        v16 = v9;
        do
        {
          --v15;
          *v16 = *v10;
          v16[1] = v10[1];
          v16[2] = v10[2];
          v16[3] = v10[3];
          v16[4] = v10[4];
          v17 = v10[5];
          v10 += 6;
          v16[5] = v17;
          v16 += 6;
        }
        while ( v15 );
        v14 = (char *)&v11[6 * v13];
      }
      else
      {
        v14 = (char *)v9;
      }
      if ( a3 == 1 )
      {
        v18 = v14 + 24;
        *(_DWORD *)v14 = *(_DWORD *)a4;
        *((_DWORD *)v14 + 1) = *(_DWORD *)(a4 + 4);
        *((_DWORD *)v14 + 2) = *(_DWORD *)(a4 + 8);
        *((_DWORD *)v14 + 3) = *(_DWORD *)(a4 + 12);
        *((_DWORD *)v14 + 4) = *(_DWORD *)(a4 + 16);
        *((_DWORD *)v14 + 5) = *(_DWORD *)(a4 + 20);
      }
      else
      {
        v18 = &v14[24 * a3];
        v19 = -1431655765 * ((v18 - v14) >> 3);
        if ( v19 > 0 )
        {
          while ( 1 )
          {
            --v19;
            *(_DWORD *)v14 = *(_DWORD *)a4;
            *((_DWORD *)v14 + 1) = *(_DWORD *)(a4 + 4);
            *((_DWORD *)v14 + 2) = *(_DWORD *)(a4 + 8);
            *((_DWORD *)v14 + 3) = *(_DWORD *)(a4 + 12);
            *((_DWORD *)v14 + 4) = *(_DWORD *)(a4 + 16);
            *((_DWORD *)v14 + 5) = *(_DWORD *)(a4 + 20);
            if ( !v19 )
              break;
            v14 += 24;
          }
        }
      }
      v20 = (_BYTE *)a1[1];
      v21 = -1431655765 * ((v20 - (_BYTE *)v6) >> 3);
      if ( v21 > 0 )
      {
        v22 = -1431655765 * ((v20 - (_BYTE *)v6) >> 3);
        v23 = v18;
        do
        {
          --v22;
          *(_DWORD *)v23 = *v6;
          *((_DWORD *)v23 + 1) = v6[1];
          *((_DWORD *)v23 + 2) = v6[2];
          *((_DWORD *)v23 + 3) = v6[3];
          *((_DWORD *)v23 + 4) = v6[4];
          v24 = v6[5];
          v6 += 6;
          *((_DWORD *)v23 + 5) = v24;
          v23 += 24;
        }
        while ( v22 );
        v18 += 24 * v21;
        v20 = (_BYTE *)a1[1];
      }
      if ( (_BYTE *)*a1 != v20 )
        v20 += -24 * ((178956971 * ((unsigned int)&v20[-*a1 - 24] >> 3)) & 0x1FFFFFFF) - 24;
      GlitchFree(v20);
      a1[1] = v18;
      a1[2] = &v11[v8];
      *a1 = v11;
    }
  }
}


// ===== 57b118 std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::core::aabbox3d<float> const&) =====
void __fastcall std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        _DWORD *a1,
        unsigned int a2,
        int a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = a1[1];
  v5 = -1431655765 * ((v3 - *a1) >> 3);
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      (_DWORD *)a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *a1 + 24 * a2;
    if ( v6 != v3 )
      a1[1] = v6;
  }
}


// ===== 57b174 glitch::scene::CBatchMesh::initStaticSegmentBoundingBoxes(void) =====
int *__fastcall glitch::scene::CBatchMesh::initStaticSegmentBoundingBoxes(glitch::scene::CBatchMesh *this)
{
  int v2; // r3
  int *result; // r0
  int v4; // r8
  unsigned int v5; // r10
  int v6; // r5
  int v7; // r1
  int v8; // r3
  int *v9; // r2
  int *v10; // r2
  int v11; // [sp+4h] [bp-30h]
  int v12; // [sp+8h] [bp-2Ch]
  int v13; // [sp+Ch] [bp-28h]
  int v14; // [sp+18h] [bp-1Ch] BYREF
  int v15; // [sp+1Ch] [bp-18h]
  int v16; // [sp+20h] [bp-14h]
  int v17; // [sp+24h] [bp-10h]
  int v18; // [sp+28h] [bp-Ch]
  int v19; // [sp+2Ch] [bp-8h]

  v2 = *((_DWORD *)this + 9);
  result = *((int **)this + 8);
  v13 = -858993459 * ((v2 - (int)result) >> 2);
  if ( v13 )
  {
    v4 = 0;
    v12 = 0;
    while ( 1 )
    {
      v5 = LOWORD(result[v4 + 4]);
      if ( LOWORD(result[v4 + 4]) )
      {
        v6 = 0;
        while ( 1 )
        {
          v14 = -1082130432;
          v15 = -1082130432;
          v16 = -1082130432;
          v17 = 1065353216;
          v18 = 1065353216;
          v19 = 1065353216;
          v7 = *((_DWORD *)this + 28) * (v6 + LOWORD(result[v4 + 3]));
          result = (int *)glitch::video::CVertexStreams::computeBoundingBox(
                            *(_DWORD *)(result[5
                                             * *(_DWORD *)(**(_DWORD **)(*((_DWORD *)this + 2) + v7)
                                                         + 8 * *(_DWORD *)(*((_DWORD *)this + 2) + v7 + 4))]
                                      + 20),
                            *(unsigned __int16 *)(*((_DWORD *)this + 2) + v7 + 36),
                            *(unsigned __int16 *)(*((_DWORD *)this + 2) + v7 + 38),
                            &v14);
          v8 = *((_DWORD *)this + 2)
             + *((_DWORD *)this + 28) * (v6 + *(unsigned __int16 *)(*((_DWORD *)this + 8) + v4 * 4 + 12));
          v9 = *(int **)(v8 + 12);
          if ( v9 )
          {
            *v9 = v14;
            v9[1] = v15;
            v9[2] = v16;
            v9[3] = v17;
            v9[4] = v18;
            v9[5] = v19;
          }
          else
          {
            result = &glitch::memory::Aabbox3dfPool;
            v10 = (int *)glitch::memory::Aabbox3dfPool;
            if ( glitch::memory::Aabbox3dfPool )
            {
              glitch::memory::Aabbox3dfPool = *(_DWORD *)glitch::memory::Aabbox3dfPool;
            }
            else
            {
              v11 = *((_DWORD *)this + 2)
                  + *((_DWORD *)this + 28) * (v6 + *(unsigned __int16 *)(*((_DWORD *)this + 8) + v4 * 4 + 12));
              result = boost::pool<glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::ordered_malloc_need_resize((int)&glitch::memory::Aabbox3dfPool);
              v8 = v11;
              v10 = result;
            }
            if ( v10 )
            {
              *v10 = v14;
              v10[1] = v15;
              v10[2] = v16;
              v10[3] = v17;
              v10[4] = v18;
              v10[5] = v19;
            }
            *(_DWORD *)(v8 + 12) = v10;
            *(_BYTE *)(v8 + 33) = 1;
          }
          if ( v5 <= ++v6 )
            break;
          result = *((int **)this + 8);
        }
      }
      v4 += 5;
      if ( ++v12 == v13 )
        break;
      result = *((int **)this + 8);
    }
  }
  return result;
}


// ===== 57b36c boost::object_pool<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::construct(void) [clone] =====
_DWORD *boost::object_pool<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::construct()
{
  _DWORD *result; // r0

  result = (_DWORD *)glitch::memory::Aabbox3dfPool;
  if ( glitch::memory::Aabbox3dfPool )
    glitch::memory::Aabbox3dfPool = *(_DWORD *)glitch::memory::Aabbox3dfPool;
  else
    result = boost::pool<glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::ordered_malloc_need_resize((int)&glitch::memory::Aabbox3dfPool);
  if ( result )
  {
    result[2] = -1082130432;
    result[5] = 1065353216;
    *result = -1082130432;
    result[1] = -1082130432;
    result[3] = 1065353216;
    result[4] = 1065353216;
  }
  return result;
}


// ===== 57b3d8 glitch::scene::CBatchMesh::SSegment::load(glitch::io::IReadFile *,bool) =====
int __fastcall glitch::scene::CBatchMesh::SSegment::load(
        glitch::scene::CBatchMesh::SSegment *this,
        glitch::io::IReadFile *a2,
        int a3)
{
  char *v4; // r8
  _DWORD *v6; // r0
  _DWORD *v7; // r6
  int result; // r0
  char v9; // r2
  char v10; // r1
  char v11; // r3
  char v12; // r2
  char v13; // r1
  char v14; // r3
  char v15; // r3
  char v16; // r1
  char v17; // r2
  char v18; // r2
  char v19; // r3
  char v20; // r1
  char v21; // r2
  char v22; // r3
  char v23; // r1
  char v24; // r3
  char v25; // r2
  char v26; // r3
  char v27; // r3
  _DWORD v29[6]; // [sp+14h] [bp-20h] BYREF
  int v30; // [sp+2Ch] [bp-8h]

  v4 = (char *)this + 4;
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 4, 4);
  v6 = boost::object_pool<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::construct();
  *((_BYTE *)this + 33) = 1;
  v7 = v6;
  (*(void (__fastcall **)(glitch::io::IReadFile *, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v6, 24);
  *((_DWORD *)this + 3) = v7;
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 16, 4);
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 20, 4);
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 24, 4);
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 32, 1);
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 34, 2);
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 36, 2);
  (*(void (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 38, 2);
  result = (*(int (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, (char *)this + 40, 2);
  if ( a3 )
  {
    v9 = v4[1];
    v10 = v4[2];
    v11 = *((_BYTE *)this + 4);
    LOBYTE(v30) = v4[3];
    BYTE1(v30) = v10;
    BYTE2(v30) = v9;
    HIBYTE(v30) = v11;
    *((_DWORD *)this + 1) = v30;
    glitch::os::byteswap<float>(v29, v7);
    *v7 = v29[0];
    v7[1] = v29[1];
    v7[2] = v29[2];
    v7[3] = v29[3];
    v7[4] = v29[4];
    v7[5] = v29[5];
    v12 = *((_BYTE *)this + 17);
    v13 = *((_BYTE *)this + 18);
    v14 = *((_BYTE *)this + 16);
    LOBYTE(v30) = *((_BYTE *)this + 19);
    BYTE1(v30) = v13;
    BYTE2(v30) = v12;
    HIBYTE(v30) = v14;
    v15 = *((_BYTE *)this + 20);
    *((_DWORD *)this + 4) = v30;
    v16 = *((_BYTE *)this + 23);
    v17 = *((_BYTE *)this + 22);
    BYTE2(v30) = *((_BYTE *)this + 21);
    LOBYTE(v30) = v16;
    BYTE1(v30) = v17;
    HIBYTE(v30) = v15;
    *((_DWORD *)this + 5) = v30;
    LOBYTE(v30) = *((_BYTE *)this + 27);
    v18 = *((_BYTE *)this + 26);
    v19 = *((_BYTE *)this + 24);
    BYTE2(v30) = *((_BYTE *)this + 25);
    BYTE1(v30) = v18;
    HIBYTE(v30) = v19;
    v20 = *((_BYTE *)this + 34);
    v21 = *((_BYTE *)this + 36);
    *((_DWORD *)this + 6) = v30;
    v22 = *((_BYTE *)this + 35);
    BYTE1(v30) = v20;
    v23 = *((_BYTE *)this + 38);
    LOBYTE(v30) = v22;
    *((_WORD *)this + 17) = v30;
    v24 = *((_BYTE *)this + 37);
    BYTE1(v30) = v21;
    v25 = *((_BYTE *)this + 40);
    LOBYTE(v30) = v24;
    *((_WORD *)this + 18) = v30;
    v26 = *((_BYTE *)this + 39);
    BYTE1(v30) = v23;
    LOBYTE(v30) = v26;
    *((_WORD *)this + 19) = v30;
    v27 = *((_BYTE *)this + 41);
    BYTE1(v30) = v25;
    LOBYTE(v30) = v27;
    result = (unsigned __int16)v30;
    *((_WORD *)this + 20) = v30;
  }
  return result;
}


// ===== 57b67c glitch::scene::CBatchMesh::SSegment::clone(glitch::scene::CBatchMesh::SSegment const&) =====
_DWORD *__fastcall glitch::scene::CBatchMesh::SSegment::clone(
        _DWORD *this,
        const glitch::scene::CBatchMesh::SSegment *a2)
{
  _DWORD *v3; // r5
  _DWORD *v4; // r3

  *this = *(_DWORD *)a2;
  v3 = this;
  *(this + 1) = *((_DWORD *)a2 + 1);
  *(this + 2) = *((_DWORD *)a2 + 2);
  if ( *((_BYTE *)a2 + 33) )
  {
    this = boost::object_pool<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::construct();
    v4 = *((_DWORD **)a2 + 3);
    *this = *v4;
    *(this + 1) = v4[1];
    *(this + 2) = v4[2];
    *(this + 3) = v4[3];
    *(this + 4) = v4[4];
    *(this + 5) = v4[5];
    v3[3] = this;
  }
  else
  {
    *(this + 3) = *((_DWORD *)a2 + 3);
  }
  v3[4] = *((_DWORD *)a2 + 4);
  v3[5] = *((_DWORD *)a2 + 5);
  v3[6] = *((_DWORD *)a2 + 6);
  v3[7] = *((_DWORD *)a2 + 7);
  *((_BYTE *)v3 + 32) = *((_BYTE *)a2 + 32);
  *((_BYTE *)v3 + 33) = *((_BYTE *)a2 + 33);
  *((_WORD *)v3 + 17) = *((_WORD *)a2 + 17);
  *((_WORD *)v3 + 18) = *((_WORD *)a2 + 18);
  *((_WORD *)v3 + 19) = *((_WORD *)a2 + 19);
  *((_WORD *)v3 + 20) = *((_WORD *)a2 + 20);
  return this;
}


// ===== 57b748 std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CBatchMesh::SBatch const&) =====
void __fastcall std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        int *a2)
{
  int v2; // r8
  int v5; // r3
  _DWORD *v6; // r3
  _DWORD *v7; // r3
  unsigned int v8; // r2
  unsigned int v9; // r1
  size_t v10; // r7
  char *v11; // r6
  int v12; // r0
  int v13; // r3
  int v14; // r10
  _DWORD *v15; // r3
  _DWORD *v16; // r3
  glitch::video::CMaterialVertexAttributeMap **v17; // r4
  int *v18; // r8

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 == *(_DWORD *)(a1 + 8) )
  {
    v8 = -858993459 * ((v2 - *(_DWORD *)a1) >> 2);
    if ( v8 )
      v9 = -1717986918 * ((v2 - *(_DWORD *)a1) >> 2);
    else
      v9 = 1;
    if ( v9 > 0xCCCCCCC || v8 > v9 )
      v10 = -16;
    else
      v10 = 20 * v9;
    v11 = (char *)GlitchAlloc(v10, 0);
    v12 = std::priv::__ucopy<glitch::scene::CBatchMesh::SBatch *,glitch::scene::CBatchMesh::SBatch *,int>(
            *(int **)a1,
            v2,
            (int)v11);
    v13 = *a2;
    v14 = v12 + 20;
    *(_DWORD *)v12 = *a2;
    if ( v13 )
      ++*(_DWORD *)(v13 + 4);
    v15 = (_DWORD *)a2[1];
    *(_DWORD *)(v12 + 4) = v15;
    if ( v15 )
      ++*v15;
    v16 = (_DWORD *)a2[2];
    *(_DWORD *)(v12 + 8) = v16;
    if ( v16 )
      ++*v16;
    *(_WORD *)(v12 + 12) = *((_WORD *)a2 + 6);
    *(_WORD *)(v12 + 14) = *((_WORD *)a2 + 7);
    *(_WORD *)(v12 + 16) = *((_WORD *)a2 + 8);
    v17 = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 4);
    v18 = *(int **)a1;
    if ( v17 != *(glitch::video::CMaterialVertexAttributeMap ***)a1 )
    {
      do
      {
        v17 -= 5;
        glitch::scene::CBatchMesh::SBatch::~SBatch(v17);
      }
      while ( v18 != (int *)v17 );
      v18 = *(int **)a1;
    }
    GlitchFree(v18);
    *(_DWORD *)(a1 + 8) = &v11[v10];
    *(_DWORD *)a1 = v11;
    *(_DWORD *)(a1 + 4) = v14;
  }
  else
  {
    v5 = *a2;
    *(_DWORD *)v2 = *a2;
    if ( v5 )
      ++*(_DWORD *)(v5 + 4);
    v6 = (_DWORD *)a2[1];
    *(_DWORD *)(v2 + 4) = v6;
    if ( v6 )
      ++*v6;
    v7 = (_DWORD *)a2[2];
    *(_DWORD *)(v2 + 8) = v7;
    if ( v7 )
      ++*v7;
    *(_WORD *)(v2 + 12) = *((_WORD *)a2 + 6);
    *(_WORD *)(v2 + 14) = *((_WORD *)a2 + 7);
    *(_WORD *)(v2 + 16) = *((_WORD *)a2 + 8);
    *(_DWORD *)(a1 + 4) += 20;
  }
}


// ===== 57b900 glitch::scene::CBatchMesh::addBatch(void) =====
int __fastcall glitch::scene::CBatchMesh::addBatch(glitch::scene::CBatchMesh *this)
{
  int v2; // r6
  glitch::video::CMaterialVertexAttributeMap *v4[5]; // [sp+4h] [bp-14h] BYREF

  v2 = -858993459 * ((*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 2);
  glitch::scene::CBatchMesh::SBatch::SBatch((int)v4, (unsigned int)(*((_DWORD *)this + 6) - *((_DWORD *)this + 5)) >> 3);
  std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (int)this + 32,
    (int *)v4);
  glitch::scene::CBatchMesh::SBatch::~SBatch(v4);
  return v2;
}


// ===== 57b96c glitch::scene::CBatchMesh::quantizeComponents(bool,bool,glitch::video::IVideoDriver *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CBatchMesh::quantizeComponents(
        glitch::scene::CBatchMesh *this,
        int a2,
        int a3,
        glitch::video::IVideoDriver *a4)
{
  int v5; // r8
  glitch::IReferenceCounted *result; // r0
  int v10; // r8
  int v11; // r5
  int v12; // r6
  glitch::IReferenceCounted **v13; // r4
  glitch::IReferenceCounted *v14; // r3
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v16; // [sp+10h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v17; // [sp+14h] [bp-8h] BYREF

  v5 = *((_DWORD *)this + 9);
  result = *((glitch::IReferenceCounted **)this + 8);
  v10 = -858993459 * ((v5 - (int)result) >> 2);
  if ( v10 )
  {
    v11 = 0;
    v12 = 0;
    while ( 1 )
    {
      v13 = (glitch::IReferenceCounted **)((char *)result + v11);
      if ( *(unsigned __int16 *)((char *)result + v11 + 16) != (unsigned __int16)(*(_WORD *)((char *)result + v11 + 14)
                                                                                - *(_WORD *)((char *)result + v11 + 12)) )
        goto LABEL_3;
      v17 = *(glitch::IReferenceCounted **)((char *)result + v11);
      if ( v17 )
        ++*((_DWORD *)v17 + 1);
      glitch::core::createQuantizedBuffer(&v16, &v17, a2, a3, a4);
      v14 = v16;
      if ( v16 )
        ++*((_DWORD *)v16 + 1);
      v15 = *v13;
      *v13 = v14;
      if ( v15 )
        glitch::IReferenceCounted::drop(v15);
      if ( v16 )
        glitch::IReferenceCounted::drop(v16);
      result = v17;
      if ( v17 )
      {
        ++v12;
        result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v17);
        v11 += 20;
        if ( v12 == v10 )
          return result;
      }
      else
      {
LABEL_3:
        ++v12;
        v11 += 20;
        if ( v12 == v10 )
          return result;
      }
      result = *((glitch::IReferenceCounted **)this + 8);
    }
  }
  return result;
}


// ===== 57ba8c glitch::scene::CBatchMesh::SBatch::operator=(glitch::scene::CBatchMesh::SBatch const&) =====
int __fastcall glitch::scene::CBatchMesh::SBatch::operator=(int a1, int *a2, int a3)
{
  int v3; // r3
  glitch::IReferenceCounted *v6; // r0
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterial *v8; // r2
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r2
  glitch::video::CMaterialVertexAttributeMap *v12; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v13; // [sp+4h] [bp-8h] BYREF

  v3 = *a2;
  if ( *a2 )
    a3 = *(_DWORD *)(v3 + 4);
  if ( *a2 )
    *(_DWORD *)(v3 + 4) = a3 + 1;
  v6 = *(glitch::IReferenceCounted **)a1;
  *(_DWORD *)a1 = v3;
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = (glitch::video::CMaterial *)a2[1];
  v13 = v7;
  if ( v7 )
    ++*(_DWORD *)v7;
  v8 = *(glitch::video::CMaterial **)(a1 + 4);
  if ( v7 )
    v7 = v13;
  *(_DWORD *)(a1 + 4) = v7;
  v13 = v8;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
  v9 = (glitch::video::CMaterialVertexAttributeMap *)a2[2];
  v12 = v9;
  if ( v9 )
  {
    ++*(_DWORD *)v9;
    v9 = v12;
  }
  v10 = *(glitch::video::CMaterialVertexAttributeMap **)(a1 + 8);
  *(_DWORD *)(a1 + 8) = v9;
  v12 = v10;
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v12);
  *(_WORD *)(a1 + 12) = *((_WORD *)a2 + 6);
  *(_WORD *)(a1 + 14) = *((_WORD *)a2 + 7);
  *(_WORD *)(a1 + 16) = *((_WORD *)a2 + 8);
  return a1;
}


// ===== 57bb4c std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CBatchMesh::SBatch*,glitch::scene::CBatchMesh::SBatch*,std::__false_type const&) =====
glitch::scene::CBatchMesh::SBatch *__fastcall std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::scene::CBatchMesh::SBatch *this,
        int a3)
{
  glitch::scene::CBatchMesh::SBatch *v3; // r4
  int v6; // r3
  int v8; // r10
  glitch::scene::CBatchMesh::SBatch *v9; // r10
  int v10; // r6
  int v11; // r4
  glitch::video::CMaterialVertexAttributeMap **v12; // r6
  glitch::video::CMaterialVertexAttributeMap **v13; // r0

  v3 = *(glitch::scene::CBatchMesh::SBatch **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v8 = -858993459 * v6;
  if ( -858993459 * v6 > 0 )
  {
    v10 = -858993459 * v6;
    v11 = 0;
    do
    {
      glitch::scene::CBatchMesh::SBatch::operator=((int)this + v11, (int *)(a3 + v11), a3);
      --v10;
      v11 += 20;
    }
    while ( v10 );
    v9 = (glitch::scene::CBatchMesh::SBatch *)((char *)this + 20 * v8);
    v3 = *(glitch::scene::CBatchMesh::SBatch **)(a1 + 4);
  }
  else
  {
    v9 = this;
  }
  if ( v3 != v9 )
  {
    v12 = (glitch::video::CMaterialVertexAttributeMap **)v9;
    do
    {
      v13 = v12;
      v12 += 5;
      glitch::scene::CBatchMesh::SBatch::~SBatch(v13);
    }
    while ( v3 != (glitch::scene::CBatchMesh::SBatch *)v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return this;
}


// ===== 57bbe0 std::swap<glitch::scene::CBatchMesh::SBatch>(glitch::scene::CBatchMesh::SBatch &,glitch::scene::CBatchMesh::SBatch &) =====
void __fastcall std::swap<glitch::scene::CBatchMesh::SBatch>(int a1, int *a2)
{
  glitch::video::CMaterialVertexAttributeMap *v2; // r2
  glitch::video::CMaterialVertexAttributeMap *v4; // r2
  int v5; // r2
  glitch::video::CMaterialVertexAttributeMap *v6[2]; // [sp+4h] [bp-18h] BYREF
  _DWORD *v7; // [sp+Ch] [bp-10h]
  __int16 v8; // [sp+10h] [bp-Ch]
  unsigned __int16 v9; // [sp+12h] [bp-Ah]
  __int16 v10; // [sp+14h] [bp-8h]

  v2 = *(glitch::video::CMaterialVertexAttributeMap **)a1;
  v6[0] = v2;
  if ( v2 )
    ++*((_DWORD *)v2 + 1);
  v4 = *(glitch::video::CMaterialVertexAttributeMap **)(a1 + 4);
  v6[1] = v4;
  if ( v4 )
    ++*(_DWORD *)v4;
  v7 = *(_DWORD **)(a1 + 8);
  if ( v7 )
    ++*v7;
  v8 = *(_WORD *)(a1 + 12);
  v9 = *(_WORD *)(a1 + 14);
  v10 = *(_WORD *)(a1 + 16);
  glitch::scene::CBatchMesh::SBatch::operator=(a1, a2, v9);
  glitch::scene::CBatchMesh::SBatch::operator=((int)a2, (int *)v6, v5);
  glitch::scene::CBatchMesh::SBatch::~SBatch(v6);
}


// ===== 57bc78 glitch::scene::CBatchMesh::sortBatches(glitch::video::IVideoDriver const*,uint *) =====
unsigned int __fastcall glitch::scene::CBatchMesh::sortBatches(
        glitch::scene::CBatchMesh *this,
        const glitch::video::IVideoDriver *a2,
        unsigned int *a3)
{
  unsigned int v5; // r6
  unsigned int i; // r3
  unsigned int j; // r5
  glitch::video::CMaterial *v8; // r9
  unsigned int v9; // r3

  v5 = -858993459 * ((*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 2);
  if ( v5 )
  {
    for ( i = 0; i != v5; ++i )
      a3[i] = i;
    for ( j = 0; j < v5; ++j )
    {
      while ( 1 )
      {
        v8 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 8) + 20 * j + 4);
        if ( (*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v8 + 1) + 24)
                                    + 12 * glitch::video::CMaterial::getTechnique(v8)
                                    + 8)
                        + 4)
            & 0x10000) == 0 )
          break;
        --v5;
        std::swap<glitch::scene::CBatchMesh::SBatch>(
          *((_DWORD *)this + 8) + 20 * v5,
          (int *)(*((_DWORD *)this + 8) + 20 * j));
        v9 = a3[v5];
        a3[v5] = a3[j];
        a3[j] = v9;
        if ( v5 <= j )
          return v5;
      }
    }
  }
  return v5;
}


// ===== 57bd44 glitch::scene::CBatchMesh::clear(void) =====
glitch::scene::CBatchMesh::SBatch *__fastcall glitch::scene::CBatchMesh::clear(glitch::scene::CBatchMesh::SBatch *this)
{
  glitch::scene::CBatchMesh::SBatch *v1; // r1
  int v2; // r2
  glitch::scene::CBatchMesh::SBatch *v3; // r4
  int v4; // r6
  int v5; // r12
  int v6; // r7
  int v7; // r2
  unsigned int v8; // r5
  unsigned int v9; // r3
  int v10; // r2
  int v11; // r2
  int v12; // r2
  int v13; // r3
  int v14; // r3

  v1 = *((glitch::scene::CBatchMesh::SBatch **)this + 8);
  v2 = *((_DWORD *)this + 9);
  v3 = this;
  v4 = -858993459 * ((v2 - (int)v1) >> 2);
  if ( v4 )
  {
    v5 = 0;
    v6 = 0;
    this = nullptr;
    do
    {
      v7 = *(unsigned __int16 *)((char *)v1 + v5 + 12);
      v8 = (unsigned __int16)(*(_WORD *)((char *)v1 + v5 + 14) - v7);
      if ( *(_WORD *)((char *)v1 + v5 + 14) != (_WORD)v7 )
      {
        v9 = 0;
        while ( 1 )
        {
          v10 = v7 + v9++;
          v11 = *(_DWORD *)(*((_DWORD *)v3 + 2) + *((_DWORD *)v3 + 28) * v10 + 8);
          if ( v11 )
          {
            v12 = *(_DWORD *)(v11 + 48);
            *(_DWORD *)(v12 + 28) = 0;
            *(_DWORD *)(v12 + 24) = 0;
            v1 = *((glitch::scene::CBatchMesh::SBatch **)v3 + 8);
          }
          if ( v9 >= v8 )
            break;
          v7 = *(unsigned __int16 *)((char *)v1 + v5 + 12);
        }
      }
      ++v6;
      v5 += 20;
    }
    while ( v6 != v4 );
    v2 = *((_DWORD *)v3 + 9);
  }
  if ( (glitch::scene::CBatchMesh::SBatch *)v2 != v1 )
    this = std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             (int)v3 + 32,
             v1,
             v2);
  v13 = *((_DWORD *)v3 + 2);
  if ( v13 != *((_DWORD *)v3 + 3) )
    *((_DWORD *)v3 + 3) = v13;
  v14 = *((_DWORD *)v3 + 5);
  if ( v14 != *((_DWORD *)v3 + 6) )
    *((_DWORD *)v3 + 6) = v14;
  return this;
}


// ===== 57be34 glitch::scene::CBatchMesh::setBuffer(uint,boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
glitch::video::CVertexStreams **__fastcall glitch::scene::CBatchMesh::setBuffer(int a1, int a2, int *a3, char **a4)
{
  int v4; // r2
  char **v5; // r7
  int v6; // r12
  int v7; // r1
  glitch::IReferenceCounted *v8; // r0
  int v9; // r6
  int v10; // r8
  unsigned int v11; // r0
  glitch::video::CMaterial *v12; // r3
  int v13; // r1
  glitch::video::CMaterialVertexAttributeMap *v14; // r3
  char *v17; // [sp+Ch] [bp-58h]
  glitch::video::CMaterialVertexAttributeMap *v18; // [sp+14h] [bp-50h] BYREF
  glitch::video::CMaterial *v19; // [sp+18h] [bp-4Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v20; // [sp+1Ch] [bp-48h] BYREF
  glitch::video::CVertexStreams *v21; // [sp+20h] [bp-44h] BYREF
  glitch::video::CMaterial *v22; // [sp+24h] [bp-40h] BYREF
  _DWORD v23[4]; // [sp+2Ch] [bp-38h] BYREF
  _BYTE *v24; // [sp+3Ch] [bp-28h]
  void *p; // [sp+40h] [bp-24h]
  _DWORD v26[5]; // [sp+44h] [bp-20h] BYREF
  void *v27; // [sp+58h] [bp-Ch]

  v4 = *a3;
  v5 = a4;
  if ( v4 )
    a4 = *(char ***)(v4 + 4);
  v6 = *(_DWORD *)(a1 + 32);
  v7 = 20 * a2;
  if ( v4 )
    *(_DWORD *)(v4 + 4) = (char *)a4 + 1;
  v8 = *(glitch::IReferenceCounted **)(v6 + v7);
  v9 = v6 + v7;
  *(_DWORD *)(v6 + v7) = v4;
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v24 = v23;
  p = v23;
  v17 = *v5;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v23,
    0x10u);
  v10 = 0;
  *v24 = 0;
  do
  {
    v11 = lrand48();
    ++v10;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v23,
      (_DWORD *)glitch::core::randomString(int)::alphanum[v11 % 0x3E]);
  }
  while ( v10 != 14 );
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v26,
    (char *)p);
  if ( p != v23 && p )
    GlitchFree(p);
  glitch::video::CMaterial::clone((glitch::video::CMaterial *)&v22, v17);
  v12 = v22;
  v19 = v22;
  if ( v22 )
  {
    ++*(_DWORD *)v22;
    v12 = v19;
  }
  v19 = *(glitch::video::CMaterial **)(v9 + 4);
  *(_DWORD *)(v9 + 4) = v12;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v19);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v22);
  if ( v27 != v26 && v27 )
    GlitchFree(v27);
  v13 = (int)(*v5 + 4);
  v21 = *(glitch::video::CVertexStreams **)(*a3 + 20);
  if ( v21 )
    ++*(_DWORD *)v21;
  glitch::video::CMaterialVertexAttributeMap::allocate(&v20, v13, &v21);
  v14 = v20;
  v18 = v20;
  if ( v20 )
  {
    ++*(_DWORD *)v20;
    v14 = v18;
  }
  v18 = *(glitch::video::CMaterialVertexAttributeMap **)(v9 + 8);
  *(_DWORD *)(v9 + 8) = v14;
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v18);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v20);
  return boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v21);
}


// ===== 57c040 std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::_M_insert_overflow(uint *,uint const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_insert_overflow(
        glitch::core **a1,
        glitch::core *a2,
        void **a3,
        int a4,
        unsigned int a5,
        char a6)
{
  glitch::core *v9; // r8
  int v10; // r1
  glitch::core *v11; // r0
  glitch::core *v12; // r1
  glitch::core *v13; // r7
  size_t v14; // r10
  char *v15; // r10
  unsigned int v16; // r2
  int v17; // r3
  size_t v18; // r4

  v9 = (glitch::core *)(4
                      * std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_compute_next_size(
                          a1,
                          a5));
  v11 = (glitch::core *)glitch::core::allocProcessBuffer(v9, v10);
  v12 = *a1;
  v13 = v11;
  if ( a2 != *a1 )
  {
    v14 = a2 - *a1;
    v11 = (glitch::core *)((char *)memmove(v11, v12, v14) + v14);
  }
  v15 = (char *)v11;
  if ( a5 )
  {
    v16 = a5;
    v17 = 0;
    do
    {
      v12 = (glitch::core *)*a3;
      --v16;
      *(_DWORD *)((char *)v11 + v17) = *a3;
      v17 += 4;
    }
    while ( v16 );
    v15 = (char *)v11 + 4 * a5;
  }
  if ( !a6 )
  {
    v18 = a1[1] - a2;
    if ( v18 )
      v15 = (char *)memmove(v15, a2, v18) + v18;
  }
  if ( *a1 )
    glitch::core::releaseProcessBuffer(*a1, v12);
  a1[2] = (glitch::core *)((char *)v9 + (_DWORD)v13);
  *a1 = v13;
  a1[1] = (glitch::core *)v15;
}


// ===== 57c104 std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::_M_fill_insert(uint *,uint,uint const&) =====
void __fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
      std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    else
      std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_insert_overflow(
        (glitch::core **)a1,
        (glitch::core *)a2,
        (void **)a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 57c158 std::vector<uint,glitch::core::SProcessBufferAllocator<uint>>::resize(uint,uint const&) =====
void __fastcall std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::resize(
        int a1,
        unsigned int a2,
        char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_fill_insert(
      a1,
      *(char **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 57c19c glitch::scene::CBatchMesh::sort(glitch::video::IVideoDriver const*) =====
unsigned int __fastcall glitch::scene::CBatchMesh::sort(
        glitch::scene::CBatchMesh *this,
        const glitch::video::IVideoDriver *a2)
{
  int v3; // r3
  int v5; // r10
  int v6; // r3
  _WORD *v7; // r3
  __int16 v8; // r2
  __int16 v9; // r11
  unsigned int v10; // r11
  unsigned int v11; // r1
  char *v12; // r3
  int *v13; // r6
  int v14; // r5
  int v15; // r12
  int v16; // r5
  unsigned int v17; // r2
  int v18; // r3
  int v19; // r0
  bool v20; // cf
  unsigned int v21; // r9
  int v22; // r8
  unsigned int v23; // r11
  int v24; // lr
  int v25; // r12
  int *v26; // r6
  int v27; // r7
  int v28; // r0
  int v29; // r1
  int v30; // r2
  int v31; // r3
  int *v32; // r6
  int v33; // r0
  int v34; // r1
  int v35; // r2
  int v36; // r3
  int v37; // r0
  int v38; // r1
  int v39; // r6
  int v40; // r7
  unsigned int v41; // r5
  int v42; // r1
  int v43; // r0
  int v44; // r2
  int v45; // r2
  int *v46; // r3
  int v47; // r1
  int v48; // r0
  int v49; // r12
  int v50; // r3
  glitch::IReferenceCounted *v51; // r2
  __int16 v52; // r7
  int v53; // r8
  unsigned int v54; // r6
  int v55; // r9
  int v56; // r5
  int v57; // r3
  int v58; // r11
  __int16 v59; // r1
  int v60; // r2
  char *v61; // r0
  char *v62; // r3
  char *v63; // r12
  bool v64; // zf
  __int16 v65; // r1
  unsigned int v66; // r12
  int v67; // r2
  int v68; // lr
  int v69; // r2
  int *v70; // r1
  unsigned int v71; // r3
  unsigned int v72; // r9
  size_t v73; // r9
  char *v74; // r0
  char *v75; // r7
  size_t v76; // r6
  int *v77; // r6
  int v78; // r7
  int v79; // r6
  int v80; // r8
  int v81; // r5
  int v82; // r3
  int v83; // r10
  int v84; // lr
  __int16 v85; // r12
  int v86; // r11
  int v87; // r1
  __int16 v88; // r0
  int v89; // r2
  int v90; // lr
  __int16 v91; // r12
  int v92; // r3
  int v93; // lr
  glitch::IReferenceCounted *v94; // r1
  _BYTE *v95; // r5
  char v96; // r3
  char v97; // r3
  unsigned int i; // r2
  int v99; // r3
  int v100; // r3
  unsigned int v101; // r1
  int v102; // r12
  int v103; // r0
  unsigned int *v104; // r6
  int v105; // r4
  int v106; // r2
  int v107; // r3
  unsigned int *v108; // r5
  int *v109; // r7
  int v111; // r3
  int v112; // [sp+Ch] [bp-E8h]
  int v113; // [sp+Ch] [bp-E8h]
  int v114; // [sp+Ch] [bp-E8h]
  int v115; // [sp+Ch] [bp-E8h]
  int v116; // [sp+10h] [bp-E4h]
  int v117; // [sp+10h] [bp-E4h]
  int v118; // [sp+18h] [bp-DCh]
  int v119; // [sp+18h] [bp-DCh]
  unsigned int v120; // [sp+1Ch] [bp-D8h]
  int v121; // [sp+20h] [bp-D4h]
  int v122; // [sp+20h] [bp-D4h]
  int v123; // [sp+24h] [bp-D0h]
  __int16 v124; // [sp+24h] [bp-D0h]
  unsigned int v125; // [sp+24h] [bp-D0h]
  int v126; // [sp+28h] [bp-CCh]
  __int16 v127; // [sp+28h] [bp-CCh]
  int v128; // [sp+2Ch] [bp-C8h]
  unsigned int v129; // [sp+2Ch] [bp-C8h]
  glitch::core *v130; // [sp+30h] [bp-C4h]
  glitch::core *v131; // [sp+30h] [bp-C4h]
  glitch::core *v132; // [sp+34h] [bp-C0h]
  int v133; // [sp+3Ch] [bp-B8h]
  glitch::IReferenceCounted *v134; // [sp+40h] [bp-B4h]
  __int16 v135; // [sp+4Ch] [bp-A8h]
  unsigned int v136; // [sp+50h] [bp-A4h]
  int v137; // [sp+54h] [bp-A0h]
  int v138; // [sp+5Ch] [bp-98h]
  int v139; // [sp+60h] [bp-94h]
  int v140; // [sp+64h] [bp-90h]
  unsigned int v141; // [sp+74h] [bp-80h]
  _DWORD v142[11]; // [sp+7Ch] [bp-78h] BYREF
  _DWORD v143[6]; // [sp+A8h] [bp-4Ch] BYREF
  void *p; // [sp+C0h] [bp-34h] BYREF
  int *v145; // [sp+C4h] [bp-30h]
  int *v146; // [sp+C8h] [bp-2Ch]
  glitch::core *v147; // [sp+CCh] [bp-28h] BYREF
  glitch::core *v148; // [sp+D0h] [bp-24h]
  glitch::core *v149; // [sp+D4h] [bp-20h]
  glitch::core *v150; // [sp+D8h] [bp-1Ch] BYREF
  int v151; // [sp+DCh] [bp-18h]
  char *v152; // [sp+E4h] [bp-10h] BYREF
  int v153; // [sp+E8h] [bp-Ch] BYREF
  char v154[4]; // [sp+ECh] [bp-8h] BYREF

  v3 = (*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 2;
  v5 = 0;
  *((_BYTE *)this + 116) = 1;
  *((_DWORD *)this + 26) = 0;
  std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::vector(&v150, -858993459 * v3);
  v6 = (*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 2;
  v153 = 0;
  std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::resize(
    (int)&v150,
    -858993459 * v6,
    (char *)&v153);
  v141 = glitch::scene::CBatchMesh::sortBatches(this, a2, (unsigned int *)v150);
  v140 = (v151 - (int)v150) >> 2;
  if ( !v140 )
  {
    v136 = (v151 - (int)v150) >> 2;
    goto LABEL_94;
  }
  v133 = 0;
  v136 = 0;
  do
  {
    v7 = (_WORD *)(*((_DWORD *)this + 8) + v5);
    v8 = v7[6];
    v9 = v7[7];
    v7[8] = 0;
    v10 = (unsigned __int16)(v9 - v8);
    v147 = nullptr;
    v148 = nullptr;
    v149 = nullptr;
    p = nullptr;
    v145 = nullptr;
    v146 = nullptr;
    std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::reserve((int)&v147, v10);
    std::vector<glitch::scene::CBatchMesh::SSegment *,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (int)&p,
      v10);
    v12 = nullptr;
    v152 = nullptr;
    if ( !v10 )
    {
      *(_WORD *)(*((_DWORD *)this + 8) + v5 + 16) = 0;
LABEL_111:
      v111 = *((_DWORD *)this + 8);
      ++*((_DWORD *)this + 26);
      *(_BYTE *)(*(_DWORD *)(v111 + v5) + 52) = 1;
      if ( v10 )
        goto LABEL_85;
      goto LABEL_89;
    }
    do
    {
      v13 = v145;
      v14 = *((_DWORD *)this + 2)
          + *((_DWORD *)this + 28) * (_DWORD)&v12[*(unsigned __int16 *)(*((_DWORD *)this + 8) + v5 + 12)];
      if ( v145 == v146 )
      {
        v71 = ((char *)v145 - (_BYTE *)p) >> 2;
        if ( v71 )
          v72 = 2 * v71;
        else
          v72 = 1;
        if ( v72 > 0x3FFFFFFF || v71 > v72 )
          v73 = -4;
        else
          v73 = 4 * v72;
        v74 = (char *)GlitchAlloc(v73, 0);
        v75 = v74;
        v76 = (char *)v13 - (_BYTE *)p;
        if ( v76 )
          v77 = (int *)((char *)memmove(v74, p, v76) + v76);
        else
          v77 = (int *)v74;
        *v77 = v14;
        GlitchFree(p);
        v145 = v77 + 1;
        v146 = (int *)&v75[v73];
        p = v75;
      }
      else
      {
        *v145++ = v14;
      }
      if ( v148 == v149 )
      {
        std::vector<unsigned int,glitch::core::SProcessBufferAllocator<unsigned int>>::_M_insert_overflow(
          &v147,
          v148,
          (void **)&v152,
          (int)v154,
          1u,
          1);
      }
      else
      {
        *(_DWORD *)v148 = v152;
        v148 = (glitch::core *)((char *)v148 + 4);
      }
      v12 = ++v152;
    }
    while ( (unsigned int)v152 < v10 );
    v15 = *((_DWORD *)this + 28);
    v16 = *((_DWORD *)this + 8) + v5;
    v11 = v10;
    v17 = 0;
    v18 = v15 * *(unsigned __int16 *)(v16 + 12);
    do
    {
      v19 = *(_DWORD *)(*((_DWORD *)this + 2) + v18 + 8);
      ++v17;
      v18 += v15;
      if ( v19 )
        --v11;
    }
    while ( v17 < v10 );
    *(_WORD *)(v16 + 16) = v11;
    v20 = 1;
    if ( v11 )
      v20 = v11 >= v10;
    v136 += v11;
    if ( v20 )
    {
      if ( v11 )
        goto LABEL_85;
      goto LABEL_111;
    }
    v21 = v10 - 1;
    v22 = *((_DWORD *)this + 8);
    v120 = v10;
    v130 = (glitch::core *)v10;
    v126 = 4 * (v10 - 1);
    v128 = 0;
    v135 = 0;
    v116 = 0;
    v118 = 0;
    v23 = 0;
    do
    {
      v24 = *((_DWORD *)this + 28);
      v25 = *((_DWORD *)this + 2);
      v26 = (int *)(v25 + v24 * (v23 + *(unsigned __int16 *)(v22 + v5 + 12)));
      if ( v26[2] )
      {
        v27 = *((unsigned __int16 *)v26 + 19);
        v112 = *((unsigned __int16 *)v26 + 18);
        v121 = v26[5];
        v123 = v26[4];
        v28 = *v26;
        v29 = v26[1];
        v30 = v26[2];
        v31 = v26[3];
        v32 = v26 + 4;
        v142[0] = v28;
        v142[1] = v29;
        v142[2] = v30;
        v142[3] = v31;
        v33 = *v32;
        v34 = v32[1];
        v35 = v32[2];
        v36 = v32[3];
        v32 += 4;
        v142[4] = v33;
        v142[5] = v34;
        v142[6] = v35;
        v142[7] = v36;
        v37 = *v32;
        v38 = v32[1];
        LOWORD(v142[10]) = v32[2];
        v142[8] = v37;
        v142[9] = v38;
        v118 += v27 - v112;
        v39 = 4 * v23;
        v116 += v121 - v123;
        --v120;
        v113 = *((_DWORD *)v147 + v23);
        if ( v21 > v23 )
        {
          v40 = 4 * (v23 + 1);
          v41 = v23;
          while ( 1 )
          {
            v42 = *(unsigned __int16 *)(v22 + v5 + 12);
            v43 = v41 + v42;
            memcpy((void *)(v25 + v24 * v43), (const void *)(v25 + v24 * (++v41 + v42)), 0x2Au);
            v44 = *(_DWORD *)((char *)v147 + v40);
            v40 += 4;
            *(_DWORD *)((char *)v147 + v39) = v44;
            v39 += 4;
            if ( v41 >= v21 )
              break;
            v22 = *((_DWORD *)this + 8);
            v24 = *((_DWORD *)this + 28);
            v25 = *((_DWORD *)this + 2);
          }
          v22 = *((_DWORD *)this + 8);
          v24 = *((_DWORD *)this + 28);
          v25 = *((_DWORD *)this + 2);
        }
        memcpy((void *)(v25 + v24 * (v21 + *(unsigned __int16 *)(v22 + v5 + 12))), v142, 0x2Au);
        *(_DWORD *)((char *)v147 + v126) = v113;
        if ( BYTE1(v142[8]) )
        {
          v45 = v142[3];
          v46 = (int *)glitch::memory::Aabbox3dfPool;
          if ( !glitch::memory::Aabbox3dfPool || v142[3] < (unsigned int)glitch::memory::Aabbox3dfPool )
          {
            *(_DWORD *)v142[3] = glitch::memory::Aabbox3dfPool;
            glitch::memory::Aabbox3dfPool = v45;
            v22 = *((_DWORD *)this + 8);
            continue;
          }
          do
          {
            v70 = v46;
            v46 = (int *)*v46;
          }
          while ( v46 && v142[3] >= (unsigned int)v46 );
          *(_DWORD *)v142[3] = v46;
          *v70 = v45;
        }
        v22 = *((_DWORD *)this + 8);
      }
      else
      {
        v128 += v26[5] - v26[4];
        v135 += *((_WORD *)v26 + 19) - *((_WORD *)v26 + 18);
        ++v23;
      }
    }
    while ( v120 > v23 );
    v10 = (unsigned int)v130;
    v138 = 2 * v116;
    ++*((_DWORD *)this + 26);
    *(_BYTE *)(*(_DWORD *)(v22 + v5) + 52) = 1;
    v122 = *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 8) + v5) + 20) + 34);
    v139 = v122 * v118;
    v132 = (glitch::core *)glitch::core::allocProcessBuffer((glitch::core *)v139, v139);
    v48 = glitch::core::allocProcessBuffer((glitch::core *)(2 * v116), v47);
    v131 = (glitch::core *)v48;
    v50 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 8) + v5) + 20);
    v51 = *(glitch::IReferenceCounted **)(v50 + 20);
    v134 = v51;
    if ( v51 )
      v49 = *(_DWORD *)(v50 + 20);
    else
      v48 = 0;
    if ( v51 )
    {
      ++*(_DWORD *)(v49 + 4);
      v48 = *(_DWORD *)(v50 + 20);
    }
    v117 = glitch::video::IBuffer::map(v48, 5);
    v137 = *(_DWORD *)(*((_DWORD *)this + 8) + v5);
    v119 = glitch::video::IBuffer::map(*(_DWORD *)(v137 + 24), 5) + *(_DWORD *)(v137 + 28);
    if ( v10 > v120 )
    {
      v52 = v135;
      v53 = v128;
      v114 = 0;
      v54 = v120;
      v55 = 0;
      v129 = v10;
      while ( 1 )
      {
        v56 = *((_DWORD *)this + 2)
            + *((_DWORD *)this + 28) * (v54 + *(unsigned __int16 *)(*((_DWORD *)this + 8) + v5 + 12));
        v57 = *(unsigned __int16 *)(v56 + 36);
        v58 = (unsigned __int16)(*(_WORD *)(v56 + 38) - v57);
        memcpy((char *)v132 + v55, (const void *)(v117 + v122 * v57), v122 * v58);
        v59 = *(_WORD *)(v56 + 36);
        v60 = *(_DWORD *)(v56 + 16);
        v61 = (char *)(*(_DWORD *)(v56 + 20) - v60);
        v62 = (char *)v131 + 2 * v114;
        v55 += v122 * v58;
        v124 = v52 + *(_WORD *)(v56 + 38) - v59;
        v63 = &v62[2 * (_DWORD)v61];
        v64 = v62 == v63;
        v127 = v52 + *(_WORD *)(v56 + 40) - v59;
        v65 = v52 - v59;
        *(_WORD *)(v56 + 38) = v124;
        if ( v62 == v63 )
          v62 = v61;
        *(_WORD *)(v56 + 36) = v52;
        *(_WORD *)(v56 + 40) = v127;
        if ( !v64 )
        {
          v66 = ((v63 - (v62 + 2)) & 0xFFFFFFFE) + 2;
          v67 = v119 + 2 * v60;
          v68 = 0;
          do
          {
            *(_WORD *)&v62[v68] = v65 + *(_WORD *)(v67 + v68);
            v68 += 2;
          }
          while ( v68 != v66 );
          v60 = *(_DWORD *)(v56 + 16);
          v62 = (char *)(*(_DWORD *)(v56 + 20) - v60);
        }
        ++v54;
        v69 = *(_DWORD *)(v56 + 24) - v60 + v53;
        *(_DWORD *)(v56 + 20) = &v62[v53];
        *(_DWORD *)(v56 + 24) = v69;
        *(_DWORD *)(v56 + 16) = v53;
        if ( v54 >= v129 )
          break;
        v53 += (int)v61;
        v114 += (int)v61;
        v52 += v58;
      }
      v10 = v129;
    }
    if ( v120 )
    {
      v80 = 0;
      v78 = 0;
      v79 = 0;
      v115 = v5;
      v125 = v10;
      do
      {
        v81 = *((_DWORD *)this + 2)
            + *((_DWORD *)this + 28) * (v80 + *(unsigned __int16 *)(*((_DWORD *)this + 8) + v115 + 12));
        v82 = *(unsigned __int16 *)(v81 + 36);
        v83 = (unsigned __int16)(*(_WORD *)(v81 + 38) - v82);
        memmove((void *)(v117 + v122 * v79), (const void *)(v117 + v122 * v82), v122 * v83);
        v84 = *(_DWORD *)(v81 + 16);
        v85 = *(_WORD *)(v81 + 36);
        v86 = *(_DWORD *)(v81 + 20) - v84;
        v87 = v119 + 2 * v78;
        v88 = v79 + *(_WORD *)(v81 + 38) - v85;
        *(_WORD *)(v81 + 40) = v79 + *(_WORD *)(v81 + 40) - v85;
        *(_WORD *)(v81 + 38) = v88;
        *(_WORD *)(v81 + 36) = v79;
        if ( v87 == v87 + 2 * v86 )
        {
          v89 = v86;
        }
        else
        {
          v90 = v119 + 2 * v84;
          v91 = v79 - v85;
          v92 = 0;
          do
          {
            *(_WORD *)(v87 + v92) = v91 + *(_WORD *)(v90 + v92);
            v92 += 2;
          }
          while ( v92 != ((2 * v86 - 2) & 0xFFFFFFFE) + 2 );
          v84 = *(_DWORD *)(v81 + 16);
          v89 = *(_DWORD *)(v81 + 20) - v84;
        }
        ++v80;
        v93 = *(_DWORD *)(v81 + 24) - v84 + v78;
        *(_DWORD *)(v81 + 16) = v78;
        *(_DWORD *)(v81 + 20) = v89 + v78;
        *(_DWORD *)(v81 + 24) = v93;
        v78 += v86;
        v79 = (unsigned __int16)(v79 + v83);
      }
      while ( v80 != v120 );
      v5 = v115;
      v10 = v125;
    }
    else
    {
      v78 = 0;
      v79 = 0;
    }
    memcpy((void *)(v117 + v122 * v79), v132, v139);
    memcpy((void *)(v119 + 2 * v78), v131, v138);
    if ( v119 )
    {
      v95 = *(_BYTE **)(v137 + 24);
      v96 = v95[19];
      if ( (v96 & 0x1Fu) <= 1 )
      {
        if ( (v95[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v95 + 24))(*(_DWORD *)(v137 + 24));
        v95[19] = 0;
      }
      else
      {
        v95[19] = ((v96 & 0x1F) - 1) | v96 & 0xE0;
      }
    }
    if ( v117 )
    {
      v97 = *((_BYTE *)v134 + 19);
      if ( (v97 & 0x1Fu) <= 1 )
      {
        v94 = v134;
        if ( (*((_BYTE *)v134 + 18) & 0x20) != 0 )
          (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v134 + 24))(v134);
        *((_BYTE *)v134 + 19) = 0;
      }
      else
      {
        *((_BYTE *)v134 + 19) = ((v97 & 0x1F) - 1) | v97 & 0xE0;
      }
    }
    if ( v134 )
      glitch::IReferenceCounted::drop(v134);
    if ( v131 )
      glitch::core::releaseProcessBuffer(v131, v94);
    if ( v132 )
      glitch::core::releaseProcessBuffer(v132, v94);
LABEL_85:
    for ( i = 0; i < v10; ++i )
    {
      v99 = *((_DWORD *)p + i);
      *(_DWORD *)(**(_DWORD **)v99 + 8 * *(_DWORD *)(v99 + 4)) = v133;
      *(_DWORD *)(**(_DWORD **)v99 + 8 * *(_DWORD *)(v99 + 4) + 4) = i;
      v11 = *(_DWORD *)(v99 + 8);
      if ( v11 )
      {
        v11 = *(_DWORD *)(v11 + 48);
        v100 = *(_DWORD *)(v99 + 4);
        *(_DWORD *)(v11 + 24) = this;
        *(_DWORD *)(v11 + 28) = v100;
      }
    }
LABEL_89:
    if ( p )
      GlitchFree(p);
    if ( v147 )
      glitch::core::releaseProcessBuffer(v147, (void *)v11);
    v5 += 20;
    ++v133;
  }
  while ( v133 != v140 );
LABEL_94:
  v143[2] = -1082130432;
  v143[0] = -1082130432;
  v143[1] = -1082130432;
  v143[5] = 1065353216;
  v143[3] = 1065353216;
  v143[4] = 1065353216;
  std::vector<glitch::core::aabbox3d<float>,glitch::core::SAllocator<glitch::core::aabbox3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (_DWORD *)this + 11,
    v136,
    (int)v143);
  v102 = *((_DWORD *)this + 3);
  v103 = *((_DWORD *)this + 2);
  v104 = *((unsigned int **)this + 11);
  v105 = *((_DWORD *)this + 28);
  if ( v103 != v102 )
  {
    v106 = 0;
    v107 = v103;
    do
    {
      while ( 1 )
      {
        v101 = *(_DWORD *)(v107 + 8);
        if ( !v101 )
          break;
        v106 += v105;
        v107 = v103 + v106;
        if ( v102 == v103 + v106 )
          goto LABEL_107;
      }
      v108 = *(unsigned int **)(v107 + 12);
      if ( v104 != v108 )
      {
        v101 = *(unsigned __int8 *)(v107 + 33);
        if ( *(_BYTE *)(v107 + 33) )
        {
          v101 = glitch::memory::Aabbox3dfPool;
          if ( glitch::memory::Aabbox3dfPool && (unsigned int)v108 >= glitch::memory::Aabbox3dfPool )
          {
            do
            {
              v109 = (int *)v101;
              v101 = *(_DWORD *)v101;
            }
            while ( v101 && (unsigned int)v108 >= v101 );
          }
          else
          {
            v109 = &glitch::memory::Aabbox3dfPool;
          }
          *v108 = v101;
          *v109 = (int)v108;
          *(_BYTE *)(v107 + 33) = 0;
        }
        *(_DWORD *)(v107 + 12) = v104;
      }
      v106 += v105;
      v107 = v103 + v106;
      v104 += 6;
    }
    while ( v102 != v103 + v106 );
  }
LABEL_107:
  if ( v150 )
    glitch::core::releaseProcessBuffer(v150, (void *)v101);
  return v141;
}


// ===== 57cd48 glitch::scene::CBatchMesh::save(glitch::io::IWriteFile *,glitch::video::IVideoDriver *,glitch::os::E_ENDIAN,bool,bool) =====
void __fastcall glitch::scene::CBatchMesh::save(
        _DWORD *a1,
        glitch::io::IWriteFile *a2,
        int a3,
        int a4,
        int a5,
        char a6)
{
  int v9; // r3
  int v10; // r5
  int v11; // r8
  int v12; // lr
  int v13; // r0
  int v14; // r1
  int v15; // r11
  int v16; // r6
  int v17; // r2
  int v18; // r3
  int v19; // r2
  unsigned int v20; // r4
  int v21; // r2
  int v22; // r1
  int v23; // r3
  int v24; // r4
  int i; // r8
  glitch::IReferenceCounted *v26; // r3
  int v27; // r4
  int v28; // r2
  int v29; // r12
  int v30; // r3
  int v31; // r1
  unsigned int v32; // r12
  int v33; // r0
  unsigned int v34; // r11
  int v35; // r10
  int v36; // r2
  unsigned int v37; // r8
  int v38; // r3
  unsigned int v39; // r10
  int v40; // r4
  int v41; // r6
  int v42; // r0
  int v43; // r5
  int v44; // r0
  int v45; // r5
  int v46; // r0
  int Buffer; // r6
  int BufferSize; // r0
  int v49; // r12
  int v50; // r3
  int v51; // [sp+8h] [bp-224h]
  int v52; // [sp+8h] [bp-224h]
  int VertexStreamsStride; // [sp+Ch] [bp-220h]
  int v54; // [sp+1Ch] [bp-210h]
  int v55; // [sp+24h] [bp-208h]
  int v56; // [sp+28h] [bp-204h]
  unsigned int v57; // [sp+2Ch] [bp-200h]
  int v58; // [sp+30h] [bp-1FCh]
  int v59; // [sp+3Ch] [bp-1F0h]
  int v60; // [sp+40h] [bp-1ECh]
  _BYTE v61[48]; // [sp+74h] [bp-1B8h] BYREF
  _BYTE v62[4]; // [sp+A4h] [bp-188h] BYREF
  int v63; // [sp+A8h] [bp-184h] BYREF
  int v64; // [sp+ACh] [bp-180h]
  int v65; // [sp+B0h] [bp-17Ch]
  int v66; // [sp+B4h] [bp-178h]
  int v67; // [sp+B8h] [bp-174h]
  int v68; // [sp+BCh] [bp-170h]
  int v69; // [sp+C0h] [bp-16Ch]
  int v70; // [sp+C4h] [bp-168h]
  int v71; // [sp+C8h] [bp-164h]
  int v72; // [sp+CCh] [bp-160h]
  _DWORD v73[3]; // [sp+D0h] [bp-15Ch] BYREF
  void *v74; // [sp+DCh] [bp-150h]
  _DWORD v75[3]; // [sp+E8h] [bp-144h] BYREF
  void *v76; // [sp+F4h] [bp-138h]
  _DWORD v77[3]; // [sp+100h] [bp-12Ch] BYREF
  void *v78; // [sp+10Ch] [bp-120h]
  _DWORD v79[3]; // [sp+118h] [bp-114h] BYREF
  void *v80; // [sp+124h] [bp-108h]
  _DWORD v81[6]; // [sp+130h] [bp-FCh] BYREF
  int v82; // [sp+148h] [bp-E4h] BYREF
  int v83; // [sp+14Ch] [bp-E0h]
  __int16 v84; // [sp+150h] [bp-DCh]
  __int16 v85; // [sp+152h] [bp-DAh]
  void *v86; // [sp+154h] [bp-D8h]
  int v87; // [sp+158h] [bp-D4h]
  int v88; // [sp+15Ch] [bp-D0h] BYREF
  int v89; // [sp+160h] [bp-CCh]
  int v90; // [sp+164h] [bp-C8h] BYREF
  int v91; // [sp+168h] [bp-C4h] BYREF
  glitch::video::CVertexStreams *v92; // [sp+16Ch] [bp-C0h] BYREF
  glitch::IReferenceCounted *v93; // [sp+170h] [bp-BCh] BYREF
  int v94; // [sp+174h] [bp-B8h] BYREF
  int v95; // [sp+178h] [bp-B4h] BYREF
  _DWORD v96[5]; // [sp+194h] [bp-98h] BYREF
  void *v97; // [sp+1A8h] [bp-84h]
  _DWORD v98[5]; // [sp+1ACh] [bp-80h] BYREF
  void *v99; // [sp+1C0h] [bp-6Ch]
  _DWORD v100[5]; // [sp+1C4h] [bp-68h] BYREF
  void *v101; // [sp+1D8h] [bp-54h]
  _DWORD v102[5]; // [sp+1DCh] [bp-50h] BYREF
  void *v103; // [sp+1F0h] [bp-3Ch]
  _DWORD v104[5]; // [sp+1F4h] [bp-38h] BYREF
  void *v105; // [sp+208h] [bp-24h]
  _DWORD v106[5]; // [sp+20Ch] [bp-20h] BYREF
  void *p; // [sp+220h] [bp-Ch]

  glitch::io::CZipWriter::CZipWriter((glitch::io::CZipWriter *)v61, a2);
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[26];
  v12 = a1[28];
  v13 = a1[15];
  v14 = a1[16];
  v15 = a1[18];
  v16 = -858993459 * ((a1[9] - a1[8]) >> 2);
  v17 = a1[17];
  v51 = a1[19];
  v63 = a1[14];
  if ( a4 == 2 )
    a4 = 0;
  qmemcpy(v62, "BAT", 3);
  v69 = v11;
  v70 = v16;
  v71 = (v10 - v9) >> 3;
  v72 = v12;
  v64 = v13;
  v65 = v14;
  v66 = v17;
  v67 = v15;
  v68 = v51;
  v86 = nullptr;
  v87 = 0;
  v88 = 0;
  v62[3] = a4;
  if ( a4 == 1 )
  {
    glitch::os::byteswap<float>(v81, &v63);
    BYTE1(v89) = BYTE2(v69);
    BYTE2(v89) = BYTE1(v69);
    LOBYTE(v89) = HIBYTE(v69);
    HIBYTE(v89) = v69;
    v49 = v89;
    BYTE2(v89) = BYTE1(v70);
    v63 = v81[0];
    LOBYTE(v89) = HIBYTE(v70);
    v64 = v81[1];
    BYTE1(v89) = BYTE2(v70);
    HIBYTE(v89) = v70;
    v65 = v81[2];
    v69 = v49;
    v66 = v81[3];
    v67 = v81[4];
    v68 = v81[5];
    v70 = v89;
    LOBYTE(v89) = HIBYTE(v71);
    HIBYTE(v89) = v71;
    BYTE1(v89) = BYTE2(v71);
    BYTE2(v89) = BYTE1(v71);
    v50 = v89;
    LOBYTE(v89) = HIBYTE(v72);
    BYTE1(v89) = BYTE2(v72);
    BYTE2(v89) = BYTE1(v72);
    HIBYTE(v89) = v72;
    v71 = v50;
    v56 = 1;
    v72 = v89;
  }
  else
  {
    v56 = 0;
  }
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v106,
    "header.bin");
  glitch::io::CZipWriter::addNewFile(v61, v106, v62, 44);
  if ( p != v106 && p )
    GlitchFree(p);
  if ( v56 )
  {
    v18 = a1[5];
    v19 = a1[6];
    if ( (unsigned int)(v19 - v18) >> 3 )
    {
      v20 = 0;
      do
      {
        v21 = *(_DWORD *)(v18 + 8 * v20);
        v22 = v18 + 8 * v20;
        v23 = *(_DWORD *)a2;
        v82 = v21;
        v83 = *(_DWORD *)(v22 + 4);
        LOBYTE(v89) = HIBYTE(v21);
        ++v20;
        BYTE1(v89) = BYTE2(v21);
        BYTE2(v89) = BYTE1(v21);
        HIBYTE(v89) = v21;
        v82 = v89;
        LOBYTE(v89) = HIBYTE(v83);
        BYTE1(v89) = BYTE2(v83);
        BYTE2(v89) = BYTE1(v83);
        HIBYTE(v89) = v83;
        v83 = v89;
        (*(void (__fastcall **)(glitch::io::IWriteFile *))(v23 + 12))(a2);
        v18 = a1[5];
        v19 = a1[6];
      }
      while ( v20 < (v19 - v18) >> 3 );
    }
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v104,
      "segments_table.bin");
    glitch::io::CZipWriter::addNewFile(v61, v104, a1[5], (a1[6] - a1[5]) & 0xFFFFFFF8);
    if ( v105 != v104 && v105 )
      GlitchFree(v105);
    v19 = a1[6];
    v18 = a1[5];
  }
  glitch::io::CMemoryWriteFile::CMemoryWriteFile((glitch::io::CMemoryWriteFile *)v79, (v19 - v18) & 0xFFFFFFF8);
  glitch::io::CMemoryWriteFile::CMemoryWriteFile(
    (glitch::io::CMemoryWriteFile *)v77,
    -1717986916 * ((a1[9] - a1[8]) >> 2));
  glitch::io::CMemoryWriteFile::CMemoryWriteFile((glitch::io::CMemoryWriteFile *)v75, a1[28] * ((a1[6] - a1[5]) >> 3));
  glitch::io::CMemoryWriteFile::CMemoryWriteFile((glitch::io::CMemoryWriteFile *)v73, 200 * ((a1[9] - a1[8]) >> 2));
  v24 = a1[8];
  if ( -858993459 * ((a1[9] - v24) >> 2) )
  {
    v55 = 0;
    v57 = 0;
    for ( i = 0; ; i = v58 + v60 * v59 )
    {
      v94 = 0;
      v95 = 0;
      v26 = *(glitch::IReferenceCounted **)(v24 + v55);
      v27 = v24 + v55;
      v93 = v26;
      if ( v26 )
        ++*((_DWORD *)v26 + 1);
      glitch::io::save(&v93, v73, v56, &v95, &v94);
      if ( v93 )
        glitch::IReferenceCounted::drop(v93);
      v92 = *(glitch::video::CVertexStreams **)(*(_DWORD *)v27 + 20);
      if ( v92 )
        ++*(_DWORD *)v92;
      VertexStreamsStride = glitch::io::getVertexStreamsStride(&v92);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v92);
      v91 = i + v95;
      v58 = i + v95 + v94 + *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v27 + 20) + 8) * VertexStreamsStride;
      v90 = v58;
      v52 = *(unsigned __int16 *)(*(_DWORD *)v27 + 44);
      v28 = *(_DWORD *)(*(_DWORD *)v27 + 32);
      qmemcpy(&v82, "ABAT", sizeof(v82));
      v60 = v28;
      v29 = glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[v52];
      HIWORD(v83) = *(_WORD *)(v27 + 16);
      v59 = v29;
      LOWORD(v83) = *(_WORD *)(v27 + 14) - *(_WORD *)(v27 + 12);
      v84 = 30 * glitch::scene::getNbVertexAttributeMapsDataSize(v27 + 8);
      if ( v56 )
      {
        LOBYTE(v89) = HIBYTE(v83);
        BYTE1(v89) = BYTE2(v83);
        HIWORD(v83) = v89;
        LOBYTE(v89) = BYTE1(v83);
        BYTE1(v89) = v83;
        LOWORD(v83) = v89;
        LOBYTE(v89) = HIBYTE(v84);
        BYTE1(v89) = v84;
        v84 = v89;
        LOBYTE(v89) = HIBYTE(v85);
        BYTE1(v89) = v85;
        v85 = v89;
      }
      glitch::io::CMemoryWriteFile::write((glitch::io::CMemoryWriteFile *)v77, &v82, 0xCu);
      v30 = *(_DWORD *)(v27 + 8);
      v31 = *(_DWORD *)(v30 + 4);
      v32 = *(unsigned __int8 *)(v31 + 16);
      if ( *(_BYTE *)(v31 + 16) )
      {
        v33 = *(_DWORD *)(v31 + 24);
        v34 = 0;
        do
        {
          v35 = 12 * v34;
          v36 = v33 + 12 * v34;
          if ( *(_BYTE *)(v36 + 4) )
          {
            v37 = 0;
            do
            {
              v38 = v30 + 330382100 * ((int)(*(_DWORD *)(v36 + 8) + 52 * v37 - *(_DWORD *)(v31 + 28)) >> 2);
              v37 = (unsigned __int8)(v37 + 1);
              glitch::io::CMemoryWriteFile::write(
                (glitch::io::CMemoryWriteFile *)v77,
                (const void *)(*(_DWORD *)(v38 + 8) + 4),
                0x1Eu);
              v30 = *(_DWORD *)(v27 + 8);
              v31 = *(_DWORD *)(v30 + 4);
              v33 = *(_DWORD *)(v31 + 24);
              v36 = v33 + v35;
            }
            while ( *(unsigned __int8 *)(v33 + v35 + 4) > v37 );
            v32 = *(unsigned __int8 *)(v31 + 16);
          }
          v34 = (unsigned __int8)(v34 + 1);
        }
        while ( v32 > v34 );
      }
      v39 = *(unsigned __int16 *)(v27 + 12);
      if ( *(unsigned __int16 *)(v27 + 14) > v39 )
      {
        v54 = v27;
        do
        {
          v40 = a1[2] + a1[28] * v39;
          glitch::scene::CBatchMesh::SSegment::save(
            (glitch::scene::CBatchMesh::SSegment *)v40,
            (glitch::io::IWriteFile *)v75,
            v56);
          (*(void (__fastcall **)(_DWORD *, int, _DWORD *, int))(*a1 + 64))(a1, v40 + 44, v75, v56);
          glitch::io::CMemoryWriteFile::write((glitch::io::CMemoryWriteFile *)v79, &v91, 4u);
          glitch::io::CMemoryWriteFile::write((glitch::io::CMemoryWriteFile *)v79, &v90, 4u);
          v91 += (unsigned __int16)(*(_WORD *)(v40 + 38) - *(_WORD *)(v40 + 36)) * VertexStreamsStride;
          v39 = (unsigned __int16)(v39 + 1);
          v90 += glitch::video::getIndexTypeSize(glitch::video::E_INDEX_TYPE)::sizes[v52]
               * (*(_DWORD *)(v40 + 20) - *(_DWORD *)(v40 + 16));
        }
        while ( *(unsigned __int16 *)(v54 + 14) > (unsigned int)(unsigned __int16)v39 );
      }
      v24 = a1[8];
      ++v57;
      v55 += 20;
      if ( v57 >= -858993459 * ((a1[9] - v24) >> 2) )
        break;
    }
  }
  if ( a6 )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v102,
      "segment_streaming_info.bin");
    Buffer = glitch::io::CMemoryWriteFile::getBuffer((glitch::io::CMemoryWriteFile *)v79);
    BufferSize = glitch::io::CMemoryWriteFile::getBufferSize((glitch::io::CMemoryWriteFile *)v79);
    glitch::io::CZipWriter::addNewFile(v61, v102, Buffer, BufferSize);
    if ( v103 != v102 )
    {
      if ( v103 )
        GlitchFree(v103);
    }
  }
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v100,
    "batch_info.bin");
  v41 = glitch::io::CMemoryWriteFile::getBuffer((glitch::io::CMemoryWriteFile *)v77);
  v42 = glitch::io::CMemoryWriteFile::getBufferSize((glitch::io::CMemoryWriteFile *)v77);
  glitch::io::CZipWriter::addNewFile(v61, v100, v41, v42);
  if ( v101 != v100 && v101 )
    GlitchFree(v101);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v98,
    "segments_info.bin");
  v43 = glitch::io::CMemoryWriteFile::getBuffer((glitch::io::CMemoryWriteFile *)v75);
  v44 = glitch::io::CMemoryWriteFile::getBufferSize((glitch::io::CMemoryWriteFile *)v75);
  glitch::io::CZipWriter::addNewFile(v61, v98, v43, v44);
  if ( v99 != v98 && v99 )
    GlitchFree(v99);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v96,
    "batch_data.bin");
  v45 = glitch::io::CMemoryWriteFile::getBuffer((glitch::io::CMemoryWriteFile *)v73);
  v46 = glitch::io::CMemoryWriteFile::getBufferSize((glitch::io::CMemoryWriteFile *)v73);
  glitch::io::CZipWriter::addNewFile(v61, v96, v45, v46);
  if ( v97 != v96 && v97 )
    GlitchFree(v97);
  v73[0] = off_987838;
  if ( v74 )
    GlitchFree(v74);
  v73[0] = off_95B720;
  v75[0] = off_987838;
  if ( v76 )
    GlitchFree(v76);
  v75[0] = off_95B720;
  v77[0] = off_987838;
  if ( v78 )
    GlitchFree(v78);
  v77[0] = off_95B720;
  v79[0] = off_987838;
  if ( v80 )
    GlitchFree(v80);
  v79[0] = off_95B720;
  if ( v86 )
    std::allocator<unsigned short>::deallocate((int)&v88, v86, (v88 - (int)v86) >> 1);
  glitch::io::CZipWriter::~CZipWriter((glitch::io::CZipWriter *)v61);
}


// ===== 57d85c std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(uchar *,uint,uchar const&) =====
void __fastcall std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        char *a2,
        size_t a3,
        char *a4)
{
  int v8; // r12
  size_t v9; // r8
  size_t v10; // r7
  char *v11; // r0
  char *v12; // r8
  size_t v13; // r10
  char *v14; // r5
  size_t v15; // r10

  if ( a3 )
  {
    v8 = a1[1];
    if ( a3 <= a1[2] - v8 )
    {
      std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v9 = v8 - *a1;
      if ( a3 > ~v9 )
        __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      if ( a3 < v9 )
        v10 = 2 * v9;
      else
        v10 = v9 + a3;
      if ( v9 > v10 )
        v10 = -1;
      v11 = (char *)GlitchAlloc(v10, 0);
      v12 = v11;
      if ( a2 != (char *)*a1 )
      {
        v13 = (size_t)&a2[-*a1];
        v11 = (char *)memmove(v11, (const void *)*a1, v13) + v13;
      }
      v14 = &v11[a3];
      LC_API_MEMSET_0(v11, (unsigned __int8)*a4, v14 - v11);
      v15 = a1[1] - (_DWORD)a2;
      if ( v15 )
        v14 = (char *)memmove(v14, a2, v15) + v15;
      GlitchFree((void *)*a1);
      a1[1] = v14;
      a1[2] = &v12[v10];
      *a1 = v12;
    }
  }
}


// ===== 57d94c std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,uchar const&) =====
void __fastcall std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  unsigned int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = v3 - *(_DWORD *)a1;
  if ( a2 >= v5 )
  {
    std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (_DWORD *)a1,
      *(char **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 57d98c glitch::scene::CBatchMesh::addSegment(ushort,uint,short) =====
unsigned int __fastcall glitch::scene::CBatchMesh::addSegment(
        glitch::scene::CBatchMesh *this,
        unsigned __int16 a2,
        unsigned int a3,
        __int16 a4)
{
  int v5; // lr
  int v6; // r0
  int v9; // r11
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r7
  __int16 v14; // r8
  int v15; // r8
  int v16; // r2
  int v17; // r0
  unsigned int v18; // r1
  unsigned int v19; // r0
  int *v20; // r1
  unsigned int v21; // r6
  char *v22; // r12
  int v23; // r1
  int v24; // r11
  int *v25; // r2
  int *v26; // r3
  int *v27; // r1
  _DWORD v30[3]; // [sp+10h] [bp-3Ch] BYREF
  int *v31; // [sp+1Ch] [bp-30h]
  int v32; // [sp+20h] [bp-2Ch]
  int v33; // [sp+24h] [bp-28h]
  int v34; // [sp+28h] [bp-24h]
  int v35; // [sp+2Ch] [bp-20h]
  char v36; // [sp+30h] [bp-1Ch]
  char v37; // [sp+31h] [bp-1Bh]
  __int16 v38; // [sp+32h] [bp-1Ah]
  __int16 v39; // [sp+34h] [bp-18h]
  __int16 v40; // [sp+36h] [bp-16h]
  __int16 v41; // [sp+38h] [bp-14h]
  int v42; // [sp+3Ch] [bp-10h] BYREF
  int v43; // [sp+40h] [bp-Ch]
  char v44[3]; // [sp+44h] [bp-8h] BYREF
  char v45; // [sp+47h] [bp-5h] BYREF

  v5 = *((_DWORD *)this + 9);
  v6 = *((_DWORD *)this + 8);
  v9 = -858993459 * ((v5 - v6) >> 2) - 1;
  v10 = v6 + 20 * v9;
  v11 = *(unsigned __int16 *)(v10 + 14);
  v12 = v11 - *(unsigned __int16 *)(v10 + 12);
  if ( v12 )
  {
    v15 = *((_DWORD *)this + 2)
        + *((_DWORD *)this + 28)
        * (*(unsigned __int16 *)(v6 + 20 * *(_DWORD *)(*((_DWORD *)this + 5) + 8 * (v11 - 1)) + 12)
         + *(_DWORD *)(*((_DWORD *)this + 5) + 8 * (v11 - 1) + 4));
    v13 = *(_DWORD *)(v15 + 20);
    v14 = *(_WORD *)(v15 + 38);
  }
  else
  {
    v13 = 0;
    v14 = 0;
  }
  *(_WORD *)(v10 + 14) = v11 + 1;
  v16 = *((_DWORD *)this + 2);
  v17 = *((_DWORD *)this + 3);
  v18 = *((_DWORD *)this + 28);
  v43 = v12;
  v42 = v9;
  v19 = (v17 - v16) / v18;
  v20 = *((int **)this + 6);
  v21 = v19;
  v22 = (char *)this + 20;
  if ( v20 == *((int **)this + 7) )
  {
    std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (_DWORD *)this + 5,
      (int)v20,
      &v42,
      (int)v44,
      1u,
      1u);
    v22 = (char *)this + 20;
  }
  else
  {
    *v20 = v9;
    v20[1] = v43;
    *((_DWORD *)this + 6) += 8;
  }
  v23 = *((_DWORD *)this + 28);
  v24 = *((_DWORD *)this + 3) - *((_DWORD *)this + 2);
  v36 = 1;
  v30[2] = 0;
  v31 = nullptr;
  v35 = 0;
  v37 = 0;
  v30[0] = v22;
  v38 = a4;
  v32 = v13;
  v34 = v13 + a3;
  v39 = v14;
  v41 = v14 + a2;
  v30[1] = v21;
  v33 = v13 + a3;
  v40 = v14 + a2;
  v45 = 0;
  std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 8,
    v24 + v23,
    &v45);
  memcpy((void *)(*((_DWORD *)this + 2) + v24), v30, *((_DWORD *)this + 28));
  if ( v37 )
  {
    v25 = v31;
    v26 = (int *)glitch::memory::Aabbox3dfPool;
    if ( glitch::memory::Aabbox3dfPool && (unsigned int)v31 >= glitch::memory::Aabbox3dfPool )
    {
      do
      {
        v27 = v26;
        v26 = (int *)*v26;
      }
      while ( v26 && v31 >= v26 );
    }
    else
    {
      v27 = &glitch::memory::Aabbox3dfPool;
    }
    *v31 = (int)v26;
    *v27 = (int)v25;
  }
  return v21;
}


// ===== 57db94 glitch::scene::CBatchMesh::load(glitch::io::IReadFile *,glitch::video::IVideoDriver *,glitch::io::IFileSystem *,glitch::collada::CRootSceneNode *,glitch::collada::CColladaFactory *) =====
void __fastcall glitch::scene::CBatchMesh::load(
        glitch::scene::CBatchMesh *this,
        glitch::io::IReadFile *a2,
        glitch::video::IVideoDriver *a3,
        glitch::io::IFileSystem *a4,
        glitch::collada::CRootSceneNode *a5,
        glitch::collada::CColladaFactory *a6)
{
  glitch::io::IReadFile *v6; // r6
  glitch::collada::CColladaDatabase *v7; // r5
  glitch::io::CMemoryReadFile *v8; // r0
  _DWORD *v9; // r12
  unsigned int v10; // r12
  int v11; // r12
  int v12; // r0
  int v13; // lr
  int v14; // r2
  _DWORD *v15; // r3
  int v16; // r4
  unsigned int v17; // r7
  glitch::io::CMemoryReadFile *v18; // r5
  unsigned int v19; // r3
  _DWORD *v20; // r12
  _DWORD *v21; // r1
  _DWORD *v22; // r2
  int v23; // r1
  glitch::io::CMemoryReadFile *v24; // r4
  __int16 v25; // r5
  __int16 v26; // r12
  __int16 v27; // lr
  glitch::video::CMaterial *v28; // r2
  glitch::video::CMaterialVertexAttributeMap *v29; // r2
  glitch::video::CMaterialVertexAttributeMap *v30; // r7
  int v31; // r3
  unsigned int v32; // r2
  int v33; // r3
  int v34; // r5
  unsigned int v35; // r9
  _DWORD *v36; // r6
  void *v37; // r0
  int i; // r6
  int v40; // r3
  int v41; // r2
  unsigned int v42; // r1
  __int16 v43; // r3
  unsigned int v44; // r6
  _DWORD *v45; // r5
  glitch::scene::CBatchMesh::SSegment *v46; // r5
  int v47; // r2
  int *v48; // r3
  glitch::IReferenceCounted *v49; // r3
  glitch::IReferenceCounted *v50; // r0
  int *v51; // r1
  glitch::collada::CRootSceneNode *v52; // [sp+0h] [bp-12Ch]
  unsigned int v53; // [sp+8h] [bp-124h]
  _BOOL4 v55; // [sp+18h] [bp-114h]
  glitch::collada::CColladaDatabase *v56; // [sp+24h] [bp-108h]
  unsigned int v57; // [sp+28h] [bp-104h]
  _DWORD *v58; // [sp+30h] [bp-FCh]
  glitch::io::CMemoryReadFile *v59; // [sp+34h] [bp-F8h]
  int v60; // [sp+38h] [bp-F4h]
  glitch::io::CMemoryReadFile *v62; // [sp+48h] [bp-E4h]
  _DWORD *v63; // [sp+50h] [bp-DCh] BYREF
  int v64; // [sp+54h] [bp-D8h]
  int v65; // [sp+58h] [bp-D4h]
  int *v66; // [sp+5Ch] [bp-D0h]
  int v67; // [sp+60h] [bp-CCh]
  int v68; // [sp+64h] [bp-C8h]
  int v69; // [sp+68h] [bp-C4h]
  int v70; // [sp+6Ch] [bp-C0h]
  char v71; // [sp+70h] [bp-BCh]
  char v72; // [sp+71h] [bp-BBh]
  __int16 v73; // [sp+72h] [bp-BAh]
  __int16 v74; // [sp+74h] [bp-B8h]
  __int16 v75; // [sp+76h] [bp-B6h]
  __int16 v76; // [sp+78h] [bp-B4h]
  char v77[3]; // [sp+7Ch] [bp-B0h] BYREF
  char v78; // [sp+7Fh] [bp-ADh]
  int v79; // [sp+80h] [bp-ACh] BYREF
  int v80; // [sp+84h] [bp-A8h]
  int v81; // [sp+88h] [bp-A4h]
  int v82; // [sp+8Ch] [bp-A0h]
  int v83; // [sp+90h] [bp-9Ch]
  int v84; // [sp+94h] [bp-98h]
  _DWORD *v85; // [sp+98h] [bp-94h]
  _DWORD *v86; // [sp+9Ch] [bp-90h]
  unsigned int v87; // [sp+A0h] [bp-8Ch]
  _DWORD *v88; // [sp+A4h] [bp-88h]
  _BYTE v89[32]; // [sp+A8h] [bp-84h] BYREF
  _DWORD v90[6]; // [sp+C8h] [bp-64h] BYREF
  glitch::IReferenceCounted *v91; // [sp+E0h] [bp-4Ch] BYREF
  glitch::video::CMaterial *v92; // [sp+E4h] [bp-48h]
  glitch::video::CMaterialVertexAttributeMap *v93; // [sp+E8h] [bp-44h]
  __int16 v94; // [sp+ECh] [bp-40h]
  __int16 v95; // [sp+EEh] [bp-3Eh]
  __int16 v96; // [sp+F0h] [bp-3Ch]
  _DWORD *v97; // [sp+F4h] [bp-38h] BYREF
  _DWORD *v98; // [sp+F8h] [bp-34h]
  __int16 v99; // [sp+FCh] [bp-30h]
  unsigned __int16 v100; // [sp+FEh] [bp-2Eh]
  _DWORD v101[2]; // [sp+100h] [bp-2Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v102; // [sp+108h] [bp-24h] BYREF
  glitch::video::CMaterial *v103; // [sp+10Ch] [bp-20h] BYREF
  glitch::IReferenceCounted *v104; // [sp+110h] [bp-1Ch] BYREF
  _DWORD *v105; // [sp+114h] [bp-18h] BYREF
  glitch::video::CVertexStreams *v106; // [sp+118h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v107; // [sp+11Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v108; // [sp+120h] [bp-Ch] BYREF
  char v109[2]; // [sp+124h] [bp-8h] BYREF
  char v110; // [sp+126h] [bp-6h] BYREF
  char v111; // [sp+127h] [bp-5h] BYREF

  glitch::io::CZipReader::CZipReader((glitch::io::CZipReader *)v89, a2, 0, 0);
  v6 = glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v89, "materials.bdae");
  if ( v6 )
  {
    if ( a6 )
    {
      v7 = (glitch::collada::CColladaDatabase *)operator new(8u, 0);
      glitch::collada::CColladaDatabase::CColladaDatabase(v7, v6, a6);
      v56 = v7;
    }
    else
    {
      v56 = (glitch::collada::CColladaDatabase *)operator new(8u, 0);
      glitch::collada::CColladaDatabase::CColladaDatabase(
        v56,
        v6,
        (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
    }
    v60 = 1;
  }
  else
  {
    v56 = nullptr;
    v60 = 0;
  }
  v8 = glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v89, "header.bin");
  v81 = -1082130432;
  v79 = -1082130432;
  v80 = -1082130432;
  v84 = 1065353216;
  v82 = 1065353216;
  v83 = 1065353216;
  (*(void (__fastcall **)(glitch::io::CMemoryReadFile *, char *, int))(*(_DWORD *)v8 + 12))(v8, v77, 44);
  v55 = v78 == 1;
  if ( v78 == 1 )
  {
    glitch::os::byteswap<float>(v90, &v79);
    BYTE1(v63) = BYTE2(v85);
    BYTE2(v63) = BYTE1(v85);
    LOBYTE(v63) = HIBYTE(v85);
    HIBYTE(v63) = (_BYTE)v85;
    v9 = v63;
    LOBYTE(v63) = HIBYTE(v86);
    BYTE1(v63) = BYTE2(v86);
    BYTE2(v63) = BYTE1(v86);
    HIBYTE(v63) = (_BYTE)v86;
    v79 = v90[0];
    v85 = v9;
    v80 = v90[1];
    v81 = v90[2];
    v82 = v90[3];
    v83 = v90[4];
    v84 = v90[5];
    v86 = v63;
    LOBYTE(v63) = HIBYTE(v87);
    BYTE1(v63) = BYTE2(v87);
    BYTE2(v63) = BYTE1(v87);
    HIBYTE(v63) = v87;
    v10 = (unsigned int)v63;
    LOBYTE(v63) = HIBYTE(v88);
    BYTE1(v63) = BYTE2(v88);
    BYTE2(v63) = BYTE1(v88);
    HIBYTE(v63) = (_BYTE)v88;
    v87 = v10;
    v88 = v63;
  }
  v11 = v81;
  v12 = v82;
  v13 = v80;
  v14 = v84;
  v15 = v85;
  v16 = v79;
  *((_DWORD *)this + 18) = v83;
  v17 = 0;
  *((_DWORD *)this + 16) = v11;
  *((_DWORD *)this + 14) = v16;
  *((_DWORD *)this + 15) = v13;
  *((_DWORD *)this + 17) = v12;
  *((_DWORD *)this + 19) = v14;
  *((_DWORD *)this + 26) = v15;
  *((_BYTE *)this + 116) = 0;
  v18 = glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v89, "segments_table.bin");
  if ( v55 )
  {
    v58 = (_DWORD *)((char *)this + 20);
    while ( 1 )
    {
      v19 = v87;
      if ( v17 >= v87 )
        break;
      (*(void (__fastcall **)(glitch::io::CMemoryReadFile *, _DWORD **, int))(*(_DWORD *)v18 + 12))(v18, &v97, 8);
      LOBYTE(v63) = HIBYTE(v97);
      BYTE1(v63) = BYTE2(v97);
      BYTE2(v63) = BYTE1(v97);
      HIBYTE(v63) = (_BYTE)v97;
      v20 = v63;
      BYTE2(v63) = BYTE1(v98);
      LOBYTE(v63) = HIBYTE(v98);
      BYTE1(v63) = BYTE2(v98);
      HIBYTE(v63) = (_BYTE)v98;
      v21 = *((_DWORD **)this + 6);
      v22 = *((_DWORD **)this + 7);
      v97 = v20;
      v98 = v63;
      if ( v21 == v22 )
      {
        ++v17;
        std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          v58,
          (int)v21,
          &v97,
          (int)v109,
          1u,
          1u);
      }
      else
      {
        *v21 = v20;
        ++v17;
        v21[1] = v98;
        *((_DWORD *)this + 6) += 8;
      }
    }
  }
  else
  {
    v58 = (_DWORD *)((char *)this + 20);
    v101[0] = 0;
    v101[1] = 0;
    std::vector<glitch::scene::CBatchMesh::SSegmentInfo,glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (_DWORD *)this + 5,
      v87,
      v101);
    (*(void (__fastcall **)(glitch::io::CMemoryReadFile *, _DWORD, unsigned int))(*(_DWORD *)v18 + 12))(
      v18,
      *((_DWORD *)this + 5),
      8 * v87);
    v19 = v87;
  }
  v23 = *((_DWORD *)this + 28);
  v111 = 0;
  std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 8,
    v19 * v23,
    &v111);
  v57 = 0;
  v24 = glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v89, "batch_info.bin");
  v59 = glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v89, "segments_info.bin");
  v62 = glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v89, "batch_data.bin");
  while ( v57 < (unsigned int)v86 )
  {
    (*(void (__fastcall **)(glitch::io::CMemoryReadFile *, _DWORD **, int))(*(_DWORD *)v24 + 12))(v24, &v97, 12);
    if ( v55 )
    {
      LOBYTE(v63) = HIBYTE(v98);
      BYTE1(v63) = BYTE2(v98);
      v25 = (__int16)v63;
      LOBYTE(v63) = BYTE1(v98);
      BYTE1(v63) = (_BYTE)v98;
      v26 = (__int16)v63;
      LOBYTE(v63) = HIBYTE(v99);
      BYTE1(v63) = v99;
      v27 = (__int16)v63;
      LOBYTE(v63) = HIBYTE(v100);
      BYTE1(v63) = v100;
      HIWORD(v98) = v25;
      LOWORD(v98) = v26;
      v99 = v27;
      v100 = (unsigned __int16)v63;
    }
    glitch::scene::CBatchMesh::SBatch::SBatch((int)&v91);
    *((_BYTE *)this + 116) = 1;
    v96 = HIWORD(v98);
    if ( v60 )
    {
      v52 = a5;
      glitch::collada::CColladaDatabase::constructMaterial(
        (glitch::collada::CColladaDatabase *)&v108,
        v56,
        (int)a3,
        (glitch::collada::CRootSceneNode *)v100);
      v103 = v108;
      if ( v108 )
        ++*(_DWORD *)v108;
      v28 = v103;
      v103 = v92;
      v92 = v28;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v103);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v108);
    }
    glitch::video::CMaterialVertexAttributeMap::allocate(&v107, (char *)v92 + 4);
    v102 = v107;
    if ( v107 )
      ++*(_DWORD *)v107;
    v29 = v102;
    v102 = v93;
    v93 = v29;
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v102);
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v107);
    v30 = v93;
    v31 = *((_DWORD *)v93 + 1);
    v32 = *(unsigned __int8 *)(v31 + 16);
    if ( *(_BYTE *)(v31 + 16) )
    {
      v33 = *(_DWORD *)(v31 + 24);
      v53 = 0;
      do
      {
        v34 = 12 * v53;
        if ( *(_BYTE *)(v33 + 12 * v53 + 4) )
        {
          v35 = 0;
          do
          {
            v106 = nullptr;
            v36 = operator new(0x24u, 0);
            glitch::video::CVertexAttributeMap::CVertexAttributeMap(v36, &v106);
            v105 = v36;
            if ( v36 )
              ++*v36;
            glitch::video::CMaterialVertexAttributeMap::set(v30, v53, v35, &v105, v52);
            v37 = v105;
            if ( v105 )
            {
              if ( (*v105)-- == 1 )
                LC_API_FREE_0(v37);
            }
            boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v106);
            for ( i = 0; i != 30; ++i )
            {
              (*(void (__fastcall **)(glitch::io::CMemoryReadFile *, char *, int))(*(_DWORD *)v24 + 12))(v24, &v110, 1);
              v40 = *((_DWORD *)v93
                    + 82595525
                    * ((int)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v93 + 1) + 24) + v34 + 8)
                           + 52 * v35
                           - *(_DWORD *)(*((_DWORD *)v93 + 1) + 28)) >> 2)
                    + 2)
                  + i;
              *(_BYTE *)(v40 + 4) = v110;
            }
            v30 = v93;
            v35 = (unsigned __int8)(v35 + 1);
            v41 = *((_DWORD *)v93 + 1);
            v33 = *(_DWORD *)(v41 + 24);
          }
          while ( *(unsigned __int8 *)(v33 + v34 + 4) > v35 );
          v32 = *(unsigned __int8 *)(v41 + 16);
        }
        v42 = (unsigned __int8)(v53 + 1);
        v53 = v42;
      }
      while ( v32 > v42 );
    }
    v43 = (__int16)v98;
    if ( (_WORD)v98 )
    {
      v44 = 1;
      v63 = nullptr;
      v64 = 0;
      v65 = 0;
      v66 = nullptr;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v71 = 1;
      glitch::scene::CBatchMesh::SSegment::load((glitch::scene::CBatchMesh::SSegment *)&v63, v59, v55);
      v45 = (_DWORD *)(*((_DWORD *)this + 2) + *((_DWORD *)this + 28) * v64);
      v65 = 0;
      v63 = v58;
      v94 = v64;
      glitch::scene::CBatchMesh::SSegment::clone(v45, (const glitch::scene::CBatchMesh::SSegment *)&v63);
      (*(void (__fastcall **)(glitch::scene::CBatchMesh *, _DWORD *, glitch::io::CMemoryReadFile *, _BOOL4))(*(_DWORD *)this + 68))(
        this,
        v45 + 11,
        v59,
        v55);
      v43 = (__int16)v98;
      if ( (unsigned __int16)v98 > 1u )
      {
        v46 = (glitch::scene::CBatchMesh::SSegment *)((char *)v45 + *((_DWORD *)this + 28));
        do
        {
          glitch::scene::CBatchMesh::SSegment::load(v46, v59, v55);
          *((_DWORD *)v46 + 2) = 0;
          *(_DWORD *)v46 = v58;
          (*(void (__fastcall **)(glitch::scene::CBatchMesh *, _DWORD *, glitch::io::CMemoryReadFile *, _BOOL4))(*(_DWORD *)this + 68))(
            this,
            (_DWORD *)v46 + 11,
            v59,
            v55);
          v43 = (__int16)v98;
          ++v44;
          v46 = (glitch::scene::CBatchMesh::SSegment *)((char *)v46 + *((_DWORD *)this + 28));
        }
        while ( (unsigned __int16)v98 > v44 );
      }
      if ( v72 )
      {
        v47 = (int)v66;
        v48 = (int *)glitch::memory::Aabbox3dfPool;
        if ( glitch::memory::Aabbox3dfPool && (unsigned int)v66 >= glitch::memory::Aabbox3dfPool )
        {
          do
          {
            v51 = v48;
            v48 = (int *)*v48;
          }
          while ( v48 && v66 >= v48 );
          *v66 = (int)v48;
          *v51 = v47;
          v43 = (__int16)v98;
        }
        else
        {
          *v66 = glitch::memory::Aabbox3dfPool;
          v43 = (__int16)v98;
          glitch::memory::Aabbox3dfPool = v47;
        }
      }
    }
    v95 = v43 + v94;
    glitch::io::loadMB((glitch::io *)&v104, v62, v55, a3);
    v49 = v104;
    if ( v104 )
      ++*((_DWORD *)v104 + 1);
    v50 = v91;
    v91 = v49;
    if ( v50 )
      glitch::IReferenceCounted::drop(v50);
    if ( v104 )
      glitch::IReferenceCounted::drop(v104);
    std::vector<glitch::scene::CBatchMesh::SBatch,glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      (int)this + 32,
      (int *)&v91);
    glitch::scene::CBatchMesh::SBatch::~SBatch(&v91);
    ++v57;
  }
  if ( v56 )
  {
    glitch::collada::CColladaDatabase::~CColladaDatabase(v56);
    LC_API_FREE_0(v56);
  }
  glitch::io::CZipReader::~CZipReader((glitch::io::CZipReader *)v89);
}


// ===== 57e524 glitch::scene::CBatchSceneNode::getTransformedBoundingBox(void) =====
int __fastcall glitch::scene::CBatchSceneNode::getTransformedBoundingBox(glitch::scene::CBatchSceneNode *this)
{
  return (*(int (__fastcall **)(glitch::scene::CBatchSceneNode *))(*(_DWORD *)this + 48))(this);
}


// ===== 57e538 glitch::scene::CBatchSceneNode::getBoundingBox(void) =====
int __fastcall glitch::scene::CBatchSceneNode::getBoundingBox(glitch::scene::CBatchSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 36))(*((_DWORD *)this + 76));
}


// ===== 57e554 glitch::scene::CBatchSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CBatchSceneNode::getMaterialCount(glitch::scene::CBatchSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 16))(*((_DWORD *)this + 76));
}


// ===== 57e570 glitch::scene::CBatchSceneNode::getMaterial(uint) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CBatchSceneNode::getMaterial(
        glitch::scene::CBatchSceneNode *this,
        unsigned int a2)
{
  (*(void (__fastcall **)(glitch::scene::CBatchSceneNode *, _DWORD))(**(_DWORD **)(a2 + 304) + 24))(
    this,
    *(_DWORD *)(a2 + 304));
  return this;
}


// ===== 57e594 glitch::scene::CBatchSceneNode::getMesh(void) =====
_DWORD *__fastcall glitch::scene::CBatchSceneNode::getMesh(_DWORD *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 304);
  *this = v2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  return this;
}


// ===== 57e5b0 glitch::scene::CBatchSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&) =====
void glitch::scene::CBatchSceneNode::setMesh()
{
  ;
}


// ===== 57e5b4 glitch::scene::CBatchSceneNode::computeMaxIndices(uint) =====
int __fastcall glitch::scene::CBatchSceneNode::computeMaxIndices(glitch::scene::CBatchSceneNode *this, unsigned int a2)
{
  int v2; // r2
  int *v3; // r3
  int *v4; // r12
  int result; // r0
  int v6; // t1

  v2 = *((_DWORD *)this + 86);
  v3 = (int *)(v2 + 4 * *(_DWORD *)(v2 + 20 * a2 + 16));
  v4 = &v3[*(_DWORD *)(v2 + 20 * a2)];
  if ( v4 == v3 )
    return 0;
  result = 0;
  do
  {
    v6 = *v3++;
    result += *(_DWORD *)(v6 + 20) - *(_DWORD *)(v6 + 16);
  }
  while ( v4 != v3 );
  return result;
}


// ===== 57e604 glitch::scene::CBatchSceneNode::clearVisibleSegments(void) =====
int __fastcall glitch::scene::CBatchSceneNode::clearVisibleSegments(glitch::scene::CBatchSceneNode *this)
{
  int result; // r0
  int v3; // r3
  int i; // r2

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 16))(*((_DWORD *)this + 76));
  if ( result )
  {
    v3 = 0;
    for ( i = 0; i != result; ++i )
    {
      *(_DWORD *)(*((_DWORD *)this + 86) + v3) = 0;
      v3 += 20;
    }
  }
  return result;
}


// ===== 57e650 glitch::scene::CBatchSceneNode::updateInfo(uint,uint) =====
int __fastcall glitch::scene::CBatchSceneNode::updateInfo(
        glitch::scene::CBatchSceneNode *this,
        unsigned int a2,
        unsigned int a3)
{
  int result; // r0
  unsigned int v5; // r12
  int v6; // r5
  int v7; // r4
  _DWORD *v8; // r5
  int v9; // r7
  int v10; // r4

  if ( a2 >= a3 )
    return 0;
  v5 = 20 * a2;
  result = 0;
  do
  {
    v6 = *((_DWORD *)this + 86);
    ++a2;
    v7 = *(_DWORD *)(v6 + v5);
    v8 = (_DWORD *)(v6 + v5);
    v5 += 20;
    result += v7;
    if ( v7 )
    {
      v9 = glitch::os::Timer::TickCount;
      if ( v8[1] == v7 )
        v10 = v8[3];
      else
        v10 = v8[3] | 1;
      v8[3] = v10;
      v8[2] = v9;
    }
  }
  while ( a3 > a2 );
  return result;
}


// ===== 57e6d8 `global constructor keyed to'.._source_glitch_scene_CBatchSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CBatchSceneNode.cpp()
{
  dword_9F682C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6828 = 1056964608;
}


// ===== 57e6f8 glitch::scene::CBatchSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CBatchSceneNode::serializeAttributes(int result, int a2)
{
  int v3; // r5

  v3 = result;
  if ( a2 )
  {
    glitch::scene::ISceneNode::serializeAttributes();
    (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
      a2,
      "SegmentAutomaticCulling",
      *(_DWORD *)(v3 + 312),
      &glitch::scene::AutomaticCullingNames,
      0);
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
      a2,
      "RegisterSolidBatchesOnce",
      *(unsigned __int8 *)(v3 + 328),
      0);
    (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
      a2,
      "HasVisibleIndexCache",
      *(unsigned __int8 *)(v3 + 336),
      0);
    (*(void (__fastcall **)(int, const char *, _DWORD, int))(*(_DWORD *)a2 + 76))(
      a2,
      "Max index count (solid)",
      *(_DWORD *)(v3 + 316),
      1);
    (*(void (__fastcall **)(int, const char *, _DWORD, int))(*(_DWORD *)a2 + 76))(
      a2,
      "Max index count (transparent)",
      *(_DWORD *)(v3 + 320),
      1);
    return (*(int (__fastcall **)(int, const char *, _DWORD, int))(*(_DWORD *)a2 + 76))(
             a2,
             "Solid batch count",
             *(_DWORD *)(v3 + 324),
             1);
  }
  return result;
}


// ===== 57e800 glitch::scene::CBatchSceneNode::registerSolidBatches(void) =====
int __fastcall glitch::scene::CBatchSceneNode::registerSolidBatches(int this)
{
  int v1; // r12
  int v2; // r5
  unsigned int v3; // r8
  int v4; // r7
  int v5; // r3
  int v6; // r10
  int v7; // r3
  _DWORD *v8; // r4
  int v9; // r9
  void (__fastcall *v10)(int, int, glitch::video::CMaterial **, unsigned int, int, _DWORD, int); // r6
  int v11; // [sp+10h] [bp-14h]
  glitch::video::CMaterial *v12[2]; // [sp+1Ch] [bp-8h] BYREF

  if ( *(_DWORD *)(this + 324) )
  {
    v1 = 1968;
    v2 = 0;
    v3 = 1;
    v4 = this;
    while ( 1 )
    {
      v6 = *(_DWORD *)(v4 + 344);
      v7 = *(_DWORD *)(v6 + v2);
      v8 = (_DWORD *)(v6 + v2);
      if ( v7 )
      {
        v9 = *(_DWORD *)(v4 + 272);
        v10 = *(void (__fastcall **)(int, int, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(*(_DWORD *)v9 + 36);
        v11 = v1;
        (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**(_DWORD **)(v4 + 304) + 24))(
          v12,
          *(_DWORD *)(v4 + 304),
          v3 - 1);
        v10(v9, v4, v12, v3, 4, 0, 0x7FFFFFFF);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v12);
        v7 = *(_DWORD *)(v6 + v2);
        v1 = v11;
      }
      this = v8[1];
      v2 += 20;
      v5 = this == v7 ? v8[3] : v8[3] | 1;
      v8[2] = (*(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v1))->d_tag;
      v8[3] = v5;
      if ( *(_DWORD *)(v4 + 324) <= v3 )
        break;
      ++v3;
    }
  }
  return this;
}


// ===== 57e90c glitch::scene::CBatchMesh::getSegmentCenter(void *) =====
glitch::scene::CBatchMesh *__fastcall glitch::scene::CBatchMesh::getSegmentCenter(
        glitch::scene::CBatchMesh *this,
        _DWORD *a2,
        int a3)
{
  int v3; // r6
  int v4; // r12
  _DWORD *v5; // r8
  int v6; // r7
  int v7; // r1
  float *v9; // r5
  float v10; // r6
  float v11; // r0
  int v13; // r1
  float v14; // r5
  float v15; // r0
  float v16; // [sp+0h] [bp-18h] BYREF
  float v17; // [sp+4h] [bp-14h]
  float v18; // [sp+8h] [bp-10h]
  float v19; // [sp+Ch] [bp-Ch]
  float v20; // [sp+10h] [bp-8h]
  float v21; // [sp+14h] [bp-4h]

  v3 = a2[5];
  v4 = a2[8];
  v5 = (_DWORD *)(v3 + 8 * a3);
  v6 = a2[2];
  v7 = a2[28];
  v9 = *(float **)(v6 + v7 * (*(unsigned __int16 *)(v4 + 20 * *v5 + 12) + v5[1]) + 12);
  if ( v9 )
  {
    v10 = (float)(v9[2] + v9[5]) * 0.5;
    v11 = *v9 + v9[3];
    *((float *)this + 1) = (float)(v9[1] + v9[4]) * 0.5;
    *(float *)this = v11 * 0.5;
    *((float *)this + 2) = v10;
  }
  else
  {
    v18 = -1.0;
    v21 = 1.0;
    v16 = -1.0;
    v17 = -1.0;
    v19 = 1.0;
    v20 = 1.0;
    v13 = v7 * (*(unsigned __int16 *)(v4 + 20 * *(_DWORD *)(v3 + 8 * a3) + 12) + v5[1]);
    glitch::video::CVertexStreams::computeBoundingBox(
      *(_DWORD *)(*(_DWORD *)(v4 + 20 * *(_DWORD *)(**(_DWORD **)(v6 + v13) + 8 * *(_DWORD *)(v6 + v13 + 4))) + 20),
      *(unsigned __int16 *)(v6 + v13 + 36),
      *(unsigned __int16 *)(v6 + v13 + 38),
      &v16);
    v14 = (float)(v18 + v21) * 0.5;
    v15 = v16 + v19;
    *((float *)this + 1) = (float)(v17 + v20) * 0.5;
    *(float *)this = v15 * 0.5;
    *((float *)this + 2) = v14;
  }
  return this;
}


// ===== 57ea70 glitch::scene::CBatchSceneNode::registerTransparentBatches(void) =====
glitch::video::CMaterial **__fastcall glitch::scene::CBatchSceneNode::registerTransparentBatches(
        glitch::video::CMaterial **this)
{
  unsigned int v1; // r7
  glitch::video::CMaterial **v2; // r4
  glitch::video::CMaterial *v3; // r3
  int *v4; // r5
  int v5; // t1
  glitch::video::CMaterial *v6; // r8
  void (__fastcall *v7)(glitch::video::CMaterial *, glitch::video::CMaterial **, glitch::video::CMaterial **, unsigned int, int, _BYTE *, _DWORD); // r11
  int v8; // r3
  int *i; // [sp+10h] [bp-2Ch]
  int v10; // [sp+14h] [bp-28h]
  _DWORD *v11; // [sp+18h] [bp-24h]
  unsigned int v12; // [sp+20h] [bp-1Ch]
  _BYTE v13[12]; // [sp+28h] [bp-14h] BYREF
  glitch::video::CMaterial *v14[2]; // [sp+34h] [bp-8h] BYREF

  v1 = (unsigned int)*(this + 81);
  v2 = this;
  v12 = -858993459 * ((*((_DWORD *)*(this + 76) + 9) - *((_DWORD *)*(this + 76) + 8)) >> 2);
  if ( v1 < v12 )
  {
    v10 = 20 * v1;
    do
    {
      v3 = v2[86];
      v11 = (_DWORD *)((char *)v3 + v10);
      v4 = (int *)((char *)v3 + 4 * *(_DWORD *)((char *)v3 + v10 + 16));
      for ( i = &v4[*(_DWORD *)((char *)v3 + v10)];
            i != v4;
            this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v14) )
      {
        v5 = *v4++;
        glitch::scene::CBatchMesh::getSegmentCenter((glitch::scene::CBatchMesh *)v13, v2[76], *(_DWORD *)(v5 + 4));
        v6 = v2[68];
        v7 = *(void (__fastcall **)(glitch::video::CMaterial *, glitch::video::CMaterial **, glitch::video::CMaterial **, unsigned int, int, _BYTE *, _DWORD))(*(_DWORD *)v6 + 36);
        (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial *, unsigned int))(*(_DWORD *)v2[76] + 24))(
          v14,
          v2[76],
          v1);
        v7(
          v6,
          v2,
          v14,
          v1 | ((*(_DWORD *)(**(_DWORD **)v5 + 8 * *(_DWORD *)(v5 + 4) + 4) + 1) << 16),
          8,
          v13,
          *(__int16 *)(v5 + 34));
      }
      ++v1;
      v8 = glitch::os::Timer::TickCount;
      *v11 = 0;
      v10 += 20;
      v11[2] = v8;
    }
    while ( v1 < v12 );
  }
  return this;
}


// ===== 57ebec glitch::scene::CBatchSceneNode::invalidateVisibleIndexCache(uint) =====
int __fastcall glitch::scene::CBatchSceneNode::invalidateVisibleIndexCache(int this, unsigned int a2)
{
  _DWORD *v2; // r4
  int v3; // r5
  int v4; // r3
  int v5; // r2
  int v6; // r0
  int v7; // r7
  int v8; // r1
  void *v9; // r0
  unsigned int v10; // r6
  char *v11; // r0
  int v12; // r2
  int v13; // r3
  int v14; // r1
  char *v15; // r12
  int v16; // r7
  int v17; // r7
  int v18; // r7

  v2 = (_DWORD *)this;
  if ( *(_BYTE *)(this + 336) )
  {
    if ( a2 == -1 )
    {
      v3 = *(_DWORD *)(this + 324);
      if ( v3 )
      {
        v4 = 0;
        v5 = 0;
        v6 = *(_DWORD *)(*(_DWORD *)(this + 304) + 32);
        v7 = 0;
        do
        {
          ++v5;
          v8 = *(_DWORD *)(*(_DWORD *)(v6 + v4) + 32);
          v4 += 20;
          v7 += v8;
        }
        while ( v5 != v3 );
        v9 = (void *)v2[85];
        v10 = (unsigned int)(12 * v3) >> 1;
        if ( v9 )
          operator delete[](v9);
        v11 = (char *)operator new[](2 * (v7 + v10), 0);
        v12 = 0;
        v2[85] = v11;
        v13 = 0;
        v14 = 0;
        while ( 1 )
        {
          v15 = &v11[v12];
          ++v14;
          v16 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v2[76] + 32) + v13) + 32);
          *(_DWORD *)&v11[v12] = 0;
          *((_DWORD *)v15 + 2) = v10;
          *((_DWORD *)v15 + 1) = v16;
          v12 += 12;
          this = v2[86] + v13;
          v17 = *(_DWORD *)(*(_DWORD *)(v2[76] + 32) + v13);
          v13 += 20;
          v18 = *(_DWORD *)(v17 + 32);
          *(_DWORD *)(this + 12) |= 1u;
          if ( v14 == v3 )
            break;
          v11 = (char *)v2[85];
          v10 += v18;
        }
      }
    }
    else
    {
      *(_DWORD *)(*(_DWORD *)(this + 344) + 20 * a2 + 12) |= 1u;
    }
  }
  return this;
}


// ===== 57ed0c glitch::scene::CBatchSceneNode::setVisibleIndexCache(bool) =====
void __fastcall glitch::scene::CBatchSceneNode::setVisibleIndexCache(glitch::scene::CBatchSceneNode *this, int a2)
{
  int v2; // r3
  int v4; // r3
  void *v5; // r0

  v2 = *((unsigned __int8 *)this + 336);
  *((_BYTE *)this + 336) = a2;
  if ( a2 )
  {
    if ( !v2 )
    {
      v4 = *((_DWORD *)this + 76);
      if ( v4 )
      {
        if ( -858993459 * ((*(_DWORD *)(v4 + 36) - *(_DWORD *)(v4 + 32)) >> 2) )
          glitch::scene::CBatchSceneNode::invalidateVisibleIndexCache((int)this, 0xFFFFFFFF);
      }
    }
  }
  else if ( v2 )
  {
    v5 = *((void **)this + 85);
    if ( v5 )
      operator delete[](v5);
    *((_DWORD *)this + 85) = 0;
  }
}


// ===== 57ed98 glitch::scene::CBatchSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::scene::CBatchSceneNode::deserializeAttributes(int a1, int a2)
{
  int v4; // r1

  if ( a2 )
  {
    glitch::scene::ISceneNode::deserializeAttributes();
    *(_DWORD *)(a1 + 312) = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
                              a2,
                              "SegmentAutomaticCulling",
                              &glitch::scene::AutomaticCullingNames);
    *(_BYTE *)(a1 + 328) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(
                             a2,
                             "RegisterSolidBatchesOnce");
    v4 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "HasVisibleIndexCache");
    if ( *(unsigned __int8 *)(a1 + 336) != v4 )
      glitch::scene::CBatchSceneNode::setVisibleIndexCache((glitch::scene::CBatchSceneNode *)a1, v4);
  }
}


// ===== 57ee34 glitch::scene::CBatchSceneNode::postCompile(void) =====
int __fastcall glitch::scene::CBatchSceneNode::postCompile(glitch::scene::CBatchSceneNode *this)
{
  int v2; // r8
  int v3; // r5
  int v4; // r3
  int v5; // r2
  void *v6; // r0
  char *v7; // r0
  int v8; // r5
  char *v9; // lr
  unsigned int v10; // r7
  unsigned int v11; // r6
  char *v12; // r3
  int v13; // r12
  __int16 v14; // r1
  unsigned int v16; // r5
  unsigned int v17; // r3
  glitch::video::CMaterial *v18; // r10
  int v19; // r10
  unsigned int v20; // [sp+4h] [bp-10h]
  glitch::IReferenceCounted *v21; // [sp+8h] [bp-Ch] BYREF
  glitch::video::CMaterial *v22[2]; // [sp+Ch] [bp-8h] BYREF

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 16))(*((_DWORD *)this + 76));
  if ( *((_DWORD *)this + 81) == -1 )
  {
    v16 = 0;
    v17 = -858993459 * ((*(_DWORD *)(*((_DWORD *)this + 76) + 36) - *(_DWORD *)(*((_DWORD *)this + 76) + 32)) >> 2);
    *((_DWORD *)this + 81) = v17;
    while ( v16 < v17 )
    {
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**((_DWORD **)this + 76) + 24))(
        v22,
        *((_DWORD *)this + 76),
        v16);
      v18 = v22[0];
      v19 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v18 + 1) + 24)
                                  + 12 * glitch::video::CMaterial::getTechnique(v22[0])
                                  + 8)
                      + 4);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v22);
      v17 = *((_DWORD *)this + 81);
      if ( (v19 & 0x10000) != 0 )
        *((_DWORD *)this + 81) = --v17;
      else
        ++v16;
    }
    *((_DWORD *)this + 87) = v17;
  }
  if ( v2 )
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    do
    {
      ++v5;
      v3 += (unsigned __int16)(*(_WORD *)(*(_DWORD *)(*((_DWORD *)this + 76) + 32) + v4 + 14)
                             - *(_WORD *)(*(_DWORD *)(*((_DWORD *)this + 76) + 32) + v4 + 12));
      v4 += 20;
    }
    while ( v5 != v2 );
  }
  else
  {
    v3 = 0;
  }
  v6 = *((void **)this + 86);
  if ( v6 )
  {
    operator delete[](v6);
    *((_DWORD *)this + 86) = 0;
  }
  v7 = (char *)operator new[](4 * (v3 + 20 * v2), 0);
  v8 = 0;
  v9 = v7;
  *((_DWORD *)this + 86) = v7;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 80) = 0;
  if ( v2 )
  {
    v10 = (unsigned int)(20 * v2) >> 2;
    v11 = 0;
    while ( 1 )
    {
      v12 = &v9[v8];
      v13 = *(_DWORD *)(*((_DWORD *)this + 76) + 32) + v8;
      v14 = *(_WORD *)(v13 + 12);
      LOWORD(v13) = *(_WORD *)(v13 + 14);
      *((_DWORD *)v12 + 4) = v10;
      *((_DWORD *)v12 + 1) = 0;
      *(_DWORD *)&v9[v8] = 0;
      *((_DWORD *)v12 + 3) = 1;
      v10 += (unsigned __int16)(v13 - v14);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 76) + 20))(
        &v21,
        *((_DWORD *)this + 76),
        v11);
      v20 = *((_DWORD *)v21 + 8);
      glitch::IReferenceCounted::drop(v21);
      if ( *((_DWORD *)this + 81) > v11 )
      {
        ++v11;
        v8 += 20;
        if ( *((_DWORD *)this + 79) < v20 )
          *((_DWORD *)this + 79) = v20;
        if ( v11 == v2 )
          return glitch::scene::CBatchSceneNode::invalidateVisibleIndexCache((int)this, 0xFFFFFFFF);
      }
      else
      {
        ++v11;
        v8 += 20;
        if ( *((_DWORD *)this + 80) < v20 )
          *((_DWORD *)this + 80) = v20;
        if ( v11 == v2 )
          return glitch::scene::CBatchSceneNode::invalidateVisibleIndexCache((int)this, 0xFFFFFFFF);
      }
      v9 = *((char **)this + 86);
    }
  }
  return glitch::scene::CBatchSceneNode::invalidateVisibleIndexCache((int)this, 0xFFFFFFFF);
}


// ===== 57f074 glitch::scene::CBatchSceneNode::setup(bool,glitch::video::IVideoDriver *) =====
int __fastcall glitch::scene::CBatchSceneNode::setup(
        glitch::scene::CBatchMesh **this,
        int a2,
        glitch::video::IVideoDriver *a3)
{
  unsigned int v5; // r0
  int result; // r0

  v5 = glitch::scene::CBatchMesh::sort(*(this + 76), a3);
  *(this + 87) = (glitch::scene::CBatchMesh *)v5;
  *(this + 81) = (glitch::scene::CBatchMesh *)v5;
  glitch::scene::CBatchMesh::updateBoundingBox(*(this + 76));
  glitch::scene::CBatchMesh::initStaticSegmentBoundingBoxes(*(this + 76));
  result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*(this + 76) + 60))(*(this + 76));
  if ( !a2 )
    return (*((int (__fastcall **)(glitch::scene::CBatchMesh **))*this + 64))(this);
  return result;
}


// ===== 57f0d4 glitch::scene::CBatchSceneNode::CBatchSceneNode(int,boost::intrusive_ptr<glitch::scene::CBatchMesh> const&) =====
int __fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(int a1, int a2, int *a3)
{
  int v5; // r3
  bool v6; // zf
  _DWORD v8[4]; // [sp+8h] [bp+0h] BYREF
  _DWORD v9[3]; // [sp+18h] [bp+10h] BYREF
  _DWORD v10[3]; // [sp+24h] [bp+1Ch] BYREF

  *(_DWORD *)(a1 + 356) = 1;
  *(_DWORD *)a1 = off_974C4C;
  *(_DWORD *)(a1 + 352) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[33] + a1) = (int)off_974C6C;
  v9[2] = 1065353216;
  memset(v10, 0, sizeof(v10));
  memset(v8, 0, 12);
  v8[3] = 1065353216;
  v9[0] = 1065353216;
  v9[1] = 1065353216;
  ((void (__fastcall *)(int, int (***)(), int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    a1,
    off_9749B0,
    a2,
    v10,
    v8,
    v9);
  *(_DWORD *)a1 = off_9749F4;
  *(int *)((char *)&dword_0 + a1) = (int)off_9749F4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_974B00;
  *(_DWORD *)(a1 + 352) = off_97499C;
  *(_DWORD *)a1 = off_97487C;
  v5 = *a3;
  v6 = *a3 == 0;
  *(_DWORD *)(a1 + 304) = *a3;
  if ( !v6 )
    ++*(_DWORD *)(v5 + 4);
  *(_DWORD *)(a1 + 312) = 2;
  *(_DWORD *)(a1 + 308) = 2;
  *(_BYTE *)(a1 + 336) = 1;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = -1;
  *(_BYTE *)(a1 + 328) = 1;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  return a1;
}


// ===== 57f21c glitch::scene::CBatchSceneNode::renderBatchBBoxes(glitch::video::IVideoDriver *,uint) =====
glitch::video::CMaterial **__fastcall glitch::scene::CBatchSceneNode::renderBatchBBoxes(
        glitch::scene::CBatchSceneNode *this,
        glitch::video::IVideoDriver *a2,
        unsigned int a3)
{
  int v3; // r7
  int v5; // r0
  int Technique; // r2
  unsigned int v9; // r6
  int v10; // r3
  int *v11; // r5
  int *v12; // r8
  int v13; // t1
  glitch::video::CMaterial *v15[2]; // [sp+4h] [bp-8h] BYREF

  v3 = *((_DWORD *)a2 + 55);
  v5 = *(unsigned __int16 *)(v3 + 44);
  if ( v5 == 0xFFFF )
    LOBYTE(v5) = glitch::video::CMaterialRendererManager::createMaterialRenderer(*((_DWORD *)a2 + 55), 0);
  glitch::video::CMaterialRendererManager::getMaterialInstance((glitch::video::CMaterialRendererManager *)v15, v3, v5);
  if ( v15[0] )
    Technique = glitch::video::CMaterial::getTechnique(v15[0]);
  else
    Technique = 255;
  glitch::video::IVideoDriver::setMaterial(a2, v15, Technique, 0);
  v9 = 20 * a3;
  v10 = *((_DWORD *)this + 86);
  v11 = (int *)(v10 + 4 * *(_DWORD *)(v10 + v9 + 16));
  v12 = &v11[*(_DWORD *)(v10 + v9)];
  while ( v12 != v11 )
  {
    v13 = *v11++;
    (*(void (__fastcall **)(glitch::video::IVideoDriver *, _DWORD, int))(*(_DWORD *)a2 + 40))(
      a2,
      *(_DWORD *)(v13 + 12),
      -16711936);
  }
  return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v15);
}


// ===== 57f308 glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **) [clone] =====
int __fastcall glitch::video::IVideoDriver::draw(int a1)
{
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 88))(a1);
  return 0;
}


// ===== 57f344 glitch::scene::CBatchSceneNode::~CBatchSceneNode() =====
void __fastcall glitch::scene::CBatchSceneNode::~CBatchSceneNode(glitch::scene::CBatchSceneNode *this, int *a2)
{
  int v2; // r3
  void *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  int v8; // r3
  _DWORD *v9; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  v5 = *((void **)this + 86);
  if ( v5 )
    operator delete[](v5);
  glitch::scene::CBatchSceneNode::setVisibleIndexCache(this, 0);
  v6 = *((glitch::IReferenceCounted **)this + 83);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((glitch::IReferenceCounted **)this + 76);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = a2[1];
  v9 = a2 + 1;
  *(_DWORD *)this = v8;
  *(_DWORD *)((char *)this + *(_DWORD *)(v8 - 28)) = v9[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v9[5];
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 57f3ec glitch::scene::CBatchSceneNode::~CBatchSceneNode() =====
void __fastcall glitch::scene::CBatchSceneNode::~CBatchSceneNode(glitch::scene::CBatchSceneNode *this)
{
  void *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0

  v2 = *((void **)this + 86);
  *(_DWORD *)this = off_97487C;
  *((_DWORD *)this + 88) = off_97499C;
  if ( v2 )
    operator delete[](v2);
  glitch::scene::CBatchSceneNode::setVisibleIndexCache(this, 0);
  v3 = *((glitch::IReferenceCounted **)this + 83);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((glitch::IReferenceCounted **)this + 76);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  *(_DWORD *)this = off_9749F4;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_9749F4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_974B00;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 57f49c glitch::scene::CBatchSceneNode::~CBatchSceneNode() =====
void __fastcall glitch::scene::CBatchSceneNode::~CBatchSceneNode(glitch::scene::CBatchSceneNode *this)
{
  glitch::scene::CBatchSceneNode::~CBatchSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 57f4b8 glitch::scene::CBatchSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CBatchSceneNode::onRegisterSceneNode(glitch::scene::CSceneManager **this)
{
  int v1; // r8
  int v4; // r10
  int v5; // r3
  int v6; // r9
  int v7; // r7
  int v8; // r6
  int v9; // r5
  int v10; // r3
  unsigned int v11; // r2
  float *v12; // r0
  int v13; // r1
  float *v14; // r0
  int v15; // r1
  int v16; // r0
  int v17; // r1
  int v18; // r1
  int v19; // r0
  void (__fastcall *v20)(int, glitch::scene::CSceneManager **, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  glitch::video::CMaterial *v21; // [sp+14h] [bp-4h] BYREF

  if ( ((unsigned int)*(this + 71) & 1) != 0 )
  {
    (*((void (__fastcall **)(glitch::scene::CSceneManager **))*this + 65))(this);
    v4 = glitch::scene::CBatchSceneNode::clearVisibleSegments((glitch::scene::CBatchSceneNode *)this);
    if ( !glitch::scene::CSceneManager::isCulled(*(this + 68), (const glitch::scene::ISceneNode *)this) )
    {
      v5 = (int)*(this + 68);
      v6 = *(unsigned __int8 *)(v5 + 592);
      if ( *(_BYTE *)(v5 + 592) )
      {
        v7 = (int)*(this + 78);
        *(_BYTE *)(v5 + 592) = 0;
        v5 = (int)*(this + 68);
      }
      else
      {
        v1 = *(unsigned __int8 *)(v5 + 592);
        v7 = v1;
      }
      if ( v6 )
        v1 = *(_DWORD *)(v5 + 228);
      if ( v4 )
      {
        v8 = 0;
        v9 = 0;
        while ( 2 )
        {
          switch ( v7 )
          {
            case 0:
            case 4:
              if ( !*((_BYTE *)this + 336) )
              {
                v10 = *((_DWORD *)*(this + 76) + 8) + v8;
                *(_DWORD *)((char *)*(this + 86) + v8) = (unsigned __int16)(*(_WORD *)(v10 + 14) - *(_WORD *)(v10 + 12));
                goto LABEL_14;
              }
              v18 = v9++;
              glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SUniverseIntersector>(this, v18);
              v8 += 20;
              if ( v9 != v4 )
                continue;
              break;
            case 1:
              v16 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 324))(v1);
              v17 = v9++;
              glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SBoxIntersector>(
                this,
                v17,
                (float *)(v16 + 108));
              v8 += 20;
              if ( v9 != v4 )
                continue;
              break;
            case 2:
              v14 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v1 + 324))(v1);
              v15 = v9++;
              glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector>(this, v15, v14);
              v8 += 20;
              if ( v9 != v4 )
                continue;
              break;
            case 8:
              v12 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v1 + 324))(v1);
              v13 = v9++;
              glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector3>(this, v13, v12);
              v8 += 20;
              if ( v9 != v4 )
                continue;
              break;
            default:
LABEL_14:
              ++v9;
              v8 += 20;
              if ( v9 != v4 )
                continue;
              break;
          }
          break;
        }
      }
      if ( *((_BYTE *)this + 328) )
      {
        v11 = (unsigned int)*(this + 81);
        if ( v11 && glitch::scene::CBatchSceneNode::updateInfo((glitch::scene::CBatchSceneNode *)this, 0, v11) )
        {
          v19 = (int)*(this + 68);
          v20 = *(void (__fastcall **)(int, glitch::scene::CSceneManager **, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v19 + 36);
          v21 = nullptr;
          v20(v19, this, &v21, 0, 3, 0, 0x7FFFFFFF);
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v21);
        }
      }
      else
      {
        glitch::scene::CBatchSceneNode::registerSolidBatches((int)this);
      }
      glitch::scene::CBatchSceneNode::registerTransparentBatches(this);
      if ( v6 )
        *((_BYTE *)*(this + 68) + 592) = 1;
    }
  }
  return 1;
}


// ===== 57f704 glitch::scene::CBatchSceneNode::updateIndices(uint,boost::intrusive_ptr<glitch::video::IBuffer> const&,boost::intrusive_ptr<glitch::video::IBuffer const> const&) =====
int __fastcall glitch::scene::CBatchSceneNode::updateIndices(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  int v4; // r6
  int v7; // r7
  char *v8; // r5
  int v9; // r9
  int *v10; // r4
  int *v11; // r10
  int v12; // r8
  int v13; // t1
  int v14; // r1
  int v15; // r6
  _BYTE *v16; // r4
  char v17; // r3
  _BYTE *v18; // r4
  char v19; // r3
  char v20; // r2
  int v23; // [sp+4h] [bp-8h]

  v4 = 20 * a2;
  v7 = *(_DWORD *)(a1 + 344);
  v8 = (char *)glitch::video::IBuffer::map(*a3, 2);
  v23 = v7 + v4;
  v9 = glitch::video::IBuffer::map(*a4, 1);
  v10 = (int *)(*(_DWORD *)(a1 + 344) + 4 * *(_DWORD *)(*(_DWORD *)(a1 + 344) + v4 + 16));
  v11 = &v10[*(_DWORD *)(v7 + v4)];
  if ( v11 == v10 )
  {
    v12 = 0;
  }
  else
  {
    v12 = 0;
    do
    {
      v13 = *v10++;
      v14 = *(_DWORD *)(v13 + 16);
      v15 = *(_DWORD *)(v13 + 20) - v14;
      memcpy(v8, (const void *)(v9 + 2 * v14), 2 * v15);
      v8 += 2 * v15;
      v12 += v15;
    }
    while ( v11 != v10 );
  }
  v16 = (_BYTE *)*a3;
  v17 = *(_BYTE *)(*a3 + 19);
  if ( (v17 & 0x1Fu) <= 1 )
  {
    if ( (v16[18] & 0x20) != 0 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v16 + 24))(*a3);
    v16[19] = 0;
    v18 = (_BYTE *)*a4;
    v19 = *(_BYTE *)(*a4 + 19);
    v20 = v19 & 0x1F;
    if ( (v19 & 0x1Fu) > 1 )
      goto LABEL_7;
  }
  else
  {
    v16[19] = ((v17 & 0x1F) - 1) | v17 & 0xE0;
    v18 = (_BYTE *)*a4;
    v19 = *(_BYTE *)(*a4 + 19);
    v20 = v19 & 0x1F;
    if ( (v19 & 0x1Fu) > 1 )
    {
LABEL_7:
      v18[19] = (v20 - 1) | v19 & 0xE0;
      goto LABEL_8;
    }
  }
  if ( (v18[18] & 0x20) != 0 )
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v18 + 24))(v18);
  v18[19] = 0;
LABEL_8:
  *(_DWORD *)(v23 + 12) = 0;
  return v12;
}


// ===== 57f874 glitch::scene::CBatchSceneNode::CBatchSceneNode(int,boost::intrusive_ptr<glitch::scene::CBatchMesh> &,bool) =====
int __fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(int a1, int a2, int *a3, char a4)
{
  int v7; // r3
  bool v8; // zf
  _DWORD v10[4]; // [sp+8h] [bp+0h] BYREF
  _DWORD v11[3]; // [sp+18h] [bp+10h] BYREF
  _DWORD v12[4]; // [sp+24h] [bp+1Ch] BYREF

  *(_DWORD *)(a1 + 352) = off_95B720;
  *(_DWORD *)a1 = off_974C4C;
  *(_DWORD *)(a1 + 356) = 1;
  *(int *)((char *)&elf_hash_bucket[33] + a1) = (int)off_974C6C;
  v11[2] = 1065353216;
  memset(v12, 0, 12);
  memset(v10, 0, 12);
  v10[3] = 1065353216;
  v11[0] = 1065353216;
  v11[1] = 1065353216;
  ((void (__fastcall *)(int, int (***)(), int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    a1,
    off_9749B0,
    a2,
    v12,
    v10,
    v11);
  *(_DWORD *)a1 = off_9749F4;
  *(int *)((char *)&dword_0 + a1) = (int)off_9749F4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_974B00;
  *(_DWORD *)(a1 + 352) = off_97499C;
  *(_DWORD *)a1 = off_97487C;
  v7 = *a3;
  v8 = *a3 == 0;
  *(_DWORD *)(a1 + 304) = *a3;
  if ( !v8 )
    ++*(_DWORD *)(v7 + 4);
  *(_BYTE *)(a1 + 336) = 1;
  *(_DWORD *)(a1 + 312) = 2;
  *(_BYTE *)(a1 + 328) = a4;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_DWORD *)(a1 + 308) = 2;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = -1;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  return a1;
}


// ===== 57f9c0 glitch::scene::CBatchSceneNode::CBatchSceneNode(int) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(
        glitch::scene::CBatchSceneNode *this,
        int *a2,
        int a3)
{
  _DWORD *v3; // r6
  int v6; // r2
  int v7; // lr
  _DWORD *v8; // r5
  glitch::IReferenceCounted *v9; // r0
  _DWORD v11[4]; // [sp+8h] [bp-28h] BYREF
  _DWORD v12[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v13[3]; // [sp+24h] [bp-Ch] BYREF

  v3 = a2 + 1;
  v12[2] = 1065353216;
  memset(v13, 0, sizeof(v13));
  memset(v11, 0, 12);
  v11[3] = 1065353216;
  v12[0] = 1065353216;
  v12[1] = 1065353216;
  ((void (__fastcall *)(glitch::scene::CBatchSceneNode *, int *, int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    this,
    a2 + 2,
    a3,
    v13,
    v11,
    v12);
  v6 = a2[1];
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 28)) = v3[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v3[5];
  v7 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v7 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  *((_DWORD *)this + 76) = 0;
  *((_DWORD *)this + 77) = 0;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 80) = 0;
  *((_DWORD *)this + 83) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 78) = 2;
  *((_BYTE *)this + 336) = 1;
  *((_DWORD *)this + 87) = -1;
  *((_DWORD *)this + 81) = -1;
  *((_BYTE *)this + 328) = 1;
  v8 = operator new(0x7Cu, 0);
  glitch::scene::CBatchMesh::CBatchMesh((int)v8);
  if ( v8 )
    ++v8[1];
  v9 = *((glitch::IReferenceCounted **)this + 76);
  *((_DWORD *)this + 76) = v8;
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  glitch::scene::ISceneNode::setAutomaticCulling(this, 2);
  return this;
}


// ===== 57faf8 glitch::scene::CBatchSceneNode::CBatchSceneNode(int,boost::intrusive_ptr<glitch::scene::CBatchMesh> const&) =====
int __fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(int a1, int *a2, int a3, int *a4)
{
  _DWORD *v4; // r6
  int v8; // r3
  int v9; // r3
  int v10; // r3
  bool v11; // zf
  _DWORD v13[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v14[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v15[4]; // [sp+24h] [bp-10h] BYREF

  v4 = a2 + 1;
  v14[2] = 1065353216;
  memset(v15, 0, 12);
  memset(v13, 0, 12);
  v13[3] = 1065353216;
  v14[0] = 1065353216;
  v14[1] = 1065353216;
  ((void (__fastcall *)(int, int *, int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    a1,
    a2 + 2,
    a3,
    v15,
    v13,
    v14);
  v8 = a2[1];
  *(_DWORD *)a1 = v8;
  *(_DWORD *)(a1 + *(_DWORD *)(v8 - 28)) = v4[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = v4[5];
  v9 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  v10 = *a4;
  v11 = *a4 == 0;
  *(_DWORD *)(a1 + 304) = *a4;
  if ( !v11 )
    ++*(_DWORD *)(v10 + 4);
  *(_DWORD *)(a1 + 312) = 2;
  *(_DWORD *)(a1 + 308) = 2;
  *(_BYTE *)(a1 + 336) = 1;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = -1;
  *(_BYTE *)(a1 + 328) = 1;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  return a1;
}


// ===== 57fc04 glitch::scene::CBatchSceneNode::CBatchSceneNode(int) =====
glitch::scene::CBatchSceneNode *__fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(
        glitch::scene::CBatchSceneNode *this,
        int a2)
{
  _DWORD *v3; // r5
  glitch::IReferenceCounted *v4; // r0
  _DWORD v6[4]; // [sp+8h] [bp+0h] BYREF
  _DWORD v7[3]; // [sp+18h] [bp+10h] BYREF
  _DWORD v8[3]; // [sp+24h] [bp+1Ch] BYREF

  *((_DWORD *)this + 88) = off_95B720;
  *(_DWORD *)this = off_974C4C;
  *((_DWORD *)this + 89) = 1;
  *(int *)((char *)&elf_hash_bucket[33] + (_DWORD)this) = (int)off_974C6C;
  v7[2] = 1065353216;
  memset(v8, 0, sizeof(v8));
  memset(v6, 0, 12);
  v6[3] = 1065353216;
  v7[0] = 1065353216;
  v7[1] = 1065353216;
  ((void (__fastcall *)(glitch::scene::CBatchSceneNode *, int (***)(), int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    this,
    off_9749B0,
    a2,
    v8,
    v6,
    v7);
  *(_DWORD *)this = off_9749F4;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_9749F4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_974B00;
  *((_DWORD *)this + 88) = off_97499C;
  *((_DWORD *)this + 76) = 0;
  *((_DWORD *)this + 77) = 0;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 80) = 0;
  *((_DWORD *)this + 83) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *(_DWORD *)this = off_97487C;
  *((_DWORD *)this + 78) = 2;
  *((_DWORD *)this + 87) = -1;
  *((_DWORD *)this + 81) = -1;
  *((_BYTE *)this + 336) = 1;
  *((_BYTE *)this + 328) = 1;
  v3 = operator new(0x7Cu, 0);
  glitch::scene::CBatchMesh::CBatchMesh((int)v3);
  if ( v3 )
    ++v3[1];
  v4 = *((glitch::IReferenceCounted **)this + 76);
  *((_DWORD *)this + 76) = v3;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  glitch::scene::ISceneNode::setAutomaticCulling(this, 2);
  return this;
}


// ===== 57fd74 glitch::scene::CBatchSceneNode::CBatchSceneNode(int,boost::intrusive_ptr<glitch::scene::CBatchMesh> &,bool) =====
int __fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(int a1, int *a2, int a3, int *a4, char a5)
{
  _DWORD *v5; // r6
  int v9; // r3
  int v10; // r3
  int v11; // r3
  bool v12; // zf
  _DWORD v14[4]; // [sp+8h] [bp-28h] BYREF
  _DWORD v15[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v16[3]; // [sp+24h] [bp-Ch] BYREF

  v5 = a2 + 1;
  v15[2] = 1065353216;
  memset(v16, 0, sizeof(v16));
  memset(v14, 0, 12);
  v14[3] = 1065353216;
  v15[0] = 1065353216;
  v15[1] = 1065353216;
  ((void (__fastcall *)(int, int *, int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    a1,
    a2 + 2,
    a3,
    v16,
    v14,
    v15);
  v9 = a2[1];
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 28)) = v5[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = v5[5];
  v10 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v10 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  v11 = *a4;
  v12 = *a4 == 0;
  *(_DWORD *)(a1 + 304) = *a4;
  if ( !v12 )
    ++*(_DWORD *)(v11 + 4);
  *(_BYTE *)(a1 + 336) = 1;
  *(_DWORD *)(a1 + 312) = 2;
  *(_BYTE *)(a1 + 328) = a5;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_DWORD *)(a1 + 308) = 2;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = -1;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  return a1;
}


// ===== 57fe84 glitch::scene::CBatchSceneNode::CBatchSceneNode(int,boost::intrusive_ptr<glitch::scene::CBatchMesh> const&,glitch::scene::CSceneManager *) =====
int __fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(int a1, int a2, int *a3, int a4)
{
  int v7; // r3
  bool v8; // zf
  _DWORD v10[4]; // [sp+8h] [bp+0h] BYREF
  _DWORD v11[3]; // [sp+18h] [bp+10h] BYREF
  _DWORD v12[4]; // [sp+24h] [bp+1Ch] BYREF

  *(_DWORD *)(a1 + 352) = off_95B720;
  *(_DWORD *)a1 = off_974C4C;
  *(_DWORD *)(a1 + 356) = 1;
  *(int *)((char *)&elf_hash_bucket[33] + a1) = (int)off_974C6C;
  v11[2] = 1065353216;
  memset(v12, 0, 12);
  memset(v10, 0, 12);
  v10[3] = 1065353216;
  v11[0] = 1065353216;
  v11[1] = 1065353216;
  ((void (__fastcall *)(int, int (***)(), int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    a1,
    off_9749B0,
    a2,
    v12,
    v10,
    v11);
  *(_DWORD *)a1 = off_9749F4;
  *(int *)((char *)&dword_0 + a1) = (int)off_9749F4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_974B00;
  *(_DWORD *)(a1 + 352) = off_97499C;
  *(_DWORD *)a1 = off_97487C;
  v7 = *a3;
  v8 = *a3 == 0;
  *(_DWORD *)(a1 + 304) = *a3;
  if ( !v8 )
    ++*(_DWORD *)(v7 + 4);
  *(_DWORD *)(a1 + 312) = 2;
  *(_DWORD *)(a1 + 308) = 2;
  *(_BYTE *)(a1 + 336) = 1;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_DWORD *)(a1 + 272) = a4;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = -1;
  *(_BYTE *)(a1 + 328) = 1;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  return a1;
}


// ===== 57ffd4 glitch::scene::CBatchSceneNode::CBatchSceneNode(int,boost::intrusive_ptr<glitch::scene::CBatchMesh> const&,glitch::scene::CSceneManager *) =====
int __fastcall glitch::scene::CBatchSceneNode::CBatchSceneNode(int a1, int *a2, int a3, int *a4, int a5)
{
  _DWORD *v5; // r6
  int v9; // r3
  int v10; // r3
  int v11; // r3
  _DWORD v13[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v14[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v15[4]; // [sp+24h] [bp-10h] BYREF

  v5 = a2 + 1;
  memset(v15, 0, 12);
  memset(v13, 0, 12);
  v14[2] = 1065353216;
  v13[3] = 1065353216;
  v14[0] = 1065353216;
  v14[1] = 1065353216;
  ((void (__fastcall *)(int, int *, int, _DWORD *, _DWORD *, _DWORD *))glitch::scene::ISceneNode::ISceneNode)(
    a1,
    a2 + 2,
    a3,
    v15,
    v13,
    v14);
  v9 = a2[1];
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 28)) = v5[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = v5[5];
  v10 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v10 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  v11 = *a4;
  *(_DWORD *)(a1 + 304) = *a4;
  if ( v11 )
    ++*(_DWORD *)(v11 + 4);
  *(_DWORD *)(a1 + 312) = 2;
  *(_BYTE *)(a1 + 336) = 1;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_DWORD *)(a1 + 308) = 2;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 272) = a5;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = -1;
  *(_BYTE *)(a1 + 328) = 1;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  return a1;
}


// ===== 5800e8 glitch::scene::CBatchSceneNode::renderSolidBatch(glitch::video::IVideoDriver *,uint) =====
void __fastcall glitch::scene::CBatchSceneNode::renderSolidBatch(
        glitch::scene::CBatchSceneNode *this,
        glitch::video::IVideoDriver *a2,
        unsigned int a3)
{
  unsigned int v3; // r5
  int v4; // r6
  int v6; // r3
  int v9; // r9
  _DWORD *v10; // r3
  int v11; // r8
  int v12; // r1
  glitch::video::CMaterialVertexAttributeMap *v13; // r11
  bool v14; // zf
  int v15; // r2
  int v16; // r11
  int v17; // r1
  glitch::IReferenceCounted *v18; // r2
  int v19; // r1
  void *v20; // r1
  glitch::video::CMaterialVertexAttributeMap *v21; // r4
  int v22; // r3
  int v23; // r11
  glitch::IReferenceCounted *v24; // r3
  glitch::IReferenceCounted *v25; // r0
  void (__fastcall *v26)(glitch::scene::CBatchSceneNode *, unsigned int, glitch::IReferenceCounted **, glitch::IReferenceCounted **); // r12
  int v27; // r2
  glitch::IReferenceCounted *v28; // r3
  glitch::IReferenceCounted *v29; // r0
  int (__fastcall *v30)(glitch::scene::CBatchSceneNode *, unsigned int, glitch::IReferenceCounted **, glitch::IReferenceCounted **); // r12
  int v31; // [sp+10h] [bp-4Ch]
  glitch::core *v32; // [sp+14h] [bp-48h]
  glitch::IReferenceCounted *v33; // [sp+1Ch] [bp-40h]
  glitch::video::CVertexStreams *v34; // [sp+34h] [bp-28h] BYREF
  glitch::video::CMaterial *v35; // [sp+38h] [bp-24h] BYREF
  glitch::IReferenceCounted *v36; // [sp+3Ch] [bp-20h] BYREF
  glitch::IReferenceCounted *v37; // [sp+40h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v38; // [sp+44h] [bp-18h] BYREF
  glitch::IReferenceCounted *v39; // [sp+48h] [bp-14h] BYREF
  glitch::IReferenceCounted *v40; // [sp+4Ch] [bp-10h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v41; // [sp+50h] [bp-Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v42; // [sp+54h] [bp-8h] BYREF

  v3 = 20 * a3;
  v4 = *((_DWORD *)this + 86);
  v6 = *(_DWORD *)(v4 + 20 * a3);
  v9 = v4 + 20 * a3;
  if ( !v6 )
    goto LABEL_2;
  v10 = *((_DWORD **)this + 76);
  v11 = *(_DWORD *)(v10[8] + 20 * a3);
  (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD *))(*v10 + 28))(&v41, v10);
  v42 = v41;
  if ( v41 )
  {
    ++*(_DWORD *)v41;
    v13 = v41;
    if ( v41 )
    {
      v14 = (*(_DWORD *)v41)-- == 1;
      if ( v14 )
      {
        glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v13);
        LC_API_FREE_0(v13);
        v27 = *((unsigned __int8 *)this + 336);
        v40 = nullptr;
        if ( v27 )
          goto LABEL_7;
LABEL_22:
        v22 = *((_DWORD *)this + 79);
        if ( v22 || (v22 = glitch::scene::CBatchSceneNode::computeMaxIndices(this, *((_DWORD *)this + 87))) != 0 )
        {
          v31 = 2 * v22;
          v23 = glitch::core::allocProcessBuffer((glitch::core *)(2 * v22), v12);
          (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, int, int, int, int, _DWORD))(*(_DWORD *)a2 + 120))(
            &v37,
            a2,
            1,
            4,
            v31,
            v23,
            0);
          v24 = v37;
          if ( v37 )
            ++*((_DWORD *)v37 + 1);
          v25 = v40;
          v40 = v24;
          if ( v25 )
            glitch::IReferenceCounted::drop(v25);
          if ( v37 )
            glitch::IReferenceCounted::drop(v37);
          v26 = *(void (__fastcall **)(glitch::scene::CBatchSceneNode *, unsigned int, glitch::IReferenceCounted **, glitch::IReferenceCounted **))(*(_DWORD *)this + 268);
          v36 = *(glitch::IReferenceCounted **)(v11 + 24);
          if ( v36 )
            ++*((_DWORD *)v36 + 1);
          v26(this, a3, &v40, &v36);
          if ( v36 )
          {
            glitch::IReferenceCounted::drop(v36);
            v18 = v40;
            v32 = (glitch::core *)v23;
          }
          else
          {
            v32 = (glitch::core *)v23;
            v18 = v40;
          }
        }
        else
        {
          v18 = v40;
          v32 = nullptr;
        }
        goto LABEL_9;
      }
    }
  }
  v15 = *((unsigned __int8 *)this + 336);
  v40 = nullptr;
  if ( !v15 )
    goto LABEL_22;
LABEL_7:
  v16 = *((_DWORD *)this + 85);
  v17 = v16 + 12 * a3;
  v18 = *(glitch::IReferenceCounted **)(v17 + 4);
  v19 = *(_DWORD *)(v17 + 8);
  if ( v18 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, int, int, int, int, _DWORD))(*(_DWORD *)a2 + 120))(
      &v39,
      a2,
      1,
      4,
      2 * (_DWORD)v18,
      v16 + 2 * v19,
      0);
    v28 = v39;
    if ( v39 )
      ++*((_DWORD *)v39 + 1);
    v29 = v40;
    v40 = v28;
    if ( v29 )
      glitch::IReferenceCounted::drop(v29);
    if ( v39 )
      glitch::IReferenceCounted::drop(v39);
    if ( *(_DWORD *)(v9 + 12) )
    {
      v30 = *(int (__fastcall **)(glitch::scene::CBatchSceneNode *, unsigned int, glitch::IReferenceCounted **, glitch::IReferenceCounted **))(*(_DWORD *)this + 268);
      v38 = *(glitch::IReferenceCounted **)(v11 + 24);
      if ( v38 )
        ++*((_DWORD *)v38 + 1);
      *(_DWORD *)(v16 + 12 * a3) = v30(this, a3, &v40, &v38);
      if ( v38 )
        glitch::IReferenceCounted::drop(v38);
    }
    v18 = v40;
  }
  v32 = nullptr;
LABEL_9:
  v33 = v18;
  if ( v18 )
    ++*((_DWORD *)v18 + 1);
  (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**((_DWORD **)this + 76) + 24))(
    &v35,
    *((_DWORD *)this + 76),
    a3);
  glitch::video::IVideoDriver::setMaterial((int)a2, &v35, (int)&v42);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v35);
  v34 = *(glitch::video::CVertexStreams **)(v11 + 20);
  if ( v34 )
    ++*(_DWORD *)v34;
  glitch::video::IVideoDriver::draw((int)a2);
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v34);
  if ( v33 )
    glitch::IReferenceCounted::drop(v33);
  if ( v40 )
    glitch::IReferenceCounted::drop(v40);
  if ( v32 )
    glitch::core::releaseProcessBuffer(v32, v20);
  v21 = v42;
  if ( v42 && (v14 = *(_DWORD *)v42 == 1, --*(_DWORD *)v42, v14) )
  {
    glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v21);
    LC_API_FREE_0(v21);
    v6 = *(_DWORD *)(v4 + v3);
  }
  else
  {
    v6 = *(_DWORD *)(v4 + v3);
  }
LABEL_2:
  *(_DWORD *)(v9 + 4) = v6;
}


// ===== 5804f0 glitch::scene::CBatchSceneNode::flushTransparentBatch(glitch::video::IVideoDriver *) =====
void __fastcall glitch::scene::CBatchSceneNode::flushTransparentBatch(
        glitch::scene::CBatchSceneNode *this,
        glitch::video::IVideoDriver *a2)
{
  int v2; // r2
  int v3; // r6
  int v4; // r5
  _DWORD *v7; // r3
  int v8; // r8
  int v9; // r1
  glitch::video::CMaterialVertexAttributeMap *v10; // r10
  bool v11; // zf
  int v12; // r0
  unsigned int v13; // r9
  void *v14; // r10
  glitch::video::IBuffer *v15; // r0
  glitch::IReferenceCounted *v16; // r3
  void *v17; // r1
  glitch::video::CMaterialVertexAttributeMap *v18; // r4
  glitch::IReferenceCounted *v19; // r3
  glitch::IReferenceCounted *v20; // r0
  glitch::IReferenceCounted *v21; // [sp+10h] [bp-30h]
  glitch::video::CVertexStreams *v22; // [sp+28h] [bp-18h] BYREF
  glitch::video::CMaterial *v23; // [sp+2Ch] [bp-14h] BYREF
  glitch::IReferenceCounted *v24; // [sp+30h] [bp-10h] BYREF
  glitch::IReferenceCounted *v25; // [sp+34h] [bp-Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v26; // [sp+38h] [bp-8h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v27; // [sp+3Ch] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 87);
  v3 = *((_DWORD *)this + 86);
  v4 = 20 * v2;
  if ( !*(_DWORD *)(v3 + 20 * v2) )
    return;
  v7 = *((_DWORD **)this + 76);
  v8 = *(_DWORD *)(v7[8] + 20 * v2);
  (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD *))(*v7 + 28))(&v26, v7);
  v27 = v26;
  if ( v26 && (++*(_DWORD *)v26, (v10 = v26) != nullptr) && (v11 = *(_DWORD *)v26 == 1, --*(_DWORD *)v26, v11) )
  {
    glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v10);
    LC_API_FREE_0(v10);
    v12 = *((_DWORD *)this + 80);
    if ( v12 )
      goto LABEL_7;
  }
  else
  {
    v12 = *((_DWORD *)this + 80);
    if ( v12 )
    {
LABEL_7:
      v13 = 2 * v12;
      v14 = (void *)glitch::core::allocProcessBuffer((glitch::core *)(2 * v12), v9);
      v15 = *((glitch::video::IBuffer **)this + 83);
      if ( v15 )
      {
        glitch::video::IBuffer::reset(v15, v13, v14, 0);
      }
      else
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, int, int, unsigned int, void *, _DWORD))(*(_DWORD *)a2 + 120))(
          &v25,
          a2,
          1,
          4,
          v13,
          v14,
          0);
        v19 = v25;
        if ( v25 )
          ++*((_DWORD *)v25 + 1);
        v20 = *((glitch::IReferenceCounted **)this + 83);
        *((_DWORD *)this + 83) = v19;
        if ( v20 )
          glitch::IReferenceCounted::drop(v20);
        if ( v25 )
          glitch::IReferenceCounted::drop(v25);
      }
      v24 = *(glitch::IReferenceCounted **)(v8 + 24);
      if ( v24 )
        ++*((_DWORD *)v24 + 1);
      (*(void (__fastcall **)(glitch::scene::CBatchSceneNode *, _DWORD, char *, glitch::IReferenceCounted **))(*(_DWORD *)this + 268))(
        this,
        *((_DWORD *)this + 87),
        (char *)this + 332,
        &v24);
      v16 = *((glitch::IReferenceCounted **)this + 83);
      v21 = v16;
      if ( v16 )
        ++*((_DWORD *)v16 + 1);
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, _DWORD))(**((_DWORD **)this + 76) + 24))(
        &v23,
        *((_DWORD *)this + 76),
        *((_DWORD *)this + 87));
      glitch::video::IVideoDriver::setMaterial((int)a2, &v23, (int)&v27);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v23);
      v22 = *(glitch::video::CVertexStreams **)(v8 + 20);
      if ( v22 )
        ++*(_DWORD *)v22;
      glitch::video::IVideoDriver::draw((int)a2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v22);
      if ( v21 )
        glitch::IReferenceCounted::drop(v21);
      if ( v24 )
        glitch::IReferenceCounted::drop(v24);
      *(_DWORD *)(v3 + v4) = 0;
      if ( v14 )
        glitch::core::releaseProcessBuffer((glitch::core *)v14, v17);
      goto LABEL_21;
    }
  }
  v12 = glitch::scene::CBatchSceneNode::computeMaxIndices(this, *((_DWORD *)this + 87));
  if ( v12 )
    goto LABEL_7;
  *(_DWORD *)(v3 + v4) = 0;
LABEL_21:
  v18 = v27;
  if ( v27 )
  {
    v11 = (*(_DWORD *)v27)-- == 1;
    if ( v11 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v18);
      LC_API_FREE_0(v18);
    }
  }
}


// ===== 5807a0 glitch::scene::CBatchSceneNode::renderTransparentSegment(glitch::video::IVideoDriver *,glitch::scene::CBatchMesh::SSegment &) =====
void __fastcall glitch::scene::CBatchSceneNode::renderTransparentSegment(
        glitch::scene::CBatchSceneNode *this,
        glitch::video::IVideoDriver *a2,
        int **a3)
{
  int *v3; // r12
  int v4; // r3
  int v6; // r2
  int v8; // r3
  int v9; // r12
  int v11; // r3
  int v12; // r1
  int *v13; // r3
  int *v14; // r0
  int v15; // r2
  int v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r3

  v3 = a3[1];
  v4 = **a3;
  v6 = *((_DWORD *)this + 86);
  v8 = 20 * *(_DWORD *)(v4 + 8 * (_DWORD)v3);
  v9 = *(_DWORD *)(v6 + v8);
  v11 = v6 + v8;
  if ( !v9 )
  {
    glitch::scene::CBatchSceneNode::flushTransparentBatch(this, a2);
    v19 = *((_DWORD *)this + 86);
    *((_DWORD *)this + 87) = *(_DWORD *)(**a3 + 8 * (_DWORD)a3[1]);
    v11 = v19 + 20 * *(_DWORD *)(**a3 + 8 * (_DWORD)a3[1]);
  }
  if ( *(int **)(v11 + 8) == a3[7] )
    v12 = *(_DWORD *)(v11 + 12);
  else
    v12 = *(_DWORD *)(v11 + 12) | 1;
  *(_DWORD *)(v11 + 12) = v12;
  v13 = *a3;
  v14 = a3[1];
  a3[7] = (int *)glitch::os::Timer::TickCount;
  v15 = *v13;
  v16 = *((_DWORD *)this + 86);
  v17 = 20 * *(_DWORD *)(v15 + 8 * (_DWORD)v14);
  v18 = *(_DWORD *)(v16 + v17);
  *(_DWORD *)(v16 + 4 * *(_DWORD *)(v16 + v17 + 16) + 4 * v18) = a3;
  *(_DWORD *)(v16 + v17) = v18 + 1;
  if ( this != (glitch::scene::CBatchSceneNode *)glitch::scene::CSceneManager::getNextRenderedNode(
                                                   *((glitch::scene::CSceneManager **)this + 68),
                                                   nullptr,
                                                   nullptr) )
    glitch::scene::CBatchSceneNode::flushTransparentBatch(this, a2);
}


// ===== 5808ac glitch::scene::CBatchSceneNode::render(void *) =====
void __fastcall glitch::scene::CBatchSceneNode::render(glitch::scene::CBatchSceneNode *this, unsigned int a2)
{
  glitch::video::IVideoDriver *v4; // r4
  int v5; // r7

  v4 = *(glitch::video::IVideoDriver **)(*((_DWORD *)this + 68) + 20);
  if ( v4 )
  {
    (*(void (__fastcall **)(_DWORD, int, char *))(*(_DWORD *)v4 + 108))(
      *(_DWORD *)(*((_DWORD *)this + 68) + 20),
      1,
      (char *)this + 36);
    v5 = (*((_DWORD *)v4 + 34) >> 8) & 1;
    if ( v5 )
    {
      (*(void (__fastcall **)(glitch::video::IVideoDriver *, int, _DWORD))(*(_DWORD *)v4 + 160))(v4, 256, 0);
      if ( a2 )
      {
LABEL_4:
        if ( a2 >= 0x10000 )
          glitch::scene::CBatchSceneNode::renderTransparentSegment(
            this,
            v4,
            (int **)(*(_DWORD *)(*((_DWORD *)this + 76) + 8)
                   + *(_DWORD *)(*((_DWORD *)this + 76) + 112)
                   * (*(unsigned __int16 *)(*(_DWORD *)(*((_DWORD *)this + 76) + 32) + 20 * (unsigned __int16)a2 + 12)
                    - 1
                    + HIWORD(a2))));
        else
          glitch::scene::CBatchSceneNode::renderSolidBatch(this, v4, a2 - 1);
LABEL_6:
        if ( v5 )
          (*(void (__fastcall **)(glitch::video::IVideoDriver *, int, int))(*(_DWORD *)v4 + 160))(v4, 256, 1);
        return;
      }
    }
    else if ( a2 )
    {
      goto LABEL_4;
    }
    if ( *((_DWORD *)this + 81) )
    {
      do
        glitch::scene::CBatchSceneNode::renderSolidBatch(this, v4, a2++);
      while ( *((_DWORD *)this + 81) > a2 );
    }
    goto LABEL_6;
  }
}


// ===== 5809c0 `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode(
        glitch::scene::CBatchSceneNode *this)
{
  glitch::scene::CBatchSceneNode::~CBatchSceneNode((glitch::scene::CBatchSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5809d0 `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode(
        glitch::scene::CBatchSceneNode *this)
{
  glitch::scene::CBatchSceneNode::~CBatchSceneNode((glitch::scene::CBatchSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5809e0 `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode(
        glitch::scene::CBatchSceneNode *this)
{
  glitch::scene::CBatchSceneNode::~CBatchSceneNode((glitch::scene::CBatchSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5809f0 `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBatchSceneNode::~CBatchSceneNode(
        glitch::scene::CBatchSceneNode *this)
{
  glitch::scene::CBatchSceneNode::~CBatchSceneNode((glitch::scene::CBatchSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 580a00 `virtual thunk to'glitch::scene::CBatchSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::scene::CBatchSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  glitch::scene::CBatchSceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 580a10 `virtual thunk to'glitch::scene::CBatchSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CBatchSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CBatchSceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 580a20 glitch::scene::IBillboard::~IBillboard() =====
void __fastcall glitch::scene::IBillboard::~IBillboard(glitch::scene::IBillboard *this)
{
  ;
}


// ===== 580a24 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::getType(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::getType(
        glitch::scene::CBillboardSceneNode *this)
{
  return glitch::scene::CBillboardSceneNode::getType((glitch::scene::CBillboardSceneNode *)((char *)this - 4));
}


// ===== 580a2c glitch::scene::CBillboardSceneNode::getType(void) =====
int __fastcall glitch::scene::CBillboardSceneNode::getType(glitch::scene::CBillboardSceneNode *this)
{
  return 1819044194;
}


// ===== 580a38 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::onRegisterSceneNode(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::onRegisterSceneNode(
        glitch::scene::CBillboardSceneNode *this)
{
  return glitch::scene::CBillboardSceneNode::onRegisterSceneNode((glitch::scene::CBillboardSceneNode *)((char *)this - 4));
}


// ===== 580a40 glitch::scene::CBillboardSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CBillboardSceneNode::onRegisterSceneNode(glitch::scene::CBillboardSceneNode *this)
{
  (*(void (__fastcall **)(_DWORD, char *, char *, int, int, _DWORD, int))(**((_DWORD **)this + 69) + 36))(
    *((_DWORD *)this + 69),
    (char *)this + 4,
    (char *)this + 340,
    1,
    3,
    0,
    0x7FFFFFFF);
  return 1;
}


// ===== 580a90 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::getBoundingBox(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::getBoundingBox(
        glitch::scene::CBillboardSceneNode *this)
{
  return glitch::scene::CBillboardSceneNode::getBoundingBox((glitch::scene::CBillboardSceneNode *)((char *)this - 4));
}


// ===== 580a98 glitch::scene::CBillboardSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CBillboardSceneNode::getBoundingBox(glitch::scene::CBillboardSceneNode *this)
{
  return (char *)this + 316;
}


// ===== 580aa0 glitch::scene::CBillboardSceneNode::setSize(glitch::core::dimension2d<float> const&) =====
float __fastcall glitch::scene::CBillboardSceneNode::setSize(int a1, float *a2)
{
  float v3; // r0
  float result; // r0

  *(float *)(a1 + 308) = *a2;
  v3 = *(float *)(a1 + 308);
  *(float *)(a1 + 312) = a2[1];
  if ( v3 == 0.0 )
    *(_DWORD *)(a1 + 308) = 1065353216;
  if ( *(float *)(a1 + 312) == 0.0 )
    *(_DWORD *)(a1 + 312) = 1065353216;
  result = (float)(*a2 + a2[1]) / 6.0;
  *(float *)(a1 + 336) = result;
  *(_DWORD *)(a1 + 324) = LODWORD(result) + 0x80000000;
  *(_DWORD *)(a1 + 316) = LODWORD(result) + 0x80000000;
  *(_DWORD *)(a1 + 320) = LODWORD(result) + 0x80000000;
  *(float *)(a1 + 328) = result;
  *(float *)(a1 + 332) = result;
  return result;
}


// ===== 580b24 glitch::scene::CBillboardSceneNode::getMaterial(uint) =====
char *__fastcall glitch::scene::CBillboardSceneNode::getMaterial(
        glitch::scene::CBillboardSceneNode *this,
        unsigned int a2)
{
  return (char *)this + 340;
}


// ===== 580b2c `non-virtual thunk to'glitch::scene::CBillboardSceneNode::getMaterialCount(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::getMaterialCount(
        glitch::scene::CBillboardSceneNode *this)
{
  return glitch::scene::CBillboardSceneNode::getMaterialCount((glitch::scene::CBillboardSceneNode *)((char *)this - 4));
}


// ===== 580b34 glitch::scene::CBillboardSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CBillboardSceneNode::getMaterialCount(glitch::scene::CBillboardSceneNode *this)
{
  return 1;
}


// ===== 580b3c glitch::scene::CBillboardSceneNode::getSize(void) =====
char *__fastcall glitch::scene::CBillboardSceneNode::getSize(glitch::scene::CBillboardSceneNode *this)
{
  return (char *)this + 308;
}


// ===== 580b44 glitch::scene::CBillboardSceneNode::setColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CBillboardSceneNode::setColor(int a1, const void *a2)
{
  memcpy((void *)(a1 + 376), a2, 4u);
  memcpy((void *)(a1 + 412), a2, 4u);
  memcpy((void *)(a1 + 448), a2, 4u);
  return memcpy((void *)(a1 + 484), a2, 4u);
}


// ===== 580b94 glitch::scene::CBillboardSceneNode::setColor(glitch::video::SColor const&,glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CBillboardSceneNode::setColor(int a1, const void *a2, void *a3)
{
  memcpy((void *)(a1 + 376), a3, 4u);
  memcpy((void *)(a1 + 412), a2, 4u);
  memcpy((void *)(a1 + 448), a2, 4u);
  return memcpy((void *)(a1 + 484), a3, 4u);
}


// ===== 580bec glitch::scene::CBillboardSceneNode::getColor(glitch::video::SColor &,glitch::video::SColor &) =====
void *__fastcall glitch::scene::CBillboardSceneNode::getColor(int a1, void *a2, void *a3)
{
  memcpy(a3, (const void *)(a1 + 376), 4u);
  return memcpy(a2, (const void *)(a1 + 412), 4u);
}


// ===== 580c20 `global constructor keyed to'.._source_glitch_scene_CBillboardSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CBillboardSceneNode.cpp()
{
  dword_9F6838 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6834 = 1056964608;
}


// ===== 580c40 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::serializeAttributes(int a1)
{
  return glitch::scene::CBillboardSceneNode::serializeAttributes(a1 - 4);
}


// ===== 580c48 glitch::scene::CBillboardSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CBillboardSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  glitch::scene::ISceneNode::serializeAttributes(a1 + 1);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Width", a1[77], 0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Height", a1[78], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "Shade_Top", a1[103], 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "Shade_Down", a1[94], 0);
}


// ===== 580cf0 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::deserializeAttributes(int a1)
{
  return glitch::scene::CBillboardSceneNode::deserializeAttributes(a1 - 4);
}


// ===== 580cf8 glitch::scene::CBillboardSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CBillboardSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  glitch::scene::ISceneNode::deserializeAttributes(a1 + 1);
  a1[77] = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 112))(a2, "Width");
  a1[78] = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 112))(a2, "Height");
  a1[103] = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "Shade_Top");
  a1[94] = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "Shade_Down");
  return (*(int (__fastcall **)(_DWORD *, _DWORD *))(*a1 + 8))(a1, a1 + 77);
}


// ===== 580dd4 glitch::scene::IBillboard::~IBillboard() =====
void __fastcall glitch::scene::IBillboard::~IBillboard(glitch::scene::IBillboard *this)
{
  LC_API_FREE_0(this);
}


// ===== 580de8 `non-virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(
        glitch::scene::IBillboardSceneNode *this)
{
  glitch::scene::IBillboardSceneNode::~IBillboardSceneNode((glitch::scene::IBillboardSceneNode *)((char *)this - 4));
}


// ===== 580df0 glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(glitch::scene::IBillboardSceneNode *this)
{
  *((_DWORD *)this + 77) = off_974DC4;
  *(_DWORD *)this = off_974C88;
  *((_DWORD *)this + 1) = off_974CC0;
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::IBillboardSceneNode *)((char *)this + 4));
}


// ===== 580e48 `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(
        glitch::scene::IBillboardSceneNode *this)
{
  glitch::scene::IBillboardSceneNode::~IBillboardSceneNode((glitch::scene::IBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 580e58 `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(
        glitch::scene::IBillboardSceneNode *this)
{
  glitch::scene::IBillboardSceneNode::~IBillboardSceneNode((glitch::scene::IBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 580e68 glitch::scene::CBillboardSceneNode::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
glitch::video::CMaterial **__fastcall glitch::scene::CBillboardSceneNode::setMaterial(
        int a1,
        glitch::video::CMaterial **a2)
{
  glitch::video::CMaterial *v2; // r3
  glitch::video::CMaterial *v3; // r1
  glitch::video::CMaterial *v5; // [sp+4h] [bp-8h] BYREF

  v2 = *a2;
  v5 = v2;
  if ( v2 )
    ++*(_DWORD *)v2;
  v3 = *(glitch::video::CMaterial **)(a1 + 340);
  if ( v2 )
    v2 = v5;
  *(_DWORD *)(a1 + 340) = v2;
  v5 = v3;
  return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
}


// ===== 580eac glitch::scene::IBillboardSceneNode::IBillboardSceneNode(int,glitch::core::vector3d<float> const&) =====
int *__fastcall glitch::scene::IBillboardSceneNode::IBillboardSceneNode(int *a1, int *a2, int a3, int a4)
{
  int v6; // r3
  _DWORD v8[4]; // [sp+Ch] [bp+0h] BYREF
  _DWORD v9[4]; // [sp+1Ch] [bp+10h] BYREF

  *a1 = (int)off_974F68;
  v9[2] = 1065353216;
  memset(v8, 0, 12);
  v8[3] = 1065353216;
  v9[0] = 1065353216;
  v9[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1 + 1, a2 + 1, a3, a4, v8, v9);
  v6 = *a2;
  *a1 = *a2;
  a1[1] = a2[4];
  *(int *)((char *)a1 + *(_DWORD *)(v6 - 12)) = a2[5];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 16)) = a2[6];
  return a1;
}


// ===== 580f50 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::render(void *) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::render(
        glitch::scene::CBillboardSceneNode *this,
        void *a2)
{
  return glitch::scene::CBillboardSceneNode::render((glitch::scene::CBillboardSceneNode *)((char *)this - 4), a2);
}


// ===== 580f58 glitch::scene::CBillboardSceneNode::render(void *) =====
void __fastcall glitch::scene::CBillboardSceneNode::render(glitch::scene::CBillboardSceneNode *this, void *a2)
{
  int v2; // r3
  _DWORD *v3; // r7
  int v4; // r5
  bool v6; // zf
  int v7; // r0
  float v8; // r8
  float v9; // r9
  float v10; // r11
  float *v11; // r3
  float v12; // r0
  float v13; // r7
  float v14; // r8
  float v15; // r10
  float v16; // r0
  float v17; // r10
  float v18; // r8
  float v19; // r7
  float v20; // r10
  float v21; // r0
  float v22; // r12
  float v23; // r2
  float v24; // r3
  float v25; // r8
  float v26; // r11
  float v27; // r0
  float v28; // r7
  float v29; // r0
  float v30; // r8
  float v31; // r7
  float v32; // r7
  float v33; // r0
  float v34; // r8
  float v35; // r7
  float v36; // r7
  float v37; // r0
  float v38; // r8
  float v39; // r7
  float v40; // r8
  float v41; // r7
  glitch::video::CMaterial *v42; // r0
  int Technique; // r2
  void (__fastcall *v44)(int, glitch::video::CVertexStreams **, glitch::IReferenceCounted **); // r12
  glitch::video::CVertexStreams *v45; // r4
  float v46; // [sp+Ch] [bp-E0h]
  float v47; // [sp+Ch] [bp-E0h]
  float v48; // [sp+10h] [bp-DCh]
  float v49; // [sp+10h] [bp-DCh]
  float v50; // [sp+14h] [bp-D8h]
  float v51; // [sp+18h] [bp-D4h]
  float v52; // [sp+1Ch] [bp-D0h]
  float v53; // [sp+1Ch] [bp-D0h]
  float v55; // [sp+24h] [bp-C8h]
  glitch::IReferenceCounted *v56[5]; // [sp+2Ch] [bp-C0h] BYREF
  __int16 v57; // [sp+40h] [bp-ACh]
  __int16 v58; // [sp+42h] [bp-AAh]
  float v59[3]; // [sp+44h] [bp-A8h] BYREF
  float v60[3]; // [sp+50h] [bp-9Ch] BYREF
  float v61[3]; // [sp+5Ch] [bp-90h] BYREF
  float v62[3]; // [sp+68h] [bp-84h] BYREF
  float v63[3]; // [sp+74h] [bp-78h] BYREF
  float v64[3]; // [sp+80h] [bp-6Ch] BYREF
  float v65[3]; // [sp+8Ch] [bp-60h] BYREF
  float v66[3]; // [sp+98h] [bp-54h] BYREF
  float v67; // [sp+A4h] [bp-48h] BYREF
  float v68; // [sp+A8h] [bp-44h]
  float v69; // [sp+ACh] [bp-40h]
  float v70; // [sp+B0h] [bp-3Ch] BYREF
  float v71; // [sp+B4h] [bp-38h]
  float v72; // [sp+B8h] [bp-34h]
  float v73; // [sp+BCh] [bp-30h] BYREF
  float v74; // [sp+C0h] [bp-2Ch]
  float v75; // [sp+C4h] [bp-28h]
  float v76[3]; // [sp+C8h] [bp-24h] BYREF
  float v77; // [sp+D4h] [bp-18h] BYREF
  float v78; // [sp+D8h] [bp-14h]
  float v79; // [sp+DCh] [bp-10h]
  glitch::IReferenceCounted *v80; // [sp+E0h] [bp-Ch]
  glitch::video::CVertexStreams *v81; // [sp+E4h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 69);
  v3 = *(_DWORD **)(v2 + 228);
  v4 = *(_DWORD *)(v2 + 20);
  v6 = v3 == nullptr;
  if ( v3 )
    v6 = v4 == 0;
  if ( !v6 )
  {
    glitch::scene::ISceneNode::getAbsolutePosition(&v77, (_DWORD *)this + 1);
    glitch::scene::ISceneNode::getAbsolutePosition(v76, v3);
    v7 = (*(int (__fastcall **)(_DWORD *))(*v3 + 264))(v3);
    v8 = *(float *)(v7 + 4);
    v9 = *(float *)(v7 + 8);
    v10 = *(float *)v7;
    v11 = (float *)(*(int (__fastcall **)(_DWORD *))(*v3 + 280))(v3);
    v12 = v8;
    v13 = v11[2];
    v14 = *v11;
    v15 = v11[1];
    v73 = v10 - v76[0];
    v74 = v12 - v76[1];
    v75 = v9 - v76[2];
    glitch::core::vector3d<float>::normalize(&v73);
    v72 = (float)(v74 * COERCE_FLOAT(LODWORD(v14) + 0x80000000)) + (float)(v15 * v73);
    v70 = (float)(COERCE_FLOAT(LODWORD(v15) + 0x80000000) * v75) + (float)(v13 * v74);
    v71 = (float)(COERCE_FLOAT(LODWORD(v13) + 0x80000000) * v73) + (float)(v14 * v75);
    v16 = sqrt((float)((float)((float)(v70 * v70) + (float)(v71 * v71)) + (float)(v72 * v72)));
    if ( v16 == 0.0 )
    {
      v70 = v15;
      v71 = v14;
      v72 = v13;
    }
    glitch::core::vector3d<float>::normalize(&v70);
    v17 = *((float *)this + 77) * 0.5;
    v70 = v17 * v70;
    v71 = v17 * v71;
    v72 = v17 * v72;
    v67 = (float)(COERCE_FLOAT(LODWORD(v71) + 0x80000000) * v75) + (float)(v72 * v74);
    v68 = (float)(COERCE_FLOAT(LODWORD(v72) + 0x80000000) * v73) + (float)(v70 * v75);
    v69 = (float)(v74 * COERCE_FLOAT(LODWORD(v70) + 0x80000000)) + (float)(v71 * v73);
    glitch::core::vector3d<float>::normalize(&v67);
    v18 = *((float *)this + 78) * 0.5;
    v67 = v67 * v18;
    v19 = v67;
    v68 = v68 * v18;
    v20 = v68;
    v21 = v69 * v18;
    LODWORD(v22) = LODWORD(v73) + 0x80000000;
    LODWORD(v23) = LODWORD(v74) + 0x80000000;
    LODWORD(v24) = LODWORD(v75) + 0x80000000;
    *((_DWORD *)this + 118) = LODWORD(v73) + 0x80000000;
    *((float *)this + 119) = v23;
    *((float *)this + 91) = v22;
    *((float *)this + 92) = v23;
    *((float *)this + 100) = v22;
    *((float *)this + 101) = v23;
    *((float *)this + 109) = v22;
    *((float *)this + 110) = v23;
    *((float *)this + 120) = v24;
    *((float *)this + 93) = v24;
    *((float *)this + 102) = v24;
    *((float *)this + 111) = v24;
    v25 = v21;
    v73 = v22;
    v74 = v23;
    v75 = v24;
    v69 = v21;
    v52 = v77 + v70;
    v51 = (float)(v77 + v70) + v19;
    v46 = v78 + v71;
    v26 = (float)(v78 + v71) + v20;
    v48 = v79 + v72;
    v27 = (float)(v79 + v72) + v21;
    *((float *)this + 88) = v27;
    *((float *)this + 87) = v26;
    *((float *)this + 86) = v51;
    *((float *)this + 95) = v52 - v19;
    *((float *)this + 96) = v46 - v20;
    *((float *)this + 97) = v48 - v25;
    v50 = v78 - v71;
    v47 = (float)(v78 - v71) - v20;
    v53 = v79 - v72;
    v49 = (float)(v79 - v72) - v25;
    v55 = v77 - v70;
    *((float *)this + 113) = (float)(v77 - v70) - v19;
    *((float *)this + 114) = v47;
    *((float *)this + 115) = v49;
    *((float *)this + 105) = v50 + v20;
    *((float *)this + 104) = v55 + v19;
    *((float *)this + 106) = v53 + v25;
    v66[0] = v51 - v77;
    v66[1] = v26 - v78;
    v66[2] = v27 - v79;
    glitch::core::quaternion::operator*(v65, (float *)this + 47, v66);
    v28 = v79 + v65[2];
    v29 = v77 + v65[0];
    *((float *)this + 87) = v78 + v65[1];
    *((float *)this + 86) = v29;
    *((float *)this + 88) = v28;
    v30 = *((float *)this + 96) - v78;
    v31 = *((float *)this + 97) - v79;
    v64[0] = *((float *)this + 95) - v77;
    v64[1] = v30;
    v64[2] = v31;
    glitch::core::quaternion::operator*(v63, (float *)this + 47, v64);
    v32 = v79 + v63[2];
    v33 = v77 + v63[0];
    *((float *)this + 96) = v78 + v63[1];
    *((float *)this + 95) = v33;
    *((float *)this + 97) = v32;
    v34 = *((float *)this + 114) - v78;
    v35 = *((float *)this + 115) - v79;
    v62[0] = *((float *)this + 113) - v77;
    v62[1] = v34;
    v62[2] = v35;
    glitch::core::quaternion::operator*(v61, (float *)this + 47, v62);
    v36 = v79 + v61[2];
    v37 = v77 + v61[0];
    *((float *)this + 114) = v78 + v61[1];
    *((float *)this + 113) = v37;
    *((float *)this + 115) = v36;
    v38 = *((float *)this + 105) - v78;
    v39 = *((float *)this + 106) - v79;
    v60[0] = *((float *)this + 104) - v77;
    v60[1] = v38;
    v60[2] = v39;
    glitch::core::quaternion::operator*(v59, (float *)this + 47, v60);
    v40 = v78 + v59[1];
    v41 = v79 + v59[2];
    *((float *)this + 104) = v77 + v59[0];
    *((float *)this + 105) = v40;
    *((float *)this + 106) = v41;
    if ( a2 )
    {
      (*(void (__fastcall **)(int, int, int *))(*(_DWORD *)v4 + 108))(v4, 1, &glitch::core::IdentityMatrix);
      v42 = *((glitch::video::CMaterial **)this + 85);
      if ( v42 )
        Technique = glitch::video::CMaterial::getTechnique(v42);
      else
        Technique = 255;
      glitch::video::IVideoDriver::setMaterial(v4, (char *)this + 340, Technique, 0);
      v81 = *((glitch::video::CVertexStreams **)this + 122);
      if ( v81 )
        ++*(_DWORD *)v81;
      v57 = 255;
      v58 = 4;
      v56[0] = nullptr;
      v56[1] = nullptr;
      v56[2] = (glitch::IReferenceCounted *)byte_4;
      v56[3] = nullptr;
      v56[4] = (glitch::IReferenceCounted *)byte_4;
      v44 = *(void (__fastcall **)(int, glitch::video::CVertexStreams **, glitch::IReferenceCounted **))(*(_DWORD *)v4 + 88);
      v80 = nullptr;
      v44(v4, &v81, v56);
      if ( v80 )
        glitch::IReferenceCounted::drop(v80);
      if ( v56[0] )
        glitch::IReferenceCounted::drop(v56[0]);
      v45 = v81;
      if ( v81 )
      {
        v6 = (*(_DWORD *)v81)-- == 1;
        if ( v6 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v45);
          LC_API_FREE_0(v45);
        }
      }
    }
  }
}


// ===== 58174c `non-virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(
        glitch::scene::IBillboardSceneNode *this)
{
  glitch::scene::IBillboardSceneNode::~IBillboardSceneNode((glitch::scene::IBillboardSceneNode *)((char *)this - 4));
}


// ===== 581754 glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(glitch::scene::IBillboardSceneNode *this)
{
  *(_DWORD *)this = off_974C88;
  *((_DWORD *)this + 1) = off_974CC0;
  *((_DWORD *)this + 77) = off_974DC4;
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::IBillboardSceneNode *)((char *)this + 4));
  LC_API_FREE_0(this);
}


// ===== 5817b4 `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(
        glitch::scene::IBillboardSceneNode *this)
{
  glitch::scene::IBillboardSceneNode::~IBillboardSceneNode((glitch::scene::IBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5817c4 `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IBillboardSceneNode::~IBillboardSceneNode(
        glitch::scene::IBillboardSceneNode *this)
{
  glitch::scene::IBillboardSceneNode::~IBillboardSceneNode((glitch::scene::IBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5817d4 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::scene::CBillboardSceneNode *this)
{
  glitch::scene::CBillboardSceneNode::~CBillboardSceneNode((glitch::scene::CBillboardSceneNode *)((char *)this - 4));
}


// ===== 5817dc glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(glitch::scene::CBillboardSceneNode *this)
{
  glitch::video::CVertexStreams *v1; // r6

  v1 = *((glitch::video::CVertexStreams **)this + 122);
  *(_DWORD *)this = off_974F98;
  *((_DWORD *)this + 1) = off_974FF4;
  *((_DWORD *)this + 123) = off_9750F8;
  if ( v1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v1);
      LC_API_FREE_0(v1);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 85);
  *(_DWORD *)this = off_975150;
  *((_DWORD *)this + 1) = off_975188;
  *(_DWORD *)&byte_4[(_DWORD)this] = off_975188;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_97528C;
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::CBillboardSceneNode *)((char *)this + 4));
}


// ===== 581898 `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::scene::CBillboardSceneNode *this)
{
  glitch::scene::CBillboardSceneNode::~CBillboardSceneNode((glitch::scene::CBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5818a8 `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::scene::CBillboardSceneNode *this)
{
  glitch::scene::CBillboardSceneNode::~CBillboardSceneNode((glitch::scene::CBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5818b8 `non-virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::scene::CBillboardSceneNode *this)
{
  glitch::scene::CBillboardSceneNode::~CBillboardSceneNode((glitch::scene::CBillboardSceneNode *)((char *)this - 4));
}


// ===== 5818c0 glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(glitch::scene::CBillboardSceneNode *this)
{
  glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 5818dc `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::scene::CBillboardSceneNode *this)
{
  glitch::scene::CBillboardSceneNode::~CBillboardSceneNode((glitch::scene::CBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5818ec `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::scene::CBillboardSceneNode *this)
{
  glitch::scene::CBillboardSceneNode::~CBillboardSceneNode((glitch::scene::CBillboardSceneNode *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5818fc glitch::scene::CBillboardSceneNode::CBillboardSceneNode(glitch::video::IVideoDriver *,int,glitch::core::vector3d<float> const&,glitch::core::dimension2d<float> const&,glitch::video::SColor,glitch::video::SColor) =====
int __fastcall glitch::scene::CBillboardSceneNode::CBillboardSceneNode(
        int a1,
        int a2,
        int a3,
        int a4,
        float *a5,
        int a6,
        int a7)
{
  _DWORD *v9; // r10
  _DWORD *v10; // r3
  glitch::video::CVertexStreams *v11; // r3
  glitch::video::CVertexStreams *v12; // r5
  bool v13; // zf
  glitch::video::CVertexStreams *v14; // r5
  glitch::IReferenceCounted *v15; // r0
  glitch::IReferenceCounted *v17; // [sp+20h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v18; // [sp+24h] [bp-8h] BYREF

  *(_DWORD *)(a1 + 496) = 1;
  *(_DWORD *)(a1 + 4) = off_9753D4;
  *(_DWORD *)(a1 + 492) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[68] + a1) = (int)off_9753F4;
  v9 = (_DWORD *)(a1 + 344);
  glitch::scene::IBillboardSceneNode::IBillboardSceneNode((int *)a1, (int *)&off_97510C, a3, a4);
  *(_DWORD *)(a1 + 4) = off_974FF4;
  *(_DWORD *)(a1 + 336) = 1065353216;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_DWORD *)(a1 + 332) = 1065353216;
  *(_DWORD *)a1 = off_974F98;
  *(_DWORD *)(a1 + 492) = off_9750F8;
  *(_DWORD *)(a1 + 324) = -1082130432;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = -1082130432;
  *(_DWORD *)(a1 + 320) = -1082130432;
  v10 = v9;
  do
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
    v10[6] = 0;
    v10[7] = 0;
    v10 += 9;
  }
  while ( v10 != (_DWORD *)(a1 + 488) );
  *(_DWORD *)(a1 + 488) = 0;
  glitch::scene::CBillboardSceneNode::setSize(a1, a5);
  glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams *)&v18, 1u, 0x60000u);
  v11 = v18;
  if ( v18 )
    ++*(_DWORD *)v18;
  v12 = *(glitch::video::CVertexStreams **)(a1 + 488);
  *(_DWORD *)(a1 + 488) = v11;
  if ( v12 )
  {
    v13 = (*(_DWORD *)v12)-- == 1;
    if ( v13 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v12);
      LC_API_FREE_0(v12);
    }
  }
  v14 = v18;
  if ( v18 )
  {
    v13 = (*(_DWORD *)v18)-- == 1;
    if ( v13 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v14);
      LC_API_FREE_0(v14);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, _DWORD *, _DWORD))(*(_DWORD *)a2 + 120))(
    &v17,
    a2,
    0,
    4,
    144,
    v9,
    0);
  glitch::video::CVertexStreams::setupStreams(*(_DWORD *)(a1 + 488), &v17, -1);
  *(_DWORD *)(*(_DWORD *)(a1 + 488) + 8) = 4;
  v15 = v17;
  *(_WORD *)(a1 + 486) = HIWORD(a6);
  *(_BYTE *)(a1 + 485) = BYTE1(a6);
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 1065353216;
  *(_BYTE *)(a1 + 484) = a6;
  *(_DWORD *)(a1 + 448) = a7;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 360) = 1065353216;
  *(_DWORD *)(a1 + 376) = a7;
  *(_DWORD *)(a1 + 392) = 1065353216;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 412) = a6;
  *(_DWORD *)(a1 + 464) = 0;
  *(_DWORD *)(a1 + 468) = 0;
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  return a1;
}


// ===== 581bbc `non-virtual thunk to'glitch::scene::CBillboardSceneNode::clone(void) =====
int __fastcall `non-virtual thunk to'glitch::scene::CBillboardSceneNode::clone(
        glitch::scene::CBillboardSceneNode *this)
{
  return glitch::scene::CBillboardSceneNode::clone((glitch::scene::CBillboardSceneNode *)((char *)this - 4));
}


// ===== 581bc4 glitch::scene::CBillboardSceneNode::clone(void) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::CBillboardSceneNode::clone(
        glitch::scene::CBillboardSceneNode *this)
{
  int v2; // r6
  glitch::video::CMaterial **v3; // r0
  int v4; // r1
  glitch::scene::ISceneNode *v5; // r6
  glitch::video::CMaterial **v6; // r5
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterial *v9[3]; // [sp+14h] [bp-Ch] BYREF

  v2 = *(_DWORD *)(*((_DWORD *)this + 69) + 20);
  v9[2] = (glitch::video::CMaterial *)-1;
  v9[1] = (glitch::video::CMaterial *)-1;
  v3 = (glitch::video::CMaterial **)operator new(0x1F4u, 0);
  v4 = v2;
  v5 = (glitch::scene::ISceneNode *)(v3 + 1);
  v6 = v3;
  glitch::scene::CBillboardSceneNode::CBillboardSceneNode(
    (int)v3,
    v4,
    *((_DWORD *)this + 68),
    (int)this + 176,
    (float *)this + 77,
    -1,
    -1);
  glitch::scene::ISceneNode::cloneMembers(v5, (glitch::scene::CBillboardSceneNode *)((char *)this + 4));
  v7 = *((glitch::video::CMaterial **)this + 85);
  v9[0] = v7;
  if ( v7 )
  {
    ++*(_DWORD *)v7;
    v7 = v9[0];
  }
  v9[0] = v6[85];
  v6[85] = v7;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v9);
  return v5;
}


// ===== 581c80 glitch::scene::CBillboardSceneNode::CBillboardSceneNode(glitch::video::IVideoDriver *,int,glitch::core::vector3d<float> const&,glitch::core::dimension2d<float> const&,glitch::video::SColor,glitch::video::SColor) =====
int __fastcall glitch::scene::CBillboardSceneNode::CBillboardSceneNode(
        int a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        float *a6,
        int a7,
        int a8)
{
  _DWORD *v11; // r8
  int v12; // r3
  _DWORD *v13; // r3
  glitch::video::CVertexStreams *v14; // r3
  glitch::video::CVertexStreams *v15; // r5
  bool v16; // zf
  glitch::video::CVertexStreams *v17; // r5
  glitch::IReferenceCounted *v18; // r0
  glitch::IReferenceCounted *v20; // [sp+28h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v21; // [sp+2Ch] [bp-8h] BYREF

  v11 = (_DWORD *)(a1 + 344);
  glitch::scene::IBillboardSceneNode::IBillboardSceneNode((int *)a1, a2 + 1, a4, a5);
  v12 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + 4) = a2[8];
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[9];
  v13 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[10];
  *(_DWORD *)(a1 + 324) = -1082130432;
  *(_DWORD *)(a1 + 336) = 1065353216;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = -1082130432;
  *(_DWORD *)(a1 + 320) = -1082130432;
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_DWORD *)(a1 + 332) = 1065353216;
  do
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
    v13[6] = 0;
    v13[7] = 0;
    v13 += 9;
  }
  while ( v13 != (_DWORD *)(a1 + 488) );
  *(_DWORD *)(a1 + 488) = 0;
  glitch::scene::CBillboardSceneNode::setSize(a1, a6);
  glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams *)&v21, 1u, 0x60000u);
  v14 = v21;
  if ( v21 )
    ++*(_DWORD *)v21;
  v15 = *(glitch::video::CVertexStreams **)(a1 + 488);
  *(_DWORD *)(a1 + 488) = v14;
  if ( v15 )
  {
    v16 = (*(_DWORD *)v15)-- == 1;
    if ( v16 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v15);
      LC_API_FREE_0(v15);
    }
  }
  v17 = v21;
  if ( v21 )
  {
    v16 = (*(_DWORD *)v21)-- == 1;
    if ( v16 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v17);
      LC_API_FREE_0(v17);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, _DWORD *, _DWORD))(*(_DWORD *)a3 + 120))(
    &v20,
    a3,
    0,
    4,
    144,
    v11,
    0);
  glitch::video::CVertexStreams::setupStreams(*(_DWORD *)(a1 + 488), &v20, -1);
  *(_DWORD *)(*(_DWORD *)(a1 + 488) + 8) = 4;
  v18 = v20;
  *(_WORD *)(a1 + 486) = HIWORD(a7);
  *(_BYTE *)(a1 + 485) = BYTE1(a7);
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 1065353216;
  *(_BYTE *)(a1 + 484) = a7;
  *(_WORD *)(a1 + 450) = HIWORD(a8);
  *(_BYTE *)(a1 + 449) = BYTE1(a8);
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 360) = 1065353216;
  *(_BYTE *)(a1 + 448) = a8;
  *(_DWORD *)(a1 + 376) = a8;
  *(_DWORD *)(a1 + 392) = 1065353216;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 412) = a7;
  *(_DWORD *)(a1 + 464) = 0;
  *(_DWORD *)(a1 + 468) = 0;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  return a1;
}


// ===== 581f14 `virtual thunk to'glitch::scene::CBillboardSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CBillboardSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CBillboardSceneNode::deserializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 581f24 `virtual thunk to'glitch::scene::CBillboardSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CBillboardSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CBillboardSceneNode::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 581f34 glitch::scene::CCameraSceneNode::getType(void) =====
int __fastcall glitch::scene::CCameraSceneNode::getType(glitch::scene::CCameraSceneNode *this)
{
  return 1601003875;
}


// ===== 581f40 glitch::scene::CCameraSceneNode::setInputReceiverEnabled(bool) =====
int __fastcall glitch::scene::CCameraSceneNode::setInputReceiverEnabled(int this, bool a2)
{
  *(_BYTE *)(this + 357) = a2;
  return this;
}


// ===== 581f48 glitch::scene::CCameraSceneNode::isInputReceiverEnabled(void) =====
int __fastcall glitch::scene::CCameraSceneNode::isInputReceiverEnabled(glitch::scene::CCameraSceneNode *this)
{
  return *((unsigned __int8 *)this + 357);
}


// ===== 581f50 glitch::scene::CCameraSceneNode::getProjectionMatrix(void) =====
char *__fastcall glitch::scene::CCameraSceneNode::getProjectionMatrix(glitch::scene::CCameraSceneNode *this)
{
  return (char *)this + 628;
}


// ===== 581f58 glitch::scene::CCameraSceneNode::getViewMatrix(void) =====
char *__fastcall glitch::scene::CCameraSceneNode::getViewMatrix(glitch::scene::CCameraSceneNode *this)
{
  return (char *)this + 492;
}


// ===== 581f60 `non-virtual thunk to'glitch::scene::CCameraSceneNode::onEvent(glitch::SEvent const&) =====
int __fastcall `non-virtual thunk to'glitch::scene::CCameraSceneNode::onEvent(int a1)
{
  return glitch::scene::CCameraSceneNode::onEvent(a1 - 304);
}


// ===== 581f68 glitch::scene::CCameraSceneNode::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::scene::CCameraSceneNode::onEvent(int a1, int a2)
{
  int *v3; // r4
  int *v4; // r5

  if ( !*(_BYTE *)(a1 + 357) )
    return 0;
  v4 = (int *)(a1 + 252);
  v3 = *(int **)(a1 + 252);
  if ( (int *)(a1 + 252) == v3 )
    return 0;
  while ( !(*(int (__fastcall **)(int))(*(_DWORD *)v3[2] + 28))(v3[2])
       || !(*(int (__fastcall **)(int, int))(*(_DWORD *)v3[2] + 32))(v3[2], a2) )
  {
    v3 = (int *)*v3;
    if ( v4 == v3 )
      return 0;
  }
  return 1;
}


// ===== 581fe4 glitch::scene::CCameraSceneNode::setTarget(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CCameraSceneNode::setTarget(_DWORD *result, _DWORD *a2)
{
  result[78] = *a2;
  result[79] = a2[1];
  result[80] = a2[2];
  return result;
}


// ===== 582000 glitch::scene::CCameraSceneNode::getTarget(void) =====
char *__fastcall glitch::scene::CCameraSceneNode::getTarget(glitch::scene::CCameraSceneNode *this)
{
  return (char *)this + 312;
}


// ===== 582008 glitch::scene::CCameraSceneNode::setUpVector(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CCameraSceneNode::setUpVector(_DWORD *result, _DWORD *a2)
{
  result[81] = *a2;
  result[82] = a2[1];
  result[83] = a2[2];
  return result;
}


// ===== 582024 glitch::scene::CCameraSceneNode::getUpVector(void) =====
char *__fastcall glitch::scene::CCameraSceneNode::getUpVector(glitch::scene::CCameraSceneNode *this)
{
  return (char *)this + 324;
}


// ===== 58202c glitch::scene::CCameraSceneNode::getNearValue(void) =====
int __fastcall glitch::scene::CCameraSceneNode::getNearValue(glitch::scene::CCameraSceneNode *this)
{
  return *((_DWORD *)this + 87);
}


// ===== 582034 glitch::scene::CCameraSceneNode::getFarValue(void) =====
int __fastcall glitch::scene::CCameraSceneNode::getFarValue(glitch::scene::CCameraSceneNode *this)
{
  return *((_DWORD *)this + 88);
}


// ===== 58203c glitch::scene::CCameraSceneNode::getAspectRatio(void) =====
int __fastcall glitch::scene::CCameraSceneNode::getAspectRatio(glitch::scene::CCameraSceneNode *this)
{
  return *((_DWORD *)this + 86);
}


// ===== 582044 glitch::scene::CCameraSceneNode::getFOV(void) =====
int __fastcall glitch::scene::CCameraSceneNode::getFOV(glitch::scene::CCameraSceneNode *this)
{
  return *((_DWORD *)this + 85);
}


// ===== 58204c glitch::scene::CCameraSceneNode::getFarToInifinity(void) =====
int __fastcall glitch::scene::CCameraSceneNode::getFarToInifinity(glitch::scene::CCameraSceneNode *this)
{
  return *((unsigned __int8 *)this + 356);
}


// ===== 582054 glitch::scene::CCameraSceneNode::setNearValue(float) =====
int __fastcall glitch::scene::CCameraSceneNode::setNearValue(glitch::scene::CCameraSceneNode *this, float a2)
{
  *((float *)this + 87) = a2;
  return (*(int (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 344))(this);
}


// ===== 58206c glitch::scene::CCameraSceneNode::setFarValue(float) =====
int __fastcall glitch::scene::CCameraSceneNode::setFarValue(glitch::scene::CCameraSceneNode *this, float a2)
{
  *((float *)this + 88) = a2;
  return (*(int (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 344))(this);
}


// ===== 582084 glitch::scene::CCameraSceneNode::setAspectRatio(float) =====
int __fastcall glitch::scene::CCameraSceneNode::setAspectRatio(glitch::scene::CCameraSceneNode *this, float a2)
{
  *((float *)this + 86) = a2;
  return (*(int (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 344))(this);
}


// ===== 58209c glitch::scene::CCameraSceneNode::setFOV(float) =====
int __fastcall glitch::scene::CCameraSceneNode::setFOV(glitch::scene::CCameraSceneNode *this, float a2)
{
  *((float *)this + 85) = a2;
  return (*(int (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 344))(this);
}


// ===== 5820b4 glitch::scene::CCameraSceneNode::setMAG(float) =====
int __fastcall glitch::scene::CCameraSceneNode::setMAG(glitch::scene::CCameraSceneNode *this, float a2)
{
  *((float *)this + 84) = a2;
  return (*(int (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 344))(this);
}


// ===== 5820cc glitch::scene::CCameraSceneNode::setFarToInifinity(bool) =====
int __fastcall glitch::scene::CCameraSceneNode::setFarToInifinity(glitch::scene::CCameraSceneNode *this, bool a2)
{
  *((_BYTE *)this + 356) = a2;
  return (*(int (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 344))(this);
}


// ===== 5820e4 glitch::scene::CCameraSceneNode::render(void *) =====
int __fastcall glitch::scene::CCameraSceneNode::render(int this, void *a2)
{
  int v2; // r5
  int v3; // r4

  v2 = this;
  v3 = *(_DWORD *)(*(_DWORD *)(this + 272) + 20);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v3 + 108))(
      *(_DWORD *)(*(_DWORD *)(this + 272) + 20),
      2,
      this + 628);
    return (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v3 + 108))(v3, 0, v2 + 492);
  }
  return this;
}


// ===== 582130 glitch::scene::CCameraSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CCameraSceneNode::getBoundingBox(glitch::scene::CCameraSceneNode *this)
{
  return (char *)this + 468;
}


// ===== 582138 glitch::scene::CCameraSceneNode::getViewFrustum(void) =====
char *__fastcall glitch::scene::CCameraSceneNode::getViewFrustum(glitch::scene::CCameraSceneNode *this)
{
  return (char *)this + 360;
}


// ===== 582140 `global constructor keyed to'.._source_glitch_scene_CCameraSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CCameraSceneNode.cpp()
{
  dword_9F6844 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6840 = 1056964608;
}


// ===== 582160 glitch::scene::CCameraSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CCameraSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  glitch::scene::ISceneNode::serializeAttributes(a1);
  (*(void (__fastcall **)(int, const char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 424))(a2, "Target", a1 + 78, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD *, _DWORD))(*(_DWORD *)a2 + 424))(a2, "UpVector", a1 + 81, 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Fovy", a1[85], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Aspect", a1[86], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "ZNear", a1[87], 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "ZFar", a1[88], 0);
}


// ===== 58224c `non-virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode(
        glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode::~CCameraSceneNode((glitch::scene::CCameraSceneNode *)((char *)this - 304));
}


// ===== 582254 glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall glitch::scene::CCameraSceneNode::~CCameraSceneNode(glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode::~CCameraSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 582270 `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode(
        glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode::~CCameraSceneNode((glitch::scene::CCameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 582280 `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode(
        glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode::~CCameraSceneNode((glitch::scene::CCameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 582290 glitch::scene::CCameraSceneNode::remove(void) =====
int __fastcall glitch::scene::CCameraSceneNode::remove(glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode **v2; // r0

  v2 = *((glitch::scene::CCameraSceneNode ***)this + 68);
  if ( v2 && this == v2[57] )
    glitch::scene::CSceneManager::setActiveCamera((glitch::scene::CSceneManager *)v2, nullptr);
  return glitch::scene::ISceneNode::remove(this);
}


// ===== 5822c8 glitch::core::detail::CMatrix4Base<float>::setbyproduct(glitch::core::detail::CMatrix4Base<float> const&,glitch::core::detail::CMatrix4Base<float> const&) =====
void *__fastcall glitch::core::detail::CMatrix4Base<float>::setbyproduct(void *a1, _BYTE *a2, _BYTE *a3)
{
  if ( a2[64] )
  {
    a2 = a3;
  }
  else if ( !a3[64] )
  {
    return (void *)glitch::core::detail::CMatrix4Base<float>::setbyproduct_nocheck(a1);
  }
  return memcpy(a1, a2, 0x41u);
}


// ===== 5822f8 glitch::core::CMatrix4<float>::makeInverse(void) =====
char *__fastcall glitch::core::CMatrix4<float>::makeInverse(int a1)
{
  char *result; // r0
  float v3[18]; // [sp+4h] [bp-48h] BYREF

  if ( *(_BYTE *)(a1 + 64) )
    return (char *)&dword_0 + 1;
  LOBYTE(v3[16]) = *(_BYTE *)(a1 + 64);
  result = (char *)glitch::core::CMatrix4<float>::getInverse((float *)a1, v3);
  if ( result )
  {
    memcpy((void *)a1, v3, 0x41u);
    return (char *)&dword_0 + 1;
  }
  return result;
}


// ===== 582348 glitch::scene::SViewFrustum::setTransformState(glitch::video::E_TRANSFORMATION_STATE) =====
char *__fastcall glitch::scene::SViewFrustum::setTransformState(char *result, int a2)
{
  const void *v2; // r5
  void *v3; // r4

  if ( a2 )
  {
    if ( a2 == 1 )
      return (char *)glitch::core::detail::CMatrix4Base<float>::setbyproduct(result + 472, result + 336, result + 200);
  }
  else
  {
    v2 = result + 132;
    v3 = result + 404;
    glitch::core::detail::CMatrix4Base<float>::setbyproduct_nocheck(
      (int)(result + 336),
      (float *)result + 67,
      (float *)result + 33);
    memcpy(v3, v2, 0x41u);
    return glitch::core::CMatrix4<float>::makeInverse((int)v3);
  }
  return result;
}


// ===== 5823ac glitch::scene::CCameraSceneNode::setProjectionMatrix(glitch::core::CMatrix4<float> const&,bool) =====
char *__fastcall glitch::scene::CCameraSceneNode::setProjectionMatrix(_BYTE *a1, const void *a2, char a3)
{
  a1[308] = a3;
  memcpy(a1 + 628, a2, 0x41u);
  return glitch::scene::SViewFrustum::setTransformState(a1 + 360, 2);
}


// ===== 5823d4 glitch::scene::SViewFrustum::recalculateBoundingBox(void) =====
bool __fastcall glitch::scene::SViewFrustum::recalculateBoundingBox(glitch::scene::SViewFrustum *this)
{
  int v1; // r1
  int v2; // r2
  int v3; // r3
  float *v4; // r5
  float *v5; // r6
  float *v6; // r7
  float v8; // r9
  float v9; // r10
  float v10; // r8
  float v11; // r1
  _BOOL4 v12; // r0
  float v13; // r1
  _BOOL4 v14; // r0
  float v15; // r1
  _BOOL4 v16; // r0
  float v17; // r1
  _BOOL4 v18; // r0
  float v19; // r1
  float v20; // r9
  float v21; // r10
  float v22; // r6
  float v23; // r1
  _BOOL4 v24; // r0
  float v25; // r1
  _BOOL4 v26; // r0
  float v27; // r1
  _BOOL4 v28; // r0
  float v29; // r1
  _BOOL4 v30; // r0
  float v31; // r1
  float v32; // r9
  float v33; // r10
  float v34; // r7
  float v35; // r1
  _BOOL4 v36; // r0
  float v37; // r1
  _BOOL4 v38; // r0
  float v39; // r1
  _BOOL4 v40; // r0
  float v41; // r1
  _BOOL4 v42; // r0
  float v43; // r1
  float v44; // r7
  float v45; // r6
  float v46; // r5
  float v47; // r1
  _BOOL4 v48; // r0
  float v49; // r1
  _BOOL4 v50; // r0
  float v51; // r1
  _BOOL4 v52; // r0
  float v53; // r1
  _BOOL4 result; // r0
  float v55; // [sp+0h] [bp-30h] BYREF
  float v56; // [sp+4h] [bp-2Ch]
  float v57; // [sp+8h] [bp-28h]
  float v58; // [sp+Ch] [bp-24h] BYREF
  float v59; // [sp+10h] [bp-20h]
  float v60; // [sp+14h] [bp-1Ch]
  float v61; // [sp+18h] [bp-18h] BYREF
  float v62; // [sp+1Ch] [bp-14h]
  float v63; // [sp+20h] [bp-10h]
  float v64; // [sp+24h] [bp-Ch] BYREF
  float v65; // [sp+28h] [bp-8h]
  float v66; // [sp+2Ch] [bp-4h]

  v1 = *(_DWORD *)this;
  v2 = *((_DWORD *)this + 1);
  v3 = *((_DWORD *)this + 2);
  v4 = (float *)((char *)this + 12);
  v5 = (float *)((char *)this + 92);
  v6 = (float *)((char *)this + 44);
  *((_DWORD *)this + 27) = *(_DWORD *)this;
  *((_DWORD *)this + 28) = v2;
  *((_DWORD *)this + 29) = v3;
  *((_DWORD *)this + 30) = v1;
  *((_DWORD *)this + 31) = v2;
  *((_DWORD *)this + 32) = v3;
  v66 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  glitch::core::plane3d<float>::getIntersectionWithPlanes(
    (float *)this + 3,
    (float *)this + 23,
    (float *)this + 11,
    &v64);
  v8 = v64;
  v9 = v65;
  v10 = v66;
  v11 = *((float *)this + 31);
  if ( v64 > *((float *)this + 30) )
    *((float *)this + 30) = v64;
  v12 = v9 > v11;
  v13 = *((float *)this + 32);
  if ( v12 )
    *((float *)this + 31) = v9;
  v14 = v10 > v13;
  v15 = *((float *)this + 27);
  if ( v14 )
    *((float *)this + 32) = v10;
  v16 = v8 < v15;
  v17 = *((float *)this + 28);
  if ( v16 )
    *((float *)this + 27) = v8;
  v18 = v9 < v17;
  v19 = *((float *)this + 29);
  if ( v18 )
    *((float *)this + 28) = v9;
  if ( v10 < v19 )
    *((float *)this + 29) = v10;
  v63 = 0.0;
  v61 = 0.0;
  v62 = 0.0;
  glitch::core::plane3d<float>::getIntersectionWithPlanes(v4, v5, (float *)this + 15, &v61);
  v20 = v61;
  v21 = v62;
  v22 = v63;
  v23 = *((float *)this + 31);
  if ( v61 > *((float *)this + 30) )
    *((float *)this + 30) = v61;
  v24 = v21 > v23;
  v25 = *((float *)this + 32);
  if ( v24 )
    *((float *)this + 31) = v21;
  v26 = v22 > v25;
  v27 = *((float *)this + 27);
  if ( v26 )
    *((float *)this + 32) = v22;
  v28 = v20 < v27;
  v29 = *((float *)this + 28);
  if ( v28 )
    *((float *)this + 27) = v20;
  v30 = v21 < v29;
  v31 = *((float *)this + 29);
  if ( v30 )
    *((float *)this + 28) = v21;
  if ( v22 < v31 )
    *((float *)this + 29) = v22;
  v60 = 0.0;
  v58 = 0.0;
  v59 = 0.0;
  glitch::core::plane3d<float>::getIntersectionWithPlanes(v4, (float *)this + 19, v6, &v58);
  v32 = v58;
  v33 = v59;
  v34 = v60;
  v35 = *((float *)this + 31);
  if ( v58 > *((float *)this + 30) )
    *((float *)this + 30) = v58;
  v36 = v33 > v35;
  v37 = *((float *)this + 32);
  if ( v36 )
    *((float *)this + 31) = v33;
  v38 = v34 > v37;
  v39 = *((float *)this + 27);
  if ( v38 )
    *((float *)this + 32) = v34;
  v40 = v32 < v39;
  v41 = *((float *)this + 28);
  if ( v40 )
    *((float *)this + 27) = v32;
  v42 = v33 < v41;
  v43 = *((float *)this + 29);
  if ( v42 )
    *((float *)this + 28) = v33;
  if ( v34 < v43 )
    *((float *)this + 29) = v34;
  v57 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  glitch::core::plane3d<float>::getIntersectionWithPlanes(v4, (float *)this + 19, (float *)this + 15, &v55);
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v47 = *((float *)this + 31);
  if ( v55 > *((float *)this + 30) )
    *((float *)this + 30) = v55;
  v48 = v45 > v47;
  v49 = *((float *)this + 32);
  if ( v48 )
    *((float *)this + 31) = v45;
  v50 = v46 > v49;
  v51 = *((float *)this + 27);
  if ( v50 )
    *((float *)this + 32) = v46;
  v52 = v44 < v51;
  v53 = *((float *)this + 28);
  if ( v52 )
    *((float *)this + 27) = v44;
  if ( v45 < v53 )
    *((float *)this + 28) = v45;
  result = v46 < *((float *)this + 29);
  if ( v46 < *((float *)this + 29) )
    *((float *)this + 29) = v46;
  return result;
}


// ===== 5826c0 glitch::scene::SViewFrustum::setFrom(glitch::core::CMatrix4<float> const&) =====
bool __fastcall glitch::scene::SViewFrustum::setFrom(float *a1, float *a2)
{
  float v4; // r0
  float v5; // r9
  float v6; // r0
  float v7; // r10
  float v8; // r0
  float v9; // r8
  float *v10; // r4
  int v11; // r7
  float v12; // r5

  a1[11] = a2[3] + *a2;
  a1[12] = a2[7] + a2[4];
  a1[13] = a2[11] + a2[8];
  a1[14] = a2[15] + a2[12];
  a1[15] = a2[3] - *a2;
  a1[16] = a2[7] - a2[4];
  a1[17] = a2[11] - a2[8];
  a1[18] = a2[15] - a2[12];
  a1[23] = a2[3] - a2[1];
  a1[24] = a2[7] - a2[5];
  a1[25] = a2[11] - a2[9];
  a1[26] = a2[15] - a2[13];
  a1[19] = a2[3] + a2[1];
  a1[20] = a2[7] + a2[5];
  a1[21] = a2[11] + a2[9];
  a1[22] = a2[15] + a2[13];
  v4 = a2[3] - a2[2];
  a1[3] = v4;
  v5 = v4;
  v6 = a2[7] - a2[6];
  a1[4] = v6;
  v7 = v6;
  v8 = a2[11] - a2[10];
  a1[5] = v8;
  v9 = v8;
  a1[6] = a2[15] - a2[14];
  v10 = a1;
  v11 = 0;
  a1[7] = a2[2];
  a1[8] = a2[6];
  a1[9] = a2[10];
  a1[10] = a2[14];
  while ( 1 )
  {
    LODWORD(v12) = COERCE_INT(1.0 / sqrtf((float)((float)(v5 * v5) + (float)(v7 * v7)) + (float)(v9 * v9))) + 0x80000000;
    v10[3] = v10[3] * v12;
    v10[4] = v10[4] * v12;
    v10[5] = v10[5] * v12;
    ++v11;
    v10[6] = v10[6] * v12;
    v10 += 4;
    if ( v11 == 6 )
      break;
    v5 = v10[3];
    v7 = v10[4];
    v9 = v10[5];
  }
  return glitch::scene::SViewFrustum::recalculateBoundingBox((glitch::scene::SViewFrustum *)a1);
}


// ===== 582904 glitch::scene::CCameraSceneNode::recalculateViewArea(void) =====
bool __fastcall glitch::scene::CCameraSceneNode::recalculateViewArea(glitch::scene::CCameraSceneNode *this)
{
  int v2; // r2
  int v3; // r3
  _DWORD v5[3]; // [sp+4h] [bp-Ch] BYREF

  glitch::scene::ISceneNode::getAbsolutePosition(v5, this);
  v2 = v5[1];
  v3 = v5[2];
  *((_DWORD *)this + 90) = v5[0];
  *((_DWORD *)this + 91) = v2;
  *((_DWORD *)this + 92) = v3;
  return glitch::scene::SViewFrustum::setFrom((float *)this + 90, (float *)this + 174);
}


// ===== 582948 glitch::scene::CCameraSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
bool __fastcall glitch::scene::CCameraSceneNode::deserializeAttributes(float *a1, int a2)
{
  int v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r2
  int v8; // r0
  int v9; // r3
  int v10; // r3
  int v11; // r0
  float v12; // r3
  _DWORD v14[3]; // [sp+0h] [bp-1Ch] BYREF
  _DWORD v15[4]; // [sp+Ch] [bp-10h] BYREF

  glitch::scene::ISceneNode::deserializeAttributes(a1);
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a2 + 436))(v15, a2, "Target");
  v4 = v15[2];
  v5 = v15[0];
  a1[79] = *(float *)&v15[1];
  *((_DWORD *)a1 + 78) = v5;
  *((_DWORD *)a1 + 80) = v4;
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)a2 + 436))(v14, a2, "UpVector");
  v6 = v14[2];
  v7 = v14[1];
  a1[81] = *(float *)v14;
  *((_DWORD *)a1 + 82) = v7;
  *((_DWORD *)a1 + 83) = v6;
  v8 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "Fovy");
  v9 = *((_DWORD *)a1 + 68);
  *((_DWORD *)a1 + 85) = v8;
  if ( v9 && (v10 = *(_DWORD *)(v9 + 20)) != 0 )
    a1[86] = (float)*(int *)(*(_DWORD *)(*(_DWORD *)(v10 + 204) - 4) + 12)
           / (float)*(int *)(*(_DWORD *)(*(_DWORD *)(v10 + 204) - 4) + 16);
  else
    a1[86] = 1.3333;
  *((_DWORD *)a1 + 87) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "ZNear");
  v11 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "ZFar");
  v12 = *a1;
  *((_DWORD *)a1 + 88) = v11;
  (*(void (__fastcall **)(float *))(LODWORD(v12) + 344))(a1);
  return glitch::scene::CCameraSceneNode::recalculateViewArea((glitch::scene::CCameraSceneNode *)a1);
}


// ===== 582aa0 glitch::scene::CCameraSceneNode::onChangedSceneManager(void) =====
bool __fastcall glitch::scene::CCameraSceneNode::onChangedSceneManager(glitch::scene::CCameraSceneNode *this)
{
  int v1; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 68);
  if ( v1 && (v3 = *(_DWORD *)(v1 + 20)) != 0 )
    *((float *)this + 86) = (float)*(int *)(*(_DWORD *)(*(_DWORD *)(v3 + 204) - 4) + 12)
                          / (float)*(int *)(*(_DWORD *)(*(_DWORD *)(v3 + 204) - 4) + 16);
  else
    *((_DWORD *)this + 86) = 1068149419;
  (*(void (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 344))(this);
  return glitch::scene::CCameraSceneNode::recalculateViewArea(this);
}


// ===== 582b18 glitch::scene::ICameraSceneNode::ICameraSceneNode(int,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::ICameraSceneNode::ICameraSceneNode(int a1, int *a2, int a3, int a4, float *a5, int a6)
{
  int v11; // r3
  _BYTE v12[20]; // [sp+8h] [bp-14h] BYREF

  glitch::core::quaternion::set((glitch::core::quaternion *)v12, *a5, a5[1], a5[2]);
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 1, a3, a4, v12, a6);
  *(_DWORD *)(a1 + 304) = off_95C300;
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 28)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  *(_DWORD *)(a1 + 304) = off_95FC28;
  *(_BYTE *)(a1 + 308) = 0;
  return a1;
}


// ===== 582bd8 glitch::scene::SViewFrustum::SViewFrustum(void) =====
glitch::scene::SViewFrustum *__fastcall glitch::scene::SViewFrustum::SViewFrustum(glitch::scene::SViewFrustum *this)
{
  char *v1; // r1
  char *v3; // r0
  _DWORD *v4; // r4

  v1 = (char *)this + 12;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  v3 = (char *)this + 108;
  do
  {
    *(_DWORD *)v1 = 0;
    *((_DWORD *)v1 + 1) = 1065353216;
    *((_DWORD *)v1 + 2) = 0;
    *((_DWORD *)v1 + 3) = 0x80000000;
    v1 += 16;
  }
  while ( v1 != v3 );
  *((_DWORD *)this + 30) = 1065353216;
  *((_DWORD *)this + 31) = 1065353216;
  *((_DWORD *)this + 29) = -1082130432;
  *((_DWORD *)this + 27) = -1082130432;
  *((_DWORD *)this + 28) = -1082130432;
  *((_DWORD *)this + 32) = 1065353216;
  v4 = (_DWORD *)((char *)this + 132);
  do
  {
    *((_BYTE *)v4 + 64) = 0;
    LC_API_MEMSET_0(v4, 0, 0x40u);
    *v4 = 1065353216;
    v4[5] = 1065353216;
    v4[10] = 1065353216;
    v4[15] = 1065353216;
    *((_BYTE *)v4 + 64) = 1;
    v4 += 17;
  }
  while ( v4 != (_DWORD *)((char *)this + 540) );
  return this;
}


// ===== 582c88 glitch::core::buildProjectionMatrixPerspectiveFov<float>(float,float,float,float) =====
int __fastcall glitch::core::buildProjectionMatrixPerspectiveFov<float>(int a1, float a2, float a3, float a4, float a5)
{
  double v8; // r8
  float v9; // r0
  float v10; // r0

  v8 = 1.0 / tan(a2 * 0.5);
  v9 = v8 / a3;
  *(float *)a1 = v9;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v10 = v8;
  *(float *)(a1 + 20) = v10;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 44) = 1065353216;
  *(float *)(a1 + 40) = a5 / (float)(a5 - a4);
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(float *)(a1 + 56) = (float)(COERCE_FLOAT(LODWORD(a4) + 0x80000000) * a5) / (float)(a5 - a4);
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  return a1;
}


// ===== 582d90 glitch::core::buildProjectionMatrixPerspectiveFovInfinity<float>(float,float,float) =====
int __fastcall glitch::core::buildProjectionMatrixPerspectiveFovInfinity<float>(int a1, float a2, float a3, int a4)
{
  double v7; // r8
  float v8; // r0
  float v9; // r0

  v7 = 1.0 / tan(a2 * 0.5);
  v8 = v7 / a3;
  *(float *)a1 = v8;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v9 = v7;
  *(float *)(a1 + 20) = v9;
  *(_DWORD *)(a1 + 44) = 1065353216;
  *(_DWORD *)(a1 + 56) = a4 + 0x80000000;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 1065353216;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  return a1;
}


// ===== 582e64 glitch::core::buildCameraLookAtMatrix<float>(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::core::buildCameraLookAtMatrix<float>(int a1, float *a2, float *a3, float *a4)
{
  float v7; // r8
  float v8; // r7
  float v9; // r6
  float v10; // r9
  float v11; // r0
  float v12; // r11
  float v13; // r9
  float v14; // r0
  float v15; // r11
  float v16; // r10
  float v17; // r11
  float v19; // [sp+4h] [bp-10h]
  float v20; // [sp+4h] [bp-10h]
  float x; // [sp+8h] [bp-Ch]
  float xa; // [sp+8h] [bp-Ch]
  float v23; // [sp+Ch] [bp-8h]

  v7 = *a3 - *a2;
  v8 = a3[1] - a2[1];
  v9 = a3[2] - a2[2];
  v10 = (float)((float)(v7 * v7) + (float)(v8 * v8)) + (float)(v9 * v9);
  if ( v10 != 0.0 )
  {
    v11 = 1.0 / sqrtf(v10);
    v7 = v7 * v11;
    v8 = v8 * v11;
    v9 = v9 * v11;
  }
  v12 = a4[2];
  v19 = a4[1];
  v13 = (float)(v9 * COERCE_FLOAT(LODWORD(v19) + 0x80000000)) + (float)(v8 * v12);
  v14 = v7 * COERCE_FLOAT(LODWORD(v12) + 0x80000000);
  v15 = *a4;
  v16 = v14 + (float)(v9 * *a4);
  v17 = (float)(v8 * COERCE_FLOAT(LODWORD(v15) + 0x80000000)) + (float)(v7 * v19);
  x = (float)((float)(v13 * v13) + (float)(v16 * v16)) + (float)(v17 * v17);
  if ( x != 0.0 )
  {
    v20 = 1.0 / sqrtf(x);
    v13 = v13 * v20;
    v16 = v16 * v20;
    v17 = v17 * v20;
  }
  xa = (float)(v17 * COERCE_FLOAT(LODWORD(v8) + 0x80000000)) + (float)(v9 * v16);
  v23 = (float)(v13 * COERCE_FLOAT(LODWORD(v9) + 0x80000000)) + (float)(v17 * v7);
  *(_DWORD *)(a1 + 44) = 0;
  *(float *)a1 = v13;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(float *)(a1 + 8) = v7;
  *(float *)(a1 + 16) = v16;
  *(float *)(a1 + 4) = xa;
  *(_DWORD *)(a1 + 28) = 0;
  *(float *)(a1 + 24) = v8;
  *(float *)(a1 + 36) = (float)(v16 * COERCE_FLOAT(LODWORD(v7) + 0x80000000)) + (float)(v8 * v13);
  *(float *)(a1 + 20) = v23;
  *(float *)(a1 + 32) = v17;
  *(float *)(a1 + 40) = v9;
  *(_DWORD *)(a1 + 48) = COERCE_INT((float)((float)(v13 * *a2) + (float)(v16 * a2[1])) + (float)(v17 * a2[2]))
                       + 0x80000000;
  *(_DWORD *)(a1 + 52) = COERCE_INT(
                           (float)((float)(xa * *a2) + (float)(v23 * a2[1]))
                         + (float)((float)((float)(v16 * COERCE_FLOAT(LODWORD(v7) + 0x80000000)) + (float)(v8 * v13))
                                 * a2[2]))
                       + 0x80000000;
  *(_DWORD *)(a1 + 56) = COERCE_INT((float)((float)(v7 * *a2) + (float)(v8 * a2[1])) + (float)(v9 * a2[2])) + 0x80000000;
  *(_DWORD *)(a1 + 60) = 1065353216;
  return a1;
}


// ===== 583280 glitch::scene::CCameraSceneNode::recalculateMatrices(void) =====
bool __fastcall glitch::scene::CCameraSceneNode::recalculateMatrices(glitch::scene::CCameraSceneNode *this)
{
  float v2; // r9
  float v3; // r10
  float v4; // r0
  float v5; // r5
  float v6; // r7
  float v7; // r6
  float v8; // r8
  float v9; // r0
  float v10; // r6
  float v11; // r0
  float v12; // r6
  float x; // [sp+4h] [bp-58h]
  float xa; // [sp+4h] [bp-58h]
  _BYTE v16[68]; // [sp+Ch] [bp-50h] BYREF
  float v17; // [sp+50h] [bp-Ch] BYREF
  float v18; // [sp+54h] [bp-8h]
  float v19; // [sp+58h] [bp-4h]
  float v20[4]; // [sp+5Ch] [bp+0h] BYREF

  glitch::scene::ISceneNode::getAbsolutePosition(v20, this);
  v2 = *((float *)this + 78) - v20[0];
  v3 = *((float *)this + 79) - v20[1];
  v5 = *((float *)this + 81);
  v6 = *((float *)this + 82);
  v7 = *((float *)this + 83);
  v4 = *((float *)this + 80) - v20[2];
  v8 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  x = (float)((float)(v2 * v2) + (float)(v3 * v3)) + (float)(v4 * v4);
  if ( x != 0.0 )
  {
    v9 = 1.0 / sqrtf(x);
    v2 = v2 * v9;
    v3 = v3 * v9;
    v5 = v17;
    v6 = v18;
    v7 = v19;
    v8 = v8 * v9;
  }
  xa = (float)((float)(v5 * v5) + (float)(v6 * v6)) + (float)(v7 * v7);
  if ( xa != 0.0 )
  {
    v10 = 1.0 / sqrtf(xa);
    v5 = v10 * v17;
    v17 = v10 * v17;
    v6 = v10 * v18;
    v18 = v10 * v18;
    v7 = v10 * v19;
    v19 = v7;
  }
  v11 = (float)((float)(v2 * v5) + (float)(v3 * v6)) + (float)(v8 * v7);
  v12 = fabs(v11);
  if ( (float)(COERCE_FLOAT(LODWORD(v11) & 0x7FFFFFFF) + 0.000001) >= 1.0 && (float)(v12 - 0.000001) <= 1.0 )
    v17 = v5 + 0.5;
  glitch::core::buildCameraLookAtMatrix<float>((int)v16, v20, (float *)this + 78, &v17);
  memcpy((char *)this + 492, v16, 0x41u);
  glitch::scene::SViewFrustum::setTransformState((char *)this + 360, 0);
  return glitch::scene::CCameraSceneNode::recalculateViewArea(this);
}


// ===== 583534 glitch::scene::CCameraSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CCameraSceneNode::onRegisterSceneNode(glitch::scene::CCameraSceneNode ***this)
{
  glitch::scene::CCameraSceneNode **v2; // r0
  void (__fastcall *v4)(glitch::scene::CCameraSceneNode **, glitch::scene::CCameraSceneNode ***, glitch::video::CMaterial **, _DWORD, _DWORD, _DWORD, int); // r12
  glitch::video::CMaterial *v5; // [sp+14h] [bp-8h] BYREF

  glitch::scene::CCameraSceneNode::recalculateMatrices((glitch::scene::CCameraSceneNode *)this);
  v2 = *(this + 68);
  if ( this == (glitch::scene::CCameraSceneNode ***)v2[57] )
  {
    v4 = *((void (__fastcall **)(glitch::scene::CCameraSceneNode **, glitch::scene::CCameraSceneNode ***, glitch::video::CMaterial **, _DWORD, _DWORD, _DWORD, int))*v2
         + 9);
    v5 = nullptr;
    v4(v2, this, &v5, 0, 0, 0, 0x7FFFFFFF);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
  }
  return 1;
}


// ===== 58359c glitch::core::buildProjectionMatrixOrtho<float>(float,float,float,float) =====
int __fastcall glitch::core::buildProjectionMatrixOrtho<float>(int result, float a2, float a3, float a4, float a5)
{
  *(float *)result = 2.0 / a2;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(float *)(result + 20) = 2.0 / a3;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(float *)(result + 40) = 1.0 / (float)(a5 - a4);
  *(_DWORD *)(result + 52) = 0;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 48) = 0;
  *(_BYTE *)(result + 64) = 0;
  *(float *)(result + 56) = a4 / (float)(a4 - a5);
  *(_DWORD *)(result + 60) = 1065353216;
  return result;
}


// ===== 58364c glitch::scene::CCameraSceneNode::recalculateProjectionMatrix(void) =====
int __fastcall glitch::scene::CCameraSceneNode::recalculateProjectionMatrix(glitch::scene::CCameraSceneNode *this)
{
  float v3; // r0
  _BYTE v4[68]; // [sp+Ch] [bp-CCh] BYREF
  _BYTE v5[68]; // [sp+50h] [bp-88h] BYREF
  _BYTE v6[68]; // [sp+94h] [bp-44h] BYREF

  if ( (*(int (__fastcall **)(glitch::scene::CCameraSceneNode *))(*(_DWORD *)this + 336))(this) )
  {
    v3 = *((float *)this + 84) + *((float *)this + 84);
    glitch::core::buildProjectionMatrixOrtho<float>(
      v6,
      v3 * *((float *)this + 86),
      LODWORD(v3),
      *((_DWORD *)this + 87),
      *((_DWORD *)this + 88));
    memcpy((char *)this + 628, v6, 0x41u);
  }
  else if ( *((_BYTE *)this + 356) )
  {
    glitch::core::buildProjectionMatrixPerspectiveFovInfinity<float>(
      v5,
      *((_DWORD *)this + 85),
      *((_DWORD *)this + 86),
      *((_DWORD *)this + 87));
    memcpy((char *)this + 628, v5, 0x41u);
  }
  else
  {
    glitch::core::buildProjectionMatrixPerspectiveFov<float>(
      v4,
      *((_DWORD *)this + 85),
      *((_DWORD *)this + 86),
      *((_DWORD *)this + 87),
      *((_DWORD *)this + 88));
    memcpy((char *)this + 628, v4, 0x41u);
  }
  return glitch::scene::SViewFrustum::setTransformState((char *)this + 360, 2);
}


// ===== 583734 glitch::scene::CCameraSceneNode::CCameraSceneNode(int,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,bool) =====
int __fastcall glitch::scene::CCameraSceneNode::CCameraSceneNode(int a1, int a2, int a3, _DWORD *a4, char a5)
{
  int v7; // r3
  _DWORD v9[3]; // [sp+8h] [bp-1Ch] BYREF
  float v10[4]; // [sp+14h] [bp-10h] BYREF

  *(_DWORD *)(a1 + 900) = off_95B720;
  *(_DWORD *)(a1 + 904) = 1;
  *(_DWORD *)a1 = off_9758A4;
  *(int *)((char *)&elf_hash_bucket[170] + a1) = (int)off_9758C4;
  memset(v10, 0, 12);
  v9[0] = 1065353216;
  v9[1] = 1065353216;
  v9[2] = 1065353216;
  glitch::scene::ICameraSceneNode::ICameraSceneNode(a1, (int *)off_9755AC, a2, a3, v10, (int)v9);
  *(_DWORD *)a1 = off_97541C;
  *(_DWORD *)(a1 + 304) = off_975580;
  *(_DWORD *)(a1 + 900) = off_97559C;
  *(_DWORD *)(a1 + 312) = *a4;
  *(_DWORD *)(a1 + 316) = a4[1];
  v7 = a4[2];
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 348) = 1065353216;
  *(_DWORD *)(a1 + 320) = v7;
  *(_DWORD *)(a1 + 352) = 1161527296;
  *(_BYTE *)(a1 + 356) = a5;
  *(_BYTE *)(a1 + 357) = 1;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 1065353216;
  glitch::scene::SViewFrustum::SViewFrustum((glitch::scene::SViewFrustum *)(a1 + 360));
  *(_DWORD *)(a1 + 340) = 1067506044;
  *(_DWORD *)(a1 + 344) = 1068149419;
  glitch::scene::CCameraSceneNode::recalculateProjectionMatrix((glitch::scene::CCameraSceneNode *)a1);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  return a1;
}


// ===== 583878 glitch::scene::CCameraSceneNode::CCameraSceneNode(int,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,bool) =====
int __fastcall glitch::scene::CCameraSceneNode::CCameraSceneNode(int a1, int *a2, int a3, int a4, _DWORD *a5, char a6)
{
  int v8; // r1
  int v9; // r3
  _DWORD v11[3]; // [sp+8h] [bp-1Ch] BYREF
  float v12[4]; // [sp+14h] [bp-10h] BYREF

  memset(v12, 0, 12);
  v11[0] = 1065353216;
  v11[1] = 1065353216;
  v11[2] = 1065353216;
  glitch::scene::ICameraSceneNode::ICameraSceneNode(a1, a2 + 1, a3, a4, v12, (int)v11);
  v8 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v8 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *(_DWORD *)(a1 + 304) = off_975580;
  *(_DWORD *)(a1 + 312) = *a5;
  *(_DWORD *)(a1 + 316) = a5[1];
  v9 = a5[2];
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 348) = 1065353216;
  *(_DWORD *)(a1 + 320) = v9;
  *(_DWORD *)(a1 + 352) = 1161527296;
  *(_BYTE *)(a1 + 357) = 1;
  *(_BYTE *)(a1 + 356) = a6;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 1065353216;
  glitch::scene::SViewFrustum::SViewFrustum((glitch::scene::SViewFrustum *)(a1 + 360));
  *(_DWORD *)(a1 + 340) = 1067506044;
  *(_DWORD *)(a1 + 344) = 1068149419;
  glitch::scene::CCameraSceneNode::recalculateProjectionMatrix((glitch::scene::CCameraSceneNode *)a1);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  return a1;
}


// ===== 58398c `virtual thunk to'glitch::scene::CCameraSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
bool __fastcall `virtual thunk to'glitch::scene::CCameraSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CCameraSceneNode::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 58399c `virtual thunk to'glitch::scene::CCameraSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CCameraSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CCameraSceneNode::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 5839ac glitch::scene::CEmptySceneNode::render(void *) =====
void __fastcall glitch::scene::CEmptySceneNode::render(glitch::scene::CEmptySceneNode *this, void *a2)
{
  ;
}


// ===== 5839b0 glitch::scene::CEmptySceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CEmptySceneNode::getBoundingBox(glitch::scene::CEmptySceneNode *this)
{
  return (char *)this + 304;
}


// ===== 5839b8 `global constructor keyed to'.._source_glitch_scene_CEmptySceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CEmptySceneNode.cpp()
{
  dword_9F6850 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F684C = 1056964608;
}


// ===== 5839d8 glitch::scene::CEmptySceneNode::CEmptySceneNode(int) =====
glitch::scene::CEmptySceneNode *__fastcall glitch::scene::CEmptySceneNode::CEmptySceneNode(
        glitch::scene::CEmptySceneNode *this,
        int a2)
{
  _DWORD v4[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v5[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v6[4]; // [sp+24h] [bp-10h] BYREF

  *((_DWORD *)this + 82) = off_95B720;
  *(_DWORD *)this = off_975B5C;
  *((_DWORD *)this + 83) = 1;
  *(int *)((char *)&elf_hash_bucket[27] + (_DWORD)this) = (int)off_975B7C;
  memset(v6, 0, 12);
  memset(v4, 0, 12);
  v4[3] = 1065353216;
  v5[0] = 1065353216;
  v5[1] = 1065353216;
  v5[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(this, off_975A04, a2, v6, v4, v5);
  *((_DWORD *)this + 81) = 1065353216;
  *((_DWORD *)this + 82) = off_9759F0;
  *((_DWORD *)this + 78) = -1082130432;
  *((_DWORD *)this + 76) = -1082130432;
  *(_DWORD *)this = off_9758EC;
  *((_DWORD *)this + 77) = -1082130432;
  *((_DWORD *)this + 79) = 1065353216;
  *((_DWORD *)this + 80) = 1065353216;
  glitch::scene::ISceneNode::setAutomaticCulling(this, 0);
  return this;
}


// ===== 583ad0 glitch::scene::CEmptySceneNode::clone(void) =====
glitch::scene::CEmptySceneNode *__fastcall glitch::scene::CEmptySceneNode::clone(glitch::scene::CEmptySceneNode *this)
{
  glitch::scene::CEmptySceneNode *v2; // r4

  v2 = (glitch::scene::CEmptySceneNode *)operator new(0x150u, 0);
  glitch::scene::CEmptySceneNode::CEmptySceneNode(v2, *((_DWORD *)this + 67));
  glitch::scene::ISceneNode::cloneMembers(v2, this);
  *((_DWORD *)v2 + 76) = *((_DWORD *)this + 76);
  *((_DWORD *)v2 + 77) = *((_DWORD *)this + 77);
  *((_DWORD *)v2 + 78) = *((_DWORD *)this + 78);
  *((_DWORD *)v2 + 79) = *((_DWORD *)this + 79);
  *((_DWORD *)v2 + 80) = *((_DWORD *)this + 80);
  *((_DWORD *)v2 + 81) = *((_DWORD *)this + 81);
  return v2;
}


// ===== 583b34 glitch::scene::CEmptySceneNode::CEmptySceneNode(int) =====
glitch::scene::CEmptySceneNode *__fastcall glitch::scene::CEmptySceneNode::CEmptySceneNode(
        glitch::scene::CEmptySceneNode *this,
        int *a2,
        int a3)
{
  int v5; // r2
  _DWORD v7[4]; // [sp+8h] [bp-28h] BYREF
  _DWORD v8[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v9[3]; // [sp+24h] [bp-Ch] BYREF

  memset(v9, 0, sizeof(v9));
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  v8[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(this, a2 + 1, a3, v9, v7, v8);
  v5 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  *((_DWORD *)this + 78) = -1082130432;
  *((_DWORD *)this + 81) = 1065353216;
  *((_DWORD *)this + 76) = -1082130432;
  *((_DWORD *)this + 77) = -1082130432;
  *((_DWORD *)this + 79) = 1065353216;
  *((_DWORD *)this + 80) = 1065353216;
  glitch::scene::ISceneNode::setAutomaticCulling(this, 0);
  return this;
}


// ===== 583bec glitch::scene::CLightSceneNode::getType(void) =====
int __fastcall glitch::scene::CLightSceneNode::getType(glitch::scene::CLightSceneNode *this)
{
  return 1952999276;
}


// ===== 583bf8 `global constructor keyed to'.._source_glitch_scene_CLightSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CLightSceneNode.cpp()
{
  dword_9F685C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6858 = 1056964608;
}


// ===== 583c18 glitch::scene::CLightSceneNode::doLightRecalc(void) =====
float *__fastcall glitch::scene::CLightSceneNode::doLightRecalc(float *this)
{
  int v1; // r2
  float *v2; // r4
  unsigned int v3; // r3
  float v4; // r0

  v1 = *((_DWORD *)this + 77);
  v2 = this;
  v3 = *(unsigned __int16 *)(v1 + 88);
  if ( v3 > 1 )
  {
    if ( v3 == 2 )
    {
      *(this + 81) = 0.0;
      *(this + 82) = 0.0;
      *(this + 83) = 0.0;
      *(this + 84) = 0.0;
      *(this + 79) = 0.0;
      *(this + 80) = 0.0;
      this = (float *)glitch::scene::ISceneNode::setAutomaticCulling(this, 0);
      v3 = *(unsigned __int16 *)(*((_DWORD *)v2 + 77) + 88);
    }
    *((_DWORD *)v2 + 78) = v3;
  }
  else
  {
    if ( *(float *)(v1 + 64) == 3.4028e38 )
    {
      this = (float *)glitch::scene::ISceneNode::setAutomaticCulling(this, 0);
    }
    else
    {
      v4 = (float)(*(float *)(v1 + 64) * *(float *)(v1 + 64)) * 0.5;
      *((_DWORD *)v2 + 81) = LODWORD(v4) + 0x80000000;
      v2[82] = v4;
      v2[83] = v4;
      v2[84] = v4;
      *((_DWORD *)v2 + 79) = LODWORD(v4) + 0x80000000;
      *((_DWORD *)v2 + 80) = LODWORD(v4) + 0x80000000;
      this = (float *)glitch::scene::ISceneNode::setAutomaticCulling(v2, 1);
    }
    *((_DWORD *)v2 + 78) = *(unsigned __int16 *)(*((_DWORD *)v2 + 77) + 88);
  }
  return this;
}


// ===== 583cf0 glitch::scene::CLightSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::scene::CLightSceneNode::getBoundingBox(glitch::scene::CLightSceneNode *this)
{
  if ( *((_DWORD *)this + 78) != *(unsigned __int16 *)(*((_DWORD *)this + 77) + 88) )
    glitch::scene::CLightSceneNode::doLightRecalc((float *)this);
  return (char *)this + 316;
}


// ===== 583d18 glitch::scene::CLightSceneNode::render(void *) =====
int __fastcall glitch::scene::CLightSceneNode::render(glitch::scene::CLightSceneNode *this, void *a2)
{
  int result; // r0

  result = *(_DWORD *)(*((_DWORD *)this + 68) + 20);
  if ( result )
    return glitch::video::IVideoDriver::addDynamicLight(result, (char *)this + 308);
  return result;
}


// ===== 583d34 glitch::scene::CLightSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CLightSceneNode::onRegisterSceneNode(glitch::scene::CLightSceneNode *this)
{
  int v2; // r0
  void (__fastcall *v3)(int, glitch::scene::CLightSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  glitch::video::CMaterial *v5; // [sp+14h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 68);
  v3 = *(void (__fastcall **)(int, glitch::scene::CLightSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v2 + 36);
  v5 = nullptr;
  v3(v2, this, &v5, 0, 1, 0, 0x7FFFFFFF);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
  return 1;
}


// ===== 583d88 glitch::scene::CLightSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CLightSceneNode::deserializeAttributes(int a1, int a2, int a3)
{
  glitch::scene::ISceneNode::deserializeAttributes(a1);
  (*(void (__fastcall **)(int, char *))(*(_DWORD *)a2 + 48))(a2, "Light");
  glitch::video::CLight::deserializeAttributes(*(_DWORD *)(a1 + 308), a2, a3);
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
}


// ===== 583ddc glitch::scene::CLightSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CLightSceneNode::serializeAttributes(int a1, int a2, int a3)
{
  glitch::scene::ISceneNode::serializeAttributes(a1);
  (*(void (__fastcall **)(int, char *))(*(_DWORD *)a2 + 48))(a2, "Light");
  glitch::video::CLight::serializeAttributes(*(_DWORD *)(a1 + 308), a2, a3);
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
}


// ===== 583e30 glitch::scene::CLightSceneNode::CLightSceneNode(glitch::scene::CLightSceneNode&) =====
glitch::scene::CLightSceneNode *__fastcall glitch::scene::CLightSceneNode::CLightSceneNode(
        glitch::scene::CLightSceneNode *this,
        glitch::video::STransformationSource ***a2)
{
  int v4; // r3
  _DWORD *v5; // r0
  _DWORD v7[4]; // [sp+8h] [bp+0h] BYREF
  _DWORD v8[3]; // [sp+18h] [bp+10h] BYREF
  _DWORD v9[4]; // [sp+24h] [bp+1Ch] BYREF

  *((_DWORD *)this + 86) = 1;
  *(_DWORD *)this = off_975E14;
  *((_DWORD *)this + 85) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[30] + (_DWORD)this) = (int)off_975E34;
  v8[2] = 1065353216;
  memset(v9, 0, 12);
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(this, off_975CBC, -1, v9, v7, v8);
  *(_DWORD *)this = off_975BA4;
  *((_DWORD *)this + 85) = off_975CA8;
  glitch::video::CLight::clone((glitch::scene::CLightSceneNode *)((char *)this + 308), a2[77]);
  v4 = *((_DWORD *)this + 76);
  *((_DWORD *)this + 78) = *(unsigned __int16 *)(*((_DWORD *)this + 77) + 88);
  *((_DWORD *)this + 79) = a2[79];
  *((_DWORD *)this + 80) = a2[80];
  *((_DWORD *)this + 81) = a2[81];
  *((_DWORD *)this + 82) = a2[82];
  *((_DWORD *)this + 83) = a2[83];
  *((_DWORD *)this + 84) = a2[84];
  if ( !*(_BYTE *)(v4 + 4) )
  {
    v5 = *(_DWORD **)v4;
    *v5 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v5;
  }
  *(_DWORD *)v4 = (char *)this + 36;
  *(_BYTE *)(v4 + 4) = 1;
  glitch::scene::ISceneNode::cloneMembers(this, (glitch::scene::ISceneNode *)a2);
  return this;
}


// ===== 583f94 glitch::scene::CLightSceneNode::clone(void) =====
glitch::scene::CLightSceneNode *__fastcall glitch::scene::CLightSceneNode::clone(
        glitch::video::STransformationSource ***this)
{
  glitch::scene::CLightSceneNode *v2; // r4

  v2 = (glitch::scene::CLightSceneNode *)operator new(0x15Cu, 0);
  glitch::scene::CLightSceneNode::CLightSceneNode(v2, this);
  return v2;
}


// ===== 583fbc glitch::scene::CLightSceneNode::CLightSceneNode(glitch::scene::CLightSceneNode&) =====
glitch::scene::CLightSceneNode *__fastcall glitch::scene::CLightSceneNode::CLightSceneNode(
        glitch::scene::CLightSceneNode *this,
        glitch::scene::CLightSceneNode *a2,
        int a3)
{
  int v6; // r3
  int v7; // r3
  _DWORD *v8; // r0
  _DWORD v10[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v11[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v12[4]; // [sp+24h] [bp-10h] BYREF

  v11[2] = 1065353216;
  memset(v12, 0, 12);
  memset(v10, 0, 12);
  v10[3] = 1065353216;
  v11[0] = 1065353216;
  v11[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(this, (char *)a2 + 4, -1, v12, v10, v11);
  v6 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 28)) = *((_DWORD *)a2 + 4);
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = *((_DWORD *)a2 + 5);
  glitch::video::CLight::clone(
    (glitch::scene::CLightSceneNode *)((char *)this + 308),
    *(glitch::video::STransformationSource ***)(a3 + 308));
  v7 = *((_DWORD *)this + 76);
  *((_DWORD *)this + 78) = *(unsigned __int16 *)(*((_DWORD *)this + 77) + 88);
  *((_DWORD *)this + 79) = *(_DWORD *)(a3 + 316);
  *((_DWORD *)this + 80) = *(_DWORD *)(a3 + 320);
  *((_DWORD *)this + 81) = *(_DWORD *)(a3 + 324);
  *((_DWORD *)this + 82) = *(_DWORD *)(a3 + 328);
  *((_DWORD *)this + 83) = *(_DWORD *)(a3 + 332);
  *((_DWORD *)this + 84) = *(_DWORD *)(a3 + 336);
  if ( !*(_BYTE *)(v7 + 4) )
  {
    v8 = *(_DWORD **)v7;
    *v8 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v8;
  }
  *(_DWORD *)v7 = (char *)this + 36;
  *(_BYTE *)(v7 + 4) = 1;
  glitch::scene::ISceneNode::cloneMembers(this, (glitch::scene::ISceneNode *)a3);
  return this;
}


// ===== 5840f0 glitch::scene::CLightSceneNode::CLightSceneNode(bool) =====
glitch::scene::CLightSceneNode *__fastcall glitch::scene::CLightSceneNode::CLightSceneNode(
        glitch::scene::CLightSceneNode *this,
        bool a2)
{
  int v3; // r3
  int v4; // r1
  _DWORD *v5; // r0
  _DWORD v7[4]; // [sp+8h] [bp-28h] BYREF
  _DWORD v8[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v9[3]; // [sp+24h] [bp-Ch] BYREF

  *((_DWORD *)this + 86) = 1;
  *(_DWORD *)this = off_975E14;
  *((_DWORD *)this + 85) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[30] + (_DWORD)this) = (int)off_975E34;
  memset(v9, 0, sizeof(v9));
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  v8[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(this, off_975CBC, -1, v9, v7, v8);
  *(_DWORD *)this = off_975BA4;
  *((_DWORD *)this + 85) = off_975CA8;
  glitch::video::CLight::allocate(
    (glitch::scene::CLightSceneNode *)((char *)this + 308),
    (glitch::video::STransformationSource **)this + 76);
  v3 = *((_DWORD *)this + 76);
  v4 = *(unsigned __int16 *)(*((_DWORD *)this + 77) + 88);
  *((_DWORD *)this + 81) = -1082130432;
  *((_DWORD *)this + 79) = -1082130432;
  *((_DWORD *)this + 80) = -1082130432;
  *((_DWORD *)this + 84) = 1065353216;
  *((_DWORD *)this + 78) = v4;
  *((_DWORD *)this + 82) = 1065353216;
  *((_DWORD *)this + 83) = 1065353216;
  if ( !*(_BYTE *)(v3 + 4) )
  {
    v5 = *(_DWORD **)v3;
    *v5 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v5;
  }
  *(_DWORD *)v3 = (char *)this + 36;
  *(_BYTE *)(v3 + 4) = 1;
  glitch::scene::CLightSceneNode::doLightRecalc((float *)this);
  return this;
}


// ===== 584238 glitch::scene::CLightSceneNode::CLightSceneNode(bool) =====
glitch::video::STransformationSource **__fastcall glitch::scene::CLightSceneNode::CLightSceneNode(
        glitch::video::STransformationSource **this,
        glitch::video::STransformationSource **a2)
{
  glitch::video::STransformationSource *v4; // r3
  int v5; // r3
  glitch::video::STransformationSource *v6; // r1
  _DWORD *v7; // r0
  _DWORD v9[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v10[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v11[4]; // [sp+24h] [bp-10h] BYREF

  memset(v11, 0, 12);
  memset(v9, 0, 12);
  v9[3] = 1065353216;
  v10[0] = 1065353216;
  v10[1] = 1065353216;
  v10[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(this, a2 + 1, -1, v11, v9, v10);
  v4 = *a2;
  *this = *a2;
  *(glitch::video::STransformationSource **)((char *)this + *((_DWORD *)v4 - 7)) = a2[4];
  *(glitch::video::STransformationSource **)((char *)this + *((_DWORD *)*this - 3)) = a2[5];
  glitch::video::CLight::allocate((glitch::video::CLight *)(this + 77), this + 76);
  v5 = (int)*(this + 76);
  v6 = (glitch::video::STransformationSource *)*((unsigned __int16 *)*(this + 77) + 44);
  *(this + 81) = (glitch::video::STransformationSource *)-1082130432;
  *(this + 79) = (glitch::video::STransformationSource *)-1082130432;
  *(this + 80) = (glitch::video::STransformationSource *)-1082130432;
  *(this + 84) = (glitch::video::STransformationSource *)1065353216;
  *(this + 78) = v6;
  *(this + 82) = (glitch::video::STransformationSource *)1065353216;
  *(this + 83) = (glitch::video::STransformationSource *)1065353216;
  if ( !*(_BYTE *)(v5 + 4) )
  {
    v7 = *(_DWORD **)v5;
    *v7 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v7;
  }
  *(_DWORD *)v5 = this + 9;
  *(_BYTE *)(v5 + 4) = 1;
  glitch::scene::CLightSceneNode::doLightRecalc((float *)this);
  return this;
}


// ===== 584350 glitch::scene::CLightSceneNode::CLightSceneNode(int,glitch::core::vector3d<float> const&,glitch::video::SColorf const&,float) =====
int __fastcall glitch::scene::CLightSceneNode::CLightSceneNode(int a1, int a2, int a3, float *a4, int a5)
{
  int v7; // r3
  int v8; // r1
  _DWORD *v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  _DWORD *v13; // r12
  float v14; // r8
  float v15; // r6
  float v16; // r0
  float *v17; // r3
  _DWORD v19[4]; // [sp+Ch] [bp-1Ch] BYREF
  _DWORD v20[3]; // [sp+1Ch] [bp-Ch] BYREF

  *(_DWORD *)(a1 + 344) = 1;
  *(_DWORD *)(a1 + 340) = off_95B720;
  *(_DWORD *)a1 = off_975E14;
  *(int *)((char *)&elf_hash_bucket[30] + a1) = (int)off_975E34;
  memset(v19, 0, 12);
  v19[3] = 1065353216;
  v20[0] = 1065353216;
  v20[1] = 1065353216;
  v20[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, off_975CBC, a2, a3, v19, v20);
  *(_DWORD *)a1 = off_975BA4;
  *(_DWORD *)(a1 + 340) = off_975CA8;
  glitch::video::CLight::allocate(
    (glitch::video::CLight *)(a1 + 308),
    (glitch::video::STransformationSource **)(a1 + 304));
  v7 = *(_DWORD *)(a1 + 304);
  v8 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 308) + 88);
  *(_DWORD *)(a1 + 324) = -1082130432;
  *(_DWORD *)(a1 + 316) = -1082130432;
  *(_DWORD *)(a1 + 320) = -1082130432;
  *(_DWORD *)(a1 + 336) = 1065353216;
  *(_DWORD *)(a1 + 312) = v8;
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_DWORD *)(a1 + 332) = 1065353216;
  if ( !*(_BYTE *)(v7 + 4) )
  {
    v9 = *(_DWORD **)v7;
    *v9 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v9;
  }
  *(_DWORD *)v7 = a1 + 36;
  *(_BYTE *)(v7 + 4) = 1;
  *(_DWORD *)(*(_DWORD *)(a1 + 308) + 64) = a5;
  v10 = *((_DWORD *)a4 + 1);
  v11 = *((_DWORD *)a4 + 2);
  v12 = *((_DWORD *)a4 + 3);
  v13 = (_DWORD *)(*(_DWORD *)(a1 + 308) + 20);
  *v13 = *(_DWORD *)a4;
  v13[1] = v10;
  v13[2] = v11;
  v13[3] = v12;
  v14 = (float)(*a4 * 0.7) + 0.3;
  v15 = (float)(a4[1] * 0.7) + 0.3;
  v16 = a4[2] * 0.7;
  v17 = *(float **)(a1 + 308);
  v17[12] = (float)(a4[3] * 0.7) + 0.3;
  v17[9] = v14;
  v17[11] = v16 + 0.3;
  v17[10] = v15;
  glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
  return a1;
}


// ===== 584544 glitch::scene::CLightSceneNode::CLightSceneNode(int,glitch::core::vector3d<float> const&,glitch::video::SColorf const&,float) =====
int __fastcall glitch::scene::CLightSceneNode::CLightSceneNode(int a1, int *a2, int a3, int a4, float *a5, int a6)
{
  int v8; // r3
  int v9; // r3
  int v10; // r1
  _DWORD *v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  _DWORD *v15; // r12
  float v16; // r8
  float v17; // r6
  float v18; // r0
  float *v19; // r3
  _DWORD v21[4]; // [sp+Ch] [bp-1Ch] BYREF
  _DWORD v22[3]; // [sp+1Ch] [bp-Ch] BYREF

  memset(v21, 0, 12);
  v21[3] = 1065353216;
  v22[0] = 1065353216;
  v22[1] = 1065353216;
  v22[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 1, a3, a4, v21, v22);
  v8 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v8 - 28)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  glitch::video::CLight::allocate(
    (glitch::video::CLight *)(a1 + 308),
    (glitch::video::STransformationSource **)(a1 + 304));
  v9 = *(_DWORD *)(a1 + 304);
  v10 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 308) + 88);
  *(_DWORD *)(a1 + 324) = -1082130432;
  *(_DWORD *)(a1 + 316) = -1082130432;
  *(_DWORD *)(a1 + 320) = -1082130432;
  *(_DWORD *)(a1 + 336) = 1065353216;
  *(_DWORD *)(a1 + 312) = v10;
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_DWORD *)(a1 + 332) = 1065353216;
  if ( !*(_BYTE *)(v9 + 4) )
  {
    v11 = *(_DWORD **)v9;
    *v11 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v11;
  }
  *(_DWORD *)v9 = a1 + 36;
  *(_BYTE *)(v9 + 4) = 1;
  *(_DWORD *)(*(_DWORD *)(a1 + 308) + 64) = a6;
  v12 = *((_DWORD *)a5 + 1);
  v13 = *((_DWORD *)a5 + 2);
  v14 = *((_DWORD *)a5 + 3);
  v15 = (_DWORD *)(*(_DWORD *)(a1 + 308) + 20);
  *v15 = *(_DWORD *)a5;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;
  v16 = (float)(*a5 * 0.7) + 0.3;
  v17 = (float)(a5[1] * 0.7) + 0.3;
  v18 = a5[2] * 0.7;
  v19 = *(float **)(a1 + 308);
  v19[12] = (float)(a5[3] * 0.7) + 0.3;
  v19[9] = v16;
  v19[11] = v18 + 0.3;
  v19[10] = v17;
  glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
  return a1;
}


// ===== 5846f8 glitch::video::STransformationSource::detach(void) =====
unsigned int *__fastcall glitch::video::STransformationSource::detach(unsigned int *this)
{
  unsigned int *v1; // r4
  int *v2; // r6
  unsigned int v3; // r8
  unsigned int v4; // r0
  unsigned int v5; // r3
  unsigned int v6; // r9
  void *v7; // r0
  unsigned int v8; // r10
  unsigned int v9; // r0
  _DWORD *v10; // r12
  int v11; // r9
  _DWORD *v12; // r1
  _DWORD *v13; // lr
  _DWORD *v14; // r3
  char *v15; // r0
  int v16; // [sp+4h] [bp-8h]

  v1 = this;
  if ( !*((_BYTE *)this + 4) )
    return this;
  *((_BYTE *)this + 4) = 0;
  v2 = (int *)*this;
  v3 = glitch::memory::Matrix4Pool;
  if ( glitch::memory::Matrix4Pool )
    goto LABEL_3;
  v3 = 4;
  v4 = dword_9F75A4;
  do
  {
    v5 = v3;
    v3 = v4 % v3;
    v4 = v5;
  }
  while ( v3 );
  v6 = 4 * (dword_9F75A4 / v5);
  v16 = dword_9F75A8 * v6;
  v7 = GlitchAlloc(dword_9F75A8 * v6 + 15, 0);
  v8 = ((unsigned int)v7 + 7) & 0xFFFFFFFC;
  *(_DWORD *)(v8 - 4) = v7;
  if ( v8 )
  {
    dword_9F75A8 *= 2;
    v9 = v6 * ((v16 - v6) / v6);
    v10 = (_DWORD *)(v8 + v9);
    *(_DWORD *)(v8 + v9) = glitch::memory::Matrix4Pool;
    if ( v8 != v8 + v9 )
    {
      v11 = -v6;
      v12 = (_DWORD *)((char *)v10 + v11);
      if ( (_DWORD *)v8 == (_DWORD *)((char *)v10 + v11) )
      {
        v13 = (_DWORD *)v8;
      }
      else
      {
        v14 = (_DWORD *)((char *)v12 + v11);
        v15 = (char *)v12 + v11;
        while ( 1 )
        {
          v15 += v11;
          *v12 = v10;
          v13 = v14;
          if ( (char *)v8 == &v15[-v11] )
            break;
          v10 = v12;
          v12 = v14;
          v14 = (_DWORD *)((char *)v14 + v11);
        }
        v10 = v12;
      }
      *v13 = v10;
    }
    glitch::memory::Matrix4Pool = v8;
    *(_DWORD *)(v8 + v16) = dword_9F759C;
    *(_DWORD *)(v8 + v16 + 4) = dword_9F75A0;
    v3 = glitch::memory::Matrix4Pool;
    dword_9F75A0 = v16 + 8;
    dword_9F759C = v8;
LABEL_3:
    glitch::memory::Matrix4Pool = *(_DWORD *)v3;
  }
  if ( !v2 )
    v2 = &glitch::core::IdentityMatrix;
  *(_BYTE *)(v3 + 64) = 0;
  this = (unsigned int *)memcpy((void *)v3, v2, 0x41u);
  *v1 = v3;
  return this;
}


// ===== 5848a4 glitch::scene::CLightSceneNode::~CLightSceneNode() =====
void __fastcall glitch::scene::CLightSceneNode::~CLightSceneNode(glitch::scene::CLightSceneNode *this)
{
  _DWORD *v2; // r0
  _DWORD *v4; // r2

  v2 = *((_DWORD **)this + 77);
  *(_DWORD *)this = off_975BA4;
  *((_DWORD *)this + 85) = off_975CA8;
  if ( *v2 > 1u )
  {
    glitch::video::STransformationSource::detach(*((unsigned int **)this + 76));
    v2 = *((_DWORD **)this + 77);
  }
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
    {
      if ( !*((_BYTE *)v2 + 84) )
      {
        v4 = (_DWORD *)v2[20];
        *v4 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v4;
      }
      v2[20] = 0;
      LC_API_FREE_0(v2);
    }
  }
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 584960 glitch::scene::CLightSceneNode::~CLightSceneNode() =====
void __fastcall glitch::scene::CLightSceneNode::~CLightSceneNode(glitch::scene::CLightSceneNode *this)
{
  glitch::scene::CLightSceneNode::~CLightSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 58497c glitch::scene::CLightSceneNode::~CLightSceneNode() =====
void __fastcall glitch::scene::CLightSceneNode::~CLightSceneNode(glitch::scene::CLightSceneNode *this, int *a2)
{
  int v2; // r3
  _DWORD *v4; // r0
  _DWORD *v6; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  v4 = *((_DWORD **)this + 77);
  if ( *v4 > 1u )
  {
    glitch::video::STransformationSource::detach(*((unsigned int **)this + 76));
    v4 = *((_DWORD **)this + 77);
  }
  if ( v4 )
  {
    if ( (*v4)-- == 1 )
    {
      if ( !*((_BYTE *)v4 + 84) )
      {
        v6 = (_DWORD *)v4[20];
        *v6 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v6;
      }
      v4[20] = 0;
      LC_API_FREE_0(v4);
    }
  }
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 584a38 `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode(
        glitch::scene::CLightSceneNode *this)
{
  glitch::scene::CLightSceneNode::~CLightSceneNode((glitch::scene::CLightSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 584a48 `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode(
        glitch::scene::CLightSceneNode *this)
{
  glitch::scene::CLightSceneNode::~CLightSceneNode((glitch::scene::CLightSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 584a58 `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode(
        glitch::scene::CLightSceneNode *this)
{
  glitch::scene::CLightSceneNode::~CLightSceneNode((glitch::scene::CLightSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 584a68 `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CLightSceneNode::~CLightSceneNode(
        glitch::scene::CLightSceneNode *this)
{
  glitch::scene::CLightSceneNode::~CLightSceneNode((glitch::scene::CLightSceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 584a78 `virtual thunk to'glitch::scene::CLightSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CLightSceneNode::serializeAttributes(_DWORD *a1, int a2, int a3)
{
  return glitch::scene::CLightSceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2, a3);
}


// ===== 584a88 `virtual thunk to'glitch::scene::CLightSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CLightSceneNode::deserializeAttributes(_DWORD *a1, int a2, int a3)
{
  return glitch::scene::CLightSceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2, a3);
}


// ===== 584a98 glitch::scene::CMeshSceneNode::getType(void) =====
int __fastcall glitch::scene::CMeshSceneNode::getType(glitch::scene::CMeshSceneNode *this)
{
  return 1752393069;
}


// ===== 584aa4 glitch::scene::CMeshSceneNode::getMesh(void) =====
_DWORD *__fastcall glitch::scene::CMeshSceneNode::getMesh(_DWORD *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 304);
  *this = v2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  return this;
}


// ===== 584ac0 glitch::scene::CMeshSceneNode::getBoundingBox(void) =====
int __fastcall glitch::scene::CMeshSceneNode::getBoundingBox(glitch::scene::CMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 36))(*((_DWORD *)this + 76));
}


// ===== 584adc glitch::scene::CMeshSceneNode::getMaterial(uint) =====
glitch::scene::CMeshSceneNode *__fastcall glitch::scene::CMeshSceneNode::getMaterial(
        glitch::scene::CMeshSceneNode *this,
        unsigned int a2,
        unsigned int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a2 + 304);
  if ( v3 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 16))(*(_DWORD *)(a2 + 304)) > a3 )
  {
    (*(void (__fastcall **)(glitch::scene::CMeshSceneNode *, _DWORD, unsigned int))(**(_DWORD **)(a2 + 304) + 24))(
      this,
      *(_DWORD *)(a2 + 304),
      a3);
    return this;
  }
  else
  {
    *(_DWORD *)this = 0;
    return this;
  }
}


// ===== 584b44 glitch::scene::CMeshSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CMeshSceneNode::getMaterialCount(glitch::scene::CMeshSceneNode *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 76);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*((_DWORD *)this + 76));
  else
    return 0;
}


// ===== 584b70 `global constructor keyed to'.._source_glitch_scene_CMeshSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CMeshSceneNode.cpp()
{
  dword_9F6868 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6864 = 1056964608;
}


// ===== 584b90 glitch::scene::CMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CMeshSceneNode::serializeAttributes(int a1, int a2)
{
  glitch::IReferenceCounted *v4; // r2
  int v5; // r0
  void (__fastcall *v6)(int, char *, int, _DWORD); // r4
  int (*v7)(void); // r3
  int v8; // r0
  int result; // r0
  glitch::IReferenceCounted *v10; // [sp+4h] [bp-8h]

  glitch::scene::ISceneNode::serializeAttributes(a1);
  v4 = *(glitch::IReferenceCounted **)(a1 + 304);
  v5 = *(_DWORD *)(*(_DWORD *)(a1 + 272) + 368);
  v6 = *(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 124);
  v7 = *(int (**)(void))(*(_DWORD *)v5 + 52);
  v10 = v4;
  if ( v4 )
    ++*((_DWORD *)v4 + 1);
  v8 = v7();
  v6(a2, "Mesh", v8, 0);
  result = (int)v10;
  if ( v10 )
    return glitch::IReferenceCounted::drop(v10);
  return result;
}


// ===== 584c10 glitch::scene::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall glitch::scene::CMeshSceneNode::~CMeshSceneNode(glitch::scene::CMeshSceneNode *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 76);
  *(_DWORD *)this = off_975E5C;
  *((_DWORD *)this + 78) = off_975F68;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  *(_DWORD *)this = off_975FC4;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_975FC4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_9760D0;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 584c94 glitch::scene::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall glitch::scene::CMeshSceneNode::~CMeshSceneNode(glitch::scene::CMeshSceneNode *this)
{
  glitch::scene::CMeshSceneNode::~CMeshSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 584cb0 glitch::scene::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall glitch::scene::CMeshSceneNode::~CMeshSceneNode(glitch::scene::CMeshSceneNode *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r3
  _DWORD *v7; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  v5 = *((glitch::IReferenceCounted **)this + 76);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = a2[1];
  v7 = a2 + 1;
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 28)) = v7[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v7[5];
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 584d2c glitch::scene::CMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CMeshSceneNode::onRegisterSceneNode(glitch::scene::CMeshSceneNode *this)
{
  int v1; // r3
  unsigned int v3; // r6
  int v4; // r8
  int v5; // r5
  glitch::video::CMaterial *v6; // r9
  int v7; // r9
  bool v8; // zf
  int v9; // r0
  void (__fastcall *v10)(int, glitch::scene::CMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  int v11; // r0
  void (__fastcall *v12)(int, glitch::scene::CMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  int v14; // r0
  void (__fastcall *v15)(int, glitch::scene::CMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  glitch::video::CMaterial *v16; // [sp+10h] [bp-10h] BYREF
  glitch::video::CMaterial *v17; // [sp+14h] [bp-Ch] BYREF
  glitch::video::CMaterial *v18; // [sp+18h] [bp-8h] BYREF
  glitch::video::CMaterial *v19; // [sp+1Ch] [bp-4h] BYREF

  v1 = *((_DWORD *)this + 76);
  if ( v1 )
  {
    v3 = 0;
    *((_DWORD *)this + 77) = 0;
    v4 = 0;
    v5 = 0;
    while ( v3 < (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 16))(v1) )
    {
      (*(void (**)(void))(**((_DWORD **)this + 76) + 24))();
      v6 = v19;
      v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v6 + 1) + 24)
                                 + 12 * glitch::video::CMaterial::getTechnique(v19)
                                 + 8)
                     + 4);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v19);
      if ( (v7 & 0x10000) != 0 )
        ++v5;
      else
        ++v4;
      v8 = v5 == 0;
      if ( v5 )
        v8 = v4 == 0;
      if ( !v8 )
        goto LABEL_18;
      v1 = *((_DWORD *)this + 76);
      ++v3;
    }
    if ( !v4 )
      goto LABEL_13;
LABEL_18:
    v14 = *((_DWORD *)this + 68);
    v15 = *(void (__fastcall **)(int, glitch::scene::CMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v14 + 36);
    v18 = nullptr;
    v15(v14, this, &v18, 0, 4, 0, 0x7FFFFFFF);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
LABEL_13:
    if ( v5 )
    {
      v9 = *((_DWORD *)this + 68);
      v10 = *(void (__fastcall **)(int, glitch::scene::CMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v9 + 36);
      v17 = nullptr;
      v10(v9, this, &v17, 0, 8, 0, 0x7FFFFFFF);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v17);
    }
    if ( (*((_DWORD *)this + 71) & 0x800) != 0 )
    {
      v11 = *((_DWORD *)this + 68);
      v12 = *(void (__fastcall **)(int, glitch::scene::CMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v11 + 36);
      v16 = nullptr;
      v12(v11, this, &v16, 0, 7, 0, 0x7FFFFFFF);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
    }
  }
  return 1;
}


// ===== 584ed0 glitch::scene::CMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::scene::CMeshSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  glitch::IReferenceCounted *v3; // r12
  int (*v5)(void); // r3
  const char *v6; // r0
  char *v7; // r10
  size_t v8; // r0
  const char *v9; // r1
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  glitch::IReferenceCounted *v12; // [sp+Ch] [bp-48h] BYREF
  glitch::IReferenceCounted *v13; // [sp+10h] [bp-44h] BYREF
  glitch::IReferenceCounted *v14; // [sp+14h] [bp-40h] BYREF
  glitch::IReferenceCounted *v15; // [sp+18h] [bp-3Ch]
  _BYTE v16[16]; // [sp+1Ch] [bp-38h] BYREF
  _BYTE *v17; // [sp+2Ch] [bp-28h]
  void *p; // [sp+30h] [bp-24h]
  _DWORD v19[4]; // [sp+34h] [bp-20h] BYREF
  char *v20; // [sp+44h] [bp-10h]
  void *v21; // [sp+48h] [bp-Ch]

  v3 = (glitch::IReferenceCounted *)a1[76];
  v5 = *(int (**)(void))(**(_DWORD **)(a1[68] + 368) + 52);
  v15 = v3;
  if ( v3 )
    ++*((_DWORD *)v3 + 1);
  v6 = (const char *)v5();
  v20 = (char *)v19;
  v7 = (char *)v6;
  v21 = v19;
  v8 = LC_API_STRLEN_0(v6);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v19,
    v7,
    &v7[v8]);
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  (*(void (__fastcall **)(_BYTE *, int, char *))(*(_DWORD *)a2 + 132))(v16, a2, "Mesh");
  if ( v17 != p && (v20 - (_BYTE *)v21 != v17 - (_BYTE *)p || memcmp(v21, p, v20 - (_BYTE *)v21)) )
  {
    v9 = (const char *)a1[68];
    v14 = nullptr;
    glitch::scene::CSceneManager::getMesh((glitch::scene::CSceneManager *)&v13, v9);
    if ( v13 )
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, _DWORD, int, int, int))(*(_DWORD *)v13 + 52))(
        &v12,
        v13,
        0,
        255,
        -1,
        -1);
      v10 = v12;
      if ( v12 )
        ++*((_DWORD *)v12 + 1);
      v11 = v14;
      v14 = v10;
      if ( v11 )
        glitch::IReferenceCounted::drop(v11);
      if ( v12 )
        glitch::IReferenceCounted::drop(v12);
    }
    if ( v14 )
      (*(void (__fastcall **)(_DWORD *, glitch::IReferenceCounted **))(*a1 + 244))(a1, &v14);
    if ( v13 )
      glitch::IReferenceCounted::drop(v13);
    if ( v14 )
      glitch::IReferenceCounted::drop(v14);
  }
  glitch::scene::ISceneNode::deserializeAttributes(a1);
  if ( p != v16 && p )
    GlitchFree(p);
  if ( v21 != v19 )
  {
    if ( v21 )
      GlitchFree(v21);
  }
}


// ===== 5850ec glitch::scene::CMeshSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&) =====
int __fastcall glitch::scene::CMeshSceneNode::setMesh(int result, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r2

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  v3 = *(glitch::IReferenceCounted **)(result + 304);
  *(_DWORD *)(result + 304) = v2;
  if ( v3 )
    return glitch::IReferenceCounted::drop(v3);
  return result;
}


// ===== 585118 glitch::scene::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::scene::IMesh> const&,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CMeshSceneNode::CMeshSceneNode(_DWORD *a1, int *a2, int a3, int a4, int a5, int a6)
{
  int v8; // r3
  glitch::IReferenceCounted *v9; // r0

  a1[79] = 1;
  *a1 = off_97621C;
  a1[78] = off_95B720;
  *(int *)((char *)&elf_hash_bucket[23] + (_DWORD)a1) = (int)off_97623C;
  glitch::scene::ISceneNode::ISceneNode(a1, off_975F80, a3, a4, a5, a6);
  *a1 = off_975FC4;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_975FC4;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_9760D0;
  a1[76] = 0;
  *a1 = off_975E5C;
  a1[78] = off_975F68;
  a1[77] = 0;
  v8 = *a2;
  if ( *a2 )
  {
    ++*(_DWORD *)(v8 + 4);
    v9 = (glitch::IReferenceCounted *)a1[76];
    a1[76] = v8;
    if ( v9 )
      glitch::IReferenceCounted::drop(v9);
  }
  else
  {
    a1[76] = 0;
  }
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 58521c glitch::scene::CMeshSceneNode::clone(void) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::CMeshSceneNode::clone(glitch::scene::CMeshSceneNode *this)
{
  glitch::scene::ISceneNode *v2; // r5
  glitch::IReferenceCounted *v4; // [sp+Ch] [bp-4h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**((_DWORD **)this + 76) + 12))(
    &v4,
    *((_DWORD *)this + 76));
  v2 = (glitch::scene::ISceneNode *)operator new(0x140u, 0);
  glitch::scene::CMeshSceneNode::CMeshSceneNode(
    v2,
    (int *)&v4,
    *((_DWORD *)this + 67),
    (int)this + 172,
    (int)this + 184,
    (int)this + 200);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  glitch::scene::ISceneNode::cloneMembers(v2, this);
  return v2;
}


// ===== 58529c glitch::scene::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::scene::IMesh> const&,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int *__fastcall glitch::scene::CMeshSceneNode::CMeshSceneNode(
        int *a1,
        int *a2,
        int *a3,
        int a4,
        int a5,
        int a6,
        int a7)
{
  _DWORD *v7; // r6
  int v11; // r2
  int v12; // r2
  int v13; // r3
  glitch::IReferenceCounted *v14; // r0

  v7 = a2 + 1;
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 2, a4, a5, a6, a7);
  v11 = a2[1];
  *a1 = v11;
  *(int *)((char *)a1 + *(_DWORD *)(v11 - 28)) = v7[4];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = v7[5];
  v12 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v12 - 28)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[8];
  a1[76] = 0;
  a1[77] = 0;
  v13 = *a3;
  if ( *a3 )
  {
    ++*(_DWORD *)(v13 + 4);
    v14 = (glitch::IReferenceCounted *)a1[76];
    a1[76] = v13;
    if ( v14 )
      glitch::IReferenceCounted::drop(v14);
  }
  else
  {
    a1[76] = 0;
  }
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 585370 glitch::scene::CMeshSceneNode::render(void *) =====
_DWORD *__fastcall glitch::scene::CMeshSceneNode::render(_DWORD *this, void *a2)
{
  int v2; // r3
  _DWORD *v3; // r5
  glitch::video::CVertexStreams **v4; // r8
  int v5; // r2
  int v6; // r9
  int v7; // r0
  unsigned int v8; // r4
  _BOOL4 v9; // r9
  int v10; // r2
  glitch::video::CMaterialVertexAttributeMap *v11; // r3
  bool v12; // zf
  glitch::video::CMaterialVertexAttributeMap *v13; // r3
  glitch::video::CMaterial *v14; // [sp+4h] [bp-28h]
  glitch::video::CMaterialVertexAttributeMap *v15; // [sp+4h] [bp-28h]
  glitch::video::CMaterialVertexAttributeMap *v16; // [sp+4h] [bp-28h]
  glitch::IReferenceCounted *v17; // [sp+14h] [bp-18h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v18; // [sp+18h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v19; // [sp+1Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v20; // [sp+20h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v21; // [sp+24h] [bp-8h] BYREF

  v2 = *(this + 68);
  v3 = this;
  v4 = *(glitch::video::CVertexStreams ***)(v2 + 20);
  if ( *(this + 76) )
  {
    if ( v4 )
    {
      v5 = *(this + 77);
      v6 = *(_DWORD *)(v2 + 372);
      v7 = *(_DWORD *)(v2 + 20);
      v3[77] = v5 + 1;
      (*((void (__fastcall **)(int, int, _DWORD *))*v4 + 27))(v7, 1, v3 + 9);
      v8 = 0;
      v9 = v6 == 8;
      this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3[76] + 16))(v3[76]);
      if ( this )
      {
        while ( 1 )
        {
          (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(*(_DWORD *)v3[76] + 20))(
            &v21,
            v3[76],
            v8);
          if ( v21 )
            break;
LABEL_19:
          ++v8;
          this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3[76] + 16))(v3[76]);
          if ( v8 >= (unsigned int)this )
            return this;
        }
        (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(*(_DWORD *)v3[76] + 24))(
          &v20,
          v3[76],
          v8);
        v14 = v20;
        v10 = *(_DWORD *)(*((_DWORD *)v14 + 1) + 24) + 12 * glitch::video::CMaterial::getTechnique(v20);
        if ( !*(_BYTE *)(v3[68] + 650) && v9 != (HIWORD(*(_DWORD *)(*(_DWORD *)(v10 + 8) + 4)) & 1) )
        {
LABEL_17:
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v20);
          if ( v21 )
            glitch::IReferenceCounted::drop(v21);
          goto LABEL_19;
        }
        (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, unsigned int))(*(_DWORD *)v3[76] + 28))(
          &v19,
          v3[76],
          v8);
        v18 = v19;
        if ( v19 )
          ++*(_DWORD *)v19;
        glitch::video::IVideoDriver::setMaterial((int)v4, &v20, (int)&v18);
        v11 = v18;
        if ( v18 && (v12 = *(_DWORD *)v18 == 1, --*(_DWORD *)v18, v12) )
        {
          v15 = v11;
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v11);
          LC_API_FREE_0(v15);
          v13 = v19;
          if ( v19 )
          {
LABEL_11:
            v12 = (*(_DWORD *)v13)-- == 1;
            if ( v12 )
            {
              v16 = v13;
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v13);
              LC_API_FREE_0(v16);
            }
          }
        }
        else
        {
          v13 = v19;
          if ( v19 )
            goto LABEL_11;
        }
        v17 = v21;
        if ( v21 )
          ++*((_DWORD *)v21 + 1);
        glitch::video::IVideoDriver::drawMeshBuffer(v4, (int)&v17);
        if ( v17 )
          glitch::IReferenceCounted::drop(v17);
        goto LABEL_17;
      }
    }
  }
  return this;
}


// ===== 5855d4 `virtual thunk to'glitch::scene::CMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::scene::CMeshSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  glitch::scene::CMeshSceneNode::deserializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 5855e4 `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode(glitch::scene::CMeshSceneNode *this)
{
  glitch::scene::CMeshSceneNode::~CMeshSceneNode((glitch::scene::CMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5855f4 `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode(glitch::scene::CMeshSceneNode *this)
{
  glitch::scene::CMeshSceneNode::~CMeshSceneNode((glitch::scene::CMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 585604 `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode(glitch::scene::CMeshSceneNode *this)
{
  glitch::scene::CMeshSceneNode::~CMeshSceneNode((glitch::scene::CMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 585614 `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CMeshSceneNode::~CMeshSceneNode(glitch::scene::CMeshSceneNode *this)
{
  glitch::scene::CMeshSceneNode::~CMeshSceneNode((glitch::scene::CMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 585624 `virtual thunk to'glitch::scene::CMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CMeshSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::scene::CMeshSceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 585634 glitch::scene::ITriangleSelector::~ITriangleSelector() =====
void __fastcall glitch::scene::ITriangleSelector::~ITriangleSelector(glitch::scene::ITriangleSelector *this)
{
  ;
}


// ===== 585638 glitch::core::aabbox3d<float>::getEdges(glitch::core::vector3d<float> *) =====
float __fastcall glitch::core::aabbox3d<float>::getEdges(float *a1, float *a2)
{
  float v2; // r8
  float v3; // r9
  float v4; // r10
  float v5; // r11
  float v6; // r5
  float v7; // r6
  float v8; // r9
  float v9; // r10
  float v11; // [sp+0h] [bp-Ch]
  float v12; // [sp+4h] [bp-8h]

  v2 = (float)(a1[3] + *a1) * 0.5;
  v3 = (float)(a1[4] + a1[1]) * 0.5;
  v4 = (float)(a1[5] + a1[2]) * 0.5;
  v11 = v2 - a1[3];
  v5 = v3 - a1[4];
  v12 = v4 - a1[5];
  v6 = v3 + v5;
  v7 = v4 + v12;
  a2[2] = v4 + v12;
  *a2 = v2 + v11;
  a2[1] = v3 + v5;
  a2[3] = v2 + v11;
  a2[5] = v4 + v12;
  v8 = v3 - v5;
  a2[4] = v8;
  a2[6] = v2 + v11;
  a2[8] = v4 - v12;
  a2[7] = v6;
  a2[9] = v2 + v11;
  a2[11] = v4 - v12;
  a2[10] = v8;
  v9 = v4 - v12;
  a2[12] = v2 - v11;
  a2[14] = v7;
  a2[13] = v6;
  a2[15] = v2 - v11;
  a2[17] = v7;
  a2[16] = v8;
  a2[18] = v2 - v11;
  a2[19] = v6;
  a2[20] = v9;
  a2[21] = v2 - v11;
  a2[23] = v9;
  a2[22] = v8;
  return v2 - v11;
}


// ===== 5857ac glitch::core::triangle3d<float>::isTotalInsideBox(glitch::core::aabbox3d<float> const&) =====
bool __fastcall glitch::core::triangle3d<float>::isTotalInsideBox(float *a1, float *a2)
{
  float v2; // r7
  float v3; // r8
  float v4; // r6
  float v5; // r9
  float v6; // r10
  float v7; // r4
  float v8; // r5

  v2 = *a2;
  if ( *a1 < *a2 )
    return 0;
  v3 = a2[3];
  if ( *a1 > v3 )
    return 0;
  v4 = a2[1];
  if ( a1[1] < v4 )
    return 0;
  v5 = a2[4];
  if ( a1[1] > v5 )
    return 0;
  v6 = a2[2];
  if ( a1[2] < v6 )
    return 0;
  v7 = a2[5];
  if ( a1[2] > v7 )
    return 0;
  if ( v2 > a1[3] )
    return 0;
  if ( v3 < a1[3] )
    return 0;
  if ( v4 > a1[4] )
    return 0;
  if ( v5 < a1[4] )
    return 0;
  if ( v6 > a1[5] )
    return 0;
  if ( v7 < a1[5] )
    return 0;
  if ( v2 > a1[6] )
    return 0;
  if ( v3 < a1[6] )
    return 0;
  if ( v4 > a1[7] )
    return 0;
  if ( v5 < a1[7] )
    return 0;
  v8 = a1[8];
  return v6 <= v8 && v7 >= v8;
}


// ===== 585970 glitch::core::aabbox3d<float>::intersectsWithLine_impl_1d(float,float,float,float,float &,float &) =====
bool __fastcall glitch::core::aabbox3d<float>::intersectsWithLine_impl_1d(
        int a1,
        float a2,
        float a3,
        float a4,
        float a5,
        float *a6,
        float *a7)
{
  float v7; // r0
  float v8; // r9
  float v9; // r0
  float v10; // r4

  v7 = a5 - a4;
  if ( a4 >= a5 )
  {
    if ( a5 <= a3 && a4 >= a2 )
    {
      if ( a4 > a3 )
        v8 = (float)(a3 - a4) / v7;
      else
        v8 = 0.0;
      if ( a5 < a2 )
      {
        v9 = a2;
        goto LABEL_10;
      }
LABEL_25:
      v10 = 1.0;
      goto LABEL_11;
    }
    return 0;
  }
  if ( a4 > a3 || a5 < a2 )
    return 0;
  if ( a4 < a2 )
    v8 = (float)(a2 - a4) / v7;
  else
    v8 = 0.0;
  if ( a5 <= a3 )
    goto LABEL_25;
  v9 = a3;
LABEL_10:
  v10 = (float)(v9 - a4) / (float)(a5 - a4);
LABEL_11:
  if ( *a6 < v8 )
    *a6 = v8;
  if ( *a7 > v10 )
    *a7 = v10;
  else
    v10 = *a7;
  return *a6 <= v10;
}


// ===== 585b08 glitch::core::aabbox3d<float>::intersectsWithSegment(glitch::core::line3d<float> const&,float &,float &) =====
bool __fastcall glitch::core::aabbox3d<float>::intersectsWithSegment(float *a1, float *a2, float *a3, float *a4)
{
  *a3 = 0.0;
  *a4 = 1.0;
  return glitch::core::aabbox3d<float>::intersectsWithLine_impl_1d((int)a1, *a1, a1[3], *a2, a2[3], a3, a4)
      && glitch::core::aabbox3d<float>::intersectsWithLine_impl_1d((int)a1, a1[1], a1[4], a2[1], a2[4], a3, a4)
      && glitch::core::aabbox3d<float>::intersectsWithLine_impl_1d((int)a1, a1[2], a1[5], a2[2], a2[5], a3, a4);
}


// ===== 585bb8 glitch::core::triangle3d<float>::isOnSameSide(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::core::triangle3d<float>::isOnSameSide(int a1, float *a2, float *a3, float *a4, float *a5)
{
  float v5; // r9
  float v6; // r8
  float v7; // r11
  float v8; // r7
  float v9; // r6
  float v11; // [sp+Ch] [bp-10h]

  v5 = a4[1];
  v6 = *a5 - *a4;
  v7 = a4[2];
  v8 = a5[1] - v5;
  v9 = a5[2] - v7;
  v11 = *a2 - *a4;
  return (float)((float)((float)((float)((float)((float)(a2[2] - v7) * COERCE_FLOAT(LODWORD(v8) + 0x80000000))
                                       + (float)(v9 * (float)(a2[1] - v5)))
                               * (float)((float)(COERCE_FLOAT(LODWORD(v8) + 0x80000000) * (float)(a3[2] - v7))
                                       + (float)(v9 * (float)(a3[1] - v5))))
                       + (float)((float)((float)(v11 * COERCE_FLOAT(LODWORD(v9) + 0x80000000))
                                       + (float)(v6 * (float)(a2[2] - v7)))
                               * (float)((float)(COERCE_FLOAT(LODWORD(v9) + 0x80000000) * (float)(*a3 - *a4))
                                       + (float)(v6 * (float)(a3[2] - v7)))))
               + (float)((float)((float)((float)(a2[1] - v5) * COERCE_FLOAT(LODWORD(v6) + 0x80000000))
                               + (float)(v8 * v11))
                       * (float)((float)(COERCE_FLOAT(LODWORD(v6) + 0x80000000) * (float)(a3[1] - v5))
                               + (float)(v8 * (float)(*a3 - *a4))))) >= 0.0;
}


// ===== 585de8 glitch::core::triangle3d<float>::isPointInside(glitch::core::vector3d<float> const&) =====
bool __fastcall glitch::core::triangle3d<float>::isPointInside(float *a1, float *a2)
{
  float *v2; // r5
  float *v3; // r6

  v2 = a1 + 3;
  v3 = a1 + 6;
  return glitch::core::triangle3d<float>::isOnSameSide((int)a1, a2, a1, a1 + 3, a1 + 6)
      && glitch::core::triangle3d<float>::isOnSameSide((int)a1, a2, v2, a1, v3)
      && glitch::core::triangle3d<float>::isOnSameSide((int)a1, a2, v3, a1, v2);
}


// ===== 585e60 `global constructor keyed to'.._source_glitch_scene_COctTreeTriangleSelector.cpp =====
void `global constructor keyed to'.._source_glitch_scene_COctTreeTriangleSelector.cpp()
{
  dword_9F6874 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6870 = 1056964608;
}


// ===== 585e80 glitch::core::triangle3d<float>::getIntersectionOfPlaneWithLine(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float>&) =====
int __fastcall glitch::core::triangle3d<float>::getIntersectionOfPlaneWithLine(
        float *a1,
        float *a2,
        float *a3,
        float *a4)
{
  float v6; // r10
  float v7; // r7
  float v8; // r9
  float v9; // r5
  float v10; // r8
  float *v11; // r0
  float v12; // r9
  float v13; // r8
  float v14; // r7
  float v15; // r5
  float v16; // r10
  float v17; // r11
  float v18; // r6
  float v19; // r11
  float v21; // r0
  float v22; // [sp+4h] [bp-28h]
  float v23; // [sp+4h] [bp-28h]
  float v24; // [sp+8h] [bp-24h]
  float v26; // [sp+Ch] [bp-20h]
  float v28; // [sp+14h] [bp-18h]
  float v29[4]; // [sp+1Ch] [bp-10h] BYREF

  v6 = a1[3] - *a1;
  v7 = a1[4] - a1[1];
  v8 = a1[5] - a1[2];
  v9 = a1[6] - *a1;
  v10 = a1[7] - a1[1];
  v22 = a1[8] - a1[2];
  v29[0] = (float)(v22 * COERCE_FLOAT(LODWORD(v7) + 0x80000000)) + (float)(v8 * v10);
  v29[1] = (float)(v9 * COERCE_FLOAT(LODWORD(v8) + 0x80000000)) + (float)(v6 * v22);
  v29[2] = (float)(v10 * COERCE_FLOAT(LODWORD(v6) + 0x80000000)) + (float)(v7 * v9);
  v11 = glitch::core::vector3d<float>::normalize(v29);
  v12 = *a3;
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  v16 = a3[1];
  v17 = *v11 * *a3;
  v18 = a3[2];
  v19 = (float)(v17 + (float)(v14 * v16)) + (float)(v15 * v18);
  if ( fabs(v19) <= 0.000001 )
    return 0;
  v23 = *a2;
  v28 = a2[1];
  v24 = v13 * *a2;
  v26 = a2[2];
  v21 = COERCE_FLOAT(
          COERCE_INT(
            (float)((float)(v24 + (float)(v14 * v28)) + (float)(v15 * v26))
          - (float)((float)((float)(v13 * *a1) + (float)(v14 * a1[1])) + (float)(v15 * a1[2])))
        + 0x80000000)
      / v19;
  *a4 = v23 + (float)(v21 * v12);
  a4[1] = v28 + (float)(v21 * v16);
  a4[2] = v26 + (float)(v21 * v18);
  return 1;
}


// ===== 58615c glitch::core::triangle3d<float>::getIntersectionWithLine(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float>&) =====
int __fastcall glitch::core::triangle3d<float>::getIntersectionWithLine(float *a1, float *a2, float *a3, float *a4)
{
  int result; // r0

  result = glitch::core::triangle3d<float>::getIntersectionOfPlaneWithLine(a1, a2, a3, a4);
  if ( result )
    return glitch::core::triangle3d<float>::isPointInside(a1, a4);
  return result;
}


// ===== 586188 glitch::core::triangle3d<float>::getIntersectionWithLineSegment(glitch::core::line3d<float> const&,float,glitch::core::vector3d<float> const&,glitch::core::aabbox3d<float> const&,glitch::core::vector3d<float>&) =====
bool __fastcall glitch::core::triangle3d<float>::getIntersectionWithLineSegment(
        float *a1,
        float *a2,
        float a3,
        int a4,
        float *a5,
        float *a6)
{
  float v6; // r7
  float v10; // r7
  float v11; // r7
  float v12; // r7
  float v13; // r7
  float v14; // r5
  float v15; // r11
  float v16; // r0
  float v17; // r9
  float v18; // r1
  float v19; // r7
  float v20; // r8

  v6 = *a5;
  if ( *a5 > *a1 && v6 > a1[3] && v6 > a1[6] )
    return 0;
  v10 = a5[3];
  if ( *a1 > v10 && v10 < a1[3] && v10 < a1[6] )
    return 0;
  v11 = a5[1];
  if ( v11 > a1[1] && v11 > a1[4] && v11 > a1[7] )
    return 0;
  v12 = a5[4];
  if ( a1[1] > v12 && v12 < a1[4] && v12 < a1[7] )
    return 0;
  v13 = a5[2];
  if ( v13 > a1[2] && v13 > a1[5] && v13 > a1[8] )
    return 0;
  if ( ((v14 = a5[5], a1[2] <= v14) || v14 >= a1[5] || v14 >= a1[8])
    && glitch::core::triangle3d<float>::getIntersectionWithLine(a1, a2, a4, a6)
    && (v15 = *a6 - *a2,
        v16 = a6[1] - a2[1],
        v17 = a6[2] - a2[2],
        v18 = a2[5],
        v19 = a2[3],
        v20 = a2[4],
        a3 > (float)((float)((float)(v15 * v15) + (float)(v16 * v16)) + (float)(v17 * v17))) )
  {
    return a3 > (float)((float)((float)((float)(*a6 - v19) * (float)(*a6 - v19))
                              + (float)((float)(a6[1] - v20) * (float)(a6[1] - v20)))
                      + (float)((float)(a6[2] - v18) * (float)(a6[2] - v18)));
  }
  else
  {
    return 0;
  }
}


// ===== 586480 glitch::scene::ITriangleSelector::~ITriangleSelector() =====
void __fastcall glitch::scene::ITriangleSelector::~ITriangleSelector(glitch::scene::ITriangleSelector *this)
{
  LC_API_FREE_0(this);
}


// ===== 586494 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = 954437177 * ((a1[1] - *a1) >> 2);
  if ( 119304647 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0x71C71C7 || result < v3 )
    return 119304647;
  return result;
}


// ===== 586520 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::triangle3d<float> const*>(uint &,glitch::core::triangle3d<float> const*,glitch::core::triangle3d<float> const*) =====
_DWORD *__fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::triangle3d<float> const*>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r4
  int v5; // r5
  _DWORD *result; // r0
  int v7; // r5
  _DWORD *i; // r3
  int v9; // r2

  v4 = a3;
  v5 = a4 - (_DWORD)a3;
  result = GlitchAlloc(36 * *a2, 0);
  v7 = 954437177 * (v5 >> 2);
  if ( v7 > 0 )
  {
    for ( i = result; ; i += 9 )
    {
      --v7;
      *i = *v4;
      i[1] = v4[1];
      i[2] = v4[2];
      i[3] = v4[3];
      i[4] = v4[4];
      i[5] = v4[5];
      i[6] = v4[6];
      i[7] = v4[7];
      v9 = v4[8];
      v4 += 9;
      i[8] = v9;
      if ( !v7 )
        break;
    }
  }
  return result;
}


// ===== 5865d0 glitch::scene::COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode() =====
void __fastcall glitch::scene::COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode(void **this)
{
  void **v2; // r6
  int i; // r5
  glitch::scene::COctTreeTriangleSelector::SOctTreeNode *v4; // r4

  v2 = this;
  for ( i = 0; i != 8; ++i )
  {
    v4 = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)v2[3];
    ++v2;
    if ( v4 )
    {
      glitch::scene::COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode(v4);
      LC_API_FREE_0(v4);
    }
  }
  if ( *this )
    GlitchFree(*this);
}


// ===== 586620 glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector() =====
void __fastcall glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector(
        glitch::scene::COctTreeTriangleSelector *this)
{
  void **v1; // r6
  void *v3; // r0

  v1 = *((void ***)this + 43);
  *(_DWORD *)this = off_976278;
  if ( v1 )
  {
    glitch::scene::COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode(v1);
    LC_API_FREE_0(v1);
  }
  v3 = *((void **)this + 3);
  *(_DWORD *)this = off_9767F0;
  if ( v3 )
    GlitchFree(v3);
}


// ===== 586690 glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector() =====
void __fastcall glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector(
        glitch::scene::COctTreeTriangleSelector *this)
{
  glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector(this);
  LC_API_FREE_0(this);
}


// ===== 5866ac glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector() =====
void __fastcall glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector(
        glitch::scene::COctTreeTriangleSelector *this)
{
  void **v1; // r6
  void *v3; // r0

  v1 = *((void ***)this + 43);
  *(_DWORD *)this = off_976278;
  if ( v1 )
  {
    glitch::scene::COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode(v1);
    LC_API_FREE_0(v1);
  }
  v3 = *((void **)this + 3);
  *(_DWORD *)this = off_9767F0;
  if ( v3 )
    GlitchFree(v3);
}


// ===== 58671c std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        _DWORD *a1,
        _DWORD *a2)
{
  char *v3; // r12
  _DWORD *v4; // r2
  int v5; // r3
  char *v6; // r11
  int v7; // r7
  int v8; // r5
  int v9; // r6
  char *v10; // r8
  int v11; // r3
  _DWORD *v13; // r0
  int v14; // r6
  char *v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r1
  char *v19; // r0
  int v20; // r3
  int v21; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v3 = (char *)*a1;
    v4 = (_DWORD *)*a2;
    v5 = a2[1];
    v6 = (char *)*a1;
    v7 = (v5 - *a2) >> 2;
    v8 = 954437177 * v7;
    v9 = 954437177 * v7;
    if ( 954437177 * v7 > (unsigned int)(954437177 * ((a1[2] - *a1) >> 2)) )
    {
      v21 = 954437177 * v7;
      v6 = (char *)std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::core::triangle3d<float> const*>(
                     (int)a1,
                     &v21,
                     v4,
                     v5);
      v19 = (char *)a1[1];
      if ( v19 != (char *)*a1 )
        v19 += -36 * ((954437177 * ((unsigned int)&v19[-*a1 - 36] >> 2)) & 0x3FFFFFFF) - 36;
      GlitchFree(v19);
      v20 = v21;
      *a1 = v6;
      a1[2] = &v6[36 * v20];
      goto LABEL_7;
    }
    v10 = (char *)a1[1];
    if ( v8 > (unsigned int)(954437177 * ((v10 - v3) >> 2)) )
    {
      v13 = &v4[(v10 - v3) >> 2];
      v14 = 954437177 * ((4 * ((v10 - v3) >> 2)) >> 2);
      if ( v14 > 0 )
      {
        do
        {
          --v14;
          *(_DWORD *)v3 = *v4;
          *((_DWORD *)v3 + 1) = v4[1];
          *((_DWORD *)v3 + 2) = v4[2];
          *((_DWORD *)v3 + 3) = v4[3];
          *((_DWORD *)v3 + 4) = v4[4];
          *((_DWORD *)v3 + 5) = v4[5];
          *((_DWORD *)v3 + 6) = v4[6];
          *((_DWORD *)v3 + 7) = v4[7];
          v16 = v4[8];
          v4 += 9;
          *((_DWORD *)v3 + 8) = v16;
          v3 += 36;
        }
        while ( v14 );
        v15 = (char *)a1[1];
        v3 = (char *)*a1;
        v5 = a2[1];
        v13 = (_DWORD *)(*a2 + 4 * ((int)&v15[-*a1] >> 2));
      }
      else
      {
        v15 = v10;
      }
      v17 = 954437177 * ((v5 - (int)v13) >> 2);
      if ( v17 <= 0 )
      {
        v6 = v3;
        goto LABEL_7;
      }
      while ( 1 )
      {
        --v17;
        *(_DWORD *)v15 = *v13;
        *((_DWORD *)v15 + 1) = v13[1];
        *((_DWORD *)v15 + 2) = v13[2];
        *((_DWORD *)v15 + 3) = v13[3];
        *((_DWORD *)v15 + 4) = v13[4];
        *((_DWORD *)v15 + 5) = v13[5];
        *((_DWORD *)v15 + 6) = v13[6];
        *((_DWORD *)v15 + 7) = v13[7];
        v18 = v13[8];
        v13 += 9;
        *((_DWORD *)v15 + 8) = v18;
        if ( !v17 )
          break;
        v15 += 36;
      }
    }
    else
    {
      if ( v8 <= 0 )
      {
LABEL_7:
        a1[1] = &v6[4 * v7];
        return a1;
      }
      do
      {
        --v9;
        *(_DWORD *)v3 = *v4;
        *((_DWORD *)v3 + 1) = v4[1];
        *((_DWORD *)v3 + 2) = v4[2];
        *((_DWORD *)v3 + 3) = v4[3];
        *((_DWORD *)v3 + 4) = v4[4];
        *((_DWORD *)v3 + 5) = v4[5];
        *((_DWORD *)v3 + 6) = v4[6];
        *((_DWORD *)v3 + 7) = v4[7];
        v11 = v4[8];
        v4 += 9;
        *((_DWORD *)v3 + 8) = v11;
        v3 += 36;
      }
      while ( v9 );
    }
    v6 = (char *)*a1;
    goto LABEL_7;
  }
  return a1;
}


// ===== 586a14 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 586a34 glitch::scene::CTriangleSelector::Setup(glitch::core::CMatrix4<float> const*) =====
void *__fastcall glitch::scene::CTriangleSelector::Setup(int a1, const void *a2)
{
  void *v2; // r5
  void *result; // r0
  int v6; // r3
  _BYTE *v7; // r1

  v2 = (void *)(a1 + 92);
  *(_BYTE *)(a1 + 156) = 0;
  result = LC_API_MEMSET_0((void *)(a1 + 92), 0, 0x40u);
  *(_DWORD *)(a1 + 152) = 1065353216;
  *(_BYTE *)(a1 + 156) = 1;
  *(_DWORD *)(a1 + 92) = 1065353216;
  *(_DWORD *)(a1 + 112) = 1065353216;
  *(_DWORD *)(a1 + 132) = 1065353216;
  if ( a2 )
    result = memcpy(v2, a2, 0x41u);
  v6 = *(_DWORD *)(a1 + 8);
  if ( v6 )
  {
    if ( !*(_BYTE *)(a1 + 24) )
    {
      v7 = (_BYTE *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 56))(*(_DWORD *)(a1 + 8));
      return glitch::core::detail::CMatrix4Base<float>::multEq(v2, v7);
    }
  }
  return result;
}


// ===== 586acc glitch::scene::CTriangleSelector::AddResult(glitch::core::triangle3d<float> const&) =====
bool __fastcall glitch::scene::CTriangleSelector::AddResult(int a1, _DWORD *a2)
{
  int v2; // r3
  int v4; // r0
  _DWORD *v5; // r2
  int v6; // r8
  int v7; // r7
  float v8; // r11
  int v9; // r6
  float v10; // r9
  float v11; // r10
  float *v12; // r6
  float v13; // r10
  float v14; // r8
  float v15; // r7
  float v16; // r9
  float v17; // r11
  float *v18; // r5
  float v19; // r8
  float v20; // r7
  float v21; // r6
  float v22; // r10
  float v23; // r9
  int v24; // r3
  _BOOL4 result; // r0
  float v26; // [sp+0h] [bp-Ch]
  float v27; // [sp+4h] [bp-8h]

  v2 = 36 * *(_DWORD *)(a1 + 168);
  v4 = *(_DWORD *)(a1 + 160);
  *(_DWORD *)(v4 + v2) = *a2;
  v5 = (_DWORD *)(v4 + v2);
  v5[1] = a2[1];
  v5[2] = a2[2];
  v5[3] = a2[3];
  v5[4] = a2[4];
  v5[5] = a2[5];
  v5[6] = a2[6];
  v5[7] = a2[7];
  v5[8] = a2[8];
  if ( !*(_BYTE *)(a1 + 156) )
  {
    v6 = *(_DWORD *)(a1 + 160);
    v7 = 36 * *(_DWORD *)(a1 + 168);
    v8 = *(float *)(v6 + v7);
    v9 = v6 + v7;
    v10 = *(float *)(v6 + v7 + 4);
    v11 = *(float *)(v6 + v7 + 8);
    v26 = (float)((float)((float)(v8 * *(float *)(a1 + 96)) + (float)(v10 * *(float *)(a1 + 112)))
                + (float)(v11 * *(float *)(a1 + 128)))
        + *(float *)(a1 + 144);
    v27 = (float)((float)((float)(v8 * *(float *)(a1 + 100)) + (float)(v10 * *(float *)(a1 + 116)))
                + (float)(v11 * *(float *)(a1 + 132)))
        + *(float *)(a1 + 148);
    *(float *)(v6 + v7) = (float)((float)((float)(v8 * *(float *)(a1 + 92)) + (float)(v10 * *(float *)(a1 + 108)))
                                + (float)(v11 * *(float *)(a1 + 124)))
                        + *(float *)(a1 + 140);
    *(float *)(v9 + 8) = v27;
    *(float *)(v9 + 4) = v26;
    v12 = (float *)(*(_DWORD *)(a1 + 160) + 36 * *(_DWORD *)(a1 + 168));
    v13 = v12[3];
    v14 = v12[4];
    v15 = v12[5];
    v16 = (float)((float)((float)(v13 * *(float *)(a1 + 96)) + (float)(v14 * *(float *)(a1 + 112)))
                + (float)(v15 * *(float *)(a1 + 128)))
        + *(float *)(a1 + 144);
    v17 = (float)((float)((float)(v13 * *(float *)(a1 + 100)) + (float)(v14 * *(float *)(a1 + 116)))
                + (float)(v15 * *(float *)(a1 + 132)))
        + *(float *)(a1 + 148);
    v12[3] = (float)((float)((float)(v13 * *(float *)(a1 + 92)) + (float)(v14 * *(float *)(a1 + 108)))
                   + (float)(v15 * *(float *)(a1 + 124)))
           + *(float *)(a1 + 140);
    v12[4] = v16;
    v12[5] = v17;
    v18 = (float *)(*(_DWORD *)(a1 + 160) + 36 * *(_DWORD *)(a1 + 168));
    v19 = v18[6];
    v20 = v18[7];
    v21 = v18[8];
    v22 = (float)((float)((float)(v19 * *(float *)(a1 + 96)) + (float)(v20 * *(float *)(a1 + 112)))
                + (float)(v21 * *(float *)(a1 + 128)))
        + *(float *)(a1 + 144);
    v23 = (float)((float)((float)(v19 * *(float *)(a1 + 100)) + (float)(v20 * *(float *)(a1 + 116)))
                + (float)(v21 * *(float *)(a1 + 132)))
        + *(float *)(a1 + 148);
    v18[6] = (float)((float)((float)(v19 * *(float *)(a1 + 92)) + (float)(v20 * *(float *)(a1 + 108)))
                   + (float)(v21 * *(float *)(a1 + 124)))
           + *(float *)(a1 + 140);
    v18[8] = v23;
    v18[7] = v22;
  }
  v24 = *(_DWORD *)(a1 + 168) + 1;
  result = v24 == *(_DWORD *)(a1 + 164);
  *(_DWORD *)(a1 + 168) = v24;
  return result;
}


// ===== 586ec8 glitch::scene::CTriangleSelector::TestWithBox(std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
float __fastcall glitch::scene::CTriangleSelector::TestWithBox(int a1, int *a2)
{
  float v3; // r7
  float v4; // r8
  float result; // r0
  int v6; // r9
  int v7; // r4
  int v8; // r5
  int i; // r6
  float v10; // r11
  int v11; // r6
  float v12; // [sp+4h] [bp-18h]
  float v13; // [sp+8h] [bp-14h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v3 = *(float *)(a1 + 68);
  v4 = *(float *)(a1 + 80);
  v12 = *(float *)(a1 + 72);
  result = *(float *)(a1 + 84);
  v6 = 954437177 * ((a2[1] - *a2) >> 2);
  v13 = result;
  v15 = *(float *)(a1 + 76);
  v16 = *(float *)(a1 + 88);
  if ( v6 > 0 )
  {
    v7 = 0;
    v8 = 0;
    for ( i = *a2; ; i = *a2 )
    {
      v10 = *(float *)(i + v7);
      v11 = i + v7;
      if ( v10 >= v3
        || *(float *)(v11 + 12) >= v3
        || (LODWORD(result) = *(float *)(v11 + 24) < v3, *(float *)(v11 + 24) >= v3) )
      {
        if ( v4 >= v10
          || *(float *)(v11 + 12) <= v4
          || (LODWORD(result) = *(float *)(v11 + 24) > v4, *(float *)(v11 + 24) <= v4) )
        {
          if ( *(float *)(v11 + 4) >= v12
            || *(float *)(v11 + 16) >= v12
            || (LODWORD(result) = *(float *)(v11 + 28) < v12, *(float *)(v11 + 28) >= v12) )
          {
            if ( v13 >= *(float *)(v11 + 4)
              || *(float *)(v11 + 16) <= v13
              || (LODWORD(result) = *(float *)(v11 + 28) > v13, *(float *)(v11 + 28) <= v13) )
            {
              if ( *(float *)(v11 + 8) >= v15
                || *(float *)(v11 + 20) >= v15
                || (LODWORD(result) = *(float *)(v11 + 32) < v15, *(float *)(v11 + 32) >= v15) )
              {
                if ( v16 >= *(float *)(v11 + 8)
                  || *(float *)(v11 + 20) <= v16
                  || (LODWORD(result) = *(float *)(v11 + 32) > v16, *(float *)(v11 + 32) <= v16) )
                {
                  LODWORD(result) = glitch::scene::CTriangleSelector::AddResult(a1, (_DWORD *)v11);
                  if ( result != 0.0 )
                    break;
                }
              }
            }
          }
        }
      }
      ++v8;
      v7 += 36;
      if ( v8 == v6 )
        break;
    }
  }
  return result;
}


// ===== 5870fc glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeBox(glitch::scene::COctTreeTriangleSelector::SOctTreeNode *) =====
float __fastcall glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeBox(
        glitch::scene::COctTreeTriangleSelector *this,
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode *a2)
{
  glitch::scene::COctTreeTriangleSelector::SOctTreeNode *v3; // r5
  float result; // r0
  int v5; // r4
  glitch::scene::COctTreeTriangleSelector::SOctTreeNode *v6; // r1

  v3 = a2;
  LODWORD(result) = *((float *)a2 + 11) <= *((float *)this + 20);
  if ( result != 0.0 )
  {
    LODWORD(result) = *((float *)a2 + 12) <= *((float *)this + 21);
    if ( *((float *)a2 + 12) <= *((float *)this + 21) )
    {
      LODWORD(result) = *((float *)a2 + 13) <= *((float *)this + 22);
      if ( *((float *)a2 + 13) <= *((float *)this + 22) )
      {
        LODWORD(result) = *((float *)a2 + 14) >= *((float *)this + 17);
        if ( *((float *)a2 + 14) >= *((float *)this + 17) )
        {
          LODWORD(result) = *((float *)a2 + 15) >= *((float *)this + 18);
          if ( *((float *)a2 + 15) >= *((float *)this + 18) )
          {
            LODWORD(result) = *((float *)a2 + 16) >= *((float *)this + 19);
            if ( *((float *)a2 + 16) >= *((float *)this + 19) )
            {
              result = glitch::scene::CTriangleSelector::TestWithBox((int)this, (int *)a2);
              if ( *((_DWORD *)this + 42) != *((_DWORD *)this + 41) )
              {
                v5 = 0;
                do
                {
                  v6 = *((glitch::scene::COctTreeTriangleSelector::SOctTreeNode **)v3 + 3);
                  ++v5;
                  result = *(float *)&this;
                  if ( v6 )
                    result = COERCE_FLOAT(glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeBox(this, v6));
                  v3 = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)((char *)v3 + 4);
                }
                while ( v5 != 8 );
              }
            }
          }
        }
      }
    }
  }
  return result;
}


// ===== 5871c8 glitch::scene::CTriangleSelector::TestWithLine(std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
bool __fastcall glitch::scene::CTriangleSelector::TestWithLine(_BOOL4 result, int *a2)
{
  int v2; // r7
  int v4; // r8
  int v5; // r9
  int v6; // r4
  float *v7; // r11
  int v8; // r6
  float v9; // r2
  float *v10; // r7
  float *v11; // [sp+Ch] [bp-20h]
  int v12; // [sp+10h] [bp-1Ch]
  float v13[4]; // [sp+1Ch] [bp-10h] BYREF

  v2 = *a2;
  v4 = result;
  v5 = 954437177 * ((a2[1] - *a2) >> 2);
  if ( v5 > 0 )
  {
    v6 = 0;
    v12 = result + 56;
    v7 = (float *)(result + 28);
    v11 = (float *)(result + 68);
    v8 = 0;
    while ( 1 )
    {
      v9 = *(float *)(v4 + 52);
      v10 = (float *)(v2 + v6);
      memset(v13, 0, 12);
      result = glitch::core::triangle3d<float>::getIntersectionWithLineSegment(v10, v7, v9, v12, v11, v13);
      ++v8;
      if ( result )
      {
        result = glitch::scene::CTriangleSelector::AddResult(v4, v10);
        if ( result )
          break;
      }
      v6 += 36;
      if ( v8 == v5 )
        break;
      v2 = *a2;
    }
  }
  return result;
}


// ===== 5872a4 glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeLine(glitch::scene::COctTreeTriangleSelector::SOctTreeNode *) =====
glitch::scene::COctTreeTriangleSelector *__fastcall glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeLine(
        glitch::scene::COctTreeTriangleSelector *this,
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode *a2)
{
  int *v3; // r5
  glitch::scene::COctTreeTriangleSelector *result; // r0
  int v5; // r6
  glitch::scene::COctTreeTriangleSelector::SOctTreeNode *v6; // r1
  float v7; // [sp+0h] [bp-8h] BYREF
  float v8; // [sp+4h] [bp-4h] BYREF

  v3 = (int *)a2;
  result = (glitch::scene::COctTreeTriangleSelector *)(*((float *)a2 + 11) <= *((float *)this + 20));
  if ( result )
  {
    result = (glitch::scene::COctTreeTriangleSelector *)(*((float *)a2 + 12) <= *((float *)this + 21));
    if ( *((float *)a2 + 12) <= *((float *)this + 21) )
    {
      result = (glitch::scene::COctTreeTriangleSelector *)(*((float *)a2 + 13) <= *((float *)this + 22));
      if ( *((float *)a2 + 13) <= *((float *)this + 22) )
      {
        result = (glitch::scene::COctTreeTriangleSelector *)(*((float *)a2 + 14) >= *((float *)this + 17));
        if ( *((float *)a2 + 14) >= *((float *)this + 17) )
        {
          result = (glitch::scene::COctTreeTriangleSelector *)(*((float *)a2 + 15) >= *((float *)this + 18));
          if ( *((float *)a2 + 15) >= *((float *)this + 18) )
          {
            result = (glitch::scene::COctTreeTriangleSelector *)(*((float *)a2 + 16) >= *((float *)this + 19));
            if ( *((float *)a2 + 16) >= *((float *)this + 19) )
            {
              result = (glitch::scene::COctTreeTriangleSelector *)glitch::core::aabbox3d<float>::intersectsWithSegment(
                                                                    (float *)a2 + 11,
                                                                    (float *)this + 7,
                                                                    &v8,
                                                                    &v7);
              if ( result )
              {
                result = (glitch::scene::COctTreeTriangleSelector *)glitch::scene::CTriangleSelector::TestWithLine(
                                                                      (_BOOL4)this,
                                                                      v3);
                if ( *((_DWORD *)this + 42) != *((_DWORD *)this + 41) )
                {
                  v5 = 0;
                  do
                  {
                    v6 = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)v3[3];
                    ++v5;
                    result = this;
                    if ( v6 )
                      result = (glitch::scene::COctTreeTriangleSelector *)glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeLine(
                                                                            this,
                                                                            v6);
                    ++v3;
                  }
                  while ( v5 != 8 );
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


// ===== 587398 glitch::core::CMatrix4<float>::transformBox(glitch::core::aabbox3d<float> &) =====
int __fastcall glitch::core::CMatrix4<float>::transformBox(int result, float *a2)
{
  float *v2; // r4
  float v3; // r7
  float v4; // r6
  float v5; // r9
  float v6; // r8
  float v7; // r0
  float v8; // r6
  float v9; // r7
  float v10; // r11
  float v11; // r10
  float v12; // r0
  float v13; // r4

  v2 = (float *)result;
  if ( !*(_BYTE *)(result + 64) )
  {
    v3 = a2[1];
    v4 = a2[2];
    v5 = (float)((float)((float)(*a2 * *(float *)result) + (float)(v3 * *(float *)(result + 16)))
               + (float)(v4 * *(float *)(result + 32)))
       + *(float *)(result + 48);
    v6 = (float)((float)((float)(*a2 * *(float *)(result + 4)) + (float)(v3 * *(float *)(result + 20)))
               + (float)(v4 * *(float *)(result + 36)))
       + *(float *)(result + 52);
    v7 = (float)((float)((float)(*a2 * *(float *)(result + 8)) + (float)(v3 * *(float *)(result + 24)))
               + (float)(v4 * *(float *)(result + 40)))
       + *(float *)(result + 56);
    *a2 = v5;
    v8 = a2[3];
    a2[2] = v7;
    a2[1] = v6;
    v9 = v7;
    v10 = (float)((float)((float)(v8 * *v2) + (float)(a2[4] * v2[4])) + (float)(a2[5] * v2[8])) + v2[12];
    v11 = (float)((float)((float)(v8 * v2[1]) + (float)(a2[4] * v2[5])) + (float)(a2[5] * v2[9])) + v2[13];
    v12 = (float)((float)((float)(v8 * v2[2]) + (float)(a2[4] * v2[6])) + (float)(a2[5] * v2[10])) + v2[14];
    a2[3] = v10;
    v13 = v12;
    a2[5] = v12;
    a2[4] = v11;
    if ( v5 > v10 )
    {
      *a2 = v10;
      a2[3] = v5;
    }
    if ( v6 > v11 )
    {
      a2[1] = v11;
      a2[4] = v6;
    }
    result = v9 > v12;
    if ( v9 > v13 )
    {
      a2[5] = v9;
      a2[2] = v13;
    }
  }
  return result;
}


// ===== 587604 glitch::scene::CTriangleSelector::Setup(glitch::core::aabbox3d<float> const&) =====
int __fastcall glitch::scene::CTriangleSelector::Setup(int result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r4
  const void *v4; // r0
  _BYTE v5[72]; // [sp+4h] [bp-48h] BYREF

  v2 = *(_DWORD *)(result + 8);
  *(_DWORD *)(result + 68) = *a2;
  v3 = result;
  *(_DWORD *)(result + 72) = a2[1];
  *(_DWORD *)(result + 76) = a2[2];
  *(_DWORD *)(result + 80) = a2[3];
  *(_DWORD *)(result + 84) = a2[4];
  *(_DWORD *)(result + 88) = a2[5];
  if ( v2 )
  {
    if ( !*(_BYTE *)(result + 24) )
    {
      v4 = (const void *)(*(int (__fastcall **)(int))(*(_DWORD *)v2 + 56))(v2);
      glitch::core::CMatrix4<float>::CMatrix4(v5, v4);
      glitch::core::CMatrix4<float>::makeInverse((int)v5);
      return glitch::core::CMatrix4<float>::transformBox((int)v5, (float *)(v3 + 68));
    }
  }
  return result;
}


// ===== 587694 glitch::scene::COctTreeTriangleSelector::getTriangles(glitch::core::triangle3d<float> *,int,int &,glitch::core::aabbox3d<float> const&,glitch::core::CMatrix4<float> const*) =====
float __fastcall glitch::scene::COctTreeTriangleSelector::getTriangles(
        glitch::scene::COctTreeTriangleSelector *a1,
        int a2,
        int a3,
        _DWORD *a4,
        _DWORD *a5,
        const void *a6)
{
  float result; // r0
  glitch::scene::COctTreeTriangleSelector::SOctTreeNode *v9; // r1

  *((_DWORD *)a1 + 41) = a3;
  *((_DWORD *)a1 + 42) = 0;
  *((_DWORD *)a1 + 40) = a2;
  glitch::scene::CTriangleSelector::Setup((int)a1, a6);
  result = COERCE_FLOAT(glitch::scene::CTriangleSelector::Setup((int)a1, a5));
  v9 = *((glitch::scene::COctTreeTriangleSelector::SOctTreeNode **)a1 + 43);
  if ( v9 )
    result = glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeBox(a1, v9);
  *a4 = *((_DWORD *)a1 + 42);
  return result;
}


// ===== 5876e4 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::core::triangle3d<float>*,uint,glitch::core::triangle3d<float> const&,std::__false_type const&) =====
int __fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        int *a2,
        unsigned int a3,
        int *a4)
{
  int *v5; // r5
  int *v6; // r6
  int v7; // r1
  int *v8; // r4
  int result; // r0
  int v10; // r2
  int v11; // r0
  int *v12; // r2
  int v13; // r6
  int v14; // r10
  int v15; // r6
  int v16; // r5
  int v17; // r4
  int v18; // lr
  int v19; // r7
  int v20; // r8
  int v21; // r9
  int v22; // r4
  int *v23; // r2
  int v24; // r7
  int *v25; // r7
  int *v26; // r1
  int *i; // r0
  int v28; // r8
  int v29; // r1
  int v30; // r2
  _DWORD v31[9]; // [sp+8h] [bp-28h] BYREF
  _BYTE v32[4]; // [sp+2Ch] [bp-4h] BYREF

  v5 = a2;
  if ( (unsigned int)a4 >= *a1 )
  {
    v6 = (int *)a1[1];
    if ( a4 < v6 )
    {
      v14 = a4[8];
      v15 = *a4;
      v16 = a4[1];
      v17 = a4[2];
      v18 = a4[3];
      v19 = a4[5];
      v20 = a4[6];
      v21 = a4[7];
      v31[4] = a4[4];
      v31[0] = v15;
      v31[1] = v16;
      v31[2] = v17;
      v31[3] = v18;
      v31[5] = v19;
      v31[6] = v20;
      v31[7] = v21;
      v31[8] = v14;
      return ((int (__fastcall *)(_DWORD *, int *, unsigned int, _DWORD *, _BYTE *))std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux)(
               a1,
               a2,
               a3,
               v31,
               v32);
    }
  }
  else
  {
    v6 = (int *)a1[1];
  }
  v7 = 954437177 * (v6 - a2);
  if ( a3 < v7 )
  {
    v22 = 36 * a3;
    v23 = &v6[-9 * a3];
    v24 = 954437177 * (v22 >> 2);
    if ( v24 > 0 )
    {
      v26 = &v6[v22 / 0xFFFFFFFC];
      for ( i = v6; ; i += 9 )
      {
        --v24;
        *i = *v26;
        i[1] = v26[1];
        i[2] = v26[2];
        i[3] = v26[3];
        i[4] = v26[4];
        i[5] = v26[5];
        i[6] = v26[6];
        i[7] = v26[7];
        v28 = v26[8];
        v26 += 9;
        i[8] = v28;
        if ( !v24 )
          break;
      }
      v25 = (int *)a1[1];
    }
    else
    {
      v25 = v6;
    }
    result = v23 - v5;
    a1[1] = &v25[v22 / 4u];
    v29 = 954437177 * result;
    if ( 954437177 * result > 0 )
    {
      do
      {
        --v29;
        *(v6 - 9) = *(v23 - 9);
        *(v6 - 8) = *(v23 - 8);
        *(v6 - 7) = *(v23 - 7);
        *(v6 - 6) = *(v23 - 6);
        *(v6 - 5) = *(v23 - 5);
        *(v6 - 4) = *(v23 - 4);
        *(v6 - 3) = *(v23 - 3);
        *(v6 - 2) = *(v23 - 2);
        result = *(v23 - 1);
        v23 -= 9;
        *(v6 - 1) = result;
        v6 -= 9;
      }
      while ( v29 );
    }
    v30 = 954437177 * (v22 >> 2);
    if ( v30 > 0 )
    {
      do
      {
        --v30;
        *v5 = *a4;
        v5[1] = a4[1];
        v5[2] = a4[2];
        v5[3] = a4[3];
        v5[4] = a4[4];
        v5[5] = a4[5];
        v5[6] = a4[6];
        v5[7] = a4[7];
        v5[8] = a4[8];
        v5 += 9;
      }
      while ( v30 );
    }
  }
  else
  {
    v8 = &v6[9 * (a3 - v7)];
    result = (int)(36 * (a3 - v7)) >> 2;
    v10 = 954437177 * result;
    if ( 954437177 * result > 0 )
    {
      while ( 1 )
      {
        --v10;
        *v6 = *a4;
        v6[1] = a4[1];
        v6[2] = a4[2];
        v6[3] = a4[3];
        v6[4] = a4[4];
        v6[5] = a4[5];
        v6[6] = a4[6];
        v6[7] = a4[7];
        result = a4[8];
        v6[8] = result;
        if ( !v10 )
          break;
        v6 += 9;
      }
    }
    a1[1] = v8;
    if ( v7 <= 0 )
    {
      a1[1] = &v8[9 * v7];
    }
    else
    {
      v11 = v7;
      v12 = v5;
      while ( 1 )
      {
        --v11;
        *v8 = *v12;
        v8[1] = v12[1];
        v8[2] = v12[2];
        v8[3] = v12[3];
        v8[4] = v12[4];
        v8[5] = v12[5];
        v8[6] = v12[6];
        v8[7] = v12[7];
        v13 = v12[8];
        v12 += 9;
        v8[8] = v13;
        if ( !v11 )
          break;
        v8 += 9;
      }
      result = 36;
      a1[1] += 36 * v7;
      do
      {
        --v7;
        *v5 = *a4;
        v5[1] = a4[1];
        v5[2] = a4[2];
        v5[3] = a4[3];
        v5[4] = a4[4];
        v5[5] = a4[5];
        v5[6] = a4[6];
        v5[7] = a4[7];
        v5[8] = a4[8];
        v5 += 9;
      }
      while ( v7 );
    }
  }
  return result;
}


// ===== 587ac4 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::triangle3d<float>*,glitch::core::triangle3d<float> const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  _DWORD *v10; // r0
  _DWORD *v11; // r3
  _DWORD *v12; // r9
  int v13; // r2
  int v14; // r12
  _DWORD *v15; // r3
  int v16; // r1
  _DWORD *v17; // r2
  int v18; // r0
  _DWORD *v19; // r5
  int v20; // r2
  _BYTE *v21; // r0
  int v22; // r3
  int v23; // r12
  int v24; // r2
  _DWORD *v25; // r3
  int v26; // r1

  v9 = 9
     * std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = GlitchAlloc(v9 * 4, 0);
  v11 = (_DWORD *)*a1;
  v12 = v10;
  v13 = ((int)a2 - *a1) >> 2;
  v14 = 954437177 * v13;
  if ( 954437177 * v13 > 0 )
  {
    v16 = 954437177 * v13;
    v17 = v10;
    do
    {
      --v16;
      *v17 = *v11;
      v17[1] = v11[1];
      v17[2] = v11[2];
      v17[3] = v11[3];
      v17[4] = v11[4];
      v17[5] = v11[5];
      v17[6] = v11[6];
      v17[7] = v11[7];
      v18 = v11[8];
      v11 += 9;
      v17[8] = v18;
      v17 += 9;
    }
    while ( v16 );
    v15 = &v12[9 * v14];
  }
  else
  {
    v15 = v10;
  }
  if ( a5 == 1 )
  {
    v19 = v15 + 9;
    *v15 = *a3;
    v15[1] = a3[1];
    v15[2] = a3[2];
    v15[3] = a3[3];
    v15[4] = a3[4];
    v15[5] = a3[5];
    v15[6] = a3[6];
    v15[7] = a3[7];
    v15[8] = a3[8];
    if ( a6 )
    {
LABEL_12:
      v21 = (_BYTE *)a1[1];
      goto LABEL_13;
    }
  }
  else
  {
    v19 = &v15[9 * a5];
    v20 = 954437177 * ((int)(36 * a5) >> 2);
    if ( v20 > 0 )
    {
      while ( 1 )
      {
        --v20;
        *v15 = *a3;
        v15[1] = a3[1];
        v15[2] = a3[2];
        v15[3] = a3[3];
        v15[4] = a3[4];
        v15[5] = a3[5];
        v15[6] = a3[6];
        v15[7] = a3[7];
        v15[8] = a3[8];
        if ( !v20 )
          break;
        v15 += 9;
      }
    }
    if ( a6 )
      goto LABEL_12;
  }
  v21 = (_BYTE *)a1[1];
  v22 = (v21 - (_BYTE *)a2) >> 2;
  v23 = 954437177 * v22;
  if ( 954437177 * v22 > 0 )
  {
    v24 = 954437177 * v22;
    v25 = v19;
    do
    {
      --v24;
      *v25 = *a2;
      v25[1] = a2[1];
      v25[2] = a2[2];
      v25[3] = a2[3];
      v25[4] = a2[4];
      v25[5] = a2[5];
      v25[6] = a2[6];
      v25[7] = a2[7];
      v26 = a2[8];
      a2 += 9;
      v25[8] = v26;
      v25 += 9;
    }
    while ( v24 );
    v19 += 9 * v23;
    goto LABEL_12;
  }
LABEL_13:
  if ( (_BYTE *)*a1 != v21 )
    v21 += -36 * ((954437177 * ((unsigned int)&v21[-*a1 - 36] >> 2)) & 0x3FFFFFFF) - 36;
  GlitchFree(v21);
  a1[1] = v19;
  a1[2] = &v12[v9];
  *a1 = v12;
}


// ===== 587d88 std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::core::triangle3d<float>*,uint,glitch::core::triangle3d<float> const&) =====
void __fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        int *a2,
        unsigned int a3,
        int *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-8h] BYREF

  if ( a3 )
  {
    if ( a3 <= 954437177 * ((a1[2] - a1[1]) >> 2) )
      std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 587dfc std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::core::triangle3d<float> const&) =====
void __fastcall std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        int *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = 954437177 * ((v3 - *(_DWORD *)a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (_DWORD *)a1,
      *(int **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 36 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 587e60 glitch::scene::COctTreeTriangleSelector::constructOctTree(glitch::scene::COctTreeTriangleSelector::SOctTreeNode *) =====
void __fastcall glitch::scene::COctTreeTriangleSelector::constructOctTree(
        glitch::scene::COctTreeTriangleSelector *this,
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode *a2)
{
  float *v3; // r9
  int v4; // r3
  float v5; // r1
  float v6; // r7
  float v7; // r5
  float v8; // r0
  float v9; // r8
  float v10; // r6
  int v11; // r6
  int v12; // r11
  float v13; // r8
  float v14; // r5
  float v15; // r7
  _BOOL4 v16; // r0
  float v17; // r1
  _BOOL4 v18; // r0
  float v19; // r1
  _BOOL4 v20; // r0
  float v21; // r1
  _BOOL4 v22; // r0
  float v23; // r1
  _BOOL4 v24; // r0
  float v25; // r1
  float *v26; // r5
  float v27; // r10
  float v28; // r8
  float v29; // r7
  float v30; // r1
  _BOOL4 v31; // r0
  float v32; // r1
  _BOOL4 v33; // r0
  float v34; // r1
  _BOOL4 v35; // r0
  float v36; // r1
  _BOOL4 v37; // r0
  float v38; // r1
  float v39; // r8
  float v40; // r7
  float v41; // r5
  float v42; // r1
  _BOOL4 v43; // r0
  float v44; // r1
  _BOOL4 v45; // r0
  float v46; // r1
  float v47; // r11
  int *v48; // r3
  float v49; // r6
  float v50; // r5
  float *v51; // r9
  glitch::scene::COctTreeTriangleSelector::SOctTreeNode *v52; // r10
  float v53; // r8
  float v54; // r6
  float v55; // r5
  _DWORD *v56; // r0
  int v57; // r3
  _DWORD *v58; // r2
  unsigned int v59; // r5
  float *v60; // r0
  int v61; // r6
  _DWORD *v62; // r0
  _DWORD *v63; // r1
  _DWORD *v64; // r2
  char *v65; // r1
  _DWORD *v66; // r2
  unsigned int v67; // r1
  _DWORD *v68; // r5
  int v69; // [sp+Ch] [bp-100h]
  float v70; // [sp+Ch] [bp-100h]
  float v71; // [sp+10h] [bp-FCh]
  float v73[2]; // [sp+34h] [bp-D8h] BYREF
  int v74; // [sp+3Ch] [bp-D0h] BYREF
  int v75; // [sp+40h] [bp-CCh] BYREF
  int v76[2]; // [sp+94h] [bp-78h] BYREF
  int v77; // [sp+9Ch] [bp-70h] BYREF
  _DWORD v78[6]; // [sp+A0h] [bp-6Ch] BYREF
  int v79[9]; // [sp+B8h] [bp-54h] BYREF
  float v80; // [sp+DCh] [bp-30h] BYREF
  float v81; // [sp+E0h] [bp-2Ch]
  float v82; // [sp+E4h] [bp-28h]
  float v83; // [sp+E8h] [bp-24h]
  float v84; // [sp+ECh] [bp-20h]
  float v85; // [sp+F0h] [bp-1Ch]
  void *p; // [sp+F4h] [bp-18h] BYREF
  char *v87; // [sp+F8h] [bp-14h]
  char *v88; // [sp+FCh] [bp-10h]
  _BYTE v89[4]; // [sp+100h] [bp-Ch] BYREF
  _BYTE v90[8]; // [sp+104h] [bp-8h] BYREF

  ++*((_DWORD *)this + 44);
  v3 = *(float **)a2;
  v4 = *((_DWORD *)a2 + 1);
  v5 = **(float **)a2;
  *((float *)a2 + 14) = v5;
  v6 = v3[1];
  *((float *)a2 + 15) = v6;
  v7 = v3[2];
  *((float *)a2 + 16) = v7;
  v8 = *v3;
  *((float *)a2 + 11) = *v3;
  v9 = v3[1];
  *((float *)a2 + 12) = v9;
  v10 = v3[2];
  v69 = 954437177 * ((v4 - (int)v3) >> 2);
  *((float *)a2 + 13) = v10;
  if ( v69 )
  {
    v11 = 0;
    v12 = 0;
    while ( 1 )
    {
      v13 = v3[v11];
      v14 = v3[v11 + 2];
      v15 = v3[v11 + 1];
      v16 = v13 > v5;
      v17 = *((float *)a2 + 15);
      if ( v16 )
        *((float *)a2 + 14) = v13;
      v18 = v15 > v17;
      v19 = *((float *)a2 + 16);
      if ( v18 )
        *((float *)a2 + 15) = v15;
      v20 = v14 > v19;
      v21 = *((float *)a2 + 11);
      if ( v20 )
        *((float *)a2 + 16) = v14;
      v22 = v13 < v21;
      v23 = *((float *)a2 + 12);
      if ( v22 )
        *((float *)a2 + 11) = v13;
      v24 = v15 < v23;
      v25 = *((float *)a2 + 13);
      if ( v24 )
        *((float *)a2 + 12) = v15;
      if ( v14 < v25 )
        *((float *)a2 + 13) = v14;
      v26 = &v3[v11];
      v27 = v3[v11 + 3];
      v28 = v3[v11 + 4];
      v29 = v3[v11 + 5];
      v30 = *((float *)a2 + 15);
      if ( v27 > *((float *)a2 + 14) )
        *((float *)a2 + 14) = v27;
      v31 = v28 > v30;
      v32 = *((float *)a2 + 16);
      if ( v31 )
        *((float *)a2 + 15) = v28;
      v33 = v29 > v32;
      v34 = *((float *)a2 + 11);
      if ( v33 )
        *((float *)a2 + 16) = v29;
      v35 = v27 < v34;
      v36 = *((float *)a2 + 12);
      if ( v35 )
        *((float *)a2 + 11) = v27;
      v37 = v28 < v36;
      v38 = *((float *)a2 + 13);
      if ( v37 )
        *((float *)a2 + 12) = v28;
      if ( v29 < v38 )
        *((float *)a2 + 13) = v29;
      v39 = v26[6];
      v40 = v26[8];
      v41 = v26[7];
      if ( v39 > *((float *)a2 + 14) )
        *((float *)a2 + 14) = v39;
      v42 = *((float *)a2 + 16);
      if ( v41 > *((float *)a2 + 15) )
        *((float *)a2 + 15) = v41;
      v43 = v40 > v42;
      v44 = *((float *)a2 + 11);
      if ( v43 )
        *((float *)a2 + 16) = v40;
      v45 = v39 < v44;
      v46 = *((float *)a2 + 12);
      if ( v45 )
        *((float *)a2 + 11) = v39;
      if ( v41 < v46 )
        *((float *)a2 + 12) = v41;
      if ( v40 < *((float *)a2 + 13) )
        *((float *)a2 + 13) = v40;
      ++v12;
      v11 += 9;
      if ( v12 == v69 )
        break;
      v5 = *((float *)a2 + 14);
    }
    v8 = *((float *)a2 + 11);
    v5 = *((float *)a2 + 14);
    v9 = *((float *)a2 + 12);
    v6 = *((float *)a2 + 15);
    v10 = *((float *)a2 + 13);
    v7 = *((float *)a2 + 16);
  }
  v47 = (float)(v8 + v5) * 0.5;
  v70 = (float)(v9 + v6) * 0.5;
  v71 = (float)(v10 + v7) * 0.5;
  v48 = &v75;
  do
  {
    *(v48 - 3) = 0;
    *(v48 - 2) = 0;
    *(v48 - 1) = 0;
    v48 += 3;
  }
  while ( v48 != v78 );
  glitch::core::aabbox3d<float>::getEdges((float *)a2 + 11, v73);
  v49 = *((float *)a2 + 11);
  v50 = *((float *)a2 + 14);
  v88 = nullptr;
  p = nullptr;
  v87 = nullptr;
  if ( (v50 > (float)(v49 + 0.000001)
     || v50 < (float)(v49 - 0.000001)
     || *((float *)a2 + 15) > (float)(*((float *)a2 + 12) + 0.000001)
     || *((float *)a2 + 15) < (float)(*((float *)a2 + 12) - 0.000001)
     || *((float *)a2 + 16) > (float)(*((float *)a2 + 13) + 0.000001)
     || *((float *)a2 + 16) < (float)(*((float *)a2 + 13) - 0.000001))
    && *((_DWORD *)this + 45) < 954437177 * ((*((_DWORD *)a2 + 1) - *(_DWORD *)a2) >> 2) )
  {
    v51 = (float *)&v74;
    v52 = a2;
    do
    {
      v83 = v47;
      v84 = v70;
      v85 = v71;
      v81 = v70;
      v82 = v71;
      v80 = v47;
      v53 = *(v51 - 2);
      v54 = *(v51 - 1);
      v55 = *v51;
      if ( v47 < v53 )
        v83 = *(v51 - 2);
      if ( v70 < v54 )
        v84 = v54;
      if ( v55 > v85 )
        v85 = v55;
      if ( v53 < v80 )
        v80 = v53;
      if ( v54 < v81 )
        v81 = v54;
      if ( v55 < v82 )
        v82 = v55;
      v56 = operator new(0x44u, 0);
      v57 = 0;
      *v56 = 0;
      v56[1] = 0;
      v56[2] = 0;
      v56[14] = 1065353216;
      v56[15] = 1065353216;
      v56[16] = 1065353216;
      v56[11] = -1082130432;
      v56[12] = -1082130432;
      v56[13] = -1082130432;
      v58 = v56;
      v59 = 0;
      do
      {
        ++v57;
        v58[3] = 0;
        ++v58;
      }
      while ( v57 != 8 );
      *((_DWORD *)v52 + 3) = v56;
      v60 = *(float **)a2;
      if ( *((_DWORD *)a2 + 1) - *(_DWORD *)a2 > 35 )
      {
        v61 = 0;
        do
        {
          if ( glitch::core::triangle3d<float>::isTotalInsideBox(&v60[v59 / 4], &v80) )
          {
            v62 = *((_DWORD **)v52 + 3);
            v63 = (_DWORD *)v62[1];
            v64 = (_DWORD *)(*(_DWORD *)a2 + v59);
            if ( v63 == (_DWORD *)v62[2] )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                v62,
                v63,
                v64,
                (int)v90,
                1u,
                1);
            }
            else
            {
              *v63 = *(_DWORD *)(*(_DWORD *)a2 + v59);
              v63[1] = v64[1];
              v63[2] = v64[2];
              v63[3] = v64[3];
              v63[4] = v64[4];
              v63[5] = v64[5];
              v63[6] = v64[6];
              v63[7] = v64[7];
              v63[8] = v64[8];
              v62[1] += 36;
            }
          }
          else
          {
            v65 = v87;
            v66 = (_DWORD *)(*(_DWORD *)a2 + v59);
            if ( v87 == v88 )
            {
              std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
                &p,
                v87,
                v66,
                (int)v89,
                1u,
                1);
            }
            else
            {
              *(_DWORD *)v87 = *(_DWORD *)(*(_DWORD *)a2 + v59);
              *((_DWORD *)v65 + 1) = v66[1];
              *((_DWORD *)v65 + 2) = v66[2];
              *((_DWORD *)v65 + 3) = v66[3];
              *((_DWORD *)v65 + 4) = v66[4];
              *((_DWORD *)v65 + 5) = v66[5];
              *((_DWORD *)v65 + 6) = v66[6];
              *((_DWORD *)v65 + 7) = v66[7];
              *((_DWORD *)v65 + 8) = v66[8];
              v87 += 36;
            }
          }
          v60 = *(float **)a2;
          ++v61;
          v59 += 36;
        }
        while ( v61 < 954437177 * ((*((_DWORD *)a2 + 1) - *(_DWORD *)a2) >> 2) );
      }
      if ( 954437177 * ((v87 - (_BYTE *)p) >> 2) )
      {
        memcpy(v60, p, 4 * ((v87 - (_BYTE *)p) >> 2));
        v67 = 954437177 * ((v87 - (_BYTE *)p) >> 2);
      }
      else
      {
        v67 = 0;
      }
      memset(v79, 0, sizeof(v79));
      std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        (int)a2,
        v67,
        v79);
      v76[0] = 0;
      v76[1] = 0;
      v77 = 0;
      memset(v78, 0, sizeof(v78));
      std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        (int)&p,
        0,
        v76);
      v68 = *((_DWORD **)v52 + 3);
      if ( *v68 == v68[1] )
      {
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode(*((void ***)v52 + 3));
        LC_API_FREE_0(v68);
        *((_DWORD *)v52 + 3) = 0;
      }
      else
      {
        glitch::scene::COctTreeTriangleSelector::constructOctTree(
          this,
          *((glitch::scene::COctTreeTriangleSelector::SOctTreeNode **)v52 + 3));
      }
      v51 += 3;
      v52 = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)((char *)v52 + 4);
    }
    while ( v51 != (float *)&v77 );
    if ( p )
      GlitchFree(p);
  }
}


// ===== 588654 glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(glitch::scene::IMesh const*,glitch::scene::ISceneNode const*,int,bool) =====
glitch::scene::COctTreeTriangleSelector *__fastcall glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode **this,
        const glitch::scene::IMesh *a2,
        const glitch::scene::ISceneNode *a3,
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode *a4,
        bool a5)
{
  glitch::os::Timer *v7; // r0
  int v8; // r1
  int v9; // r2
  int RealTime; // r7
  _DWORD *v11; // r0
  int v12; // r3
  _DWORD *v13; // r2
  glitch::os::Timer *v14; // r0
  int v15; // r0
  glitch::IReferenceCounted *v17; // [sp+8h] [bp-108h] BYREF
  char s[256]; // [sp+Ch] [bp-104h] BYREF

  v17 = a2;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  glitch::scene::CTriangleSelector::CTriangleSelector(this, &v17, a3, a5);
  v7 = v17;
  if ( v17 )
    v7 = (glitch::os::Timer *)glitch::IReferenceCounted::drop(v17);
  v8 = (int)*(this + 3);
  v9 = (int)*(this + 4);
  *this = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)off_976278;
  *(this + 45) = a4;
  *(this + 43) = nullptr;
  *(this + 44) = nullptr;
  if ( v8 != v9 )
  {
    RealTime = glitch::os::Timer::getRealTime(v7);
    v11 = operator new(0x44u, 0);
    v11[13] = -1082130432;
    v11[16] = 1065353216;
    v11[11] = -1082130432;
    v11[12] = -1082130432;
    v11[14] = 1065353216;
    v11[15] = 1065353216;
    v12 = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    v13 = v11;
    do
    {
      ++v12;
      v13[3] = 0;
      ++v13;
    }
    while ( v12 != 8 );
    *(this + 43) = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)v11;
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
      v11,
      this + 3);
    glitch::scene::COctTreeTriangleSelector::constructOctTree(
      (glitch::scene::COctTreeTriangleSelector *)this,
      *(this + 43));
    v15 = glitch::os::Timer::getRealTime(v14);
    sprintf(
      s,
      "Needed %ums to create OctTreeTriangleSelector.(%d nodes, %u polys)",
      v15 - RealTime,
      *(this + 44),
      954437177 * ((*(this + 4) - *(this + 3)) >> 2));
    glitch::os::Printer::log(s, 1);
  }
  return (glitch::scene::COctTreeTriangleSelector *)this;
}


// ===== 5887ec glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(glitch::scene::IMesh const*,glitch::scene::ISceneNode const*,int,bool) =====
glitch::scene::COctTreeTriangleSelector *__fastcall glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode **this,
        const glitch::scene::IMesh *a2,
        const glitch::scene::ISceneNode *a3,
        glitch::scene::COctTreeTriangleSelector::SOctTreeNode *a4,
        bool a5)
{
  glitch::os::Timer *v7; // r0
  int v8; // r1
  int v9; // r2
  int RealTime; // r7
  _DWORD *v11; // r0
  int v12; // r3
  _DWORD *v13; // r2
  glitch::os::Timer *v14; // r0
  int v15; // r0
  glitch::IReferenceCounted *v17; // [sp+8h] [bp-108h] BYREF
  char s[256]; // [sp+Ch] [bp-104h] BYREF

  v17 = a2;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  glitch::scene::CTriangleSelector::CTriangleSelector(this, &v17, a3, a5);
  v7 = v17;
  if ( v17 )
    v7 = (glitch::os::Timer *)glitch::IReferenceCounted::drop(v17);
  v8 = (int)*(this + 3);
  v9 = (int)*(this + 4);
  *this = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)off_976278;
  *(this + 45) = a4;
  *(this + 43) = nullptr;
  *(this + 44) = nullptr;
  if ( v8 != v9 )
  {
    RealTime = glitch::os::Timer::getRealTime(v7);
    v11 = operator new(0x44u, 0);
    v11[13] = -1082130432;
    v11[16] = 1065353216;
    v11[11] = -1082130432;
    v11[12] = -1082130432;
    v11[14] = 1065353216;
    v11[15] = 1065353216;
    v12 = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    v13 = v11;
    do
    {
      ++v12;
      v13[3] = 0;
      ++v13;
    }
    while ( v12 != 8 );
    *(this + 43) = (glitch::scene::COctTreeTriangleSelector::SOctTreeNode *)v11;
    std::vector<glitch::core::triangle3d<float>,glitch::core::SAllocator<glitch::core::triangle3d<float>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
      v11,
      this + 3);
    glitch::scene::COctTreeTriangleSelector::constructOctTree(
      (glitch::scene::COctTreeTriangleSelector *)this,
      *(this + 43));
    v15 = glitch::os::Timer::getRealTime(v14);
    sprintf(
      s,
      "Needed %ums to create OctTreeTriangleSelector.(%d nodes, %u polys)",
      v15 - RealTime,
      *(this + 44),
      954437177 * ((*(this + 4) - *(this + 3)) >> 2));
    glitch::os::Printer::log(s, 1);
  }
  return (glitch::scene::COctTreeTriangleSelector *)this;
}


// ===== 588984 glitch::scene::CTriangleSelector::Setup(glitch::core::line3d<float> const&) =====
bool __fastcall glitch::scene::CTriangleSelector::Setup(int a1, float *a2)
{
  float v2; // r10
  int v3; // r3
  float v4; // r7
  float v6; // r5
  float v7; // r8
  float v8; // r6
  float v9; // r9
  float v10; // r1
  float v11; // r6
  float v12; // r5
  float *v13; // r0
  float v14; // r3
  float v15; // r7
  int v16; // r2
  float v17; // r8
  int v18; // r1
  float v19; // r6
  float v20; // r5
  float v21; // r1
  _BOOL4 v22; // r0
  float v23; // r1
  _BOOL4 v24; // r0
  float v25; // r1
  _BOOL4 result; // r0
  const void *v27; // r0
  float v28; // r8
  float v29; // r6
  float v30; // r5
  float v31; // r0
  float v32; // r11
  float v33; // r9
  float v34; // r0
  float v35; // [sp+0h] [bp-54h] BYREF
  float v36; // [sp+4h] [bp-50h]
  float v37; // [sp+8h] [bp-4Ch]
  float v38; // [sp+10h] [bp-44h]
  float v39; // [sp+14h] [bp-40h]
  float v40; // [sp+18h] [bp-3Ch]
  float v41; // [sp+20h] [bp-34h]
  float v42; // [sp+24h] [bp-30h]
  float v43; // [sp+28h] [bp-2Ch]
  float v44; // [sp+30h] [bp-24h]
  float v45; // [sp+34h] [bp-20h]
  float v46; // [sp+38h] [bp-1Ch]
  float v47[4]; // [sp+44h] [bp-10h] BYREF

  v2 = *a2;
  v3 = *(_DWORD *)(a1 + 8);
  *(float *)(a1 + 28) = *a2;
  v4 = a2[1];
  *(float *)(a1 + 32) = v4;
  v6 = a2[2];
  *(float *)(a1 + 36) = v6;
  v7 = a2[3];
  *(float *)(a1 + 40) = v7;
  v8 = a2[4];
  *(float *)(a1 + 44) = v8;
  v9 = a2[5];
  *(float *)(a1 + 48) = v9;
  if ( v3 && !*(_BYTE *)(a1 + 24) )
  {
    v27 = (const void *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 56))(v3);
    glitch::core::CMatrix4<float>::CMatrix4(&v35, v27);
    glitch::core::CMatrix4<float>::makeInverse((int)&v35);
    v28 = *(float *)(a1 + 28);
    v29 = *(float *)(a1 + 32);
    v30 = *(float *)(a1 + 36);
    v2 = (float)((float)((float)(v28 * v35) + (float)(v29 * v38)) + (float)(v30 * v41)) + v44;
    v4 = (float)((float)((float)(v28 * v36) + (float)(v29 * v39)) + (float)(v30 * v42)) + v45;
    v31 = (float)((float)((float)(v28 * v37) + (float)(v29 * v40)) + (float)(v30 * v43)) + v46;
    *(float *)(a1 + 28) = v2;
    v32 = *(float *)(a1 + 40);
    *(float *)(a1 + 36) = v31;
    *(float *)(a1 + 32) = v4;
    v6 = v31;
    v33 = *(float *)(a1 + 44);
    v7 = (float)((float)((float)(v32 * v35) + (float)(v33 * v38)) + (float)(*(float *)(a1 + 48) * v41)) + v44;
    v8 = (float)((float)((float)(v32 * v36) + (float)(v33 * v39)) + (float)(*(float *)(a1 + 48) * v42)) + v45;
    v34 = (float)((float)((float)(v32 * v37) + (float)(v33 * v40)) + (float)(*(float *)(a1 + 48) * v43)) + v46;
    *(float *)(a1 + 40) = v7;
    v9 = v34;
    *(float *)(a1 + 44) = v8;
    *(float *)(a1 + 48) = v34;
  }
  v10 = *(float *)(a1 + 32);
  *(float *)(a1 + 52) = (float)((float)((float)(v2 - v7) * (float)(v2 - v7))
                              + (float)((float)(v4 - v8) * (float)(v4 - v8)))
                      + (float)((float)(v6 - v9) * (float)(v6 - v9));
  v11 = *(float *)(a1 + 44) - v10;
  v12 = *(float *)(a1 + 48) - *(float *)(a1 + 36);
  v47[0] = *(float *)(a1 + 40) - *(float *)(a1 + 28);
  v47[1] = v11;
  v47[2] = v12;
  v13 = glitch::core::vector3d<float>::normalize(v47);
  v14 = *(float *)(a1 + 28);
  v15 = *(float *)(a1 + 40);
  *(float *)(a1 + 56) = *v13;
  v16 = *(_DWORD *)(a1 + 36);
  v17 = *(float *)(a1 + 32);
  *(float *)(a1 + 60) = v13[1];
  v18 = *((_DWORD *)v13 + 2);
  *(_DWORD *)(a1 + 76) = v16;
  *(float *)(a1 + 80) = v14;
  *(_DWORD *)(a1 + 88) = v16;
  *(float *)(a1 + 68) = v14;
  *(_DWORD *)(a1 + 64) = v18;
  *(float *)(a1 + 84) = v17;
  *(float *)(a1 + 72) = v17;
  v19 = *(float *)(a1 + 44);
  if ( v14 < v15 )
    *(float *)(a1 + 80) = v15;
  v20 = *(float *)(a1 + 48);
  v21 = *(float *)(a1 + 88);
  if ( v17 < v19 )
    *(float *)(a1 + 84) = v19;
  v22 = v20 > v21;
  v23 = *(float *)(a1 + 68);
  if ( v22 )
    *(float *)(a1 + 88) = v20;
  v24 = v15 < v23;
  v25 = *(float *)(a1 + 72);
  if ( v24 )
    *(float *)(a1 + 68) = v15;
  if ( v19 < v25 )
    *(float *)(a1 + 72) = v19;
  result = v20 < *(float *)(a1 + 76);
  if ( v20 < *(float *)(a1 + 76) )
    *(float *)(a1 + 76) = v20;
  return result;
}


// ===== 588d8c glitch::scene::COctTreeTriangleSelector::getTriangles(glitch::core::triangle3d<float> *,int,int &,glitch::core::line3d<float> const&,glitch::core::CMatrix4<float> const*) =====
glitch::scene::COctTreeTriangleSelector *__fastcall glitch::scene::COctTreeTriangleSelector::getTriangles(
        glitch::scene::COctTreeTriangleSelector *a1,
        int a2,
        int a3,
        _DWORD *a4,
        float *a5,
        const void *a6)
{
  glitch::scene::COctTreeTriangleSelector *result; // r0
  glitch::scene::COctTreeTriangleSelector::SOctTreeNode *v9; // r1

  *((_DWORD *)a1 + 41) = a3;
  *((_DWORD *)a1 + 42) = 0;
  *((_DWORD *)a1 + 40) = a2;
  glitch::scene::CTriangleSelector::Setup((int)a1, a6);
  result = (glitch::scene::COctTreeTriangleSelector *)glitch::scene::CTriangleSelector::Setup((int)a1, a5);
  v9 = *((glitch::scene::COctTreeTriangleSelector::SOctTreeNode **)a1 + 43);
  if ( v9 )
    result = glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeLine(a1, v9);
  *a4 = *((_DWORD *)a1 + 42);
  return result;
}


// ===== 588ddc glitch::video::detail::renderpass::SRenderState::SRenderState(void) =====
int __fastcall glitch::video::detail::renderpass::SRenderState::SRenderState(int this)
{
  *(_DWORD *)this = 419364865;
  *(_BYTE *)(this + 11) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 28) = 1065353216;
  *(_DWORD *)(this + 4) = 1572871;
  *(_BYTE *)(this + 8) = 0;
  *(_BYTE *)(this + 9) = 0;
  *(_BYTE *)(this + 10) = 0;
  *(_DWORD *)(this + 12) = 1065353216;
  *(_DWORD *)(this + 16) = 1065353216;
  *(_DWORD *)(this + 24) = 1065353216;
  return this;
}


// ===== 588e30 glitch::scene::ISceneNode::setSceneManager(glitch::scene::CSceneManager *) =====
int __fastcall glitch::scene::ISceneNode::setSceneManager(_DWORD *a1, glitch::scene::CSceneManager *a2)
{
  _DWORD *i; // r4
  _DWORD *v5; // r5
  glitch::scene::ISceneNode *v6; // r0

  a1[68] = a2;
  v5 = a1 + 61;
  for ( i = (_DWORD *)a1[61]; v5 != i; i = (_DWORD *)*i )
  {
    if ( i )
      v6 = (glitch::scene::ISceneNode *)(i - 1);
    else
      v6 = nullptr;
    glitch::scene::ISceneNode::setSceneManager(v6, a2);
  }
  return (*(int (__fastcall **)(_DWORD *))(*a1 + 240))(a1);
}


// ===== 588e80 glitch::scene::CBatchMesh::SSegment::setSourceBuffer(glitch::scene::CMeshBuffer const*,glitch::core::aabbox3d<float> const*) =====
int __fastcall glitch::scene::CBatchMesh::SSegment::setSourceBuffer(int result, int a2, int *a3)
{
  int *v3; // r4
  int *v4; // r12
  int *v5; // r3
  int *v6; // r12
  int *v7; // r2
  int *v8; // r3

  if ( a2 )
  {
    v3 = *(int **)(result + 12);
    if ( a3 != v3 )
    {
      if ( *(_BYTE *)(result + 33) )
      {
        v4 = (int *)glitch::memory::Aabbox3dfPool;
        if ( glitch::memory::Aabbox3dfPool && (unsigned int)v3 >= glitch::memory::Aabbox3dfPool )
        {
          do
          {
            v5 = v4;
            v4 = (int *)*v4;
          }
          while ( v4 && v3 >= v4 );
        }
        else
        {
          v5 = &glitch::memory::Aabbox3dfPool;
        }
        *v3 = (int)v4;
        *v5 = (int)v3;
        *(_BYTE *)(result + 33) = 0;
      }
      *(_DWORD *)(result + 12) = a3;
    }
  }
  else
  {
    v6 = *(int **)(result + 12);
    if ( v6 )
    {
      if ( *(_BYTE *)(result + 33) )
      {
        v7 = (int *)glitch::memory::Aabbox3dfPool;
        if ( glitch::memory::Aabbox3dfPool && (unsigned int)v6 >= glitch::memory::Aabbox3dfPool )
        {
          do
          {
            v8 = v7;
            v7 = (int *)*v7;
          }
          while ( v7 && v6 >= v7 );
        }
        else
        {
          v8 = &glitch::memory::Aabbox3dfPool;
        }
        *v6 = (int)v7;
        *v8 = (int)v6;
        *(_BYTE *)(result + 33) = 0;
      }
      *(_DWORD *)(result + 12) = 0;
    }
  }
  *(_DWORD *)(result + 8) = a2;
  return result;
}


// ===== 588f80 glitch::scene::IEndOfBatchCallback::~IEndOfBatchCallback() =====
void __fastcall glitch::scene::IEndOfBatchCallback::~IEndOfBatchCallback(glitch::scene::IEndOfBatchCallback *this)
{
  ;
}


// ===== 588f84 glitch::scene::CSceneManagerRootNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneManagerRootNode::serializeAttributes(int a1)
{
  return (***(int (__fastcall ****)(_DWORD))(a1 + 272))(*(_DWORD *)(a1 + 272));
}


// ===== 588fa0 `virtual thunk to'glitch::scene::CSceneManagerRootNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CSceneManagerRootNode::serializeAttributes(_DWORD *a1)
{
  return glitch::scene::CSceneManagerRootNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16));
}


// ===== 588fb0 glitch::scene::CSceneManagerRootNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneManagerRootNode::deserializeAttributes(int a1)
{
  return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 272) + 4))(*(_DWORD *)(a1 + 272));
}


// ===== 588fcc `virtual thunk to'glitch::scene::CSceneManagerRootNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CSceneManagerRootNode::deserializeAttributes(_DWORD *a1)
{
  return glitch::scene::CSceneManagerRootNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20));
}


// ===== 588fdc glitch::scene::CSceneManagerRootNode::getType(void) =====
int __fastcall glitch::scene::CSceneManagerRootNode::getType(glitch::scene::CSceneManagerRootNode *this)
{
  return 1919380851;
}


// ===== 588fe8 glitch::scene::CSceneManager::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CSceneManager::serializeAttributes(int a1, int a2)
{
  void (__fastcall *v4)(int, const char *, int, _DWORD); // r6
  int v5; // r0
  void (__fastcall *v6)(int, const char *, int, _DWORD); // r6
  int v7; // r0

  v4 = *(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 124);
  v5 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4) + 36))(*(_DWORD *)(a1 + 4));
  v4(a2, "Name", v5, 0);
  v6 = *(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 76);
  v7 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4) + 76))(*(_DWORD *)(a1 + 4));
  v6(a2, "Id", v7, 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 304))(
           a2,
           "AmbientLight",
           *(_DWORD *)(a1 + 260),
           *(_DWORD *)(a1 + 264),
           *(_DWORD *)(a1 + 268),
           *(_DWORD *)(a1 + 272),
           0);
}


// ===== 5890a8 glitch::scene::CSceneManager::notifyVisibilityChanged(void) =====
int __fastcall glitch::scene::CSceneManager::notifyVisibilityChanged(int this)
{
  *(_BYTE *)(this + 649) = 1;
  return this;
}


// ===== 5890b4 glitch::scene::CSceneManager::notifyHierarchyChanged(void) =====
int __fastcall glitch::scene::CSceneManager::notifyHierarchyChanged(int this)
{
  *(_BYTE *)(this + 648) = 1;
  return glitch::scene::CSceneManager::notifyVisibilityChanged(this);
}


// ===== 5890c0 glitch::scene::CSceneManager::setActiveCamera(glitch::scene::ICameraSceneNode *) =====
int __fastcall glitch::scene::CSceneManager::setActiveCamera(int this, glitch::scene::ICameraSceneNode *a2)
{
  glitch::scene::ICameraSceneNode *v2; // r3
  int v3; // r4

  v2 = *(glitch::scene::ICameraSceneNode **)(this + 228);
  v3 = this;
  if ( v2 != a2 )
  {
    if ( a2 )
    {
      ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
      v2 = *(glitch::scene::ICameraSceneNode **)(this + 228);
    }
    if ( v2 )
      glitch::IReferenceCounted::drop((glitch::scene::ICameraSceneNode *)((char *)v2 + *(_DWORD *)(*(_DWORD *)v2 - 12)));
    *(_DWORD *)(v3 + 228) = a2;
    return glitch::scene::CSceneManager::notifyVisibilityChanged(v3);
  }
  return this;
}


// ===== 589128 glitch::scene::CSceneManager::registerSceneNodes(std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall glitch::scene::CSceneManager::registerSceneNodes(int result, int **a2)
{
  int *v2; // r4
  int i; // r5
  int v5; // t1

  v2 = *a2;
  for ( i = result; v2 != a2[1]; result = (*(int (__fastcall **)(int, int))(*(_DWORD *)i + 40))(i, v5) )
    v5 = *v2++;
  return result;
}


// ===== 589168 glitch::scene::CSceneManager::registerSceneNodesCompile(std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall glitch::scene::CSceneManager::registerSceneNodesCompile(int result, int **a2)
{
  int *v2; // r4
  int i; // r5
  int v5; // t1

  v2 = *a2;
  for ( i = result; v2 != a2[1]; result = (*(int (__fastcall **)(int, int))(*(_DWORD *)i + 48))(i, v5) )
    v5 = *v2++;
  return result;
}


// ===== 5891a8 glitch::scene::SDefaultSegmentCompileCallback::~SDefaultSegmentCompileCallback() =====
void __fastcall glitch::scene::SDefaultSegmentCompileCallback::~SDefaultSegmentCompileCallback(
        glitch::scene::SDefaultSegmentCompileCallback *this)
{
  ;
}


// ===== 5891ac glitch::scene::CSceneManager::setShadowColor(glitch::video::SColor) =====
_DWORD *__fastcall glitch::scene::CSceneManager::setShadowColor(_DWORD *result, int a2)
{
  result[64] = a2;
  result[61] = a2;
  result[62] = a2;
  result[63] = a2;
  return result;
}


// ===== 589208 glitch::scene::CSceneManager::getSceneNodeFromId(int,glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CSceneManager::getSceneNodeFromId(
        glitch::scene::CSceneManager *this,
        int a2,
        glitch::scene::ISceneNode *a3)
{
  glitch::scene::ISceneNode *v3; // r7
  int result; // r0
  _DWORD *v7; // r4
  _DWORD *v8; // r7
  _DWORD *v9; // t1
  _DWORD *v10; // r2

  v3 = a3;
  if ( !a3 )
    v3 = *((glitch::scene::ISceneNode **)this + 1);
  if ( (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v3 + 76))(v3) == a2 )
    return (int)v3;
  v9 = *((_DWORD **)v3 + 61);
  v8 = (_DWORD *)((char *)v3 + 244);
  v7 = v9;
  if ( v9 == v8 )
    return 0;
  while ( 1 )
  {
    v10 = v7 - 1;
    if ( !v7 )
      v10 = nullptr;
    result = (*(int (__fastcall **)(glitch::scene::CSceneManager *, int, _DWORD *))(*(_DWORD *)this + 16))(
               this,
               a2,
               v10);
    if ( result )
      break;
    v7 = (_DWORD *)*v7;
    if ( v8 == v7 )
      return 0;
  }
  return result;
}


// ===== 589298 glitch::scene::CSceneManager::getSceneNodeFromType(glitch::scene::E_SCENE_NODE_TYPE,glitch::scene::ISceneNode *) =====
_DWORD *__fastcall glitch::scene::CSceneManager::getSceneNodeFromType(_DWORD *a1, int a2, _DWORD *a3)
{
  _DWORD *v3; // r7
  _DWORD *v6; // r4
  _DWORD *v7; // r7
  _DWORD *v8; // t1
  _DWORD *v10; // r2
  int v11; // r0

  v3 = a3;
  if ( !a3 )
    v3 = (_DWORD *)a1[1];
  if ( (*(int (__fastcall **)(_DWORD *))(*v3 + 188))(v3) != a2 && a2 != 1601793633 )
  {
    v8 = (_DWORD *)v3[61];
    v7 = v3 + 61;
    v6 = v8;
    if ( v8 == v7 )
    {
      return nullptr;
    }
    else
    {
      while ( 1 )
      {
        v10 = v6 - 1;
        if ( !v6 )
          v10 = nullptr;
        v11 = (*(int (__fastcall **)(_DWORD *, int, _DWORD *))(*a1 + 28))(a1, a2, v10);
        if ( v11 )
          break;
        v6 = (_DWORD *)*v6;
        if ( v7 == v6 )
          return nullptr;
      }
      return (_DWORD *)v11;
    }
  }
  return v3;
}


// ===== 589328 glitch::scene::CSceneManager::postEventFromUser(glitch::SEvent const&) =====
int __fastcall glitch::scene::CSceneManager::postEventFromUser(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 228);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 256))(*(_DWORD *)(a1 + 228));
  else
    return 0;
}


// ===== 589354 glitch::scene::CSceneManager::setSceneNodeRenderPass(glitch::scene::E_SCENE_NODE_RENDER_PASS) =====
int __fastcall glitch::scene::CSceneManager::setSceneNodeRenderPass(int a1, int a2)
{
  int result; // r0

  result = *(_DWORD *)(a1 + 372);
  *(_DWORD *)(a1 + 372) = a2;
  return result;
}


// ===== 589364 glitch::scene::CSceneManager::saveScene(char const*,glitch::scene::ISceneUserDataSerializer *) =====
int __fastcall glitch::scene::CSceneManager::saveScene(_DWORD **a1, int a2, int a3)
{
  glitch::IReferenceCounted *v5; // r5
  int v6; // r4

  v5 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD *, int, _DWORD))(*a1[8] + 20))(a1[8], a2, 0);
  if ( !v5 )
    return 0;
  v6 = ((int (__fastcall *)(_DWORD **, glitch::IReferenceCounted *, int))(*a1)[30])(a1, v5, a3);
  glitch::IReferenceCounted::drop(v5);
  return v6;
}


// ===== 5893c0 glitch::scene::CSceneManager::getSceneNodeTypeName(glitch::scene::E_SCENE_NODE_TYPE) =====
int __fastcall glitch::scene::CSceneManager::getSceneNodeTypeName(int a1, int a2)
{
  int v2; // r3
  int v5; // r4
  int result; // r0
  int v7; // r5
  bool v8; // zf

  v2 = *(_DWORD *)(a1 + 204);
  v5 = ((*(_DWORD *)(a1 + 208) - v2) >> 2) - 1;
  result = v5 >= 0;
  if ( v5 >= 0 )
  {
    v7 = 4 * v5;
    while ( 1 )
    {
      --v5;
      result = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v2 + v7) + 32))(*(_DWORD *)(v2 + v7), a2);
      v8 = v5 == 0;
      if ( v5 >= 0 )
        v8 = result == 0;
      v7 -= 4;
      if ( !v8 )
        break;
      v2 = *(_DWORD *)(a1 + 204);
    }
  }
  return result;
}


// ===== 58942c glitch::scene::CSceneManager::addSceneNode(char const*,glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CSceneManager::addSceneNode(
        glitch::scene::CSceneManager *this,
        const char *a2,
        glitch::scene::ISceneNode *a3)
{
  int v3; // r3
  glitch::scene::ISceneNode *v4; // r7
  int v5; // r4
  int result; // r0
  int v9; // r5
  bool v10; // zf

  v3 = *((_DWORD *)this + 51);
  v4 = a3;
  if ( !a3 )
    v4 = *((glitch::scene::ISceneNode **)this + 1);
  v5 = ((*((_DWORD *)this + 52) - v3) >> 2) - 1;
  result = v5 >= 0;
  if ( v5 >= 0 )
  {
    v9 = 4 * v5;
    while ( 1 )
    {
      result = (*(int (__fastcall **)(_DWORD, const char *, glitch::scene::ISceneNode *))(**(_DWORD **)(v3 + v9) + 16))(
                 *(_DWORD *)(v3 + v9),
                 a2,
                 v4);
      v10 = --v5 == 0;
      if ( v5 >= 0 )
        v10 = result == 0;
      v9 -= 4;
      if ( !v10 )
        break;
      v3 = *((_DWORD *)this + 51);
    }
  }
  return result;
}


// ===== 5894a4 glitch::scene::CSceneManager::getAnimatorTypeName(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE) =====
int __fastcall glitch::scene::CSceneManager::getAnimatorTypeName(int a1, int a2)
{
  int v3; // r3
  int result; // r0
  unsigned int v6; // r5

  v3 = *(_DWORD *)(a1 + 216);
  result = (*(_DWORD *)(a1 + 220) - v3) >> 2;
  if ( result )
  {
    v6 = 0;
    do
    {
      result = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v3 + 4 * v6) + 32))(*(_DWORD *)(v3 + 4 * v6), a2);
      if ( result )
        break;
      v3 = *(_DWORD *)(a1 + 216);
      ++v6;
    }
    while ( v6 < (*(_DWORD *)(a1 + 220) - v3) >> 2 );
  }
  return result;
}


// ===== 589508 glitch::scene::CSceneManager::setAmbientLight(glitch::video::SColorf const&) =====
int __fastcall glitch::scene::CSceneManager::setAmbientLight(int a1, int *a2)
{
  _DWORD *v2; // r12
  int result; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // t0

  v2 = (_DWORD *)(a1 + 260);
  result = *a2;
  v7 = a2 + 1;
  v4 = a2[1];
  v5 = *++v7;
  v6 = v7[1];
  *v2 = result;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  return result;
}


// ===== 589518 glitch::scene::CSceneManager::getCurrentRenderedNode(void **,int *) =====
int __fastcall glitch::scene::CSceneManager::getCurrentRenderedNode(
        glitch::scene::CSceneManager *this,
        void **a2,
        int *a3)
{
  if ( a2 )
    *a2 = *((void **)this + 40);
  if ( a3 )
    *a3 = *((_DWORD *)this + 41);
  return *((_DWORD *)this + 39);
}


// ===== 589538 glitch::scene::CSceneManager::getNextRenderedNode(void **,int *) =====
int __fastcall glitch::scene::CSceneManager::getNextRenderedNode(
        glitch::scene::CSceneManager *this,
        void **a2,
        int *a3)
{
  if ( a2 )
    *a2 = *((void **)this + 43);
  if ( a3 )
    *a3 = *((_DWORD *)this + 44);
  return *((_DWORD *)this + 42);
}


// ===== 589558 glitch::scene::CSceneManager::createMeshWriter(glitch::scene::EMESH_WRITER_TYPE) =====
int glitch::scene::CSceneManager::createMeshWriter()
{
  return 0;
}


// ===== 589560 std::priv::__find<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>>(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>>(
        _DWORD *a1,
        int a2,
        int *a3)
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


// ===== 589690 std::priv::__copy<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,int>(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r5
  int v7; // r7
  int v8; // r6
  int v9; // r3
  glitch::IReferenceCounted *v10; // r0

  v3 = a2 - a1;
  v4 = v3 >> 2;
  if ( v3 >> 2 > 0 )
  {
    v7 = v3 >> 2;
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(a1 + v8);
      if ( v9 )
        ++*(_DWORD *)(v9 + 4);
      v10 = *(glitch::IReferenceCounted **)(a3 + v8);
      *(_DWORD *)(a3 + v8) = v9;
      v8 += 4;
      if ( v10 )
        glitch::IReferenceCounted::drop(v10);
      --v7;
    }
    while ( v7 );
    a3 += 4 * v4;
  }
  return a3;
}


// ===== 5896f4 std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*,std::__false_type const&) =====
int __fastcall std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r3
  int v4; // r0
  glitch::IReferenceCounted *v6; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v4 = a2 + 4;
  if ( a2 + 4 != v2 )
  {
    std::priv::__copy<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,int>(
      v4,
      v2,
      a2);
    v4 = *(_DWORD *)(a1 + 4);
  }
  *(_DWORD *)(a1 + 4) = v4 - 4;
  v6 = *(glitch::IReferenceCounted **)(v4 - 4);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  return a2;
}


// ===== 589754 glitch::scene::CSceneManager::removeShadowReceiverTarget(boost::intrusive_ptr<glitch::video::ITexture>) =====
int __fastcall glitch::scene::CSceneManager::removeShadowReceiverTarget(int result, int *a2)
{
  int v2; // r4
  int v3; // r5
  int v5; // r6
  int v6; // r7
  glitch::IReferenceCounted *v7; // r0

  v2 = *(_DWORD *)(result + 144);
  v3 = result;
  if ( v2 != *(_DWORD *)(result + 148) )
  {
    while ( 1 )
    {
      v5 = *(_DWORD *)(*(_DWORD *)v2 + 12);
      if ( v5 )
      {
        v7 = *(glitch::IReferenceCounted **)(*(_DWORD *)v2 + 12);
        ++*(_DWORD *)(v5 + 4);
        v6 = *a2;
        result = glitch::IReferenceCounted::drop(v7);
      }
      else
      {
        v6 = *a2;
      }
      if ( v5 == v6 )
        break;
      v2 += 4;
      if ( v2 == *(_DWORD *)(v3 + 148) )
        return result;
    }
    return std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             v3 + 144,
             v2);
  }
  return result;
}


// ===== 5897d4 glitch::scene::CSceneManager::removeShadowReceiverTarget(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>) =====
_DWORD *__fastcall glitch::scene::CSceneManager::removeShadowReceiverTarget(int a1, int *a2)
{
  _DWORD *result; // r0

  result = std::priv::__find<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>>(
             *(_DWORD **)(a1 + 144),
             *(_DWORD *)(a1 + 148),
             a2);
  if ( result != *(_DWORD **)(a1 + 148) )
    return (_DWORD *)std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                       a1 + 144,
                       (int)result);
  return result;
}


// ===== 589818 std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*,std::__false_type const&) =====
int __fastcall std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v5; // r0
  glitch::IReferenceCounted **v6; // r7
  int v7; // r8
  glitch::IReferenceCounted **v8; // r6
  glitch::IReferenceCounted *v9; // r0

  v5 = std::priv::__copy<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(glitch::IReferenceCounted ***)(a1 + 4);
  v7 = v5;
  if ( v6 != (glitch::IReferenceCounted **)v5 )
  {
    v8 = (glitch::IReferenceCounted **)v5;
    do
    {
      v9 = *v8++;
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 589888 glitch::scene::CSceneManager::clear(void) =====
int __fastcall glitch::scene::CSceneManager::clear(glitch::scene::CSceneManager *this)
{
  int result; // r0
  int v3; // r1
  int v4; // r2

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 100))(*((_DWORD *)this + 1));
  v3 = *((_DWORD *)this + 36);
  v4 = *((_DWORD *)this + 37);
  if ( v3 != v4 )
    return std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             (int)this + 144,
             v3,
             v4);
  return result;
}


// ===== 5898cc std::priv::__copy<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,int>(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r5
  int v7; // r7
  int v8; // r6
  int v9; // r3
  glitch::IReferenceCounted *v10; // r0

  v3 = a2 - a1;
  v4 = v3 >> 2;
  if ( v3 >> 2 > 0 )
  {
    v7 = v3 >> 2;
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(a1 + v8);
      if ( v9 )
        ++*(_DWORD *)(v9 + 4);
      v10 = *(glitch::IReferenceCounted **)(a3 + v8);
      *(_DWORD *)(a3 + v8) = v9;
      v8 += 4;
      if ( v10 )
        glitch::IReferenceCounted::drop(v10);
      --v7;
    }
    while ( v7 );
    a3 += 4 * v4;
  }
  return a3;
}


// ===== 589930 std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*,boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*,std::__false_type const&) =====
int __fastcall std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v5; // r0
  glitch::IReferenceCounted **v6; // r7
  int v7; // r8
  glitch::IReferenceCounted **v8; // r6
  glitch::IReferenceCounted *v9; // r0

  v5 = std::priv::__copy<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(glitch::IReferenceCounted ***)(a1 + 4);
  v7 = v5;
  if ( v6 != (glitch::IReferenceCounted **)v5 )
  {
    v8 = (glitch::IReferenceCounted **)v5;
    do
    {
      v9 = *v8++;
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 5899a0 glitch::scene::IEndOfBatchCallback::~IEndOfBatchCallback() =====
void __fastcall glitch::scene::IEndOfBatchCallback::~IEndOfBatchCallback(glitch::scene::IEndOfBatchCallback *this)
{
  LC_API_FREE_0(this);
}


// ===== 5899b4 glitch::scene::SDefaultSegmentCompileCallback::~SDefaultSegmentCompileCallback() =====
void __fastcall glitch::scene::SDefaultSegmentCompileCallback::~SDefaultSegmentCompileCallback(
        glitch::scene::SDefaultSegmentCompileCallback *this)
{
  LC_API_FREE_0(this);
}


// ===== 5899c8 glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode() =====
void __fastcall glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode(
        glitch::scene::CSceneManagerRootNode *this)
{
  *((_DWORD *)this + 82) = off_976400;
  *(_DWORD *)this = off_97645C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_97645C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_976560;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 589a30 `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode(
        glitch::scene::CSceneManagerRootNode *this)
{
  glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode((glitch::scene::CSceneManagerRootNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 589a40 `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode() =====
void __fastcall `virtual thunk to'glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode(
        glitch::scene::CSceneManagerRootNode *this)
{
  glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode((glitch::scene::CSceneManagerRootNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 589a50 std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
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


// ===== 589ab0 std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
        void **a1)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4
  glitch::IReferenceCounted *v5; // r0

  v2 = (char *)*a1;
  v3 = (char *)a1[1];
  if ( v3 != v2 )
  {
    v4 = v3;
    do
    {
      v5 = *((glitch::IReferenceCounted **)v4 - 1);
      v4 -= 4;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 589af4 std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  glitch::IReferenceCounted *v4; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::IReferenceCounted **)v1 - 1);
      v1 -= 4;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 589b40 std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
        void **a1)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4
  glitch::IReferenceCounted *v5; // r0

  v2 = (char *)*a1;
  v3 = (char *)a1[1];
  if ( v3 != v2 )
  {
    v4 = v3;
    do
    {
      v5 = *((glitch::IReferenceCounted **)v4 - 1);
      v4 -= 4;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 589b84 glitch::scene::CSceneManager::loadScene(char const*,glitch::scene::ISceneUserDataSerializer *) =====
int __fastcall glitch::scene::CSceneManager::loadScene(_DWORD **a1, int a2, int a3)
{
  int v6; // r0
  glitch::IReferenceCounted *v7; // r5
  int v8; // r4

  v6 = (*(int (__fastcall **)(_DWORD *))(*a1[8] + 12))(a1[8]);
  v7 = (glitch::IReferenceCounted *)v6;
  if ( v6 )
  {
    v8 = ((int (__fastcall *)(_DWORD **, int, int))(*a1)[32])(a1, v6, a3);
    glitch::IReferenceCounted::drop(v7);
    return v8;
  }
  else
  {
    glitch::os::Printer::log("Unable to open scene file", a2, 3);
    return 0;
  }
}


// ===== 589c00 std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::ISceneNode **,uint,glitch::scene::ISceneNode * const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        char *result,
        char *a2,
        unsigned int a3,
        char *a4)
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
      return (char *)std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 589d48 glitch::scene::CSceneManager::getSceneNodeFromUID(char const*,glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CSceneManager::getSceneNodeFromUID(
        glitch::scene::CSceneManager *this,
        const char *a2,
        glitch::scene::ISceneNode *a3)
{
  if ( !a3 )
    a3 = *((glitch::scene::ISceneNode **)this + 1);
  return glitch::scene::ISceneNode::getSceneNodeFromUID(a3, a2);
}


// ===== 589d58 glitch::scene::CSceneManager::getSceneNodeFromName(char const*,glitch::scene::ISceneNode *) =====
glitch::scene::ISceneNode *__fastcall glitch::scene::CSceneManager::getSceneNodeFromName(
        glitch::scene::CSceneManager *this,
        const char *a2,
        glitch::scene::ISceneNode *a3)
{
  glitch::scene::ISceneNode *v3; // r7
  const char *v6; // r0
  _DWORD *v8; // r4
  _DWORD *v9; // r7
  _DWORD *v10; // t1
  _DWORD *v11; // r2
  int v12; // r0

  v3 = a3;
  if ( !a3 )
    v3 = *((glitch::scene::ISceneNode **)this + 1);
  v6 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)v3 + 36))(v3);
  if ( LC_API_STRCASECMP_0(v6, a2) )
  {
    v10 = *((_DWORD **)v3 + 61);
    v9 = (_DWORD *)((char *)v3 + 244);
    v8 = v10;
    if ( v10 == v9 )
    {
      return nullptr;
    }
    else
    {
      while ( 1 )
      {
        v11 = v8 - 1;
        if ( !v8 )
          v11 = nullptr;
        v12 = (*(int (__fastcall **)(glitch::scene::CSceneManager *, const char *, _DWORD *))(*(_DWORD *)this + 24))(
                this,
                a2,
                v11);
        if ( v12 )
          break;
        v8 = (_DWORD *)*v8;
        if ( v9 == v8 )
          return nullptr;
      }
      return (glitch::scene::ISceneNode *)v12;
    }
  }
  return v3;
}


// ===== 589de8 glitch::intrusive_ptr_release(glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> const*) =====
void __fastcall glitch::intrusive_ptr_release(glitch::video::CMaterial *a1)
{
  if ( (*(_DWORD *)a1)-- == 1 )
  {
    glitch::video::CMaterial::~CMaterial(a1);
    LC_API_FREE_0(a1);
  }
}


// ===== 589e18 glitch::scene::CSceneManager::setupCamera(void) =====
_DWORD *__fastcall glitch::scene::CSceneManager::setupCamera(_DWORD *this)
{
  int v1; // r3
  _DWORD *v2; // r4
  int v3; // r3
  int v4; // r1
  _DWORD v5[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = *(this + 57);
  v2 = this;
  *(this + 60) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 16))(v1);
    this = glitch::scene::ISceneNode::getAbsolutePosition(v5, (_DWORD *)v2[57]);
    v3 = v5[2];
    v4 = v5[0];
    v2[59] = v5[1];
    v2[60] = v3;
    v2[58] = v4;
  }
  return this;
}


// ===== 589e7c glitch::scene::CSceneManager::drawInit(glitch::video::IVideoDriver *) =====
int __fastcall glitch::scene::CSceneManager::drawInit(int a1, int a2)
{
  glitch::io::CAttributes *v3; // r5
  glitch::io::CAttributes *v4; // r0
  int (__fastcall *v5)(int, int, int); // r5
  int Bool; // r0

  v3 = (glitch::io::CAttributes *)(a1 + 276);
  *(_DWORD *)(a1 + 20) = a2;
  glitch::io::CAttributes::setAttribute((glitch::io::CAttributes *)(a1 + 276), "drawn", 0);
  v4 = v3;
  v5 = *(int (__fastcall **)(int, int, int))(*(_DWORD *)a2 + 160);
  Bool = glitch::io::CAttributes::getBool(v4, "Allow_ZWrite_On_Transparent");
  return v5(a2, 128, Bool);
}


// ===== 589ed4 std::vector<glitch::video::SVertexStreamData,std::allocator<glitch::video::SVertexStreamData>>::~vector() =====
void **__fastcall std::vector<glitch::video::SVertexStreamData>::~vector(void **a1)
{
  char *v1; // r5
  char *v2; // r6
  glitch::IReferenceCounted *v4; // r0
  _BYTE *v5; // r0
  size_t v6; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::IReferenceCounted **)v1 - 4);
      v1 -= 16;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  v5 = *a1;
  if ( !*a1 )
    return a1;
  v6 = ((_BYTE *)a1[2] - v5) & 0xFFFFFFF0;
  if ( v6 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
    return a1;
  }
  LC_API_FREE_0(v5);
  return a1;
}


// ===== 589f40 glitch::video::CBatchDriver::releaseBuffer(void) =====
int __fastcall glitch::video::CBatchDriver::releaseBuffer(glitch::video::CBatchDriver *this)
{
  int v2; // r1
  int v3; // r2
  glitch::IReferenceCounted *v4; // r0

  if ( *((_DWORD *)this + 72) )
  {
    v2 = *((_DWORD *)this + 68);
    v3 = *((_DWORD *)this + 69);
    if ( v2 != v3 )
      std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)this + 272,
        v2,
        v3);
    *((_DWORD *)this + 72) = 0;
  }
  v4 = *((glitch::IReferenceCounted **)this + 74);
  *((_DWORD *)this + 74) = 0;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  return glitch::video::IVideoDriver::clearImplementationDependentData(this);
}


// ===== 589fa4 glitch::scene::CSceneManager::registerSceneNodesCompile(glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CSceneManager::registerSceneNodesCompile(
        glitch::scene::CSceneManager *this,
        glitch::scene::ISceneNode *a2)
{
  glitch::scene::ISceneNode *v2; // r5
  int result; // r0
  _DWORD *v4; // r6
  glitch::scene::ISceneNode *v5; // r7
  _DWORD *v6; // r5
  glitch::scene::ISceneNode *v7; // r4
  int v8; // r3
  int v9; // r3

  v2 = a2;
  if ( !a2 )
    v2 = *((glitch::scene::ISceneNode **)this + 1);
  result = glitch::scene::ISceneNode::getParent(v2);
  v4 = *((_DWORD **)v2 + 1);
  v5 = (glitch::scene::ISceneNode *)result;
  v6 = (_DWORD *)((char *)v2 + 4);
  v7 = (glitch::scene::ISceneNode *)result;
  while ( 1 )
  {
    v8 = v6 ? (int)(v6 - 1) : 0;
    if ( (*(_DWORD *)(v8 + 284) & 1) != 0 )
    {
      v9 = v6 ? (int)(v6 - 1) : 0;
      result = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 16))(v9);
      if ( result )
        break;
    }
    v6 = (_DWORD *)*v6;
    if ( v4 == v6 )
      goto LABEL_19;
LABEL_16:
    if ( v7 == v5 )
      return result;
  }
  if ( v6 )
    v7 = (glitch::scene::ISceneNode *)(v6 - 1);
  else
    v7 = nullptr;
  v6 = *((_DWORD **)v7 + 61);
  v4 = (_DWORD *)((char *)v7 + 244);
  if ( (_DWORD *)((char *)v7 + 244) != v6 )
    goto LABEL_16;
LABEL_19:
  if ( v5 != v7 )
  {
    while ( 1 )
    {
      result = glitch::scene::ISceneNode::getParent(v7);
      v6 = *((_DWORD **)v7 + 1);
      v4 = (_DWORD *)(result + 244);
      if ( (_DWORD *)(result + 244) != v6 )
        break;
      v7 = (glitch::scene::ISceneNode *)result;
      if ( v5 == (glitch::scene::ISceneNode *)result )
        return result;
    }
    v7 = (glitch::scene::ISceneNode *)result;
    goto LABEL_16;
  }
  return result;
}


// ===== 58a070 glitch::scene::CSceneManagerRootNode::CSceneManagerRootNode(glitch::scene::CSceneManager *) =====
glitch::scene::CSceneManagerRootNode *__fastcall glitch::scene::CSceneManagerRootNode::CSceneManagerRootNode(
        glitch::scene::CSceneManagerRootNode *this,
        glitch::scene::CSceneManager *a2)
{
  *((_DWORD *)this + 83) = 1;
  *(_DWORD *)this = off_9766AC;
  *((_DWORD *)this + 82) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[27] + (_DWORD)this) = (int)off_9766CC;
  glitch::scene::CEmptySceneNode::CEmptySceneNode(this, (int *)off_976414, -1);
  *(_DWORD *)this = off_9762FC;
  *((_DWORD *)this + 82) = off_976400;
  glitch::scene::ISceneNode::setSceneManager(this, a2);
  return this;
}


// ===== 58a100 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<uint const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<uint const,glitch::scene::SBatchConfig>>>::_M_create_node(std::pair<uint const,glitch::scene::SBatchConfig> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_create_node(
        int a1,
        _DWORD *a2)
{
  _DWORD *result; // r0
  _DWORD *v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r3
  size_t v12; // [sp+4h] [bp-4h] BYREF

  v12 = 64;
  result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v12);
  result[4] = *a2;
  v4 = (_DWORD *)a2[1];
  result[5] = v4;
  if ( v4 )
    ++*v4;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  result[6] = a2[2];
  result[7] = v5;
  result[8] = v6;
  result[9] = v7;
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  result[10] = a2[6];
  result[11] = v8;
  result[12] = v9;
  result[13] = v10;
  v11 = a2[11];
  result[15] = v11;
  if ( v11 )
    ++*(_DWORD *)(v11 + 4);
  result[3] = 0;
  result[2] = 0;
  return result;
}


// ===== 58a188 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<uint const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<uint const,glitch::scene::SBatchConfig>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,glitch::scene::SBatchConfig> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
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
    node = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_create_node(
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


// ===== 58a260 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<uint const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<uint const,glitch::scene::SBatchConfig>>>::insert_unique(std::pair<uint const,glitch::scene::SBatchConfig> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
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


// ===== 58a3e8 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<uint const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<uint const,glitch::scene::SBatchConfig>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,glitch::scene::SBatchConfig>,std::priv::_MapTraitsT<std::pair<uint const,glitch::scene::SBatchConfig>>>,std::pair<uint const,glitch::scene::SBatchConfig> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::scene::SBatchConfig>,std::priv::_Select1st<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::scene::SBatchConfig>>,std::allocator<std::pair<unsigned int const,glitch::scene::SBatchConfig>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 58a75c `anonymous namespace'::SStats::reset(glitch::io::IAttributes *) [clone] =====
int __fastcall `anonymous namespace'::SStats::reset(int this, glitch::io::IAttributes *a2)
{
  int v2; // r5

  v2 = this;
  if ( this )
  {
    (*(void (__fastcall **)(int, const char *, int))(*(_DWORD *)this + 84))(this, "calls", `anonymous namespace'::Stats);
    this = (*(int (__fastcall **)(int, const char *, int))(*(_DWORD *)v2 + 84))(v2, "culled", dword_9F687C);
  }
  `anonymous namespace'::Stats = 0;
  dword_9F687C = 0;
  return this;
}


// ===== 58a7cc `global constructor keyed to'.._source_glitch_scene_CSceneManager.cpp =====
int __fastcall `global constructor keyed to'.._source_glitch_scene_CSceneManager.cpp(
        int a1,
        glitch::io::IAttributes *a2)
{
  dword_9F6888 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6884 = 1056964608;
  return `anonymous namespace'::SStats::reset(0, a2);
}


// ===== 58a7f0 glitch::scene::CSceneManager::addShadowReceiverTarget(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>) =====
void __fastcall glitch::scene::CSceneManager::addShadowReceiverTarget(int a1, int *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r6
  int v6; // r3
  unsigned int v7; // r3
  unsigned int v8; // r7
  size_t v9; // r7
  _DWORD *v10; // r0
  int v11; // r2
  int v12; // r12
  _DWORD *v13; // r8
  int v14; // r6
  int *v15; // r6
  int v16; // r1
  int v17; // r3
  int v18; // r3
  _DWORD *v19; // r7
  bool v20; // zf
  _DWORD *v21; // r6

  v4 = std::priv::__find<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> *,boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>>(
         *(_DWORD **)(a1 + 144),
         *(_DWORD *)(a1 + 148),
         a2);
  if ( v4 == *(_DWORD **)(a1 + 148) )
  {
    v5 = *(_DWORD **)(a1 + 152);
    if ( v4 == v5 )
    {
      v7 = ((int)v5 - *(_DWORD *)(a1 + 144)) >> 2;
      if ( v7 )
        v8 = 2 * v7;
      else
        v8 = 1;
      if ( v8 > 0x3FFFFFFF || v7 > v8 )
        v9 = -1;
      else
        v9 = v8;
      v10 = GlitchAlloc(v9 * 4, 0);
      v12 = *(_DWORD *)(a1 + 144);
      v13 = v10;
      v14 = ((int)v5 - v12) >> 2;
      if ( v14 > 0 )
      {
        v16 = v14;
        v11 = 0;
        do
        {
          v17 = *(_DWORD *)(v12 + v11);
          *(_DWORD *)((char *)v13 + v11) = v17;
          if ( v17 )
            v10 = *(_DWORD **)(v17 + 4);
          v11 += 4;
          if ( v17 )
          {
            v10 = (_DWORD *)((char *)v10 + 1);
            *(_DWORD *)(v17 + 4) = v10;
          }
          --v16;
        }
        while ( v16 );
        v15 = &v13[v14];
      }
      else
      {
        v15 = v10;
      }
      v18 = *a2;
      v19 = &v13[v9];
      v20 = *a2 == 0;
      *v15 = *a2;
      if ( !v20 )
        v11 = *(_DWORD *)(v18 + 4);
      v21 = v15 + 1;
      if ( !v20 )
        *(_DWORD *)(v18 + 4) = v11 + 1;
      std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move((void **)(a1 + 144));
      *(_DWORD *)(a1 + 152) = v19;
      *(_DWORD *)(a1 + 148) = v21;
      *(_DWORD *)(a1 + 144) = v13;
    }
    else
    {
      v6 = *a2;
      v20 = *a2 == 0;
      *v4 = *a2;
      if ( !v20 )
        ++*(_DWORD *)(v6 + 4);
      *(_DWORD *)(a1 + 148) += 4;
    }
  }
}


// ===== 58a920 glitch::video::CBatchDriver::initBuffer(void) =====
void __fastcall glitch::video::CBatchDriver::initBuffer(glitch::video::CBatchDriver *this)
{
  glitch::IReferenceCounted *v2; // r5
  glitch::IReferenceCounted **v3; // r3
  glitch::IReferenceCounted **v4; // r6
  unsigned int v5; // r3
  unsigned int v6; // r7
  size_t v7; // r7
  _DWORD *v8; // r0
  int v9; // r3
  int v10; // r12
  _DWORD *v11; // r8
  int v12; // r6
  glitch::IReferenceCounted **v13; // r6
  int v14; // r1
  int v15; // r2
  _DWORD *v16; // r7

  if ( !*((_DWORD *)this + 72) )
  {
    v2 = (glitch::IReferenceCounted *)operator new(0x70u, 0);
    glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(
      v2,
      *((_DWORD *)this + 139),
      *((_DWORD *)this + 140),
      this,
      1,
      -1);
    if ( v2 )
      ++*((_DWORD *)v2 + 1);
    v3 = *((glitch::IReferenceCounted ***)this + 69);
    v4 = *((glitch::IReferenceCounted ***)this + 70);
    if ( v3 == v4 )
    {
      v5 = ((int)v4 - *((_DWORD *)this + 68)) >> 2;
      if ( v5 )
        v6 = 2 * v5;
      else
        v6 = 1;
      if ( v6 > 0x3FFFFFFF || v5 > v6 )
        v7 = -1;
      else
        v7 = v6;
      v8 = GlitchAlloc(v7 * 4, 0);
      v10 = *((_DWORD *)this + 68);
      v11 = v8;
      v12 = ((int)v4 - v10) >> 2;
      if ( v12 > 0 )
      {
        v14 = v12;
        v15 = 0;
        do
        {
          v9 = *(_DWORD *)(v10 + v15 * 4);
          v11[v15] = v9;
          if ( v9 )
            v8 = *(_DWORD **)(v9 + 4);
          ++v15;
          if ( v9 )
          {
            v8 = (_DWORD *)((char *)v8 + 1);
            *(_DWORD *)(v9 + 4) = v8;
          }
          --v14;
        }
        while ( v14 );
        v13 = (glitch::IReferenceCounted **)&v11[v12];
      }
      else
      {
        v13 = (glitch::IReferenceCounted **)v8;
      }
      *v13 = v2;
      if ( v2 )
        v9 = *((_DWORD *)v2 + 1);
      v16 = &v11[v7];
      if ( v2 )
        *((_DWORD *)v2 + 1) = v9 + 1;
      std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move((void **)this + 68);
      *((_DWORD *)this + 69) = v13 + 1;
      *((_DWORD *)this + 70) = v16;
      *((_DWORD *)this + 68) = v11;
    }
    else
    {
      *v3 = v2;
      if ( v2 )
        ++*((_DWORD *)v2 + 1);
      *((_DWORD *)this + 69) += 4;
    }
    if ( v2 )
      glitch::IReferenceCounted::drop(v2);
    *((_DWORD *)this + 72) = **((_DWORD **)this + 68);
  }
}


// ===== 58aa8c glitch::scene::SViewFrustum::intersects3(glitch::core::aabbox3d<float> const&) =====
bool __fastcall glitch::scene::SViewFrustum::intersects3(float *a1, float *a2)
{
  return a1[27] <= a2[3]
      && a1[28] <= a2[4]
      && a1[29] <= a2[5]
      && a1[30] >= *a2
      && a1[31] >= a2[1]
      && a1[32] >= a2[2]
      && glitch::scene::SViewFrustum::intersectsWithoutBoxTest3(a1, a2);
}


// ===== 58ab28 glitch::scene::CSceneManager::isCulled(glitch::scene::ISceneNode const*) =====
int __fastcall glitch::scene::CSceneManager::isCulled(
        glitch::scene::CSceneManager *this,
        const glitch::scene::ISceneNode *a2)
{
  int *v3; // r5
  int v4; // r3
  float *v6; // r5
  float *v7; // r0
  int v8; // r0
  int v9; // r3
  float *v10; // r2
  int *v11; // r0
  float v12; // r9
  float v13; // r8
  float v14; // r5
  float v15; // r7
  float v16; // r10
  float v17; // r6
  float *v18; // r4
  bool v19; // r0
  float *v20; // r5
  float *v21; // r0

  if ( !*((_BYTE *)this + 592) )
    return 0;
  v3 = *((int **)this + 57);
  if ( !v3 )
    return 0;
  v4 = *((_DWORD *)a2 + 70);
  switch ( v4 )
  {
    case 2:
      v6 = (float *)(*(int (__fastcall **)(_DWORD))(*v3 + 324))(*((_DWORD *)this + 57));
      v7 = (float *)(*(int (__fastcall **)(const glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 52))(a2);
      return (unsigned __int8)glitch::scene::SViewFrustum::intersects(v6, v7) ^ 1;
    case 8:
      v20 = (float *)(*(int (__fastcall **)(_DWORD))(*v3 + 324))(*((_DWORD *)this + 57));
      v21 = (float *)(*(int (__fastcall **)(const glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 52))(a2);
      v19 = glitch::scene::SViewFrustum::intersects3(v20, v21);
      break;
    case 1:
      v8 = (*(int (__fastcall **)(const glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 52))(a2);
      v9 = *v3;
      v10 = (float *)v8;
      v11 = v3;
      v12 = *v10;
      v13 = v10[5];
      v14 = v10[1];
      v15 = v10[2];
      v16 = v10[3];
      v17 = v10[4];
      v18 = (float *)(*(int (__fastcall **)(int *))(v9 + 324))(v11);
      if ( v12 > v18[30] || v14 > v18[31] || v15 > v18[32] || v16 < v18[27] || v17 < v18[28] )
        return 1;
      v19 = v13 >= v18[29];
      break;
    default:
      return 0;
  }
  return !v19;
}

