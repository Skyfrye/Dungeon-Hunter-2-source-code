// ===== 893b7c vox::FileLimited::FileLimited(void) =====
_DWORD *__fastcall vox::FileLimited::FileLimited(_DWORD *this)
{
  *(this + 2) = 1;
  *this = off_993D18;
  *(this + 5) = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}


// ===== 893bc4 vox::FileLimited::Read(void *,int,int) =====
int __fastcall vox::FileLimited::Read(vox::FileLimited *this, void *a2, int a3, int a4)
{
  int v4; // r12
  int v7; // r0
  int v8; // r2
  int result; // r0

  v4 = *((_DWORD *)this + 5);
  v7 = *((_DWORD *)this + 4);
  if ( v4 + a3 * a4 <= v7 )
  {
    result = vox::FileSystemInterface::m_IOFunc(a2, a3, a4, *((_DWORD *)this + 1));
    *((_DWORD *)this + 5) += a3 * result;
  }
  else
  {
    v8 = (v7 - v4) / a3;
    if ( v8 <= 0 )
    {
      return 0;
    }
    else
    {
      result = vox::FileSystemInterface::m_IOFunc(a2, a3, v8, *((_DWORD *)this + 1));
      *((_DWORD *)this + 5) += a3 * result;
    }
  }
  return result;
}


// ===== 893c74 vox::FileLimited::Seek(int,vox::VoxFileSeekOrigin) =====
int __fastcall vox::FileLimited::Seek(_DWORD *a1, int a2, int a3)
{
  int v4; // r2
  int v5; // r5
  int v6; // r1
  int result; // r0
  int v8; // r2
  int v9; // r2
  int v10; // r0

  switch ( a3 )
  {
    case 1:
      v9 = a1[5];
      v10 = a1[4];
      v5 = a2 + v9;
      if ( a2 + v9 > v10 )
      {
        a1[5] = v10;
        return -1;
      }
      if ( v5 < 0 )
        goto LABEL_18;
      v6 = v9 + a1[3] + a2;
      break;
    case 2:
      v8 = a1[4];
      if ( -a2 > v8 )
        goto LABEL_18;
      if ( a2 > 0 )
      {
        a1[5] = v8;
        return -1;
      }
      v5 = a2 + v8;
      v6 = v8 + a1[3] + a2;
      break;
    case 0:
      v4 = a1[4];
      if ( v4 < a2 )
      {
        a1[5] = v4;
        return -1;
      }
      if ( a2 >= 0 )
      {
        v5 = a2;
        v6 = a2 + a1[3];
        break;
      }
LABEL_18:
      a1[5] = -1;
      return -1;
    default:
      return -1;
  }
  result = off_A33EB4(a1[1], v6, 0);
  if ( !result )
    a1[5] = v5;
  return result;
}


// ===== 893d70 vox::FileLimited::FileLimited(void *,int,int) =====
vox::FileLimited *__fastcall vox::FileLimited::FileLimited(vox::FileLimited *this, void *a2, int a3, int a4)
{
  *((_DWORD *)this + 4) = a4;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 3) = a3;
  *(_DWORD *)this = off_993D18;
  *((_DWORD *)this + 2) = 1;
  *((_DWORD *)this + 5) = 0;
  vox::FileLimited::Seek(this, 0, 0);
  return this;
}


// ===== 893dc8 vox::FileLimited::FileLimited(void *,int,int) =====
vox::FileLimited *__fastcall vox::FileLimited::FileLimited(vox::FileLimited *this, void *a2, int a3, int a4)
{
  *((_DWORD *)this + 4) = a4;
  *((_DWORD *)this + 1) = a2;
  *((_DWORD *)this + 3) = a3;
  *(_DWORD *)this = off_993D18;
  *((_DWORD *)this + 2) = 1;
  *((_DWORD *)this + 5) = 0;
  vox::FileLimited::Seek(this, 0, 0);
  return this;
}


// ===== 893e20 vox::FileLimited::Tell(void) =====
int __fastcall vox::FileLimited::Tell(vox::FileLimited *this)
{
  return *((_DWORD *)this + 5);
}


// ===== 893e28 `global constructor keyed to'.._.._src_vox_filesystem.cpp =====
void `global constructor keyed to'.._.._src_vox_filesystem.cpp()
{
  off_A33EC0 = nullptr;
  vox::FileSystemInterface::m_IOFunc = nullptr;
  off_A33EB0 = nullptr;
  off_A33EB4 = nullptr;
  off_A33EB8 = nullptr;
  off_A33EBC = nullptr;
}


// ===== 893e60 vox::FileInterface::~FileInterface() =====
void __fastcall vox::FileInterface::~FileInterface(vox::FileInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 893e74 vox::FileLimited::~FileLimited() =====
void __fastcall vox::FileLimited::~FileLimited(vox::FileLimited *this)
{
  LC_API_FREE_0(this);
}


// ===== 893e88 vox::FileSystemInterface::GetDirectory(char *,int,char *) =====
int __fastcall vox::FileSystemInterface::GetDirectory(vox::FileSystemInterface *this, char *a2, char *a3, char *a4)
{
  bool v4; // zf
  int v7; // r6
  char *v9; // r0
  signed int v10; // r5

  v4 = this == nullptr;
  if ( this )
    v4 = a3 == nullptr;
  v7 = v4;
  if ( v4 )
    return -1;
  v9 = strrchr(a3, 47);
  if ( v9 )
  {
    v10 = (signed int)&v9[1 - (_DWORD)a3];
    if ( v10 >= (int)a2 )
      return -1;
    memcpy(this, a3, v10);
    *((_BYTE *)this + v10) = v7;
    return v7;
  }
  else
  {
    *(_BYTE *)this = 0;
    return -1;
  }
}


// ===== 893f00 std::list<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::erase(std::priv::_List_iterator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,std::_Nonconst_traits<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>>) =====
_DWORD *__fastcall std::list<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::erase(
        _DWORD *a1,
        int a2,
        int **a3)
{
  int *v3; // r4
  int v5; // r5
  _DWORD *v6; // r2
  int *v7; // r0

  v3 = *a3;
  v5 = **a3;
  v6 = (_DWORD *)(*a3)[1];
  *v6 = v5;
  *(_DWORD *)(v5 + 4) = v6;
  v7 = (int *)v3[7];
  if ( v7 != v3 + 2 && v7 )
    VoxFree(v7);
  VoxFree(v3);
  *a1 = v5;
  return a1;
}


// ===== 893f4c vox::FileSystemInterface::PopDirectory(void) =====
int __fastcall vox::FileSystemInterface::PopDirectory(vox::FileSystemInterface *this)
{
  vox::FileSystemInterface *v1; // r1
  vox::FileSystemInterface *v2; // r3
  _DWORD v4[3]; // [sp+0h] [bp-14h] BYREF
  int *v5; // [sp+Ch] [bp-8h] BYREF

  v1 = (vox::FileSystemInterface *)((char *)this + 12);
  v2 = *((vox::FileSystemInterface **)this + 3);
  if ( v2 != (vox::FileSystemInterface *)((char *)this + 12) )
  {
    do
      v2 = *(vox::FileSystemInterface **)v2;
    while ( v1 != v2 );
    v5 = *((int **)this + 4);
    std::list<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::erase(
      v4,
      (int)v1,
      &v5);
  }
  return -1;
}


// ===== 893f90 std::priv::_List_base<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::clear(void) =====
void __fastcall std::priv::_List_base<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::clear(
        void **a1)
{
  char *v1; // r4
  void **v3; // r5
  char *v4; // r3

  v1 = (char *)*a1;
  if ( *a1 != a1 )
  {
    while ( 1 )
    {
      v3 = *(void ***)v1;
      v4 = *((char **)v1 + 7);
      if ( v4 != v1 + 8 && v4 )
        VoxFree(*((void **)v1 + 7));
      VoxFree(v1);
      if ( v3 == a1 )
        break;
      v1 = (char *)v3;
    }
    v1 = (char *)a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 893ff0 vox::FileSystemInterface::CloseFile(vox::FileInterface *) =====
int __fastcall vox::FileSystemInterface::CloseFile(vox::FileSystemInterface *this, vox::FileInterface *a2)
{
  if ( !a2 )
    return -1;
  if ( (*(int (__fastcall **)(vox::FileInterface *))(*(_DWORD *)a2 + 24))(a2) )
    off_A33EC0();
  (**(void (__fastcall ***)(vox::FileInterface *))a2)(a2);
  VoxFree(a2);
  return 0;
}


// ===== 89405c vox::FileSystemInterface::~FileSystemInterface() =====
void __fastcall vox::FileSystemInterface::~FileSystemInterface(vox::FileSystemInterface *this)
{
  void (__fastcall ***v1)(_DWORD); // r1

  v1 = *((void (__fastcall ****)(_DWORD))this + 2);
  *(_DWORD *)this = off_993CF0;
  if ( v1 )
  {
    (**v1)(v1);
    VoxFree(*((void **)this + 2));
    *((_DWORD *)this + 2) = 0;
  }
  std::priv::_List_base<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::clear((void **)this + 3);
}


// ===== 8940c0 vox::FileSystemInterface::~FileSystemInterface() =====
void __fastcall vox::FileSystemInterface::~FileSystemInterface(vox::FileSystemInterface *this)
{
  vox::FileSystemInterface::~FileSystemInterface(this);
  LC_API_FREE_0(this);
}


// ===== 8940dc vox::FileSystemInterface::~FileSystemInterface() =====
void __fastcall vox::FileSystemInterface::~FileSystemInterface(vox::FileSystemInterface *this)
{
  void (__fastcall ***v1)(_DWORD); // r1

  v1 = *((void (__fastcall ****)(_DWORD))this + 2);
  *(_DWORD *)this = off_993CF0;
  if ( v1 )
  {
    (**v1)(v1);
    VoxFree(*((void **)this + 2));
    *((_DWORD *)this + 2) = 0;
  }
  std::priv::_List_base<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::clear((void **)this + 3);
}


// ===== 894140 vox::FileSystemInterface::DestroyInstance(void) =====
void __fastcall vox::FileSystemInterface::DestroyInstance(vox::FileSystemInterface *this)
{
  if ( vox::FileSystemInterface::m_instance )
  {
    (**(void (__fastcall ***)(int))vox::FileSystemInterface::m_instance)(vox::FileSystemInterface::m_instance);
    VoxFree((void *)vox::FileSystemInterface::m_instance);
  }
  vox::FileSystemInterface::m_instance = 0;
}


// ===== 894190 std::list<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::insert(std::priv::_List_iterator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,std::_Nonconst_traits<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>>,std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::list<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::insert(
        _DWORD *a1,
        int a2,
        int *a3,
        int a4)
{
  _DWORD *v7; // r5
  int v8; // r3
  _DWORD *v10; // r2

  v7 = VoxAlloc(0x20u, 0);
  v7[6] = v7 + 2;
  v7[7] = v7 + 2;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v7 + 2,
    *(_BYTE **)(a4 + 20),
    *(_BYTE **)(a4 + 16));
  v8 = *a3;
  v10 = *(_DWORD **)(*a3 + 4);
  *v7 = *a3;
  v7[1] = v10;
  *v10 = v7;
  *(_DWORD *)(v8 + 4) = v7;
  *a1 = v7;
  return a1;
}


// ===== 8941ec vox::FileSystemInterface::PushDirectory(char *) =====
int __fastcall vox::FileSystemInterface::PushDirectory(vox::FileSystemInterface *this, char *a2)
{
  char *v3; // r7
  _DWORD v4[3]; // [sp+0h] [bp-34h] BYREF
  char *v5; // [sp+Ch] [bp-28h] BYREF
  _DWORD v6[5]; // [sp+14h] [bp-20h] BYREF
  void *p; // [sp+28h] [bp-Ch]

  if ( !a2 )
    return -1;
  v3 = (char *)this + 12;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(v6, a2);
  v5 = v3;
  std::list<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SAllocator<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>>::insert(
    v4,
    (int)v3,
    (int *)&v5,
    (int)v6);
  if ( p == v6 || !p )
    return 0;
  VoxFree(p);
  return 0;
}


// ===== 894290 vox::FileSystemInterface::SetArchive(char const*,bool,bool,bool) =====
int __fastcall vox::FileSystemInterface::SetArchive(
        vox::FileSystemInterface *this,
        const char *a2,
        bool a3,
        bool a4,
        bool a5)
{
  void (__fastcall ***v5)(_DWORD); // r12
  vox::CZipReader *v10; // r5

  v5 = *((void (__fastcall ****)(_DWORD))this + 2);
  if ( v5 )
  {
    (**v5)(*((_DWORD *)this + 2));
    VoxFree(*((void **)this + 2));
  }
  v10 = (vox::CZipReader *)VoxAlloc(0x3Cu, 0);
  vox::CZipReader::CZipReader(v10, a2, a3, a4);
  *((_BYTE *)this + 4) = a5;
  *((_DWORD *)this + 2) = v10;
  if ( *((_DWORD *)v10 + 1) )
    return 0;
  (**(void (__fastcall ***)(vox::CZipReader *))v10)(v10);
  VoxFree(*((void **)this + 2));
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 2) = 0;
  return -1;
}


// ===== 894330 vox::FileSystemInterface::OpenFile(char *,vox::VoxFileAccessMode) =====
vox::FileLimited *__fastcall vox::FileSystemInterface::OpenFile(int a1, char *a2, int a3)
{
  _DWORD *v5; // r3
  int v6; // r3
  size_t v7; // r0
  int v8; // r3
  void *v9; // r10
  vox::FileLimited *v10; // r8
  int v11; // r3
  signed int v12; // r9
  int v13; // r3
  int v16; // [sp+8h] [bp-2Ch] BYREF
  int v17; // [sp+Ch] [bp-28h] BYREF
  _DWORD v18[5]; // [sp+14h] [bp-20h] BYREF
  void *p; // [sp+28h] [bp-Ch]

  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(v18, "");
  v5 = *(_DWORD **)(a1 + 12);
  if ( v5 != (_DWORD *)(a1 + 12) )
  {
    do
      v5 = (_DWORD *)*v5;
    while ( (_DWORD *)(a1 + 12) != v5 );
    v6 = *(_DWORD *)(a1 + 16);
    if ( v18 != (_DWORD *)(v6 + 8) )
      std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
        v18,
        *(_BYTE **)(v6 + 28),
        *(_BYTE **)(v6 + 24));
  }
  v7 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_append(v18, a2, &a2[v7]);
  v8 = *(_DWORD *)(a1 + 8);
  if ( v8
    && *(_BYTE *)(a1 + 4)
    && (*(int (__fastcall **)(_DWORD, void *, int *, int *))(*(_DWORD *)v8 + 8))(*(_DWORD *)(a1 + 8), p, &v16, &v17)
    && (v9 = (void *)off_A33EBC(*(_DWORD *)(*(_DWORD *)(a1 + 8) + 28), a3)) != nullptr )
  {
    v10 = (vox::FileLimited *)VoxAlloc(0x18u, 0);
    vox::FileLimited::FileLimited(v10, v9, v16, v17);
  }
  else
  {
    v9 = (void *)off_A33EBC(p, a3);
    if ( v9 )
    {
      v10 = (vox::FileLimited *)VoxAlloc(0xCu, 0);
      *((_DWORD *)v10 + 2) = 0;
      *((_DWORD *)v10 + 1) = v9;
      *(_DWORD *)v10 = off_993D40;
    }
    else
    {
      v10 = nullptr;
    }
  }
  v11 = *(_DWORD *)(a1 + 8);
  if ( v11 )
  {
    v12 = *(unsigned __int8 *)(a1 + 4);
    if ( !*(_BYTE *)(a1 + 4) && !v9 )
    {
      if ( !(*(int (__fastcall **)(_DWORD, void *, int *, int *))(*(_DWORD *)v11 + 8))(
              *(_DWORD *)(a1 + 8),
              p,
              &v17,
              &v16) )
        goto LABEL_18;
      v9 = (void *)off_A33EBC(*(_DWORD *)(*(_DWORD *)(a1 + 8) + 28), a3);
      if ( !v9 )
        goto LABEL_18;
      v10 = (vox::FileLimited *)VoxAlloc(0x18u, v12);
      vox::FileLimited::FileLimited(v10, v9, v17, v16);
    }
  }
  v13 = (int)v9;
  if ( v9 )
    v13 = 1;
  if ( v10 )
    v13 = 0;
  if ( v13 )
  {
    off_A33EC0(v9);
    v10 = nullptr;
  }
LABEL_18:
  if ( p != v18 && p )
    VoxFree(p);
  return v10;
}


// ===== 8945a4 vox::FileSystemInterface::GetInstance(void) =====
int __fastcall vox::FileSystemInterface::GetInstance(vox::FileSystemInterface *this)
{
  int result; // r0

  result = vox::FileSystemInterface::m_instance;
  if ( !vox::FileSystemInterface::m_instance )
  {
    result = vox::VoxNewFileSystem(nullptr);
    vox::FileSystemInterface::m_instance = result;
  }
  return result;
}


// ===== 8945dc vox::FileSystemStdio::FileSystemStdio(void) =====
int __fastcall vox::FileSystemStdio::FileSystemStdio(int this)
{
  *(_DWORD *)this = off_993D68;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 16) = this + 12;
  *(_BYTE *)(this + 4) = 0;
  *(_DWORD *)(this + 12) = this + 12;
  off_A33EB8 = vox::tellStdIO;
  off_A33EBC = (int (__fastcall *)(_DWORD, _DWORD))vox::openStdIO;
  off_A33EC0 = (int (__fastcall *)(_DWORD))vox::closeStdIO;
  vox::FileSystemInterface::m_IOFunc = (int (__fastcall *)(_DWORD, _DWORD, _DWORD, _DWORD))vox::readStdIO;
  off_A33EB0 = vox::writeStdIO;
  off_A33EB4 = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))vox::seekStdIO;
  return this;
}


// ===== 894684 vox::FileSystemStdio::FileSystemStdio(void) =====
int __fastcall vox::FileSystemStdio::FileSystemStdio(int this)
{
  *(_DWORD *)this = off_993D68;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 16) = this + 12;
  *(_BYTE *)(this + 4) = 0;
  *(_DWORD *)(this + 12) = this + 12;
  off_A33EB8 = vox::tellStdIO;
  off_A33EBC = (int (__fastcall *)(_DWORD, _DWORD))vox::openStdIO;
  off_A33EC0 = (int (__fastcall *)(_DWORD))vox::closeStdIO;
  vox::FileSystemInterface::m_IOFunc = (int (__fastcall *)(_DWORD, _DWORD, _DWORD, _DWORD))vox::readStdIO;
  off_A33EB0 = vox::writeStdIO;
  off_A33EB4 = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))vox::seekStdIO;
  return this;
}


// ===== 89472c vox::FileSystemStdio::~FileSystemStdio() =====
void __fastcall vox::FileSystemStdio::~FileSystemStdio(vox::FileSystemStdio *this)
{
  *(_DWORD *)this = off_993D68;
  vox::FileSystemInterface::~FileSystemInterface(this);
}


// ===== 894760 vox::FileSystemStdio::~FileSystemStdio() =====
void __fastcall vox::FileSystemStdio::~FileSystemStdio(vox::FileSystemStdio *this)
{
  vox::FileSystemStdio::~FileSystemStdio(this);
  LC_API_FREE_0(this);
}


// ===== 89477c vox::FileSystemStdio::~FileSystemStdio() =====
void __fastcall vox::FileSystemStdio::~FileSystemStdio(vox::FileSystemStdio *this)
{
  *(_DWORD *)this = off_993D68;
  vox::FileSystemInterface::~FileSystemInterface(this);
}


// ===== 8947b0 vox::VoxNewFileSystem(void) =====
void *__fastcall vox::VoxNewFileSystem(vox *this)
{
  void *v1; // r4

  v1 = VoxAlloc(0x14u, 0);
  vox::FileSystemStdio::FileSystemStdio((int)v1);
  return v1;
}


// ===== 8947d0 vox::closeStdIO(void *) =====
// attributes: thunk
int vox::closeStdIO(FILE *stream)
{
  return fclose(stream);
}


// ===== 8947d4 vox::openStdIO(char const*,vox::VoxFileAccessMode) =====
FILE *__fastcall vox::openStdIO(const char *a1, int a2)
{
  const char *v2; // r1
  FILE *result; // r0

  switch ( a2 )
  {
    case 0:
      v2 = "r";
      goto LABEL_3;
    case 1:
      v2 = "w";
      goto LABEL_3;
    case 2:
      v2 = "a";
      goto LABEL_3;
    case 3:
      v2 = "r+";
      goto LABEL_3;
    case 4:
      v2 = "w+";
      goto LABEL_3;
    case 5:
      v2 = "a+";
      goto LABEL_3;
    case 6:
      v2 = "rb";
      goto LABEL_3;
    case 7:
      v2 = "wb";
      goto LABEL_3;
    case 8:
      v2 = "ab";
      goto LABEL_3;
    case 9:
      v2 = "r+b";
      goto LABEL_3;
    case 10:
      v2 = "w+b";
      goto LABEL_3;
    case 11:
      v2 = "a+b";
LABEL_3:
      result = fopen(a1, v2);
      break;
    default:
      result = nullptr;
      break;
  }
  return result;
}


// ===== 8948d8 vox::tellStdIO(void *) =====
// attributes: thunk
int vox::tellStdIO(FILE *stream)
{
  return ftell(stream);
}


// ===== 8948dc vox::seekStdIO(void *,int,vox::VoxFileSeekOrigin) =====
int __fastcall vox::seekStdIO(FILE *a1, int a2, int a3)
{
  if ( a3 != 2 )
    a3 = a3 == 1;
  return fseek(a1, a2, a3);
}


// ===== 8948f4 vox::writeStdIO(void const*,int,int,void *) =====
// attributes: thunk
size_t vox::writeStdIO(const void *ptr, size_t size, size_t n, FILE *s)
{
  return fwrite(ptr, size, n, s);
}


// ===== 8948f8 vox::readStdIO(void *,int,int,void *) =====
// attributes: thunk
size_t vox::readStdIO(void *ptr, size_t size, size_t n, FILE *stream)
{
  return fread(ptr, size, n, stream);
}


// ===== 8948fc vox::CZipReader::getFileCount(void) =====
int __fastcall vox::CZipReader::getFileCount(vox::CZipReader *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 894904 vox::SZipFileEntry::SZipFileEntry(vox::SZipFileEntry const&) =====
int __fastcall vox::SZipFileEntry::SZipFileEntry(int a1, int *a2)
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
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    (_DWORD *)a1,
    (_BYTE *)a2[5],
    (_BYTE *)a2[4]);
  *(_DWORD *)(a1 + 40) = a1 + 24;
  *(_DWORD *)(a1 + 44) = a1 + 24;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    (_DWORD *)(a1 + 24),
    (_BYTE *)v3[11],
    (_BYTE *)v3[10]);
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
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


// ===== 894980 vox::SZipFileEntry::SZipFileEntry(void) =====
vox::SZipFileEntry *__fastcall vox::SZipFileEntry::SZipFileEntry(vox::SZipFileEntry *this)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block(this, 0x10u);
  **((_BYTE **)this + 4) = 0;
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block((_DWORD *)this + 6, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 16) = (char *)this + 48;
  *((_DWORD *)this + 17) = (char *)this + 48;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block((_DWORD *)this + 12, 0x10u);
  **((_BYTE **)this + 16) = 0;
  return this;
}


// ===== 8949ec std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_create_node(std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_create_node(
        int a1,
        int a2)
{
  _DWORD *v3; // r4

  v3 = VoxAlloc(0x94u, 0);
  v3[8] = v3 + 4;
  v3[9] = v3 + 4;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v3 + 4,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  vox::SZipFileEntry::SZipFileEntry((int)(v3 + 10), (int *)(a2 + 24));
  v3[3] = 0;
  v3[2] = 0;
  return v3;
}


// ===== 894a3c vox::SZipFileEntry::operator=(vox::SZipFileEntry const&) =====
int __fastcall vox::SZipFileEntry::operator=(int a1, int a2)
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
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      (_DWORD *)a1,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
  if ( a1 + 24 != a2 + 24 )
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      (_DWORD *)(a1 + 24),
      *(_BYTE **)(a2 + 44),
      *(_BYTE **)(a2 + 40));
  if ( a1 + 48 != a2 + 48 )
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
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


// ===== 894ac0 std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_reserve(uint) =====
void __fastcall std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_reserve(
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

  v4 = VoxAlloc(a2, 0);
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
    VoxFree(v10);
  a1[5] = v6;
  *a1 = &v6[a2];
  a1[4] = v8;
}


// ===== 894b44 std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::reserve(uint) =====
void __fastcall std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::reserve(
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
    __ZSt24__stl_throw_length_errorPKc_veneer_0("basic_string");
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
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_reserve(a1, v6);
}


// ===== 894bac vox::StringComp::operator()(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&,std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
unsigned int __fastcall vox::StringComp::operator()(int a1, int a2, int a3)
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


// ===== 894bfc std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = vox::StringComp::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_create_node(
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


// ===== 894cec vox::SZipFileEntry::~SZipFileEntry() =====
void __fastcall vox::SZipFileEntry::~SZipFileEntry(vox::SZipFileEntry *this)
{
  char *v1; // r3
  char *v3; // r0
  char *v4; // r0
  vox::SZipFileEntry *v5; // r0

  v1 = (char *)this + 48;
  v3 = *((char **)this + 17);
  if ( v3 != v1 && v3 )
    VoxFree(v3);
  v4 = *((char **)this + 11);
  if ( v4 != (char *)this + 24 && v4 )
    VoxFree(v4);
  v5 = *((vox::SZipFileEntry **)this + 5);
  if ( v5 != this )
  {
    if ( v5 )
      VoxFree(v5);
  }
}


// ===== 894d4c std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r6
  int v5; // r3

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      vox::SZipFileEntry::~SZipFileEntry((vox::SZipFileEntry *)(v2 + 40));
      v5 = *(_DWORD *)(v2 + 36);
      if ( v5 != v2 + 16 )
      {
        if ( v5 )
          VoxFree(*(void **)(v2 + 36));
      }
      VoxFree((void *)v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 894da8 vox::CZipReader::~CZipReader() =====
void __fastcall vox::CZipReader::~CZipReader(vox::CZipReader *this)
{
  int v1; // r1
  int Instance; // r0
  char *v4; // r0

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_993D90;
  if ( v1 )
  {
    Instance = vox::FileSystemInterface::GetInstance(this);
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)Instance + 12))(Instance, *((_DWORD *)this + 1));
  }
  if ( *((_DWORD *)this + 13) )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 36,
      *((_DWORD *)this + 10));
    *((_DWORD *)this + 12) = (char *)this + 36;
    *((_DWORD *)this + 13) = 0;
    *((_DWORD *)this + 11) = (char *)this + 36;
    *((_DWORD *)this + 10) = 0;
  }
  v4 = *((char **)this + 7);
  if ( v4 != (char *)this + 8 )
  {
    if ( v4 )
      VoxFree(v4);
  }
}


// ===== 894e44 vox::CZipReader::~CZipReader() =====
void __fastcall vox::CZipReader::~CZipReader(vox::CZipReader *this)
{
  vox::CZipReader::~CZipReader(this);
  LC_API_FREE_0(this);
}


// ===== 894e60 vox::CZipReader::~CZipReader() =====
void __fastcall vox::CZipReader::~CZipReader(vox::CZipReader *this)
{
  int v1; // r1
  int Instance; // r0
  char *v4; // r0

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_993D90;
  if ( v1 )
  {
    Instance = vox::FileSystemInterface::GetInstance(this);
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)Instance + 12))(Instance, *((_DWORD *)this + 1));
  }
  if ( *((_DWORD *)this + 13) )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 36,
      *((_DWORD *)this + 10));
    *((_DWORD *)this + 12) = (char *)this + 36;
    *((_DWORD *)this + 13) = 0;
    *((_DWORD *)this + 11) = (char *)this + 36;
    *((_DWORD *)this + 10) = 0;
  }
  v4 = *((char **)this + 7);
  if ( v4 != (char *)this + 8 )
  {
    if ( v4 )
      VoxFree(v4);
  }
}


// ===== 894efc vox::CZipReader::deletePathFromFilename(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> &) =====
void __fastcall vox::CZipReader::deletePathFromFilename(int a1, int a2)
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
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      (_DWORD *)a2,
      v7,
      &v7[v8]);
  }
}


// ===== 894f74 vox::CZipReader::extractFilename(vox::SZipFileEntry *) =====
void __fastcall vox::CZipReader::extractFilename(vox::CZipReader *this, vox::SZipFileEntry *a2)
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
  if ( *((_BYTE *)this + 32) )
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
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      (_DWORD *)a2 + 6,
      v5,
      &v5[v18]);
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      (_DWORD *)a2 + 12,
      "",
      "");
    goto LABEL_24;
  }
  v13 = v11 + 1;
  v14 = LC_API_STRLEN_0(v13);
  v15 = (_DWORD *)((char *)a2 + 24);
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
    (_DWORD *)a2 + 6,
    v13,
    &v13[v14]);
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
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
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v19,
    v16,
    v17);
  if ( (_DWORD *)((char *)a2 + 48) != v19 )
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      (_DWORD *)a2 + 12,
      p,
      v20);
  if ( p == v19 || !p )
  {
LABEL_24:
    if ( !*((_BYTE *)this + 33) )
      goto LABEL_25;
    return;
  }
  VoxFree(p);
  if ( !*((_BYTE *)this + 33) )
LABEL_25:
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      v15,
      *((_BYTE **)a2 + 5),
      *((_BYTE **)a2 + 4));
}


// ===== 895160 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry> const&) =====
int __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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


// ===== 895378 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
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


// ===== 89544c vox::CZipReader::getFileInfo(char const*,int &,int &) =====
int __fastcall vox::CZipReader::getFileInfo(vox::CZipReader *this, char *a2, int *a3, int *a4)
{
  size_t v8; // r0
  _BYTE *v9; // r2
  unsigned int v10; // r3
  char v11; // r1
  _BYTE *v12; // r2
  _DWORD *v13; // r6
  _DWORD *v14; // r0
  int v15; // r6
  _DWORD v17[4]; // [sp+4h] [bp-1Ch] BYREF
  char *v18; // [sp+14h] [bp-Ch]
  void *p; // [sp+18h] [bp-8h]

  v18 = (char *)v17;
  p = v17;
  v8 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v17,
    a2,
    &a2[v8]);
  if ( *((_BYTE *)this + 33) )
    vox::CZipReader::deletePathFromFilename((int)this, (int)v17);
  if ( *((_BYTE *)this + 32) )
  {
    v9 = p;
    if ( v18 != p )
    {
      v10 = 0;
      do
      {
        v11 = v9[v10];
        v12 = &v9[v10++];
        if ( (unsigned __int8)(v11 - 65) <= 0x19u )
          v11 += 32;
        *v12 = v11;
        v9 = p;
      }
      while ( v10 < v18 - (_BYTE *)p );
    }
  }
  v13 = (_DWORD *)((char *)this + 36);
  v14 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
          v13,
          (int)v17);
  if ( v14 == v13 || *((_WORD *)v14 + 62) )
  {
    v15 = 0;
  }
  else
  {
    v15 = 1;
    *a3 = v14[28];
    *a4 = *((unsigned __int16 *)v14 + 69) | (*((unsigned __int16 *)v14 + 70) << 16);
  }
  if ( p != v17 && p )
    VoxFree(p);
  return v15;
}


// ===== 8955a4 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>>,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry> const&) =====
int *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(
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
      if ( !vox::StringComp::operator()((int)(a2 + 5), (int)(v4 + 4), a4) )
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
      if ( !vox::StringComp::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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
      if ( !vox::StringComp::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::_M_insert(
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


// ===== 895aa8 std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SZipFileEntry,vox::StringComp,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SZipFileEntry,vox::StringComp,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  const void *v5; // r8
  _DWORD *v6; // r7
  signed int v7; // r6
  const void *v8; // r3
  int v9; // r5
  size_t v10; // r2
  int v11; // r0
  _DWORD *v12; // r3
  const void *v13; // r3
  const void *v14; // r1
  int v15; // r5
  int v16; // r6
  size_t v17; // r2
  int v18; // r0
  bool v19; // zf
  bool v20; // nf
  _DWORD *v21; // r0
  _BYTE *v23; // r2
  _BYTE *v24; // r1
  int v25; // r4
  _DWORD *v26; // [sp+Ch] [bp-100h] BYREF
  int v27; // [sp+10h] [bp-FCh] BYREF
  void *v28[5]; // [sp+14h] [bp-F8h] BYREF
  void *p; // [sp+28h] [bp-E4h]
  _BYTE v30[108]; // [sp+2Ch] [bp-E0h] BYREF
  int v31[27]; // [sp+98h] [bp-74h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v5 = *(const void **)(a2 + 20);
    v6 = a1;
    v7 = *(_DWORD *)(a2 + 16) - (_DWORD)v5;
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      if ( v7 >= v9 )
        v10 = v2[8] - (_DWORD)v8;
      else
        v10 = v7;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_9:
          v12 = (_DWORD *)v2[2];
          if ( !v12 )
            goto LABEL_13;
          goto LABEL_10;
        }
      }
      else if ( v9 >= v7 )
      {
        goto LABEL_9;
      }
      v12 = (_DWORD *)v2[3];
      v2 = v6;
      if ( !v12 )
        goto LABEL_13;
LABEL_10:
      v6 = v2;
      v2 = v12;
    }
  }
  v2 = a1;
LABEL_13:
  if ( a1 != v2 )
  {
    v13 = *(const void **)(a2 + 20);
    v14 = (const void *)v2[9];
    v15 = *(_DWORD *)(a2 + 16) - (_DWORD)v13;
    v16 = v2[8] - (_DWORD)v14;
    if ( v16 >= v15 )
      v17 = *(_DWORD *)(a2 + 16) - (_DWORD)v13;
    else
      v17 = v2[8] - (_DWORD)v14;
    v18 = memcmp(v13, v14, v17);
    v19 = v18 == 0;
    v20 = v18 < 0;
    v21 = v2;
    if ( v19 )
    {
      if ( v15 >= v16 )
        return v21 + 10;
    }
    else if ( !v20 )
    {
      return v21 + 10;
    }
  }
  LC_API_MEMSET_0(v31, 0, 0x6Au);
  vox::SZipFileEntry::SZipFileEntry((vox::SZipFileEntry *)v31);
  v23 = *(_BYTE **)(a2 + 16);
  v24 = *(_BYTE **)(a2 + 20);
  v28[4] = v28;
  p = v28;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v28,
    v24,
    v23);
  vox::SZipFileEntry::SZipFileEntry((int)v30, v31);
  v26 = v2;
  std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::StringComp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::insert_unique(
    &v27,
    a1,
    (int *)&v26,
    (int)v28);
  v25 = v27;
  vox::SZipFileEntry::~SZipFileEntry((vox::SZipFileEntry *)v30);
  if ( p != v28 && p )
    VoxFree(p);
  vox::SZipFileEntry::~SZipFileEntry((vox::SZipFileEntry *)v31);
  v21 = (_DWORD *)v25;
  return v21 + 10;
}


// ===== 895c64 vox::CZipReader::scanLocalHeader(void) =====
int __fastcall vox::CZipReader::scanLocalHeader(vox::CZipReader *this)
{
  int v2; // r3
  int v3; // r4
  bool v4; // zf
  size_t v6; // r0
  int v7; // r0
  int v8; // r3
  _DWORD *v9; // r0
  char v10[1024]; // [sp+0h] [bp-474h] BYREF
  int v11[6]; // [sp+400h] [bp-74h] BYREF
  int v12; // [sp+418h] [bp-5Ch] BYREF
  int v13; // [sp+448h] [bp-2Ch]
  int v14; // [sp+44Ch] [bp-28h] BYREF
  int v15; // [sp+450h] [bp-24h]
  int v16; // [sp+454h] [bp-20h]
  int v17; // [sp+458h] [bp-1Ch] BYREF
  int v18; // [sp+45Ch] [bp-18h]
  int v19; // [sp+460h] [bp-14h]
  int v20; // [sp+464h] [bp-10h]
  __int16 v21; // [sp+468h] [bp-Ch]

  vox::SZipFileEntry::SZipFileEntry((vox::SZipFileEntry *)v11);
  v2 = *((_DWORD *)this + 1);
  v3 = 0;
  v21 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  (*(void (__fastcall **)(int, int *, int, int))(*(_DWORD *)v2 + 8))(v2, &v14, 30, 1);
  v4 = v14 == 134630737;
  if ( v14 != 134630737 )
    v4 = v14 == 67324752;
  if ( v4 )
  {
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::reserve(
      v11,
      SHIWORD(v20) + 2,
      (int)v11);
    (*(void (__fastcall **)(_DWORD, char *, _DWORD, int))(**((_DWORD **)this + 1) + 8))(
      *((_DWORD *)this + 1),
      v10,
      SHIWORD(v20),
      1);
    v10[SHIWORD(v20)] = 0;
    v6 = LC_API_STRLEN_0(v10);
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      v11,
      v10,
      &v10[v6]);
    vox::CZipReader::extractFilename(this, (vox::SZipFileEntry *)v11);
    if ( v21 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), v21, 1);
      if ( (v15 & 0x80000) == 0 )
        goto LABEL_7;
    }
    else if ( (v15 & 0x80000) == 0 )
    {
LABEL_7:
      v3 = 1;
      v7 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 16))(*((_DWORD *)this + 1));
      v8 = *((_DWORD *)this + 1);
      v13 = v7;
      (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v8 + 12))(v8, HIWORD(v18) | ((unsigned __int16)v19 << 16), 1);
      v9 = std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::SZipFileEntry,vox::StringComp,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,vox::SZipFileEntry>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
             (_DWORD *)this + 9,
             (int)&v12);
      vox::SZipFileEntry::operator=((int)v9, (int)v11);
      goto LABEL_4;
    }
    (*(void (__fastcall **)(_DWORD, char *, int, int))(**((_DWORD **)this + 1) + 8))(
      *((_DWORD *)this + 1),
      (char *)&v17 + 2,
      12,
      1);
    goto LABEL_7;
  }
LABEL_4:
  vox::SZipFileEntry::~SZipFileEntry((vox::SZipFileEntry *)v11);
  return v3;
}


// ===== 895e80 vox::CZipReader::CZipReader(char const*,bool,bool) =====
vox::CZipReader *__fastcall vox::CZipReader::CZipReader(vox::CZipReader *this, char *a2, bool a3, bool a4)
{
  _DWORD *v6; // r5
  vox::FileSystemInterface *v9; // r0
  int Instance; // r0
  int v11; // r0
  size_t v12; // r0

  *(_DWORD *)this = off_993D90;
  v6 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block((_DWORD *)this + 2, 0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 32) = a3;
  *((_BYTE *)this + 33) = a4;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 12) = (char *)this + 36;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 11) = (char *)this + 36;
  Instance = vox::FileSystemInterface::GetInstance(v9);
  if ( Instance )
  {
    v11 = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)Instance + 8))(Instance, a2, 6);
    *((_DWORD *)this + 1) = v11;
  }
  else
  {
    v11 = *((_DWORD *)this + 1);
  }
  if ( v11 )
  {
    v12 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(v6, a2, &a2[v12]);
    while ( vox::CZipReader::scanLocalHeader(this) )
      ;
  }
  return this;
}


// ===== 895f5c vox::CZipReader::CZipReader(char const*,bool,bool) =====
vox::CZipReader *__fastcall vox::CZipReader::CZipReader(vox::CZipReader *this, char *a2, bool a3, bool a4)
{
  _DWORD *v6; // r5
  vox::FileSystemInterface *v9; // r0
  int Instance; // r0
  int v11; // r0
  size_t v12; // r0

  *(_DWORD *)this = off_993D90;
  v6 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block((_DWORD *)this + 2, 0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 32) = a3;
  *((_BYTE *)this + 33) = a4;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 12) = (char *)this + 36;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 11) = (char *)this + 36;
  Instance = vox::FileSystemInterface::GetInstance(v9);
  if ( Instance )
  {
    v11 = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)Instance + 8))(Instance, a2, 6);
    *((_DWORD *)this + 1) = v11;
  }
  else
  {
    v11 = *((_DWORD *)this + 1);
  }
  if ( v11 )
  {
    v12 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(v6, a2, &a2[v12]);
    while ( vox::CZipReader::scanLocalHeader(this) )
      ;
  }
  return this;
}


// ===== 896038 AdpcmState::AdpcmState(void) =====
void __fastcall AdpcmState::AdpcmState(AdpcmState *this)
{
  *((_BYTE *)this + 2) = 0;
  *(_WORD *)this = -1;
}


// ===== 89604c AdpcmState::AdpcmState(void) =====
void __fastcall AdpcmState::AdpcmState(AdpcmState *this)
{
  *((_BYTE *)this + 2) = 0;
  *(_WORD *)this = -1;
}


// ===== 896060 AdpcmState::~AdpcmState() =====
void __fastcall AdpcmState::~AdpcmState(AdpcmState *this)
{
  ;
}


// ===== 896064 AdpcmState::~AdpcmState() =====
void __fastcall AdpcmState::~AdpcmState(AdpcmState *this)
{
  ;
}


// ===== 896068 vox::VoxMSWavSubDecoder::GoToNextDataChunk(void) =====
_DWORD *__fastcall vox::VoxMSWavSubDecoder::GoToNextDataChunk(_DWORD *this)
{
  int v1; // r1
  _DWORD *v2; // r4
  int v3; // r3
  int v4; // r2
  _DWORD *v5; // r2

  v1 = *(this + 2);
  v2 = this;
  if ( v1 )
  {
    v3 = *(this + 1);
    if ( v3 )
    {
      v4 = *(this + 3);
      if ( v4 )
      {
        v5 = *(_DWORD **)(v4 + 8);
        if ( !v5 )
        {
          *(this + 3) = 0;
          *(_DWORD *)(v1 + 40) = 0;
          return this;
        }
        *(this + 3) = v5;
      }
      else
      {
        v5 = *(_DWORD **)(v1 + 56);
        *(this + 3) = v5;
      }
      this = (_DWORD *)(*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v3 + 16))(v3, *v5 + 8, 0);
      *(_DWORD *)(v2[2] + 40) = *(_DWORD *)(v2[3] + 4);
      v2[8] = 0;
    }
  }
  return this;
}


// ===== 8960f4 crc32mpc =====
int __fastcall crc32mpc(int a1, int a2)
{
  int v2; // r4
  unsigned int v3; // r2
  int i; // r12
  unsigned int v5; // r2
  int j; // r3
  char v7; // r12

  v2 = crc_table_computed[0];
  if ( !crc_table_computed[0] )
  {
    do
    {
      v3 = v2;
      for ( i = 0; i != 8; ++i )
      {
        if ( (v3 & 1) != 0 )
          v3 = (v3 >> 1) ^ 0xEDB88320;
        else
          v3 >>= 1;
      }
      crc_table_0[v2++] = v3;
    }
    while ( v2 != 256 );
    crc_table_computed[0] = 1;
  }
  if ( a2 > 0 )
  {
    v5 = -1;
    for ( j = 0; j != a2; ++j )
    {
      v7 = *(_BYTE *)(a1 + j);
      v5 = crc_table_computed[(unsigned __int8)(v5 ^ v7) + 1] ^ (v5 >> 8);
    }
  }
  else
  {
    v5 = -1;
  }
  return ~v5;
}


// ===== 8961a4 mpc_bits_read_1 =====
int __fastcall mpc_bits_read_1(_DWORD *a1, unsigned int a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r3
  unsigned __int8 *v5; // r2
  int v6; // r0

  v2 = a1[1] - a2;
  v3 = -(v2 >> 3);
  v4 = v2 & 7;
  v5 = (unsigned __int8 *)(*a1 + v3);
  *a1 = v5;
  a1[1] = v4;
  v6 = (*v5 | (*(v5 - 1) << 8)) >> v4;
  if ( a2 > 16 - v4 )
  {
    v6 |= (unsigned int)((*(v5 - 2) << 16) | (*(v5 - 3) << 24)) >> v4;
    if ( a2 > 0x18 )
    {
      if ( v4 )
        v6 |= *(v5 - 4) << (32 - v4);
    }
  }
  return v6 & ~(-1 << a2);
}


// ===== 896220 mpc_bits_golomb_dec =====
int __fastcall mpc_bits_golomb_dec(unsigned __int8 **a1, unsigned int a2)
{
  int v2; // r12
  unsigned __int8 *v3; // r2
  unsigned int v5; // r4
  unsigned int v6; // r12
  int v7; // r6
  unsigned int v8; // r0
  unsigned int v9; // r2
  unsigned __int8 *v10; // r5
  unsigned __int8 *v11; // r2
  unsigned __int8 *v12; // r12

  v2 = (int)a1[1];
  v3 = *a1;
  v5 = ((1 << v2) - 1) & **a1;
  if ( v5 )
  {
    v6 = v2 - 1;
    v7 = 1 << v6;
    v8 = 0;
  }
  else
  {
    v8 = 0;
    do
    {
      *a1 = ++v3;
      v5 = *v3;
      v8 += v2;
      a1[1] = (unsigned __int8 *)byte_8;
      v2 = 8;
    }
    while ( !v5 );
    v7 = 128;
    v6 = 7;
  }
  if ( (v7 & v5) == 0 )
  {
    v9 = v6;
    do
      --v9;
    while ( (v5 & (1 << v9)) == 0 );
    a1[1] = (unsigned __int8 *)(v9 + 1);
    v8 = v8 + v6 - v9;
    v6 = v9;
  }
  a1[1] = (unsigned __int8 *)v6;
  if ( v6 < a2 )
  {
    v10 = *a1;
    v11 = (unsigned __int8 *)v6;
    do
    {
      v11 += 8;
      *a1 = ++v10;
      a1[1] = v11;
      v6 = (unsigned int)v11;
      v5 = *v10 | (v5 << 8);
    }
    while ( a2 > (unsigned int)v11 );
  }
  v12 = (unsigned __int8 *)(v6 - a2);
  a1[1] = v12;
  return ~(-1 << a2) & (v5 >> (char)v12) | (v8 << a2);
}


// ===== 89630c mpc_bits_log_dec =====
unsigned int __fastcall mpc_bits_log_dec(_DWORD *a1, int a2)
{
  int v2; // r5
  unsigned int v3; // r1
  unsigned int v5; // r4
  unsigned int v6; // r5

  v2 = a2 - 1;
  v3 = *((unsigned __int8 *)&log2 + a2 - 1);
  if ( v3 > 1 )
    v5 = mpc_bits_read_1(a1, v3 - 1);
  else
    v5 = 0;
  v6 = *((unsigned __int8 *)&log2 + v2 + 32);
  if ( v5 >= v6 )
    return (mpc_bits_read_1(a1, 1u) | (2 * v5)) - v6;
  return v5;
}


// ===== 896378 mpc_bits_get_size =====
int __fastcall mpc_bits_get_size(_DWORD *a1, unsigned __int64 *a2)
{
  int v3; // r8
  unsigned __int64 v4; // r6
  char v5; // r0

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = mpc_bits_read_1(a1, 8u);
    v4 = v5 & 0x7F | (v4 << 7);
    ++v3;
  }
  while ( v5 < 0 );
  *a2 = v4;
  return v3;
}


// ===== 8963f0 mpc_bits_get_block =====
int __fastcall mpc_bits_get_block(_DWORD *a1, int a2)
{
  int size; // r0
  unsigned __int64 v5; // r2
  int result; // r0

  *(_QWORD *)(a2 + 8) = 0;
  *(_BYTE *)a2 = mpc_bits_read_1(a1, 8u);
  *(_BYTE *)(a2 + 1) = mpc_bits_read_1(a1, 8u);
  size = mpc_bits_get_size(a1, (unsigned __int64 *)(a2 + 8));
  v5 = *(_QWORD *)(a2 + 8);
  result = size + 2;
  if ( result <= v5 )
    *(_QWORD *)(a2 + 8) = v5 - result;
  return result;
}


// ===== 896470 mpc_bits_read_2 =====
int __fastcall mpc_bits_read_2(_DWORD *a1, unsigned int a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r3
  unsigned __int8 *v5; // r2
  int v6; // r0

  v2 = a1[1] - a2;
  v3 = -(v2 >> 3);
  v4 = v2 & 7;
  v5 = (unsigned __int8 *)(*a1 + v3);
  *a1 = v5;
  a1[1] = v4;
  v6 = (*v5 | (*(v5 - 1) << 8)) >> v4;
  if ( a2 > 16 - v4 )
  {
    v6 |= (unsigned int)((*(v5 - 2) << 16) | (*(v5 - 3) << 24)) >> v4;
    if ( a2 > 0x18 )
    {
      if ( v4 )
        v6 |= *(v5 - 4) << (32 - v4);
    }
  }
  return v6 & ~(-1 << a2);
}


// ===== 8964ec mpc_bits_can_dec =====
int __fastcall mpc_bits_can_dec(unsigned __int8 **a1, _DWORD *a2)
{
  int v2; // r3
  unsigned __int8 *v3; // r2
  unsigned int v4; // r5
  int v5; // r12
  int v6; // r6
  unsigned __int16 *v7; // r12
  unsigned int v8; // t1
  int v10; // r2

  v2 = (int)*a1;
  v3 = a1[1];
  v4 = (unsigned __int16)(((*a1)[2] | (**a1 << 16) | ((*a1)[1] << 8)) >> (char)v3);
  v5 = (v4 >> 10) + 4;
  v6 = *((unsigned __int8 *)a2 + 2 * v5 + 1);
  if ( *((_BYTE *)a2 + 2 * v5) )
  {
    v10 = (int)&v3[-*((unsigned __int8 *)a2 + 2 * v5)];
    a1[1] = (unsigned __int8 *)(v10 & 7);
    *a1 = (unsigned __int8 *)(v2 - (v10 >> 3));
    return (char)v6;
  }
  else
  {
    v7 = (unsigned __int16 *)(*a2 + 4 * v6);
    if ( *v7 > v4 )
    {
      do
      {
        v8 = v7[2];
        v7 += 2;
      }
      while ( v8 > v4 );
    }
    *a1 = (unsigned __int8 *)(v2 - ((int)&v3[-*((unsigned __int8 *)v7 + 2)] >> 3));
    a1[1] = (unsigned __int8 *)(((_BYTE)v3 - *((_BYTE *)v7 + 2)) & 7);
    return *(char *)(a2[1] + (unsigned __int8)(*((_BYTE *)v7 + 3) - ((int)v4 >> (16 - *((_BYTE *)v7 + 2)))));
  }
}


// ===== 8965b4 mpc_bits_enum_dec =====
int __fastcall mpc_bits_enum_dec(_DWORD *a1, int a2, int a3)
{
  char v4; // r6
  int v5; // r9
  int v6; // r4
  char *v8; // r8
  unsigned int v9; // r7
  unsigned int v10; // r5
  int v11; // r10
  int result; // r0
  unsigned int v13; // r3

  v4 = a3 - 1;
  v5 = a3 - 1 + 32 * (a2 - 1);
  v6 = a2;
  v8 = (char *)&Cnk + 128 * a2 - 128;
  v9 = mpc_bits_read_2(a1, Cnk_len[v5] - 1);
  v10 = Cnk_lost[v5];
  if ( v9 >= v10 )
    v9 = (mpc_bits_read_2(a1, 1u) | (2 * v9)) - v10;
  v11 = 4 * (a3 + 0x3FFFFFFF);
  result = 0;
  while ( 1 )
  {
    v13 = *(_DWORD *)&v8[v11];
    v11 -= 4;
    if ( v9 >= v13 )
    {
      --v6;
      result |= 1 << v4;
      v9 -= v13;
      v8 -= 128;
    }
    if ( !v6 )
      break;
    --v4;
  }
  return result;
}


// ===== 896678 mpc_decoder_set_streaminfo =====
int __fastcall mpc_decoder_set_streaminfo(unsigned __int64 a1)
{
  int v1; // r4

  v1 = a1;
  *(_DWORD *)a1 = *(_DWORD *)(HIDWORD(a1) + 8);
  *(_QWORD *)(a1 + 4) = *(_QWORD *)(HIDWORD(a1) + 24);
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(HIDWORD(a1) + 4);
  *(_DWORD *)(a1 + 32) = *(_DWORD *)(HIDWORD(a1) + 64) + 481;
  if ( *(_DWORD *)(HIDWORD(a1) + 8) == 7 && *(_DWORD *)(HIDWORD(a1) + 48) )
  {
    a1 = (*(_QWORD *)(HIDWORD(a1) + 56) + 1151LL) / 0x480uLL;
    *(_QWORD *)(v1 + 16) = 1152 * a1;
  }
  else
  {
    *(_QWORD *)(a1 + 16) = *(_QWORD *)(HIDWORD(a1) + 56);
  }
  return a1;
}


// ===== 896708 mpc_decoder_read_bitstream_sv8 =====
unsigned __int16 *__fastcall mpc_decoder_read_bitstream_sv8(_DWORD *a1, unsigned __int8 **a2, int a3)
{
  int v6; // r6
  signed int v7; // r3
  int v8; // r6
  signed int v9; // r0
  signed int v10; // r2
  _DWORD *v11; // r3
  unsigned __int16 *result; // r0
  int *v13; // r6
  int v14; // r7
  int v15; // r8
  int v16; // r8
  int v17; // r0
  int v18; // r3
  char v19; // r8
  int v20; // r2
  bool v21; // zf
  int v22; // r3
  _DWORD *v23; // r11
  int *v24; // r9
  _DWORD *v25; // r8
  int v26; // r3
  int v27; // r7
  _BYTE *v28; // r5
  int v29; // r0
  _DWORD *v30; // r6
  int j; // r5
  int v32; // r0
  _DWORD *v33; // r5
  int v34; // r3
  _WORD *k; // r6
  int v36; // r10
  _WORD *v37; // r7
  _DWORD *v38; // r10
  unsigned __int8 v39; // r0
  _WORD *v40; // r7
  unsigned int v41; // r8
  _DWORD *v42; // r1
  int v43; // r3
  int v44; // r0
  __int16 v45; // r1
  __int16 v46; // r2
  _WORD *v47; // r10
  int v48; // r8
  _WORD *v49; // r7
  unsigned int v50; // r0
  unsigned int v51; // r6
  int v52; // r11
  int v53; // r1
  int v54; // r6
  int v55; // r3
  int v56; // r7
  unsigned int v57; // r10
  unsigned int v58; // r8
  int v59; // r3
  __int16 v60; // r0
  int m; // r7
  unsigned int v62; // r0
  int v63; // r7
  _WORD *v64; // r8
  char v65; // r9
  __int16 v66; // r5
  _BYTE *v67; // r3
  int v68; // r2
  int v69; // r6
  int v70; // r7
  int can_dec; // r0
  int v72; // r2
  _DWORD *v73; // r7
  _DWORD *v74; // r1
  int v75; // r0
  _DWORD *v76; // r1
  int v77; // r3
  int v78; // r3
  int v79; // r7
  _DWORD *v80; // r3
  int i; // r2
  signed int v82; // r0
  bool v83; // zf
  signed int v84; // r8
  unsigned int v85; // r0
  _DWORD *v86; // r3
  char *v87; // r1
  int v88; // r1
  _DWORD *v89; // [sp+4h] [bp-48h]
  _WORD *v90; // [sp+4h] [bp-48h]
  _WORD *v91; // [sp+Ch] [bp-40h]
  int v92; // [sp+10h] [bp-3Ch]
  int v93; // [sp+10h] [bp-3Ch]
  unsigned __int16 *v94; // [sp+14h] [bp-38h]
  _DWORD *v95; // [sp+18h] [bp-34h]
  signed int v96; // [sp+1Ch] [bp-30h]
  _DWORD *v97; // [sp+28h] [bp-24h]
  _UNKNOWN **v98; // [sp+3Ch] [bp-10h]
  _UNKNOWN **v99; // [sp+40h] [bp-Ch]
  unsigned __int8 v100; // [sp+44h] [bp-8h]

  if ( a3 == 1 )
  {
    v96 = mpc_bits_log_dec(a2, a1[1] + 1);
  }
  else
  {
    v6 = a1[9];
    v8 = mpc_bits_can_dec(a2, &mpc_can_Bands) + v6;
    if ( v8 > 32 )
      v7 = v8 - 33;
    v96 = v8;
    if ( v8 > 32 )
      v96 = v7;
  }
  a1[9] = v96;
  if ( v96 )
  {
    v69 = v96 - 1;
    v70 = v96 + 1355;
    a1[v96 + 1355] = mpc_bits_can_dec(a2, &mpc_can_Res);
    can_dec = mpc_bits_can_dec(a2, &mpc_can_Res);
    a1[v96 + 1387] = can_dec;
    v72 = a1[v70];
    if ( v72 > 15 )
      a1[v70] = v72 - 17;
    if ( can_dec > 15 )
      a1[v96 + 1387] = can_dec - 17;
    if ( v96 > 1 )
    {
      v73 = &a1[v96 + 1356];
      do
      {
        v74 = &mpc_can_Res;
        if ( (int)*(v73 - 1) > 2 )
          v74 = &off_99EDE0;
        v75 = mpc_bits_can_dec(a2, v74);
        v76 = &mpc_can_Res;
        v77 = v75 + *(v73 - 1);
        *(v73 - 2) = v77;
        if ( v77 > 15 )
          *(v73 - 2) = v77 - 17;
        if ( (int)v73[31] > 2 )
          v76 = &off_99EDE0;
        v78 = mpc_bits_can_dec(a2, v76) + v73[31];
        v73[30] = v78;
        if ( v78 > 15 )
          v73[30] = v78 - 17;
        --v73;
      }
      while ( v73 != a1 + 1357 );
    }
    if ( a1[2] )
    {
      if ( v96 > 0 )
      {
        v79 = 0;
        v80 = a1 + 1356;
        for ( i = 0; i != v96; ++i )
        {
          if ( *v80 || v80[32] )
            ++v79;
          ++v80;
        }
      }
      else
      {
        v79 = 0;
      }
      v82 = mpc_bits_log_dec(a2, v79);
      v83 = v82 == v79;
      if ( v82 != v79 )
        v83 = v82 == 0;
      v84 = v82;
      if ( v83 )
      {
        v85 = 0;
      }
      else
      {
        v88 = v79 - v82;
        if ( v79 - v82 >= v82 )
          v88 = v82;
        v85 = mpc_bits_enum_dec(a2, v88, v79);
      }
      if ( v79 < 2 * v84 )
        v85 = ~v85;
      if ( v69 >= 0 )
      {
        v86 = &a1[v96 + 1356];
        do
        {
          v87 = (char *)a1 + v69--;
          if ( *(v86 - 1) || v86[31] )
          {
            v87[6000] = v85 & 1;
            v85 >>= 1;
          }
          --v86;
        }
        while ( v69 != -1 );
      }
    }
  }
  v9 = a1[1];
  v10 = v96;
  if ( v96 <= v9 )
  {
    v11 = &a1[v96 + 1388];
    do
    {
      ++v10;
      *v11 = 0;
      *(v11 - 32) = 0;
      ++v11;
    }
    while ( v10 <= v9 );
  }
  if ( a3 == 1 )
  {
    v67 = a1 + 1428;
    v68 = 0;
    do
    {
      ++v68;
      *v67 = 1;
      *(v67 - 32) = 1;
      ++v67;
    }
    while ( v68 != 32 );
  }
  result = (unsigned __int16 *)v96;
  v99 = &off_99EB38;
  v98 = &mpc_can_SCFI;
  if ( v96 > 0 )
  {
    v13 = a1 + 1468;
    v14 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v15 = *(v13 - 112) ? 0 : -1;
        if ( !*(v13 - 80) )
          break;
        v16 = v15 + 1;
LABEL_22:
        v17 = mpc_bits_can_dec(a2, (&v98)[v16]);
        v18 = *(v13 - 112);
        v19 = 2 * v16;
        v20 = v17 & 3;
        v21 = v18 == 0;
        if ( v18 )
          v17 >>= v19;
        v22 = *(v13 - 80);
        if ( !v21 )
          *(v13 - 32) = v17;
        ++v14;
        if ( v22 )
          *v13 = v20;
        ++v13;
        if ( v14 == v96 )
        {
LABEL_29:
          v94 = (unsigned __int16 *)(a1 + 1356);
          v92 = 0;
          v89 = a1 + 12;
          v23 = a1 + 108;
          v24 = a1 + 1356;
          v95 = a1;
          do
          {
            v25 = v89;
            v26 = *v24;
            v27 = v24[80];
            v28 = (char *)v95 + v92 + 5680;
            while ( 1 )
            {
              if ( v26 )
              {
                if ( *v28 == 1 )
                {
                  *v25 = mpc_bits_read_2(a2, 7u) - 6;
                  *v28 = 0;
                }
                else
                {
                  v29 = mpc_bits_can_dec(a2, &off_99EC48);
                  if ( v29 == 64 )
                    LOBYTE(v29) = mpc_bits_read_2(a2, 6u) + 64;
                  *v25 = (((unsigned __int8)v25[2] - 25 + (_BYTE)v29) & 0x7F) - 6;
                }
                v30 = v25;
                for ( j = 0; j != 2; ++j )
                {
                  while ( ((v27 << j) & 2) != 0 )
                  {
                    ++j;
                    v30[1] = *v30;
                    ++v30;
                    if ( j == 2 )
                      goto LABEL_42;
                  }
                  v32 = mpc_bits_can_dec(a2, &mpc_can_DSCF);
                  if ( v32 == 31 )
                    LOBYTE(v32) = mpc_bits_read_2(a2, 6u) + 64;
                  v30[1] = (((unsigned __int8)*v30 - 25 + (_BYTE)v32) & 0x7F) - 6;
                  ++v30;
                }
              }
LABEL_42:
              v26 = v24[32];
              v27 = v24[112];
              if ( v25 != v89 || !v23 )
                break;
              v28 = (char *)v95 + v92 + 5712;
              v25 = v23;
            }
            v21 = ++v92 == v96;
            ++v24;
            v89 += 3;
            v23 += 3;
          }
          while ( !v21 );
          v33 = v95;
          v93 = 0;
LABEL_51:
          v34 = *v94;
          v90 = &v33[36 * v93 + 204];
          v91 = &v33[36 * v93 + 222];
          for ( k = v90; ; k = v91 )
          {
            if ( !v34 )
              goto LABEL_59;
            v36 = (__int16)v34;
            if ( (__int16)v34 == 2 )
            {
              v40 = k;
              v41 = 6;
              v42 = &off_99F000;
              v98 = &mpc_can_Q;
              v99 = &off_99F000;
              while ( 1 )
              {
                v44 = mpc_bits_can_dec(a2, v42);
                v45 = *((char *)&idx50_2938 + v44 + 256);
                v46 = *((char *)&idx50_2938 + v44 + 128);
                *v40 = *((char *)&idx50_2938 + v44);
                v40[2] = v45;
                v40[1] = v46;
                v40 += 3;
                if ( v40 == k + 36 )
                  break;
                v41 = *((char *)&idx50_2938 + v44 + 384) + (v41 >> 1);
                v43 = v41 > 3;
                v42 = (&v98)[v43];
              }
              goto LABEL_59;
            }
            if ( (__int16)v34 == 1 )
              break;
            if ( (__int16)v34 == -1 )
            {
              for ( m = 0; m != 36; ++m )
              {
                v62 = mpc_random_int(v33);
                k[m] = (unsigned __int8)v62 + HIBYTE(v62) - 510 + BYTE2(v62) + BYTE1(v62);
              }
            }
            else if ( (__int16)v34 > 4 )
            {
              if ( (__int16)v34 > 8 )
              {
                v63 = 0;
                v64 = (_WORD *)((char *)&_Dc + 2 * (__int16)v34 + 2);
                v65 = v34 - 9;
                v97 = v33;
                do
                {
                  v66 = (unsigned __int8)mpc_bits_can_dec(a2, &mpc_can_Q9up);
                  k[v63] = v66;
                  if ( v36 != 9 )
                  {
                    v66 = mpc_bits_read_2(a2, v36 - 9) | (v66 << v65);
                    k[v63] = v66;
                  }
                  k[v63++] = v66 - *v64;
                }
                while ( v63 != 36 );
                v33 = v97;
              }
              else
              {
                v55 = 272 * (__int16)v34;
                v56 = 0;
                v57 = *((_DWORD *)&idx50_2938 + v36 + 128);
                v98 = (_UNKNOWN **)((char *)&mpc_can_Q + v55 - 816);
                v99 = (_UNKNOWN **)((char *)&mpc_can_Q + v55 - 680);
                v58 = 2 * v57;
                do
                {
                  v59 = v58 > v57;
                  v60 = mpc_bits_can_dec(a2, (&v98)[v59]);
                  k[v56++] = v60;
                  v58 = abs16(v60) + (v58 >> 1);
                }
                while ( v56 != 36 );
              }
            }
            else
            {
              v37 = k;
              v38 = &mpc_can_Q + 34 * (__int16)v34 - 34;
              do
              {
                v39 = mpc_bits_can_dec(a2, v38);
                *v37 = (__int16)(v39 << 12) >> 12;
                v100 = v39;
                v37[1] = (char)v39 >> 4;
                v37 += 2;
              }
              while ( v37 != k + 36 );
            }
LABEL_59:
            result = v94;
            v34 = *((_DWORD *)v94 + 32);
            if ( k != v90 )
            {
              v21 = ++v93 == v96;
              v94 += 2;
              if ( v21 )
                return result;
              goto LABEL_51;
            }
            v34 = (unsigned __int16)v34;
          }
          v47 = k;
          v48 = 0;
          v49 = k;
LABEL_70:
          v50 = mpc_bits_can_dec(a2, &mpc_can_Q1);
          v51 = v50;
          if ( v50 - 1 <= 0x10 )
          {
            if ( v50 > 9 )
              v53 = 18 - v50;
            else
              v53 = v50;
            v52 = mpc_bits_enum_dec(a2, v53, 18);
          }
          else
          {
            v52 = 0;
          }
          if ( v51 > 9 )
            v52 = ~v52;
          v54 = 0;
          while ( 1 )
          {
            v47[v54] = 0;
            if ( (v52 & 0x20000) != 0 )
            {
              v47[v54++] = 2 * mpc_bits_read_2(a2, 1u) - 1;
              if ( v54 == 18 )
              {
LABEL_81:
                v48 += 18;
                v47 += 18;
                if ( v48 == 36 )
                {
                  k = v49;
                  goto LABEL_59;
                }
                goto LABEL_70;
              }
            }
            else if ( ++v54 == 18 )
            {
              goto LABEL_81;
            }
            v52 *= 2;
          }
        }
      }
      if ( v15 != -1 )
      {
        v16 = *(v13 - 80);
        goto LABEL_22;
      }
      ++v14;
      ++v13;
      if ( v14 == v96 )
        goto LABEL_29;
    }
  }
  return result;
}


// ===== 897050 mpc_decoder_exit =====
// attributes: thunk
void mpc_decoder_exit(void *p)
{
  VoxFree_c(p);
}


// ===== 897054 mpc_decoder_reset_scf =====
void *__fastcall mpc_decoder_reset_scf(int a1, int a2)
{
  LC_API_MEMSET_0((void *)(a1 + 48), a2, 0x180u);
  return LC_API_MEMSET_0((void *)(a1 + 432), a2, 0x180u);
}


// ===== 897080 mpc_decoder_setup =====
double __fastcall mpc_decoder_setup(_DWORD *a1)
{
  LC_API_MEMSET_0(a1, 0, 0xA590u);
  a1[11] = 1;
  a1[10] = 1;
  return mpc_decoder_init_quant((int)a1, 1.0);
}


// ===== 8970b8 mpc_decoder_init =====
_DWORD *__fastcall mpc_decoder_init(unsigned int a1)
{
  _DWORD *v2; // r0
  _DWORD *v3; // r5

  v2 = VoxAlloc_c(
         0xA590u,
         "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\mpc\\mpc_decoder.c",
         "mpc_decoder_init",
         0x81u);
  v3 = v2;
  if ( v2 )
  {
    mpc_decoder_setup(v2);
    mpc_decoder_set_streaminfo(__PAIR64__(a1, (unsigned int)v3));
    huff_init_lut(6);
  }
  return v3;
}


// ===== 897110 mpc_decoder_read_bitstream_sv7 =====
int __fastcall mpc_decoder_read_bitstream_sv7(int a1, unsigned __int8 **a2)
{
  int v3; // r6
  int result; // r0
  bool v5; // zf
  int *v6; // r7
  int v7; // r8
  unsigned __int8 *v8; // r2
  unsigned __int8 *v9; // r1
  unsigned int v10; // r3
  char *v11; // r0
  int v12; // r12
  int v13; // r0
  int v14; // r0
  unsigned int v15; // r9
  char *v16; // r0
  unsigned int v17; // t1
  unsigned int v18; // r1
  int v19; // r0
  unsigned __int8 *v20; // r2
  unsigned __int8 *v21; // r1
  unsigned int v22; // r3
  char *v23; // r0
  int v24; // r9
  int v25; // r0
  int v26; // r0
  unsigned int v27; // r9
  char *v28; // r0
  unsigned int v29; // t1
  unsigned int v30; // r1
  int v31; // r3
  _DWORD *v33; // r3
  int i; // r1
  unsigned __int8 *v35; // r2
  __int16 *v36; // r12
  unsigned int v37; // r7
  unsigned int v38; // t1
  unsigned __int8 *v39; // r2
  __int16 *v40; // r12
  unsigned int v41; // r7
  unsigned int v42; // t1
  int *v43; // r10
  int *v44; // r7
  int *v45; // r8
  int v46; // r3
  int v47; // r2
  int *j; // r6
  unsigned __int8 *v49; // r1
  unsigned __int8 *v50; // r3
  unsigned int v51; // r2
  char *v52; // r0
  int v53; // r9
  int v54; // r0
  int v55; // r0
  unsigned int v56; // r9
  char *v57; // r0
  unsigned int v58; // t1
  int *v59; // r11
  int *v60; // r9
  unsigned __int8 *v61; // r1
  unsigned __int8 *v62; // r3
  unsigned int v63; // r2
  char *v64; // r0
  int v65; // r9
  int v66; // r0
  int v67; // r0
  unsigned int v68; // r9
  char *v69; // r0
  unsigned int v70; // t1
  int v71; // r0
  unsigned __int8 *v72; // r0
  unsigned __int8 *v73; // r12
  unsigned int v74; // r1
  char *v75; // r3
  int v76; // r2
  int v77; // r3
  int v78; // r3
  char *v79; // r3
  unsigned int v80; // t1
  unsigned __int8 *v81; // r1
  unsigned __int8 *v82; // r3
  unsigned int v83; // r2
  char *v84; // r0
  int v85; // r9
  int v86; // r0
  int v87; // r0
  unsigned int v88; // r9
  char *v89; // r0
  unsigned int v90; // t1
  int v91; // r0
  unsigned __int8 *v92; // r2
  unsigned __int8 *v93; // r1
  unsigned int v94; // r3
  char *v95; // r0
  int v96; // r9
  int v97; // r0
  int v98; // r0
  unsigned int v99; // r9
  char *v100; // r0
  unsigned int v101; // t1
  unsigned __int8 *v102; // r1
  unsigned __int8 *v103; // r3
  unsigned int v104; // r2
  char *v105; // r0
  int v106; // r9
  int v107; // r0
  int v108; // r0
  unsigned int v109; // r9
  char *v110; // r0
  unsigned int v111; // t1
  int v112; // r0
  unsigned __int8 *v113; // r2
  unsigned __int8 *v114; // r1
  unsigned int v115; // r3
  char *v116; // r0
  int v117; // r9
  int v118; // r0
  int v119; // r0
  unsigned int v120; // r9
  char *v121; // r0
  unsigned int v122; // t1
  int v123; // r0
  unsigned int v124; // r1
  char *v125; // r3
  int v126; // r3
  unsigned int v127; // t1
  int v128; // r1
  unsigned __int8 *v129; // r2
  int v130; // r1
  unsigned __int8 *v131; // r2
  int v132; // r7
  _WORD *v133; // r5
  int v134; // r12
  int v135; // r1
  int v136; // r3
  int v137; // r3
  int v138; // r1
  int v139; // r3
  int v140; // r3
  int v141; // r0
  _WORD *v142; // r2
  _DWORD *v143; // r12
  _WORD *v144; // r10
  int v145; // r9
  unsigned __int8 *v146; // r1
  unsigned int v147; // r3
  char *v148; // r5
  int v149; // r6
  int v150; // r5
  int v151; // r5
  unsigned int v152; // r8
  int v153; // r5
  unsigned int v154; // t1
  int v155; // r3
  char *v156; // r3
  int v157; // r1
  int v158; // r3
  unsigned int v159; // r10
  _WORD *v160; // r8
  int m; // r7
  int v162; // r0
  int v163; // r1
  _DWORD *v164; // r8
  unsigned __int8 *v165; // r2
  unsigned int v166; // r3
  char *v167; // r12
  int v168; // r7
  int v169; // r12
  int v170; // r12
  unsigned int v171; // r10
  unsigned int v172; // t1
  int v173; // r0
  _WORD *v174; // r10
  _WORD *v175; // r9
  _WORD *v176; // r3
  unsigned __int8 *v177; // r1
  unsigned __int8 *v178; // r12
  unsigned int v179; // r2
  int v180; // r5
  int v181; // r7
  int v182; // r5
  int v183; // r5
  unsigned int v184; // r8
  int v185; // r5
  unsigned int v186; // t1
  int v187; // r2
  _DWORD *v188; // r2
  int v189; // r12
  int v190; // r1
  int v191; // r2
  int k; // r7
  unsigned int v193; // r0
  int v194; // r3
  int v195; // r0
  unsigned __int8 *v196; // r2
  int v197; // r0
  unsigned __int8 *v198; // r1
  int v199; // r12
  int v200; // [sp+4h] [bp-30h]
  unsigned int v201; // [sp+8h] [bp-2Ch]
  unsigned int v202; // [sp+8h] [bp-2Ch]
  _DWORD *v203; // [sp+Ch] [bp-28h]
  int v204; // [sp+10h] [bp-24h]
  int v205; // [sp+10h] [bp-24h]
  int v206; // [sp+14h] [bp-20h]
  _WORD *v207; // [sp+14h] [bp-20h]
  _WORD *v208; // [sp+1Ch] [bp-18h]
  _WORD *v209; // [sp+2Ch] [bp-8h]

  v3 = a1;
  *(_DWORD *)(a1 + 5424) = mpc_bits_read_2(a2, 4u);
  result = mpc_bits_read_2(a2, 4u);
  v5 = *(_DWORD *)(v3 + 5424) == 0;
  *(_DWORD *)(v3 + 5552) = result;
  if ( !v5 || result )
  {
    if ( *(_DWORD *)(v3 + 8) )
    {
      result = mpc_bits_read_2(a2, 1u);
      *(_BYTE *)(v3 + 6000) = result;
    }
    v200 = 1;
  }
  else
  {
    v200 = 0;
  }
  if ( *(int *)(v3 + 4) > 0 )
  {
    v6 = (int *)(v3 + 5556);
    v7 = 2;
    do
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v9);
      v11 = (char *)&mpc_HuffHdr + 2 * (v10 >> 10);
      v12 = (unsigned __int8)v11[4];
      v13 = (unsigned __int8)v11[5];
      if ( v12 )
      {
        v130 = (int)&v9[-v12];
        v131 = &v8[-(v130 >> 3)];
        a2[1] = (unsigned __int8 *)(v130 & 7);
        v18 = (char)v13;
        *a2 = v131;
        if ( (char)v13 != 4 )
          goto LABEL_12;
      }
      else
      {
        v14 = 4 * v13;
        v15 = *(unsigned __int16 *)((char *)mpc_HuffHdr + v14);
        v16 = (char *)mpc_HuffHdr + v14;
        if ( v15 > v10 )
        {
          do
          {
            v17 = *((unsigned __int16 *)v16 + 2);
            v16 += 4;
          }
          while ( v17 > v10 );
        }
        *a2 = &v8[-((int)&v9[-(unsigned __int8)v16[2]] >> 3)];
        a2[1] = (unsigned __int8 *)(((_BYTE)v9 - v16[2]) & 7);
        v18 = v16[3];
        if ( v18 != 4 )
        {
LABEL_12:
          v19 = v18 + *(v6 - 33);
          goto LABEL_13;
        }
      }
      v19 = mpc_bits_read_2(a2, v18);
LABEL_13:
      *(v6 - 32) = v19;
      v20 = *a2;
      v21 = a2[1];
      v22 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v21);
      v23 = (char *)&mpc_HuffHdr + 2 * (v22 >> 10);
      v24 = (unsigned __int8)v23[4];
      v25 = (unsigned __int8)v23[5];
      if ( v24 )
      {
        v128 = (int)&v21[-v24];
        v129 = &v20[-(v128 >> 3)];
        a2[1] = (unsigned __int8 *)(v128 & 7);
        v30 = (char)v25;
        *a2 = v129;
        if ( (char)v25 != 4 )
          goto LABEL_17;
      }
      else
      {
        v26 = 4 * v25;
        v27 = *(unsigned __int16 *)((char *)mpc_HuffHdr + v26);
        v28 = (char *)mpc_HuffHdr + v26;
        if ( v27 > v22 )
        {
          do
          {
            v29 = *((unsigned __int16 *)v28 + 2);
            v28 += 4;
          }
          while ( v29 > v22 );
        }
        *a2 = &v20[-((int)&v21[-(unsigned __int8)v28[2]] >> 3)];
        a2[1] = (unsigned __int8 *)(((_BYTE)v21 - v28[2]) & 7);
        v30 = v28[3];
        if ( v30 != 4 )
        {
LABEL_17:
          result = v30 + *(v6 - 1);
          goto LABEL_18;
        }
      }
      result = mpc_bits_read_2(a2, v30);
LABEL_18:
      v31 = *(v6 - 32);
      *v6 = result;
      if ( v31 || result )
      {
        if ( *(_DWORD *)(v3 + 8) )
        {
          result = mpc_bits_read_2(a2, 1u);
          *(_BYTE *)(v3 + v7 + 5999) = result;
        }
        v200 = v7;
      }
      ++v6;
    }
    while ( *(_DWORD *)(v3 + 4) >= v7++ );
  }
  if ( v200 > 0 )
  {
    v33 = (_DWORD *)(v3 + 5424);
    for ( i = 0; i != v200; ++i )
    {
      if ( *v33 )
      {
        v35 = a2[1];
        v36 = &mpc_table_HuffSCFI;
        v37 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v35);
        if ( (unsigned __int16)mpc_table_HuffSCFI > v37 )
        {
          do
          {
            v38 = (unsigned __int16)v36[2];
            v36 += 2;
          }
          while ( v38 > v37 );
        }
        *a2 -= (int)&v35[-*((unsigned __int8 *)v36 + 2)] >> 3;
        result = *((unsigned __int8 *)v36 + 2);
        a2[1] = (unsigned __int8 *)(((_BYTE)v35 - (_BYTE)result) & 7);
        v33[80] = *((char *)v36 + 3);
      }
      if ( v33[32] )
      {
        v39 = a2[1];
        v40 = &mpc_table_HuffSCFI;
        v41 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v39);
        if ( (unsigned __int16)mpc_table_HuffSCFI > v41 )
        {
          do
          {
            v42 = (unsigned __int16)v40[2];
            v40 += 2;
          }
          while ( v42 > v41 );
        }
        *a2 -= (int)&v39[-*((unsigned __int8 *)v40 + 2)] >> 3;
        result = *((unsigned __int8 *)v40 + 2);
        a2[1] = (unsigned __int8 *)(((_BYTE)v39 - (_BYTE)result) & 7);
        v33[112] = *((char *)v40 + 3);
      }
      ++v33;
    }
    v43 = (int *)(v3 + 48);
    v44 = (int *)(v3 + 5424);
    v204 = v3 + 48 + 12 * v200;
    v45 = (int *)(v3 + 432);
    v206 = v3;
    do
    {
      v46 = *v44;
      v47 = v44[80];
      for ( j = v43; ; j = v45 )
      {
        if ( v46 )
        {
          switch ( v47 )
          {
            case 0:
              v102 = *a2;
              v103 = a2[1];
              v104 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v103);
              v105 = (char *)&mpc_HuffDSCF + 2 * (v104 >> 10);
              v106 = (unsigned __int8)v105[4];
              v107 = (unsigned __int8)v105[5];
              if ( v106 )
              {
                v139 = (int)&v103[-v106];
                v107 = (char)v107;
                *a2 = &v102[-(v139 >> 3)];
                a2[1] = (unsigned __int8 *)(v139 & 7);
                if ( (char)v107 != 8 )
                  goto LABEL_82;
              }
              else
              {
                v108 = 4 * v107;
                v109 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v108);
                v110 = (char *)mpc_HuffDSCF + v108;
                if ( v109 > v104 )
                {
                  do
                  {
                    v111 = *((unsigned __int16 *)v110 + 2);
                    v110 += 4;
                  }
                  while ( v111 > v104 );
                }
                *a2 = &v102[-((int)&v103[-(unsigned __int8)v110[2]] >> 3)];
                a2[1] = (unsigned __int8 *)(((_BYTE)v103 - v110[2]) & 7);
                v107 = v110[3];
                if ( v107 != 8 )
                {
LABEL_82:
                  v59 = j + 2;
                  v112 = v107 + j[2];
                  goto LABEL_83;
                }
              }
              v112 = mpc_bits_read_2(a2, 6u);
              v59 = j + 2;
LABEL_83:
              *j = v112;
              v113 = *a2;
              v114 = a2[1];
              v115 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v114);
              v116 = (char *)&mpc_HuffDSCF + 2 * (v115 >> 10);
              v117 = (unsigned __int8)v116[4];
              v118 = (unsigned __int8)v116[5];
              if ( v117 )
              {
                v138 = (int)&v114[-v117];
                v118 = (char)v118;
                *a2 = &v113[-(v138 >> 3)];
                a2[1] = (unsigned __int8 *)(v138 & 7);
                v60 = j + 1;
                if ( (char)v118 != 8 )
                  goto LABEL_87;
              }
              else
              {
                v119 = 4 * v118;
                v120 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v119);
                v121 = (char *)mpc_HuffDSCF + v119;
                if ( v120 > v115 )
                {
                  do
                  {
                    v122 = *((unsigned __int16 *)v121 + 2);
                    v121 += 4;
                  }
                  while ( v122 > v115 );
                }
                v60 = j + 1;
                *a2 = &v113[-((int)&v114[-(unsigned __int8)v121[2]] >> 3)];
                a2[1] = (unsigned __int8 *)(((_BYTE)v114 - v121[2]) & 7);
                v118 = v121[3];
                if ( v118 != 8 )
                {
LABEL_87:
                  v123 = v118 + *j;
                  goto LABEL_88;
                }
              }
              v123 = mpc_bits_read_2(a2, 6u);
LABEL_88:
              *v60 = v123;
              v72 = *a2;
              v73 = a2[1];
              v124 = (unsigned __int16)((v72[2] | (*v72 << 16) | (v72[1] << 8)) >> (char)v73);
              v125 = (char *)&mpc_HuffDSCF + 2 * (v124 >> 10);
              v76 = (unsigned __int8)v125[4];
              v77 = (unsigned __int8)v125[5];
              if ( v76 )
              {
LABEL_105:
                v134 = (int)&v73[-v76];
                v77 = (char)v77;
                *a2 = &v72[-(v134 >> 3)];
                a2[1] = (unsigned __int8 *)(v134 & 7);
                if ( (char)v77 != 8 )
                  goto LABEL_56;
              }
              else
              {
                v126 = 4 * v77;
                v202 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v126);
                v79 = (char *)mpc_HuffDSCF + v126;
                if ( v202 > v124 )
                {
                  do
                  {
                    v127 = *((unsigned __int16 *)v79 + 2);
                    v79 += 4;
                  }
                  while ( v127 > v124 );
                }
LABEL_55:
                *a2 = &v72[-((int)&v73[-(unsigned __int8)v79[2]] >> 3)];
                a2[1] = (unsigned __int8 *)(((_BYTE)v73 - v79[2]) & 7);
                v77 = v79[3];
                if ( v77 != 8 )
                {
LABEL_56:
                  result = v77 + *v60;
                  goto LABEL_57;
                }
              }
              result = mpc_bits_read_2(a2, 6u);
LABEL_57:
              *v59 = result;
              goto LABEL_58;
            case 1:
              v81 = *a2;
              v82 = a2[1];
              v83 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v82);
              v84 = (char *)&mpc_HuffDSCF + 2 * (v83 >> 10);
              v85 = (unsigned __int8)v84[4];
              v86 = (unsigned __int8)v84[5];
              if ( v85 )
              {
                v140 = (int)&v82[-v85];
                v86 = (char)v86;
                *a2 = &v81[-(v140 >> 3)];
                a2[1] = (unsigned __int8 *)(v140 & 7);
                if ( (char)v86 != 8 )
                  goto LABEL_71;
              }
              else
              {
                v87 = 4 * v86;
                v88 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v87);
                v89 = (char *)mpc_HuffDSCF + v87;
                if ( v88 > v83 )
                {
                  do
                  {
                    v90 = *((unsigned __int16 *)v89 + 2);
                    v89 += 4;
                  }
                  while ( v90 > v83 );
                }
                *a2 = &v81[-((int)&v82[-(unsigned __int8)v89[2]] >> 3)];
                a2[1] = (unsigned __int8 *)(((_BYTE)v82 - v89[2]) & 7);
                v86 = v89[3];
                if ( v86 != 8 )
                {
LABEL_71:
                  v59 = j + 2;
                  v91 = v86 + j[2];
                  goto LABEL_72;
                }
              }
              v91 = mpc_bits_read_2(a2, 6u);
              v59 = j + 2;
LABEL_72:
              *j = v91;
              v92 = *a2;
              v93 = a2[1];
              v94 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v93);
              v95 = (char *)&mpc_HuffDSCF + 2 * (v94 >> 10);
              v96 = (unsigned __int8)v95[4];
              v97 = (unsigned __int8)v95[5];
              if ( v96 )
              {
                v135 = (int)&v93[-v96];
                v97 = (char)v97;
                *a2 = &v92[-(v135 >> 3)];
                a2[1] = (unsigned __int8 *)(v135 & 7);
                v60 = j + 1;
                if ( (char)v97 != 8 )
                  goto LABEL_76;
              }
              else
              {
                v98 = 4 * v97;
                v99 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v98);
                v100 = (char *)mpc_HuffDSCF + v98;
                if ( v99 > v94 )
                {
                  do
                  {
                    v101 = *((unsigned __int16 *)v100 + 2);
                    v100 += 4;
                  }
                  while ( v101 > v94 );
                }
                v60 = j + 1;
                *a2 = &v92[-((int)&v93[-(unsigned __int8)v100[2]] >> 3)];
                a2[1] = (unsigned __int8 *)(((_BYTE)v93 - v100[2]) & 7);
                v97 = v100[3];
                if ( v97 != 8 )
                {
LABEL_76:
                  result = v97 + *j;
                  goto LABEL_77;
                }
              }
              result = mpc_bits_read_2(a2, 6u);
LABEL_77:
              *v60 = result;
              *v59 = result;
LABEL_58:
              if ( *j > 1024 )
                *j = 32896;
              if ( *v60 > 1024 )
                *v60 = 32896;
              if ( *v59 > 1024 )
                *v59 = 32896;
              break;
            case 2:
              v61 = *a2;
              v62 = a2[1];
              v63 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v62);
              v64 = (char *)&mpc_HuffDSCF + 2 * (v63 >> 10);
              v65 = (unsigned __int8)v64[4];
              v66 = (unsigned __int8)v64[5];
              if ( v65 )
              {
                v136 = (int)&v62[-v65];
                v66 = (char)v66;
                *a2 = &v61[-(v136 >> 3)];
                a2[1] = (unsigned __int8 *)(v136 & 7);
                if ( (char)v66 != 8 )
                  goto LABEL_51;
              }
              else
              {
                v67 = 4 * v66;
                v68 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v67);
                v69 = (char *)mpc_HuffDSCF + v67;
                if ( v68 > v63 )
                {
                  do
                  {
                    v70 = *((unsigned __int16 *)v69 + 2);
                    v69 += 4;
                  }
                  while ( v70 > v63 );
                }
                *a2 = &v61[-((int)&v62[-(unsigned __int8)v69[2]] >> 3)];
                a2[1] = (unsigned __int8 *)(((_BYTE)v62 - v69[2]) & 7);
                v66 = v69[3];
                if ( v66 != 8 )
                {
LABEL_51:
                  v59 = j + 2;
                  v71 = v66 + j[2];
                  goto LABEL_52;
                }
              }
              v71 = mpc_bits_read_2(a2, 6u);
              v59 = j + 2;
LABEL_52:
              *j = v71;
              v60 = j + 1;
              j[1] = v71;
              v72 = *a2;
              v73 = a2[1];
              v74 = (unsigned __int16)((v72[2] | (*v72 << 16) | (v72[1] << 8)) >> (char)v73);
              v75 = (char *)&mpc_HuffDSCF + 2 * (v74 >> 10);
              v76 = (unsigned __int8)v75[4];
              v77 = (unsigned __int8)v75[5];
              if ( v76 )
                goto LABEL_105;
              v78 = 4 * v77;
              v201 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v78);
              v79 = (char *)mpc_HuffDSCF + v78;
              if ( v201 > v74 )
              {
                do
                {
                  v80 = *((unsigned __int16 *)v79 + 2);
                  v79 += 4;
                }
                while ( v80 > v74 );
              }
              goto LABEL_55;
            case 3:
              v49 = *a2;
              v50 = a2[1];
              v51 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v50);
              v52 = (char *)&mpc_HuffDSCF + 2 * (v51 >> 10);
              v53 = (unsigned __int8)v52[4];
              v54 = (unsigned __int8)v52[5];
              if ( v53 )
              {
                v137 = (int)&v50[-v53];
                v54 = (char)v54;
                *a2 = &v49[-(v137 >> 3)];
                a2[1] = (unsigned __int8 *)(v137 & 7);
                if ( (char)v54 != 8 )
                  goto LABEL_45;
              }
              else
              {
                v55 = 4 * v54;
                v56 = *(unsigned __int16 *)((char *)mpc_HuffDSCF + v55);
                v57 = (char *)mpc_HuffDSCF + v55;
                if ( v56 > v51 )
                {
                  do
                  {
                    v58 = *((unsigned __int16 *)v57 + 2);
                    v57 += 4;
                  }
                  while ( v58 > v51 );
                }
                *a2 = &v49[-((int)&v50[-(unsigned __int8)v57[2]] >> 3)];
                a2[1] = (unsigned __int8 *)(((_BYTE)v50 - v57[2]) & 7);
                v54 = v57[3];
                if ( v54 != 8 )
                {
LABEL_45:
                  v59 = j + 2;
                  result = v54 + j[2];
                  goto LABEL_46;
                }
              }
              result = mpc_bits_read_2(a2, 6u);
              v59 = j + 2;
LABEL_46:
              *j = result;
              v60 = j + 1;
              j[1] = result;
              *v59 = result;
              goto LABEL_58;
            default:
              return result;
          }
        }
        v46 = v44[32];
        v47 = v44[112];
        if ( j != v43 || !v45 )
          break;
      }
      v43 += 3;
      ++v44;
      v45 += 3;
    }
    while ( v43 != (int *)v204 );
    v3 = v206;
  }
  v203 = (_DWORD *)(v3 + 5552);
  v205 = 0;
LABEL_102:
  if ( v205 < v200 )
  {
    LOWORD(v132) = *((_WORD *)v203 - 64);
    v207 = (_WORD *)(v3 + 144 * v205 + 816);
    v208 = (_WORD *)(v3 + 144 * v205 + 888);
    v133 = v207;
    while ( 1 )
    {
      switch ( (__int16)v132 )
      {
        case -17:
        case -16:
        case -15:
        case -14:
        case -13:
        case -12:
        case -11:
        case -10:
        case -9:
        case -8:
        case -7:
        case -6:
        case -5:
        case -4:
        case -3:
        case -2:
        case 0:
          goto LABEL_126;
        case -1:
          for ( k = 0; k != 36; ++k )
          {
            v193 = mpc_random_int(v3);
            v194 = (unsigned __int8)v193 + HIBYTE(v193) - 510 + BYTE2(v193);
            result = BYTE1(v193);
            v133[k] = v194 + result;
          }
          goto LABEL_126;
        case 1:
          v173 = mpc_bits_read_2(a2, 1u);
          v174 = v133 + 36;
          v175 = v133;
          v176 = v133;
          result = (int)(&mpc_HuffQ + 33 * v173);
          do
          {
            v177 = *a2;
            v178 = a2[1];
            v179 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> (char)v178);
            v180 = result + 2 * (v179 >> 10);
            v181 = *(unsigned __int8 *)(v180 + 4);
            v182 = *(unsigned __int8 *)(v180 + 5);
            if ( v181 )
            {
              v199 = (int)&v178[-v181];
              *a2 = &v177[-(v199 >> 3)];
              a2[1] = (unsigned __int8 *)(v199 & 7);
              v187 = (char)v182;
            }
            else
            {
              v183 = 4 * v182;
              v184 = *(unsigned __int16 *)(*(_DWORD *)result + v183);
              v185 = *(_DWORD *)result + v183;
              if ( v184 > v179 )
              {
                do
                {
                  v186 = *(unsigned __int16 *)(v185 + 4);
                  v185 += 4;
                }
                while ( v186 > v179 );
              }
              *a2 = &v177[-((int)&v178[-*(unsigned __int8 *)(v185 + 2)] >> 3)];
              a2[1] = (unsigned __int8 *)(((_BYTE)v178 - *(_BYTE *)(v185 + 2)) & 7);
              v187 = *(char *)(v185 + 3);
            }
            v188 = (_DWORD *)((char *)&idx50_2938 + 4 * v187);
            v189 = v188[197];
            v190 = v188[143];
            v191 = v188[170];
            v176[2] = v189;
            *v176 = v190;
            v176[1] = v191;
            v176 += 3;
          }
          while ( v176 != v174 );
          v133 = v175;
          goto LABEL_126;
        case 2:
          v141 = mpc_bits_read_2(a2, 1u);
          v142 = v133;
          v143 = &mpc_HuffQ + 33 * v141 + 66;
          v144 = v133 + 36;
          v209 = v133;
          v145 = v3;
          do
          {
            v146 = *a2;
            result = (int)a2[1];
            v147 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> result);
            v148 = (char *)v143 + 2 * (v147 >> 10);
            v149 = (unsigned __int8)v148[4];
            v150 = (unsigned __int8)v148[5];
            if ( v149 )
            {
              v197 = result - v149;
              v198 = &v146[-(v197 >> 3)];
              result = v197 & 7;
              *a2 = v198;
              a2[1] = (unsigned __int8 *)result;
              v155 = (char)v150;
            }
            else
            {
              v151 = 4 * v150;
              v152 = *(unsigned __int16 *)(*v143 + v151);
              v153 = *v143 + v151;
              if ( v152 > v147 )
              {
                do
                {
                  v154 = *(unsigned __int16 *)(v153 + 4);
                  v153 += 4;
                }
                while ( v154 > v147 );
              }
              *a2 = &v146[-((result - *(unsigned __int8 *)(v153 + 2)) >> 3)];
              a2[1] = (unsigned __int8 *)(((_BYTE)result - *(_BYTE *)(v153 + 2)) & 7);
              v155 = *(char *)(v153 + 3);
            }
            v156 = (char *)&idx50_2938 + 4 * v155;
            v157 = *((_DWORD *)v156 + 249);
            v158 = *((_DWORD *)v156 + 224);
            v142[1] = v157;
            *v142 = v158;
            v142 += 2;
          }
          while ( v142 != v144 );
          v133 = v209;
          v3 = v145;
          goto LABEL_126;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
          v162 = mpc_bits_read_2(a2, 1u);
          v163 = 0;
          v164 = &mpc_HuffQ + 66 * (__int16)v132 + 33 * v162 - 66;
          do
          {
            v165 = *a2;
            result = (int)a2[1];
            v166 = (unsigned __int16)(((*a2)[2] | (**a2 << 16) | ((*a2)[1] << 8)) >> result);
            v167 = (char *)v164 + 2 * (v166 >> 10);
            v168 = (unsigned __int8)v167[4];
            v169 = (unsigned __int8)v167[5];
            if ( v168 )
            {
              v195 = result - v168;
              v196 = &v165[-(v195 >> 3)];
              result = v195 & 7;
              *a2 = v196;
              a2[1] = (unsigned __int8 *)result;
              LOWORD(v169) = (char)v169;
            }
            else
            {
              v170 = 4 * v169;
              v171 = *(unsigned __int16 *)(*v164 + v170);
              v169 = *v164 + v170;
              if ( v171 > v166 )
              {
                do
                {
                  v172 = *(unsigned __int16 *)(v169 + 4);
                  v169 += 4;
                }
                while ( v172 > v166 );
              }
              *a2 = &v165[-((result - *(unsigned __int8 *)(v169 + 2)) >> 3)];
              a2[1] = (unsigned __int8 *)(((_BYTE)result - *(_BYTE *)(v169 + 2)) & 7);
              LOWORD(v169) = *(char *)(v169 + 3);
            }
            v133[v163++] = v169;
          }
          while ( v163 != 36 );
          goto LABEL_126;
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
          v159 = Res_bit[(__int16)v132];
          v160 = (_WORD *)((char *)&_Dc + 2 * (__int16)v132 + 2);
          for ( m = 0; m != 36; ++m )
          {
            result = mpc_bits_read_2(a2, v159);
            v133[m] = result - *v160;
          }
LABEL_126:
          v132 = *v203;
          if ( v133 != v207 )
          {
            ++v205;
            ++v203;
            goto LABEL_102;
          }
          v133 = v208;
          break;
        default:
          return result;
      }
    }
  }
  return result;
}


// ===== 898104 mpc_decoder_decode_frame =====
int __fastcall mpc_decoder_decode_frame(unsigned __int64 a1, int a2)
{
  __int64 v2; // r6
  __int64 v3; // r10
  int v4; // r4
  unsigned int v5; // r2
  unsigned int v6; // r3
  __int64 v7; // r2
  __int64 v8; // r6
  _DWORD *v9; // r11
  int v10; // r9
  int v11; // r8
  int v12; // r6
  int v13; // r4
  int v14; // r5
  int v15; // r3
  int v16; // r10
  int v17; // r9
  int v18; // r10
  float v19; // r4
  float v20; // r0
  int v21; // r4
  int v22; // r10
  float v23; // r9
  float v24; // r0
  float v25; // r9
  float v26; // r0
  bool v27; // cc
  int v28; // r3
  int v29; // r10
  int v30; // r10
  float v31; // r11
  float v32; // r0
  int v33; // r10
  float v34; // r11
  float v35; // r11
  int v36; // r0
  int v37; // r8
  int v38; // r10
  float v39; // r9
  float v40; // r0
  float v41; // r0
  int v42; // r8
  float v43; // r0
  int v44; // r0
  int v45; // r0
  int v46; // r8
  int v47; // r10
  float v48; // r9
  float v49; // r0
  int v50; // r8
  float v51; // r10
  float v52; // r0
  float v53; // r10
  float v54; // r0
  int v55; // r0
  int v56; // r6
  float v57; // r9
  float v58; // r0
  float v59; // r0
  int v60; // r6
  float v61; // r0
  int v62; // r6
  float v63; // r9
  float v64; // r0
  int v65; // r6
  float v66; // r10
  float v67; // r0
  float v68; // r10
  float v69; // r0
  int v70; // r3
  float v72; // [sp+8h] [bp-54h]
  float v73; // [sp+8h] [bp-54h]
  float v74; // [sp+8h] [bp-54h]
  float v75; // [sp+8h] [bp-54h]
  float v76; // [sp+8h] [bp-54h]
  int v77; // [sp+Ch] [bp-50h]
  float v78; // [sp+10h] [bp-4Ch]
  float v79; // [sp+10h] [bp-4Ch]
  float v80; // [sp+10h] [bp-4Ch]
  _DWORD *v81; // [sp+10h] [bp-4Ch]
  unsigned __int8 *v82; // [sp+14h] [bp-48h]
  int v83; // [sp+18h] [bp-44h]
  int v84; // [sp+1Ch] [bp-40h]
  float v85; // [sp+28h] [bp-34h]
  int v86; // [sp+2Ch] [bp-30h]
  int v87; // [sp+30h] [bp-2Ch]
  int v88; // [sp+34h] [bp-28h]
  __int64 v89; // [sp+38h] [bp-24h]
  _DWORD *v90; // [sp+44h] [bp-18h]
  int v92; // [sp+50h] [bp-Ch]
  int v93; // [sp+54h] [bp-8h]

  v2 = *(_QWORD *)(a1 + 16);
  v3 = v2 + 481 - *(_QWORD *)(a1 + 24);
  v89 = v3;
  v90 = (_DWORD *)HIDWORD(a1);
  v4 = a1;
  v93 = *(_DWORD *)(HIDWORD(a1) + 4);
  LODWORD(a1) = *(_DWORD *)HIDWORD(a1);
  v92 = *(_DWORD *)HIDWORD(a1);
  if ( v3 <= 0 && v2 )
  {
    *(_DWORD *)(a2 + 4) = -1;
    *(_DWORD *)a2 = 0;
  }
  else
  {
    if ( *(_DWORD *)v4 == 8 )
      mpc_decoder_read_bitstream_sv8((_DWORD *)v4, (unsigned __int8 **)HIDWORD(a1), *(unsigned __int8 *)(a2 + 12));
    else
      mpc_decoder_read_bitstream_sv7(v4, (unsigned __int8 **)HIDWORD(a1));
    if ( *(_DWORD *)(v4 + 32) <= 0x660u )
    {
      v88 = *(_DWORD *)(v4 + 4);
      if ( v88 >= 0 )
      {
        v84 = 0;
        v86 = v4 + 32144;
        v87 = v4 + 36752;
        v9 = (_DWORD *)(v4 + 5424);
        v82 = (unsigned __int8 *)v4;
        v83 = 0;
        v77 = v4;
        do
        {
          v10 = *(unsigned __int8 *)(v77 + v83 + 6000);
          v11 = v77 + 144 * v83 + 816;
          v12 = v77 + 144 * v83 + 888;
          v13 = v86 + v84;
          v14 = v87 + v84;
          if ( *(_BYTE *)(v77 + v83 + 6000) )
          {
            v15 = *v9;
            if ( *v9 )
            {
              v16 = v9[32];
              if ( v16 )
              {
                v78 = _Cc[v15 + 1] * *(float *)(v77 + 4 * (v82[48] + 10340));
                v17 = 0;
                v85 = _Cc[v16 + 1] * *(float *)(v77 + 4 * (v82[432] + 10340));
                v18 = 0;
                do
                {
                  v19 = v78 * (float)*(__int16 *)(v11 + v18);
                  v20 = v85 * (float)*(__int16 *)(v12 + v18);
                  v18 += 2;
                  *(float *)(v86 + v84 + v17) = v19 + v20;
                  *(float *)(v14 + v17) = v19 - v20;
                  v17 += 128;
                }
                while ( v18 != 24 );
                v79 = _Cc[*v9 + 1] * *(float *)(v77 + 4 * (v82[52] + 10340));
                v21 = v86 + v84;
                v22 = 12;
                v72 = _Cc[v9[32] + 1] * *(float *)(v77 + 4 * (v82[436] + 10340));
                do
                {
                  v23 = v79 * (float)*(__int16 *)(v11 + 2 * v22);
                  v24 = v72 * (float)*(__int16 *)(v12 + 2 * v22);
                  *(float *)(v21 + (v22 << 7)) = v23 + v24;
                  *(float *)(v14 + (v22++ << 7)) = v23 - v24;
                }
                while ( v22 != 24 );
                v80 = _Cc[*v9 + 1] * *(float *)(v77 + 4 * (v82[56] + 10340));
                v73 = _Cc[v9[32] + 1] * *(float *)(v77 + 4 * (v82[440] + 10340));
                do
                {
                  v25 = v80 * (float)*(__int16 *)(v11 + 2 * v22);
                  v26 = v73 * (float)*(__int16 *)(v12 + 2 * v22);
                  *(float *)(v21 + (v22 << 7)) = v25 + v26;
                  *(float *)(v14 + (v22++ << 7)) = v25 - v26;
                }
                while ( v22 != 36 );
              }
              else
              {
                v62 = v9[32];
                v63 = _Cc[v15 + 1] * *(float *)(v77 + 4 * (v82[48] + 10340));
                do
                {
                  v64 = v63 * (float)*(__int16 *)(v11 + v16);
                  v16 += 2;
                  *(float *)(v13 + v62) = v64;
                  *(float *)(v14 + v62) = v64;
                  v62 += 128;
                }
                while ( v16 != 24 );
                v65 = 12;
                v66 = _Cc[*v9 + 1] * *(float *)(v77 + 4 * (v82[52] + 10340));
                do
                {
                  v67 = v66 * (float)*(__int16 *)(v11 + 2 * v65);
                  *(float *)(v13 + (v65 << 7)) = v67;
                  *(float *)(v14 + (v65++ << 7)) = v67;
                }
                while ( v65 != 24 );
                v68 = _Cc[*v9 + 1] * *(float *)(v77 + 4 * (v82[56] + 10340));
                do
                {
                  v69 = v68 * (float)*(__int16 *)(v11 + 2 * v65);
                  *(float *)(v13 + (v65 << 7)) = v69;
                  *(float *)(v14 + (v65++ << 7)) = v69;
                }
                while ( v65 != 36 );
              }
            }
            else
            {
              v45 = v9[32];
              if ( v45 )
              {
                v46 = *v9;
                v47 = *v9;
                v48 = _Cc[v45 + 1] * *(float *)(v77 + 4 * (v82[432] + 10340));
                do
                {
                  v49 = v48 * (float)*(__int16 *)(v12 + v47);
                  v47 += 2;
                  *(float *)(v13 + v46) = v49;
                  *(_DWORD *)(v14 + v46) = LODWORD(v49) + 0x80000000;
                  v46 += 128;
                }
                while ( v47 != 24 );
                v50 = 12;
                v51 = _Cc[v9[32] + 1] * *(float *)(v77 + 4 * (v82[436] + 10340));
                do
                {
                  v52 = v51 * (float)*(__int16 *)(v12 + 2 * v50);
                  *(float *)(v13 + (v50 << 7)) = v52;
                  *(_DWORD *)(v14 + (v50++ << 7)) = LODWORD(v52) + 0x80000000;
                }
                while ( v50 != 24 );
                v53 = _Cc[v9[32] + 1] * *(float *)(v77 + 4 * (v82[440] + 10340));
                do
                {
                  v54 = v53 * (float)*(__int16 *)(v12 + 2 * v50);
                  *(float *)(v13 + (v50 << 7)) = v54;
                  *(_DWORD *)(v14 + (v50++ << 7)) = LODWORD(v54) + 0x80000000;
                }
                while ( v50 != 36 );
              }
              else
              {
                do
                {
                  *(_DWORD *)(v13 + v45) = 0;
                  *(_DWORD *)(v14 + v45) = 0;
                  v55 = v45 + 128;
                  if ( v55 == 4608 )
                    break;
                  *(_DWORD *)(v13 + v55) = 0;
                  *(_DWORD *)(v14 + v55) = 0;
                  v45 = v55 + 128;
                }
                while ( v45 != 4608 );
              }
            }
          }
          else
          {
            v28 = *v9;
            if ( *v9 )
            {
              v29 = v9[32];
              if ( v29 )
              {
                v81 = v9;
                v74 = _Cc[v29 + 1] * *(float *)(v77 + 4 * (v82[432] + 10340));
                v30 = *(unsigned __int8 *)(v77 + v83 + 6000);
                v31 = _Cc[v28 + 1] * *(float *)(v77 + 4 * (v82[48] + 10340));
                do
                {
                  *(float *)(v13 + v10) = v31 * (float)*(__int16 *)(v11 + v30);
                  v32 = (float)*(__int16 *)(v12 + v30);
                  v30 += 2;
                  *(float *)(v14 + v10) = v74 * v32;
                  v10 += 128;
                }
                while ( v30 != 24 );
                v33 = 12;
                v75 = _Cc[v81[32] + 1] * *(float *)(v77 + 4 * (v82[436] + 10340));
                v34 = _Cc[*v81 + 1] * *(float *)(v77 + 4 * (v82[52] + 10340));
                do
                {
                  *(float *)(v13 + (v33 << 7)) = v34 * (float)*(__int16 *)(v11 + 2 * v33);
                  *(float *)(v14 + (v33 << 7)) = v75 * (float)*(__int16 *)(v12 + 2 * v33);
                  ++v33;
                }
                while ( v33 != 24 );
                v76 = _Cc[v81[32] + 1] * *(float *)(v77 + 4 * (v82[440] + 10340));
                v35 = _Cc[*v81 + 1] * *(float *)(v77 + 4 * (v82[56] + 10340));
                do
                {
                  *(float *)(v13 + (v33 << 7)) = v35 * (float)*(__int16 *)(v11 + 2 * v33);
                  *(float *)(v14 + (v33 << 7)) = v76 * (float)*(__int16 *)(v12 + 2 * v33);
                  ++v33;
                }
                while ( v33 != 36 );
                v9 = v81;
              }
              else
              {
                v56 = v9[32];
                v57 = _Cc[v28 + 1] * *(float *)(v77 + 4 * (v82[48] + 10340));
                do
                {
                  v58 = (float)*(__int16 *)(v11 + v29);
                  v29 += 2;
                  *(float *)(v13 + v56) = v57 * v58;
                  *(_DWORD *)(v14 + v56) = 0;
                  v56 += 128;
                }
                while ( v29 != 24 );
                v60 = 12;
                v59 = _Cc[*v9 + 1] * *(float *)(v77 + 4 * (v82[52] + 10340));
                do
                {
                  *(float *)(v13 + (v60 << 7)) = v59 * (float)*(__int16 *)(v11 + 2 * v60);
                  *(_DWORD *)(v14 + (v60++ << 7)) = 0;
                }
                while ( v60 != 24 );
                v61 = _Cc[*v9 + 1] * *(float *)(v77 + 4 * (v82[56] + 10340));
                do
                {
                  *(float *)(v13 + (v60 << 7)) = v61 * (float)*(__int16 *)(v11 + 2 * v60);
                  *(_DWORD *)(v14 + (v60++ << 7)) = 0;
                }
                while ( v60 != 36 );
              }
            }
            else
            {
              v36 = v9[32];
              if ( v36 )
              {
                v37 = *v9;
                v38 = *v9;
                v39 = _Cc[v36 + 1] * *(float *)(v77 + 4 * (v82[432] + 10340));
                do
                {
                  *(_DWORD *)(v13 + v37) = 0;
                  v40 = (float)*(__int16 *)(v12 + v38);
                  v38 += 2;
                  *(float *)(v14 + v37) = v39 * v40;
                  v37 += 128;
                }
                while ( v38 != 24 );
                v42 = 12;
                v41 = _Cc[v9[32] + 1] * *(float *)(v77 + 4 * (v82[436] + 10340));
                do
                {
                  *(_DWORD *)(v13 + (v42 << 7)) = 0;
                  *(float *)(v14 + (v42 << 7)) = v41 * (float)*(__int16 *)(v12 + 2 * v42);
                  ++v42;
                }
                while ( v42 != 24 );
                v43 = _Cc[v9[32] + 1] * *(float *)(v77 + 4 * (v82[440] + 10340));
                do
                {
                  *(_DWORD *)(v13 + (v42 << 7)) = 0;
                  *(float *)(v14 + (v42 << 7)) = v43 * (float)*(__int16 *)(v12 + 2 * v42);
                  ++v42;
                }
                while ( v42 != 36 );
              }
              else
              {
                do
                {
                  *(_DWORD *)(v13 + v36) = 0;
                  *(_DWORD *)(v14 + v36) = 0;
                  v44 = v36 + 128;
                  if ( v44 == 4608 )
                    break;
                  *(_DWORD *)(v13 + v44) = 0;
                  *(_DWORD *)(v14 + v44) = 0;
                  v36 = v44 + 128;
                }
                while ( v36 != 4608 );
              }
            }
          }
          v27 = v88 < ++v83;
          v84 += 4;
          ++v9;
          v82 += 12;
        }
        while ( !v27 );
        v4 = v77;
      }
      mpc_decoder_synthese_filter_float(v4, *(_DWORD *)(a2 + 8), *(_DWORD *)(v4 + 12));
    }
    a1 = *(_QWORD *)(v4 + 24) + 1152LL - *(_QWORD *)(v4 + 16);
    *(_QWORD *)(v4 + 24) += 1152LL;
    if ( a1 < 0x480 && *(_DWORD *)v4 == 7 )
    {
      LODWORD(a1) = mpc_bits_read_2(v90, 0xBu);
      v7 = *(_QWORD *)(v4 + 24);
      if ( *(_QWORD *)(v4 + 16) == v7 )
      {
        if ( !(_DWORD)a1 )
          LODWORD(a1) = 1152;
        v8 = (int)a1 - 1152;
        *(_QWORD *)(v4 + 16) = v7 + v8;
        LODWORD(a1) = v89 + v8;
        v89 += v8;
      }
    }
    if ( v89 > 1152 )
    {
      v5 = 1152;
    }
    else
    {
      v5 = v89;
      if ( v89 < 0 )
        v5 = 0;
    }
    *(_DWORD *)a2 = v5;
    *(_DWORD *)(a2 + 4) = v93 - v90[1] + 8 * (*v90 - v92);
    v6 = *(_DWORD *)(v4 + 32);
    if ( v6 )
    {
      if ( v5 > v6 )
      {
        v70 = v5 - v6;
        *(_DWORD *)a2 = v70;
        LODWORD(a1) = memmove(
                        *(void **)(a2 + 8),
                        (const void *)(*(_DWORD *)(a2 + 8) + 4 * *(_DWORD *)(v4 + 32) * *(_DWORD *)(v4 + 12)),
                        v70 * 4 * *(_DWORD *)(v4 + 12));
        *(_DWORD *)(v4 + 32) = 0;
      }
      else
      {
        *(_DWORD *)(v4 + 32) = v6 - v5;
        *(_DWORD *)a2 = 0;
      }
    }
  }
  return a1;
}


// ===== 898e60 mpc_synthese_filter_float_internal =====
float __fastcall mpc_synthese_filter_float_internal(float *a1, float *a2, float *a3, int a4)
{
  float *v4; // r5
  int v5; // r11
  float v7; // r9
  float v8; // r8
  float v9; // r7
  float v10; // r0
  float v11; // r8
  float v12; // r10
  float v13; // r9
  float v14; // r0
  float v15; // r9
  float v16; // r10
  float v17; // r8
  float v18; // r0
  float v19; // r10
  float v20; // r8
  float v21; // r9
  float v22; // r7
  float v23; // r0
  float v24; // r0
  float v25; // r0
  float v26; // r7
  float v27; // r9
  float v28; // r8
  float v29; // r7
  float v30; // r0
  float v31; // r8
  float v32; // r10
  float v33; // r9
  float v34; // r0
  float v35; // r9
  float v36; // r10
  float v37; // r8
  float v38; // r0
  float v39; // r10
  float v40; // r8
  float v41; // r0
  float v42; // r7
  float v43; // r0
  float v44; // r0
  float v45; // r0
  float v46; // r0
  float v47; // r0
  float v48; // r8
  float v49; // r8
  float v50; // r7
  float v51; // r0
  int v52; // r9
  int v53; // r8
  int v54; // lr
  int v55; // r12
  int v56; // r1
  int v57; // r2
  unsigned int v58; // r2
  unsigned int v59; // r3
  unsigned int v60; // lr
  unsigned int v61; // r12
  unsigned int v62; // r1
  int v63; // r8
  int v64; // r10
  int v65; // r2
  float *v66; // r8
  int v67; // r9
  int v68; // r3
  int v69; // r2
  int v70; // r3
  float *v71; // r7
  float *v72; // r10
  float result; // r0
  float v74; // [sp+4h] [bp-70h]
  float v75; // [sp+8h] [bp-6Ch]
  float v76; // [sp+8h] [bp-6Ch]
  float v77; // [sp+8h] [bp-6Ch]
  float v78; // [sp+8h] [bp-6Ch]
  float v79; // [sp+8h] [bp-6Ch]
  float v80; // [sp+8h] [bp-6Ch]
  float v81; // [sp+8h] [bp-6Ch]
  float v82; // [sp+8h] [bp-6Ch]
  unsigned int v83; // [sp+8h] [bp-6Ch]
  float v84; // [sp+Ch] [bp-68h]
  float v85; // [sp+Ch] [bp-68h]
  float v86; // [sp+Ch] [bp-68h]
  float v87; // [sp+Ch] [bp-68h]
  float v88; // [sp+Ch] [bp-68h]
  float v89; // [sp+Ch] [bp-68h]
  float v90; // [sp+Ch] [bp-68h]
  float v91; // [sp+Ch] [bp-68h]
  float v92; // [sp+Ch] [bp-68h]
  float v93; // [sp+10h] [bp-64h]
  float v94; // [sp+10h] [bp-64h]
  float v95; // [sp+10h] [bp-64h]
  float v96; // [sp+10h] [bp-64h]
  float v97; // [sp+10h] [bp-64h]
  float v98; // [sp+10h] [bp-64h]
  float v99; // [sp+10h] [bp-64h]
  float v100; // [sp+10h] [bp-64h]
  float v101; // [sp+14h] [bp-60h]
  float v102; // [sp+14h] [bp-60h]
  float v103; // [sp+14h] [bp-60h]
  float v104; // [sp+14h] [bp-60h]
  float v105; // [sp+14h] [bp-60h]
  float v106; // [sp+14h] [bp-60h]
  float v107; // [sp+14h] [bp-60h]
  float v108; // [sp+14h] [bp-60h]
  float v109; // [sp+18h] [bp-5Ch]
  float v110; // [sp+18h] [bp-5Ch]
  float v111; // [sp+18h] [bp-5Ch]
  float v112; // [sp+18h] [bp-5Ch]
  float v113; // [sp+18h] [bp-5Ch]
  float v114; // [sp+18h] [bp-5Ch]
  unsigned int v115; // [sp+18h] [bp-5Ch]
  float v116; // [sp+1Ch] [bp-58h]
  float v117; // [sp+1Ch] [bp-58h]
  float v118; // [sp+1Ch] [bp-58h]
  float v119; // [sp+1Ch] [bp-58h]
  float v120; // [sp+1Ch] [bp-58h]
  float v121; // [sp+1Ch] [bp-58h]
  unsigned int v122; // [sp+1Ch] [bp-58h]
  float v123; // [sp+20h] [bp-54h]
  float v124; // [sp+20h] [bp-54h]
  float v125; // [sp+20h] [bp-54h]
  float v126; // [sp+20h] [bp-54h]
  float v127; // [sp+20h] [bp-54h]
  float v128; // [sp+20h] [bp-54h]
  unsigned int v129; // [sp+20h] [bp-54h]
  float v130; // [sp+24h] [bp-50h]
  float v131; // [sp+24h] [bp-50h]
  float v132; // [sp+24h] [bp-50h]
  float v133; // [sp+24h] [bp-50h]
  float v134; // [sp+24h] [bp-50h]
  float v135; // [sp+24h] [bp-50h]
  float v136; // [sp+24h] [bp-50h]
  float v137; // [sp+28h] [bp-4Ch]
  float v138; // [sp+28h] [bp-4Ch]
  float v139; // [sp+28h] [bp-4Ch]
  float v140; // [sp+28h] [bp-4Ch]
  float v141; // [sp+28h] [bp-4Ch]
  float v142; // [sp+28h] [bp-4Ch]
  float v143; // [sp+28h] [bp-4Ch]
  float v144; // [sp+2Ch] [bp-48h]
  float v145; // [sp+2Ch] [bp-48h]
  float v146; // [sp+2Ch] [bp-48h]
  float v147; // [sp+2Ch] [bp-48h]
  float v148; // [sp+2Ch] [bp-48h]
  float v149; // [sp+2Ch] [bp-48h]
  float v150; // [sp+2Ch] [bp-48h]
  float v151; // [sp+30h] [bp-44h]
  float v152; // [sp+30h] [bp-44h]
  float v153; // [sp+30h] [bp-44h]
  float v154; // [sp+30h] [bp-44h]
  float v155; // [sp+30h] [bp-44h]
  float v156; // [sp+30h] [bp-44h]
  float v157; // [sp+34h] [bp-40h]
  float v158; // [sp+34h] [bp-40h]
  float v159; // [sp+34h] [bp-40h]
  float v160; // [sp+34h] [bp-40h]
  float v161; // [sp+34h] [bp-40h]
  float v162; // [sp+34h] [bp-40h]
  float v163; // [sp+38h] [bp-3Ch]
  float v164; // [sp+38h] [bp-3Ch]
  float v165; // [sp+38h] [bp-3Ch]
  float v166; // [sp+38h] [bp-3Ch]
  float v167; // [sp+38h] [bp-3Ch]
  float v168; // [sp+38h] [bp-3Ch]
  float v169; // [sp+3Ch] [bp-38h]
  float v170; // [sp+3Ch] [bp-38h]
  float v171; // [sp+3Ch] [bp-38h]
  float v172; // [sp+3Ch] [bp-38h]
  float v173; // [sp+3Ch] [bp-38h]
  float v174; // [sp+3Ch] [bp-38h]
  float v175; // [sp+40h] [bp-34h]
  float v176; // [sp+40h] [bp-34h]
  float v177; // [sp+40h] [bp-34h]
  float v178; // [sp+40h] [bp-34h]
  float v179; // [sp+40h] [bp-34h]
  float v180; // [sp+44h] [bp-30h]
  float v181; // [sp+44h] [bp-30h]
  float v182; // [sp+44h] [bp-30h]
  float v183; // [sp+44h] [bp-30h]
  float v184; // [sp+44h] [bp-30h]
  float v185; // [sp+48h] [bp-2Ch]
  float v186; // [sp+48h] [bp-2Ch]
  float v187; // [sp+48h] [bp-2Ch]
  float v188; // [sp+48h] [bp-2Ch]
  float v189; // [sp+4Ch] [bp-28h]
  float v190; // [sp+4Ch] [bp-28h]
  float v191; // [sp+4Ch] [bp-28h]
  float v192; // [sp+4Ch] [bp-28h]
  float v193; // [sp+50h] [bp-24h]
  float v194; // [sp+50h] [bp-24h]
  float v195; // [sp+54h] [bp-20h]
  float v196; // [sp+54h] [bp-20h]
  float v197; // [sp+58h] [bp-1Ch]
  float v198; // [sp+58h] [bp-1Ch]
  float v199; // [sp+5Ch] [bp-18h]
  float v200; // [sp+5Ch] [bp-18h]
  float *v202; // [sp+68h] [bp-Ch]
  int v203; // [sp+6Ch] [bp-8h]

  v4 = a3;
  v5 = 4 * a4;
  v203 = a4 << 7;
  v202 = a3 + 1120;
  while ( 1 )
  {
    v7 = *v4 + v4[31];
    v8 = v4[1] + v4[30];
    v75 = v4[2] + v4[29];
    v84 = v4[3] + v4[28];
    v93 = v4[4] + v4[27];
    v101 = v4[5] + v4[26];
    v109 = v4[6] + v4[25];
    v116 = v4[7] + v4[24];
    v130 = v4[8] + v4[23];
    v123 = v4[9] + v4[22];
    v137 = v4[10] + v4[21];
    v144 = v4[11] + v4[20];
    v151 = v4[12] + v4[19];
    v157 = v4[13] + v4[18];
    v9 = v4[14] + v4[17];
    v10 = v4[15] + v4[16];
    v163 = v7 + v10;
    v169 = v8 + v9;
    v175 = v75 + v157;
    v180 = v84 + v151;
    v185 = v93 + v144;
    v189 = v101 + v137;
    v193 = v109 + v123;
    v195 = v116 + v130;
    v197 = (float)(v7 - v10) * 0.50242;
    v199 = (float)(v8 - v9) * 0.5225;
    v76 = (float)(v75 - v157) * 0.56694;
    v85 = (float)(v84 - v151) * 0.64682;
    v94 = (float)(v93 - v144) * 0.78815;
    v11 = (float)(v101 - v137) * 1.0607;
    v12 = (float)(v109 - v123) * 1.7224;
    v13 = (float)(v116 - v130) * 5.1011;
    v14 = v163 + (float)(v116 + v130);
    v102 = v169 + (float)(v109 + v123);
    v110 = v175 + v189;
    v117 = v180 + v185;
    v131 = (float)(v163 - v195) * 0.5098;
    v124 = (float)(v169 - v193) * 0.60134;
    v138 = (float)(v175 - v189) * 0.89998;
    v145 = (float)(v180 - v185) * 2.5629;
    v152 = v197 + v13;
    v158 = v199 + v12;
    v164 = v76 + v11;
    v170 = v85 + v94;
    v176 = (float)(v197 - v13) * 0.5098;
    v181 = (float)(v199 - v12) * 0.60134;
    v77 = (float)(v76 - v11) * 0.89998;
    v86 = (float)(v85 - v94) * 2.5629;
    v95 = v14 + v117;
    v186 = v102 + v110;
    v118 = (float)(v14 - v117) * 0.5412;
    v103 = (float)(v102 - v110) * 1.3066;
    v111 = v131 + v145;
    v190 = v124 + v138;
    v15 = (float)(v131 - v145) * 0.5412;
    v16 = (float)(v124 - v138) * 1.3066;
    v132 = v152 + v170;
    v125 = v158 + v164;
    v17 = (float)(v152 - v170) * 0.5412;
    v18 = (float)(v158 - v164) * 1.3066;
    v139 = v176 + v86;
    v146 = v181 + v77;
    v87 = (float)(v176 - v86) * 0.5412;
    v78 = (float)(v181 - v77) * 1.3066;
    v153 = (float)(v118 - v103) * 0.70711;
    v159 = v15 + v16;
    v19 = (float)(v15 - v16) * 0.70711;
    v165 = (float)(v132 - v125) * 0.70711;
    v171 = v17 + v18;
    v20 = (float)(v17 - v18) * 0.70711;
    v21 = (float)(v139 - v146) * 0.70711;
    v22 = (float)(v87 - v78) * 0.70711;
    *((_DWORD *)a2 - 16) = COERCE_INT(v95 + v186) + 0x80000000;
    *(a2 - 64) = (float)(v95 - v186) * 0.70711;
    *(a2 - 56) = v153;
    *(a2 - 52) = v19;
    *(a2 - 24) = COERCE_FLOAT(COERCE_INT(v118 + v103) + 0x80000000) - v153;
    v23 = (float)((float)(v111 - v190) * 0.70711) + v19;
    *(a2 - 60) = v23;
    *((_DWORD *)a2 - 28) = COERCE_INT(v159 + v23) + 0x80000000;
    *(a2 - 20) = (float)(COERCE_FLOAT(COERCE_INT(v111 + v190) + 0x80000000) - v159) - v19;
    *(a2 - 50) = v22;
    *(a2 - 54) = v20 + v22;
    *(a2 - 58) = v21 + (float)(v20 + v22);
    v24 = v22 + (float)(v165 + v21);
    *(a2 - 62) = v24;
    v25 = COERCE_FLOAT(LODWORD(v24) + 0x80000000) - (float)(v87 + v78);
    *(a2 - 30) = v25;
    *(a2 - 26) = (float)((float)(v165 + v25) - v171) - v20;
    LODWORD(v26) = COERCE_INT(v22 + (float)((float)(v139 + v146) + (float)(v87 + v78))) + 0x80000000;
    *(a2 - 18) = v26 - (float)(v132 + v125);
    *(a2 - 22) = (float)(v26 - v171) - v20;
    v27 = (float)(*v4 - v4[31]) * 0.5006;
    v28 = (float)(v4[1] - v4[30]) * 0.50547;
    v79 = (float)(v4[2] - v4[29]) * 0.51545;
    v88 = (float)(v4[3] - v4[28]) * 0.53104;
    v96 = (float)(v4[4] - v4[27]) * 0.5531;
    v104 = (float)(v4[5] - v4[26]) * 0.58293;
    v112 = (float)(v4[6] - v4[25]) * 0.6225;
    v119 = (float)(v4[7] - v4[24]) * 0.67481;
    v133 = (float)(v4[8] - v4[23]) * 0.74454;
    v126 = (float)(v4[9] - v4[22]) * 0.83935;
    v140 = (float)(v4[10] - v4[21]) * 0.97257;
    v147 = (float)(v4[11] - v4[20]) * 1.1694;
    v154 = (float)(v4[12] - v4[19]) * 1.4842;
    v160 = (float)(v4[13] - v4[18]) * 2.0578;
    v29 = (float)(v4[14] - v4[17]) * 3.4076;
    v30 = (float)(v4[15] - v4[16]) * 10.19;
    v166 = v27 + v30;
    v172 = v28 + v29;
    v177 = v79 + v160;
    v182 = v88 + v154;
    v187 = v96 + v147;
    v191 = v104 + v140;
    v194 = v112 + v126;
    v196 = v119 + v133;
    v198 = (float)(v27 - v30) * 0.50242;
    v200 = (float)(v28 - v29) * 0.5225;
    v80 = (float)(v79 - v160) * 0.56694;
    v89 = (float)(v88 - v154) * 0.64682;
    v97 = (float)(v96 - v147) * 0.78815;
    v31 = (float)(v104 - v140) * 1.0607;
    v32 = (float)(v112 - v126) * 1.7224;
    v33 = (float)(v119 - v133) * 5.1011;
    v34 = v166 + (float)(v119 + v133);
    v105 = v172 + (float)(v112 + v126);
    v113 = v177 + v191;
    v120 = v182 + v187;
    v134 = (float)(v166 - v196) * 0.5098;
    v127 = (float)(v172 - v194) * 0.60134;
    v141 = (float)(v177 - v191) * 0.89998;
    v148 = (float)(v182 - v187) * 2.5629;
    v155 = v198 + v33;
    v161 = v200 + v32;
    v167 = v80 + v31;
    v173 = v89 + v97;
    v178 = (float)(v198 - v33) * 0.5098;
    v183 = (float)(v200 - v32) * 0.60134;
    v81 = (float)(v80 - v31) * 0.89998;
    v90 = (float)(v89 - v97) * 2.5629;
    v188 = v34 + v120;
    v192 = v105 + v113;
    v98 = (float)(v34 - v120) * 0.5412;
    v35 = (float)(v105 - v113) * 1.3066;
    v36 = v134 + v148;
    v37 = v127 + v141;
    v38 = (float)(v134 - v148) * 0.5412;
    v106 = (float)(v127 - v141) * 1.3066;
    v114 = v155 + v173;
    v121 = v161 + v167;
    v135 = (float)(v155 - v173) * 0.5412;
    v128 = (float)(v161 - v167) * 1.3066;
    v142 = v178 + v90;
    v149 = v183 + v81;
    v156 = (float)(v178 - v90) * 0.5412;
    v162 = (float)(v183 - v81) * 1.3066;
    v168 = v98 + v35;
    v91 = (float)(v98 - v35) * 0.70711;
    v174 = v36 + v37;
    v99 = (float)(v36 - v37) * 0.70711;
    v82 = v38 + v106;
    v39 = (float)(v38 - v106) * 0.70711;
    v179 = (float)(v114 - v121) * 0.70711;
    v107 = (float)(v135 - v128) * 0.70711;
    v184 = v142 + v149;
    v40 = (float)(v142 - v149) * 0.70711;
    v41 = (float)(v156 - v162) * 0.70711;
    v42 = v41;
    *(a2 - 49) = v41;
    v43 = v39 + v41;
    *(a2 - 51) = v43;
    v44 = v107 + v43;
    *(a2 - 53) = v44;
    *(a2 - 59) = v40 + (float)(v99 + v44);
    v45 = v42 + (float)(v91 + v107);
    *(a2 - 55) = v45;
    *(a2 - 57) = v40 + v45;
    v46 = v42 + (float)(v40 + (float)((float)((float)(v188 - v192) * 0.70711) + v179));
    *(a2 - 63) = v46;
    v143 = COERCE_FLOAT(LODWORD(v46) + 0x80000000) - (float)(v156 + v162);
    *(a2 - 31) = v143;
    v47 = v42 + (float)(v40 + (float)(v179 + (float)(v99 + v39)));
    *(a2 - 61) = v47;
    v150 = (float)(COERCE_FLOAT(LODWORD(v47) + 0x80000000) - v82) - (float)(v156 + v162);
    *(a2 - 29) = v150;
    LODWORD(v74) = COERCE_INT(v42 + (float)((float)(v156 + v162) + (float)(v40 + (float)((float)(v135 + v128) + v107))))
                 + 0x80000000;
    v100 = (float)((float)(v74 - v99) - v82) - v39;
    *(a2 - 27) = v100;
    v108 = (float)(v74 - v168) - v91;
    *(a2 - 25) = v108;
    v48 = v74 + (float)(v40 - v184);
    v92 = (float)(v48 - v168) - v91;
    *(a2 - 23) = v92;
    v136 = (float)((float)(v48 - v174) - v82) - v39;
    *(a2 - 21) = v136;
    LODWORD(v49) = COERCE_INT(v42 + (float)((float)(v156 + v162) + (float)((float)(v114 + v121) + v184))) + 0x80000000;
    v50 = v49 - (float)(v188 + v192);
    *(a2 - 17) = v50;
    v51 = (float)((float)(v49 - v174) - v82) - v39;
    v52 = *((_DWORD *)a2 - 64);
    v53 = *((_DWORD *)a2 - 62);
    v54 = *((_DWORD *)a2 - 61);
    v55 = *((_DWORD *)a2 - 60);
    v56 = *((_DWORD *)a2 - 59);
    v57 = *((_DWORD *)a2 - 58);
    v83 = *((_DWORD *)a2 - 57) + 0x80000000;
    v115 = *((_DWORD *)a2 - 56) + 0x80000000;
    v122 = *((_DWORD *)a2 - 55) + 0x80000000;
    v129 = *((_DWORD *)a2 - 54) + 0x80000000;
    *((_DWORD *)a2 - 33) = *((_DWORD *)a2 - 63) + 0x80000000;
    *((_DWORD *)a2 - 34) = v53 + 0x80000000;
    *((_DWORD *)a2 - 35) = v54 + 0x80000000;
    *((_DWORD *)a2 - 36) = v55 + 0x80000000;
    *((_DWORD *)a2 - 37) = v56 + 0x80000000;
    *((_DWORD *)a2 - 32) = v52 + 0x80000000;
    *((_DWORD *)a2 - 38) = v57 + 0x80000000;
    *((_DWORD *)a2 - 39) = v83;
    *((_DWORD *)a2 - 40) = v115;
    *((_DWORD *)a2 - 41) = v122;
    *(a2 - 19) = v51;
    v58 = *((_DWORD *)a2 - 50) + 0x80000000;
    v59 = *((_DWORD *)a2 - 49) + 0x80000000;
    v60 = *((_DWORD *)a2 - 53) + 0x80000000;
    v61 = *((_DWORD *)a2 - 52) + 0x80000000;
    v62 = *((_DWORD *)a2 - 51) + 0x80000000;
    *((_DWORD *)a2 - 42) = v129;
    *((_DWORD *)a2 - 43) = v60;
    *((_DWORD *)a2 - 44) = v61;
    *((_DWORD *)a2 - 45) = v62;
    *((_DWORD *)a2 - 46) = v58;
    *((_DWORD *)a2 - 47) = v59;
    v63 = *((_DWORD *)a2 - 30);
    v64 = *((_DWORD *)a2 - 28);
    *(a2 - 1) = v143;
    *((_DWORD *)a2 - 2) = v63;
    *((_DWORD *)a2 - 4) = v64;
    v65 = *((_DWORD *)a2 - 26);
    *(a2 - 3) = v150;
    *((_DWORD *)a2 - 6) = v65;
    v66 = a2;
    *(a2 - 5) = v100;
    v67 = *((_DWORD *)a2 - 24);
    *(a2 - 7) = v108;
    *((_DWORD *)a2 - 8) = v67;
    v68 = *((_DWORD *)a2 - 22);
    *(a2 - 9) = v92;
    *((_DWORD *)a2 - 10) = v68;
    *(a2 - 11) = v136;
    v69 = *((_DWORD *)a2 - 20);
    v70 = *((_DWORD *)a2 - 18);
    *(a2 - 13) = v51;
    *((_DWORD *)a2 - 12) = v69;
    *((_DWORD *)a2 - 14) = v70;
    *(a2 - 15) = v50;
    v71 = (float *)&Di_opt;
    v72 = a1;
    do
    {
      result = (float)((float)((float)((float)((float)((float)((float)((float)((float)((float)((float)((float)((float)((float)((float)(*(v66 - 64) * *v71) + (float)(v66[32] * v71[1])) + (float)(v66[64] * v71[2])) + (float)(v66[160] * v71[3])) + (float)(v66[192] * v71[4]))
                                                                                             + (float)(v66[288] * v71[5]))
                                                                                     + (float)(v66[320] * v71[6]))
                                                                             + (float)(v66[416] * v71[7]))
                                                                     + (float)(v66[448] * v71[8]))
                                                             + (float)(v66[544] * v71[9]))
                                                     + (float)(v66[576] * v71[10]))
                                             + (float)(v66[672] * v71[11]))
                                     + (float)(v66[704] * v71[12]))
                             + (float)(v66[800] * v71[13]))
                     + (float)(v66[832] * v71[14]))
             + (float)(v66[928] * v71[15]);
      v71 += 16;
      *v72 = result;
      v72 = (float *)((char *)v72 + v5);
      ++v66;
    }
    while ( v71 != (float *)&Parity );
    if ( v4 == v202 )
      break;
    a2 -= 64;
    v4 += 32;
    a1 = (float *)((char *)a1 + v203);
  }
  return result;
}


// ===== 89a2c4 mpc_random_int =====
int __fastcall mpc_random_int(int a1)
{
  int v2; // r2
  int v3; // r0

  v2 = (*(_DWORD *)(a1 + 40) >> 1) | (*((unsigned __int8 *)&Di_opt + (*(_DWORD *)(a1 + 40) & 0xF5) + 2048) << 31);
  v3 = *((unsigned __int8 *)&Di_opt + ((*(_DWORD *)(a1 + 44) >> 25) & 0x63) + 2048) | (2 * *(_DWORD *)(a1 + 44));
  *(_DWORD *)(a1 + 44) = v3;
  *(_DWORD *)(a1 + 40) = v2;
  return v3 ^ v2;
}


// ===== 89a31c mpc_decoder_synthese_filter_float =====
float __fastcall mpc_decoder_synthese_filter_float(float *a1, float *a2, int a3)
{
  float result; // r0

  memmove(a1 + 3812, a1 + 1508, 0xF00u);
  result = mpc_synthese_filter_float_internal(a2, a1 + 3812, a1 + 8036, a3);
  if ( a3 > 1 )
  {
    memmove(a1 + 7076, a1 + 4772, 0xF00u);
    return mpc_synthese_filter_float_internal(a2 + 1, a1 + 7076, a1 + 9188, a3);
  }
  return result;
}


// ===== 89a3a4 huff_fill_lut =====
unsigned __int16 *__fastcall huff_fill_lut(unsigned __int16 *result, int a2, int a3)
{
  int v3; // r3
  char v4; // r7
  int v5; // r6
  _BYTE *v6; // r1
  unsigned __int16 *v7; // r12
  int v8; // r4
  int v9; // r12
  unsigned __int16 *v10; // r4
  int v11; // t1

  v3 = ~(-1 << a3);
  v4 = 16 - a3;
  if ( -1 << a3 < 0 )
  {
    v5 = 0;
    v6 = (_BYTE *)(a2 + 2 * v3);
    v7 = result;
    if ( v3 <= (int)*result >> v4 )
      goto LABEL_6;
LABEL_3:
    *v6 = *((_BYTE *)v7 + 2);
    v6[1] = *((_BYTE *)v7 + 3);
    while ( 1 )
    {
      --v3;
      v6 -= 2;
      if ( v3 == -1 )
        break;
      v7 = &result[2 * v5];
      if ( v3 > (int)*v7 >> v4 )
        goto LABEL_3;
LABEL_6:
      v8 = *((unsigned __int8 *)v7 + 2);
      if ( a3 < v8 )
      {
        *v6 = 0;
        v6[1] = v5;
      }
      else
      {
        *v6 = v8;
        LOBYTE(v7) = *((_BYTE *)v7 + 3);
      }
      if ( a3 >= v8 )
        v6[1] = (_BYTE)v7;
      if ( !v3 )
        break;
      v9 = v5 + 1;
      v10 = &result[2 * v5 + 2];
      do
      {
        v11 = *v10;
        v10 += 2;
        v5 = v9++;
      }
      while ( v3 == v11 >> v4 );
    }
  }
  return result;
}


// ===== 89a458 can_fill_lut =====
unsigned __int16 *__fastcall can_fill_lut(unsigned __int16 *result, int a2)
{
  char v2; // r12
  int v3; // r2
  char v4; // r6
  unsigned __int16 *v5; // r7
  int v6; // r8
  int v7; // r4
  unsigned __int16 *v8; // r5
  unsigned __int16 *v9; // r3
  bool v10; // cc
  bool v11; // cc
  int v12; // r3
  int v13; // t1

  v3 = (1 << a2) - 1;
  v4 = 16 - a2;
  v5 = *(unsigned __int16 **)result;
  v6 = *((_DWORD *)result + 1);
  if ( v3 >= 0 )
  {
    v7 = 0;
    v8 = &result[(1 << a2) + 4];
    v9 = *(unsigned __int16 **)result;
    if ( v3 <= (int)*v5 >> v4 )
      goto LABEL_13;
LABEL_3:
    result = (unsigned __int16 *)*((unsigned __int8 *)v9 + 2);
    v10 = a2 < (int)result;
    if ( a2 < (int)result )
    {
      *((_BYTE *)v8 - 2) = 0;
    }
    else
    {
      *((_BYTE *)v8 - 2) = (_BYTE)result;
      v2 = *((_BYTE *)v9 + 2);
      result = (unsigned __int16 *)*((char *)v9 + 3);
    }
    if ( v10 )
      *((_BYTE *)v8 - 1) = v7;
    else
      LOBYTE(v9) = *(_BYTE *)(v6 + (unsigned __int8)((_BYTE)result - (v3 >> (a2 - v2))));
    if ( !v10 )
      *((_BYTE *)v8 - 1) = (_BYTE)v9;
    while ( 1 )
    {
      --v3;
      --v8;
      if ( v3 == -1 )
        break;
      v9 = &v5[2 * v7];
      if ( v3 > (int)*v9 >> v4 )
        goto LABEL_3;
LABEL_13:
      result = (unsigned __int16 *)*((unsigned __int8 *)v9 + 2);
      v11 = a2 < (int)result;
      if ( a2 < (int)result )
      {
        *((_BYTE *)v8 - 2) = 0;
      }
      else
      {
        *((_BYTE *)v8 - 2) = (_BYTE)result;
        v2 = *((_BYTE *)v9 + 2);
        result = (unsigned __int16 *)*((char *)v9 + 3);
      }
      if ( v11 )
        *((_BYTE *)v8 - 1) = v7;
      else
        LOBYTE(v9) = *(_BYTE *)(v6 + (unsigned __int8)((_BYTE)result - (v3 >> (a2 - v2))));
      if ( !v11 )
        *((_BYTE *)v8 - 1) = (_BYTE)v9;
      if ( !v3 )
        break;
      v12 = v7 + 1;
      result = &v5[2 * v7 + 2];
      do
      {
        v13 = *result;
        result += 2;
        v2 = v13;
        v7 = v12++;
      }
      while ( v3 == v13 >> v4 );
    }
  }
  return result;
}


// ===== 89a54c huff_init_lut =====
unsigned __int16 *__fastcall huff_init_lut(int a1)
{
  int v2; // r5
  unsigned __int16 *v3; // r8
  unsigned __int16 **v4; // r6
  int v5; // r9
  unsigned __int16 *v6; // t1
  unsigned __int16 *result; // r0

  huff_fill_lut((unsigned __int16 *)mpc_HuffDSCF, (int)&unk_99E2F8, a1);
  v2 = 0;
  huff_fill_lut((unsigned __int16 *)mpc_HuffHdr, (int)algn_99E274, a1);
  can_fill_lut((unsigned __int16 *)&mpc_can_SCFI, a1);
  can_fill_lut((unsigned __int16 *)&off_99EB38, a1);
  can_fill_lut((unsigned __int16 *)&mpc_can_DSCF, a1);
  can_fill_lut((unsigned __int16 *)&off_99EC48, a1);
  can_fill_lut((unsigned __int16 *)&mpc_can_Res, a1);
  can_fill_lut((unsigned __int16 *)&off_99EDE0, a1);
  can_fill_lut((unsigned __int16 *)&mpc_can_Q1, a1);
  can_fill_lut((unsigned __int16 *)&mpc_can_Q9up, a1);
  v3 = (unsigned __int16 *)&mpc_can_Q;
  v4 = (unsigned __int16 **)&off_99E3FC;
  while ( 1 )
  {
    can_fill_lut(v3, a1);
    v5 = 264 * v2;
    huff_fill_lut(*(v4 - 33), (int)(&mpc_HuffQ + 66 * v2 + 1), a1);
    can_fill_lut(v3 + 68, a1);
    ++v2;
    v6 = *v4;
    v4 += 66;
    result = huff_fill_lut(v6, (int)&mpc_HuffQ + v5 + 136, a1);
    v3 += 136;
    if ( v2 == 7 )
      break;
    if ( v2 == 6 )
    {
      huff_fill_lut(*(v4 - 33), (int)algn_99E9AC, a1);
      return huff_fill_lut(*v4, (int)&unk_99EA30, a1);
    }
  }
  return result;
}


// ===== 89a6e4 ALicenseCheck::ValidateNative(void) =====
void ALicenseCheck::ValidateNative()
{
  ;
}


// ===== 89a6e8 ALicenseCheck::LOGGER(char const*,...) =====
void ALicenseCheck::LOGGER(const char *fmt, ...)
{
  char v1[4]; // [sp+4h] [bp-404h] BYREF
  va_list varg_r1; // [sp+41Ch] [bp+14h] BYREF

  va_start(varg_r1, fmt);
  vsprintf(v1, fmt, varg_r1);
  printf("%s", v1);
  _android_log_print(4, "LicenseCheck", "%s", v1);
}


// ===== 89a798 ALicenseCheck::currentTime(void) =====
int ALicenseCheck::currentTime()
{
  timeval now; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&now, nullptr);
  return now.tv_usec / 1000 + 1000 * now.tv_sec;
}


// ===== 89a7d8 ALicenseCheck::createUniqueCode(void) =====
int ALicenseCheck::createUniqueCode()
{
  int v0; // r0

  v0 = ALicenseCheck::currentTime();
  srand48(v0);
  return (int)((double)lrand48() * 4.65661287e-10 * 8889.0 + 1111.0);
}


// ===== 89a820 ALicenseCheck::XOR(char const*,char const*,char *) =====
void __fastcall ALicenseCheck::XOR(const char *value, const char *key, char *output)
{
  size_t v6; // r9
  size_t v7; // r0
  int v8; // r2
  size_t v9; // r3
  char v10; // r12
  char retval[512]; // [sp+4h] [bp-204h] BYREF

  LC_API_MEMSET_0(retval, 0, 0x200u);
  v6 = LC_API_STRLEN_0(key);
  v7 = LC_API_STRLEN_0(value);
  if ( v7 )
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = key[v9++];
      retval[v8] = v10 ^ value[v8];
      ++v8;
      if ( v6 <= v9 )
        v9 = 0;
    }
    while ( v8 != v7 );
  }
  LC_API_STRCPY_0(output, retval);
}


// ===== 89a8e0 ALicenseCheck::CallJNIFuncChar(_jclass *,_jmethodID *,char *,int,char *) =====
void __fastcall ALicenseCheck::CallJNIFuncChar(jclass javaClass, jmethodID javaMethod, char *out, int MAX, char *param)
{
  _JNIEnv *CurrentJNIEnv; // r4
  int v10; // r7
  int v11; // r5
  int v12; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv();
  LC_API_MEMSET_0(out, 0, MAX);
  v10 = (int)CurrentJNIEnv->functions->NewStringUTF(CurrentJNIEnv, param);
  v11 = _JNIEnv::CallStaticObjectMethod(CurrentJNIEnv, javaClass, (int)javaMethod, v10);
  v12 = CurrentJNIEnv->functions->GetArrayLength(CurrentJNIEnv, (jarray)v11);
  CurrentJNIEnv->functions->GetByteArrayRegion(CurrentJNIEnv, (jbyteArray)v11, 0, v12, out);
  CurrentJNIEnv->functions->DeleteLocalRef(CurrentJNIEnv, (jobject)v11);
  CurrentJNIEnv->functions->DeleteLocalRef(CurrentJNIEnv, (jobject)v10);
}


// ===== 89a9a4 ALicenseCheck::CallJNIFuncChar(_jclass *,_jmethodID *,char *,int) =====
void __fastcall ALicenseCheck::CallJNIFuncChar(jclass javaClass, jmethodID javaMethod, char *out, int MAX)
{
  _JNIEnv *CurrentJNIEnv; // r4
  int v9; // r5
  int v10; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv();
  LC_API_MEMSET_0(out, 0, MAX);
  v9 = _JNIEnv::CallStaticObjectMethod(CurrentJNIEnv, javaClass, (int)javaMethod);
  v10 = CurrentJNIEnv->functions->GetArrayLength(CurrentJNIEnv, (jarray)v9);
  CurrentJNIEnv->functions->GetByteArrayRegion(CurrentJNIEnv, (jbyteArray)v9, 0, v10, out);
  CurrentJNIEnv->functions->DeleteLocalRef(CurrentJNIEnv, (jobject)v9);
}


// ===== 89aa38 ALicenseCheck::LoadConfig(void) =====
void ALicenseCheck::LoadConfig()
{
  ConfigFile config; // [sp+8h] [bp-4h] BYREF
  char buffer[262152]; // [sp+Ch] [bp+0h] BYREF

  ALicenseCheck::CallJNIFuncChar(ALicenseCheck::cGame, ALicenseCheck::mFileConfig, buffer, 0x40000);
  ConfigFile::ConfigFile(&config);
  ConfigFile::Decode(&config, buffer, ALicenseCheck::EKEY, ALicenseCheck::EPID, ALicenseCheck::SERVER);
  ConfigFile::~ConfigFile(&config);
}


// ===== 89ab08 ALicenseCheck::Init(_JNIEnv *,_jclass *) =====
void __fastcall ALicenseCheck::Init(JNIEnv *env, jclass game)
{
  _jclass *v3; // r0

  ALicenseCheck::cGame = (jclass)env->functions->NewGlobalRef(env, game);
  ALicenseCheck::mLicense = env->functions->GetStaticMethodID(env, ALicenseCheck::cGame, "d", "()V");
  ALicenseCheck::mFileConfig = env->functions->GetStaticMethodID(env, ALicenseCheck::cGame, "db", "()[B");
  ALicenseCheck::mKEY = env->functions->GetStaticMethodID(env, ALicenseCheck::cGame, "dc", "()[B");
  ALicenseCheck::mInstance = env->functions->GetStaticMethodID(
                               env,
                               ALicenseCheck::cGame,
                               "da",
                               "()Landroid/app/Activity;");
  v3 = env->functions->FindClass(env, "android/content/Context");
  ALicenseCheck::cContext = v3;
  if ( v3 )
  {
    ALicenseCheck::cContext = (jclass)env->functions->NewGlobalRef(env, v3);
    LC_API_MEMSET_0(ALicenseCheck::EKEY, 0, 0xFFu);
    LC_API_MEMSET_0(ALicenseCheck::EPID, 0, 0xFFu);
    LC_API_MEMSET_0(ALicenseCheck::SERVER, 0, 0x200u);
    ALicenseCheck::LoadConfig();
  }
}


// ===== 89acc4 ALicenseCheck_InitLicense =====
// attributes: thunk
void __fastcall ALicenseCheck_InitLicense(JNIEnv *env, jclass game)
{
  ALicenseCheck::Init(env, game);
}


// ===== 89acc8 _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...) =====
int _JNIEnv::CallObjectMethod(_JNIEnv *const this, jobject obj, int a3, ...)
{
  return ((int (__fastcall *)(_JNIEnv *const, jobject, int))this->functions->CallObjectMethodV)(this, obj, a3);
}


// ===== 89acfc ALicenseCheck::getIMEI(char *,int) =====
void __fastcall ALicenseCheck::getIMEI(char *out, int MAX)
{
  _JNIEnv *CurrentJNIEnv; // r4
  int v5; // r0
  int v6; // r6
  _jobject *v7; // r5
  int v8; // r0
  int v9; // r0
  _jobject *v10; // r5
  int v11; // r0
  int v12; // r0
  int v13; // r0
  const char *v14; // r0
  const char *v15; // r5
  size_t v16; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv();
  LC_API_MEMSET_0(out, 0, MAX);
  v5 = (int)CurrentJNIEnv->functions->GetStaticFieldID(
              CurrentJNIEnv,
              ALicenseCheck::cContext,
              "TELEPHONY_SERVICE",
              "Ljava/lang/String;");
  v6 = (int)CurrentJNIEnv->functions->GetStaticObjectField(CurrentJNIEnv, ALicenseCheck::cContext, (jfieldID)v5);
  v7 = (_jobject *)_JNIEnv::CallStaticObjectMethod(CurrentJNIEnv, ALicenseCheck::cGame, (int)ALicenseCheck::mInstance);
  v8 = (int)CurrentJNIEnv->functions->GetObjectClass(CurrentJNIEnv, v7);
  v9 = (int)CurrentJNIEnv->functions->GetMethodID(
              CurrentJNIEnv,
              (jclass)v8,
              "getSystemService",
              "(Ljava/lang/String;)Ljava/lang/Object;");
  v10 = (_jobject *)_JNIEnv::CallObjectMethod(CurrentJNIEnv, v7, v9, v6);
  v11 = (int)CurrentJNIEnv->functions->GetObjectClass(CurrentJNIEnv, v10);
  v12 = (int)CurrentJNIEnv->functions->GetMethodID(CurrentJNIEnv, (jclass)v11, "getDeviceId", "()Ljava/lang/String;");
  v13 = _JNIEnv::CallObjectMethod(CurrentJNIEnv, v10, v12);
  v14 = CurrentJNIEnv->functions->GetStringUTFChars(CurrentJNIEnv, (jstring)v13, nullptr);
  v15 = v14;
  if ( v14 )
  {
    v16 = LC_API_STRLEN_0(v14);
    memcpy(out, v15, v16);
  }
  CurrentJNIEnv->functions->DeleteLocalRef(CurrentJNIEnv, (jobject)v6);
}


// ===== 89aea0 _JNIEnv::CallStaticVoidMethod(_jclass *,_jmethodID *,...) =====
void _JNIEnv::CallStaticVoidMethod(_JNIEnv *const this, jclass clazz, int a3, ...)
{
  ((void (__fastcall *)(_JNIEnv *const, jclass, int))this->functions->CallStaticVoidMethodV)(this, clazz, a3);
}


// ===== 89aed4 ALicenseCheck::CallJNIFuncVoid(_jclass *,_jmethodID *) =====
void __fastcall ALicenseCheck::CallJNIFuncVoid(jclass javaClass, jmethodID javaMethod)
{
  _JNIEnv *CurrentJNIEnv; // r0

  CurrentJNIEnv = (_JNIEnv *)NVThreadGetCurrentJNIEnv();
  _JNIEnv::CallStaticVoidMethod(CurrentJNIEnv, javaClass, (int)javaMethod);
}


// ===== 89aef4 ALicenseCheck::Destroy(void) =====
void ALicenseCheck::Destroy()
{
  if ( ALicenseCheck::m_http )
  {
    (*((void (__fastcall **)(LCXPlayerHttp *))ALicenseCheck::m_http->_vptr.LCXPlayerSocketObserver + 5))(ALicenseCheck::m_http);
    ALicenseCheck::m_http = nullptr;
  }
  if ( ALicenseCheck::RMS_PATH )
  {
    LC_API_FREE_0(ALicenseCheck::RMS_PATH);
    ALicenseCheck::RMS_PATH = nullptr;
  }
}


// ===== 89af5c ALicenseCheck::getPhpAddress(char *) =====
char *__fastcall ALicenseCheck::getPhpAddress(char *url)
{
  int v2; // r7
  int v3; // r0
  int v4; // r0
  int v5; // r8
  int v6; // r7
  void *v7; // r5
  char temp[256]; // [sp+4h] [bp-104h] BYREF

  LC_API_MEMSET_0(temp, 0, 0x100u);
  LC_API_MEMSET(temp, 0, 256);
  v2 = LC_API_PARSE_DATA(url, temp, 3, 47) - 1;
  LC_API_MEMSET(temp, 0, 256);
  v3 = LC_API_STRLEN(url);
  LC_API_MEMCPY(temp, &url[v2], v3 - v2);
  v4 = LC_API_STRLEN(temp);
  v5 = v4 + 1;
  v6 = v4;
  v7 = (void *)operator new[](v4 + 1);
  LC_API_MEMSET(v7, 0, v5);
  LC_API_MEMCPY(v7, temp, v6);
  return (char *)v7;
}


// ===== 89b044 ALicenseCheck::getHost(char *) =====
char *__fastcall ALicenseCheck::getHost(char *url)
{
  int v2; // r8
  int v3; // r0
  int v4; // r0
  int v5; // r8
  int v6; // r6
  void *v7; // r4
  char host[256]; // [sp+4h] [bp-204h] BYREF
  char temp[256]; // [sp+104h] [bp-104h] BYREF

  LC_API_MEMSET_0(temp, 0, 0x100u);
  LC_API_MEMSET_0(host, 0, 0x100u);
  LC_API_MEMSET(temp, 0, 256);
  LC_API_MEMSET(host, 0, 256);
  v2 = LC_API_PARSE_DATA(url, temp, 2, 47);
  LC_API_MEMSET(temp, 0, 256);
  v3 = LC_API_STRLEN(url);
  LC_API_MEMCPY(temp, &url[v2], v3 - v2);
  LC_API_PARSE_DATA(temp, host, 0, 47);
  LC_API_STRLEN(temp);
  v4 = LC_API_STRLEN(host);
  v5 = v4 + 1;
  v6 = v4;
  v7 = (void *)operator new[](v4 + 1);
  LC_API_MEMSET(v7, 0, v5);
  LC_API_MEMCPY(v7, host, v6);
  return (char *)v7;
}


// ===== 89b16c ALicenseCheck::initXPlayer(void) =====
void ALicenseCheck::initXPlayer()
{
  char *Host; // r6
  char *PhpAddress; // r5
  LCXPlayerHttp *v2; // r7

  Host = ALicenseCheck::getHost(ALicenseCheck::SERVER);
  PhpAddress = ALicenseCheck::getPhpAddress(ALicenseCheck::SERVER);
  v2 = (LCXPlayerHttp *)operator new(0x428u);
  LCXPlayerHttp::LCXPlayerHttp(v2, Host, "4", PhpAddress);
  ALicenseCheck::m_http = v2;
  if ( Host )
    LC_API_FREE_0(Host);
  if ( PhpAddress )
    LC_API_FREE_0(PhpAddress);
}


// ===== 89b200 ALicenseCheck::SetRMS_PATH(char const*) =====
void __fastcall ALicenseCheck::SetRMS_PATH(const char *path)
{
  int v2; // r0
  int v3; // r5
  int v4; // r4

  v2 = LC_API_STRLEN(path);
  v3 = v2 + 1;
  v4 = v2;
  ALicenseCheck::RMS_PATH = (char *)operator new[](v2 + 1);
  LC_API_MEMSET(ALicenseCheck::RMS_PATH, 0, v3);
  LC_API_MEMCPY(ALicenseCheck::RMS_PATH, path, v4);
}


// ===== 89b258 ALicenseCheck_SetRMS_PATH =====
// attributes: thunk
void __fastcall ALicenseCheck_SetRMS_PATH(const char *path)
{
  ALicenseCheck::SetRMS_PATH(path);
}


// ===== 89b25c ALicenseCheck::LoadRMS(void) =====
bool ALicenseCheck::LoadRMS()
{
  FILE *v0; // r0
  FILE *v1; // r6
  int i; // r3
  int v3; // r8
  signed int v4; // r0
  signed int v5; // r7
  int j; // r2
  unsigned int v7; // r1
  int v8; // r9
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r8
  signed int v15; // r7
  int k; // r3
  unsigned int v17; // r2
  int v18; // r10
  int v19; // r3
  int v20; // r1
  int v21; // r3
  char v22; // r2
  char v23; // r1
  int v25; // [sp+0h] [bp-80414h]
  int v26; // [sp+4h] [bp-80410h]
  char buffer[524288]; // [sp+Ch] [bp-80408h] BYREF
  char XIMEI[256]; // [sp+8000Ch] [bp-408h] BYREF
  char XKEY[256]; // [sp+8010Ch] [bp-308h] BYREF
  char pkey[256]; // [sp+8020Ch] [bp-208h] BYREF
  char path[264]; // [sp+8030Ch] [bp-108h] BYREF

  sprintf(path, "%s/iglu.bin", ALicenseCheck::RMS_PATH);
  v0 = fopen(path, "rb");
  v1 = v0;
  if ( !v0 )
    return 0;
  fread(buffer, 1u, 0x80000u, v0);
  fclose(v1);
  for ( i = 0; i != 8; ++i )
    pkey[i] = MAP_CHARS[IK[i]];
  pkey[8] = 0;
  v3 = (unsigned __int8)buffer[8272];
  v25 = (unsigned __int8)buffer[8204];
  v4 = LC_API_STRLEN_0(ALicenseCheck::KEY);
  v5 = v4;
  if ( v4 <= 0 )
  {
    XKEY[v4] = 0;
    ALicenseCheck::XOR(XKEY, pkey, XKEY);
    XKEY[v5] = 0;
  }
  else
  {
    for ( j = 0; j != v4; ++j )
    {
      v7 = ALicenseCheck::KEY[j];
      if ( v7 <= 0xFF )
        LOWORD(v7) = *(_WORD *)(toupper_tab_ + 2 * v7 + 2);
      XKEY[j] = v7;
    }
    v8 = 0;
    XKEY[v4] = 0;
    ALicenseCheck::XOR(XKEY, pkey, XKEY);
    XKEY[v5] = 0;
    if ( XKEY[0] != buffer[v25 + 8320] )
      return 0;
    v9 = v25 + v3 + 8320;
    while ( v5 != ++v8 )
    {
      v10 = (unsigned __int8)buffer[v9];
      v9 += v3;
      if ( v10 != (unsigned __int8)XKEY[v8] )
        return 0;
    }
  }
  if ( buffer[24588] )
  {
    if ( buffer[24704] > 15 )
      return 0;
    v11 = (unsigned __int8)buffer[24656] + 24704;
    v12 = 0;
    while ( ++v12 != (unsigned __int8)buffer[24588] )
    {
      v13 = (unsigned __int8)buffer[v11];
      v11 += (unsigned __int8)buffer[24656];
      if ( v13 << 24 > 251658240 )
        return 0;
    }
  }
  v26 = (unsigned __int8)buffer[57356];
  v14 = (unsigned __int8)buffer[57424];
  v15 = LC_API_STRLEN_0(ALicenseCheck::IMEI);
  if ( v15 > 0 )
  {
    for ( k = 0; k != v15; ++k )
    {
      v17 = ALicenseCheck::IMEI[k];
      if ( v17 <= 0xFF )
        LOWORD(v17) = *(_WORD *)(toupper_tab_ + 2 * v17 + 2);
      XIMEI[k] = v17;
    }
    v18 = 0;
    XIMEI[v15] = 0;
    ALicenseCheck::XOR(XIMEI, pkey, XIMEI);
    XIMEI[v15] = 0;
    if ( XIMEI[0] == buffer[v26 + 57600] )
    {
      v19 = v26 + v14 + 57600;
      while ( v15 != ++v18 )
      {
        v20 = (unsigned __int8)buffer[v19];
        v19 += v14;
        if ( v20 != (unsigned __int8)XIMEI[v18] )
          return 0;
      }
      goto LABEL_30;
    }
    return 0;
  }
  XIMEI[v15] = 0;
  ALicenseCheck::XOR(XIMEI, pkey, XIMEI);
LABEL_30:
  v21 = 205312;
  v22 = 0;
  do
  {
    v23 = buffer[v21++];
    v22 += v23;
  }
  while ( v21 != 410112 );
  return v22 == buffer[410240];
}


// ===== 89b65c ALicenseCheck::SaveRMS(bool) =====
void __fastcall ALicenseCheck::SaveRMS(bool valid)
{
  _BOOL4 v1; // r6
  FILE *v2; // r11
  int v3; // r0
  int i; // r7
  int j; // r3
  char v6; // r1
  int v7; // r3
  int v8; // r8
  signed int v9; // r7
  int k; // r3
  unsigned int v11; // r2
  int v12; // r0
  int v13; // r12
  int v14; // r2
  int m; // r3
  int v16; // r1
  int v17; // r2
  int v18; // lr
  int v19; // r3
  int n; // r2
  int v21; // r12
  int v22; // r8
  signed int v23; // r7
  int ii; // r2
  unsigned int v25; // r1
  signed int v26; // r10
  int v27; // r3
  char v28; // r2
  int v29; // r3
  char v30; // r2
  char v31; // r1
  int v32; // [sp+4h] [bp-80410h]
  int v33; // [sp+4h] [bp-80410h]
  char buffer[524288]; // [sp+Ch] [bp-80408h] BYREF
  char XIMEI[256]; // [sp+8000Ch] [bp-408h] BYREF
  char XKEY[256]; // [sp+8010Ch] [bp-308h] BYREF
  char pkey[256]; // [sp+8020Ch] [bp-208h] BYREF
  char path[264]; // [sp+8030Ch] [bp-108h] BYREF

  v1 = valid;
  sprintf(path, "%s/iglu.bin", ALicenseCheck::RMS_PATH);
  v2 = fopen(path, "wb");
  if ( v2 )
  {
    v3 = ALicenseCheck::currentTime();
    srand48(v3);
    for ( i = 0; i != 0x80000; ++i )
      buffer[i] = lrand48() % 255 + 1;
    if ( v1 )
    {
      for ( j = 0; j != 8; ++j )
        pkey[j] = MAP_CHARS[IK[j]];
      v6 = buffer[8204];
      v7 = 8272;
      if ( (unsigned __int8)buffer[8204] <= 3u )
        v32 = 8324;
      v8 = (unsigned __int8)buffer[8272];
      if ( (unsigned __int8)buffer[8204] > 3u )
        v7 = (unsigned __int8)buffer[8204] + 8320;
      pkey[8] = 0;
      if ( (unsigned __int8)buffer[8204] > 3u )
        v32 = v7;
      else
        v6 = 4;
      if ( (unsigned __int8)buffer[8272] <= 3u )
        v8 = 4;
      buffer[1024] = 2;
      buffer[8204] = v6;
      buffer[8272] = v8;
      v9 = LC_API_STRLEN_0(ALicenseCheck::KEY);
      if ( v9 <= 0 )
      {
        XKEY[v9] = 0;
        ALicenseCheck::XOR(XKEY, pkey, XKEY);
      }
      else
      {
        for ( k = 0; k != v9; ++k )
        {
          v11 = ALicenseCheck::KEY[k];
          if ( v11 <= 0xFF )
            LOWORD(v11) = *(_WORD *)(toupper_tab_ + 2 * v11 + 2);
          XKEY[k] = v11;
        }
        XKEY[v9] = 0;
        ALicenseCheck::XOR(XKEY, pkey, XKEY);
        v14 = v32;
        for ( m = 0; m != v9; ++m )
        {
          v16 = (unsigned __int8)XKEY[m];
          buffer[v14] = v16;
          v14 += v8;
        }
      }
      v17 = (unsigned __int8)buffer[24588] + 10;
      if ( v17 <= 20 )
      {
        v12 = 24;
        v18 = 24;
      }
      else
      {
        v18 = (unsigned __int8)(buffer[24588] + 10);
      }
      if ( v17 > 20 )
        v12 = v18;
      if ( (unsigned __int8)buffer[24656] <= 3u )
        v13 = 4;
      else
        v16 = (unsigned __int8)buffer[24656];
      if ( (unsigned __int8)buffer[24656] > 3u )
        v13 = v16;
      else
        LOBYTE(v16) = v13;
      buffer[24588] = v18;
      buffer[24656] = v16;
      if ( v12 )
      {
        v19 = 24704;
        for ( n = 0; n != v12; ++n )
        {
          buffer[v19] &= 0xFu;
          v19 += v13;
        }
      }
      v21 = (unsigned __int8)buffer[57356];
      v22 = (unsigned __int8)buffer[57424];
      if ( (unsigned __int8)buffer[57356] > 3u )
        v12 = (unsigned __int8)buffer[57356] + 57600;
      else
        v21 = 57604;
      if ( (unsigned __int8)buffer[57356] > 3u )
        v33 = v12;
      else
        v33 = v21;
      if ( (unsigned __int8)buffer[57356] <= 3u )
        LOBYTE(v21) = 4;
      if ( (unsigned __int8)buffer[57424] <= 3u )
        v22 = 4;
      buffer[57356] = v21;
      buffer[57424] = v22;
      v23 = LC_API_STRLEN_0(ALicenseCheck::IMEI);
      if ( v23 > 0 )
      {
        for ( ii = 0; ii != v23; ++ii )
        {
          v25 = ALicenseCheck::IMEI[ii];
          if ( v25 <= 0xFF )
            LOWORD(v25) = *(_WORD *)(toupper_tab_ + 2 * v25 + 2);
          XIMEI[ii] = v25;
        }
      }
      v26 = 0;
      XIMEI[v23] = 0;
      ALicenseCheck::XOR(XIMEI, pkey, XIMEI);
      if ( v23 == LC_API_STRLEN_0(XIMEI) )
      {
        if ( v23 > 0 )
        {
          v27 = v33;
          do
          {
            v28 = XIMEI[v26++];
            buffer[v27] = v28;
            v27 += v22;
          }
          while ( v23 > v26 );
        }
        v29 = 205312;
        v30 = 0;
        do
        {
          v31 = buffer[v29++];
          v30 += v31;
        }
        while ( v29 != 410112 );
        buffer[410240] = v30;
      }
    }
    else
    {
      buffer[8272] = 0;
    }
    fwrite(buffer, 1u, 0x80000u, v2);
    fclose(v2);
  }
}


// ===== 89bacc ALicenseCheck::validateResponse(char *) =====
void __fastcall ALicenseCheck::validateResponse(char *response)
{
  int v2; // r0
  int v3; // r10
  char resp[8]; // [sp+4h] [bp-2Ch] BYREF
  char temp[32]; // [sp+Ch] [bp-24h] BYREF

  memset(resp, 0, 6);
  memset(temp, 0, sizeof(temp));
  LC_API_MEMSET(resp, 0, 6);
  LC_API_MEMSET(temp, 0, 32);
  v2 = LC_API_PARSE_DATA(response, temp, 1, 124);
  v3 = v2;
  if ( (unsigned int)(v2 - 2) > 5 )
    goto LABEL_4;
  LC_API_MEMCPY(resp, response, v2 - 1);
  if ( !LC_API_STRCMP(resp, &ConfigFile::mParams[255]) )
  {
    ALicenseCheck::SaveRMS(0);
    exit(0);
  }
  if ( LC_API_STRCMP(resp, &ConfigFile::mParams[510]) )
  {
LABEL_4:
    ALicenseCheck::SaveRMS(0);
  }
  else
  {
    if ( (LC_API_ATOI(&response[v3]) ^ 0xD0A4) != ALicenseCheck::UCODE )
    {
      ALicenseCheck::SaveRMS(0);
      exit(0);
    }
    ALicenseCheck::SaveRMS(1);
  }
}


// ===== 89bc38 ALicenseCheck::sendRequestByGet(void) =====
void ALicenseCheck::sendRequestByGet()
{
  char *v0; // r8
  char *Response; // r0
  char *v2; // r6
  char buffer[4096]; // [sp+Ch] [bp-1104h] BYREF
  char qry[260]; // [sp+100Ch] [bp-104h] BYREF

  if ( !ALicenseCheck::m_http )
    ALicenseCheck::initXPlayer();
  sprintf(qry, "%s|%s|%s|%d", ALicenseCheck::KEY, ALicenseCheck::EPID, ALicenseCheck::IMEI, ALicenseCheck::UCODE);
  v0 = SSEncDec_String2BlobLC(qry);
  LC_API_MEMSET(buffer, 0, 4096);
  sprintf(buffer, "b=%s", v0);
  if ( v0 )
    LC_API_FREE_0(v0);
  LCXPlayerHttp::sendByGetWithNoVer(ALicenseCheck::m_http, ALicenseCheck::SERVER, buffer);
  do
    LCXPlayerHttp::UpdateRequest(ALicenseCheck::m_http);
  while ( LCXPlayerHttp::IsInProgress(ALicenseCheck::m_http) );
  if ( !LCXPlayerHttp::IsErrorOccurred(ALicenseCheck::m_http) )
  {
    Response = LCXPlayerHttp::GetResponse(ALicenseCheck::m_http);
    v2 = SSEncDec_Blob2StringLC(Response);
    ALicenseCheck::validateResponse(v2);
    if ( v2 )
      LC_API_FREE_0(v2);
  }
}


// ===== 89bdc0 ALicenseCheck::ValidateServer(bool) =====
void __fastcall ALicenseCheck::ValidateServer(bool sendTracking)
{
  _BOOL4 v1; // r10
  char server[512]; // [sp+Ch] [bp-208h] BYREF

  v1 = sendTracking;
  ALicenseCheck::getIMEI(ALicenseCheck::IMEI, 255);
  ALicenseCheck::UCODE = ALicenseCheck::createUniqueCode();
  ALicenseCheck::CallJNIFuncChar(ALicenseCheck::cGame, ALicenseCheck::mKEY, ALicenseCheck::KEY, 255);
  sprintf(server, ALicenseCheck::SERVER, ALicenseCheck::KEY, ALicenseCheck::EPID, ALicenseCheck::IMEI);
  ALicenseCheck::sendRequestByGet();
  if ( !ALicenseCheck::LoadRMS() )
    exit(0);
  if ( v1 )
    ALicenseCheck::CallJNIFuncVoid(ALicenseCheck::cGame, ALicenseCheck::mLicense);
}


// ===== 89becc ALicenseCheck_ValidateLicense =====
// attributes: thunk
void __fastcall ALicenseCheck_ValidateLicense(bool sendTracking)
{
  ALicenseCheck::ValidateServer(sendTracking);
}


// ===== 89bed0 ConfigFile::ConfigFile(void) =====
ConfigFile *__fastcall ConfigFile::ConfigFile(ConfigFile *const this)
{
  return this;
}


// ===== 89bed4 ConfigFile::ConfigFile(void) =====
ConfigFile *__fastcall ConfigFile::ConfigFile(ConfigFile *const this)
{
  return this;
}


// ===== 89bed8 ConfigFile::~ConfigFile() =====
void *__fastcall ConfigFile::~ConfigFile(ConfigFile *const this)
{
  return this;
}


// ===== 89bedc ConfigFile::~ConfigFile() =====
void *__fastcall ConfigFile::~ConfigFile(ConfigFile *const this)
{
  return this;
}


// ===== 89bee0 ConfigFile::Encode(char const*,char const*,char const*,char *) =====
int __fastcall ConfigFile::Encode(
        ConfigFile *const this,
        const char *key,
        const char *pID,
        const char *server,
        char *buffer)
{
  return 0;
}


// ===== 89bee8 ConfigFile::Seed(void) =====
unsigned int __fastcall ConfigFile::Seed(ConfigFile *const this)
{
  return 0;
}


// ===== 89bef0 ConfigFile::XOR(char const*,char const*,char *) =====
void __fastcall ConfigFile::XOR(ConfigFile *const this, const char *value, const char *key, char *output)
{
  size_t v7; // r8
  size_t v8; // r0
  int v9; // r2
  size_t v10; // r3
  char v11; // lr
  char retval[512]; // [sp+4h] [bp-208h] BYREF

  v7 = LC_API_STRLEN_0(key);
  v8 = LC_API_STRLEN_0(value);
  if ( v8 )
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = key[v10++];
      retval[v9] = v11 ^ value[v9];
      ++v9;
      if ( v7 <= v10 )
        v10 = 0;
    }
    while ( v9 != v8 );
  }
  else
  {
    v9 = 0;
  }
  retval[v9] = 0;
  LC_API_STRCPY_0(output, retval);
}


// ===== 89bfb4 ConfigFile::Decode(char const*,char *,char *,char *) =====
int __fastcall ConfigFile::Decode(ConfigFile *const this, const char *buffer, char *key, char *pID, char *server)
{
  int v6; // r1
  int v8; // lr
  const char *v9; // r0
  int i; // r2
  char v11; // t1
  int j; // r3
  char *v13; // r12
  int *v14; // r0
  int k; // r4
  int v16; // r3
  int v17; // r2
  int v18; // r0
  int v19; // r12
  const char *v20; // r2
  int v21; // r3
  char v22; // t1
  int v23; // r4
  unsigned __int8 v24; // r10
  const char *v25; // r9
  int m; // r3
  char v27; // t1
  int n; // r3
  char output[512]; // [sp+14h] [bp-308h] BYREF
  char pkey[256]; // [sp+214h] [bp-108h] BYREF

  v6 = *((unsigned __int8 *)buffer + 3072);
  if ( v6 )
  {
    v8 = *((unsigned __int8 *)buffer + 3076);
    v9 = buffer + 0x2000;
    for ( i = 0; i != v6; ++i )
    {
      v11 = *v9;
      v9 += v8;
      pID[i] = v11;
    }
  }
  LC_API_MEMSET_0(pkey, 0, 0xFFu);
  for ( j = 0; j != 8; ++j )
    pkey[j] = INTERNAL_KEY[INTERNAL_KEY_INDEX[j]];
  v13 = ConfigFile::mParams;
  v14 = PARAMS[0];
  for ( k = 0; k != 3; ++k )
  {
    v16 = 0;
    while ( 1 )
    {
      v17 = v14[v16];
      if ( v17 << 24 == 704643072 )
        break;
      v13[v16++] = INTERNAL_KEY[v17];
      if ( v16 == 255 )
        goto LABEL_11;
    }
    ConfigFile::mParams[255 * k + v16] = 0;
LABEL_11:
    v13 += 255;
    v14 += 8;
  }
  v18 = *((unsigned __int8 *)buffer + 18432);
  if ( buffer[18432] )
  {
    v19 = *((unsigned __int8 *)buffer + 18436);
    v20 = buffer + 23552;
    v21 = 0;
    do
    {
      v22 = *v20;
      v20 += v19;
      key[v21++] = v22;
    }
    while ( v21 != v18 );
  }
  v23 = *((unsigned __int8 *)buffer + 102400) | (*((unsigned __int8 *)buffer + 102401) << 8);
  v24 = buffer[102404];
  LC_API_MEMSET_0(output, 0, 0x200u);
  if ( v23 <= 0 )
  {
    ConfigFile::XOR(this, output, pkey, output);
    ConfigFile::XOR(this, output, key, server);
    printf("%s: %u: %s \n%s\n", "P:/Template/Android/ALC/jni/../LCXPlayer/../jni/ConfigFile.cpp", 215, "server", server);
  }
  else
  {
    v25 = buffer + 104448;
    for ( m = 0; m != v23; ++m )
    {
      v27 = *v25;
      v25 += v24;
      output[m] = v27;
    }
    ConfigFile::XOR(this, output, pkey, output);
    ConfigFile::XOR(this, output, key, server);
    printf("%s: %u: %s \n%s\n", "P:/Template/Android/ALC/jni/../LCXPlayer/../jni/ConfigFile.cpp", 215, "server", server);
    for ( n = 0; n != v23; ++n )
    {
      if ( server[n] == 35 )
        server[n] = 37;
    }
  }
  printf("%s: %u: %s \n%s\n", "P:/Template/Android/ALC/jni/../LCXPlayer/../jni/ConfigFile.cpp", 223, "key", key);
  return 0;
}


// ===== 89c29c LC_API_STRCHRFIND =====
char *__fastcall LC_API_STRCHRFIND(char *src, const char subchar, int count)
{
  int v3; // r3
  bool v4; // cc
  int v5; // r4
  int v6; // r3
  int v7; // r12
  bool v8; // cc

  v3 = (unsigned __int8)*src;
  v4 = v3 == 0;
  if ( *src )
    v4 = count <= 0;
  v5 = !v4;
  v6 = v3 << 24;
  if ( !v4 )
  {
    v7 = 0;
    v5 = 0;
    do
    {
      ++v7;
      if ( subchar == v6 >> 24 )
        ++v5;
      v8 = 0;
      if ( src[v7] )
        v8 = v5 < count;
      v6 = (unsigned __int8)src[v7] << 24;
    }
    while ( v8 );
    src += v7;
  }
  if ( v5 != count )
    return nullptr;
  return src;
}


// ===== 89c2f8 LC_API_STRCHR =====
char *__fastcall LC_API_STRCHR(const char *src, const char subchar, int bFromLeft2Right)
{
  return (char *)src;
}


// ===== 89c2fc LC_DEBUG_INIT =====
void LC_DEBUG_INIT()
{
  ;
}


// ===== 89c300 LC_DEBUG_FINALIZE =====
void LC_DEBUG_FINALIZE()
{
  ;
}


// ===== 89c304 LC_DEBUG_OUT =====
void LC_DEBUG_OUT(const char *format, ...)
{
  ;
}


// ===== 89c310 LC_API_FTOA =====
char *__fastcall LC_API_FTOA(float num, char *str, int digits)
{
  return (char *)LODWORD(num);
}


// ===== 89c314 LC_API_ITOA =====
char *__fastcall LC_API_ITOA(int num, char *str, int radix)
{
  int v3; // r11
  int v4; // r4
  char v5; // r3
  char *v6; // r6
  char *v7; // r3
  char v8; // r2
  char table[40]; // [sp+4h] [bp-30h] BYREF

  v4 = num;
  qmemcpy(table, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ", 36);
  v5 = a0123456789abcd[28];
  if ( !num )
    v5 = 48;
  table[36] = a0123456789abcd[36];
  if ( num )
  {
    v6 = str;
    if ( num >= 0 )
      v3 = 0;
    else
      v5 = 45;
    if ( num < 0 )
    {
      *str = v5;
      v6 = str + 1;
      v4 = -num;
      v3 = 1;
    }
    while ( 1 )
    {
      *v6 = table[v4 % radix];
      v4 /= radix;
      if ( !v4 )
        break;
      ++v6;
    }
    v6[1] = 0;
    if ( v3 )
      v7 = str + 1;
    else
      v7 = str;
    while ( v7 < v6 )
    {
      v8 = *v7;
      *v7++ = *v6;
      *v6-- = v8;
    }
  }
  else
  {
    *str = v5;
    str[1] = 0;
  }
  return str;
}


// ===== 89c42c ConvertUnicodeToUTF8LC(char *,ushort const*,int) =====
int __fastcall ConvertUnicodeToUTF8LC(char *output, const Unicode2Bytes *input, const int lenInput)
{
  int result; // r0
  unsigned int v5; // r12
  int v6; // r2
  int v7; // r4
  char *v8; // r5
  char v9; // r4

  if ( lenInput > 0 )
  {
    v5 = 0;
    v6 = 2 * lenInput;
    result = 0;
    while ( 1 )
    {
      v7 = input[v5 / 2];
      if ( (unsigned int)v7 <= 0x7F )
        break;
      if ( (unsigned int)v7 <= 0x7FF )
      {
        result += 2;
        *output = ~((unsigned int)~(v7 >> 6 << 26) >> 26);
        output[1] = ~(~((input[v5 / 2] & 0x3Fu) << 25) >> 25);
        output += 2;
LABEL_5:
        v5 += 2;
        if ( v5 == v6 )
          goto LABEL_10;
      }
      else
      {
        result += 3;
        *output = ~((unsigned int)~(v7 >> 12 << 27) >> 27);
        v8 = output + 1;
        output[1] = ~(~((((int)input[v5 / 2] >> 6) & 0x3Fu) << 25) >> 25);
        v9 = input[v5 / 2];
        v5 += 2;
        output += 3;
        v8[1] = ~(~((v9 & 0x3Fu) << 25) >> 25);
        if ( v5 == v6 )
          goto LABEL_10;
      }
    }
    *output++ = v7;
    ++result;
    goto LABEL_5;
  }
  result = 0;
LABEL_10:
  *output = 0;
  return result;
}


// ===== 89c514 ConvertUTF8ToUnicodeLC(ushort *,char const*,int) =====
int __fastcall ConvertUTF8ToUnicodeLC(Unicode2Bytes *output, const char *input, const int lenInput)
{
  int v3; // r10
  Unicode2Bytes *v4; // r5
  int v5; // r12
  int v6; // r3
  char v7; // r0
  Unicode2Bytes v8; // r6
  Unicode2Bytes v9; // r4
  int v10; // r8
  char v11; // r4
  char v12; // r0

  if ( lenInput > 0 )
  {
    v4 = output + 1;
    v5 = 1;
    v6 = 0;
    do
    {
      while ( 1 )
      {
        v8 = (unsigned __int8)input[v6];
        v3 = v5;
        v9 = (char)v8;
        v10 = v8 & 0xC0;
        if ( (v8 & 0xE0) != 0xE0 )
          break;
        v11 = input[v6 + 2];
        v12 = input[v6 + 1];
        v6 += 3;
        *(v4 - 1) = v11 & 0x3F | (v8 << 12) | ((v12 & 0x3F) << 6);
        ++v5;
        ++v4;
        if ( v6 >= lenInput )
          goto LABEL_13;
      }
      if ( v10 == 192 )
      {
        v7 = input[v6 + 1];
        v6 += 2;
        v8 = v7 & 0x3F | ((v8 & 0x1F) << 6);
      }
      else
      {
        ++v6;
      }
      if ( v10 == 192 )
      {
        *(v4 - 1) = v8;
        v3 = v5;
      }
      else
      {
        *(v4 - 1) = v9;
      }
      ++v4;
      ++v5;
    }
    while ( v6 < lenInput );
LABEL_13:
    output = v4 - 1;
  }
  else
  {
    v3 = 0;
  }
  *output = 0;
  return v3;
}


// ===== 89c5dc UTF8ToUnicode_OldLC(ushort *,char const*) =====
void __fastcall UTF8ToUnicode_OldLC(unsigned __int16 *strsrc, const char *pUTF8)
{
  __int16 v2; // r5
  int v3; // r3
  int v4; // r4
  int v5; // r3
  int v6; // r2
  int v7; // r2
  int v8; // r12
  const char *v9; // r3
  const char *v10; // r1
  unsigned __int16 v11; // r2
  const char *v12; // r6
  char v13; // t1

  v3 = *(unsigned __int8 *)pUTF8;
  if ( *pUTF8 )
  {
    v4 = 0;
    do
    {
      while ( 1 )
      {
        v5 = v3 << 24;
        v6 = v5 >> 24;
        if ( v5 >> 24 < 0 )
          break;
        strsrc[v4] = v6;
        ++pUTF8;
LABEL_3:
        v3 = *(unsigned __int8 *)pUTF8;
        ++v4;
        if ( !*pUTF8 )
          return;
      }
      v7 = v6 << 26;
      if ( v7 >= 0 )
      {
        LOBYTE(v2) = 2;
        v8 = 1;
      }
      else
      {
        v8 = 1;
        do
        {
          v7 *= 2;
          ++v8;
        }
        while ( v7 < 0 );
        if ( v8 <= 5 )
          LOBYTE(v2) = v8 + 1;
        else
          v5 >>= 24;
        if ( v8 > 5 )
        {
          strsrc[v4] = v5;
          ++pUTF8;
          goto LABEL_3;
        }
      }
      v9 = pUTF8;
      v10 = pUTF8 + 1;
      v11 = v7 >> 24 >> v2;
      v12 = &v9[v8];
      do
      {
        v13 = *++v9;
        v2 = v13 & 0x3F;
        v11 = v2 | (v11 << 6);
      }
      while ( v9 != v12 );
      strsrc[v4] = v11;
      pUTF8 = &v10[v8];
      v3 = *(unsigned __int8 *)pUTF8;
      ++v4;
    }
    while ( *pUTF8 );
  }
}


// ===== 89c6ac ConvertUnicodeToUTF8_OldLC(char *,ushort const*) =====
int __fastcall ConvertUnicodeToUTF8_OldLC(char *strdest, const unsigned __int16 *strsrc)
{
  char *v2; // r3
  __int16 v3; // r12
  unsigned int v4; // r2
  __int16 v5; // r2
  __int16 v6; // r12
  __int16 v7; // r2
  __int16 v8; // r12
  int result; // r0
  unsigned int v10; // r2
  unsigned int v11; // t1
  __int16 v12; // r3
  __int16 v13; // r2
  unsigned int v14; // r3
  bool v15; // cc
  __int16 v16; // r2
  __int16 v17; // r3

  if ( strdest )
  {
    v2 = strdest;
    if ( ((unsigned __int8)strsrc & 1) != 0 )
    {
      v3 = *((unsigned __int8 *)strsrc + 1);
      v4 = (unsigned __int16)(*(unsigned __int8 *)strsrc + (v3 << 8));
      if ( *(unsigned __int8 *)strsrc + (v3 << 8) )
      {
        while ( v4 > 0x7F )
        {
          if ( v4 <= 0x7FF )
          {
            *v2 = ((int)(v4 & 0x7C0) >> 6) | 0xC0;
            v2[1] = v4 & 0x3F | 0x80;
            v2 += 2;
LABEL_6:
            v5 = *((unsigned __int8 *)strsrc + 2);
            v6 = *((unsigned __int8 *)strsrc++ + 3);
            v4 = (unsigned __int16)(v5 + (v6 << 8));
            if ( !v4 )
              goto LABEL_11;
          }
          else
          {
            *v2 = (v4 >> 12) | 0xE0;
            v2[1] = ((int)(v4 & 0xFC0) >> 6) | 0x80;
            v2[2] = v4 & 0x3F | 0x80;
            v7 = *((unsigned __int8 *)strsrc + 2);
            v2 += 3;
            v8 = *((unsigned __int8 *)strsrc++ + 3);
            v4 = (unsigned __int16)(v7 + (v8 << 8));
            if ( !v4 )
              goto LABEL_11;
          }
        }
        *v2++ = v4;
        goto LABEL_6;
      }
    }
    else
    {
      v10 = *strsrc;
      if ( *strsrc )
      {
        do
        {
          if ( v10 > 0x7F )
          {
            if ( v10 <= 0x7FF )
            {
              *v2 = ((int)(v10 & 0x7C0) >> 6) | 0xC0;
              v2[1] = v10 & 0x3F | 0x80;
              v2 += 2;
            }
            else
            {
              *v2 = (v10 >> 12) | 0xE0;
              v2[1] = ((int)(v10 & 0xFC0) >> 6) | 0x80;
              v2[2] = v10 & 0x3F | 0x80;
              v2 += 3;
            }
          }
          else
          {
            *v2++ = v10;
          }
          v11 = strsrc[1];
          ++strsrc;
          v10 = v11;
        }
        while ( v11 );
      }
    }
LABEL_11:
    *v2 = 0;
    return v2 - strdest;
  }
  else
  {
    for ( result = 1; ; ++result )
    {
      v12 = *(unsigned __int8 *)strsrc;
      v13 = *((unsigned __int8 *)strsrc++ + 1);
      v14 = (unsigned __int16)(v12 + (v13 << 8));
      if ( !v14 )
        break;
      while ( v14 > 0x7F )
      {
        v15 = v14 > 0x7FF;
        v16 = *((unsigned __int8 *)strsrc + 1);
        v17 = *(unsigned __int8 *)strsrc;
        if ( v15 )
          result += 3;
        else
          result += 2;
        ++strsrc;
        v14 = (unsigned __int16)(v17 + (v16 << 8));
        if ( !v14 )
          return result;
      }
    }
  }
  return result;
}


// ===== 89c88c LC_API_PARSE_DATA =====
int __fastcall LC_API_PARSE_DATA(const char *src, char *dst, int pos, char seperator)
{
  int v4; // r12
  int v5; // r7
  int v6; // r4
  int v7; // r6
  int v8; // r5

  v4 = 0;
  *dst = 0;
  v5 = 0;
  v6 = *(unsigned __int8 *)src;
  v7 = -1;
  v8 = v6 << 24;
  if ( *src )
  {
    while ( seperator != v8 >> 24 )
    {
      if ( !pos )
      {
        dst[v5] = v6;
        if ( v7 == -1 )
          v7 = v4;
        dst[++v5] = 0;
        goto LABEL_8;
      }
      if ( pos < 0 )
        return v7;
      ++v4;
LABEL_9:
      v6 = (unsigned __int8)src[v4];
      v8 = v6 << 24;
      if ( !src[v4] )
        return v7;
    }
    --pos;
LABEL_8:
    ++v4;
    goto LABEL_9;
  }
  return v7;
}


// ===== 89c910 SSEncDec_GetCharFromKeyByIndexLC(int) =====
char __fastcall SSEncDec_GetCharFromKeyByIndexLC(int nKeyIndex)
{
  if ( nKeyIndex <= 25 )
    return nKeyIndex + 97;
  if ( nKeyIndex <= 51 )
    return nKeyIndex + 39;
  if ( nKeyIndex <= 61 )
    return nKeyIndex - 4;
  if ( nKeyIndex == 62 )
    return 95;
  return 45;
}


// ===== 89c958 SSEncDec_GetKeyFromCharLC(char) =====
char __fastcall SSEncDec_GetKeyFromCharLC(char nChar)
{
  if ( nChar == 45 )
    return 63;
  if ( nChar == 95 )
    return 62;
  if ( nChar <= 57 )
    return nChar + 4;
  if ( nChar > 90 )
    return nChar - 97;
  return nChar - 39;
}


// ===== 89c99c LC_API_GetNationality(char *) =====
void __fastcall LC_API_GetNationality(char *data)
{
  ;
}


// ===== 89c9a0 getValueLC =====
int __fastcall getValueLC(const char *src, char *dst, int pos, char label)
{
  int v4; // r4
  int v5; // r6
  int v6; // r12
  int v7; // r5

  v4 = 0;
  *dst = 0;
  v5 = 0;
  v6 = *(unsigned __int8 *)src;
  v7 = v6 << 24;
  if ( *src )
  {
    while ( label != v7 >> 24 )
    {
      if ( !pos )
      {
        dst[v5] = v6;
        dst[++v5] = 0;
        goto LABEL_6;
      }
      if ( pos < 0 )
        return 0;
      ++v4;
LABEL_7:
      v6 = (unsigned __int8)src[v4];
      v7 = v6 << 24;
      if ( !src[v4] )
        return 0;
    }
    --pos;
LABEL_6:
    ++v4;
    goto LABEL_7;
  }
  return 0;
}


// ===== 89ca14 LC_API_TOLOWER(char const*,char *) =====
void __fastcall LC_API_TOLOWER(const char *src, char *dest)
{
  bool v2; // zf
  int v3; // r4
  unsigned __int8 v4; // r2
  int v5; // r3

  v2 = src == nullptr;
  if ( src )
    v2 = dest == nullptr;
  if ( !v2 )
  {
    v3 = 0;
    v4 = *src;
    if ( *src )
    {
      v5 = 0;
      do
      {
        if ( (unsigned int)v4 - 65 > 0x19 )
          dest[v3] = v4;
        else
          dest[v3] = v4 + 32;
        v4 = src[++v5];
        v3 = v5;
      }
      while ( v4 );
    }
    else
    {
      v3 = *(unsigned __int8 *)src;
    }
    dest[v3] = 0;
  }
}


// ===== 89ca7c LC_DEBUG_SAVE_RECVDATA_LOG(char const*,int) =====
void __fastcall LC_DEBUG_SAVE_RECVDATA_LOG(const char *data, int length)
{
  fwrite(data, 1u, length, fp_recvLC);
}


// ===== 89caa4 LC_DEBUG_SAVE_SENDDATA_LOG(char const*,int) =====
void __fastcall LC_DEBUG_SAVE_SENDDATA_LOG(const char *data, int length)
{
  fwrite(data, 1u, length, fp_sendLC);
}


// ===== 89cacc LC_API_FILE_WRITE =====
int __fastcall LC_API_FILE_WRITE(void *src, int element_size, int count, int handle)
{
  return fwrite(src, element_size, count, l_file_listLC[handle - 1]);
}


// ===== 89caf8 LC_DEBUG_CLOSE_RECVDATA_LOG(void) =====
void LC_DEBUG_CLOSE_RECVDATA_LOG()
{
  fclose(fp_recvLC);
}


// ===== 89cb18 LC_DEBUG_CLOSE_SENDDATA_LOG(void) =====
void LC_DEBUG_CLOSE_SENDDATA_LOG()
{
  fclose(fp_sendLC);
}


// ===== 89cb38 LC_API_FILE_CLOSE =====
void __fastcall LC_API_FILE_CLOSE(int handle)
{
  int v1; // r5

  v1 = handle - 1;
  fclose(l_file_listLC[handle - 1]);
  l_file_listLC[v1] = nullptr;
}


// ===== 89cb6c LC_DEBUG_OPEN_RECVDATA_LOG(void) =====
void LC_DEBUG_OPEN_RECVDATA_LOG()
{
  fp_recvLC = fopen("log_recv.txt", "wt");
}


// ===== 89cbac LC_DEBUG_OPEN_SENDDATA_LOG(void) =====
void LC_DEBUG_OPEN_SENDDATA_LOG()
{
  fp_sendLC = fopen("log_send.txt", "wt");
}


// ===== 89cbec LC_API_FILE_OPEN =====
int __fastcall LC_API_FILE_OPEN(const char *filename, const char *flag)
{
  int v2; // r4
  FILE *v4; // r0

  v2 = 0;
  while ( l_file_listLC[v2] )
  {
    if ( ++v2 == 8 )
      return 0;
  }
  v4 = fopen(filename, flag);
  if ( !v4 )
    return 0;
  l_file_listLC[v2] = v4;
  return v2 + 1;
}


// ===== 89cc4c LC_API_IP_INT2STR =====
char *__fastcall LC_API_IP_INT2STR(int ip, char *buffer)
{
  sprintf(
    buffer,
    "%d.%d.%d.%d",
    (unsigned __int8)ip,
    (unsigned __int16)(ip & 0xFF00) >> 8,
    (ip & 0xFF0000) >> 16,
    HIBYTE(ip));
  return buffer;
}


// ===== 89cc98 LC_API_STRLEN =====
// attributes: thunk
int __fastcall LC_API_STRLEN(const char *string)
{
  return LC_API_STRLEN_0(string);
}


// ===== 89cc9c LC_API_GET_RANDOM =====
int __fastcall LC_API_GET_RANDOM(char *name)
{
  time_t v2; // r0
  int v3; // r0
  int v4; // r3
  int v5; // r4
  int v6; // r2

  v2 = time(nullptr);
  srand48(v2);
  if ( !name )
    return lrand48();
  v3 = LC_API_STRLEN(name);
  if ( v3 <= 0 )
    return lrand48();
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = name[v4++];
    v5 += v6;
  }
  while ( v4 != v3 );
  return lrand48() + v5;
}


// ===== 89cd00 LC_API_STRTRIM =====
char *__fastcall LC_API_STRTRIM(char *src)
{
  int v2; // r0
  int v3; // r12
  int v4; // r3
  int v5; // r2
  int v6; // r1
  bool v7; // zf

  v2 = LC_API_STRLEN(src);
  if ( v2 > 0 )
  {
    v4 = 0;
    v3 = 0;
    LOBYTE(v5) = 1;
    do
    {
      v6 = (unsigned __int8)src[v4++];
      if ( v6 == 32 )
        v5 &= 1u;
      else
        v5 = 0;
      v7 = v5 == 0;
      if ( v5 )
        LOBYTE(v5) = 1;
      else
        src[v3] = v6;
      if ( v7 )
        ++v3;
    }
    while ( v4 != v2 );
  }
  else
  {
    v3 = 0;
  }
  src[v3] = 0;
  return src;
}


// ===== 89cd60 SSEncDec_Blob2ByteArrayLC(uchar **,char *) =====
int __fastcall SSEncDec_Blob2ByteArrayLC(BYTE **arr, char *blob)
{
  signed int v4; // r10
  int v5; // r0
  signed int v6; // r3
  BYTE *v7; // r6
  int v8; // r7
  int v9; // r4
  int i; // r5
  char KeyFromCharLC; // r0
  int v12; // r0

  v4 = (6 * LC_API_STRLEN_0(blob)) >> 3;
  v5 = operator new[](v4 + 1);
  v6 = 0;
  v7 = (BYTE *)v5;
  do
    *(_BYTE *)(v5 + v6++) = 0;
  while ( v4 >= v6 );
  v8 = 0;
  v9 = 0;
  for ( i = 8; v9 < LC_API_STRLEN(blob); ++v9 )
  {
    KeyFromCharLC = SSEncDec_GetKeyFromCharLC(blob[v9]);
    v7[v8] |= KeyFromCharLC << (8 - i);
    if ( i <= 6 )
    {
      if ( v8 < v4 - 1 )
      {
        v12 = v7[++v8] | (KeyFromCharLC >> i);
        i += 2;
        v7[v8] = v12;
      }
    }
    else
    {
      i -= 6;
    }
  }
  *arr = v7;
  return v4;
}


// ===== 89ce28 LC_API_FILE_GET_LENGTH =====
int __fastcall LC_API_FILE_GET_LENGTH(int handle)
{
  int v1; // r5
  int v2; // r6
  int v3; // r7

  v1 = handle - 1;
  fseek(l_file_listLC[handle - 1], 0, 0);
  v2 = ftell(l_file_listLC[v1]);
  fseek(l_file_listLC[v1], 0, 2);
  v3 = ftell(l_file_listLC[v1]);
  fseek(l_file_listLC[v1], 0, 0);
  return v3 - v2;
}


// ===== 89ce98 LC_API_FILE_READ =====
int __fastcall LC_API_FILE_READ(void *dest, int element_size, int count, int handle)
{
  return fread(dest, element_size, count, l_file_listLC[handle - 1]);
}


// ===== 89cec4 LC_API_ATOF =====
double __fastcall LC_API_ATOF(char *str)
{
  return strtod(str, nullptr);
}


// ===== 89cecc LC_API_ATOI =====
// attributes: thunk
int __fastcall LC_API_ATOI(const char *data)
{
  return LC_API_ATOI_0(data);
}


// ===== 89ced0 LC_API_STRSTR =====
// attributes: thunk
char *__fastcall LC_API_STRSTR(const char *src, const char *substr)
{
  return LC_API_STRSTR_0(src, substr);
}


// ===== 89ced4 LC_API_STRCAT =====
// attributes: thunk
char *__fastcall LC_API_STRCAT(char *dest, const char *src)
{
  return LC_API_STRCAT_0(dest, src);
}


// ===== 89ced8 LC_API_STRNCPY =====
// attributes: thunk
char *__fastcall LC_API_STRNCPY(char *dest, const char *src, int count)
{
  return LC_API_STRNCPY_0(dest, src, count);
}


// ===== 89cedc LC_API_STRCPY =====
// attributes: thunk
char *__fastcall LC_API_STRCPY(char *dest, const char *src)
{
  return LC_API_STRCPY_0(dest, src);
}


// ===== 89cee0 LC_API_STRCASECMP =====
// attributes: thunk
int __fastcall LC_API_STRCASECMP(const char *p1, const char *p2)
{
  return LC_API_STRCASECMP_0(p1, p2);
}


// ===== 89cee4 LC_API_STRNCMP =====
// attributes: thunk
int __fastcall LC_API_STRNCMP(const char *p1, const char *p2, int size)
{
  return LC_API_STRNCMP_0(p1, p2, size);
}


// ===== 89cee8 LC_API_STRCMP =====
// attributes: thunk
int __fastcall LC_API_STRCMP(const char *p1, const char *p2)
{
  return LC_API_STRCMP_0(p1, p2);
}


// ===== 89ceec LC_API_MEMCPY =====
void *__fastcall LC_API_MEMCPY(void *data, const void *src, int size)
{
  memcpy(data, src, size);
  return data;
}


// ===== 89cf00 LC_API_MEMSET =====
// attributes: thunk
void __fastcall LC_API_MEMSET(void *data, int value, int size)
{
  LC_API_MEMSET_0(data, value, size);
}


// ===== 89cf04 LC_API_IP_STR2INT =====
int __fastcall LC_API_IP_STR2INT(char *ip)
{
  int v1; // r5
  int v3; // r10
  char *v4; // r8
  unsigned __int8 v5; // r0
  char v6; // r3
  char ip_addr[16]; // [sp+14h] [bp-8h] BYREF

  v1 = 0;
  v3 = 0;
  while ( 1 )
  {
    memset(ip_addr, 0, sizeof(ip_addr));
    v4 = LC_API_STRSTR(ip, ".");
    if ( !v4 )
      break;
    LC_API_MEMSET(ip_addr, 0, 16);
    LC_API_MEMCPY(ip_addr, ip, v4 - ip);
    v5 = LC_API_ATOI(ip_addr);
    v6 = 8 * v1++;
    v3 |= v5 << v6;
    if ( v1 == 4 )
      return v3;
    ip = v4 + 1;
  }
  LC_API_MEMSET(ip_addr, 0, 16);
  LC_API_STRCPY(ip_addr, ip);
  return v3 | ((unsigned __int8)LC_API_ATOI(ip_addr) << (8 * v1));
}


// ===== 89d034 SSEncDec_ByteArray2BlobLC(uchar *,int) =====
char *__fastcall SSEncDec_ByteArray2BlobLC(BYTE *s, int len)
{
  BYTE *v2; // r8
  BYTE *v4; // r5
  int v5; // r7
  int v6; // r7
  void *v7; // r4
  bool v8; // r8
  int v9; // r3
  int v10; // r9
  int v11; // r11
  int v12; // r8
  int v13; // r10
  char CharFromKeyByIndexLC; // r0
  int v15; // r3

  v4 = s;
  v5 = 8 * len / 6;
  if ( v5 )
    v2 = (BYTE *)(v5 + 3);
  else
    s = (_BYTE *)(&dword_0 + 2);
  if ( v5 )
  {
    s = v2;
    v6 = v5 + 2;
  }
  else
  {
    v2 = s;
    v6 = 1;
  }
  v7 = (void *)operator new[]((unsigned int)s);
  LC_API_MEMSET(v7, 0, (int)v2);
  if ( v7 )
  {
    if ( len > 0 )
    {
      v10 = 0;
      v11 = 1;
      v12 = 8;
      v13 = 0;
      while ( 1 )
      {
        v15 = (int)v4[v13] >> (8 - v12);
        if ( v12 <= 5 )
        {
          if ( len <= ++v13 )
          {
            *((_BYTE *)v7 + v10) = SSEncDec_GetCharFromKeyByIndexLC(v15 & 0x3F);
            return (char *)v7;
          }
          CharFromKeyByIndexLC = SSEncDec_GetCharFromKeyByIndexLC((v15 | (v4[v13] << v12)) & 0x3F);
          v12 += 2;
          *((_BYTE *)v7 + v10) = CharFromKeyByIndexLC;
        }
        else
        {
          v12 -= 6;
          if ( !v12 )
          {
            ++v13;
            v12 = 8;
          }
          *((_BYTE *)v7 + v10) = SSEncDec_GetCharFromKeyByIndexLC(v15 & 0x3F);
          v9 = v11;
          if ( v13 >= len )
          {
            v8 = v12 == 8;
            goto LABEL_19;
          }
        }
        ++v10;
        ++v11;
      }
    }
    v8 = 1;
    v9 = 0;
LABEL_19:
    if ( v6 != 1 && v8 )
      *((_BYTE *)v7 + v9) = SSEncDec_GetCharFromKeyByIndexLC(0);
  }
  return (char *)v7;
}


// ===== 89d164 SSEncDec_String2BlobLC(char *) =====
char *__fastcall SSEncDec_String2BlobLC(char *s)
{
  size_t v2; // r1

  v2 = LC_API_STRLEN_0(s);
  return SSEncDec_ByteArray2BlobLC((BYTE *)s, v2);
}


// ===== 89d180 SSEncDec_Blob2StringLC(char *) =====
char *__fastcall SSEncDec_Blob2StringLC(char *blob)
{
  size_t v2; // r0
  size_t v3; // r0
  BYTE *v5; // [sp+4h] [bp-4h] BYREF

  v2 = LC_API_STRLEN_0(blob);
  v5 = (BYTE *)operator new[](v2);
  v3 = LC_API_STRLEN_0(blob);
  LC_API_MEMSET(v5, 0, v3);
  SSEncDec_Blob2ByteArrayLC(&v5, blob);
  return (char *)v5;
}


// ===== 89d1d0 LC_API_PARSE_DATA_NEW =====
int __fastcall LC_API_PARSE_DATA_NEW(const char *src, char **dst, int pos, char seperator)
{
  int v5; // r7
  int v7; // r1
  int v8; // r6
  int v9; // r0
  unsigned int v10; // r7
  char *v11; // r0

  v5 = 0;
  v7 = *(unsigned __int8 *)src;
  v8 = -1;
  v9 = v7 << 24;
  if ( v7 )
  {
    while ( seperator != v9 >> 24 )
    {
      if ( !pos )
      {
        if ( v8 == -1 )
          v8 = v5;
        goto LABEL_7;
      }
      if ( pos < 0 )
        goto LABEL_9;
      ++v5;
LABEL_8:
      v9 = (unsigned __int8)src[v5] << 24;
      if ( !src[v5] )
        goto LABEL_9;
    }
    --pos;
LABEL_7:
    ++v5;
    goto LABEL_8;
  }
LABEL_9:
  v10 = v5 - v8;
  v11 = (char *)operator new[](v10);
  *dst = v11;
  LC_API_MEMSET(v11, 0, v10);
  LC_API_MEMCPY(*dst, &src[v8], v10 - 1);
  return v8;
}


// ===== 89d264 TranslateUtf82UnicodeLC(ushort **,char *,int,int) =====
int __fastcall TranslateUtf82UnicodeLC(Unicode2Bytes **nameOutput, char *nameInput, int lenInput, int bNeedNewMEM)
{
  Unicode2Bytes *v7; // r0
  int v8; // r7

  if ( bNeedNewMEM )
  {
    v8 = 2 * (lenInput + 1);
    v7 = (Unicode2Bytes *)operator new[](v8);
    *nameOutput = v7;
  }
  else
  {
    v7 = *nameOutput;
    v8 = 2 * (lenInput + 1);
  }
  LC_API_MEMSET(v7, 0, v8);
  return ConvertUTF8ToUnicodeLC(*nameOutput, nameInput, lenInput);
}


// ===== 89d2c0 TranslateUnicode2Utf8LC(char **,ushort *,int,int) =====
int __fastcall TranslateUnicode2Utf8LC(char **nameOutput, Unicode2Bytes *nameInput, int lenInput, int bNeedNewMEM)
{
  char *v7; // r0
  int v8; // r7

  if ( bNeedNewMEM )
  {
    v8 = 3 * lenInput + 1;
    v7 = (char *)operator new[](v8);
    *nameOutput = v7;
  }
  else
  {
    v7 = *nameOutput;
    v8 = 3 * lenInput + 1;
  }
  LC_API_MEMSET(v7, 0, v8);
  return ConvertUnicodeToUTF8LC(*nameOutput, nameInput, lenInput);
}


// ===== 89d31c LC_API_STRNEW =====
char *__fastcall LC_API_STRNEW(const char *string)
{
  int v2; // r0
  int v3; // r7
  int v4; // r5
  void *v5; // r4

  v2 = LC_API_STRLEN(string);
  v3 = v2 + 1;
  v4 = v2;
  v5 = (void *)operator new[](v2 + 1);
  LC_API_MEMSET(v5, 0, v3);
  LC_API_MEMCPY(v5, string, v4);
  return (char *)v5;
}


// ===== 89d360 LC_API_FREE =====
// attributes: thunk
void __fastcall LC_API_FREE(void *p)
{
  LC_API_FREE_0(p);
}


// ===== 89d364 LC_API_MALLOC =====
// attributes: thunk
void *__fastcall LC_API_MALLOC(int size)
{
  return LC_API_MALLOC_0(size);
}


// ===== 89d368 OS_GetTime(void) =====
int OS_GetTime()
{
  timeval now; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&now, nullptr);
  return now.tv_usec / 1000 + 1000 * now.tv_sec;
}


// ===== 89d3a8 LC_API_GET_TIME =====
// attributes: thunk
int LC_API_GET_TIME()
{
  return OS_GetTime();
}


// ===== 89d3ac LCXPlayerHttp::GetRequestData(void) =====
char *__fastcall LCXPlayerHttp::GetRequestData(LCXPlayerHttp *const this)
{
  if ( this->m_send_by_post )
    return this->m_post_send_buffer;
  else
    return this->m_abBufferIn;
}


// ===== 89d3c0 LCXPlayerHttp::UpdateRequest(void) =====
void __fastcall LCXPlayerHttp::UpdateRequest(LCXPlayerHttp *const this)
{
  (*((void (__fastcall **)(LCXPlayerSocket *))this->m_socket->_vptr.LCXPlayerSocket + 4))(this->m_socket);
}


// ===== 89d3dc LCXPlayerHttp::IsInProgress(void) =====
bool __fastcall LCXPlayerHttp::IsInProgress(LCXPlayerHttp *const this)
{
  return (*((int (__fastcall **)(LCXPlayerSocket *))this->m_socket->_vptr.LCXPlayerSocket + 6))(this->m_socket);
}


// ===== 89d3f8 LCXPlayerHttp::IsErrorOccurred(void) =====
bool __fastcall LCXPlayerHttp::IsErrorOccurred(LCXPlayerHttp *const this)
{
  return (*((int (__fastcall **)(LCXPlayerSocket *))this->m_socket->_vptr.LCXPlayerSocket + 7))(this->m_socket);
}


// ===== 89d414 LCXPlayerHttp::GetResponse(void) =====
char *__fastcall LCXPlayerHttp::GetResponse(LCXPlayerHttp *const this)
{
  return this->m_sResponse;
}


// ===== 89d41c LCXPlayerHttp::GetResponseLen(void) =====
int __fastcall LCXPlayerHttp::GetResponseLen(LCXPlayerHttp *const this)
{
  return this->m_sResponseLen;
}


// ===== 89d424 LCXPlayerHttp::SetResponseLen(int) =====
void __fastcall LCXPlayerHttp::SetResponseLen(LCXPlayerHttp *const this, int len)
{
  this->m_sResponseLen = len;
}


// ===== 89d42c LCXPlayerHttp::Cancel(void) =====
void __fastcall LCXPlayerHttp::Cancel(LCXPlayerHttp *const this)
{
  char *m_post_send_buffer; // r0
  char *m_sResponse; // r0

  (*((void (__fastcall **)(LCXPlayerSocket *))this->m_socket->_vptr.LCXPlayerSocket + 5))(this->m_socket);
  m_post_send_buffer = this->m_post_send_buffer;
  if ( m_post_send_buffer )
  {
    LC_API_FREE_0(m_post_send_buffer);
    this->m_post_send_buffer = nullptr;
  }
  m_sResponse = this->m_sResponse;
  if ( m_sResponse )
  {
    LC_API_FREE_0(m_sResponse);
    this->m_sResponse = nullptr;
  }
  this->m_sResponseLen = 0;
}


// ===== 89d484 LCXPlayerHttp::GetRequestLength(void) =====
int __fastcall LCXPlayerHttp::GetRequestLength(LCXPlayerHttp *const this)
{
  if ( this->m_send_by_post )
    return this->m_post_send_buffer_len;
  else
    return LC_API_STRLEN(this->m_abBufferIn);
}


// ===== 89d4a0 LCXPlayerHttp::SetResponseData(char *,int) =====
void __fastcall LCXPlayerHttp::SetResponseData(LCXPlayerHttp *const this, char *data, int size)
{
  char *m_sResponse; // r0
  char *v7; // r0

  m_sResponse = this->m_sResponse;
  if ( m_sResponse )
  {
    LC_API_FREE_0(m_sResponse);
    this->m_sResponse = nullptr;
  }
  v7 = (char *)operator new[](size + 1);
  this->m_sResponse = v7;
  LC_API_MEMSET(v7, 0, size + 1);
  LC_API_MEMCPY(this->m_sResponse, data, size);
  this->m_sResponseLen = size;
}


// ===== 89d4fc LCXPlayerHttp::~LCXPlayerHttp() =====
void *__fastcall LCXPlayerHttp::~LCXPlayerHttp(LCXPlayerHttp *const this)
{
  char *m_server_address; // r0
  char *m_php_script_version; // r0
  char *m_php_address; // r0
  char *m_post_send_buffer; // r0
  char *m_sResponse; // r0
  LCXPlayerSocket *m_socket; // r3

  this->_vptr.LCXPlayerSocketObserver = (int (**)(...))off_993DC0;
  LCXPlayerHttp::Cancel(this);
  m_server_address = this->m_server_address;
  if ( m_server_address )
  {
    operator delete[](m_server_address);
    this->m_server_address = nullptr;
  }
  m_php_script_version = this->m_php_script_version;
  if ( m_php_script_version )
  {
    operator delete[](m_php_script_version);
    this->m_php_script_version = nullptr;
  }
  m_php_address = this->m_php_address;
  if ( m_php_address )
  {
    operator delete[](m_php_address);
    this->m_php_address = nullptr;
  }
  m_post_send_buffer = this->m_post_send_buffer;
  if ( m_post_send_buffer )
  {
    LC_API_FREE_0(m_post_send_buffer);
    this->m_post_send_buffer = nullptr;
  }
  m_sResponse = this->m_sResponse;
  if ( m_sResponse )
  {
    LC_API_FREE_0(m_sResponse);
    this->m_sResponse = nullptr;
  }
  m_socket = this->m_socket;
  if ( m_socket )
    (*((void (__fastcall **)(LCXPlayerSocket *))m_socket->_vptr.LCXPlayerSocket + 1))(this->m_socket);
  return this;
}


// ===== 89d5c4 LCXPlayerHttp::~LCXPlayerHttp() =====
void *__fastcall LCXPlayerHttp::~LCXPlayerHttp(LCXPlayerHttp *const this)
{
  LCXPlayerHttp::~LCXPlayerHttp(this);
  LC_API_FREE_0(this);
  return this;
}


// ===== 89d5e0 LCXPlayerHttp::~LCXPlayerHttp() =====
void *__fastcall LCXPlayerHttp::~LCXPlayerHttp(LCXPlayerHttp *const this)
{
  char *m_server_address; // r0
  char *m_php_script_version; // r0
  char *m_php_address; // r0
  char *m_post_send_buffer; // r0
  char *m_sResponse; // r0
  LCXPlayerSocket *m_socket; // r3

  this->_vptr.LCXPlayerSocketObserver = (int (**)(...))off_993DC0;
  LCXPlayerHttp::Cancel(this);
  m_server_address = this->m_server_address;
  if ( m_server_address )
  {
    operator delete[](m_server_address);
    this->m_server_address = nullptr;
  }
  m_php_script_version = this->m_php_script_version;
  if ( m_php_script_version )
  {
    operator delete[](m_php_script_version);
    this->m_php_script_version = nullptr;
  }
  m_php_address = this->m_php_address;
  if ( m_php_address )
  {
    operator delete[](m_php_address);
    this->m_php_address = nullptr;
  }
  m_post_send_buffer = this->m_post_send_buffer;
  if ( m_post_send_buffer )
  {
    LC_API_FREE_0(m_post_send_buffer);
    this->m_post_send_buffer = nullptr;
  }
  m_sResponse = this->m_sResponse;
  if ( m_sResponse )
  {
    LC_API_FREE_0(m_sResponse);
    this->m_sResponse = nullptr;
  }
  m_socket = this->m_socket;
  if ( m_socket )
    (*((void (__fastcall **)(LCXPlayerSocket *))m_socket->_vptr.LCXPlayerSocket + 1))(this->m_socket);
  return this;
}


// ===== 89d6a8 LCXPlayerHttp::sendByGetWithNoVer(char *,char *) =====
void __fastcall LCXPlayerHttp::sendByGetWithNoVer(LCXPlayerHttp *const this, char *sUrl, char *sQuery)
{
  bool v6; // zf
  int v7; // r0
  void *v8; // r7
  char *m_sResponse; // r0
  char *m_php_address; // r1
  LCXPlayerSocket *m_socket; // r3
  char *v12; // r0
  int v13; // [sp+0h] [bp-314h]
  int v14; // [sp+0h] [bp-314h]
  char host[256]; // [sp+Ch] [bp-308h] BYREF
  char temp[256]; // [sp+10Ch] [bp-208h] BYREF
  char USERAGENT[256]; // [sp+20Ch] [bp-108h] BYREF

  LC_DEBUG_OUT("LCXPlayerHttp::sendByGet()\n");
  v6 = sUrl == nullptr;
  if ( sUrl )
    v6 = sQuery == nullptr;
  if ( v6 )
  {
    LC_DEBUG_OUT("LCXPlayerHttp::sendByGet() invalid parameters\n");
  }
  else
  {
    LC_API_MEMSET_0(temp, 0, 0x100u);
    LC_API_MEMSET_0(host, 0, 0x100u);
    LC_API_MEMSET(temp, 0, 256);
    LC_API_MEMSET(host, 0, 256);
    v13 = LC_API_PARSE_DATA(sUrl, temp, 2, 47);
    LC_API_MEMSET(temp, 0, 256);
    v7 = LC_API_STRLEN(sUrl);
    LC_API_MEMCPY(temp, &sUrl[v13], v7 - v13);
    LC_API_PARSE_DATA(temp, host, 0, 47);
    LC_API_STRLEN(temp);
    v14 = LC_API_STRLEN(host);
    v8 = (void *)operator new[](v14 + 1);
    LC_API_MEMSET(v8, 0, v14 + 1);
    LC_API_MEMCPY(v8, host, v14);
    LC_API_MEMSET(this->m_abBufferIn, 0, 1024);
    m_sResponse = this->m_sResponse;
    if ( m_sResponse )
    {
      LC_API_FREE_0(m_sResponse);
      this->m_sResponse = nullptr;
    }
    LC_API_STRCPY(this->m_abBufferIn, "GET ");
    m_php_address = this->m_php_address;
    if ( !m_php_address )
      m_php_address = sUrl;
    LC_API_STRCAT(this->m_abBufferIn, m_php_address);
    LC_API_STRCAT(this->m_abBufferIn, "?");
    LC_API_STRCAT(this->m_abBufferIn, sQuery);
    LC_API_STRCAT(this->m_abBufferIn, " HTTP/1.1\r\n");
    LC_API_STRCAT(this->m_abBufferIn, "Host: ");
    LC_API_STRCAT(this->m_abBufferIn, (const char *)v8);
    ALicenseCheck_GetUserAgent(USERAGENT);
    LC_API_STRCAT(this->m_abBufferIn, "\r\nUser-Agent: ");
    LC_API_STRCAT(this->m_abBufferIn, USERAGENT);
    LC_API_STRCAT(this->m_abBufferIn, "\r\n\r\n");
    if ( v8 )
      LC_API_FREE_0(v8);
    m_socket = this->m_socket;
    this->m_send_by_post = 0;
    (*((void (__fastcall **)(LCXPlayerSocket *))m_socket->_vptr.LCXPlayerSocket + 3))(m_socket);
    v12 = this->m_sResponse;
    if ( v12 )
    {
      LC_API_FREE_0(v12);
      this->m_sResponse = nullptr;
    }
    this->m_sResponseLen = 0;
  }
}


// ===== 89d950 LCXPlayerHttp::LCXPlayerHttp(char *,char *,char *) =====
LCXPlayerHttp *__fastcall LCXPlayerHttp::LCXPlayerHttp(
        LCXPlayerHttp *const this,
        char *server_address,
        char *php_script_version,
        char *php_address)
{
  this->_vptr.LCXPlayerSocketObserver = (int (**)(...))off_993DC0;
  if ( server_address )
    this->m_server_address = LC_API_STRNEW(server_address);
  else
    this->m_server_address = nullptr;
  if ( php_script_version )
    this->m_php_script_version = LC_API_STRNEW(php_script_version);
  else
    this->m_php_script_version = nullptr;
  if ( php_address )
    this->m_php_address = LC_API_STRNEW(php_address);
  else
    this->m_php_address = nullptr;
  this->m_socket = LCXPlayerSocketFactory::GetSocket(server_address, 80, this);
  this->m_sResponseLen = 0;
  this->m_post_send_buffer = nullptr;
  this->m_post_send_buffer_len = 0;
  this->m_sResponse = nullptr;
  return this;
}


// ===== 89d9f8 LCXPlayerHttp::LCXPlayerHttp(char *,char *,char *) =====
LCXPlayerHttp *__fastcall LCXPlayerHttp::LCXPlayerHttp(
        LCXPlayerHttp *const this,
        char *server_address,
        char *php_script_version,
        char *php_address)
{
  this->_vptr.LCXPlayerSocketObserver = (int (**)(...))off_993DC0;
  if ( server_address )
    this->m_server_address = LC_API_STRNEW(server_address);
  else
    this->m_server_address = nullptr;
  if ( php_script_version )
    this->m_php_script_version = LC_API_STRNEW(php_script_version);
  else
    this->m_php_script_version = nullptr;
  if ( php_address )
    this->m_php_address = LC_API_STRNEW(php_address);
  else
    this->m_php_address = nullptr;
  this->m_socket = LCXPlayerSocketFactory::GetSocket(server_address, 80, this);
  this->m_sResponseLen = 0;
  this->m_post_send_buffer = nullptr;
  this->m_post_send_buffer_len = 0;
  this->m_sResponse = nullptr;
  return this;
}


// ===== 89daa0 LCXPlayerHttp::sendVideoByPost(char *,char *,char *,int &,char *) =====
void __fastcall LCXPlayerHttp::sendVideoByPost(
        LCXPlayerHttp *const this,
        char *sUrl,
        char *sQuery,
        char *pData,
        int *const size,
        char *videoID)
{
  int v8; // r8
  int v9; // r0
  int v10; // r0
  int v11; // r10
  int v12; // r8
  void *v13; // r7
  char *m_post_send_buffer; // r0
  char *v15; // r0
  char *v16; // r6
  int v17; // r9
  int v18; // r10
  int v19; // r8
  int v20; // r0
  int v21; // r8
  LCXPlayerSocket *m_socket; // r3
  char *m_sResponse; // r0
  char host[256]; // [sp+1Ch] [bp-100h] BYREF
  char tempUrl[256]; // [sp+11Ch] [bp+0h] BYREF

  LC_API_MEMSET_0(tempUrl, 0, 0x100u);
  LC_API_MEMSET_0(host, 0, 0x100u);
  LC_API_MEMSET(tempUrl, 0, 256);
  LC_API_MEMSET(host, 0, 256);
  v8 = LC_API_PARSE_DATA(sUrl, tempUrl, 2, 47);
  LC_API_MEMSET(tempUrl, 0, 256);
  v9 = LC_API_STRLEN(sUrl);
  LC_API_MEMCPY(tempUrl, &sUrl[v8], v9 - v8);
  LC_API_PARSE_DATA(tempUrl, host, 0, 47);
  LC_API_STRLEN(tempUrl);
  v10 = LC_API_STRLEN(host);
  v11 = v10 + 1;
  v12 = v10;
  v13 = (void *)operator new[](v10 + 1);
  LC_API_MEMSET(v13, 0, v11);
  LC_API_MEMCPY(v13, host, v12);
  m_post_send_buffer = this->m_post_send_buffer;
  if ( m_post_send_buffer )
  {
    operator delete[](m_post_send_buffer);
    this->m_post_send_buffer = nullptr;
  }
  v15 = (char *)operator new[](*size + 1024);
  this->m_post_send_buffer = v15;
  LC_API_MEMSET(v15, 0, *size + 1024);
  v16 = (char *)operator new[](*size + 1024);
  LC_API_MEMSET(v16, 0, *size + 1024);
  LC_API_STRCAT(sQuery, "&v=");
  LC_API_STRCAT(sQuery, this->m_php_script_version);
  v17 = sprintf(
          v16,
          "------GL_HTTP_POST_AVI\r\n"
          "Content-Disposition: form-data; name=\"file\"; filename=\"%s\"\r\n"
          "Content-Type: video/avi\r\n"
          "\r\n",
          videoID);
  LC_API_MEMCPY(&v16[v17], pData, *size);
  LC_API_MEMCPY(&v16[v17 + *size], "\r\n------GL_HTTP_POST_AVI--\r\n", 28);
  v18 = *size;
  v19 = v17 + LC_API_STRLEN("\r\n------GL_HTTP_POST_AVI--\r\n") + v18;
  v20 = sprintf(
          this->m_post_send_buffer,
          "POST %s?%s HTTP/1.1\r\n"
          "Host: %s\r\n"
          "Accept: */*\r\n"
          "Content-Type: multipart/form-data; boundary=----GL_HTTP_POST_AVI\r\n"
          "Content-length: %d\r\n"
          "Proxy-Connection: Keep-Alive\r\n"
          "Pragma: no-cache\r\n"
          "\r\n",
          sUrl,
          sQuery,
          (const char *)v13,
          v19);
  *size = v20;
  LC_API_MEMCPY(&this->m_post_send_buffer[v20], v16, v19);
  v21 = v19 + *size;
  *size = v21;
  this->m_post_send_buffer_len = v21;
  if ( v16 )
    operator delete[](v16);
  if ( v13 )
    LC_API_FREE_0(v13);
  m_socket = this->m_socket;
  this->m_send_by_post = 1;
  (*((void (__fastcall **)(LCXPlayerSocket *))m_socket->_vptr.LCXPlayerSocket + 3))(m_socket);
  m_sResponse = this->m_sResponse;
  if ( m_sResponse )
  {
    LC_API_FREE_0(m_sResponse);
    this->m_sResponse = nullptr;
  }
  this->m_sResponseLen = 0;
}


// ===== 89dd70 LCXPlayerHttp::downloadFile(char *,char *,char *,char *,long,long) =====
void __fastcall LCXPlayerHttp::downloadFile(
        LCXPlayerHttp *const this,
        char *pServer,
        char *pObject,
        char *pCookie,
        char *pReferer,
        int nFrom,
        int nTo)
{
  LCXPlayerSocket *m_socket; // r3
  char *m_sResponse; // r0
  char szTemp[20]; // [sp+8h] [bp-1Ch] BYREF

  LC_DEBUG_OUT("LCXPlayerHttp::downloadFile()\n");
  memset(szTemp, 0, sizeof(szTemp));
  LC_API_MEMSET(this->m_abBufferIn, 0, 1024);
  LC_API_STRCAT(this->m_abBufferIn, "GET ");
  LC_API_STRCAT(this->m_abBufferIn, pObject);
  LC_API_STRCAT(this->m_abBufferIn, " HTTP/1.1");
  LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  LC_API_STRCAT(this->m_abBufferIn, "Host:");
  LC_API_STRCAT(this->m_abBufferIn, pServer);
  LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  if ( pReferer )
  {
    LC_API_STRCAT(this->m_abBufferIn, "Referer:");
    LC_API_STRCAT(this->m_abBufferIn, pReferer);
    LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  }
  LC_API_STRCAT(this->m_abBufferIn, "Accept:*/*");
  LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  LC_API_STRCAT(this->m_abBufferIn, "User-Agent:Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)");
  LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  LC_API_STRCAT(this->m_abBufferIn, "Connection:Keep-Alive");
  LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  if ( pCookie )
  {
    LC_API_STRCAT(this->m_abBufferIn, "Set Cookie:0");
    LC_API_STRCAT(this->m_abBufferIn, pCookie);
    LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  }
  if ( nFrom > 0 )
  {
    LC_API_STRCAT(this->m_abBufferIn, "Range: bytes=");
    LC_API_ITOA(nFrom, szTemp, 10);
    LC_API_STRCAT(this->m_abBufferIn, szTemp);
    LC_API_STRCAT(this->m_abBufferIn, "-");
    if ( nFrom < nTo )
    {
      LC_API_MEMSET(szTemp, 0, 20);
      LC_API_ITOA(nTo, szTemp, 10);
      LC_API_STRCAT(this->m_abBufferIn, szTemp);
    }
    LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  }
  LC_API_STRCAT(this->m_abBufferIn, "\r\n");
  m_socket = this->m_socket;
  this->m_send_by_post = 0;
  (*((void (__fastcall **)(LCXPlayerSocket *))m_socket->_vptr.LCXPlayerSocket + 3))(m_socket);
  m_sResponse = this->m_sResponse;
  if ( m_sResponse )
  {
    LC_API_FREE_0(m_sResponse);
    this->m_sResponse = nullptr;
  }
  this->m_sResponseLen = 0;
}


// ===== 89e048 LCXPlayerHttp::sendByPost(char *,char *) =====
void __fastcall LCXPlayerHttp::sendByPost(LCXPlayerHttp *const this, char *sUrl, char *sQuery)
{
  bool v6; // zf
  int v7; // r11
  int v8; // r0
  int v9; // r0
  int v10; // r8
  void *v11; // r11
  char *m_sResponse; // r0
  int v13; // r0
  char *m_post_send_buffer; // r0
  int v15; // r5
  int v16; // r5
  char *v17; // r0
  LCXPlayerSocket *m_socket; // r3
  char *v19; // r0
  int size; // [sp+8h] [bp-214h]
  char host[256]; // [sp+14h] [bp-208h] BYREF
  char temp[256]; // [sp+114h] [bp-108h] BYREF

  LC_DEBUG_OUT("LCXPlayerHttp::sendByPost()\n");
  v6 = sUrl == nullptr;
  if ( sUrl )
    v6 = sQuery == nullptr;
  if ( v6 )
  {
    LC_DEBUG_OUT("LCXPlayerHttp::sendByPost() invalid parameters\n");
  }
  else
  {
    LC_API_MEMSET_0(temp, 0, 0x100u);
    LC_API_MEMSET_0(host, 0, 0x100u);
    LC_API_MEMSET(temp, 0, 256);
    LC_API_MEMSET(host, 0, 256);
    v7 = LC_API_PARSE_DATA(sUrl, temp, 2, 47);
    LC_API_MEMSET(temp, 0, 256);
    v8 = LC_API_STRLEN(sUrl);
    LC_API_MEMCPY(temp, &sUrl[v7], v8 - v7);
    LC_API_PARSE_DATA(temp, host, 0, 47);
    LC_API_STRLEN(temp);
    v9 = LC_API_STRLEN(host);
    v10 = v9 + 1;
    size = v9;
    v11 = (void *)operator new[](v9 + 1);
    LC_API_MEMSET(v11, 0, v10);
    LC_API_MEMCPY(v11, host, size);
    LC_API_MEMSET(this->m_abBufferIn, 0, 1024);
    m_sResponse = this->m_sResponse;
    if ( m_sResponse )
    {
      LC_API_FREE_0(m_sResponse);
      this->m_sResponse = nullptr;
    }
    LC_API_STRCAT(sQuery, "&v=");
    LC_API_STRCAT(sQuery, this->m_php_script_version);
    v13 = LC_API_STRLEN(sQuery);
    sprintf(
      this->m_abBufferIn,
      "POST %s HTTP/1.1\r\nHost: %s\r\nContent-type: application/x-www-form-urlencoded\r\nContent-length: %d\r\n\r\n",
      sUrl,
      (const char *)v11,
      v13);
    m_post_send_buffer = this->m_post_send_buffer;
    if ( m_post_send_buffer )
    {
      LC_API_FREE_0(m_post_send_buffer);
      this->m_post_send_buffer = nullptr;
    }
    v15 = LC_API_STRLEN(this->m_abBufferIn);
    v16 = LC_API_STRLEN(sQuery) + v15;
    v17 = (char *)operator new[](v16 + 1);
    this->m_post_send_buffer = v17;
    LC_API_MEMSET(v17, 0, v16 + 1);
    sprintf(this->m_post_send_buffer, "%s%s", this->m_abBufferIn, sQuery);
    this->m_post_send_buffer_len = v16;
    if ( v11 )
      LC_API_FREE_0(v11);
    m_socket = this->m_socket;
    this->m_send_by_post = 1;
    (*((void (__fastcall **)(LCXPlayerSocket *))m_socket->_vptr.LCXPlayerSocket + 3))(m_socket);
    v19 = this->m_sResponse;
    if ( v19 )
    {
      LC_API_FREE_0(v19);
      this->m_sResponse = nullptr;
    }
    this->m_sResponseLen = 0;
  }
}


// ===== 89e2e8 LCXPlayerHttp::sendByGet(char *,char *) =====
void __fastcall LCXPlayerHttp::sendByGet(LCXPlayerHttp *const this, char *sUrl, char *sQuery)
{
  bool v6; // zf
  int v7; // r0
  void *v8; // r7
  char *m_sResponse; // r0
  LCXPlayerSocket *m_socket; // r3
  char *v11; // r0
  int v12; // [sp+0h] [bp-214h]
  int v13; // [sp+0h] [bp-214h]
  char host[256]; // [sp+Ch] [bp-208h] BYREF
  char temp[256]; // [sp+10Ch] [bp-108h] BYREF

  LC_DEBUG_OUT("LCXPlayerHttp::sendByGet()\n");
  v6 = sUrl == nullptr;
  if ( sUrl )
    v6 = sQuery == nullptr;
  if ( v6 )
  {
    LC_DEBUG_OUT("LCXPlayerHttp::sendByGet() invalid parameters\n");
  }
  else
  {
    LC_API_MEMSET_0(temp, 0, 0x100u);
    LC_API_MEMSET_0(host, 0, 0x100u);
    LC_API_MEMSET(temp, 0, 256);
    LC_API_MEMSET(host, 0, 256);
    v12 = LC_API_PARSE_DATA(sUrl, temp, 2, 47);
    LC_API_MEMSET(temp, 0, 256);
    v7 = LC_API_STRLEN(sUrl);
    LC_API_MEMCPY(temp, &sUrl[v12], v7 - v12);
    LC_API_PARSE_DATA(temp, host, 0, 47);
    LC_API_STRLEN(temp);
    v13 = LC_API_STRLEN(host);
    v8 = (void *)operator new[](v13 + 1);
    LC_API_MEMSET(v8, 0, v13 + 1);
    LC_API_MEMCPY(v8, host, v13);
    LC_API_MEMSET(this->m_abBufferIn, 0, 1024);
    m_sResponse = this->m_sResponse;
    if ( m_sResponse )
    {
      LC_API_FREE_0(m_sResponse);
      this->m_sResponse = nullptr;
    }
    LC_API_STRCPY(this->m_abBufferIn, "GET ");
    LC_API_STRCAT(this->m_abBufferIn, sUrl);
    LC_API_STRCAT(this->m_abBufferIn, "?");
    LC_API_STRCAT(this->m_abBufferIn, sQuery);
    LC_API_STRCAT(this->m_abBufferIn, "&v=");
    LC_API_STRCAT(this->m_abBufferIn, this->m_php_script_version);
    LC_API_STRCAT(this->m_abBufferIn, " HTTP/1.1\r\n");
    LC_API_STRCAT(this->m_abBufferIn, "Host: ");
    LC_API_STRCAT(this->m_abBufferIn, (const char *)v8);
    LC_API_STRCAT(this->m_abBufferIn, "\r\n\r\n");
    if ( v8 )
      LC_API_FREE_0(v8);
    m_socket = this->m_socket;
    this->m_send_by_post = 0;
    (*((void (__fastcall **)(LCXPlayerSocket *))m_socket->_vptr.LCXPlayerSocket + 3))(m_socket);
    v11 = this->m_sResponse;
    if ( v11 )
    {
      LC_API_FREE_0(v11);
      this->m_sResponse = nullptr;
    }
    this->m_sResponseLen = 0;
  }
}


// ===== 89e57c LCXPlayerSocketFactory::GetSocket(char *,int,LCXPlayerSocketObserver *) =====
LCXPlayerSocket *__fastcall LCXPlayerSocketFactory::GetSocket(
        char *server_address,
        int server_port,
        LCXPlayerSocketObserver *observer)
{
  LCAndroidSocket *v6; // r4

  v6 = (LCAndroidSocket *)operator new(0xCF0u);
  LCAndroidSocket::LCAndroidSocket(v6, server_address, server_port, observer);
  return v6;
}


// ===== 89e5b0 LCAndroidSocket::Init(void) =====
void __fastcall LCAndroidSocket::Init(LCAndroidSocket *const this)
{
  ;
}


// ===== 89e5b4 LCAndroidSocket::IsReadyForRW(void) =====
bool __fastcall LCAndroidSocket::IsReadyForRW(LCAndroidSocket *const this)
{
  return (this->m_set.fds_bits[this->m_socket >> 5] & (1 << (this->m_socket & 0x1F))) != 0;
}


// ===== 89e5dc LCAndroidSocket::SendBroadcast(char const*,int,int) =====
int __fastcall LCAndroidSocket::SendBroadcast(LCAndroidSocket *const this, const char *buffer, int size, int port)
{
  int m_socket; // r0
  ssize_t v8; // r8
  int v10; // r0
  sockaddr_in bcast; // [sp+Ch] [bp-18h] BYREF

  m_socket = this->m_socket;
  *(_DWORD *)bcast.__pad = 0;
  *(_DWORD *)&bcast.__pad[4] = 0;
  bcast.sin_addr.s_addr = -1;
  bcast.sin_port = BYTE1(port) | ((_WORD)port << 8);
  bcast.sin_family = 2;
  v8 = sendto(m_socket, buffer, size, 0, (const struct sockaddr *)&bcast, 16);
  if ( v8 <= 0 )
  {
    v10 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
    LC_DEBUG_OUT("LCAndroidSocket::SendBroadcast() [%d] last error = [%d]\n", port, v10);
  }
  else
  {
    LC_DEBUG_OUT("LCAndroidSocket::SendBroadcast() [%d] [%d] %s\n", port, v8, buffer);
  }
  return v8;
}


// ===== 89e6d0 LCAndroidSocket::SetBroadcast(void) =====
void __fastcall LCAndroidSocket::SetBroadcast(LCAndroidSocket *const this)
{
  int m_socket; // r0
  int v3; // r0
  int v4; // [sp+Ch] [bp-4h] BYREF

  m_socket = this->m_socket;
  v4 = 1;
  if ( setsockopt(m_socket, 1, 6, &v4, 4) < 0 )
  {
    v3 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
    LC_DEBUG_OUT("LCAndroidSocket::SetBroadcast() last error = [%d]\n", v3);
  }
}


// ===== 89e734 LCAndroidSocket::Listen(int) =====
void __fastcall LCAndroidSocket::Listen(LCAndroidSocket *const this, int count)
{
  if ( listen(this->m_socket, count) < 0 )
    LC_DEBUG_OUT("Listen failed!\n");
}


// ===== 89e760 LCAndroidSocket::GetSocketPort(void) =====
unsigned __int16 __fastcall LCAndroidSocket::GetSocketPort(LCAndroidSocket *const this)
{
  socklen_t v2; // [sp+0h] [bp-18h] BYREF
  sockaddr_in localAddr; // [sp+4h] [bp-14h] BYREF

  memset(&localAddr, 0, sizeof(localAddr));
  v2 = 16;
  getsockname(this->m_socket, (struct sockaddr *)&localAddr, &v2);
  return HIBYTE(localAddr.sin_port) | (localAddr.sin_port << 8);
}


// ===== 89e7e8 LCAndroidSocket::GetSocketAddr(void) =====
char *__fastcall LCAndroidSocket::GetSocketAddr(LCAndroidSocket *const this)
{
  struct hostent *v2; // r0
  char local_name[256]; // [sp+4h] [bp-104h] BYREF

  LC_API_MEMSET(local_name, 0, 256);
  if ( gethostname(local_name, 0x100u) )
    return nullptr;
  v2 = gethostbyname(local_name);
  if ( !v2 )
    return nullptr;
  else
    return inet_ntoa((struct in_addr)(*(struct in_addr **)v2->h_addr_list)->s_addr);
}


// ===== 89e880 LCAndroidSocket::RecvFromUnkownIP(char *,int,char **,int *) =====
int __fastcall LCAndroidSocket::RecvFromUnkownIP(
        LCAndroidSocket *const this,
        char *buffer,
        int size,
        char **ip,
        int *port)
{
  int m_socket; // r0
  ssize_t v9; // r0
  int v10; // r6
  char *v11; // r0
  char *v12; // r0
  unsigned int sin_port; // r3
  int v14; // r2
  int v16; // r0
  socklen_t v17; // [sp+8h] [bp-18h] BYREF
  sockaddr_in remoteAddr; // [sp+Ch] [bp-14h] BYREF

  m_socket = this->m_socket;
  v17 = 16;
  memset(&remoteAddr.sin_port, 0, 14);
  remoteAddr.sin_family = 2;
  v9 = recvfrom(m_socket, buffer, size, 0, (const struct sockaddr *)&remoteAddr, &v17);
  v10 = v9;
  if ( v9 <= 0 )
  {
    if ( v9 )
    {
      v16 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
      LC_DEBUG_OUT("LCAndroidSocket::RecvFromUnkownIP() last error = [%d]\n", v16);
    }
  }
  else
  {
    v11 = inet_ntoa(remoteAddr.sin_addr);
    v12 = LC_API_STRNEW(v11);
    sin_port = remoteAddr.sin_port;
    *ip = v12;
    v14 = (unsigned __int16)((sin_port >> 8) | ((_WORD)sin_port << 8));
    *port = v14;
    LC_DEBUG_OUT("LCAndroidSocket::RecvFromUnkownIP()\n [%s:%d] [%d] %s\n", *ip, v14, v10, buffer);
  }
  return v10;
}


// ===== 89e998 LCAndroidSocket::GetHostName(char **) =====
void *__fastcall LCAndroidSocket::GetHostName(LCAndroidSocket *const this, char **name)
{
  char szHostName[256]; // [sp+4h] [bp-104h] BYREF

  gethostname(szHostName, 0xFFu);
  *name = LC_API_STRNEW(szHostName);
  return nullptr;
}


// ===== 89ea00 LCAndroidSocket::RecvFrom(char *,int) =====
int __fastcall LCAndroidSocket::RecvFrom(LCAndroidSocket *const this, char *buffer, int size)
{
  int m_socket; // r0
  ssize_t v6; // r0
  int v7; // r6
  char *v8; // r0
  char *v9; // r7
  int v11; // r0
  socklen_t v12; // [sp+8h] [bp-18h] BYREF
  sockaddr_in remoteAddr; // [sp+Ch] [bp-14h] BYREF

  m_socket = this->m_socket;
  v12 = 16;
  memset(&remoteAddr.sin_port, 0, 14);
  remoteAddr.sin_family = 2;
  v6 = recvfrom(m_socket, buffer, size, 0, (const struct sockaddr *)&remoteAddr, &v12);
  v7 = v6;
  if ( v6 <= 0 )
  {
    if ( v6 )
    {
      v11 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
      LC_DEBUG_OUT("LCAndroidSocket::RecvFrom() last error = [%d]\n", v11);
    }
  }
  else
  {
    v8 = inet_ntoa(remoteAddr.sin_addr);
    v9 = LC_API_STRNEW(v8);
    LC_DEBUG_OUT(
      "LCAndroidSocket::RecvFrom()\n [%s:%d] [%d] %s\n",
      v9,
      HIBYTE(remoteAddr.sin_port) | (unsigned __int16)(remoteAddr.sin_port << 8),
      v7,
      buffer);
    if ( v9 )
      operator delete[](v9);
  }
  return v7;
}


// ===== 89eb1c LCAndroidSocket::SendTo(char const*,int,char const*,int) =====
int __fastcall LCAndroidSocket::SendTo(
        LCAndroidSocket *const this,
        const char *buffer,
        int size,
        const char *ip,
        int port)
{
  ssize_t v9; // r6
  in_addr_t v10; // r0
  int m_socket; // r1
  sockaddr_in remoteAddr; // [sp+Ch] [bp-18h] BYREF

  if ( !ip )
    return 0;
  memset(&remoteAddr.sin_addr, 0, 12);
  remoteAddr.sin_port = 0;
  remoteAddr.sin_family = 2;
  v10 = inet_addr(ip);
  m_socket = this->m_socket;
  remoteAddr.sin_port = BYTE1(port) | ((_WORD)port << 8);
  remoteAddr.sin_addr.s_addr = v10;
  v9 = sendto(m_socket, buffer, size, 0, (const struct sockaddr *)&remoteAddr, 16);
  LC_DEBUG_OUT("LCAndroidSocket::SendTo()\n [%s:%d] [%d] %s\n", ip, port, v9, buffer);
  return v9;
}


// ===== 89ec0c LCAndroidSocket::CreateUdpSocket(void) =====
bool __fastcall LCAndroidSocket::CreateUdpSocket(LCAndroidSocket *const this)
{
  int v2; // r0
  LCXPlayerSocket::XSocketType v3; // r3
  bool v4; // nf

  v2 = socket(2, 2, 17);
  v4 = v2 < 0;
  if ( v2 >= 0 )
    v3 = LCXPlayerSocket::XSocketType::XSOCKET_TYPE_UDP;
  this->m_socket = v2;
  if ( v2 < 0 )
    LOBYTE(v2) = 0;
  else
    this->m_type = v3;
  if ( !v4 )
    LOBYTE(v2) = 1;
  return v2;
}


// ===== 89ec40 LCAndroidSocket::CreateTcpSocket(void) =====
bool __fastcall LCAndroidSocket::CreateTcpSocket(LCAndroidSocket *const this)
{
  int v2; // r0
  bool v3; // nf
  _BOOL4 v4; // r0

  v2 = socket(2, 1, 6);
  v3 = v2 < 0;
  this->m_socket = v2;
  v4 = v2 >= 0;
  if ( !v3 )
    this->m_type = v4;
  return v4;
}


// ===== 89ec70 LCAndroidSocket::CreateSocket(void) =====
bool __fastcall LCAndroidSocket::CreateSocket(LCAndroidSocket *const this)
{
  int v2; // r0
  int v4; // r0

  v2 = socket(2, 1, 0);
  this->m_socket = v2;
  if ( v2 < 0 )
  {
    v4 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
    LC_DEBUG_OUT("CAndroid::CreateSocket() error [%d] \n", v4);
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
    return 0;
  }
  else
  {
    LC_DEBUG_OUT("LCAndroidSocket::CreateSocket(%d)", v2);
    return 1;
  }
}


// ===== 89ece4 LCAndroidSocket::Bind(char *,ushort) =====
int __fastcall LCAndroidSocket::Bind(LCAndroidSocket *const this, char *ip, unsigned __int16 port)
{
  unsigned int v4; // r7
  int m_socket; // r0
  int v6; // r10
  unsigned int v7; // r8
  int v8; // r0
  int v10; // [sp+8h] [bp-18h] BYREF
  sockaddr_in addr; // [sp+Ch] [bp-14h] BYREF

  memset(&addr.sin_port, 0, 14);
  v4 = port;
  addr.sin_family = 2;
  if ( ip )
    inet_addr(ip);
  else
    addr.sin_addr.s_addr = 0;
  m_socket = this->m_socket;
  v10 = 1;
  addr.sin_port = (v4 >> 8) | ((_WORD)v4 << 8);
  setsockopt(m_socket, 1, 2, &v10, 4);
  if ( bind(this->m_socket, (const struct sockaddr *)&addr, 16) < 0 )
  {
    v6 = 0;
    v7 = (unsigned __int16)(v4 + 1);
    do
    {
      v8 = this->m_socket;
      addr.sin_port = (v7 >> 8) | ((_WORD)v7 << 8);
      ++v6;
      v7 = (unsigned __int16)(v7 + 1);
    }
    while ( bind(v8, (const struct sockaddr *)&addr, 16) < 0 );
  }
  else
  {
    v6 = 0;
  }
  return v6 + v4;
}


// ===== 89edfc LCAndroidSocket::Recv(char *,int) =====
int __fastcall LCAndroidSocket::Recv(LCAndroidSocket *const this, char *data, int size)
{
  unsigned int v4; // r4
  int v5; // r0

  v4 = recv(this->m_socket, data, size, 0);
  v5 = LC_API_GET_TIME();
  if ( v4 <= 0xF9B )
    LC_DEBUG_OUT("CAndroid::Recv() [time:%d]\n[%d] %s\n", v5, v4, data);
  return v4;
}


// ===== 89ee4c LCAndroidSocket::Send(char *,int) =====
int __fastcall LCAndroidSocket::Send(LCAndroidSocket *const this, char *data, int size)
{
  int v6; // r9
  ssize_t v7; // r0
  int v8; // r5
  char log[4100]; // [sp+4h] [bp-1004h] BYREF

  v6 = LC_API_GET_TIME();
  v7 = send(this->m_socket, data, size, 0);
  v8 = v7;
  if ( v7 < 4096 )
  {
    LC_API_MEMSET(log, 0, 4096);
    LC_API_MEMCPY(log, data, size);
    LC_DEBUG_OUT("LCAndroidSocket::Send() [time:%d]\n[%d] %s\n", v6, v8, log);
  }
  else
  {
    LC_DEBUG_OUT("LCAndroidSocket::Send() [time:%d]\n[%d]\n", v6, v7);
  }
  return v8;
}


// ===== 89ef3c LCAndroidSocket::Select(LCXPlayerSocket::XSocketSelectFlag) =====
int __fastcall LCAndroidSocket::Select(LCAndroidSocket *const this, LCXPlayerSocket::XSocketSelectFlag flag)
{
  int m_socket; // r3
  fd_set *p_m_set; // r7
  timeval tval; // [sp+8h] [bp-Ch] BYREF

  m_socket = this->m_socket;
  tval.tv_sec = 0;
  tval.tv_usec = 0;
  if ( m_socket < 0 )
    return -1;
  p_m_set = &this->m_set;
  LC_API_MEMSET_0(&this->m_set, 0, 0x80u);
  this->m_set.fds_bits[this->m_socket >> 5] |= 1 << (this->m_socket & 0x1F);
  if ( flag == LCXPlayerSocket::XSocketSelectFlag::XSOCKET_SELECT_READ )
    return select(this->m_socket + 1, p_m_set, nullptr, nullptr, &tval);
  if ( flag == LCXPlayerSocket::XSocketSelectFlag::XSOCKET_SELECT_WRITE )
    return select(this->m_socket + 1, nullptr, p_m_set, nullptr, &tval);
  else
    return -1;
}


// ===== 89f004 LCAndroidSocket::CloseSocket(void) =====
bool __fastcall LCAndroidSocket::CloseSocket(LCAndroidSocket *const this)
{
  int m_socket; // r1

  LC_DEBUG_OUT("LCAndroidSocket::CloseSocket() [%d]\n", this->m_socket);
  m_socket = this->m_socket;
  if ( m_socket >= 0 )
  {
    LC_DEBUG_OUT("CloseSocket() [%d]\n", m_socket);
    close(this->m_socket);
    this->m_socket = -1;
  }
  return 1;
}


// ===== 89f054 LCAndroidSocket::ConnectTo(char *,int) =====
bool __fastcall LCAndroidSocket::ConnectTo(LCAndroidSocket *const this, char *ip, int port)
{
  int m_nonBlockConnectState; // r6
  unsigned __int16 v6; // r8
  int v8; // r0
  int m_socket; // r0
  int v10; // r0
  int v11; // r0
  socklen_t v12; // [sp+Ch] [bp-1Ch] BYREF
  int v13; // [sp+10h] [bp-18h] BYREF
  sockaddr_in serv_addr; // [sp+14h] [bp-14h] BYREF

  m_nonBlockConnectState = this->m_nonBlockConnectState;
  v6 = port;
  if ( m_nonBlockConnectState )
  {
    if ( m_nonBlockConnectState != 1 )
      return 0;
    v8 = (*((int (__fastcall **)(LCAndroidSocket *const, int))this->_vptr.LCXPlayerSocket + 16))(this, 1);
    if ( v8 >= 0 )
    {
      if ( !v8 )
        return 0;
      m_socket = this->m_socket;
      v12 = 4;
      if ( getsockopt(m_socket, 1, 4, &v13, &v12) >= 0 && !v13 )
      {
        v10 = fcntl(this->m_socket, 3, 0);
        if ( v10 >= 0 && fcntl(this->m_socket, 4, v10 & 0xFFFFF7FF) >= 0 )
        {
          this->m_nonBlockConnectState = 2;
          return 1;
        }
      }
    }
    goto LABEL_16;
  }
  LC_API_MEMSET(&serv_addr, 0, 16);
  serv_addr.sin_family = 2;
  serv_addr.sin_addr.s_addr = inet_addr(ip);
  serv_addr.sin_port = HIBYTE(v6) | (v6 << 8);
  if ( !(*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 12))(this) )
  {
    LC_DEBUG_OUT("LCAndroidSocket::ConnectTo() err : can not set unblock!!!\n");
LABEL_16:
    (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
    this->m_nonBlockConnectState = 3;
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
    return 0;
  }
  if ( connect(this->m_socket, (const struct sockaddr *)&serv_addr, 16) >= 0
    || (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this) == 115 )
  {
    this->m_nonBlockConnectState = 1;
    return 0;
  }
  else
  {
    v11 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
    LC_DEBUG_OUT("LCAndroidSocket::Connect() err = %d \n", v11);
    (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
    this->m_nonBlockConnectState = 3;
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
    return 0;
  }
}


// ===== 89f290 LCAndroidSocket::Connect(void) =====
bool __fastcall LCAndroidSocket::Connect(LCAndroidSocket *const this)
{
  int m_nonBlockConnectState; // r6
  void *m_server_addr; // r2
  int (**v5)(...); // r3
  int v6; // r10
  int v7; // r0
  int m_socket; // r0
  int v9; // r0
  int v10; // r0
  socklen_t v11; // [sp+Ch] [bp-20h] BYREF
  int v12; // [sp+10h] [bp-1Ch] BYREF
  sockaddr_in serv_addr; // [sp+14h] [bp-18h] BYREF

  m_nonBlockConnectState = this->m_nonBlockConnectState;
  if ( m_nonBlockConnectState )
  {
    if ( m_nonBlockConnectState != 1 )
      return 0;
    v7 = (*((int (__fastcall **)(LCAndroidSocket *const, int))this->_vptr.LCXPlayerSocket + 16))(this, 1);
    LOBYTE(v6) = v7;
    if ( v7 < 0 )
      goto LABEL_20;
    if ( v7 )
    {
      m_socket = this->m_socket;
      v11 = 4;
      if ( getsockopt(m_socket, 1, 4, &v12, &v11) >= 0 )
      {
        LOBYTE(v6) = v12;
        if ( !v12 )
        {
          v9 = fcntl(this->m_socket, 3, 0);
          if ( v9 >= 0 && fcntl(this->m_socket, 4, v9 & 0xFFFFF7FF) >= 0 )
          {
            this->m_nonBlockConnectState = 2;
            return 1;
          }
          goto LABEL_17;
        }
      }
LABEL_20:
      (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
      this->m_nonBlockConnectState = 3;
      this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
      return 0;
    }
    if ( (unsigned int)(LC_API_GET_TIME() - this->m_connectTimeStart) <= 0x7530 )
      return 0;
LABEL_17:
    (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
    this->m_nonBlockConnectState = 3;
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
    return v6;
  }
  LC_API_MEMSET(&serv_addr, 0, 16);
  m_server_addr = this->m_server_addr;
  serv_addr.sin_family = 2;
  LC_API_MEMCPY(&serv_addr.sin_addr, **((const void ***)m_server_addr + 4), *((_DWORD *)m_server_addr + 3));
  v5 = this->_vptr.LCXPlayerSocket;
  serv_addr.sin_port = HIBYTE(LOWORD(this->m_server_port)) | (LOWORD(this->m_server_port) << 8);
  v6 = v5[12](this);
  if ( !v6 )
  {
    LC_DEBUG_OUT("LCAndroidSocket::Connect() err : can not set unblock!!!\n");
    goto LABEL_17;
  }
  if ( connect(this->m_socket, (const struct sockaddr *)&serv_addr, 16) >= 0
    || (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this) == 115 )
  {
    this->m_nonBlockConnectState = 1;
    this->m_connectTimeStart = LC_API_GET_TIME();
    return 0;
  }
  else
  {
    v10 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
    LC_DEBUG_OUT("LCAndroidSocket::Connect() err = %d \n", v10);
    (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
    this->m_nonBlockConnectState = 3;
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
    return 0;
  }
}


// ===== 89f4fc LCAndroidSocket::ConnectByName(char *) =====
bool __fastcall LCAndroidSocket::ConnectByName(LCAndroidSocket *const this, char *server_name)
{
  int m_nonBlockConnectState; // r6
  void *v5; // r10
  void *m_server_addr; // r2
  int (**v7)(...); // r3
  int v8; // r0
  int m_socket; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r0
  socklen_t v13; // [sp+Ch] [bp-20h] BYREF
  int v14; // [sp+10h] [bp-1Ch] BYREF
  sockaddr_in serv_addr; // [sp+14h] [bp-18h] BYREF

  m_nonBlockConnectState = this->m_nonBlockConnectState;
  if ( m_nonBlockConnectState )
  {
    if ( m_nonBlockConnectState != 1 )
      return 0;
    v8 = (*((int (__fastcall **)(LCAndroidSocket *const, int))this->_vptr.LCXPlayerSocket + 16))(this, 1);
    LOBYTE(v5) = v8;
    if ( v8 < 0 )
      goto LABEL_21;
    if ( v8 )
    {
      m_socket = this->m_socket;
      v13 = 4;
      if ( getsockopt(m_socket, 1, 4, &v14, &v13) >= 0 )
      {
        LOBYTE(v5) = v14;
        if ( !v14 )
        {
          v10 = fcntl(this->m_socket, 3, 0);
          if ( v10 >= 0 && fcntl(this->m_socket, 4, v10 & 0xFFFFF7FF) >= 0 )
          {
            this->m_nonBlockConnectState = 2;
            return 1;
          }
          goto LABEL_18;
        }
      }
LABEL_21:
      (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
      this->m_nonBlockConnectState = 3;
      this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
      return 0;
    }
    if ( (unsigned int)(LC_API_GET_TIME() - this->m_connectTimeStart) <= 0x7530 )
      return 0;
LABEL_18:
    (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
    this->m_nonBlockConnectState = 3;
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
    return (char)v5;
  }
  v5 = (void *)(*((int (__fastcall **)(LCAndroidSocket *const, char *))this->_vptr.LCXPlayerSocket + 8))(
                 this,
                 server_name);
  this->m_server_addr = v5;
  if ( !v5 )
  {
    if ( (unsigned int)(LC_API_GET_TIME() - this->m_gethostbynametimeStart) <= 0x270F )
      return 0;
    v12 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
    LC_DEBUG_OUT("LCAndroidSocket::ConnectByName(): GetHostByName() err = %d \n", v12);
    goto LABEL_18;
  }
  LC_API_MEMSET(&serv_addr, 0, 16);
  m_server_addr = this->m_server_addr;
  serv_addr.sin_family = 2;
  LC_API_MEMCPY(&serv_addr.sin_addr, **((const void ***)m_server_addr + 4), *((_DWORD *)m_server_addr + 3));
  v7 = this->_vptr.LCXPlayerSocket;
  serv_addr.sin_port = HIBYTE(LOWORD(this->m_server_port)) | (LOWORD(this->m_server_port) << 8);
  v5 = (void *)v7[12](this);
  if ( !v5 )
  {
    LC_DEBUG_OUT("LCAndroidSocket::ConnectByName(): SetNonBlocking() err : can not set unblock!!!\n");
    goto LABEL_18;
  }
  if ( connect(this->m_socket, (const struct sockaddr *)&serv_addr, 16) >= 0
    || (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this) == 115 )
  {
    this->m_nonBlockConnectState = 1;
    this->m_connectTimeStart = LC_API_GET_TIME();
    return 0;
  }
  else
  {
    v11 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
    LC_DEBUG_OUT("LCAndroidSocket::ConnectByName: connect() err = %d \n", v11);
    (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
    this->m_nonBlockConnectState = 3;
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
    return 0;
  }
}


// ===== 89f7c8 LCAndroidSocket::SetNonBlocking(void) =====
bool __fastcall LCAndroidSocket::SetNonBlocking(LCAndroidSocket *const this)
{
  int v2; // r0
  int v4; // r0

  v2 = fcntl(this->m_socket, 3, 0);
  if ( v2 >= 0 && fcntl(this->m_socket, 4, v2 | 0x800) >= 0 )
    return 1;
  v4 = (*((int (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
  LC_DEBUG_OUT("LCAndroidSocket::SetNonBlocking() err = %d \n", v4);
  (*((void (__fastcall **)(LCAndroidSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
  this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
  return 0;
}


// ===== 89f890 LCAndroidSocket::GetLastError(void) =====
int __fastcall LCAndroidSocket::GetLastError(LCAndroidSocket *const this)
{
  return *(_DWORD *)_errno();
}


// ===== 89f8a0 threadGetHostByNameProcessLC(void *) =====
void __fastcall threadGetHostByNameProcessLC(void *param)
{
  const char *v1; // r4
  struct hostent *v3; // r10
  int v4; // r7
  hostent *v5; // r0
  int v6; // r3
  hostent *v7; // r7
  hostent *v8; // r7
  char **h_addr_list; // r7

  v1 = (char *)param + 4;
  **(_DWORD **)param = 1;
  v3 = gethostbyname((const char *)param + 4);
  if ( v3 )
  {
    v4 = l_countLC;
    if ( l_countLC <= 3 )
    {
      v5 = (hostent *)operator new(0x14u);
      v6 = l_countLC;
      l_hostLC[v4] = v5;
      LC_API_MEMSET(l_hostLC[v6], 0, 20);
      l_hostLC[l_countLC]->h_length = v3->h_length;
      v7 = l_hostLC[l_countLC];
      v7->h_name = LC_API_STRNEW(v1);
      v8 = l_hostLC[l_countLC];
      v8->h_addr_list = (char **)operator new[](4u);
      h_addr_list = l_hostLC[l_countLC]->h_addr_list;
      *h_addr_list = LC_API_STRNEW(*(const char **)v3->h_addr_list);
      ++l_countLC;
      LC_DEBUG_OUT("GetHostByName() - Add %s \n", v1);
    }
    **(_DWORD **)param = 0;
  }
}


// ===== 89f9a0 LCAndroidSocket::GetHostIP(char *) =====
void *__fastcall LCAndroidSocket::GetHostIP(char *server_name)
{
  int v2; // r5
  void *result; // r0
  void *v4; // r6
  int v5; // r8
  hostent *v6; // r0
  int v7; // r3
  hostent *v8; // r8
  hostent *v9; // r8
  char **h_addr_list; // r7

  LC_DEBUG_OUT("LCAndroidSocket::GetHostIP()");
  if ( l_countLC <= 0 )
  {
LABEL_6:
    result = gethostbyname(server_name);
    v4 = result;
    if ( result )
    {
      v5 = l_countLC;
      if ( l_countLC <= 3 )
      {
        v6 = (hostent *)operator new(0x14u);
        v7 = l_countLC;
        l_hostLC[v5] = v6;
        LC_API_MEMSET(l_hostLC[v7], 0, 20);
        l_hostLC[l_countLC]->h_length = *((_DWORD *)v4 + 3);
        v8 = l_hostLC[l_countLC];
        v8->h_name = LC_API_STRNEW(server_name);
        v9 = l_hostLC[l_countLC];
        v9->h_addr_list = (char **)operator new[](4u);
        h_addr_list = l_hostLC[l_countLC]->h_addr_list;
        *h_addr_list = LC_API_STRNEW(**((const char ***)v4 + 4));
        ++l_countLC;
        LC_DEBUG_OUT("GetHostByName() - Add %s \n", server_name);
        return v4;
      }
    }
  }
  else
  {
    v2 = 0;
    while ( LC_API_STRCMP(server_name, l_hostLC[v2]->h_name) )
    {
      if ( l_countLC <= ++v2 )
        goto LABEL_6;
    }
    LC_DEBUG_OUT("GetHostByName() Existed %s \n", server_name);
    return l_hostLC[v2];
  }
  return result;
}


// ===== 89fb04 LCAndroidSocket::GetHostByName(char *) =====
void *__fastcall LCAndroidSocket::GetHostByName(LCAndroidSocket *const this, char *server_name)
{
  int v4; // r6
  hostent *v5; // r3
  void *result; // r0

  if ( !server_name || LC_API_STRLEN(server_name) > 1024 )
    return nullptr;
  if ( l_countLC <= 0 )
  {
LABEL_9:
    if ( !this->m_gethostbynameState )
    {
      this->m_gethostbynametimeStart = LC_API_GET_TIME();
      this->m_getHostByNameThreadParam.flagAddress = &this->m_gethostbynameState;
      strlcpy(this->m_getHostByNameThreadParam.serverName, server_name, 0x400u);
      result = (void *)pthread_create(
                         &this->m_getHostByNameThreadId,
                         nullptr,
                         (void *(*)(void *))threadGetHostByNameProcessLC,
                         &this->m_getHostByNameThreadParam);
      if ( !result )
      {
        this->m_gethostbynameState = 1;
        return result;
      }
    }
    return nullptr;
  }
  v4 = 0;
  while ( 1 )
  {
    v5 = l_hostLC[v4];
    if ( v5 )
    {
      if ( v5->h_name && !LC_API_STRCMP(server_name, v5->h_name) )
        break;
    }
    if ( l_countLC <= ++v4 )
      goto LABEL_9;
  }
  LC_DEBUG_OUT("GetHostByName() Existed %s \n", server_name);
  return l_hostLC[v4];
}


// ===== 89fc1c LCAndroidSocket::TransToIp(char *&) =====
void __fastcall LCAndroidSocket::TransToIp(char **const name)
{
  struct in_addr ***HostIP; // r5

  LC_DEBUG_OUT("LCAndroidSocket::TransToIp()");
  HostIP = (struct in_addr ***)LCAndroidSocket::GetHostIP(*name);
  if ( *name )
  {
    LC_API_FREE_0(*name);
    *name = nullptr;
  }
  if ( HostIP )
    *name = inet_ntoa((struct in_addr)(*HostIP[4])->s_addr);
}


// ===== 89fc78 LCAndroidSocket::Clearup(void) =====
void LCAndroidSocket::Clearup()
{
  int v0; // r4
  int v1; // r10
  hostent *v2; // r3
  void **h_addr_list; // r3
  hostent *v4; // r3
  char **v5; // r0
  int v6; // r3

  LC_DEBUG_OUT("LCAndroidSocket::Clearup()");
  if ( l_countLC > 0 )
  {
    v0 = 0;
    v1 = 0;
    do
    {
      v2 = l_hostLC[v0];
      ++v1;
      if ( v2->h_name )
      {
        LC_API_FREE_0(v2->h_name);
        l_hostLC[v0]->h_name = nullptr;
        v2 = l_hostLC[v0];
      }
      h_addr_list = (void **)v2->h_addr_list;
      if ( *h_addr_list )
      {
        LC_API_FREE_0(*h_addr_list);
        *l_hostLC[v0]->h_addr_list = nullptr;
        h_addr_list = (void **)l_hostLC[v0]->h_addr_list;
      }
      *h_addr_list = nullptr;
      v4 = l_hostLC[v0];
      v5 = v4->h_addr_list;
      if ( v5 )
      {
        LC_API_FREE_0(v5);
        l_hostLC[v0]->h_addr_list = nullptr;
        v4 = l_hostLC[v0];
      }
      if ( v4 )
      {
        LC_API_FREE_0(v4);
        l_hostLC[v0] = nullptr;
      }
      v6 = l_countLC;
      l_hostLC[v0++] = nullptr;
    }
    while ( v6 > v1 );
  }
  l_countLC = 0;
}


// ===== 89fd84 LCAndroidSocket::GetLocalIP(char *) =====
bool __fastcall LCAndroidSocket::GetLocalIP(LCAndroidSocket *const this, char *szLocalIP)
{
  int v2; // r0
  int v3; // r10
  char *v4; // r4
  char *v5; // r0
  const char *v6; // r6
  const char *v7; // r8
  char *v8; // r0
  int v9; // r3
  ifconf ifc; // [sp+Ch] [bp-FB0h] BYREF
  char buffer[4000]; // [sp+14h] [bp-FA8h] BYREF

  LC_DEBUG_OUT("LCAndroidSocket::GetLocalIP()");
  ifc.ifc_len = 4000;
  ifc.ifc_ifcu.ifcu_buf = buffer;
  v2 = socket(2, 2, 0);
  v3 = v2;
  if ( v2 == -1 || ioctl(v2, 0x8912u, &ifc) < 0 )
    return 0;
  v4 = buffer;
  while ( v4 < &buffer[ifc.ifc_len] )
  {
    v5 = inet_ntoa(*(struct in_addr *)(v4 + 20));
    v6 = v4;
    v4 += 32;
    v7 = v5;
    if ( *((_WORD *)v4 - 8) == 2 )
    {
      v8 = LC_API_STRCHR(v6, 58, 1);
      if ( v8 )
      {
        v9 = 0;
        *v8 = 0;
      }
      ioctl(v3, 0x8913u, v6, v9);
      if ( (*((_WORD *)v4 - 8) & 1) != 0 )
      {
        if ( LC_API_STRCMP(v7, "127.0.0.1") )
          LC_API_STRCPY(szLocalIP, v7);
      }
    }
  }
  close(v3);
  return 1;
}


// ===== 89feec LCAndroidSocket::Startup(void) =====
void LCAndroidSocket::Startup()
{
  sigaction sa; // [sp+0h] [bp-10h] BYREF

  LC_DEBUG_OUT("LCAndroidSocket::Startup()");
  sa._u._sa_handler = (__sighandler_t)(&dword_0 + 1);
  l_hostLC[3] = nullptr;
  l_hostLC[0] = nullptr;
  l_hostLC[1] = nullptr;
  l_hostLC[2] = nullptr;
  sigaction_0(13, &sa, nullptr);
}


// ===== 89ff54 LCAndroidSocket::~LCAndroidSocket() =====
void *__fastcall LCAndroidSocket::~LCAndroidSocket(LCAndroidSocket *const this)
{
  int m_gethostbynameState; // r1

  m_gethostbynameState = this->m_gethostbynameState;
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993DE0;
  if ( m_gethostbynameState )
    pthread_join(this->m_getHostByNameThreadId, nullptr);
  LCAndroidSocket::CloseSocket(this);
  LCXPlayerSocket::~LCXPlayerSocket(this);
  return this;
}


// ===== 89ffac LCAndroidSocket::~LCAndroidSocket() =====
void *__fastcall LCAndroidSocket::~LCAndroidSocket(LCAndroidSocket *const this)
{
  LCAndroidSocket::~LCAndroidSocket(this);
  LC_API_FREE_0(this);
  return this;
}


// ===== 89ffc8 LCAndroidSocket::~LCAndroidSocket() =====
void *__fastcall LCAndroidSocket::~LCAndroidSocket(LCAndroidSocket *const this)
{
  int m_gethostbynameState; // r1

  m_gethostbynameState = this->m_gethostbynameState;
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993DE0;
  if ( m_gethostbynameState )
    pthread_join(this->m_getHostByNameThreadId, nullptr);
  LCAndroidSocket::CloseSocket(this);
  LCXPlayerSocket::~LCXPlayerSocket(this);
  return this;
}


// ===== 8a0020 LCAndroidSocket::LCAndroidSocket(char *,int,LCXPlayerSocketObserver *) =====
LCAndroidSocket *__fastcall LCAndroidSocket::LCAndroidSocket(
        LCAndroidSocket *const this,
        char *server_name,
        int server_port,
        LCXPlayerSocketObserver *observer)
{
  LCXPlayerSocket::LCXPlayerSocket(this, server_name, server_port, observer);
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993DE0;
  LC_DEBUG_OUT("LCAndroidSocket::LCAndroidSocket()");
  LCAndroidSocket::Startup();
  return this;
}


// ===== 8a0068 LCAndroidSocket::Accept(void) =====
LCXPlayerSocket *__fastcall LCAndroidSocket::Accept(LCAndroidSocket *const this)
{
  int v1; // r7
  char *v2; // r8
  unsigned int sin_port; // r6
  LCAndroidSocket *v4; // r4
  socklen_t v6; // [sp+0h] [bp-18h] BYREF
  sockaddr_in addr; // [sp+4h] [bp-14h] BYREF

  v6 = 16;
  addr.sin_family = 2;
  v1 = accept(this->m_socket, (struct sockaddr *)&addr, &v6);
  v2 = inet_ntoa(addr.sin_addr);
  sin_port = addr.sin_port;
  v4 = (LCAndroidSocket *)operator new(0xCF0u);
  LCAndroidSocket::LCAndroidSocket(v4, nullptr, 0, nullptr);
  LCXPlayerSocket::SetSocket(v4, v1);
  LCXPlayerSocket::SetAcceptIP(v4, v2);
  LCXPlayerSocket::SetAcceptPort(v4, (unsigned __int16)(sin_port >> 8) | (unsigned __int16)((_WORD)sin_port << 8));
  LCXPlayerSocket::SetSocketType(v4, 1);
  return v4;
}


// ===== 8a013c LCAndroidSocket::LCAndroidSocket(char *,int,LCXPlayerSocketObserver *) =====
LCAndroidSocket *__fastcall LCAndroidSocket::LCAndroidSocket(
        LCAndroidSocket *const this,
        char *server_name,
        int server_port,
        LCXPlayerSocketObserver *observer)
{
  LCXPlayerSocket::LCXPlayerSocket(this, server_name, server_port, observer);
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993DE0;
  LC_DEBUG_OUT("LCAndroidSocket::LCAndroidSocket()");
  LCAndroidSocket::Startup();
  return this;
}


// ===== 8a0184 LCXPlayerSocket::GetAcceptIP(void) =====
char *__fastcall LCXPlayerSocket::GetAcceptIP(LCXPlayerSocket *const this)
{
  return this->m_accept_ip;
}


// ===== 8a018c LCXPlayerSocket::GetAcceptPort(void) =====
int __fastcall LCXPlayerSocket::GetAcceptPort(LCXPlayerSocket *const this)
{
  return this->m_accept_port;
}


// ===== 8a0194 LCXPlayerSocket::SetAcceptPort(int) =====
void __fastcall LCXPlayerSocket::SetAcceptPort(LCXPlayerSocket *const this, int port)
{
  this->m_accept_port = port;
}


// ===== 8a019c LCXPlayerSocket::SetSocket(int) =====
void __fastcall LCXPlayerSocket::SetSocket(LCXPlayerSocket *const this, int soc)
{
  this->m_socket = soc;
}


// ===== 8a01a4 LCXPlayerSocket::GetSocketType(void) =====
int __fastcall LCXPlayerSocket::GetSocketType(LCXPlayerSocket *const this)
{
  return this->m_type;
}


// ===== 8a01ac LCXPlayerSocket::SetSocketType(int) =====
void __fastcall LCXPlayerSocket::SetSocketType(LCXPlayerSocket *const this, int type)
{
  this->m_type = type;
}


// ===== 8a01b4 LCXPlayerSocket::Cancel(void) =====
void __fastcall LCXPlayerSocket::Cancel(LCXPlayerSocket *const this)
{
  LCXPlayerSocket::XSocketState m_state; // r3
  bool v2; // zf

  m_state = this->m_state;
  v2 = m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_NONE;
  if ( m_state )
    v2 = m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
  if ( !v2 && m_state != LCXPlayerSocket::XSocketState::XSOCKET_STATE_REQUEST_COMPLETE )
  {
    this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_CANCELLED;
    this->m_nonBlockConnectState = 0;
    (*((void (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
  }
}


// ===== 8a01f4 LCXPlayerSocket::IsInProgress(void) =====
bool __fastcall LCXPlayerSocket::IsInProgress(LCXPlayerSocket *const this)
{
  LCXPlayerSocket::XSocketState m_state; // r0
  bool v2; // zf

  m_state = this->m_state;
  v2 = m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_NONE;
  if ( m_state )
    v2 = m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
  return !v2
      && m_state != LCXPlayerSocket::XSocketState::XSOCKET_STATE_CANCELLED
      && m_state != LCXPlayerSocket::XSocketState::XSOCKET_STATE_REQUEST_COMPLETE;
}


// ===== 8a0220 LCXPlayerSocket::IsErrorOccurred(void) =====
bool __fastcall LCXPlayerSocket::IsErrorOccurred(LCXPlayerSocket *const this)
{
  return this->m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
}


// ===== 8a0234 std::string::substr(uint,uint) =====
std::string *__fastcall std::string::substr(
        std::string *__return_ptr retstr,
        const std::string *const this,
        size_t __pos,
        size_t __n)
{
  char *M_finish; // r12
  char *M_data; // r1
  size_t v7; // r12
  size_t v8; // r12
  size_t v9; // r7
  char *v10; // r6
  char *v11; // r7
  size_t v12; // r5
  char *v13; // r0

  retstr->_M_finish = (char *)retstr;
  retstr->_M_start_of_storage._M_data = (char *)retstr;
  M_finish = this->_M_finish;
  M_data = this->_M_start_of_storage._M_data;
  v7 = M_finish - M_data;
  if ( __pos > v7 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
    return retstr;
  }
  else
  {
    v8 = v7 - __pos;
    if ( v8 > __n )
      v9 = __pos + __n;
    else
      v9 = __pos + v8;
    v10 = &M_data[__pos];
    v11 = &M_data[v9];
    v12 = v11 - &M_data[__pos];
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(retstr, v12 + 1);
    v13 = retstr->_M_start_of_storage._M_data;
    if ( v10 != v11 )
      v13 = (char *)memcpy(v13, v10, v12) + v12;
    retstr->_M_finish = v13;
    *v13 = 0;
    return retstr;
  }
}


// ===== 8a02c4 LCXPlayerSocket::Start(void) =====
void __fastcall LCXPlayerSocket::Start(LCXPlayerSocket *const this)
{
  this->m_nReceived = 0;
  LC_API_MEMSET(this->m_abBuffer, 0, 2048);
  this->m_socket = -1;
  this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_START_CONNECT;
  this->m_server_addr = nullptr;
}


// ===== 8a02fc LCXPlayerSocket::SetAcceptIP(char *) =====
void __fastcall LCXPlayerSocket::SetAcceptIP(LCXPlayerSocket *const this, char *ip)
{
  this->m_accept_ip = LC_API_STRNEW(ip);
}


// ===== 8a0314 LCXPlayerSocket::LCXPlayerSocket(char *,int,LCXPlayerSocketObserver *) =====
LCXPlayerSocket *__fastcall LCXPlayerSocket::LCXPlayerSocket(
        LCXPlayerSocket *const this,
        char *server_name,
        int server_port,
        LCXPlayerSocketObserver *observer)
{
  std::string *p_m_buffer; // r0

  p_m_buffer = &this->m_buffer;
  this->m_server_port = server_port;
  this->m_observer = observer;
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993E70;
  this->m_buffer._M_finish = (char *)p_m_buffer;
  this->m_buffer._M_start_of_storage._M_data = (char *)p_m_buffer;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(p_m_buffer, 0x10u);
  *this->m_buffer._M_finish = 0;
  if ( server_name )
    this->m_server_name = LC_API_STRNEW(server_name);
  else
    this->m_server_name = nullptr;
  this->m_socket = -1;
  this->tmpRecvStartTime = 0;
  this->m_server_addr = nullptr;
  this->m_accept_ip = nullptr;
  this->m_nonBlockConnectState = 0;
  this->m_gethostbynameState = 0;
  this->m_connectTimeStart = 0;
  this->m_gethostbynametimeStart = 0;
  this->m_sentLen = 0;
  this->tmpSendStartTime = 0;
  return this;
}


// ===== 8a03bc LCXPlayerSocket::LCXPlayerSocket(char *,int,LCXPlayerSocketObserver *) =====
LCXPlayerSocket *__fastcall LCXPlayerSocket::LCXPlayerSocket(
        LCXPlayerSocket *const this,
        char *server_name,
        int server_port,
        LCXPlayerSocketObserver *observer)
{
  std::string *p_m_buffer; // r0

  p_m_buffer = &this->m_buffer;
  this->m_server_port = server_port;
  this->m_observer = observer;
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993E70;
  this->m_buffer._M_finish = (char *)p_m_buffer;
  this->m_buffer._M_start_of_storage._M_data = (char *)p_m_buffer;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(p_m_buffer, 0x10u);
  *this->m_buffer._M_finish = 0;
  if ( server_name )
    this->m_server_name = LC_API_STRNEW(server_name);
  else
    this->m_server_name = nullptr;
  this->m_socket = -1;
  this->tmpRecvStartTime = 0;
  this->m_server_addr = nullptr;
  this->m_accept_ip = nullptr;
  this->m_nonBlockConnectState = 0;
  this->m_gethostbynameState = 0;
  this->m_connectTimeStart = 0;
  this->m_gethostbynametimeStart = 0;
  this->m_sentLen = 0;
  this->tmpSendStartTime = 0;
  return this;
}


// ===== 8a0464 LCXPlayerSocket::~LCXPlayerSocket() =====
void *__fastcall LCXPlayerSocket::~LCXPlayerSocket(LCXPlayerSocket *const this)
{
  char *m_accept_ip; // r0
  char *m_server_name; // r0
  std::string *M_data; // r0
  char *v5; // r1

  m_accept_ip = this->m_accept_ip;
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993E70;
  if ( m_accept_ip )
  {
    operator delete[](m_accept_ip);
    this->m_accept_ip = nullptr;
  }
  m_server_name = this->m_server_name;
  if ( m_server_name )
  {
    operator delete[](m_server_name);
    this->m_server_name = nullptr;
  }
  M_data = (std::string *)this->m_buffer._M_start_of_storage._M_data;
  if ( M_data == &this->m_buffer || !M_data )
    return this;
  v5 = (char *)(this->m_buffer._M_buffers._M_end_of_storage - (char *)M_data);
  if ( (unsigned int)v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(M_data, (size_t)v5);
    return this;
  }
  LC_API_FREE_0(M_data);
  return this;
}


// ===== 8a0500 LCXPlayerSocket::~LCXPlayerSocket() =====
void *__fastcall LCXPlayerSocket::~LCXPlayerSocket(LCXPlayerSocket *const this)
{
  LCXPlayerSocket::~LCXPlayerSocket(this);
  LC_API_FREE_0(this);
  return this;
}


// ===== 8a051c LCXPlayerSocket::~LCXPlayerSocket() =====
void *__fastcall LCXPlayerSocket::~LCXPlayerSocket(LCXPlayerSocket *const this)
{
  char *m_accept_ip; // r0
  char *m_server_name; // r0
  std::string *M_data; // r0
  char *v5; // r1

  m_accept_ip = this->m_accept_ip;
  this->_vptr.LCXPlayerSocket = (int (**)(...))off_993E70;
  if ( m_accept_ip )
  {
    operator delete[](m_accept_ip);
    this->m_accept_ip = nullptr;
  }
  m_server_name = this->m_server_name;
  if ( m_server_name )
  {
    operator delete[](m_server_name);
    this->m_server_name = nullptr;
  }
  M_data = (std::string *)this->m_buffer._M_start_of_storage._M_data;
  if ( M_data == &this->m_buffer || !M_data )
    return this;
  v5 = (char *)(this->m_buffer._M_buffers._M_end_of_storage - (char *)M_data);
  if ( (unsigned int)v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(M_data, (size_t)v5);
    return this;
  }
  LC_API_FREE_0(M_data);
  return this;
}


// ===== 8a05b8 LCXPlayerSocket::ParseHttpHeader(char *) =====
int __fastcall LCXPlayerSocket::ParseHttpHeader(LCXPlayerSocket *const this, char *content)
{
  int v4; // r6
  char *v5; // r7
  char *M_finish; // r3
  char *M_data; // r2
  unsigned int v8; // r5
  int v9; // r10
  int v10; // r11
  void *v11; // r6
  void *v12; // r5
  size_t v13; // r0
  char *v14; // r3
  char *v15; // r1
  int v16; // r11
  char *v18; // lr
  char *v19; // r11
  char *v20; // r11
  bool v21; // zf
  void *v22; // r10
  char *i; // r5
  char *v24; // r3
  char *v25; // r1
  int v26; // r12
  char *v27; // [sp+4h] [bp-30h]
  std::string head; // [sp+14h] [bp-20h] BYREF

  v4 = LC_API_STRLEN(content) + 1;
  v5 = (char *)operator new[](v4);
  LC_API_MEMSET(v5, 0, v4);
  LC_API_TOLOWER(content, v5);
  M_finish = this->m_buffer._M_finish;
  M_data = this->m_buffer._M_start_of_storage._M_data;
  if ( M_finish == M_data || (unsigned int)(M_finish - M_data) <= 3 )
    goto LABEL_2;
  if ( M_finish == M_data )
    goto LABEL_27;
  v18 = M_data + 1;
LABEL_24:
  while ( *(v18 - 1) != 13 )
  {
    v21 = M_finish == v18++;
    if ( v21 )
      goto LABEL_27;
  }
  v19 = v18;
  if ( M_finish == v18 )
  {
LABEL_27:
    v19 = this->m_buffer._M_finish;
  }
  else
  {
    v25 = "\r\n";
    while ( 1 )
    {
      if ( *v19 != *(v25 - 1) )
      {
        ++v18;
        goto LABEL_24;
      }
      if ( v25 == "" )
        break;
      ++v19;
      ++v25;
      if ( v19 == M_finish )
        goto LABEL_28;
    }
    v19 = v18 - 1;
  }
LABEL_28:
  if ( M_finish == v19 )
  {
LABEL_2:
    v8 = 0;
    v9 = 0;
    v10 = -1;
  }
  else
  {
    v10 = v19 - M_data;
    v9 = v10 + 1;
    v8 = v10 + 1;
  }
  v11 = (void *)operator new[](v8);
  v12 = (void *)operator new[](v8);
  LC_API_MEMSET(v11, 0, v9);
  LC_API_MEMSET(v12, 0, v9);
  LC_API_MEMCPY(v11, this->m_buffer._M_start_of_storage._M_data, v10);
  LC_API_TOLOWER((const char *)v11, (char *)v12);
  std::string::string(&head, (char *)v12);
  v13 = LC_API_STRLEN_0(v5);
  v14 = head._M_start_of_storage._M_data;
  v15 = head._M_start_of_storage._M_data;
  if ( head._M_finish == head._M_start_of_storage._M_data )
  {
    if ( !v13 )
    {
      v16 = 0;
      goto LABEL_7;
    }
    goto LABEL_20;
  }
  if ( v13 > head._M_finish - head._M_start_of_storage._M_data )
  {
LABEL_20:
    v16 = -1;
    goto LABEL_7;
  }
  v20 = &v5[v13];
  v21 = head._M_finish == head._M_start_of_storage._M_data;
  if ( head._M_finish != head._M_start_of_storage._M_data )
    v21 = v5 == v20;
  if ( !v21 )
  {
    if ( v20 == v5 + 1 )
    {
      v26 = *v5;
      if ( *head._M_start_of_storage._M_data != v26 )
      {
        do
          ++v15;
        while ( v15 != head._M_finish && *v15 != v26 );
      }
    }
    else
    {
      v27 = head._M_start_of_storage._M_data;
      v22 = v12;
      for ( i = head._M_start_of_storage._M_data + 1; head._M_finish != v27; ++v27 )
      {
        if ( *(i - 1) == *v5 )
        {
          v15 = i;
          if ( head._M_finish == i )
            break;
          v24 = v5 + 2;
          while ( *v15 == *(v24 - 1) )
          {
            if ( v24 == v20 )
            {
              v14 = head._M_start_of_storage._M_data;
              v12 = v22;
              v15 = v27;
              goto LABEL_38;
            }
            ++v15;
            ++v24;
            if ( v15 == head._M_finish )
            {
              v14 = head._M_start_of_storage._M_data;
              v12 = v22;
              goto LABEL_38;
            }
          }
        }
        ++i;
      }
      v14 = head._M_start_of_storage._M_data;
      v12 = v22;
      v15 = head._M_finish;
    }
  }
LABEL_38:
  if ( head._M_finish == v15 )
    v16 = -1;
  else
    v16 = v15 - v14;
LABEL_7:
  if ( v5 )
    operator delete[](v5);
  if ( v11 )
    operator delete[](v11);
  if ( v12 )
    operator delete[](v12);
  if ( (std::string *)head._M_start_of_storage._M_data != &head && head._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(head._M_buffers._M_end_of_storage - head._M_start_of_storage._M_data) > 0x80 )
      LC_API_FREE_0(head._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        head._M_start_of_storage._M_data,
        head._M_buffers._M_end_of_storage - head._M_start_of_storage._M_data);
  }
  return v16;
}


// ===== 8a090c LCXPlayerSocket::RemoveHttpHeader(void) =====
void __fastcall LCXPlayerSocket::RemoveHttpHeader(LCXPlayerSocket *const this)
{
  char *M_finish; // r3
  char *M_data; // r2
  char *v4; // r7
  int v5; // r7
  int v6; // r0
  char *v7; // r3
  unsigned int v8; // r0
  char *v9; // r9
  std::string *p_m_buffer; // r8
  char *v11; // r10
  char *v12; // r9
  size_t v13; // r7
  char *v14; // r0
  char *v15; // r6
  bool v16; // zf
  char *v17; // r1
  _DWORD v18[4]; // [sp+4h] [bp-1Ch] BYREF
  char *__l; // [sp+14h] [bp-Ch]
  char *__f; // [sp+18h] [bp-8h]

  M_finish = this->m_buffer._M_finish;
  M_data = this->m_buffer._M_start_of_storage._M_data;
  if ( M_finish != M_data && (unsigned int)(M_finish - M_data) > 3 )
  {
    if ( M_finish == M_data )
      goto LABEL_5;
    v15 = M_data + 1;
LABEL_19:
    while ( *(v15 - 1) != 13 )
    {
      v16 = v15 == M_finish;
      v4 = v15++;
      if ( v16 )
        goto LABEL_6;
    }
    v4 = v15;
    if ( M_finish == v15 )
    {
LABEL_5:
      v4 = this->m_buffer._M_finish;
    }
    else
    {
      v17 = "\r\n";
      while ( 1 )
      {
        if ( *v4 != *(v17 - 1) )
        {
          ++v15;
          goto LABEL_19;
        }
        if ( v17 == "" )
          break;
        ++v4;
        ++v17;
        if ( v4 == M_finish )
          goto LABEL_6;
      }
      v4 = v15 - 1;
    }
LABEL_6:
    if ( M_finish != v4 )
    {
      v5 = v4 - M_data;
      if ( v5 > 0 )
      {
        v6 = LC_API_STRLEN("\r\n\r\n");
        v7 = this->m_buffer._M_start_of_storage._M_data;
        v8 = v6 + v5;
        v9 = (char *)(this->m_buffer._M_finish - v7);
        p_m_buffer = &this->m_buffer;
        __l = (char *)v18;
        __f = (char *)v18;
        if ( v8 > (unsigned int)v9 )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
        }
        else
        {
          v11 = &v7[v8];
          v12 = &v9[(_DWORD)v7];
          v13 = v12 - &v7[v8];
          std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v18, v13 + 1);
          v14 = __f;
          if ( v11 != v12 )
            v14 = (char *)memcpy(__f, v11, v13) + v13;
          __l = v14;
          *v14 = 0;
        }
        if ( p_m_buffer != (std::string *)v18 )
          std::string::_M_assign(p_m_buffer, __f, __l);
        if ( __f != (char *)v18 && __f )
        {
          if ( (unsigned int)(v18[0] - (_DWORD)__f) > 0x80 )
            LC_API_FREE_0(__f);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__f, v18[0] - (_DWORD)__f);
        }
      }
    }
  }
}


// ===== 8a0af0 LCXPlayerSocket::ParseChunkedContent(void) =====
bool __fastcall LCXPlayerSocket::ParseChunkedContent(LCXPlayerSocket *const this)
{
  char *M_data; // r5
  char *M_finish; // r6
  char *v3; // r0
  bool v4; // r4
  char *i; // r1
  bool v7; // zf
  char *v8; // r1
  int v9; // r8
  char *v10; // r6
  char *v11; // r7
  int v12; // r5
  char *v13; // r0
  unsigned int j; // r4
  int v15; // r1
  int v16; // r1
  char *v17; // r3
  int v18; // r9
  unsigned int v19; // r8
  int v20; // r11
  char *v21; // r11
  char *v22; // r7
  int v23; // r5
  char *v24; // r0
  unsigned int v25; // r9
  unsigned int v26; // r5
  int v27; // r4
  char *v28; // r6
  char *v29; // r10
  int v30; // r7
  char *v31; // r0
  unsigned int k; // r5
  int v33; // r1
  char *v34; // r3
  char *v35; // r1
  char *v36; // r1
  int v37; // r8
  int v38; // r2
  char *v39; // r11
  char *v40; // r0
  int v41; // r7
  unsigned int v42; // r5
  int v43; // r1
  int v44; // r1
  char *v45; // r3
  int v46; // r5
  char *v47; // r11
  char *v48; // r3
  size_t v49; // r9
  char *v50; // r0
  unsigned int m; // r7
  int v52; // r1
  char *v53; // r3
  size_t v54; // [sp+4h] [bp-110h]
  size_t v55; // [sp+4h] [bp-110h]
  char *v56; // [sp+8h] [bp-10Ch]
  unsigned int v58; // [sp+14h] [bp-100h]
  _DWORD v59[4]; // [sp+4Ch] [bp-C8h] BYREF
  char *v60; // [sp+5Ch] [bp-B8h]
  char *v61; // [sp+60h] [bp-B4h]
  _DWORD v62[4]; // [sp+64h] [bp-B0h] BYREF
  char *v63; // [sp+74h] [bp-A0h]
  char *v64; // [sp+78h] [bp-9Ch]
  _DWORD v65[4]; // [sp+7Ch] [bp-98h] BYREF
  char *v66; // [sp+8Ch] [bp-88h]
  char *v67; // [sp+90h] [bp-84h]
  _DWORD v68[4]; // [sp+94h] [bp-80h] BYREF
  char *v69; // [sp+A4h] [bp-70h]
  char *v70; // [sp+A8h] [bp-6Ch]
  _DWORD v71[4]; // [sp+ACh] [bp-68h] BYREF
  char *__l; // [sp+BCh] [bp-58h]
  char *__f; // [sp+C0h] [bp-54h]
  std::string chunkDataBuf; // [sp+C4h] [bp-50h] BYREF
  std::string chunkSizeBuf; // [sp+DCh] [bp-38h] BYREF
  std::string srcBuf; // [sp+F4h] [bp-20h] BYREF

  M_data = this->m_buffer._M_start_of_storage._M_data;
  M_finish = this->m_buffer._M_finish;
  srcBuf._M_finish = (char *)&srcBuf;
  srcBuf._M_start_of_storage._M_data = (char *)&srcBuf;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&srcBuf, M_finish - M_data + 1);
  v3 = srcBuf._M_start_of_storage._M_data;
  if ( M_data != M_finish )
    v3 = (char *)memcpy(srcBuf._M_start_of_storage._M_data, M_data, M_finish - M_data) + M_finish - M_data;
  srcBuf._M_finish = v3;
  *v3 = 0;
  std::string::_M_assign(&this->m_buffer, "", "");
  std::string::string(&chunkSizeBuf, "");
  std::string::string(&chunkDataBuf, "");
  LC_DEBUG_OUT("The http content is:\n%s\n", srcBuf._M_start_of_storage._M_data);
  if ( srcBuf._M_finish == srcBuf._M_start_of_storage._M_data
    || (_BYTE *)(srcBuf._M_finish - srcBuf._M_start_of_storage._M_data) == (_BYTE *)&dword_0 + 1 )
  {
    goto LABEL_4;
  }
  if ( srcBuf._M_finish != srcBuf._M_start_of_storage._M_data )
  {
    for ( i = srcBuf._M_start_of_storage._M_data + 1; ; ++i )
    {
      while ( *(i - 1) != 13 )
      {
        v7 = srcBuf._M_finish == i++;
        if ( v7 )
          goto LABEL_27;
      }
      if ( srcBuf._M_finish == i )
        break;
      if ( *i == 10 )
      {
        v8 = i - 1;
        goto LABEL_28;
      }
    }
  }
LABEL_27:
  v8 = srcBuf._M_finish;
LABEL_28:
  if ( srcBuf._M_finish == v8 )
  {
LABEL_4:
    v4 = 0;
    LC_DEBUG_OUT("The posChunkSize is: %d", -1);
  }
  else
  {
    v9 = v8 - srcBuf._M_start_of_storage._M_data;
    LC_DEBUG_OUT("The posChunkSize is: %d", v8 - srcBuf._M_start_of_storage._M_data);
    if ( v9 <= 0 )
    {
LABEL_135:
      v4 = 0;
    }
    else
    {
      v10 = srcBuf._M_start_of_storage._M_data;
      if ( v9 > (unsigned int)(srcBuf._M_finish - srcBuf._M_start_of_storage._M_data) )
        v11 = srcBuf._M_finish;
      else
        v11 = &srcBuf._M_start_of_storage._M_data[v9];
      v12 = v11 - srcBuf._M_start_of_storage._M_data;
      __l = (char *)v71;
      __f = (char *)v71;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
        v71,
        v11 - srcBuf._M_start_of_storage._M_data + 1);
      v13 = __f;
      if ( v10 != v11 )
        v13 = (char *)memcpy(__f, v10, v11 - v10) + v12;
      __l = v13;
      *v13 = 0;
      std::string::_M_assign(&chunkSizeBuf, __f, __l);
      if ( __f != (char *)v71 && __f )
      {
        if ( (unsigned int)(v71[0] - (_DWORD)__f) > 0x80 )
          LC_API_FREE_0(__f);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__f, v71[0] - (_DWORD)__f);
      }
      for ( j = 0; j != v9; ++j )
      {
        while ( chunkSizeBuf._M_finish - chunkSizeBuf._M_start_of_storage._M_data > j )
        {
          v15 = chunkSizeBuf._M_start_of_storage._M_data[j++];
          LC_DEBUG_OUT("The charactor is:\n%d\n", v15);
          if ( j == v9 )
            goto LABEL_43;
        }
        __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
        v16 = chunkSizeBuf._M_start_of_storage._M_data[j];
        LC_DEBUG_OUT("The charactor is:\n%d\n", v16);
      }
LABEL_43:
      v17 = chunkSizeBuf._M_start_of_storage._M_data;
      if ( chunkSizeBuf._M_finish == chunkSizeBuf._M_start_of_storage._M_data )
        goto LABEL_44;
      do
      {
        if ( *v17 == 32 )
          break;
        ++v17;
      }
      while ( v17 != chunkSizeBuf._M_finish );
      if ( chunkSizeBuf._M_finish == v17 )
      {
LABEL_44:
        LC_DEBUG_OUT("The tmpPosChunkSize is: %d", -1);
      }
      else
      {
        v27 = v17 - chunkSizeBuf._M_start_of_storage._M_data;
        LC_DEBUG_OUT("The tmpPosChunkSize is: %d", v17 - chunkSizeBuf._M_start_of_storage._M_data);
        if ( v27 > 0 )
        {
          v28 = chunkSizeBuf._M_start_of_storage._M_data;
          if ( v27 > (unsigned int)(chunkSizeBuf._M_finish - chunkSizeBuf._M_start_of_storage._M_data) )
            v29 = chunkSizeBuf._M_finish;
          else
            v29 = &chunkSizeBuf._M_start_of_storage._M_data[v27];
          v30 = v29 - chunkSizeBuf._M_start_of_storage._M_data;
          v69 = (char *)v68;
          v70 = (char *)v68;
          std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
            v68,
            v29 - chunkSizeBuf._M_start_of_storage._M_data + 1);
          v31 = v70;
          if ( v28 != v29 )
            v31 = (char *)memcpy(v70, v28, v29 - v28) + v30;
          v69 = v31;
          *v31 = 0;
          std::string::_M_assign(&chunkSizeBuf, v70, v69);
          if ( v70 != (char *)v68 && v70 )
          {
            if ( (unsigned int)(v68[0] - (_DWORD)v70) > 0x80 )
              LC_API_FREE_0(v70);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v70, v68[0] - (_DWORD)v70);
          }
          for ( k = 0; k != v27; ++k )
          {
            v34 = chunkSizeBuf._M_start_of_storage._M_data;
            if ( chunkSizeBuf._M_finish - chunkSizeBuf._M_start_of_storage._M_data <= k )
            {
              __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
              v34 = chunkSizeBuf._M_start_of_storage._M_data;
            }
            v33 = v34[k];
            LC_DEBUG_OUT("The charactor is:\n%d\n", v33);
          }
        }
      }
      v18 = strtol(chunkSizeBuf._M_start_of_storage._M_data, nullptr, 16);
      v19 = v9 + 2;
      LC_DEBUG_OUT("The chunk size is: %d\n", v18);
      LC_DEBUG_OUT("current pos is: %d\n", v19);
      if ( v18 <= 0 )
      {
LABEL_100:
        v4 = 1;
      }
      else
      {
        while ( 1 )
        {
          v66 = (char *)v65;
          v67 = (char *)v65;
          if ( v19 > srcBuf._M_finish - srcBuf._M_start_of_storage._M_data )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
          }
          else
          {
            if ( srcBuf._M_finish - srcBuf._M_start_of_storage._M_data - v19 > v18 )
              v20 = v19 + v18;
            else
              v20 = srcBuf._M_finish - srcBuf._M_start_of_storage._M_data;
            v21 = &srcBuf._M_start_of_storage._M_data[v20];
            v22 = &srcBuf._M_start_of_storage._M_data[v19];
            v23 = v21 - &srcBuf._M_start_of_storage._M_data[v19];
            std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v65, v23 + 1);
            v24 = v67;
            if ( v22 != v21 )
              v24 = (char *)memcpy(v67, v22, v21 - v22) + v23;
            v66 = v24;
            *v24 = 0;
          }
          std::string::_M_assign(&chunkDataBuf, v67, v66);
          if ( v67 != (char *)v65 && v67 )
          {
            if ( (unsigned int)(v65[0] - (_DWORD)v67) > 0x80 )
              LC_API_FREE_0(v67);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v67, v65[0] - (_DWORD)v67);
          }
          v25 = v19 + v18;
          LC_DEBUG_OUT("chunkDataBuf is:\n%s\n", chunkDataBuf._M_start_of_storage._M_data);
          std::string::_M_append(&this->m_buffer, chunkDataBuf._M_start_of_storage._M_data, chunkDataBuf._M_finish);
          v26 = v25 + 2;
          LC_DEBUG_OUT("current whole content is:\n%s\n", this->m_buffer._M_start_of_storage._M_data);
          LC_DEBUG_OUT("current pos is: %d\n", v25 + 2);
          if ( v25 + 2 >= srcBuf._M_finish - srcBuf._M_start_of_storage._M_data )
            break;
          v58 = v25 + 4;
          if ( srcBuf._M_finish - srcBuf._M_start_of_storage._M_data < v25 + 4 )
            break;
          v35 = &srcBuf._M_start_of_storage._M_data[v26];
          if ( srcBuf._M_finish != &srcBuf._M_start_of_storage._M_data[v26] )
          {
            while ( *v35++ == 13 )
            {
LABEL_104:
              if ( srcBuf._M_finish == v35 )
                goto LABEL_78;
              if ( *v35 == 10 )
              {
                v36 = v35 - 1;
                goto LABEL_79;
              }
            }
            while ( 1 )
            {
              v7 = srcBuf._M_finish == v35++;
              if ( v7 )
                break;
              if ( *(v35 - 1) == 13 )
                goto LABEL_104;
            }
          }
LABEL_78:
          v36 = srcBuf._M_finish;
LABEL_79:
          if ( srcBuf._M_finish == v36 )
            break;
          v37 = v36 - srcBuf._M_start_of_storage._M_data;
          LC_DEBUG_OUT("The posChunkSize is: %d\n", v36 - srcBuf._M_start_of_storage._M_data);
          if ( v37 <= 0 )
            goto LABEL_135;
          v63 = (char *)v62;
          v64 = (char *)v62;
          if ( v26 > srcBuf._M_finish - srcBuf._M_start_of_storage._M_data )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
          }
          else
          {
            if ( v37 > srcBuf._M_finish - srcBuf._M_start_of_storage._M_data - v26 )
              v38 = srcBuf._M_finish - srcBuf._M_start_of_storage._M_data;
            else
              v38 = v26 + v37;
            v39 = &srcBuf._M_start_of_storage._M_data[v26];
            v56 = &srcBuf._M_start_of_storage._M_data[v38];
            v54 = v38 - v26;
            std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v62, v38 - v26 + 1);
            v40 = v64;
            if ( v39 != v56 )
              v40 = (char *)memcpy(v64, v39, v54) + v54;
            v63 = v40;
            *v40 = 0;
          }
          std::string::_M_assign(&chunkSizeBuf, v64, v63);
          if ( v64 != (char *)v62 && v64 )
          {
            if ( (unsigned int)(v62[0] - (_DWORD)v64) > 0x80 )
              LC_API_FREE_0(v64);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v64, v62[0] - (_DWORD)v64);
          }
          LC_DEBUG_OUT("The chunkSizeBuf is: %s\n", chunkSizeBuf._M_start_of_storage._M_data);
          if ( (int)v26 < v37 )
          {
            v41 = v37 + -2 - v25;
            v42 = 0;
            do
            {
              while ( chunkSizeBuf._M_finish - chunkSizeBuf._M_start_of_storage._M_data > v42 )
              {
                v43 = chunkSizeBuf._M_start_of_storage._M_data[v42++];
                LC_DEBUG_OUT("The charactor is:\n%d\n", v43);
                if ( v42 == v41 )
                  goto LABEL_97;
              }
              __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
              v44 = chunkSizeBuf._M_start_of_storage._M_data[v42++];
              LC_DEBUG_OUT("The charactor is:\n%d\n", v44);
            }
            while ( v42 != v41 );
          }
LABEL_97:
          v45 = chunkSizeBuf._M_start_of_storage._M_data;
          if ( chunkSizeBuf._M_finish == chunkSizeBuf._M_start_of_storage._M_data )
            goto LABEL_98;
          do
          {
            if ( *v45 == 32 )
              break;
            ++v45;
          }
          while ( v45 != chunkSizeBuf._M_finish );
          if ( chunkSizeBuf._M_finish == v45 )
          {
LABEL_98:
            LC_DEBUG_OUT("The tmpPosChunkSize is: %d\n", -1);
          }
          else
          {
            v46 = v45 - chunkSizeBuf._M_start_of_storage._M_data;
            LC_DEBUG_OUT("The tmpPosChunkSize is: %d\n", v45 - chunkSizeBuf._M_start_of_storage._M_data);
            if ( v46 > 0 )
            {
              v47 = chunkSizeBuf._M_start_of_storage._M_data;
              if ( v46 > (unsigned int)(chunkSizeBuf._M_finish - chunkSizeBuf._M_start_of_storage._M_data) )
                v48 = chunkSizeBuf._M_finish;
              else
                v48 = &chunkSizeBuf._M_start_of_storage._M_data[v46];
              v49 = v48 - chunkSizeBuf._M_start_of_storage._M_data;
              v55 = (size_t)v48;
              v60 = (char *)v59;
              v61 = (char *)v59;
              std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
                v59,
                v48 - chunkSizeBuf._M_start_of_storage._M_data + 1);
              v50 = v61;
              if ( v47 != (char *)v55 )
                v50 = (char *)memcpy(v61, v47, v49) + v49;
              v60 = v50;
              *v50 = 0;
              std::string::_M_assign(&chunkSizeBuf, v61, v60);
              if ( v61 != (char *)v59 && v61 )
              {
                if ( (unsigned int)(v59[0] - (_DWORD)v61) > 0x80 )
                  LC_API_FREE_0(v61);
                else
                  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v61, v59[0] - (_DWORD)v61);
              }
              for ( m = 0; m != v46; ++m )
              {
                v53 = chunkSizeBuf._M_start_of_storage._M_data;
                if ( m >= chunkSizeBuf._M_finish - chunkSizeBuf._M_start_of_storage._M_data )
                {
                  __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
                  v53 = chunkSizeBuf._M_start_of_storage._M_data;
                }
                v52 = v53[m];
                LC_DEBUG_OUT("The charactor is:\n%d\n", v52);
              }
            }
          }
          v18 = strtol(chunkSizeBuf._M_start_of_storage._M_data, nullptr, 16);
          v19 = v58 + v37;
          LC_DEBUG_OUT("The chunk size is: %d\n", v18);
          LC_DEBUG_OUT("current pos is: %d\n", v19);
          if ( v18 <= 0 )
            goto LABEL_100;
        }
        v4 = 0;
        LC_DEBUG_OUT("The posChunkSize is: %d\n", -1);
      }
    }
  }
  if ( (std::string *)chunkDataBuf._M_start_of_storage._M_data != &chunkDataBuf
    && chunkDataBuf._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(chunkDataBuf._M_buffers._M_end_of_storage - chunkDataBuf._M_start_of_storage._M_data) > 0x80 )
      LC_API_FREE_0(chunkDataBuf._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        chunkDataBuf._M_start_of_storage._M_data,
        chunkDataBuf._M_buffers._M_end_of_storage - chunkDataBuf._M_start_of_storage._M_data);
  }
  if ( (std::string *)chunkSizeBuf._M_start_of_storage._M_data != &chunkSizeBuf
    && chunkSizeBuf._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(chunkSizeBuf._M_buffers._M_end_of_storage - chunkSizeBuf._M_start_of_storage._M_data) > 0x80 )
      LC_API_FREE_0(chunkSizeBuf._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        chunkSizeBuf._M_start_of_storage._M_data,
        chunkSizeBuf._M_buffers._M_end_of_storage - chunkSizeBuf._M_start_of_storage._M_data);
  }
  if ( (std::string *)srcBuf._M_start_of_storage._M_data != &srcBuf && srcBuf._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(srcBuf._M_buffers._M_end_of_storage - srcBuf._M_start_of_storage._M_data) > 0x80 )
      LC_API_FREE_0(srcBuf._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        srcBuf._M_start_of_storage._M_data,
        srcBuf._M_buffers._M_end_of_storage - srcBuf._M_start_of_storage._M_data);
  }
  return v4;
}


// ===== 8a1534 LCXPlayerSocket::CalculateTotalLength(void) =====
int __fastcall LCXPlayerSocket::CalculateTotalLength(LCXPlayerSocket *const this)
{
  char *M_data; // r10
  char *M_finish; // r6
  int v3; // r10
  char *v5; // r12
  char *v6; // r3
  int v7; // r3
  unsigned int v8; // r6
  char *v9; // r11
  char *v10; // r0
  size_t v11; // r0
  char *v12; // r10
  std::string *v13; // r8
  unsigned int v14; // r11
  unsigned int v15; // r0
  char *v16; // r10
  char *v17; // r9
  size_t v18; // r8
  char *v19; // r0
  char *v20; // r9
  unsigned int v21; // r2
  size_t v22; // r0
  size_t v23; // r0
  size_t v24; // r4
  int v25; // r0
  signed int v26; // r3
  char *v27; // r11
  int v28; // r11
  char *v29; // r11
  int v30; // r10
  char *v31; // r0
  char *v32; // r12
  bool v33; // zf
  char *v34; // r0
  char *j; // lr
  char *v36; // r2
  char *k; // r1
  char *v38; // r3
  char *v39; // r12
  bool v40; // zf
  std::string *v41; // r11
  char *i; // r4
  char *v43; // r2
  char *v44; // r3
  int v45; // [sp+4h] [bp-B8h]
  char *v46; // [sp+4h] [bp-B8h]
  _DWORD v47[4]; // [sp+14h] [bp-A8h] BYREF
  char *__l; // [sp+24h] [bp-98h]
  char *__f; // [sp+28h] [bp-94h]
  std::string str_length_0; // [sp+2Ch] [bp-90h] BYREF
  std::string v51; // [sp+44h] [bp-78h] BYREF
  std::string str_length; // [sp+5Ch] [bp-60h] BYREF
  std::string header; // [sp+74h] [bp-48h] BYREF
  char CONTENT_LENGTH_2[20]; // [sp+8Ch] [bp-30h] BYREF
  char CONTENT_LENGTH_1[20]; // [sp+A0h] [bp-1Ch] BYREF

  strcpy(CONTENT_LENGTH_1, "\r\nContent-Length:");
  strcpy(CONTENT_LENGTH_2, "\r\nContent-length:");
  M_data = this->m_buffer._M_start_of_storage._M_data;
  M_finish = this->m_buffer._M_finish;
  if ( M_finish == M_data || (unsigned int)(M_finish - M_data) <= 3 )
    return -1;
  if ( M_finish == M_data )
    goto LABEL_10;
  v5 = M_data + 1;
LABEL_7:
  while ( *(v5 - 1) != 13 )
  {
    v33 = M_finish == v5++;
    if ( v33 )
      goto LABEL_10;
  }
  v6 = v5;
  if ( M_finish == v5 )
  {
LABEL_10:
    v6 = this->m_buffer._M_finish;
  }
  else
  {
    v36 = "\r\n";
    while ( 1 )
    {
      if ( *v6 != *(v36 - 1) )
      {
        ++v5;
        goto LABEL_7;
      }
      if ( v36 == "" )
        break;
      ++v6;
      ++v36;
      if ( v6 == M_finish )
        goto LABEL_11;
    }
    v6 = v5 - 1;
  }
LABEL_11:
  if ( M_finish == v6 )
    return -1;
  v7 = v6 - M_data;
  if ( v7 < 0 )
    return -1;
  v8 = M_finish - M_data;
  if ( v7 > v8 )
    v9 = &M_data[v8];
  else
    v9 = &M_data[v7];
  header._M_finish = (char *)&header;
  header._M_start_of_storage._M_data = (char *)&header;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&header, v9 - M_data + 1);
  v10 = header._M_start_of_storage._M_data;
  if ( M_data != v9 )
    v10 = (char *)memcpy(header._M_start_of_storage._M_data, M_data, v9 - M_data) + v9 - M_data;
  header._M_finish = v10;
  *v10 = 0;
  v11 = LC_API_STRLEN_0(CONTENT_LENGTH_1);
  v12 = header._M_finish;
  v13 = (std::string *)header._M_start_of_storage._M_data;
  v14 = header._M_finish - header._M_start_of_storage._M_data;
  if ( header._M_finish == header._M_start_of_storage._M_data )
  {
    if ( !v11 )
    {
      v45 = 0;
      goto LABEL_22;
    }
    v23 = LC_API_STRLEN_0(CONTENT_LENGTH_2);
    v24 = v23;
    if ( !v23 )
    {
LABEL_39:
      v25 = LC_API_STRLEN(CONTENT_LENGTH_2);
      std::string::substr(&str_length, &header, v24 + v25, 0xFFFFFFFF);
      v26 = std::string::find(&str_length, "\r\n", 0);
      if ( v26 < 0 )
      {
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&str_length);
        v3 = -1;
      }
      else
      {
        std::string::substr(&v51, &str_length, 0, v26);
        std::string::_M_assign(&str_length, v51._M_start_of_storage._M_data, v51._M_finish);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v51);
        v3 = LC_API_ATOI(str_length._M_start_of_storage._M_data);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&str_length);
      }
      v13 = (std::string *)header._M_start_of_storage._M_data;
      goto LABEL_31;
    }
    goto LABEL_37;
  }
  if ( v11 > v14 )
  {
LABEL_36:
    v22 = LC_API_STRLEN_0(CONTENT_LENGTH_2);
    if ( v14 < v22 )
      goto LABEL_37;
    v39 = &CONTENT_LENGTH_2[v22];
    v40 = v12 == (char *)v13;
    if ( v12 != (char *)v13 )
      v40 = v39 == CONTENT_LENGTH_2;
    if ( !v40 )
    {
      if ( v39 != &CONTENT_LENGTH_2[1] )
      {
        v41 = v13;
        for ( i = &v13->_M_buffers._M_static_buf[1]; v12 != (char *)v41; ++i )
        {
          if ( *(i - 1) == CONTENT_LENGTH_2[0] )
          {
            v43 = i;
            if ( v12 == i )
              break;
            v44 = &CONTENT_LENGTH_2[2];
            while ( *v43 == *(v44 - 1) )
            {
              if ( v44 == v39 )
              {
                v43 = (char *)v41;
                goto LABEL_114;
              }
              ++v43;
              ++v44;
              if ( v43 == v12 )
                goto LABEL_114;
            }
          }
          v41 = (std::string *)((char *)v41 + 1);
        }
        v43 = v12;
LABEL_114:
        if ( v12 != v43 )
        {
          v24 = v43 - (char *)v13;
          if ( v43 - (char *)v13 < 0 )
          {
            v3 = 0;
            goto LABEL_31;
          }
          goto LABEL_39;
        }
LABEL_37:
        v3 = 0;
        goto LABEL_31;
      }
      if ( v13->_M_buffers._M_static_buf[0] != CONTENT_LENGTH_2[0] )
      {
        v43 = (char *)v13;
        do
          ++v43;
        while ( v43 != v12 && *v43 != CONTENT_LENGTH_2[0] );
        goto LABEL_114;
      }
    }
    v43 = (char *)v13;
    goto LABEL_114;
  }
  v32 = &CONTENT_LENGTH_1[v11];
  v33 = header._M_finish == header._M_start_of_storage._M_data;
  if ( header._M_finish != header._M_start_of_storage._M_data )
    v33 = v32 == CONTENT_LENGTH_1;
  if ( v33 )
    goto LABEL_66;
  if ( v32 == &CONTENT_LENGTH_1[1] )
  {
    if ( *header._M_start_of_storage._M_data != CONTENT_LENGTH_1[0] )
    {
      v34 = header._M_start_of_storage._M_data;
      do
        ++v34;
      while ( v34 != header._M_finish && *v34 != CONTENT_LENGTH_1[0] );
      goto LABEL_67;
    }
LABEL_66:
    v34 = header._M_start_of_storage._M_data;
    goto LABEL_67;
  }
  v46 = header._M_start_of_storage._M_data;
  for ( j = header._M_start_of_storage._M_data + 1; header._M_finish != v46; ++v46 )
  {
    if ( *(j - 1) == CONTENT_LENGTH_1[0] )
    {
      v34 = j;
      if ( header._M_finish == j )
        break;
      v38 = &CONTENT_LENGTH_1[2];
      while ( *v34 == *(v38 - 1) )
      {
        if ( v38 == v32 )
        {
          v34 = v46;
          goto LABEL_67;
        }
        ++v34;
        ++v38;
        if ( v34 == header._M_finish )
          goto LABEL_67;
      }
    }
    ++j;
  }
  v34 = header._M_finish;
LABEL_67:
  if ( header._M_finish == v34 )
    goto LABEL_36;
  v45 = v34 - header._M_start_of_storage._M_data;
  if ( v34 - header._M_start_of_storage._M_data < 0 )
    goto LABEL_36;
LABEL_22:
  v15 = v45 + LC_API_STRLEN(CONTENT_LENGTH_1);
  str_length_0._M_finish = (char *)&str_length_0;
  str_length_0._M_start_of_storage._M_data = (char *)&str_length_0;
  if ( v15 > header._M_finish - header._M_start_of_storage._M_data )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
  }
  else
  {
    v16 = &header._M_start_of_storage._M_data[v15];
    v17 = header._M_finish;
    v18 = header._M_finish - &header._M_start_of_storage._M_data[v15];
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&str_length_0, v18 + 1);
    v19 = str_length_0._M_start_of_storage._M_data;
    if ( v16 != v17 )
      v19 = (char *)memcpy(str_length_0._M_start_of_storage._M_data, v16, v18) + v18;
    str_length_0._M_finish = v19;
    *v19 = 0;
  }
  v20 = str_length_0._M_start_of_storage._M_data;
  v21 = str_length_0._M_finish - str_length_0._M_start_of_storage._M_data;
  if ( str_length_0._M_finish == str_length_0._M_start_of_storage._M_data || v21 == 1 )
    goto LABEL_28;
  if ( str_length_0._M_finish == str_length_0._M_start_of_storage._M_data )
  {
LABEL_44:
    v27 = str_length_0._M_finish;
  }
  else
  {
    for ( k = str_length_0._M_start_of_storage._M_data + 1; ; ++k )
    {
      while ( *(k - 1) != 13 )
      {
        v33 = str_length_0._M_finish == k++;
        if ( v33 )
          goto LABEL_44;
      }
      v27 = k;
      if ( k == str_length_0._M_finish )
        break;
      if ( *k == 10 )
      {
        v27 = k - 1;
        break;
      }
    }
  }
  if ( str_length_0._M_finish == v27 || (v28 = v27 - str_length_0._M_start_of_storage._M_data, v28 < 0) )
  {
LABEL_28:
    if ( (std::string *)str_length_0._M_start_of_storage._M_data == &str_length_0
      || !str_length_0._M_start_of_storage._M_data )
    {
      v13 = (std::string *)header._M_start_of_storage._M_data;
      v3 = -1;
    }
    else if ( (unsigned int)(str_length_0._M_buffers._M_end_of_storage - str_length_0._M_start_of_storage._M_data) > 0x80 )
    {
      LC_API_FREE_0(str_length_0._M_start_of_storage._M_data);
      v3 = -1;
      v13 = (std::string *)header._M_start_of_storage._M_data;
    }
    else
    {
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
        str_length_0._M_start_of_storage._M_data,
        str_length_0._M_buffers._M_end_of_storage - str_length_0._M_start_of_storage._M_data);
      v13 = (std::string *)header._M_start_of_storage._M_data;
      v3 = -1;
    }
    goto LABEL_31;
  }
  if ( v28 > v21 )
    v29 = str_length_0._M_finish;
  else
    v29 = &str_length_0._M_start_of_storage._M_data[v28];
  v30 = v29 - str_length_0._M_start_of_storage._M_data;
  __l = (char *)v47;
  __f = (char *)v47;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
    v47,
    v29 - str_length_0._M_start_of_storage._M_data + 1);
  v31 = __f;
  if ( v20 != v29 )
    v31 = (char *)memcpy(__f, v20, v29 - v20) + v30;
  __l = v31;
  *v31 = 0;
  std::string::_M_assign(&str_length_0, __f, __l);
  if ( __f != (char *)v47 && __f )
  {
    if ( (unsigned int)(v47[0] - (_DWORD)__f) > 0x80 )
      LC_API_FREE_0(__f);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(__f, v47[0] - (_DWORD)__f);
  }
  v3 = LC_API_ATOI(str_length_0._M_start_of_storage._M_data);
  if ( (std::string *)str_length_0._M_start_of_storage._M_data != &str_length_0
    && str_length_0._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(str_length_0._M_buffers._M_end_of_storage - str_length_0._M_start_of_storage._M_data) > 0x80 )
    {
      LC_API_FREE_0(str_length_0._M_start_of_storage._M_data);
      v13 = (std::string *)header._M_start_of_storage._M_data;
      goto LABEL_31;
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(
      str_length_0._M_start_of_storage._M_data,
      str_length_0._M_buffers._M_end_of_storage - str_length_0._M_start_of_storage._M_data);
  }
  v13 = (std::string *)header._M_start_of_storage._M_data;
LABEL_31:
  if ( v13 != &header && v13 )
  {
    if ( (unsigned int)(header._M_buffers._M_end_of_storage - (char *)v13) > 0x80 )
      LC_API_FREE_0(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v13, header._M_buffers._M_end_of_storage - (char *)v13);
  }
  return v3;
}


// ===== 8a1c1c LCXPlayerSocket::Run(void) =====
void __fastcall LCXPlayerSocket::Run(LCXPlayerSocket *const this)
{
  LCXPlayerSocket::XSocketState m_state; // r1
  bool v3; // zf
  int v4; // r0
  int v5; // r5
  int v6; // r0
  int m_sentLen; // r3
  int v8; // r2
  int v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r5
  int m_total_length; // r1
  int v14; // r0
  int v15; // r0
  int v16; // r0
  int v17; // r0
  void *v18; // r5
  int v19; // r0
  int v20; // r1
  int v21; // r0
  LCXPlayerSocketObserver *m_observer; // r3

  m_state = this->m_state;
  v3 = m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_NONE;
  if ( m_state )
    v3 = m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
  if ( v3 || m_state == LCXPlayerSocket::XSocketState::XSOCKET_STATE_CANCELLED )
  {
    LC_DEBUG_OUT("LCXPlayerSocket::Run(): m_state is %d, quit Run()!!\n");
    return;
  }
  switch ( m_state )
  {
    case LCXPlayerSocket::XSocketState::XSOCKET_STATE_START_CONNECT:
      if ( this->m_server_addr
        || (v18 = (void *)(*((int (__fastcall **)(LCXPlayerSocket *const, char *))this->_vptr.LCXPlayerSocket + 8))(
                            this,
                            this->m_server_name),
            (this->m_server_addr = v18) != nullptr) )
      {
        if ( (*((int (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 10))(this) )
        {
          this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_WAIT_CONNECTING;
        }
        else
        {
          (*((void (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
          LC_DEBUG_OUT("XSocket::Run() err = %d \n");
        }
      }
      else if ( (unsigned int)(LC_API_GET_TIME() - this->m_gethostbynametimeStart) > 0x270F )
      {
        v19 = (*((int (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
        LC_DEBUG_OUT("LXSocket::Run() err = %d \n", v19);
        this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
        this->m_gethostbynameState = 0;
      }
      return;
    case LCXPlayerSocket::XSocketState::XSOCKET_STATE_WAIT_CONNECTING:
      if ( (*((int (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 13))(this) )
      {
        LC_DEBUG_OUT("XSocket::Run(): Connected \n");
        this->m_sentLen = 0;
        v17 = LC_API_GET_TIME();
        this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_SEND_REQUEST;
        this->tmpSendStartTime = v17;
        this->m_nonBlockConnectState = 0;
      }
      else if ( this->m_nonBlockConnectState != 1 )
      {
        v14 = (*((int (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
        LC_DEBUG_OUT("XSocket::Run() err = %d \n", v14);
        (*((void (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
        this->m_nonBlockConnectState = 0;
        this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
      }
      return;
    case LCXPlayerSocket::XSocketState::XSOCKET_STATE_SEND_REQUEST:
      v4 = (*((int (__fastcall **)(LCXPlayerSocket *const, int))this->_vptr.LCXPlayerSocket + 16))(this, 1);
      if ( v4 < 0 )
        goto LABEL_42;
      if ( v4 )
      {
        v5 = (*((int (__fastcall **)(LCXPlayerSocketObserver *))this->m_observer->_vptr.LCXPlayerSocketObserver + 1))(this->m_observer);
        v6 = (*this->m_observer->_vptr.LCXPlayerSocketObserver)(this->m_observer);
        m_sentLen = this->m_sentLen;
        v8 = v5 - m_sentLen;
        if ( v5 - m_sentLen > 2048 )
          v8 = 2048;
        v9 = (*((int (__fastcall **)(LCXPlayerSocket *const, int, int))this->_vptr.LCXPlayerSocket + 17))(
               this,
               v6 + m_sentLen,
               v8);
        if ( v9 < 0 )
        {
LABEL_42:
          v20 = (*((int (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
          LC_DEBUG_OUT("XSocket::Run() err = %d \n", v20);
          (*((void (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
          this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
        }
        else
        {
          v10 = v9 + this->m_sentLen;
          this->m_sentLen = v10;
          if ( v5 == v10 )
          {
            LC_DEBUG_OUT("XSocket::Run(): Send successful. \n");
            this->m_nReceived = 0;
            std::string::_M_assign(&this->m_buffer, "", "");
            this->m_bReceiveHttpHeader = 1;
            this->m_bLengthKnown = 0;
            this->m_buffer_used = 0;
            LC_DEBUG_OUT("XSocket::Run(): The amount of sent is: %d\n", v5);
            v15 = LC_API_GET_TIME();
            LC_DEBUG_OUT("XSocket::Run(): The time of sent is: %d\n", v15 - this->tmpSendStartTime);
            v16 = LC_API_GET_TIME();
            this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_WAIT_RESPONSE;
            this->tmpRecvStartTime = v16;
          }
        }
      }
      return;
    case LCXPlayerSocket::XSocketState::XSOCKET_STATE_WAIT_RESPONSE:
      if ( (*((int (__fastcall **)(LCXPlayerSocket *const, _DWORD))this->_vptr.LCXPlayerSocket + 16))(this, 0) <= 0 )
        return;
      LC_DEBUG_OUT("XSocket::Run(): Have someting to receive. \n");
      LC_API_MEMSET(this->m_abBuffer, 0, 2048);
      v11 = (*((int (__fastcall **)(LCXPlayerSocket *const, char *, int))this->_vptr.LCXPlayerSocket + 18))(
              this,
              this->m_abBuffer,
              2048);
      if ( v11 < 0 )
      {
        v21 = (*((int (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 11))(this);
        LC_DEBUG_OUT("XSocket::Run() err = %d \n", v21);
        (*((void (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
        m_observer = this->m_observer;
        this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_ERROR;
        (*((void (__fastcall **)(LCXPlayerSocketObserver *, _DWORD))m_observer->_vptr.LCXPlayerSocketObserver + 3))(
          m_observer,
          0);
      }
      else if ( v11 )
      {
        std::string::_M_append(&this->m_buffer, this->m_abBuffer, &this->m_abBuffer[v11]);
        if ( this->m_bReceiveHttpHeader )
        {
          if ( (int)std::string::find(&this->m_buffer, "\r\n\r\n", 0) <= 0 )
            return;
          std::string::find(&this->m_buffer, "\r\n\r\n", 0);
          if ( LCXPlayerSocket::ParseHttpHeader(this, "Content-Length") >= 0 )
          {
            this->m_total_length = LCXPlayerSocket::CalculateTotalLength(this);
            this->m_bLengthKnown = 1;
          }
          LCXPlayerSocket::RemoveHttpHeader(this);
          this->m_bReceiveHttpHeader = 0;
        }
        v12 = this->m_buffer._M_finish - this->m_buffer._M_start_of_storage._M_data;
        (*((void (__fastcall **)(LCXPlayerSocketObserver *, int))this->m_observer->_vptr.LCXPlayerSocketObserver + 3))(
          this->m_observer,
          v12);
        if ( this->m_bLengthKnown )
        {
          m_total_length = this->m_total_length;
          if ( m_total_length == v12 )
          {
            this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_CLOSE_CONNECTION;
            LC_DEBUG_OUT("XSocket::Run(): The amount of recv is: %d\n", m_total_length);
            LC_API_GET_TIME();
            LC_DEBUG_OUT("XSocket::Run(): The time of recv is: %d\n");
          }
        }
      }
      else
      {
        LC_DEBUG_OUT("XSocket::Run(): Close connection \n");
        if ( !this->m_bLengthKnown )
          LCXPlayerSocket::ParseChunkedContent(this);
        (*((void (__fastcall **)(LCXPlayerSocketObserver *, char *, int))this->m_observer->_vptr.LCXPlayerSocketObserver
         + 2))(
          this->m_observer,
          this->m_buffer._M_start_of_storage._M_data,
          this->m_buffer._M_finish - this->m_buffer._M_start_of_storage._M_data);
        std::string::_M_assign(&this->m_buffer, "", "");
        this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_REQUEST_COMPLETE;
      }
      return;
    case LCXPlayerSocket::XSocketState::XSOCKET_STATE_CLOSE_CONNECTION:
      LC_DEBUG_OUT("XSocket::Run(): Close connection \n");
      (*((void (__fastcall **)(LCXPlayerSocket *const))this->_vptr.LCXPlayerSocket + 15))(this);
      (*((void (__fastcall **)(LCXPlayerSocketObserver *, char *, int))this->m_observer->_vptr.LCXPlayerSocketObserver
       + 2))(
        this->m_observer,
        this->m_buffer._M_start_of_storage._M_data,
        this->m_buffer._M_finish - this->m_buffer._M_start_of_storage._M_data);
      std::string::_M_assign(&this->m_buffer, "", "");
      this->m_state = LCXPlayerSocket::XSocketState::XSOCKET_STATE_REQUEST_COMPLETE;
      return;
    default:
      return;
  }
}


// ===== 8a21f4 std::exception::exception(void) =====
std::exception *__fastcall std::exception::exception(std::exception *const this)
{
  this->_vptr.exception = (int (**)(...))&off_994008;
  return this;
}


// ===== 8a220c std::exception::exception(void) =====
std::exception *__fastcall std::exception::exception(std::exception *const this)
{
  this->_vptr.exception = (int (**)(...))&off_994008;
  return this;
}


// ===== 8a2224 std::exception::~exception() =====
void *__fastcall std::exception::~exception(std::exception *const this)
{
  return this;
}


// ===== 8a2228 std::exception::~exception() =====
void *__fastcall std::exception::~exception(std::exception *const this)
{
  return this;
}


// ===== 8a222c std::bad_exception::bad_exception(void) =====
std::bad_exception *__fastcall std::bad_exception::bad_exception(std::bad_exception *const this)
{
  std::exception::exception(this);
  this->_vptr.exception = (int (**)(...))&off_993FF0;
  return this;
}


// ===== 8a224c std::bad_exception::bad_exception(void) =====
std::bad_exception *__fastcall std::bad_exception::bad_exception(std::bad_exception *const this)
{
  std::exception::exception(this);
  this->_vptr.exception = (int (**)(...))&off_993FF0;
  return this;
}


// ===== 8a226c std::bad_exception::~bad_exception() =====
std::bad_exception *__fastcall std::bad_exception::~bad_exception(std::bad_exception *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FF0;
  std::exception::~exception(this);
  return this;
}


// ===== 8a228c std::bad_exception::~bad_exception() =====
std::bad_exception *__fastcall std::bad_exception::~bad_exception(std::bad_exception *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FF0;
  std::exception::~exception(this);
  return this;
}


// ===== 8a22ac std::exception::what(void) =====
const char *__fastcall std::exception::what(const std::exception *const this)
{
  return "class exception";
}


// ===== 8a22b8 std::bad_exception::what(void) =====
const char *__fastcall std::bad_exception::what(const std::bad_exception *const this)
{
  return "class bad_exception";
}


// ===== 8a22c4 std::__Named_exception::what(void) =====
const char *__fastcall std::__Named_exception::what(const std::__Named_exception *const this)
{
  return this->_M_name;
}


// ===== 8a22cc std::exception::~exception() =====
void __fastcall std::exception::~exception(std::exception *const this)
{
  std::exception::~exception(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a22e0 std::bad_exception::~bad_exception() =====
void __fastcall std::bad_exception::~bad_exception(std::bad_exception *const this)
{
  std::bad_exception::~bad_exception(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a22f4 std::__Named_exception::~__Named_exception() =====
std::__Named_exception *__fastcall std::__Named_exception::~__Named_exception(std::__Named_exception *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FD8;
  if ( this->_M_name != this->_M_static_name )
    JUMPOUT(0x8A1EF2);
  std::exception::~exception(this);
  return this;
}


// ===== 8a2328 std::__Named_exception::~__Named_exception() =====
void __fastcall std::__Named_exception::~__Named_exception(std::__Named_exception *const this)
{
  std::__Named_exception::~__Named_exception(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a233c std::__Named_exception::~__Named_exception() =====
std::__Named_exception *__fastcall std::__Named_exception::~__Named_exception(std::__Named_exception *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FD8;
  if ( this->_M_name != this->_M_static_name )
    JUMPOUT(0x8A1EF2);
  std::exception::~exception(this);
  return this;
}


// ===== 8a2370 std::runtime_error::~runtime_error() =====
std::runtime_error *__fastcall std::runtime_error::~runtime_error(std::runtime_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FA8;
  std::__Named_exception::~__Named_exception(this);
  return this;
}


// ===== 8a2390 std::runtime_error::~runtime_error() =====
void __fastcall std::runtime_error::~runtime_error(std::runtime_error *const this)
{
  std::runtime_error::~runtime_error(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a23a4 std::runtime_error::~runtime_error() =====
std::runtime_error *__fastcall std::runtime_error::~runtime_error(std::runtime_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FA8;
  std::__Named_exception::~__Named_exception(this);
  return this;
}


// ===== 8a23c4 std::underflow_error::~underflow_error() =====
std::underflow_error *__fastcall std::underflow_error::~underflow_error(std::underflow_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F00;
  std::runtime_error::~runtime_error(this);
  return this;
}


// ===== 8a23e4 std::underflow_error::~underflow_error() =====
void __fastcall std::underflow_error::~underflow_error(std::underflow_error *const this)
{
  std::underflow_error::~underflow_error(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a23f8 std::underflow_error::~underflow_error() =====
std::underflow_error *__fastcall std::underflow_error::~underflow_error(std::underflow_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F00;
  std::runtime_error::~runtime_error(this);
  return this;
}


// ===== 8a2418 std::overflow_error::~overflow_error() =====
std::overflow_error *__fastcall std::overflow_error::~overflow_error(std::overflow_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F18;
  std::runtime_error::~runtime_error(this);
  return this;
}


// ===== 8a2438 std::overflow_error::~overflow_error() =====
void __fastcall std::overflow_error::~overflow_error(std::overflow_error *const this)
{
  std::overflow_error::~overflow_error(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a244c std::overflow_error::~overflow_error() =====
std::overflow_error *__fastcall std::overflow_error::~overflow_error(std::overflow_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F18;
  std::runtime_error::~runtime_error(this);
  return this;
}


// ===== 8a246c std::range_error::~range_error() =====
std::range_error *__fastcall std::range_error::~range_error(std::range_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F30;
  std::runtime_error::~runtime_error(this);
  return this;
}


// ===== 8a248c std::range_error::~range_error() =====
void __fastcall std::range_error::~range_error(std::range_error *const this)
{
  std::range_error::~range_error(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a24a0 std::range_error::~range_error() =====
std::range_error *__fastcall std::range_error::~range_error(std::range_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F30;
  std::runtime_error::~runtime_error(this);
  return this;
}


// ===== 8a24c0 std::logic_error::~logic_error() =====
std::logic_error *__fastcall std::logic_error::~logic_error(std::logic_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FC0;
  std::__Named_exception::~__Named_exception(this);
  return this;
}


// ===== 8a24e0 std::logic_error::~logic_error() =====
void __fastcall std::logic_error::~logic_error(std::logic_error *const this)
{
  std::logic_error::~logic_error(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a24f4 std::logic_error::~logic_error() =====
std::logic_error *__fastcall std::logic_error::~logic_error(std::logic_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993FC0;
  std::__Named_exception::~__Named_exception(this);
  return this;
}


// ===== 8a2514 std::out_of_range::~out_of_range() =====
std::out_of_range *__fastcall std::out_of_range::~out_of_range(std::out_of_range *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F48;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a2534 std::out_of_range::~out_of_range() =====
void __fastcall std::out_of_range::~out_of_range(std::out_of_range *const this)
{
  std::out_of_range::~out_of_range(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a2548 std::out_of_range::~out_of_range() =====
std::out_of_range *__fastcall std::out_of_range::~out_of_range(std::out_of_range *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F48;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a2568 std::length_error::~length_error() =====
std::length_error *__fastcall std::length_error::~length_error(std::length_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F60;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a2588 std::length_error::~length_error() =====
void __fastcall std::length_error::~length_error(std::length_error *const this)
{
  std::length_error::~length_error(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a259c std::length_error::~length_error() =====
std::length_error *__fastcall std::length_error::~length_error(std::length_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F60;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a25bc std::invalid_argument::~invalid_argument() =====
std::invalid_argument *__fastcall std::invalid_argument::~invalid_argument(std::invalid_argument *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F78;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a25dc std::invalid_argument::~invalid_argument() =====
void __fastcall std::invalid_argument::~invalid_argument(std::invalid_argument *const this)
{
  std::invalid_argument::~invalid_argument(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a25f0 std::invalid_argument::~invalid_argument() =====
std::invalid_argument *__fastcall std::invalid_argument::~invalid_argument(std::invalid_argument *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F78;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a2610 std::domain_error::~domain_error() =====
std::domain_error *__fastcall std::domain_error::~domain_error(std::domain_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F90;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a2630 std::domain_error::~domain_error() =====
void __fastcall std::domain_error::~domain_error(std::domain_error *const this)
{
  std::domain_error::~domain_error(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a2644 std::domain_error::~domain_error() =====
std::domain_error *__fastcall std::domain_error::~domain_error(std::domain_error *const this)
{
  this->_vptr.exception = (int (**)(...))&off_993F90;
  std::logic_error::~logic_error(this);
  return this;
}


// ===== 8a2664 std::__Named_exception::operator=(std::__Named_exception const&) =====
std::__Named_exception *__fastcall std::__Named_exception::operator=(
        std::__Named_exception *const this,
        const std::__Named_exception *const __x)
{
  return (std::__Named_exception *)std::ctype<char>::do_tolower((const std::ctype<char> *const)__x->_M_name, (char)__x);
}


// ===== 8a26e4 std::__Named_exception::__Named_exception(std::__Named_exception const&) =====
void __fastcall std::__Named_exception::__Named_exception(
        std::__Named_exception *const this,
        const std::__Named_exception *const __x)
{
  std::exception::exception(this);
  this->_vptr.exception = (int (**)(...))&off_993FD8;
  JUMPOUT(0x8A2E56);
}


// ===== 8a275c std::__Named_exception::__Named_exception(std::__Named_exception const&) =====
void __fastcall std::__Named_exception::__Named_exception(
        std::__Named_exception *const this,
        const std::__Named_exception *const __x)
{
  std::exception::exception(this);
  this->_vptr.exception = (int (**)(...))&off_993FD8;
  JUMPOUT(0x8A2E56);
}


// ===== 8a27d4 std::__Named_exception::__Named_exception(std::string const&) =====
void __fastcall std::__Named_exception::__Named_exception(
        std::__Named_exception *const this,
        const std::string *const __str)
{
  std::exception::exception(this);
  this->_vptr.exception = (int (**)(...))&off_993FD8;
  JUMPOUT(0x8A2E56);
}


// ===== 8a2848 std::__Named_exception::__Named_exception(std::string const&) =====
void __fastcall std::__Named_exception::__Named_exception(
        std::__Named_exception *const this,
        const std::string *const __str)
{
  std::exception::exception(this);
  this->_vptr.exception = (int (**)(...))&off_993FD8;
  JUMPOUT(0x8A2E56);
}


// ===== 8a28bc std::__stl_throw_overflow_error(char const*) =====
void __fastcall std::__stl_throw_overflow_error(const char *__msg)
{
  JUMPOUT(0x8A20C8);
}


// ===== 8a28c8 std::__stl_throw_invalid_argument(char const*) =====
void __fastcall std::__stl_throw_invalid_argument(const char *__msg)
{
  JUMPOUT(0x8A30C8);
}


// ===== 8a28d4 std::__stl_throw_length_error(char const*) =====
void __fastcall std::__stl_throw_length_error(const char *__msg)
{
  JUMPOUT(0x8A30C8);
}


// ===== 8a28e0 std::__stl_throw_out_of_range(char const*) =====
void __fastcall std::__stl_throw_out_of_range(const char *__msg)
{
  JUMPOUT(0x8A30C8);
}


// ===== 8a28ec std::__stl_throw_range_error(char const*) =====
void __fastcall std::__stl_throw_range_error(const char *__msg)
{
  JUMPOUT(0x8A30C8);
}


// ===== 8a28f8 std::__stl_throw_runtime_error(char const*) =====
void __fastcall std::__stl_throw_runtime_error(const char *__msg)
{
  JUMPOUT(0x8A30C8);
}


// ===== 8a2904 std::ios_base::_M_invoke_callbacks(std::ios_base::event) =====
void __fastcall std::ios_base::_M_invoke_callbacks(std::ios_base *const this, std::ios_base::event E)
{
  size_t M_callback_index; // r5
  size_t v5; // r5
  size_t v6; // r4

  M_callback_index = this->_M_callback_index;
  if ( M_callback_index )
  {
    v5 = M_callback_index - 1;
    v6 = v5;
    while ( 1 )
    {
      this->_M_callbacks[v6].first(E, this, this->_M_callbacks[v6].second);
      --v6;
      if ( !v5 )
        break;
      --v5;
    }
  }
}


// ===== 8a2930 std::ios_base::~ios_base() =====
void __fastcall std::ios_base::~ios_base(std::ios_base *const this)
{
  this->_vptr.ios_base = (int (**)(...))&off_994020;
  std::ios_base::_M_invoke_callbacks(this, std::ios_base::event::erase_event);
  JUMPOUT(0x8A2EF2);
}


// ===== 8a296c std::ios_base::~ios_base() =====
void __fastcall std::ios_base::~ios_base(std::ios_base *const this)
{
  std::ios_base::~ios_base(this);
  JUMPOUT(0x8A22B4);
}


// ===== 8a2980 std::ios_base::~ios_base() =====
void __fastcall std::ios_base::~ios_base(std::ios_base *const this)
{
  this->_vptr.ios_base = (int (**)(...))&off_994020;
  std::ios_base::_M_invoke_callbacks(this, std::ios_base::event::erase_event);
  JUMPOUT(0x8A2EF2);
}


// ===== 8a29bc std::ios_base::ios_base(void) =====
std::ios_base *__fastcall std::ios_base::ios_base(std::ios_base *const this)
{
  this->_M_fmtflags = 0;
  this->_M_iostate = 0;
  this->_M_openmode = 0;
  this->_M_seekdir = 0;
  this->_M_exception_mask = 0;
  this->_M_precision = 0;
  this->_M_width = 0;
  this->_vptr.ios_base = (int (**)(...))&off_994020;
  std::locale::locale(&this->_M_locale);
  this->_M_callbacks = nullptr;
  this->_M_num_callbacks = 0;
  this->_M_callback_index = 0;
  this->_M_iwords = nullptr;
  this->_M_num_iwords = 0;
  this->_M_pwords = nullptr;
  this->_M_num_pwords = 0;
  return this;
}


// ===== 8a29fc std::ios_base::ios_base(void) =====
std::ios_base *__fastcall std::ios_base::ios_base(std::ios_base *const this)
{
  this->_M_fmtflags = 0;
  this->_M_iostate = 0;
  this->_M_openmode = 0;
  this->_M_seekdir = 0;
  this->_M_exception_mask = 0;
  this->_M_precision = 0;
  this->_M_width = 0;
  this->_vptr.ios_base = (int (**)(...))&off_994020;
  std::locale::locale(&this->_M_locale);
  this->_M_callbacks = nullptr;
  this->_M_num_callbacks = 0;
  this->_M_callback_index = 0;
  this->_M_iwords = nullptr;
  this->_M_num_iwords = 0;
  this->_M_pwords = nullptr;
  this->_M_num_pwords = 0;
  return this;
}


// ===== 8a2a3c std::ios_base::xalloc(void) =====
void std::ios_base::xalloc()
{
  JUMPOUT(0x8A25B2);
}


// ===== 8a2a5c std::ios_base::imbue(std::locale const&) =====
std::locale __fastcall std::ios_base::imbue(std::ios_base *const this, std::ios_base *loc, const std::locale *a3)
{
  std::locale *p_M_locale; // r4
  std::locale previous; // [sp+4h] [bp-4h] BYREF

  p_M_locale = &loc->_M_locale;
  if ( std::locale::operator!=(a3, &loc->_M_locale) )
  {
    std::locale::locale(&previous, p_M_locale);
    std::locale::operator=(p_M_locale, a3);
    std::ios_base::_M_invoke_callbacks(loc, std::ios_base::event::imbue_event);
    std::locale::locale((std::locale *const)this, &previous);
    std::locale::~locale(&previous);
  }
  else
  {
    std::ios_base::_M_invoke_callbacks(loc, std::ios_base::event::imbue_event);
    std::locale::locale((std::locale *const)this, p_M_locale);
  }
  return (std::locale)this;
}


// ===== 8a2ac0 std::ios_base::failure::~failure() =====
std::ios_base::failure *__fastcall std::ios_base::failure::~failure(std::ios_base::failure *const this)
{
  this->_vptr.exception = (int (**)(...))&off_994030;
  std::__Named_exception::~__Named_exception(this);
  return this;
}


// ===== 8a2ae0 std::ios_base::failure::~failure() =====
void __fastcall std::ios_base::failure::~failure(std::ios_base::failure *const this)
{
  std::ios_base::failure::~failure(this);
  JUMPOUT(0x8A32B4);
}


// ===== 8a2af4 std::ios_base::failure::~failure() =====
std::ios_base::failure *__fastcall std::ios_base::failure::~failure(std::ios_base::failure *const this)
{
  this->_vptr.exception = (int (**)(...))&off_994030;
  std::__Named_exception::~__Named_exception(this);
  return this;
}


// ===== 8a2b14 std::ios_base::failure::failure(std::string const&) =====
std::ios_base::failure *__fastcall std::ios_base::failure::failure(
        std::ios_base::failure *const this,
        const std::string *const s)
{
  std::__Named_exception::__Named_exception(this, s);
  this->_vptr.exception = (int (**)(...))&off_994030;
  return this;
}


// ===== 8a2b34 std::ios_base::failure::failure(std::string const&) =====
std::ios_base::failure *__fastcall std::ios_base::failure::failure(
        std::ios_base::failure *const this,
        const std::string *const s)
{
  std::__Named_exception::__Named_exception(this, s);
  this->_vptr.exception = (int (**)(...))&off_994030;
  return this;
}


// ===== 8a2b54 std::ios_base::_M_throw_failure(void) =====
void __fastcall std::ios_base::_M_throw_failure(std::ios_base *const this)
{
  std::length_error::~length_error((std::length_error *const)"ios failure");
}


// ===== 8a2b7c std::ios_base::register_callback(void (*)(std::ios_base::event,std::ios_base&,int),int) =====
void __fastcall std::ios_base::register_callback(
        std::ios_base *const this,
        void (*__fn)(std::ios_base::event, std::ios_base *, int),
        int index)
{
  signed int M_num_callbacks; // r5
  signed int M_callback_index; // r3
  std::pair<void (*)(std::ios_base::event,std::ios_base&,int),int> *M_callbacks; // r0
  std::pair<void (*)(std::ios_base::event,std::ios_base&,int),int> *v7; // r0
  int v8; // r3
  int M_exception_mask; // r2

  M_num_callbacks = this->_M_num_callbacks;
  M_callback_index = this->_M_callback_index;
  M_callbacks = this->_M_callbacks;
  if ( M_callback_index >= M_num_callbacks )
    goto LABEL_6;
  if ( M_callbacks )
  {
    this->_M_callbacks = M_callbacks;
    v7 = &M_callbacks[M_callback_index];
    this->_M_num_callbacks = M_num_callbacks;
    v7->second = index;
    v7->first = __fn;
    this->_M_callback_index = M_callback_index + 1;
    return;
  }
  v8 = this->_M_iostate | 1;
  M_exception_mask = this->_M_exception_mask;
  this->_M_iostate = v8;
  if ( (v8 & M_exception_mask) != 0 )
LABEL_6:
    std::ios_base::_M_throw_failure(this);
}


// ===== 8a2c10 std::ios_base::pword(int) =====
void **__fastcall std::ios_base::pword(std::ios_base *const this, int index)
{
  int M_num_pwords; // r6
  void **M_pwords; // r0
  int v6; // r3
  int M_exception_mask; // r2

  M_num_pwords = this->_M_num_pwords;
  M_pwords = this->_M_pwords;
  if ( index >= M_num_pwords )
  {
    if ( index + 1 >= (unsigned int)(2 * M_num_pwords) )
      JUMPOUT(0x8A2C06);
    JUMPOUT(0x8A2C08);
  }
  if ( M_pwords )
  {
    this->_M_pwords = M_pwords;
    this->_M_num_pwords = M_num_pwords;
    return &M_pwords[index];
  }
  else
  {
    v6 = this->_M_iostate | 1;
    M_exception_mask = this->_M_exception_mask;
    this->_M_iostate = v6;
    if ( (v6 & M_exception_mask) != 0 )
      std::ios_base::_M_throw_failure(this);
    return &std::ios_base::pword(int)::dummy;
  }
}


// ===== 8a2ca4 std::ios_base::iword(int) =====
int *__fastcall std::ios_base::iword(std::ios_base *const this, int index)
{
  int M_num_iwords; // r6
  int *M_iwords; // r0
  int v6; // r3
  int M_exception_mask; // r2

  M_num_iwords = this->_M_num_iwords;
  M_iwords = this->_M_iwords;
  if ( index >= M_num_iwords )
  {
    if ( index + 1 >= (unsigned int)(2 * M_num_iwords) )
      JUMPOUT(0x8A2C06);
    JUMPOUT(0x8A2C08);
  }
  if ( M_iwords )
  {
    this->_M_iwords = M_iwords;
    this->_M_num_iwords = M_num_iwords;
    return &M_iwords[index];
  }
  else
  {
    v6 = this->_M_iostate | 1;
    M_exception_mask = this->_M_exception_mask;
    this->_M_iostate = v6;
    if ( (v6 & M_exception_mask) != 0 )
      std::ios_base::_M_throw_failure(this);
    return &std::ios_base::iword(int)::dummy;
  }
}


// ===== 8a2d38 std::ios_base::_M_copy_state(std::ios_base const&) =====
void __fastcall std::ios_base::_M_copy_state(std::ios_base *const this, const std::ios_base *const x)
{
  this->_M_fmtflags = x->_M_fmtflags;
  this->_M_openmode = x->_M_openmode;
  this->_M_seekdir = x->_M_seekdir;
  this->_M_precision = x->_M_precision;
  this->_M_width = x->_M_width;
  std::locale::operator=(&this->_M_locale, &x->_M_locale);
  if ( x->_M_callbacks )
    JUMPOUT(0x8A26F6);
  if ( x->_M_iwords || x->_M_pwords )
    JUMPOUT(0x8A26F8);
}


// ===== 8a2e40 std::ctype<char>::classic_table(void) =====
const std::ctype_base::mask *std::ctype<char>::classic_table()
{
  return std::ctype<char>::classic_table(void)::_S_classic_table;
}


// ===== 8a2e4c std::ctype<char>::do_toupper(char) =====
char __fastcall std::ctype<char>::do_toupper(const std::ctype<char> *const this, char __c)
{
  return std::_S_upper[__c];
}


// ===== 8a2e58 std::ctype<char>::do_tolower(char) =====
char __fastcall std::ctype<char>::do_tolower(const std::ctype<char> *const this, char __c)
{
  return std::_S_lower[__c];
}


// ===== 8a2e64 std::ctype<char>::do_toupper(char *,char const*) =====
const char *__fastcall std::ctype<char>::do_toupper(
        const std::ctype<char> *const this,
        char *__low,
        const char *__high)
{
  if ( __low < __high )
  {
    do
    {
      *__low = std::_S_upper[(unsigned __int8)*__low];
      ++__low;
    }
    while ( __low != __high );
  }
  return __high;
}


// ===== 8a2e80 std::ctype<char>::do_tolower(char *,char const*) =====
const char *__fastcall std::ctype<char>::do_tolower(
        const std::ctype<char> *const this,
        char *__low,
        const char *__high)
{
  if ( __low < __high )
  {
    do
    {
      *__low = std::_S_lower[(unsigned __int8)*__low];
      ++__low;
    }
    while ( __low != __high );
  }
  return __high;
}


// ===== 8a2e9c std::ctype<char>::do_widen(char) =====
char __fastcall std::ctype<char>::do_widen(const std::ctype<char> *const this, char __c)
{
  return __c;
}


// ===== 8a2ea0 std::ctype<char>::do_narrow(char,char) =====
char __fastcall std::ctype<char>::do_narrow(const std::ctype<char> *const this, char __c, char a3)
{
  return __c;
}


// ===== 8a2ea4 std::ctype<wchar_t>::do_is(std::ctype_base::mask,wchar_t) =====
bool __fastcall std::ctype<wchar_t>::do_is(const std::ctype<wchar_t> *const this, std::ctype_base::mask m, wchar_t c)
{
  const std::ctype_base::mask *v5; // r3
  _BOOL4 result; // r0

  v5 = std::ctype<char>::classic_table();
  result = 0;
  if ( c <= 0xFF )
    return (m & v5[c]) != 0;
  return result;
}


// ===== 8a2ec4 std::ctype<wchar_t>::do_is(wchar_t const*,wchar_t const*,std::ctype_base::mask *) =====
const wchar_t *__fastcall std::ctype<wchar_t>::do_is(
        const std::ctype<wchar_t> *const this,
        const wchar_t *low,
        const wchar_t *high,
        std::ctype_base::mask *vec)
{
  const std::ctype_base::mask *v7; // r0
  std::ctype_base::mask v8; // r3

  v7 = std::ctype<char>::classic_table();
  if ( low < high )
  {
    while ( 1 )
    {
      v8 = 0;
      if ( *low <= 0xFF )
        v8 = v7[*low];
      ++low;
      *vec = v8;
      if ( high <= low )
        break;
      ++vec;
    }
  }
  return high;
}


// ===== 8a2ef0 std::ctype<wchar_t>::do_toupper(wchar_t) =====
wchar_t __fastcall std::ctype<wchar_t>::do_toupper(const std::ctype<wchar_t> *const this, wchar_t c)
{
  if ( c <= 0xFF )
    return std::_S_upper[c];
  return c;
}


// ===== 8a2f04 std::ctype<wchar_t>::do_toupper(wchar_t *,wchar_t const*) =====
const wchar_t *__fastcall std::ctype<wchar_t>::do_toupper(
        const std::ctype<wchar_t> *const this,
        wchar_t *low,
        const wchar_t *high)
{
  wchar_t v3; // r3

  for ( ; high > low; ++low )
  {
    v3 = *low;
    if ( *low <= 0xFF )
      v3 = std::_S_upper[v3];
    *low = v3;
  }
  return high;
}


// ===== 8a2f24 std::ctype<wchar_t>::do_tolower(wchar_t) =====
wchar_t __fastcall std::ctype<wchar_t>::do_tolower(const std::ctype<wchar_t> *const this, wchar_t c)
{
  if ( c <= 0xFF )
    return std::_S_lower[c];
  return c;
}


// ===== 8a2f38 std::ctype<wchar_t>::do_tolower(wchar_t *,wchar_t const*) =====
const wchar_t *__fastcall std::ctype<wchar_t>::do_tolower(
        const std::ctype<wchar_t> *const this,
        wchar_t *low,
        const wchar_t *high)
{
  wchar_t v3; // r3

  for ( ; high > low; ++low )
  {
    v3 = *low;
    if ( *low <= 0xFF )
      v3 = std::_S_lower[v3];
    *low = v3;
  }
  return high;
}


// ===== 8a2f58 std::ctype<wchar_t>::do_widen(char) =====
wchar_t __fastcall std::ctype<wchar_t>::do_widen(const std::ctype<wchar_t> *const this, char c)
{
  return c;
}


// ===== 8a2f5c std::ctype<wchar_t>::do_widen(char const*,char const*,wchar_t *) =====
const char *__fastcall std::ctype<wchar_t>::do_widen(
        const std::ctype<wchar_t> *const this,
        const char *low,
        const char *high,
        wchar_t *dest)
{
  const char *v4; // r4
  const char *result; // r0
  wchar_t v6; // r1

  v4 = low;
  result = low;
  if ( low != high )
  {
    do
    {
      v6 = *(unsigned __int8 *)v4++;
      *dest++ = v6;
    }
    while ( v4 != high );
    return v4;
  }
  return result;
}


// ===== 8a2f74 std::ctype<wchar_t>::do_narrow(wchar_t,char) =====
char __fastcall std::ctype<wchar_t>::do_narrow(const std::ctype<wchar_t> *const this, wchar_t c, char dfault)
{
  char result; // r0

  result = c;
  if ( (unsigned __int8)c != c )
    return dfault;
  return result;
}


// ===== 8a2f80 std::ctype<wchar_t>::do_narrow(wchar_t const*,wchar_t const*,char,char *) =====
const wchar_t *__fastcall std::ctype<wchar_t>::do_narrow(
        const std::ctype<wchar_t> *const this,
        const wchar_t *low,
        const wchar_t *high,
        char dfault,
        char *dest)
{
  const wchar_t *v6; // r4
  const wchar_t *result; // r0
  wchar_t v8; // r5
  char v9; // r0

  v6 = low;
  result = low;
  if ( low != high )
  {
    while ( 1 )
    {
      v8 = *v6++;
      v9 = v8;
      if ( (unsigned __int8)v8 != v8 )
        v9 = dfault;
      *dest = v9;
      if ( high == v6 )
        break;
      ++dest;
    }
    return &low[((unsigned int)((char *)high - (char *)(low + 1)) >> 2) + 1];
  }
  return result;
}


// ===== 8a2fb0 std::priv::__find_if<char const*,std::_Ctype_is_mask>(char const*,char const*,std::_Ctype_is_mask,std::random_access_iterator_tag const&) =====
const char *__fastcall std::priv::__find_if<char const*,std::_Ctype_is_mask>(
        const char *__first,
        const char *__last,
        std::_Ctype_is_mask __pred,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r5
  int v6; // r4
  int v7; // r3
  int v8; // r4
  int v9; // r3

  v4 = __last - __first;
  v5 = (__last - __first) >> 2;
  if ( v5 <= 0 )
  {
LABEL_14:
    switch ( v4 )
    {
      case 2:
        v8 = *(_DWORD *)(__pred._Mask + 4);
        v9 = *(_DWORD *)__pred._Mask;
        break;
      case 3:
        v8 = *(_DWORD *)(__pred._Mask + 4);
        v9 = *(_DWORD *)__pred._Mask;
        if ( (*(_DWORD *)__pred._Mask & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v8)) != 0 )
          return __first;
        ++__first;
        break;
      case 1:
        v8 = *(_DWORD *)(__pred._Mask + 4);
        v9 = *(_DWORD *)__pred._Mask;
LABEL_21:
        if ( (v9 & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v8)) == 0 )
          return __last;
        return __first;
      default:
        return __last;
    }
    if ( (v9 & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v8)) != 0 )
      return __first;
    ++__first;
    goto LABEL_21;
  }
  v6 = *(_DWORD *)(__pred._Mask + 4);
  v7 = *(_DWORD *)__pred._Mask;
  if ( (*(_DWORD *)__pred._Mask & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v6)) == 0
    && (v7 & *(_DWORD *)(4 * *(unsigned __int8 *)++__first + v6)) == 0
    && (v7 & *(_DWORD *)(4 * *(unsigned __int8 *)++__first + v6)) == 0 )
  {
    while ( 1 )
    {
      if ( (v7 & *(_DWORD *)(4 * *((unsigned __int8 *)__first + 1) + v6)) != 0 )
        return ++__first;
      if ( !--v5 )
      {
        __first += 2;
        v4 = __last - __first;
        goto LABEL_14;
      }
      if ( (v7 & *(_DWORD *)(4 * *((unsigned __int8 *)__first + 2) + v6)) != 0 )
      {
        __first += 2;
        return __first;
      }
      if ( (v7 & *(_DWORD *)(4 * *((unsigned __int8 *)__first + 3) + v6)) != 0 )
        break;
      __first += 4;
      if ( (v7 & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v6)) != 0 )
        return __first;
    }
    __first += 3;
  }
  return __first;
}


// ===== 8a3068 std::ctype<char>::scan_is(std::ctype_base::mask,char const*,char const*) =====
const char *__fastcall std::ctype<char>::scan_is(
        const std::ctype<char> *const this,
        std::ctype_base::mask __m,
        const char *__low,
        const char *__high)
{
  std::_Ctype_is_mask v5; // r2
  const std::random_access_iterator_tag *v8; // [sp+0h] [bp-10h]
  _DWORD v9[2]; // [sp+4h] [bp-Ch] BYREF
  char v10; // [sp+Ch] [bp-4h] BYREF

  v5._Mask = (std::ctype_base::mask)v9;
  v9[1] = this->_M_ctype_table;
  v9[0] = __m;
  v5._M_table = (const std::ctype_base::mask *)&v10;
  return std::priv::__find_if<char const*,std::_Ctype_is_mask>(__low, __high, v5, v8);
}


// ===== 8a3084 std::priv::__find_if<char const*,std::_Ctype_not_mask>(char const*,char const*,std::_Ctype_not_mask,std::random_access_iterator_tag const&) =====
const char *__fastcall std::priv::__find_if<char const*,std::_Ctype_not_mask>(
        const char *__first,
        const char *__last,
        std::_Ctype_not_mask __pred,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r5
  int v6; // r4
  int v7; // r3
  int v8; // r3
  int v9; // r4

  v4 = __last - __first;
  v5 = (__last - __first) >> 2;
  if ( v5 <= 0 )
  {
LABEL_14:
    switch ( v4 )
    {
      case 2:
        v8 = *(_DWORD *)__pred._Mask;
        v9 = *(_DWORD *)(__pred._Mask + 4);
        break;
      case 3:
        v9 = *(_DWORD *)(__pred._Mask + 4);
        v8 = *(_DWORD *)__pred._Mask;
        if ( (*(_DWORD *)__pred._Mask & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v9)) == 0 )
          return __first;
        ++__first;
        break;
      case 1:
        v8 = *(_DWORD *)__pred._Mask;
        v9 = *(_DWORD *)(__pred._Mask + 4);
LABEL_21:
        if ( (v8 & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v9)) != 0 )
          return __last;
        return __first;
      default:
        return __last;
    }
    if ( (v8 & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v9)) == 0 )
      return __first;
    ++__first;
    goto LABEL_21;
  }
  v6 = *(_DWORD *)(__pred._Mask + 4);
  v7 = *(_DWORD *)__pred._Mask;
  if ( (*(_DWORD *)__pred._Mask & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v6)) != 0
    && (v7 & *(_DWORD *)(4 * *(unsigned __int8 *)++__first + v6)) != 0
    && (v7 & *(_DWORD *)(4 * *(unsigned __int8 *)++__first + v6)) != 0 )
  {
    while ( 1 )
    {
      if ( (v7 & *(_DWORD *)(4 * *((unsigned __int8 *)__first + 1) + v6)) == 0 )
        return ++__first;
      if ( !--v5 )
      {
        __first += 2;
        v4 = __last - __first;
        goto LABEL_14;
      }
      if ( (v7 & *(_DWORD *)(4 * *((unsigned __int8 *)__first + 2) + v6)) == 0 )
      {
        __first += 2;
        return __first;
      }
      if ( (v7 & *(_DWORD *)(4 * *((unsigned __int8 *)__first + 3) + v6)) == 0 )
        break;
      __first += 4;
      if ( (v7 & *(_DWORD *)(4 * *(unsigned __int8 *)__first + v6)) == 0 )
        return __first;
    }
    __first += 3;
  }
  return __first;
}


// ===== 8a313c std::ctype<char>::scan_not(std::ctype_base::mask,char const*,char const*) =====
const char *__fastcall std::ctype<char>::scan_not(
        const std::ctype<char> *const this,
        std::ctype_base::mask __m,
        const char *__low,
        const char *__high)
{
  std::_Ctype_not_mask v5; // r2
  const std::random_access_iterator_tag *v8; // [sp+0h] [bp-10h]
  _DWORD v9[2]; // [sp+4h] [bp-Ch] BYREF
  char v10; // [sp+Ch] [bp-4h] BYREF

  v5._Mask = (std::ctype_base::mask)v9;
  v9[1] = this->_M_ctype_table;
  v9[0] = __m;
  v5._M_table = (const std::ctype_base::mask *)&v10;
  return std::priv::__find_if<char const*,std::_Ctype_not_mask>(__low, __high, v5, v8);
}


// ===== 8a3158 std::priv::__find_if<wchar_t const*,std::_Ctype_w_is_mask>(wchar_t const*,wchar_t const*,std::_Ctype_w_is_mask,std::random_access_iterator_tag const&) =====
const wchar_t *__fastcall std::priv::__find_if<wchar_t const*,std::_Ctype_w_is_mask>(
        const wchar_t *__first,
        const wchar_t *__last,
        std::_Ctype_w_is_mask __pred,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r4

  v4 = __last - __first;
  v5 = ((char *)__last - (char *)__first) >> 4;
  if ( v5 <= 0 )
  {
LABEL_16:
    if ( v4 != 2 )
    {
      if ( v4 != 3 )
      {
        if ( v4 != 1 )
          return __last;
        goto LABEL_24;
      }
      if ( *__first <= 0xFF && (*(_DWORD *)(4 * *__first + *(_DWORD *)(__pred.M + 4)) & *(_DWORD *)__pred.M) != 0 )
        return __first;
      ++__first;
    }
    if ( *__first <= 0xFF && (*(_DWORD *)(4 * *__first + *(_DWORD *)(__pred.M + 4)) & *(_DWORD *)__pred.M) != 0 )
      return __first;
    ++__first;
LABEL_24:
    if ( *__first <= 0xFF && (*(_DWORD *)(4 * *__first + *(_DWORD *)(__pred.M + 4)) & *(_DWORD *)__pred.M) != 0 )
      return __first;
    return __last;
  }
  while ( *__first > 0xFF || (*(_DWORD *)(4 * *__first + *(_DWORD *)(__pred.M + 4)) & *(_DWORD *)__pred.M) == 0 )
  {
    __pred.table = (const std::ctype_base::mask *)__first[1];
    if ( __pred.table <= (const std::ctype_base::mask *)((char *)&elf_hash_bucket[8] + 3)
      && (*(_DWORD *)(4 * (int)__pred.table + *(_DWORD *)(__pred.M + 4)) & *(_DWORD *)__pred.M) != 0 )
    {
      return ++__first;
    }
    __pred.table = (const std::ctype_base::mask *)__first[2];
    if ( __pred.table <= (const std::ctype_base::mask *)((char *)&elf_hash_bucket[8] + 3)
      && (*(_DWORD *)(4 * (int)__pred.table + *(_DWORD *)(__pred.M + 4)) & *(_DWORD *)__pred.M) != 0 )
    {
      __first += 2;
      return __first;
    }
    __pred.table = (const std::ctype_base::mask *)__first[3];
    if ( __pred.table <= (const std::ctype_base::mask *)((char *)&elf_hash_bucket[8] + 3)
      && (*(_DWORD *)(4 * (int)__pred.table + *(_DWORD *)(__pred.M + 4)) & *(_DWORD *)__pred.M) != 0 )
    {
      __first += 3;
      return __first;
    }
    --v5;
    __first += 4;
    if ( !v5 )
    {
      v4 = __last - __first;
      goto LABEL_16;
    }
  }
  return __first;
}


// ===== 8a3218 std::ctype<wchar_t>::do_scan_is(std::ctype_base::mask,wchar_t const*,wchar_t const*) =====
const wchar_t *__fastcall std::ctype<wchar_t>::do_scan_is(
        const std::ctype<wchar_t> *const this,
        std::ctype_base::mask m,
        const wchar_t *low,
        const wchar_t *high)
{
  const std::ctype_base::mask *v7; // r0
  std::_Ctype_w_is_mask v8; // r2
  const std::random_access_iterator_tag *v10; // [sp+0h] [bp-10h]
  _DWORD v11[2]; // [sp+4h] [bp-Ch] BYREF
  char v12; // [sp+Ch] [bp-4h] BYREF

  v7 = std::ctype<char>::classic_table();
  v8.M = (std::ctype_base::mask)v11;
  v11[1] = v7;
  v8.table = (const std::ctype_base::mask *)&v12;
  v11[0] = m;
  return std::priv::__find_if<wchar_t const*,std::_Ctype_w_is_mask>(low, high, v8, v10);
}


// ===== 8a323c std::priv::__find_if<wchar_t const*,std::unary_negate<std::_Ctype_w_is_mask>>(wchar_t const*,wchar_t const*,std::unary_negate<std::_Ctype_w_is_mask>,std::random_access_iterator_tag const&) =====
const wchar_t *__fastcall std::priv::__find_if<wchar_t const*,std::unary_negate<std::_Ctype_w_is_mask>>(
        const wchar_t *__first,
        const wchar_t *__last,
        std::unary_negate<std::_Ctype_w_is_mask> __pred,
        const std::random_access_iterator_tag *const a4)
{
  int v4; // r3
  int v5; // r6
  int v6; // r5
  int v7; // r4
  int v8; // r3
  wchar_t v9; // r3
  wchar_t v10; // r3
  wchar_t v11; // r3

  v4 = __last - __first;
  v5 = ((char *)__last - (char *)__first) >> 4;
  if ( v5 <= 0 )
  {
LABEL_21:
    if ( v4 != 2 )
    {
      if ( v4 != 3 )
      {
        if ( v4 != 1 )
          return __last;
        goto LABEL_31;
      }
      if ( *__first > 0xFF
        || (*(_DWORD *)(4 * *__first + *(_DWORD *)(*(_DWORD *)__pred.gap0 + 8)) & *(_DWORD *)(*(_DWORD *)__pred.gap0 + 4)) == 0 )
      {
        return __first;
      }
      ++__first;
    }
    if ( *__first > 0xFF
      || (*(_DWORD *)(4 * *__first + *(_DWORD *)(*(_DWORD *)__pred.gap0 + 8)) & *(_DWORD *)(*(_DWORD *)__pred.gap0 + 4)) == 0 )
    {
      return __first;
    }
    ++__first;
LABEL_31:
    if ( *__first > 0xFF
      || (*(_DWORD *)(4 * *__first + *(_DWORD *)(*(_DWORD *)__pred.gap0 + 8)) & *(_DWORD *)(*(_DWORD *)__pred.gap0 + 4)) == 0 )
    {
      return __first;
    }
    return __last;
  }
  if ( *__first <= 0xFF )
  {
    v6 = *(_DWORD *)(*(_DWORD *)__pred.gap0 + 8);
    v7 = *(_DWORD *)(*(_DWORD *)__pred.gap0 + 4);
    if ( (v7 & *(_DWORD *)(4 * *__first + v6)) != 0 && *++__first <= 0xFF && (v7 & *(_DWORD *)(4 * *__first + v6)) != 0 )
    {
      v8 = *++__first;
      if ( *__first <= 0xFF )
      {
        while ( (v7 & *(_DWORD *)(4 * v8 + v6)) != 0 )
        {
          v9 = __first[1];
          if ( v9 > 0xFF || (v7 & *(_DWORD *)(4 * v9 + v6)) == 0 )
            return ++__first;
          if ( !--v5 )
          {
            __first += 2;
            v4 = __last - __first;
            goto LABEL_21;
          }
          v10 = __first[2];
          if ( v10 > 0xFF || (v7 & *(_DWORD *)(4 * v10 + v6)) == 0 )
          {
            __first += 2;
            return __first;
          }
          v11 = __first[3];
          if ( v11 > 0xFF || (v7 & *(_DWORD *)(4 * v11 + v6)) == 0 )
          {
            __first += 3;
            return __first;
          }
          __first += 4;
          v8 = *__first;
          if ( *__first > 0xFF )
            return __first;
        }
      }
    }
  }
  return __first;
}


// ===== 8a3314 std::ctype<wchar_t>::do_scan_not(std::ctype_base::mask,wchar_t const*,wchar_t const*) =====
const wchar_t *__fastcall std::ctype<wchar_t>::do_scan_not(
        const std::ctype<wchar_t> *const this,
        const std::random_access_iterator_tag *m,
        const wchar_t *low,
        const wchar_t *high)
{
  const std::ctype_base::mask *v7; // r0
  const std::ctype_base::mask *v9; // [sp+8h] [bp-8h]
  char v10; // [sp+Ch] [bp-4h] BYREF
  std::unary_negate<std::_Ctype_w_is_mask> v11; // 0:r2.8,8:^0.4 BYREF

  v7 = std::ctype<char>::classic_table();
  *(_DWORD *)v11.gap0 = &v11._M_pred.table;
  v9 = v7;
  v11._M_pred.M = (std::ctype_base::mask)&v10;
  return std::priv::__find_if<wchar_t const*,std::unary_negate<std::_Ctype_w_is_mask>>(low, high, v11, m);
}


// ===== 8a3338 std::ctype<wchar_t>::~ctype() =====
std::ctype<wchar_t> *__fastcall std::ctype<wchar_t>::~ctype(std::ctype<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994048;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a3358 std::ctype<wchar_t>::~ctype() =====
void __fastcall std::ctype<wchar_t>::~ctype(std::ctype<wchar_t> *const this)
{
  std::ctype<wchar_t>::~ctype(this);
  JUMPOUT(0x8A32B4);
}


// ===== 8a336c std::ctype<wchar_t>::~ctype() =====
std::ctype<wchar_t> *__fastcall std::ctype<wchar_t>::~ctype(std::ctype<wchar_t> *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994048;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a338c std::ctype<char>::do_narrow(char const*,char const*,char,char *) =====
const char *__fastcall std::ctype<char>::do_narrow(
        const std::ctype<char> *const this,
        const char *__low,
        const char *__high,
        char a4,
        char *__to)
{
  if ( __high != __low )
    JUMPOUT(0x8A2F3A);
  return __high;
}


// ===== 8a33a0 std::ctype<char>::do_widen(char const*,char const*,char *) =====
const char *__fastcall std::ctype<char>::do_widen(
        const std::ctype<char> *const this,
        const char *__low,
        const char *__high,
        char *__to)
{
  if ( __high != __low )
    JUMPOUT(0x8A2F3A);
  return __high;
}


// ===== 8a33b4 std::ctype<char>::~ctype() =====
std::ctype<char> *__fastcall std::ctype<char>::~ctype(std::ctype<char> *const this)
{
  _BOOL4 M_delete; // r3

  M_delete = this->_M_delete;
  this->_vptr.facet = (int (**)(...))&off_994088;
  if ( M_delete && this->_M_ctype_table )
    JUMPOUT(0x8A30BA);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a33e8 std::ctype<char>::~ctype() =====
void __fastcall std::ctype<char>::~ctype(std::ctype<char> *const this)
{
  std::ctype<char>::~ctype(this);
  JUMPOUT(0x8A32B4);
}


// ===== 8a33fc std::ctype<char>::~ctype() =====
std::ctype<char> *__fastcall std::ctype<char>::~ctype(std::ctype<char> *const this)
{
  _BOOL4 M_delete; // r3

  M_delete = this->_M_delete;
  this->_vptr.facet = (int (**)(...))&off_994088;
  if ( M_delete && this->_M_ctype_table )
    JUMPOUT(0x8A30BA);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a3430 std::ctype<char>::ctype(std::ctype_base::mask const*,bool,uint) =====
void __fastcall std::ctype<char>::ctype(
        std::ctype<char> *const this,
        const std::ctype_base::mask *__tab,
        bool __del,
        size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8A2FB2);
}


// ===== 8a3478 std::ctype<char>::ctype(std::ctype_base::mask const*,bool,uint) =====
void __fastcall std::ctype<char>::ctype(
        std::ctype<char> *const this,
        const std::ctype_base::mask *__tab,
        bool __del,
        size_t __refs)
{
  this->_M_ref_count = __refs != 0;
  JUMPOUT(0x8A2FB2);
}


// ===== 8a34c0 std::locale::_M_throw_on_null_name(void) =====
void std::locale::_M_throw_on_null_name()
{
  ;
}


// ===== 8a34c4 std::locale::_M_get_facet(std::locale::id const&) =====
std::locale::facet *__fastcall std::locale::_M_get_facet(const std::locale *const this, const std::locale::id *const n)
{
  std::_Locale_impl *M_impl; // r3
  size_t M_index; // r1
  std::locale::facet *result; // r0
  std::locale::facet **M_start; // r2

  M_impl = this->_M_impl;
  M_index = n->_M_index;
  result = nullptr;
  M_start = M_impl->facets_vec._M_start;
  if ( M_index < M_impl->facets_vec._M_finish - M_start )
    return M_start[M_index];
  return result;
}


// ===== 8a34dc std::locale::name(void) =====
void __fastcall std::locale::name(std::string *__return_ptr retstr, const std::locale *const this)
{
  retstr->_M_finish = (char *)retstr;
  retstr->_M_start_of_storage._M_data = (char *)retstr;
  JUMPOUT(0x8A36EC);
}


// ===== 8a34f4 std::locale::~locale() =====
std::locale *__fastcall std::locale::~locale(std::locale *const this)
{
  if ( this->_M_impl )
    std::_release_Locale_impl(&this->_M_impl);
  return this;
}


// ===== 8a3508 std::locale::~locale() =====
std::locale *__fastcall std::locale::~locale(std::locale *const this)
{
  if ( this->_M_impl )
    std::_release_Locale_impl(&this->_M_impl);
  return this;
}


// ===== 8a351c std::locale::operator=(std::locale const&) =====
const std::locale *__fastcall std::locale::operator=(std::locale *const this, const std::locale *const L)
{
  std::_Locale_impl *M_impl; // r3
  std::_Locale_impl *v4; // r0

  M_impl = this->_M_impl;
  v4 = L->_M_impl;
  if ( M_impl != L->_M_impl )
  {
    if ( M_impl )
    {
      std::_release_Locale_impl(&this->_M_impl);
      v4 = L->_M_impl;
    }
    this->_M_impl = std::_get_Locale_impl(v4);
  }
  return this;
}


// ===== 8a3540 std::locale::locale(std::_Locale_impl *) =====
std::locale *__fastcall std::locale::locale(std::locale *const this, std::_Locale_impl *impl)
{
  this->_M_impl = std::_get_Locale_impl(impl);
  return this;
}


// ===== 8a3550 std::locale::locale(std::_Locale_impl *) =====
std::locale *__fastcall std::locale::locale(std::locale *const this, std::_Locale_impl *impl)
{
  this->_M_impl = std::_get_Locale_impl(impl);
  return this;
}


// ===== 8a3560 std::locale::locale(std::locale const&) =====
std::locale *__fastcall std::locale::locale(std::locale *const this, const std::locale *const L)
{
  this->_M_impl = std::_get_Locale_impl(L->_M_impl);
  return this;
}


// ===== 8a3570 std::locale::locale(std::locale const&) =====
std::locale *__fastcall std::locale::locale(std::locale *const this, const std::locale *const L)
{
  this->_M_impl = std::_get_Locale_impl(L->_M_impl);
  return this;
}


// ===== 8a3580 std::locale::locale(void) =====
std::locale *__fastcall std::locale::locale(std::locale *const this)
{
  std::locale *global_locale; // r0

  global_locale = std::_Stl_get_global_locale();
  this->_M_impl = std::_get_Locale_impl(global_locale->_M_impl);
  return this;
}


// ===== 8a3594 std::locale::locale(void) =====
std::locale *__fastcall std::locale::locale(std::locale *const this)
{
  std::locale *global_locale; // r0

  global_locale = std::_Stl_get_global_locale();
  this->_M_impl = std::_get_Locale_impl(global_locale->_M_impl);
  return this;
}


// ===== 8a35a8 std::locale::classic(void) =====
const std::locale *std::locale::classic()
{
  return std::_Stl_get_classic_locale();
}


// ===== 8a35b0 std::locale::_M_use_facet(std::locale::id const&) =====
std::locale::facet *__fastcall std::locale::_M_use_facet(const std::locale *const this, const std::locale::id *const n)
{
  size_t M_index; // r1
  std::locale::facet **M_start; // r2
  std::locale::facet *result; // r0

  M_index = n->_M_index;
  M_start = this->_M_impl->facets_vec._M_start;
  if ( M_index >= this->_M_impl->facets_vec._M_finish - M_start || (result = M_start[M_index]) == nullptr )
  {
    std::_Locale_impl::_M_throw_bad_cast();
    return nullptr;
  }
  return result;
}


// ===== 8a35d4 std::locale::locale(char const*) =====
std::locale *__fastcall std::locale::locale(std::locale *const this, const char *name)
{
  const std::locale *v5; // r0

  this->_M_impl = nullptr;
  if ( !name )
    std::locale::_M_throw_on_null_name();
  if ( *name != 67 || name[1] )
    JUMPOUT(0x8A388E);
  v5 = std::locale::classic();
  this->_M_impl = std::_get_Locale_impl(v5->_M_impl);
  return this;
}


// ===== 8a3720 std::locale::locale(char const*) =====
std::locale *__fastcall std::locale::locale(std::locale *const this, const char *name)
{
  const std::locale *v5; // r0

  this->_M_impl = nullptr;
  if ( !name )
    std::locale::_M_throw_on_null_name();
  if ( *name != 67 || name[1] )
    JUMPOUT(0x8A388E);
  v5 = std::locale::classic();
  this->_M_impl = std::_get_Locale_impl(v5->_M_impl);
  return this;
}


// ===== 8a386c std::locale::_M_insert(std::locale::facet *,std::locale::id &) =====
void __fastcall std::locale::_M_insert(std::locale *const this, std::locale::facet *f, std::locale::id *const n)
{
  if ( f )
  {
    if ( !n->_M_index )
      JUMPOUT(0x8A35B4);
    std::_Locale_impl::insert(this->_M_impl, f, n);
  }
}


// ===== 8a38c4 std::locale::facet::~facet() =====
void __fastcall std::locale::facet::~facet(std::locale::facet *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940B8;
  JUMPOUT(0x8A36BC);
}


// ===== 8a38e8 std::locale::facet::~facet() =====
void __fastcall std::locale::facet::~facet(std::locale::facet *const this)
{
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A32B4);
}


// ===== 8a38fc std::locale::facet::~facet() =====
void __fastcall std::locale::facet::~facet(std::locale::facet *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940B8;
  JUMPOUT(0x8A36BC);
}


// ===== 8a3920 `global constructor keyed to'locale.cpp =====
// positive sp value has been detected, the output may be wrong!
void __fastcall `global constructor keyed to'locale.cpp(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9)
{
  std::_Locale_impl *v9; // r7
  __int16 v10; // r10
  _DWORD *v11; // r11
  int v12; // [sp-3Ch] [bp-48h]
  int v13; // [sp+0h] [bp-Ch]

  std::_Locale_impl::insert(
    (std::_Locale_impl *const)&std::_Nameless,
    v9,
    *(const std::locale::id *const *)(a4 + 987482));
  std::_Locale_impl::insert((std::_Locale_impl *const)&std::_Nameless, v9, *(const std::locale::id *const *)"eEiiPv");
  if ( (v10 & 0x400) != 0 )
  {
    std::_Locale_impl::insert(
      (std::_Locale_impl *const)&std::_Nameless,
      v9,
      *(const std::locale::id *const *)"k6OnInitEiP9CharacterP16CharStateMachine");
    std::_Locale_impl::insert((std::_Locale_impl *const)&std::_Nameless, v9, *(const std::locale::id *const *)"v");
  }
  *v11 = std::_get_Locale_impl((std::_Locale_impl *)&std::_Nameless);
  if ( v13 == **(_DWORD **)(v12 + 987482) )
    __asm { POP             {R4-R7,PC} }
  JUMPOUT(0x8A4314);
}


// ===== 8a3960 std::operator==<char,std::char_traits<char>,std::allocator<char>>(std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&,char const*) [clone] =====
void __fastcall std::operator==<char>(const std::string *const __x, const char *__s)
{
  JUMPOUT(0x8A3E56);
}


// ===== 8a3990 std::locale::operator==(std::locale const&) =====
int __fastcall std::locale::operator==(const std::locale *const this, const std::locale *const L)
{
  const std::locale *v2; // r9
  int v3; // r3
  const std::locale *v4; // r5
  int i; // r6
  std::string v7; // [sp+1Ch] [bp-34h] BYREF
  std::string v8; // [sp+34h] [bp-1Ch] BYREF
  int v9; // [sp+4Ch] [bp-4h]

  v2 = this;
  v3 = _stack_chk_guard;
  v4 = L;
  for ( i = 1; ; i = 0 )
  {
    v9 = v3;
    if ( this->_M_impl == L->_M_impl )
      break;
    std::locale::name(&v8, v2);
    std::locale::name(&v7, v4);
    L = (const std::locale *const)v7._M_start_of_storage._M_data;
    v3 = v7._M_finish - v7._M_start_of_storage._M_data;
    if ( v8._M_finish - v8._M_start_of_storage._M_data == v7._M_finish - v7._M_start_of_storage._M_data )
      JUMPOUT(0x8A35E2);
    this = (const std::locale *const)&v7;
  }
  return i;
}


// ===== 8a3a50 std::locale::operator!=(std::locale const&) =====
int __fastcall std::locale::operator!=(const std::locale *const this, const std::locale *const L)
{
  return (unsigned __int8)std::locale::operator==(this, L) ^ 1;
}


// ===== 8a3a60 std::locale::global(std::locale const&) =====
std::locale __fastcall std::locale::global(std::locale *L, const std::locale *a2)
{
  std::locale *global_locale; // r0
  std::locale *v5; // r0
  std::locale *v6; // r5
  std::string v8; // [sp+1Ch] [bp-20h] BYREF

  global_locale = std::_Stl_get_global_locale();
  std::locale::locale(L, global_locale->_M_impl);
  if ( std::_Stl_get_global_locale()->_M_impl != a2->_M_impl )
  {
    v5 = std::_Stl_get_global_locale();
    std::_release_Locale_impl(&v5->_M_impl);
    v6 = std::_Stl_get_global_locale();
    v6->_M_impl = std::_get_Locale_impl(a2->_M_impl);
    std::locale::name(&v8, a2);
    if ( v8._M_finish - v8._M_start_of_storage._M_data != std::_Nameless._M_finish
                                                        - std::_Nameless._M_start_of_storage._M_data )
      JUMPOUT(0x8A39AE);
    JUMPOUT(0x8A35E2);
  }
  return (std::locale)L;
}


// ===== 8a3b28 std::locale::_M_throw_on_combine_error(std::string const&) =====
void __fastcall std::locale::_M_throw_on_combine_error(const std::string *const name)
{
  JUMPOUT(0x8A40F0);
}


// ===== 8a3bbc std::locale::locale(std::locale const&,std::locale const&,int) =====
void __fastcall std::locale::locale(
        std::locale *const this,
        const std::locale *const L1,
        const std::locale *const L2,
        int c)
{
  this->_M_impl = nullptr;
  JUMPOUT(0x8A388E);
}


// ===== 8a3ed0 std::locale::locale(std::locale const&,std::locale const&,int) =====
void __fastcall std::locale::locale(
        std::locale *const this,
        const std::locale *const L1,
        const std::locale *const L2,
        int c)
{
  this->_M_impl = nullptr;
  JUMPOUT(0x8A388E);
}


// ===== 8a41e4 std::_Stl_loc_combine_names(std::_Locale_impl *,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int) =====
void __fastcall std::_Stl_loc_combine_names(
        std::_Locale_impl *L,
        const char *name,
        const char *ctype_name,
        const char *time_name,
        const char *numeric_name,
        const char *collate_name,
        const char *monetary_name,
        const char *messages_name,
        __int16 c)
{
  if ( (c & 0x770) != 0 )
  {
    *((_DWORD *)ctype_name + 1) = c & 0x770;
    JUMPOUT(0x8A4FB2);
  }
  JUMPOUT(0x8A3E56);
}


// ===== 8a4568 std::locale::locale(std::locale const&,char const*,int) =====
std::locale::id *__fastcall std::locale::locale(
        std::locale *const this,
        const std::locale *const L,
        const char *name,
        const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *c)
{
  this->_M_impl = nullptr;
  if ( !name )
    std::locale::_M_throw_on_null_name();
  if ( &__GLOBAL_OFFSET_TABLE_ == (Elf32_Dyn **)byte_4 )
    JUMPOUT(0x8A50C8);
  if ( &__GLOBAL_OFFSET_TABLE_ == (Elf32_Dyn **)((char *)&dword_0 + 1) )
    JUMPOUT(0x8A49E2);
  return std::priv::_GetFacetId(c);
}


// ===== 8a469c std::locale::locale(std::locale const&,char const*,int) =====
void __fastcall std::locale::locale(std::locale *const this, const std::locale *const L, const char *name, int c)
{
  this->_M_impl = nullptr;
  if ( !name )
    std::locale::_M_throw_on_null_name();
  JUMPOUT(0x8A4808);
}


// ===== 8a47d0 std::locale::_M_throw_on_creation_failure(int,char const*,char const*) =====
void __fastcall std::locale::_M_throw_on_creation_failure(int __err_code, const char *name, const char *facet)
{
  std::string what; // [sp+4h] [bp-20h] BYREF

  what._M_finish = (char *)&what;
  what._M_start_of_storage._M_data = (char *)&what;
  JUMPOUT(0x8A467E);
}


// ===== 8a4954 std::_Locale_impl::_M_throw_bad_cast(void) =====
void std::_Locale_impl::_M_throw_bad_cast()
{
  ;
}


// ===== 8a4958 std::priv::_GetFacetId(std::money_get<char,std::istreambuf_iterator<char,std::char_traits<char>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::money_get<char,std::istreambuf_iterator<char> > *a1)
{
  return &std::money_get<char,std::istreambuf_iterator<char>>::id;
}


// ===== 8a496c std::priv::_GetFacetId(std::money_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::money_put<char,std::ostreambuf_iterator<char> > *a1)
{
  return &std::money_put<char,std::ostreambuf_iterator<char>>::id;
}


// ===== 8a4980 std::priv::_GetFacetId(std::money_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(
        const std::money_get<wchar_t,std::istreambuf_iterator<wchar_t> > *a1)
{
  return &std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id;
}


// ===== 8a4994 std::priv::_GetFacetId(std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(
        const std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *a1)
{
  return &std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id;
}


// ===== 8a49a8 std::priv::_GetFacetId(std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::num_get<char,std::istreambuf_iterator<char> > *a1)
{
  return &std::num_get<char,std::istreambuf_iterator<char>>::id;
}


// ===== 8a49bc std::priv::_GetFacetId(std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *a1)
{
  return &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id;
}


// ===== 8a49d0 std::priv::_GetFacetId(std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::num_put<char,std::ostreambuf_iterator<char> > *a1)
{
  return &std::num_put<char,std::ostreambuf_iterator<char>>::id;
}


// ===== 8a49e4 std::priv::_GetFacetId(std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *a1)
{
  return &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id;
}


// ===== 8a49f8 std::priv::_GetFacetId(std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::time_get<char,std::istreambuf_iterator<char> > *a1)
{
  return &std::time_get<char,std::istreambuf_iterator<char>>::id;
}


// ===== 8a4a0c std::priv::_GetFacetId(std::time_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::time_put<char,std::ostreambuf_iterator<char> > *a1)
{
  return &std::time_put<char,std::ostreambuf_iterator<char>>::id;
}


// ===== 8a4a20 std::priv::_GetFacetId(std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *a1)
{
  return &std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id;
}


// ===== 8a4a34 std::priv::_GetFacetId(std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>> const*) =====
std::locale::id *__fastcall std::priv::_GetFacetId(const std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *a1)
{
  return &std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id;
}


// ===== 8a4a48 std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_date_order(void) =====
std::time_base::dateorder __fastcall std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>>::do_date_order(
        const std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  return this->_M_dateorder;
}


// ===== 8a4a54 std::time_get_byname<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_date_order(void) =====
std::time_base::dateorder __fastcall std::time_get_byname<char,std::istreambuf_iterator<char>>::do_date_order(
        const std::time_get_byname<char,std::istreambuf_iterator<char> > *const this)
{
  return this->_M_dateorder;
}


// ===== 8a4a60 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::do_date_order(void) =====
std::time_base::dateorder __fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_date_order(
        const std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  return this->_M_dateorder;
}


// ===== 8a4a6c std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::do_date_order(void) =====
std::time_base::dateorder __fastcall std::time_get<char,std::istreambuf_iterator<char>>::do_date_order(
        const std::time_get<char,std::istreambuf_iterator<char> > *const this)
{
  return this->_M_dateorder;
}


// ===== 8a4a78 std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>::operator=(wchar_t) =====
std::ostreambuf_iterator<wchar_t> *__fastcall std::ostreambuf_iterator<wchar_t>::operator=(
        std::ostreambuf_iterator<wchar_t> *const this,
        wchar_t __c)
{
  std::wstreambuf *M_buf; // r0
  wchar_t *M_pnext; // r3
  int v5; // r0
  bool v6; // r3

  if ( !this->_M_ok
    || ((M_buf = this->_M_buf, M_pnext = M_buf->_M_pnext, M_pnext >= M_buf->_M_pend)
      ? (v5 = (*((int (__fastcall **)(std::wstreambuf *, wchar_t))M_buf->_vptr.basic_streambuf + 13))(M_buf, __c))
      : (*M_pnext = __c, M_buf->_M_pnext = M_pnext + 1, v5 = *M_pnext),
        v6 = 1,
        v5 == -1) )
  {
    v6 = 0;
  }
  this->_M_ok = v6;
  return this;
}


// ===== 8a4aac std::ostreambuf_iterator<char,std::char_traits<char>>::operator=(char) =====
std::ostreambuf_iterator<char> *__fastcall std::ostreambuf_iterator<char>::operator=(
        std::ostreambuf_iterator<char> *const this,
        char __c)
{
  std::streambuf *M_buf; // r0
  char *M_pnext; // r3
  bool v5; // r3
  int v6; // r0

  if ( !this->_M_ok )
    goto LABEL_5;
  M_buf = this->_M_buf;
  M_pnext = M_buf->_M_pnext;
  if ( M_pnext >= M_buf->_M_pend )
  {
    v6 = (*((int (__fastcall **)(std::streambuf *, char))M_buf->_vptr.basic_streambuf + 13))(M_buf, __c);
    v5 = 1;
    if ( v6 != -1 )
      goto LABEL_6;
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }
  *M_pnext = __c;
  M_buf->_M_pnext = M_pnext + 1;
  v5 = 1;
LABEL_6:
  this->_M_ok = v5;
  return this;
}


// ===== 8a4ae0 std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>::operator++(void) =====
std::istreambuf_iterator<wchar_t> *__fastcall std::istreambuf_iterator<wchar_t>::operator++(
        std::istreambuf_iterator<wchar_t> *const this)
{
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3

  M_buf = this->_M_buf;
  M_gnext = M_buf->_M_gnext;
  if ( M_gnext >= M_buf->_M_gend )
    (*((void (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
  else
    M_buf->_M_gnext = M_gnext + 1;
  this->_M_have_c = 0;
  return this;
}


// ===== 8a4b04 std::istreambuf_iterator<char,std::char_traits<char>>::operator++(void) =====
std::istreambuf_iterator<char> *__fastcall std::istreambuf_iterator<char>::operator++(
        std::istreambuf_iterator<char> *const this)
{
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3

  M_buf = this->_M_buf;
  M_gnext = M_buf->_M_gnext;
  if ( M_gnext >= M_buf->_M_gend )
    (*((void (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 9))(M_buf);
  else
    M_buf->_M_gnext = M_gnext + 1;
  this->_M_have_c = 0;
  return this;
}


// ===== 8a4b28 std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>::_M_getc(void) =====
void __fastcall std::istreambuf_iterator<wchar_t>::_M_getc(const std::istreambuf_iterator<wchar_t> *const this)
{
  std::wstreambuf *M_buf; // r0
  wchar_t *M_gnext; // r3
  wchar_t v4; // r0

  if ( !this->_M_have_c )
  {
    M_buf = this->_M_buf;
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext >= M_buf->_M_gend )
      v4 = (*((int (__fastcall **)(std::wstreambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    else
      v4 = *M_gnext;
    this->_M_c = v4;
    this->_M_eof = v4 == -1;
    this->_M_have_c = 1;
  }
}


// ===== 8a4b58 std::istreambuf_iterator<char,std::char_traits<char>>::_M_getc(void) =====
void __fastcall std::istreambuf_iterator<char>::_M_getc(const std::istreambuf_iterator<char> *const this)
{
  std::streambuf *M_buf; // r0
  char *M_gnext; // r3
  int v4; // r0

  if ( !this->_M_have_c )
  {
    M_buf = this->_M_buf;
    M_gnext = M_buf->_M_gnext;
    if ( M_gnext >= M_buf->_M_gend )
      v4 = (*((int (__fastcall **)(std::streambuf *))M_buf->_vptr.basic_streambuf + 8))(M_buf);
    else
      v4 = (unsigned __int8)*M_gnext;
    this->_M_c = v4;
    this->_M_eof = v4 == -1;
    this->_M_have_c = 1;
  }
}


// ===== 8a4b88 std::priv::__write_decimal_backward<long>(char *,long,int,std::__true_type const&) =====
std::locale::id *__fastcall std::priv::__write_decimal_backward<long>(
        char *__ptr,
        int __x,
        int __flags,
        const std::__true_type *const a4)
{
  char *v5; // r6
  int v6; // r3
  const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *v7; // r4

  v5 = __ptr;
  v6 = __x;
  v7 = (const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *)(__x >> 31);
  if ( __x < 0 )
  {
    v6 = -__x;
    v7 = (const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *)((unsigned __int64)-(__int64)__x >> 32);
  }
  if ( v6 | (unsigned int)v7 )
    return std::priv::_GetFacetId(v7);
  if ( __x < 0 )
  {
    v5 = __ptr - 1;
    *(__ptr - 1) = 45;
  }
  return (std::locale::id *)v5;
}


// ===== 8a4bf4 std::priv::__write_decimal_backward<long long>(char *,long long,int,std::__true_type const&) =====
std::locale::id *__fastcall std::priv::__write_decimal_backward<long long>(
        char *__ptr,
        __int64 __x,
        __int16 __flags,
        const std::__true_type *const a4)
{
  int v6; // r1
  int v7; // r7
  const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *v8; // r2
  char *v9; // r6
  int v10; // r3
  const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *v11; // r4

  v6 = __x;
  v7 = HIDWORD(__x) >> 31;
  v8 = (const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *)HIDWORD(__x);
  v9 = __ptr;
  v10 = -v6;
  v11 = (const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *)((unsigned __int64)-__SPAIR64__(
                                                                                                (unsigned int)v8,
                                                                                                v6) >> 32);
  if ( !v7 )
  {
    v10 = v6;
    v11 = v8;
  }
  if ( v10 | (unsigned int)v11 )
    return std::priv::_GetFacetId(v11);
  if ( v7 )
  {
    v9 = __ptr - 1;
    *(__ptr - 1) = 45;
  }
  else if ( (__flags & 0x800) != 0 )
  {
    v9 = __ptr - 1;
    *(__ptr - 1) = 43;
  }
  return (std::locale::id *)v9;
}


// ===== 8a4c58 std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_swap(std::priv::_String_base<wchar_t,std::allocator<wchar_t>>&) =====
void __fastcall std::priv::_String_base<wchar_t,std::allocator<wchar_t>>::_M_swap(
        std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *const this,
        std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *const __s)
{
  std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *v2; // r5
  std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *v3; // r4
  wchar_t *M_data; // r6
  wchar_t *v5; // r3
  std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *v6; // r2
  wchar_t v7; // r3
  wchar_t *v8; // r3
  wchar_t *M_finish; // r3

  v2 = this;
  v3 = __s;
  M_data = this->_M_start_of_storage._M_data;
  v5 = __s->_M_start_of_storage._M_data;
  while ( M_data == (wchar_t *)v2 )
  {
    v6 = v3;
    if ( v3 == (std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *)v5 )
      __asm { POP             {R4-R7,PC} }
    M_data = v5;
    v3 = v2;
    v5 = (wchar_t *)v2;
    v2 = v6;
  }
  if ( v3 == (std::priv::_String_base<wchar_t,std::allocator<wchar_t> > *)v5 )
    JUMPOUT(0x8A4312);
  v7 = v2->_M_buffers._M_static_buf[0];
  v2->_M_buffers._M_static_buf[0] = v3->_M_buffers._M_static_buf[0];
  v3->_M_buffers._M_static_buf[0] = v7;
  v8 = v2->_M_start_of_storage._M_data;
  v2->_M_start_of_storage._M_data = v3->_M_start_of_storage._M_data;
  v3->_M_start_of_storage._M_data = v8;
  M_finish = v2->_M_finish;
  v2->_M_finish = v3->_M_finish;
  v3->_M_finish = M_finish;
}


// ===== 8a4d08 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(uint) =====
size_t __fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        size_t __n)
{
  size_t v2; // r5
  unsigned int v3; // r4
  size_t result; // r0

  v2 = __n;
  v3 = this->_M_finish - this->_M_start_of_storage._M_data;
  if ( -2 - v3 < __n )
    std::__stl_throw_length_error("basic_string");
  if ( v2 < v3 )
    v2 = v3;
  result = v3 + 1 + v2;
  if ( result == -1 || result < v3 )
    return -2;
  return result;
}


// ===== 8a4d48 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(uint) =====
size_t __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        size_t __n)
{
  unsigned int v3; // r4
  size_t v4; // r3
  size_t result; // r0

  v3 = this->_M_finish - this->_M_start_of_storage._M_data;
  if ( 1073741822 - v3 < __n )
    std::__stl_throw_length_error("basic_string");
  v4 = v3;
  if ( v3 < __n )
    v4 = __n;
  result = v3 + 1 + v4;
  if ( result > 0x3FFFFFFE || result < v3 )
    return 1073741822;
  return result;
}


// ===== 8a4d8c std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::_M_compute_next_size(uint) =====
size_t __fastcall std::vector<std::locale::facet *>::_M_compute_next_size(
        std::vector<std::locale::facet*> *const this,
        size_t __n)
{
  unsigned int v3; // r4
  size_t v4; // r0
  size_t result; // r0

  v3 = this->_M_finish - this->_M_start;
  if ( 0x3FFFFFFF - v3 < __n )
    std::__stl_throw_length_error("vector");
  v4 = v3;
  if ( v3 < __n )
    v4 = __n;
  result = v4 + v3;
  if ( result > 0x3FFFFFFF || result < v3 )
    return 0x3FFFFFFF;
  return result;
}


// ===== 8a4dcc std::_release_facet(std::locale::facet *&) =====
void __fastcall std::_release_facet(std::locale::facet **const f)
{
  if ( *f )
    JUMPOUT(0x8A59B0);
}


// ===== 8a4e04 std::_get_facet(std::locale::facet *) =====
std::locale::facet *__fastcall std::_get_facet(std::locale::facet *f)
{
  if ( f )
    JUMPOUT(0x8A59B0);
  return nullptr;
}


// ===== 8a4e28 std::_Locale_impl::Init::_M_count(void) =====
std::_Refcount_Base *__fastcall std::_Locale_impl::Init::_M_count(const std::_Locale_impl::Init *const this)
{
  if ( (`guard variable for'std::_Locale_impl::Init::_M_count(void)::_S_count & 1) == 0 )
    JUMPOUT(0x8A476E);
  return &std::_Locale_impl::Init::_M_count(void)const::_S_count;
}


// ===== 8a4e84 std::money_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~money_get() =====
std::money_get<char,std::istreambuf_iterator<char> > *__fastcall std::money_get<char,std::istreambuf_iterator<char>>::~money_get(
        std::money_get<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940C8;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4ea4 std::money_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~money_put() =====
std::money_put<char,std::ostreambuf_iterator<char> > *__fastcall std::money_put<char,std::ostreambuf_iterator<char>>::~money_put(
        std::money_put<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940E0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4ec4 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~num_get() =====
std::num_get<char,std::istreambuf_iterator<char> > *__fastcall std::num_get<char,std::istreambuf_iterator<char>>::~num_get(
        std::num_get<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940F8;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4ee4 std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~num_put() =====
std::num_put<char,std::ostreambuf_iterator<char> > *__fastcall std::num_put<char,std::ostreambuf_iterator<char>>::~num_put(
        std::num_put<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994138;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4f04 std::money_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~money_get() =====
std::money_get<wchar_t,std::istreambuf_iterator<wchar_t> > *__fastcall std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~money_get(
        std::money_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9941A8;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4f24 std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~money_put() =====
std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *__fastcall std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~money_put(
        std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9941C0;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4f44 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~num_get() =====
std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *__fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~num_get(
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9941D8;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4f64 std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~num_put() =====
std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *__fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~num_put(
        std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994218;
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a4f84 std::priv::__write_integer_backward<ulong>(char *,int,ulong) =====
char *__fastcall std::priv::__write_integer_backward<unsigned long>(char *__buf, __int16 __flags, unsigned int __x)
{
  unsigned int v5; // r5
  char *v6; // r4
  const char *v8; // r0
  __int64 v9; // r2
  char *v10; // r3
  unsigned int v11; // r3

  v5 = __x;
  if ( __x )
  {
    if ( (__flags & 0x38) == 0x10 )
    {
      if ( (__flags & 0x4000) != 0 )
        v8 = std::priv::__hex_char_table_hi();
      else
        v8 = std::priv::__hex_char_table_lo();
      HIDWORD(v9) = v5;
      LODWORD(v9) = 0;
      v6 = __buf;
      if ( v5 )
      {
        do
        {
          *--v6 = v8[BYTE4(v9) & 0xF];
          HIDWORD(v9) = (HIDWORD(v9) >> 4) | ((_DWORD)v9 << 28);
          LODWORD(v9) = (unsigned int)v9 >> 4;
        }
        while ( v9 );
      }
      if ( (__flags & 0x200) != 0 )
      {
        v10 = v6 - 1;
        v6 -= 2;
        *v10 = v8[16];
        *v6 = 48;
      }
    }
    else
    {
      v6 = __buf;
      if ( (__flags & 0x38) != 0x20 )
        JUMPOUT(0x8A4B2E);
      v11 = 0;
      do
      {
        *--v6 = (v5 & 7) + 48;
        v5 = (v5 >> 3) | (v11 << 29);
        v11 >>= 3;
      }
      while ( v5 | v11 );
      if ( (__flags & 0x200) != 0 )
        *--v6 = 48;
    }
  }
  else
  {
    v6 = __buf - 1;
    *(__buf - 1) = 48;
    if ( (__flags & 0x830) == 0x800 )
    {
      v6 = __buf - 2;
      *(__buf - 2) = 43;
    }
  }
  return v6;
}


// ===== 8a5050 std::priv::__write_integer_backward<ulong long>(char *,int,ulong long) =====
std::locale::id *__fastcall std::priv::__write_integer_backward<unsigned long long>(
        char *__buf,
        __int16 __flags,
        __int64 __x)
{
  __int64 v5; // kr00_8
  char *v6; // r4
  unsigned int v8; // r6
  unsigned int v9; // r5
  char *v10; // r3
  unsigned int v11; // r6
  unsigned int v12; // r5
  const char *v13; // r0

  v5 = __x;
  if ( !__x )
  {
    v6 = __buf - 1;
    *(__buf - 1) = 48;
    if ( (__flags & 0x830) == 0x800 )
    {
      v6 = __buf - 2;
      *(__buf - 2) = 43;
    }
    return (std::locale::id *)v6;
  }
  if ( (__flags & 0x38) == 0x10 )
  {
    if ( (__flags & 0x4000) != 0 )
      v13 = std::priv::__hex_char_table_hi();
    else
      v13 = std::priv::__hex_char_table_lo();
    v6 = __buf;
    do
    {
      *--v6 = v13[v5 & 0xF];
      v8 = v5 >> 4;
      v9 = HIDWORD(v5) >> 4;
      v5 = (unsigned __int64)v5 >> 4;
    }
    while ( __PAIR64__(v9, v8) );
    if ( (__flags & 0x200) != 0 )
    {
      v10 = v6 - 1;
      v6 -= 2;
      *v10 = v13[16];
      *v6 = 48;
    }
    return (std::locale::id *)v6;
  }
  v6 = __buf;
  if ( (__flags & 0x38) == 0x20 )
  {
    do
    {
      *--v6 = (v5 & 7) + 48;
      v11 = v5 >> 3;
      v12 = HIDWORD(v5) >> 3;
      v5 = (unsigned __int64)v5 >> 3;
    }
    while ( __PAIR64__(v12, v11) );
    if ( (__flags & 0x200) != 0 )
      *--v6 = 48;
    return (std::locale::id *)v6;
  }
  return std::priv::_GetFacetId((const std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *)__x);
}


// ===== 8a5134 std::priv::__write_integer_backward<long long>(char *,int,long long) =====
char *__fastcall std::priv::__write_integer_backward<long long>(char *__buf, __int16 __flags, __int64 __x)
{
  unsigned int v3; // r5
  char *v4; // r7
  unsigned int v6; // r6
  const char *v7; // r2
  char *v8; // r3
  std::__true_type v9; // [sp+Ch] [bp-8h] BYREF

  v3 = HIDWORD(__x);
  v4 = __buf;
  v6 = __x;
  if ( __x )
  {
    if ( (__flags & 0x38) == 0x10 )
    {
      if ( (__flags & 0x4000) != 0 )
        v7 = std::priv::__hex_char_table_hi();
      else
        v7 = std::priv::__hex_char_table_lo();
      __buf = v4;
      do
      {
        *--__buf = v7[v6 & 0xF];
        v6 = (v6 >> 4) | (v3 << 28);
        v3 >>= 4;
      }
      while ( v6 | v3 );
      if ( (__flags & 0x200) != 0 )
      {
        v8 = __buf - 1;
        __buf -= 2;
        *v8 = v7[16];
        *__buf = 48;
      }
    }
    else if ( (__flags & 0x38) == 0x20 )
    {
      do
      {
        *--__buf = (v6 & 7) + 48;
        v6 = (v6 >> 3) | (v3 << 29);
        v3 >>= 3;
      }
      while ( v6 | v3 );
      if ( (__flags & 0x200) != 0 )
        *--__buf = 48;
    }
    else
    {
      return (char *)std::priv::__write_decimal_backward<long long>(__buf, __x, __flags, &v9);
    }
  }
  else
  {
    *--__buf = 48;
    if ( (__flags & 0x830) == 0x800 )
    {
      __buf = v4 - 2;
      *(v4 - 2) = 43;
    }
  }
  return __buf;
}


// ===== 8a51e8 std::priv::__write_integer_backward<long>(char *,int,long) =====
char *__fastcall std::priv::__write_integer_backward<long>(char *__buf, __int16 __flags, unsigned int __x)
{
  char *v3; // r6
  unsigned int v5; // r5
  const char *v6; // r7
  __int64 v7; // r2
  char *v8; // r3
  unsigned int v9; // r3
  std::__true_type v10; // [sp+4h] [bp-8h] BYREF

  v3 = __buf;
  v5 = __x;
  if ( __x )
  {
    if ( (__flags & 0x38) == 0x10 )
    {
      if ( (__flags & 0x4000) != 0 )
        v6 = std::priv::__hex_char_table_hi();
      else
        v6 = std::priv::__hex_char_table_lo();
      HIDWORD(v7) = v5;
      LODWORD(v7) = 0;
      __buf = v3;
      if ( v5 )
      {
        do
        {
          *--__buf = v6[BYTE4(v7) & 0xF];
          HIDWORD(v7) = (HIDWORD(v7) >> 4) | ((_DWORD)v7 << 28);
          LODWORD(v7) = (unsigned int)v7 >> 4;
        }
        while ( v7 );
      }
      if ( (__flags & 0x200) != 0 )
      {
        v8 = __buf - 1;
        __buf -= 2;
        *v8 = v6[16];
        *__buf = 48;
      }
    }
    else if ( (__flags & 0x38) == 0x20 )
    {
      v9 = 0;
      do
      {
        *--__buf = (v5 & 7) + 48;
        v5 = (v5 >> 3) | (v9 << 29);
        v9 >>= 3;
      }
      while ( v5 | v9 );
      if ( (__flags & 0x200) != 0 )
        *--__buf = 48;
    }
    else
    {
      return (char *)std::priv::__write_decimal_backward<long>(__buf, __x, __flags, &v10);
    }
  }
  else
  {
    *--__buf = 48;
    if ( (__flags & 0x830) == 0x800 )
    {
      __buf = v3 - 2;
      *(v3 - 2) = 43;
    }
  }
  return __buf;
}


// ===== 8a529c std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::erase(wchar_t *,wchar_t *) =====
wchar_t *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::erase(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        wchar_t *__first,
        wchar_t *__last)
{
  if ( __first != __last )
    JUMPOUT(0x8A56DE);
  return __first;
}


// ===== 8a52c8 std::_Refcount_Base::~_Refcount_Base() =====
void __fastcall std::_Refcount_Base::~_Refcount_Base(std::_Refcount_Base *const this)
{
  JUMPOUT(0x8A56BC);
}


// ===== 8a52d8 std::priv::_String_base<char,std::priv::__iostring_allocator<char>>::_M_allocate_block(uint) [clone] =====
void __fastcall std::priv::_String_base<char,std::priv::__iostring_allocator<char>>::_M_allocate_block(
        std::priv::_String_base<char,std::priv::__iostring_allocator<char> > *const this,
        size_t __n)
{
  this->_M_start_of_storage._M_data = this->_M_start_of_storage._M_static_buf;
  this->_M_finish = this->_M_start_of_storage._M_static_buf;
  this->_M_buffers._M_end_of_storage = (char *)(&this->_M_start_of_storage.std::priv::__iostring_allocator<char> + 1);
}


// ===== 8a52f0 std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~money_put() =====
void __fastcall std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~money_put(
        std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9941C0;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5318 std::money_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~money_get() =====
void __fastcall std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~money_get(
        std::money_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9941A8;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5340 std::money_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~money_put() =====
void __fastcall std::money_put<char,std::ostreambuf_iterator<char>>::~money_put(
        std::money_put<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940E0;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5368 std::money_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~money_get() =====
void __fastcall std::money_get<char,std::istreambuf_iterator<char>>::~money_get(
        std::money_get<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940C8;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5390 std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~num_put() =====
void __fastcall std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~num_put(
        std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994218;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a53b8 std::num_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~num_get() =====
void __fastcall std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~num_get(
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9941D8;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a53e0 std::num_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~num_get() =====
void __fastcall std::num_get<char,std::istreambuf_iterator<char>>::~num_get(
        std::num_get<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_9940F8;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5408 std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~num_put() =====
void __fastcall std::num_put<char,std::ostreambuf_iterator<char>>::~num_put(
        std::num_put<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994138;
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5430 std::_get_Locale_impl(std::_Locale_impl *) =====
void __fastcall std::_get_Locale_impl(std::_Locale_impl *loc)
{
  JUMPOUT(0x8A59B0);
}


// ===== 8a5450 std::_Locale_impl::Init::~Init() =====
void __fastcall std::_Locale_impl::Init::~Init(std::_Locale_impl::Init *const this)
{
  std::_Locale_impl::Init::_M_count(this);
  JUMPOUT(0x8A55B4);
}


// ===== 8a547c std::_Locale_impl::Init::~Init() =====
void __fastcall std::_Locale_impl::Init::~Init(std::_Locale_impl::Init *const this)
{
  std::_Locale_impl::Init::_M_count(this);
  JUMPOUT(0x8A55B4);
}


// ===== 8a54a8 std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::_M_fill_insert_aux(std::locale::facet **,uint,std::locale::facet * const&,std::__false_type const&) =====
void __fastcall std::vector<std::locale::facet *>::_M_fill_insert_aux(
        std::vector<std::locale::facet*> *const this,
        std::locale::facet **__pos,
        size_t __n,
        std::locale::facet **__x,
        const std::__false_type *const a5)
{
  std::locale::facet **v6; // r5
  std::locale::facet **M_finish; // r8
  int v8; // r4
  signed int v9; // r12
  int v10; // r2
  std::locale::facet **v11; // r12
  std::locale::facet **v12; // r1
  signed int v13; // r2
  int v14; // r3
  std::locale::facet *v15; // [sp+8h] [bp-Ch] BYREF
  std::__false_type v16; // [sp+Ch] [bp-8h] BYREF

  v6 = __pos;
  if ( __x < this->_M_start )
  {
    M_finish = this->_M_finish;
    v8 = M_finish - __pos;
    if ( __n >= v8 )
      goto LABEL_4;
  }
  else
  {
    M_finish = this->_M_finish;
    if ( __x < M_finish )
    {
      v15 = *__x;
      std::vector<std::locale::facet *>::_M_fill_insert_aux(this, __pos, __n, &v15, &v16);
      return;
    }
    v8 = M_finish - __pos;
    if ( __n >= v8 )
    {
LABEL_4:
      v9 = __n - v8;
      v10 = (v9 * 4) >> 2;
      v11 = &M_finish[v9];
      if ( v10 > 0 )
      {
        v12 = M_finish;
        do
        {
          --v10;
          *v12++ = *__x;
        }
        while ( v10 );
      }
      this->_M_finish = v11;
      if ( v6 == M_finish )
      {
        this->_M_finish = &v11[v8];
        if ( v8 > 0 )
        {
          do
          {
            --v8;
            *v6++ = *__x;
          }
          while ( v8 );
        }
        return;
      }
LABEL_18:
      JUMPOUT(0x8A586A);
    }
  }
  v13 = 4 * __n;
  if ( &M_finish[v13 / 0xFFFFFFFC] != M_finish )
    goto LABEL_18;
  this->_M_finish = M_finish;
  if ( (char *)M_finish - (char *)__pos > 0 )
    JUMPOUT(0x8A4F3C);
  v14 = v13 >> 2;
  if ( v13 >> 2 > 0 )
  {
    do
    {
      --v14;
      *v6++ = *__x;
    }
    while ( v14 );
  }
}


// ===== 8a5584 std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::_M_clear(void) =====
void __fastcall std::vector<std::locale::facet *>::_M_clear(std::vector<std::locale::facet*> *const this)
{
  std::locale::facet **M_data; // r1
  std::locale::facet **M_start; // r0
  size_t v3; // r1

  M_data = this->_M_end_of_storage._M_data;
  M_start = this->_M_start;
  if ( M_start )
  {
    v3 = 4 * (M_data - M_start);
    if ( v3 > 0x80 )
      JUMPOUT(0x8A52B4);
    std::__node_alloc::_M_deallocate(M_start, v3);
  }
}


// ===== 8a55a4 std::priv::_Time_Info_Base::~_Time_Info_Base() =====
void __fastcall std::priv::_Time_Info_Base::~_Time_Info_Base(std::priv::_Time_Info_Base *const this)
{
  JUMPOUT(0x8A59B0);
}


// ===== 8a55d0 std::priv::_WTime_Info::~_WTime_Info() =====
void __fastcall std::priv::_WTime_Info::~_WTime_Info(std::priv::_WTime_Info *const this)
{
  if ( this != (std::priv::_WTime_Info *const)-2856 )
    JUMPOUT(0x8A53B2);
  JUMPOUT(0x8A53B4);
}


// ===== 8a5630 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_get() =====
std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *__fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get(
        std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994248;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a5658 std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_put() =====
std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *__fastcall std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put(
        std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994270;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a5680 std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_get_byname() =====
std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t> > *__fastcall std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get_byname(
        std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994248;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a56a8 std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_put_byname() =====
std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t> > *__fastcall std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put_byname(
        std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994270;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a56d0 std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_put() =====
void __fastcall std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put(
        std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994270;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5700 std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_get() =====
void __fastcall std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get(
        std::time_get<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994248;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5730 std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_put_byname() =====
void __fastcall std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put_byname(
        std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994270;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5760 std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::~time_get_byname() =====
void __fastcall std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get_byname(
        std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994248;
  std::priv::_WTime_Info::~_WTime_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5790 std::priv::_Time_Info::~_Time_Info() =====
void __fastcall std::priv::_Time_Info::~_Time_Info(std::priv::_Time_Info *const this)
{
  if ( this != (std::priv::_Time_Info *const)-1032 )
    JUMPOUT(0x8A59B0);
  JUMPOUT(0x8A59AE);
}


// ===== 8a57f0 std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~time_get() =====
std::time_get<char,std::istreambuf_iterator<char> > *__fastcall std::time_get<char,std::istreambuf_iterator<char>>::~time_get(
        std::time_get<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994168;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a5818 std::time_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~time_put() =====
std::time_put<char,std::ostreambuf_iterator<char> > *__fastcall std::time_put<char,std::ostreambuf_iterator<char>>::~time_put(
        std::time_put<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994190;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a5840 std::time_get_byname<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~time_get_byname() =====
std::time_get_byname<char,std::istreambuf_iterator<char> > *__fastcall std::time_get_byname<char,std::istreambuf_iterator<char>>::~time_get_byname(
        std::time_get_byname<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994168;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a5868 std::time_put_byname<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~time_put_byname() =====
std::time_put_byname<char,std::ostreambuf_iterator<char> > *__fastcall std::time_put_byname<char,std::ostreambuf_iterator<char>>::~time_put_byname(
        std::time_put_byname<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994190;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  return this;
}


// ===== 8a5890 std::time_get<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~time_get() =====
void __fastcall std::time_get<char,std::istreambuf_iterator<char>>::~time_get(
        std::time_get<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994168;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a58c0 std::time_put<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~time_put() =====
void __fastcall std::time_put<char,std::ostreambuf_iterator<char>>::~time_put(
        std::time_put<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994190;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a58f0 std::time_get_byname<char,std::istreambuf_iterator<char,std::char_traits<char>>>::~time_get_byname() =====
void __fastcall std::time_get_byname<char,std::istreambuf_iterator<char>>::~time_get_byname(
        std::time_get_byname<char,std::istreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994168;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5920 std::time_put_byname<char,std::ostreambuf_iterator<char,std::char_traits<char>>>::~time_put_byname() =====
void __fastcall std::time_put_byname<char,std::ostreambuf_iterator<char>>::~time_put_byname(
        std::time_put_byname<char,std::ostreambuf_iterator<char> > *const this)
{
  this->_vptr.facet = (int (**)(...))&off_994190;
  std::priv::_Time_Info::~_Time_Info(&this->_M_timeinfo);
  std::locale::facet::~facet(this);
  JUMPOUT(0x8A52B4);
}


// ===== 8a5950 std::_Locale_impl::~_Locale_impl() =====
void __fastcall std::_Locale_impl::~_Locale_impl(std::_Locale_impl *const this)
{
  std::locale::facet **M_start; // r4
  std::locale::facet **M_finish; // r5
  std::locale::facet **v4; // r0
  std::locale::facet **v5; // r0
  size_t v6; // r1

  std::_Locale_impl::Init::~Init((std::_Locale_impl::Init *const)&std::__Loc_init_buf);
  M_start = this->facets_vec._M_start;
  M_finish = this->facets_vec._M_finish;
  while ( M_finish != M_start )
  {
    v4 = M_start++;
    std::_release_facet(v4);
  }
  v5 = this->facets_vec._M_start;
  if ( v5 )
  {
    v6 = 4 * (this->facets_vec._M_end_of_storage._M_data - v5);
    if ( v6 > 0x80 )
      JUMPOUT(0x8A52B4);
    std::__node_alloc::_M_deallocate(v5, v6);
  }
  JUMPOUT(0x8A59AE);
}


// ===== 8a59a8 std::_release_Locale_impl(std::_Locale_impl *&) =====
void __fastcall std::_release_Locale_impl(std::_Locale_impl **const loc)
{
  JUMPOUT(0x8A55B4);
}


// ===== 8a59f8 std::_Locale_impl::~_Locale_impl() =====
void __fastcall std::_Locale_impl::~_Locale_impl(std::_Locale_impl *const this)
{
  std::locale::facet **M_start; // r4
  std::locale::facet **M_finish; // r5
  std::locale::facet **v4; // r0
  std::locale::facet **v5; // r0
  size_t v6; // r1

  std::_Locale_impl::Init::~Init((std::_Locale_impl::Init *const)&std::__Loc_init_buf);
  M_start = this->facets_vec._M_start;
  M_finish = this->facets_vec._M_finish;
  while ( M_finish != M_start )
  {
    v4 = M_start++;
    std::_release_facet(v4);
  }
  v5 = this->facets_vec._M_start;
  if ( v5 )
  {
    v6 = 4 * (this->facets_vec._M_end_of_storage._M_data - v5);
    if ( v6 > 0x80 )
      JUMPOUT(0x8A52B4);
    std::__node_alloc::_M_deallocate(v5, v6);
  }
  JUMPOUT(0x8A59AE);
}


// ===== 8a5a50 std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t>>::_M_deallocate_block(void) =====
void __fastcall std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t>>::_M_deallocate_block(
        std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t> > *const this)
{
  std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t> > *M_data; // r3
  size_t v2; // r1

  M_data = (std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t> > *)this->_M_start_of_storage._M_data;
  if ( M_data != this
    && M_data
    && M_data != (std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t> > *)&this->_M_start_of_storage )
  {
    v2 = 4 * ((signed int)(this->_M_buffers._M_static_buf[0] - (int)M_data) >> 2);
    if ( v2 > 0x80 )
      JUMPOUT(0x8A52B2);
    std::__node_alloc::_M_deallocate(M_data, v2);
  }
}


// ===== 8a5a84 std::priv::_String_base<char,std::priv::__iostring_allocator<char>>::_M_deallocate_block(void) =====
void __fastcall std::priv::_String_base<char,std::priv::__iostring_allocator<char>>::_M_deallocate_block(
        std::priv::_String_base<char,std::priv::__iostring_allocator<char> > *const this)
{
  std::priv::_String_base<char,std::priv::__iostring_allocator<char> > *M_data; // r3
  char *v2; // r1

  M_data = (std::priv::_String_base<char,std::priv::__iostring_allocator<char> > *)this->_M_start_of_storage._M_data;
  if ( M_data != this
    && M_data
    && M_data != (std::priv::_String_base<char,std::priv::__iostring_allocator<char> > *)&this->_M_start_of_storage )
  {
    v2 = (char *)(this->_M_buffers._M_end_of_storage - (char *)M_data);
    if ( (unsigned int)v2 > 0x80 )
      JUMPOUT(0x8A52B2);
    std::__node_alloc::_M_deallocate(M_data, (size_t)v2);
  }
}


// ===== 8a5ab4 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char const*>(char const*,char const*,std::forward_iterator_tag const&) =====
std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char const*>(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        char *__first,
        char *__last,
        const std::forward_iterator_tag *const a4)
{
  size_t v6; // r6
  char *M_finish; // r3
  char *v8; // r1
  char *v9; // r0

  if ( __first != __last )
  {
    v6 = __last - __first;
    M_finish = this->_M_finish;
    if ( (std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const)this->_M_start_of_storage._M_data == this )
      v8 = (char *)((char *)&this->_M_finish - M_finish);
    else
      v8 = (char *)(this->_M_buffers._M_end_of_storage - M_finish);
    if ( v6 >= (unsigned int)v8 )
    {
      if ( std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_compute_next_size(
             this,
             v6) > 0x101 )
        JUMPOUT(0x8A5996);
      if ( this->_M_start_of_storage._M_data != this->_M_finish )
        JUMPOUT(0x8A586C);
    }
    else
    {
      *M_finish = *__first;
      v9 = this->_M_finish;
      if ( __last == __first + 1 )
      {
        v9[v6] = 0;
        this->_M_finish += v6;
        return this;
      }
    }
    JUMPOUT(0x8A586A);
  }
  return this;
}


// ===== 8a5b74 std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_assign_dispatch<char const*>(char const*,char const*,std::__false_type const&) =====
std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *__fastcall std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_assign_dispatch<char const*>(
        std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char> > *const this,
        char *__f,
        char *__l,
        const std::__false_type *const a4)
{
  char *M_data; // r3
  char v6; // r0
  char *M_finish; // r2
  std::forward_iterator_tag v9; // [sp+4h] [bp-4h] BYREF

  M_data = this->_M_start_of_storage._M_data;
  if ( __f == __l )
  {
LABEL_4:
    M_finish = this->_M_finish;
    if ( M_data != M_finish )
    {
      *M_data = *M_finish;
      this->_M_finish += M_data - M_finish;
    }
  }
  else
  {
    while ( M_data != this->_M_finish )
    {
      v6 = *__f++;
      *M_data++ = v6;
      if ( __f == __l )
        goto LABEL_4;
    }
    std::basic_string<char,std::char_traits<char>,std::priv::__iostring_allocator<char>>::_M_appendT<char const*>(
      this,
      __f,
      __l,
      &v9);
  }
  return this;
}


// ===== 8a5bb8 std::priv::__get_money_digits_aux(std::priv::__basic_iostring<wchar_t> &,std::ios_base &,long double) =====
void __fastcall std::priv::__get_money_digits_aux(std::priv::__iowstring *const __wbuf, double __x)
{
  std::priv::__iostring __buf; // [sp+14h] [bp-224h] BYREF

  __buf._M_finish = (char *)&__buf;
  JUMPOUT(0x8A586A);
}


// ===== 8a5c68 std::allocator<wchar_t>::allocate(uint,void const*) =====
wchar_t *__fastcall std::allocator<wchar_t>::allocate(std::allocator<wchar_t> *const this, size_t __n, const void *a3)
{
  wchar_t *result; // r0
  size_t v4[2]; // [sp+4h] [bp-8h] BYREF

  if ( __n > 0x3FFFFFFF )
    JUMPOUT(0x8A60C8);
  result = nullptr;
  if ( __n )
  {
    v4[0] = 4 * __n;
    if ( 4 * __n > 0x80 )
      JUMPOUT(0x8A588E);
    return (wchar_t *)std::__node_alloc::_M_allocate(v4);
  }
  return result;
}


// ===== 8a5ca8 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_appendT<wchar_t const*>(wchar_t const*,wchar_t const*,std::forward_iterator_tag const&) =====
std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_appendT<wchar_t const*>(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        wchar_t *__first,
        wchar_t *__last,
        const std::forward_iterator_tag *const a4)
{
  size_t v6; // r7
  wchar_t *M_finish; // r3
  unsigned int v8; // r1
  size_t size; // r8
  wchar_t *v11; // r0
  int v12; // r7

  if ( __first != __last )
  {
    v6 = __last - __first;
    M_finish = this->_M_finish;
    if ( (std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const)this->_M_start_of_storage._M_data == this )
      v8 = 16 - (((char *)M_finish - (char *)this) >> 2);
    else
      v8 = (signed int)(this->_M_buffers._M_static_buf[0] - (int)M_finish) >> 2;
    if ( v6 >= v8 )
    {
      size = std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_compute_next_size(
               this,
               v6);
      if ( size > 0x101 )
        std::allocator<wchar_t>::allocate((std::allocator<wchar_t> *const)&this->_M_start_of_storage, size, nullptr);
      if ( this->_M_start_of_storage._M_data == this->_M_finish )
        JUMPOUT(0x8A586A);
LABEL_13:
      JUMPOUT(0x8A586C);
    }
    *M_finish = *__first;
    v11 = this->_M_finish;
    if ( __last != __first + 1 )
      goto LABEL_13;
    v12 = v6;
    v11[v12] = 0;
    this->_M_finish = (wchar_t *)((char *)this->_M_finish + v12 * 4);
  }
  return this;
}


// ===== 8a5d70 std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_assign_dispatch<wchar_t const*>(wchar_t const*,wchar_t const*,std::__false_type const&) =====
std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_assign_dispatch<wchar_t const*>(
        std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t> > *const this,
        wchar_t *__f,
        wchar_t *__l,
        const std::__false_type *const a4)
{
  wchar_t *M_data; // r3
  wchar_t v6; // r0
  std::forward_iterator_tag v8; // [sp+4h] [bp-4h] BYREF

  M_data = this->_M_start_of_storage._M_data;
  if ( __f == __l )
  {
LABEL_4:
    std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::erase(
      this,
      M_data,
      this->_M_finish);
  }
  else
  {
    while ( M_data != this->_M_finish )
    {
      v6 = *__f++;
      *M_data++ = v6;
      if ( __l == __f )
        goto LABEL_4;
    }
    std::basic_string<wchar_t,std::char_traits<wchar_t>,std::priv::__iostring_allocator<wchar_t>>::_M_appendT<wchar_t const*>(
      this,
      __f,
      __l,
      &v8);
  }
  return this;
}


// ===== 8a5da8 std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t>>::_M_allocate_block(uint) [clone] =====
void __fastcall std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t>>::_M_allocate_block(
        std::priv::_String_base<wchar_t,std::priv::__iostring_allocator<wchar_t> > *const this,
        size_t __n)
{
  this->_M_start_of_storage._M_data = this->_M_start_of_storage._M_static_buf;
  this->_M_finish = this->_M_start_of_storage._M_static_buf;
  this->_M_buffers._M_static_buf[0] = (wchar_t)&this->_M_start_of_storage._M_data;
}


// ===== 8a5dc0 std::allocator<std::locale::facet *>::_M_allocate(uint,uint &) =====
std::locale::facet **__fastcall std::allocator<std::locale::facet *>::_M_allocate(
        std::allocator<std::locale::facet*> *const this,
        size_t __n,
        size_t *const __allocated_n)
{
  std::locale::facet **result; // r0
  size_t v5; // [sp+4h] [bp-4h] BYREF

  if ( __n > 0x3FFFFFFF )
    JUMPOUT(0x8A60C8);
  result = nullptr;
  if ( __n )
  {
    v5 = 4 * __n;
    if ( 4 * __n > 0x80 )
      JUMPOUT(0x8A588E);
    result = (std::locale::facet **)std::__node_alloc::_M_allocate(&v5);
    *__allocated_n = v5 >> 2;
  }
  return result;
}


// ===== 8a5e08 std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::vector(uint,std::locale::facet * const&,std::allocator<std::locale::facet *> const&) =====
std::vector<std::locale::facet*> *__fastcall std::vector<std::locale::facet *>::vector(
        std::vector<std::locale::facet*> *const this,
        size_t __n,
        std::locale::facet **__val,
        const std::allocator<std::locale::facet*> *const __a)
{
  int v6; // r6
  std::locale::facet **v7; // r0
  std::locale::facet **v8; // r2
  std::locale::facet **v9; // r3
  int v10; // r6
  size_t __allocated_n; // [sp+4h] [bp-4h] BYREF

  __allocated_n = __n;
  this->_M_start = nullptr;
  this->_M_finish = nullptr;
  this->_M_end_of_storage._M_data = nullptr;
  v6 = __n;
  v7 = std::allocator<std::locale::facet *>::_M_allocate(
         (std::allocator<std::locale::facet*> *const)&this->_M_end_of_storage,
         __n,
         &__allocated_n);
  v6 *= 4;
  v8 = (std::locale::facet **)((char *)v7 + v6);
  v9 = &v7[__allocated_n];
  v10 = v6 >> 2;
  this->_M_start = v7;
  this->_M_finish = v7;
  this->_M_end_of_storage._M_data = v9;
  if ( v10 > 0 )
  {
    do
    {
      --v10;
      *v7++ = *__val;
    }
    while ( v10 );
  }
  this->_M_finish = v8;
  return this;
}


// ===== 8a5e4c std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::reserve(uint) =====
void __fastcall std::vector<std::locale::facet *>::reserve(std::vector<std::locale::facet*> *const this, size_t __n)
{
  std::locale::facet **M_start; // r5
  std::locale::facet **M_finish; // r7
  std::locale::facet **v5; // r6
  std::locale::facet **v6; // r0
  size_t v7; // r1
  std::locale::facet **v8; // r3
  size_t __allocated_n[2]; // [sp+4h] [bp-8h] BYREF

  __allocated_n[0] = __n;
  M_start = this->_M_start;
  if ( __n > this->_M_end_of_storage._M_data - this->_M_start )
  {
    if ( __n > 0x3FFFFFFF )
    {
      std::__stl_throw_length_error("vector");
      M_start = this->_M_start;
      __n = __allocated_n[0];
    }
    M_finish = this->_M_finish;
    if ( M_start )
    {
      v5 = std::allocator<std::locale::facet *>::_M_allocate(
             (std::allocator<std::locale::facet*> *const)&this->_M_end_of_storage,
             __n,
             __allocated_n);
      if ( M_finish != M_start )
        JUMPOUT(0x8A586C);
      v6 = this->_M_start;
      if ( this->_M_start )
      {
        v7 = 4 * (this->_M_end_of_storage._M_data - v6);
        if ( v7 > 0x80 )
          JUMPOUT(0x8A62B4);
        std::__node_alloc::_M_deallocate(v6, v7);
      }
    }
    else
    {
      v5 = std::allocator<std::locale::facet *>::_M_allocate(
             (std::allocator<std::locale::facet*> *const)&this->_M_end_of_storage,
             __n,
             __allocated_n);
    }
    v8 = &v5[__allocated_n[0]];
    this->_M_start = v5;
    this->_M_finish = &v5[M_finish - M_start];
    this->_M_end_of_storage._M_data = v8;
  }
}


// ===== 8a5ef0 std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::_M_assign_aux<std::locale::facet **>(std::locale::facet **,std::locale::facet **,std::forward_iterator_tag const&) =====
void __fastcall std::vector<std::locale::facet *>::_M_assign_aux<std::locale::facet **>(
        std::vector<std::locale::facet*> *const this,
        std::locale::facet **__first,
        std::locale::facet **__last,
        const std::forward_iterator_tag *const a4)
{
  int v5; // r8
  size_t v6; // r6
  std::locale::facet **M_start; // r3
  std::locale::facet **M_finish; // r0
  unsigned int v11; // r2
  std::locale::facet **v12; // r9
  std::locale::facet **v13; // r3
  size_t __allocated_n[2]; // [sp+4h] [bp-8h] BYREF

  v5 = (char *)__last - (char *)__first;
  v6 = __last - __first;
  M_start = this->_M_start;
  if ( v6 > this->_M_end_of_storage._M_data - this->_M_start )
  {
    __allocated_n[0] = __last - __first;
    v12 = std::allocator<std::locale::facet *>::_M_allocate(
            (std::allocator<std::locale::facet*> *const)&this->_M_end_of_storage,
            v6,
            __allocated_n);
    if ( __first != __last )
      goto LABEL_11;
    std::vector<std::locale::facet *>::_M_clear(this);
    v13 = &v12[__allocated_n[0]];
    this->_M_start = v12;
    this->_M_finish = &v12[v6];
    this->_M_end_of_storage._M_data = v13;
  }
  else
  {
    M_finish = this->_M_finish;
    v11 = M_finish - M_start;
    if ( v6 <= v11 )
    {
      if ( v5 )
        goto LABEL_11;
      this->_M_finish = M_start;
    }
    else
    {
      if ( 4 * v11 || __last != &__first[v11] )
LABEL_11:
        JUMPOUT(0x8A586C);
      this->_M_finish = M_finish;
    }
  }
}


// ===== 8a5f98 std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::operator=(std::vector<std::locale::facet *,std::allocator<std::locale::facet *>> const&) =====
std::vector<std::locale::facet*> *__fastcall std::vector<std::locale::facet *>::operator=(
        std::vector<std::locale::facet*> *const this,
        const std::vector<std::locale::facet*> *const __x)
{
  std::locale::facet **M_start; // r5
  std::locale::facet **v4; // r8
  std::locale::facet **M_finish; // r9
  int v6; // r2
  unsigned int v7; // r7
  unsigned int v8; // r1
  std::locale::facet **v10; // r1
  std::locale::facet **v11; // r5
  size_t v12; // r3
  size_t __allocated_n; // [sp+4h] [bp-4h] BYREF

  if ( __x != this )
  {
    M_start = this->_M_start;
    v4 = __x->_M_start;
    M_finish = __x->_M_finish;
    v6 = (char *)M_finish - (char *)__x->_M_start;
    v7 = v6 >> 2;
    if ( v6 >> 2 > (unsigned int)(this->_M_end_of_storage._M_data - this->_M_start) )
    {
      __allocated_n = v6 >> 2;
      v11 = std::allocator<std::locale::facet *>::_M_allocate(
              (std::allocator<std::locale::facet*> *const)&this->_M_end_of_storage,
              v6 >> 2,
              &__allocated_n);
      if ( v4 == M_finish )
      {
        std::vector<std::locale::facet *>::_M_clear(this);
        v12 = __allocated_n;
        this->_M_start = v11;
        this->_M_end_of_storage._M_data = &v11[v12];
        this->_M_finish = &v11[v7];
        return this;
      }
    }
    else
    {
      v8 = this->_M_finish - M_start;
      if ( v7 <= v8 )
      {
        if ( v6 )
          JUMPOUT(0x8A5F3A);
LABEL_5:
        this->_M_finish = &M_start[v7];
        return this;
      }
      v10 = &v4[v8];
      if ( v10 != v4 )
        JUMPOUT(0x8A5F3C);
      if ( M_finish == v10 )
        goto LABEL_5;
    }
    JUMPOUT(0x8A586A);
  }
  return this;
}


// ===== 8a606c std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::_M_fill_insert(std::locale::facet **,uint,std::locale::facet * const&) =====
void __fastcall std::vector<std::locale::facet *>::_M_fill_insert(
        std::vector<std::locale::facet*> *const this,
        std::locale::facet **__pos,
        size_t __n,
        std::locale::facet **__x)
{
  std::locale::facet **v8; // r0
  std::locale::facet **v9; // r8
  size_t v10; // r3
  std::locale::facet **v11; // r2
  std::locale::facet **v12; // r6
  std::locale::facet **M_start; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t __allocated_n; // [sp+8h] [bp-Ch] BYREF
  std::__false_type v17; // [sp+Ch] [bp-8h] BYREF

  if ( __n )
  {
    if ( __n <= this->_M_end_of_storage._M_data - this->_M_finish )
    {
      std::vector<std::locale::facet *>::_M_fill_insert_aux(this, __pos, __n, __x, &v17);
    }
    else
    {
      __allocated_n = std::vector<std::locale::facet *>::_M_compute_next_size(this, __n);
      v8 = std::allocator<std::locale::facet *>::_M_allocate(
             (std::allocator<std::locale::facet*> *const)&this->_M_end_of_storage,
             __allocated_n,
             &__allocated_n);
      v9 = v8;
      if ( __pos != this->_M_start )
        JUMPOUT(0x8A5F3C);
      v10 = __n;
      v11 = v8;
      do
      {
        --v10;
        *v11++ = *__x;
      }
      while ( v10 );
      v12 = &v8[__n];
      if ( this->_M_finish != __pos )
        JUMPOUT(0x8A5F3A);
      M_start = this->_M_start;
      if ( this->_M_start )
      {
        v14 = 4 * (this->_M_end_of_storage._M_data - M_start);
        if ( v14 > 0x80 )
          JUMPOUT(0x8A62B4);
        std::__node_alloc::_M_deallocate(M_start, v14);
      }
      v15 = __allocated_n;
      this->_M_start = v9;
      this->_M_finish = v12;
      this->_M_end_of_storage._M_data = &v9[v15];
    }
  }
}


// ===== 8a612c std::vector<std::locale::facet *,std::allocator<std::locale::facet *>>::resize(uint,std::locale::facet * const&) =====
void __fastcall std::vector<std::locale::facet *>::resize(
        std::vector<std::locale::facet*> *const this,
        size_t __new_size,
        std::locale::facet **__x)
{
  std::locale::facet **M_finish; // r4
  unsigned int v5; // r2
  std::locale::facet **v6; // r5

  M_finish = this->_M_finish;
  v5 = M_finish - this->_M_start;
  if ( __new_size >= v5 )
  {
    std::vector<std::locale::facet *>::_M_fill_insert(this, this->_M_finish, __new_size - v5, __x);
  }
  else
  {
    v6 = &this->_M_start[__new_size];
    if ( v6 != M_finish )
      this->_M_finish = v6;
  }
}


// ===== 8a6154 std::_Locale_impl::insert(std::locale::facet *,std::locale::id const&) =====
std::locale::facet *__fastcall std::_Locale_impl::insert(
        std::_Locale_impl *const this,
        std::locale::facet *f,
        const std::locale::id *const n)
{
  std::locale::facet *v4; // r4
  size_t M_index; // r1
  std::locale::facet **M_start; // r3
  std::locale::facet **v9; // r0
  std::locale::facet **v10; // r5
  std::locale::facet *__x; // [sp+4h] [bp-4h] BYREF

  v4 = f;
  if ( f )
  {
    M_index = n->_M_index;
    if ( n->_M_index )
    {
      M_start = this->facets_vec._M_start;
      if ( M_index >= this->facets_vec._M_finish - M_start )
      {
        __x = nullptr;
        std::vector<std::locale::facet *>::resize(&this->facets_vec, M_index + 1, &__x);
        M_index = n->_M_index;
        M_start = this->facets_vec._M_start;
      }
      v9 = &M_start[M_index];
      if ( v4 != *v9 )
      {
        std::_release_facet(v9);
        v10 = &this->facets_vec._M_start[n->_M_index];
        *v10 = std::_get_facet(v4);
      }
    }
    else
    {
      return nullptr;
    }
  }
  return v4;
}


// ===== 8a61b4 std::_Locale_impl::insert(std::_Locale_impl*,std::locale::id const&) =====
void __fastcall std::_Locale_impl::insert(
        std::_Locale_impl *const this,
        std::_Locale_impl *from,
        const std::locale::id *const n)
{
  size_t M_index; // r3
  std::locale::facet **M_start; // r4

  M_index = n->_M_index;
  if ( n->_M_index )
  {
    M_start = from->facets_vec._M_start;
    if ( M_index < from->facets_vec._M_finish - M_start )
      std::_Locale_impl::insert(this, M_start[M_index], n);
  }
}


// ===== 8a61d4 std::_Locale_impl::insert_messages_facets(char const*&,char *,_Locale_name_hint *) =====
_Locale_name_hint *__fastcall std::_Locale_impl::insert_messages_facets(
        std::_Locale_impl *const this,
        const char **const name,
        char *buf,
        _Locale_name_hint *hint)
{
  const char *v5; // r0
  std::_Locale_impl *M_impl; // r5
  int v11; // [sp+4h] [bp-8h] BYREF

  v5 = *name;
  if ( !**name )
  {
    v5 = Locale_messages_default(buf);
    *name = v5;
  }
  if ( v5 && *v5 && (*v5 != 67 || v5[1]) )
  {
    if ( std::priv::__acquire_messages(name, buf, hint, &v11) )
      JUMPOUT(0x8A688E);
    if ( v11 == 4 )
      JUMPOUT(0x8A60C8);
  }
  else
  {
    M_impl = std::locale::classic()->_M_impl;
    std::_Locale_impl::insert(this, M_impl, &std::messages<char>::id);
    std::_Locale_impl::insert(this, M_impl, &std::messages<wchar_t>::id);
  }
  return hint;
}


// ===== 8a62f0 std::_Locale_impl::insert_monetary_facets(char const*&,char *,_Locale_name_hint *) =====
_Locale_name_hint *__fastcall std::_Locale_impl::insert_monetary_facets(
        std::_Locale_impl *const this,
        const char **const name,
        char *buf,
        _Locale_name_hint *hint)
{
  std::_Locale_impl *M_impl; // r7
  const char *v9; // r3
  _Locale_monetary *v11; // r0
  int v12; // [sp+Ch] [bp-8h] BYREF

  if ( !**name )
    *name = Locale_monetary_default(buf);
  M_impl = std::locale::classic()->_M_impl;
  std::_Locale_impl::insert(this, M_impl, &std::money_get<char,std::istreambuf_iterator<char>>::id);
  std::_Locale_impl::insert(this, M_impl, &std::money_put<char,std::ostreambuf_iterator<char>>::id);
  std::_Locale_impl::insert(this, M_impl, &std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
  std::_Locale_impl::insert(this, M_impl, &std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  v9 = *name;
  if ( *name && *v9 && (*v9 != 67 || v9[1]) )
  {
    v11 = std::priv::__acquire_monetary(name, buf, hint, &v12);
    if ( v11 )
    {
      if ( !hint )
        Locale_get_monetary_hint(v11);
      JUMPOUT(0x8A6890);
    }
    if ( v12 == 4 )
      JUMPOUT(0x8A60C8);
  }
  else
  {
    std::_Locale_impl::insert(this, M_impl, &std::moneypunct<char,false>::id);
    std::_Locale_impl::insert(this, M_impl, &std::moneypunct<char,true>::id);
    std::_Locale_impl::insert(this, M_impl, &std::moneypunct<wchar_t,false>::id);
    std::_Locale_impl::insert(this, M_impl, &std::moneypunct<wchar_t,true>::id);
  }
  return hint;
}


// ===== 8a653c std::_Locale_impl::insert_collate_facets(char const*&,char *,_Locale_name_hint *) =====
_Locale_name_hint *__fastcall std::_Locale_impl::insert_collate_facets(
        std::_Locale_impl *const this,
        const char **const name,
        char *buf,
        _Locale_name_hint *hint)
{
  const char *v5; // r0
  std::_Locale_impl *M_impl; // r5
  _Locale_collate *v11; // r0
  int v12; // [sp+Ch] [bp-8h] BYREF

  v5 = *name;
  if ( !**name )
  {
    v5 = Locale_collate_default(buf);
    *name = v5;
  }
  if ( v5 && *v5 && (*v5 != 67 || v5[1]) )
  {
    v11 = std::priv::__acquire_collate(name, buf, hint, &v12);
    if ( v11 )
    {
      if ( !hint )
        Locale_get_collate_hint(v11);
      JUMPOUT(0x8A6890);
    }
    if ( v12 == 4 )
      JUMPOUT(0x8A60C8);
  }
  else
  {
    M_impl = std::locale::classic()->_M_impl;
    std::_Locale_impl::insert(this, M_impl, &std::collate<char>::id);
    std::_Locale_impl::insert(this, M_impl, &std::collate<wchar_t>::id);
  }
  return hint;
}


// ===== 8a6698 std::_Locale_impl::insert_time_facets(char const*&,char *,_Locale_name_hint *) =====
_Locale_name_hint *__fastcall std::_Locale_impl::insert_time_facets(
        std::_Locale_impl *const this,
        const char **const name,
        char *buf,
        _Locale_name_hint *hint)
{
  const char *v5; // r0
  std::_Locale_impl *M_impl; // r6
  _Locale_time *v11; // r0
  int v12; // [sp+Ch] [bp-8h] BYREF

  v5 = *name;
  if ( !**name )
  {
    v5 = Locale_time_default(buf);
    *name = v5;
  }
  if ( v5 && *v5 && (*v5 != 67 || v5[1]) )
  {
    v11 = std::priv::__acquire_time(name, buf, hint, &v12);
    if ( v11 )
    {
      if ( !hint )
        Locale_get_time_hint(v11);
      JUMPOUT(0x8A6890);
    }
    if ( v12 == 4 )
      JUMPOUT(0x8A60C8);
  }
  else
  {
    M_impl = std::locale::classic()->_M_impl;
    std::_Locale_impl::insert(this, M_impl, &std::time_get<char,std::istreambuf_iterator<char>>::id);
    std::_Locale_impl::insert(this, M_impl, &std::time_put<char,std::ostreambuf_iterator<char>>::id);
    std::_Locale_impl::insert(this, M_impl, &std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    std::_Locale_impl::insert(this, M_impl, &std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  }
  return hint;
}

