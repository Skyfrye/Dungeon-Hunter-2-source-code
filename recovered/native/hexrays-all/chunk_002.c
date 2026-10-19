// ===== 320358 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        int a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int v4; // r0
  unsigned int result; // r0

  v2 = *(_DWORD *)(a1 + 16) - *(_DWORD *)(a1 + 20);
  if ( -2 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  v4 = v2 + 1;
  if ( a2 < v2 )
    result = v4 + v2;
  else
    result = v4 + a2;
  if ( result == -1 || result < v2 )
    return -2;
  return result;
}


// ===== 3203bc CMsgDropLoot::ReadData(NetBitStream &) =====
int __fastcall CMsgDropLoot::ReadData(CMsgDropLoot *this, NetBitStream *a2)
{
  char *v2; // r7
  int v5; // r6
  void *v6; // r0
  signed int v7; // r0
  void *v8; // r0
  unsigned int v9; // r2

  v2 = (char *)this + 80;
  v5 = (*(int (__fastcall **)(CMsgDropLoot *))(*(_DWORD *)this + 8))(this);
  NetBitStream::ReadByteArray(a2, v2, 0x18u);
  v6 = *((void **)this + 26);
  if ( v6 )
  {
    CustomFree(v6);
    *((_DWORD *)this + 26) = 0;
  }
  v7 = *((_DWORD *)this + 25);
  if ( v7 > 0 )
  {
    v8 = operator new[](v7, 2);
    v9 = *((_DWORD *)this + 25);
    *((_DWORD *)this + 26) = v8;
    NetBitStream::ReadByteArray(a2, v8, v9);
  }
  return v5;
}


// ===== 320434 CMsgQuestsSync::ReadData(NetBitStream &) =====
int __fastcall CMsgQuestsSync::ReadData(CMsgQuestsSync *this, NetBitStream *a2)
{
  char *v2; // r7
  int v5; // r6
  void *v6; // r0
  void *v7; // r0
  unsigned int v8; // r2

  v2 = (char *)this + 80;
  v5 = (*(int (__fastcall **)(CMsgQuestsSync *))(*(_DWORD *)this + 8))(this);
  NetBitStream::ReadByteArray(a2, v2, 8u);
  v6 = *((void **)this + 22);
  if ( v6 )
  {
    CustomFree(v6);
    *((_DWORD *)this + 22) = 0;
  }
  v7 = operator new[](*((_DWORD *)this + 20), 2);
  v8 = *((_DWORD *)this + 20);
  *((_DWORD *)this + 22) = v7;
  NetBitStream::ReadByteArray(a2, v7, v8);
  return v5;
}


// ===== 3204a4 CMsgDropLoot::WriteData(NetBitStream &) =====
int __fastcall CMsgDropLoot::WriteData(CMsgDropLoot *this, NetBitStream *a2)
{
  char *v2; // r7
  int v5; // r6
  const void *v6; // r1
  signed int v7; // r2

  v2 = (char *)this + 80;
  v5 = (*(int (__fastcall **)(CMsgDropLoot *))(*(_DWORD *)this + 8))(this);
  NetBitStream::WriteByteArray(a2, v2, 0x18u);
  v6 = *((const void **)this + 26);
  if ( v6 )
  {
    v7 = *((_DWORD *)this + 25);
    if ( v7 > 0 )
      NetBitStream::WriteByteArray(a2, v6, v7);
  }
  return v5;
}


// ===== 3204fc CMsgQuestsSync::WriteData(NetBitStream &) =====
int __fastcall CMsgQuestsSync::WriteData(CMsgQuestsSync *this, NetBitStream *a2)
{
  int v2; // r6
  char *v5; // r7

  v2 = *((_DWORD *)this + 22);
  if ( v2 )
  {
    v5 = (char *)this + 80;
    v2 = (*(int (__fastcall **)(CMsgQuestsSync *))(*(_DWORD *)this + 8))(this);
    NetBitStream::WriteByteArray(a2, v5, 8u);
    NetBitStream::WriteByteArray(a2, *((const void **)this + 22), *((_DWORD *)this + 20));
  }
  return v2;
}


// ===== 320550 TimeNow(void) =====
int TimeNow()
{
  struct timeval v1; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v1, nullptr);
  return v1.tv_usec / 1000 + 1000 * v1.tv_sec;
}


// ===== 320590 Application::IsInternetAccessEnabled(void) =====
bool __fastcall Application::IsInternetAccessEnabled(Application *this)
{
  return nativeIsWifiAlive(this) != 0;
}


// ===== 3205a4 Application::SendGLHiScore(void) =====
int __fastcall Application::SendGLHiScore(Application *this)
{
  int result; // r0
  int v3; // r6
  CharProperties *v4; // r6
  int Int; // r7

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
  v3 = *(_DWORD *)(result + 1632);
  if ( v3 )
  {
    v4 = (CharProperties *)(v3 + 1376);
    Int = CharProperties::PROPS_GetInt(v4, 24, 0);
    result = Application::IsInternetAccessEnabled(this);
    if ( result )
    {
      byte_99FC31 = 1;
      result = CXPlayerManager::UploadMyScore((CXPlayerManager *)&Singleton<CXPlayerManager>::s_inst, Int);
      if ( result )
        return CharProperties::PROPS_SetInt(v4, 24, 0);
    }
    else
    {
      byte_99FC31 = 0;
    }
  }
  return result;
}


// ===== 320654 Application::IsWifiEnabled(void) =====
bool __fastcall Application::IsWifiEnabled(Application *this)
{
  return nativeIsWifiAlive() != 0;
}


// ===== 320668 Application::IsOnlineGame(void) =====
int __fastcall Application::IsOnlineGame(Application *this)
{
  return *(unsigned __int8 *)(GetOnline() + 5);
}


// ===== 320678 Application::IsUsingUncompiledData(char const*) =====
int __fastcall Application::IsUsingUncompiledData(Application *this, const char *a2)
{
  int v3; // r4

  if ( *((_DWORD *)this + 51) == *((_DWORD *)this + 52) )
    return 0;
  v3 = 0;
  while ( !LC_API_STRSTR_0(a2, s_supportedUncompiledData[v3++]) )
  {
    if ( v3 == 4 )
      return 0;
  }
  return 1;
}


// ===== 3206d0 Application::GetTitleString(char *,int) =====
void __fastcall Application::GetTitleString(Application *this, char *a2, int a3)
{
  bool v3; // cc
  StringManager *v6; // r6
  int Constant; // r0
  const char *String; // r0

  v3 = (int)a2 <= 0;
  if ( a2 )
    v3 = a3 <= 0;
  if ( !v3 )
  {
    if ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) == 4 )
    {
      LC_API_STRNCPY_0(a2, "Dark Quest 2", a3);
    }
    else
    {
      v6 = (StringManager *)dword_99F760;
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "MENU_GAME_TITLE");
      String = (const char *)StringManager::getString(v6, Constant);
      LC_API_STRNCPY_0(a2, String, a3);
    }
  }
}


// ===== 320774 Application::GetVersionBuild(void) =====
int __fastcall Application::GetVersionBuild(Application *this)
{
  char *v1; // r0
  __int16 v3; // [sp+4h] [bp-14h] BYREF
  char v4[12]; // [sp+8h] [bp-10h] BYREF

  v3 = 46;
  Application::GetVersionString(this, v4, 10, 0);
  v4[5] = 0;
  strtok(v4, (const char *)&v3);
  strtok(nullptr, (const char *)&v3);
  v1 = strtok(nullptr, (const char *)&v3);
  return LC_API_ATOI_0(v1);
}


// ===== 320808 Application::GetVersionMinor(void) =====
int __fastcall Application::GetVersionMinor(Application *this)
{
  char *v1; // r0
  __int16 v3; // [sp+4h] [bp-14h] BYREF
  char v4[12]; // [sp+8h] [bp-10h] BYREF

  v3 = 46;
  Application::GetVersionString(this, v4, 10, 0);
  v4[5] = 0;
  strtok(v4, (const char *)&v3);
  v1 = strtok(nullptr, (const char *)&v3);
  return LC_API_ATOI_0(v1);
}


// ===== 320890 Application::GetVersionMajor(void) =====
int __fastcall Application::GetVersionMajor(Application *this)
{
  char *v1; // r0
  char v3[12]; // [sp+0h] [bp-14h] BYREF

  Application::GetVersionString(this, v3, 10, 0);
  v3[5] = 0;
  v1 = strtok(v3, ".");
  return LC_API_ATOI_0(v1);
}


// ===== 320908 glitch::io::CIntAttribute::setString(char const*) =====
int __fastcall glitch::io::CIntAttribute::setString(glitch::io::CIntAttribute *this, const char *a2)
{
  int result; // r0

  result = LC_API_ATOI_0(a2);
  *((_DWORD *)this + 9) = result;
  return result;
}


// ===== 320920 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) =====
void __fastcall std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        _DWORD *a1,
        unsigned int a2)
{
  int v3; // r5
  char *v4; // r0

  if ( a2 <= 0x3FFFFFFF && a2 )
  {
    if ( a2 > 0x10 )
    {
      v3 = 4 * a2;
      v4 = (char *)GlitchAlloc(4 * a2, 0);
      *a1 = &v4[v3];
      a1[17] = v4;
      a1[16] = v4;
    }
  }
  else
  {
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  }
}


// ===== 32097c glitch::io::IAttribute::getStringW(void) =====
glitch::io::IAttribute *__fastcall glitch::io::IAttribute::getStringW(glitch::io::IAttribute *this)
{
  *((_DWORD *)this + 16) = this;
  *((_DWORD *)this + 17) = this;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    0x10u);
  **((_DWORD **)this + 16) = 0;
  return this;
}


// ===== 3209a8 std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) =====
void __fastcall std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        _DWORD *a1,
        size_t a2)
{
  char *v4; // r0

  if ( a2 )
  {
    if ( a2 > 0x10 )
    {
      v4 = (char *)GlitchAlloc(a2, 0);
      *a1 = &v4[a2];
      a1[5] = v4;
      a1[4] = v4;
    }
  }
  else
  {
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  }
}


// ===== 3209f8 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(wchar_t const*,wchar_t const*,std::forward_iterator_tag const&) =====
int __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(
        _DWORD *a1,
        int a2,
        int a3)
{
  int v3; // r5
  int result; // r0
  _BYTE *v7; // r1
  int i; // r3

  v3 = (a3 - a2) >> 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    v3 + 1);
  v7 = (_BYTE *)a1[5];
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
      v7[i] = *(_DWORD *)(a2 + 4 * i);
    v7 += i;
  }
  a1[4] = v7;
  *v7 = 0;
  return result;
}


// ===== 320a4c std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(char const*,char const*) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
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
      size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
               (int)result,
               v6);
      v15 = GlitchAlloc(size, 0);
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
        GlitchFree(v22);
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


// ===== 320b88 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(char const*,char const*) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        _DWORD *a1,
        _BYTE *a2,
        _BYTE *a3)
{
  _BYTE *v4; // r3
  _BYTE *v5; // r0
  size_t v6; // r5
  size_t v8; // r2
  char *v10; // r2

  v4 = (_BYTE *)a1[4];
  v5 = (_BYTE *)a1[5];
  v6 = a3 - a2;
  v8 = v4 - v5;
  if ( v6 > v4 - v5 )
  {
    if ( v8 )
    {
      memcpy(v5, a2, v8);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        a1,
        &a2[a1[4] - a1[5]],
        a3);
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        a1,
        a2,
        a3);
    }
  }
  else
  {
    if ( v6 )
    {
      memcpy(v5, a2, v6);
      v5 = (_BYTE *)a1[5];
      v4 = (_BYTE *)a1[4];
      v10 = &v5[v6];
      if ( &v5[v6] == v4 )
        return a1;
      goto LABEL_4;
    }
    v10 = v5;
    if ( v5 != v4 )
    {
LABEL_4:
      v5[v6] = *v4;
      a1[4] += v10 - v4;
    }
  }
  return a1;
}


// ===== 320c48 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(wchar_t const*,wchar_t const*) =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        _DWORD *result,
        _DWORD *a2,
        _DWORD *a3)
{
  _DWORD *v4; // r6
  _DWORD *v5; // r3
  signed int v6; // r5
  bool v7; // zf
  int v8; // r1
  int v9; // r3
  unsigned int v10; // r3
  signed int v11; // r7
  int v12; // r2
  int v13; // r3
  _DWORD *v14; // r3
  int v15; // t1
  size_t size; // r8
  _DWORD *v17; // r9
  int v18; // r0
  int v19; // r10
  _DWORD *v20; // r10
  int v21; // r2
  int v22; // r3
  int v23; // r3
  _DWORD *v24; // r0

  v4 = result;
  if ( a2 != a3 )
  {
    v5 = (_DWORD *)result[17];
    v6 = a3 - a2;
    v7 = v5 == result;
    if ( v5 != result )
      v5 = (_DWORD *)*result;
    v8 = result[16];
    if ( v7 )
      v9 = (v8 - (int)result) >> 2;
    else
      v9 = (int)v5 - v8;
    if ( v7 )
      v10 = 16 - v9;
    else
      v10 = v9 >> 2;
    v11 = v6;
    if ( v6 >= v10 )
    {
      size = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
               (int)result,
               v6);
      v17 = GlitchAlloc(size * 4, 0);
      v18 = v4[17];
      v19 = (v4[16] - v18) >> 2;
      if ( v19 > 0 )
      {
        v21 = (v4[16] - v18) >> 2;
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
      v24 = (_DWORD *)v4[17];
      if ( v4 != v24 && v24 )
        GlitchFree(v24);
      *v4 = &v17[size];
      v4[16] = v20;
      v4[17] = v17;
      return v4;
    }
    else
    {
      v12 = a3 - (a2 + 1);
      v13 = result[16];
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
        v13 = result[16];
      }
      *(_DWORD *)(v13 + 4 * v6) = 0;
      *(_DWORD *)result[16] = *a2;
      result[16] += 4 * v6;
    }
  }
  return result;
}


// ===== 320da4 Application::ComputeDt(void) =====
float __fastcall Application::ComputeDt(Application *this)
{
  int RealTime; // r0
  int v3; // r3
  unsigned int v4; // r0
  int v5; // r0
  float v6; // r5
  float result; // r0

  RealTime = glitch::os::Timer::getRealTime(this);
  v3 = *((_DWORD *)this + 34);
  *((_DWORD *)this + 34) = RealTime;
  v4 = RealTime - v3;
  *((_DWORD *)this + 35) = v4;
  v5 = (int)(float)((float)v4 * *((float *)this + 39));
  *((_DWORD *)this + 35) = v5;
  v6 = (float)((float)(unsigned int)v5 * *((float *)this + 38)) + *((float *)this + 37);
  *((_DWORD *)this + 36) = (int)v6;
  result = v6 - (float)(unsigned int)(int)v6;
  *((float *)this + 37) = result;
  return result;
}


// ===== 320e0c Application::HasSavedOption(char const*) =====
int __fastcall Application::HasSavedOption(SavegameManager **this, const char *a2)
{
  return SavegameManager::hasOption(*(this + 19), a2);
}


// ===== 320e14 Application::IsSavedOptionOn(char const*) =====
int __fastcall Application::IsSavedOptionOn(Application *this, const char *a2)
{
  SavegameManager *v2; // r4
  int result; // r0

  v2 = *((SavegameManager **)this + 19);
  result = SavegameManager::hasOption(v2, a2);
  if ( result )
    return SavegameManager::isOptionToggled(v2, a2);
  return result;
}


// ===== 320e44 Application::GetSavedOption(char const*) =====
int __fastcall Application::GetSavedOption(Application *this, const char *a2)
{
  SavegameManager *v2; // r4
  int result; // r0

  v2 = *((SavegameManager **)this + 19);
  result = SavegameManager::hasOption(v2, a2);
  if ( result )
    return SavegameManager::getOption(v2, a2);
  return result;
}


// ===== 320e74 Application::IsUsingDPad(void) =====
bool __fastcall Application::IsUsingDPad(Application *this)
{
  return Application::GetSavedOption(this, "DPad") != 0;
}


// ===== 320e94 Application::SwitchGSInitBackground(void) =====
// attributes: thunk
int __fastcall Application::SwitchGSInitBackground(Application *this)
{
  return GSInit::SwitchBackground(this);
}


// ===== 320e98 OnlineSingleton<OnlineGameState>::GetInstance(void) =====
int OnlineSingleton<OnlineGameState>::GetInstance()
{
  OnlineGameState *v0; // r6

  v0 = (OnlineGameState *)OnlineSingleton<OnlineGameState>::m_instance;
  if ( !OnlineSingleton<OnlineGameState>::m_instance )
  {
    v0 = (OnlineGameState *)operator new(0x5Cu, 0);
    OnlineGameState::OnlineGameState(v0);
    OnlineSingleton<OnlineGameState>::m_instance = (int)v0;
    if ( !v0 )
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
          "m_instance != 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Multiplayer/MultiplayerStateMachine.h",
          152);
        return OnlineSingleton<OnlineGameState>::m_instance;
      }
    }
  }
  return (int)v0;
}


// ===== 320f5c Application::IsLevelRunning(void) =====
bool __fastcall Application::IsLevelRunning(Application *this)
{
  if ( !*((_DWORD *)this + 6) )
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
        "m_stateMachine",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Application.cpp",
        2008);
    }
  }
  return Application::GetCurrentLevel(this) != 0;
}


// ===== 321000 Application::IsLevelPaused(bool) =====
int __fastcall Application::IsLevelPaused(Application *this, int a2)
{
  int v5; // r3
  int v6; // r2
  int v7; // r3
  int v8; // r3
  int v9; // r2
  int v10; // r3

  if ( !*((_DWORD *)this + 6) )
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
        "m_stateMachine",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Application.cpp",
        2028);
    }
  }
  if ( a2 )
  {
    if ( !Application::IsLevelRunning(this) )
      return 0;
    v8 = *((_DWORD *)this + 6);
    v9 = *(_DWORD *)(v8 + 12);
    v10 = *(_DWORD *)(v8 + 16);
    if ( (unsigned int)(v10 - v9) >> 3 )
      return *(_DWORD *)(v10 - 8) != (_DWORD)&GSLevel::s_gsLevel;
    return 1;
  }
  if ( !Application::IsLevelRunning(this) )
    return 0;
  v5 = *((_DWORD *)this + 6);
  v6 = *(_DWORD *)(v5 + 12);
  v7 = *(_DWORD *)(v5 + 16);
  if ( !((unsigned int)(v7 - v6) >> 3) || *(_UNKNOWN **)(v7 - 8) != &GSLevel::s_gsLevel )
    return 1;
  return (unsigned __int8)MenuBase::s_igmOpened;
}


// ===== 321140 Application::LoadWorldMap(int) =====
int __fastcall Application::LoadWorldMap(Application *this, GSLevelMap *a2)
{
  int v2; // r4
  int v3; // r1

  v2 = *((_DWORD *)this + 6);
  v3 = GSLevelMap::Inst(a2, (int)a2);
  return StateMachine::SwitchState(v2, v3, 0);
}


// ===== 321164 Application::_CheckGamepad(void) =====
void __fastcall Application::_CheckGamepad(EventManager **this)
{
  InputManager *Instance; // r0
  float *FirstConnectedGamepad; // r0
  float *v4; // r4
  int v5; // r7
  _BOOL4 v6; // r0
  int v7; // r3
  int CurrentLevel; // r7
  EventManager *v9; // r0
  EventManager *v10; // r0
  int v11; // r12
  EventManager *v12; // r0
  int v13; // r12
  EventManager *v14; // r0
  int v15; // r12
  EventManager *v16; // r0
  int v17; // r12
  EventManager *v18; // r0
  int v19; // r12
  EventManager *v20; // r0
  int v21; // r12
  EventManager *v22; // r0
  int v23; // r12
  EventManager *v24; // r0
  int v25; // r12
  EventManager *v26; // r0
  int v27; // r12
  EventManager *v28; // r0
  int v29; // r12
  EventManager *v30; // r0
  int v31; // r12
  EventManager *v32; // r0
  int v33; // r12
  EventManager *v34; // r0
  int v35; // r12
  EventManager *v36; // r0
  int v37; // r12
  EventManager *v38; // r0
  int v39; // r12
  EventManager *v40; // r0
  int v41; // r12
  EventManager *v42; // r0
  int v43; // r12
  EventManager *v44; // r0
  int v45; // r12
  EventManager *v46; // r0
  int v47; // r12
  EventManager *v48; // r0
  int v49; // r12
  EventManager *v50; // r0
  int v51; // r12
  EventManager *v52; // r0
  int v53; // r12
  EventManager *v54; // r0
  int v55; // r12
  EventManager *v56; // r0
  int v57; // r12
  EventManager *v58; // r0
  int v59; // r12
  MenuManager *v60; // r0
  MenuFX **MenuByName; // r4
  MenuManager *v62; // r0
  MenuFX **v63; // r5
  unsigned int v64; // r7
  EventManager *v65; // r0
  EventManager *v66; // r0
  int v67; // r3
  int v68; // r3
  int v69; // r3
  int v70; // r3
  EventManager *v71; // r0
  EventManager *v72; // r0
  EventManager *v73; // r0
  EventManager *v74; // r0
  EventManager *v75; // r0
  EventManager *v76; // r0
  _DWORD v77[6]; // [sp+0h] [bp-314h] BYREF
  _DWORD v78[6]; // [sp+18h] [bp-2FCh] BYREF
  _DWORD v79[6]; // [sp+30h] [bp-2E4h] BYREF
  _DWORD v80[6]; // [sp+48h] [bp-2CCh] BYREF
  _DWORD v81[6]; // [sp+60h] [bp-2B4h] BYREF
  _DWORD v82[6]; // [sp+78h] [bp-29Ch] BYREF
  _DWORD v83[6]; // [sp+90h] [bp-284h] BYREF
  _DWORD v84[6]; // [sp+A8h] [bp-26Ch] BYREF
  _DWORD v85[6]; // [sp+C0h] [bp-254h] BYREF
  _DWORD v86[6]; // [sp+D8h] [bp-23Ch] BYREF
  _DWORD v87[6]; // [sp+F0h] [bp-224h] BYREF
  _DWORD v88[6]; // [sp+108h] [bp-20Ch] BYREF
  _DWORD v89[6]; // [sp+120h] [bp-1F4h] BYREF
  _DWORD v90[6]; // [sp+138h] [bp-1DCh] BYREF
  _DWORD v91[6]; // [sp+150h] [bp-1C4h] BYREF
  _DWORD v92[6]; // [sp+168h] [bp-1ACh] BYREF
  _DWORD v93[6]; // [sp+180h] [bp-194h] BYREF
  _DWORD v94[6]; // [sp+198h] [bp-17Ch] BYREF
  _DWORD v95[6]; // [sp+1B0h] [bp-164h] BYREF
  _DWORD v96[6]; // [sp+1C8h] [bp-14Ch] BYREF
  _DWORD v97[6]; // [sp+1E0h] [bp-134h] BYREF
  _DWORD v98[6]; // [sp+1F8h] [bp-11Ch] BYREF
  _DWORD v99[6]; // [sp+210h] [bp-104h] BYREF
  _DWORD v100[6]; // [sp+228h] [bp-ECh] BYREF
  _DWORD v101[6]; // [sp+240h] [bp-D4h] BYREF
  _DWORD v102[6]; // [sp+258h] [bp-BCh] BYREF
  _DWORD v103[4]; // [sp+270h] [bp-A4h] BYREF
  char v104; // [sp+280h] [bp-94h]
  char v105; // [sp+281h] [bp-93h]
  char v106; // [sp+282h] [bp-92h]
  char v107; // [sp+283h] [bp-91h]
  _DWORD v108[4]; // [sp+284h] [bp-90h] BYREF
  char v109; // [sp+294h] [bp-80h]
  char v110; // [sp+295h] [bp-7Fh]
  char v111; // [sp+296h] [bp-7Eh]
  char v112; // [sp+297h] [bp-7Dh]
  _DWORD v113[4]; // [sp+298h] [bp-7Ch] BYREF
  char v114; // [sp+2A8h] [bp-6Ch]
  char v115; // [sp+2A9h] [bp-6Bh]
  char v116; // [sp+2AAh] [bp-6Ah]
  char v117; // [sp+2ABh] [bp-69h]
  _DWORD v118[4]; // [sp+2ACh] [bp-68h] BYREF
  char v119; // [sp+2BCh] [bp-58h]
  char v120; // [sp+2BDh] [bp-57h]
  char v121; // [sp+2BEh] [bp-56h]
  char v122; // [sp+2BFh] [bp-55h]
  _DWORD v123[4]; // [sp+2C0h] [bp-54h] BYREF
  char v124; // [sp+2D0h] [bp-44h]
  char v125; // [sp+2D1h] [bp-43h]
  char v126; // [sp+2D2h] [bp-42h]
  char v127; // [sp+2D3h] [bp-41h]
  _DWORD v128[4]; // [sp+2D4h] [bp-40h] BYREF
  char v129; // [sp+2E4h] [bp-30h]
  char v130; // [sp+2E5h] [bp-2Fh]
  char v131; // [sp+2E6h] [bp-2Eh]
  char v132; // [sp+2E7h] [bp-2Dh]
  _DWORD v133[4]; // [sp+2E8h] [bp-2Ch] BYREF
  char v134; // [sp+2F8h] [bp-1Ch]
  char v135; // [sp+2F9h] [bp-1Bh]
  char v136; // [sp+2FAh] [bp-1Ah]
  char v137; // [sp+2FBh] [bp-19h]
  _DWORD v138[4]; // [sp+2FCh] [bp-18h] BYREF
  char v139; // [sp+30Ch] [bp-8h]
  char v140; // [sp+30Dh] [bp-7h]
  char v141; // [sp+30Eh] [bp-6h]
  char v142; // [sp+30Fh] [bp-5h]

  Instance = (InputManager *)InputManager::GetInstance((InputManager *)this);
  FirstConnectedGamepad = (float *)InputManager::GetFirstConnectedGamepad(Instance);
  v4 = FirstConnectedGamepad;
  if ( !FirstConnectedGamepad )
    return;
  v5 = (int)*(this + 18);
  if ( v5 )
  {
    v6 = FirstConnectedGamepad[182] >= (float)((float)((float)(FirstConnectedGamepad[185] + FirstConnectedGamepad[184])
                                                     + 1.0)
                                             * 0.5);
    if ( v4[182] < (float)((float)((float)(v4[185] + v4[184]) + 1.0) * 0.5) || *((_BYTE *)v4 + 744) )
    {
      if ( !*(_BYTE *)(v5 + 4) )
        goto LABEL_10;
      v64 = glitch::os::Timer::getRealTime((glitch::os::Timer *)v6) - Application::_CheckGamepad(void)::last_time;
      if ( v4[110] >= (float)((float)((float)(v4[113] + v4[112]) + 1.0) * 0.5) && !*((_BYTE *)v4 + 456)
        || v4[302] >= (float)((float)((float)(v4[305] + v4[304]) + 1.0) * 0.5) && !*((_BYTE *)v4 + 1224) )
      {
        v76 = *(this + 5);
        v142 = 0;
        v138[0] = off_95B440;
        v138[3] = 138;
        v138[1] = 0;
        v138[2] = 0;
        v140 = 0;
        v141 = 0;
        v139 = 1;
        EventManager::Raise(v76, (const IEvent *)v138);
        v138[0] = off_95B458;
      }
      if ( v4[94] >= (float)((float)((float)(v4[97] + v4[96]) + 1.0) * 0.5) && !*((_BYTE *)v4 + 392)
        || v4[302] >= (float)((float)((float)(v4[305] + v4[304]) + 1.0) * 0.5) && !*((_BYTE *)v4 + 1224) )
      {
        v75 = *(this + 5);
        v137 = 0;
        v133[0] = off_95B440;
        v133[3] = 137;
        v133[1] = 0;
        v133[2] = 0;
        v135 = 0;
        v136 = 0;
        v134 = 1;
        EventManager::Raise(v75, (const IEvent *)v133);
        v133[0] = off_95B458;
      }
      if ( v4[83] >= (float)((float)((float)(v4[85] + v4[84]) + 1.0) * 0.5) && v64 > 0x63 )
      {
        Application::_CheckGamepad(void)::last_time += v64;
        if ( Application::_CheckGamepad(void)::last_time )
        {
          v65 = *(this + 5);
          v132 = 0;
          v128[0] = off_95B440;
          v128[3] = 135;
          v128[1] = 0;
          v128[2] = 0;
          v130 = 0;
          v131 = 0;
          v129 = 1;
          EventManager::Raise(v65, (const IEvent *)v128);
          v128[0] = off_95B458;
        }
      }
      if ( v4[99] >= (float)((float)((float)(v4[101] + v4[100]) + 1.0) * 0.5) && v64 > 0x63 )
      {
        Application::_CheckGamepad(void)::last_time += v64;
        if ( Application::_CheckGamepad(void)::last_time )
        {
          v66 = *(this + 5);
          v127 = 0;
          v123[0] = off_95B440;
          v123[3] = 136;
          v123[1] = 0;
          v123[2] = 0;
          v125 = 0;
          v126 = 0;
          v124 = 1;
          EventManager::Raise(v66, (const IEvent *)v123);
          v123[0] = off_95B458;
        }
      }
      if ( v4[6] >= (float)((float)((float)(v4[9] + v4[8]) + 1.0) * 0.5) )
      {
        v67 = *((unsigned __int8 *)v4 + 40);
        if ( !*((_BYTE *)v4 + 40) )
        {
          v74 = *(this + 5);
          v122 = *((_BYTE *)v4 + 40);
          v118[1] = v67;
          v118[0] = off_95B440;
          v118[3] = 49;
          v118[2] = v67;
          v120 = v67;
          v121 = v67;
          v119 = 1;
          EventManager::Raise(v74, (const IEvent *)v118);
          v118[0] = off_95B458;
        }
      }
      if ( v4[14] >= (float)((float)((float)(v4[17] + v4[16]) + 1.0) * 0.5) )
      {
        v68 = *((unsigned __int8 *)v4 + 72);
        if ( !*((_BYTE *)v4 + 72) )
        {
          v73 = *(this + 5);
          v117 = *((_BYTE *)v4 + 72);
          v113[1] = v68;
          v113[0] = off_95B440;
          v113[3] = 50;
          v113[2] = v68;
          v115 = v68;
          v116 = v68;
          v114 = 1;
          EventManager::Raise(v73, (const IEvent *)v113);
          v113[0] = off_95B458;
        }
      }
      if ( v4[22] >= (float)((float)((float)(v4[25] + v4[24]) + 1.0) * 0.5) )
      {
        v69 = *((unsigned __int8 *)v4 + 104);
        if ( !*((_BYTE *)v4 + 104) )
        {
          v72 = *(this + 5);
          v112 = *((_BYTE *)v4 + 104);
          v108[1] = v69;
          v108[0] = off_95B440;
          v108[3] = 51;
          v108[2] = v69;
          v110 = v69;
          v111 = v69;
          v109 = 1;
          EventManager::Raise(v72, (const IEvent *)v108);
          v108[0] = off_95B458;
        }
      }
      if ( v4[30] >= (float)((float)((float)(v4[33] + v4[32]) + 1.0) * 0.5) )
      {
        v70 = *((unsigned __int8 *)v4 + 136);
        if ( !*((_BYTE *)v4 + 136) )
        {
          v71 = *(this + 5);
          v107 = *((_BYTE *)v4 + 136);
          v103[1] = v70;
          v103[0] = off_95B440;
          v103[3] = 52;
          v103[2] = v70;
          v105 = v70;
          v106 = v70;
          v104 = 1;
          EventManager::Raise(v71, (const IEvent *)v103);
          v103[0] = off_95B458;
        }
      }
    }
    else
    {
      GSConsole::Toggle((GSConsole *)v6);
    }
    v7 = (int)*(this + 18);
    if ( v7 && *(_BYTE *)(v7 + 4) )
      return;
  }
LABEL_10:
  CurrentLevel = Application::GetCurrentLevel((Application *)this);
  if ( CurrentLevel )
    return;
  if ( v4[6] >= (float)((float)((float)(v4[9] + v4[8]) + 1.0) * 0.5) )
  {
    if ( *((_BYTE *)v4 + 40) )
      goto LABEL_15;
    v9 = *(this + 5);
    CurrentLevel = 1;
    goto LABEL_14;
  }
  if ( *((_BYTE *)v4 + 40) )
  {
    v9 = *(this + 5);
LABEL_14:
    v102[4] = 0;
    v102[0] = off_95B470;
    v102[2] = 0;
    v102[1] = 7;
    v102[3] = CurrentLevel;
    v102[5] = 1065353216;
    EventManager::Raise(v9, (const IEvent *)v102);
    v102[0] = off_95B458;
  }
LABEL_15:
  if ( v4[14] < (float)((float)((float)(v4[17] + v4[16]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 72) )
      goto LABEL_19;
    v10 = *(this + 5);
    v11 = 0;
    goto LABEL_18;
  }
  if ( !*((_BYTE *)v4 + 72) )
  {
    v10 = *(this + 5);
    v11 = 1;
LABEL_18:
    v101[1] = 7;
    v101[3] = v11;
    v101[0] = off_95B470;
    v101[2] = 1;
    v101[4] = 0;
    v101[5] = 1065353216;
    EventManager::Raise(v10, (const IEvent *)v101);
    v101[0] = off_95B458;
  }
LABEL_19:
  if ( v4[22] < (float)((float)((float)(v4[25] + v4[24]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 104) )
      goto LABEL_23;
    v12 = *(this + 5);
    v13 = 0;
    goto LABEL_22;
  }
  if ( !*((_BYTE *)v4 + 104) )
  {
    v12 = *(this + 5);
    v13 = 1;
LABEL_22:
    v100[1] = 7;
    v100[3] = v13;
    v100[0] = off_95B470;
    v100[2] = 2;
    v100[4] = 0;
    v100[5] = 1065353216;
    EventManager::Raise(v12, (const IEvent *)v100);
    v100[0] = off_95B458;
  }
LABEL_23:
  if ( v4[30] < (float)((float)((float)(v4[33] + v4[32]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 136) )
      goto LABEL_27;
    v14 = *(this + 5);
    v15 = 0;
    goto LABEL_26;
  }
  if ( !*((_BYTE *)v4 + 136) )
  {
    v14 = *(this + 5);
    v15 = 1;
LABEL_26:
    v99[1] = 7;
    v99[3] = v15;
    v99[0] = off_95B470;
    v99[2] = 3;
    v99[4] = 0;
    v99[5] = 1065353216;
    EventManager::Raise(v14, (const IEvent *)v99);
    v99[0] = off_95B458;
  }
LABEL_27:
  if ( v4[38] < (float)((float)((float)(v4[41] + v4[40]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 168) )
      goto LABEL_31;
    v16 = *(this + 5);
    v17 = 0;
    goto LABEL_30;
  }
  if ( !*((_BYTE *)v4 + 168) )
  {
    v16 = *(this + 5);
    v17 = 1;
LABEL_30:
    v98[1] = 7;
    v98[3] = v17;
    v98[0] = off_95B470;
    v98[2] = 4;
    v98[4] = 0;
    v98[5] = 1065353216;
    EventManager::Raise(v16, (const IEvent *)v98);
    v98[0] = off_95B458;
  }
LABEL_31:
  if ( v4[46] < (float)((float)((float)(v4[49] + v4[48]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 200) )
      goto LABEL_35;
    v18 = *(this + 5);
    v19 = 0;
    goto LABEL_34;
  }
  if ( !*((_BYTE *)v4 + 200) )
  {
    v18 = *(this + 5);
    v19 = 1;
LABEL_34:
    v97[1] = 7;
    v97[3] = v19;
    v97[0] = off_95B470;
    v97[2] = 5;
    v97[4] = 0;
    v97[5] = 1065353216;
    EventManager::Raise(v18, (const IEvent *)v97);
    v97[0] = off_95B458;
  }
LABEL_35:
  if ( v4[54] < (float)((float)((float)(v4[57] + v4[56]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 232) )
      goto LABEL_39;
    v20 = *(this + 5);
    v21 = 0;
    goto LABEL_38;
  }
  if ( !*((_BYTE *)v4 + 232) )
  {
    v20 = *(this + 5);
    v21 = 1;
LABEL_38:
    v96[1] = 7;
    v96[3] = v21;
    v96[0] = off_95B470;
    v96[2] = 6;
    v96[4] = 0;
    v96[5] = 1065353216;
    EventManager::Raise(v20, (const IEvent *)v96);
    v96[0] = off_95B458;
  }
LABEL_39:
  if ( v4[62] < (float)((float)((float)(v4[65] + v4[64]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 264) )
      goto LABEL_43;
    v22 = *(this + 5);
    v23 = 0;
    goto LABEL_42;
  }
  if ( !*((_BYTE *)v4 + 264) )
  {
    v22 = *(this + 5);
    v23 = 1;
LABEL_42:
    v95[2] = 7;
    v95[1] = 7;
    v95[0] = off_95B470;
    v95[4] = 0;
    v95[3] = v23;
    v95[5] = 1065353216;
    EventManager::Raise(v22, (const IEvent *)v95);
    v95[0] = off_95B458;
  }
LABEL_43:
  if ( v4[70] < (float)((float)((float)(v4[73] + v4[72]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 296) )
      goto LABEL_47;
    v24 = *(this + 5);
    v25 = 0;
    goto LABEL_46;
  }
  if ( !*((_BYTE *)v4 + 296) )
  {
    v24 = *(this + 5);
    v25 = 1;
LABEL_46:
    v94[1] = 7;
    v94[3] = v25;
    v94[0] = off_95B470;
    v94[2] = 8;
    v94[4] = 0;
    v94[5] = 1065353216;
    EventManager::Raise(v24, (const IEvent *)v94);
    v94[0] = off_95B458;
  }
LABEL_47:
  if ( v4[78] < (float)((float)((float)(v4[81] + v4[80]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 328) )
      goto LABEL_51;
    v26 = *(this + 5);
    v27 = 0;
    goto LABEL_50;
  }
  if ( !*((_BYTE *)v4 + 328) )
  {
    v26 = *(this + 5);
    v27 = 1;
LABEL_50:
    v93[1] = 7;
    v93[3] = v27;
    v93[0] = off_95B470;
    v93[2] = 9;
    v93[4] = 0;
    v93[5] = 1065353216;
    EventManager::Raise(v26, (const IEvent *)v93);
    v93[0] = off_95B458;
  }
LABEL_51:
  if ( v4[86] < (float)((float)((float)(v4[89] + v4[88]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 360) )
      goto LABEL_55;
    v28 = *(this + 5);
    v29 = 0;
    goto LABEL_54;
  }
  if ( !*((_BYTE *)v4 + 360) )
  {
    v28 = *(this + 5);
    v29 = 1;
LABEL_54:
    v92[1] = 7;
    v92[3] = v29;
    v92[0] = off_95B470;
    v92[2] = 10;
    v92[4] = 0;
    v92[5] = 1065353216;
    EventManager::Raise(v28, (const IEvent *)v92);
    v92[0] = off_95B458;
  }
LABEL_55:
  if ( v4[94] < (float)((float)((float)(v4[97] + v4[96]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 392) )
      goto LABEL_59;
    v30 = *(this + 5);
    v31 = 0;
    goto LABEL_58;
  }
  if ( !*((_BYTE *)v4 + 392) )
  {
    v30 = *(this + 5);
    v31 = 1;
LABEL_58:
    v91[1] = 7;
    v91[3] = v31;
    v91[0] = off_95B470;
    v91[2] = 11;
    v91[4] = 0;
    v91[5] = 1065353216;
    EventManager::Raise(v30, (const IEvent *)v91);
    v91[0] = off_95B458;
  }
LABEL_59:
  if ( v4[102] < (float)((float)((float)(v4[105] + v4[104]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 424) )
      goto LABEL_63;
    v32 = *(this + 5);
    v33 = 0;
    goto LABEL_62;
  }
  if ( !*((_BYTE *)v4 + 424) )
  {
    v32 = *(this + 5);
    v33 = 1;
LABEL_62:
    v90[1] = 7;
    v90[3] = v33;
    v90[0] = off_95B470;
    v90[2] = 12;
    v90[4] = 0;
    v90[5] = 1065353216;
    EventManager::Raise(v32, (const IEvent *)v90);
    v90[0] = off_95B458;
  }
LABEL_63:
  if ( v4[110] < (float)((float)((float)(v4[113] + v4[112]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 456) )
      goto LABEL_67;
    v34 = *(this + 5);
    v35 = 0;
    goto LABEL_66;
  }
  if ( !*((_BYTE *)v4 + 456) )
  {
    v34 = *(this + 5);
    v35 = 1;
LABEL_66:
    v89[1] = 7;
    v89[3] = v35;
    v89[0] = off_95B470;
    v89[2] = 13;
    v89[4] = 0;
    v89[5] = 1065353216;
    EventManager::Raise(v34, (const IEvent *)v89);
    v89[0] = off_95B458;
  }
LABEL_67:
  if ( v4[118] < (float)((float)((float)(v4[121] + v4[120]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 488) )
      goto LABEL_71;
    v36 = *(this + 5);
    v37 = 0;
    goto LABEL_70;
  }
  if ( !*((_BYTE *)v4 + 488) )
  {
    v36 = *(this + 5);
    v37 = 1;
LABEL_70:
    v88[1] = 7;
    v88[3] = v37;
    v88[0] = off_95B470;
    v88[2] = 14;
    v88[4] = 0;
    v88[5] = 1065353216;
    EventManager::Raise(v36, (const IEvent *)v88);
    v88[0] = off_95B458;
  }
LABEL_71:
  if ( v4[126] < (float)((float)((float)(v4[129] + v4[128]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 520) )
      goto LABEL_75;
    v38 = *(this + 5);
    v39 = 0;
    goto LABEL_74;
  }
  if ( !*((_BYTE *)v4 + 520) )
  {
    v38 = *(this + 5);
    v39 = 1;
LABEL_74:
    v87[1] = 7;
    v87[3] = v39;
    v87[0] = off_95B470;
    v87[2] = 15;
    v87[4] = 0;
    v87[5] = 1065353216;
    EventManager::Raise(v38, (const IEvent *)v87);
    v87[0] = off_95B458;
  }
LABEL_75:
  if ( v4[302] < (float)((float)((float)(v4[305] + v4[304]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1224) )
      goto LABEL_79;
    v40 = *(this + 5);
    v41 = 0;
    goto LABEL_78;
  }
  if ( !*((_BYTE *)v4 + 1224) )
  {
    v40 = *(this + 5);
    v41 = 1;
LABEL_78:
    v86[1] = 7;
    v86[3] = v41;
    v86[0] = off_95B470;
    v86[2] = 37;
    v86[4] = 0;
    v86[5] = 1065353216;
    EventManager::Raise(v40, (const IEvent *)v86);
    v86[0] = off_95B458;
  }
LABEL_79:
  if ( v4[310] < (float)((float)((float)(v4[313] + v4[312]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1256) )
      goto LABEL_83;
    v42 = *(this + 5);
    v43 = 0;
    goto LABEL_82;
  }
  if ( !*((_BYTE *)v4 + 1256) )
  {
    v42 = *(this + 5);
    v43 = 1;
LABEL_82:
    v85[1] = 7;
    v85[3] = v43;
    v85[0] = off_95B470;
    v85[2] = 38;
    v85[4] = 0;
    v85[5] = 1065353216;
    EventManager::Raise(v42, (const IEvent *)v85);
    v85[0] = off_95B458;
  }
LABEL_83:
  if ( v4[318] < (float)((float)((float)(v4[321] + v4[320]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1288) )
      goto LABEL_87;
    v44 = *(this + 5);
    v45 = 0;
    goto LABEL_86;
  }
  if ( !*((_BYTE *)v4 + 1288) )
  {
    v44 = *(this + 5);
    v45 = 1;
LABEL_86:
    v84[1] = 7;
    v84[3] = v45;
    v84[0] = off_95B470;
    v84[2] = 39;
    v84[4] = 0;
    v84[5] = 1065353216;
    EventManager::Raise(v44, (const IEvent *)v84);
    v84[0] = off_95B458;
  }
LABEL_87:
  if ( v4[326] < (float)((float)((float)(v4[329] + v4[328]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1320) )
      goto LABEL_91;
    v46 = *(this + 5);
    v47 = 0;
    goto LABEL_90;
  }
  if ( !*((_BYTE *)v4 + 1320) )
  {
    v46 = *(this + 5);
    v47 = 1;
LABEL_90:
    v83[1] = 7;
    v83[3] = v47;
    v83[0] = off_95B470;
    v83[2] = 40;
    v83[4] = 0;
    v83[5] = 1065353216;
    EventManager::Raise(v46, (const IEvent *)v83);
    v83[0] = off_95B458;
  }
LABEL_91:
  if ( v4[334] < (float)((float)((float)(v4[337] + v4[336]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1352) )
      goto LABEL_95;
    v48 = *(this + 5);
    v49 = 0;
    goto LABEL_94;
  }
  if ( !*((_BYTE *)v4 + 1352) )
  {
    v48 = *(this + 5);
    v49 = 1;
LABEL_94:
    v82[1] = 7;
    v82[3] = v49;
    v82[0] = off_95B470;
    v82[2] = 41;
    v82[4] = 0;
    v82[5] = 1065353216;
    EventManager::Raise(v48, (const IEvent *)v82);
    v82[0] = off_95B458;
  }
LABEL_95:
  if ( v4[342] < (float)((float)((float)(v4[345] + v4[344]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1384) )
      goto LABEL_99;
    v50 = *(this + 5);
    v51 = 0;
    goto LABEL_98;
  }
  if ( !*((_BYTE *)v4 + 1384) )
  {
    v50 = *(this + 5);
    v51 = 1;
LABEL_98:
    v81[1] = 7;
    v81[3] = v51;
    v81[0] = off_95B470;
    v81[2] = 42;
    v81[4] = 0;
    v81[5] = 1065353216;
    EventManager::Raise(v50, (const IEvent *)v81);
    v81[0] = off_95B458;
  }
LABEL_99:
  if ( v4[350] < (float)((float)((float)(v4[353] + v4[352]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1416) )
      goto LABEL_103;
    v52 = *(this + 5);
    v53 = 0;
    goto LABEL_102;
  }
  if ( !*((_BYTE *)v4 + 1416) )
  {
    v52 = *(this + 5);
    v53 = 1;
LABEL_102:
    v80[1] = 7;
    v80[3] = v53;
    v80[0] = off_95B470;
    v80[2] = 43;
    v80[4] = 0;
    v80[5] = 1065353216;
    EventManager::Raise(v52, (const IEvent *)v80);
    v80[0] = off_95B458;
  }
LABEL_103:
  if ( v4[358] < (float)((float)((float)(v4[361] + v4[360]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 1448) )
      goto LABEL_107;
    v54 = *(this + 5);
    v55 = 0;
    goto LABEL_106;
  }
  if ( !*((_BYTE *)v4 + 1448) )
  {
    v54 = *(this + 5);
    v55 = 1;
LABEL_106:
    v79[1] = 7;
    v79[3] = v55;
    v79[0] = off_95B470;
    v79[2] = 44;
    v79[4] = 0;
    v79[5] = 1065353216;
    EventManager::Raise(v54, (const IEvent *)v79);
    v79[0] = off_95B458;
  }
LABEL_107:
  if ( v4[158] < (float)((float)((float)(v4[161] + v4[160]) + 1.0) * 0.5) )
  {
    if ( !*((_BYTE *)v4 + 648) )
      goto LABEL_111;
    v56 = *(this + 5);
    v57 = 0;
    goto LABEL_110;
  }
  if ( !*((_BYTE *)v4 + 648) )
  {
    v56 = *(this + 5);
    v57 = 1;
LABEL_110:
    v78[1] = 7;
    v78[3] = v57;
    v78[0] = off_95B470;
    v78[2] = 19;
    v78[4] = 0;
    v78[5] = 1065353216;
    EventManager::Raise(v56, (const IEvent *)v78);
    v78[0] = off_95B458;
  }
LABEL_111:
  if ( v4[182] >= (float)((float)((float)(v4[185] + v4[184]) + 1.0) * 0.5) )
  {
    if ( *((_BYTE *)v4 + 744) )
      goto LABEL_115;
    v58 = *(this + 5);
    v59 = 1;
    goto LABEL_114;
  }
  if ( *((_BYTE *)v4 + 744) )
  {
    v58 = *(this + 5);
    v59 = 0;
LABEL_114:
    v77[1] = 7;
    v77[3] = v59;
    v77[0] = off_95B470;
    v77[2] = 22;
    v77[4] = 0;
    v77[5] = 1065353216;
    EventManager::Raise(v58, (const IEvent *)v77);
    v77[0] = off_95B458;
  }
LABEL_115:
  if ( v4[14] >= (float)((float)((float)(v4[17] + v4[16]) + 1.0) * 0.5) && !*((_BYTE *)v4 + 72) )
  {
    v60 = (MenuManager *)MenuManager::GetInstance((MenuManager *)(v4[14] >= (float)((float)((float)(v4[17] + v4[16])
                                                                                          + 1.0)
                                                                                  * 0.5)));
    MenuByName = (MenuFX **)MenuManager::GetMenuByName(v60, "menu_CharacterMenu");
    v62 = (MenuManager *)MenuManager::GetInstance((MenuManager *)MenuByName);
    v63 = (MenuFX **)MenuManager::GetMenuByName(v62, "menu_Ingame");
    if ( MenuByName && MenuBase::IsVisible((MenuBase *)MenuByName) )
    {
      MenuFX::PopAll(MenuByName[1]);
    }
    else if ( v63 )
    {
      if ( MenuBase::IsVisible((MenuBase *)v63) )
        MenuFX::PopAll(v63[1]);
    }
  }
}


// ===== 322924 Application::Pause(void) =====
int __fastcall Application::Pause(Application *this)
{
  int IsMusicPlaying; // r0
  int v3; // r7
  int CurrentLevel; // r6
  int v5; // r0
  SavegameManager *v6; // r0
  StateMachine *v7; // r0
  int result; // r0
  MenuBase *MenuByName; // r0
  MenuManager *v10; // r0
  MenuManager *Instance; // r0

  IsMusicPlaying = VoxSoundManager::s_instance;
  if ( VoxSoundManager::s_instance )
    IsMusicPlaying = VoxSoundManager::IsMusicPlaying((VoxSoundManager *)VoxSoundManager::s_instance);
  *((_BYTE *)this + 166) = 0;
  v3 = IsMusicPlaying;
  if ( VoxSoundManager::s_instance )
    VoxSoundManager::PauseAllSounds((vox::VoxEngine *)VoxSoundManager::s_instance);
  *((_BYTE *)this + 165) = 0;
  CurrentLevel = Application::GetCurrentLevel(this);
  v5 = *((_DWORD *)this + 4);
  if ( v5 )
    v5 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v5 + 32) + 12))(*(_DWORD *)(v5 + 32));
  *((_DWORD *)this + 40) = v5;
  if ( CurrentLevel && *(_DWORD *)(CurrentLevel + 304) == 38 && *(_BYTE *)(CurrentLevel + 324) )
  {
    Level::SG_SavePlayer(CurrentLevel, 0, 0);
    if ( *(_BYTE *)(CurrentLevel + 408) )
    {
      if ( !MenuBase::s_igmOpened )
      {
        MenuByName = (MenuBase *)MenuManager::GetMenuByName((MenuManager *)dword_99F780, "menu_FadeToBlackScreen");
        if ( !MenuBase::IsVisible(MenuByName) )
        {
          v10 = (MenuManager *)MenuManager::PopMenu((MenuManager *)dword_99F780, "menu_FadeFromBlackScreen");
          *((_BYTE *)this + 165) = 1;
          Instance = (MenuManager *)MenuManager::GetInstance(v10);
          dword_9A247C = MenuManager::GetMenuByName(Instance, "menu_Ingame");
          StateMachine::PushState((StateMachine *)dword_99F744, (StateBase *)&GSFlashMenu::s_inst, 0);
        }
      }
    }
    if ( v3 && MenuBase::s_igmOpened )
      *((_BYTE *)this + 166) = 1;
  }
  v6 = *((SavegameManager **)this + 19);
  if ( v6 && *((_BYTE *)v6 + 40) )
    SavegameManager::saveSettings(v6);
  v7 = *((StateMachine **)this + 6);
  *((_BYTE *)this + 164) = 1;
  if ( v7 )
    StateMachine::Sleep(v7);
  result = Application::IsInIGPOrGameCenter(this);
  if ( !result )
    return Application::SetOrientation(this, *((_DWORD *)this + 32), 0);
  return result;
}


// ===== 322afc Application::InitPS3(glitch::IDevice *) =====
void __fastcall Application::InitPS3(Application *this, glitch::IDevice *a2)
{
  MenuManager *v3; // r5

  LOBYTE(dword_0) = 1;
  v3 = (MenuManager *)operator new(0x114u, 0);
  MenuManager::MenuManager(v3);
  *((_DWORD *)this + 21) = v3;
}


// ===== 322b2c std::basic_streambuf<char,std::char_traits<char>>::_M_xsputnc(char,int) =====
int __fastcall std::streambuf::_M_xsputnc(_DWORD *a1, int a2, int a3)
{
  int v6; // r4
  int v7; // r10
  size_t v8; // r6
  void *v9; // r3
  unsigned int v10; // r2

  if ( a3 <= 0 )
    return 0;
  v6 = 0;
  v7 = (unsigned __int8)a2;
  do
  {
    while ( 1 )
    {
      v9 = (void *)a1[5];
      v10 = a1[6];
      if ( (unsigned int)v9 < v10 )
        break;
      if ( (*(int (__fastcall **)(_DWORD *, int))(*a1 + 52))(a1, v7) != -1 && a3 > ++v6 )
        continue;
      return v6;
    }
    v8 = v10 - (_DWORD)v9;
    if ( a3 - v6 < v10 - (unsigned int)v9 )
      v8 = a3 - v6;
    LC_API_MEMSET_0(v9, a2, v8);
    v6 += v8;
    a1[5] += v8;
  }
  while ( a3 > v6 );
  return v6;
}


// ===== 322bc8 glitch::core::fast_atof_move(char const*,float &) =====
glitch::core *__fastcall glitch::core::fast_atof_move(glitch::core *this, float *a2, float *a3)
{
  int v3; // r7
  int v4; // r4
  bool v6; // zf
  glitch::core *v7; // r8
  int v8; // r0
  int v9; // r3
  char v10; // t1
  float v11; // r5
  _BYTE *v13; // r4
  char v14; // r3
  int v15; // r10
  int v16; // r0
  int v17; // r2
  _BYTE *v18; // r8
  glitch::core *v19; // r3
  int v20; // r2
  _BOOL4 v21; // r4
  int v22; // r0
  int v23; // r1
  char v24; // t1
  float v25; // r0
  float v26; // r1
  glitch::core *v27; // [sp+4h] [bp-8h]

  v4 = *(unsigned __int8 *)this;
  v6 = v4 == 45;
  if ( v4 == 45 )
  {
    this = (glitch::core *)((char *)this + 1);
    LOBYTE(v4) = *(_BYTE *)this;
  }
  else
  {
    v3 = 0;
  }
  if ( v6 )
    v3 = 1;
  if ( (unsigned __int8)(v4 - 48) <= 9u )
  {
    v7 = this;
    v8 = 0;
    do
    {
      v9 = (char)v4;
      v10 = *((_BYTE *)v7 + 1);
      v7 = (glitch::core *)((char *)v7 + 1);
      LOBYTE(v4) = v10;
      v8 = v9 + 10 * v8 - 48;
    }
    while ( (unsigned __int8)(v10 - 48) <= 9u );
  }
  else
  {
    v7 = this;
    v8 = 0;
  }
  v27 = v7;
  v11 = (float)(unsigned int)v8;
  if ( *(_BYTE *)v7 == 46 )
  {
    v13 = (char *)v7 + 1;
    v14 = *((_BYTE *)v7 + 1);
    if ( (unsigned __int8)(v14 - 48) <= 9u )
    {
      v16 = 0;
      do
      {
        v17 = v14;
        v14 = *((_BYTE *)v7 + 2);
        v16 = v17 + 10 * v16 - 48;
        v7 = (glitch::core *)((char *)v7 + 1);
      }
      while ( (unsigned __int8)(v14 - 48) <= 9u );
      v18 = (char *)v7 + 1;
      v15 = v18 - v13;
      v13 = v18;
    }
    else
    {
      v15 = 0;
      v16 = 0;
    }
    v27 = (glitch::core *)v13;
    v11 = v11 + (float)((float)(unsigned int)v16 * glitch::core::fast_atof_table[v15]);
    if ( *v13 == 101 )
    {
      v19 = (glitch::core *)(v13 + 1);
      v20 = (unsigned __int8)v13[1];
      v21 = v20 == 45;
      if ( v20 == 45 )
      {
        v19 = (glitch::core *)((char *)v19 + 1);
        LOBYTE(v20) = *(_BYTE *)v19;
      }
      if ( (unsigned __int8)(v20 - 48) <= 9u )
      {
        v22 = 0;
        do
        {
          v23 = (char)v20;
          v24 = *((_BYTE *)v19 + 1);
          v19 = (glitch::core *)((char *)v19 + 1);
          LOBYTE(v20) = v24;
          v22 = v23 + 10 * v22 - 48;
        }
        while ( (unsigned __int8)(v24 - 48) <= 9u );
      }
      else
      {
        v22 = 0;
      }
      v27 = v19;
      v25 = (float)(unsigned int)v22;
      v26 = v25;
      if ( v21 )
        LODWORD(v26) = LODWORD(v25) + 0x80000000;
      v11 = v11 * powf(10.0, v26);
    }
  }
  if ( v3 )
    LODWORD(v11) += 0x80000000;
  *a2 = v11;
  return v27;
}


// ===== 322d98 glitch::io::CFloatAttribute::setString(char const*) =====
glitch::core *__fastcall glitch::io::CFloatAttribute::setString(
        glitch::io::CFloatAttribute *this,
        glitch::core *a2,
        float *a3)
{
  glitch::core *result; // r0
  char v5[4]; // [sp+4h] [bp-4h] BYREF

  result = glitch::core::fast_atof_move(a2, (float *)v5, a3);
  *((_DWORD *)this + 9) = *(_DWORD *)v5;
  return result;
}


// ===== 322dc0 std::ostream::~ostream() =====
void __fastcall std::ostream::~ostream(std::ostream *this)
{
  this->_vptr.basic_ostream = (int (**)(...))off_95B8B4;
  *(_DWORD *)this->gap4 = off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer((std::ios_base *const)this->gap4);
}


// ===== 322e08 `virtual thunk to'std::ostream::~ostream() =====
void __fastcall `virtual thunk to'std::ostream::~ostream(std::ostream *this)
{
  std::ostream::~ostream((std::ostream *)((char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3)));
}


// ===== 322e18 std::ostream::~ostream() =====
void __fastcall std::ostream::~ostream(std::ostream *this)
{
  std::ostream::~ostream(this);
  CustomFree(this);
}


// ===== 322e34 `virtual thunk to'std::ostream::~ostream() =====
void __fastcall `virtual thunk to'std::ostream::~ostream(std::ostream *this)
{
  std::ostream::~ostream((std::ostream *)((char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3)));
}


// ===== 322e44 std::basic_ios<char,std::char_traits<char>>::~basic_ios() =====
std::ios_base *__fastcall std::ios::~ios(std::ios_base *a1)
{
  a1->_vptr.ios_base = (int (**)(...))off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer(a1);
  return a1;
}


// ===== 322e78 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_stringbuf() =====
int __fastcall std::stringbuf::~stringbuf(int a1)
{
  *(_DWORD *)a1 = off_95B8F0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(a1 + 36));
  *(_DWORD *)a1 = off_95B938;
  __ZNSt6localeD1Ev_veneer((std::locale *const)(a1 + 28));
  return a1;
}


// ===== 322ec8 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_stringbuf() =====
void *__fastcall std::stringbuf::~stringbuf(void *a1)
{
  std::stringbuf::~stringbuf((int)a1);
  CustomFree(a1);
  return a1;
}


// ===== 322ee4 std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_ostringstream() =====
std::ios_base *__fastcall std::ostringstream::~ostringstream(std::ios_base *a1)
{
  a1->_vptr.ios_base = (int (**)(...))off_95B864;
  a1[1]._vptr.ios_base = (int (**)(...))off_95B878;
  std::stringbuf::~stringbuf((int)&a1->_M_fmtflags);
  a1->_vptr.ios_base = (int (**)(...))off_95B88C;
  *(int *)((char *)&dword_40 + (_DWORD)a1) = (int)off_95B8A0;
  a1[1]._vptr.ios_base = (int (**)(...))off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer(a1 + 1);
  return a1;
}


// ===== 322f64 `virtual thunk to'std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_ostringstream() =====
std::ios_base *__fastcall `virtual thunk to'std::ostringstream::~ostringstream(_DWORD *a1)
{
  return std::ostringstream::~ostringstream((std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 322f74 std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_ostringstream() =====
std::ios_base *__fastcall std::ostringstream::~ostringstream(std::ios_base *a1)
{
  std::ostringstream::~ostringstream(a1);
  CustomFree(a1);
  return a1;
}


// ===== 322f90 `virtual thunk to'std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_ostringstream() =====
std::ios_base *__fastcall `virtual thunk to'std::ostringstream::~ostringstream(_DWORD *a1)
{
  return std::ostringstream::~ostringstream((std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 322fa0 std::basic_streambuf<char,std::char_traits<char>>::~basic_streambuf() =====
std::locale *__fastcall std::streambuf::~streambuf(std::locale *a1)
{
  a1->_M_impl = (std::_Locale_impl *)off_95B938;
  __ZNSt6localeD1Ev_veneer(a1 + 7);
  return a1;
}


// ===== 322fd4 std::basic_streambuf<char,std::char_traits<char>>::~basic_streambuf() =====
std::locale *__fastcall std::streambuf::~streambuf(std::locale *a1)
{
  std::streambuf::~streambuf(a1);
  CustomFree(a1);
  return a1;
}


// ===== 322ff0 std::basic_streambuf<char,std::char_traits<char>>::pubimbue(std::locale const&) =====
std::locale *__fastcall std::streambuf::pubimbue(std::locale *a1, std::locale *a2, const std::locale *a3)
{
  std::locale *v4; // r6

  v4 = a2 + 7;
  (*(void (__fastcall **)(std::locale *, const std::locale *))&a2->_M_impl[1].name._M_buffers._M_static_buf[4])(a2, a3);
  __ZNSt6localeC1ERKS__veneer(a1, v4);
  __ZNSt6localeaSERKS__veneer(v4, a3);
  return a1;
}


// ===== 323038 std::basic_ios<char,std::char_traits<char>>::imbue(std::locale const&) =====
std::ios_base *__fastcall std::ios::imbue(std::ios_base *a1, const std::locale *a2, const std::locale *a3)
{
  std::locale *M_impl; // r1
  std::locale v8; // [sp+4h] [bp-4h] BYREF

  __ZNSt8ios_base5imbueERKSt6locale_veneer(a1, a2);
  M_impl = (std::locale *)a2[18]._M_impl;
  if ( M_impl )
  {
    std::streambuf::pubimbue(&v8, M_impl, a3);
    __ZNSt6localeD1Ev_veneer(&v8);
  }
  a2[16]._M_impl = (std::_Locale_impl *)__ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(a3, &std::ctype<char>::id);
  return a1;
}


// ===== 3230a4 std::basic_ios<char,std::char_traits<char>>::init(std::basic_streambuf<char,std::char_traits<char>> *) =====
void *__fastcall std::ios::init(int a1, int a2, int a3, int a4)
{
  void *result; // r0
  int v7; // r3
  std::locale v8; // [sp+0h] [bp-Ch] BYREF
  std::locale v9; // [sp+4h] [bp-8h] BYREF

  if ( a2 )
    a4 = 0;
  *(_DWORD *)(a1 + 72) = a2;
  if ( a2 )
  {
    *(_DWORD *)(a1 + 8) = a4;
  }
  else
  {
    v7 = *(_DWORD *)(a1 + 20);
    *(_DWORD *)(a1 + 8) = 1;
    if ( (v7 & 1) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer((std::ios_base *const)a1);
  }
  __ZNSt6localeC1Ev_veneer(&v9);
  std::ios::imbue((std::ios_base *)&v8, (const std::locale *)a1, &v9);
  __ZNSt6localeD1Ev_veneer(&v8);
  result = __ZNSt6localeD1Ev_veneer(&v9);
  *(_BYTE *)(a1 + 68) = 32;
  *(_DWORD *)(a1 + 4) = 4104;
  *(_DWORD *)(a1 + 8) = a2 == 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 24) = 6;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  return result;
}


// ===== 323150 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::erase(wchar_t *,wchar_t *) =====
wchar_t *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::erase(
        int a1,
        wchar_t *s1,
        wchar_t *s2)
{
  if ( s1 != s2 )
  {
    wmemmove(s1, s2, ((*(_DWORD *)(a1 + 64) - (int)s2) >> 2) + 1);
    *(_DWORD *)(a1 + 64) -= ((char *)s2 - (char *)s1) & 0xFFFFFFFC;
  }
  return s1;
}


// ===== 3231a0 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(wchar_t const*,wchar_t const*) =====
int __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        int a1,
        const wchar_t *a2,
        _DWORD *a3)
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
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::erase(
      a1,
      (wchar_t *)(*(_DWORD *)(a1 + 68) + 4 * v7),
      *(wchar_t **)(a1 + 64));
  }
  else
  {
    wmemcpy(v5, a2, v8);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      (_DWORD *)a1,
      (const wchar_t *)((char *)a2 + ((*(_DWORD *)(a1 + 64) - *(_DWORD *)(a1 + 68)) & 0xFFFFFFFC)),
      a3);
  }
  return a1;
}


// ===== 323220 glitch::io::CBoolAttribute::setString(char const*) =====
bool __fastcall glitch::io::CBoolAttribute::setString(glitch::io::CBoolAttribute *this, const char *a2)
{
  _BOOL4 result; // r0

  result = LC_API_STRCMP_0(a2, "true") == 0;
  *((_BYTE *)this + 33) = result;
  return result;
}


// ===== 32324c glitch::io::CColorAttribute::setString(char const*) =====
int __fastcall glitch::io::CColorAttribute::setString(glitch::io::CColorAttribute *this, const char *s)
{
  int v4; // [sp+Ch] [bp-14h]
  char v5; // [sp+10h] [bp-10h] BYREF
  char v6; // [sp+14h] [bp-Ch] BYREF
  int v7; // [sp+18h] [bp-8h] BYREF
  char v8; // [sp+1Ch] [bp-4h] BYREF

  sscanf(s, "%02x%02x%02x%02x", &v8, &v7, &v6, &v5);
  BYTE1(v4) = v6;
  BYTE2(v4) = v5;
  HIBYTE(v4) = v8;
  LOBYTE(v4) = v7;
  return (*(int (__fastcall **)(glitch::io::CColorAttribute *, int))(*(_DWORD *)this + 160))(this, v4);
}


// ===== 3232c0 glitch::core::CMatrix4<float>::getInverse(glitch::core::CMatrix4<float>&) =====
int __fastcall glitch::core::CMatrix4<float>::getInverse(float *a1, float *a2)
{
  int v2; // r2
  float v4; // r10
  float v5; // r9
  float v6; // r11
  float v7; // r8
  float v8; // r7
  float v9; // r6
  float v10; // r9
  float v11; // r10
  float v12; // r11
  float v13; // r8
  float v14; // r7
  float v15; // r6
  float v16; // r0
  float v17; // r10
  float v18; // r8
  float v19; // r9
  float v20; // r10
  int v22; // r6
  float v23; // [sp+8h] [bp-24h]
  float v24; // [sp+Ch] [bp-20h]
  float v25; // [sp+10h] [bp-1Ch]
  float v26; // [sp+14h] [bp-18h]
  float v27; // [sp+18h] [bp-14h]
  float v28; // [sp+1Ch] [bp-10h]
  float v29; // [sp+20h] [bp-Ch]
  float v30; // [sp+24h] [bp-8h]

  v2 = *((unsigned __int8 *)a1 + 64);
  if ( *((_BYTE *)a1 + 64) )
  {
    memcpy(a2, a1, 0x41u);
    return 1;
  }
  else
  {
    v4 = a1[10];
    v5 = a1[11];
    v6 = a1[14];
    v25 = (float)(v4 * a1[15]) - (float)(v5 * v6);
    v7 = a1[7];
    v26 = (float)(a1[15] * a1[6]) - (float)(v6 * v7);
    v27 = (float)(v5 * a1[6]) - (float)(v4 * v7);
    v8 = a1[2];
    v9 = a1[3];
    v28 = (float)(a1[15] * v8) - (float)(v6 * v9);
    v29 = (float)(v5 * v8) - (float)(v4 * v9);
    v23 = (float)(v7 * v8) - (float)(a1[6] * v9);
    v10 = a1[8];
    v11 = a1[13];
    v12 = a1[9];
    v13 = a1[12];
    v30 = (float)(v10 * v11) - (float)(v12 * v13);
    v14 = (float)(v11 * a1[4]) - (float)(v13 * a1[5]);
    v15 = (float)(v12 * a1[4]) - (float)(v10 * a1[5]);
    v16 = v11 * *a1;
    v17 = a1[1];
    v18 = v16 - (float)(v13 * v17);
    v19 = (float)(v12 * *a1) - (float)(v10 * v17);
    v20 = (float)(a1[5] * *a1) - (float)(a1[4] * v17);
    v24 = (float)((float)((float)((float)((float)(v25 * v20) - (float)(v26 * v19)) + (float)(v27 * v18))
                        + (float)(v28 * v15))
                - (float)(v29 * v14))
        + (float)(v23 * v30);
    if ( fabs(v24) > 0.000001 )
    {
      *((_BYTE *)a2 + 64) = v2;
      *a2 = (float)((float)(v25 * a1[5]) - (float)(v26 * a1[9])) + (float)(v27 * a1[13]);
      a2[1] = (float)((float)(v28 * a1[9]) - (float)(v25 * a1[1])) - (float)(v29 * a1[13]);
      a2[2] = (float)((float)(v26 * a1[1]) - (float)(v28 * a1[5])) + (float)(v23 * a1[13]);
      a2[3] = (float)((float)(v29 * a1[5]) - (float)(v27 * a1[1])) - (float)(v23 * a1[9]);
      a2[4] = (float)((float)(v26 * a1[8]) - (float)(v25 * a1[4])) - (float)(v27 * a1[12]);
      a2[5] = (float)((float)(v25 * *a1) - (float)(v28 * a1[8])) + (float)(v29 * a1[12]);
      a2[6] = (float)((float)(v28 * a1[4]) - (float)(v26 * *a1)) - (float)(v23 * a1[12]);
      a2[7] = (float)((float)(v27 * *a1) - (float)(v29 * a1[4])) + (float)(v23 * a1[8]);
      a2[8] = (float)((float)(v30 * a1[7]) - (float)(v14 * a1[11])) + (float)(v15 * a1[15]);
      a2[9] = (float)((float)(v18 * a1[11]) - (float)(v30 * a1[3])) - (float)(v19 * a1[15]);
      a2[10] = (float)((float)(v14 * a1[3]) - (float)(v18 * a1[7])) + (float)(v20 * a1[15]);
      a2[11] = (float)((float)(v19 * a1[7]) - (float)(v15 * a1[3])) - (float)(v20 * a1[11]);
      a2[12] = (float)((float)(v14 * a1[10]) - (float)(v30 * a1[6])) - (float)(v15 * a1[14]);
      a2[13] = (float)((float)(v30 * a1[2]) - (float)(v18 * a1[10])) + (float)(v19 * a1[14]);
      a2[14] = (float)((float)(v18 * a1[6]) - (float)(v14 * a1[2])) - (float)(v20 * a1[14]);
      a2[15] = (float)((float)(v15 * a1[2]) - (float)(v19 * a1[6])) + (float)(v20 * a1[10]);
      v22 = v2;
      do
      {
        *(float *)((char *)a2 + v22) = *(float *)((char *)a2 + v22) * (float)(1.0 / v24);
        v22 += 4;
      }
      while ( v22 != 64 );
      *((_BYTE *)a2 + 64) = 0;
      *((_BYTE *)a2 + 64) = *((_BYTE *)a1 + 64);
      return 1;
    }
    else
    {
      return v2;
    }
  }
}


// ===== 323ae0 Application::Init(glitch::IDevice *) =====
int __fastcall Application::Init(Application *this, glitch::IDevice *a2)
{
  int v3; // r3
  _DWORD *v4; // r5
  int v5; // r3
  glitch::collada::CAnimationStreamingManager *v6; // r0

  *((_DWORD *)this + 4) = a2;
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  glitch::IDevice::setEventReceiver(a2, this);
  v3 = *((_DWORD *)a2 + 11);
  if ( v3 )
    (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v3 + 16))(*((_DWORD *)a2 + 11), 4);
  v4 = *((_DWORD **)a2 + 4);
  (*(void (__fastcall **)(_DWORD *, int, int))(*v4 + 160))(v4, 256, 1);
  (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*v4 + 160))(v4, 16, 0);
  v5 = v4[56];
  *(_DWORD *)(v5 + 116) |= 4u;
  *(_BYTE *)(glitch::collada::CResFileManager::Inst + 41) = 0;
  *(_DWORD *)(v5 + 116) &= ~1u;
  *(_BYTE *)(glitch::collada::CResFileManager::Inst + 43) = 0;
  v6 = (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance;
  *(_DWORD *)(glitch::collada::CAnimationStreamingManager::Instance + 24) = 512000;
  return glitch::collada::CAnimationStreamingManager::checkMemoryUsage(v6);
}


// ===== 323bc4 Application::Quit(void) =====
int __fastcall Application::Quit(Application *this)
{
  SavegameManager *v2; // r0
  Level *CurrentLevel; // r0
  StateMachine *v4; // r0
  int v5; // r3
  int v6; // r3
  int v7; // r3
  int v8; // r3
  int v9; // r3
  int v10; // r3
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // r3
  int v18; // r3
  int v19; // r3
  int v20; // r3
  int v21; // r8
  Application *v22; // r7
  int v23; // r3
  int v24; // r3
  int v25; // r3
  InputManager *Instance; // r0
  VoxSoundManager *v27; // r0
  const char *v28; // r1
  PropertyMap *v29; // r0
  glitch::scene::ISceneNode *v30; // r0
  glitch::IReferenceCounted *v31; // r0
  int v32; // r3
  COnlineImpl *Online; // r0
  TrophyManager *v34; // r0
  int v35; // r0
  Character *v37; // r0

  v2 = *((SavegameManager **)this + 19);
  if ( v2 )
    SavegameManager::saveSettings(v2);
  CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( CurrentLevel )
  {
    if ( *((_DWORD *)CurrentLevel + 76) == 38 )
    {
      Level::QuickSave(CurrentLevel, 0);
      v37 = *(Character **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
      if ( v37 )
        Character::SG_Save(v37);
    }
  }
  if ( VoxSoundManager::s_instance )
    VoxSoundManager::StopAllSounds((VoxSoundManager *)VoxSoundManager::s_instance, 0);
  v4 = *((StateMachine **)this + 6);
  if ( v4 )
    v4 = (StateMachine *)StateMachine::__clear(v4);
  v5 = *((_DWORD *)this + 20);
  if ( v5 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(*((_DWORD *)this + 20));
    *((_DWORD *)this + 20) = 0;
  }
  v6 = *((_DWORD *)this + 14);
  if ( v6 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)this + 14));
    *((_DWORD *)this + 14) = 0;
  }
  v7 = *((_DWORD *)this + 15);
  if ( v7 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*((_DWORD *)this + 15));
    *((_DWORD *)this + 15) = 0;
  }
  v8 = *((_DWORD *)this + 16);
  if ( v8 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 4))(*((_DWORD *)this + 16));
    *((_DWORD *)this + 16) = 0;
  }
  v9 = *((_DWORD *)this + 6);
  if ( v9 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 4))(*((_DWORD *)this + 6));
    *((_DWORD *)this + 6) = 0;
  }
  v10 = *((_DWORD *)this + 5);
  if ( v10 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v10 + 4))(*((_DWORD *)this + 5));
    *((_DWORD *)this + 5) = 0;
  }
  v11 = *((_DWORD *)this + 13);
  if ( v11 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v11 + 4))(*((_DWORD *)this + 13));
    *((_DWORD *)this + 13) = 0;
  }
  v12 = *((_DWORD *)this + 12);
  if ( v12 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v12 + 4))(*((_DWORD *)this + 12));
    *((_DWORD *)this + 12) = 0;
  }
  v13 = *((_DWORD *)this + 11);
  if ( v13 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 4))(*((_DWORD *)this + 11));
    *((_DWORD *)this + 11) = 0;
  }
  v14 = *((_DWORD *)this + 10);
  if ( v14 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v14 + 4))(*((_DWORD *)this + 10));
    *((_DWORD *)this + 10) = 0;
  }
  v15 = *((_DWORD *)this + 9);
  if ( v15 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v15 + 4))(*((_DWORD *)this + 9));
    *((_DWORD *)this + 9) = 0;
  }
  v16 = *((_DWORD *)this + 8);
  if ( v16 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v16 + 4))(*((_DWORD *)this + 8));
    *((_DWORD *)this + 8) = 0;
  }
  v17 = *((_DWORD *)this + 7);
  if ( v17 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 4))(*((_DWORD *)this + 7));
    *((_DWORD *)this + 7) = 0;
  }
  v18 = *((_DWORD *)this + 17);
  if ( v18 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v18 + 4))(*((_DWORD *)this + 17));
    *((_DWORD *)this + 17) = 0;
  }
  v19 = *((_DWORD *)this + 18);
  if ( v19 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v19 + 4))(*((_DWORD *)this + 18));
    *((_DWORD *)this + 18) = 0;
  }
  v20 = *((_DWORD *)this + 19);
  if ( v20 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v20 + 4))(*((_DWORD *)this + 19));
    *((_DWORD *)this + 19) = 0;
  }
  v21 = 0;
  v22 = this;
  do
  {
    v23 = *((_DWORD *)v22 + 22);
    ++v21;
    if ( v23 )
    {
      v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v23 + 4))(*((_DWORD *)v22 + 22));
      *((_DWORD *)v22 + 22) = 0;
    }
    v22 = (Application *)((char *)v22 + 4);
  }
  while ( v21 != 4 );
  v24 = *((_DWORD *)this + 26);
  if ( v24 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v24 + 4))(*((_DWORD *)this + 26));
    *((_DWORD *)this + 26) = 0;
  }
  v25 = *((_DWORD *)this + 21);
  if ( v25 )
  {
    v4 = (StateMachine *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v25 + 4))(*((_DWORD *)this + 21));
    *((_DWORD *)this + 21) = 0;
  }
  Instance = (InputManager *)InputManager::GetInstance(v4);
  v27 = (VoxSoundManager *)InputManager::Destroy(Instance);
  VoxSoundManager::DeleteInstance(v27);
  Savegame::FlushJobs(nullptr, v28);
  v29 = (PropertyMap *)Application::CleanGlitch(this);
  if ( *((_DWORD *)this + 4) )
  {
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 28) + 104))(*(_DWORD *)(dword_99F73C + 28));
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)this + 4) + 16) + 172))(*(_DWORD *)(*((_DWORD *)this + 4)
                                                                                                 + 16));
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 4) + 48))(*((_DWORD *)this + 4));
    v29 = (PropertyMap *)glitch::IReferenceCounted::drop(*((glitch::IReferenceCounted **)this + 4));
    *((_DWORD *)this + 4) = 0;
  }
  PropertyMap::DestroyPropertyMaps(v29);
  v30 = *((glitch::scene::ISceneNode **)this + 46);
  if ( v30 )
  {
    if ( glitch::scene::ISceneNode::getParent(v30) )
    {
      v31 = (glitch::IReferenceCounted *)(*((_DWORD *)this + 46) + *(_DWORD *)(**((_DWORD **)this + 46) - 12));
      v32 = *((_DWORD *)v31 + 1);
    }
    else
    {
      v31 = (glitch::IReferenceCounted *)(*((_DWORD *)this + 46) + *(_DWORD *)(**((_DWORD **)this + 46) - 12));
      v32 = *((_DWORD *)v31 + 1);
      if ( v32 == 1 )
      {
LABEL_59:
        glitch::IReferenceCounted::drop(v31);
        *((_DWORD *)this + 46) = 0;
        goto LABEL_60;
      }
    }
    if ( v32 != 2 )
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
          "(m_underlayNode->getParent() == __null && m_underlayNode->getReferenceCount() == 1) || m_underlayNode->getRefe"
          "renceCount() == 2",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Application.cpp",
          458);
        v31 = (glitch::IReferenceCounted *)(*((_DWORD *)this + 46) + *(_DWORD *)(**((_DWORD **)this + 46) - 12));
      }
    }
    goto LABEL_59;
  }
LABEL_60:
  if ( OnlineSingleton<OnlineGameState>::m_instance )
    (*(void (__fastcall **)(int))(*(_DWORD *)OnlineSingleton<OnlineGameState>::m_instance + 4))(OnlineSingleton<OnlineGameState>::m_instance);
  OnlineSingleton<OnlineGameState>::m_instance = 0;
  if ( GCSingleton<GameCenter>::m_instance )
    (*(void (__fastcall **)(int))(*(_DWORD *)GCSingleton<GameCenter>::m_instance + 4))(GCSingleton<GameCenter>::m_instance);
  GCSingleton<GameCenter>::m_instance = 0;
  Online = (COnlineImpl *)GetOnline();
  v34 = (TrophyManager *)COnlineImpl::Destroy(Online);
  v35 = TrophyManager::DeleteInstance(v34);
  return nativeExit(v35);
}


// ===== 324114 _DEBUG_OUT(char const*,...) =====
int _DEBUG_OUT(const char *a1, ...)
{
  char v2[4]; // [sp+4h] [bp-408h] BYREF
  va_list varg_r1; // [sp+41Ch] [bp+10h] BYREF

  va_start(varg_r1, a1);
  vsprintf(v2, a1, varg_r1);
  printf("%s", v2);
  return appDebugLog("_DEBUG_OUT", v2);
}


// ===== 3241b8 Application::OnInterruptResume(void) =====
int __fastcall Application::OnInterruptResume(Application *this)
{
  GS_InterruptLoading *v1; // r5
  StateBase *v2; // r1

  _DEBUG_OUT("\n\n Application::OnInterruptResume \n\n");
  v1 = (GS_InterruptLoading *)CustomAlloc(8u);
  GS_InterruptLoading::GS_InterruptLoading(v1);
  if ( v1 )
    v2 = (GS_InterruptLoading *)((char *)v1 + 4);
  else
    v2 = nullptr;
  return StateMachine::PushState((StateMachine *)dword_99F744, v2, 0);
}


// ===== 324210 Application::OnInterruptPause(void) =====
int __fastcall Application::OnInterruptPause(Application *this)
{
  if ( nativeGetisplaying(this) == 1 )
  {
    Musicplayerpause = 1;
    nativePauseMusicBG();
  }
  return _DEBUG_OUT("\n\n Application::OnInterruptPause \n");
}


// ===== 324258 CMsgStartGame::~CMsgStartGame() =====
void __fastcall CMsgStartGame::~CMsgStartGame(CMsgStartGame *this)
{
  *(_DWORD *)this = off_95B3F0;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 324294 CMsgControllerAction::~CMsgControllerAction() =====
void __fastcall CMsgControllerAction::~CMsgControllerAction(CMsgControllerAction *this)
{
  *(_DWORD *)this = off_95B3C0;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 3242d0 CMsgAttackResult::~CMsgAttackResult() =====
void __fastcall CMsgAttackResult::~CMsgAttackResult(CMsgAttackResult *this)
{
  *(_DWORD *)this = off_95B390;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 32430c CMsgRaisedEvent::~CMsgRaisedEvent() =====
void __fastcall CMsgRaisedEvent::~CMsgRaisedEvent(CMsgRaisedEvent *this)
{
  *(_DWORD *)this = off_95B360;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 324348 CMsgMenuReady::~CMsgMenuReady() =====
void __fastcall CMsgMenuReady::~CMsgMenuReady(CMsgMenuReady *this)
{
  *(_DWORD *)this = off_95B330;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 324384 CMsgScriptCmd::~CMsgScriptCmd() =====
void __fastcall CMsgScriptCmd::~CMsgScriptCmd(CMsgScriptCmd *this)
{
  *(_DWORD *)this = off_95B300;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 3243c0 CMsgDropLoot::~CMsgDropLoot() =====
void __fastcall CMsgDropLoot::~CMsgDropLoot(CMsgDropLoot *this)
{
  *(_DWORD *)this = off_95B270;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 3243fc CMsgInitialSetup::~CMsgInitialSetup() =====
void __fastcall CMsgInitialSetup::~CMsgInitialSetup(CMsgInitialSetup *this)
{
  *(_DWORD *)this = off_95B2D0;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 324438 CMsgSpawnObject::~CMsgSpawnObject() =====
void __fastcall CMsgSpawnObject::~CMsgSpawnObject(CMsgSpawnObject *this)
{
  *(_DWORD *)this = off_95B210;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 324474 CMsgIsHost::~CMsgIsHost() =====
void __fastcall CMsgIsHost::~CMsgIsHost(CMsgIsHost *this)
{
  *(_DWORD *)this = off_95B240;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 3244b0 CMsgGlobalDeath::~CMsgGlobalDeath() =====
void __fastcall CMsgGlobalDeath::~CMsgGlobalDeath(CMsgGlobalDeath *this)
{
  *(_DWORD *)this = off_95B1E0;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 3244ec CMsgAskResendAttributes::~CMsgAskResendAttributes() =====
void __fastcall CMsgAskResendAttributes::~CMsgAskResendAttributes(CMsgAskResendAttributes *this)
{
  *(_DWORD *)this = off_95B1B0;
  CMessage::~CMessage(this);
  CustomFree(this);
}


// ===== 324528 std::basic_ios<char,std::char_traits<char>>::~basic_ios() =====
std::ios_base *__fastcall std::ios::~ios(std::ios_base *a1)
{
  a1->_vptr.ios_base = (int (**)(...))off_95B8E0;
  __ZNSt8ios_baseD2Ev_veneer(a1);
  CustomFree(a1);
  return a1;
}


// ===== 324564 glitch::io::CNumbersAttribute::setIntArray(std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>> &) =====
float __fastcall glitch::io::CNumbersAttribute::setIntArray(float result, int *a2)
{
  unsigned int v2; // r3
  float v3; // r4
  unsigned int v5; // r2
  int v6; // r1
  int v7; // r3
  int v8; // r5
  unsigned int v9; // r6
  unsigned int i; // r3

  v2 = *(unsigned __int8 *)(LODWORD(result) + 64);
  v3 = result;
  if ( *(_BYTE *)(LODWORD(result) + 64) )
  {
    v5 = *(_DWORD *)(LODWORD(result) + 60);
    if ( v5 )
    {
      for ( i = 0; i < v5; ++i )
      {
        *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 48) + 4 * i) = 0;
        v5 = *(_DWORD *)(LODWORD(result) + 60);
      }
    }
  }
  else
  {
    v5 = *(_DWORD *)(LODWORD(result) + 60);
    if ( v5 )
    {
      v6 = *(unsigned __int8 *)(LODWORD(result) + 64);
      do
      {
        *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4 * v2) = v6;
        v5 = *(_DWORD *)(LODWORD(result) + 60);
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
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
      goto LABEL_16;
LABEL_11:
    result = (float)*(int *)(v7 + v8);
    *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + v8) = result;
    while ( 1 )
    {
      v7 = *a2;
      ++v9;
      v8 += 4;
      if ( v9 >= (a2[1] - *a2) >> 2 || *(_DWORD *)(LODWORD(v3) + 60) <= v9 )
        break;
      if ( *(_BYTE *)(LODWORD(v3) + 64) )
        goto LABEL_11;
LABEL_16:
      *(_DWORD *)(*(_DWORD *)(LODWORD(v3) + 36) + v8) = *(_DWORD *)(v7 + v8);
    }
  }
  return result;
}


// ===== 32465c glitch::io::CNumbersAttribute::setQuaternion(glitch::core::quaternion) =====
int __fastcall glitch::io::CNumbersAttribute::setQuaternion(int a1, int a2, float a3, float a4, float a5)
{
  unsigned int v6; // r2
  int result; // r0
  unsigned int v9; // r1
  unsigned int v10; // r3
  unsigned int v11; // r2

  v6 = *(unsigned __int8 *)(a1 + 64);
  result = a2;
  if ( *(_BYTE *)(a1 + 64) )
  {
    if ( !*(_DWORD *)(a1 + 60) )
      return result;
    v11 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 48) + 4 * v11) = 0;
      v10 = *(_DWORD *)(a1 + 60);
      ++v11;
    }
    while ( v11 < v10 );
    if ( !*(_BYTE *)(a1 + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(a1 + 60) )
      return result;
    v9 = v6;
    do
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 36) + 4 * v6) = v9;
      v10 = *(_DWORD *)(a1 + 60);
      ++v6;
    }
    while ( v6 < v10 );
    if ( !*(_BYTE *)(a1 + 64) )
    {
LABEL_7:
      if ( v10 )
      {
        result = (int)*(float *)&result;
        **(float **)(a1 + 36) = *(float *)&result;
        if ( *(_DWORD *)(a1 + 60) > 1u )
        {
          result = (int)a3;
          *(_DWORD *)(*(_DWORD *)(a1 + 36) + 4) = (int)a3;
          if ( *(_DWORD *)(a1 + 60) > 2u )
          {
            result = (int)a4;
            *(_DWORD *)(*(_DWORD *)(a1 + 36) + 8) = (int)a4;
            if ( *(_DWORD *)(a1 + 60) > 3u )
            {
              result = (int)a5;
              *(_DWORD *)(*(_DWORD *)(a1 + 36) + 12) = (int)a5;
            }
          }
        }
      }
      return result;
    }
  }
  if ( v10 )
  {
    **(float **)(a1 + 48) = *(float *)&result;
    if ( *(_DWORD *)(a1 + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(a1 + 48) + 4) = a3;
      if ( *(_DWORD *)(a1 + 60) > 2u )
      {
        *(float *)(*(_DWORD *)(a1 + 48) + 8) = a4;
        if ( *(_DWORD *)(a1 + 60) > 3u )
          *(float *)(*(_DWORD *)(a1 + 48) + 12) = a5;
      }
    }
  }
  return result;
}


// ===== 3247b8 glitch::io::CNumbersAttribute::setRect(glitch::core::rect<int>) =====
float __fastcall glitch::io::CNumbersAttribute::setRect(float result, _DWORD *a2)
{
  unsigned int v2; // r3
  float v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(LODWORD(result) + 64);
  v3 = result;
  if ( *(_BYTE *)(LODWORD(result) + 64) )
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v5 = *(unsigned __int8 *)(LODWORD(result) + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        **(_DWORD **)(LODWORD(result) + 36) = *a2;
        if ( *(_DWORD *)(LODWORD(result) + 60) > 1u )
        {
          *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4) = a2[1];
          if ( *(_DWORD *)(LODWORD(result) + 60) > 2u )
          {
            *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 8) = a2[2];
            if ( *(_DWORD *)(LODWORD(result) + 60) > 3u )
              *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 12) = a2[3];
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    result = (float)(int)*a2;
    **(float **)(LODWORD(v3) + 48) = result;
    if ( *(_DWORD *)(LODWORD(v3) + 60) > 1u )
    {
      result = (float)(int)a2[1];
      *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 4) = result;
      if ( *(_DWORD *)(LODWORD(v3) + 60) > 2u )
      {
        result = (float)(int)a2[2];
        *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 8) = result;
        if ( *(_DWORD *)(LODWORD(v3) + 60) > 3u )
        {
          result = (float)(int)a2[3];
          *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 12) = result;
        }
      }
    }
  }
  return result;
}


// ===== 32490c glitch::io::CNumbersAttribute::setPosition(glitch::core::position2d<int>) =====
float __fastcall glitch::io::CNumbersAttribute::setPosition(float result, _DWORD *a2)
{
  unsigned int v2; // r3
  float v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(LODWORD(result) + 64);
  v3 = result;
  if ( *(_BYTE *)(LODWORD(result) + 64) )
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v5 = *(unsigned __int8 *)(LODWORD(result) + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        **(_DWORD **)(LODWORD(result) + 36) = *a2;
        if ( *(_DWORD *)(LODWORD(result) + 60) > 1u )
          *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4) = a2[1];
      }
      return result;
    }
  }
  if ( v6 )
  {
    result = (float)(int)*a2;
    **(float **)(LODWORD(v3) + 48) = result;
    if ( *(_DWORD *)(LODWORD(v3) + 60) > 1u )
    {
      result = (float)(int)a2[1];
      *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 4) = result;
    }
  }
  return result;
}


// ===== 3249f8 glitch::io::CNumbersAttribute::setColor(glitch::video::SColor) =====
float __fastcall glitch::io::CNumbersAttribute::setColor(int a1, unsigned int a2)
{
  unsigned int v2; // r3
  unsigned int v4; // r6
  float result; // r0
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(a1 + 64);
  v4 = HIBYTE(a2);
  LODWORD(result) = (unsigned __int8)a2;
  if ( v2 )
  {
    if ( !*(_DWORD *)(a1 + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(a1 + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(a1 + 64) )
      goto LABEL_5;
  }
  else
  {
    if ( !*(_DWORD *)(a1 + 60) )
      return result;
    do
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 36) + 4 * v2) = 0;
      v6 = *(_DWORD *)(a1 + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(a1 + 64) )
    {
LABEL_5:
      if ( v6 )
      {
        **(_DWORD **)(a1 + 36) = (unsigned __int8)a2;
        if ( *(_DWORD *)(a1 + 60) > 1u )
        {
          *(_DWORD *)(*(_DWORD *)(a1 + 36) + 4) = BYTE1(a2);
          if ( *(_DWORD *)(a1 + 60) > 2u )
          {
            *(_DWORD *)(*(_DWORD *)(a1 + 36) + 8) = BYTE2(a2);
            if ( *(_DWORD *)(a1 + 60) > 3u )
              *(_DWORD *)(*(_DWORD *)(a1 + 36) + 12) = v4;
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    result = (float)(unsigned __int8)a2 / 255.0;
    **(float **)(a1 + 48) = result;
    if ( *(_DWORD *)(a1 + 60) > 1u )
    {
      result = (float)BYTE1(a2) / 255.0;
      *(float *)(*(_DWORD *)(a1 + 48) + 4) = result;
      if ( *(_DWORD *)(a1 + 60) > 2u )
      {
        result = (float)BYTE2(a2) / 255.0;
        *(float *)(*(_DWORD *)(a1 + 48) + 8) = result;
        if ( *(_DWORD *)(a1 + 60) > 3u )
        {
          result = (float)v4 / 255.0;
          *(float *)(*(_DWORD *)(a1 + 48) + 12) = result;
        }
      }
    }
  }
  return result;
}


// ===== 324b78 glitch::io::CNumbersAttribute::setColor(glitch::video::SColorf) =====
float __fastcall glitch::io::CNumbersAttribute::setColor(int a1, float a2, float a3, float a4, float a5)
{
  unsigned int v6; // r2
  float result; // r0
  unsigned int v9; // r1
  unsigned int v10; // r3
  unsigned int v11; // r2

  v6 = *(unsigned __int8 *)(a1 + 64);
  result = a2;
  if ( *(_BYTE *)(a1 + 64) )
  {
    if ( !*(_DWORD *)(a1 + 60) )
      return result;
    v11 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 48) + 4 * v11) = 0;
      v10 = *(_DWORD *)(a1 + 60);
      ++v11;
    }
    while ( v11 < v10 );
    if ( !*(_BYTE *)(a1 + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(a1 + 60) )
      return result;
    v9 = v6;
    do
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 36) + 4 * v6) = v9;
      v10 = *(_DWORD *)(a1 + 60);
      ++v6;
    }
    while ( v6 < v10 );
    if ( !*(_BYTE *)(a1 + 64) )
    {
LABEL_7:
      if ( v10 )
      {
        LODWORD(result) = (int)(float)(result * 255.0);
        **(float **)(a1 + 36) = result;
        if ( *(_DWORD *)(a1 + 60) > 1u )
        {
          LODWORD(result) = (int)(float)(a3 * 255.0);
          *(float *)(*(_DWORD *)(a1 + 36) + 4) = result;
          if ( *(_DWORD *)(a1 + 60) > 2u )
          {
            LODWORD(result) = (int)(float)(a4 * 255.0);
            *(float *)(*(_DWORD *)(a1 + 36) + 8) = result;
            if ( *(_DWORD *)(a1 + 60) > 3u )
            {
              LODWORD(result) = (int)(float)(a5 * 255.0);
              *(float *)(*(_DWORD *)(a1 + 36) + 12) = result;
            }
          }
        }
      }
      return result;
    }
  }
  if ( v10 )
  {
    **(float **)(a1 + 48) = result;
    if ( *(_DWORD *)(a1 + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(a1 + 48) + 4) = a3;
      if ( *(_DWORD *)(a1 + 60) > 2u )
      {
        *(float *)(*(_DWORD *)(a1 + 48) + 8) = a4;
        if ( *(_DWORD *)(a1 + 60) > 3u )
          *(float *)(*(_DWORD *)(a1 + 48) + 12) = a5;
      }
    }
  }
  return result;
}


// ===== 324d04 glitch::io::CNumbersAttribute::setVector2d(glitch::core::vector2d<float>) =====
int __fastcall glitch::io::CNumbersAttribute::setVector2d(int result, float *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(result + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v5 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        result = (int)*a2;
        **(_DWORD **)(v3 + 36) = result;
        if ( *(_DWORD *)(v3 + 60) > 1u )
        {
          result = (int)a2[1];
          *(_DWORD *)(*(_DWORD *)(v3 + 36) + 4) = result;
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    **(float **)(result + 48) = *a2;
    if ( *(_DWORD *)(result + 60) > 1u )
      *(float *)(*(_DWORD *)(result + 48) + 4) = a2[1];
  }
  return result;
}


// ===== 324df4 glitch::io::CNumbersAttribute::setVector3d(glitch::core::vector3d<float> const&) =====
int __fastcall glitch::io::CNumbersAttribute::setVector3d(int result, float *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(result + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v5 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        result = (int)*a2;
        **(_DWORD **)(v3 + 36) = result;
        if ( *(_DWORD *)(v3 + 60) > 1u )
        {
          result = (int)a2[1];
          *(_DWORD *)(*(_DWORD *)(v3 + 36) + 4) = result;
          if ( *(_DWORD *)(v3 + 60) > 2u )
          {
            result = (int)a2[2];
            *(_DWORD *)(*(_DWORD *)(v3 + 36) + 8) = result;
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    **(float **)(result + 48) = *a2;
    if ( *(_DWORD *)(result + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(result + 48) + 4) = a2[1];
      if ( *(_DWORD *)(result + 60) > 2u )
        *(float *)(*(_DWORD *)(result + 48) + 8) = a2[2];
    }
  }
  return result;
}


// ===== 324f18 glitch::io::CNumbersAttribute::setVector4d(glitch::core::vector4d<float> const&) =====
int __fastcall glitch::io::CNumbersAttribute::setVector4d(int result, float *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(result + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v5 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        result = (int)*a2;
        **(_DWORD **)(v3 + 36) = result;
        if ( *(_DWORD *)(v3 + 60) > 1u )
        {
          result = (int)a2[1];
          *(_DWORD *)(*(_DWORD *)(v3 + 36) + 4) = result;
          if ( *(_DWORD *)(v3 + 60) > 2u )
          {
            result = (int)a2[2];
            *(_DWORD *)(*(_DWORD *)(v3 + 36) + 8) = result;
            if ( *(_DWORD *)(v3 + 60) > 3u )
            {
              result = (int)a2[3];
              *(_DWORD *)(*(_DWORD *)(v3 + 36) + 12) = result;
            }
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    **(float **)(result + 48) = *a2;
    if ( *(_DWORD *)(result + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(result + 48) + 4) = a2[1];
      if ( *(_DWORD *)(result + 60) > 2u )
      {
        *(float *)(*(_DWORD *)(result + 48) + 8) = a2[2];
        if ( *(_DWORD *)(result + 60) > 3u )
          *(float *)(*(_DWORD *)(result + 48) + 12) = a2[3];
      }
    }
  }
  return result;
}


// ===== 325070 glitch::io::CNumbersAttribute::setString(char const*) =====
unsigned int __fastcall glitch::io::CNumbersAttribute::setString(unsigned int this, glitch::core *a2)
{
  unsigned int v2; // r3
  unsigned int v3; // r4
  int v4; // r12
  float v5; // r2
  int v6; // r3
  int v7; // r6
  glitch::core *v8; // r10
  int v9; // r5
  bool v10; // zf
  unsigned int v11; // r3
  int v12; // t1
  bool v13; // zf
  glitch::core *v14; // r0
  char v15[4]; // [sp+4h] [bp-8h] BYREF

  v2 = *(unsigned __int8 *)(this + 64);
  v3 = this;
  if ( *(_BYTE *)(this + 64) )
  {
    if ( !*(_DWORD *)(this + 60) )
      return this;
    v11 = 0;
    do
    {
      v5 = *(float *)(v3 + 48);
      *(_DWORD *)(LODWORD(v5) + 4 * v11) = 0;
      this = *(_DWORD *)(v3 + 60);
      ++v11;
    }
    while ( v11 < this );
  }
  else
  {
    if ( !*(_DWORD *)(this + 60) )
      return this;
    v4 = *(unsigned __int8 *)(this + 64);
    do
    {
      v5 = *(float *)(v3 + 36);
      *(_DWORD *)(LODWORD(v5) + 4 * v2) = v4;
      this = *(_DWORD *)(v3 + 60);
      ++v2;
    }
    while ( v2 < this );
  }
  if ( this )
  {
    v6 = *(unsigned __int8 *)a2;
    if ( *(_BYTE *)a2 )
    {
      v7 = 0;
      v8 = a2;
      v9 = 0;
      while ( 1 )
      {
        v10 = v6 == 0;
        if ( v6 )
          v10 = v6 == 45;
        if ( !v10 )
        {
          if ( (unsigned __int8)(v6 - 48) <= 9u )
          {
LABEL_26:
            if ( *(_BYTE *)(v3 + 64) )
            {
              *(float *)v15 = 0.0;
              v14 = glitch::core::fast_atof_move(v8, (float *)v15, (float *)LODWORD(v5));
              v5 = *(float *)v15;
              v8 = v14;
              *(float *)(*(_DWORD *)(v3 + 48) + v7) = *(float *)v15;
            }
            else
            {
              *(float *)v15 = 0.0;
              v8 = glitch::core::fast_atof_move(v8, (float *)v15, (float *)LODWORD(v5));
              *(_DWORD *)(*(_DWORD *)(v3 + 36) + v7) = (int)*(float *)v15;
            }
            this = *(_DWORD *)(v3 + 60);
            goto LABEL_14;
          }
          while ( 1 )
          {
            v12 = *((unsigned __int8 *)v8 + 1);
            v8 = (glitch::core *)((char *)v8 + 1);
            v6 = v12;
            LOBYTE(v5) = v12 - 48;
            v13 = v12 == 45;
            if ( v12 != 45 )
              v13 = v6 == 0;
            LODWORD(v5) = LOBYTE(v5);
            if ( v13 )
              break;
            if ( LOBYTE(v5) <= 9u )
              goto LABEL_26;
          }
        }
        if ( v6 )
          goto LABEL_26;
LABEL_14:
        if ( this > ++v9 )
        {
          v6 = *(unsigned __int8 *)v8;
          v7 += 4;
          if ( *(_BYTE *)v8 )
            continue;
        }
        return this;
      }
    }
  }
  return this;
}


// ===== 3251d0 glitch::io::CNumbersAttribute::setVector2d(glitch::core::vector2d<int>) =====
float __fastcall glitch::io::CNumbersAttribute::setVector2d(float result, _DWORD *a2)
{
  unsigned int v2; // r3
  float v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(LODWORD(result) + 64);
  v3 = result;
  if ( *(_BYTE *)(LODWORD(result) + 64) )
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v5 = *(unsigned __int8 *)(LODWORD(result) + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        **(_DWORD **)(LODWORD(result) + 36) = *a2;
        if ( *(_DWORD *)(LODWORD(result) + 60) > 1u )
          *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4) = a2[1];
      }
      return result;
    }
  }
  if ( v6 )
  {
    result = (float)(int)*a2;
    **(float **)(LODWORD(v3) + 48) = result;
    if ( *(_DWORD *)(LODWORD(v3) + 60) > 1u )
    {
      result = (float)(int)a2[1];
      *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 4) = result;
    }
  }
  return result;
}


// ===== 3252bc glitch::io::CNumbersAttribute::setTriangle3d(glitch::core::triangle3d<float>) =====
int __fastcall glitch::io::CNumbersAttribute::setTriangle3d(int result, float *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(result + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v5 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        result = (int)*a2;
        **(_DWORD **)(v3 + 36) = result;
        if ( *(_DWORD *)(v3 + 60) > 1u )
        {
          result = (int)a2[1];
          *(_DWORD *)(*(_DWORD *)(v3 + 36) + 4) = result;
          if ( *(_DWORD *)(v3 + 60) > 2u )
          {
            result = (int)a2[2];
            *(_DWORD *)(*(_DWORD *)(v3 + 36) + 8) = result;
            if ( *(_DWORD *)(v3 + 60) > 3u )
            {
              result = (int)a2[3];
              *(_DWORD *)(*(_DWORD *)(v3 + 36) + 12) = result;
              if ( *(_DWORD *)(v3 + 60) > 4u )
              {
                result = (int)a2[4];
                *(_DWORD *)(*(_DWORD *)(v3 + 36) + 16) = result;
                if ( *(_DWORD *)(v3 + 60) > 5u )
                {
                  result = (int)a2[5];
                  *(_DWORD *)(*(_DWORD *)(v3 + 36) + 20) = result;
                  if ( *(_DWORD *)(v3 + 60) > 6u )
                  {
                    result = (int)a2[6];
                    *(_DWORD *)(*(_DWORD *)(v3 + 36) + 24) = result;
                    if ( *(_DWORD *)(v3 + 60) > 7u )
                    {
                      result = (int)a2[7];
                      *(_DWORD *)(*(_DWORD *)(v3 + 36) + 28) = result;
                      if ( *(_DWORD *)(v3 + 60) > 8u )
                      {
                        result = (int)a2[8];
                        *(_DWORD *)(*(_DWORD *)(v3 + 36) + 32) = result;
                      }
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
  }
  if ( v6 )
  {
    **(float **)(result + 48) = *a2;
    if ( *(_DWORD *)(result + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(result + 48) + 4) = a2[1];
      if ( *(_DWORD *)(result + 60) > 2u )
      {
        *(float *)(*(_DWORD *)(result + 48) + 8) = a2[2];
        if ( *(_DWORD *)(result + 60) > 3u )
        {
          *(float *)(*(_DWORD *)(result + 48) + 12) = a2[3];
          if ( *(_DWORD *)(result + 60) > 4u )
          {
            *(float *)(*(_DWORD *)(result + 48) + 16) = a2[4];
            if ( *(_DWORD *)(result + 60) > 5u )
            {
              *(float *)(*(_DWORD *)(result + 48) + 20) = a2[5];
              if ( *(_DWORD *)(result + 60) > 6u )
              {
                *(float *)(*(_DWORD *)(result + 48) + 24) = a2[6];
                if ( *(_DWORD *)(result + 60) > 7u )
                {
                  *(float *)(*(_DWORD *)(result + 48) + 28) = a2[7];
                  if ( *(_DWORD *)(result + 60) > 8u )
                    *(float *)(*(_DWORD *)(result + 48) + 32) = a2[8];
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


// ===== 325518 glitch::io::CNumbersAttribute::setBoundingBox(glitch::core::aabbox3d<float>) =====
int __fastcall glitch::io::CNumbersAttribute::setBoundingBox(int result, float *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(result + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v5 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        result = (int)*a2;
        **(_DWORD **)(v3 + 36) = result;
        if ( *(_DWORD *)(v3 + 60) > 1u )
        {
          result = (int)a2[1];
          *(_DWORD *)(*(_DWORD *)(v3 + 36) + 4) = result;
          if ( *(_DWORD *)(v3 + 60) > 2u )
          {
            result = (int)a2[2];
            *(_DWORD *)(*(_DWORD *)(v3 + 36) + 8) = result;
            if ( *(_DWORD *)(v3 + 60) > 3u )
            {
              result = (int)a2[3];
              *(_DWORD *)(*(_DWORD *)(v3 + 36) + 12) = result;
              if ( *(_DWORD *)(v3 + 60) > 4u )
              {
                result = (int)a2[4];
                *(_DWORD *)(*(_DWORD *)(v3 + 36) + 16) = result;
                if ( *(_DWORD *)(v3 + 60) > 5u )
                {
                  result = (int)a2[5];
                  *(_DWORD *)(*(_DWORD *)(v3 + 36) + 20) = result;
                }
              }
            }
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    **(float **)(result + 48) = *a2;
    if ( *(_DWORD *)(result + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(result + 48) + 4) = a2[1];
      if ( *(_DWORD *)(result + 60) > 2u )
      {
        *(float *)(*(_DWORD *)(result + 48) + 8) = a2[2];
        if ( *(_DWORD *)(result + 60) > 3u )
        {
          *(float *)(*(_DWORD *)(result + 48) + 12) = a2[3];
          if ( *(_DWORD *)(result + 60) > 4u )
          {
            *(float *)(*(_DWORD *)(result + 48) + 16) = a2[4];
            if ( *(_DWORD *)(result + 60) > 5u )
              *(float *)(*(_DWORD *)(result + 48) + 20) = a2[5];
          }
        }
      }
    }
  }
  return result;
}


// ===== 3256d8 glitch::io::CNumbersAttribute::setPlane(glitch::core::plane3d<float>) =====
int __fastcall glitch::io::CNumbersAttribute::setPlane(int result, float *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(result + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v5 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        result = (int)*a2;
        **(_DWORD **)(v3 + 36) = result;
        if ( *(_DWORD *)(v3 + 60) > 1u )
        {
          result = (int)a2[1];
          *(_DWORD *)(*(_DWORD *)(v3 + 36) + 4) = result;
          if ( *(_DWORD *)(v3 + 60) > 2u )
          {
            result = (int)a2[2];
            *(_DWORD *)(*(_DWORD *)(v3 + 36) + 8) = result;
            if ( *(_DWORD *)(v3 + 60) > 3u )
            {
              result = (int)a2[3];
              *(_DWORD *)(*(_DWORD *)(v3 + 36) + 12) = result;
            }
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    **(float **)(result + 48) = *a2;
    if ( *(_DWORD *)(result + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(result + 48) + 4) = a2[1];
      if ( *(_DWORD *)(result + 60) > 2u )
      {
        *(float *)(*(_DWORD *)(result + 48) + 8) = a2[2];
        if ( *(_DWORD *)(result + 60) > 3u )
          *(float *)(*(_DWORD *)(result + 48) + 12) = a2[3];
      }
    }
  }
  return result;
}


// ===== 325830 glitch::io::CNumbersAttribute::setDimension2d(glitch::core::dimension2d<int>) =====
float __fastcall glitch::io::CNumbersAttribute::setDimension2d(float result, int a2, int a3)
{
  unsigned int v3; // r3
  float v4; // r4
  unsigned int v6; // r2
  unsigned int v7; // r3

  v3 = *(unsigned __int8 *)(LODWORD(result) + 64);
  v4 = result;
  if ( *(_BYTE *)(LODWORD(result) + 64) )
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    result = 0.0;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(v4) + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(LODWORD(v4) + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(LODWORD(v4) + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    LODWORD(result) = *(unsigned __int8 *)(LODWORD(result) + 64);
    do
    {
      *(float *)(*(_DWORD *)(LODWORD(v4) + 36) + 4 * v3) = result;
      v6 = *(_DWORD *)(LODWORD(v4) + 60);
      ++v3;
    }
    while ( v3 < v6 );
    if ( !*(_BYTE *)(LODWORD(v4) + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        **(_DWORD **)(LODWORD(v4) + 36) = a2;
        if ( *(_DWORD *)(LODWORD(v4) + 60) > 1u )
          *(_DWORD *)(*(_DWORD *)(LODWORD(v4) + 36) + 4) = a3;
      }
      return result;
    }
  }
  if ( v6 )
  {
    result = (float)a2;
    **(float **)(LODWORD(v4) + 48) = (float)a2;
    if ( *(_DWORD *)(LODWORD(v4) + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(LODWORD(v4) + 48) + 4) = (float)a3;
      return (float)a3;
    }
  }
  return result;
}


// ===== 325918 glitch::io::CNumbersAttribute::setLine2d(glitch::core::line2d<int>) =====
float __fastcall glitch::io::CNumbersAttribute::setLine2d(float result, _DWORD *a2)
{
  unsigned int v2; // r3
  float v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(LODWORD(result) + 64);
  v3 = result;
  if ( *(_BYTE *)(LODWORD(result) + 64) )
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(LODWORD(result) + 60) )
      return result;
    v5 = *(unsigned __int8 *)(LODWORD(result) + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(LODWORD(result) + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(LODWORD(result) + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        **(_DWORD **)(LODWORD(result) + 36) = *a2;
        if ( *(_DWORD *)(LODWORD(result) + 60) > 1u )
        {
          *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 4) = a2[1];
          if ( *(_DWORD *)(LODWORD(result) + 60) > 2u )
          {
            *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 8) = a2[2];
            if ( *(_DWORD *)(LODWORD(result) + 60) > 3u )
              *(_DWORD *)(*(_DWORD *)(LODWORD(result) + 36) + 12) = a2[3];
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    result = (float)(int)*a2;
    **(float **)(LODWORD(v3) + 48) = result;
    if ( *(_DWORD *)(LODWORD(v3) + 60) > 1u )
    {
      result = (float)(int)a2[1];
      *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 4) = result;
      if ( *(_DWORD *)(LODWORD(v3) + 60) > 2u )
      {
        result = (float)(int)a2[2];
        *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 8) = result;
        if ( *(_DWORD *)(LODWORD(v3) + 60) > 3u )
        {
          result = (float)(int)a2[3];
          *(float *)(*(_DWORD *)(LODWORD(v3) + 48) + 12) = result;
        }
      }
    }
  }
  return result;
}


// ===== 325a6c glitch::io::CNumbersAttribute::setLine2d(glitch::core::line2d<float>) =====
int __fastcall glitch::io::CNumbersAttribute::setLine2d(int result, float *a2)
{
  unsigned int v2; // r3
  int v3; // r4
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = result;
  if ( *(_BYTE *)(result + 64) )
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v7 = 0;
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 48) + 4 * v7) = 0;
      v6 = *(_DWORD *)(result + 60);
      ++v7;
    }
    while ( v7 < v6 );
    if ( !*(_BYTE *)(result + 64) )
      goto LABEL_7;
  }
  else
  {
    if ( !*(_DWORD *)(result + 60) )
      return result;
    v5 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v5;
      v6 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v6 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      if ( v6 )
      {
        result = (int)*a2;
        **(_DWORD **)(v3 + 36) = result;
        if ( *(_DWORD *)(v3 + 60) > 1u )
        {
          result = (int)a2[1];
          *(_DWORD *)(*(_DWORD *)(v3 + 36) + 4) = result;
          if ( *(_DWORD *)(v3 + 60) > 2u )
          {
            result = (int)a2[2];
            *(_DWORD *)(*(_DWORD *)(v3 + 36) + 8) = result;
            if ( *(_DWORD *)(v3 + 60) > 3u )
            {
              result = (int)a2[3];
              *(_DWORD *)(*(_DWORD *)(v3 + 36) + 12) = result;
            }
          }
        }
      }
      return result;
    }
  }
  if ( v6 )
  {
    **(float **)(result + 48) = *a2;
    if ( *(_DWORD *)(result + 60) > 1u )
    {
      *(float *)(*(_DWORD *)(result + 48) + 4) = a2[1];
      if ( *(_DWORD *)(result + 60) > 2u )
      {
        *(float *)(*(_DWORD *)(result + 48) + 8) = a2[2];
        if ( *(_DWORD *)(result + 60) > 3u )
          *(float *)(*(_DWORD *)(result + 48) + 12) = a2[3];
      }
    }
  }
  return result;
}


// ===== 325bc4 glitch::io::CNumbersAttribute::setMatrix(glitch::core::CMatrix4<float>) =====
int __fastcall glitch::io::CNumbersAttribute::setMatrix(int result, int a2)
{
  unsigned int v2; // r3
  _DWORD *v3; // r4
  unsigned int v5; // r2
  int v6; // r1
  unsigned int v7; // r7
  int v8; // r10
  int v9; // r5
  int v10; // r6
  int v11; // r9
  int v12; // r12
  int v13; // r5
  int v14; // r1
  int v15; // r3
  bool v16; // cf
  unsigned int i; // r3

  v2 = *(unsigned __int8 *)(result + 64);
  v3 = (_DWORD *)result;
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
      if ( !*(_BYTE *)(result + 64) )
        goto LABEL_7;
    }
  }
  else
  {
    v5 = *(_DWORD *)(result + 60);
    if ( !v5 )
      goto LABEL_7;
    v6 = *(unsigned __int8 *)(result + 64);
    do
    {
      *(_DWORD *)(*(_DWORD *)(result + 36) + 4 * v2) = v6;
      v5 = *(_DWORD *)(result + 60);
      ++v2;
    }
    while ( v2 < v5 );
    if ( !*(_BYTE *)(result + 64) )
    {
LABEL_7:
      v7 = 0;
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = v8;
        if ( v7 >= v5 )
          goto LABEL_10;
        while ( 1 )
        {
          v11 = v3[9];
          *(_BYTE *)(a2 + 64) = 0;
          result = (int)*(float *)(a2 + v8 + 4 * v9);
          *(_DWORD *)(v11 + v10) = result;
LABEL_10:
          ++v9;
          v10 += 4;
          if ( v9 == 4 )
            break;
          while ( v7 + v9 >= v3[15] )
          {
            ++v9;
            v10 += 4;
            if ( v9 == 4 )
              goto LABEL_13;
          }
        }
LABEL_13:
        v8 += 16;
        v7 += 4;
        if ( v8 == 64 )
          return result;
        v5 = v3[15];
      }
    }
  }
  v12 = 0;
  v13 = 0;
  while ( 1 )
  {
    v14 = v13;
    v15 = 0;
    while ( 1 )
    {
      result = v12 + v15;
      v16 = v12 + v15 >= v5;
      if ( v12 + v15 < v5 )
      {
        v5 = v3[12];
        *(_BYTE *)(a2 + 64) = 0;
        result = *(_DWORD *)(a2 + v13 + 4 * v15);
      }
      ++v15;
      if ( !v16 )
        *(_DWORD *)(v5 + v14) = result;
      v14 += 4;
      if ( v15 == 4 )
        break;
      v5 = v3[15];
    }
    v13 += 16;
    v12 += 4;
    if ( v13 == 64 )
      break;
    v5 = v3[15];
  }
  return result;
}


// ===== 325d28 CMsgQuestsSync::~CMsgQuestsSync() =====
void __fastcall CMsgQuestsSync::~CMsgQuestsSync(CMsgQuestsSync *this)
{
  void *v2; // r0

  v2 = *((void **)this + 22);
  *(_DWORD *)this = off_95B2A0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  if ( v2 )
  {
    CustomFree(v2);
    *((_DWORD *)this + 22) = 0;
  }
  CMessage::~CMessage(this);
}


// ===== 325d80 CMsgQuestsSync::~CMsgQuestsSync() =====
void __fastcall CMsgQuestsSync::~CMsgQuestsSync(CMsgQuestsSync *this)
{
  CMsgQuestsSync::~CMsgQuestsSync(this);
  CustomFree(this);
}


// ===== 325d9c std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(float *,float const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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
  v9 = (char *)GlitchAlloc(v8, 0);
  v10 = v9;
  v11 = a2 - *(_DWORD *)a1;
  if ( v11 )
    v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
  else
    v12 = v9;
  *(_DWORD *)v12 = *a3;
  GlitchFree(*(void **)a1);
  *(_DWORD *)a1 = v10;
  *(_DWORD *)(a1 + 4) = v12 + 4;
  *(_DWORD *)(a1 + 8) = &v10[v8];
}


// ===== 325e2c std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(wchar_t const*,wchar_t const*) =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        _DWORD *a1,
        _BYTE *a2,
        _BYTE *a3)
{
  size_t v3; // r5
  _DWORD *result; // r0

  v3 = a3 - a2;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    ((a3 - a2) >> 2) + 1);
  result = (_DWORD *)a1[17];
  if ( a3 != a2 )
    result = (char *)memcpy(result, a2, v3) + v3;
  a1[16] = result;
  *result = 0;
  return result;
}


// ===== 325e78 glitch::io::CStringAttribute::getStringW(void) =====
glitch::io::CStringAttribute *__fastcall glitch::io::CStringAttribute::getStringW(
        glitch::io::CStringAttribute *this,
        int a2)
{
  int v2; // r7
  int v5; // r5
  int v6; // r6
  int v7; // r5
  _DWORD *v8; // r2

  v2 = *(unsigned __int8 *)(a2 + 33);
  if ( *(_BYTE *)(a2 + 33) )
  {
    *((_DWORD *)this + 16) = this;
    *((_DWORD *)this + 17) = this;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      this,
      *(_BYTE **)(a2 + 128),
      *(_BYTE **)(a2 + 124));
    return this;
  }
  else
  {
    v5 = *(_DWORD *)(a2 + 52);
    v6 = *(_DWORD *)(a2 + 56);
    *((_DWORD *)this + 16) = this;
    *((_DWORD *)this + 17) = this;
    v7 = v5 - v6;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      this,
      v7 + 1);
    v8 = *((_DWORD **)this + 17);
    if ( v7 > 0 )
    {
      do
      {
        v8[v2] = *(char *)(v6 + v2);
        ++v2;
      }
      while ( v2 != v7 );
      v8 += v2;
    }
    *((_DWORD *)this + 16) = v8;
    *v8 = 0;
    return this;
  }
}


// ===== 325efc std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(wchar_t const*,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0> const&) =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1,
        wchar_t *s)
{
  size_t v4; // r0

  a1[16] = a1;
  a1[17] = a1;
  v4 = wcslen(s);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    s,
    &s[v4]);
  return a1;
}


// ===== 325f30 glitch::io::CBoolAttribute::getStringW(void) =====
glitch::io::CBoolAttribute *__fastcall glitch::io::CBoolAttribute::getStringW(glitch::io::CBoolAttribute *this, int a2)
{
  wchar_t *v3; // r1

  if ( *(_BYTE *)(a2 + 33) )
    v3 = (wchar_t *)&unk_8BEB58;
  else
    v3 = (wchar_t *)&unk_8BEB40;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    this,
    v3);
  return this;
}


// ===== 325f7c glitch::core::int2stringw(int) =====
glitch::core *__fastcall glitch::core::int2stringw(glitch::core *this, int a2)
{
  wchar_t *v4; // r4
  void *v5; // r1
  int v7; // [sp+0h] [bp-8h]
  int v8; // [sp+4h] [bp-4h]
  int savedregs; // [sp+8h] [bp+0h]
  int savedregs_4; // [sp+Ch] [bp+4h]
  int savedregs_8; // [sp+10h] [bp+8h]
  int savedregs_12; // [sp+14h] [bp+Ch]

  v4 = (wchar_t *)glitch::core::allocProcessBuffer((glitch::core *)&dword_44, a2);
  swprintf((int)v4, 16, (int)&unk_8BEB70, a2, v7, v8, savedregs, savedregs_4, savedregs_8, savedregs_12);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    this,
    v4);
  if ( v4 )
    glitch::core::releaseProcessBuffer((glitch::core *)v4, v5);
  return this;
}


// ===== 325fdc glitch::io::CIntAttribute::getStringW(void) =====
glitch::io::CIntAttribute *__fastcall glitch::io::CIntAttribute::getStringW(glitch::io::CIntAttribute *this, int a2)
{
  glitch::core::int2stringw(this, *(_DWORD *)(a2 + 36));
  return this;
}


// ===== 325ff4 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(char const*,char const*) =====
_BYTE *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        _DWORD *a1,
        _BYTE *a2,
        _BYTE *a3)
{
  size_t v3; // r5
  _BYTE *result; // r0

  v3 = a3 - a2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    a3 - a2 + 1);
  result = (_BYTE *)a1[5];
  if ( a3 != a2 )
    result = (char *)memcpy(result, a2, v3) + v3;
  a1[4] = result;
  *result = 0;
  return result;
}


// ===== 32603c std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(char const*,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0> const&) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1,
        char *a2)
{
  size_t v4; // r0

  a1[4] = a1;
  a1[5] = a1;
  v4 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    a2,
    &a2[v4]);
  return a1;
}


// ===== 326070 glitch::core::int2stringc(int) =====
glitch::core *__fastcall glitch::core::int2stringc(glitch::core *this, int a2)
{
  char *v4; // r4
  void *v5; // r1

  v4 = (char *)glitch::core::allocProcessBuffer((glitch::core *)((char *)&word_10 + 1), a2);
  snprintf(v4, 0x10u, "%d", a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    this,
    v4);
  if ( v4 )
    glitch::core::releaseProcessBuffer((glitch::core *)v4, v5);
  return this;
}


// ===== 3260d0 glitch::io::CStringAttribute::getString(void) =====
glitch::io::CStringAttribute *__fastcall glitch::io::CStringAttribute::getString(
        glitch::io::CStringAttribute *this,
        int a2)
{
  int v4; // r2
  int v5; // r1

  if ( *(_BYTE *)(a2 + 33) )
  {
    v4 = *(_DWORD *)(a2 + 124);
    v5 = *(_DWORD *)(a2 + 128);
    *((_DWORD *)this + 4) = this;
    *((_DWORD *)this + 5) = this;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(
      this,
      v5,
      v4);
  }
  else
  {
    *((_DWORD *)this + 4) = this;
    *((_DWORD *)this + 5) = this;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      this,
      *(_BYTE **)(a2 + 56),
      *(_BYTE **)(a2 + 52));
  }
  return this;
}


// ===== 326124 std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int a2)
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
  v5 = (char *)GlitchAlloc(v3, 0);
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


// ===== 326190 std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int a2)
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
  v5 = (char *)GlitchAlloc(v3, 0);
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


// ===== 3261fc Application::RemoveUnderlayNode(glitch::scene::ISceneNode *) =====
char *__fastcall Application::RemoveUnderlayNode(char *result, int a2)
{
  int v2; // r4
  char *v3; // r12
  char *v4; // r1

  v2 = *((_DWORD *)result + 46);
  if ( v2 )
  {
    result = *(char **)(v2 + 304);
    v3 = *(char **)(v2 + 308);
    if ( result != v3 )
    {
      while ( a2 != *(_DWORD *)result )
      {
        result += 4;
        if ( result == v3 )
          return result;
      }
      v4 = result + 4;
      if ( result + 4 != v3 )
      {
        result = (char *)memmove(result, v4, v3 - v4);
        v4 = *(char **)(v2 + 308);
      }
      *(_DWORD *)(v2 + 308) = v4 - 4;
    }
  }
  return result;
}


// ===== 326268 glitch::io::IAttribute::getString(void) =====
glitch::io::IAttribute *__fastcall glitch::io::IAttribute::getString(glitch::io::IAttribute *this, int a2)
{
  void *v3; // r1
  int v4; // r2
  _BYTE v6[64]; // [sp+4h] [bp-50h] BYREF
  int v7; // [sp+44h] [bp-10h]
  void *p; // [sp+48h] [bp-Ch]

  (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)a2 + 32))(v6);
  v3 = p;
  v4 = v7;
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(
    this,
    (int)v3,
    v4);
  if ( p != v6 && p )
    GlitchFree(p);
  return this;
}


// ===== 3262c8 glitch::core::stringc2stringw(char const*) =====
glitch::core *__fastcall glitch::core::stringc2stringw(glitch::core *this, const char *a2)
{
  signed int v4; // r6
  _BYTE *v5; // r1
  int i; // r3
  _DWORD v8[16]; // [sp+4h] [bp-50h] BYREF
  _BYTE *v9; // [sp+44h] [bp-10h]
  void *p; // [sp+48h] [bp-Ch]

  if ( a2 )
  {
    v4 = LC_API_STRLEN_0(a2);
    v9 = v8;
    p = v8;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v8,
      v4 + 1);
    v5 = p;
    if ( v4 > 0 )
    {
      for ( i = 0; i != v4; ++i )
        *(_DWORD *)&v5[4 * i] = a2[i];
      v5 += 4 * i;
    }
    v9 = v5;
    *(_DWORD *)v5 = 0;
    *((_DWORD *)this + 16) = this;
    *((_DWORD *)this + 17) = this;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      this,
      p,
      v9);
    if ( p != v8 && p )
      GlitchFree(p);
  }
  else
  {
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      this,
      dword_8BEC18);
  }
  return this;
}


// ===== 326388 glitch::io::CColorAttribute::getStringW(void) =====
glitch::io::CColorAttribute *__fastcall glitch::io::CColorAttribute::getStringW(
        glitch::io::CColorAttribute *this,
        int a2)
{
  unsigned int v4; // [sp+8h] [bp-24h]
  char s[12]; // [sp+18h] [bp-14h] BYREF

  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 24))(a2);
  sprintf(s, "%02x%02x%02x%02x", HIBYTE(v4), (unsigned __int8)v4, BYTE1(v4), BYTE2(v4));
  glitch::core::stringc2stringw(this, s);
  return this;
}


// ===== 326444 glitch::io::CStringAttribute::setString(char const*) =====
void __fastcall glitch::io::CStringAttribute::setString(glitch::io::CStringAttribute *this, char *a2)
{
  _DWORD **v4; // r5
  size_t v5; // r0
  _DWORD *v6[17]; // [sp+0h] [bp-4Ch] BYREF
  void *p; // [sp+44h] [bp-8h]

  if ( *((_BYTE *)this + 33) )
  {
    v4 = (_DWORD **)((char *)this + 60);
    glitch::core::stringc2stringw((glitch::core *)v6, a2);
    if ( v4 != v6 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v4,
        (const wchar_t *)p,
        v6[16]);
    if ( p != v6 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
  else
  {
    v5 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)this + 9,
      a2,
      &a2[v5]);
  }
}


// ===== 3264c4 glitch::io::CNumbersAttribute::getFloatArray(void) =====
glitch::io::CNumbersAttribute *__fastcall glitch::io::CNumbersAttribute::getFloatArray(
        glitch::io::CNumbersAttribute *this,
        int a2)
{
  int v4; // r3
  int v5; // r7
  unsigned int v6; // r5
  float v7; // r0
  float *v8; // r1
  float *v9; // r3
  float v11; // [sp+4h] [bp-4h] BYREF

  if ( *(_BYTE *)(a2 + 64) )
    goto LABEL_10;
  v4 = *(_DWORD *)(a2 + 48);
  if ( v4 != *(_DWORD *)(a2 + 52) )
    *(_DWORD *)(a2 + 52) = v4;
  if ( !*(_DWORD *)(a2 + 60) )
  {
LABEL_10:
    v5 = a2 + 48;
  }
  else
  {
    v5 = a2 + 48;
    v6 = 0;
    do
    {
      while ( 1 )
      {
        v7 = (float)*(int *)(*(_DWORD *)(a2 + 36) + 4 * v6);
        v8 = *(float **)(a2 + 52);
        v9 = *(float **)(a2 + 56);
        v11 = v7;
        if ( v8 == v9 )
          break;
        *v8 = v7;
        ++v6;
        *(_DWORD *)(a2 + 52) += 4;
        if ( *(_DWORD *)(a2 + 60) <= v6 )
          goto LABEL_9;
      }
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        v5,
        (int)v8,
        &v11);
      ++v6;
    }
    while ( *(_DWORD *)(a2 + 60) > v6 );
  }
LABEL_9:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::vector(this, v5);
  return this;
}


// ===== 326588 glitch::io::IAttribute::getMatrix(void) =====
glitch::io::IAttribute *__fastcall glitch::io::IAttribute::getMatrix(glitch::io::IAttribute *this)
{
  *((_BYTE *)this + 64) = 0;
  LC_API_MEMSET_0(this, 0, 0x40u);
  *((_BYTE *)this + 64) = 1;
  *((_DWORD *)this + 15) = 1065353216;
  *(_DWORD *)this = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  return this;
}


// ===== 3265c4 glitch::io::CBoolAttribute::~CBoolAttribute() =====
void __fastcall glitch::io::CBoolAttribute::~CBoolAttribute(glitch::io::CBoolAttribute *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_95B608;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 7);
  if ( v2 != v1 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 326610 glitch::io::CFloatAttribute::~CFloatAttribute() =====
void __fastcall glitch::io::CFloatAttribute::~CFloatAttribute(glitch::io::CFloatAttribute *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_95B608;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 7);
  if ( v2 != v1 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 32665c glitch::io::CIntAttribute::~CIntAttribute() =====
void __fastcall glitch::io::CIntAttribute::~CIntAttribute(glitch::io::CIntAttribute *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_95B608;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 7);
  if ( v2 != v1 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 3266a8 glitch::io::CStringAttribute::~CStringAttribute() =====
void __fastcall glitch::io::CStringAttribute::~CStringAttribute(glitch::io::CStringAttribute *this)
{
  char *v2; // r2
  char *v3; // r0
  char *v4; // r0
  char *v5; // r0

  *(_DWORD *)this = off_95B980;
  v2 = (char *)this + 60;
  v3 = *((char **)this + 32);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  v4 = *((char **)this + 14);
  if ( v4 != (char *)this + 36 && v4 )
    GlitchFree(v4);
  *(_DWORD *)this = off_95B608;
  v5 = *((char **)this + 7);
  if ( v5 != (char *)this + 8 )
  {
    if ( v5 )
      GlitchFree(v5);
  }
}


// ===== 326740 glitch::io::CStringAttribute::~CStringAttribute() =====
void __fastcall glitch::io::CStringAttribute::~CStringAttribute(glitch::io::CStringAttribute *this)
{
  glitch::io::CStringAttribute::~CStringAttribute(this);
  CustomFree(this);
}


// ===== 32675c glitch::io::CNumbersAttribute::~CNumbersAttribute() =====
void __fastcall glitch::io::CNumbersAttribute::~CNumbersAttribute(glitch::io::CNumbersAttribute *this)
{
  void *v2; // r0
  void *v3; // r0
  char *v4; // r0

  v2 = *((void **)this + 12);
  *(_DWORD *)this = off_95BCE8;
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 9);
  if ( v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_95B608;
  v4 = *((char **)this + 7);
  if ( v4 != (char *)this + 8 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 3267dc glitch::io::CNumbersAttribute::~CNumbersAttribute() =====
void __fastcall glitch::io::CNumbersAttribute::~CNumbersAttribute(glitch::io::CNumbersAttribute *this)
{
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  CustomFree(this);
}


// ===== 3267f8 glitch::io::CNumbersAttribute::~CNumbersAttribute() =====
void __fastcall glitch::io::CNumbersAttribute::~CNumbersAttribute(glitch::io::CNumbersAttribute *this)
{
  void *v2; // r0
  void *v3; // r0
  char *v4; // r0

  v2 = *((void **)this + 12);
  *(_DWORD *)this = off_95BCE8;
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 9);
  if ( v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_95B608;
  v4 = *((char **)this + 7);
  if ( v4 != (char *)this + 8 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 326878 glitch::io::CVector4DAttribute::~CVector4DAttribute() =====
void __fastcall glitch::io::CVector4DAttribute::~CVector4DAttribute(glitch::io::CVector4DAttribute *this)
{
  *(_DWORD *)this = off_95C1C8;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 3268ac glitch::io::CVector3DAttribute::~CVector3DAttribute() =====
void __fastcall glitch::io::CVector3DAttribute::~CVector3DAttribute(glitch::io::CVector3DAttribute *this)
{
  *(_DWORD *)this = off_95C090;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 3268e0 glitch::io::CVector2DAttribute::~CVector2DAttribute() =====
void __fastcall glitch::io::CVector2DAttribute::~CVector2DAttribute(glitch::io::CVector2DAttribute *this)
{
  *(_DWORD *)this = off_95BF58;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 326914 glitch::io::CColorfAttribute::~CColorfAttribute() =====
void __fastcall glitch::io::CColorfAttribute::~CColorfAttribute(glitch::io::CColorfAttribute *this)
{
  *(_DWORD *)this = off_95BE20;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 326948 glitch::io::CColorAttribute::~CColorAttribute() =====
void __fastcall glitch::io::CColorAttribute::~CColorAttribute(glitch::io::CColorAttribute *this)
{
  *(_DWORD *)this = off_95BBB0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 32697c glitch::io::CVector3DAttribute::~CVector3DAttribute() =====
void __fastcall glitch::io::CVector3DAttribute::~CVector3DAttribute(glitch::io::CVector3DAttribute *this)
{
  *(_DWORD *)this = off_95C090;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  CustomFree(this);
}


// ===== 3269b8 glitch::io::CVector4DAttribute::~CVector4DAttribute() =====
void __fastcall glitch::io::CVector4DAttribute::~CVector4DAttribute(glitch::io::CVector4DAttribute *this)
{
  *(_DWORD *)this = off_95C1C8;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  CustomFree(this);
}


// ===== 3269f4 glitch::io::CColorAttribute::~CColorAttribute() =====
void __fastcall glitch::io::CColorAttribute::~CColorAttribute(glitch::io::CColorAttribute *this)
{
  *(_DWORD *)this = off_95BBB0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  CustomFree(this);
}


// ===== 326a30 glitch::io::CColorfAttribute::~CColorfAttribute() =====
void __fastcall glitch::io::CColorfAttribute::~CColorfAttribute(glitch::io::CColorfAttribute *this)
{
  *(_DWORD *)this = off_95BE20;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  CustomFree(this);
}


// ===== 326a6c glitch::io::CVector2DAttribute::~CVector2DAttribute() =====
void __fastcall glitch::io::CVector2DAttribute::~CVector2DAttribute(glitch::io::CVector2DAttribute *this)
{
  *(_DWORD *)this = off_95BF58;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  CustomFree(this);
}


// ===== 326aa8 glitch::io::IAttribute::~IAttribute() =====
void __fastcall glitch::io::IAttribute::~IAttribute(glitch::io::IAttribute *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_95B608;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 7);
  if ( v2 != v1 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 326af4 glitch::io::CNumbersAttribute::getMatrix(void) =====
glitch::io::CNumbersAttribute *__fastcall glitch::io::CNumbersAttribute::getMatrix(
        glitch::io::CNumbersAttribute *this,
        int a2)
{
  int v2; // r10
  char v3; // r11
  int v4; // r6
  int v7; // r12
  int v8; // r8
  bool v9; // zf
  int v10; // r2
  int j; // r3
  unsigned int v12; // r0
  int v13; // r1
  int v15; // r7
  int i; // r6

  v4 = 0;
  *((_BYTE *)this + 64) = 0;
  LC_API_MEMSET_0(this, 0, 0x40u);
  *((_BYTE *)this + 64) = 1;
  *((_DWORD *)this + 15) = 1065353216;
  *(_DWORD *)this = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  v8 = *(unsigned __int8 *)(a2 + 64);
  v9 = v8 == 0;
  if ( *(_BYTE *)(a2 + 64) )
  {
    v7 = 0;
    v8 = 0;
  }
  else
  {
    v2 = *(unsigned __int8 *)(a2 + 64);
    v3 = *(_BYTE *)(a2 + 64);
  }
  if ( v9 )
  {
    do
    {
      v15 = v2;
      for ( i = 0; i != 4; ++i )
      {
        if ( (unsigned int)(v8 + i) < *(_DWORD *)(a2 + 60) )
        {
          *((_BYTE *)this + 64) = v3;
          *(float *)((char *)this + 4 * i + v2) = (float)*(int *)(*(_DWORD *)(a2 + 36) + v15);
        }
        v15 += 4;
      }
      v2 += 16;
      v8 += 4;
    }
    while ( v2 != 64 );
  }
  else
  {
    do
    {
      v10 = v7;
      for ( j = 0; j != 4; ++j )
      {
        v12 = *(_DWORD *)(a2 + 60);
        v13 = v4 + j;
        if ( v12 > v4 + j )
        {
          *((_BYTE *)this + 64) = 0;
          v13 = *(_DWORD *)(*(_DWORD *)(a2 + 48) + v10);
        }
        v10 += 4;
        if ( v12 > v4 + j )
          *(_DWORD *)((char *)this + 4 * j + v7) = v13;
      }
      v7 += 16;
      v4 += 4;
    }
    while ( v7 != 64 );
  }
  return this;
}


// ===== 326bf0 glitch::io::IAttribute::~IAttribute() =====
void __fastcall glitch::io::IAttribute::~IAttribute(glitch::io::IAttribute *this)
{
  char *v2; // r2
  char *v3; // r0

  *(_DWORD *)this = off_95B608;
  v2 = (char *)this + 8;
  v3 = *((char **)this + 7);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_95B720;
  CustomFree(this);
}


// ===== 326c58 glitch::core::stringw2stringc(wchar_t const*) =====
glitch::core *__fastcall glitch::core::stringw2stringc(glitch::core *this, const wchar_t *a2)
{
  size_t v4; // r0
  _DWORD v6[4]; // [sp+Ch] [bp-1Ch] BYREF
  _BYTE *v7; // [sp+1Ch] [bp-Ch]
  void *p; // [sp+20h] [bp-8h]

  if ( a2 )
  {
    v4 = wcslen(a2);
    v7 = v6;
    p = v6;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(
      v6,
      (int)a2,
      (int)&a2[v4]);
    *((_DWORD *)this + 4) = this;
    *((_DWORD *)this + 5) = this;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      this,
      p,
      v7);
    if ( p != v6 && p )
      GlitchFree(p);
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      this,
      "");
  }
  return this;
}


// ===== 326d20 glitch::io::IAttribute::setString(wchar_t const*) =====
void __fastcall glitch::io::IAttribute::setString(glitch::io::IAttribute *this, const wchar_t *a2)
{
  void (__fastcall *v3)(glitch::io::IAttribute *, void *); // r8
  _BYTE v4[20]; // [sp+4h] [bp-1Ch] BYREF
  void *p; // [sp+18h] [bp-8h]

  v3 = *(void (__fastcall **)(glitch::io::IAttribute *, void *))(*(_DWORD *)this + 144);
  glitch::core::stringw2stringc((glitch::core *)v4, a2);
  v3(this, p);
  if ( p != v4 )
  {
    if ( p )
      GlitchFree(p);
  }
}


// ===== 326da4 glitch::io::CStringAttribute::setString(wchar_t const*) =====
void __fastcall glitch::io::CStringAttribute::setString(glitch::io::CStringAttribute *this, const wchar_t *s)
{
  _DWORD *v4; // r7
  size_t v5; // r0
  _BYTE v6[16]; // [sp+4h] [bp-20h] BYREF
  _BYTE *v7; // [sp+14h] [bp-10h]
  void *p; // [sp+18h] [bp-Ch]

  if ( *((_BYTE *)this + 33) )
  {
    v5 = wcslen(s);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)this + 60,
      s,
      &s[v5]);
  }
  else
  {
    v4 = (_DWORD *)((char *)this + 36);
    glitch::core::stringw2stringc((glitch::core *)v6, s);
    if ( v4 != (_DWORD *)v6 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v4,
        p,
        v7);
    if ( p != v6 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
}


// ===== 326e5c glitch::io::CBoolAttribute::~CBoolAttribute() =====
void __fastcall glitch::io::CBoolAttribute::~CBoolAttribute(glitch::io::CBoolAttribute *this)
{
  char *v2; // r2
  char *v3; // r0

  *(_DWORD *)this = off_95B608;
  v2 = (char *)this + 8;
  v3 = *((char **)this + 7);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_95B720;
  CustomFree(this);
}


// ===== 326ec4 glitch::io::CStringAttribute::setInt(int) =====
void __fastcall glitch::io::CStringAttribute::setInt(glitch::io::CStringAttribute *this, int a2)
{
  _BYTE *v2; // r7
  _BYTE *v3; // r0
  _DWORD *v4; // r7
  _BYTE v5[64]; // [sp+4h] [bp-68h] BYREF
  _DWORD *v6; // [sp+44h] [bp-28h]
  void *p; // [sp+48h] [bp-24h]
  _BYTE v8[16]; // [sp+4Ch] [bp-20h] BYREF
  _BYTE *v9; // [sp+5Ch] [bp-10h]
  _BYTE *v10; // [sp+60h] [bp-Ch]

  if ( *((_BYTE *)this + 33) )
  {
    v2 = (char *)this + 60;
    glitch::core::int2stringw((glitch::core *)v5, a2);
    if ( v2 != v5 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v2,
        (const wchar_t *)p,
        v6);
    v3 = p;
    if ( p != v5 )
    {
LABEL_5:
      if ( v3 )
        GlitchFree(v3);
    }
  }
  else
  {
    v4 = (_DWORD *)((char *)this + 36);
    glitch::core::int2stringc((glitch::core *)v8, a2);
    if ( v4 != (_DWORD *)v8 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v4,
        v10,
        v9);
    v3 = v10;
    if ( v10 != v8 )
      goto LABEL_5;
  }
}


// ===== 326f90 glitch::io::CVector2DAttribute::getMatrix(void) =====
glitch::io::CVector2DAttribute *__fastcall glitch::io::CVector2DAttribute::getMatrix(
        glitch::io::CVector2DAttribute *this)
{
  *((_BYTE *)this + 64) = 0;
  LC_API_MEMSET_0(this, 0, 0x40u);
  *((_BYTE *)this + 64) = 1;
  *((_DWORD *)this + 15) = 1065353216;
  *(_DWORD *)this = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  return this;
}


// ===== 326fcc UnderlaySceneNode::AddUnderlayNode(glitch::scene::ISceneNode *) =====
_DWORD *__fastcall UnderlaySceneNode::AddUnderlayNode(_DWORD *result, int a2)
{
  char *v2; // r3
  char *v3; // r8
  _DWORD *v4; // r5
  _DWORD *v6; // r2
  unsigned int v7; // r3
  unsigned int v8; // r7
  size_t v9; // r7
  char *v10; // r0
  _BYTE *v11; // r1
  char *v12; // r6
  size_t v13; // r8
  char *v14; // r8

  v2 = (char *)result[76];
  v3 = (char *)result[77];
  v4 = result;
  if ( v2 != v3 )
  {
    if ( *(_DWORD *)v2 == a2 )
      return result;
    v6 = (_DWORD *)result[76];
    while ( ++v6 != (_DWORD *)v3 )
    {
      if ( *v6 == a2 )
        return result;
    }
  }
  if ( (char *)result[78] == v3 )
  {
    v7 = (v3 - v2) >> 2;
    if ( v7 )
      v8 = 2 * v7;
    else
      v8 = 1;
    if ( v8 > 0x3FFFFFFF || v7 > v8 )
      v9 = -4;
    else
      v9 = 4 * v8;
    v10 = (char *)GlitchAlloc(v9, 0);
    v11 = (_BYTE *)v4[76];
    v12 = v10;
    v13 = v3 - v11;
    if ( v13 )
      v14 = (char *)memmove(v10, v11, v13) + v13;
    else
      v14 = v10;
    *(_DWORD *)v14 = a2;
    GlitchFree((void *)v4[76]);
    v4[78] = &v12[v9];
    v4[77] = v14 + 4;
    v4[76] = v12;
  }
  else
  {
    *(_DWORD *)v3 = a2;
    result[77] += 4;
  }
  return (_DWORD *)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a2 + 72))(a2, 0);
}


// ===== 3270c8 Application::AddUnderlayNode(glitch::scene::ISceneNode *) =====
_DWORD *__fastcall Application::AddUnderlayNode(int a1, int a2)
{
  _DWORD *result; // r0

  result = *(_DWORD **)(a1 + 184);
  if ( result )
    return UnderlaySceneNode::AddUnderlayNode(result, a2);
  return result;
}


// ===== 3270d8 glitch::io::CNumbersAttribute::getIntArray(void) =====
glitch::io::CNumbersAttribute *__fastcall glitch::io::CNumbersAttribute::getIntArray(
        glitch::io::CNumbersAttribute *this,
        int a2)
{
  int v4; // r3
  unsigned int v5; // r5
  char *v6; // r10
  int v7; // r6
  unsigned int v9; // r3
  unsigned int v10; // r9
  size_t v11; // r9
  char *v12; // r0
  _BYTE *v13; // r1
  char *v14; // r8
  size_t v15; // r10
  int *v16; // r10

  if ( *(_BYTE *)(a2 + 64) )
  {
    v4 = *(_DWORD *)(a2 + 36);
    if ( v4 != *(_DWORD *)(a2 + 40) )
      *(_DWORD *)(a2 + 40) = v4;
    if ( *(_DWORD *)(a2 + 60) )
    {
      v5 = 0;
      do
      {
        v6 = *(char **)(a2 + 40);
        v7 = (int)*(float *)(*(_DWORD *)(a2 + 48) + 4 * v5);
        if ( v6 == *(char **)(a2 + 44) )
        {
          v9 = (int)&v6[-*(_DWORD *)(a2 + 36)] >> 2;
          if ( v9 )
            v10 = 2 * v9;
          else
            v10 = 1;
          if ( v10 > 0x3FFFFFFF || v9 > v10 )
            v11 = -4;
          else
            v11 = 4 * v10;
          v12 = (char *)GlitchAlloc(v11, 0);
          v13 = *(_BYTE **)(a2 + 36);
          v14 = v12;
          v15 = v6 - v13;
          if ( v15 )
            v16 = (int *)((char *)memmove(v12, v13, v15) + v15);
          else
            v16 = (int *)v12;
          *v16 = v7;
          GlitchFree(*(void **)(a2 + 36));
          *(_DWORD *)(a2 + 40) = v16 + 1;
          *(_DWORD *)(a2 + 44) = &v14[v11];
          *(_DWORD *)(a2 + 36) = v14;
        }
        else
        {
          *(_DWORD *)v6 = (int)*(float *)(*(_DWORD *)(a2 + 48) + 4 * v5);
          *(_DWORD *)(a2 + 40) += 4;
        }
        ++v5;
      }
      while ( *(_DWORD *)(a2 + 60) > v5 );
    }
  }
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::vector(this, a2 + 36);
  return this;
}


// ===== 3271e4 glitch::io::CStringAttribute::getInt(void) =====
int __fastcall glitch::io::CStringAttribute::getInt(const char **this)
{
  int v1; // r7
  int v3; // r2
  int v4; // r1
  char *v5[5]; // [sp+4h] [bp-20h] BYREF
  char *v6; // [sp+18h] [bp-Ch]

  if ( !*((_BYTE *)this + 33) )
    return LC_API_ATOI_0(*(this + 14));
  v3 = (int)*(this + 31);
  v4 = (int)*(this + 32);
  v5[4] = (char *)v5;
  v6 = (char *)v5;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(
    v5,
    v4,
    v3);
  v1 = LC_API_ATOI_0(v6);
  if ( v6 != (char *)v5 && v6 )
    GlitchFree(v6);
  return v1;
}


// ===== 327290 glitch::io::CStringAttribute::getFloat(void) =====
int __fastcall glitch::io::CStringAttribute::getFloat(glitch::io::CStringAttribute *this)
{
  int v1; // r7
  int v3; // r2
  int v4; // r1
  float *v5; // r2
  char v6[4]; // [sp+4h] [bp-28h] BYREF
  void *v7[5]; // [sp+Ch] [bp-20h] BYREF
  void *p; // [sp+20h] [bp-Ch]

  if ( *((_BYTE *)this + 33) )
  {
    v3 = *((_DWORD *)this + 31);
    v4 = *((_DWORD *)this + 32);
    v7[4] = v7;
    p = v7;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(
      v7,
      v4,
      v3);
    glitch::core::fast_atof_move((glitch::core *)p, (float *)v6, v5);
    v1 = *(_DWORD *)v6;
    if ( p != v7 && p )
      GlitchFree(p);
  }
  else
  {
    glitch::core::fast_atof_move(*((glitch::core **)this + 14), (float *)v6, (float *)*((unsigned __int8 *)this + 33));
    return *(_DWORD *)v6;
  }
  return v1;
}


// ===== 327344 glitch::io::CIntAttribute::~CIntAttribute() =====
void __fastcall glitch::io::CIntAttribute::~CIntAttribute(glitch::io::CIntAttribute *this)
{
  char *v2; // r2
  char *v3; // r0

  *(_DWORD *)this = off_95B608;
  v2 = (char *)this + 8;
  v3 = *((char **)this + 7);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_95B720;
  CustomFree(this);
}


// ===== 3273ac glitch::io::CVector3DAttribute::getMatrix(void) =====
glitch::io::CVector3DAttribute *__fastcall glitch::io::CVector3DAttribute::getMatrix(
        glitch::io::CVector3DAttribute *this,
        int a2)
{
  int *v4; // r3
  int v6; // r2
  int v7; // r1
  int v8; // r3

  *((_BYTE *)this + 64) = 0;
  LC_API_MEMSET_0(this, 0, 0x40u);
  *(_DWORD *)this = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_BYTE *)this + 64) = 0;
  LC_API_MEMSET_0(this, 0, 0x40u);
  *((_BYTE *)this + 64) = 1;
  *((_DWORD *)this + 15) = 1065353216;
  *(_DWORD *)this = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  v4 = *(int **)(a2 + 48);
  v6 = v4[2];
  v7 = *v4;
  v8 = v4[1];
  *((_BYTE *)this + 64) = 0;
  *((_DWORD *)this + 12) = v7;
  *((_DWORD *)this + 13) = v8;
  *((_DWORD *)this + 14) = v6;
  return this;
}


// ===== 327438 glitch::io::CFloatAttribute::~CFloatAttribute() =====
void __fastcall glitch::io::CFloatAttribute::~CFloatAttribute(glitch::io::CFloatAttribute *this)
{
  char *v2; // r2
  char *v3; // r0

  *(_DWORD *)this = off_95B608;
  v2 = (char *)this + 8;
  v3 = *((char **)this + 7);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  *(_DWORD *)this = off_95B720;
  CustomFree(this);
}


// ===== 3274a0 glitch::io::CStringAttribute::setBinary(void *,int) =====
_DWORD *__fastcall glitch::io::CStringAttribute::setBinary(
        glitch::io::CStringAttribute *this,
        unsigned __int8 *a2,
        int a3)
{
  _DWORD *v3; // r6
  int v5; // r4
  _DWORD *result; // r0
  unsigned int v8; // r3
  unsigned int v9; // r2
  unsigned int v10; // r3
  size_t v11; // r0
  char v12; // [sp+4h] [bp-4h] BYREF
  char v13; // [sp+5h] [bp-3h]
  char v14; // [sp+6h] [bp-2h]

  v3 = (_DWORD *)((char *)this + 36);
  v5 = 0;
  v14 = 0;
  result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             (_DWORD *)this + 9,
             "",
             "");
  if ( a3 > 0 )
  {
    do
    {
      v8 = a2[v5++];
      v9 = v8 >> 4;
      if ( v8 >> 4 <= 9 )
        v12 = v9 + 48;
      v10 = v8 & 0xF;
      if ( v9 - 10 <= 5 )
        v12 = v9 + 87;
      if ( v10 <= 9 )
        v13 = v10 + 48;
      if ( v10 - 10 <= 5 )
        v13 = v10 + 87;
      v11 = LC_API_STRLEN_0(&v12);
      result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
                 v3,
                 &v12,
                 &v12 + v11);
    }
    while ( v5 != a3 );
  }
  return result;
}


// ===== 327554 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::video::SColorf const&,bool) [clone] =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, _DWORD *a2)
{
  _DWORD *v2; // r6
  _DWORD *v5; // r1
  _DWORD *v6; // r3
  _DWORD *v7; // r1
  _DWORD *v8; // r3
  _DWORD *v9; // r1
  _DWORD *v10; // r3
  _DWORD *v11; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v2 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 64) = 1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v2,
    "",
    "");
  v5 = *(_DWORD **)(a1 + 52);
  if ( v5 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v5,
      a2);
    v7 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v7 )
    {
LABEL_3:
      *v7 = a2[1];
      v8 = *(_DWORD **)(a1 + 56);
      v9 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v9;
      if ( v8 != v9 )
        goto LABEL_4;
LABEL_8:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v9,
        a2 + 2);
      v11 = *(_DWORD **)(a1 + 52);
      if ( *(_DWORD **)(a1 + 56) != v11 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    *v5 = *a2;
    v6 = *(_DWORD **)(a1 + 56);
    v7 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v7;
    if ( v6 != v7 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v7,
    a2 + 1);
  v9 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v9 )
    goto LABEL_8;
LABEL_4:
  *v9 = a2[2];
  v10 = *(_DWORD **)(a1 + 56);
  v11 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v11;
  if ( v10 != v11 )
  {
LABEL_5:
    *v11 = a2[3];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_9:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v11,
    a2 + 3);
  return a1;
}


// ===== 3276f8 glitch::io::CVector4DAttribute::getMatrix(void) =====
glitch::io::CVector4DAttribute *__fastcall glitch::io::CVector4DAttribute::getMatrix(
        glitch::io::CVector4DAttribute *this,
        int a2)
{
  _DWORD *v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD v9[17]; // [sp+4h] [bp+0h] BYREF

  LC_API_MEMSET_0(v9, 0, 0x40u);
  LC_API_MEMSET_0(v9, 0, 0x40u);
  v4 = *(_DWORD **)(a2 + 48);
  v9[15] = 1065353216;
  LOBYTE(v9[16]) = 1;
  v9[0] = 1065353216;
  v9[5] = 1065353216;
  v9[10] = 1065353216;
  v5 = v4[1];
  v6 = v4[2];
  v9[12] = *v4;
  v9[13] = v5;
  v9[14] = v6;
  LOBYTE(v9[16]) = 0;
  v7 = v4[3];
  *((_BYTE *)this + 64) = 0;
  v9[15] = v7;
  memcpy(this, v9, 0x41u);
  return this;
}


// ===== 327798 glitch::io::CStringAttribute::getBool(void) =====
bool __fastcall glitch::io::CStringAttribute::getBool(const char **this)
{
  _BOOL4 v1; // r8
  int v3; // r2
  int v4; // r1
  char *v5; // r7
  char *v6[5]; // [sp+4h] [bp-1Ch] BYREF
  char *v7; // [sp+18h] [bp-8h]

  if ( !*((_BYTE *)this + 33) )
    return LC_API_STRCASECMP_0(*(this + 14), "true") == 0;
  v3 = (int)*(this + 31);
  v4 = (int)*(this + 32);
  v6[4] = (char *)v6;
  v7 = (char *)v6;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize<wchar_t const*>(
    v6,
    v4,
    v3);
  v5 = v7;
  v1 = LC_API_STRCASECMP_0(v7, "true") == 0;
  if ( v5 != (char *)v6 && v5 )
    GlitchFree(v5);
  return v1;
}


// ===== 327868 CMsgGlobalDeath::SetProperties(void) =====
std::string *__fastcall CMsgGlobalDeath::SetProperties(CMsgGlobalDeath *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgGlobalDeath", "");
  *((_BYTE *)this + 48) = 1;
  *((_DWORD *)this + 11) = 1;
  *((_BYTE *)this + 50) = 1;
  return result;
}


// ===== 32789c CMsgSpawnObject::SetProperties(void) =====
std::string *__fastcall CMsgSpawnObject::SetProperties(CMsgSpawnObject *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgSpawnObject", "");
  *((_BYTE *)this + 50) = 1;
  *((_BYTE *)this + 51) = 0;
  *((_DWORD *)this + 11) = 0;
  return result;
}


// ===== 3278d4 CMsgIsHost::SetProperties(void) =====
std::string *__fastcall CMsgIsHost::SetProperties(CMsgIsHost *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgIsHost", "");
  *((_BYTE *)this + 50) = 1;
  *((_DWORD *)this + 11) = 0;
  return result;
}


// ===== 327908 CMsgDropLoot::SetProperties(void) =====
std::string *__fastcall CMsgDropLoot::SetProperties(CMsgDropLoot *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgDropLoot", "");
  *((_BYTE *)this + 51) = 0;
  *((_DWORD *)this + 11) = 1;
  return result;
}


// ===== 32793c CMsgQuestsSync::SetProperties(void) =====
std::string *__fastcall CMsgQuestsSync::SetProperties(CMsgQuestsSync *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgQuestsSync", "");
  *((_BYTE *)this + 48) = 1;
  *((_BYTE *)this + 51) = 0;
  *((_DWORD *)this + 11) = 1;
  return result;
}


// ===== 327974 CMsgInitialSetup::SetProperties(void) =====
std::string *__fastcall CMsgInitialSetup::SetProperties(CMsgInitialSetup *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgInitialSetup", "");
  *((_BYTE *)this + 51) = 0;
  *((_DWORD *)this + 11) = 1;
  return result;
}


// ===== 3279a8 CMsgScriptCmd::SetProperties(void) =====
std::string *__fastcall CMsgScriptCmd::SetProperties(CMsgScriptCmd *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgScriptCmd", "");
  *((_DWORD *)this + 11) = 1;
  *((_BYTE *)this + 51) = 1;
  *((_BYTE *)this + 50) = 1;
  *((_BYTE *)this + 48) = 1;
  return result;
}


// ===== 3279e0 CMsgMenuReady::SetProperties(void) =====
std::string *__fastcall CMsgMenuReady::SetProperties(CMsgMenuReady *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgMenuReady", "");
  *((_DWORD *)this + 11) = 1;
  return result;
}


// ===== 327a0c CMsgRaisedEvent::SetProperties(void) =====
std::string *__fastcall CMsgRaisedEvent::SetProperties(CMsgRaisedEvent *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgRaisedEvent", "");
  *((_BYTE *)this + 48) = 1;
  *((_DWORD *)this + 11) = 1;
  *((_BYTE *)this + 51) = 1;
  return result;
}


// ===== 327a40 CMsgAttackResult::SetProperties(void) =====
std::string *__fastcall CMsgAttackResult::SetProperties(CMsgAttackResult *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgAttackResult", "");
  *((_BYTE *)this + 51) = 0;
  *((_DWORD *)this + 11) = 1;
  return result;
}


// ===== 327a74 CMsgControllerAction::SetProperties(void) =====
std::string *__fastcall CMsgControllerAction::SetProperties(CMsgControllerAction *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgControllerAction", "");
  *((_DWORD *)this + 11) = 1;
  return result;
}


// ===== 327aa0 CMsgStartGame::SetProperties(void) =====
std::string *__fastcall CMsgStartGame::SetProperties(CMsgStartGame *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgStartGame", "");
  *((_WORD *)this + 25) = 1;
  *((_DWORD *)this + 11) = 1;
  return result;
}


// ===== 327ad8 CMsgAskResendAttributes::SetProperties(void) =====
std::string *__fastcall CMsgAskResendAttributes::SetProperties(CMsgAskResendAttributes *this)
{
  std::string *result; // r0

  result = std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgAskResendAttributes", "");
  *((_BYTE *)this + 50) = 1;
  *((_DWORD *)this + 11) = 0;
  return result;
}


// ===== 327b0c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_find<std::string>(std::string const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_find<std::string>(
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


// ===== 327be0 glitch::debugger::CTweakable::writeGroup(glitch::debugger::CTweakable::SGroup &,glitch::io::CXMLWriter &,bool) =====
void __fastcall glitch::debugger::CTweakable::writeGroup(
        glitch::debugger::CTweakable *a1,
        int a2,
        glitch::io::CXMLWriter *a3,
        int a4)
{
  _DWORD *v6; // r1
  _DWORD *v7; // r1
  _DWORD *v8; // r1
  _DWORD *v9; // r1
  bool v10; // zf
  _DWORD *v11; // r1
  _DWORD *v12; // r1
  int v13; // r1
  int v14; // r3
  int v15; // r8
  unsigned int v16; // r10
  const char **v17; // r0
  const char **v18; // r4
  _DWORD *v19; // r6
  const char *v20; // r1
  void *v21; // r4
  int v22; // r1
  int v23; // r4
  unsigned int v24; // r6
  float *v25; // r3
  void (__fastcall *v26)(glitch::io::CXMLWriter *, void *); // r6
  void *v27; // r8
  int v28; // [sp+28h] [bp-4BCh]
  void *v29; // [sp+2Ch] [bp-4B8h]
  void *v30; // [sp+30h] [bp-4B4h]
  const char **v31; // [sp+34h] [bp-4B0h]
  void (__fastcall *v32)(glitch::io::CXMLWriter *, int, int, const char *, void *, void *, void *, void *, void *, void *, void *, _DWORD, _DWORD); // [sp+3Ch] [bp-4A8h]
  _BYTE v35[68]; // [sp+A0h] [bp-444h] BYREF
  void *p; // [sp+E4h] [bp-400h]
  _BYTE v37[68]; // [sp+E8h] [bp-3FCh] BYREF
  void *v38; // [sp+12Ch] [bp-3B8h]
  _BYTE v39[68]; // [sp+130h] [bp-3B4h] BYREF
  void *v40; // [sp+174h] [bp-370h]
  _BYTE v41[68]; // [sp+178h] [bp-36Ch] BYREF
  void *v42; // [sp+1BCh] [bp-328h]
  _BYTE v43[68]; // [sp+1C0h] [bp-324h] BYREF
  void *v44; // [sp+204h] [bp-2E0h]
  _DWORD v45[17]; // [sp+208h] [bp-2DCh] BYREF
  void *v46; // [sp+24Ch] [bp-298h]
  float v47; // [sp+250h] [bp-294h] BYREF
  float v48; // [sp+254h] [bp-290h]
  float v49; // [sp+258h] [bp-28Ch]
  float v50; // [sp+25Ch] [bp-288h]
  int v51; // [sp+260h] [bp-284h] BYREF
  int v52; // [sp+264h] [bp-280h] BYREF
  int v53; // [sp+268h] [bp-27Ch] BYREF
  float v54[2]; // [sp+26Ch] [bp-278h] BYREF
  int v55; // [sp+274h] [bp-270h] BYREF
  int v56; // [sp+278h] [bp-26Ch] BYREF
  int v57; // [sp+27Ch] [bp-268h] BYREF
  int v58; // [sp+280h] [bp-264h] BYREF
  int v59; // [sp+284h] [bp-260h] BYREF
  int v60; // [sp+288h] [bp-25Ch] BYREF
  _DWORD v61[2]; // [sp+290h] [bp-254h] BYREF
  _DWORD v62[4]; // [sp+298h] [bp-24Ch] BYREF
  _BYTE *v63; // [sp+2A8h] [bp-23Ch]
  _DWORD *v64; // [sp+2ACh] [bp-238h]
  char v65; // [sp+2B0h] [bp-234h]
  char v66; // [sp+2B1h] [bp-233h]
  _DWORD v67[4]; // [sp+2B4h] [bp-230h] BYREF
  _BYTE *v68; // [sp+2C4h] [bp-220h]
  _DWORD *v69; // [sp+2C8h] [bp-21Ch]
  _DWORD v70[16]; // [sp+2CCh] [bp-218h] BYREF
  _DWORD *v71; // [sp+30Ch] [bp-1D8h]
  _DWORD *v72; // [sp+310h] [bp-1D4h]
  _DWORD v73[2]; // [sp+314h] [bp-1D0h] BYREF
  _DWORD v74[4]; // [sp+31Ch] [bp-1C8h] BYREF
  _BYTE *v75; // [sp+32Ch] [bp-1B8h]
  _DWORD *v76; // [sp+330h] [bp-1B4h]
  char v77; // [sp+334h] [bp-1B0h]
  int v78; // [sp+338h] [bp-1ACh]
  int v79; // [sp+33Ch] [bp-1A8h]
  int v80; // [sp+340h] [bp-1A4h]
  int v81; // [sp+344h] [bp-1A0h] BYREF
  _DWORD *v82; // [sp+348h] [bp-19Ch]
  _DWORD *v83; // [sp+34Ch] [bp-198h]
  int v84; // [sp+350h] [bp-194h]
  char v85; // [sp+354h] [bp-190h]
  _DWORD v86[2]; // [sp+358h] [bp-18Ch] BYREF
  _DWORD v87[4]; // [sp+360h] [bp-184h] BYREF
  _BYTE *v88; // [sp+370h] [bp-174h]
  _DWORD *v89; // [sp+374h] [bp-170h]
  char v90; // [sp+378h] [bp-16Ch]
  int v91; // [sp+37Ch] [bp-168h]
  int v92; // [sp+380h] [bp-164h]
  int v93; // [sp+384h] [bp-160h]
  int v94; // [sp+388h] [bp-15Ch] BYREF
  _DWORD *v95; // [sp+38Ch] [bp-158h]
  _DWORD *v96; // [sp+390h] [bp-154h]
  int v97; // [sp+394h] [bp-150h]
  char v98; // [sp+398h] [bp-14Ch]
  _DWORD v99[2]; // [sp+39Ch] [bp-148h] BYREF
  _DWORD v100[4]; // [sp+3A4h] [bp-140h] BYREF
  _BYTE *v101; // [sp+3B4h] [bp-130h]
  _DWORD *v102; // [sp+3B8h] [bp-12Ch]
  char v103; // [sp+3BCh] [bp-128h]
  int v104; // [sp+3C0h] [bp-124h]
  int v105; // [sp+3C4h] [bp-120h]
  int v106; // [sp+3C8h] [bp-11Ch]
  int v107; // [sp+3CCh] [bp-118h] BYREF
  _DWORD *v108; // [sp+3D0h] [bp-114h]
  _DWORD *v109; // [sp+3D4h] [bp-110h]
  int v110; // [sp+3D8h] [bp-10Ch]
  char v111; // [sp+3DCh] [bp-108h]
  _DWORD v112[16]; // [sp+3E0h] [bp-104h] BYREF
  _DWORD v113[17]; // [sp+424h] [bp-C0h] BYREF
  _DWORD v114[2]; // [sp+468h] [bp-7Ch] BYREF
  _DWORD v115[4]; // [sp+470h] [bp-74h] BYREF
  _BYTE *v116; // [sp+480h] [bp-64h]
  void *v117; // [sp+484h] [bp-60h]
  char v118; // [sp+488h] [bp-5Ch]
  int v119; // [sp+48Ch] [bp-58h]
  _DWORD v120[2]; // [sp+490h] [bp-54h] BYREF
  _DWORD v121[4]; // [sp+498h] [bp-4Ch] BYREF
  _BYTE *v122; // [sp+4A8h] [bp-3Ch]
  void *v123; // [sp+4ACh] [bp-38h]
  char v124; // [sp+4B0h] [bp-34h]
  int v125; // [sp+4B4h] [bp-30h]
  _DWORD v126[2]; // [sp+4B8h] [bp-2Ch] BYREF
  _DWORD v127[4]; // [sp+4C0h] [bp-24h] BYREF
  _BYTE *v128; // [sp+4D0h] [bp-14h]
  void *v129; // [sp+4D4h] [bp-10h]
  char v130; // [sp+4D8h] [bp-Ch]
  char v131; // [sp+4D9h] [bp-Bh]

  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v45,
    U"group");
  if ( a4 )
  {
    v26 = *(void (__fastcall **)(glitch::io::CXMLWriter *, void *))(*(_DWORD *)a3 + 16);
    v27 = v46;
    glitch::core::stringc2stringw((glitch::core *)v43, *(const char **)(a2 + 20));
    v26(a3, v27);
    if ( v44 != v43 && v44 )
      GlitchFree(v44);
    (*(void (__fastcall **)(glitch::io::CXMLWriter *))(*(_DWORD *)a3 + 36))(a3);
  }
  v120[0] = off_95B608;
  v122 = v121;
  v123 = v121;
  v120[1] = 1;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v121,
    0x10u);
  *v122 = 0;
  v120[0] = off_95B4F0;
  v124 = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v121,
    "",
    "");
  v125 = 0;
  v114[0] = off_95B608;
  v116 = v115;
  v117 = v115;
  v114[1] = 1;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v115,
    0x10u);
  *v116 = 0;
  v114[0] = off_95B738;
  v118 = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v115,
    "",
    "");
  v61[0] = off_95B608;
  v119 = 0;
  v63 = v62;
  v64 = v62;
  v61[1] = 1;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v62,
    0x10u);
  *v63 = 0;
  v61[0] = off_95B980;
  v68 = v67;
  v69 = v67;
  v65 = 0;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v67,
    0x10u);
  *v68 = 0;
  v71 = v70;
  v72 = v70;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v70,
    0x10u);
  *v71 = 0;
  v66 = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v62,
    "",
    "");
  glitch::io::CStringAttribute::setString((glitch::io::CStringAttribute *)v61, "");
  v126[1] = 1;
  v126[0] = off_95B608;
  v128 = v127;
  v129 = v127;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v127,
    0x10u);
  *v128 = 0;
  v126[0] = off_95BA98;
  v130 = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v127,
    "",
    "");
  v131 = 0;
  v50 = (float)0 * 0.0039216;
  v49 = v50;
  v48 = v50;
  v47 = v50;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v113, &v47);
  v113[0] = off_95BBB0;
  v50 = 1.0;
  v49 = 0.0;
  v48 = 0.0;
  v47 = 0.0;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v112, &v47);
  v56 = 0;
  v55 = 0;
  v99[0] = off_95B608;
  v112[0] = off_95BE20;
  v99[1] = 1;
  v101 = v100;
  v102 = v100;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v100,
    0x10u);
  *v101 = 0;
  v99[0] = off_95BCE8;
  v110 = 2;
  v109 = nullptr;
  v111 = 1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = nullptr;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v100,
    "",
    "");
  if ( v108 == v109 )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (int)&v107,
      (int)v108,
      &v55);
    v6 = v108;
    if ( v108 != v109 )
      goto LABEL_4;
  }
  else
  {
    *v108 = v55;
    v6 = ++v108;
    if ( v108 != v109 )
    {
LABEL_4:
      *v6 = v56;
      ++v108;
      goto LABEL_5;
    }
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    (int)&v107,
    (int)v6,
    &v56);
LABEL_5:
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v86[0] = off_95B608;
  v99[0] = off_95BF58;
  v86[1] = 1;
  v88 = v87;
  v89 = v87;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v87,
    0x10u);
  *v88 = 0;
  v86[0] = off_95BCE8;
  v96 = nullptr;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = nullptr;
  v97 = 3;
  v98 = 1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v87,
    "",
    "");
  if ( v95 != v96 )
  {
    *v95 = v51;
    v7 = ++v95;
    if ( v95 != v96 )
      goto LABEL_7;
LABEL_68:
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (int)&v94,
      (int)v7,
      &v52);
    v8 = v95;
    if ( v95 != v96 )
      goto LABEL_8;
    goto LABEL_69;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    (int)&v94,
    (int)v95,
    &v51);
  v7 = v95;
  if ( v95 == v96 )
    goto LABEL_68;
LABEL_7:
  *v7 = v52;
  v8 = ++v95;
  if ( v95 != v96 )
  {
LABEL_8:
    *v8 = v53;
    ++v95;
    goto LABEL_9;
  }
LABEL_69:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    (int)&v94,
    (int)v8,
    &v53);
LABEL_9:
  v73[0] = off_95B608;
  v86[0] = off_95C090;
  v73[1] = 1;
  v75 = v74;
  v76 = v74;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v74,
    0x10u);
  *v75 = 0;
  v73[0] = off_95BCE8;
  v83 = nullptr;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = nullptr;
  v84 = 4;
  v85 = 1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v74,
    "",
    "");
  v60 = 0;
  if ( v82 != v83 )
  {
    *v82 = 0;
    v9 = v82 + 1;
    v10 = ++v82 == v83;
    v59 = 0;
    if ( !v10 )
      goto LABEL_11;
LABEL_71:
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (int)&v81,
      (int)v9,
      &v59);
    v11 = v82;
    v58 = 0;
    if ( v82 != v83 )
      goto LABEL_12;
    goto LABEL_72;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    (int)&v81,
    (int)v82,
    &v60);
  v9 = v82;
  v59 = 0;
  if ( v82 == v83 )
    goto LABEL_71;
LABEL_11:
  *v9 = 0;
  v11 = v82 + 1;
  v10 = ++v82 == v83;
  v58 = 0;
  if ( !v10 )
  {
LABEL_12:
    *v11 = 0;
    v12 = ++v82;
    goto LABEL_13;
  }
LABEL_72:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    (int)&v81,
    (int)v11,
    &v58);
  v12 = v82;
LABEL_13:
  v57 = 0;
  if ( v12 == v83 )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (int)&v81,
      (int)v12,
      &v57);
  }
  else
  {
    *v12 = 0;
    ++v82;
  }
  v13 = *(_DWORD *)(a2 + 24);
  v14 = (*(_DWORD *)(a2 + 28) - v13) >> 3;
  v73[0] = off_95C1C8;
  if ( -1431655765 * v14 )
  {
    v15 = 0;
    v31 = (const char **)((char *)a1 + 4);
    v16 = 0;
    do
    {
      v17 = (const char **)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_find<std::string>(
                             v31,
                             v13 + v15);
      v18 = v17;
      if ( v17 != v31 )
      {
        switch ( (unsigned int)v17[10] )
        {
          case 0u:
            v19 = v120;
            v125 = *(_DWORD *)v17[11];
            break;
          case 1u:
            v19 = v114;
            v119 = *(_DWORD *)v17[11];
            break;
          case 2u:
            v19 = v61;
            glitch::io::CStringAttribute::setString((glitch::io::CStringAttribute *)v61, *((char **)v17[11] + 5));
            break;
          case 3u:
            v19 = v126;
            v131 = *v17[11];
            break;
          case 5u:
            v19 = v113;
            glitch::io::CNumbersAttribute::setColor(
              (int)v113,
              *(unsigned __int8 *)v17[11]
            | (*((unsigned __int8 *)v17[11] + 1) << 8)
            | (*((unsigned __int8 *)v17[11] + 2) << 16)
            | (*((unsigned __int8 *)v17[11] + 3) << 24));
            break;
          case 6u:
            v19 = v112;
            glitch::io::CNumbersAttribute::setColor(
              (int)v112,
              *(float *)v17[11],
              *((float *)v17[11] + 1),
              *((float *)v17[11] + 2),
              *((float *)v17[11] + 3));
            break;
          case 7u:
            v25 = (float *)v17[11];
            v19 = v99;
            v54[0] = *v25;
            v54[1] = v25[1];
            glitch::io::CNumbersAttribute::setVector2d((int)v99, v54);
            break;
          case 8u:
            glitch::io::CNumbersAttribute::setVector3d((int)v86, (float *)v17[11]);
            v19 = v86;
            break;
          case 9u:
            glitch::io::CNumbersAttribute::setVector4d((int)v73, (float *)v17[11]);
            v19 = v73;
            break;
          default:
            v19 = nullptr;
            break;
        }
        v32 = *(void (__fastcall **)(glitch::io::CXMLWriter *, int, int, const char *, void *, void *, void *, void *, void *, void *, void *, _DWORD, _DWORD))(*(_DWORD *)a3 + 16);
        v28 = (*(int (__fastcall **)(_DWORD *))(*v19 + 264))(v19);
        glitch::core::stringc2stringw((glitch::core *)v41, v18[9]);
        v29 = v42;
        (*(void (__fastcall **)(_BYTE *, _DWORD *))(*v19 + 32))(v39, v19);
        v30 = v40;
        glitch::core::stringc2stringw((glitch::core *)v37, v18[17]);
        v20 = v18[23];
        v21 = v38;
        glitch::core::stringc2stringw((glitch::core *)v35, v20);
        v32(a3, v28, 1, "n", v29, &unk_8BEB98, v30, &unk_8BEBB0, v21, &unk_8BEBC8, p, 0, 0);
        if ( p != v35 && p )
          GlitchFree(p);
        if ( v38 != v37 && v38 )
          GlitchFree(v38);
        if ( v40 != v39 && v40 )
          GlitchFree(v40);
        if ( v42 != v41 && v42 )
          GlitchFree(v42);
      }
      v13 = *(_DWORD *)(a2 + 24);
      ++v16;
      v15 += 24;
    }
    while ( v16 < -1431655765 * ((*(_DWORD *)(a2 + 28) - v13) >> 3) );
  }
  v22 = *(_DWORD *)(a2 + 36);
  if ( -991146299 * ((*(_DWORD *)(a2 + 40) - v22) >> 2) )
  {
    v23 = 0;
    v24 = 0;
    do
    {
      glitch::debugger::CTweakable::writeGroup(a1, (glitch::debugger::CTweakable::SGroup *)(v22 + v23), a3, 1);
      v22 = *(_DWORD *)(a2 + 36);
      ++v24;
      v23 += 52;
    }
    while ( v24 < -991146299 * ((*(_DWORD *)(a2 + 40) - v22) >> 2) );
  }
  if ( a4 )
  {
    (*(void (__fastcall **)(glitch::io::CXMLWriter *, void *))(*(_DWORD *)a3 + 28))(a3, v46);
    (*(void (__fastcall **)(glitch::io::CXMLWriter *))(*(_DWORD *)a3 + 36))(a3);
  }
  v73[0] = off_95C1C8;
  glitch::io::CNumbersAttribute::~CNumbersAttribute((glitch::io::CNumbersAttribute *)v73);
  v86[0] = off_95C090;
  glitch::io::CNumbersAttribute::~CNumbersAttribute((glitch::io::CNumbersAttribute *)v86);
  v99[0] = off_95BF58;
  glitch::io::CNumbersAttribute::~CNumbersAttribute((glitch::io::CNumbersAttribute *)v99);
  v112[0] = off_95BE20;
  glitch::io::CNumbersAttribute::~CNumbersAttribute((glitch::io::CNumbersAttribute *)v112);
  v113[0] = off_95BBB0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute((glitch::io::CNumbersAttribute *)v113);
  v126[0] = off_95B608;
  if ( v129 != v127 && v129 )
    GlitchFree(v129);
  v126[0] = off_95B720;
  glitch::io::CStringAttribute::~CStringAttribute((glitch::io::CStringAttribute *)v61);
  v114[0] = off_95B608;
  if ( v117 != v115 && v117 )
    GlitchFree(v117);
  v114[0] = off_95B720;
  v120[0] = off_95B608;
  if ( v123 != v121 && v123 )
    GlitchFree(v123);
  v120[0] = off_95B720;
  if ( v46 != v45 )
  {
    if ( v46 )
      GlitchFree(v46);
  }
}


// ===== 328994 glitch::debugger::CTweakable::writeValues(glitch::io::IWriteFile *) =====
void __fastcall glitch::debugger::CTweakable::writeValues(
        glitch::debugger::CTweakable *this,
        glitch::io::IWriteFile *a2)
{
  _DWORD v3[17]; // [sp+28h] [bp-64h] BYREF
  void *p; // [sp+6Ch] [bp-20h]
  _BYTE v5[20]; // [sp+70h] [bp-1Ch] BYREF

  glitch::io::CXMLWriter::CXMLWriter((glitch::io::CXMLWriter *)v5, a2);
  glitch::io::CXMLWriter::writeXMLHeader((glitch::io::CXMLWriter *)v5);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v3,
    U"attributes");
  glitch::io::CXMLWriter::writeElement(
    (glitch::io::CXMLWriter *)v5,
    (const wchar_t *)p,
    0,
    nullptr,
    nullptr,
    nullptr,
    nullptr,
    nullptr,
    nullptr,
    nullptr,
    nullptr,
    nullptr,
    nullptr);
  glitch::io::CXMLWriter::writeLineBreak((glitch::io::CXMLWriter *)v5);
  glitch::debugger::CTweakable::writeGroup(this, (int)this + 28, (glitch::io::CXMLWriter *)v5, 0);
  glitch::io::CXMLWriter::writeClosingTag((glitch::io::CXMLWriter *)v5, (const wchar_t *)p);
  glitch::io::CXMLWriter::writeLineBreak((glitch::io::CXMLWriter *)v5);
  if ( p != v3 && p )
    GlitchFree(p);
  glitch::io::CXMLWriter::~CXMLWriter((glitch::io::CXMLWriter *)v5);
}


// ===== 328a64 CMsgControllerAction::CMsgControllerAction(bool) =====
void __fastcall CMsgControllerAction::CMsgControllerAction(CMsgControllerAction *this, bool a2)
{
  CMessage::CMessage(this, "CMsgControllerAction", a2);
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 22) = 0;
  *(_DWORD *)this = off_95B3C0;
  *((_DWORD *)this + 23) = 0;
  std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgControllerAction", "");
  *((_DWORD *)this + 11) = 1;
}


// ===== 328ad4 GetNewInstance<CMsgControllerAction>(bool) =====
CMsgControllerAction *__fastcall GetNewInstance<CMsgControllerAction>(bool a1)
{
  CMsgControllerAction *v2; // r4

  v2 = (CMsgControllerAction *)operator new(0x64u, 2);
  CMsgControllerAction::CMsgControllerAction(v2, a1);
  return v2;
}


// ===== 328afc GetNewInstance<CMsgMenuReady>(bool) =====
int __fastcall GetNewInstance<CMsgMenuReady>(bool a1)
{
  int v2; // r6

  v2 = operator new(0x58u, 2);
  CMessage::CMessage((CMessage *)v2, "CMsgMenuReady", a1);
  *(_DWORD *)v2 = off_95B330;
  std::string::_M_assign((std::string *const)(v2 + 20), "CMsgMenuReady", "");
  *(_DWORD *)(v2 + 44) = 1;
  return v2;
}


// ===== 328b6c GetNewInstance<CMsgAttackResult>(bool) =====
int __fastcall GetNewInstance<CMsgAttackResult>(bool a1)
{
  int v2; // r4

  v2 = operator new(0x84u, 2);
  CMessage::CMessage((CMessage *)v2, "CMsgAttackResult", a1);
  *(_DWORD *)v2 = off_95B390;
  std::string::_M_assign((std::string *const)(v2 + 20), "CMsgAttackResult", "");
  *(_DWORD *)(v2 + 44) = 1;
  *(_BYTE *)(v2 + 51) = 0;
  return v2;
}


// ===== 328be4 CMsgInitialSetup::CMsgInitialSetup(bool) =====
void __fastcall CMsgInitialSetup::CMsgInitialSetup(CMsgInitialSetup *this, bool a2)
{
  CMessage::CMessage(this, "CMsgInitialSetup", a2);
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 20) = 0;
  *(_DWORD *)this = off_95B2D0;
  *((_DWORD *)this + 21) = 0;
  std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgInitialSetup", "");
  *((_DWORD *)this + 11) = 1;
  *((_BYTE *)this + 51) = 0;
}


// ===== 328c5c GetNewInstance<CMsgInitialSetup>(bool) =====
CMsgInitialSetup *__fastcall GetNewInstance<CMsgInitialSetup>(bool a1)
{
  CMsgInitialSetup *v2; // r4

  v2 = (CMsgInitialSetup *)operator new(0x5Cu, 2);
  CMsgInitialSetup::CMsgInitialSetup(v2, a1);
  return v2;
}


// ===== 328c84 CMsgDropLoot::CMsgDropLoot(bool) =====
void __fastcall CMsgDropLoot::CMsgDropLoot(CMsgDropLoot *this, bool a2)
{
  CMessage::CMessage(this, "CMsgDropLoot", a2);
  *((_BYTE *)this + 80) = 0;
  *(_DWORD *)this = off_95B270;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgDropLoot", "");
  *((_DWORD *)this + 11) = 1;
  *((_BYTE *)this + 51) = 0;
}


// ===== 328d08 GetNewInstance<CMsgDropLoot>(bool) =====
CMsgDropLoot *__fastcall GetNewInstance<CMsgDropLoot>(bool a1)
{
  CMsgDropLoot *v2; // r4

  v2 = (CMsgDropLoot *)operator new(0x6Cu, 2);
  CMsgDropLoot::CMsgDropLoot(v2, a1);
  return v2;
}


// ===== 328d30 GetNewInstance<CMsgAskResendAttributes>(bool) =====
int __fastcall GetNewInstance<CMsgAskResendAttributes>(bool a1)
{
  int v2; // r4

  v2 = operator new(0x54u, 2);
  CMessage::CMessage((CMessage *)v2, "CMsgAskResendAttributes", a1);
  *(_DWORD *)v2 = off_95B1B0;
  std::string::_M_assign((std::string *const)(v2 + 20), "CMsgAskResendAttributes", "");
  *(_DWORD *)(v2 + 44) = 0;
  *(_BYTE *)(v2 + 50) = 1;
  return v2;
}


// ===== 328da8 GetNewInstance<CMsgIsHost>(bool) =====
int __fastcall GetNewInstance<CMsgIsHost>(bool a1)
{
  int v2; // r4

  v2 = operator new(0x54u, 2);
  CMessage::CMessage((CMessage *)v2, "CMsgIsHost", a1);
  *(_DWORD *)v2 = off_95B240;
  std::string::_M_assign((std::string *const)(v2 + 20), "CMsgIsHost", "");
  *(_DWORD *)(v2 + 44) = 0;
  *(_BYTE *)(v2 + 50) = 1;
  return v2;
}


// ===== 328e20 std::priv::_List_base<std::string,std::allocator<std::string>>::clear(void) =====
void __fastcall std::priv::_List_base<std::string,std::allocator<std::string>>::clear(char **a1)
{
  char *v1; // r6
  char *v3; // r4

  v1 = *a1;
  if ( *a1 != (char *)a1 )
  {
    while ( 1 )
    {
      v3 = *(char **)v1;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v1 + 8));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 0x20u);
      if ( v3 == (char *)a1 )
        break;
      v1 = v3;
    }
    v1 = (char *)a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 328e6c GameCenter::~GameCenter() =====
void __fastcall GameCenter::~GameCenter(GameCenter *this)
{
  *(_DWORD *)this = off_95B420;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 76));
  std::priv::_List_base<std::string,std::allocator<std::string>>::clear((char **)this + 9);
}


// ===== 328ea8 GameCenter::~GameCenter() =====
void __fastcall GameCenter::~GameCenter(GameCenter *this)
{
  *(_DWORD *)this = off_95B420;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 76));
  std::priv::_List_base<std::string,std::allocator<std::string>>::clear((char **)this + 9);
  *(_DWORD *)this = off_95B430;
  CustomFree(this);
}


// ===== 328f00 std::priv::_List_base<glitch::IEventReceiver *,std::allocator<glitch::IEventReceiver *>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<glitch::IEventReceiver *,std::allocator<glitch::IEventReceiver *>>::clear(
        _DWORD *a1)
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


// ===== 328f40 Application::ResetTouch(void) =====
void __fastcall Application::ResetTouch(Application *this)
{
  int v1; // r3
  _DWORD *i; // r4
  _DWORD *v4; // r0
  _DWORD *v5; // r4
  _DWORD v6[2]; // [sp+4h] [bp-10h] BYREF
  _WORD v7[4]; // [sp+Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 8);
  if ( v1 )
  {
    v7[0] = -1;
    v7[1] = -1;
    (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)v1 + 76))(v6, v1);
    for ( i = (_DWORD *)v6[0]; i != v6; i = (_DWORD *)*i )
      (*(void (__fastcall **)(_DWORD, _WORD *, _DWORD))(**((_DWORD **)this + 8) + 40))(*((_DWORD *)this + 8), v7, i[2]);
    v4 = (_DWORD *)v6[0];
    if ( (_DWORD *)v6[0] != v6 )
    {
      while ( 1 )
      {
        v5 = (_DWORD *)*v4;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0xCu);
        if ( v5 == v6 )
          break;
        v4 = v5;
      }
    }
  }
}


// ===== 328fe0 Application::Resume(void) =====
float __fastcall Application::Resume(float this)
{
  float v1; // r4
  HUDControls *hasInstance; // r0
  int v3; // r8
  int v4; // r7
  int CurrentLevel; // r9
  StateMachine *v6; // r0
  HUDControls *Instance; // r0

  v1 = this;
  if ( !*(_DWORD *)(LODWORD(this) + 16) )
    return this;
  hasInstance = (HUDControls *)HUDControls::hasInstance((HUDControls *)LODWORD(this));
  if ( hasInstance )
  {
    Instance = (HUDControls *)HUDControls::GetInstance(hasInstance);
    HUDControls::RefreshHUD(Instance);
  }
  v3 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(LODWORD(v1) + 16) + 32) + 12))(*(_DWORD *)(*(_DWORD *)(LODWORD(v1) + 16) + 32));
  v4 = *(_DWORD *)(LODWORD(v1) + 160);
  CurrentLevel = Application::GetCurrentLevel((Application *)LODWORD(v1));
  if ( !VoxSoundManager::s_instance )
    goto LABEL_12;
  if ( !isDevicePause )
  {
    if ( Application::IsInIGPOrGameCenter((Application *)LODWORD(v1))
      || CurrentLevel && (*(_BYTE *)(CurrentLevel + 408) || MenuBase::s_igmOpened || *(_BYTE *)(LODWORD(v1) + 165)) )
    {
      if ( *(_BYTE *)(LODWORD(v1) + 166) )
        VoxSoundManager::ResumeMusic((VoxSoundManager *)VoxSoundManager::s_instance, 500);
    }
    else
    {
      VoxSoundManager::ResumeAllSounds((vox::VoxEngine **)VoxSoundManager::s_instance);
    }
LABEL_12:
    if ( !isDevicePause )
    {
      *(_BYTE *)(LODWORD(v1) + 165) = 0;
      if ( *(_BYTE *)(GetOnline() + 5) )
      {
        if ( (unsigned int)(v3 - v4) > 0x15F90
          || *(_DWORD *)(OnlineSingleton<OnlineGameState>::GetInstance() + 52) != 2
          && !Application::IsWifiEnabled((Application *)LODWORD(v1)) )
        {
          *(_BYTE *)(LODWORD(v1) + 170) = 1;
        }
      }
    }
  }
  v6 = *(StateMachine **)(LODWORD(v1) + 24);
  *(_BYTE *)(LODWORD(v1) + 164) = 0;
  if ( v6 )
    StateMachine::WakeUp(v6);
  Application::ResetTouch((Application *)LODWORD(v1));
  *(_DWORD *)(LODWORD(v1) + 112) = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(LODWORD(v1) + 16) + 32) + 12))(*(_DWORD *)(*(_DWORD *)(LODWORD(v1) + 16) + 32));
  return Application::ComputeDt((Application *)LODWORD(v1));
}


// ===== 3291a8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 72));
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 48));
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x60u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3291f8 CMsgQuestsSync::CMsgQuestsSync(bool) =====
void __fastcall CMsgQuestsSync::CMsgQuestsSync(CMsgQuestsSync *this, bool a2)
{
  CMessage::CMessage(this, "CMsgQuestsSync", a2);
  *((_DWORD *)this + 20) = 0;
  *(_DWORD *)this = off_95B2A0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgQuestsSync", "");
  *((_BYTE *)this + 51) = 0;
  *((_BYTE *)this + 48) = 1;
  *((_DWORD *)this + 11) = 1;
}


// ===== 329270 GetNewInstance<CMsgQuestsSync>(bool) =====
CMsgQuestsSync *__fastcall GetNewInstance<CMsgQuestsSync>(bool a1)
{
  CMsgQuestsSync *v2; // r4

  v2 = (CMsgQuestsSync *)operator new(0x5Cu, 2);
  CMsgQuestsSync::CMsgQuestsSync(v2, a1);
  return v2;
}


// ===== 329298 GetNewInstance<CMsgGlobalDeath>(bool) =====
int __fastcall GetNewInstance<CMsgGlobalDeath>(bool a1)
{
  int v2; // r4

  v2 = operator new(0x50u, 2);
  CMessage::CMessage((CMessage *)v2, "CMsgGlobalDeath", a1);
  *(_DWORD *)v2 = off_95B1E0;
  std::string::_M_assign((std::string *const)(v2 + 20), "CMsgGlobalDeath", "");
  *(_BYTE *)(v2 + 48) = 1;
  *(_DWORD *)(v2 + 44) = 1;
  *(_BYTE *)(v2 + 50) = 1;
  return v2;
}


// ===== 329310 Application::UnRegisterForIrrlichtEvents(glitch::IEventReceiver *) =====
glitch::IEventReceiver **__fastcall Application::UnRegisterForIrrlichtEvents(
        glitch::IEventReceiver **this,
        glitch::IEventReceiver *a2)
{
  glitch::IEventReceiver **v3; // r5
  glitch::IEventReceiver *v4; // r4
  glitch::IEventReceiver **v5; // r3

  if ( a2 )
  {
    v3 = this + 2;
    this = (glitch::IEventReceiver **)*(this + 2);
    while ( v3 != this )
    {
      v4 = *this;
      if ( a2 == *(this + 2) )
      {
        v5 = (glitch::IEventReceiver **)*(this + 1);
        *v5 = v4;
        *((_DWORD *)v4 + 1) = v5;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(this, 0xCu);
        this = (glitch::IEventReceiver **)v4;
      }
      else
      {
        this = (glitch::IEventReceiver **)*this;
      }
    }
  }
  return this;
}


// ===== 329368 std::allocator<DialogMsg *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<DialogMsg *>::allocate(int a1, unsigned int a2)
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


// ===== 3293c8 std::allocator<CharMenuTutorialMsg *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<CharMenuTutorialMsg *>::allocate(int a1, unsigned int a2)
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


// ===== 329428 std::allocator<AchievementMsg *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<AchievementMsg *>::allocate(int a1, unsigned int a2)
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


// ===== 329488 std::allocator<std::string>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::string>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 329510 std::allocator<StatusMsg *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<StatusMsg *>::allocate(int a1, unsigned int a2)
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


// ===== 329570 std::allocator<OnlineStatusMsg *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<OnlineStatusMsg *>::allocate(int a1, unsigned int a2)
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


// ===== 3295d0 std::allocator<TutorialMsg *>::allocate(uint,void const*) =====
void *__fastcall std::allocator<TutorialMsg *>::allocate(int a1, unsigned int a2)
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


// ===== 329630 CMsgRaisedEvent::CMsgRaisedEvent(bool) =====
void __fastcall CMsgRaisedEvent::CMsgRaisedEvent(CMsgRaisedEvent *this, bool a2)
{
  CMessage::CMessage(this, "CMsgRaisedEvent", a2);
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 20) = 0;
  *(_DWORD *)this = off_95B360;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 23) = 0;
  std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgRaisedEvent", "");
  *((_BYTE *)this + 48) = 1;
  *((_DWORD *)this + 11) = 1;
  *((_BYTE *)this + 51) = 1;
}


// ===== 3296ac GetNewInstance<CMsgRaisedEvent>(bool) =====
CMsgRaisedEvent *__fastcall GetNewInstance<CMsgRaisedEvent>(bool a1)
{
  CMsgRaisedEvent *v2; // r4

  v2 = (CMsgRaisedEvent *)operator new(0x64u, 2);
  CMsgRaisedEvent::CMsgRaisedEvent(v2, a1);
  return v2;
}


// ===== 3296d4 std::priv::_Deque_base<StatusMsg,std::allocator<StatusMsg>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<StatusMsg,std::allocator<StatusMsg>>::~_Deque_base(_DWORD *a1)
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x70u);
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


// ===== 329758 std::deque<StatusMsg,std::allocator<StatusMsg>>::~deque() =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall std::deque<StatusMsg>::~deque(
        std::priv::_String_base<char,std::allocator<char> > **a1)
{
  std::priv::_String_base<char,std::allocator<char> > *v2; // r4
  std::priv::_String_base<char,std::allocator<char> > *v3; // r5
  std::priv::_String_base<char,std::allocator<char> > *v4; // r6
  std::priv::_String_base<char,std::allocator<char> > *v5; // r8
  std::priv::_String_base<char,std::allocator<char> > *v6; // r0
  std::priv::_String_base<char,std::allocator<char> > *v7; // t1

  v2 = *a1;
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[3];
  while ( v2 != v4 )
  {
    v6 = v2;
    v2 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v2 + 28);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v6);
    if ( v2 == v3 )
    {
      v7 = *(std::priv::_String_base<char,std::allocator<char> > **)&v5->_M_buffers._M_static_buf[4];
      v5 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v5 + 4);
      v2 = v7;
      v3 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v7 + 112);
    }
  }
  std::priv::_Deque_base<StatusMsg,std::allocator<StatusMsg>>::~_Deque_base(a1);
  return a1;
}


// ===== 3297a4 MenuMessageManager<StatusMsg,4>::~MenuMessageManager() =====
_DWORD *__fastcall MenuMessageManager<StatusMsg,4>::~MenuMessageManager(_DWORD *a1)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r4
  std::priv::_String_base<char,std::allocator<char> > **v3; // r5

  v2 = (std::priv::_String_base<char,std::allocator<char> > **)(a1 + 41);
  *a1 = off_95B150;
  v3 = (std::priv::_String_base<char,std::allocator<char> > **)(a1 + 1);
  do
  {
    v2 -= 10;
    std::deque<StatusMsg>::~deque(v2);
  }
  while ( v2 != v3 );
  return a1;
}


// ===== 3297f0 MenuMessageManager<StatusMsg,4>::~MenuMessageManager() =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall MenuMessageManager<StatusMsg,4>::~MenuMessageManager(
        std::priv::_String_base<char,std::allocator<char> > **a1)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r4
  std::priv::_String_base<char,std::allocator<char> > **v3; // r5

  v2 = a1 + 41;
  *a1 = (std::priv::_String_base<char,std::allocator<char> > *)off_95B150;
  v3 = a1 + 1;
  do
  {
    v2 -= 10;
    std::deque<StatusMsg>::~deque(v2);
  }
  while ( v2 != v3 );
  CustomFree(a1);
  return a1;
}


// ===== 329844 std::priv::_Deque_base<AchievementMsg,std::allocator<AchievementMsg>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<AchievementMsg,std::allocator<AchievementMsg>>::~_Deque_base(_DWORD *a1)
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


// ===== 3298c8 std::deque<AchievementMsg,std::allocator<AchievementMsg>>::~deque() =====
int *__fastcall std::deque<AchievementMsg>::~deque(int *a1)
{
  std::priv::_String_base<char,std::allocator<char> > *v1; // r12
  int v2; // r5
  int v3; // r6
  int v4; // r7
  int v5; // r9
  std::priv::_String_base<char,std::allocator<char> > *v6; // r10
  std::priv::_String_base<char,std::allocator<char> > *v7; // r8
  std::priv::_String_base<char,std::allocator<char> > *v10[4]; // [sp+4h] [bp-24h] BYREF
  _DWORD v11[4]; // [sp+14h] [bp-14h] BYREF

  v1 = (std::priv::_String_base<char,std::allocator<char> > *)a1[6];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (std::priv::_String_base<char,std::allocator<char> > *)a1[4];
  v7 = (std::priv::_String_base<char,std::allocator<char> > *)a1[5];
  v10[3] = (std::priv::_String_base<char,std::allocator<char> > *)a1[7];
  v10[2] = v1;
  v11[3] = v5;
  v11[2] = v4;
  v11[1] = v3;
  v11[0] = v2;
  v10[1] = v7;
  v10[0] = v6;
  std::__destroy_range_aux<std::priv::_Deque_iterator<AchievementMsg,std::_Nonconst_traits<AchievementMsg>>,AchievementMsg>(
    (int)v11,
    v10);
  std::priv::_Deque_base<AchievementMsg,std::allocator<AchievementMsg>>::~_Deque_base(a1);
  return a1;
}


// ===== 329930 MenuMessageManager<AchievementMsg,1>::~MenuMessageManager() =====
_DWORD *__fastcall MenuMessageManager<AchievementMsg,1>::~MenuMessageManager(_DWORD *a1)
{
  int *v2; // r5
  int *v3; // r4

  v2 = a1 + 1;
  *a1 = off_95B1A0;
  v3 = a1 + 11;
  do
  {
    v3 -= 10;
    std::deque<AchievementMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  return a1;
}


// ===== 32997c MenuMessageManager<AchievementMsg,1>::~MenuMessageManager() =====
int *__fastcall MenuMessageManager<AchievementMsg,1>::~MenuMessageManager(int *a1)
{
  int *v2; // r5
  int *v3; // r4

  v2 = a1 + 1;
  *a1 = (int)off_95B1A0;
  v3 = a1 + 11;
  do
  {
    v3 -= 10;
    std::deque<AchievementMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  CustomFree(a1);
  return a1;
}


// ===== 3299d0 std::priv::_Deque_base<TutorialMsg,std::allocator<TutorialMsg>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<TutorialMsg,std::allocator<TutorialMsg>>::~_Deque_base(_DWORD *a1)
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


// ===== 329a54 MenuMessageManager<TutorialMsg,1>::~MenuMessageManager() =====
_DWORD *__fastcall MenuMessageManager<TutorialMsg,1>::~MenuMessageManager(_DWORD *a1)
{
  _DWORD *v2; // r5
  _DWORD *v3; // r4
  int v4; // r3
  int v5; // t1
  int v6; // r1
  int v7; // r2
  int v8; // r0
  int v9; // r3
  bool v10; // zf
  int v11; // t1

  v2 = a1 + 1;
  *a1 = off_95B170;
  v3 = a1 + 11;
  do
  {
    v5 = *(v3 - 10);
    v3 -= 10;
    v4 = v5;
    v6 = v3[4];
    v7 = v3[2];
    v8 = v3[3];
    if ( v6 != v5 )
    {
      while ( 1 )
      {
        v9 = v4 + 8;
        if ( v9 != v7 )
          break;
LABEL_6:
        v11 = *(_DWORD *)(v8 + 4);
        v8 += 4;
        v4 = v11;
        v7 = v11 + 128;
        if ( v6 == v11 )
          goto LABEL_7;
      }
      while ( 1 )
      {
        v10 = v6 == v9;
        v9 += 8;
        if ( v10 )
          break;
        if ( v7 == v9 )
          goto LABEL_6;
      }
    }
LABEL_7:
    std::priv::_Deque_base<TutorialMsg,std::allocator<TutorialMsg>>::~_Deque_base(v3);
  }
  while ( v3 != v2 );
  return a1;
}


// ===== 329ae4 MenuMessageManager<TutorialMsg,1>::~MenuMessageManager() =====
_DWORD *__fastcall MenuMessageManager<TutorialMsg,1>::~MenuMessageManager(_DWORD *a1)
{
  _DWORD *v2; // r5
  _DWORD *v3; // r4
  int v4; // r3
  int v5; // t1
  int v6; // r1
  int v7; // r2
  int v8; // r0
  int v9; // r3
  bool v10; // zf
  int v11; // t1

  v2 = a1 + 1;
  *a1 = off_95B170;
  v3 = a1 + 11;
  do
  {
    v5 = *(v3 - 10);
    v3 -= 10;
    v4 = v5;
    v6 = v3[4];
    v7 = v3[2];
    v8 = v3[3];
    if ( v6 != v5 )
    {
      while ( 1 )
      {
        v9 = v4 + 8;
        if ( v9 != v7 )
          break;
LABEL_6:
        v11 = *(_DWORD *)(v8 + 4);
        v8 += 4;
        v4 = v11;
        v7 = v11 + 128;
        if ( v6 == v11 )
          goto LABEL_7;
      }
      while ( 1 )
      {
        v10 = v6 == v9;
        v9 += 8;
        if ( v10 )
          break;
        if ( v7 == v9 )
          goto LABEL_6;
      }
    }
LABEL_7:
    std::priv::_Deque_base<TutorialMsg,std::allocator<TutorialMsg>>::~_Deque_base(v3);
  }
  while ( v3 != v2 );
  CustomFree(a1);
  return a1;
}


// ===== 329b7c std::priv::_Deque_base<OnlineStatusMsg,std::allocator<OnlineStatusMsg>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<OnlineStatusMsg,std::allocator<OnlineStatusMsg>>::~_Deque_base(_DWORD *a1)
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x70u);
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


// ===== 329c00 std::deque<OnlineStatusMsg,std::allocator<OnlineStatusMsg>>::~deque() =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall std::deque<OnlineStatusMsg>::~deque(
        std::priv::_String_base<char,std::allocator<char> > **a1)
{
  std::priv::_String_base<char,std::allocator<char> > *v2; // r4
  std::priv::_String_base<char,std::allocator<char> > *v3; // r5
  std::priv::_String_base<char,std::allocator<char> > *v4; // r6
  std::priv::_String_base<char,std::allocator<char> > *v5; // r8
  std::priv::_String_base<char,std::allocator<char> > *v6; // r0
  std::priv::_String_base<char,std::allocator<char> > *v7; // t1

  v2 = *a1;
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[3];
  while ( v2 != v4 )
  {
    v6 = v2;
    v2 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v2 + 28);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v6);
    if ( v2 == v3 )
    {
      v7 = *(std::priv::_String_base<char,std::allocator<char> > **)&v5->_M_buffers._M_static_buf[4];
      v5 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v5 + 4);
      v2 = v7;
      v3 = (std::priv::_String_base<char,std::allocator<char> > *)((char *)v7 + 112);
    }
  }
  std::priv::_Deque_base<OnlineStatusMsg,std::allocator<OnlineStatusMsg>>::~_Deque_base(a1);
  return a1;
}


// ===== 329c4c MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager() =====
_DWORD *__fastcall MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager(_DWORD *a1)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r5
  std::priv::_String_base<char,std::allocator<char> > **v3; // r4

  v2 = (std::priv::_String_base<char,std::allocator<char> > **)(a1 + 1);
  *a1 = off_95B160;
  v3 = (std::priv::_String_base<char,std::allocator<char> > **)(a1 + 11);
  do
  {
    v3 -= 10;
    std::deque<OnlineStatusMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  return a1;
}


// ===== 329c98 MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager() =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager(
        std::priv::_String_base<char,std::allocator<char> > **a1)
{
  std::priv::_String_base<char,std::allocator<char> > **v2; // r5
  std::priv::_String_base<char,std::allocator<char> > **v3; // r4

  v2 = a1 + 1;
  *a1 = (std::priv::_String_base<char,std::allocator<char> > *)off_95B160;
  v3 = a1 + 11;
  do
  {
    v3 -= 10;
    std::deque<OnlineStatusMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  CustomFree(a1);
  return a1;
}


// ===== 329cec std::vector<glitch::debugger::CTweakable::SGroup,std::allocator<glitch::debugger::CTweakable::SGroup>>::~vector() =====
glitch::debugger::CTweakable::SGroup **__fastcall std::vector<glitch::debugger::CTweakable::SGroup>::~vector(
        glitch::debugger::CTweakable::SGroup **a1)
{
  glitch::debugger::CTweakable::SGroup *v1; // r5
  glitch::debugger::CTweakable::SGroup *v2; // r6
  glitch::debugger::CTweakable::SGroup *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (glitch::debugger::CTweakable::SGroup *)((char *)v1 - 52);
    glitch::debugger::CTweakable::SGroup::~SGroup(v1);
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


// ===== 329d64 glitch::debugger::CTweakable::SGroup::~SGroup() =====
void __fastcall glitch::debugger::CTweakable::SGroup::~SGroup(glitch::debugger::CTweakable::SGroup *this)
{
  std::vector<glitch::debugger::CTweakable::SGroup>::~vector((glitch::debugger::CTweakable::SGroup **)this + 9);
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this);
}


// ===== 329d8c std::priv::_Deque_base<CharMenuTutorialMsg,std::allocator<CharMenuTutorialMsg>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<CharMenuTutorialMsg,std::allocator<CharMenuTutorialMsg>>::~_Deque_base(
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x68u);
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


// ===== 329e10 std::deque<CharMenuTutorialMsg,std::allocator<CharMenuTutorialMsg>>::~deque() =====
int *__fastcall std::deque<CharMenuTutorialMsg>::~deque(int *a1)
{
  int v1; // r12
  int v2; // r5
  int v3; // r6
  int v4; // r7
  int v5; // r9
  int v6; // r10
  int v7; // r8
  _DWORD v10[4]; // [sp+4h] [bp-24h] BYREF
  int v11[4]; // [sp+14h] [bp-14h] BYREF

  v1 = a1[6];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v10[3] = a1[7];
  v10[2] = v1;
  v11[3] = v5;
  v11[2] = v4;
  v11[1] = v3;
  v11[0] = v2;
  v10[1] = v7;
  v10[0] = v6;
  std::__destroy_range_aux<std::priv::_Deque_iterator<CharMenuTutorialMsg,std::_Nonconst_traits<CharMenuTutorialMsg>>,CharMenuTutorialMsg>(
    v11,
    v10);
  std::priv::_Deque_base<CharMenuTutorialMsg,std::allocator<CharMenuTutorialMsg>>::~_Deque_base(a1);
  return a1;
}


// ===== 329e78 MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager() =====
_DWORD *__fastcall MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager(_DWORD *a1)
{
  int *v2; // r5
  int *v3; // r4

  v2 = a1 + 1;
  *a1 = off_95B190;
  v3 = a1 + 11;
  do
  {
    v3 -= 10;
    std::deque<CharMenuTutorialMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  return a1;
}


// ===== 329ec4 MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager() =====
int *__fastcall MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager(int *a1)
{
  int *v2; // r5
  int *v3; // r4

  v2 = a1 + 1;
  *a1 = (int)off_95B190;
  v3 = a1 + 11;
  do
  {
    v3 -= 10;
    std::deque<CharMenuTutorialMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  CustomFree(a1);
  return a1;
}


// ===== 329f18 std::priv::_Deque_base<DialogMsg,std::allocator<DialogMsg>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<DialogMsg,std::allocator<DialogMsg>>::~_Deque_base(_DWORD *a1)
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, 0x4Cu);
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


// ===== 329f9c std::deque<DialogMsg,std::allocator<DialogMsg>>::~deque() =====
DialogMsg **__fastcall std::deque<DialogMsg>::~deque(DialogMsg **a1)
{
  DialogMsg *v2; // r4
  DialogMsg *v3; // r5
  DialogMsg *v4; // r6
  DialogMsg *v5; // r8
  DialogMsg *v6; // r0
  DialogMsg *v7; // t1

  v2 = *a1;
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[3];
  while ( v2 != v4 )
  {
    v6 = v2;
    v2 = (DialogMsg *)((char *)v2 + 76);
    DialogMsg::~DialogMsg(v6);
    if ( v2 == v3 )
    {
      v7 = *((DialogMsg **)v5 + 1);
      v5 = (DialogMsg *)((char *)v5 + 4);
      v2 = v7;
      v3 = (DialogMsg *)((char *)v7 + 76);
    }
  }
  std::priv::_Deque_base<DialogMsg,std::allocator<DialogMsg>>::~_Deque_base(a1);
  return a1;
}


// ===== 329fe8 MenuMessageManager<DialogMsg,1>::~MenuMessageManager() =====
_DWORD *__fastcall MenuMessageManager<DialogMsg,1>::~MenuMessageManager(_DWORD *a1)
{
  DialogMsg **v2; // r5
  DialogMsg **v3; // r4

  v2 = (DialogMsg **)(a1 + 1);
  *a1 = off_95B180;
  v3 = (DialogMsg **)(a1 + 11);
  do
  {
    v3 -= 10;
    std::deque<DialogMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  return a1;
}


// ===== 32a034 MenuMessageManager<DialogMsg,1>::~MenuMessageManager() =====
DialogMsg **__fastcall MenuMessageManager<DialogMsg,1>::~MenuMessageManager(DialogMsg **a1)
{
  DialogMsg **v2; // r5
  DialogMsg **v3; // r4

  v2 = a1 + 1;
  *a1 = (DialogMsg *)off_95B180;
  v3 = a1 + 11;
  do
  {
    v3 -= 10;
    std::deque<DialogMsg>::~deque(v3);
  }
  while ( v2 != v3 );
  CustomFree(a1);
  return a1;
}


// ===== 32a088 glitch::debugger::CTweakable::~CTweakable() =====
void __fastcall glitch::debugger::CTweakable::~CTweakable(glitch::debugger::CTweakable *this)
{
  char *v2; // r1
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_95B4D0;
  v2 = (char *)this + 112;
  v3 = *((void **)this + 28);
  if ( v3 )
  {
    v4 = *((_DWORD *)v2 + 2) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 84));
  glitch::debugger::CTweakable::SGroup::~SGroup((glitch::debugger::CTweakable *)((char *)this + 28));
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_erase(
      (int)this + 4,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 32a124 glitch::debugger::CTweakable::~CTweakable() =====
void __fastcall glitch::debugger::CTweakable::~CTweakable(glitch::debugger::CTweakable *this)
{
  glitch::debugger::CTweakable::~CTweakable(this);
  CustomFree(this);
}


// ===== 32a140 GetNewInstance<CMsgStartGame>(bool) =====
int __fastcall GetNewInstance<CMsgStartGame>(bool a1)
{
  int v2; // r4

  v2 = operator new(0x6Cu, 2);
  CMessage::CMessage((CMessage *)v2, "CMsgStartGame", a1);
  *(_DWORD *)v2 = off_95B3F0;
  std::string::_M_assign((std::string *const)(v2 + 20), "CMsgStartGame", "");
  *(_BYTE *)(v2 + 50) = 1;
  *(_BYTE *)(v2 + 51) = 0;
  *(_DWORD *)(v2 + 44) = 1;
  return v2;
}


// ===== 32a1bc std::string::_M_reserve(uint) =====
void __fastcall std::string::_M_reserve(std::string *this, size_t a2)
{
  char *v2; // r7
  char *v4; // r4
  char *M_data; // r1
  char *v6; // r2
  char *v7; // r6
  char *i; // r6
  char *ERj_veneer; // r0
  size_t __n[2]; // [sp+4h] [bp-8h] BYREF

  v2 = (char *)a2;
  if ( a2 )
  {
    __n[0] = a2;
    if ( a2 > 0x80 )
      ERj_veneer = (char *)CustomAlloc(a2);
    else
      ERj_veneer = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(__n);
    v4 = ERj_veneer;
    v2 = &ERj_veneer[__n[0]];
  }
  else
  {
    v4 = nullptr;
  }
  M_data = this->_M_start_of_storage._M_data;
  v6 = (char *)(this->_M_finish - M_data);
  if ( (int)v6 > 0 )
  {
    for ( i = nullptr; i != v6; ++i )
      i[(_DWORD)v4] = i[(_DWORD)M_data];
    v7 = &i[(_DWORD)v4];
  }
  else
  {
    v7 = v4;
  }
  *v7 = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this);
  this->_M_start_of_storage._M_data = v4;
  this->_M_buffers._M_end_of_storage = v2;
  this->_M_finish = v7;
}


// ===== 32a25c std::string::push_back(char) =====
void __fastcall std::string::push_back(std::string *this, _BYTE *M_end_of_storage)
{
  std::string *M_data; // r3
  char v3; // r5
  bool v5; // zf
  char *M_finish; // r3
  size_t size; // r0

  M_data = (std::string *)this->_M_start_of_storage._M_data;
  v3 = (char)M_end_of_storage;
  v5 = M_data == this;
  if ( M_data != this )
    M_end_of_storage = this->_M_buffers._M_end_of_storage;
  M_finish = this->_M_finish;
  if ( v5 )
    M_end_of_storage = &this->_M_finish;
  if ( M_end_of_storage - M_finish == 1 )
  {
    size = std::string::_M_compute_next_size(this, 1u);
    std::string::_M_reserve(this, size);
    M_finish = this->_M_finish;
  }
  M_finish[1] = 0;
  *this->_M_finish++ = v3;
}


// ===== 32a2c4 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::overflow(int) =====
int __fastcall std::stringbuf::overflow(int a1, int a2)
{
  int v2; // r4
  int v5; // r3
  int v6; // r6
  int v7; // r2
  int v8; // r3
  int v9; // r2

  v2 = a2;
  if ( a2 == -1 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32);
  if ( (v5 & 0x10) == 0 )
    return -1;
  if ( *(_DWORD *)(a1 + 20) < *(_DWORD *)(a1 + 24) )
  {
    std::string::push_back((std::string *)(a1 + 36), (_BYTE *)(char)a2);
    ++*(_DWORD *)(a1 + 20);
  }
  else
  {
    if ( (v5 & 8) != 0 )
    {
      v6 = *(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4);
      std::string::push_back((std::string *)(a1 + 36), (_BYTE *)(char)a2);
      v7 = *(_DWORD *)(a1 + 56);
      v8 = *(_DWORD *)(a1 + 52);
      *(_DWORD *)(a1 + 20) = v8;
      *(_DWORD *)(a1 + 8) = v7 + v6;
      *(_DWORD *)(a1 + 16) = v7;
      *(_DWORD *)(a1 + 4) = v7;
      *(_DWORD *)(a1 + 12) = v8;
    }
    else
    {
      std::string::push_back((std::string *)(a1 + 36), (_BYTE *)(char)a2);
      v8 = *(_DWORD *)(a1 + 52);
      v9 = *(_DWORD *)(a1 + 56);
      *(_DWORD *)(a1 + 20) = v8;
      *(_DWORD *)(a1 + 16) = v9;
    }
    *(_DWORD *)(a1 + 24) = v8;
  }
  return v2;
}


// ===== 32a388 std::string::append(uint,char) =====
std::string *__fastcall std::string::append(std::string *this, unsigned int a2, char a3)
{
  char *M_finish; // r3
  std::string *M_data; // r1
  _BYTE *p_M_finish; // r2
  char *v9; // r2
  size_t size; // r0
  _BYTE *M_end_of_storage; // r2

  if ( !a2 )
    return this;
  M_finish = this->_M_finish;
  M_data = (std::string *)this->_M_start_of_storage._M_data;
  if ( a2 <= -2 - (M_finish - (char *)M_data) )
  {
    if ( this == M_data )
      p_M_finish = &this->_M_finish;
    else
      p_M_finish = this->_M_buffers._M_end_of_storage;
    if ( a2 < p_M_finish - M_finish )
      goto LABEL_7;
LABEL_13:
    size = std::string::_M_compute_next_size(this, a2);
    std::string::_M_reserve(this, size);
    M_finish = this->_M_finish;
    goto LABEL_7;
  }
  __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  M_finish = this->_M_finish;
  if ( this == (std::string *)this->_M_start_of_storage._M_data )
    M_end_of_storage = &this->_M_finish;
  else
    M_end_of_storage = this->_M_buffers._M_end_of_storage;
  if ( a2 >= M_end_of_storage - M_finish )
    goto LABEL_13;
LABEL_7:
  if ( (int)(a2 - 1) > 0 )
  {
    v9 = &M_finish[a2 - 1];
    do
      *++M_finish = a3;
    while ( M_finish != v9 );
    M_finish = this->_M_finish;
  }
  M_finish[a2] = 0;
  *this->_M_finish = a3;
  this->_M_finish += a2;
  return this;
}


// ===== 32a474 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::_M_xsputnc(char,int) =====
unsigned int __fastcall std::stringbuf::_M_xsputnc(int a1, char a2, signed int a3)
{
  unsigned int v3; // r3
  int v6; // r7
  unsigned int v7; // r5
  unsigned int result; // r0
  signed int v9; // r7
  char v10; // r2
  int v11; // r6
  int v12; // r2
  int v13; // r3
  void *v14; // r0

  v3 = *(_DWORD *)(a1 + 32);
  v6 = (v3 >> 4) & 1;
  if ( a3 <= 0 )
    v6 = 0;
  v7 = a3;
  if ( !v6 )
    return 0;
  if ( *(_DWORD *)(a1 + 16) == *(_DWORD *)(a1 + 56) )
  {
    v14 = *(void **)(a1 + 20);
    v9 = *(_DWORD *)(a1 + 52) - (_DWORD)v14;
    if ( v9 > a3 )
    {
      LC_API_MEMSET_0(v14, a2, a3);
      *(_DWORD *)(a1 + 20) += v7;
      return v7;
    }
    LC_API_MEMSET_0(v14, a2, *(_DWORD *)(a1 + 52) - (_DWORD)v14);
    v7 -= v9;
    v3 = *(_DWORD *)(a1 + 32);
  }
  else
  {
    v9 = 0;
  }
  if ( (v3 & 8) != 0 )
  {
    v10 = a2;
    v11 = *(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4);
    std::string::append((std::string *)(a1 + 36), v7, v10);
    v12 = *(_DWORD *)(a1 + 56);
    v13 = *(_DWORD *)(a1 + 52);
    result = v7 + v9;
    *(_DWORD *)(a1 + 4) = v12;
    *(_DWORD *)(a1 + 8) = v12 + v11;
    *(_DWORD *)(a1 + 12) = v13;
  }
  else
  {
    std::string::append((std::string *)(a1 + 36), v7, a2);
    v13 = *(_DWORD *)(a1 + 52);
    v12 = *(_DWORD *)(a1 + 56);
    result = v7 + v9;
  }
  *(_DWORD *)(a1 + 20) = v13;
  *(_DWORD *)(a1 + 16) = v12;
  *(_DWORD *)(a1 + 24) = v13;
  return result;
}


// ===== 32a570 std::string::reserve(uint) =====
void __fastcall std::string::reserve(std::string *this, char *a2, char *M_end_of_storage)
{
  char *v3; // r5
  std::string *M_data; // r3
  size_t v6; // r1
  unsigned int v7; // r3

  v3 = a2;
  if ( a2 == (char *)-1 )
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  M_data = (std::string *)this->_M_start_of_storage._M_data;
  if ( v3 < (char *)(this->_M_finish - (char *)M_data) )
    v3 = (char *)(this->_M_finish - (char *)M_data);
  if ( M_data != this )
    M_end_of_storage = this->_M_buffers._M_end_of_storage;
  v6 = (size_t)(v3 + 1);
  if ( M_data == this )
    v7 = 16;
  else
    v7 = M_end_of_storage - (char *)M_data;
  if ( v6 >= v7 )
    std::string::_M_reserve(this, v6);
}


// ===== 32a5d8 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::setbuf(char *,int) =====
int __fastcall std::stringbuf::setbuf(int a1, int a2, char *a3)
{
  int v3; // r5
  char *v6; // r3
  char *v7; // r2
  bool v8; // zf
  char *v9; // r2
  int v10; // r5
  int v11; // r6
  int v12; // r3
  int v13; // r2
  int v15; // r7
  int v16; // r2

  if ( (int)a3 > 0 )
  {
    v6 = *(char **)(a1 + 56);
    v7 = *(char **)(a1 + 16);
    v8 = v7 == v6;
    if ( v7 == v6 )
      v3 = *(_DWORD *)(a1 + 20);
    v9 = *(char **)(a1 + 4);
    if ( v8 )
    {
      v11 = 1;
      v10 = v3 - (_DWORD)v6;
    }
    else
    {
      v10 = 0;
      v11 = 0;
    }
    if ( v6 == v9 )
    {
      v15 = *(_DWORD *)(a1 + 8) - (_DWORD)v6;
      std::string::reserve((std::string *)(a1 + 36), a3, v9);
      v12 = *(_DWORD *)(a1 + 56);
      v16 = *(_DWORD *)(a1 + 52);
      *(_DWORD *)(a1 + 8) = v12 + v15;
      *(_DWORD *)(a1 + 12) = v16;
      *(_DWORD *)(a1 + 4) = v12;
    }
    else
    {
      std::string::reserve((std::string *)(a1 + 36), a3, v9);
      v12 = *(_DWORD *)(a1 + 56);
    }
    if ( v11 )
    {
      v13 = *(_DWORD *)(a1 + 52);
      *(_DWORD *)(a1 + 20) = v12 + v10;
      *(_DWORD *)(a1 + 24) = v13;
      *(_DWORD *)(a1 + 16) = v12;
    }
  }
  return a1;
}


// ===== 32a66c CMsgSpawnObject::CMsgSpawnObject(bool) =====
void __fastcall CMsgSpawnObject::CMsgSpawnObject(CMsgSpawnObject *this, bool a2)
{
  CMessage::CMessage(this, "CMsgSpawnObject", a2);
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 23) = 0;
  *(_DWORD *)this = off_95B210;
  *((_DWORD *)this + 24) = 0;
  std::string::_M_assign((std::string *const)((char *)this + 20), "CMsgSpawnObject", "");
  *((_WORD *)this + 25) = 1;
  *((_DWORD *)this + 11) = 0;
}


// ===== 32a6e8 GetNewInstance<CMsgSpawnObject>(bool) =====
CMsgSpawnObject *__fastcall GetNewInstance<CMsgSpawnObject>(bool a1)
{
  CMsgSpawnObject *v2; // r4

  v2 = (CMsgSpawnObject *)operator new(0x6Cu, 2);
  CMsgSpawnObject::CMsgSpawnObject(v2, a1);
  return v2;
}


// ===== 32a710 GetNewInstance<CMsgScriptCmd>(bool) =====
int __fastcall GetNewInstance<CMsgScriptCmd>(bool a1)
{
  int v2; // r4

  v2 = operator new(0x5Cu, 2);
  CMessage::CMessage((CMessage *)v2, "CMsgScriptCmd", a1);
  *(_DWORD *)v2 = off_95B300;
  std::string::_M_assign((std::string *const)(v2 + 20), "CMsgScriptCmd", "");
  *(_DWORD *)(v2 + 44) = 1;
  *(_BYTE *)(v2 + 51) = 1;
  *(_BYTE *)(v2 + 50) = 1;
  *(_BYTE *)(v2 + 48) = 1;
  return v2;
}


// ===== 32a78c std::string::_M_appendT<char const*>(char const*,char const*,std::forward_iterator_tag const&) =====
std::string *__fastcall std::string::_M_appendT<char const*>(std::string *a1, char *M_end_of_storage, char *a3)
{
  char *v3; // r6
  std::string *M_data; // r3
  unsigned int v6; // r5
  bool v7; // zf
  char *M_finish; // r3
  size_t size; // r0
  char *v10; // r8
  char *v11; // r7
  char *v12; // r1
  char *v13; // r10
  char *v14; // r0
  _BYTE *v15; // r0
  char *v16; // r5
  char *v18; // r0
  char *ERj_veneer; // r0
  size_t __n[2]; // [sp+4h] [bp-8h] BYREF

  v3 = M_end_of_storage;
  if ( M_end_of_storage != a3 )
  {
    M_data = (std::string *)a1->_M_start_of_storage._M_data;
    v6 = a3 - M_end_of_storage;
    v7 = M_data == a1;
    if ( M_data != a1 )
      M_end_of_storage = a1->_M_buffers._M_end_of_storage;
    M_finish = a1->_M_finish;
    if ( v7 )
      M_end_of_storage = (char *)&a1->_M_finish;
    if ( v6 < M_end_of_storage - M_finish )
    {
      *M_finish = *v3;
      v18 = a1->_M_finish;
      if ( a3 != v3 + 1 )
      {
        memcpy(v18 + 1, v3 + 1, a3 - (v3 + 1));
        v18 = a1->_M_finish;
      }
      v18[v6] = 0;
      a1->_M_finish += v6;
    }
    else
    {
      size = std::string::_M_compute_next_size(a1, v6);
      v10 = (char *)size;
      if ( size )
      {
        __n[0] = size;
        if ( size > 0x80 )
          ERj_veneer = (char *)CustomAlloc(size);
        else
          ERj_veneer = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(__n);
        v11 = ERj_veneer;
        v10 = &ERj_veneer[__n[0]];
      }
      else
      {
        v11 = nullptr;
      }
      v12 = a1->_M_start_of_storage._M_data;
      v13 = a1->_M_finish;
      if ( v12 == v13 )
        v14 = v11;
      else
        v14 = (char *)memcpy(v11, v12, v13 - v12) + v13 - v12;
      v15 = memcpy(v14, v3, v6);
      v15[v6] = 0;
      v16 = &v15[v6];
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(a1);
      a1->_M_buffers._M_end_of_storage = v10;
      a1->_M_finish = v16;
      a1->_M_start_of_storage._M_data = v11;
    }
  }
  return a1;
}


// ===== 32a8ac std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::xsputn(char const*,int) =====
signed int __fastcall std::stringbuf::xsputn(int a1, char *a2, signed int a3)
{
  unsigned int v3; // r12
  signed int v4; // r5
  int v5; // r3
  char *v7; // r8
  int v8; // r3
  int v9; // r6
  signed int v10; // r6
  int v11; // r2
  int v12; // r3
  int v14; // r7
  char *v15; // r0

  v3 = *(_DWORD *)(a1 + 32);
  v4 = a3;
  v5 = (v3 >> 4) & 1;
  if ( a3 <= 0 )
    v5 = 0;
  v7 = a2;
  if ( !v5 )
    return 0;
  v8 = *(_DWORD *)(a1 + 56);
  v9 = *(_DWORD *)(a1 + 52);
  if ( v8 == v9 || v8 != *(_DWORD *)(a1 + 16) )
  {
    v10 = 0;
LABEL_8:
    if ( (v3 & 8) != 0 )
    {
      v14 = *(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4);
      std::string::_M_appendT<char const*>((std::string *)(a1 + 36), v7, &v7[v4]);
      v11 = *(_DWORD *)(a1 + 56);
      v12 = *(_DWORD *)(a1 + 52);
      *(_DWORD *)(a1 + 4) = v11;
      *(_DWORD *)(a1 + 8) = v11 + v14;
      *(_DWORD *)(a1 + 12) = v12;
    }
    else
    {
      std::string::_M_appendT<char const*>((std::string *)(a1 + 36), v7, &v7[v4]);
      v11 = *(_DWORD *)(a1 + 56);
      v12 = *(_DWORD *)(a1 + 52);
    }
    *(_DWORD *)(a1 + 20) = v12;
    *(_DWORD *)(a1 + 16) = v11;
    v4 += v10;
    *(_DWORD *)(a1 + 24) = v12;
    return v4;
  }
  v15 = *(char **)(a1 + 20);
  v10 = v9 - (_DWORD)v15;
  if ( a3 >= v10 )
  {
    if ( v10 )
    {
      memcpy(v15, a2, v10);
      v3 = *(_DWORD *)(a1 + 32);
    }
    v4 -= v10;
    v7 += v10;
    goto LABEL_8;
  }
  if ( a3 )
  {
    memcpy(v15, a2, a3);
    v15 = *(char **)(a1 + 20);
  }
  *(_DWORD *)(a1 + 20) = &v15[v4];
  return v4;
}


// ===== 32a9c8 Application::onEvent(glitch::SEvent const&) =====
int __fastcall Application::onEvent(int a1, int a2)
{
  int *v2; // r8
  int v3; // r9
  int v4; // r7
  int v6; // r10
  int v8; // r1
  int v9; // r3
  bool v10; // zf
  char v11; // r2
  int v12; // r8
  char v13; // lr
  char v14; // r9
  EventManager *v15; // r0
  int v16; // r2
  __int16 v17; // r2
  __int16 v18; // r3
  EventManager *v19; // r0
  int v20; // r2
  int v21; // r1
  __int16 v22; // r2
  __int16 v23; // r12
  EventManager *v24; // r0
  EventManager *v25; // r2
  __int16 v26; // r3
  __int16 v27; // r2
  EventManager *v28; // r0
  __int16 v29; // r3
  __int16 v30; // r2
  EventManager *v31; // r0
  char Switch; // r10
  int v33; // r3
  float v34; // r0
  _DWORD v35[3]; // [sp+4h] [bp-A4h] BYREF
  bool v36; // [sp+10h] [bp-98h]
  __int16 v37; // [sp+12h] [bp-96h]
  __int16 v38; // [sp+14h] [bp-94h]
  _DWORD v39[3]; // [sp+18h] [bp-90h] BYREF
  bool v40; // [sp+24h] [bp-84h]
  __int16 v41; // [sp+26h] [bp-82h]
  __int16 v42; // [sp+28h] [bp-80h]
  _DWORD v43[3]; // [sp+2Ch] [bp-7Ch] BYREF
  bool v44; // [sp+38h] [bp-70h]
  __int16 v45; // [sp+3Ah] [bp-6Eh]
  __int16 v46; // [sp+3Ch] [bp-6Ch]
  _DWORD v47[4]; // [sp+40h] [bp-68h] BYREF
  char v48; // [sp+50h] [bp-58h]
  char v49; // [sp+51h] [bp-57h]
  char v50; // [sp+52h] [bp-56h]
  char v51; // [sp+53h] [bp-55h]
  _DWORD v52[3]; // [sp+54h] [bp-54h] BYREF
  _DWORD v53[2]; // [sp+60h] [bp-48h] BYREF
  __int16 v54; // [sp+68h] [bp-40h]
  __int16 v55; // [sp+6Ah] [bp-3Eh]
  std::priv::_String_base<char,std::allocator<char> > v56; // [sp+74h] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v57; // [sp+8Ch] [bp-1Ch] BYREF

  v3 = a1 + 8;
  v2 = *(int **)(a1 + 8);
  v4 = a1;
  v6 = 0;
  while ( v2 != (int *)v3 )
  {
    a1 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2[2] + 8))(v2[2], a2);
    v2 = (int *)*v2;
    v6 = (unsigned __int8)(a1 | v6);
  }
  if ( *(_DWORD *)a2 != 2 )
  {
    if ( *(_DWORD *)a2 == 1 )
    {
      v8 = *(_DWORD *)(a2 + 20);
      switch ( v8 )
      {
        case 0:
        case 3:
          v17 = *(_WORD *)(a2 + 8);
          v18 = *(_WORD *)(a2 + 12);
          v19 = *(EventManager **)(v4 + 20);
          v43[0] = off_95B4B8;
          v43[2] = 0;
          v44 = v8 == 0;
          v45 = v17;
          v46 = v18;
          v43[1] = 2;
          EventManager::Raise(v19, (const IEvent *)v43);
          v20 = *(_DWORD *)(a2 + 12);
          v21 = *(_DWORD *)(a2 + 8);
          v43[0] = off_95B458;
          v6 = 1;
          printf("Mouse POS = (%d, %d)\n", v21, v20);
          break;
        case 1:
        case 4:
          v22 = *(_WORD *)(a2 + 12);
          v23 = *(_WORD *)(a2 + 8);
          v24 = *(EventManager **)(v4 + 20);
          v35[0] = off_95B4B8;
          v35[2] = 2;
          v36 = v8 == 1;
          v37 = v23;
          v38 = v22;
          v35[1] = 2;
          v6 = 1;
          EventManager::Raise(v24, (const IEvent *)v35);
          break;
        case 2:
        case 5:
          v26 = *(_WORD *)(a2 + 12);
          v27 = *(_WORD *)(a2 + 8);
          v28 = *(EventManager **)(v4 + 20);
          v6 = 1;
          v39[1] = 2;
          v39[0] = off_95B4B8;
          v40 = v8 == 2;
          v41 = v27;
          v42 = v26;
          v39[2] = 1;
          EventManager::Raise(v28, (const IEvent *)v39);
          break;
        case 6:
          v29 = *(_WORD *)(a2 + 12);
          v30 = *(_WORD *)(a2 + 8);
          v31 = *(EventManager **)(v4 + 20);
          v6 = 1;
          v53[0] = off_95B488;
          v54 = v30;
          v55 = v29;
          v53[1] = 1;
          EventManager::Raise(v31, (const IEvent *)v53);
          break;
        case 7:
          v25 = *(EventManager **)(v4 + 20);
          v52[2] = (int)*(float *)(a2 + 16);
          v52[1] = 3;
          v52[0] = off_95B4A0;
          v6 = 1;
          EventManager::Raise(v25, (const IEvent *)v52);
          break;
        default:
          return 1;
      }
    }
    return v6;
  }
  v9 = *(_DWORD *)(a2 + 12);
  v10 = v9 == 9;
  if ( v9 != 9 )
    v10 = v9 == 222;
  if ( !v10 )
  {
    v11 = *(_BYTE *)(a2 + 16);
LABEL_13:
    v12 = *(_DWORD *)(a2 + 8);
    v13 = *(_BYTE *)(a2 + 17);
    v14 = *(_BYTE *)(a2 + 18);
    v15 = *(EventManager **)(v4 + 20);
    v47[3] = *(_DWORD *)(a2 + 12);
    v48 = v11;
    v47[0] = off_95B440;
    v47[2] = v12;
    v49 = v13;
    v50 = v14;
    v51 = 0;
    v47[1] = 0;
    EventManager::Raise(v15, (const IEvent *)v47);
    v16 = *(unsigned __int8 *)(a2 + 16);
    v47[0] = off_95B458;
    goto LABEL_14;
  }
  v11 = *(_BYTE *)(a2 + 16);
  if ( v11 )
    goto LABEL_13;
  if ( !*(_DWORD *)(v4 + 72) )
    return 1;
  GSConsole::Toggle((GSConsole *)a1);
  v16 = *(unsigned __int8 *)(a2 + 16);
LABEL_14:
  if ( !v16 )
    return 1;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v57, "IsUsingToggleDisplayMode");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v57) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v57);
    return 1;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v56, "IsUsingCharacterShowRoom");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v56);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v56);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v57);
  if ( Switch == 1 )
    return 1;
  v33 = *(_DWORD *)(a2 + 8);
  if ( v33 == 43 )
  {
    v6 = 1;
    *(float *)(v4 + 156) = *(float *)(v4 + 156) + 0.1;
    return v6;
  }
  if ( v33 != 45 )
    return 1;
  v34 = *(float *)(v4 + 156) - 0.1;
  *(float *)(v4 + 156) = v34;
  if ( v34 < 0.0 )
    *(_DWORD *)(v4 + 156) = 0;
  return 1;
}


// ===== 32ade8 Application::_Draw(void) =====
void __fastcall Application::_Draw(Application *this)
{
  int v2; // r9
  int v3; // r4
  int CurrentLevel; // r0
  float *v5; // r8
  char v6; // r11
  char v7; // r2
  char v8; // r12
  void (__fastcall *v9)(int, int); // r3
  int Switch; // r0
  MenuManager *v11; // r0
  MenuManager *v12; // r0
  MenuCharacterSelect *IsLevelLoaded; // r0
  MenuBase *Instance; // r0
  int v15; // r11
  int v16; // r11
  int v17; // r10
  int v18; // r2
  int Technique; // r2
  int v20; // r0
  int v21; // r3
  void (__fastcall *v22)(int, int, int); // [sp+4h] [bp-58h]
  glitch::scene::CSceneManager *v23; // [sp+Ch] [bp-50h]
  glitch::video::CMaterial *v24; // [sp+14h] [bp-48h] BYREF
  int v25; // [sp+18h] [bp-44h]
  std::priv::_String_base<char,std::allocator<char> > v26; // [sp+24h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v27; // [sp+3Ch] [bp-20h] BYREF

  PushProfilingContext("Application::Draw");
  v2 = *(_DWORD *)(*((_DWORD *)this + 4) + 24);
  v3 = *(_DWORD *)(dword_99F73C + 16);
  if ( !Application::IsInitFinish(this) || InterLoad )
  {
    StateMachine::Draw(*((StateMachine **)this + 6));
    PopProfilingContext("Application::Draw");
  }
  else
  {
    CurrentLevel = Application::GetCurrentLevel(this);
    if ( CurrentLevel && (v5 = *(float **)(CurrentLevel + 56)) != nullptr )
    {
      v6 = (unsigned int)v5[123];
      v7 = (unsigned int)v5[124];
      v8 = (unsigned int)v5[125];
    }
    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }
    v9 = *(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 220);
    BYTE1(v25) = v7;
    BYTE2(v25) = v8;
    LOBYTE(v25) = v6;
    HIBYTE(v25) = -1;
    v9(v3, v25);
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 12))(v3);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 168))(v3, 3);
    v22 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v3 + 160);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v27, "IsUsingBatching");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v27);
    v22(v3, 256, Switch);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v27);
    if ( !Application::IsLevelPaused(this, 1) )
    {
      IsLevelLoaded = (MenuCharacterSelect *)Application::IsLevelLoaded(this);
      if ( IsLevelLoaded )
      {
        if ( *((_BYTE *)this + 169) )
        {
          Instance = (MenuBase *)MenuCharacterSelect::GetInstance(IsLevelLoaded);
          if ( !MenuBase::IsVisible(Instance) )
          {
            PushProfilingContext("Application::Draw3D");
            v23 = *(glitch::scene::CSceneManager **)(dword_99F73C + 28);
            (*(void (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)v23 + 5) + 284))(
              *((_DWORD *)v23 + 5),
              0,
              1061997773);
            if ( !*((_DWORD *)v23 + 57) )
            {
              v20 = Application::GetCurrentLevel(this);
              if ( v20 )
              {
                v21 = *(_DWORD *)(v20 + 296);
                if ( v21 )
                  glitch::scene::CSceneManager::setActiveCamera(v23, *(glitch::scene::ICameraSceneNode **)(v21 + 8));
              }
            }
            (*(void (__fastcall **)(glitch::scene::CSceneManager *, _DWORD))(*(_DWORD *)v23 + 60))(v23, 0);
            DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
            std::string::string((std::string *)&v26, "IsRenderingGlitchBoundingBoxes");
            v15 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v26);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v26);
            if ( v15 )
            {
              v16 = *(_DWORD *)(dword_99F73C + 16);
              v17 = *(_DWORD *)(v16 + 220);
              v18 = *(unsigned __int16 *)(v17 + 46);
              if ( v18 == 0xFFFF )
                LOBYTE(v18) = glitch::video::CMaterialRendererManager::createMaterialRenderer(*(_DWORD *)(v16 + 220), 1);
              glitch::video::CMaterialRendererManager::getMaterialInstance(
                (glitch::video::CMaterialRendererManager *)&v24,
                v17,
                v18);
              if ( v24 )
                Technique = glitch::video::CMaterial::getTechnique(v24);
              else
                Technique = 255;
              glitch::video::IVideoDriver::setMaterial(v16, &v24, Technique, 0);
              DBG_TraverseAllGlitchNode(
                *((glitch::scene::ISceneNode **)v23 + 1),
                (void (*)(glitch::scene::ISceneNode *))DBG_DrawGlitchNodeBoundingBox,
                (bool (*)(glitch::scene::ISceneNode *))IsNodeVisible);
              boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v24);
            }
            PopProfilingContext("Application::Draw3D");
          }
        }
      }
    }
    PushProfilingContext("Application::Draw2D");
    PushProfilingContext("StateMachine::Draw");
    StateMachine::Draw(*((StateMachine **)this + 6));
    PopProfilingContext("StateMachine::Draw");
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 20))(v3);
    (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 12))(v2);
    v11 = (MenuManager *)StateMachine::Draw2D(*((StateMachine **)this + 6));
    v12 = (MenuManager *)MenuManager::GetInstance(v11);
    MenuManager::DBG_Draw(v12);
    PerfCounters::Draw((PerfCounters *)&Singleton<PerfCounters>::s_inst);
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 24))(v3);
    PopProfilingContext("Application::Draw2D");
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 16))(v3);
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v3 + 164))(v3, 0);
    PopProfilingContext("Application::Draw");
  }
}


// ===== 32b244 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_find<char const*>(
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


// ===== 32b3b4 glitch::debugger::CTweakable::setValue(glitch::io::CAttributes &,int) =====
_DWORD *__fastcall glitch::debugger::CTweakable::setValue(
        glitch::debugger::CTweakable *this,
        glitch::io::CAttributes *a2,
        int a3)
{
  _DWORD *result; // r0
  _DWORD *v7; // r5
  _DWORD *v8; // r11
  int v9; // r3
  glitch::io::CAttributes *v10; // r1
  _DWORD *v11; // r8
  glitch::io::CAttributes *v12; // r0
  int v13; // r3
  _DWORD *v14; // r8
  glitch::io::CAttributes *v15; // r0
  int v16; // r3
  _DWORD *v17; // r8
  glitch::io::CAttributes *v18; // r0
  int v19; // r3
  _BYTE *v20; // r8
  _DWORD *v21; // r11
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r3
  glitch::io::CAttributes *v26; // r1
  _DWORD *v27; // r8
  int v28; // r3
  glitch::io::CAttributes *v29; // r1
  _DWORD *v30; // r8
  _DWORD v31[4]; // [sp+0h] [bp-64h] BYREF
  _DWORD v32[3]; // [sp+10h] [bp-54h] BYREF
  _DWORD v33[4]; // [sp+1Ch] [bp-48h] BYREF
  _DWORD v34[3]; // [sp+2Ch] [bp-38h] BYREF
  _DWORD v35[2]; // [sp+38h] [bp-2Ch] BYREF
  char *v36; // [sp+40h] [bp-24h] BYREF
  _BYTE v37[16]; // [sp+44h] [bp-20h] BYREF
  _BYTE *v38; // [sp+54h] [bp-10h]
  void *p; // [sp+58h] [bp-Ch]

  v36 = (char *)(*(int (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)a2 + 16))(a2, a3);
  result = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_find<char const*>(
             (_DWORD *)this + 1,
             &v36);
  v7 = result;
  if ( result != (_DWORD *)((char *)this + 4) )
  {
    switch ( result[10] )
    {
      case 0:
        v12 = a2;
        v13 = *(_DWORD *)a2;
        v14 = (_DWORD *)v7[11];
        *v14 = (*(int (__fastcall **)(glitch::io::CAttributes *, int))(v13 + 92))(v12, a3);
        break;
      case 1:
        v15 = a2;
        v16 = *(_DWORD *)a2;
        v17 = (_DWORD *)v7[11];
        *v17 = (*(int (__fastcall **)(glitch::io::CAttributes *, int))(v16 + 116))(v15, a3);
        break;
      case 2:
        v8 = (_DWORD *)result[11];
        (*(void (__fastcall **)(_BYTE *, glitch::io::CAttributes *, int))(*(_DWORD *)a2 + 140))(v37, a2, a3);
        if ( v8 != (_DWORD *)v37 )
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            v8,
            p,
            v38);
        if ( p != v37 )
        {
          if ( p )
            GlitchFree(p);
        }
        break;
      case 3:
        v18 = a2;
        v19 = *(_DWORD *)a2;
        v20 = (_BYTE *)v7[11];
        *v20 = (*(int (__fastcall **)(glitch::io::CAttributes *, int))(v19 + 232))(v18, a3);
        break;
      case 5:
        v32[0] = (*(int (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)a2 + 296))(a2, a3);
        memcpy((void *)v7[11], v32, 4u);
        break;
      case 6:
        v21 = (_DWORD *)result[11];
        (*(void (__fastcall **)(_DWORD *, glitch::io::CAttributes *, int))(*(_DWORD *)a2 + 320))(v31, a2, a3);
        v22 = v31[1];
        v23 = v31[2];
        v24 = v31[3];
        *v21 = v31[0];
        v21[1] = v22;
        v21[2] = v23;
        v21[3] = v24;
        break;
      case 7:
        v25 = *(_DWORD *)a2;
        v26 = a2;
        v27 = (_DWORD *)result[11];
        (*(void (__fastcall **)(_DWORD *, glitch::io::CAttributes *, int))(v25 + 416))(v35, v26, a3);
        *v27 = v35[0];
        v27[1] = v35[1];
        break;
      case 8:
        v28 = *(_DWORD *)a2;
        v29 = a2;
        v30 = (_DWORD *)result[11];
        (*(void (__fastcall **)(_DWORD *, glitch::io::CAttributes *, int))(v28 + 440))(v34, v29, a3);
        *v30 = v34[0];
        v30[1] = v34[1];
        v30[2] = v34[2];
        break;
      case 9:
        v9 = *(_DWORD *)a2;
        v10 = a2;
        v11 = (_DWORD *)result[11];
        (*(void (__fastcall **)(_DWORD *, glitch::io::CAttributes *, int))(v9 + 464))(v33, v10, a3);
        *v11 = v33[0];
        v11[1] = v33[1];
        v11[2] = v33[2];
        v11[3] = v33[3];
        break;
      default:
        return (_DWORD *)(*(int (__fastcall **)(glitch::debugger::CTweakable *, _DWORD *))(*(_DWORD *)this + 20))(
                           this,
                           v7 + 4);
    }
    return (_DWORD *)(*(int (__fastcall **)(glitch::debugger::CTweakable *, _DWORD *))(*(_DWORD *)this + 20))(
                       this,
                       v7 + 4);
  }
  return result;
}


// ===== 32b650 glitch::debugger::CTweakable::loadGroup(glitch::io::CAttributes &,bool) [clone] =====
int __fastcall glitch::debugger::CTweakable::loadGroup(int a1, int a2)
{
  int result; // r0
  int v5; // r6
  int v6; // r5

  result = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 64))(a2);
  v5 = result;
  if ( result )
  {
    v6 = 0;
    do
    {
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 68))(a2, v6);
      glitch::debugger::CTweakable::loadGroup(a1, a2);
      ++v6;
      result = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
    }
    while ( v6 != v5 );
  }
  return result;
}


// ===== 32b6b8 glitch::debugger::CTweakable::loadXML(char const*,bool) =====
void __fastcall glitch::debugger::CTweakable::loadXML(glitch::debugger::CTweakable *this, const char *a2, bool a3)
{
  glitch::IReferenceCounted *v4; // r11
  int GroupName; // r0
  size_t v6; // r0
  const char *__f; // [sp+4h] [bp-70h]
  _BYTE v8[16]; // [sp+8h] [bp-6Ch] BYREF
  char v9[92]; // [sp+18h] [bp-5Ch] BYREF
  _DWORD v10[12]; // [sp+74h] [bp+0h] BYREF
  _BYTE v11[16]; // [sp+A4h] [bp+30h] BYREF
  char *v12; // [sp+B4h] [bp+40h]
  char *v13; // [sp+B8h] [bp+44h]

  glitch::io::CReadFile::CReadFile((glitch::io::CReadFile *)v10, a2, 0);
  if ( v10[3] )
  {
    v4 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*((_DWORD *)this + 27) + 52)
                                                                              + 80))(
                                        *(_DWORD *)(*((_DWORD *)this + 27) + 52),
                                        v10);
    glitch::io::CXMLAttributesReader::CXMLAttributesReader(v8, v4, 0, 0);
    glitch::io::CAttributes::CAttributes(
      (glitch::io::CAttributes *)v9,
      *(glitch::video::IVideoDriver **)(*((_DWORD *)this + 27) + 16));
    glitch::io::CXMLAttributesReader::read((glitch::io::CXMLAttributesReader *)v8, (glitch::io::IAttributes *)v9);
    while ( 1 )
    {
      GroupName = glitch::io::CAttributes::getGroupName((glitch::io::CAttributes *)v9);
      if ( *(_DWORD *)(GroupName + 16) == *(_DWORD *)(GroupName + 20) )
        break;
      glitch::io::CAttributes::pop((glitch::io::CAttributes *)v9);
    }
    glitch::io::CAttributes::getString((glitch::io::CAttributes *)v11, v9);
    if ( v12 != v13 )
    {
      __f = v13;
      v6 = LC_API_STRLEN_0(v13);
      std::string::_M_assign((std::string *const)((char *)this + 84), __f, &__f[v6]);
    }
    glitch::debugger::CTweakable::loadGroup((int)this, (int)v9);
    glitch::IReferenceCounted::drop(v4);
    if ( v13 != v11 && v13 )
      GlitchFree(v13);
    glitch::io::CAttributes::~CAttributes((glitch::io::CAttributes *)v9);
    glitch::io::CXMLAttributesReader::~CXMLAttributesReader((glitch::io::CXMLAttributesReader *)v8);
  }
  glitch::io::CReadFile::~CReadFile((glitch::io::CReadFile *)v10);
}


// ===== 32b828 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_lower_bound<char const*>(
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
    std::string::string((int)&v12, *a2);
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


// ===== 32b918 std::string::string(std::string const&) =====
std::string *__fastcall std::string::string(std::string *this, const std::string *a2)
{
  this->_M_finish = (char *)this;
  this->_M_start_of_storage._M_data = (char *)this;
  std::string::_M_range_initialize(this, a2->_M_start_of_storage._M_data, a2->_M_finish);
  return this;
}


// ===== 32b93c std::vector<std::string,std::allocator<std::string>>::_M_insert_overflow_aux(std::string *,std::string const&,std::__false_type const&,uint,bool) [clone] =====
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


// ===== 32bad8 std::vector<std::string,std::allocator<std::string>>::push_back(std::string const&) =====
void __fastcall std::vector<std::string>::push_back(std::string **a1, const std::string *a2)
{
  std::string *v2; // r8
  std::string v4; // [sp+4h] [bp-1Ch] BYREF

  v2 = a1[1];
  if ( v2 == a1[2] )
  {
    if ( a2 < *a1 || v2 <= a2 )
    {
      std::vector<std::string>::_M_insert_overflow_aux(a1, (int)v2, a2);
    }
    else
    {
      std::string::string(&v4, a2);
      std::vector<std::string>::_M_insert_overflow_aux(a1, (int)v2, &v4);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
    }
  }
  else
  {
    std::string::string(v2, a2);
    ++a1[1];
  }
}


// ===== 32bb98 glitch::debugger::CTweakable::registerVariableName(char const*) =====
void __fastcall glitch::debugger::CTweakable::registerVariableName(glitch::debugger::CTweakable *this, char *a2)
{
  std::string **v3; // r7
  char *v4; // [sp+4h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+Ch] [bp-20h] BYREF

  v4 = a2;
  if ( (_DWORD *)((char *)this + 4) == std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_find<char const*>(
                                         (_DWORD *)this + 1,
                                         &v4) )
  {
    v3 = (std::string **)(*((_DWORD *)this + 20) + 24);
    std::string::string((std::string *)&v5, v4);
    std::vector<std::string>::push_back(v3, (const std::string *)&v5);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  }
}


// ===== 32bc34 GameCenter::GameCenter(void) =====
void __fastcall GameCenter::GameCenter(GameCenter *this)
{
  char *v2; // r2
  _DWORD *v3; // r0

  *(_DWORD *)this = off_95B420;
  v2 = (char *)this + 36;
  *((_DWORD *)this + 10) = (char *)this + 36;
  v3 = (_DWORD *)((char *)this + 76);
  *((_DWORD *)this + 9) = v2;
  *((_DWORD *)this + 23) = v3;
  *((_DWORD *)this + 24) = v3;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 23) = 0;
  *((_DWORD *)this + 15) = -1;
  *((_DWORD *)this + 16) = -1;
  *((_BYTE *)this + 14) = 0;
  *((_BYTE *)this + 7) = 0;
  *((_BYTE *)this + 4) = 0;
  *((_BYTE *)this + 5) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  *((_BYTE *)this + 11) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_BYTE *)this + 16) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 17) = 0;
  *((_BYTE *)this + 18) = 0;
  *((_BYTE *)this + 19) = 0;
  *((_BYTE *)this + 20) = 0;
  *((_BYTE *)this + 21) = 0;
  *((_BYTE *)this + 22) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = (char *)this + 108;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = (char *)this + 116;
}


// ===== 32bd08 GCSingleton<GameCenter>::GetInstance(void) =====
int GCSingleton<GameCenter>::GetInstance()
{
  GameCenter *v0; // r6

  v0 = (GameCenter *)GCSingleton<GameCenter>::m_instance;
  if ( !GCSingleton<GameCenter>::m_instance )
  {
    v0 = (GameCenter *)CustomAlloc(0x7Cu);
    GameCenter::GameCenter(v0);
    GCSingleton<GameCenter>::m_instance = (int)v0;
    if ( !v0 )
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
          "m_instance != 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Multiplayer/GameCenter.h",
          27);
        return GCSingleton<GameCenter>::m_instance;
      }
    }
  }
  return (int)v0;
}


// ===== 32bdc8 Application::LoadLevel(char const*,int,uint,bool,bool,int,bool,uint,uint) =====
int __fastcall Application::LoadLevel(
        Application *this,
        char *a2,
        const char *a3,
        int a4,
        char a5,
        char a6,
        int a7,
        char a8,
        int RealTime,
        int a10)
{
  int CurrentLevel; // r10
  int result; // r0
  int v15; // r2
  PlayerManager *v16; // r0
  glitch::os::Timer *v17; // r0
  CMessaging *Online; // r0
  int v19; // r11
  int v20; // r7
  int v21; // r9
  int v22; // r10
  CMessaging *v23; // r7
  bool v24; // r2
  int Message; // r0
  int v26; // r0
  int v27; // r0
  int Switch; // r7
  int v29; // [sp+14h] [bp-1E0h]
  char v30; // [sp+24h] [bp-1D0h]
  _BYTE v32[408]; // [sp+3Ch] [bp-1B8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v33; // [sp+1D4h] [bp-20h] BYREF

  temp_savegameSlot = a4;
  temp_entryPointId = (int)a3;
  temp_isRemotelyTriggered = a8;
  temp_resume = a5;
  temp_useSpawnPoint = a6;
  temp_difficulty = a7;
  temp_seed = RealTime;
  temp_syncedSeed = a10;
  *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 20) = 1;
  *((_BYTE *)this + 171) = 0;
  CurrentLevel = Application::GetCurrentLevel(this);
  result = Application::ShowStatubBar(this, 0);
  if ( !CurrentLevel )
  {
    v30 = -1;
    *(_BYTE *)(dword_99F76C + 1819) = 1;
    if ( a8 )
      goto LABEL_6;
LABEL_8:
    v17 = PlayerSavegame::PlayerSavegame((PlayerSavegame *)v32, a4, 1, a8);
    RealTime = *(_DWORD *)&v32[4 * PlayerSavegame::m_difficultyLevel + 92];
    if ( !RealTime
      || (DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst),
          std::string::string((int)&v33, "DontUsePlayerSeed"),
          Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v33),
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33),
          Switch) )
    {
      RealTime = glitch::os::Timer::getRealTime(v17);
    }
    *(_DWORD *)&v32[4 * PlayerSavegame::m_difficultyLevel + 92] = RealTime;
    Online = (CMessaging *)GetOnline();
    if ( *((_BYTE *)Online + 5) )
    {
      v19 = Arrays::LevelList::size;
      if ( Arrays::LevelList::size > 0 )
      {
        v20 = 0;
        v21 = -1;
        v22 = Arrays::LevelList::members;
        do
        {
          Online = (CMessaging *)LC_API_STRCASECMP_0(*(const char **)(v22 + 32), a2);
          if ( !Online )
            v21 = v20;
          ++v20;
          v22 += 72;
        }
        while ( v20 != v19 );
        if ( v21 != -1 )
        {
          v23 = (CMessaging *)CMessaging::Get(Online);
          Message = CMessage::CreateMessage((CMessage *)"CMsgStartGame", (const char *)&dword_0 + 1, v24);
          *(_DWORD *)(Message + 80) = v21;
          *(_DWORD *)(Message + 104) = -1;
          *(_DWORD *)(Message + 84) = a3;
          *(_BYTE *)(Message + 88) = a5;
          *(_BYTE *)(Message + 89) = a6;
          *(_DWORD *)(Message + 92) = a7;
          *(_DWORD *)(Message + 96) = RealTime;
          *(_DWORD *)(Message + 100) = RealTime;
          Online = (CMessaging *)CMessaging::SendMsg(v23, (CMessage *)Message);
        }
      }
      v26 = CMatching::Get(Online);
      v27 = (*(int (__fastcall **)(int))(*(_DWORD *)v26 + 164))(v26);
      (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v27 + 8))(v27, 7, 1);
    }
    PlayerSavegame::~PlayerSavegame((PlayerSavegame *)v32);
    a10 = RealTime;
    goto LABEL_6;
  }
  if ( *(_DWORD *)(CurrentLevel + 304) != 38 )
    return result;
  if ( !*(_BYTE *)(CurrentLevel + 408) )
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(dword_99F780 + 244) + 56))(*(_DWORD *)(dword_99F780 + 244), 1);
  *(_BYTE *)(CurrentLevel + 325) = 1;
  Application::SendGLHiScore(this);
  v15 = *(_DWORD *)(CurrentLevel + 64);
  *(_BYTE *)(CurrentLevel + 240) = 1;
  v30 = v15;
  Level::SG_SaveLocalPlayer((Level *)CurrentLevel, 1);
  Level::QuickSave((Level *)CurrentLevel, 1);
  Level::ResetIsLoaded((Level *)CurrentLevel);
  if ( !a8 )
    goto LABEL_8;
LABEL_6:
  GSLevel::LoadLevel((GSLevel *)a2, a3, a4, RealTime, a10, a5, a6, v30, a7, v29);
  PlayerStatManager::Reset((PlayerStatManager *)&Singleton<PlayerStatManager>::s_inst);
  v16 = (PlayerManager *)dword_99F76C;
  *(_BYTE *)(dword_99F76C + 1737) = 0;
  return PlayerManager::Update(v16);
}


// ===== 32c1f4 Application::GoToMainMenu(GoToMainMenuEvent) =====
int __fastcall Application::GoToMainMenu(int a1, int a2)
{
  int CurrentLevel; // r0
  Level *v5; // r8
  MenuManager *Instance; // r8
  int MenuByName; // r0
  CSignIn *Online; // r0
  CSignIn *v10; // r0
  int v11; // r0
  CMatching *v12; // r0
  CMatching *v13; // r0
  CMatching *v14; // r0
  COnline *v15; // r0
  int IsOnlineGame; // r0
  int v17; // r0
  int v18; // r0

  Is_In_Multiplayer_IGM = 0;
  Is_In_Multiplayer_Mode = 0;
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v5 = (Level *)CurrentLevel;
  if ( CurrentLevel && *(_DWORD *)(CurrentLevel + 304) == 38 )
  {
    if ( *(_BYTE *)(CurrentLevel + 408) )
    {
      *(_BYTE *)(CurrentLevel + 325) = 1;
      Level::QuickSave((Level *)CurrentLevel, 0);
    }
    else
    {
      (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(dword_99F780 + 244) + 56))(*(_DWORD *)(dword_99F780 + 244), 1);
      *((_BYTE *)v5 + 325) = 1;
      Level::QuickSave(v5, 0);
    }
    CurrentLevel = Level::SG_SaveLocalPlayer(v5, 0);
  }
  Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)CurrentLevel);
  MenuManager::Reset(Instance);
  _DEBUG_OUT("*************************GoToMainMenu::1111111");
  MenuByName = MenuManager::GetMenuByName(Instance, "menu_MainMenu");
  byte_9A2499 = 1;
  dword_9A247C = MenuByName;
  StateMachine::SwitchState(*(StateMachine **)(a1 + 24), (StateBase *)&GSFlashMenu::s_inst, 0);
  _DEBUG_OUT("*************************GoToMainMenu::222222");
  Application::SendGLHiScore((Application *)a1);
  TrophyManager::UnlockTrophiesGLLive((TrophyManager *)TrophyManager::s_instance);
  _DEBUG_OUT("*************************GoToMainMenu::3333333");
  PlayerManager::RemoveAllPlayers((PlayerManager *)dword_99F76C);
  Online = (CSignIn *)GetOnline();
  if ( *((_BYTE *)Online + 5) )
  {
    v10 = (CSignIn *)CSignIn::Get(Online);
    if ( *((_BYTE *)v10 + 17) )
    {
      v18 = CSignIn::Get(v10);
      v10 = (CSignIn *)(*(int (__fastcall **)(int))(*(_DWORD *)v18 + 20))(v18);
    }
    v11 = CMatching::Get(v10);
    v12 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v11 + 100))(v11);
    if ( v12 )
    {
      v17 = CMatching::Get(v12);
      v12 = (CMatching *)(*(int (__fastcall **)(int))(*(_DWORD *)v17 + 60))(v17);
    }
    CMatching::Get(v12);
    v13 = (CMatching *)CMatching::SetMatchingProvider(1);
    v14 = (CMatching *)CMatching::Get(v13);
    CMatching::Destroy(v14);
    v15 = (COnline *)GetOnline();
    IsOnlineGame = COnline::SetIsOnlineGame(v15, 0);
    *(_BYTE *)(OnlineSingleton<OnlineGameState>::GetInstance(IsOnlineGame) + 40) = 0;
    *(_BYTE *)(GCSingleton<GameCenter>::GetInstance() + 17) = 0;
  }
  _DEBUG_OUT("*************************GoToMainMenu::4444444444");
  Application::ShowStatubBar((Application *)a1, 0);
  *(_BYTE *)(a1 + 171) = 1;
  *(_DWORD *)(a1 + 176) = a2;
  return _DEBUG_OUT("*************************GoToMainMenu::55555555555555");
}


// ===== 32c438 Application::_Update(int) =====
int __fastcall Application::_Update(Application *this, int a2)
{
  int CurrentLevel; // r10
  Savegame *IsLevelPaused; // r0
  updateJob_thread *updated; // r0
  double v7; // r8
  TouchScreenBase *v8; // r0
  AccelerometerBase *v9; // r0
  int Instance; // r8
  int Switch; // r9
  int v12; // r9
  int v13; // r9
  int v14; // r9
  int v15; // r9
  int v16; // r9
  int v17; // r10
  RootSceneNode *v19; // r0
  glitch::scene::CSceneManager *v20; // r1
  Level *v21; // r6
  int Constant; // r0
  Level *v23; // r0
  _DWORD *v24; // r0
  _DWORD *v25; // r9
  _DWORD *v26; // r0
  _DWORD *v27; // r10
  RootSceneNode *v28; // [sp+Ch] [bp-1B0h]
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+4Ch] [bp-170h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v30; // [sp+64h] [bp-158h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+7Ch] [bp-140h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+94h] [bp-128h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v33; // [sp+ACh] [bp-110h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v34; // [sp+C4h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v35; // [sp+DCh] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v36; // [sp+F4h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v37; // [sp+10Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v38; // [sp+124h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v39; // [sp+13Ch] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v40; // [sp+154h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v41; // [sp+16Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v42; // [sp+184h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v43; // [sp+19Ch] [bp-20h] BYREF

  PushProfilingContext("Application::Update");
  CXPlayerManager::Update((CXPlayerManager *)&Singleton<CXPlayerManager>::s_inst);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v43, "UseClickToMove");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v43, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v43);
  if ( *((_BYTE *)this + 170) )
  {
    *((_BYTE *)this + 170) = 0;
    Application::GoToMainMenu((int)this, 3);
  }
  if ( !handle_cheats_inGame )
  {
LABEL_4:
    CurrentLevel = Application::GetCurrentLevel(this);
    IsLevelPaused = (Savegame *)Application::IsLevelPaused(this, 1);
    if ( !IsLevelPaused )
      goto LABEL_5;
LABEL_30:
    IsLevelPaused = (Savegame *)GetOnline();
    if ( !*((_BYTE *)IsLevelPaused + 5) || MenuBase::s_igmOpened )
      goto LABEL_6;
    goto LABEL_32;
  }
  if ( lastOpenMenuID == 10 )
  {
    v24 = (_DWORD *)CustomAlloc(0x10u);
    *v24 = 0;
    v24[1] = 0;
    v24[2] = 1120403456;
    v24[3] = 1120403456;
    v25 = v24;
    v26 = (_DWORD *)CustomAlloc(0x10u);
    v26[2] = 1120403456;
    v26[1] = 1120403456;
    *v26 = 0;
    v26[3] = 1128792064;
    v27 = v26;
    if ( (*(int (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)this + 8) + 48))(*((_DWORD *)this + 8), v25) )
    {
      SavegameManager::toggleOption((SavegameManager *)dword_99F778, "GiveGold");
      goto LABEL_4;
    }
    if ( (*(int (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)this + 8) + 48))(*((_DWORD *)this + 8), v27) )
    {
      SavegameManager::toggleOption((SavegameManager *)dword_99F778, "LevelUp");
      goto LABEL_4;
    }
  }
  CurrentLevel = Application::GetCurrentLevel(this);
  IsLevelPaused = (Savegame *)Application::IsLevelPaused(this, 1);
  if ( IsLevelPaused )
    goto LABEL_30;
LABEL_5:
  if ( MenuBase::s_igmOpened )
    goto LABEL_6;
LABEL_32:
  IsLevelPaused = (Savegame *)Application::IsLevelLoaded(this);
  if ( IsLevelPaused )
  {
    IsLevelPaused = (Savegame *)Application::IsInLevelTransition(this);
    if ( !IsLevelPaused && (!CurrentLevel || *(_BYTE *)(CurrentLevel + 324) && !*(_BYTE *)(CurrentLevel + 424)) )
    {
      v28 = *(RootSceneNode **)(dword_99F73C + 28);
      v19 = (RootSceneNode *)PushProfilingContext("SceneManager::update");
      RootSceneNode::ResetDebugCounters(v19);
      RootSceneNode::UpdateEnlargedViewFrustum(v28, v20);
      *((_BYTE *)v28 + 592) = 1;
      (*(void (__fastcall **)(RootSceneNode *, float, _DWORD))(*(_DWORD *)v28 + 96))(v28, (float)a2, 0);
      *((_BYTE *)this + 169) = 1;
      IsLevelPaused = (Savegame *)PopProfilingContext("SceneManager::update");
    }
  }
LABEL_6:
  if ( lastOpenMenuID == 17 )
  {
    updated = (updateJob_thread *)Savegame::UpdateJobs(IsLevelPaused);
  }
  else
  {
    updated = *((updateJob_thread **)this + 1);
    if ( *((_BYTE *)updated + 8) )
      updated = (updateJob_thread *)updateJob_thread::Start(updated);
  }
  CharAI::StepResetAvailableStep(updated);
  PlayerManager::Update((PlayerManager *)dword_99F76C);
  v7 = (double)a2;
  EventManager::Update(*((EventManager **)this + 5), (double)a2);
  StateMachine::Update(*((StateMachine **)this + 6), (double)a2);
  if ( VoxSoundManager::s_instance )
    VoxSoundManager::UpdateIPodAsync((VoxSoundManager *)VoxSoundManager::s_instance);
  v8 = *((TouchScreenBase **)this + 8);
  if ( v8 )
    TouchScreenBase::update(v8, v7);
  v9 = *((AccelerometerBase **)this + 9);
  if ( v9 )
    v9 = (AccelerometerBase *)AccelerometerBase::update(v9, v7);
  Instance = InputManager::GetInstance(v9);
  (*(void (__fastcall **)(int, float))(*(_DWORD *)Instance + 12))(Instance, (float)a2);
  Application::_CheckGamepad(this);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v42, "TraceAllLoadedResfileInfoOnce");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v42);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v42);
  if ( Switch )
  {
    DBG_TraceAllLoadedResfileInformation();
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v41, "TraceAllLoadedResfileInfoOnce");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v41, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v41);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v40, "TraceAllLoadedTextureInfoOnce");
  v12 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v40);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v40);
  if ( v12 )
  {
    DBG_TraceAllLoadedTextureInformation();
    DBG_TraceAllLoadedResfileInformation();
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v39, "TraceAllLoadedTextureInfoOnce");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v39, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v39);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v38, "TraceRoomObjects");
  v13 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v38);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v38);
  if ( v13 )
  {
    ObjectManager::DBG_DumpRoomObjects((ObjectManager *)dword_99F764);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v37, "TraceRoomObjects");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v37, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v37);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v36, "TraceGlitchHierarchyOnce");
  v14 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v36);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v36);
  if ( v14 )
  {
    DBG_TraceSceneNode(
      *(glitch::scene::ISceneNode **)(*(_DWORD *)(dword_99F73C + 28) + 4),
      0,
      (bool (*)(glitch::scene::ISceneNode *))IsNodeVisible);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v35, "TraceGlitchHierarchyOnce");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v35, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v35);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v34, "TraceVisibleNodeOnce");
  v15 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v34);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
  if ( v15 )
  {
    DBG_TraceSceneNodePolyStats(
      *(glitch::scene::ISceneNode **)(*(_DWORD *)(dword_99F73C + 28) + 4),
      0,
      (bool (*)(glitch::scene::ISceneNode *))IsVisibleAndNotCulled);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v33, "TraceVisibleNodeOnce");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v33, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v32, "DumpQuestInformationOnce");
  v16 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v32);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
  if ( v16 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v31, "DumpQuestInformationOnce");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v31, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
    v23 = (Level *)Application::GetCurrentLevel(this);
    if ( v23 )
      Level::SG_DBG_TraceDetailedQuestInformation(v23, -1);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v30, "DumpActiveQuestInformationOnce");
  v17 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v30);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v30);
  if ( v17 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v29, "DumpActiveQuestInformationOnce");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v29, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
    v21 = (Level *)Application::GetCurrentLevel(this);
    if ( v21 )
    {
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestState", "Active");
      Level::SG_DBG_TraceDetailedQuestInformation(v21, Constant);
    }
  }
  ++*((_DWORD *)this + 29);
  return PopProfilingContext("Application::Update");
}


// ===== 32ccc4 Application::Update(void) =====
int __fastcall Application::Update(int this)
{
  int v1; // r4
  int v2; // r0
  int v3; // r7
  DataReloaderManager *v4; // r0
  float v5; // r10
  Device *v6; // r0
  int v7; // r2
  COnline *Online; // r0
  COnline *v9; // r0
  COnlineImpl *v10; // r0
  int v11; // r0
  OnlineGameState *Instance; // r0
  int v13; // r1
  int v14; // r1
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+Ch] [bp-20h] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 164) )
    return this;
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    Online = (COnline *)GetOnline();
    COnline::ReceivePackets(Online);
  }
  if ( *(_BYTE *)(v1 + 122) )
    *(_BYTE *)(v1 + 122) = 0;
  v2 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(v1 + 16) + 32) + 12))(*(_DWORD *)(*(_DWORD *)(v1 + 16)
                                                                                                 + 32));
  v3 = v2;
  if ( (unsigned int)(v2 - *(_DWORD *)(v1 + 112)) > 0x7D0 )
  {
    *(_DWORD *)(v1 + 112) = v2;
    return Application::ComputeDt((Application *)v1);
  }
  v4 = *(DataReloaderManager **)(v1 + 40);
  if ( v4 && v3 - Application::Update(void)::reloadtimer > 4000 )
  {
    Application::Update(void)::reloadtimer = v3;
    DataReloaderManager::checkFiles(v4);
  }
  *(_DWORD *)(v1 + 112) = v3;
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    PushProfilingContext("OnlineUpdate");
    v10 = (COnlineImpl *)GetOnline();
    v11 = COnlineImpl::Update(v10, (float)*(unsigned int *)(v1 + 140));
    Instance = (OnlineGameState *)OnlineSingleton<OnlineGameState>::GetInstance(v11);
    OnlineGameState::Update(Instance);
    PopProfilingContext("OnlineUpdate");
  }
  TouchScreenBase::ProcessEvents(*(TouchScreenBase **)(v1 + 32));
  Application::ComputeDt((Application *)v1);
  v5 = 1000.0 / (float)*(unsigned int *)(v1 + 140);
  PerfCounters::Update((PerfCounters *)&Singleton<PerfCounters>::s_inst, (float)*(unsigned int *)(v1 + 140));
  Application::_Update((Application *)v1, *(_DWORD *)(v1 + 140));
  Application::_Draw((Application *)v1);
  std::string::string((int)&v15, "FPS");
  PerfCounters::SetCounterValue(
    (PerfCounters *)&Singleton<PerfCounters>::s_inst,
    (const std::string *)&v15,
    v5,
    0.0,
    60.0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  v6 = (Device *)GetOnline();
  if ( *((_BYTE *)v6 + 5) )
  {
    v9 = (COnline *)GetOnline();
    v6 = (Device *)COnline::SendPackets(v9);
  }
  this = Device::IsHighPerformance(v6);
  if ( !this )
    return this;
  this = Application::Update(void)::avgFrameRate;
  ++Application::Update(void)::avgFrameCount;
  v7 = Application::Update(void)::avgFrameRate + *(_DWORD *)(v1 + 140);
  Application::Update(void)::avgFrameRate = v7;
  if ( Application::Update(void)::avgFrameCount == 10 )
  {
    v13 = v7 / 10 - Application::Update(void)::avgSleepTime;
    if ( v13 > 15 )
    {
      if ( v13 > 32 )
      {
        if ( v13 > 49 )
        {
          Application::Update(void)::avgFrameRate = 0;
          Application::Update(void)::avgSleepTime = 0;
          Application::Update(void)::avgFrameCount = 0;
LABEL_27:
          v14 = 5;
LABEL_29:
          Application::Update(void)::avgSleepTime = v14;
          return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 16) + 16))(*(_DWORD *)(v1 + 16));
        }
        v14 = 50 - v13;
        Application::Update(void)::avgSleepTime = v14;
      }
      else
      {
        v14 = 33 - v13;
        Application::Update(void)::avgSleepTime = v14;
      }
    }
    else
    {
      v14 = 16 - v13;
      Application::Update(void)::avgSleepTime = v14;
    }
    Application::Update(void)::avgFrameRate = 0;
    Application::Update(void)::avgFrameCount = 0;
    if ( v14 > 4 )
      goto LABEL_29;
    goto LABEL_27;
  }
  if ( Application::Update(void)::avgSleepTime > 0 )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 16) + 16))(*(_DWORD *)(v1 + 16));
  return this;
}


// ===== 32cfc8 glitch::debugger::CTweakable::CTweakable(glitch::IDevice *) =====
int __fastcall glitch::debugger::CTweakable::CTweakable(int a1, int a2)
{
  _DWORD *v3; // r6
  int v4; // r0

  v3 = (_DWORD *)(a1 + 28);
  *(_DWORD *)a1 = off_95B4D0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_BYTE *)(a1 + 4) = 0;
  v4 = a1 + 4;
  *(_DWORD *)(a1 + 16) = v4;
  *(_DWORD *)(a1 + 12) = v4;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 44) = v3;
  *(_DWORD *)(a1 + 48) = v3;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **(_BYTE **)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 100) = a1 + 84;
  *(_DWORD *)(a1 + 104) = a1 + 84;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 84), 0x10u);
  **(_BYTE **)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 108) = a2;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 80) = v3;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  return a1;
}


// ===== 32d088 glitch::debugger::CTweakable::SMapping::SMapping(glitch::io::E_ATTRIBUTE_TYPE,void *) =====
_DWORD *__fastcall glitch::debugger::CTweakable::SMapping::SMapping(_DWORD *a1, int a2, int a3)
{
  _DWORD *v4; // r0

  *a1 = a2;
  a1[1] = a3;
  v4 = a1 + 2;
  a1[6] = v4;
  a1[7] = v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v4, 0x10u);
  *(_BYTE *)a1[6] = 0;
  a1[12] = a1 + 8;
  a1[13] = a1 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 8, 0x10u);
  *(_BYTE *)a1[12] = 0;
  return a1;
}


// ===== 32d0e0 std::basic_stringbuf<char,std::char_traits<char>,std::allocator<char>>::basic_stringbuf(int) =====
std::locale *__fastcall std::stringbuf::basic_stringbuf(std::locale *a1, std::_Locale_impl *a2)
{
  a1[1]._M_impl = nullptr;
  a1->_M_impl = (std::_Locale_impl *)off_95B938;
  a1[2]._M_impl = nullptr;
  a1[3]._M_impl = nullptr;
  a1[4]._M_impl = nullptr;
  a1[5]._M_impl = nullptr;
  a1[6]._M_impl = nullptr;
  __ZNSt6localeC1Ev_veneer(a1 + 7);
  a1[13]._M_impl = (std::_Locale_impl *)&a1[9];
  a1[14]._M_impl = (std::_Locale_impl *)&a1[9];
  a1[8]._M_impl = a2;
  a1->_M_impl = (std::_Locale_impl *)off_95B8F0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&a1[9]._M_impl, 0x10u);
  LOBYTE(a1[13]._M_impl->_M_ref_count) = 0;
  return a1;
}


// ===== 32d170 std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::basic_ostringstream(int) [clone] =====
int __fastcall std::ostringstream::basic_ostringstream(int a1)
{
  int v1; // r6
  int v3; // r2
  int v4; // r3

  v1 = a1 + 64;
  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)(a1 + 64));
  *(_DWORD *)(a1 + 64) = off_95B8E0;
  *(_BYTE *)(v1 + 68) = 0;
  *(_DWORD *)(v1 + 72) = 0;
  *(_DWORD *)(v1 + 76) = 0;
  *(_DWORD *)a1 = off_95B88C;
  *(int *)((char *)&dword_40 + a1) = (int)off_95B8A0;
  std::ios::init(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12), 0, (int)off_95B8A0, *(_DWORD *)a1);
  *(_DWORD *)a1 = off_95B864;
  *(_DWORD *)(a1 + 64) = off_95B878;
  std::stringbuf::basic_stringbuf((std::locale *)(a1 + 4), (std::_Locale_impl *)&word_10);
  std::ios::init(v1, a1 + 4, v3, v4);
  return a1;
}


// ===== 32d220 glitch::io::CNumbersAttribute::getString(void) =====
glitch::io::CNumbersAttribute *__fastcall glitch::io::CNumbersAttribute::getString(
        glitch::io::CNumbersAttribute *this,
        int a2)
{
  int v3; // r3
  int v5; // r6
  unsigned int v6; // r4
  size_t v7; // r0
  unsigned int v8; // r3
  char *M_data; // [sp+4h] [bp-E0h]
  std::ostream v11; // [sp+1Ch] [bp-C8h] BYREF
  _BYTE v12[16]; // [sp+ACh] [bp-38h] BYREF
  _BYTE *v13; // [sp+BCh] [bp-28h]
  void *p; // [sp+C0h] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+C4h] [bp-20h] BYREF
  int v16; // [sp+DCh] [bp-8h]

  v3 = _stack_chk_guard;
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  v16 = v3;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    0x10u);
  v5 = 0;
  **((_BYTE **)this + 4) = 0;
  if ( *(_DWORD *)(a2 + 60) )
  {
    v6 = 0;
    while ( !*(_BYTE *)(a2 + 64) )
    {
      glitch::core::int2stringc((glitch::core *)v12, *(_DWORD *)(*(_DWORD *)(a2 + 36) + v5));
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        this,
        p,
        v13);
      if ( p == v12 || !p )
      {
LABEL_4:
        v8 = *(_DWORD *)(a2 + 60);
        if ( v8 - 1 <= v6 )
          goto LABEL_5;
LABEL_10:
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          this,
          ", ",
          "");
        ++v6;
        v5 += 4;
        if ( v6 >= *(_DWORD *)(a2 + 60) )
          return this;
      }
      else
      {
        GlitchFree(p);
        v8 = *(_DWORD *)(a2 + 60);
        if ( v8 - 1 > v6 )
          goto LABEL_10;
LABEL_5:
        ++v6;
        v5 += 4;
        if ( v6 >= v8 )
          return this;
      }
    }
    std::ostringstream::basic_ostringstream((int)&v11);
    std::priv::__put_num<char,std::char_traits<char>,double>(&v11);
    std::string::string((std::string *)&v15, (const std::string *)&v11.gap4[36]);
    M_data = v15._M_start_of_storage._M_data;
    v7 = LC_API_STRLEN_0(v15._M_start_of_storage._M_data);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      this,
      M_data,
      &M_data[v7]);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    std::ostringstream::~ostringstream((std::ios_base *)&v11);
    goto LABEL_4;
  }
  return this;
}


// ===== 32d3d4 glitch::io::CStringAttribute::setFloat(float) =====
std::ios_base *__fastcall glitch::io::CStringAttribute::setFloat(glitch::io::CStringAttribute *this, float a2)
{
  std::ostream *v3; // r7
  std::string *v4; // r8
  _DWORD **v5; // r6
  _BYTE *v6; // r0
  _DWORD *v8; // r6
  _DWORD *v9[17]; // [sp+0h] [bp-1BCh] BYREF
  void *p; // [sp+44h] [bp-178h]
  std::ostream v11; // [sp+4Ch] [bp-170h] BYREF
  std::ostream v12; // [sp+DCh] [bp-E0h] BYREF
  _DWORD v13[5]; // [sp+16Ch] [bp-50h] BYREF
  _BYTE *v14; // [sp+180h] [bp-3Ch]
  std::string v15; // [sp+184h] [bp-38h] BYREF
  std::string v16; // [sp+19Ch] [bp-20h] BYREF

  if ( *((_BYTE *)this + 33) )
  {
    v3 = &v12;
    std::ostringstream::basic_ostringstream((int)&v12);
    v4 = &v16;
    std::priv::__put_num<char,std::char_traits<char>,double>(&v12);
    std::string::string(&v16, (const std::string *)&v12.gap4[36]);
    v5 = (_DWORD **)((char *)this + 60);
    glitch::core::stringc2stringw((glitch::core *)v9, v16._M_start_of_storage._M_data);
    if ( v5 != v9 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v5,
        (const wchar_t *)p,
        v9[16]);
    v6 = p;
    if ( p != v9 )
    {
LABEL_5:
      if ( v6 )
        GlitchFree(v6);
    }
  }
  else
  {
    v3 = &v11;
    std::ostringstream::basic_ostringstream((int)&v11);
    v4 = &v15;
    std::priv::__put_num<char,std::char_traits<char>,double>(&v11);
    std::string::string(&v15, (const std::string *)&v11.gap4[36]);
    v8 = (_DWORD *)((char *)this + 36);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v13,
      v15._M_start_of_storage._M_data);
    if ( v8 != v13 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v8,
        v14,
        (_BYTE *)v13[4]);
    v6 = v14;
    if ( v14 != (_BYTE *)v13 )
      goto LABEL_5;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v4);
  return std::ostringstream::~ostringstream((std::ios_base *)v3);
}


// ===== 32d52c glitch::io::CNumbersAttribute::getStringW(void) =====
glitch::io::CNumbersAttribute *__fastcall glitch::io::CNumbersAttribute::getStringW(
        glitch::io::CNumbersAttribute *this,
        int a2)
{
  int v3; // r3
  int v5; // r6
  unsigned int i; // r4
  unsigned int v7; // r3
  size_t v8; // r0
  _BYTE v10[64]; // [sp+14h] [bp-140h] BYREF
  _DWORD *v11; // [sp+54h] [bp-100h]
  void *v12; // [sp+58h] [bp-FCh]
  _BYTE v13[64]; // [sp+5Ch] [bp-F8h] BYREF
  _DWORD *v14; // [sp+9Ch] [bp-B8h]
  void *p; // [sp+A0h] [bp-B4h]
  std::ostream v16; // [sp+A4h] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+134h] [bp-20h] BYREF
  int v18; // [sp+14Ch] [bp-8h]

  v3 = _stack_chk_guard;
  *((_DWORD *)this + 16) = this;
  *((_DWORD *)this + 17) = this;
  v18 = v3;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    0x10u);
  v5 = 0;
  **((_DWORD **)this + 16) = 0;
  if ( *(_DWORD *)(a2 + 60) )
  {
    for ( i = 0; i < v7; ++i )
    {
      while ( *(_BYTE *)(a2 + 64) )
      {
        std::ostringstream::basic_ostringstream((int)&v16);
        std::priv::__put_num<char,std::char_traits<char>,double>(&v16);
        std::string::string((std::string *)&v17, (const std::string *)&v16.gap4[36]);
        glitch::core::stringc2stringw((glitch::core *)v13, v17._M_start_of_storage._M_data);
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          this,
          p,
          v14);
        if ( p != v13 && p )
          GlitchFree(p);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
        std::ostringstream::~ostringstream((std::ios_base *)&v16);
LABEL_7:
        v7 = *(_DWORD *)(a2 + 60);
        if ( v7 - 1 <= i )
          goto LABEL_8;
LABEL_13:
        v8 = wcslen(asc_8BEC10);
        ++i;
        v5 += 4;
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          this,
          asc_8BEC10,
          &asc_8BEC10[v8]);
        if ( i >= *(_DWORD *)(a2 + 60) )
          return this;
      }
      glitch::core::int2stringw((glitch::core *)v10, *(_DWORD *)(*(_DWORD *)(a2 + 36) + v5));
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        this,
        v12,
        v11);
      if ( v12 == v10 || !v12 )
        goto LABEL_7;
      GlitchFree(v12);
      v7 = *(_DWORD *)(a2 + 60);
      if ( v7 - 1 > i )
        goto LABEL_13;
LABEL_8:
      v5 += 4;
    }
  }
  return this;
}


// ===== 32d6fc glitch::io::CFloatAttribute::getStringW(void) =====
glitch::io::CFloatAttribute *__fastcall glitch::io::CFloatAttribute::getStringW(glitch::io::CFloatAttribute *this)
{
  std::ostream v3; // [sp+4h] [bp-ACh] BYREF
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+94h] [bp-1Ch] BYREF

  std::ostringstream::basic_ostringstream((int)&v3);
  std::priv::__put_num<char,std::char_traits<char>,double>(&v3);
  std::string::string((std::string *)&v4, (const std::string *)&v3.gap4[36]);
  glitch::core::stringc2stringw(this, v4._M_start_of_storage._M_data);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
  std::ostringstream::~ostringstream((std::ios_base *)&v3);
  return this;
}


// ===== 32d79c Application::Application(void) =====
void __fastcall Application::Application(Application *this)
{
  char *v2; // r0
  updateJob_thread *v3; // r5
  updateJob_thread *v4; // r5
  updateJob_thread *v5; // r5
  updateJob_thread *v6; // r5
  updateJob_thread *v7; // r5

  *(_DWORD *)this = off_95C318;
  *((_DWORD *)this + 27) = 30;
  *((_DWORD *)this + 39) = 1065353216;
  *((_DWORD *)this + 3) = (char *)this + 8;
  *((_DWORD *)this + 2) = (char *)this + 8;
  *((_DWORD *)this + 40) = -1;
  v2 = (char *)this + 188;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
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
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 120) = 0;
  *((_BYTE *)this + 121) = 0;
  *((_BYTE *)this + 122) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_BYTE *)this + 165) = 0;
  *((_BYTE *)this + 166) = 0;
  *((_BYTE *)this + 167) = 0;
  *((_BYTE *)this + 168) = 0;
  *((_BYTE *)this + 169) = 0;
  *((_BYTE *)this + 170) = 0;
  *((_BYTE *)this + 173) = 0;
  *((_DWORD *)this + 51) = v2;
  *((_DWORD *)this + 52) = v2;
  *((_BYTE *)this + 171) = 1;
  *((_BYTE *)this + 180) = 1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)v2, 0x10u);
  **((_BYTE **)this + 51) = 0;
  *((_DWORD *)this + 57) = (char *)this + 212;
  *((_DWORD *)this + 58) = (char *)this + 212;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)this + 212, 0x10u);
  **((_BYTE **)this + 57) = 0;
  *((_BYTE *)this + 238) = 0;
  *((_BYTE *)this + 237) = 0;
  *((_BYTE *)this + 270) = 0;
  *((_BYTE *)this + 271) = 1;
  FirstTime = 1;
  v3 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v3, 1);
  *((_DWORD *)this + 1) = v3;
  v4 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v4, 2);
  m_updateJobThread1 = (int)v4;
  v5 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v5, 3);
  m_updateJobThread2 = (int)v5;
  v6 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v6, 4);
  m_updateJobThread3 = (int)v6;
  v7 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v7, 5);
  m_updateJobThread4 = (int)v7;
}


// ===== 32d980 Application::Application(void) =====
void __fastcall Application::Application(Application *this)
{
  _DWORD *v2; // r0
  updateJob_thread *v3; // r5
  updateJob_thread *v4; // r5
  updateJob_thread *v5; // r5
  updateJob_thread *v6; // r5
  updateJob_thread *v7; // r5

  *(_DWORD *)this = off_95C318;
  *((_DWORD *)this + 27) = 30;
  *((_DWORD *)this + 39) = 1065353216;
  *((_DWORD *)this + 3) = (char *)this + 8;
  *((_DWORD *)this + 2) = (char *)this + 8;
  *((_DWORD *)this + 40) = -1;
  v2 = (_DWORD *)((char *)this + 188);
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
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
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 120) = 0;
  *((_BYTE *)this + 121) = 0;
  *((_BYTE *)this + 122) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_BYTE *)this + 165) = 0;
  *((_BYTE *)this + 166) = 0;
  *((_BYTE *)this + 167) = 0;
  *((_BYTE *)this + 168) = 0;
  *((_BYTE *)this + 169) = 0;
  *((_BYTE *)this + 170) = 0;
  *((_BYTE *)this + 173) = 0;
  *((_DWORD *)this + 51) = v2;
  *((_DWORD *)this + 52) = v2;
  *((_BYTE *)this + 171) = 1;
  *((_BYTE *)this + 180) = 1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v2, 0x10u);
  **((_BYTE **)this + 51) = 0;
  *((_DWORD *)this + 57) = (char *)this + 212;
  *((_DWORD *)this + 58) = (char *)this + 212;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 53, 0x10u);
  **((_BYTE **)this + 57) = 0;
  *((_BYTE *)this + 238) = 0;
  *((_BYTE *)this + 237) = 0;
  *((_BYTE *)this + 270) = 0;
  *((_BYTE *)this + 271) = 1;
  FirstTime = 1;
  v3 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v3, 1);
  *((_DWORD *)this + 1) = v3;
  v4 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v4, 2);
  m_updateJobThread1 = (int)v4;
  v5 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v5, 3);
  m_updateJobThread2 = (int)v5;
  v6 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v6, 4);
  m_updateJobThread3 = (int)v6;
  v7 = (updateJob_thread *)CustomAlloc(0x10u);
  updateJob_thread::updateJob_thread(v7, 5);
  m_updateJobThread4 = (int)v7;
}


// ===== 32db64 `global constructor keyed to'.._.._sources_Core_Application.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Core_Application.cpp(CMessage *a1)
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
  unsigned int v24; // r7
  int v25; // r12
  int v26; // r3
  int v27; // r6
  unsigned int v28; // r7
  int v29; // r12
  int v30; // r3
  int v31; // r6
  unsigned int v32; // r7
  int v33; // r12
  int v34; // r3
  int v35; // r6
  unsigned int v36; // r7
  int v37; // r12
  int v38; // r3
  int v39; // r6
  unsigned int v40; // r7
  int v41; // r12
  int v42; // r3
  unsigned int v43; // [sp+0h] [bp-14h]
  int v44; // [sp+4h] [bp-10h]
  size_t v45; // [sp+Ch] [bp-8h] BYREF

  dword_99FA18 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99FA14 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_99FA1D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_99FA1E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_99FA1F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_99FA20 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_99FA21 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_99FA22 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_99FA23 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_99FA24 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_99FA25 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_99FA26 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_99FA27 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_99FA28 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_99FA29 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_99FA2A = result;
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
    v27 = std::allocator<TutorialMsg *>::allocate(&dword_99FB80, &byte_8, 0);
    v45 = 128;
    dword_99FB80 = v27;
    v28 = (unsigned int)(dword_99FB84 - 1) >> 1;
    *(_DWORD *)(v27 + 4 * v28) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
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
    v31 = std::allocator<DialogMsg *>::allocate(&dword_99FBAC, &byte_8, 0);
    v45 = 76;
    dword_99FBAC = v31;
    v32 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    *(_DWORD *)(v31 + 4 * v32) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
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
    v35 = std::allocator<CharMenuTutorialMsg *>::allocate(&dword_99FBD8, &byte_8, 0);
    v45 = 104;
    dword_99FBD8 = v35;
    v36 = (unsigned int)(dword_99FBDC - 1) >> 1;
    *(_DWORD *)(v35 + 4 * v36) = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
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
  if ( (`guard variable for'Singleton<PerfCounters>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PerfCounters>::s_inst = 1;
    PerfCounters::PerfCounters((PerfCounters *)&Singleton<PerfCounters>::s_inst);
    result = _aeabi_atexit(&Singleton<PerfCounters>::s_inst, PerfCounters::~PerfCounters, &_dso_handle);
  }
  if ( (`guard variable for'Singleton<CXPlayerManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<CXPlayerManager>::s_inst = 1;
    CXPlayerManager::CXPlayerManager((CXPlayerManager *)&Singleton<CXPlayerManager>::s_inst);
    return _aeabi_atexit(&Singleton<CXPlayerManager>::s_inst, CXPlayerManager::~CXPlayerManager, &_dso_handle);
  }
  return result;
}


// ===== 32e470 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_create_node(std::pair<std::string const,glitch::debugger::CTweakable::SMapping> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  size_t v5; // [sp+4h] [bp-8h] BYREF

  v5 = 96;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v5);
  std::string::string((std::string *)(v3 + 16), (const std::string *)a2);
  *((_DWORD *)v3 + 10) = *(_DWORD *)(a2 + 24);
  *((_DWORD *)v3 + 11) = *(_DWORD *)(a2 + 28);
  std::string::string((std::string *)v3 + 2, (const std::string *)(a2 + 32));
  std::string::string((std::string *)v3 + 3, (const std::string *)(a2 + 56));
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 32e4dc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,glitch::debugger::CTweakable::SMapping> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_create_node(
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


// ===== 32e5cc std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(std::pair<std::string const,glitch::debugger::CTweakable::SMapping> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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


// ===== 32e7e4 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_insert(
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


// ===== 32ece8 std::map<std::string,glitch::debugger::CTweakable::SMapping,std::less<std::string>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::operator[]<char const*>(char const* const&) =====
char *__fastcall std::map<std::string,glitch::debugger::CTweakable::SMapping>::operator[]<char const*>(
        char *a1,
        char **a2)
{
  char *v3; // r5
  const void *v4; // r1
  int v5; // r8
  int v6; // r10
  size_t v7; // r2
  int v8; // r0
  char *v9; // r11
  char *v12; // [sp+Ch] [bp-D0h] BYREF
  char *v13; // [sp+10h] [bp-CCh] BYREF
  std::string v14; // [sp+1Ch] [bp-C0h] BYREF
  int v15; // [sp+34h] [bp-A8h]
  int v16; // [sp+38h] [bp-A4h]
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+3Ch] [bp-A0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+54h] [bp-88h] BYREF
  int v19; // [sp+6Ch] [bp-70h]
  int v20; // [sp+70h] [bp-6Ch]
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+74h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+8Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+A4h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v24; // [sp+BCh] [bp-20h] BYREF

  v3 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_lower_bound<char const*>(
                 a1,
                 a2);
  if ( v3 == a1 )
    goto LABEL_11;
  std::string::string((std::string *)&v24, *a2);
  v4 = *((const void **)v3 + 9);
  v5 = *((_DWORD *)v3 + 8) - (_DWORD)v4;
  v6 = v24._M_finish - v24._M_start_of_storage._M_data;
  if ( v5 >= v24._M_finish - v24._M_start_of_storage._M_data )
    v7 = v24._M_finish - v24._M_start_of_storage._M_data;
  else
    v7 = *((_DWORD *)v3 + 8) - (_DWORD)v4;
  v8 = memcmp(v24._M_start_of_storage._M_data, v4, v7);
  v9 = v3;
  if ( v8 )
  {
    if ( v8 >= 0 )
      goto LABEL_7;
    goto LABEL_10;
  }
  if ( v6 < v5 )
  {
LABEL_10:
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
LABEL_11:
    std::string::string((std::string *)&v23, *a2);
    v19 = 30;
    v20 = 0;
    v21._M_finish = (char *)&v21;
    v21._M_start_of_storage._M_data = (char *)&v21;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v21, 0x10u);
    *v21._M_finish = 0;
    v22._M_finish = (char *)&v22;
    v22._M_start_of_storage._M_data = (char *)&v22;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v22, 0x10u);
    *v22._M_finish = 0;
    std::string::string(&v14, (const std::string *)&v23);
    v15 = v19;
    v16 = v20;
    std::string::string((std::string *)&v17, (const std::string *)&v21);
    std::string::string((std::string *)&v18, (const std::string *)&v22);
    v12 = v3;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::insert_unique(
      &v13,
      a1,
      &v12,
      (int)&v14);
    v9 = v13;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
    return v9 + 40;
  }
LABEL_7:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
  return v9 + 40;
}


// ===== 32eeb8 glitch::debugger::CTweakable::registerVariable(char const*,glitch::video::SColor &) =====
void __fastcall glitch::debugger::CTweakable::registerVariable(char *a1, char *a2, int a3)
{
  char *v5; // r6
  char *v6; // [sp+4h] [bp-48h] BYREF
  _DWORD v7[2]; // [sp+Ch] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+14h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+2Ch] [bp-20h] BYREF

  v6 = a2;
  glitch::debugger::CTweakable::registerVariableName((glitch::debugger::CTweakable *)a1, a2);
  v5 = std::map<std::string,glitch::debugger::CTweakable::SMapping>::operator[]<char const*>(a1 + 4, &v6);
  glitch::debugger::CTweakable::SMapping::SMapping(v7, 5, a3);
  glitch::debugger::CTweakable::SMapping::operator=((int)v5, (int)v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
}


// ===== 32ef4c glitch::debugger::CTweakable::registerVariable(char const*,float &) =====
void __fastcall glitch::debugger::CTweakable::registerVariable(glitch::debugger::CTweakable *this, char *a2, float *a3)
{
  char *v5; // r6
  char *v6; // [sp+4h] [bp-48h] BYREF
  _DWORD v7[2]; // [sp+Ch] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+14h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+2Ch] [bp-20h] BYREF

  v6 = a2;
  glitch::debugger::CTweakable::registerVariableName(this, a2);
  v5 = std::map<std::string,glitch::debugger::CTweakable::SMapping>::operator[]<char const*>((char *)this + 4, &v6);
  glitch::debugger::CTweakable::SMapping::SMapping(v7, 1, (int)a3);
  glitch::debugger::CTweakable::SMapping::operator=((int)v5, (int)v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
}


// ===== 32efe0 glitch::debugger::CTweakable::registerVariable(char const*,int &) =====
void __fastcall glitch::debugger::CTweakable::registerVariable(glitch::debugger::CTweakable *this, char *a2, int *a3)
{
  char *v5; // r6
  char *v6; // [sp+4h] [bp-48h] BYREF
  _DWORD v7[2]; // [sp+Ch] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+14h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+2Ch] [bp-20h] BYREF

  v6 = a2;
  glitch::debugger::CTweakable::registerVariableName(this, a2);
  v5 = std::map<std::string,glitch::debugger::CTweakable::SMapping>::operator[]<char const*>((char *)this + 4, &v6);
  glitch::debugger::CTweakable::SMapping::SMapping(v7, 0, (int)a3);
  glitch::debugger::CTweakable::SMapping::operator=((int)v5, (int)v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
}


// ===== 32f074 GamepadTweaker::GamepadTweaker(void) =====
void __fastcall GamepadTweaker::GamepadTweaker(GamepadTweaker *this)
{
  int v2; // r3
  GamepadTweaker *v3; // r2
  char s[256]; // [sp+4h] [bp-108h] BYREF

  glitch::debugger::CTweakable::CTweakable(this, (glitch::IDevice *)dword_99F73C);
  v2 = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *(_DWORD *)this = off_967798;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  v3 = this;
  do
  {
    ++v2;
    *((_DWORD *)v3 + 45) = 0;
    v3 = (GamepadTweaker *)((char *)v3 + 4);
  }
  while ( v2 != 13 );
  glitch::debugger::CTweakable::registerVariable(this, "btn_cross", (int *)this + 31);
  glitch::debugger::CTweakable::registerVariable(this, "btn_circle", (int *)this + 32);
  glitch::debugger::CTweakable::registerVariable(this, "btn_square", (int *)this + 33);
  glitch::debugger::CTweakable::registerVariable(this, "btn_triangle", (int *)this + 34);
  glitch::debugger::CTweakable::registerVariable(this, "btn_l_1", (int *)this + 35);
  glitch::debugger::CTweakable::registerVariable(this, "btn_l_2", (int *)this + 36);
  glitch::debugger::CTweakable::registerVariable(this, "btn_l_3", (int *)this + 37);
  glitch::debugger::CTweakable::registerVariable(this, "btn_r_1", (int *)this + 38);
  glitch::debugger::CTweakable::registerVariable(this, "btn_r_2", (int *)this + 39);
  glitch::debugger::CTweakable::registerVariable(this, "btn_r_3", (int *)this + 40);
  glitch::debugger::CTweakable::registerVariable(this, "btn_start", (int *)this + 41);
  glitch::debugger::CTweakable::registerVariable(this, "btn_select", (int *)this + 42);
  glitch::debugger::CTweakable::registerVariable(this, "btn_power", (int *)this + 43);
  sprintf(s, "%s/data/tweaker/player_light.tweaker_xml", (const char *)RES_PATH);
  glitch::debugger::CTweakable::loadXML(this, s, 1);
}


// ===== 32f2b4 PlayerLightTweaker::PlayerLightTweaker(void) =====
void __fastcall PlayerLightTweaker::PlayerLightTweaker(PlayerLightTweaker *this)
{
  float *v3; // r9
  float *v4; // r3
  int v5; // r1
  PlayerLightTweaker *v6; // r3
  PlayerLightTweaker *v7; // r2
  char *v8; // r9
  char *v9; // [sp+0h] [bp-140h] BYREF
  char s[256]; // [sp+4h] [bp-13Ch] BYREF
  _DWORD v11[2]; // [sp+104h] [bp-3Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+10Ch] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+124h] [bp-1Ch] BYREF

  glitch::debugger::CTweakable::CTweakable((int)this, dword_99F73C);
  *(_DWORD *)this = off_967B10;
  v3 = (float *)((char *)this + 124);
  v4 = v3;
  do
  {
    *v4 = 0.0;
    v4[1] = 0.0;
    v4[2] = 0.0;
    v4 += 3;
  }
  while ( v4 != (float *)((char *)this + 184) );
  *((_DWORD *)this + 66) = (char *)this + 248;
  *((_DWORD *)this + 67) = (char *)this + 248;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 62,
    0x10u);
  v5 = 0;
  **((_BYTE **)this + 66) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = 0;
  v6 = this;
  v7 = this;
  do
  {
    ++v5;
    *((_DWORD *)v6 + 74) = 0;
    *((_DWORD *)v7 + 31) = 0;
    *((_DWORD *)v7 + 32) = 0;
    *((_DWORD *)v7 + 33) = 0;
    *((_BYTE *)v6 + 187) = 0;
    *((_BYTE *)v6 + 186) = 0;
    *((_BYTE *)v6 + 185) = 0;
    *((_BYTE *)v6 + 184) = 0;
    *((_BYTE *)v6 + 207) = 0;
    *((_BYTE *)v6 + 206) = 0;
    *((_BYTE *)v6 + 205) = 0;
    *((_BYTE *)v6 + 204) = 0;
    *((_BYTE *)v6 + 227) = 0;
    *((_BYTE *)v6 + 226) = 0;
    *((_BYTE *)v6 + 225) = 0;
    *((_BYTE *)v6 + 224) = 0;
    v7 = (PlayerLightTweaker *)((char *)v7 + 12);
    v6 = (PlayerLightTweaker *)((char *)v6 + 4);
  }
  while ( v5 != 5 );
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[0].X", v3);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[0].Y", (float *)this + 32);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[0].Z", (float *)this + 33);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_ambientColor[0]", (int)this + 184);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_diffuseColor[0]", (int)this + 204);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_specularColor[0]", (int)this + 224);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[1].X", (float *)this + 34);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[1].Y", (float *)this + 35);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[1].Z", (float *)this + 36);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_ambientColor[1]", (int)this + 188);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_diffuseColor[1]", (int)this + 208);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_specularColor[1]", (int)this + 228);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[2].X", (float *)this + 37);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[2].Y", (float *)this + 38);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[2].Z", (float *)this + 39);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_ambientColor[2]", (int)this + 192);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_diffuseColor[2]", (int)this + 212);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_specularColor[2]", (int)this + 232);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[3].X", (float *)this + 40);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[3].Y", (float *)this + 41);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[3].Z", (float *)this + 42);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_ambientColor[3]", (int)this + 196);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_diffuseColor[3]", (int)this + 216);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_specularColor[3]", (int)this + 236);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[4].X", (float *)this + 43);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[4].Y", (float *)this + 44);
  glitch::debugger::CTweakable::registerVariable(this, "m_attenuation[4].Z", (float *)this + 45);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_ambientColor[4]", (int)this + 200);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_diffuseColor[4]", (int)this + 220);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_specularColor[4]", (int)this + 240);
  glitch::debugger::CTweakable::registerVariable((char *)this, "m_fogColor", (int)this + 244);
  glitch::debugger::CTweakable::registerVariable(this, "m_fogStart", (float *)this + 68);
  glitch::debugger::CTweakable::registerVariable(this, "m_fogEnd", (float *)this + 69);
  glitch::debugger::CTweakable::registerVariable(this, "m_fogDirectionMask.X", (float *)this + 71);
  glitch::debugger::CTweakable::registerVariable(this, "m_fogDirectionMask.Y", (float *)this + 72);
  glitch::debugger::CTweakable::registerVariable(this, "m_fogDirectionMask.Z", (float *)this + 73);
  v9 = "m_lightType";
  glitch::debugger::CTweakable::registerVariableName(this, "m_lightType");
  v8 = std::map<std::string,glitch::debugger::CTweakable::SMapping>::operator[]<char const*>((char *)this + 4, &v9);
  glitch::debugger::CTweakable::SMapping::SMapping(v11, 2, (int)this + 248);
  glitch::debugger::CTweakable::SMapping::operator=((int)v8, (int)v11);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
  sprintf(s, "%s/data/tweaker/player_light.tweaker_xml", (const char *)RES_PATH);
  glitch::debugger::CTweakable::loadXML(this, s, 0);
}


// ===== 32f7e8 Application::PostInit(void) =====
Console *__fastcall Application::PostInit(Application *this)
{
  EventManager *v2; // r6
  StateMachine *v3; // r6
  PyDataConstants *v4; // r6
  PyDataArrays *v5; // r6
  StringManager *v6; // r6
  ObjectManager *v7; // r6
  LuaManager *v8; // r6
  PlayerManager *v9; // r6
  PhysicalWorld *v10; // r6
  Application *v11; // r7
  int i; // r6
  PlayerLightTweaker *v13; // r10
  int v14; // r10
  GamepadTweaker *v15; // r6
  int v16; // r3
  ZoomHandler *v17; // r6
  COnlineImpl *Online; // r0
  Console *v19; // r4
  Console *result; // r0
  _DWORD v21[4]; // [sp+Ch] [bp-38h] BYREF
  _BYTE *v22; // [sp+1Ch] [bp-28h]
  void *p; // [sp+20h] [bp-24h]
  void *v24[5]; // [sp+24h] [bp-20h] BYREF
  void *v25; // [sp+38h] [bp-Ch]

  v2 = (EventManager *)operator new(0x30u, 0);
  EventManager::EventManager(v2);
  *((_DWORD *)this + 5) = v2;
  v3 = (StateMachine *)operator new(0x20u, 0);
  StateMachine::StateMachine(v3);
  *((_DWORD *)this + 6) = v3;
  v4 = (PyDataConstants *)operator new(0x24u, 0);
  PyDataConstants::PyDataConstants(v4, *((DataReloaderManager **)this + 10));
  *((_DWORD *)this + 11) = v4;
  v5 = (PyDataArrays *)operator new(0x3Cu, 0);
  PyDataArrays::PyDataArrays(v5, *((DataReloaderManager **)this + 10));
  *((_DWORD *)this + 12) = v5;
  v6 = (StringManager *)operator new(0x7D8u, 0);
  StringManager::StringManager(v6);
  *((_DWORD *)this + 13) = v6;
  v7 = (ObjectManager *)operator new(0x1B0u, 0);
  ObjectManager::ObjectManager(v7);
  *((_DWORD *)this + 14) = v7;
  v8 = (LuaManager *)operator new(0x1Cu, 0);
  LuaManager::LuaManager(v8);
  *((_DWORD *)this + 15) = v8;
  v9 = (PlayerManager *)operator new(0x720u, 0);
  PlayerManager::PlayerManager(v9);
  *((_DWORD *)this + 16) = v9;
  v10 = (PhysicalWorld *)operator new(0x14u, 0);
  PhysicalWorld::PhysicalWorld(v10);
  *((_DWORD *)this + 17) = v10;
  v11 = this;
  for ( i = 0; i != 4; ++i )
  {
    v13 = (PlayerLightTweaker *)operator new(0x144u, 0);
    PlayerLightTweaker::PlayerLightTweaker(v13);
    *((_DWORD *)v11 + 22) = v13;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v24,
      PlayerLightTweaker::TWEAKER_NAMES[i]);
    v14 = *((_DWORD *)v11 + 22);
    v22 = v21;
    p = v21;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v21,
      v25,
      (_BYTE *)v24[4]);
    if ( (_DWORD *)(v14 + 248) != v21 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (_DWORD *)(v14 + 248),
        p,
        v22);
    if ( p != v21 && p )
      GlitchFree(p);
    if ( v25 != v24 && v25 )
      GlitchFree(v25);
    v11 = (Application *)((char *)v11 + 4);
  }
  v15 = (GamepadTweaker *)operator new(0xE8u, 0);
  GamepadTweaker::GamepadTweaker(v15);
  v16 = *((_DWORD *)this + 4);
  *((_DWORD *)this + 26) = v15;
  *((_DWORD *)this + 46) = 0;
  *(_BYTE *)(*(_DWORD *)(v16 + 28) + 592) = 1;
  StateMachine::SwitchState(*((_DWORD *)this + 6), (int)&GSInit::s_inst, 0);
  v17 = (ZoomHandler *)operator new(0x44u, 0);
  ZoomHandler::ZoomHandler(v17);
  *((_DWORD *)this + 20) = v17;
  Online = (COnlineImpl *)GetOnline();
  COnlineImpl::Initialize(Online);
  v19 = (Console *)operator new(0xA8u, 0);
  result = Console::Console(v19);
  *((_DWORD *)this + 18) = v19;
  return result;
}


// ===== 32fa5c std::allocator<std::priv::_List_node<glitch::IEventReceiver *>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<glitch::IEventReceiver *>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 32fa7c Application::RegisterForIrrlichtEvents(glitch::IEventReceiver *) =====
_DWORD *__fastcall Application::RegisterForIrrlichtEvents(_DWORD *this, glitch::IEventReceiver *a2)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r5
  _DWORD *v5; // r3

  v3 = this;
  if ( a2 )
  {
    v4 = this + 2;
    this = std::allocator<std::priv::_List_node<glitch::IEventReceiver *>>::allocate();
    *(this + 2) = a2;
    v5 = (_DWORD *)v3[3];
    *this = v4;
    *(this + 1) = v5;
    *v5 = this;
    v3[3] = this;
  }
  return this;
}


// ===== 32fab4 Application::InitWin32(glitch::IDevice *) =====
void __fastcall Application::InitWin32(Application *this, glitch::IDevice *a2)
{
  int v4; // r3
  int v5; // r10
  int v6; // r9
  TouchScreenWin32 *v7; // r8
  SavegameManager *v8; // r8
  glitch::IEventReceiver *v9; // r1
  MenuManager *v10; // r6
  int v11; // r10
  int v12; // r0
  char v13; // [sp+Ch] [bp-104h] BYREF
  _BYTE v14[3]; // [sp+Dh] [bp-103h] BYREF

  v4 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)a2 + 4) + 204) - 4);
  v5 = *(_DWORD *)(v4 + 12);
  v6 = *(_DWORD *)(v4 + 16);
  v7 = (TouchScreenWin32 *)operator new(0x1B8u, 0);
  TouchScreenWin32::TouchScreenWin32(v7, v5, v6);
  *((_DWORD *)this + 8) = v7;
  v8 = (SavegameManager *)operator new(0x58u, 0);
  SavegameManager::SavegameManager(v8);
  v9 = *((glitch::IEventReceiver **)this + 8);
  *((_DWORD *)this + 19) = v8;
  if ( v9 )
    v9 = (glitch::IEventReceiver *)((char *)v9 + 436);
  Application::RegisterForIrrlichtEvents(this, v9);
  Application::Init(this, a2);
  Application::PostInit(this);
  (*(void (__fastcall **)(_DWORD, const char *, int, _DWORD))(**((_DWORD **)a2 + 13) + 24))(
    *((_DWORD *)a2 + 13),
    "shaders.pak",
    1,
    0);
  if ( get_fontfile("_sans", 0, 0, &v13, 255) )
  {
    v11 = (*(int (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)a2 + 6) + 80))(*((_DWORD *)a2 + 6), &v13, 14);
    if ( v11
      || (v11 = (*(int (__fastcall **)(_DWORD, _BYTE *, int))(**((_DWORD **)a2 + 6) + 80))(*((_DWORD *)a2 + 6), v14, 14)) != 0 )
    {
      v12 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)a2 + 6) + 56))(*((_DWORD *)a2 + 6));
      (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v12 + 44))(v12, v11, 0);
    }
  }
  v10 = (MenuManager *)operator new(0x114u, 0);
  MenuManager::MenuManager(v10);
  *((_DWORD *)this + 21) = v10;
}


// ===== 32fc60 std::list<glitch::IEventReceiver *,std::allocator<glitch::IEventReceiver *>>::resize(uint,glitch::IEventReceiver * const&) [clone] =====
void __fastcall std::list<glitch::IEventReceiver *>::resize(int **a1)
{
  int *v2; // r0
  int v3; // r4
  int *v4; // r3

  v2 = *a1;
  if ( v2 != (int *)a1 )
  {
    while ( 1 )
    {
      v3 = *v2;
      v4 = (int *)v2[1];
      *v4 = *v2;
      *(_DWORD *)(v3 + 4) = v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0xCu);
      if ( a1 == (int **)v3 )
        break;
      v2 = (int *)v3;
    }
  }
}


// ===== 32fca0 Application::~Application() =====
void __fastcall Application::~Application(Application *this)
{
  int **v1; // r4

  *(_DWORD *)this = off_95C318;
  v1 = (int **)((char *)this + 8);
  std::priv::_List_base<glitch::IEventReceiver *,std::allocator<glitch::IEventReceiver *>>::clear((_DWORD *)this + 2);
  std::list<glitch::IEventReceiver *>::resize(v1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 212));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 188));
  std::priv::_List_base<glitch::IEventReceiver *,std::allocator<glitch::IEventReceiver *>>::clear(v1);
}


// ===== 32fd10 Application::~Application() =====
void __fastcall Application::~Application(Application *this)
{
  int **v1; // r4

  *(_DWORD *)this = off_95C318;
  v1 = (int **)((char *)this + 8);
  std::priv::_List_base<glitch::IEventReceiver *,std::allocator<glitch::IEventReceiver *>>::clear((_DWORD *)this + 2);
  std::list<glitch::IEventReceiver *>::resize(v1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 212));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 188));
  std::priv::_List_base<glitch::IEventReceiver *,std::allocator<glitch::IEventReceiver *>>::clear(v1);
}


// ===== 32fd80 Application::~Application() =====
void __fastcall Application::~Application(Application *this)
{
  Application::~Application(this);
  CustomFree(this);
}


// ===== 32fd9c `global constructor keyed to'.._.._sources_Core_Commons_Win32.cpp =====
void `global constructor keyed to'.._.._sources_Core_Commons_Win32.cpp()
{
  dword_99FCBC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99FCB8 = 1056964608;
}


// ===== 32fdbc IEventReceiver::~IEventReceiver() =====
void __fastcall IEventReceiver::~IEventReceiver(IEventReceiver *this)
{
  ;
}


// ===== 32fdc0 Console::_destroyList(void) =====
int __fastcall Console::_destroyList(int this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r3

  v1 = *(_DWORD *)(this + 64);
  v2 = this;
  if ( v1 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 152))(*(_DWORD *)(this + 64));
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v2 + 64) + 28))(*(_DWORD *)(v2 + 64));
    *(_DWORD *)(v2 + 64) = 0;
  }
  v3 = *(_DWORD *)(v2 + 68);
  if ( v3 )
  {
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 28))(*(_DWORD *)(v2 + 68));
    *(_DWORD *)(v2 + 68) = 0;
  }
  return this;
}


// ===== 32fe28 Console::_createList(std::vector<std::string,std::allocator<std::string>> &,char *) =====
int __fastcall Console::_createList(int a1, _DWORD *a2, int a3)
{
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int (__fastcall *v9)(int, int *, _DWORD *, _DWORD, _DWORD, _DWORD, _DWORD, int); // r12
  int v10; // r0
  int v11; // r0
  void (__fastcall *v12)(int, int); // r3
  int v13; // r0
  void (__fastcall *v14)(int, int); // r3
  int v15; // r10
  int v16; // r2
  int v17; // r9
  int v18; // r11
  int v19; // r0
  int v20; // r0
  unsigned int v21; // r6
  int v23; // r0
  int v24; // r0
  int (__fastcall *v25)(int, _DWORD *, _DWORD, _DWORD, int); // [sp+14h] [bp-1448h]
  int v26; // [sp+24h] [bp-1438h] BYREF
  int v27; // [sp+1024h] [bp-438h] BYREF
  _DWORD v28[4]; // [sp+1424h] [bp-38h] BYREF
  _DWORD v29[4]; // [sp+1434h] [bp-28h] BYREF
  _DWORD v30[2]; // [sp+1444h] [bp-18h] BYREF
  int v31; // [sp+144Ch] [bp-10h]
  int v32; // [sp+1450h] [bp-Ch]
  int v33; // [sp+1454h] [bp-8h]

  Console::_destroyList(a1);
  v6 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 24) + 56))(*(_DWORD *)(dword_99F73C + 24));
  v7 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v6 + 40))(v6, 0);
  (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)v7 + 32))(v30, v7, a3);
  v8 = *(_DWORD *)(dword_99F73C + 24);
  v9 = *(int (__fastcall **)(int, int *, _DWORD *, _DWORD, _DWORD, _DWORD, _DWORD, int))(*(_DWORD *)v8 + 168);
  v29[0] = 10;
  v29[1] = 20;
  v29[2] = v30[0] + 14;
  v29[3] = v30[1] + 28;
  v10 = v9(v8, &v27, v29, 0, 0, 0, 0, 1);
  *(_DWORD *)(a1 + 68) = v10;
  (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v10 + 160))(v10, 2, 2);
  v11 = *(_DWORD *)(a1 + 68);
  v12 = *(void (__fastcall **)(int, int))(*(_DWORD *)v11 + 132);
  v33 = -16711936;
  v12(v11, -16711936);
  v13 = *(_DWORD *)(a1 + 68);
  v14 = *(void (__fastcall **)(int, int))(*(_DWORD *)v13 + 148);
  v32 = -16777216;
  v14(v13, -16777216);
  v15 = *(_DWORD *)(dword_99F73C + 24);
  v16 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 16) + 204) - 4);
  v17 = *(_DWORD *)(v16 + 16);
  v18 = *(_DWORD *)(v16 + 12);
  v25 = *(int (__fastcall **)(int, _DWORD *, _DWORD, _DWORD, int))(*(_DWORD *)v15 + 152);
  v19 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 68) + 172))(*(_DWORD *)(a1 + 68));
  if ( v17 >= 480 )
    v17 = 480;
  if ( v18 >= 640 )
    v18 = 640;
  v28[0] = 50;
  v28[1] = v19 + 24;
  v28[2] = v18 - 115;
  v28[3] = v17 - 30;
  v20 = v25(v15, v28, 0, 0, 1);
  *(_DWORD *)(a1 + 64) = v20;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v20 + 164))(v20, 1);
  if ( !Console::_createList(std::vector<std::string> &,char *)::setBGAlpha )
  {
    Console::_createList(std::vector<std::string> &,char *)::setBGAlpha = 1;
    v23 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 24) + 56))(*(_DWORD *)(dword_99F73C + 24));
    v31 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v23 + 16))(v23, 3);
    HIBYTE(v31) += 50;
    v24 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 24) + 56))(*(_DWORD *)(dword_99F73C + 24));
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v24 + 20))(v24, 3, v31);
  }
  if ( -1431655765 * ((a2[1] - *a2) >> 3) )
  {
    v21 = 0;
    do
    {
      ++v21;
      (*(void (__fastcall **)(_DWORD, int *))(**(_DWORD **)(a1 + 64) + 132))(*(_DWORD *)(a1 + 64), &v26);
    }
    while ( v21 < -1431655765 * ((a2[1] - *a2) >> 3) );
  }
  return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 64) + 160))(*(_DWORD *)(a1 + 64), -1);
}


// ===== 330198 Console::_addToList(char const*) =====
int __fastcall Console::_addToList(Console *this, const char *a2)
{
  return (*(int (__fastcall **)(_DWORD, void *))(**((_DWORD **)this + 16) + 132))(
           *((_DWORD *)this + 16),
           &Console::_addToList(char const*)::buffer);
}


// ===== 3301c4 Console::_setMenuLevelList(void) =====
int __fastcall Console::_setMenuLevelList(Console *this)
{
  return Console::_createList((int)this, (_DWORD *)this + 4, (int)"LEVELS");
}


// ===== 3301d8 Console::_setMenuCameras(void) =====
void __fastcall Console::_setMenuCameras(Console *this)
{
  ;
}


// ===== 3301dc Console::_setMenuLoadQuestProgress(void) =====
int __fastcall Console::_setMenuLoadQuestProgress(Console *this)
{
  return Console::_createList((int)this, (_DWORD *)this + 13, (int)"Load Quest Progress");
}


// ===== 3301f0 HideAllIrrlicheNodeExcept(glitch::scene::ISceneNode *) =====
int __fastcall HideAllIrrlicheNodeExcept(int result)
{
  _DWORD *v1; // r6
  int v2; // r5
  _DWORD *i; // r4
  _DWORD *v4; // r5
  _DWORD *v5; // t1
  _DWORD *v6; // r3

  v1 = (_DWORD *)result;
  v2 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4);
  v5 = *(_DWORD **)(v2 + 244);
  v4 = (_DWORD *)(v2 + 244);
  for ( i = v5; v4 != i; i = (_DWORD *)*i )
  {
    if ( i )
      v6 = i - 1;
    else
      v6 = nullptr;
    if ( (v6[71] & 1) != 0 )
    {
      result = (int)v6;
      if ( v1 != v6 )
        result = (*(int (__fastcall **)(_DWORD *, _DWORD))(*v6 + 72))(v6, 0);
    }
  }
  return result;
}


// ===== 33026c Console::SetShowRoomDisplayedAnim(int) =====
void __fastcall Console::SetShowRoomDisplayedAnim(Console *this, int a2)
{
  ;
}


// ===== 330270 Console::Update(double) =====
int __fastcall Console::Update(int this, double a2)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 64);
  if ( v3 )
    this = (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v3 + 160))(*(_DWORD *)(this + 64), *(_DWORD *)(this + 12));
  GlitchMemoryDebugger::s_isUsingGlitchMemoryDebugger = 0;
  return this;
}


// ===== 3302bc std::priv::__find<glitch::scene::ISceneNode **,glitch::scene::ISceneNode *>(glitch::scene::ISceneNode **,glitch::scene::ISceneNode **,glitch::scene::ISceneNode * const&,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find<glitch::scene::ISceneNode **,glitch::scene::ISceneNode *>(
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


// ===== 3303ec std::vector<std::string,std::allocator<std::string>>::_M_erase(std::string *,std::__true_type const&) =====
std::priv::_String_base<char,std::allocator<char> > *__fastcall std::vector<std::string>::_M_erase(
        int a1,
        std::priv::_String_base<char,std::allocator<char> > *this)
{
  std::priv::_String_base<char,std::allocator<char> > *v4; // r6
  std::priv::_String_base<char,std::allocator<char> > *v5; // r4
  std::priv::_String_base<char,std::allocator<char> > *v6; // r3
  std::priv::_String_base<char,std::allocator<char> > *v7; // r12
  char *M_finish; // r1
  char *M_end_of_storage; // r2
  std::priv::_String_base<char,std::allocator<char> > *M_data; // r3
  std::priv::_String_base<char,std::allocator<char> > *v11; // r10
  int v12; // r1
  int v13; // r2
  int v14; // r3
  char *v15; // r3

  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this);
  v4 = *(std::priv::_String_base<char,std::allocator<char> > **)(a1 + 4);
  v5 = this + 1;
  if ( this + 1 == v4 )
  {
    v6 = this;
  }
  else
  {
    v7 = this;
    do
    {
      while ( 1 )
      {
        M_data = (std::priv::_String_base<char,std::allocator<char> > *)v7[1]._M_start_of_storage._M_data;
        v7->_M_start_of_storage._M_data = (char *)M_data;
        if ( M_data == v5 )
          break;
        M_finish = v7[1]._M_finish;
        M_end_of_storage = v7[1]._M_buffers._M_end_of_storage;
        v7->_M_start_of_storage._M_data = (char *)M_data;
        v7->_M_finish = M_finish;
        v5[-1]._M_buffers._M_end_of_storage = M_end_of_storage;
        ++v5;
        v7[1]._M_start_of_storage._M_data = nullptr;
        ++v7;
        if ( v5 == v4 )
          goto LABEL_7;
      }
      v11 = v5 - 1;
      v12 = *(_DWORD *)&v7[1]._M_buffers._M_static_buf[4];
      v13 = *(_DWORD *)&v7[1]._M_buffers._M_static_buf[8];
      v14 = *(_DWORD *)&v7[1]._M_buffers._M_static_buf[12];
      v11->_M_buffers._M_end_of_storage = v7[1]._M_buffers._M_end_of_storage;
      *(_DWORD *)&v11->_M_buffers._M_static_buf[4] = v12;
      *(_DWORD *)&v11->_M_buffers._M_static_buf[8] = v13;
      *(_DWORD *)&v11->_M_buffers._M_static_buf[12] = v14;
      ++v5;
      v15 = (char *)v7 + v7[1]._M_finish - v7[1]._M_start_of_storage._M_data;
      v7->_M_start_of_storage._M_data = (char *)v7;
      v7->_M_finish = v15;
      ++v7;
    }
    while ( v5 != v4 );
LABEL_7:
    v6 = this + ((178956971 * ((unsigned int)((char *)v5 - (char *)(this + 2)) >> 3)) & 0x1FFFFFFF) + 1;
  }
  *(_DWORD *)(a1 + 4) = v6;
  return this;
}


// ===== 3304d0 std::vector<std::string,std::allocator<std::string>>::_M_erase(std::string *,std::string *,std::__true_type const&) =====
std::priv::_String_base<char,std::allocator<char> > *__fastcall std::vector<std::string>::_M_erase(
        int a1,
        std::priv::_String_base<char,std::allocator<char> > *this,
        std::priv::_String_base<char,std::allocator<char> > *a3)
{
  std::priv::_String_base<char,std::allocator<char> > *v3; // r6
  bool v6; // zf
  std::priv::_String_base<char,std::allocator<char> > *v8; // r4
  std::priv::_String_base<char,std::allocator<char> > *v9; // r5
  bool v10; // zf
  std::priv::_String_base<char,std::allocator<char> > *M_data; // r3
  int v12; // r1
  int v13; // r2
  int v14; // r3
  char *M_finish; // r2
  char *v16; // r3
  bool v17; // zf
  std::priv::_String_base<char,std::allocator<char> > *v18; // r4
  std::priv::_String_base<char,std::allocator<char> > *v19; // r0
  char *v21; // r12
  std::priv::_String_base<char,std::allocator<char> > *v22; // r7
  char *v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r3
  int v27; // r2
  int v28; // r3

  v3 = *(std::priv::_String_base<char,std::allocator<char> > **)(a1 + 4);
  v6 = a3 == v3;
  if ( a3 != v3 )
    v6 = this == a3;
  if ( v6 )
  {
    v8 = a3;
    v9 = this;
  }
  else
  {
    v8 = a3;
    v9 = this;
    do
    {
      while ( 1 )
      {
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v9);
        v9->_M_start_of_storage._M_data = v8->_M_start_of_storage._M_data;
        M_data = (std::priv::_String_base<char,std::allocator<char> > *)v8->_M_start_of_storage._M_data;
        if ( M_data != v8 )
          break;
        v12 = *(_DWORD *)&v8->_M_buffers._M_static_buf[4];
        v13 = *(_DWORD *)&v8->_M_buffers._M_static_buf[8];
        v14 = *(_DWORD *)&v8->_M_buffers._M_static_buf[12];
        v9->_M_buffers._M_end_of_storage = v8->_M_buffers._M_end_of_storage;
        *(_DWORD *)&v9->_M_buffers._M_static_buf[4] = v12;
        *(_DWORD *)&v9->_M_buffers._M_static_buf[8] = v13;
        *(_DWORD *)&v9->_M_buffers._M_static_buf[12] = v14;
        M_finish = v8->_M_finish;
        v16 = v8->_M_start_of_storage._M_data;
        v9->_M_start_of_storage._M_data = (char *)v9;
        ++v8;
        v9->_M_finish = (char *)v9 + M_finish - v16;
        ++v9;
        v17 = v8 == v3;
        if ( v8 != v3 )
          v17 = a3 == v9;
        if ( v17 )
          goto LABEL_14;
      }
      v9->_M_start_of_storage._M_data = (char *)M_data;
      v9->_M_finish = v8->_M_finish;
      v9->_M_buffers._M_end_of_storage = v8->_M_buffers._M_end_of_storage;
      v8->_M_start_of_storage._M_data = nullptr;
      ++v9;
      v10 = ++v8 == v3;
      if ( v8 != v3 )
        v10 = a3 == v9;
    }
    while ( !v10 );
  }
LABEL_14:
  if ( v9 != a3 )
  {
    v18 = v9;
    do
    {
      v19 = v18++;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v19);
    }
    while ( a3 != v18 );
    goto LABEL_18;
  }
  if ( v3 == v8 )
  {
LABEL_18:
    *(_DWORD *)(a1 + 4) = v9;
    return this;
  }
  v21 = (char *)v8;
  v22 = v9;
  do
  {
    while ( 1 )
    {
      v22->_M_start_of_storage._M_data = *((char **)v21 + 5);
      v23 = *((char **)v21 + 5);
      if ( v23 == v21 )
        break;
      v22->_M_start_of_storage._M_data = v23;
      v22->_M_finish = *((char **)v21 + 4);
      v22->_M_buffers._M_end_of_storage = *(char **)v21;
      *((_DWORD *)v21 + 5) = 0;
      v21 += 24;
      ++v22;
      if ( v21 == (char *)v3 )
        goto LABEL_25;
    }
    v24 = *((_DWORD *)v21 + 1);
    v25 = *((_DWORD *)v21 + 2);
    v26 = *((_DWORD *)v21 + 3);
    v22->_M_buffers._M_end_of_storage = *(char **)v21;
    *(_DWORD *)&v22->_M_buffers._M_static_buf[4] = v24;
    *(_DWORD *)&v22->_M_buffers._M_static_buf[8] = v25;
    *(_DWORD *)&v22->_M_buffers._M_static_buf[12] = v26;
    v27 = *((_DWORD *)v21 + 4);
    v28 = *((_DWORD *)v21 + 5);
    v21 += 24;
    v22->_M_start_of_storage._M_data = (char *)v22;
    v22->_M_finish = (char *)v22 + v27 - v28;
    ++v22;
  }
  while ( v21 != (char *)v3 );
LABEL_25:
  *(_DWORD *)(a1 + 4) = &v9[((178956971 * ((unsigned int)(v21 - (char *)&v8[1]) >> 3)) & 0x1FFFFFFF) + 1];
  return this;
}


// ===== 330674 IEventReceiver::~IEventReceiver() =====
void __fastcall IEventReceiver::~IEventReceiver(IEventReceiver *this)
{
  *(_DWORD *)this = off_95C330;
  CustomFree(this);
}


// ===== 3306a8 Console::CreateQuestSaveFile(void) =====
int __fastcall Console::CreateQuestSaveFile(Console *this)
{
  int result; // r0
  Character *v2; // r6
  int Player; // r0
  void *v4; // r2
  int v5; // [sp+4h] [bp-4h] BYREF

  result = (*(int (__fastcall **)(_DWORD, const char *, int))(**(_DWORD **)(dword_99F73C + 52) + 148))(
             *(_DWORD *)(dword_99F73C + 52),
             "/data/questsavefile/current.qsf",
             1);
  v2 = (Character *)result;
  if ( result )
  {
    v5 = result;
    Player = PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, 0, 1);
    Character::__SaveQuests(v2, *(IFileStream **)(Player + 1632), v4);
    return (*(int (__fastcall **)(_DWORD, int *))(**(_DWORD **)(dword_99F73C + 52) + 120))(
             *(_DWORD *)(dword_99F73C + 52),
             &v5);
  }
  return result;
}


// ===== 330740 DebugSwitches::GetInstance(void) =====
void *__fastcall DebugSwitches::GetInstance(DebugSwitches *this)
{
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  return &DebugSwitches::s_inst;
}


// ===== 33076c std::string::operator=(char const*) =====
std::string *__fastcall std::string::operator=(std::string *a1, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::string::_M_assign(a1, a2, &a2[v4]);
}


// ===== 330794 PlayerManager::GetLocalPlayerCharacter(void) =====
Character *__fastcall PlayerManager::GetLocalPlayerCharacter(PlayerManager *a1)
{
  return PlayerManager::GetLocalPlayer(a1, 0, 1)->character_660;
}


// ===== 3307ac Console::_getMaxNumberOfItem(void) =====
int __fastcall Console::_getMaxNumberOfItem(Console *this)
{
  int result; // r0
  Character *LocalPlayerCharacter; // r0
  int v3; // r3
  int v4; // r2
  int v5; // r3
  MenuManager *Instance; // r0
  VisualObject *v7; // r5
  int v8; // r4
  int i; // r6
  int ModularCategoryCount; // r0
  int v11; // r1

  switch ( *((_DWORD *)this + 2) )
  {
    case 0:
      v3 = *((_DWORD *)this + 4);
      v4 = *((_DWORD *)this + 5);
      goto LABEL_6;
    case 1:
      return *((_DWORD *)DebugSwitches::GetInstance(this) + 4);
    case 2:
      return *((_DWORD *)DebugSwitches::GetInstance(this) + 10);
    case 3:
      MenuDebugHUD::GetInstance(this);
      return 22;
    case 4:
      return 15;
    case 5:
      return Arrays::LootTable::size;
    case 6:
      return Arrays::v2Quests::size;
    case 7:
      return Arrays::LevelList::size;
    case 8:
      return Arrays::WorldMap::size;
    case 9:
      return Arrays::AnimDict::size;
    case 0xA:
      return Arrays::EffectDict::size;
    case 0xB:
      return Arrays::AnimatedEffectTable::size;
    case 0xD:
      Instance = (MenuManager *)MenuManager::GetInstance(this);
      return MenuManager::GetNumMenus(Instance) + 1;
    case 0xE:
      v5 = (dword_9A5FF8 - dword_9A5FF4) >> 2;
      goto LABEL_7;
    case 0xF:
      LocalPlayerCharacter = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( !LocalPlayerCharacter )
        goto LABEL_4;
      v7 = *((VisualObject **)LocalPlayerCharacter + 182);
      if ( !v7 )
        goto LABEL_4;
      v8 = 0;
      for ( i = 0; ; i += VisualObject::GetModularModuleCount(v7, v11) )
      {
        ModularCategoryCount = VisualObject::GetModularCategoryCount(v7);
        v11 = v8;
        if ( ModularCategoryCount <= v8 )
          break;
        ++v8;
      }
      result = i;
      break;
    case 0x11:
      if ( *((_DWORD *)this + 40) == *((_DWORD *)this + 41) )
      {
        v3 = *((_DWORD *)this + 7);
        v4 = *((_DWORD *)this + 8);
      }
      else
      {
        v3 = *((_DWORD *)this + 10);
        v4 = *((_DWORD *)this + 11);
      }
      goto LABEL_6;
    case 0x12:
      v3 = *((_DWORD *)this + 13);
      v4 = *((_DWORD *)this + 14);
LABEL_6:
      v5 = (v4 - v3) >> 3;
LABEL_7:
      result = -1431655765 * v5;
      break;
    case 0x13:
      result = Arrays::Listeners::size;
      break;
    default:
LABEL_4:
      result = 0;
      break;
  }
  return result;
}


// ===== 3309d4 Console::_cmdReloadLevel(void) =====
int __fastcall Console::_cmdReloadLevel(Console *this)
{
  int result; // r0

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( result )
    return Application::LoadLevel(
             (Application *)&Singleton<Application>::s_inst,
             *(char **)(result + 268),
             nullptr,
             0,
             0,
             1,
             0,
             0,
             0,
             0);
  return result;
}


// ===== 330a3c `global constructor keyed to'.._.._sources_Core_Console_Console.cpp =====
int `global constructor keyed to'.._.._sources_Core_Console_Console.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A1CCC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1CC8 = 1056964608;
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


// ===== 330b6c Console::_setMenuLoadModuleFolderList(void) =====
int __fastcall Console::_setMenuLoadModuleFolderList(std::string *this)
{
  *(_DWORD *)&this->_M_buffers._M_static_buf[12] = 0;
  std::string::_M_assign(this + 6, "", "");
  return Console::_createList((int)this, (_DWORD *)this + 7, (int)"LOAD MODULES - CATEGORIES");
}


// ===== 330bb0 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 330bf0 Console::_setMenuAnimList(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuAnimList(Console *this)
{
  int v1; // r5
  unsigned int v3; // r7
  std::priv::_String_base<char,std::allocator<char> > *v5[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = 0;
  memset(v5, 0, sizeof(v5));
  Console::_createList((int)this, v5, (int)"ANIMS");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  if ( Arrays::AnimDict::size )
  {
    v3 = 0;
    do
    {
      ++v3;
      Console::_addToList(this, *(const char **)(Arrays::AnimDict::members + v1 + 8));
      v1 += 12;
    }
    while ( Arrays::AnimDict::size > v3 );
  }
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 16) + 160))(*((_DWORD *)this + 16), -1);
  return std::vector<std::string>::~vector(v5);
}


// ===== 330cc0 Console::_setMenuVFXSetList(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuVFXSetList(Console *this)
{
  unsigned int v1; // r7
  std::priv::_String_base<char,std::allocator<char> > *v4[4]; // [sp+4h] [bp-10h] BYREF

  v1 = 0;
  memset(v4, 0, 12);
  Console::_createList((int)this, v4, (int)"VFX_SET");
  if ( Arrays::AnimatedEffectTable::size )
  {
    do
      Console::_addToList(this, *(const char **)(Arrays::AnimatedEffectTable::m_memberNames + 4 * v1++));
    while ( Arrays::AnimatedEffectTable::size > v1 );
  }
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 16) + 160))(*((_DWORD *)this + 16), -1);
  return std::vector<std::string>::~vector(v4);
}


// ===== 330d70 Console::_setMenuVFXList(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuVFXList(Console *this)
{
  unsigned int v1; // r7
  std::priv::_String_base<char,std::allocator<char> > *v4[4]; // [sp+4h] [bp-10h] BYREF

  v1 = 0;
  memset(v4, 0, 12);
  Console::_createList((int)this, v4, (int)"VFX");
  if ( Arrays::EffectDict::size )
  {
    do
      Console::_addToList(this, *(const char **)(Arrays::EffectDict::m_memberNames + 4 * v1++));
    while ( Arrays::EffectDict::size > v1 );
  }
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 16) + 160))(*((_DWORD *)this + 16), -1);
  return std::vector<std::string>::~vector(v4);
}


// ===== 330e20 Console::_setLootTableList(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setLootTableList(Console *this)
{
  unsigned int v1; // r5
  const char *v3; // r1
  int *v4; // r3
  bool v5; // cf
  std::priv::_String_base<char,std::allocator<char> > *v7[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = 0;
  memset(v7, 0, sizeof(v7));
  Console::_createList((int)this, v7, (int)"LOOT TABLES");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  v4 = (int *)Arrays::LootTable::size;
  if ( Arrays::LootTable::size )
  {
    do
    {
      v5 = v1 >= (unsigned int)v4;
      if ( v1 >= (unsigned int)v4 )
        v3 = "na";
      else
        v4 = &Arrays::LootTable::m_memberNames;
      if ( !v5 )
        v3 = *(const char **)(*v4 + 4 * v1);
      Console::_addToList(this, v3);
      ++v1;
      v4 = (int *)Arrays::LootTable::size;
    }
    while ( Arrays::LootTable::size > v1 );
  }
  return std::vector<std::string>::~vector(v7);
}


// ===== 330ee0 Console::_setMenuCharModules(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuCharModules(Console *this)
{
  int v1; // r5
  Character *character_660; // r3
  VisualObject *v4; // r6
  int i; // r4
  int v7; // [sp+4h] [bp-410h] BYREF
  std::priv::_String_base<char,std::allocator<char> > *v8[4]; // [sp+404h] [bp-10h] BYREF

  v1 = 0;
  memset(v8, 0, 12);
  Console::_createList((int)this, v8, (int)"Character Modules");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 )
  {
    v4 = *((VisualObject **)character_660 + 182);
    if ( v4 )
    {
      if ( (int)VisualObject::GetModularCategoryCount(*((VisualObject **)character_660 + 182)) > 0 )
      {
        do
        {
          for ( i = 0; i < VisualObject::GetModularModuleCount(v4, v1); ++i )
          {
            VisualObject::GetModularModuleName(v4, v1, i);
            (*(void (__fastcall **)(_DWORD, int *))(**((_DWORD **)this + 16) + 132))(*((_DWORD *)this + 16), &v7);
          }
          ++v1;
        }
        while ( VisualObject::GetModularCategoryCount(v4) > v1 );
      }
    }
  }
  return std::vector<std::string>::~vector(v8);
}


// ===== 330ff8 Console::_setMenuScripts(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuScripts(Console *this)
{
  int v1; // r4
  int v3; // r3
  int v4; // r9
  int v5; // r10
  const char *NameFromID; // r0
  int v7; // r0
  void (__fastcall *v8)(int, int, _DWORD, _BYTE *); // r12
  int v9; // r1
  std::priv::_String_base<char,std::allocator<char> > *v11[4]; // [sp+Ch] [bp-18h] BYREF
  _BYTE v12[8]; // [sp+1Ch] [bp-8h] BYREF

  v1 = 0;
  memset(v11, 0, 12);
  Console::_createList((int)this, v11, (int)"Scripts");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  v3 = (dword_9A5FF8 - dword_9A5FF4) >> 2;
  if ( -1431655765 * v3 > 0 )
  {
    v4 = -1431655765 * v3;
    do
    {
      if ( ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, v1) )
        v5 = -16711936;
      else
        v5 = 268369920;
      NameFromID = (const char *)ScriptManager::GetNameFromID((ScriptManager *)&ScriptManager::s_inst, v1);
      Console::_addToList(this, NameFromID);
      v7 = *((_DWORD *)this + 16);
      v8 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *))(*(_DWORD *)v7 + 176);
      v12[2] = HIBYTE(v5);
      v12[1] = BYTE2(v5);
      v12[0] = BYTE1(v5);
      v9 = v1;
      v12[3] = 0;
      v11[3] = (std::priv::_String_base<char,std::allocator<char> > *)v5;
      ++v1;
      v8(v7, v9, 0, v12);
    }
    while ( v1 != v4 );
  }
  Console::_addToList(this, "Hide all");
  return std::vector<std::string>::~vector(v11);
}


// ===== 331140 Console::_setMenuMenus(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuMenus(Console *this)
{
  int v2; // r4
  MenuManager *v3; // r0
  MenuManager *Instance; // r6
  MenuBase *MenuByID; // r0
  int v6; // r8
  int v7; // r0
  int v8; // r3
  void (__fastcall *v9)(int, int, _DWORD, _BYTE *); // r12
  int NumMenus; // [sp+4h] [bp-48h]
  std::priv::_String_base<char,std::allocator<char> > *v12[4]; // [sp+18h] [bp-34h] BYREF
  _BYTE v13[4]; // [sp+28h] [bp-24h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+2Ch] [bp-20h] BYREF

  v2 = 0;
  memset(v12, 0, 12);
  Console::_createList((int)this, v12, (int)"Menus");
  v3 = (MenuManager *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  Instance = (MenuManager *)MenuManager::GetInstance(v3);
  NumMenus = MenuManager::GetNumMenus(Instance);
  if ( NumMenus > 0 )
  {
    do
    {
      MenuByID = (MenuBase *)MenuManager::GetMenuByID(Instance, v2);
      if ( MenuBase::IsVisible(MenuByID) )
        v6 = -16711936;
      else
        v6 = 268369920;
      MenuManager::GetMenuName((MenuManager *)&v14, Instance);
      v7 = Console::_addToList(this, v14._M_start_of_storage._M_data);
      v8 = *((_DWORD *)this + 16);
      v9 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *))(*(_DWORD *)v8 + 176);
      v13[2] = HIBYTE(v6);
      v13[1] = BYTE2(v6);
      v13[0] = BYTE1(v6);
      v13[3] = 0;
      v12[3] = (std::priv::_String_base<char,std::allocator<char> > *)v6;
      v9(v8, v7, 0, v13);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
      ++v2;
    }
    while ( NumMenus != v2 );
  }
  Console::_addToList(this, "Hide all");
  return std::vector<std::string>::~vector(v12);
}


// ===== 3312bc Console::_setMenuListeners(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuListeners(Console *this)
{
  unsigned int v1; // r4
  int v3; // r9
  int v4; // r1
  int v5; // r0
  void (__fastcall *v6)(int, int, _DWORD, _BYTE *); // r12
  std::priv::_String_base<char,std::allocator<char> > *v8[4]; // [sp+Ch] [bp-18h] BYREF
  _BYTE v9[8]; // [sp+1Ch] [bp-8h] BYREF

  v1 = 0;
  memset(v8, 0, 12);
  Console::_createList((int)this, v8, (int)"LISTENERS");
  if ( Arrays::Listeners::size )
  {
    do
    {
      if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
        && *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) + 228) == v1 )
      {
        v3 = -16711936;
      }
      else
      {
        v3 = -65536;
      }
      v4 = Console::_addToList(this, *(const char **)(Arrays::Listeners::m_memberNames + 4 * v1));
      v5 = *((_DWORD *)this + 16);
      ++v1;
      v6 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *))(*(_DWORD *)v5 + 176);
      v9[1] = BYTE2(v3);
      v9[0] = BYTE1(v3);
      v9[3] = 0;
      v9[2] = HIBYTE(v3);
      v8[3] = (std::priv::_String_base<char,std::allocator<char> > *)v3;
      v6(v5, v4, 0, v9);
    }
    while ( Arrays::Listeners::size > v1 );
  }
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 16) + 160))(*((_DWORD *)this + 16), -1);
  return std::vector<std::string>::~vector(v8);
}


// ===== 3313f8 Console::_setMenuWorldMap(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuWorldMap(Console *this)
{
  unsigned int v1; // r4
  int v3; // r7
  Character *character_660; // r6
  int v5; // r2
  unsigned int MapLocState; // r0
  _DWORD *v7; // r3
  int v8; // r1
  int v9; // r0
  void (__fastcall *v10)(int, int, _DWORD, _BYTE *); // r12
  _BYTE v12[256]; // [sp+Ch] [bp-118h] BYREF
  std::priv::_String_base<char,std::allocator<char> > *v13[4]; // [sp+10Ch] [bp-18h] BYREF
  _BYTE v14[8]; // [sp+11Ch] [bp-8h] BYREF

  v1 = 0;
  memset(v13, 0, 12);
  Console::_createList((int)this, v13, (int)"WORLD MAP LOCATIONS");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  v3 = (int)&__GLOBAL_OFFSET_TABLE_;
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( Arrays::WorldMap::size )
  {
    do
    {
      if ( !character_660 )
        v3 = 0x80000000;
      v5 = -1;
      if ( character_660 )
      {
        MapLocState = Character::SG_GetMapLocState(character_660, v1, -1);
        if ( MapLocState > 2 )
          v3 = 0;
        else
          v7 = &CSWTCH_7057;
        if ( MapLocState <= 2 )
          v3 = v7[MapLocState];
      }
      else
      {
        v3 >>= 15;
      }
      ++v1;
      v8 = (*(int (__fastcall **)(_DWORD, _BYTE *, int))(**((_DWORD **)this + 16) + 132))(
             *((_DWORD *)this + 16),
             v12,
             v5);
      v9 = *((_DWORD *)this + 16);
      v10 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *))(*(_DWORD *)v9 + 176);
      v14[1] = BYTE2(v3);
      v14[0] = BYTE1(v3);
      v14[3] = v3;
      v14[2] = HIBYTE(v3);
      v13[3] = (std::priv::_String_base<char,std::allocator<char> > *)v3;
      v10(v9, v8, 0, v14);
    }
    while ( Arrays::WorldMap::size > v1 );
  }
  return std::vector<std::string>::~vector(v13);
}


// ===== 331548 Console::_setMenuLevelListPyData(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuLevelListPyData(Console *this)
{
  unsigned int v1; // r4
  int v3; // r7
  Character *character_660; // r6
  int v5; // r2
  unsigned int LevelState; // r0
  _DWORD *v7; // r3
  int v8; // r1
  int v9; // r0
  void (__fastcall *v10)(int, int, _DWORD, _BYTE *, std::priv::_String_base<char,std::allocator<char> > **); // r12
  std::priv::_String_base<char,std::allocator<char> > **v12; // [sp+0h] [bp-124h]
  _BYTE v13[256]; // [sp+Ch] [bp-118h] BYREF
  _DWORD v14[4]; // [sp+10Ch] [bp-18h] BYREF
  _BYTE v15[8]; // [sp+11Ch] [bp-8h] BYREF

  v1 = 0;
  v12 = (std::priv::_String_base<char,std::allocator<char> > **)v14;
  memset(v14, 0, 12);
  Console::_createList((int)this, v14, (int)"LEVELS (STATES)");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  v3 = (int)&__GLOBAL_OFFSET_TABLE_;
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( Arrays::LevelList::size )
  {
    do
    {
      if ( !character_660 )
        v3 = 0x80000000;
      v5 = -1;
      if ( character_660 )
      {
        LevelState = Character::SG_GetLevelState(character_660, v1, -1);
        if ( LevelState > 1 )
          v3 = -1;
        else
          v7 = &CSWTCH_7057;
        if ( LevelState <= 1 )
          v3 = v7[LevelState + 3];
      }
      else
      {
        v3 >>= 15;
      }
      ++v1;
      v8 = (*(int (__fastcall **)(_DWORD, _BYTE *, int))(**((_DWORD **)this + 16) + 132))(
             *((_DWORD *)this + 16),
             v13,
             v5);
      v9 = *((_DWORD *)this + 16);
      v10 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *, std::priv::_String_base<char,std::allocator<char> > **))(*(_DWORD *)v9 + 176);
      v15[1] = BYTE2(v3);
      v15[0] = BYTE1(v3);
      v15[3] = v3;
      v15[2] = HIBYTE(v3);
      v14[3] = v3;
      v10(v9, v8, 0, v15, v12);
    }
    while ( Arrays::LevelList::size > v1 );
  }
  return std::vector<std::string>::~vector(v12);
}


// ===== 33169c Console::_setMenuStats(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuStats(Console *this)
{
  int v1; // r4
  MenuDebugHUD *v3; // r0
  int Instance; // r5
  int v5; // r9
  int v6; // r1
  int v7; // r0
  void (__fastcall *v8)(int, int, _DWORD, _BYTE *); // r12
  std::priv::_String_base<char,std::allocator<char> > *v10[4]; // [sp+Ch] [bp-18h] BYREF
  _BYTE v11[8]; // [sp+1Ch] [bp-8h] BYREF

  v1 = 0;
  memset(v10, 0, 12);
  Console::_createList((int)this, v10, (int)"STATS");
  v3 = (MenuDebugHUD *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  Instance = MenuDebugHUD::GetInstance(v3);
  do
  {
    if ( *(_BYTE *)(Instance + 224) )
      v5 = -16711936;
    else
      v5 = -65536;
    v6 = Console::_addToList(this, MenuDebugHUD::s_statsStrings[v1]);
    v7 = *((_DWORD *)this + 16);
    v8 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *))(*(_DWORD *)v7 + 176);
    ++v1;
    v11[1] = BYTE2(v5);
    v11[0] = BYTE1(v5);
    v11[3] = 0;
    v11[2] = HIBYTE(v5);
    v10[3] = (std::priv::_String_base<char,std::allocator<char> > *)v5;
    v8(v7, v6, 0, v11);
    ++Instance;
  }
  while ( v1 != 22 );
  return std::vector<std::string>::~vector(v10);
}


// ===== 33179c Console::DBG_TryStartingLevel(char const*) =====
int __fastcall Console::DBG_TryStartingLevel(Console *this, const char *a2)
{
  int SlotFromFilename; // r7
  DH2_PlayerInfoCharacterPrefix *LocalPlayer; // r0
  unsigned int GameDifficulty; // lr
  const char *v7; // r1
  std::priv::_String_base<char,std::allocator<char> > *v8[3]; // [sp+1Ch] [bp-Ch] BYREF

  SlotFromFilename = *(_DWORD *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)[1].unknown_000;
  if ( SlotFromFilename == -1 )
  {
    PlayerSavegame::SG_GetSavegameList((PlayerSavegame *)v8, 0);
    if ( !(-1431655765 * (((char *)v8[1] - (char *)v8[0]) >> 3)) )
    {
      std::vector<std::string>::~vector(v8);
      return 0;
    }
    SlotFromFilename = PlayerSavegame::SG_GetSlotFromFilename((PlayerSavegame *)v8[0]->_M_start_of_storage._M_data, v7);
    AssignSaveSlotToPlayer(SlotFromFilename, 0);
    std::vector<std::string>::~vector(v8);
    if ( SlotFromFilename == -1 )
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
          "slotID != -1",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Console\\Console.cpp",
          954);
      }
    }
  }
  if ( PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0)->character_660 )
  {
    LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
    GameDifficulty = Character::SG_GetGameDifficulty(LocalPlayer->character_660);
  }
  else
  {
    GameDifficulty = *(_DWORD *)(dword_99F778 + 12);
  }
  if ( GameDifficulty > 3 )
    GameDifficulty = 0;
  Application::LoadLevel(
    (Application *)&Singleton<Application>::s_inst,
    (char *)this,
    nullptr,
    SlotFromFilename,
    0,
    1,
    GameDifficulty,
    0,
    0,
    0);
  return 1;
}


// ===== 331944 Console::~Console() =====
void __fastcall Console::~Console(Console *this)
{
  void *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = off_95C348;
  if ( dword_99F740 )
  {
    EventManager::Detach((EventManager *)dword_99F740, 4, this);
    EventManager::Detach((EventManager *)dword_99F740, 5, this);
  }
  Console::_destroyList((int)this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 88));
  v2 = *((void **)this + 18);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 20) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 13);
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 10);
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 7);
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 4);
}


// ===== 331a10 Console::~Console() =====
void __fastcall Console::~Console(Console *this)
{
  Console::~Console(this);
  CustomFree(this);
}


// ===== 331a2c Console::~Console() =====
void __fastcall Console::~Console(Console *this)
{
  void *v2; // r0
  size_t v3; // r1

  *(_DWORD *)this = off_95C348;
  if ( dword_99F740 )
  {
    EventManager::Detach((EventManager *)dword_99F740, 4, this);
    EventManager::Detach((EventManager *)dword_99F740, 5, this);
  }
  Console::_destroyList((int)this);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 88));
  v2 = *((void **)this + 18);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 20) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 13);
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 10);
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 7);
  std::vector<std::string>::~vector((std::priv::_String_base<char,std::allocator<char> > **)this + 4);
}


// ===== 331af8 std::allocator<glitch::scene::ISceneNode *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::scene::ISceneNode *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 331b68 Console::InitShowRoomCameraPos(void) =====
void __fastcall Console::InitShowRoomCameraPos(Console *this)
{
  float *v2; // r6
  float v3; // r9
  float v4; // r10
  float v5; // r0
  int v6; // r6
  float v7; // r8
  float v8; // r0
  void (__fastcall *v9)(int, float *); // r9
  float v10[3]; // [sp+0h] [bp-38h] BYREF
  _DWORD v11[3]; // [sp+Ch] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+1Ch] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v12, "IsUsingCharacterShowRoom");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v12)
    && dword_99F764 + 96 != *((_DWORD *)this + 29)
    && *((_DWORD *)this + 31) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
    v2 = *(float **)(*((_DWORD *)this + 29) + 8);
    v3 = (float)(v2[75] + v2[78]) * 0.5;
    v4 = (float)(v2[76] + v2[79]) * 0.5;
    v5 = (float)(v2[77] + v2[80]) * 0.5;
    v6 = *((_DWORD *)this + 31);
    *(float *)&v11[2] = v5;
    *(float *)v11 = v3;
    *(float *)&v11[1] = v4;
    v7 = v5;
    v8 = v3;
    v9 = *(void (__fastcall **)(int, float *))(*(_DWORD *)v6 + 164);
    v10[0] = v8 + 0.0;
    v10[1] = v4 + 2000.0;
    v10[2] = v7 + 1500.0;
    v9(v6, v10);
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**((_DWORD **)this + 31) + 260))(*((_DWORD *)this + 31), v11);
  }
  else
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
  }
}


// ===== 331cfc Console::UpdateToggleDisplayList(void) =====
void __fastcall Console::UpdateToggleDisplayList(Console *this)
{
  int Switch; // r7
  int v3; // r7
  _DWORD *i; // r4
  _DWORD *v5; // r7
  _DWORD *v6; // t1
  int v7; // r3
  char *v8; // r0
  char *v9; // r6
  int v10; // r3
  int v11; // r3
  unsigned int v12; // r2
  unsigned int v13; // r3
  char *v14; // r0
  _BYTE *v15; // r1
  char *v16; // r3
  size_t v17; // r6
  char *v18; // r6
  _DWORD *v19; // r6
  void *v20; // r0
  size_t v21; // r1
  size_t v22; // r2
  char *v23; // r0
  char *v24; // [sp+4h] [bp-40h]
  char *v25; // [sp+4h] [bp-40h]
  size_t v26; // [sp+14h] [bp-30h] BYREF
  int v27; // [sp+18h] [bp-2Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v28; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v28, "IsUsingToggleDisplayMode");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v28);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v28);
  if ( Switch )
  {
    v3 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4);
    v6 = *(_DWORD **)(v3 + 244);
    v5 = (_DWORD *)(v3 + 244);
    for ( i = v6; v5 != i; i = (_DWORD *)*i )
    {
      while ( 1 )
      {
        v7 = i ? (int)(i - 1) : 0;
        v27 = v7;
        if ( (*(_DWORD *)(v7 + 284) & 1) != 0 )
          break;
        i = (_DWORD *)*i;
        if ( v5 == i )
          goto LABEL_11;
      }
      v8 = (char *)std::priv::__find<glitch::scene::ISceneNode **,glitch::scene::ISceneNode *>(
                     *((_DWORD **)this + 18),
                     *((_DWORD *)this + 19),
                     &v27);
      v9 = v8;
      if ( v8 == *((char **)this + 19) )
      {
        if ( v8 == *((char **)this + 20) )
        {
          v12 = (int)&v8[-*((_DWORD *)this + 18)] >> 2;
          if ( v12 )
            v13 = 2 * v12;
          else
            v13 = 1;
          if ( v13 > 0x3FFFFFFF || v12 > v13 )
            v13 = 0x3FFFFFFF;
          v26 = v13;
          v14 = (char *)std::allocator<glitch::scene::ISceneNode *>::_M_allocate((int)this + 80, v13, &v26);
          v15 = *((_BYTE **)this + 18);
          v16 = v14;
          v17 = v9 - v15;
          if ( v17 )
          {
            v25 = v14;
            v23 = (char *)memmove(v14, v15, v17);
            v16 = v25;
            v18 = &v23[v17];
          }
          else
          {
            v18 = v14;
          }
          *(_DWORD *)v18 = v27;
          v19 = v18 + 4;
          v20 = *((void **)this + 18);
          if ( v20 )
          {
            v21 = (*((_DWORD *)this + 20) - (_DWORD)v20) & 0xFFFFFFFC;
            v24 = v16;
            if ( v21 > 0x80 )
              CustomFree(v20);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v20, v21);
            v16 = v24;
          }
          v22 = v26;
          *((_DWORD *)this + 18) = v16;
          *((_DWORD *)this + 19) = v19;
          *((_DWORD *)this + 20) = &v16[4 * v22];
        }
        else
        {
          *(_DWORD *)v8 = v27;
          *((_DWORD *)this + 19) += 4;
        }
      }
      (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v27 + 72))(v27, 0);
    }
LABEL_11:
    v10 = *((_DWORD *)this + 21);
    if ( v10 )
      (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v10 + 72))(*((_DWORD *)this + 21), 1);
  }
  else
  {
    v11 = *((_DWORD *)this + 18);
    if ( v11 != *((_DWORD *)this + 19) )
      *((_DWORD *)this + 19) = v11;
    *((_DWORD *)this + 21) = 0;
  }
}


// ===== 331f7c Console::UpdateCharacterShowRoom(void) =====
void __fastcall Console::UpdateCharacterShowRoom(Console *this)
{
  int Switch; // r7
  int v3; // r3
  int *v4; // r5
  int v5; // r7
  float *v6; // r5
  float v7; // r8
  float v8; // r0
  float v9[3]; // [sp+4h] [bp-30h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+14h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v10, "IsUsingCharacterShowRoom");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  if ( Switch )
  {
    v3 = *((_DWORD *)this + 29);
    if ( dword_99F764 + 96 != v3 )
    {
      v4 = *(int **)(v3 + 8);
      (*(void (__fastcall **)(int *))(*v4 + 44))(v4);
      VisualObject::SetVisible(v4[182], 1);
      (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v4[182] + 8) + 72))(*(_DWORD *)(v4[182] + 8), 1);
      v5 = *((_DWORD *)this + 31);
      if ( v5 )
      {
        v6 = *(float **)(*((_DWORD *)this + 29) + 8);
        v7 = (float)(v6[77] + v6[80]) * 0.5;
        v8 = v6[75] + v6[78];
        v9[1] = (float)(v6[76] + v6[79]) * 0.5;
        v9[0] = v8 * 0.5;
        v9[2] = v7;
        (*(void (__fastcall **)(int, float *))(*(_DWORD *)v5 + 260))(v5, v9);
      }
    }
  }
}


// ===== 3320ec Console::_setMenuQuestList(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuQuestList(Console *this)
{
  unsigned int v1; // r5
  Character *character_660; // r11
  char *v4; // r6
  Quest *QuestByName; // r7
  char *CurrentStateName; // r6
  size_t v7; // r0
  std::priv::_String_base<char,std::allocator<char> > *v9[3]; // [sp+1Ch] [bp-30h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+2Ch] [bp-20h] BYREF

  v1 = 0;
  memset(v9, 0, sizeof(v9));
  Console::_createList((int)this, v9, (int)"QUESTS");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
  if ( character_660 && Arrays::v2Quests::size )
  {
    do
    {
      v4 = *(char **)(Arrays::v2Quests::m_memberNames + 4 * v1++);
      QuestByName = (Quest *)Character::SG_GetQuestByName(character_660, v4, -1);
      std::string::string((std::string *)&v10, v4);
      std::string::_M_append((std::string *)&v10, " - ", "");
      CurrentStateName = (char *)Quest::DBG_GetCurrentStateName(QuestByName);
      v7 = LC_API_STRLEN_0(CurrentStateName);
      std::string::_M_append((std::string *)&v10, CurrentStateName, &CurrentStateName[v7]);
      Console::_addToList(this, v10._M_start_of_storage._M_data);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
    }
    while ( Arrays::v2Quests::size > v1 );
  }
  return std::vector<std::string>::~vector(v9);
}


// ===== 332284 std::priv::__ufill<std::string *,std::string,int>(std::string *,std::string *,std::string const&,std::random_access_iterator_tag const&,int *) =====
std::string *__fastcall std::priv::__ufill<std::string *,std::string,int>(std::string *this, int a2, int a3)
{
  int v4; // r5
  std::string *i; // r4

  v4 = -1431655765 * ((a2 - (int)this) >> 3);
  if ( v4 > 0 )
  {
    for ( i = this; ; ++i )
    {
      i->_M_finish = (char *)i;
      i->_M_start_of_storage._M_data = (char *)i;
      this = (std::string *)std::string::_M_range_initialize(i, *(const char **)(a3 + 20), *(const char **)(a3 + 16));
      if ( !--v4 )
        break;
    }
  }
  return this;
}


// ===== 3322e0 std::vector<std::string,std::allocator<std::string>>::_M_insert_overflow_aux(std::string *,std::string const&,std::__false_type const&,uint,bool) [clone] =====
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


// ===== 332488 Console::_setMenuCommands(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuCommands(Console *this)
{
  int v1; // r4
  std::string *v4[4]; // [sp+4h] [bp-Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+14h] [bp+4h] BYREF

  v1 = 0;
  memset(v4, 0, 12);
  do
  {
    std::string::string((std::string *)&v5, Console::COMMAND_LABELS[v1]);
    std::vector<std::string>::push_back(v4, (const std::string *)&v5);
    ++v1;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  }
  while ( v1 != 15 );
  Console::_createList((int)this, v4, (int)"COMMANDS");
  return std::vector<std::string>::~vector(v4);
}


// ===== 33254c std::operator+<char,std::char_traits<char>,std::allocator<char>>(char const*,std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&) =====
std::string *__fastcall std::operator+<char>(std::string *a1, char *a2, int a3)
{
  size_t v6; // r0
  int v7; // r3
  int v8; // r1
  size_t v9; // r7

  v6 = LC_API_STRLEN_0(a2);
  v7 = *(_DWORD *)(a3 + 20);
  v8 = *(_DWORD *)(a3 + 16);
  v9 = v6;
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1, v8 - v7 + 1 + v6);
  *a1->_M_finish = 0;
  std::string::_M_appendT<char const*>(a1, a2, &a2[v9]);
  std::string::_M_append(a1, *(char **)(a3 + 20), *(char **)(a3 + 16));
  return a1;
}


// ===== 3325cc Console::LoadQuestSaveFile(char const*) =====
void __fastcall Console::LoadQuestSaveFile(Console *this, char *a2)
{
  Character *v2; // r1
  int v3; // r6
  int Player; // r0
  void *v5; // r2
  Character *v6; // [sp+4h] [bp-20h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+Ch] [bp-18h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+24h] [bp+0h] BYREF

  std::string::string((std::string *)&v7, a2);
  std::operator+<char>((std::string *)&v8, "/data/questsavefile/", (int)&v7);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  v2 = (Character *)(*(int (__fastcall **)(_DWORD, char *, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 136))(
                      *(_DWORD *)(dword_99F73C + 52),
                      v8._M_start_of_storage._M_data,
                      0,
                      0);
  v6 = v2;
  if ( v2 )
  {
    if ( *(int *)(dword_99F76C + 1732) > 0 )
    {
      v3 = 0;
      while ( 1 )
      {
        (*(void (__fastcall **)(Character *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v2 + 32))(v2, *(_DWORD *)v2, 0, 0);
        Player = PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, v3, 1);
        Character::__LoadQuests(v6, *(IStreamBase **)(Player + 1632), v5);
        if ( ++v3 >= *(_DWORD *)(dword_99F76C + 1732) )
          break;
        v2 = v6;
      }
    }
    (*(void (__fastcall **)(_DWORD, Character **))(**(_DWORD **)(dword_99F73C + 52) + 120))(
      *(_DWORD *)(dword_99F73C + 52),
      &v6);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
}


// ===== 33271c Console::onEventNotOpened(IEvent const*,EventManager const*) =====
int __fastcall Console::onEventNotOpened(Console *this, const IEvent *a2, const EventManager *a3)
{
  int CurrentLevel; // r0
  int v7; // r3
  DebugSwitches *active; // r0
  int v9; // r0
  int v10; // r10
  int v11; // r3
  int v12; // r0
  int v13; // r10
  int v14; // r0
  int v15; // r10
  int v16; // r0
  int v17; // r10
  int v18; // r0
  _DWORD *v19; // r3
  glitch::scene::CSceneManager *v20; // r10
  DebugSwitches *Instance; // r9
  int v22; // r3
  glitch::IEventReceiver *v23; // r1
  int v24; // r0
  std::string *v25; // r0
  DebugSwitches *v26; // r11
  char v27; // r0
  glitch::scene::CSceneManager *v28; // r10
  DebugSwitches *v29; // r0
  int v30; // r8
  int v31; // r3
  glitch::IEventReceiver *v32; // r1
  int v33; // r0
  DebugSwitches *v34; // r9
  std::string *v35; // r0
  DebugSwitches *v36; // r10
  char Switch; // r0
  int v38; // r0
  int v39; // r3
  int v40; // r6
  void (__fastcall *v41)(int, _DWORD); // r7
  float v42; // r0
  int v43; // r0
  CameraBase *v44; // r0
  int v45; // r0
  int v46; // r3
  int v47; // r6
  void (__fastcall *v48)(int, _DWORD); // r7
  float v49; // r0
  int v50; // r0
  DebugSwitches *v51; // r10
  int v52; // r10
  int v53; // r0
  int v54; // r3
  int v55; // r6
  void (__fastcall *v56)(int, _DWORD); // r7
  float v57; // r0
  DebugSwitches *v58; // r10
  int v59; // r10
  int v60; // r0
  int v61; // r3
  int v62; // r6
  void (__fastcall *v63)(int, _DWORD); // r7
  float v64; // r0
  int v65; // r0
  int v66; // r3
  int v67; // r0
  int v68; // r3
  DebugSwitches *v69; // r10
  int v70; // r10
  int v71; // r3
  _DWORD *v72; // r2
  int v73; // r3
  _DWORD *v74; // r0
  int v75; // r1
  _DWORD *v76; // r3
  bool v77; // zf
  std::priv::_String_base<char,std::allocator<char> > *v78; // r7
  std::string *v79; // r6
  DebugSwitches *v80; // r10
  int v81; // r10
  int v82; // r3
  int v83; // r3
  int v84; // r1
  _DWORD *v85; // r0
  _DWORD *v86; // r7
  int v87; // r1
  int *v88; // r3
  bool v89; // zf
  std::string *v90; // r6
  DebugSwitches *v91; // r11
  std::string *v92; // r0
  DebugSwitches *v93; // r9
  char v94; // r0
  int *v95; // r7
  int *v96; // r8
  int v97; // t1
  int v98; // r3
  glitch::scene::ISceneNode *v99; // r0
  int v100; // r8
  int v101; // r3
  glitch::IEventReceiver *v102; // r1
  _DWORD *v103; // r7
  int v104; // r9
  void (__fastcall *v105)(int, int); // r8
  int v106; // r0
  int v107; // r9
  void (__fastcall *v108)(int, int); // r8
  int v109; // r0
  int v110; // r8
  int v111; // r3
  _DWORD *v112; // r0
  void (__fastcall *v113)(int, int); // r7
  int v114; // r0
  glitch::scene::ISceneNode *v115; // r0
  int v116; // r8
  glitch::IEventReceiver *v117; // r3
  _DWORD *v118; // r8
  float *v119; // r0
  int v120; // r11
  float *v121; // r9
  float v122; // r0
  void (__fastcall *v123)(DebugSwitches *, int); // r11
  int v124; // r0
  void (__fastcall *v125)(DebugSwitches *, int); // r11
  int v126; // r0
  int v127; // r11
  int v128; // r3
  _DWORD *v129; // r0
  void (__fastcall *v130)(int, int); // r8
  int v131; // r0
  DebugSwitches *v132; // r0
  DebugSwitches *v133; // r8
  int v134; // r3
  int v135; // r0
  DebugSwitches *v136; // [sp+0h] [bp-1FCh]
  DebugSwitches *v137; // [sp+0h] [bp-1FCh]
  float v138; // [sp+0h] [bp-1FCh]
  DebugSwitches *v139; // [sp+0h] [bp-1FCh]
  DebugSwitches *v140; // [sp+0h] [bp-1FCh]
  void (__fastcall *v141)(int, _DWORD *); // [sp+4h] [bp-1F8h]
  float v142; // [sp+8h] [bp-1F4h]
  int v143[3]; // [sp+14h] [bp-1E8h] BYREF
  _DWORD v144[3]; // [sp+20h] [bp-1DCh] BYREF
  float v145[3]; // [sp+2Ch] [bp-1D0h] BYREF
  _BYTE v146[16]; // [sp+74h] [bp-188h] BYREF
  char *v147; // [sp+84h] [bp-178h]
  char *v148; // [sp+88h] [bp-174h]
  std::priv::_String_base<char,std::allocator<char> > v149; // [sp+8Ch] [bp-170h] BYREF
  _BYTE v150[16]; // [sp+A4h] [bp-158h] BYREF
  char *__l; // [sp+B4h] [bp-148h]
  char *__f; // [sp+B8h] [bp-144h]
  std::priv::_String_base<char,std::allocator<char> > v153; // [sp+BCh] [bp-140h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v154; // [sp+D4h] [bp-128h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v155; // [sp+ECh] [bp-110h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v156; // [sp+104h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v157; // [sp+11Ch] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v158; // [sp+134h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v159; // [sp+14Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v160; // [sp+164h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v161; // [sp+17Ch] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v162; // [sp+194h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v163; // [sp+1ACh] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v164; // [sp+1C4h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v165; // [sp+1DCh] [bp-20h] BYREF

  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel
    || *(_DWORD *)(CurrentLevel + 304) != 38
    || (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) )
  {
    return 0;
  }
  v7 = *((_DWORD *)a2 + 3);
  if ( v7 == 87 )
  {
    v9 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( v9 )
    {
      v10 = *(_DWORD *)(v9 + 296);
      if ( v10 )
      {
        v11 = *(_DWORD *)(v10 + 8);
        *(float *)(v10 + 56) = *(float *)(v10 + 56) - 200.0;
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v11 + 308))(v11, 1195593728);
        v7 = *((_DWORD *)a2 + 3);
        goto LABEL_7;
      }
    }
LABEL_19:
    v7 = *((_DWORD *)a2 + 3);
    goto LABEL_7;
  }
  if ( v7 == 83 )
  {
    v12 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    if ( v12 )
    {
      v13 = *(_DWORD *)(v12 + 296);
      if ( v13 )
        *(float *)(v13 + 56) = *(float *)(v13 + 56) + 200.0;
    }
    goto LABEL_19;
  }
LABEL_7:
  switch ( v7 )
  {
    case 'A':
      v14 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( v14 )
      {
        v15 = *(_DWORD *)(v14 + 296);
        if ( v15 )
          *(float *)(v15 + 60) = *(float *)(v15 + 60) - 200.0;
      }
      break;
    case 'D':
      v16 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( v16 )
      {
        v17 = *(_DWORD *)(v16 + 296);
        if ( v17 )
          *(float *)(v17 + 60) = *(float *)(v17 + 60) + 200.0;
      }
      break;
    case 'X':
      v18 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( v18 )
      {
        v19 = *(_DWORD **)(v18 + 296);
        if ( v19 )
        {
          v19[14] = Vec3f_Origin;
          v19[15] = dword_99F858;
          v19[16] = dword_99F85C;
        }
      }
      break;
  }
  active = (DebugSwitches *)(*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2);
  if ( !active && *((_BYTE *)a2 + 16) )
  {
    switch ( *((_DWORD *)a2 + 3) )
    {
      case 0x30:
        v45 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        v46 = v45;
        if ( v45 )
          v46 = *(_DWORD *)(v45 + 296);
        v47 = *(_DWORD *)(v46 + 8);
        v48 = *(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v47 + 316);
        v49 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v47 + 296))(v47));
        v48(v47, v49 + 0.017453);
        return 0;
      case 0x39:
        v38 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        v39 = v38;
        if ( v38 )
          v39 = *(_DWORD *)(v38 + 296);
        v40 = *(_DWORD *)(v39 + 8);
        v41 = *(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v40 + 316);
        v42 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v40 + 296))(v40));
        v41(v40, v42 - 0.017453);
        return 0;
      case 0x46:
        v20 = *(glitch::scene::CSceneManager **)(dword_99F73C + 28);
        if ( *((_DWORD *)this + 31) )
        {
          Instance = (DebugSwitches *)DebugSwitches::GetInstance(nullptr);
          std::string::string((std::string *)&v164, "isDisplayingCullingBoxes");
          DebugSwitches::SetSwitch(Instance, (const std::string *)&v164, 0);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v164);
          v22 = *((_DWORD *)this + 31);
          if ( v22 )
            v23 = (glitch::IEventReceiver *)(v22 + 304);
          else
            v23 = nullptr;
          Application::UnRegisterForIrrlichtEvents((glitch::IEventReceiver **)&Singleton<Application>::s_inst, v23);
          (*(void (__fastcall **)(_DWORD *, _DWORD))(**((_DWORD **)v20 + 1) + 96))(
            *((_DWORD **)v20 + 1),
            *((_DWORD *)this + 31));
          *((_DWORD *)this + 31) = 0;
          v24 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          active = (DebugSwitches *)glitch::scene::CSceneManager::setActiveCamera(
                                      v20,
                                      *(glitch::scene::ICameraSceneNode **)(*(_DWORD *)(v24 + 296) + 8));
        }
        else
        {
          v115 = (glitch::scene::ISceneNode *)(*(int (__fastcall **)(_DWORD, const char *, _DWORD))(*(_DWORD *)v20 + 108))(
                                                *(_DWORD *)(dword_99F73C + 28),
                                                "cameraFPS",
                                                *((_DWORD *)v20 + 1));
          *((_DWORD *)this + 31) = v115;
          v116 = *(_DWORD *)(*(_DWORD *)glitch::scene::ISceneNode::getAnimators(v115) + 8);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v116 + 96))(v116, 1120403456);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v116 + 88))(v116, 1167867904);
          (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 31) + 308))(*((_DWORD *)this + 31), 1195593728);
          v117 = *((glitch::IEventReceiver **)this + 31);
          if ( v117 )
            v117 = (glitch::IEventReceiver *)((char *)v117 + 304);
          Application::RegisterForIrrlichtEvents(&Singleton<Application>::s_inst, v117);
          v118 = *(_DWORD **)(*(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
                                        + 296)
                            + 8);
          glitch::scene::ISceneNode::getAbsolutePosition(v145, v118);
          v119 = (float *)(*(int (__fastcall **)(_DWORD *))(*v118 + 264))(v118);
          v120 = *((_DWORD *)this + 31);
          v121 = v119;
          v141 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v120 + 164);
          v138 = v119[1] + (float)((float)(v145[1] - v119[1]) * 5.0);
          v142 = v119[2] + (float)((float)(v145[2] - v119[2]) * 5.0);
          v122 = *v119 + (float)((float)(v145[0] - *v119) * 5.0);
          *(float *)&v144[2] = v142;
          *(float *)&v144[1] = v138;
          *(float *)v144 = v122;
          v141(v120, v144);
          (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 31) + 184))(*((_DWORD *)this + 31), 0);
          v123 = *(void (__fastcall **)(DebugSwitches *, int))(**((_DWORD **)this + 31) + 276);
          v139 = *((DebugSwitches **)this + 31);
          v124 = (*(int (__fastcall **)(_DWORD *))(*v118 + 280))(v118);
          v123(v139, v124);
          v125 = *(void (__fastcall **)(DebugSwitches *, int))(**((_DWORD **)this + 31) + 316);
          v140 = *((DebugSwitches **)this + 31);
          v126 = (*(int (__fastcall **)(_DWORD *))(*v118 + 296))(v118);
          v125(v140, v126);
          v127 = *((_DWORD *)this + 31);
          v128 = *v118;
          v129 = v118;
          v130 = *(void (__fastcall **)(int, int))(*(_DWORD *)v127 + 312);
          v131 = (*(int (__fastcall **)(_DWORD *))(v128 + 292))(v129);
          v130(v127, v131);
          (*(void (__fastcall **)(_DWORD, float *))(**((_DWORD **)this + 31) + 260))(*((_DWORD *)this + 31), v121);
          (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 31) + 328))(*((_DWORD *)this + 31), 1);
          v132 = (DebugSwitches *)glitch::scene::CSceneManager::setActiveCamera(
                                    v20,
                                    *((glitch::scene::ICameraSceneNode **)this + 31));
          v133 = (DebugSwitches *)DebugSwitches::GetInstance(v132);
          std::string::string((std::string *)&v165, "isDisplayingCullingBoxes");
          DebugSwitches::SetSwitch(v133, (const std::string *)&v165, 1);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v165);
        }
        goto LABEL_34;
      case 0x4B:
        if ( *(_BYTE *)(GetOnline() + 5) )
          ObjectManager::DeleteRandomOnlineObject((ObjectManager *)dword_99F764);
        return 0;
      case 0x50:
        v34 = (DebugSwitches *)DebugSwitches::GetInstance(nullptr);
        v35 = std::string::string((std::string *)&v155, "IsLevelUpdatePaused");
        v36 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)v35);
        std::string::string((std::string *)&v156, "IsLevelUpdatePaused");
        Switch = DebugSwitches::GetSwitch(v36, (const std::string *)&v156);
        DebugSwitches::SetSwitch(v34, (const std::string *)&v155, Switch != 1);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v156);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v155);
        return 0;
      case 0x52:
        Console::_cmdReloadLevel(this);
        return 0;
      case 0x55:
        if ( *(_BYTE *)(GetOnline() + 5) )
          ObjectManager::ForceFullUpdate((ObjectManager *)dword_99F764);
        return 0;
      case 0x5D:
        Console::CreateQuestSaveFile(this);
        return 0;
      case 0x5E:
        Console::LoadQuestSaveFile(this, "current.qsf");
        return 0;
      case 0x83:
LABEL_34:
        v136 = (DebugSwitches *)DebugSwitches::GetInstance(active);
        v25 = std::string::string((std::string *)&v162, "IsUsingCharacterShowRoom");
        v26 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)v25);
        std::string::string((std::string *)&v163, "IsUsingCharacterShowRoom");
        v27 = DebugSwitches::GetSwitch(v26, (const std::string *)&v163);
        DebugSwitches::SetSwitch(v136, (const std::string *)&v162, v27 != 1);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v163);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v162);
        v28 = *(glitch::scene::CSceneManager **)(dword_99F73C + 28);
        v137 = (DebugSwitches *)DebugSwitches::GetInstance(v29);
        std::string::string((std::string *)&v161, "IsUsingCharacterShowRoom");
        v30 = DebugSwitches::GetSwitch(v137, (const std::string *)&v161);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v161);
        if ( v30 )
        {
          *((_DWORD *)this + 29) = *(_DWORD *)(dword_99F764 + 96);
          Console::SetShowRoomDisplayedAnim(this, 0);
          v99 = (glitch::scene::ISceneNode *)(*(int (__fastcall **)(glitch::scene::CSceneManager *, const char *, _DWORD))(*(_DWORD *)v28 + 108))(
                                               v28,
                                               "cameraFPS",
                                               *((_DWORD *)v28 + 1));
          *((_DWORD *)this + 31) = v99;
          v100 = *(_DWORD *)(*(_DWORD *)glitch::scene::ISceneNode::getAnimators(v99) + 8);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v100 + 96))(v100, 1120403456);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v100 + 88))(v100, 1167867904);
          (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 31) + 308))(*((_DWORD *)this + 31), 1195593728);
          v101 = *((_DWORD *)this + 31);
          if ( v101 )
            v102 = (glitch::IEventReceiver *)(v101 + 304);
          else
            v102 = nullptr;
          Application::RegisterForIrrlichtEvents(&Singleton<Application>::s_inst, v102);
          v103 = *(_DWORD **)(*(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
                                        + 296)
                            + 8);
          glitch::scene::ISceneNode::getAbsolutePosition(v143, v103);
          (*(void (__fastcall **)(_DWORD *))(*v103 + 264))(v103);
          Console::InitShowRoomCameraPos(this);
          (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 31) + 184))(*((_DWORD *)this + 31), 0);
          v104 = *((_DWORD *)this + 31);
          v105 = *(void (__fastcall **)(int, int))(*(_DWORD *)v104 + 276);
          v106 = (*(int (__fastcall **)(_DWORD *))(*v103 + 280))(v103);
          v105(v104, v106);
          v107 = *((_DWORD *)this + 31);
          v108 = *(void (__fastcall **)(int, int))(*(_DWORD *)v107 + 316);
          v109 = (*(int (__fastcall **)(_DWORD *))(*v103 + 296))(v103);
          v108(v107, v109);
          v110 = *((_DWORD *)this + 31);
          v111 = *v103;
          v112 = v103;
          v113 = *(void (__fastcall **)(int, int))(*(_DWORD *)v110 + 312);
          v114 = (*(int (__fastcall **)(_DWORD *))(v111 + 292))(v112);
          v113(v110, v114);
          (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 31) + 328))(*((_DWORD *)this + 31), 1);
          glitch::scene::CSceneManager::setActiveCamera(v28, *((glitch::scene::ICameraSceneNode **)this + 31));
        }
        else
        {
          v31 = *((_DWORD *)this + 31);
          if ( v31 )
            v32 = (glitch::IEventReceiver *)(v31 + 304);
          else
            v32 = nullptr;
          *((_DWORD *)this + 29) = dword_99F764 + 96;
          Application::UnRegisterForIrrlichtEvents((glitch::IEventReceiver **)&Singleton<Application>::s_inst, v32);
          (*(void (__fastcall **)(_DWORD *, _DWORD))(**((_DWORD **)v28 + 1) + 96))(
            *((_DWORD **)v28 + 1),
            *((_DWORD *)this + 31));
          v33 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          glitch::scene::CSceneManager::setActiveCamera(
            v28,
            *(glitch::scene::ICameraSceneNode **)(*(_DWORD *)(v33 + 296) + 8));
          *((_DWORD *)this + 31) = 0;
        }
        return 0;
      case 0x84:
        v91 = (DebugSwitches *)DebugSwitches::GetInstance(nullptr);
        v92 = std::string::string((std::string *)&v159, "IsUsingToggleDisplayMode");
        v93 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)v92);
        std::string::string((std::string *)&v160, "IsUsingToggleDisplayMode");
        v94 = DebugSwitches::GetSwitch(v93, (const std::string *)&v160);
        DebugSwitches::SetSwitch(v91, (const std::string *)&v159, v94 != 1);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v160);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v159);
        v95 = *((int **)this + 18);
        v96 = *((int **)this + 19);
        if ( v95 != v96 )
        {
          do
          {
            v97 = *v95++;
            (*(void (__fastcall **)(int, int))(*(_DWORD *)v97 + 72))(v97, 1);
          }
          while ( v95 != v96 );
          v98 = *((_DWORD *)this + 18);
          if ( v98 != *((_DWORD *)this + 19) )
            *((_DWORD *)this + 19) = v98;
        }
        *((_DWORD *)this + 21) = 0;
        return 0;
      case 0x85:
        v80 = (DebugSwitches *)DebugSwitches::GetInstance(nullptr);
        std::string::string((std::string *)&v149, "IsUsingCharacterShowRoom");
        v81 = DebugSwitches::GetSwitch(v80, (const std::string *)&v149);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v149);
        if ( v81 )
        {
          v82 = *((_DWORD *)this + 29);
          if ( *(_DWORD *)(dword_99F764 + 96) == v82 )
            v83 = *(_DWORD *)(dword_99F764 + 100);
          else
            v83 = *(_DWORD *)(v82 + 4);
          *((_DWORD *)this + 29) = v83;
          Console::SetShowRoomDisplayedAnim(this, 0);
          Console::InitShowRoomCameraPos(this);
        }
        v84 = *((_DWORD *)this + 19);
        v85 = *((_DWORD **)this + 18);
        if ( !((unsigned int)(v84 - (_DWORD)v85) >> 2) )
          return 0;
        if ( *((_DWORD *)this + 21) )
        {
          v86 = std::priv::__find<glitch::scene::ISceneNode **,glitch::scene::ISceneNode *>(v85, v84, (int *)this + 21);
          (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 21) + 72))(*((_DWORD *)this + 21), 0);
          v88 = *((int **)this + 19);
          v89 = v86 + 1 == v88;
          if ( v86 + 1 == v88 )
            v88 = *((int **)this + 18);
          else
            v87 = v86[1];
          if ( v89 )
            v87 = *v88;
          *((_DWORD *)this + 21) = v87;
        }
        else
        {
          *((_DWORD *)this + 21) = *(_DWORD *)(v84 - 4);
        }
        v78 = (std::priv::_String_base<char,std::allocator<char> > *)v146;
        v90 = (std::string *)((char *)this + 88);
        DBG_GetDetailedNodeName((glitch::scene::ISceneNode *)v146);
        if ( v90 != (std::string *)v146 )
          std::string::_M_assign(v90, v148, v147);
        goto LABEL_89;
      case 0x86:
        v69 = (DebugSwitches *)DebugSwitches::GetInstance(nullptr);
        std::string::string((std::string *)&v154, "IsUsingCharacterShowRoom");
        v70 = DebugSwitches::GetSwitch(v69, (const std::string *)&v154);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v154);
        if ( v70 )
        {
          v71 = **((_DWORD **)this + 29);
          *((_DWORD *)this + 29) = v71;
          if ( v71 == dword_99F764 + 96 )
          {
            v134 = *(_DWORD *)(dword_99F764 + 96);
            *((_DWORD *)this + 29) = v134;
            v135 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v134 + 8) + 728) + 8);
            (*(void (__fastcall **)(int, int))(*(_DWORD *)v135 + 72))(v135, 1);
          }
          Console::SetShowRoomDisplayedAnim(this, 0);
          Console::InitShowRoomCameraPos(this);
          DBG_GetDetailedNodeName((glitch::scene::ISceneNode *)&v153);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v153);
        }
        v72 = *((_DWORD **)this + 18);
        if ( !((unsigned int)(*((_DWORD *)this + 19) - (_DWORD)v72) >> 2) )
          return 0;
        v73 = *((_DWORD *)this + 21);
        if ( v73 )
        {
          (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v73 + 72))(*((_DWORD *)this + 21), 0);
          v74 = std::priv::__find<glitch::scene::ISceneNode **,glitch::scene::ISceneNode *>(
                  *((_DWORD **)this + 18),
                  *((_DWORD *)this + 19),
                  (int *)this + 21);
          v76 = *((_DWORD **)this + 18);
          v77 = v74 == v76;
          if ( v74 == v76 )
            v76 = *((_DWORD **)this + 19);
          else
            v75 = *(v74 - 1);
          if ( v77 )
            v75 = *(v76 - 1);
          *((_DWORD *)this + 21) = v75;
        }
        else
        {
          *((_DWORD *)this + 21) = *v72;
        }
        v78 = (std::priv::_String_base<char,std::allocator<char> > *)v150;
        v79 = (std::string *)((char *)this + 88);
        DBG_GetDetailedNodeName((glitch::scene::ISceneNode *)v150);
        if ( v79 != (std::string *)v150 )
          std::string::_M_assign(v79, __f, __l);
LABEL_89:
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v78);
        return 0;
      case 0x8B:
        v67 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        if ( !v67 )
          return 0;
        v68 = *(_DWORD *)(v67 + 296);
        if ( !v68 )
          return 0;
        v62 = *(_DWORD *)(v68 + 8);
        v63 = *(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v62 + 308);
        v64 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v62 + 288))(v62));
        goto LABEL_68;
      case 0x8C:
        v65 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        if ( !v65 )
          return 0;
        v66 = *(_DWORD *)(v65 + 296);
        if ( !v66 )
          return 0;
        v55 = *(_DWORD *)(v66 + 8);
        v56 = *(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v55 + 308);
        v57 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v55 + 288))(v55));
        goto LABEL_63;
      case 0x8F:
        v58 = (DebugSwitches *)DebugSwitches::GetInstance(nullptr);
        std::string::string((std::string *)&v158, "IsUsingCharacterShowRoom");
        v59 = DebugSwitches::GetSwitch(v58, (const std::string *)&v158);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v158);
        if ( v59 )
        {
          Console::SetShowRoomDisplayedAnim(this, *((_DWORD *)this + 28) + 1);
        }
        else
        {
          v60 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( v60 )
          {
            v61 = *(_DWORD *)(v60 + 296);
            if ( v61 )
            {
              v62 = *(_DWORD *)(v61 + 8);
              v63 = *(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v62 + 304);
              v64 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v62 + 284))(v62));
LABEL_68:
              v63(v62, v64 + 100.0);
            }
          }
        }
        break;
      case 0x90:
        v51 = (DebugSwitches *)DebugSwitches::GetInstance(nullptr);
        std::string::string((std::string *)&v157, "IsUsingCharacterShowRoom");
        v52 = DebugSwitches::GetSwitch(v51, (const std::string *)&v157);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v157);
        if ( v52 )
        {
          Console::SetShowRoomDisplayedAnim(this, *((_DWORD *)this + 28) - 1);
        }
        else
        {
          v53 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( v53 )
          {
            v54 = *(_DWORD *)(v53 + 296);
            if ( v54 )
            {
              v55 = *(_DWORD *)(v54 + 8);
              v56 = *(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v55 + 304);
              v57 = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v55 + 284))(v55));
LABEL_63:
              v56(v55, v57 - 100.0);
            }
          }
        }
        break;
      case 0xDB:
        v50 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        if ( v50 )
        {
          v44 = *(CameraBase **)(v50 + 300);
          if ( v44 )
            goto LABEL_52;
        }
        return 0;
      case 0xDD:
        v43 = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        if ( v43 )
        {
          v44 = *(CameraBase **)(v43 + 296);
          if ( v44 )
LABEL_52:
            CameraBase::SetActive(v44);
        }
        return 0;
      default:
        return 0;
    }
  }
  return 0;
}


// ===== 3338cc std::operator+<char,std::char_traits<char>,std::allocator<char>>(std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&,char const*) =====
std::string *__fastcall std::operator+<char>(std::string *a1, int a2, char *a3)
{
  size_t v6; // r0
  int v7; // r3
  int v8; // r1
  size_t v9; // r6

  v6 = LC_API_STRLEN_0(a3);
  v7 = *(_DWORD *)(a2 + 20);
  v8 = *(_DWORD *)(a2 + 16);
  v9 = v6;
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1, v8 - v7 + 1 + v6);
  *a1->_M_finish = 0;
  std::string::_M_append(a1, *(char **)(a2 + 20), *(char **)(a2 + 16));
  std::string::_M_appendT<char const*>(a1, a3, &a3[v9]);
  return a1;
}


// ===== 33394c Console::_setMenuLoadModuleList(uint) =====
int __fastcall Console::_setMenuLoadModuleList(std::string *this, unsigned int a2)
{
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+1Ch] [bp-20h] BYREF

  std::operator+<char>((std::string *)&v5, "data/3d/modules/", *((_DWORD *)this + 7) + 24 * a2);
  std::operator+<char>((std::string *)&v4, (int)&v5, "/mlx");
  if ( this + 6 != &v4 )
    std::string::_M_assign(this + 6, v4._M_start_of_storage._M_data, v4._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  (*(void (__fastcall **)(_DWORD, _DWORD, char *))(**(_DWORD **)(dword_99F73C + 52) + 124))(
    *(_DWORD *)(dword_99F73C + 52),
    *((_DWORD *)this + 41),
    (char *)this + 40);
  return Console::_createList((int)this, (_DWORD *)this + 10, (int)"LOAD MODULES - SPECIFIC");
}


// ===== 333a4c Console::Console(void) =====
void __fastcall Console::Console(Console *this)
{
  int v1; // r3
  _DWORD *v3; // r0
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4Ch] [bp-1D0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+64h] [bp-1B8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+7Ch] [bp-1A0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+94h] [bp-188h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+ACh] [bp-170h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+C4h] [bp-158h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+DCh] [bp-140h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+F4h] [bp-128h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+10Ch] [bp-110h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+124h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+13Ch] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+154h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+16Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+184h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+19Ch] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+1B4h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+1CCh] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+1E4h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+1FCh] [bp-20h] BYREF
  int v23; // [sp+214h] [bp-8h]

  v1 = _stack_chk_guard;
  *(_DWORD *)this = off_95C348;
  v3 = (_DWORD *)((char *)this + 88);
  *((_BYTE *)this + 4) = 0;
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
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 26) = v3;
  *((_DWORD *)this + 27) = v3;
  v23 = v1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 35) = -1;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = -1;
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 128) = 0;
  *((_WORD *)this + 65) = 0;
  *((_WORD *)this + 66) = 0;
  *((_BYTE *)this + 134) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 40) = (char *)this + 144;
  *((_DWORD *)this + 41) = (char *)this + 144;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 36, 0x10u);
  **((_BYTE **)this + 40) = 0;
  EventManager::Attach((EventManager *)dword_99F740, 4, this, 15);
  EventManager::Attach((EventManager *)dword_99F740, 5, this, 15);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v22, "IsUsingToggleDisplayMode");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v22, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v21, "IsUsingCharacterShowRoom");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v21, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v20, "IsLevelUpdatePaused");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v20, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v19, "DumpQuestInformationOnce");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v19, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v18, "ForceAll4Players");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v18, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v17, "DontUsePlayerSeed");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v17, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v16, "EnablePlayerHeadLight");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v15, "TestMultiPlayerLight");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v15, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v14, "RENDERING_DisableAllLighting");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v14, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v13, "RENDERING_DisableAllSpecular");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v13, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v12, "RENDERING_DisableGpuSkinning");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v12, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v11, "RENDERING_EnableShadowProjection");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v11, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v10, "RENDERING_EnableXray");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v9, "isUsingMapHack");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v9, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v8, "IsDisablingMinimap");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v8, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v7, "IsUsingGamepadTweaker");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v6, "ToggleGamepadScreenShot");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v5, "Optim_DisableUpdateTimeOnlyForCulledNode");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v4, "isTracingItemPctRoll");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
}


// ===== 33401c Console::Console(void) =====
void __fastcall Console::Console(Console *this)
{
  int v1; // r3
  _DWORD *v3; // r0
  std::priv::_String_base<char,std::allocator<char> > v4; // [sp+4Ch] [bp-1D0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+64h] [bp-1B8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+7Ch] [bp-1A0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+94h] [bp-188h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+ACh] [bp-170h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+C4h] [bp-158h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v10; // [sp+DCh] [bp-140h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+F4h] [bp-128h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v12; // [sp+10Ch] [bp-110h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+124h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+13Ch] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+154h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+16Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+184h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+19Ch] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+1B4h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+1CCh] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+1E4h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+1FCh] [bp-20h] BYREF
  int v23; // [sp+214h] [bp-8h]

  v1 = _stack_chk_guard;
  *(_DWORD *)this = off_95C348;
  v3 = (_DWORD *)((char *)this + 88);
  *((_BYTE *)this + 4) = 0;
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
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 26) = v3;
  *((_DWORD *)this + 27) = v3;
  v23 = v1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v3, 0x10u);
  **((_BYTE **)this + 26) = 0;
  *((_DWORD *)this + 35) = -1;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = -1;
  *((_DWORD *)this + 31) = 0;
  *((_BYTE *)this + 128) = 0;
  *((_WORD *)this + 65) = 0;
  *((_WORD *)this + 66) = 0;
  *((_BYTE *)this + 134) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 40) = (char *)this + 144;
  *((_DWORD *)this + 41) = (char *)this + 144;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 36, 0x10u);
  **((_BYTE **)this + 40) = 0;
  EventManager::Attach((EventManager *)dword_99F740, 4, this, 15);
  EventManager::Attach((EventManager *)dword_99F740, 5, this, 15);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v22, "IsUsingToggleDisplayMode");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v22, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v21, "IsUsingCharacterShowRoom");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v21, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v20, "IsLevelUpdatePaused");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v20, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v19, "DumpQuestInformationOnce");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v19, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v18, "ForceAll4Players");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v18, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v17, "DontUsePlayerSeed");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v17, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v16, "EnablePlayerHeadLight");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v16, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v15, "TestMultiPlayerLight");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v15, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v14, "RENDERING_DisableAllLighting");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v14, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v13, "RENDERING_DisableAllSpecular");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v13, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v12, "RENDERING_DisableGpuSkinning");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v12, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v12);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v11, "RENDERING_EnableShadowProjection");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v11, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v10, "RENDERING_EnableXray");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v10, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v10);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v9, "isUsingMapHack");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v9, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v8, "IsDisablingMinimap");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v8, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v7, "IsUsingGamepadTweaker");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v6, "ToggleGamepadScreenShot");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6, 1);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v5, "Optim_DisableUpdateTimeOnlyForCulledNode");
  DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5, 0);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v4, "isTracingItemPctRoll");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v4);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v4);
}


// ===== 3345ec std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_create_node(std::pair<std::string const,bool> const&) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  char v4; // r2
  size_t v6; // [sp+4h] [bp-8h] BYREF

  v6 = 44;
  v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&v6);
  *((_DWORD *)v3 + 8) = v3 + 16;
  *((_DWORD *)v3 + 9) = v3 + 16;
  std::string::_M_range_initialize((std::string *)(v3 + 16), *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  v4 = *(_BYTE *)(a2 + 24);
  *((_DWORD *)v3 + 3) = 0;
  v3[40] = v4;
  *((_DWORD *)v3 + 2) = 0;
  return v3;
}


// ===== 334644 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_copy(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_copy(
        int a1,
        int a2,
        int a3)
{
  char *node; // r0
  char v7; // r3
  char *v8; // r8
  int v9; // r1
  int v10; // r5
  char *v11; // r6
  char *v12; // r4

  node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_create_node(
           a1,
           a2 + 16);
  v7 = *(_BYTE *)a2;
  *((_DWORD *)node + 1) = a3;
  v8 = node;
  *node = v7;
  v9 = *(_DWORD *)(a2 + 12);
  if ( v9 )
    *((_DWORD *)node + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_copy(
                              a1,
                              v9,
                              node);
  v10 = *(_DWORD *)(a2 + 8);
  if ( v10 )
  {
    v11 = v8;
    do
    {
      v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_create_node(
              a1,
              v10 + 16);
      *v12 = *(_BYTE *)v10;
      *((_DWORD *)v11 + 2) = v12;
      *((_DWORD *)v12 + 1) = v11;
      v11 = v12;
      if ( *(_DWORD *)(v10 + 12) )
        *((_DWORD *)v12 + 3) = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_copy(
                                 a1,
                                 *(_DWORD *)(v10 + 12),
                                 v12);
      v10 = *(_DWORD *)(v10 + 8);
    }
    while ( v10 );
  }
  return v8;
}


// ===== 3346ec std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_Rb_tree(std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_Rb_tree(
        int a1,
        int a2)
{
  int v4; // r1
  char *v5; // r0
  char *v6; // r3
  char *v7; // r2
  char *v8; // r3

  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)a1 = 0;
  *(_DWORD *)(a1 + 8) = a1;
  *(_DWORD *)(a1 + 12) = a1;
  v4 = *(_DWORD *)(a2 + 4);
  if ( v4 )
  {
    v5 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_copy(
           a1,
           v4,
           a1);
    *(_DWORD *)(a1 + 4) = v5;
    v6 = v5;
    do
    {
      v7 = v6;
      v6 = *((char **)v6 + 2);
    }
    while ( v6 );
    *(_DWORD *)(a1 + 8) = v7;
    do
    {
      v8 = v5;
      v5 = *((char **)v5 + 3);
    }
    while ( v5 );
    *(_DWORD *)(a1 + 12) = v8;
  }
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  return a1;
}


// ===== 334764 Console::_setMenuDebugModules(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuDebugModules(Console *this)
{
  int *v2; // r4
  int v3; // r9
  int v4; // r1
  int v5; // r0
  void (__fastcall *v6)(int, int, _DWORD, _BYTE *); // r12
  int *v7; // r2
  int v9; // r3
  int v10; // [sp+14h] [bp-1030h] BYREF
  int v11; // [sp+1014h] [bp-30h] BYREF
  int v12; // [sp+1018h] [bp-2Ch]
  int *v13; // [sp+101Ch] [bp-28h]
  int *v14; // [sp+1020h] [bp-24h]
  int v15; // [sp+1024h] [bp-20h]
  std::priv::_String_base<char,std::allocator<char> > *v16[4]; // [sp+102Ch] [bp-18h] BYREF
  _BYTE v17[2]; // [sp+103Ch] [bp-8h] BYREF
  __int16 v18; // [sp+103Eh] [bp-6h]

  memset(v16, 0, 12);
  Console::_createList((int)this, v16, (int)"GAME MODULES");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_Rb_tree(
    (int)&v11,
    (int)&unk_9A1D30);
  v2 = v13;
  while ( v2 != &v11 )
  {
    if ( *((_BYTE *)v2 + 40) )
      v3 = -16711936;
    else
      v3 = -65536;
    v4 = (*(int (__fastcall **)(_DWORD, int *))(**((_DWORD **)this + 16) + 132))(*((_DWORD *)this + 16), &v10);
    v5 = *((_DWORD *)this + 16);
    v6 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *))(*(_DWORD *)v5 + 176);
    v18 = HIBYTE(v3);
    v17[1] = BYTE2(v3);
    v16[3] = (std::priv::_String_base<char,std::allocator<char> > *)v3;
    v17[0] = BYTE1(v3);
    v6(v5, v4, 0, v17);
    v7 = (int *)v2[3];
    if ( v7 )
    {
      while ( v7[2] )
        v7 = (int *)v7[2];
      v2 = v7;
    }
    else
    {
      v9 = v2[1];
      if ( v2 == *(int **)(v9 + 12) )
      {
        do
        {
          v2 = (int *)v9;
          v9 = *(_DWORD *)(v9 + 4);
        }
        while ( *(int **)(v9 + 12) == v2 );
        v7 = (int *)v2[3];
      }
      if ( v7 != (int *)v9 )
        v2 = (int *)v9;
    }
  }
  if ( v15 )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
      (int)&v11,
      v12);
    v14 = &v11;
    v15 = 0;
    v13 = &v11;
    v12 = 0;
  }
  return std::vector<std::string>::~vector(v16);
}


// ===== 334940 Console::_setMenuDebugSwitches(void) =====
std::priv::_String_base<char,std::allocator<char> > **__fastcall Console::_setMenuDebugSwitches(Console *this)
{
  int v2; // r4
  std::priv::_String_base<char,std::allocator<char> > *v3; // r9
  int v4; // r1
  int v5; // r0
  void (__fastcall *v6)(int, int, _DWORD, _BYTE *); // r12
  int *v7; // r2
  int *v9; // r3
  int v10; // [sp+14h] [bp-1030h] BYREF
  int v11; // [sp+1014h] [bp-30h] BYREF
  int v12; // [sp+1018h] [bp-2Ch]
  int v13; // [sp+101Ch] [bp-28h]
  int v14; // [sp+1020h] [bp-24h]
  int v15; // [sp+1024h] [bp-20h]
  std::priv::_String_base<char,std::allocator<char> > *v16[4]; // [sp+102Ch] [bp-18h] BYREF
  _BYTE v17[2]; // [sp+103Ch] [bp-8h] BYREF
  __int16 v18; // [sp+103Eh] [bp-6h]

  memset(v16, 0, 12);
  Console::_createList((int)this, v16, (int)"DEBUG SWITCHES");
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 152))(*((_DWORD *)this + 16));
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_Rb_tree(
    (int)&v11,
    (int)&DebugSwitches::s_inst);
  v2 = v13;
  while ( (int *)v2 != &v11 )
  {
    while ( 1 )
    {
      v3 = (std::priv::_String_base<char,std::allocator<char> > *)(*(_BYTE *)(v2 + 40) ? -16711936 : -65536);
      v4 = (*(int (__fastcall **)(_DWORD, int *))(**((_DWORD **)this + 16) + 132))(*((_DWORD *)this + 16), &v10);
      v5 = *((_DWORD *)this + 16);
      v6 = *(void (__fastcall **)(int, int, _DWORD, _BYTE *))(*(_DWORD *)v5 + 176);
      v18 = HIBYTE(v3);
      v17[1] = BYTE2(v3);
      v16[3] = v3;
      v17[0] = BYTE1(v3);
      v6(v5, v4, 0, v17);
      v7 = *(int **)(v2 + 12);
      if ( !v7 )
        break;
      while ( v7[2] )
        v7 = (int *)v7[2];
      v2 = (int)v7;
      if ( v7 == &v11 )
        goto LABEL_11;
    }
    v9 = *(int **)(v2 + 4);
    if ( v2 == v9[3] )
    {
      do
      {
        v2 = (int)v9;
        v9 = (int *)v9[1];
      }
      while ( v9[3] == v2 );
      v7 = *(int **)(v2 + 12);
    }
    if ( v7 != v9 )
      v2 = (int)v9;
  }
LABEL_11:
  if ( v15 )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
      v2,
      v12);
    v14 = v2;
    v15 = 0;
    v13 = v2;
    v12 = 0;
  }
  return std::vector<std::string>::~vector(v16);
}


// ===== 334b1c Console::_setMenu(void) =====
void __fastcall Console::_setMenu(Console *this)
{
  if ( *((_BYTE *)this + 4) )
  {
    switch ( *((_DWORD *)this + 2) )
    {
      case 0:
        Console::_setMenuLevelList(this);
        break;
      case 1:
        Console::_setMenuDebugSwitches(this);
        break;
      case 2:
        Console::_setMenuDebugModules(this);
        break;
      case 3:
        Console::_setMenuStats(this);
        break;
      case 4:
        Console::_setMenuCommands(this);
        break;
      case 5:
        Console::_setLootTableList(this);
        break;
      case 6:
        Console::_setMenuQuestList(this);
        break;
      case 7:
        Console::_setMenuLevelListPyData(this);
        break;
      case 8:
        Console::_setMenuWorldMap(this);
        break;
      case 9:
        Console::_setMenuAnimList(this);
        break;
      case 0xA:
        Console::_setMenuVFXList(this);
        break;
      case 0xB:
        Console::_setMenuVFXSetList(this);
        break;
      case 0xC:
        Console::_setMenuCameras(this);
        break;
      case 0xD:
        Console::_setMenuMenus(this);
        break;
      case 0xE:
        Console::_setMenuScripts(this);
        break;
      case 0xF:
        Console::_setMenuCharModules(this);
        break;
      case 0x11:
        Console::_setMenuLoadModuleFolderList((std::string *)this);
        break;
      case 0x12:
        Console::_setMenuLoadQuestProgress(this);
        break;
      case 0x13:
        Console::_setMenuListeners(this);
        break;
      default:
        return;
    }
  }
}


// ===== 334bd8 Console::Toggle(void) =====
void __fastcall Console::Toggle(Console *this)
{
  int v1; // r3
  std::priv::_String_base<char,std::allocator<char> > *v3; // r1
  std::priv::_String_base<char,std::allocator<char> > *v4; // r2
  char *v5; // r6
  std::priv::_String_base<char,std::allocator<char> > *v6; // r10
  std::priv::_String_base<char,std::allocator<char> > *v7; // r11
  const char *M_data; // r9
  std::priv::_String_base<char,std::allocator<char> > *v9; // r0

  v1 = *((unsigned __int8 *)this + 4) ^ 1;
  *((_BYTE *)this + 4) = v1;
  if ( v1 )
  {
    v3 = *((std::priv::_String_base<char,std::allocator<char> > **)this + 4);
    v4 = *((std::priv::_String_base<char,std::allocator<char> > **)this + 5);
    v5 = (char *)this + 16;
    if ( v3 != v4 )
      std::vector<std::string>::_M_erase((int)this + 16, v3, v4);
    (*(void (__fastcall **)(_DWORD, const char *, char *))(**(_DWORD **)(dword_99F73C + 52) + 124))(
      *(_DWORD *)(dword_99F73C + 52),
      "data/scene/*.xml",
      v5);
    (*(void (__fastcall **)(_DWORD, const char *, char *))(**(_DWORD **)(dword_99F73C + 52) + 124))(
      *(_DWORD *)(dword_99F73C + 52),
      "data/scene/*.mlx",
      v5);
    v6 = *((std::priv::_String_base<char,std::allocator<char> > **)this + 4);
    v7 = *((std::priv::_String_base<char,std::allocator<char> > **)this + 5);
    while ( v6 != v7 )
    {
      while ( 1 )
      {
        M_data = v6->_M_start_of_storage._M_data;
        if ( !LC_API_STRSTR_0(M_data, ".xml") && !LC_API_STRSTR_0(M_data, ".mlx") )
          break;
        if ( ++v6 == v7 )
          goto LABEL_8;
      }
      v9 = std::vector<std::string>::_M_erase((int)v5, v6);
      v7 = *((std::priv::_String_base<char,std::allocator<char> > **)this + 5);
      v6 = v9;
    }
LABEL_8:
    Console::_setMenu(this);
  }
  else
  {
    Console::_destroyList((int)this);
  }
}


// ===== 334d1c Console::_selectItem(int) =====
void __fastcall Console::_selectItem(Console *this, int a2)
{
  unsigned int v2; // r7
  MenuDebugHUD *MaxNumberOfItem; // r0
  Character *v6; // r0
  Quest *QuestByName; // r0
  Character *v8; // r0
  Character *v9; // r7
  int v10; // r1
  unsigned int v11; // r3
  unsigned int v12; // r2
  Character *LocalPlayerCharacter; // r7
  char *TargetPosition; // r0
  int v15; // r8
  Character *v16; // r0
  VisualObject *v17; // r6
  int v18; // r7
  int ModularModuleCount; // r0
  MenuManager *v20; // r0
  unsigned int v21; // r8
  MenuManager *v22; // r7
  GameObject *v23; // r0
  char *v24; // r0
  unsigned int v25; // r1
  int v26; // lr
  int v27; // r7
  int v28; // r6
  int v29; // r3
  GSConsole *v30; // r0
  GameObject *v31; // r0
  unsigned int v32; // r1
  VisualObject *v33; // r6
  VisualObject *v34; // lr
  GSConsole *v35; // r0
  Character *v36; // r0
  Character *v37; // r0
  Character *v38; // r0
  MenuDebugHUD *v39; // r0
  unsigned int v40; // r3
  int v41; // r8
  int (__fastcall *v42)(int, int); // r7
  int v43; // r0
  DebugSwitches *v44; // r0
  std::string *v45; // r7
  std::string *v46; // r0
  std::string *v47; // r8
  DebugSwitches *v48; // r11
  char Module; // r0
  int v50; // r8
  int (__fastcall *v51)(int, int); // r7
  int v52; // r0
  DebugSwitches *v53; // r0
  std::string *v54; // r0
  DebugSwitches *v55; // r11
  char Switch; // r0
  int v57; // r0
  unsigned int v58; // r1
  int v59; // r0
  unsigned int v60; // r3
  char *v61; // r10
  size_t v62; // r0
  GSConsole *v63; // r0
  Character *v64; // r0
  Character *v65; // r8
  int NumQuests; // r10
  int n; // r7
  Quest *QuestByID; // r0
  Character *v69; // r8
  int i; // r7
  int v71; // r3
  int m; // r7
  int j; // r7
  int k; // r7
  MenuWorldMap *v75; // r0
  Character *v76; // r0
  Character *v77; // r0
  Character *v78; // r0
  MenuWorldMap *v79; // r0
  Level *CurrentLevel; // r0
  Character *v81; // r0
  Character *v82; // r7
  Character *v83; // r0
  Character *v84; // r0
  Character *v85; // r0
  _DWORD *v86; // r7
  int v87; // r8
  int Loot; // r0
  Character *v89; // r0
  Character *v90; // r7
  Character *v91; // r0
  MenuBase *MenuByID; // r0
  MenuBase *v93; // r7
  DebugSwitches *v94; // [sp+18h] [bp-4ECh]
  DebugSwitches *Instance; // [sp+18h] [bp-4ECh]
  Character *v96; // [sp+18h] [bp-4ECh]
  Character *v97; // [sp+18h] [bp-4ECh]
  ItemInventory *v98; // [sp+1Ch] [bp-4E8h]
  _BYTE v99[12]; // [sp+24h] [bp-4E0h] BYREF
  int v100[3]; // [sp+5Ch] [bp-4A8h] BYREF
  VisualObject *v101[6]; // [sp+68h] [bp-49Ch] BYREF
  std::string v102[42]; // [sp+84h] [bp-480h] BYREF
  std::string v103; // [sp+484h] [bp-80h] BYREF
  std::string v104; // [sp+49Ch] [bp-68h] BYREF
  std::string v105; // [sp+4B4h] [bp-50h] BYREF
  std::string v106; // [sp+4CCh] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v107; // [sp+4E4h] [bp-20h] BYREF

  v2 = *((_DWORD *)this + 3);
  MaxNumberOfItem = (MenuDebugHUD *)Console::_getMaxNumberOfItem(this);
  if ( v2 >= (unsigned int)MaxNumberOfItem )
    return;
  switch ( *((_DWORD *)this + 2) )
  {
    case 0:
      if ( !*(_BYTE *)(GetOnline() + 5) || PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
      {
        v57 = *((_DWORD *)this + 4);
        v58 = *((_DWORD *)this + 3);
        if ( v58 < -1431655765 * ((*((_DWORD *)this + 5) - v57) >> 3) )
          Console::DBG_TryStartingLevel(*(Console **)(v57 + 24 * v58 + 20), (const char *)(v57 + 24 * v58));
      }
      return;
    case 1:
      v50 = *((_DWORD *)this + 16);
      v51 = *(int (__fastcall **)(int, int))(*(_DWORD *)v50 + 128);
      v52 = (*(int (__fastcall **)(int))(*(_DWORD *)v50 + 156))(v50);
      v53 = (DebugSwitches *)v51(v50, v52);
      if ( v53 )
      {
        v45 = &v105;
        Instance = (DebugSwitches *)DebugSwitches::GetInstance(v53);
        v54 = std::string::string(&v105, (char *)v102);
        v47 = &v106;
        v55 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)v54);
        std::string::string(&v106, (char *)v102);
        Switch = DebugSwitches::GetSwitch(v55, &v106);
        DebugSwitches::SetSwitch(Instance, &v105, Switch != 1);
        goto LABEL_55;
      }
      return;
    case 2:
      v41 = *((_DWORD *)this + 16);
      v42 = *(int (__fastcall **)(int, int))(*(_DWORD *)v41 + 128);
      v43 = (*(int (__fastcall **)(int))(*(_DWORD *)v41 + 156))(v41);
      v44 = (DebugSwitches *)v42(v41, v43);
      if ( v44 )
      {
        v45 = &v103;
        v94 = (DebugSwitches *)DebugSwitches::GetInstance(v44);
        v46 = std::string::string(&v103, (char *)v102);
        v47 = &v104;
        v48 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)v46);
        std::string::string(&v104, (char *)v102);
        Module = DebugSwitches::GetModule(v48, &v104);
        DebugSwitches::SetModule(v94, &v103, Module != 1);
LABEL_55:
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v47);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v45);
        goto LABEL_6;
      }
      return;
    case 3:
      v39 = (MenuDebugHUD *)MenuDebugHUD::GetInstance(MaxNumberOfItem);
      v40 = *((_DWORD *)this + 3);
      if ( v40 <= 0x15 )
      {
        *((_BYTE *)v39 + v40 + 224) ^= 1u;
        MenuDebugHUD::SaveToFile(v39);
      }
      goto LABEL_6;
    case 4:
      goto LABEL_14;
    case 5:
      LocalPlayerCharacter = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( LocalPlayerCharacter && *((_DWORD *)this + 3) < (unsigned int)Arrays::LootTable::size )
      {
        ItemInventory::ItemInventory((ItemInventory *)v99);
        ItemInventory::AddLoot((ItemInventory *)v99, *((_DWORD *)this + 3), nullptr, nullptr, -1, 0);
        ItemInventory::TransferInventoryTo(
          (ItemInventory *)v99,
          (Character *)((char *)LocalPlayerCharacter + 892),
          0,
          1);
        ItemInventory::~ItemInventory((ItemInventory *)v99);
      }
      return;
    case 6:
      v6 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( !v6 )
        return;
      QuestByName = (Quest *)Character::SG_GetQuestByName(
                               v6,
                               *(const char **)(Arrays::v2Quests::m_memberNames + 4 * *((_DWORD *)this + 3)),
                               -1);
      if ( QuestByName )
        Quest::DBG_IncState(QuestByName);
      goto LABEL_6;
    case 7:
      v38 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( !v38 )
        return;
      if ( a2 == 1 )
      {
        Character::SG_SetLevelState(v38, *((_DWORD *)this + 3), 0, -1);
      }
      else if ( a2 == 2 )
      {
        Character::SG_SetLevelState(v38, *((_DWORD *)this + 3), 1, -1);
      }
      goto LABEL_6;
    case 8:
      v37 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( !v37 )
        return;
      switch ( a2 )
      {
        case 2:
          Character::SG_SetMapLocState(v37, *((_DWORD *)this + 3), 1, -1);
          break;
        case 3:
          Character::SG_SetMapLocState(v37, *((_DWORD *)this + 3), 2, -1);
          break;
        case 1:
          Character::SG_SetMapLocState(v37, *((_DWORD *)this + 3), 0, -1);
          break;
      }
LABEL_6:
      Console::_setMenu(this);
      return;
    case 9:
      if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
      {
        v36 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
        if ( v36 )
        {
          *(_DWORD *)(*(_DWORD *)(Arrays::AnimTable::members + 32) + 8) = *((_DWORD *)this + 3);
          CharAnimator::ANIM_Set((unsigned int)v36 + 1180, 1);
        }
      }
      return;
    case 0xA:
      v31 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( !v31 )
        return;
      TargetPosition = GameObject::GetTargetPosition(v31);
      v32 = *((_DWORD *)this + 3);
      v33 = *(VisualObject **)TargetPosition;
      v34 = *((VisualObject **)TargetPosition + 1);
      if ( v32 >= -1431655765 * ((dword_9A1D00 - dword_9A1CFC) >> 3) )
        goto LABEL_20;
      v101[2] = *((VisualObject **)TargetPosition + 2);
      v101[1] = v34;
      v101[0] = v33;
      VisualFXManager::PlayAnimFX((VisualFXManager *)&Singleton<VisualFXManager>::s_inst, v32, v101, nullptr, 0);
      GSConsole::Toggle(v35);
      return;
    case 0xB:
      v23 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( !v23 )
        return;
      v24 = GameObject::GetTargetPosition(v23);
      v25 = *((_DWORD *)this + 3);
      v26 = *((_DWORD *)v24 + 2);
      v27 = *(_DWORD *)v24;
      v28 = *((_DWORD *)v24 + 1);
      v29 = (dword_9A1CF4 - dword_9A1CF0) >> 3;
      TargetPosition = (char *)(1431655765 * v29);
      if ( v25 >= -1431655765 * v29 )
        goto LABEL_20;
      v100[2] = v26;
      v100[0] = v27;
      v100[1] = v28;
      v30 = (GSConsole *)VisualFXManager::PlayAnimFXSet((int)&Singleton<VisualFXManager>::s_inst, v25, v100, 0, 0);
      GSConsole::Toggle(v30);
      return;
    case 0xD:
      v20 = (MenuManager *)MenuManager::GetInstance(MaxNumberOfItem);
      v21 = *((_DWORD *)this + 3);
      v22 = v20;
      if ( v21 < MenuManager::GetNumMenus(v20) )
      {
        MenuByID = (MenuBase *)MenuManager::GetMenuByID(v22, *((_DWORD *)this + 3));
        v93 = MenuByID;
        if ( MenuByID )
        {
          if ( MenuBase::IsVisible(MenuByID) )
            (*(void (__fastcall **)(MenuBase *))(*(_DWORD *)v93 + 16))(v93);
          else
            (*(void (__fastcall **)(MenuBase *))(*(_DWORD *)v93 + 12))(v93);
        }
      }
      else
      {
        MenuManager::HideAll(v22);
      }
      goto LABEL_6;
    case 0xE:
      if ( ScriptManager::IsScriptRunning((ScriptManager *)&ScriptManager::s_inst, *((_DWORD *)this + 3)) )
        ScriptManager::StopScript((ScriptManager *)&ScriptManager::s_inst, *((_DWORD *)this + 3), 0);
      else
        ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, *((_DWORD *)this + 3), -1, 0);
      return;
    case 0xF:
      v15 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 16) + 156))(*((_DWORD *)this + 16));
      v16 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
      if ( !v16 )
        return;
      v17 = *((VisualObject **)v16 + 182);
      if ( !v17 )
        return;
      v18 = 0;
      while ( 2 )
      {
        if ( VisualObject::GetModularCategoryCount(v17) > v18 )
        {
          ModularModuleCount = VisualObject::GetModularModuleCount(v17, v18);
          if ( ModularModuleCount <= v15 )
          {
            v15 -= ModularModuleCount;
            ++v18;
            continue;
          }
          VisualObject::SetModularSkin(v17, v18, v15);
          VisualObject::ApplyMaterial(v17);
          VisualObject::ApplyMaterialBaseParam(v17);
          VisualObject::ApplyShadowMaterial(v17);
        }
        break;
      }
      return;
    case 0x11:
      if ( *((_DWORD *)this + 40) == *((_DWORD *)this + 41) )
      {
        Console::_setMenuLoadModuleList((std::string *)this, *((_DWORD *)this + 3));
      }
      else
      {
        v59 = *((_DWORD *)this + 10);
        v60 = *((_DWORD *)this + 3);
        if ( v60 < -1431655765 * ((*((_DWORD *)this + 11) - v59) >> 3) )
        {
          v61 = *(char **)(v59 + 24 * v60 + 20);
          v102[0]._M_finish = (char *)v102;
          v102[0]._M_start_of_storage._M_data = (char *)v102;
          std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v102, 0x10u);
          *v102[0]._M_finish = 0;
          std::operator+<char>((std::string *)&v107, (int)this + 144, "/");
          std::string::_M_assign(v102, v107._M_start_of_storage._M_data, v107._M_finish);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v107);
          std::string::operator=((std::string *)&unk_99F800, v102[0]._M_start_of_storage._M_data);
          v62 = LC_API_STRLEN_0(v61);
          std::string::_M_append(v102, v61, &v61[v62]);
          std::string::operator=((std::string *)&unk_99F7E8, v102[0]._M_start_of_storage._M_data);
          Application::LoadLevel(
            (Application *)&Singleton<Application>::s_inst,
            (char *)dword_99F7FC,
            nullptr,
            0,
            0,
            1,
            0,
            0,
            0,
            0);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v102[0]);
        }
      }
      return;
    case 0x12:
      goto LABEL_11;
    case 0x13:
      TargetPosition = (char *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
      if ( !TargetPosition )
      {
LABEL_14:
        switch ( *((_DWORD *)this + 3) )
        {
          case 0:
            Console::_cmdReloadLevel(this);
            goto LABEL_11;
          case 1:
            v91 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
            if ( v91 )
            {
              *((_BYTE *)v91 + 939) = 1;
              ItemInventory::DBG_DropAllLoots((Character *)((char *)v91 + 892));
            }
            goto LABEL_11;
          case 2:
            v89 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
            v90 = v89;
            if ( v89 )
            {
              ItemInventory::RemoveAllItems((Character *)((char *)v89 + 892), 0);
              ItemInventory::SetPotionQty((Character *)((char *)v90 + 892), *((char *)v90 + 936));
            }
            goto LABEL_11;
          case 3:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v85 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              if ( v85 )
              {
                v98 = (Character *)((char *)v85 + 892);
                v87 = dword_99F764 + 96;
                v86 = *(_DWORD **)(dword_99F764 + 96);
                while ( v86 != (_DWORD *)v87 )
                {
                  v96 = (Character *)v86[2];
                  if ( Character::IsMonster(v96)
                    && *((_BYTE *)v96 + 138)
                    && (Loot = Character::GetLoot(v96), Loot >= 0)
                    && Loot < (unsigned int)Arrays::LootTable::size )
                  {
                    v97 = (Character *)Loot;
                    ItemInventory::ItemInventory((ItemInventory *)v99);
                    ItemInventory::AddLoot((ItemInventory *)v99, (int)v97, nullptr, nullptr, -1, 0);
                    ItemInventory::TransferInventoryTo((ItemInventory *)v99, v98, 0, 1);
                    ItemInventory::~ItemInventory((ItemInventory *)v99);
                    v86 = (_DWORD *)*v86;
                  }
                  else
                  {
                    v86 = (_DWORD *)*v86;
                  }
                }
              }
            }
            goto LABEL_11;
          case 4:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v84 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              if ( v84 )
                Character::LevelUp(v84, 0);
            }
            goto LABEL_11;
          case 5:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v83 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              if ( v83 )
                *((_BYTE *)v83 + 5360) ^= 1u;
            }
            goto LABEL_11;
          case 6:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v81 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              v82 = v81;
              if ( v81 )
              {
                Character::SG_SetGameDifficultyUnlocked(v81, 2);
                Character::SG_Save(v82);
              }
            }
            goto LABEL_11;
          case 7:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v8 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              v9 = v8;
              if ( v8 )
              {
                Character::ResetStats(v8);
                Character::ResetSkills(v9);
              }
            }
            goto LABEL_11;
          case 8:
            CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
            Level::QuickSave(CurrentLevel, 0);
            goto LABEL_11;
          case 9:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v78 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              if ( v78 )
              {
                v79 = (MenuWorldMap *)Character::SG_UnlockAllFastTravels(v78);
                *(_BYTE *)(MenuWorldMap::GetInstance(v79) + 300) = 1;
              }
            }
            goto LABEL_11;
          case 0xA:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v77 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              if ( v77 )
                Character::IncAllFaeriesLevel(v77);
            }
            goto LABEL_11;
          case 0xB:
            TrophyManager::DBG_UnlockAllTrophies((TrophyManager *)TrophyManager::s_instance);
            goto LABEL_11;
          case 0xC:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v76 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              if ( v76 )
                ItemInventory::AddGold((Character *)((char *)v76 + 892), 0x200000);
            }
            goto LABEL_11;
          case 0xD:
            if ( !Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
              goto LABEL_11;
            v69 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
            if ( !v69 )
              goto LABEL_11;
            for ( i = 0; i != 50; ++i )
              Character::LevelUp(v69, 0);
            v71 = *((__int16 *)v69 + 2532);
            if ( v71 > 292 )
            {
              if ( (unsigned int)(v71 - 325) <= 2 )
              {
LABEL_83:
                for ( j = 0; j != 100; ++j )
                  Character::IncStatDex(v69);
                goto LABEL_85;
              }
            }
            else
            {
              if ( v71 >= 290 )
              {
LABEL_85:
                for ( k = 0; k != 100; ++k )
                  Character::IncStatNrg(v69);
                goto LABEL_87;
              }
              if ( (unsigned int)(v71 - 263) <= 2 )
              {
                for ( m = 0; m != 100; ++m )
                  Character::IncStatStr(v69);
                goto LABEL_83;
              }
            }
LABEL_87:
            Character::IncAllFaeriesLevel(v69);
            *((_BYTE *)v69 + 939) = 1;
            ItemInventory::DBG_DropAllLoots((Character *)((char *)v69 + 892));
            (*(void (__fastcall **)(Character *))(*(_DWORD *)v69 + 312))(v69);
            ItemInventory::SetPotionQty((Character *)((char *)v69 + 892), *((char *)v69 + 936));
            ItemInventory::AddGold((Character *)((char *)v69 + 892), 0x200000);
            v75 = (MenuWorldMap *)Character::SG_UnlockAllFastTravels(v69);
            *(_BYTE *)(MenuWorldMap::GetInstance(v75) + 300) = 1;
LABEL_11:
            v10 = *((_DWORD *)this + 13);
            v11 = -1431655765 * ((*((_DWORD *)this + 14) - v10) >> 3);
            if ( v11 )
            {
              v12 = *((_DWORD *)this + 3);
              if ( v12 < v11 )
                Console::LoadQuestSaveFile(this, *(char **)(v10 + 24 * v12 + 20));
            }
            return;
          case 0xE:
            if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
            {
              v64 = PlayerManager::GetLocalPlayerCharacter((PlayerManager *)dword_99F76C);
              v65 = v64;
              if ( v64 )
              {
                NumQuests = Character::SG_GetNumQuests(v64, -1);
                if ( NumQuests )
                {
                  for ( n = 0; n != NumQuests; ++n )
                  {
                    while ( *(int *)Character::SG_GetQuestByID(v65, n, -1) <= 12 )
                    {
                      QuestByID = (Quest *)Character::SG_GetQuestByID(v65, n, -1);
                      Quest::DBG_IncState(QuestByID);
                    }
                  }
                }
              }
            }
            goto LABEL_11;
          default:
            puts("Unknown commands");
            goto LABEL_11;
        }
      }
      if ( *((_DWORD *)this + 3) )
      {
        v63 = (GSConsole *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
        *((_DWORD *)v63 + 57) = *((_DWORD *)this + 3);
        GSConsole::Toggle(v63);
      }
      else
      {
LABEL_20:
        GSConsole::Toggle((GSConsole *)TargetPosition);
      }
      return;
    default:
      return;
  }
}


// ===== 335b14 Console::onEvent(IEvent const*,EventManager const*) =====
int __fastcall Console::onEvent(Console *this, const IEvent *a2, const EventManager *a3)
{
  int result; // r0
  int v6; // r3
  int v7; // r3
  __int16 v8; // r6
  __int16 v9; // r4
  int v10; // r3
  int v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r2
  int MaxNumberOfItem; // r0
  unsigned int v16; // r3
  unsigned int v17; // r2
  int v18; // r3
  unsigned int v19; // r3
  int CurrentLevel; // r0
  int v21; // r1
  int v22; // r3
  int v23; // r0
  int v24; // r2
  __int64 v25; // kr00_8
  unsigned int v26; // r1
  unsigned int v27; // r0
  int v28; // r2
  int v29; // r3

  Console::onEventNotOpened(this, a2, a3);
  if ( !*((_BYTE *)this + 4) )
    return 0;
  if ( !(*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) )
  {
    if ( *((_BYTE *)a2 + 16) )
    {
      switch ( *((_DWORD *)a2 + 3) )
      {
        case 0x30:
        case 0x31:
        case 0x32:
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x38:
        case 0x39:
          if ( !*((_BYTE *)this + 4) )
            return 0;
          Console::_selectItem(this, *((_DWORD *)a2 + 3) - 48);
          return 1;
        case 0x5C:
          CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( !CurrentLevel || *(_DWORD *)(CurrentLevel + 304) != 36 )
            return 1;
          ++*(_DWORD *)(CurrentLevel + 304);
          return 1;
        case 0x5D:
        case 0x5E:
          return 1;
        case 0x87:
          v18 = *((_DWORD *)this + 3);
          if ( !v18 )
            return 1;
          *((_DWORD *)this + 3) = v18 - 1;
          return 1;
        case 0x88:
          ++*((_DWORD *)this + 3);
          MaxNumberOfItem = Console::_getMaxNumberOfItem(this);
          v16 = *((_DWORD *)this + 3);
          v17 = MaxNumberOfItem - 1;
          result = 1;
          if ( v16 > v17 )
            *((_DWORD *)this + 3) = v17;
          else
            *((_DWORD *)this + 3) = v16;
          return result;
        case 0x89:
          v6 = *((_DWORD *)this + 2);
          if ( !v6 )
            return 1;
          *((_DWORD *)this + 2) = v6 - 1;
          goto LABEL_23;
        case 0x8A:
          v19 = *((_DWORD *)this + 2) + 1;
          if ( v19 >= 0x13 )
            v19 = 19;
          *((_DWORD *)this + 3) = 0;
          *((_DWORD *)this + 2) = v19;
          Console::_setMenu(this);
          return 1;
        default:
          return 0;
      }
    }
    return 0;
  }
  if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) == 4 )
  {
    if ( *((_BYTE *)a2 + 16) )
    {
      v7 = *((_DWORD *)this + 35);
      if ( v7 >= 0 )
      {
        if ( v7 != *((_DWORD *)a2 + 3) )
        {
          *((_BYTE *)this + 134) = 0;
          *((_DWORD *)this + 35) = -1;
          GSConsole::Toggle((GSConsole *)byte_4);
          return 1;
        }
        return 1;
      }
      v29 = *((_DWORD *)a2 + 3);
      *((_BYTE *)this + 134) = 1;
      *((_DWORD *)this + 35) = v29;
      *((_WORD *)this + 65) = *((_WORD *)a2 + 4);
      *((_WORD *)this + 66) = *((_WORD *)a2 + 5);
      return 1;
    }
    else
    {
      v14 = *((unsigned __int8 *)this + 134);
      *((_DWORD *)this + 35) = -1;
      if ( !v14 )
        return 1;
      *((_BYTE *)this + 134) = 0;
      Console::_selectItem(this, 1);
      return 1;
    }
  }
  else
  {
    if ( (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2) != 5 )
      return 0;
    *((_BYTE *)this + 134) = 0;
    v8 = *((_WORD *)a2 + 5);
    v9 = *((_WORD *)a2 + 4);
    v10 = (v8 - *((__int16 *)this + 66)) / 16;
    if ( v10 )
    {
      v21 = *((_DWORD *)this + 3);
      *((_WORD *)this + 66) = v8;
      *((_WORD *)this + 65) = v9;
      v22 = v10 + v21;
      if ( v22 <= 0 )
      {
        *((_DWORD *)this + 3) = 0;
        return 1;
      }
      *((_DWORD *)this + 3) = v22;
      v23 = Console::_getMaxNumberOfItem(this);
      v24 = v9 - *((__int16 *)this + 65);
      v25 = 1717986919LL * v24;
      v26 = *((_DWORD *)this + 3);
      v27 = v23 - 1;
      v28 = v24 >> 31;
      if ( v26 > v27 )
        *((_DWORD *)this + 3) = v27;
      else
        *((_DWORD *)this + 3) = v26;
      v11 = (SHIDWORD(v25) >> 4) - v28;
    }
    else
    {
      v11 = (v9 - *((__int16 *)this + 65)) / 40;
    }
    if ( !v11 )
      return 1;
    v12 = *((_DWORD *)this + 2);
    *((_WORD *)this + 66) = v8;
    *((_WORD *)this + 65) = v9;
    v13 = v11 + v12;
    if ( v13 > 0 )
    {
      if ( (unsigned int)v13 >= 0x13 )
        v13 = 19;
      *((_DWORD *)this + 2) = v13;
    }
    else
    {
      *((_DWORD *)this + 2) = 0;
    }
LABEL_23:
    *((_DWORD *)this + 3) = 0;
    Console::_setMenu(this);
    return 1;
  }
}


// ===== 335f94 DebugSwitches::DebugSwitches(void) =====
void __fastcall DebugSwitches::DebugSwitches(DebugSwitches *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_BYTE *)this = 0;
  *((_DWORD *)this + 2) = this;
  *((_DWORD *)this + 3) = this;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 9) = (char *)this + 24;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 8) = (char *)this + 24;
}


// ===== 335fcc DebugSwitches::DebugSwitches(void) =====
void __fastcall DebugSwitches::DebugSwitches(DebugSwitches *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_BYTE *)this = 0;
  *((_DWORD *)this + 2) = this;
  *((_DWORD *)this + 3) = this;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 9) = (char *)this + 24;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 8) = (char *)this + 24;
}


// ===== 336004 std::priv::_Rb_global<bool>::_Rebalance_for_erase(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *&,std::priv::_Rb_tree_node_base *&,std::priv::_Rb_tree_node_base *&) =====
unsigned __int8 *__fastcall std::priv::_Rb_global<bool>::_Rebalance_for_erase(
        unsigned __int8 *a1,
        unsigned __int8 **a2,
        unsigned __int8 **a3,
        unsigned __int8 **a4)
{
  int v4; // r12
  unsigned __int8 *v5; // r5
  int v6; // r4
  int v7; // r12
  int v8; // r3
  int v9; // r3
  int v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r3
  _BYTE *v15; // r2
  _BYTE *v16; // r2
  int v17; // r2
  int v18; // r3
  int v19; // r3
  _BYTE *v20; // r2
  _BYTE *v21; // r2
  _BYTE *v22; // r3
  int v23; // r3
  int v24; // r2
  int v25; // r2
  _BYTE *v26; // r0
  int v27; // r2
  int v28; // r0
  int v29; // r0
  _BYTE *v30; // r3
  int v31; // r3
  int v32; // r2
  int v33; // r2
  int v34; // r6
  int j; // r0
  _BYTE *v36; // r0
  int v37; // r2
  int v38; // r0
  int v39; // r0
  int i; // r7

  v4 = *((_DWORD *)a1 + 2);
  if ( !v4 )
  {
    v4 = *((_DWORD *)a1 + 3);
LABEL_84:
    v6 = v4;
    v5 = a1;
LABEL_85:
    v7 = *((_DWORD *)v5 + 1);
    if ( v6 )
      *(_DWORD *)(v6 + 4) = v7;
    if ( *a2 == a1 )
    {
      *a2 = (unsigned __int8 *)v6;
    }
    else
    {
      v34 = *((_DWORD *)a1 + 1);
      if ( *(unsigned __int8 **)(v34 + 8) == a1 )
        *(_DWORD *)(v34 + 8) = v6;
      else
        *(_DWORD *)(v34 + 12) = v6;
    }
    if ( *a3 == a1 )
    {
      if ( *((_DWORD *)a1 + 3) )
      {
        for ( i = v6; *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
          ;
        *a3 = (unsigned __int8 *)i;
      }
      else
      {
        *a3 = *((unsigned __int8 **)a1 + 1);
      }
    }
    if ( *a4 == a1 )
    {
      if ( *((_DWORD *)a1 + 2) )
      {
        for ( j = v6; *(_DWORD *)(j + 12); j = *(_DWORD *)(j + 12) )
          ;
        *a4 = (unsigned __int8 *)j;
        v9 = *v5;
      }
      else
      {
        *a4 = *((unsigned __int8 **)a1 + 1);
        v9 = *v5;
      }
    }
    else
    {
      v9 = *v5;
    }
    goto LABEL_18;
  }
  v5 = *((unsigned __int8 **)a1 + 3);
  if ( !v5 )
    goto LABEL_84;
  while ( *((_DWORD *)v5 + 2) )
    v5 = *((unsigned __int8 **)v5 + 2);
  v6 = *((_DWORD *)v5 + 3);
  if ( a1 == v5 )
    goto LABEL_85;
  *(_DWORD *)(v4 + 4) = v5;
  *((_DWORD *)v5 + 2) = *((_DWORD *)a1 + 2);
  v7 = *((_DWORD *)a1 + 3);
  if ( (unsigned __int8 *)v7 != v5 )
  {
    v7 = *((_DWORD *)v5 + 1);
    if ( v6 )
      *(_DWORD *)(v6 + 4) = v7;
    *(_DWORD *)(*((_DWORD *)v5 + 1) + 8) = v6;
    *((_DWORD *)v5 + 3) = *((_DWORD *)a1 + 3);
    *(_DWORD *)(*((_DWORD *)a1 + 3) + 4) = v5;
  }
  if ( *a2 == a1 )
  {
    *a2 = v5;
  }
  else
  {
    v8 = *((_DWORD *)a1 + 1);
    if ( *(unsigned __int8 **)(v8 + 8) == a1 )
      *(_DWORD *)(v8 + 8) = v5;
    else
      *(_DWORD *)(v8 + 12) = v5;
  }
  v9 = *v5;
  *((_DWORD *)v5 + 1) = *((_DWORD *)a1 + 1);
  *v5 = *a1;
  *a1 = v9;
  v5 = a1;
LABEL_18:
  if ( v9 )
  {
    while ( *a2 != (unsigned __int8 *)v6 )
    {
      if ( v6 && !*(_BYTE *)v6 )
        goto LABEL_22;
      v11 = *(_DWORD *)(v7 + 8);
      if ( v11 == v6 )
      {
        v11 = *(_DWORD *)(v7 + 12);
        if ( !*(_BYTE *)v11 )
        {
          *(_BYTE *)v11 = 1;
          v17 = *(_DWORD *)(v7 + 12);
          *(_BYTE *)v7 = 0;
          *(_DWORD *)(v7 + 12) = *(_DWORD *)(v17 + 8);
          v18 = *(_DWORD *)(v17 + 8);
          if ( v18 )
            *(_DWORD *)(v18 + 4) = v7;
          *(_DWORD *)(v17 + 4) = *(_DWORD *)(v7 + 4);
          if ( (unsigned __int8 *)v7 == *a2 )
          {
            *a2 = (unsigned __int8 *)v17;
          }
          else
          {
            v19 = *(_DWORD *)(v7 + 4);
            if ( v7 == *(_DWORD *)(v19 + 8) )
              *(_DWORD *)(v19 + 8) = v17;
            else
              *(_DWORD *)(v19 + 12) = v17;
          }
          *(_DWORD *)(v17 + 8) = v7;
          v11 = *(_DWORD *)(v7 + 12);
          *(_DWORD *)(v7 + 4) = v17;
        }
        v20 = *(_BYTE **)(v11 + 8);
        if ( v20 && !*v20 )
        {
          v36 = *(_BYTE **)(v11 + 12);
          if ( !v36 || *v36 )
          {
            *v20 = 1;
            v37 = *(_DWORD *)(v11 + 8);
            *(_BYTE *)v11 = 0;
            *(_DWORD *)(v11 + 8) = *(_DWORD *)(v37 + 12);
            v38 = *(_DWORD *)(v37 + 12);
            if ( v38 )
              *(_DWORD *)(v38 + 4) = v11;
            *(_DWORD *)(v37 + 4) = *(_DWORD *)(v11 + 4);
            if ( (unsigned __int8 *)v11 == *a2 )
            {
              *a2 = (unsigned __int8 *)v37;
            }
            else
            {
              v39 = *(_DWORD *)(v11 + 4);
              if ( v11 == *(_DWORD *)(v39 + 12) )
                *(_DWORD *)(v39 + 12) = v37;
              else
                *(_DWORD *)(v39 + 8) = v37;
            }
            *(_DWORD *)(v37 + 12) = v11;
            *(_DWORD *)(v11 + 4) = v37;
            v11 = *(_DWORD *)(v7 + 12);
          }
LABEL_52:
          *(_BYTE *)v11 = *(_BYTE *)v7;
          *(_BYTE *)v7 = 1;
          v22 = *(_BYTE **)(v11 + 12);
          if ( v22 )
            *v22 = 1;
          v23 = *(_DWORD *)(v7 + 12);
          *(_DWORD *)(v7 + 12) = *(_DWORD *)(v23 + 8);
          v24 = *(_DWORD *)(v23 + 8);
          if ( v24 )
            *(_DWORD *)(v24 + 4) = v7;
          *(_DWORD *)(v23 + 4) = *(_DWORD *)(v7 + 4);
          if ( (unsigned __int8 *)v7 == *a2 )
          {
            *a2 = (unsigned __int8 *)v23;
          }
          else
          {
            v25 = *(_DWORD *)(v7 + 4);
            if ( v7 == *(_DWORD *)(v25 + 8) )
              *(_DWORD *)(v25 + 8) = v23;
            else
              *(_DWORD *)(v25 + 12) = v23;
          }
          *(_DWORD *)(v23 + 8) = v7;
          *(_DWORD *)(v7 + 4) = v23;
          break;
        }
        v21 = *(_BYTE **)(v11 + 12);
        if ( v21 && !*v21 )
          goto LABEL_52;
      }
      else
      {
        if ( !*(_BYTE *)v11 )
        {
          *(_BYTE *)v11 = 1;
          v12 = *(_DWORD *)(v7 + 8);
          *(_BYTE *)v7 = 0;
          *(_DWORD *)(v7 + 8) = *(_DWORD *)(v12 + 12);
          v13 = *(_DWORD *)(v12 + 12);
          if ( v13 )
            *(_DWORD *)(v13 + 4) = v7;
          *(_DWORD *)(v12 + 4) = *(_DWORD *)(v7 + 4);
          if ( (unsigned __int8 *)v7 == *a2 )
          {
            *a2 = (unsigned __int8 *)v12;
          }
          else
          {
            v14 = *(_DWORD *)(v7 + 4);
            if ( v7 == *(_DWORD *)(v14 + 12) )
              *(_DWORD *)(v14 + 12) = v12;
            else
              *(_DWORD *)(v14 + 8) = v12;
          }
          *(_DWORD *)(v12 + 12) = v7;
          v11 = *(_DWORD *)(v7 + 8);
          *(_DWORD *)(v7 + 4) = v12;
        }
        v15 = *(_BYTE **)(v11 + 12);
        if ( v15 && !*v15 )
        {
          v26 = *(_BYTE **)(v11 + 8);
          if ( !v26 || *v26 )
          {
            *v15 = 1;
            v27 = *(_DWORD *)(v11 + 12);
            *(_BYTE *)v11 = 0;
            *(_DWORD *)(v11 + 12) = *(_DWORD *)(v27 + 8);
            v28 = *(_DWORD *)(v27 + 8);
            if ( v28 )
              *(_DWORD *)(v28 + 4) = v11;
            *(_DWORD *)(v27 + 4) = *(_DWORD *)(v11 + 4);
            if ( (unsigned __int8 *)v11 == *a2 )
            {
              *a2 = (unsigned __int8 *)v27;
            }
            else
            {
              v29 = *(_DWORD *)(v11 + 4);
              if ( v11 == *(_DWORD *)(v29 + 8) )
                *(_DWORD *)(v29 + 8) = v27;
              else
                *(_DWORD *)(v29 + 12) = v27;
            }
            *(_DWORD *)(v27 + 8) = v11;
            *(_DWORD *)(v11 + 4) = v27;
            v11 = *(_DWORD *)(v7 + 8);
          }
LABEL_72:
          *(_BYTE *)v11 = *(_BYTE *)v7;
          *(_BYTE *)v7 = 1;
          v30 = *(_BYTE **)(v11 + 8);
          if ( v30 )
            *v30 = 1;
          v31 = *(_DWORD *)(v7 + 8);
          *(_DWORD *)(v7 + 8) = *(_DWORD *)(v31 + 12);
          v32 = *(_DWORD *)(v31 + 12);
          if ( v32 )
            *(_DWORD *)(v32 + 4) = v7;
          *(_DWORD *)(v31 + 4) = *(_DWORD *)(v7 + 4);
          if ( (unsigned __int8 *)v7 == *a2 )
          {
            *a2 = (unsigned __int8 *)v31;
          }
          else
          {
            v33 = *(_DWORD *)(v7 + 4);
            if ( v7 == *(_DWORD *)(v33 + 12) )
              *(_DWORD *)(v33 + 12) = v31;
            else
              *(_DWORD *)(v33 + 8) = v31;
          }
          *(_DWORD *)(v31 + 12) = v7;
          *(_DWORD *)(v7 + 4) = v31;
          break;
        }
        v16 = *(_BYTE **)(v11 + 8);
        if ( v16 && !*v16 )
          goto LABEL_72;
      }
      *(_BYTE *)v11 = 0;
      v6 = v7;
      v7 = *(_DWORD *)(v7 + 4);
    }
    if ( v6 )
LABEL_22:
      *(_BYTE *)v6 = 1;
  }
  return v5;
}


// ===== 3364ec StreamReader::readAs<int>(IStreamBase *) =====
int __fastcall StreamReader::readAs<int>(int a1)
{
  int v1; // r1
  int v3; // [sp+Ch] [bp-8h] BYREF

  if ( (*(int (__fastcall **)(int, int *, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, &v3, 4, 0) != 4 || v1 )
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
  return v3;
}


// ===== 3365a4 StreamReader::readAs<uchar>(IStreamBase *) =====
int __fastcall StreamReader::readAs<unsigned char>(int a1)
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


// ===== 33665c StreamReader::writeAs<int>(IStreamBase *,int) =====
int __fastcall StreamReader::writeAs<int>(int a1, int a2)
{
  int result; // r0
  int v3; // r1
  int v4; // [sp+Ch] [bp-8h] BYREF

  v4 = a2;
  result = (*(int (__fastcall **)(int, int *, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, &v4, 4, 0);
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
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h",
               116);
    }
  }
  return result;
}


// ===== 336718 StreamReader::writeAs<uchar>(IStreamBase *,uchar) =====
int __fastcall StreamReader::writeAs<unsigned char>(int a1, char a2)
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


// ===== 3367d4 `global constructor keyed to'.._.._sources_Core_Console_DebugSwitches.cpp =====
int `global constructor keyed to'.._.._sources_Core_Console_DebugSwitches.cpp()
{
  int result; // r0

  dword_9A1D14 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1D10 = 1056964608;
  DebugSwitches::DebugSwitches((DebugSwitches *)&DebugSwitches::s_inst);
  result = _aeabi_atexit((int)&DebugSwitches::s_inst, (int)DebugSwitches::~DebugSwitches, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 33688c DebugSwitches::~DebugSwitches() =====
void __fastcall DebugSwitches::~DebugSwitches(DebugSwitches *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 10) )
  {
    v2 = (char *)this + 24;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
      (int)this + 24,
      *((_DWORD *)this + 7));
    *((_DWORD *)this + 9) = v2;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = v2;
    *((_DWORD *)this + 7) = 0;
  }
  if ( *((_DWORD *)this + 4) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
      (int)this,
      *((_DWORD *)this + 1));
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = this;
    *((_DWORD *)this + 3) = this;
  }
}


// ===== 3368f4 DebugSwitches::~DebugSwitches() =====
void __fastcall DebugSwitches::~DebugSwitches(DebugSwitches *this)
{
  char *v2; // r5

  if ( *((_DWORD *)this + 10) )
  {
    v2 = (char *)this + 24;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
      (int)this + 24,
      *((_DWORD *)this + 7));
    *((_DWORD *)this + 9) = v2;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = v2;
    *((_DWORD *)this + 7) = 0;
  }
  if ( *((_DWORD *)this + 4) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_erase(
      (int)this,
      *((_DWORD *)this + 1));
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = this;
    *((_DWORD *)this + 3) = this;
  }
}


// ===== 33695c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::erase(std::priv::_Rb_tree_iterator<std::pair<std::string const,bool>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>>) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r5

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  std::string::~string((std::string *)(v3 + 16));
  if ( v3 )
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x2Cu);
  --*(_DWORD *)(a1 + 16);
}


// ===== 3369a8 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_find<std::string>(std::string const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_find<std::string>(
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


// ===== 336a7c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::string const,bool> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = std::less<std::string>::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_create_node(
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


// ===== 336b6c std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(std::pair<std::string const,bool> const&) =====
int __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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


// ===== 336d84 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::string const,bool>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>>,std::pair<std::string const,bool> const&) =====
char **__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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
        std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(
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
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_insert(
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


// ===== 337288 std::map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string const,bool>>>::operator[]<std::string>(std::string const&) =====
char *__fastcall std::map<std::string,bool>::operator[]<std::string>(int a1, int a2)
{
  int v2; // r4
  const char *v4; // r11
  _BYTE *v5; // r10
  int v6; // r8
  int v7; // r7
  const void *v8; // r3
  int v9; // r6
  size_t v10; // r2
  int v11; // r0
  int v12; // r3
  const void *v13; // r3
  int v14; // r7
  size_t v15; // r2
  int v16; // r0
  bool v17; // zf
  bool v18; // nf
  char *v19; // r0
  char *v20; // r4
  char *v22; // [sp+8h] [bp-2Ch] BYREF
  char *v23; // [sp+Ch] [bp-28h] BYREF
  std::string v24; // [sp+10h] [bp-24h] BYREF
  char v25; // [sp+28h] [bp-Ch]

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 )
  {
    v4 = *(const char **)(a2 + 16);
    v5 = *(_BYTE **)(a2 + 20);
    v6 = a1;
    v7 = v4 - v5;
    while ( 1 )
    {
      v8 = *(const void **)(v2 + 36);
      v9 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      if ( v7 >= v9 )
        v10 = *(_DWORD *)(v2 + 32) - (_DWORD)v8;
      else
        v10 = v4 - v5;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_8:
          v12 = *(_DWORD *)(v2 + 8);
          if ( !v12 )
            goto LABEL_12;
          goto LABEL_9;
        }
      }
      else if ( v9 >= v7 )
      {
        goto LABEL_8;
      }
      v12 = *(_DWORD *)(v2 + 12);
      v2 = v6;
      if ( !v12 )
        goto LABEL_12;
LABEL_9:
      v6 = v2;
      v2 = v12;
    }
  }
  v4 = *(const char **)(a2 + 16);
  v5 = *(_BYTE **)(a2 + 20);
  v2 = a1;
LABEL_12:
  if ( a1 == v2 )
    goto LABEL_19;
  v13 = *(const void **)(v2 + 36);
  v14 = *(_DWORD *)(v2 + 32) - (_DWORD)v13;
  if ( v14 >= v4 - v5 )
    v15 = v4 - v5;
  else
    v15 = *(_DWORD *)(v2 + 32) - (_DWORD)v13;
  v16 = memcmp(v5, v13, v15);
  v17 = v16 == 0;
  v18 = v16 < 0;
  v19 = (char *)v2;
  if ( !v17 )
  {
    if ( !v18 )
      return v19 + 40;
    goto LABEL_19;
  }
  if ( v4 - v5 < v14 )
  {
LABEL_19:
    v24._M_finish = (char *)&v24;
    v24._M_start_of_storage._M_data = (char *)&v24;
    std::string::_M_range_initialize(&v24, v5, v4);
    v25 = 0;
    v22 = (char *)v2;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::insert_unique(
      &v23,
      (char *)a1,
      &v22,
      (int)&v24);
    v20 = v23;
    std::string::~string(&v24);
    v19 = v20;
  }
  return v19 + 40;
}


// ===== 337404 DebugSwitches::SetModule(std::string const&,bool) =====
char *__fastcall DebugSwitches::SetModule(DebugSwitches *this, const std::string *a2, int a3)
{
  char *v3; // r7
  char *result; // r0
  int v8; // r5
  std::string v9; // [sp+4h] [bp-1Ch] BYREF

  v3 = (char *)this + 24;
  result = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_find<std::string>(
                     (_DWORD *)this + 6,
                     (int)a2);
  v8 = (int)result;
  if ( result == v3 )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v9, "isTracingDebugSwitches");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
    std::string::~string(&v9);
    result = std::map<std::string,bool>::operator[]<std::string>(v8, (int)a2);
    *result = 1;
  }
  else if ( (unsigned __int8)result[40] != a3 )
  {
    result[40] = a3;
    return (char *)DebugSwitches::save(this);
  }
  return result;
}


// ===== 3374e4 DebugSwitches::_loadSwitches(IFileStream *) =====
void __fastcall DebugSwitches::_loadSwitches(DebugSwitches *this, IFileStream *a2)
{
  __int64 v4; // r8
  void (__fastcall *v5)(IFileStream *, _DWORD, _DWORD, _DWORD); // r7
  __int64 v6; // r0
  int v7; // r0
  int v8; // r10
  int i; // r9
  int v10; // r4
  int v11; // r2
  int v12; // r9
  int v13; // r7
  bool v14; // r2
  unsigned __int64 v15; // [sp+0h] [bp-1DCh]
  int v16; // [sp+Ch] [bp-1D0h]
  DebugSwitches *v17; // [sp+20h] [bp-1BCh]
  char v18[256]; // [sp+44h] [bp-198h] BYREF
  std::string v19; // [sp+144h] [bp-98h] BYREF
  std::string v20; // [sp+15Ch] [bp-80h] BYREF
  std::string v21; // [sp+174h] [bp-68h] BYREF
  std::string v22; // [sp+18Ch] [bp-50h] BYREF
  std::string v23; // [sp+1A4h] [bp-38h] BYREF
  std::string v24; // [sp+1BCh] [bp-20h] BYREF

  if ( a2 )
  {
    v4 = ((__int64 (__fastcall *)(IFileStream *))*(_DWORD *)(*(_DWORD *)a2 + 8))(a2);
    if ( (unsigned __int64)(v4 - ((__int64 (__fastcall *)(IFileStream *))*(_DWORD *)(*(_DWORD *)a2 + 36))(a2)) > 0xB )
    {
      if ( StreamReader::readAs<int>((int)a2) != 1145197399 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v19, "isTracingDebugSwitchesFile");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v19);
        std::string::~string(&v19);
        v5 = *(void (__fastcall **)(IFileStream *, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 32);
        v6 = ((__int64 (__fastcall *)(IFileStream *))*(_DWORD *)(*(_DWORD *)a2 + 36))(a2);
        v5(a2, HIDWORD(v6), v6 - 4, (unsigned __int64)(v6 - 4) >> 32);
        return;
      }
      v7 = StreamReader::readAs<int>((int)a2);
      if ( v7 >= 0x20000 )
      {
        v8 = StreamReader::readAs<int>((int)a2);
        if ( v8 > 0 )
        {
          for ( i = 0; i != v8; ++i )
          {
            StreamReader::readString(a2, (IStreamBase *)v18, (unsigned int)&elf_hash_bucket[8] + 3, v15);
            v10 = StreamReader::readAs<unsigned char>((int)a2);
            std::string::string(&v24, v18);
            v11 = v10;
            if ( v10 )
              v11 = 1;
            DebugSwitches::SetModule(this, &v24, v11);
            std::string::~string(&v24);
          }
        }
      }
      else if ( v7 < 0x10000 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v21, "isTracingDebugSwitchesFile");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v21);
        std::string::~string(&v21);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v20, "isTracingDebugSwitchesFile");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v20);
        std::string::~string(&v20);
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
        }
        else if ( gAssertLevel == 1 )
        {
          fprintf(
            (FILE *)&_sF + 2,
            "ASSERT(%s) FAILED: %s:%d\n",
            "!\"INVALID SAVEGAME VERSION FOR THE DEBUG SWITCHES\"",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Console\\DebugSwitches.cpp",
            269);
        }
        return;
      }
      v16 = StreamReader::readAs<int>((int)a2);
      if ( v16 > 0 )
      {
        v12 = 0;
        v17 = this;
        do
        {
          StreamReader::readString(a2, (IStreamBase *)v18, (unsigned int)&elf_hash_bucket[8] + 3, v15);
          v13 = StreamReader::readAs<unsigned char>((int)a2);
          ++v12;
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string(&v23, "isTracingDebugSwitchesFile");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v23);
          std::string::~string(&v23);
          std::string::string(&v22, v18);
          v14 = v13;
          if ( v13 )
            v14 = 1;
          DebugSwitches::SetSwitch(v17, &v22, v14);
          std::string::~string(&v22);
        }
        while ( v12 != v16 );
      }
    }
  }
}


// ===== 337888 DebugSwitches::load(void) =====
void __fastcall DebugSwitches::load(DebugSwitches *this)
{
  int v2; // r5
  IFileStream *v3; // r1
  IFileStream *v4; // [sp+4h] [bp-94h] BYREF
  std::string v5; // [sp+1Ch] [bp-7Ch] BYREF
  std::string v6; // [sp+34h] [bp-64h] BYREF
  std::string v7; // [sp+4Ch] [bp-4Ch] BYREF
  std::string v8; // [sp+64h] [bp-34h] BYREF
  std::string v9; // [sp+7Ch] [bp-1Ch] BYREF

  if ( !DebugSwitches::s_loaded )
  {
    DebugSwitches::s_loaded = 1;
    v2 = *(_DWORD *)(dword_99F73C + 52);
    if ( v2 )
    {
      v3 = (IFileStream *)(*(int (__fastcall **)(_DWORD, const char *))(*(_DWORD *)v2 + 148))(
                            *(_DWORD *)(dword_99F73C + 52),
                            "DebugSwitches.savegame");
      v4 = v3;
      if ( v3 )
      {
        DebugSwitches::_loadSwitches(this, v3);
        (*(void (__fastcall **)(int, IFileStream **))(*(_DWORD *)v2 + 120))(v2, &v4);
      }
    }
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v9, "IsDeactivatingFlashMenus");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9, 0);
    std::string::~string(&v9);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v8, "IsDeactivatingFlashMenusUpdate");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8, 0);
    std::string::~string(&v8);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v7, "IsDeactivatingFlashMenusRender");
    DebugSwitches::SetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7, 0);
    std::string::~string(&v7);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v6, "ConnectToAlphaServer");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
    std::string::~string(&v6);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v5, "ConnectToBetaServer");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
    std::string::~string(&v5);
  }
}


// ===== 337a88 DebugSwitches::GetSwitch(std::string const&) =====
int __fastcall DebugSwitches::GetSwitch(DebugSwitches *this, const std::string *a2)
{
  DebugSwitches *v4; // r0
  std::string v6; // [sp+4h] [bp-20h] BYREF

  v4 = (DebugSwitches *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_find<std::string>(
                          this,
                          (int)a2);
  if ( this == v4 )
  {
    *std::map<std::string,bool>::operator[]<std::string>((int)v4, (int)a2) = 0;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v6, "isTracingDebugSwitches");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
    std::string::~string(&v6);
  }
  return (unsigned __int8)*std::map<std::string,bool>::operator[]<std::string>((int)this, (int)a2);
}


// ===== 337b4c DebugSwitches::_saveSwitches(IFileStream *) =====
int __fastcall DebugSwitches::_saveSwitches(int this, IFileStream *a2)
{
  _DWORD *v3; // r8
  int v4; // r4
  int v5; // r2
  int i; // r4
  int v7; // r2
  int v8; // r3
  int v9; // r3
  unsigned __int64 v10; // [sp+0h] [bp-2Ch]
  std::string v11; // [sp+Ch] [bp-20h] BYREF

  HIDWORD(v10) = 16556;
  v3 = (_DWORD *)this;
  if ( a2 )
  {
    StreamReader::writeAs<int>((int)a2, 1145197399);
    StreamReader::writeAs<int>((int)a2, 0x20000);
    StreamReader::writeAs<int>((int)a2, v3[10]);
    v4 = v3[8];
    if ( (_DWORD *)v4 != v3 + 6 )
    {
      do
      {
        StreamReader::writeString(
          a2,
          *(IStreamBase **)(v4 + 36),
          (const char *)(*(_DWORD *)(v4 + 32) - *(_DWORD *)(v4 + 36)),
          0,
          v10);
        StreamReader::writeAs<unsigned char>((int)a2, *(_BYTE *)(v4 + 40));
        v5 = *(_DWORD *)(v4 + 12);
        if ( v5 )
        {
          while ( *(_DWORD *)(v5 + 8) )
            v5 = *(_DWORD *)(v5 + 8);
          v4 = v5;
        }
        else
        {
          v8 = *(_DWORD *)(v4 + 4);
          if ( v4 == *(_DWORD *)(v8 + 12) )
          {
            do
            {
              v4 = v8;
              v8 = *(_DWORD *)(v8 + 4);
            }
            while ( *(_DWORD *)(v8 + 12) == v4 );
            v5 = *(_DWORD *)(v4 + 12);
          }
          if ( v8 != v5 )
            v4 = v8;
        }
      }
      while ( v3 + 6 != (_DWORD *)v4 );
    }
    this = StreamReader::writeAs<int>((int)a2, v3[4]);
    i = v3[2];
    while ( (_DWORD *)i != v3 )
    {
      while ( 1 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string(&v11, "isTracingDebugSwitchesFile");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
        std::string::~string(&v11);
        StreamReader::writeString(
          a2,
          *(IStreamBase **)(i + 36),
          (const char *)(*(_DWORD *)(i + 32) - *(_DWORD *)(i + 36)),
          0,
          v10);
        this = StreamReader::writeAs<unsigned char>((int)a2, *(_BYTE *)(i + 40));
        v7 = *(_DWORD *)(i + 12);
        if ( !v7 )
          break;
        for ( i = *(_DWORD *)(i + 12); *(_DWORD *)(i + 8); i = *(_DWORD *)(i + 8) )
          ;
        if ( (_DWORD *)i == v3 )
          return this;
      }
      v9 = *(_DWORD *)(i + 4);
      if ( *(_DWORD *)(v9 + 12) == i )
      {
        do
        {
          i = v9;
          v9 = *(_DWORD *)(v9 + 4);
        }
        while ( *(_DWORD *)(v9 + 12) == i );
        v7 = *(_DWORD *)(i + 12);
      }
      if ( v9 != v7 )
        i = v9;
    }
  }
  return this;
}


// ===== 337d54 DebugSwitches::save(void) =====
IFileStream *__fastcall DebugSwitches::save(IFileStream *this)
{
  int v1; // r5
  int v2; // r4
  IFileStream *v3; // [sp+4h] [bp-4h] BYREF

  v1 = (int)this;
  v2 = *(_DWORD *)(dword_99F73C + 52);
  if ( v2 )
  {
    this = (IFileStream *)(*(int (__fastcall **)(_DWORD, const char *, int))(*(_DWORD *)v2 + 148))(
                            *(_DWORD *)(dword_99F73C + 52),
                            "DebugSwitches.savegame",
                            1);
    if ( this )
    {
      v3 = this;
      DebugSwitches::_saveSwitches(v1, this);
      return (IFileStream *)(*(int (__fastcall **)(int, IFileStream **))(*(_DWORD *)v2 + 120))(v2, &v3);
    }
  }
  return this;
}


// ===== 337ddc DebugSwitches::SetSwitch(std::string const&,bool) =====
char *__fastcall DebugSwitches::SetSwitch(DebugSwitches *this, const std::string *a2, int a3)
{
  char *result; // r0
  std::string v7; // [sp+4h] [bp-1Ch] BYREF

  if ( this == (DebugSwitches *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_find<std::string>(
                                  this,
                                  (int)a2) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v7, "isTracingDebugSwitches");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
    std::string::~string(&v7);
    *std::map<std::string,bool>::operator[]<std::string>((int)this, (int)a2) = 0;
  }
  result = std::map<std::string,bool>::operator[]<std::string>((int)this, (int)a2);
  if ( (unsigned __int8)*result != a3 )
  {
    *std::map<std::string,bool>::operator[]<std::string>((int)this, (int)a2) = a3;
    return (char *)DebugSwitches::save(this);
  }
  return result;
}


// ===== 337ec8 DebugSwitches::GetModule(std::string const&) =====
int __fastcall DebugSwitches::GetModule(DebugSwitches *this, const std::string *a2)
{
  char *v2; // r8
  char *v4; // r0
  int v5; // r6
  std::string v7; // [sp+4h] [bp-20h] BYREF

  v2 = (char *)this + 24;
  v4 = (char *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_find<std::string>(
                 (_DWORD *)this + 6,
                 (int)a2);
  v5 = (int)v4;
  if ( v4 != v2 )
    return (unsigned __int8)v4[40];
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v7, "isTracingDebugSwitches");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
  std::string::~string(&v7);
  *std::map<std::string,bool>::operator[]<std::string>(v5, (int)a2) = 1;
  return 1;
}


// ===== 337f90 DebugSwitches::DelSwitch(std::string const&) =====
void __fastcall DebugSwitches::DelSwitch(DebugSwitches *this, const std::string *a2)
{
  unsigned __int8 *v4; // r0
  int v5; // r6
  unsigned __int8 *v6; // [sp+4h] [bp-28h] BYREF
  std::string v7; // [sp+Ch] [bp-20h] BYREF

  v4 = (unsigned __int8 *)std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::_M_find<std::string>(
                            this,
                            (int)a2);
  v5 = (int)v4;
  if ( v4 == (unsigned __int8 *)this )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v7, "isTracingDebugSwitches");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v7);
    std::string::~string(&v7);
    *std::map<std::string,bool>::operator[]<std::string>(v5, (int)a2) = 0;
  }
  else
  {
    v6 = v4;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,bool>,std::priv::_Select1st<std::pair<std::string const,bool>>,std::priv::_MapTraitsT<std::pair<std::string const,bool>>,std::allocator<std::pair<std::string const,bool>>>::erase(
      (int)this,
      &v6);
  }
}


// ===== 33805c EventManager::EventManager(void) =====
void __fastcall EventManager::EventManager(EventManager *this)
{
  *(_DWORD *)this = off_95C360;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_DWORD *)this + 11) = (char *)this + 40;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 9) = (char *)this + 32;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 8) = (char *)this + 32;
  *((_DWORD *)this + 10) = (char *)this + 40;
}


// ===== 3380bc EventManager::EventManager(void) =====
void __fastcall EventManager::EventManager(EventManager *this)
{
  *(_DWORD *)this = off_95C360;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 5) = (char *)this + 8;
  *((_DWORD *)this + 11) = (char *)this + 40;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 9) = (char *)this + 32;
  *((_DWORD *)this + 4) = (char *)this + 8;
  *((_DWORD *)this + 8) = (char *)this + 32;
  *((_DWORD *)this + 10) = (char *)this + 40;
}


// ===== 33811c EventManager::Detach(int,IEventReceiver *) =====
int __fastcall EventManager::Detach(EventManager *this, int a2, IEventReceiver *a3)
{
  char *v3; // r3
  char *v4; // r0
  char *v5; // r4
  int v6; // r12
  bool v7; // cc
  char *v8; // r12
  IEventReceiver **i; // r0
  IEventReceiver **v10; // r3
  IEventReceiver **v11; // t1
  IEventReceiver *v13; // r3
  IEventReceiver **v14; // r2

  v3 = *((char **)this + 3);
  v4 = (char *)this + 8;
  if ( !v3 )
    goto LABEL_19;
  v5 = v4;
  while ( 1 )
  {
    v6 = *((_DWORD *)v3 + 4);
    v7 = v6 < a2;
    v8 = v6 >= a2 ? *((char **)v3 + 2) : *((char **)v3 + 3);
    if ( v7 )
      v3 = v5;
    v5 = v3;
    if ( !v8 )
      break;
    v3 = v8;
  }
  if ( v4 == v3 )
    return 0;
  if ( *((_DWORD *)v3 + 4) > a2 )
LABEL_19:
    v3 = v4;
  if ( v4 != v3 )
  {
    v11 = *((IEventReceiver ***)v3 + 5);
    v10 = (IEventReceiver **)(v3 + 20);
    for ( i = v11; v10 != i; i = (IEventReceiver **)*i )
    {
      if ( i[2] == a3 )
      {
        v13 = *i;
        v14 = (IEventReceiver **)i[1];
        *v14 = *i;
        *((_DWORD *)v13 + 1) = v14;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(i, 0x14u);
        return 1;
      }
    }
  }
  return 0;
}


// ===== 3381c8 `global constructor keyed to'.._.._sources_Core_EventManager_EventManager.cpp =====
int `global constructor keyed to'.._.._sources_Core_EventManager_EventManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A1D54 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1D50 = 1056964608;
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


// ===== 3382a4 EventManager::DelayedDetach(int,IEventReceiver *) =====
int __fastcall EventManager::DelayedDetach(EventManager *this, int a2, IEventReceiver *a3)
{
  char *v3; // r4
  char *v5; // r12
  char *v6; // r0
  int v7; // r3
  bool v8; // cc
  char *v9; // r3
  char *i; // r6
  _DWORD *v12; // r0
  _DWORD *v13; // r3
  size_t v14; // [sp+4h] [bp-4h] BYREF

  v3 = *((char **)this + 3);
  v5 = (char *)this + 8;
  if ( !v3 )
    goto LABEL_19;
  v6 = (char *)this + 8;
  while ( 1 )
  {
    v7 = *((_DWORD *)v3 + 4);
    v8 = v7 < a2;
    v9 = v7 >= a2 ? *((char **)v3 + 2) : *((char **)v3 + 3);
    if ( v8 )
      v3 = v6;
    v6 = v3;
    if ( !v9 )
      break;
    v3 = v9;
  }
  if ( v5 == v3 )
    return 0;
  if ( *((_DWORD *)v3 + 4) > a2 )
LABEL_19:
    v3 = v5;
  if ( v5 != v3 )
  {
    for ( i = *((char **)v3 + 5); v3 + 20 != i; i = *(char **)i )
    {
      if ( *((IEventReceiver **)i + 2) == a3 )
      {
        v14 = 16;
        v12 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v14);
        v12[2] = v3;
        v12[3] = i;
        v13 = *((_DWORD **)this + 11);
        *v12 = (char *)this + 40;
        v12[1] = v13;
        *v13 = v12;
        *((_DWORD *)this + 11) = v12;
        return 1;
      }
    }
  }
  return 0;
}


// ===== 338374 std::priv::_List_base<IEvent const*,std::allocator<IEvent const*>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<IEvent const*,std::allocator<IEvent const*>>::clear(_DWORD *a1)
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


// ===== 3383b4 std::priv::_List_base<EventManager::DelayedDetachInfo,std::allocator<EventManager::DelayedDetachInfo>>::clear(void) =====
_DWORD *__fastcall std::priv::_List_base<EventManager::DelayedDetachInfo,std::allocator<EventManager::DelayedDetachInfo>>::clear(
        _DWORD *a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r4

  result = (_DWORD *)*a1;
  if ( result != a1 )
  {
    while ( 1 )
    {
      v3 = (_DWORD *)*result;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0x10u);
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


// ===== 3383f4 EventManager::DropDelayedDetach(void) =====
_DWORD *__fastcall EventManager::DropDelayedDetach(EventManager *this)
{
  _DWORD *i; // r4
  _DWORD *v2; // r5
  int *v3; // r0
  int v4; // r3
  int *v5; // r2

  v2 = (_DWORD *)((char *)this + 40);
  for ( i = *((_DWORD **)this + 10); v2 != i; i = (_DWORD *)*i )
  {
    v3 = (int *)i[3];
    v4 = *v3;
    v5 = (int *)v3[1];
    *v5 = *v3;
    *(_DWORD *)(v4 + 4) = v5;
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x14u);
  }
  return std::priv::_List_base<EventManager::DelayedDetachInfo,std::allocator<EventManager::DelayedDetachInfo>>::clear(v2);
}


// ===== 338438 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_erase(
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
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(i, 0x14u);
          if ( v8 == v5 )
            break;
        }
        v4 = v2 + 5;
      }
      v2[6] = v4;
      *v5 = v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x1Cu);
      v2 = v6;
    }
    while ( v6 );
  }
}


// ===== 3384ac EventManager::Flush(void) =====
int __fastcall EventManager::Flush(EventManager *this)
{
  std::priv::_List_base<IEvent const*,std::allocator<IEvent const*>>::clear((char *)this + 32);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_erase(
      (char *)this + 8,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
  return std::priv::_List_base<EventManager::DelayedDetachInfo,std::allocator<EventManager::DelayedDetachInfo>>::clear((char *)this + 40);
}


// ===== 3384f8 EventManager::~EventManager() =====
void __fastcall EventManager::~EventManager(EventManager *this)
{
  _DWORD *v2; // r5

  *(_DWORD *)this = off_95C360;
  v2 = (_DWORD *)((char *)this + 32);
  std::priv::_List_base<IEvent const*,std::allocator<IEvent const*>>::clear((_DWORD *)this + 8);
  std::priv::_List_base<EventManager::DelayedDetachInfo,std::allocator<EventManager::DelayedDetachInfo>>::clear((_DWORD *)this + 10);
  std::priv::_List_base<IEvent const*,std::allocator<IEvent const*>>::clear(v2);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_erase(
      (int)this + 8,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 338574 EventManager::~EventManager() =====
void __fastcall EventManager::~EventManager(EventManager *this)
{
  EventManager::~EventManager(this);
  CustomFree(this);
}


// ===== 338590 EventManager::~EventManager() =====
void __fastcall EventManager::~EventManager(EventManager *this)
{
  _DWORD *v2; // r5

  *(_DWORD *)this = off_95C360;
  v2 = (_DWORD *)((char *)this + 32);
  std::priv::_List_base<IEvent const*,std::allocator<IEvent const*>>::clear((_DWORD *)this + 8);
  std::priv::_List_base<EventManager::DelayedDetachInfo,std::allocator<EventManager::DelayedDetachInfo>>::clear((_DWORD *)this + 10);
  std::priv::_List_base<IEvent const*,std::allocator<IEvent const*>>::clear(v2);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_erase(
      (int)this + 8,
      *((_DWORD **)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 33860c std::allocator<std::priv::_List_node<EventManager::ReceiverInfo>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<EventManager::ReceiverInfo>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 33862c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>>::_M_create_node(std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_create_node(
        int a1,
        int *a2)
{
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // r5
  int *v6; // r4
  int *v7; // r6
  int *v8; // t1
  _DWORD *i; // r7
  _DWORD *v10; // r0
  _DWORD *v11; // r3
  size_t v13; // [sp+4h] [bp-8h] BYREF

  v13 = 28;
  v3 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v13);
  v4 = *a2;
  v5 = v3 + 5;
  v3[5] = v3 + 5;
  v3[4] = v4;
  v3[6] = v3 + 5;
  v8 = (int *)a2[1];
  v7 = a2 + 1;
  v6 = v8;
  for ( i = v3; v7 != v6; v6 = (int *)*v6 )
  {
    v10 = std::allocator<std::priv::_List_node<EventManager::ReceiverInfo>>::allocate();
    v10[2] = v6[2];
    v10[3] = v6[3];
    *((_BYTE *)v10 + 16) = *((_BYTE *)v6 + 16);
    v11 = (_DWORD *)v5[1];
    *v10 = v5;
    v10[1] = v11;
    *v11 = v10;
    v5[1] = v10;
  }
  i[3] = 0;
  i[2] = 0;
  return i;
}


// ===== 3386c4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
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
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v9 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  else
  {
    v12 = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_create_node(
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


// ===== 33879c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>>::insert_unique(std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
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


// ===== 338924 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>>,std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::insert_unique(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 338c98 std::map<int,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>,std::less<int>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo,std::allocator<EventManager::ReceiverInfo>>>>>::operator[]<int>(int const&) =====
_DWORD *__fastcall std::map<int,std::list<EventManager::ReceiverInfo>>::operator[]<int>(_DWORD *a1, int *a2)
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
  int v14; // [sp+4h] [bp-1Ch] BYREF
  _DWORD *v15; // [sp+8h] [bp-18h] BYREF
  _DWORD **v16; // [sp+Ch] [bp-14h]
  void *__p[2]; // [sp+10h] [bp-10h] BYREF
  _DWORD *v18; // [sp+18h] [bp-8h] BYREF
  _DWORD *v19; // [sp+1Ch] [bp-4h] BYREF

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
    v18 = v2;
    __p[0] = __p;
    __p[1] = __p;
    v15 = &v15;
    v16 = &v15;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,std::list<EventManager::ReceiverInfo>>,std::priv::_Select1st<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::priv::_MapTraitsT<std::pair<int const,std::list<EventManager::ReceiverInfo>>>,std::allocator<std::pair<int const,std::list<EventManager::ReceiverInfo>>>>::insert_unique(
      &v19,
      a1,
      &v18,
      &v14);
    v9 = v15;
    v8 = v19;
    if ( v15 != &v15 )
    {
      while ( 1 )
      {
        v10 = (_DWORD *)*v9;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, 0x14u);
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
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v11, 0x14u);
        v11 = v12;
      }
      while ( v12 != __p );
    }
  }
  return v8 + 5;
}


// ===== 338da0 EventManager::Attach(int,IEventReceiver *,int) =====
int __fastcall EventManager::Attach(EventManager *this, int a2, IEventReceiver *a3, int a4)
{
  char *v4; // r4
  char *v7; // r0
  char *v8; // r2
  int v9; // r3
  bool v10; // cc
  char *v11; // r3
  char *i; // r7
  int v13; // r0
  int *v14; // r2
  int v15; // r3
  int result; // r0
  int v17; // r4
  int v18; // r0
  int *v19; // r2
  int v20; // [sp+4h] [bp-8h]

  v4 = *((char **)this + 3);
  v20 = a2;
  v7 = (char *)this + 8;
  if ( !v4 )
    goto LABEL_19;
  v8 = v7;
  while ( 1 )
  {
    v9 = *((_DWORD *)v4 + 4);
    v10 = v9 < a2;
    v11 = v9 >= a2 ? *((char **)v4 + 2) : *((char **)v4 + 3);
    if ( v10 )
      v4 = v8;
    v8 = v4;
    if ( !v11 )
      break;
    v4 = v11;
  }
  if ( v7 == v4 )
    goto LABEL_21;
  if ( *((_DWORD *)v4 + 4) > a2 )
LABEL_19:
    v4 = v7;
  if ( v7 == v4 )
  {
LABEL_21:
    v17 = std::map<int,std::list<EventManager::ReceiverInfo>>::operator[]<int>();
    v18 = std::allocator<std::priv::_List_node<EventManager::ReceiverInfo>>::allocate(v17);
    *(_BYTE *)(v18 + 16) = 0;
    *(_DWORD *)(v18 + 12) = a4;
    *(_DWORD *)(v18 + 8) = a3;
    v19 = *(int **)(v17 + 4);
    *(_DWORD *)v18 = v17;
    *(_DWORD *)(v18 + 4) = v19;
    *v19 = v18;
    *(_DWORD *)(v17 + 4) = v18;
    return 1;
  }
  for ( i = *((char **)v4 + 5); ; i = *(char **)i )
  {
    if ( i == v4 + 20 )
    {
      v13 = std::allocator<std::priv::_List_node<EventManager::ReceiverInfo>>::allocate(i);
      *(_BYTE *)(v13 + 16) = 0;
      *(_DWORD *)(v13 + 12) = a4;
      *(_DWORD *)(v13 + 8) = a3;
      v14 = *((int **)v4 + 6);
      v15 = v13;
      *(_DWORD *)v13 = i;
      *(_DWORD *)(v13 + 4) = v14;
      result = 1;
      *v14 = v15;
      *((_DWORD *)v4 + 6) = v15;
      return result;
    }
    if ( a3 == *((IEventReceiver **)i + 2) )
      break;
  }
  return 0;
}


// ===== 338ebc EventManager::Raise(IEvent const&) =====
void __fastcall EventManager::Raise(EventManager *this, const IEvent *a2)
{
  int v4; // r0
  char *v5; // r8
  char *v6; // r1
  char *v7; // r2
  int v8; // r3
  bool v9; // cc
  char *v10; // r3
  int *v11; // r5
  int *v12; // r8
  int *v13; // t1
  _DWORD **i; // r5
  int v15; // r0
  int *v16; // r3
  const IEvent *v17; // r1
  EventManager *v18; // r2
  _DWORD *v19; // r0
  _DWORD *v20; // r5
  _DWORD *v21; // [sp+0h] [bp-8h] BYREF
  int *v22; // [sp+4h] [bp-4h]

  v4 = (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2);
  v5 = *((char **)this + 3);
  v6 = (char *)this + 8;
  if ( !v5 )
    goto LABEL_25;
  v7 = (char *)this + 8;
  while ( 1 )
  {
    v8 = *((_DWORD *)v5 + 4);
    v9 = v4 <= v8;
    if ( v4 <= v8 )
      v10 = *((char **)v5 + 2);
    else
      v10 = *((char **)v5 + 3);
    if ( !v9 )
      v5 = v7;
    v7 = v5;
    if ( !v10 )
      break;
    v5 = v10;
  }
  if ( v6 == v5 )
    return;
  if ( v4 < *((_DWORD *)v5 + 4) )
LABEL_25:
    v5 = (char *)this + 8;
  if ( v6 != v5 )
  {
    v21 = &v21;
    v22 = (int *)&v21;
    v13 = *((int **)v5 + 5);
    v12 = (int *)(v5 + 20);
    v11 = v13;
    if ( v13 == v12 )
    {
      for ( i = &v21; ; i = (_DWORD **)*i )
      {
        v17 = a2;
        v18 = this;
        if ( i == &v21 )
          break;
LABEL_17:
        if ( (*(int (__fastcall **)(_DWORD *, const IEvent *, EventManager *))(*i[2] + 8))(i[2], v17, v18) == 1 )
          break;
      }
    }
    else
    {
      do
      {
        v15 = std::allocator<std::priv::_List_node<EventManager::ReceiverInfo>>::allocate(&v21);
        *(_DWORD *)(v15 + 8) = v11[2];
        *(_DWORD *)(v15 + 12) = v11[3];
        *(_BYTE *)(v15 + 16) = *((_BYTE *)v11 + 16);
        v16 = v22;
        *(_DWORD *)v15 = &v21;
        *(_DWORD *)(v15 + 4) = v16;
        *v16 = v15;
        v22 = (int *)v15;
        v11 = (int *)*v11;
      }
      while ( v12 != v11 );
      i = (_DWORD **)v21;
      v17 = a2;
      v18 = this;
      if ( v21 != &v21 )
        goto LABEL_17;
    }
    v19 = v21;
    if ( v21 != &v21 )
    {
      while ( 1 )
      {
        v20 = (_DWORD *)*v19;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v19, 0x14u);
        if ( v20 == &v21 )
          break;
        v19 = v20;
      }
    }
  }
}


// ===== 33900c EventManager::Update(double) =====
_DWORD *__fastcall EventManager::Update(EventManager *this, double a2)
{
  int v4; // r3
  char *v5; // r4
  char *v6; // r2
  const IEvent *v7; // r5
  int *v8; // r0
  int v9; // r3
  int *v10; // r2

  v4 = *((_DWORD *)this + 8);
  v5 = (char *)this + 32;
  if ( (EventManager *)v4 != (EventManager *)((char *)this + 32) )
  {
    do
    {
      v6 = (char *)v4;
      do
        v6 = *(char **)v6;
      while ( v5 != v6 );
      v7 = *(const IEvent **)(v4 + 8);
      EventManager::Raise(this, v7);
      if ( v7 )
        (*(void (__fastcall **)(const IEvent *))(*(_DWORD *)v7 + 4))(v7);
      v8 = *((int **)this + 8);
      v9 = *v8;
      v10 = (int *)v8[1];
      *v10 = *v8;
      *(_DWORD *)(v9 + 4) = v10;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v8, 0xCu);
      v4 = *((_DWORD *)this + 8);
    }
    while ( (char *)v4 != v5 );
  }
  return EventManager::DropDelayedDetach(this);
}


// ===== 339090 EventManager::RaiseAsync(IEvent const&) =====
// attributes: thunk
void __fastcall EventManager::RaiseAsync(EventManager *this, const IEvent *a2)
{
  EventManager::Raise(this, a2);
}


// ===== 339094 DataReloaderManager::DataReloaderManager(void) =====
void __fastcall DataReloaderManager::DataReloaderManager(DataReloaderManager *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_95C370;
  *((_DWORD *)this + 2) = 0;
}


// ===== 3390c8 DataReloaderManager::DataReloaderManager(void) =====
void __fastcall DataReloaderManager::DataReloaderManager(DataReloaderManager *this)
{
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_95C370;
  *((_DWORD *)this + 2) = 0;
}


// ===== 3390fc DataReloaderManager::monitorFiles(char const*,char const*,IDataReloader *) =====
void DataReloaderManager::monitorFiles()
{
  ;
}


// ===== 339100 DataReloaderManager::checkFiles(void) =====
void __fastcall DataReloaderManager::checkFiles(DataReloaderManager *this)
{
  ;
}


// ===== 339104 `global constructor keyed to'.._.._sources_Core_DataReloader_DataReloaderManager.cpp =====
void `global constructor keyed to'.._.._sources_Core_DataReloader_DataReloaderManager.cpp()
{
  dword_9A1D60 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1D5C = 1056964608;
}


// ===== 339124 DataReloaderManager::_MonitoredFiles::~_MonitoredFiles() =====
void __fastcall DataReloaderManager::_MonitoredFiles::~_MonitoredFiles(DataReloaderManager::_MonitoredFiles *this)
{
  char *v1; // r3
  char *v3; // r0
  size_t v4; // r1
  char *v5; // r0
  size_t v6; // r1

  v1 = (char *)this + 28;
  v3 = *((char **)this + 12);
  if ( v3 != v1 && v3 )
  {
    v4 = *((_DWORD *)this + 7) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  v5 = *((char **)this + 6);
  if ( v5 != (char *)this + 4 && v5 )
  {
    v6 = *((_DWORD *)this + 1) - (_DWORD)v5;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
}


// ===== 3391a0 DataReloaderManager::~DataReloaderManager() =====
void __fastcall DataReloaderManager::~DataReloaderManager(DataReloaderManager *this)
{
  DataReloaderManager::_MonitoredFiles **v1; // r5
  DataReloaderManager::_MonitoredFiles **v2; // r1
  DataReloaderManager::_MonitoredFiles *v4; // r6
  void *v5; // r0
  size_t v6; // r1

  v1 = *((DataReloaderManager::_MonitoredFiles ***)this + 1);
  v2 = *((DataReloaderManager::_MonitoredFiles ***)this + 2);
  *(_DWORD *)this = off_95C370;
  while ( v1 != v2 )
  {
    v4 = *v1++;
    if ( v4 )
    {
      DataReloaderManager::_MonitoredFiles::~_MonitoredFiles(v4);
      CustomFree(v4);
      v2 = *((DataReloaderManager::_MonitoredFiles ***)this + 2);
    }
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


// ===== 339240 DataReloaderManager::~DataReloaderManager() =====
void __fastcall DataReloaderManager::~DataReloaderManager(DataReloaderManager *this)
{
  DataReloaderManager::~DataReloaderManager(this);
  CustomFree(this);
}


// ===== 33925c DataReloaderManager::~DataReloaderManager() =====
void __fastcall DataReloaderManager::~DataReloaderManager(DataReloaderManager *this)
{
  DataReloaderManager::_MonitoredFiles **v1; // r5
  DataReloaderManager::_MonitoredFiles **v2; // r1
  DataReloaderManager::_MonitoredFiles *v4; // r6
  void *v5; // r0
  size_t v6; // r1

  v1 = *((DataReloaderManager::_MonitoredFiles ***)this + 1);
  v2 = *((DataReloaderManager::_MonitoredFiles ***)this + 2);
  *(_DWORD *)this = off_95C370;
  while ( v1 != v2 )
  {
    v4 = *v1++;
    if ( v4 )
    {
      DataReloaderManager::_MonitoredFiles::~_MonitoredFiles(v4);
      CustomFree(v4);
      v2 = *((DataReloaderManager::_MonitoredFiles ***)this + 2);
    }
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


// ===== 3392fc `global constructor keyed to'.._.._sources_Core_MediaPlayer_MediaPlayerIPhone.cpp =====
void `global constructor keyed to'.._.._sources_Core_MediaPlayer_MediaPlayerIPhone.cpp()
{
  dword_9A1D6C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1D68 = 1056964608;
}


// ===== 33931c GetSubtitleTimeInfo(char *,int &,int &) =====
void __fastcall GetSubtitleTimeInfo(char *a1, int *a2, int *a3)
{
  ;
}


// ===== 339320 GetSkipText =====
int *GetSkipText()
{
  return &g_skip;
}


// ===== 33933c GetSubtitleTextToSet =====
int __fastcall GetSubtitleTextToSet(int a1)
{
  int v1; // r3
  int v2; // r5
  void *v3; // r0
  int v5; // r1
  void *v6; // r3
  void *v7; // r0

  v1 = g_SubtitlesQueue;
  if ( dword_9A1D8C == g_SubtitlesQueue || (v2 = *(_DWORD *)g_SubtitlesQueue, **(_DWORD **)g_SubtitlesQueue > a1) )
  {
    v6 = (void *)g_CurrentSubtitle;
    if ( g_CurrentSubtitle )
    {
      if ( a1 >= *(_DWORD *)(g_CurrentSubtitle + 4) )
      {
        v7 = *(void **)(g_CurrentSubtitle + 8);
        if ( !v7
          || (CustomFree(v7), *(_DWORD *)(g_CurrentSubtitle + 8) = 0, (v6 = (void *)g_CurrentSubtitle) != nullptr) )
        {
          CustomFree(v6);
        }
        g_CurrentSubtitle = 0;
        return 0;
      }
      else
      {
        return *(_DWORD *)(g_CurrentSubtitle + 8);
      }
    }
    else
    {
      return 0;
    }
  }
  else
  {
    v3 = (void *)g_CurrentSubtitle;
    if ( g_CurrentSubtitle )
    {
      if ( !*(_DWORD *)(g_CurrentSubtitle + 8)
        || (CustomFree(*(void **)(g_CurrentSubtitle + 8)),
            *(_DWORD *)(g_CurrentSubtitle + 8) = 0,
            (v3 = (void *)g_CurrentSubtitle) != nullptr) )
      {
        CustomFree(v3);
        v1 = g_SubtitlesQueue;
        g_CurrentSubtitle = 0;
      }
      else
      {
        v1 = g_SubtitlesQueue;
      }
    }
    if ( v1 == dword_9A1D84 - 4 )
    {
      if ( dword_9A1D80 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_9A1D80, 0x80u);
      dword_9A1D88 += 4;
      v5 = *(_DWORD *)dword_9A1D88 + 128;
      g_SubtitlesQueue = *(_DWORD *)dword_9A1D88;
      dword_9A1D84 = v5;
      dword_9A1D80 = g_SubtitlesQueue;
      g_CurrentSubtitle = v2;
      return *(_DWORD *)(v2 + 8);
    }
    else
    {
      g_SubtitlesQueue = v1 + 4;
      g_CurrentSubtitle = v2;
      return *(_DWORD *)(v2 + 8);
    }
  }
}


// ===== 3394c0 std::allocator<SubtitleEntry *>::allocate(uint,void const*) [clone] =====
void *std::allocator<SubtitleEntry *>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 128;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3394e0 std::priv::_Deque_base<SubtitleEntry *,std::allocator<SubtitleEntry *>>::~_Deque_base() =====
_DWORD *__fastcall std::priv::_Deque_base<SubtitleEntry *,std::allocator<SubtitleEntry *>>::~_Deque_base(_DWORD *a1)
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


// ===== 339564 std::queue<SubtitleEntry *,std::deque<SubtitleEntry *,std::allocator<SubtitleEntry *>>>::~queue() =====
_DWORD *__fastcall std::queue<SubtitleEntry *>::~queue(_DWORD *a1)
{
  std::priv::_Deque_base<SubtitleEntry *,std::allocator<SubtitleEntry *>>::~_Deque_base(a1);
  return a1;
}


// ===== 339578 std::allocator<SubtitleEntry **>::allocate(uint,void const*) =====
void *__fastcall std::allocator<SubtitleEntry **>::allocate(int a1, unsigned int a2)
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


// ===== 3395d8 `global constructor keyed to'.._.._sources_Core_MediaPlayer_Subtitles_Subtitles.cpp =====
int `global constructor keyed to'.._.._sources_Core_MediaPlayer_Subtitles_Subtitles.cpp()
{
  _DWORD *v0; // r6
  unsigned int v1; // r7
  int v2; // r12
  int result; // r0

  dword_9A1D78 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1D74 = 1056964608;
  g_SubtitlesQueue = 0;
  dword_9A1D80 = 0;
  dword_9A1D84 = 0;
  dword_9A1D88 = 0;
  dword_9A1D8C = 0;
  dword_9A1D90 = 0;
  dword_9A1D94 = 0;
  dword_9A1D98 = 0;
  dword_9A1D9C = 0;
  dword_9A1DA0 = 8;
  v0 = std::allocator<SubtitleEntry **>::allocate((int)&dword_9A1D9C, 8u);
  dword_9A1D9C = (int)v0;
  v1 = (unsigned int)(dword_9A1DA0 - 1) >> 1;
  v0[v1] = std::allocator<SubtitleEntry *>::allocate();
  dword_9A1D88 = (int)&v0[v1];
  v2 = v0[v1];
  dword_9A1D98 = (int)&v0[v1];
  dword_9A1D84 = v2 + 128;
  dword_9A1D80 = v2;
  dword_9A1D8C = v0[v1];
  dword_9A1D90 = dword_9A1D8C;
  dword_9A1D94 = dword_9A1D8C + 128;
  g_SubtitlesQueue = v2;
  result = _aeabi_atexit((int)&g_SubtitlesQueue, (int)std::queue<SubtitleEntry *>::~queue, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 33971c ClearSubtitles =====
void ClearSubtitles()
{
  _DWORD **i; // r3
  void *v1; // r0
  _DWORD *v2; // r4
  int v3; // r1
  void *v4; // r3
  void *v5; // r0

  for ( i = (_DWORD **)g_SubtitlesQueue; dword_9A1D8C != g_SubtitlesQueue; i = (_DWORD **)g_SubtitlesQueue )
  {
    v2 = *i;
    if ( i == (_DWORD **)(dword_9A1D84 - 4) )
    {
      if ( dword_9A1D80 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_9A1D80, 0x80u);
      dword_9A1D88 += 4;
      v3 = *(_DWORD *)dword_9A1D88 + 128;
      g_SubtitlesQueue = *(_DWORD *)dword_9A1D88;
      dword_9A1D84 = v3;
      dword_9A1D80 = g_SubtitlesQueue;
    }
    else
    {
      g_SubtitlesQueue = (int)(i + 1);
    }
    v1 = (void *)v2[2];
    if ( v1 )
    {
      CustomFree(v1);
      v2[2] = 0;
    }
    CustomFree(v2);
  }
  v4 = (void *)g_CurrentSubtitle;
  if ( g_CurrentSubtitle )
  {
    v5 = *(void **)(g_CurrentSubtitle + 8);
    if ( !v5 || (CustomFree(v5), *(_DWORD *)(g_CurrentSubtitle + 8) = 0, (v4 = (void *)g_CurrentSubtitle) != nullptr) )
      CustomFree(v4);
    g_CurrentSubtitle = 0;
  }
}


// ===== 339830 LoadSubtitles =====
int LoadSubtitles()
{
  int result; // r0
  FILE *v1; // r4
  int v2; // r0
  _DWORD *v3; // r10
  char *v4; // r6
  size_t v5; // r9
  int v6; // r9
  int v7; // r2
  int v8; // r6
  int v9; // r2
  char *v10; // r6
  int v11; // r1
  int v12; // r2
  size_t v13; // r2
  signed int v14; // r2
  unsigned int v15; // [sp+Ch] [bp-120h]
  int v16; // [sp+10h] [bp-11Ch]
  char *v17; // [sp+14h] [bp-118h]
  __int64 v18; // [sp+1Ch] [bp-110h] BYREF
  char v19[256]; // [sp+24h] [bp-108h] BYREF

  ClearSubtitles();
  LOBYTE(g_skip) = 0;
  switch ( SavegameManager::getLanguage((SavegameManager *)dword_99F778) )
  {
    case 1:
      result = (int)fopen("DQ_TRAILER_SUB-French.srt", "r");
      strcpy((char *)&g_skip, "Passer");
      v1 = (FILE *)result;
      break;
    case 2:
      result = (int)fopen("DQ_TRAILER_SUB-German.srt", "r");
      v1 = (FILE *)result;
      dword_9A1DAC = (int)&loc_707370 + 2;
      g_skip = 1700961475;
      break;
    case 3:
      result = (int)fopen("DQ_TRAILER_SUB-Itallian.srt", "r");
      strcpy((char *)&g_skip, "Salta");
      v1 = (FILE *)result;
      break;
    case 4:
      v1 = fopen("DQ_TRAILER_SUB-Japanese.srt", "r");
      result = -474381597;
      g_skip = -474381597;
      dword_9A1DAC = -2082230910;
      unk_9A1DB0 = -1752964221;
      byte_9A1DB4 = 0;
      break;
    case 5:
      v1 = fopen("DQ_TRAILER_SUB-Korean.srt", "r");
      result = -340479510;
      g_skip = -340479510;
      dword_9A1DAC = -1679062908;
      unk_9A1DB0 = -1330058576;
      byte_9A1DB4 = 0;
      break;
    case 6:
      v1 = fopen("DQ_TRAILER_SUB-Chinese.srt", "r");
      result = 0;
      BYTE2(dword_9A1DAC) = 0;
      g_skip = -390875160;
      LOWORD(dword_9A1DAC) = -30785;
      break;
    case 7:
      result = (int)fopen("DQ_TRAILER_SUB-Spanish.srt", "r");
      strcpy((char *)&g_skip, "Omitir");
      v1 = (FILE *)result;
      break;
    default:
      result = (int)fopen("DQ_TRAILER_SUB-English.srt", "r");
      v1 = (FILE *)result;
      strcpy((char *)&g_skip, "skip");
      break;
  }
  if ( v1 )
  {
LABEL_4:
    while ( 1 )
    {
      v2 = feof(v1);
      if ( v2 )
        return fclose(v1);
      while ( 1 )
      {
        HIDWORD(v18) = v2;
        LODWORD(v18) = v2;
        do
        {
          if ( feof(v1) )
            break;
          fgets(v19, 256, v1);
          GetSubtitleTimeInfo(v19, (int *)&v18 + 1, (int *)&v18);
        }
        while ( !v18 );
        if ( feof(v1) )
          break;
        v3 = (_DWORD *)operator new(0xCu, 0);
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
        v4 = (char *)operator new[](0x100u, 0);
        *v3 = HIDWORD(v18);
        v3[1] = v18;
        fgets(v19, 256, v1);
        LC_API_STRCPY_0(v4, v19);
        while ( fgets(v19, 256, v1) )
        {
          if ( !LC_API_STRCMP_0(v19, "\r\n") || !LC_API_STRCMP_0(v19, "\n") )
            break;
          v5 = LC_API_STRLEN_0(v4);
          if ( LC_API_STRLEN_0(v19) + v5 > 0xFE )
            continue;
          LC_API_STRCAT_0(v4, v19);
        }
        v3[2] = v4;
        if ( dword_9A1D8C == dword_9A1D94 - 4 )
        {
          if ( (unsigned int)(dword_9A1DA0 - ((dword_9A1D98 - dword_9A1D9C) >> 2)) <= 1 )
          {
            v8 = ((dword_9A1D98 - dword_9A1D88) >> 2) + 2;
            v16 = ((dword_9A1D98 - dword_9A1D88) >> 2) + 1;
            if ( dword_9A1DA0 > (unsigned int)(2 * v8) )
            {
              v10 = (char *)(dword_9A1D9C + 4 * ((unsigned int)(dword_9A1DA0 - v8) >> 1));
              if ( dword_9A1D88 <= (unsigned int)v10 )
              {
                v14 = dword_9A1D98 + 4 - dword_9A1D88;
                if ( v14 > 0 )
                  memmove(&v10[4 * v16 - v14], (const void *)dword_9A1D88, v14);
              }
              else
              {
                v13 = dword_9A1D98 + 4 - dword_9A1D88;
                if ( v13 )
                  memmove(v10, (const void *)dword_9A1D88, v13);
              }
            }
            else
            {
              if ( dword_9A1DA0 )
                v9 = dword_9A1DA0;
              else
                v9 = 1;
              v15 = dword_9A1DA0 + 2 + v9;
              v17 = (char *)std::allocator<SubtitleEntry **>::allocate((int)&dword_9A1D9C, v15);
              v10 = &v17[4 * ((v15 - v8) >> 1)];
              if ( dword_9A1D98 + 4 != dword_9A1D88 )
                memmove(v10, (const void *)dword_9A1D88, dword_9A1D98 + 4 - dword_9A1D88);
              if ( dword_9A1D9C )
              {
                if ( (unsigned int)(4 * dword_9A1DA0) > 0x80 )
                  CustomFree((void *)dword_9A1D9C);
                else
                  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_9A1D9C, 4 * dword_9A1DA0);
              }
              dword_9A1DA0 = v15;
              dword_9A1D9C = (int)v17;
            }
            dword_9A1D88 = (int)v10;
            v11 = *(_DWORD *)v10;
            dword_9A1D98 = (int)&v10[4 * v16 - 4];
            dword_9A1D80 = v11;
            dword_9A1D84 = v11 + 128;
            v12 = *(_DWORD *)&v10[4 * v16 - 4];
            dword_9A1D94 = v12 + 128;
            dword_9A1D90 = v12;
          }
          v6 = dword_9A1D98;
          *(_DWORD *)(v6 + 4) = std::allocator<SubtitleEntry *>::allocate();
          *(_DWORD *)dword_9A1D8C = v3;
          dword_9A1D98 += 4;
          v7 = *(_DWORD *)dword_9A1D98 + 128;
          dword_9A1D8C = *(_DWORD *)dword_9A1D98;
          dword_9A1D94 = v7;
          dword_9A1D90 = dword_9A1D8C;
          goto LABEL_4;
        }
        *(_DWORD *)dword_9A1D8C = v3;
        dword_9A1D8C += 4;
        v2 = feof(v1);
        if ( v2 )
          return fclose(v1);
      }
    }
  }
  return result;
}


// ===== 339e70 StateMachine::StateMachine(void) =====
void __fastcall StateMachine::StateMachine(StateMachine *this)
{
  *(_DWORD *)this = off_95C380;
  *((_BYTE *)this + 29) = 0;
  *((_DWORD *)this + 2) = (char *)this + 4;
  *((_DWORD *)this + 6) = -1;
  *((_DWORD *)this + 1) = (char *)this + 4;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 28) = 0;
}


// ===== 339ec8 StateMachine::StateMachine(void) =====
void __fastcall StateMachine::StateMachine(StateMachine *this)
{
  *(_DWORD *)this = off_95C380;
  *((_BYTE *)this + 29) = 0;
  *((_DWORD *)this + 2) = (char *)this + 4;
  *((_DWORD *)this + 6) = -1;
  *((_DWORD *)this + 1) = (char *)this + 4;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 28) = 0;
}


// ===== 339f20 StateMachine::_popState(StateMachine::StateInfo *) =====
int __fastcall StateMachine::_popState(int result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r4
  int v4; // r3
  int v5; // r3
  int v6; // r2
  int v7; // r3
  int v8; // r3

  v2 = *(_DWORD *)(result + 16);
  v3 = result;
  if ( (unsigned int)(v2 - *(_DWORD *)(result + 12)) >> 3 )
  {
    if ( a2 && *a2 )
    {
      v4 = *(_DWORD *)(v2 - 8);
      if ( *a2 != v4 )
        return result;
    }
    else
    {
      v4 = *(_DWORD *)(v2 - 8);
    }
    result = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 12))(v4, result);
    v5 = *(_DWORD *)(v3 + 16);
    v6 = v5 - 8;
    if ( *(_BYTE *)(v5 - 4) )
    {
      v7 = *(_DWORD *)(v5 - 8);
      if ( v7 )
      {
        result = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 4))(v7);
        v6 = *(_DWORD *)(v3 + 16) - 8;
      }
    }
    v8 = *(_DWORD *)(v3 + 12);
    *(_DWORD *)(v3 + 16) = v6;
    if ( (unsigned int)(v6 - v8) >> 3 )
      return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v6 - 8) + 20))(*(_DWORD *)(v6 - 8), v3);
  }
  return result;
}


// ===== 339fe0 StateMachine::_popAllState(void) =====
int __fastcall StateMachine::_popAllState(int this)
{
  int i; // r4

  for ( i = this; (unsigned int)(*(_DWORD *)(i + 16) - *(_DWORD *)(i + 12)) >> 3; this = StateMachine::_popState(
                                                                                           i,
                                                                                           nullptr) )
    ;
  return this;
}


// ===== 33a010 StateMachine::RecurseUpdate(double) =====
int __fastcall StateMachine::RecurseUpdate(int this, double a2)
{
  int v3; // r4
  double v4; // r6
  int v5; // r5

  v3 = this;
  v4 = a2;
  if ( *(_BYTE *)(this + 28) )
  {
    v5 = *(_DWORD *)(this + 24);
    if ( v5 == -1 )
    {
      HIDWORD(a2) = *(_DWORD *)(this + 12);
      LODWORD(a2) = *(_DWORD *)(this + 16);
    }
    else
    {
      HIDWORD(a2) = *(_DWORD *)(this + 24);
    }
    if ( v5 == -1 )
    {
      HIDWORD(a2) = ((LODWORD(a2) - HIDWORD(a2)) >> 3) - 1;
      *(_DWORD *)(this + 24) = HIDWORD(a2);
    }
    if ( HIDWORD(a2) )
    {
      LODWORD(a2) = *(_DWORD *)(this + 12);
      *(_DWORD *)(this + 24) = --HIDWORD(a2);
      this = (*(int (__fastcall **)(_DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(LODWORD(a2) + 8 * HIDWORD(a2)) + 24))(
               *(_DWORD *)(LODWORD(a2) + 8 * HIDWORD(a2)),
               this,
               LODWORD(v4),
               HIDWORD(v4));
    }
    *(_DWORD *)(v3 + 24) = v5;
  }
  return this;
}


// ===== 33a090 StateMachine::RecurseDraw(void) =====
int __fastcall StateMachine::RecurseDraw(int this, int a2, int a3)
{
  int v3; // r4
  int v4; // r5
  int v5; // r3
  int v6; // r2
  int v7; // r3

  v3 = this;
  if ( *(_BYTE *)(this + 29) )
  {
    v4 = *(_DWORD *)(this + 24);
    if ( v4 == -1 )
    {
      v5 = *(_DWORD *)(this + 12);
      a3 = *(_DWORD *)(this + 16);
    }
    else
    {
      v5 = *(_DWORD *)(this + 24);
    }
    if ( v4 == -1 )
    {
      v5 = ((a3 - v5) >> 3) - 1;
      *(_DWORD *)(this + 24) = v5;
    }
    if ( v5 )
    {
      v6 = *(_DWORD *)(this + 12);
      v7 = v5 - 1;
      *(_DWORD *)(this + 24) = v7;
      this = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v6 + 8 * v7) + 28))(*(_DWORD *)(v6 + 8 * v7), this);
    }
    *(_DWORD *)(v3 + 24) = v4;
  }
  return this;
}


// ===== 33a100 StateMachine::Draw(void) =====
int __fastcall StateMachine::Draw(int this)
{
  int v1; // r3
  int v2; // r4

  v1 = *(_DWORD *)(this + 16);
  v2 = this;
  if ( (unsigned int)(v1 - *(_DWORD *)(this + 12)) >> 3 )
  {
    *(_BYTE *)(this + 29) = 1;
    this = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v1 - 8) + 28))(*(_DWORD *)(v1 - 8), this);
    *(_BYTE *)(v2 + 29) = 0;
  }
  return this;
}


// ===== 33a148 StateMachine::Draw2D(void) =====
int __fastcall StateMachine::Draw2D(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 16);
  if ( (unsigned int)(v1 - *(_DWORD *)(this + 12)) >> 3 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v1 - 8) + 32))(*(_DWORD *)(v1 - 8), this);
  return this;
}


// ===== 33a17c StateMachine::Sleep(void) =====
int __fastcall StateMachine::Sleep(int this)
{
  int v1; // r5
  int i; // r4
  int v3; // t1

  v1 = this;
  for ( i = *(_DWORD *)(this + 16); *(_DWORD *)(v1 + 12) != i; i -= 8 )
  {
    v3 = *(_DWORD *)(i - 8);
    this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 36))(v3, v1);
  }
  return this;
}


// ===== 33a1b4 StateMachine::WakeUp(void) =====
int __fastcall StateMachine::WakeUp(int this)
{
  int *v1; // r4
  int i; // r5
  int v3; // t1

  v1 = *(int **)(this + 12);
  for ( i = this; v1 != *(int **)(i + 16); this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 40))(v3, i) )
  {
    v3 = *v1;
    v1 += 2;
  }
  return this;
}


// ===== 33a1f4 std::priv::__copy<StateMachine::StateInfo *,StateMachine::StateInfo *,int>(StateMachine::StateInfo *,StateMachine::StateInfo *,StateMachine::StateInfo *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<StateMachine::StateInfo *,StateMachine::StateInfo *,int>(int a1, int a2, int a3)
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


// ===== 33a248 `global constructor keyed to'.._.._sources_Core_StateMachine_StateMachine.cpp =====
int `global constructor keyed to'.._.._sources_Core_StateMachine_StateMachine.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A1DC0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1DBC = 1056964608;
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


// ===== 33a324 std::allocator<std::priv::_List_node<StateMachine::QueuedOp>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<StateMachine::QueuedOp>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 33a344 StateMachine::PushState(StateBase *,bool) =====
_DWORD *__fastcall StateMachine::PushState(int a1, int a2, char a3)
{
  int v3; // r5
  _DWORD *result; // r0
  _DWORD *v8; // r3

  v3 = a1 + 4;
  result = std::allocator<std::priv::_List_node<StateMachine::QueuedOp>>::allocate();
  result[4] = 1;
  *((_BYTE *)result + 12) = a3;
  result[2] = a2;
  v8 = *(_DWORD **)(a1 + 8);
  *result = v3;
  result[1] = v8;
  *v8 = result;
  *(_DWORD *)(a1 + 8) = result;
  return result;
}


// ===== 33a388 StateMachine::SwitchState(StateBase *,bool) =====
int __fastcall StateMachine::SwitchState(int a1, int a2, char a3)
{
  int v3; // r5
  int result; // r0
  int *v8; // r3

  v3 = a1 + 4;
  result = std::allocator<std::priv::_List_node<StateMachine::QueuedOp>>::allocate(a1 + 4);
  *(_DWORD *)(result + 16) = 0;
  *(_BYTE *)(result + 12) = a3;
  *(_DWORD *)(result + 8) = a2;
  v8 = *(int **)(a1 + 8);
  *(_DWORD *)result = v3;
  *(_DWORD *)(result + 4) = v8;
  *v8 = result;
  *(_DWORD *)(a1 + 8) = result;
  return result;
}


// ===== 33a3cc StateMachine::PopState(StateBase *) =====
_DWORD *__fastcall StateMachine::PopState(int a1, int a2)
{
  int v2; // r5
  _DWORD *result; // r0
  _DWORD *v6; // r3

  v2 = a1 + 4;
  result = std::allocator<std::priv::_List_node<StateMachine::QueuedOp>>::allocate();
  result[4] = 2;
  *((_BYTE *)result + 12) = 0;
  result[2] = a2;
  v6 = *(_DWORD **)(a1 + 8);
  *result = v2;
  result[1] = v6;
  *v6 = result;
  *(_DWORD *)(a1 + 8) = result;
  return result;
}


// ===== 33a410 StateMachine::__clear(void) =====
char *__fastcall StateMachine::__clear(StateMachine *this)
{
  int v2; // r5
  StateMachine *i; // r1
  int v4; // r3
  int v5; // r0
  char *result; // r0
  char *j; // r5
  char *v8; // r3
  int v9; // r3
  int v10; // r3
  _DWORD *v11; // r2

  v2 = *((_DWORD *)this + 4);
  for ( i = this; *((_DWORD *)this + 3) != v2; i = this )
  {
    (*(void (__fastcall **)(_DWORD, StateMachine *))(**(_DWORD **)(v2 - 8) + 12))(*(_DWORD *)(v2 - 8), i);
    if ( *(_BYTE *)(v2 - 4) )
    {
      v4 = *(_DWORD *)(v2 - 8);
      if ( v4 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 4))(*(_DWORD *)(v2 - 8));
    }
    v2 -= 8;
  }
  v5 = *((_DWORD *)this + 4);
  if ( v5 != v2 )
    *((_DWORD *)this + 4) = std::priv::__copy<StateMachine::StateInfo *,StateMachine::StateInfo *,int>(
                              v5,
                              *((_DWORD *)this + 4),
                              v2);
  result = *((char **)this + 1);
  for ( j = (char *)this + 4; result != j; result = *((char **)this + 1) )
  {
    v8 = result;
    do
      v8 = *(char **)v8;
    while ( j != v8 );
    if ( result[12] )
    {
      v9 = *((_DWORD *)result + 2);
      if ( v9 )
      {
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 4))(*((_DWORD *)result + 2));
        result = *((char **)this + 1);
      }
    }
    v10 = *(_DWORD *)result;
    v11 = *((_DWORD **)result + 1);
    *v11 = *(_DWORD *)result;
    *(_DWORD *)(v10 + 4) = v11;
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0x14u);
  }
  return result;
}


// ===== 33a520 std::allocator<StateMachine::StateInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<StateMachine::StateInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 33a590 StateMachine::_pushState(StateMachine::StateInfo &) =====
int __fastcall StateMachine::_pushState(_DWORD *a1, int a2)
{
  int v2; // r3
  int v5; // r6
  int v6; // r7
  unsigned int v8; // r3
  unsigned int v9; // r1
  char *v10; // r0
  int v11; // lr
  char *v12; // r8
  int v13; // r6
  char *v14; // r6
  int v15; // r1
  int v16; // r0
  char *v17; // r3
  char v18; // r2
  char *v19; // r3
  char *v20; // r0
  size_t v21; // r1
  size_t v22; // r3
  size_t v23; // [sp+4h] [bp-4h] BYREF

  v2 = a1[4];
  if ( (unsigned int)(v2 - a1[3]) >> 3 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(v2 - 8) + 16))(*(_DWORD *)(v2 - 8), a1);
    v2 = a1[4];
    v5 = a1[5];
    if ( v5 != v2 )
      goto LABEL_3;
  }
  else
  {
    v5 = a1[5];
    if ( v5 != v2 )
    {
LABEL_3:
      *(_DWORD *)v2 = *(_DWORD *)a2;
      *(_BYTE *)(v2 + 4) = *(_BYTE *)(a2 + 4);
      v6 = a1[4] + 8;
      a1[4] = v6;
      return (*(int (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(v6 - 8) + 8))(*(_DWORD *)(v6 - 8), a1);
    }
  }
  v8 = (v2 - a1[3]) >> 3;
  if ( v8 )
    v9 = 2 * v8;
  else
    v9 = 1;
  if ( v9 > 0x1FFFFFFF || v8 > v9 )
    v9 = 0x1FFFFFFF;
  v23 = v9;
  v10 = (char *)std::allocator<StateMachine::StateInfo>::_M_allocate((int)(a1 + 5), v9, &v23);
  v11 = a1[3];
  v12 = v10;
  v13 = (v5 - v11) >> 3;
  if ( v13 > 0 )
  {
    v15 = v13;
    v16 = 0;
    do
    {
      --v15;
      *(_DWORD *)&v12[v16] = *(_DWORD *)(v11 + v16);
      v17 = &v12[v16];
      v18 = *(_BYTE *)(v11 + v16 + 4);
      v16 += 8;
      v17[4] = v18;
    }
    while ( v15 );
    v14 = &v12[8 * v13];
  }
  else
  {
    v14 = v10;
  }
  v6 = (int)(v14 + 8);
  *(_DWORD *)v14 = *(_DWORD *)a2;
  v14[4] = *(_BYTE *)(a2 + 4);
  v19 = (char *)a1[4];
  v20 = (char *)a1[3];
  if ( v19 != v20 )
    v19 += 8 * ~((unsigned int)(v19 - 8 - v20) >> 3);
  if ( v19 )
  {
    v21 = (a1[5] - (_DWORD)v19) & 0xFFFFFFF8;
    if ( v21 > 0x80 )
      CustomFree(v20);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v20, v21);
  }
  v22 = v23;
  a1[3] = v12;
  a1[4] = v6;
  a1[5] = &v12[8 * v22];
  return (*(int (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(v6 - 8) + 8))(*(_DWORD *)(v6 - 8), a1);
}


// ===== 33a720 StateMachine::_switchState(StateMachine::StateInfo &) =====
int __fastcall StateMachine::_switchState(_DWORD *a1, int a2)
{
  StateMachine::_popAllState((int)a1);
  return StateMachine::_pushState(a1, a2);
}


// ===== 33a740 StateMachine::_handleQueuedOp(void) =====
char *__fastcall StateMachine::_handleQueuedOp(StateMachine *this)
{
  char *result; // r0
  char *v3; // r4
  char *v4; // r3
  char *v5; // r3
  int v6; // r3
  int v7; // r3
  _DWORD *v8; // r2

  v3 = (char *)this + 4;
  result = *((char **)this + 1);
  if ( result != v3 )
  {
    v4 = result;
    do
      v4 = *(char **)v4;
    while ( v3 != v4 );
    do
    {
      v5 = result;
      do
        v5 = *(char **)v5;
      while ( v3 != v5 );
      v6 = *((_DWORD *)result + 4);
      switch ( v6 )
      {
        case 1:
          StateMachine::_pushState(this, (int)(result + 8));
          result = *((char **)this + 1);
          break;
        case 2:
          StateMachine::_popState((int)this, (_DWORD *)result + 2);
          result = *((char **)this + 1);
          break;
        case 0:
          StateMachine::_switchState(this, (int)(result + 8));
          result = *((char **)this + 1);
          break;
      }
      v7 = *(_DWORD *)result;
      v8 = *((_DWORD **)result + 1);
      *v8 = *(_DWORD *)result;
      *(_DWORD *)(v7 + 4) = v8;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0x14u);
      result = *((char **)this + 1);
    }
    while ( v3 != result );
  }
  return result;
}


// ===== 33a7f4 StateMachine::Update(double) =====
int __fastcall StateMachine::Update(StateMachine *this, double a2)
{
  int result; // r0
  int v6; // r3

  result = StateMachine::_handleQueuedOp(this);
  v6 = *((_DWORD *)this + 4);
  if ( (unsigned int)(v6 - *((_DWORD *)this + 3)) >> 3 )
  {
    *((_BYTE *)this + 28) = 1;
    result = (*(int (__fastcall **)(_DWORD, StateMachine *, _DWORD, _DWORD))(**(_DWORD **)(v6 - 8) + 24))(
               *(_DWORD *)(v6 - 8),
               this,
               LODWORD(a2),
               HIDWORD(a2));
    *((_BYTE *)this + 28) = 0;
  }
  return result;
}


// ===== 33a850 std::vector<StateMachine::StateInfo,std::allocator<StateMachine::StateInfo>>::~vector() =====
int __fastcall std::vector<StateMachine::StateInfo>::~vector(int a1)
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


// ===== 33a890 StateMachine::~StateMachine() =====
void __fastcall StateMachine::~StateMachine(StateMachine *this)
{
  char *v2; // r4
  char *v3; // r5
  char *v4; // r0
  char *v5; // r4

  *(_DWORD *)this = off_95C380;
  v2 = (char *)this + 12;
  v3 = (char *)this + 4;
  StateMachine::__clear(this);
  std::vector<StateMachine::StateInfo>::~vector((int)v2);
  v4 = *((char **)this + 1);
  if ( v4 != v3 )
  {
    while ( 1 )
    {
      v5 = *(char **)v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0x14u);
      if ( v5 == v3 )
        break;
      v4 = v5;
    }
    v4 = v3;
  }
  *((_DWORD *)this + 1) = v4;
  *((_DWORD *)v3 + 1) = v4;
}


// ===== 33a908 StateMachine::~StateMachine() =====
void __fastcall StateMachine::~StateMachine(StateMachine *this)
{
  StateMachine::~StateMachine(this);
  CustomFree(this);
}


// ===== 33a924 StateMachine::~StateMachine() =====
void __fastcall StateMachine::~StateMachine(StateMachine *this)
{
  char *v2; // r4
  char *v3; // r5
  char *v4; // r0
  char *v5; // r4

  *(_DWORD *)this = off_95C380;
  v2 = (char *)this + 12;
  v3 = (char *)this + 4;
  StateMachine::__clear(this);
  std::vector<StateMachine::StateInfo>::~vector((int)v2);
  v4 = *((char **)this + 1);
  if ( v4 != v3 )
  {
    while ( 1 )
    {
      v5 = *(char **)v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, 0x14u);
      if ( v5 == v3 )
        break;
      v4 = v5;
    }
    v4 = v3;
  }
  *((_DWORD *)this + 1) = v4;
  *((_DWORD *)v3 + 1) = v4;
}


// ===== 33a99c EvTouchScreenPress::~EvTouchScreenPress() =====
void __fastcall EvTouchScreenPress::~EvTouchScreenPress(EvTouchScreenPress *this)
{
  ;
}


// ===== 33a9a0 EvTouchScreenMove::~EvTouchScreenMove() =====
void __fastcall EvTouchScreenMove::~EvTouchScreenMove(EvTouchScreenMove *this)
{
  ;
}


// ===== 33a9a4 TouchScreenBase::_IsQueueEmpty(void) =====
bool __fastcall TouchScreenBase::_IsQueueEmpty(TouchScreenBase *this)
{
  return *((_DWORD *)this + 104) == *((_DWORD *)this + 105);
}


// ===== 33a9bc TouchScreenBase::_AddToQueue(TouchScreenBase::TouchEvent,Point2D<float> const&,long) =====
int __fastcall TouchScreenBase::_AddToQueue(TouchScreenBase *a1, int a2, float *a3, int a4)
{
  int v4; // r5
  int v6; // r8
  int result; // r0
  int v10; // r12
  int v11; // lr
  int v12; // r0
  int v13; // r2
  bool v14; // zf
  int v15; // r3
  int v16; // r1
  int v17; // r4
  int v18; // r5
  __int16 v19; // r10
  int v20; // r6

  v4 = *((_DWORD *)a1 + 105);
  v6 = a4;
  if ( (unsigned int)(v4 + 1) > 0xF )
    a4 = 0;
  *((_DWORD *)a1 + 105) = v4 + 1;
  if ( (unsigned int)(v4 + 1) > 0xF )
    *((_DWORD *)a1 + 105) = a4;
  result = TouchScreenBase::_IsQueueEmpty(a1);
  if ( result )
  {
    *((_DWORD *)a1 + 105) = v4;
  }
  else
  {
    v10 = *((_DWORD *)a1 + 104);
    if ( v10 == v4 )
    {
      v11 = *((_DWORD *)a1 + 101);
LABEL_20:
      v18 = 12 * v4;
      *(_DWORD *)(v11 + v18) = a2;
      v19 = (int)*a3;
      result = (int)a3[1];
      v20 = *((_DWORD *)a1 + 101) + v18;
      *(_WORD *)(v20 + 6) = result;
      *(_WORD *)(v20 + 4) = v19;
      *(_DWORD *)(*((_DWORD *)a1 + 101) + v18 + 8) = v6;
    }
    else
    {
      v12 = *((_DWORD *)a1 + 101);
      v13 = v4;
      v11 = v12;
      while ( 1 )
      {
        v14 = v13 == 0;
        if ( v13 )
        {
          --v13;
          v15 = 12 * v13;
        }
        else
        {
          v15 = 180;
        }
        if ( v14 )
          v13 = 15;
        if ( *(_DWORD *)(v12 + v15 + 8) == v6 )
        {
          v16 = *(_DWORD *)(v12 + v15);
          if ( v16 == 2 || !v16 )
            goto LABEL_20;
          if ( v16 == 1 )
            break;
        }
        if ( v13 == v10 )
          goto LABEL_20;
      }
      *((_DWORD *)a1 + 105) = v4;
      *(_DWORD *)(v12 + v15) = a2;
      v17 = *((_DWORD *)a1 + 101) + v15;
      result = (int)a3[1];
      *(_WORD *)(v17 + 4) = (int)*a3;
      *(_WORD *)(v17 + 6) = result;
    }
  }
  return result;
}


// ===== 33aad8 TouchScreenBase::getDimension(void) =====
TouchScreenBase *__fastcall TouchScreenBase::getDimension(TouchScreenBase *this, int a2)
{
  __int16 v4; // r7
  __int16 v5; // r6
  __int16 v6; // r8
  __int16 v7; // r0
  Elf32_Dyn **v8; // r3
  bool v9; // cc
  __int16 v10; // r3
  bool v11; // cc

  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 8))(a2);
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 16))(a2);
  v6 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 12))(a2);
  v7 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 20))(a2);
  v8 = &__GLOBAL_OFFSET_TABLE_;
  v9 = v4 < v6;
  *(_DWORD *)this = off_95C3C0;
  *((_WORD *)this + 2) = v4;
  *((_WORD *)this + 3) = v5;
  *((_WORD *)this + 4) = v6;
  *((_WORD *)this + 5) = v7;
  if ( v4 <= v6 )
  {
    if ( v4 >= v6 )
      v6 = v4;
    else
      LOWORD(v8) = v4;
    if ( v9 )
    {
      v4 = v6;
      v6 = (__int16)v8;
    }
  }
  v10 = v7;
  v11 = v5 < v7;
  if ( v5 <= v7 )
  {
    if ( v5 >= v7 )
      v7 = v5;
    else
      v10 = v5;
    if ( v11 )
    {
      v5 = v7;
      v7 = v10;
    }
  }
  *((_WORD *)this + 3) = v7;
  *((_WORD *)this + 2) = v6;
  *((_WORD *)this + 4) = v4;
  *((_WORD *)this + 5) = v5;
  return this;
}


// ===== 33abbc TouchScreenBase::getDimension(Rct<short> &) =====
int __fastcall TouchScreenBase::getDimension(int a1, _WORD *a2)
{
  __int16 v4; // r8
  __int16 v5; // r7
  __int16 v6; // r6
  int result; // r0

  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 8))(a1);
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 16))(a1);
  v6 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 12))(a1);
  result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 20))(a1);
  a2[2] = v4;
  a2[5] = result;
  a2[3] = v5;
  a2[4] = v6;
  return result;
}


// ===== 33ac24 TouchScreenBase::touchBegan(Point2D<short> const&,long) =====
int __fastcall TouchScreenBase::touchBegan(int a1, __int16 *a2, int a3)
{
  int v3; // lr
  int v5; // r3
  int v6; // r2
  __int16 v9; // r12
  __int16 v10; // r7
  int v11; // r1
  int v12; // r3
  int v13; // r0
  int v14; // r1
  float v16[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = a3 + 1;
  v5 = a1 + 48 * a3;
  if ( *(_DWORD *)(a1 + 400) < a3 )
    *(_DWORD *)(a1 + 400) = v3;
  v6 = *(unsigned __int8 *)(v5 + 40);
  if ( !*(_BYTE *)(v5 + 40) )
  {
    v9 = a2[1];
    v10 = *a2;
    v11 = 8 * (6 * a3 + 1);
    *(_WORD *)(a1 + v11) = v10;
    *(_WORD *)(a1 + v11 + 2) = v9;
    *(_DWORD *)(v5 + 36) = v6;
  }
  v12 = a1 + 8 * (6 * a3 + 1);
  v13 = 16 * (3 * a3 + 1);
  *(_WORD *)(a1 + v13) = *(_WORD *)(v12 + 4);
  *(_WORD *)(a1 + v13 + 2) = *(_WORD *)(v12 + 6);
  v14 = a1 + 48 * a3;
  *(_WORD *)(v12 + 4) = *a2;
  *(_WORD *)(v12 + 6) = a2[1];
  *(_BYTE *)(v14 + 40) = 1;
  *(_BYTE *)(v14 + 32) = 1;
  *(_QWORD *)(a1 + v13 + 8) = *(_QWORD *)(a1 + 392);
  *(_DWORD *)(a1 + 48 * v3) = 0;
  v16[0] = (float)*a2;
  v16[1] = (float)a2[1];
  return TouchScreenBase::_AddToQueue((TouchScreenBase *)a1, 0, v16, a3);
}


// ===== 33ad28 TouchScreenBase::touchMoved(Point2D<short> const&,long) =====
int __fastcall TouchScreenBase::touchMoved(TouchScreenBase *a1, __int16 *a2, int a3)
{
  _QWORD *v4; // r2
  __int16 *v7; // r1
  int v8; // lr
  _QWORD *v9; // r12
  int v10; // r0
  int v11; // r3
  _QWORD *v12; // r2
  int v13; // r3
  float v15[3]; // [sp+0h] [bp-Ch] BYREF

  v4 = (_QWORD *)((char *)a1 + 48 * a3);
  if ( *((_BYTE *)v4 + 40) )
  {
    v7 = (__int16 *)((char *)a1 + 48 * a3 + 8);
    v8 = 16 * (3 * a3 + 1);
    *(_WORD *)((char *)a1 + v8) = v7[2];
    v9 = (_QWORD *)((char *)a1 + v8);
    *((_WORD *)v9 + 1) = v7[3];
    v7[2] = *a2;
    v7[3] = a2[1];
    v9[1] = *((_QWORD *)a1 + 49);
    *((_DWORD *)a1 + 12 * a3 + 12) = 1;
    v10 = *v7;
    v11 = v7[2];
    if ( (int)abs32(v10 - v11) > 11 && (int)abs32(v7[1] - v7[3]) <= 4 )
    {
      v12 = v4 + 4;
      if ( !*((_DWORD *)v12 + 1) )
      {
        if ( v10 < v11 )
          v13 = 2;
        else
          v13 = 1;
        *((_DWORD *)v12 + 1) = v13;
      }
    }
  }
  v15[0] = (float)*a2;
  v15[1] = (float)a2[1];
  return TouchScreenBase::_AddToQueue(a1, 1, v15, a3);
}


// ===== 33ae3c TouchScreenBase::touchCancelled(Point2D<short> const&,long) =====
int __fastcall TouchScreenBase::touchCancelled(TouchScreenBase *a1, __int16 *a2, int a3)
{
  _DWORD *v3; // r3
  float v5[2]; // [sp+0h] [bp-8h] BYREF

  v3 = (_DWORD *)((char *)a1 + 48 * a3);
  v3[11] = -1;
  *((_BYTE *)v3 + 40) = 0;
  *((_DWORD *)a1 + 12 * a3 + 12) = 2;
  if ( *((_DWORD *)a1 + 100) - 1 == a3 )
    *((_DWORD *)a1 + 100) = a3;
  v5[0] = (float)*a2;
  v5[1] = (float)a2[1];
  return TouchScreenBase::_AddToQueue(a1, 2, v5, a3);
}


// ===== 33aeb8 TouchScreenBase::touchEnded(Point2D<short> const&,long) =====
// attributes: thunk
int __fastcall TouchScreenBase::touchEnded(TouchScreenBase *a1, __int16 *a2, int a3)
{
  return TouchScreenBase::touchCancelled(a1, a2, a3);
}


// ===== 33aebc TouchScreenBase::isRegionPressed(glitch::core::rect<float> const&) =====
int __fastcall TouchScreenBase::isRegionPressed(int a1, float *a2)
{
  int v2; // r3
  int v4; // r4
  int v5; // r6
  float v6; // r7
  __int16 v7; // r0
  __int16 v8; // r5
  float v9; // r10
  float v10; // r5
  int v12; // [sp+4h] [bp-8h]

  v2 = *(_DWORD *)(a1 + 400);
  if ( v2 <= 0 )
    return 0;
  v4 = a1;
  v12 = a1 + 48 * v2;
  v5 = *(_DWORD *)(a1 + 424);
  v6 = *(float *)(a1 + 432);
  while ( 1 )
  {
    v7 = *(_WORD *)(v4 + 12);
    v8 = *(_WORD *)(v4 + 14);
    switch ( v5 )
    {
      case 2:
        v7 = *(_WORD *)(a1 + 428) - v7;
        v8 = *(_WORD *)(a1 + 430) - v8;
        break;
      case 3:
        v7 = *(_WORD *)(a1 + 428) - v7;
        break;
      case 1:
        v8 = *(_WORD *)(a1 + 430) - v8;
        break;
    }
    v9 = (float)(__int16)(int)(float)((float)v7 * v6);
    if ( v9 >= *a2 )
    {
      v10 = (float)(__int16)(int)(float)((float)v8 * v6);
      if ( v10 >= a2[1]
        && v9 <= a2[2]
        && v10 <= a2[3]
        && *(_BYTE *)(v4 + 32)
        && *(_BYTE *)(v4 + 40)
        && !*(_DWORD *)(v4 + 48) )
      {
        break;
      }
    }
    v4 += 48;
    if ( v4 == v12 )
      return 0;
  }
  return 1;
}


// ===== 33b02c TouchScreenBase::getTouchIDInitiatedInRegion(glitch::core::rect<float> const&) =====
int __fastcall TouchScreenBase::getTouchIDInitiatedInRegion(int a1, float *a2)
{
  int v2; // r10
  int v3; // r4
  int v4; // r5
  float v5; // r9

  v2 = *(_DWORD *)(a1 + 400);
  if ( v2 <= 0 )
    return -1;
  v3 = a1;
  v4 = 0;
  while ( 1 )
  {
    if ( (float)*(__int16 *)(v3 + 8) >= *a2 )
    {
      v5 = (float)*(__int16 *)(v3 + 10);
      if ( v5 >= a2[1]
        && (float)*(__int16 *)(v3 + 8) <= a2[2]
        && v5 <= a2[3]
        && *(_BYTE *)(v3 + 32)
        && *(_BYTE *)(v3 + 40) )
      {
        break;
      }
    }
    ++v4;
    v3 += 48;
    if ( v4 == v2 )
      return -1;
  }
  return v4;
}


// ===== 33b0e8 TouchScreenBase::getTouchIDInRegion(glitch::core::rect<float> const&) =====
int __fastcall TouchScreenBase::getTouchIDInRegion(int a1, float *a2)
{
  int v2; // r10
  int v3; // r4
  int v4; // r5
  float v5; // r9

  v2 = *(_DWORD *)(a1 + 400);
  if ( v2 <= 0 )
    return -1;
  v3 = a1;
  v4 = 0;
  while ( 1 )
  {
    if ( (float)*(__int16 *)(v3 + 12) >= *a2 )
    {
      v5 = (float)*(__int16 *)(v3 + 14);
      if ( v5 >= a2[1]
        && (float)*(__int16 *)(v3 + 12) <= a2[2]
        && v5 <= a2[3]
        && *(_BYTE *)(v3 + 32)
        && *(_BYTE *)(v3 + 40) )
      {
        break;
      }
    }
    ++v4;
    v3 += 48;
    if ( v4 == v2 )
      return -1;
  }
  return v4;
}


// ===== 33b1a4 TouchScreenBase::getTouchPoint(long) =====
char *__fastcall TouchScreenBase::getTouchPoint(TouchScreenBase *this, int a2)
{
  char *v2; // r3

  v2 = (char *)this + 48 * a2;
  if ( v2[40] && v2[32] )
    return (char *)this + 48 * a2 + 12;
  else
    return nullptr;
}


// ===== 33b1e0 TouchScreenBase::getFirstTouchPoint(long) =====
char *__fastcall TouchScreenBase::getFirstTouchPoint(TouchScreenBase *this, int a2)
{
  char *v2; // r3

  v2 = (char *)this + 48 * a2;
  if ( v2[40] && v2[32] )
    return (char *)this + 48 * a2 + 8;
  else
    return nullptr;
}


// ===== 33b21c TouchScreenBase::getTouchDisplacement(long) =====
_WORD *__fastcall TouchScreenBase::getTouchDisplacement(_WORD *this, int a2, int a3)
{
  int v3; // r3
  unsigned __int16 *v4; // r3
  int v5; // r12
  _WORD *v6; // r4
  __int16 v7; // r3
  unsigned __int16 *v8; // r4

  v3 = a2 + 48 * a3;
  if ( !*(_BYTE *)(v3 + 40) || !*(_BYTE *)(v3 + 32) )
    goto LABEL_3;
  v4 = (unsigned __int16 *)(a2 + 8 * (6 * a3 + 1));
  v5 = v4[2];
  if ( v5 == *v4 )
  {
    v8 = (unsigned __int16 *)v4[1];
    v4 = (unsigned __int16 *)v4[3];
    if ( v4 == v8 )
    {
LABEL_3:
      *this = 0;
      *(this + 1) = 0;
      return this;
    }
  }
  else
  {
    LOWORD(v4) = v4[3];
  }
  v6 = (_WORD *)(a2 + 16 * (3 * a3 + 1));
  v7 = (_WORD)v4 - v6[1];
  *this = v5 - *v6;
  *(this + 1) = v7;
  return this;
}


// ===== 33b2bc TouchScreenBase::getSwipeDirection(long) =====
int __fastcall TouchScreenBase::getSwipeDirection(TouchScreenBase *this, int a2)
{
  char *v2; // r3
  int v3; // r2
  char *v4; // r3

  v2 = (char *)this + 48 * a2;
  if ( v2[40] && (v3 = (unsigned __int8)v2[32], v4 = v2 + 32, v3) )
    return *((_DWORD *)v4 + 1);
  else
    return 0;
}


// ===== 33b2ec TouchScreenBase::hasTouch(void) =====
int __fastcall TouchScreenBase::hasTouch(TouchScreenBase *this)
{
  int v1; // r3

  v1 = 0;
  while ( 1 )
  {
    ++v1;
    if ( *((_BYTE *)this + 40) )
    {
      if ( !*((_DWORD *)this + 12) && *((_BYTE *)this + 32) )
        break;
    }
    this = (TouchScreenBase *)((char *)this + 48);
    if ( v1 == 8 )
      return 0;
  }
  return 1;
}


// ===== 33b334 TouchScreenBase::update(double) =====
int __fastcall TouchScreenBase::update(int this, double a2)
{
  int v3; // r7
  int v4; // r4
  int i; // r5
  int v6; // r3
  int v7; // r3

  v3 = this;
  *(double *)(this + 392) = a2;
  v4 = this;
  for ( i = 1; i != 9; ++i )
  {
    while ( 1 )
    {
      if ( !*(_BYTE *)(v4 + 32) )
      {
        this = *(double *)(v4 + 24) + 0.5 < *(double *)(v3 + 392);
        if ( *(double *)(v4 + 24) + 0.5 < *(double *)(v3 + 392) )
          break;
      }
      v7 = *(unsigned __int8 *)(v4 + 40);
      v4 += 48;
      if ( v7 )
        *(_DWORD *)(v3 + 400) = i;
      if ( ++i == 9 )
        return this;
    }
    if ( *(_BYTE *)(v4 + 40) )
    {
      *(_BYTE *)(v4 + 40) = 0;
      *(_DWORD *)(v4 + 44) = -1;
      v6 = *(_DWORD *)(v3 + 400);
      if ( v6 == i - 1 )
        *(_DWORD *)(v3 + 400) = v6 - 1;
    }
    v4 += 48;
  }
  return this;
}


// ===== 33b3dc TouchScreenBase::getID(long) =====
int __fastcall TouchScreenBase::getID(TouchScreenBase *this, int a2)
{
  TouchScreenBase *v3; // r2
  int v4; // r4
  int result; // r0
  int v6; // r12

  v3 = this;
  v4 = -1;
  result = 0;
  while ( *((_DWORD *)v3 + 11) != a2 )
  {
    v6 = *((unsigned __int8 *)v3 + 40);
    v3 = (TouchScreenBase *)((char *)v3 + 48);
    if ( !v6 && v4 == -1 )
      v4 = result;
    if ( ++result == 8 )
    {
      *((_DWORD *)this + 12 * v4 + 11) = a2;
      return v4;
    }
  }
  return result;
}


// ===== 33b438 Rct<short>::~Rct() =====
void Rct<short>::~Rct()
{
  ;
}


// ===== 33b43c EvTouchScreenMove::~EvTouchScreenMove() =====
void __fastcall EvTouchScreenMove::~EvTouchScreenMove(EvTouchScreenMove *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 33b470 EvTouchScreenPress::~EvTouchScreenPress() =====
void __fastcall EvTouchScreenPress::~EvTouchScreenPress(EvTouchScreenPress *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 33b4a4 Rct<short>::~Rct() =====
_DWORD *__fastcall Rct<short>::~Rct(_DWORD *a1)
{
  *a1 = off_95C3C0;
  CustomFree(a1);
  return a1;
}


// ===== 33b4d8 TouchScreenBase::clear(void) =====
int __fastcall TouchScreenBase::clear(TouchScreenBase *this)
{
  int result; // r0
  int i; // r3

  result = _DEBUG_OUT("*************************TouchScreenBase::clear()");
  for ( i = 0; i != 8; ++i )
  {
    *((_BYTE *)this + 40) = 0;
    this = (TouchScreenBase *)((char *)this + 48);
  }
  return result;
}


// ===== 33b510 TouchScreenBase::_PopFromQueue(void) =====
int __fastcall TouchScreenBase::_PopFromQueue(TouchScreenBase *this)
{
  int result; // r0
  unsigned int v3; // r3

  result = TouchScreenBase::_IsQueueEmpty(this);
  if ( result )
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
                 "!_IsQueueEmpty()",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\IO\\TouchScreen\\TouchScreenBase.cpp",
                 108);
    }
  }
  v3 = *((_DWORD *)this + 104) + 1;
  *((_DWORD *)this + 104) = v3;
  if ( v3 > 0xF )
    *((_DWORD *)this + 104) = 0;
  return result;
}


// ===== 33b5c0 TouchScreenBase::_GetNextEventInQueue(void) =====
int __fastcall TouchScreenBase::_GetNextEventInQueue(TouchScreenBase *this)
{
  if ( TouchScreenBase::_IsQueueEmpty(this) )
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
        "!_IsQueueEmpty()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\IO\\TouchScreen\\TouchScreenBase.cpp",
        53);
    }
  }
  return *((_DWORD *)this + 101) + 12 * *((_DWORD *)this + 104);
}


// ===== 33b668 `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenBase.cpp =====
int `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenBase.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<Application>::s_inst;
  dword_9A1DCC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1DC8 = 1056964608;
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 33b6f0 std::allocator<std::priv::_List_node<long>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_List_node<long>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 12;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 33b710 std::priv::_S_sort<long,std::allocator<long>,std::less<long>>(std::list<long,std::allocator<long>> &,std::less<long>) =====
int *__fastcall std::priv::_S_sort<long,std::allocator<long>,std::less<long>>(int *result)
{
  int v1; // r10
  int *v2; // r11
  int **v3; // r5
  _DWORD *v4; // r7
  int **v5; // r8
  _DWORD *v6; // r0
  _DWORD *v7; // r3
  int v8; // r7
  char *v9; // r3
  char *v10; // r1
  char **v11; // r3
  char *v12; // r0
  int v13; // r3
  int v14; // r0
  int v15; // r1
  int *v16; // r3
  int *v17; // r0
  int v18; // r1
  char *v19; // r2
  int v20; // r2
  int v21; // r0
  char *v22; // r0
  char *v23; // r1
  char *v24; // r12
  _DWORD *v25; // r6
  _DWORD *v26; // r3
  int *v27; // r3
  int *v28; // r2
  char **v29; // r3
  char *v30; // r1
  int *v31; // r3
  int v32; // r1
  char **v33; // r2
  char **v34; // r3
  bool v35; // zf
  int v36; // r9
  int i; // r10
  int **v38; // r12
  int **v39; // r4
  int *v40; // r3
  int **v41; // r2
  int *v42; // r1
  int *v43; // r0
  int *v44; // r6
  int *v45; // r3
  int **v46; // r1
  int **v47; // r2
  int *v48; // r0
  int *v49; // r12
  int v50; // r3
  int *v51; // r3
  int v52; // r0
  int v53; // r2
  int *v54; // r7
  int ***j; // r0
  int **v56; // r5
  int *v57; // r3
  int **v58; // r3
  int *v59; // [sp+14h] [bp-210h] BYREF
  char **v60; // [sp+18h] [bp-20Ch]
  _DWORD v61[128]; // [sp+1Ch] [bp-208h] BYREF
  _DWORD v62[2]; // [sp+21Ch] [bp-8h] BYREF

  v2 = result;
  if ( (int *)*result == result || result == *(int **)*result )
    return result;
  v3 = (int **)v61;
  v59 = (int *)&v59;
  v60 = (char **)&v59;
  v4 = v61;
  do
  {
    *v4 = v4;
    v4[1] = v4;
    v5 = (int **)v59;
    if ( v59 != (int *)&v59 )
    {
      do
      {
        v6 = std::allocator<std::priv::_List_node<long>>::allocate();
        v6[2] = v5[2];
        v7 = (_DWORD *)v4[1];
        *v6 = v4;
        v6[1] = v7;
        *v7 = v6;
        v4[1] = v6;
        v5 = (int **)*v5;
      }
      while ( v5 != &v59 );
    }
    v4 += 2;
  }
  while ( v4 != v62 );
  v8 = 0;
  while ( 1 )
  {
    v16 = (int *)*v2;
    if ( v2 == (int *)*v2 )
      break;
    v17 = v59;
    v18 = *v16;
    v19 = (char *)v59;
    if ( v59 != v16 && v59 != (int *)v18 )
    {
      **(_DWORD **)(v18 + 4) = v59;
      *(_DWORD *)v16[1] = v18;
      *(_DWORD *)v17[1] = v16;
      v20 = v17[1];
      v17[1] = *(_DWORD *)(v18 + 4);
      *(_DWORD *)(v18 + 4) = v16[1];
      v16[1] = v20;
      v17 = v59;
      v19 = (char *)v59;
    }
    if ( !v8 )
    {
      v18 = 0;
      v1 = 0;
      goto LABEL_8;
    }
    v9 = (char *)v61[0];
    if ( (_DWORD *)v61[0] == v61 )
      v18 = 0;
    else
      v1 = 0;
    if ( (_DWORD *)v61[0] == v61 )
    {
      v19 = (char *)v17;
      v1 = v18;
LABEL_8:
      v9 = *(char **)((char *)v61 + v18);
      v10 = (char *)v61 + v18;
      if ( v9 != v10 )
        goto LABEL_9;
      goto LABEL_41;
    }
    v21 = v1;
    while ( 1 )
    {
      v22 = (char *)v61 + v21;
      while ( v22 != v9 )
      {
        if ( v19 == (char *)&v59 )
          goto LABEL_35;
        if ( *((_DWORD *)v19 + 2) < *((_DWORD *)v9 + 2) )
        {
          v23 = *(char **)v19;
          v24 = v9;
          if ( v9 != *(char **)v19 )
          {
            **((_DWORD **)v23 + 1) = v9;
            **((_DWORD **)v19 + 1) = v23;
            **((_DWORD **)v9 + 1) = v19;
            v25 = *((_DWORD **)v9 + 1);
            *((_DWORD *)v9 + 1) = *((_DWORD *)v23 + 1);
            v9 = v23;
            *((_DWORD *)v23 + 1) = *((_DWORD *)v19 + 1);
            *((_DWORD *)v19 + 1) = v25;
          }
        }
        else
        {
          v24 = *(char **)v9;
          v9 = v19;
        }
        v19 = v9;
        v9 = v24;
      }
      if ( v19 != (char *)&v59 && v22 != (char *)&v59 )
      {
        *v60 = v22;
        **((_DWORD **)v19 + 1) = &v59;
        **((_DWORD **)v22 + 1) = v19;
        v26 = *((_DWORD **)v22 + 1);
        *((_DWORD *)v22 + 1) = v60;
        v60 = *((char ***)v19 + 1);
        *((_DWORD *)v19 + 1) = v26;
      }
LABEL_35:
      v27 = *(int **)v22;
      ++v1;
      if ( v22 == *(char **)v22 )
      {
        v34 = (char **)v59;
        v35 = v59 == (int *)&v59;
        if ( v59 == (int *)&v59 )
        {
          v19 = (char *)&v59;
        }
        else
        {
          *(_DWORD *)v22 = v59;
          v34[1] = v22;
          v34 = v60;
        }
        if ( !v35 )
        {
          v19 = (char *)&v59;
          *((_DWORD *)v22 + 1) = v34;
          *v34 = v22;
          v59 = (int *)&v59;
          v60 = (char **)&v59;
        }
      }
      else
      {
        v28 = v59;
        if ( v59 == (int *)&v59 )
        {
          v59 = *(int **)v22;
          v27[1] = (int)&v59;
          v60 = *((char ***)v22 + 1);
          *v60 = (char *)&v59;
          *((_DWORD *)v22 + 1) = v22;
          *(_DWORD *)v22 = v22;
        }
        else
        {
          v59 = *(int **)v22;
          v29 = v60;
          v60 = *((char ***)v22 + 1);
          *(_DWORD *)v22 = v28;
          *((_DWORD *)v22 + 1) = v29;
          v30 = *v60;
          *v60 = *v29;
          *v29 = v30;
          v31 = *(int **)v22;
          v32 = v59[1];
          v59[1] = *(_DWORD *)(*(_DWORD *)v22 + 4);
          v31[1] = v32;
        }
        v19 = (char *)v59;
      }
      if ( v1 == v8 )
        break;
      v9 = (char *)v61[2 * v1];
      v21 = 8 * v1;
      v10 = (char *)&v61[2 * v1];
      if ( v9 == v10 )
        goto LABEL_41;
      v19 = (char *)v59;
    }
    v9 = (char *)v61[2 * v1];
    v10 = (char *)&v61[2 * v1];
    v19 = (char *)v59;
    if ( v9 != v10 )
    {
LABEL_9:
      v59 = (int *)v9;
      if ( v19 == (char *)&v59 )
      {
        *((_DWORD *)v9 + 1) = &v59;
        v60 = *((char ***)v10 + 1);
        *v60 = (char *)&v59;
        *((_DWORD *)v10 + 1) = v10;
        *(_DWORD *)v10 = v10;
      }
      else
      {
        v11 = v60;
        v60 = *((char ***)v10 + 1);
        *(_DWORD *)v10 = v19;
        *((_DWORD *)v10 + 1) = v11;
        v12 = *v60;
        *v60 = *v11;
        *v11 = v12;
        v13 = *(_DWORD *)v10;
        v14 = *(_DWORD *)(*(_DWORD *)v10 + 4);
        v15 = v59[1];
        v59[1] = v14;
        *(_DWORD *)(v13 + 4) = v15;
      }
      goto LABEL_11;
    }
LABEL_41:
    if ( v19 == (char *)&v59 )
    {
LABEL_11:
      if ( v1 == v8 )
      {
LABEL_43:
        if ( ++v8 > 63 )
          __ZSt26__stl_throw_overflow_errorPKc_veneer("list::sort");
      }
    }
    else
    {
      *(_DWORD *)v10 = v19;
      *((_DWORD *)v19 + 1) = v9;
      v33 = v60;
      *((_DWORD *)v10 + 1) = v60;
      *v33 = v9;
      v59 = (int *)&v59;
      v60 = (char **)&v59;
      if ( v1 == v8 )
        goto LABEL_43;
    }
  }
  if ( v8 > 1 )
  {
    v36 = 0;
    for ( i = 1; i != v8; ++i )
    {
      v38 = (int **)&v61[2 * i];
      v39 = (int **)&v61[v36];
      v40 = *v38;
      v41 = (int **)v61[v36];
      while ( v38 != (int **)v40 )
      {
        if ( v39 == v41 )
          goto LABEL_68;
        if ( (int)v41[2] < v40[2] )
        {
          v42 = *v41;
          v43 = v40;
          if ( v40 != *v41 )
          {
            *(_DWORD *)v42[1] = v40;
            *v41[1] = (int)v42;
            *(_DWORD *)v40[1] = v41;
            v44 = (int *)v40[1];
            v40[1] = v42[1];
            v40 = v42;
            v42[1] = (int)v41[1];
            v41[1] = v44;
          }
        }
        else
        {
          v43 = (int *)*v40;
          v40 = (int *)v41;
        }
        v41 = (int **)v40;
        v40 = v43;
      }
      if ( v39 != v41 && v38 != v39 )
      {
        *v39[1] = (int)v38;
        *v41[1] = (int)v39;
        *v38[1] = (int)v41;
        v45 = v38[1];
        v38[1] = v39[1];
        v39[1] = v41[1];
        v41[1] = v45;
      }
LABEL_68:
      v36 += 2;
    }
    v16 = (int *)*v2;
  }
  v46 = (int **)v61[2 * v8 - 2];
  v47 = (int **)&v61[2 * v8 - 2];
  if ( v46 == v47 )
  {
    if ( v2 != v16 )
    {
      *v46 = v16;
      v16[1] = (int)v46;
      v57 = (int *)v2[1];
      v46[1] = v57;
      *v57 = (int)v46;
      v2[1] = (int)v2;
      *v2 = (int)v2;
    }
  }
  else if ( v2 == v16 )
  {
    *v2 = (int)v46;
    v46[1] = v2;
    v58 = (int **)v47[1];
    v2[1] = (int)v58;
    *v58 = v2;
    v47[1] = (int *)v47;
    *v47 = (int *)v47;
  }
  else
  {
    v48 = (int *)v2[1];
    v49 = v47[1];
    *v2 = (int)v46;
    *v47 = v16;
    v2[1] = (int)v49;
    v47[1] = v48;
    v50 = *v49;
    *v49 = *v48;
    *v48 = v50;
    v51 = *v47;
    v52 = (*v47)[1];
    v53 = *(_DWORD *)(*v2 + 4);
    *(_DWORD *)(*v2 + 4) = v52;
    v51[1] = v53;
  }
  do
  {
    result = *v3;
    if ( *v3 != (int *)v3 )
    {
      while ( 1 )
      {
        v54 = (int *)*result;
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, 0xCu);
        if ( v54 == (int *)v3 )
          break;
        result = v54;
      }
    }
    *v3 = (int *)v3;
    v3[1] = (int *)v3;
    v3 += 2;
  }
  while ( v3 != v62 );
  if ( v59 != (int *)&v59 )
  {
    for ( j = (int ***)v59; ; j = (int ***)v56 )
    {
      v56 = *j;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(j, 0xCu);
      if ( v56 == &v59 )
        break;
    }
  }
  return result;
}


// ===== 33bd2c TouchScreenBase::getTouchIDList(void) =====
TouchScreenBase *__fastcall TouchScreenBase::getTouchIDList(TouchScreenBase *this, int a2)
{
  int v4; // r5
  int v5; // r3
  _DWORD *v6; // r0
  _DWORD *v7; // r3

  *(_DWORD *)this = this;
  *((_DWORD *)this + 1) = this;
  v4 = 0;
  do
  {
    while ( 1 )
    {
      v5 = *(unsigned __int8 *)(a2 + 40);
      a2 += 48;
      if ( v5 )
        break;
      if ( ++v4 == 8 )
        goto LABEL_5;
    }
    v6 = std::allocator<std::priv::_List_node<long>>::allocate();
    v6[2] = v4;
    v7 = *((_DWORD **)this + 1);
    ++v4;
    *v6 = this;
    v6[1] = v7;
    *v7 = v6;
    *((_DWORD *)this + 1) = v6;
  }
  while ( v4 != 8 );
LABEL_5:
  std::priv::_S_sort<long,std::allocator<long>,std::less<long>>((int *)this);
  return this;
}


// ===== 33bdac std::vector<TouchScreenBase::_QueuedEvent,std::allocator<TouchScreenBase::_QueuedEvent>>::~vector() =====
int __fastcall std::vector<TouchScreenBase::_QueuedEvent>::~vector(int a1)
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


// ===== 33be08 TouchScreenBase::~TouchScreenBase() =====
void __fastcall TouchScreenBase::~TouchScreenBase(TouchScreenBase *this)
{
  char *v1; // r4

  *(_DWORD *)this = off_95C3D0;
  v1 = (char *)this + 404;
  TouchScreenBase::clear(this);
  std::vector<TouchScreenBase::_QueuedEvent>::~vector((int)v1);
}


// ===== 33be48 TouchScreenBase::~TouchScreenBase() =====
void __fastcall TouchScreenBase::~TouchScreenBase(TouchScreenBase *this)
{
  TouchScreenBase::~TouchScreenBase(this);
  CustomFree(this);
}


// ===== 33be64 TouchScreenBase::~TouchScreenBase() =====
void __fastcall TouchScreenBase::~TouchScreenBase(TouchScreenBase *this)
{
  char *v1; // r4

  *(_DWORD *)this = off_95C3D0;
  v1 = (char *)this + 404;
  TouchScreenBase::clear(this);
  std::vector<TouchScreenBase::_QueuedEvent>::~vector((int)v1);
}


// ===== 33bea4 std::allocator<TouchScreenBase::_QueuedEvent>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<TouchScreenBase::_QueuedEvent>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 33bf2c std::vector<TouchScreenBase::_QueuedEvent,std::allocator<TouchScreenBase::_QueuedEvent>>::_M_allocate_and_copy<TouchScreenBase::_QueuedEvent*>(uint &,TouchScreenBase::_QueuedEvent*,TouchScreenBase::_QueuedEvent*) =====
char *__fastcall std::vector<TouchScreenBase::_QueuedEvent>::_M_allocate_and_copy<TouchScreenBase::_QueuedEvent*>(
        int a1,
        unsigned int *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r5
  int v8; // r4
  char *v9; // r3
  int v10; // r2

  v5 = a4 - a3;
  result = (char *)std::allocator<TouchScreenBase::_QueuedEvent>::_M_allocate(a1 + 8, *a2, a2);
  v7 = -1431655765 * (v5 >> 2);
  if ( v7 > 0 )
  {
    v8 = a3 + 12;
    v9 = result + 12;
    do
    {
      --v7;
      *((_DWORD *)v9 - 3) = *(_DWORD *)(v8 - 12);
      *((_WORD *)v9 - 4) = *(_WORD *)(v8 - 8);
      *((_WORD *)v9 - 3) = *(_WORD *)(v8 - 6);
      v10 = *(_DWORD *)(v8 - 4);
      v8 += 12;
      *((_DWORD *)v9 - 1) = v10;
      v9 += 12;
    }
    while ( v7 );
  }
  return result;
}


// ===== 33bfa8 std::vector<TouchScreenBase::_QueuedEvent,std::allocator<TouchScreenBase::_QueuedEvent>>::reserve(uint) [clone] =====
void __fastcall std::vector<TouchScreenBase::_QueuedEvent>::reserve(int *a1)
{
  int v1; // r2
  int v2; // r3
  int v4; // r3
  int v5; // r5
  char *v6; // r0
  int v7; // r3
  char *v8; // r6
  void *v9; // r0
  size_t v10; // r1
  char *v11; // r3
  unsigned int v12; // [sp+4h] [bp-4h] BYREF

  v1 = *a1;
  v2 = (a1[2] - *a1) >> 2;
  v12 = 16;
  if ( (unsigned int)(-1431655765 * v2) <= 0xF )
  {
    v4 = a1[1];
    v5 = -1431655765 * ((v4 - v1) >> 2);
    if ( v1 )
    {
      v6 = std::vector<TouchScreenBase::_QueuedEvent>::_M_allocate_and_copy<TouchScreenBase::_QueuedEvent*>(
             (int)a1,
             &v12,
             v1,
             v4);
      v7 = a1[1];
      v8 = v6;
      v9 = (void *)*a1;
      if ( v7 != *a1 )
        v7 += -12 * ((715827883 * ((unsigned int)(v7 - 12 - (_DWORD)v9) >> 2)) & 0x3FFFFFFF) - 12;
      if ( v7 )
      {
        v10 = 4 * ((a1[2] - v7) >> 2);
        if ( v10 > 0x80 )
          CustomFree(v9);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v9, v10);
      }
    }
    else
    {
      v8 = (char *)std::allocator<TouchScreenBase::_QueuedEvent>::_M_allocate((int)(a1 + 2), 0x10u, &v12);
    }
    v11 = &v8[12 * v12];
    a1[1] = (int)&v8[12 * v5];
    a1[2] = (int)v11;
    *a1 = (int)v8;
  }
}


// ===== 33c0e4 std::vector<TouchScreenBase::_QueuedEvent,std::allocator<TouchScreenBase::_QueuedEvent>>::_M_insert_overflow_aux(TouchScreenBase::_QueuedEvent*,TouchScreenBase::_QueuedEvent const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<TouchScreenBase::_QueuedEvent>::_M_insert_overflow_aux(void **a1, int a2, int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  char *v8; // r0
  char *v9; // r7
  int v10; // r6
  char *v11; // r3
  int v12; // r2
  char *v13; // r3
  int v14; // r1
  int v15; // r0
  char *v16; // r6
  _BYTE *v17; // r0
  _BYTE *v18; // r3
  size_t v19; // r1
  size_t v20; // r3
  size_t v21; // [sp+4h] [bp-8h] BYREF

  v6 = -1431655765 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x15555555 || v6 > v7 )
    v7 = 357913941;
  v21 = v7;
  v8 = (char *)std::allocator<TouchScreenBase::_QueuedEvent>::_M_allocate((int)(a1 + 2), v7, &v21);
  v9 = v8;
  v10 = -1431655765 * ((a2 - (int)*a1) >> 2);
  if ( v10 > 0 )
  {
    v12 = (int)*a1 + 12;
    v13 = v8 + 12;
    v14 = v10;
    do
    {
      --v14;
      *((_DWORD *)v13 - 3) = *(_DWORD *)(v12 - 12);
      *((_WORD *)v13 - 4) = *(_WORD *)(v12 - 8);
      *((_WORD *)v13 - 3) = *(_WORD *)(v12 - 6);
      v15 = *(_DWORD *)(v12 - 4);
      v12 += 12;
      *((_DWORD *)v13 - 1) = v15;
      v13 += 12;
    }
    while ( v14 );
    v11 = &v9[12 * v10];
  }
  else
  {
    v11 = v8;
  }
  v16 = v11 + 12;
  *(_DWORD *)v11 = *(_DWORD *)a3;
  *((_WORD *)v11 + 2) = *(_WORD *)(a3 + 4);
  *((_WORD *)v11 + 3) = *(_WORD *)(a3 + 6);
  *((_DWORD *)v11 + 2) = *(_DWORD *)(a3 + 8);
  v17 = *a1;
  v18 = a1[1];
  if ( v18 != *a1 )
    v18 += -12 * ((715827883 * ((unsigned int)(v18 - 12 - v17) >> 2)) & 0x3FFFFFFF) - 12;
  if ( v18 )
  {
    v19 = 4 * (((_BYTE *)a1[2] - v18) >> 2);
    if ( v19 > 0x80 )
      CustomFree(v17);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v17, v19);
  }
  v20 = v21;
  *a1 = v9;
  a1[1] = v16;
  a1[2] = &v9[12 * v20];
}


// ===== 33c298 TouchScreenBase::TouchScreenBase(short,short) =====
void __fastcall TouchScreenBase::TouchScreenBase(TouchScreenBase *this, __int16 a2, __int16 a3)
{
  TouchScreenBase *v4; // r0
  int v5; // r6
  int v6; // r1

  *(_DWORD *)this = off_95C3D0;
  v4 = (TouchScreenBase *)((char *)this + 56);
  do
  {
    v5 = 0;
    *((_WORD *)v4 - 24) = 0;
    *((_WORD *)v4 - 23) = 0;
    *((_WORD *)v4 - 22) = 0;
    *((_WORD *)v4 - 21) = 0;
    *((_WORD *)v4 - 20) = 0;
    *((_WORD *)v4 - 19) = 0;
    *((_BYTE *)v4 - 24) = 0;
    *((_BYTE *)v4 - 16) = 0;
    v4 = (TouchScreenBase *)((char *)v4 + 48);
  }
  while ( v4 != (TouchScreenBase *)((char *)this + 440) );
  *((_WORD *)this + 214) = a2;
  *((_WORD *)this + 215) = a3;
  *((_QWORD *)this + 49) = 0;
  *((_DWORD *)this + 108) = 1065353216;
  *((_DWORD *)this + 100) = 0;
  *((_DWORD *)this + 101) = 0;
  *((_DWORD *)this + 102) = 0;
  *((_DWORD *)this + 103) = 0;
  *((_DWORD *)this + 104) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 106) = 0;
  std::vector<TouchScreenBase::_QueuedEvent>::reserve((char *)this + 404);
  do
  {
    while ( 1 )
    {
      v6 = *((_DWORD *)this + 102);
      if ( v6 == *((_DWORD *)this + 103) )
        break;
      ++v5;
      *(_DWORD *)v6 = 0;
      *(_WORD *)(v6 + 4) = 0;
      *(_WORD *)(v6 + 6) = 0;
      *(_DWORD *)(v6 + 8) = 0;
      *((_DWORD *)this + 102) += 12;
      if ( v5 == 16 )
        return;
    }
    ++v5;
    std::vector<TouchScreenBase::_QueuedEvent>::_M_insert_overflow_aux((char *)this + 404);
  }
  while ( v5 != 16 );
}


// ===== 33c3d8 TouchScreenBase::TouchScreenBase(short,short) =====
void __fastcall TouchScreenBase::TouchScreenBase(TouchScreenBase *this, __int16 a2, __int16 a3)
{
  TouchScreenBase *v4; // r0
  int v5; // r6
  int v6; // r1
  int v7; // r3
  int v8; // [sp+4h] [bp-10h] BYREF
  __int16 v9; // [sp+8h] [bp-Ch]
  __int16 v10; // [sp+Ah] [bp-Ah]
  int v11; // [sp+Ch] [bp-8h]

  *(_DWORD *)this = off_95C3D0;
  v4 = (TouchScreenBase *)((char *)this + 56);
  do
  {
    v5 = 0;
    *((_WORD *)v4 - 24) = 0;
    *((_WORD *)v4 - 23) = 0;
    *((_WORD *)v4 - 22) = 0;
    *((_WORD *)v4 - 21) = 0;
    *((_WORD *)v4 - 20) = 0;
    *((_WORD *)v4 - 19) = 0;
    *((_BYTE *)v4 - 24) = 0;
    *((_BYTE *)v4 - 16) = 0;
    v4 = (TouchScreenBase *)((char *)v4 + 48);
  }
  while ( v4 != (TouchScreenBase *)((char *)this + 440) );
  *((_WORD *)this + 214) = a2;
  *((_WORD *)this + 215) = a3;
  *((_QWORD *)this + 49) = 0;
  *((_DWORD *)this + 108) = 1065353216;
  *((_DWORD *)this + 100) = 0;
  *((_DWORD *)this + 101) = 0;
  *((_DWORD *)this + 102) = 0;
  *((_DWORD *)this + 103) = 0;
  *((_DWORD *)this + 104) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 106) = 0;
  std::vector<TouchScreenBase::_QueuedEvent>::reserve((int *)this + 101);
  do
  {
    while ( 1 )
    {
      v6 = *((_DWORD *)this + 102);
      v7 = *((_DWORD *)this + 103);
      v8 = 0;
      v11 = 0;
      v9 = 0;
      v10 = 0;
      if ( v6 == v7 )
        break;
      ++v5;
      *(_DWORD *)v6 = v8;
      *(_WORD *)(v6 + 4) = v9;
      *(_WORD *)(v6 + 6) = v10;
      *(_DWORD *)(v6 + 8) = v11;
      *((_DWORD *)this + 102) += 12;
      if ( v5 == 16 )
        return;
    }
    ++v5;
    std::vector<TouchScreenBase::_QueuedEvent>::_M_insert_overflow_aux((void **)this + 101, v6, (int)&v8);
  }
  while ( v5 != 16 );
}


// ===== 33c518 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "SimulateMultiClickShitInMenus";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "SimulateMultiClickShitInMenus" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "SimulateMultiClickShitInMenus" )
    result = (char *)memcpy(result, "SimulateMultiClickShitInMenus", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 33c568 TouchScreenBase::ProcessEvents(void) =====
int __fastcall TouchScreenBase::ProcessEvents(TouchScreenBase *this)
{
  EventManager *v2; // r7
  int NextEventInQueue; // r10
  int v4; // r3
  __int16 v5; // r0
  __int16 v6; // r11
  float v7; // r4
  __int16 v8; // r9
  int v9; // r3
  const char *v10; // r2
  int Switch; // r11
  int v12; // r3
  const char *v14; // r2
  int v15; // r11
  int v16; // r3
  int v17; // r3
  int v18; // r11
  int i; // r4
  int v20; // r11
  int v21; // r11
  int j; // r4
  int v23; // r11
  __int16 v24; // [sp+4h] [bp-118h]
  _DWORD v25[2]; // [sp+34h] [bp-E8h] BYREF
  __int16 v26; // [sp+3Ch] [bp-E0h]
  __int16 v27; // [sp+3Eh] [bp-DEh]
  int v28; // [sp+40h] [bp-DCh]
  char v29; // [sp+44h] [bp-D8h]
  _DWORD v30[2]; // [sp+48h] [bp-D4h] BYREF
  __int16 v31; // [sp+50h] [bp-CCh]
  __int16 v32; // [sp+52h] [bp-CAh]
  int v33; // [sp+54h] [bp-C8h]
  char v34; // [sp+58h] [bp-C4h]
  _DWORD v35[2]; // [sp+5Ch] [bp-C0h] BYREF
  __int16 v36; // [sp+64h] [bp-B8h]
  __int16 v37; // [sp+66h] [bp-B6h]
  int v38; // [sp+68h] [bp-B4h]
  char v39; // [sp+6Ch] [bp-B0h]
  _DWORD v40[2]; // [sp+70h] [bp-ACh] BYREF
  __int16 v41; // [sp+78h] [bp-A4h]
  __int16 v42; // [sp+7Ah] [bp-A2h]
  int v43; // [sp+7Ch] [bp-A0h]
  char v44; // [sp+80h] [bp-9Ch]
  _DWORD v45[2]; // [sp+84h] [bp-98h] BYREF
  __int16 v46; // [sp+8Ch] [bp-90h]
  __int16 v47; // [sp+8Eh] [bp-8Eh]
  int v48; // [sp+90h] [bp-8Ch]
  char v49; // [sp+94h] [bp-88h]
  _DWORD v50[2]; // [sp+98h] [bp-84h] BYREF
  __int16 v51; // [sp+A0h] [bp-7Ch]
  __int16 v52; // [sp+A2h] [bp-7Ah]
  int v53; // [sp+A4h] [bp-78h]
  char v54; // [sp+A8h] [bp-74h]
  _DWORD v55[2]; // [sp+ACh] [bp-70h] BYREF
  __int16 v56; // [sp+B4h] [bp-68h]
  __int16 v57; // [sp+B6h] [bp-66h]
  int v58; // [sp+B8h] [bp-64h]
  char v59; // [sp+BCh] [bp-60h]
  _DWORD v60[2]; // [sp+C0h] [bp-5Ch] BYREF
  __int16 v61; // [sp+C8h] [bp-54h]
  __int16 v62; // [sp+CAh] [bp-52h]
  int v63; // [sp+CCh] [bp-50h]
  char v64; // [sp+D0h] [bp-4Ch]
  _DWORD v65[2]; // [sp+D4h] [bp-48h] BYREF
  __int16 v66; // [sp+DCh] [bp-40h]
  __int16 v67; // [sp+DEh] [bp-3Eh]
  int v68; // [sp+E0h] [bp-3Ch]
  std::string v69; // [sp+E4h] [bp-38h] BYREF
  std::string v70; // [sp+FCh] [bp-20h] BYREF

  v2 = (EventManager *)dword_99F740;
LABEL_2:
  while ( !TouchScreenBase::_IsQueueEmpty(this) )
  {
    while ( 1 )
    {
      NextEventInQueue = TouchScreenBase::_GetNextEventInQueue(this);
      TouchScreenBase::_PopFromQueue(this);
      v4 = *((_DWORD *)this + 106);
      v5 = *(_WORD *)(NextEventInQueue + 4);
      v6 = *(_WORD *)(NextEventInQueue + 6);
      switch ( v4 )
      {
        case 2:
          v5 = *((_WORD *)this + 214) - v5;
          v6 = *((_WORD *)this + 215) - v6;
          break;
        case 3:
          v5 = *((_WORD *)this + 214) - v5;
          break;
        case 1:
          v6 = *((_WORD *)this + 215) - v6;
          break;
      }
      v7 = *((float *)this + 108);
      v8 = (int)(float)((float)v5 * v7);
      v9 = *(_DWORD *)NextEventInQueue;
      v24 = (int)(float)(v7 * (float)v6);
      if ( *(_DWORD *)NextEventInQueue == 1 )
      {
        v17 = *(_DWORD *)(NextEventInQueue + 8);
        v65[0] = off_95C390;
        v68 = v17;
        v65[1] = 5;
        v66 = (int)(float)((float)v5 * v7);
        v67 = (int)(float)(v7 * (float)v6);
        EventManager::Raise(v2, (const IEvent *)v65);
        v65[0] = off_95B458;
        goto LABEL_2;
      }
      if ( v9 == 2 )
        break;
      if ( v9 )
        goto LABEL_2;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      v70._M_finish = (char *)&v70;
      v70._M_start_of_storage._M_data = (char *)&v70;
      std::string::_M_range_initialize(&v70, "", v10);
      Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v70);
      if ( (std::string *)v70._M_start_of_storage._M_data != &v70 && v70._M_start_of_storage._M_data )
      {
        if ( (unsigned int)(v70._M_buffers._M_end_of_storage - v70._M_start_of_storage._M_data) > 0x80 )
          CustomFree(v70._M_start_of_storage._M_data);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
            v70._M_start_of_storage._M_data,
            v70._M_buffers._M_end_of_storage - v70._M_start_of_storage._M_data);
      }
      if ( Switch )
      {
        v18 = v8 - 100;
        for ( i = *(_DWORD *)(NextEventInQueue + 8); v18 <= v8 + 99; ++i )
        {
          v63 = i % 8;
          v60[1] = 4;
          v61 = v18;
          v64 = 1;
          v60[0] = off_95C3A8;
          v62 = v24;
          EventManager::Raise(v2, (const IEvent *)v60);
          v18 += 50;
          v60[0] = off_95B458;
        }
        v20 = v24 - 100;
        if ( !__OFSUB__(v20, v24 + 99) || v20 == v24 + 99 )
        {
          do
          {
            v58 = i % 8;
            v57 = v20;
            v55[1] = 4;
            v55[0] = off_95C3A8;
            v56 = v8;
            v59 = 1;
            EventManager::Raise(v2, (const IEvent *)v55);
            v20 += 50;
            v55[0] = off_95B458;
            ++i;
          }
          while ( v20 <= v24 + 99 );
        }
        v50[1] = 4;
        v50[0] = off_95C3A8;
        v53 = 0;
        v54 = 1;
        v51 = 25;
        v52 = 25;
        EventManager::Raise(v2, (const IEvent *)v50);
        v50[0] = off_95B458;
      }
      v12 = *(_DWORD *)(NextEventInQueue + 8);
      v45[0] = off_95C3A8;
      v48 = v12;
      v45[1] = 4;
      v47 = v24;
      v49 = 1;
      v46 = v8;
      EventManager::Raise(v2, (const IEvent *)v45);
      v45[0] = off_95B458;
      if ( TouchScreenBase::_IsQueueEmpty(this) )
        return 16556;
    }
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v69._M_finish = (char *)&v69;
    v69._M_start_of_storage._M_data = (char *)&v69;
    std::string::_M_range_initialize(&v69, "", v14);
    v15 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v69);
    if ( (std::string *)v69._M_start_of_storage._M_data != &v69 && v69._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v69._M_buffers._M_end_of_storage - v69._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v69._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v69._M_start_of_storage._M_data,
          v69._M_buffers._M_end_of_storage - v69._M_start_of_storage._M_data);
    }
    if ( v15 )
    {
      v21 = v8 - 100;
      for ( j = *(_DWORD *)(NextEventInQueue + 8); v21 <= v8 + 99; ++j )
      {
        v43 = j % 8;
        v40[1] = 4;
        v41 = v21;
        v44 = 0;
        v40[0] = off_95C3A8;
        v42 = v24;
        EventManager::Raise(v2, (const IEvent *)v40);
        v21 += 50;
        v40[0] = off_95B458;
      }
      v23 = v24 - 100;
      if ( !__OFSUB__(v23, v24 + 99) || v23 == v24 + 99 )
      {
        do
        {
          v38 = j % 8;
          v37 = v23;
          v35[1] = 4;
          v35[0] = off_95C3A8;
          v36 = v8;
          v39 = 0;
          EventManager::Raise(v2, (const IEvent *)v35);
          v23 += 50;
          v35[0] = off_95B458;
          ++j;
        }
        while ( v23 <= v24 + 99 );
      }
      v30[1] = 4;
      v34 = 0;
      v33 = 0;
      v30[0] = off_95C3A8;
      v31 = 25;
      v32 = 25;
      EventManager::Raise(v2, (const IEvent *)v30);
      v30[0] = off_95B458;
    }
    v16 = *(_DWORD *)(NextEventInQueue + 8);
    v25[0] = off_95C3A8;
    v28 = v16;
    v29 = 0;
    v25[1] = 4;
    v26 = v8;
    v27 = v24;
    EventManager::Raise(v2, (const IEvent *)v25);
    v25[0] = off_95B458;
  }
  return 16556;
}


// ===== 33cc58 TouchScreenIPhone::getLeftBound(void) =====
int __fastcall TouchScreenIPhone::getLeftBound(TouchScreenIPhone *this)
{
  return *((__int16 *)this + 218);
}


// ===== 33cc64 TouchScreenIPhone::getRightBound(void) =====
int __fastcall TouchScreenIPhone::getRightBound(TouchScreenIPhone *this)
{
  return *((__int16 *)this + 219);
}


// ===== 33cc70 TouchScreenIPhone::getTopBound(void) =====
int __fastcall TouchScreenIPhone::getTopBound(TouchScreenIPhone *this)
{
  return *((__int16 *)this + 220);
}


// ===== 33cc7c TouchScreenIPhone::getBottomBound(void) =====
int __fastcall TouchScreenIPhone::getBottomBound(TouchScreenIPhone *this)
{
  return *((__int16 *)this + 221);
}


// ===== 33cc88 `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenIPhone.cpp =====
void `global constructor keyed to'.._.._sources_Core_IO_TouchScreen_TouchScreenIPhone.cpp()
{
  dword_9A1DD8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1DD4 = 1056964608;
}


// ===== 33cca8 TouchScreenIPhone::getTouchIDInRegion(glitch::core::rect<float> const&) =====
// attributes: thunk
int __fastcall TouchScreenIPhone::getTouchIDInRegion(int a1, float *a2)
{
  return TouchScreenBase::getTouchIDInRegion(a1, a2);
}


// ===== 33ccac TouchScreenIPhone::isRegionPressed(glitch::core::rect<float> const&) =====
// attributes: thunk
int __fastcall TouchScreenIPhone::isRegionPressed(int a1, float *a2)
{
  return TouchScreenBase::isRegionPressed(a1, a2);
}


// ===== 33ccb0 TouchScreenIPhone::~TouchScreenIPhone() =====
void __fastcall TouchScreenIPhone::~TouchScreenIPhone(TouchScreenIPhone *this)
{
  *(_DWORD *)this = off_95C430;
  TouchScreenBase::~TouchScreenBase(this);
}


// ===== 33cce4 TouchScreenIPhone::~TouchScreenIPhone() =====
void __fastcall TouchScreenIPhone::~TouchScreenIPhone(TouchScreenIPhone *this)
{
  TouchScreenIPhone::~TouchScreenIPhone(this);
  CustomFree(this);
}


// ===== 33cd00 TouchScreenIPhone::~TouchScreenIPhone() =====
void __fastcall TouchScreenIPhone::~TouchScreenIPhone(TouchScreenIPhone *this)
{
  *(_DWORD *)this = off_95C430;
  TouchScreenBase::~TouchScreenBase(this);
}


// ===== 33cd34 TouchScreenIPhone::TouchScreenIPhone(float,float,float,float,float) =====
void __fastcall TouchScreenIPhone::TouchScreenIPhone(
        TouchScreenIPhone *this,
        float a2,
        float a3,
        float a4,
        float a5,
        float a6)
{
  __int16 v9; // r7
  __int16 v10; // r6

  v9 = (int)a4;
  v10 = (int)a5;
  TouchScreenBase::TouchScreenBase(this, v9, v10);
  *(_DWORD *)this = off_95C430;
  *((_WORD *)this + 218) = (int)a2;
  *((_WORD *)this + 219) = v9;
  *((_WORD *)this + 220) = (int)a3;
  *((_WORD *)this + 221) = v10;
  *((float *)this + 108) = a6;
}

