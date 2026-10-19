// ===== 7a7c88 RenderFX::SetControllerEnabled(int,bool) =====
int __fastcall RenderFX::SetControllerEnabled(int this, int a2, bool a3)
{
  *(_BYTE *)(this + 40 * a2 + 124) = a3;
  return this;
}


// ===== 7a7c98 RenderFX::SetInputBehavior(int) =====
int __fastcall RenderFX::SetInputBehavior(int this, int a2)
{
  *(_DWORD *)(this + 248) = a2;
  return this;
}


// ===== 7a7ca0 RenderFX::GetFlashRoot(void) =====
int __fastcall RenderFX::GetFlashRoot(RenderFX *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 15) + 16);
}


// ===== 7a7cac RenderFX::GetRoot(void) =====
int __fastcall RenderFX::GetRoot(RenderFX *this)
{
  return *((_DWORD *)this + 15);
}


// ===== 7a7cb4 RenderFX::SetTextBufferingEnabled(bool) =====
int __fastcall RenderFX::SetTextBufferingEnabled(int this, bool a2)
{
  *(_BYTE *)(*(_DWORD *)(this + 60) + 133) = a2;
  return this;
}


// ===== 7a7cc0 RenderFX::SetAutoLoadGlyphsEnabled(bool) =====
int __fastcall RenderFX::SetAutoLoadGlyphsEnabled(int this, bool a2)
{
  *(_BYTE *)(*(_DWORD *)(this + 60) + 135) = a2;
  return this;
}


// ===== 7a7ccc RenderFX::SetRenderCachingEnabled(bool) =====
int __fastcall RenderFX::SetRenderCachingEnabled(int this, bool a2)
{
  *(_BYTE *)(*(_DWORD *)(this + 56) + 152) = a2;
  return this;
}


// ===== 7a7cd8 RenderFX::GetAlpha(gameswf::character *) =====
int __fastcall RenderFX::GetAlpha(RenderFX *this, gameswf::character *a2, int a3, int a4)
{
  int result; // r0

  if ( a2 )
    a4 = *((_DWORD *)a2 + 18);
  else
    result = 0;
  if ( a2 )
    return *(_DWORD *)(a4 + 24);
  return result;
}


// ===== 7a7cec RenderFX::GetText(gameswf::character *) =====
char *__fastcall RenderFX::GetText(RenderFX *this, gameswf::character *a2)
{
  if ( !a2 || !(*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 32) )
    return nullptr;
  if ( *((unsigned __int8 *)a2 + 312) == 255 )
    return *((char **)a2 + 81);
  return (char *)a2 + 313;
}


// ===== 7a7d34 RenderFX::GotoFrame(gameswf::character *,int,bool) =====
void __fastcall RenderFX::GotoFrame(RenderFX *this, gameswf::character *a2, int a3, int a4)
{
  if ( a2 )
  {
    if ( (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2) )
    {
      (*(void (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 332))(a2, a3);
      (*(void (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 148))(a2, a4 ^ 1);
    }
  }
}


// ===== 7a7d90 RenderFX::GetFrameCount(gameswf::character *) =====
int __fastcall RenderFX::GetFrameCount(RenderFX *this, gameswf::character *a2)
{
  if ( a2 && (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2) )
    return (*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 316))(a2);
  else
    return 0;
}


// ===== 7a7dd4 RenderFX::IsAnimOver(gameswf::character *) =====
bool __fastcall RenderFX::IsAnimOver(RenderFX *this, gameswf::character *a2)
{
  int v3; // r5

  if ( !a2 || !(*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2) )
    return 0;
  (*(void (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 312))(a2);
  (*(void (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 316))(a2);
  v3 = (*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 312))(a2);
  return v3 >= (*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 316))(a2) - 1;
}


// ===== 7a7e5c RenderFX::FSCommand(char const*,char const*) =====
int __fastcall RenderFX::FSCommand(int this, const char *a2, const char *a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(this + 252);
  if ( v3 )
    return (*(int (__fastcall **)(_DWORD, const char *, const char *))(*(_DWORD *)v3 + 4))(
             *(_DWORD *)(this + 252),
             a2,
             a3);
  return this;
}


// ===== 7a7e80 RenderFX::RegisterDisplayCallback(gameswf::character *,void (*)(gameswf::render_state &,void *),void *) =====
int __fastcall RenderFX::RegisterDisplayCallback(int a1, int a2, int a3, int a4)
{
  if ( !a2 )
    return 0;
  (*(void (__fastcall **)(int, int, int))(*(_DWORD *)a2 + 340))(a2, a3, a4);
  return 1;
}


// ===== 7a7eb4 RenderFX::SetOrientation(gameswf::orientation_mode) =====
int RenderFX::SetOrientation()
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 168))(gameswf::s_render_handler);
}


// ===== 7a7ee8 RenderFX::SetContext(gameswf::character *) =====
int __fastcall RenderFX::SetContext(int this, gameswf::character *a2)
{
  *(_DWORD *)(this + 64) = a2;
  return this;
}


// ===== 7a7ef0 RenderFX::GetContext(void) =====
int __fastcall RenderFX::GetContext(RenderFX *this)
{
  return *((_DWORD *)this + 16);
}


// ===== 7a7ef8 `non-virtual thunk to'MenuFX::OnFSCommand(char const*,char const*) =====
int __fastcall `non-virtual thunk to'MenuFX::OnFSCommand(MenuFX *this, const char *a2, const char *a3)
{
  return MenuFX::OnFSCommand((MenuFX *)((char *)this - 256), a2, a3);
}


// ===== 7a7f00 MenuFX::OnFSCommand(char const*,char const*) =====
int __fastcall MenuFX::OnFSCommand(int this, const char *a2, const char *a3)
{
  int v3; // r3
  int v4; // r0

  v3 = *(_DWORD *)(this + 280);
  if ( v3 > 0 )
  {
    v4 = *(_DWORD *)(*(_DWORD *)(this + 276) + 4 * (v3 - 1));
    return (*(int (__fastcall **)(int, const char *, const char *))(*(_DWORD *)v4 + 48))(v4, a2, a3);
  }
  return this;
}


// ===== 7a7f30 MenuFX::GetCurrentState(void) =====
int __fastcall MenuFX::GetCurrentState(int this, int a2, int a3)
{
  int v3; // r3
  bool v4; // cc

  v3 = *(_DWORD *)(this + 280);
  v4 = v3 <= 0;
  if ( v3 <= 0 )
  {
    this = 0;
  }
  else
  {
    a3 = *(_DWORD *)(this + 276);
    --v3;
  }
  if ( !v4 )
    return *(_DWORD *)(a3 + 4 * v3);
  return this;
}


// ===== 7a7f4c MenuFX::IsStateInStack(MenuFX::State *) =====
int __fastcall MenuFX::IsStateInStack(MenuFX *this, MenuFX::State *a2)
{
  int v2; // r3
  MenuFX::State **v3; // r12
  int v4; // r2

  v2 = *((_DWORD *)this + 70);
  if ( v2 <= 0 )
    return 0;
  v3 = *((MenuFX::State ***)this + 69);
  if ( *v3 != a2 )
  {
    v4 = 0;
    while ( ++v4 != v2 )
    {
      if ( v3[v4] == a2 )
        return 1;
    }
    return 0;
  }
  return 1;
}


// ===== 7a7f98 `global constructor keyed to'.._.._src_menufx_menufx.cpp =====
void `global constructor keyed to'.._.._src_menufx_menufx.cpp()
{
  dword_A2CB98 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_A2CB94 = 1056964608;
}


// ===== 7a7fb8 gameswf::destruct<gameswf::player_context>(gameswf::player_context const*) =====
void __fastcall gameswf::destruct<gameswf::player_context>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 7a7fe4 RenderFX::DestroyContext(gameswf::player_context *) =====
void __fastcall RenderFX::DestroyContext(void (__fastcall ***this)(_DWORD), gameswf::player_context *a2)
{
  if ( this )
    gameswf::destruct<gameswf::player_context>(this);
}


// ===== 7a7ff0 gameswf::destruct<gameswf::render_handler>(gameswf::render_handler const*) =====
void __fastcall gameswf::destruct<gameswf::render_handler>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 7a801c gameswf::array<RenderFX::DepthSearchEntry>::reserve(int) =====
void __fastcall gameswf::array<RenderFX::DepthSearchEntry>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
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


// ===== 7a8098 RenderFX::DepthSearchData::Init(gameswf::character *,char const*) =====
int __fastcall RenderFX::DepthSearchData::Init(RenderFX::DepthSearchData *this, gameswf::character *a2, const char *a3)
{
  int v3; // r3
  int v7; // r3
  int result; // r0
  int v9; // r2
  int v10; // r3
  int v11; // r6
  int v12; // r3
  int v13; // r2
  int v14; // r6
  _DWORD *v15; // r1
  int v16; // r2
  int v17; // r2
  _DWORD *v18; // r12

  v3 = *((_DWORD *)this + 5);
  if ( v3 < 0 )
  {
    v17 = 8 * v3;
    do
    {
      ++v3;
      v18 = (_DWORD *)(*((_DWORD *)this + 4) + v17);
      *v18 = 0;
      v18[1] = 0;
      v17 += 8;
    }
    while ( v3 );
  }
  v7 = *((_DWORD *)this + 1);
  result = 0;
  *((_DWORD *)this + 5) = 0;
  if ( v7 < 0 )
  {
    v16 = 4 * v7;
    do
    {
      ++v7;
      *(_DWORD *)(*(_DWORD *)this + v16) = 0;
      v16 += 4;
    }
    while ( v7 );
  }
  v9 = *((_DWORD *)this + 2);
  v10 = 0;
  *((_DWORD *)this + 1) = 0;
  v11 = *((_DWORD *)this + 5);
  if ( v9 <= 0 )
  {
    gameswf::array<int>::reserve((int)this, 1);
    v10 = 4 * *((_DWORD *)this + 1);
  }
  *(_DWORD *)(*(_DWORD *)this + v10) = v11;
  v12 = *((_DWORD *)this + 5);
  v13 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 1) = 1;
  v14 = v12 + 1;
  if ( v12 + 1 > v13 )
  {
    gameswf::array<RenderFX::DepthSearchEntry>::reserve((int)this + 16, v14 + (v14 >> 1));
    v12 = *((_DWORD *)this + 5);
  }
  v15 = (_DWORD *)(*((_DWORD *)this + 4) + 8 * v12);
  v15[1] = a3;
  *v15 = a2;
  *((_DWORD *)this + 5) = v14;
  return result;
}


// ===== 7a8190 RenderFX::DepthSearchData::~DepthSearchData() =====
void __fastcall RenderFX::DepthSearchData::~DepthSearchData(RenderFX::DepthSearchData *this)
{
  int v1; // r2
  char *v3; // r0
  int v4; // r3
  int v5; // r3
  _DWORD *v6; // lr
  int v7; // r2

  v1 = *((_DWORD *)this + 5);
  v3 = (char *)this + 16;
  if ( v1 < 0 )
  {
    v5 = 8 * v1;
    do
    {
      ++v1;
      v6 = (_DWORD *)(*((_DWORD *)this + 4) + v5);
      *v6 = 0;
      v6[1] = 0;
      v5 += 8;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 5) = 0;
  gameswf::array<RenderFX::DepthSearchEntry>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 1);
  if ( v4 < 0 )
  {
    v7 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*(_DWORD *)this + v7) = 0;
      v7 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 1) = 0;
  gameswf::array<int>::reserve((int)this, 0);
}


// ===== 7a823c gameswf::array<RenderFX::SearchIndex::Entry>::reserve(int) =====
void __fastcall gameswf::array<RenderFX::SearchIndex::Entry>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 260 * a2, 260 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(260 * a2);
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


// ===== 7a82c4 MenuFX::GetState(char const*) =====
int __fastcall MenuFX::GetState(MenuFX *this, const char *a2)
{
  int v2; // r6
  int v4; // r8
  int v5; // r4
  int v6; // r5

  v2 = *((_DWORD *)this + 66);
  if ( v2 <= 0 )
    return 0;
  v4 = *((_DWORD *)this + 65);
  v5 = 0;
  while ( 1 )
  {
    v6 = *(_DWORD *)(v4 + 4 * v5++);
    if ( !LC_API_STRCMP_0((const char *)(v6 + 8), a2) )
      break;
    if ( v5 == v2 )
      return 0;
  }
  return v6;
}


// ===== 7a831c gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(gameswf::tu_string const&) =====
int __fastcall gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(
        int *a1,
        char *a2)
{
  int v2; // r5
  int v4; // r6
  int v6; // r10
  char *v7; // r1
  int v8; // r3
  int v9; // t1
  int v10; // r3
  int v11; // r4
  char *v12; // r3
  int v13; // t1
  int v14; // r3
  int v15; // r8
  int v16; // r2
  int v17; // r8
  int v18; // r2
  const char *v19; // r0
  const char *v20; // r1

  v2 = *a1;
  if ( !*a1 )
    return -1;
  v6 = *a2;
  if ( v6 == -1 )
  {
    v8 = *((_DWORD *)a2 + 1);
    v7 = *((char **)a2 + 3);
  }
  else
  {
    v9 = *a2;
    v7 = a2 + 1;
    v8 = v9;
  }
  v10 = v8 - 1;
  if ( v10 > 0 )
  {
    v12 = &v7[v10];
    v11 = 5381;
    do
    {
      v13 = (unsigned __int8)*--v12;
      v11 = (33 * v11) ^ v13;
    }
    while ( v12 != v7 );
    if ( v11 == -1 )
      v11 = -32769;
  }
  else
  {
    v11 = 5381;
  }
  v14 = *(_DWORD *)(v2 + 4);
  v4 = v11 & v14;
  v15 = 4 * (v11 & v14) + 1;
  v16 = *(_DWORD *)(v2 + 8 * v15);
  v17 = v2 + 8 * v15;
  if ( v16 == -2 )
    return -1;
  v18 = *(_DWORD *)(v17 + 4);
  if ( v18 != -1 && (v14 & v18) != v4 )
    return -1;
  while ( 1 )
  {
    if ( v11 == v18 )
    {
      if ( a2 == (char *)(v17 + 8) )
        break;
      v19 = *(char *)(v17 + 8) == -1 ? *(const char **)(v17 + 20) : (const char *)(v17 + 9);
      v20 = v6 == -1 ? *((const char **)a2 + 3) : a2 + 1;
      if ( !LC_API_STRCMP_0(v19, v20) )
        break;
    }
    v4 = *(_DWORD *)v17;
    if ( *(_DWORD *)v17 == -1 )
      break;
    v17 = v2 + 32 * v4 + 8;
    v18 = *(_DWORD *)(v2 + 32 * v4 + 12);
  }
  return v4;
}


// ===== 7a8420 message_log(char const*) =====
int __fastcall message_log(gameswf *a1)
{
  int result; // r0

  result = gameswf::get_verbose_parse(a1);
  if ( result )
  {
    fputs((const char *)a1, (FILE *)&_sF + 1);
    return fflush((FILE *)&_sF + 1);
  }
  return result;
}


// ===== 7a846c log_callback(bool,char const*) =====
int __fastcall log_callback(int a1, gameswf *a2)
{
  if ( !a1 )
    return message_log(a2);
  message_log(a2);
  fputs((const char *)a2, (FILE *)&_sF + 2);
  return fflush((FILE *)&_sF + 2);
}


// ===== 7a84c4 RenderFX::Controller::Reset(void) =====
gameswf::ref_counted *__fastcall RenderFX::Controller::Reset(gameswf::ref_counted **this)
{
  gameswf::smart_ptr<gameswf::character>::set_ref(this + 4, nullptr);
  gameswf::smart_ptr<gameswf::character>::set_ref(this + 5, nullptr);
  gameswf::smart_ptr<gameswf::character>::set_ref(this + 6, nullptr);
  gameswf::smart_ptr<gameswf::character>::set_ref(this + 7, nullptr);
  return gameswf::smart_ptr<gameswf::character>::set_ref(this + 8, nullptr);
}


// ===== 7a850c RenderFX::RenderFX(void) =====
void __fastcall RenderFX::RenderFX(RenderFX *this)
{
  unsigned int v2; // r2
  char *v3; // r4
  char *v4; // r8
  gameswf::ref_counted **v5; // r0

  v2 = *((_DWORD *)this + 21) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 21) = v2;
  *(_DWORD *)this = off_9911A0;
  *((_BYTE *)this + 87) = HIBYTE(v2) & 0xFE;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 68) = 1;
  *((_BYTE *)this + 69) = 0;
  v3 = (char *)this + 88;
  v4 = (char *)this + 248;
  do
  {
    *((_DWORD *)v3 + 1) = 0;
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 2) = 0;
    *((_DWORD *)v3 + 3) = 0;
    *((_DWORD *)v3 + 4) = 0;
    *((_DWORD *)v3 + 5) = 0;
    *((_DWORD *)v3 + 6) = 0;
    *((_DWORD *)v3 + 7) = 0;
    *((_DWORD *)v3 + 8) = 0;
    v3[36] = 1;
    v5 = (gameswf::ref_counted **)v3;
    v3 += 40;
    RenderFX::Controller::Reset(v5);
  }
  while ( v3 != v4 );
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 62) = 0;
}


// ===== 7a85f8 RenderFX::RenderFX(void) =====
void __fastcall RenderFX::RenderFX(RenderFX *this)
{
  unsigned int v2; // r2
  char *v3; // r4
  char *v4; // r8
  gameswf::ref_counted **v5; // r0

  v2 = *((_DWORD *)this + 21) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 21) = v2;
  *(_DWORD *)this = off_9911A0;
  *((_BYTE *)this + 87) = HIBYTE(v2) & 0xFE;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_BYTE *)this + 52) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 68) = 1;
  *((_BYTE *)this + 69) = 0;
  v3 = (char *)this + 88;
  v4 = (char *)this + 248;
  do
  {
    *((_DWORD *)v3 + 1) = 0;
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 2) = 0;
    *((_DWORD *)v3 + 3) = 0;
    *((_DWORD *)v3 + 4) = 0;
    *((_DWORD *)v3 + 5) = 0;
    *((_DWORD *)v3 + 6) = 0;
    *((_DWORD *)v3 + 7) = 0;
    *((_DWORD *)v3 + 8) = 0;
    v3[36] = 1;
    v5 = (gameswf::ref_counted **)v3;
    v3 += 40;
    RenderFX::Controller::Reset(v5);
  }
  while ( v3 != v4 );
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 62) = 0;
}


// ===== 7a86e4 MenuFX::MenuFX(void) =====
void __fastcall MenuFX::MenuFX(MenuFX *this)
{
  RenderFX::RenderFX(this);
  *((_BYTE *)this + 288) = 0;
  *((_DWORD *)this + 64) = &off_99118C;
  *((_DWORD *)this + 65) = 0;
  *(_DWORD *)this = off_991150;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_BYTE *)this + 272) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  RenderFX::SetEventListener((int)this, (MenuFX *)((char *)this + 256));
}


// ===== 7a8750 MenuFX::MenuFX(void) =====
void __fastcall MenuFX::MenuFX(MenuFX *this)
{
  RenderFX::RenderFX(this);
  *((_BYTE *)this + 288) = 0;
  *((_DWORD *)this + 64) = &off_99118C;
  *((_DWORD *)this + 65) = 0;
  *(_DWORD *)this = off_991150;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_BYTE *)this + 272) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  RenderFX::SetEventListener((int)this, (MenuFX *)((char *)this + 256));
}


// ===== 7a87bc gameswf::smart_ptr<gameswf::player>::set_ref(gameswf::player*) =====
void __fastcall gameswf::smart_ptr<gameswf::player>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7a87fc RenderFX::DepthSearch(int) =====
_DWORD *__fastcall RenderFX::DepthSearch(RenderFX *this, int a2)
{
  int v3; // r2
  int v4; // r3
  int v5; // r6
  int v6; // r0
  int v7; // r5
  int v8; // r7
  int v9; // r5
  const char *v10; // r6
  const char *v11; // r3
  char *v12; // r11
  char *v13; // r0
  _DWORD *v14; // r5
  size_t v15; // r2
  char *v16; // r0
  int v17; // r3
  int v18; // r1
  const char *v19; // r11
  int v20; // r3
  int v21; // r10
  _DWORD *v22; // r1
  int v23; // r8
  int v24; // r9
  const char *v25; // r0
  int v27; // [sp+0h] [bp-24h]
  char *v28; // [sp+4h] [bp-20h]
  char *v29; // [sp+8h] [bp-1Ch]
  int v30; // [sp+Ch] [bp-18h]
  int v31; // [sp+10h] [bp-14h]
  int v32; // [sp+14h] [bp-10h]
  int i; // [sp+18h] [bp-Ch]
  char *v34; // [sp+1Ch] [bp-8h]

  v3 = *((_DWORD *)this + 6);
  v4 = *((_DWORD *)this + 7);
  v5 = *((_DWORD *)this + 11);
  v31 = a2 + 1;
  v32 = 4 * a2;
  v34 = (char *)this + 24;
  v28 = (char *)this + 40;
  for ( i = 4 * (a2 + 1); ; i += 4 )
  {
    v6 = v31;
    v7 = v4 + 1;
    if ( v31 < v4 )
      v6 = i;
    v8 = *(_DWORD *)(v3 + v32);
    if ( v31 < v4 )
      v30 = *(_DWORD *)(v3 + v6);
    else
      v30 = v5;
    if ( v7 > *((_DWORD *)this + 8) )
    {
      gameswf::array<int>::reserve((int)v34, v7 + (v7 >> 1));
      v3 = *((_DWORD *)this + 6);
      v4 = *((_DWORD *)this + 7);
    }
    *(_DWORD *)(v3 + 4 * v4) = v5;
    *((_DWORD *)this + 7) = v7;
    if ( v30 > v8 )
      break;
LABEL_37:
    v4 = *((_DWORD *)this + 7);
    v3 = *((_DWORD *)this + 6);
    v5 = *((_DWORD *)this + 11);
    v32 += 4;
    if ( *(_DWORD *)(v3 + 4 * (v4 - 1)) == v5 )
      return nullptr;
    ++v31;
  }
  v9 = *((_DWORD *)this + 10) + 8 * v8;
  v10 = *(const char **)(v9 + 4);
  if ( v10 )
  {
    v11 = nullptr;
    v27 = 8 * (v8 + 1);
    v29 = nullptr;
    while ( 1 )
    {
      if ( v10 == v11 )
      {
        v12 = v29;
      }
      else
      {
        v13 = strchr(v10, 46);
        v12 = v13;
        if ( v13 )
        {
          v29 = v13;
        }
        else
        {
          v29 = (char *)&v10[LC_API_STRLEN_0(v10)];
          v12 = v29;
        }
      }
      v14 = *(_DWORD **)v9;
      v15 = v12 - v10;
      v16 = (char *)v14[17];
      v17 = *v16;
      v18 = v17 == -1 ? *((_DWORD *)v16 + 1) : *v16;
      if ( v15 == v18 - 1 )
      {
        v25 = v17 == -1 ? *((const char **)v16 + 3) : v16 + 1;
        if ( !LC_API_STRNCMP_0(v25, v10, v15) )
          break;
      }
      v19 = v10;
      if ( (*(int (__fastcall **)(_DWORD *, int))(*v14 + 8))(v14, 2) )
        goto LABEL_22;
LABEL_33:
      if ( ++v8 == v30 )
        goto LABEL_37;
      v11 = v10;
      v9 = *((_DWORD *)this + 10) + v27;
      v10 = *(const char **)(v9 + 4);
      v27 += 8;
      if ( !v10 )
        return nullptr;
    }
    if ( !*v12 )
      return v14;
    v19 = v12 + 1;
    if ( !(*(int (__fastcall **)(_DWORD *, int))(*v14 + 8))(v14, 2) )
      goto LABEL_33;
LABEL_22:
    if ( (int)v14[43] > 0 )
    {
      v20 = *((_DWORD *)this + 11);
      v21 = 0;
      do
      {
        v23 = v20 + 1;
        v24 = *(_DWORD *)(v14[42] + 4 * v21++);
        if ( v20 + 1 > *((_DWORD *)this + 12) )
        {
          gameswf::array<RenderFX::DepthSearchEntry>::reserve((int)v28, v23 + (v23 >> 1));
          v20 = *((_DWORD *)this + 11);
        }
        v22 = (_DWORD *)(*((_DWORD *)this + 10) + 8 * v20);
        v22[1] = v19;
        *v22 = v24;
        *((_DWORD *)this + 11) = v23;
        v20 = v23;
      }
      while ( v21 < v14[43] );
    }
    goto LABEL_33;
  }
  return nullptr;
}


// ===== 7a8a84 RenderFX::Find(char const*,gameswf::character *) =====
_DWORD *__fastcall RenderFX::Find(RenderFX *this, const char *a2, gameswf::character *a3)
{
  bool v3; // zf
  int v4; // r5

  v3 = a2 == nullptr;
  if ( a2 )
    v3 = a3 == nullptr;
  v4 = v3;
  if ( v3 )
    return nullptr;
  RenderFX::DepthSearchData::Init((RenderFX *)((char *)this + 24), a3, a2);
  return RenderFX::DepthSearch(this, v4);
}


// ===== 7a8acc RenderFX::CollectCharacters(gameswf::character *,char const*,int) =====
int __fastcall RenderFX::CollectCharacters(RenderFX *this, gameswf::character *a2, const char *a3, int a4)
{
  int v4; // r4
  int result; // r0
  char *v10; // r0
  const char *v11; // r0
  int v12; // r3
  int v13; // r4
  int v14; // r4
  char *v15; // r2
  int v16; // r3

  if ( (a4 & 1) != 0 )
    v4 = *((unsigned __int8 *)a2 + 155);
  if ( (a4 & 1) == 0 )
    v4 = 1;
  result = (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2);
  if ( (!result || (a4 & 2) == 0 || *((_BYTE *)a2 + 234)) && v4 )
  {
    if ( !a3
      || ((v10 = *((char **)a2 + 17), *v10 == -1) ? (v11 = *((const char **)v10 + 3)) : (v11 = v10 + 1),
          LC_API_STRSTR_0(v11, a3)) )
    {
      if ( (a4 & 4) == 0 )
        goto LABEL_14;
      v15 = *((char **)a2 + 17);
      v16 = *v15;
      if ( v16 == -1 )
        v16 = *((_DWORD *)v15 + 1);
      if ( v16 != 1 )
      {
LABEL_14:
        v12 = *((_DWORD *)this + 2);
        v13 = v12 + 1;
        if ( v12 + 1 > *((_DWORD *)this + 3) )
        {
          gameswf::array<gameswf::character *>::reserve((int)this + 4, v13 + (v13 >> 1));
          v12 = *((_DWORD *)this + 2);
        }
        *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v12) = a2;
        *((_DWORD *)this + 2) = v13;
      }
    }
    result = (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2);
    if ( result && *((int *)a2 + 43) > 0 )
    {
      v14 = 0;
      do
        result = RenderFX::CollectCharacters(this, *(gameswf::character **)(*((_DWORD *)a2 + 42) + 4 * v14++), a3, a4);
      while ( v14 < *((_DWORD *)a2 + 43) );
    }
  }
  return result;
}


// ===== 7a8c08 RenderFX::FindCharacters(gameswf::character *,char const*,int) =====
char *__fastcall RenderFX::FindCharacters(RenderFX *this, gameswf::character *a2, const char *a3, int a4)
{
  int v5; // r0
  int v6; // r12

  v5 = *((_DWORD *)this + 2);
  if ( v5 < 0 )
  {
    v6 = 4 * v5;
    do
    {
      ++v5;
      *(_DWORD *)(*((_DWORD *)this + 1) + v6) = 0;
      v6 += 4;
    }
    while ( v5 );
  }
  *((_DWORD *)this + 2) = 0;
  RenderFX::CollectCharacters(this, a2, a3, a4);
  return (char *)this + 4;
}


// ===== 7a8c6c CanHandleMouseEvent(gameswf::character *) =====
int __fastcall CanHandleMouseEvent(gameswf::character *a1)
{
  char *v2; // r0
  const char *v3; // r0

  if ( !a1 )
    return 0;
  v2 = *((char **)a1 + 17);
  if ( *v2 == -1 )
    v3 = *((const char **)v2 + 3);
  else
    v3 = v2 + 1;
  if ( !LC_API_STRSTR_0(v3, "btn") )
    return *((unsigned __int8 *)a1 + 156);
  if ( (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a1 + 8))(a1, 2) )
    return *((unsigned __int8 *)a1 + 234);
  return 1;
}


// ===== 7a8cd8 sprite_can_handle_mouse_event_callback(gameswf::character *) =====
// attributes: thunk
int __fastcall sprite_can_handle_mouse_event_callback(gameswf::character *a1)
{
  return CanHandleMouseEvent(a1);
}


// ===== 7a8cdc RenderFX::UnloadTextures(gameswf::player_context *) =====
int __fastcall RenderFX::UnloadTextures(int this, gameswf::player_context *a2)
{
  int v2; // r7
  int v3; // r6
  int v4; // r5
  int v5; // r4
  int v6; // r3

  v2 = this;
  if ( !this )
    v2 = RenderFX::s_default_context;
  if ( *(int *)(v2 + 24) > 0 )
  {
    v3 = 0;
    do
    {
      this = gameswf::player::get_root(*(gameswf::player **)(*(_DWORD *)(v2 + 20) + 4 * v3));
      v4 = *(_DWORD *)(this + 12);
      if ( *(int *)(v4 + 160) > 0 )
      {
        v5 = 0;
        do
        {
          v6 = *(_DWORD *)(*(_DWORD *)(v4 + 156) + 4 * v5++);
          this = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 12))(v6);
        }
        while ( v5 < *(_DWORD *)(v4 + 160) );
      }
      ++v3;
    }
    while ( v3 < *(_DWORD *)(v2 + 24) );
  }
  return this;
}


// ===== 7a8d74 RenderFX::InitializeGlyphTextureCache(int,int) =====
const char *__fastcall RenderFX::InitializeGlyphTextureCache(RenderFX *this, const char *a2, int a3)
{
  return gameswf::log_msg(
           "RenderFX::InitializeGlyphTextureCache(int width, int height) deprecated. Use RenderFX::Initialize(Initializat"
           "ionParameters& parameters) instead.\n",
           a2,
           a3);
}


// ===== 7a8d84 RenderFX::TraceHierarchy(gameswf::character *,int,int) =====
char *__fastcall RenderFX::TraceHierarchy(char *this, gameswf::character *a2, int a3, int a4)
{
  gameswf::character *v4; // r6
  char *v6; // r2
  int v8; // r7
  char *v9; // r2
  int v10; // r3
  char *v11; // r2
  bool v12; // zf
  char *v13; // r3
  char *v14; // r10
  char *v15; // r10
  int v16; // r7
  const char *v17; // r12
  int v18; // r7
  int v19; // r4
  char *v20; // r2
  char *v21; // r2
  RenderFX *v22; // [sp+Ch] [bp-110h]
  char v23[256]; // [sp+14h] [bp-108h] BYREF

  v4 = a2;
  v6 = (char *)_stack_chk_guard;
  v22 = (RenderFX *)this;
  if ( !a2 )
  {
    v6 = this;
    v4 = *(gameswf::character **)(*((_DWORD *)this + 15) + 16);
  }
  if ( !a4 )
    this = (char *)gameswf::log_msg("Hierarchy:\n", (const char *)&_stack_chk_guard, v6);
  if ( ((a3 & 1) == 0
     || *((_BYTE *)v4 + 155)
     && (this = (char *)(*((float *)gameswf::character::get_world_cxform(v4) + 6) == 0.0)) == nullptr)
    && ((a3 & 8) == 0 || *((_BYTE *)v4 + 157)) )
  {
    LC_API_MEMSET_0(v23, 0, 0x100u);
    if ( a4 > 0 )
    {
      v8 = 0;
      do
      {
        ++v8;
        strcpy(&v23[LC_API_STRLEN_0(v23)], "   ");
      }
      while ( v8 != a4 );
    }
    if ( (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)v4 + 8))(v4, 32) )
    {
      v9 = *((char **)v4 + 17);
      v10 = *((unsigned __int8 *)v4 + 312);
      if ( *v9 == -1 )
        v11 = *((char **)v9 + 3);
      else
        v11 = v9 + 1;
      v12 = v10 == 255;
      if ( v10 == 255 )
        v13 = *((char **)v4 + 81);
      else
        v13 = (char *)v4 + 312;
      if ( !v12 )
        ++v13;
      return (char *)gameswf::log_msg("%s edit: '%s' text='%s' @ 0x%x\n", v23, v11, v13, v4);
    }
    else if ( (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)v4 + 8))(v4, 2) )
    {
      v14 = *((char **)v4 + 17);
      if ( *v14 == -1 )
        v15 = *((char **)v14 + 3);
      else
        v15 = v14 + 1;
      v16 = (*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)v4 + 312))(v4);
      if ( (*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)v4 + 152))(v4) )
        v17 = "STOP";
      else
        v17 = "PLAY";
      this = (char *)gameswf::log_msg("%s sprite: '%s' f=%d %s @ 0x%x\n", v23, v15, v16, v17, v4);
      if ( *((int *)v4 + 43) > 0 )
      {
        v18 = a4 + 1;
        v19 = 0;
        do
          this = (char *)RenderFX::TraceHierarchy(
                           v22,
                           *(gameswf::character **)(*((_DWORD *)v4 + 42) + 4 * v19++),
                           a3,
                           v18);
        while ( v19 < *((_DWORD *)v4 + 43) );
      }
    }
    else
    {
      v20 = *((char **)v4 + 17);
      if ( *v20 == -1 )
        v21 = *((char **)v20 + 3);
      else
        v21 = v20 + 1;
      return (char *)gameswf::log_msg("%s ch: '%s' @ 0x%x\n", v23, v21, v4);
    }
  }
  return this;
}


// ===== 7a9008 RenderFX::DBG_TraceContextInformation(gameswf::character *) =====
char *__fastcall RenderFX::DBG_TraceContextInformation(RenderFX *this, gameswf::character *a2)
{
  char *result; // r0
  char *v3; // r5
  int v4; // r4
  int v5; // r6
  int v6; // r3
  char *v7; // r3
  char *v8; // r1

  result = RenderFX::FindCharacters(this, a2, nullptr, 0);
  v3 = result;
  if ( *((int *)result + 1) > 0 )
  {
    v4 = 0;
    do
    {
      while ( 1 )
      {
        v5 = 4 * v4;
        v6 = *(_DWORD *)(*(_DWORD *)v3 + 4 * v4++);
        v7 = *(char **)(v6 + 68);
        v8 = v7 + 1;
        if ( *v7 == -1 )
          v8 = *((char **)v7 + 3);
        printf("Found child named %s\n", v8);
        result = (char *)(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)v3 + v5) + 8))(
                           *(_DWORD *)(*(_DWORD *)v3 + v5),
                           2);
        if ( result )
          break;
        if ( v4 >= *((_DWORD *)v3 + 1) )
          return result;
      }
      result = (char *)puts("child is a sprite ...");
    }
    while ( v4 < *((_DWORD *)v3 + 1) );
  }
  return result;
}


// ===== 7a90bc RenderFX::Unload(void) =====
int __fastcall RenderFX::Unload(gameswf::ref_counted **this)
{
  int i; // r5
  int v3; // r0

  if ( gameswf::s_render_handler )
    (*(void (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 164))(gameswf::s_render_handler);
  for ( i = 0; i != 4; ++i )
  {
    v3 = 40 * i;
    RenderFX::Controller::Reset((gameswf::ref_counted **)((char *)this + v3 + 88));
  }
  gameswf::smart_ptr<gameswf::root>::set_ref(this + 15, nullptr);
  gameswf::smart_ptr<gameswf::player>::set_ref(this + 14, nullptr);
  gameswf::tu_string::resize((gameswf::tu_string *)(this + 17), 0);
  *(this + 21) = (gameswf::ref_counted *)((unsigned int)*(this + 21) & 0xFF000000 | 0xFFFFFF);
  return RenderFX::SetContext((int)this, nullptr);
}


// ===== 7a9160 RenderFX::Find(char const*) =====
gameswf::as_object *__fastcall RenderFX::Find(gameswf::root **this, const char *a2)
{
  _DWORD *v4; // r6
  gameswf::player **root_movie; // r0
  gameswf::as_object *target; // r0
  gameswf::as_object *v8; // r4

  v4 = RenderFX::Find((RenderFX *)this, a2, *(this + 16));
  if ( !v4 )
  {
    v4 = RenderFX::Find((RenderFX *)this, a2, *((gameswf::character **)*(this + 15) + 4));
    if ( !v4 )
    {
      root_movie = (gameswf::player **)gameswf::root::get_root_movie(*(this + 15));
      target = gameswf::as_object::find_target(root_movie, a2);
      v8 = target;
      if ( target )
      {
        if ( (*(int (__fastcall **)(gameswf::as_object *, int))(*(_DWORD *)target + 8))(target, 1) )
          return v8;
        else
          return nullptr;
      }
    }
  }
  return (gameswf::as_object *)v4;
}


// ===== 7a91d8 RenderFX::RegisterDisplayCallback(char const*,void (*)(gameswf::render_state &,void *),void *) =====
int __fastcall RenderFX::RegisterDisplayCallback(gameswf::root **a1, const char *a2, int a3, int a4)
{
  gameswf::as_object *v7; // r0

  v7 = RenderFX::Find(a1, a2);
  return RenderFX::RegisterDisplayCallback((int)a1, (int)v7, a3, a4);
}


// ===== 7a9204 RenderFX::IsAnimOver(char const*) =====
gameswf::as_object *__fastcall RenderFX::IsAnimOver(gameswf::root **this, const char *a2)
{
  gameswf::as_object *result; // r0

  result = RenderFX::Find(this, a2);
  if ( result )
    return (gameswf::as_object *)RenderFX::IsAnimOver((RenderFX *)this, result);
  return result;
}


// ===== 7a9228 RenderFX::GetFrameCount(char const*) =====
gameswf::as_object *__fastcall RenderFX::GetFrameCount(gameswf::root **this, const char *a2)
{
  gameswf::as_object *result; // r0

  result = RenderFX::Find(this, a2);
  if ( result )
    return (gameswf::as_object *)RenderFX::GetFrameCount((RenderFX *)this, result);
  return result;
}


// ===== 7a924c RenderFX::GotoFrame(char const*,int,bool) =====
void __fastcall RenderFX::GotoFrame(gameswf::root **this, const char *a2, int a3, int a4)
{
  gameswf::as_object *v7; // r1

  v7 = RenderFX::Find(this, a2);
  if ( v7 )
    RenderFX::GotoFrame((RenderFX *)this, v7, a3, a4);
}


// ===== 7a9280 RenderFX::GetText(char const*) =====
char *__fastcall RenderFX::GetText(gameswf::root **this, const char *a2)
{
  gameswf::as_object *v3; // r1

  v3 = RenderFX::Find(this, a2);
  return RenderFX::GetText((RenderFX *)this, v3);
}


// ===== 7a929c RenderFX::SetVisible(char const*,bool) =====
gameswf::as_object *__fastcall RenderFX::SetVisible(gameswf::root **this, const char *a2, bool a3)
{
  gameswf::as_object *result; // r0

  result = RenderFX::Find(this, a2);
  if ( result )
    *((_BYTE *)result + 155) = a3;
  return result;
}


// ===== 7a92b4 RenderFX::SetCursor(char const*,int) =====
gameswf::ref_counted *__fastcall RenderFX::SetCursor(gameswf::root **this, const char *a2, int a3)
{
  gameswf::as_object *v5; // r1

  v5 = RenderFX::Find(this, a2);
  return gameswf::smart_ptr<gameswf::character>::set_ref(this + 10 * a3 + 28, v5);
}


// ===== 7a92e0 RenderFX::SetText(gameswf::character *,char const*,bool) =====
void __fastcall RenderFX::SetText(RenderFX *this, gameswf::player ***a2, const char *a3, bool a4)
{
  _BYTE v7[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  if ( a2 && ((int (__fastcall *)(gameswf::player ***, int))(*a2)[2])(a2, 32) )
  {
    gameswf::tu_string::tu_string((gameswf::tu_string *)v7, a3);
    gameswf::edit_text_character::set_text_value(a2, (const gameswf::tu_string *)v7, a4);
    if ( v7[0] == -1 )
      gameswf::free_internal(p);
  }
}


// ===== 7a9390 RenderFX::SetText(char const*,char const*,bool) =====
void __fastcall RenderFX::SetText(gameswf::root **this, const char *a2, const char *a3, bool a4)
{
  gameswf::player ***v7; // r0

  v7 = (gameswf::player ***)RenderFX::Find(this, a2);
  RenderFX::SetText((RenderFX *)this, v7, a3, a4);
}


// ===== 7a93bc RenderFX::FormatHTML(char const*,char const*,...) =====
void RenderFX::FormatHTML(gameswf::root **this, const char *a2, const char *a3, ...)
{
  va_list varg_r3; // [sp+1Ch] [bp+14h] BYREF

  va_start(varg_r3, a3);
  vsprintf(s_stringBuffer, a3, varg_r3);
  RenderFX::SetText(this, a2, s_stringBuffer, 1);
}


// ===== 7a941c RenderFX::FormatText(char const*,char const*,...) =====
void RenderFX::FormatText(gameswf::root **this, const char *a2, const char *a3, ...)
{
  va_list varg_r3; // [sp+1Ch] [bp+14h] BYREF

  va_start(varg_r3, a3);
  vsprintf(s_stringBuffer, a3, varg_r3);
  RenderFX::SetText(this, a2, s_stringBuffer, 0);
}


// ===== 7a947c RenderFX::FormatHTML(gameswf::character *,char const*,...) =====
void RenderFX::FormatHTML(RenderFX *this, gameswf::player ***a2, const char *a3, ...)
{
  va_list varg_r3; // [sp+1Ch] [bp+14h] BYREF

  va_start(varg_r3, a3);
  vsprintf(s_stringBuffer, a3, varg_r3);
  RenderFX::SetText(this, a2, s_stringBuffer, 1);
}


// ===== 7a94dc RenderFX::FormatText(gameswf::character *,char const*,...) =====
void RenderFX::FormatText(RenderFX *this, gameswf::player ***a2, const char *a3, ...)
{
  va_list varg_r3; // [sp+1Ch] [bp+14h] BYREF

  va_start(varg_r3, a3);
  vsprintf(s_stringBuffer, a3, varg_r3);
  RenderFX::SetText(this, a2, s_stringBuffer, 0);
}


// ===== 7a953c RenderFX::ClearGlyphTextureCaches(gameswf::player_context *) =====
void __fastcall RenderFX::ClearGlyphTextureCaches(RenderFX *this, gameswf::player_context *a2)
{
  RenderFX *v2; // r4
  int v3; // r3
  gameswf::texture_cache *v4; // r0
  int v5; // r3
  gameswf::texture_cache *v6; // r0

  v2 = this;
  if ( !this )
    v2 = (RenderFX *)RenderFX::s_default_context;
  v3 = *((_DWORD *)v2 + 3);
  if ( v3 )
  {
    v4 = *(gameswf::texture_cache **)(v3 + 40);
    if ( v4 )
      gameswf::texture_cache::reset(v4);
  }
  v5 = *((_DWORD *)v2 + 4);
  if ( v5 )
  {
    v6 = *(gameswf::texture_cache **)(v5 + 12);
    if ( v6 )
      gameswf::texture_cache::reset(v6);
  }
}


// ===== 7a95a8 RenderFX::PreloadGlyphs(gameswf::character *) =====
int __fastcall RenderFX::PreloadGlyphs(RenderFX *this, gameswf::character *a2)
{
  char *Characters; // r5
  int v3; // r4

  if ( !a2 )
    a2 = *(gameswf::character **)(*((_DWORD *)this + 15) + 16);
  Characters = RenderFX::FindCharacters(this, a2, nullptr, 0);
  if ( *((int *)Characters + 1) > 0 )
  {
    v3 = 0;
    do
    {
      while ( !(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)Characters + 4 * v3) + 8))(
                 *(_DWORD *)(*(_DWORD *)Characters + 4 * v3),
                 32) )
      {
        if ( ++v3 >= *((_DWORD *)Characters + 1) )
          return 1;
      }
      gameswf::edit_text_character::preload_glyphs(*(gameswf::edit_text_character **)(*(_DWORD *)Characters + 4 * v3++));
    }
    while ( v3 < *((_DWORD *)Characters + 1) );
  }
  return 1;
}


// ===== 7a9634 gameswf::default_bitmap_glyph_provider::get_font_entity_impl(gameswf::tu_string const&) =====
gameswf::default_bitmap_font_entity *__fastcall gameswf::default_bitmap_glyph_provider::get_font_entity_impl(
        gameswf::default_bitmap_glyph_provider *this,
        const gameswf::tu_string *a2)
{
  gameswf::default_bitmap_font_entity *v4; // r4

  v4 = (gameswf::default_bitmap_font_entity *)operator new(0x64u, 0);
  gameswf::default_bitmap_font_entity::default_bitmap_font_entity(v4, this, a2);
  return v4;
}


// ===== 7a9664 gameswf::default_bitmap_glyph_provider::~default_bitmap_glyph_provider() =====
void __fastcall gameswf::default_bitmap_glyph_provider::~default_bitmap_glyph_provider(
        gameswf::default_bitmap_glyph_provider *this)
{
  *(_DWORD *)this = off_991138;
  gameswf::bitmap_glyph_provider::~bitmap_glyph_provider(this);
}


// ===== 7a9698 gameswf::bitmap_glyph_provider::bitmap_glyph_provider(int,int,bool) =====
gameswf::bitmap_glyph_provider *__fastcall gameswf::bitmap_glyph_provider::bitmap_glyph_provider(
        gameswf::bitmap_glyph_provider *this,
        int a2,
        int a3,
        bool a4)
{
  bool v5; // cc
  gameswf::bitmap_glyph_texture_cache *v8; // r5

  v5 = a3 <= 0;
  if ( a3 > 0 )
    v5 = a2 <= 0;
  *(_DWORD *)this = off_991388;
  *((_BYTE *)this + 8) = a4;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 3) = 0;
  if ( !v5 )
  {
    v8 = (gameswf::bitmap_glyph_texture_cache *)operator new(0x40u, 0);
    gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(v8, a2, a3);
    *((_DWORD *)this + 3) = v8;
  }
  return this;
}


// ===== 7a9708 RenderFX::CreateContext(RenderFX::InitializationParameters &) =====
gameswf::player_context *__fastcall RenderFX::CreateContext(int a1)
{
  gameswf::player_context *v2; // r5
  gameswf::glyph_provider *v3; // r6
  gameswf::bitmap_glyph_provider *v4; // r7

  v2 = (gameswf::player_context *)operator new(0x2Cu, 0);
  gameswf::player_context::player_context(v2);
  v3 = (gameswf::glyph_provider *)operator new(0x2Cu, 0);
  gameswf::glyph_provider::glyph_provider(
    v3,
    *(_DWORD *)(a1 + 12),
    *(_DWORD *)(a1 + 16),
    *(_BYTE *)(a1 + 28),
    *(float *)(a1 + 32));
  *((_DWORD *)v2 + 3) = v3;
  v4 = (gameswf::bitmap_glyph_provider *)operator new(0x10u, 0);
  gameswf::bitmap_glyph_provider::bitmap_glyph_provider(
    v4,
    *(_DWORD *)(a1 + 20),
    *(_DWORD *)(a1 + 24),
    *(_BYTE *)(a1 + 28));
  *(_DWORD *)v4 = off_991138;
  *((_DWORD *)v2 + 4) = v4;
  *((_DWORD *)v2 + 10) = *(_DWORD *)a1;
  return v2;
}


// ===== 7a97ac RenderFX::Finalize(void) =====
int __fastcall RenderFX::Finalize(RenderFX *this, gameswf::player_context *a2)
{
  gameswf *v2; // r0
  gameswf *v3; // r0
  gameswf *v4; // r0
  gameswf *v5; // r0
  gameswf *v6; // r0
  gameswf *v7; // r0

  RenderFX::DestroyContext((void (__fastcall ***)(_DWORD))RenderFX::s_default_context, a2);
  RenderFX::s_default_context = 0;
  v2 = (gameswf *)gameswf::s_render_handler;
  if ( gameswf::s_render_handler )
  {
    gameswf::destruct<gameswf::render_handler>((void (__fastcall ***)(_DWORD))gameswf::s_render_handler);
    gameswf::s_render_handler = 0;
  }
  gameswf::clears_tag_loaders(v2);
  gameswf::clear_shared_libs(v3);
  v5 = (gameswf *)gameswf::clear_standard_fnames(v4);
  gameswf::clear_standard_method_map(v5);
  gameswf::clear_standard_property_map(v6);
  return gameswf::clear_disasm(v7);
}


// ===== 7a9814 RenderFX::Initialize(RenderFX::InitializationParameters &) =====
gameswf::player_context *__fastcall RenderFX::Initialize(gameswf::player_context *result)
{
  int v1; // r6
  void (*v2)(gameswf::character *, const char *, const char *); // r1
  gameswf *v3; // r0
  void (*v4)(bool, const char *); // r1
  void *v5; // r1
  int render_handler_irrlicht; // r7
  glitch::video::ITexture *(*v7)(const char *, int, int); // r1
  void *v8; // r0

  v1 = (int)result;
  if ( !RenderFX::s_default_context )
  {
    gameswf::register_file_opener_callback(file_opener);
    v3 = (gameswf *)gameswf::register_fscommand_callback((int)fs_callback, v2);
    if ( gameswf::get_verbose_parse(v3) )
      gameswf::register_log_callback((_DWORD (__fastcall *)(gameswf *__hidden, char *, const char *))log_callback, v4);
    gameswf::register_fscommand_callback(
      (int)fscommand_callback_handler,
      (void (*)(gameswf::character *, const char *, const char *))v4);
    render_handler_irrlicht = gameswf::create_render_handler_irrlicht(*(gameswf **)v1, v5);
    gameswf::s_render_handler = render_handler_irrlicht;
    (*(void (__fastcall **)(int))(*(_DWORD *)render_handler_irrlicht + 160))(render_handler_irrlicht);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)render_handler_irrlicht + 132))(render_handler_irrlicht, 1);
    v8 = *(void **)(v1 + 4);
    if ( v8 )
      v8 = gameswf::register_texture_loader_callback(v8, v7);
    gameswf::standard_method_map_init((gameswf *)v8);
    result = RenderFX::CreateContext(v1);
    RenderFX::s_default_context = (int)result;
  }
  return result;
}


// ===== 7a98f8 RenderFX::Initialize(glitch::video::IVideoDriver *) =====
gameswf::player_context *__fastcall RenderFX::Initialize(RenderFX *this, glitch::video::IVideoDriver *a2)
{
  _DWORD v4[7]; // [sp+4h] [bp-24h] BYREF
  char v5; // [sp+20h] [bp-8h]
  int v6; // [sp+24h] [bp-4h]

  gameswf::log_msg(
    "RenderFX::Initialize(gameswf::video_driver* videoDriver) deprecated. Use RenderFX::Initialize(InitializationParamete"
    "rs& parameters) instead.\n",
    (const char *)a2);
  v5 = 1;
  v4[0] = this;
  v6 = 1065353216;
  memset(&v4[1], 0, 24);
  return RenderFX::Initialize((gameswf::player_context *)v4);
}


// ===== 7a9954 file_opener(char const*) =====
gameswf::tu_file *__fastcall file_opener(const char *a1)
{
  gameswf::tu_file *v2; // r4

  v2 = (gameswf::tu_file *)operator new(0x28u, 0);
  gameswf::tu_file::tu_file(v2, a1, "rb");
  return v2;
}


// ===== 7a9988 gameswf::destruct<gameswf::array<RenderFX::SearchIndex::Entry>>(gameswf::array<RenderFX::SearchIndex::Entry> const*) =====
void __fastcall gameswf::destruct<gameswf::array<RenderFX::SearchIndex::Entry>>(_DWORD *a1)
{
  int v2; // r4
  int v3; // r5

  if ( a1 )
  {
    v2 = a1[1];
    if ( v2 < 0 )
    {
      v3 = 260 * v2;
      do
      {
        LC_API_MEMSET_0((void *)(*a1 + v3), 0, 0x104u);
        ++v2;
        v3 += 260;
      }
      while ( v2 );
    }
    a1[1] = 0;
    gameswf::array<RenderFX::SearchIndex::Entry>::reserve((int)a1, 0);
    gameswf::free_internal(a1);
  }
}


// ===== 7a99f8 gameswf::default_bitmap_glyph_provider::~default_bitmap_glyph_provider() =====
void __fastcall gameswf::default_bitmap_glyph_provider::~default_bitmap_glyph_provider(
        gameswf::default_bitmap_glyph_provider *this)
{
  *(_DWORD *)this = off_991138;
  gameswf::bitmap_glyph_provider::~bitmap_glyph_provider(this);
  LC_API_FREE_0(this);
}


// ===== 7a9a34 RenderFX::Controller::~Controller() =====
void __fastcall RenderFX::Controller::~Controller(RenderFX::Controller *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0
  void (__fastcall ***v4)(_DWORD); // r0
  void (__fastcall ***v5)(_DWORD); // r0
  void (__fastcall ***v6)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 8);
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  v3 = *((void (__fastcall ****)(_DWORD))this + 7);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  v4 = *((void (__fastcall ****)(_DWORD))this + 6);
  if ( v4 )
    gameswf::ref_counted::drop_ref(v4);
  v5 = *((void (__fastcall ****)(_DWORD))this + 5);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = *((void (__fastcall ****)(_DWORD))this + 4);
  if ( v6 )
    gameswf::ref_counted::drop_ref(v6);
}


// ===== 7a9a94 RenderFX::Render(void) =====
void __fastcall RenderFX::Render(Render *this)
{
  int root; // r0
  void (__fastcall ***v2)(_DWORD); // r4

  root = gameswf::player::get_root(*((gameswf::player **)this + 14));
  v2 = (void (__fastcall ***)(_DWORD))root;
  if ( root )
  {
    gameswf::ref_counted::add_ref(root);
    gameswf::root::display((int)v2);
    gameswf::ref_counted::drop_ref(v2);
  }
  else
  {
    gameswf::root::display(0);
  }
}


// ===== 7a9ac8 RenderFX::EndDisplay(void) =====
void __fastcall RenderFX::EndDisplay(gameswf::player **this)
{
  int root; // r0
  gameswf::root *v2; // r4

  root = gameswf::player::get_root(*(this + 14));
  v2 = (gameswf::root *)root;
  if ( root )
  {
    gameswf::ref_counted::add_ref(root);
    gameswf::root::end_display(v2);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v2);
  }
  else
  {
    gameswf::root::end_display(nullptr);
  }
}


// ===== 7a9afc RenderFX::BeginDisplay(void) =====
void __fastcall RenderFX::BeginDisplay(gameswf::player **this)
{
  int root; // r0
  gameswf::root *v2; // r4

  root = gameswf::player::get_root(*(this + 14));
  v2 = (gameswf::root *)root;
  if ( root )
  {
    gameswf::ref_counted::add_ref(root);
    gameswf::root::begin_display(v2);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v2);
  }
  else
  {
    gameswf::root::begin_display(nullptr);
  }
}


// ===== 7a9b30 RenderFX::SetBounds(int,int,int,int,gameswf::scale_mode) =====
int __fastcall RenderFX::SetBounds(int a1, int a2, int a3, int a4, int a5, int a6)
{
  gameswf::ref_counted *root; // r0
  gameswf::ref_counted *v10; // r4

  root = (gameswf::ref_counted *)gameswf::player::get_root(*(gameswf::player **)(a1 + 56));
  v10 = root;
  if ( !root )
    return gameswf::root::set_display_bounds(0, a2, a3, a4, a5, a6);
  gameswf::ref_counted::add_ref(root);
  gameswf::root::set_display_bounds(v10, a2, a3, a4, a5, a6);
  return gameswf::ref_counted::drop_ref(v10);
}


// ===== 7a9bac RenderFX::SetViewport(int,int,int,int) =====
void __fastcall RenderFX::SetViewport(gameswf::player **this, int a2, int a3, int a4, int a5)
{
  int root; // r0
  gameswf::root *v9; // r4

  root = gameswf::player::get_root(*(this + 14));
  v9 = (gameswf::root *)root;
  if ( root )
  {
    gameswf::ref_counted::add_ref(root);
    gameswf::root::set_display_viewport(v9, a2, a3, a4, a5);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v9);
  }
  else
  {
    gameswf::root::set_display_viewport(nullptr, a2, a3, a4, a5);
  }
}


// ===== 7a9c1c RenderFX::PreRender(void) =====
void __fastcall RenderFX::PreRender(gameswf::player **this)
{
  int root; // r0
  gameswf::character **v2; // r4

  root = gameswf::player::get_root(*(this + 14));
  v2 = (gameswf::character **)root;
  if ( root )
    gameswf::ref_counted::add_ref(root);
  if ( gameswf::filter_engine::s_instance )
  {
    gameswf::filter_engine::run((gameswf::filter_engine *)gameswf::filter_engine::s_instance, v2);
    if ( !v2 )
      return;
    goto LABEL_5;
  }
  if ( v2 )
LABEL_5:
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v2);
}


// ===== 7a9c80 RenderFX::SetColorFilter(gameswf::character *,int,uint) =====
void __fastcall RenderFX::SetColorFilter(RenderFX *this, gameswf::character *a2, int a3, unsigned int a4)
{
  _BOOL4 v5; // r2
  int *v8; // r4
  int v9; // r6
  int v10; // r7
  int *v11; // lr
  int *v12; // r12
  int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r5
  int v24; // r2
  int v25; // r5
  int v26; // [sp+4h] [bp-14h] BYREF
  int v27; // [sp+8h] [bp-10h] BYREF
  int v28; // [sp+Ch] [bp-Ch]
  int v29; // [sp+10h] [bp-8h]
  char v30; // [sp+14h] [bp-4h]

  v5 = a3 >= 0;
  if ( !a2 )
    v5 = 0;
  if ( v5 )
  {
    v8 = *((int **)a2 + 20);
    if ( a3 < v8[2] )
    {
      v9 = 0;
      v26 = *v8;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      gameswf::array<gameswf::filter>::resize(&v27, v8[2]);
      if ( v28 > 0 )
      {
        v10 = 0;
        do
        {
          ++v10;
          v11 = (int *)(v8[1] + v9);
          v12 = (int *)(v27 + v9);
          v13 = *v11;
          v14 = v11[1];
          v15 = v11[2];
          v16 = v11[3];
          v11 += 4;
          *v12 = v13;
          v12[1] = v14;
          v12[2] = v15;
          v12[3] = v16;
          v12 += 4;
          v17 = *v11;
          v18 = v11[1];
          v19 = v11[2];
          v20 = v11[3];
          v11 += 4;
          *v12 = v17;
          v12[1] = v18;
          v12[2] = v19;
          v12[3] = v20;
          v12 += 4;
          v21 = v11[1];
          v22 = v11[2];
          *v12 = *v11;
          v12[1] = v21;
          v12[2] = v22;
          v9 += 44;
        }
        while ( v10 < v28 );
      }
      v23 = 44 * a3;
      v24 = *(_DWORD *)(v27 + v23);
      v25 = v27 + v23;
      if ( !v24 || v24 == 2 )
        *(_DWORD *)(v25 + 4) = a4;
      gameswf::character::set_effect((int)a2, &v26);
      gameswf::array<gameswf::filter>::resize(&v27, 0);
      gameswf::array<gameswf::filter>::reserve((int)&v27, 0);
    }
  }
}


// ===== 7a9da4 RenderFX::SetColorFilter(char const*,int,uint) =====
void __fastcall RenderFX::SetColorFilter(gameswf::root **this, const char *a2, int a3, unsigned int a4)
{
  gameswf::as_object *v7; // r0

  v7 = RenderFX::Find(this, a2);
  RenderFX::SetColorFilter((RenderFX *)this, v7, a3, a4);
}


// ===== 7a9dd0 RenderFX::SetColorTransform(gameswf::character *,uint,uint) =====
int __fastcall RenderFX::SetColorTransform(RenderFX *this, gameswf::character *a2, unsigned int a3, unsigned int a4)
{
  float v4; // r7
  float v5; // r7
  float v6; // r7
  float v7; // r5
  float v8; // r5
  float v9; // r5
  float v10; // r5
  float v11; // r5
  int result; // r0
  int v13[9]; // [sp+0h] [bp-24h] BYREF

  if ( a2 )
  {
    v4 = (float)BYTE2(a3) / 255.0;
    if ( v4 < -3.4028e38 || v4 > 3.4028e38 )
      v4 = 0.0;
    *(float *)v13 = v4;
    v5 = (float)BYTE1(a3) / 255.0;
    if ( v5 < -3.4028e38 || v5 > 3.4028e38 )
      v5 = 0.0;
    *(float *)&v13[2] = v5;
    v6 = (float)(unsigned __int8)a3 / 255.0;
    if ( v6 < -3.4028e38 || v6 > 3.4028e38 )
      v6 = 0.0;
    *(float *)&v13[4] = v6;
    v7 = (float)HIBYTE(a3) / 255.0;
    if ( v7 < -3.4028e38 || v7 > 3.4028e38 )
      v7 = 0.0;
    *(float *)&v13[6] = v7;
    v8 = (float)BYTE2(a4);
    if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
      v8 = 0.0;
    *(float *)&v13[1] = v8;
    v9 = (float)BYTE1(a4);
    if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
      v9 = 0.0;
    *(float *)&v13[3] = v9;
    v10 = (float)(unsigned __int8)a4;
    if ( v10 < -3.4028e38 || v10 > 3.4028e38 )
      v10 = 0.0;
    *(float *)&v13[5] = v10;
    v11 = (float)HIBYTE(a4);
    if ( v11 < -3.4028e38 || v11 > 3.4028e38 )
      v11 = 0.0;
    *(float *)&v13[7] = v11;
    return gameswf::character::set_cxform((int)a2, v13);
  }
  return result;
}


// ===== 7aa02c RenderFX::SetColorTransform(char const*,uint,uint) =====
int __fastcall RenderFX::SetColorTransform(gameswf::root **this, const char *a2, unsigned int a3, unsigned int a4)
{
  gameswf::as_object *v7; // r0

  v7 = RenderFX::Find(this, a2);
  return RenderFX::SetColorTransform((RenderFX *)this, v7, a3, a4);
}


// ===== 7aa058 RenderFX::SetAlpha(char const*,float) =====
gameswf::as_object *__fastcall RenderFX::SetAlpha(gameswf::root **this, const char *a2, float a3)
{
  gameswf::as_object *result; // r0
  int v5[6]; // [sp+0h] [bp-20h] BYREF
  int v6; // [sp+18h] [bp-8h]
  int v7; // [sp+1Ch] [bp-4h]

  result = RenderFX::Find(this, a2);
  if ( result )
  {
    v5[0] = gameswf::cxform::identity;
    v5[1] = dword_A2CA60;
    v5[2] = dword_A2CA64;
    v5[3] = dword_A2CA68;
    v5[4] = dword_A2CA6C;
    v5[5] = dword_A2CA70;
    v6 = dword_A2CA74;
    v7 = dword_A2CA78;
    if ( a3 < -3.4028e38 || a3 > 3.4028e38 )
      a3 = 0.0;
    v6 = LODWORD(a3);
    return (gameswf::as_object *)gameswf::character::set_cxform((int)result, v5);
  }
  return result;
}


// ===== 7aa0ec RenderFX::ForceTexturesToVRAM(bool,gameswf::player_context *) =====
int __fastcall RenderFX::ForceTexturesToVRAM(int this, _DWORD *a2, gameswf::player_context *a3)
{
  _DWORD *v3; // r7
  int v4; // r6
  int v5; // r3
  int v6; // r3
  int v7; // r8
  int v8; // r5
  int v9; // r4
  int v10; // r0
  int v11; // r2
  gameswf::root *v12; // r0
  gameswf::root *root; // r0
  gameswf::player *v14; // [sp+14h] [bp-48h]
  _DWORD v15[6]; // [sp+1Ch] [bp-40h] BYREF
  _DWORD v16[4]; // [sp+34h] [bp-28h] BYREF
  _DWORD v17[4]; // [sp+44h] [bp-18h] BYREF
  int v18; // [sp+54h] [bp-8h]

  v3 = a2;
  v15[5] = 0;
  v16[2] = 0;
  v15[4] = 1065353216;
  v4 = this;
  memset(v17, 0, sizeof(v17));
  v16[0] = 0;
  v16[1] = 1065353216;
  v16[3] = 1065353216;
  v18 = -1;
  memset(&v15[1], 0, 12);
  v15[0] = 1065353216;
  if ( !a2 )
    v3 = (_DWORD *)RenderFX::s_default_context;
  v5 = *(_DWORD *)(v3[3] + 40);
  if ( v5 )
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v5 + 52) + 8))(*(_DWORD *)(v5 + 52));
  v6 = *(_DWORD *)(v3[4] + 12);
  if ( v6 )
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v6 + 52) + 8))(*(_DWORD *)(v6 + 52));
  if ( (int)v3[6] > 0 )
  {
    v7 = 0;
    do
    {
      v14 = *(gameswf::player **)(v3[5] + 4 * v7);
      if ( v4 )
      {
        root = (gameswf::root *)gameswf::player::get_root(*(gameswf::player **)(v3[5] + 4 * v7));
        gameswf::root::begin_display(root);
      }
      this = gameswf::player::get_root(v14);
      v8 = *(_DWORD *)(this + 12);
      if ( *(int *)(v8 + 160) > 0 )
      {
        v9 = 0;
        do
        {
          while ( 1 )
          {
            v10 = *(_DWORD *)(*(_DWORD *)(v8 + 156) + 4 * v9);
            this = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 8))(v10);
            if ( v4 )
              break;
            if ( ++v9 >= *(_DWORD *)(v8 + 160) )
              goto LABEL_16;
          }
          v11 = *(_DWORD *)(*(_DWORD *)(v8 + 156) + 4 * v9++);
          this = (*(int (__fastcall **)(int, _DWORD *, int, _DWORD *, _DWORD *, int))(*(_DWORD *)gameswf::s_render_handler
                                                                                    + 128))(
                   gameswf::s_render_handler,
                   v15,
                   v11,
                   v17,
                   v16,
                   v18);
        }
        while ( v9 < *(_DWORD *)(v8 + 160) );
      }
LABEL_16:
      if ( v4 )
      {
        v12 = (gameswf::root *)gameswf::player::get_root(v14);
        this = gameswf::root::end_display(v12);
      }
      ++v7;
    }
    while ( v7 < v3[6] );
  }
  return this;
}


// ===== 7aa2e0 GetLocalPosition(gameswf::character *,float,float) =====
gameswf::character *__fastcall GetLocalPosition(gameswf::character *a1, gameswf::character *a2, float a3, float a4)
{
  float v5; // r6
  float v6; // r5
  char *world_matrix; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  char *v11; // lr
  int v12; // r0
  int v13; // r1
  float v15; // [sp+0h] [bp-34h] BYREF
  float v16; // [sp+4h] [bp-30h]
  float v17; // [sp+8h] [bp-2Ch]
  float v18; // [sp+Ch] [bp-28h]
  float v19; // [sp+10h] [bp-24h]
  float v20; // [sp+14h] [bp-20h]
  _DWORD v21[7]; // [sp+18h] [bp-1Ch] BYREF

  v5 = a3 * 20.0;
  v6 = a4 * 20.0;
  *((_DWORD *)a1 + 1) = 0;
  *(_DWORD *)a1 = 0;
  world_matrix = gameswf::character::get_world_matrix(a2);
  v8 = *((_DWORD *)world_matrix + 1);
  v9 = *((_DWORD *)world_matrix + 2);
  v10 = *((_DWORD *)world_matrix + 3);
  v11 = world_matrix + 16;
  v21[0] = *(_DWORD *)world_matrix;
  v21[1] = v8;
  v21[2] = v9;
  v21[3] = v10;
  v12 = *((_DWORD *)world_matrix + 4);
  v13 = *((_DWORD *)v11 + 1);
  v17 = 0.0;
  v18 = 0.0;
  v21[4] = v12;
  v21[5] = v13;
  v20 = 0.0;
  v19 = 1.0;
  v16 = 0.0;
  v15 = 1.0;
  gameswf::matrix::set_inverse((gameswf::matrix *)&v15, (const gameswf::matrix *)v21);
  *(float *)a1 = (float)((float)(v5 * v15) + (float)(v6 * v16)) + v17;
  *((float *)a1 + 1) = (float)((float)(v5 * v18) + (float)(v6 * v19)) + v20;
  return a1;
}


// ===== 7aa3f0 RenderFX::SetPosition(gameswf::character *,int,int) =====
void __fastcall RenderFX::SetPosition(RenderFX *this, gameswf::character *a2, int a3, int a4)
{
  float *v5; // r6
  float v6; // r8
  float v7; // r10
  float v8; // r7
  float v9; // r7
  float v10; // r10
  float v11; // r7
  float rotation; // r0
  int v13[3]; // [sp+0h] [bp-18h] BYREF
  float v14; // [sp+Ch] [bp-Ch]
  int v15; // [sp+10h] [bp-8h]
  float v16; // [sp+14h] [bp-4h]

  if ( a2 )
  {
    v5 = *((float **)a2 + 19);
    v14 = 0.0;
    v16 = 0.0;
    v15 = 1065353216;
    v13[0] = 1065353216;
    v13[1] = 0;
    v6 = (float)a3 * 20.0;
    v7 = (float)a4 * 20.0;
    v8 = (float)(v6 + (float)(v7 * 0.0)) + 0.0;
    if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
      v8 = 0.0;
    *(float *)&v13[2] = v8;
    v9 = (float)(v7 + (float)(v6 * v14)) + v16;
    if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
      v9 = 0.0;
    v16 = v9;
    v10 = sqrtf((float)(*v5 * *v5) + (float)(v5[1] * v5[1]));
    if ( (float)((float)(v5[4] * *v5) - (float)(v5[3] * v5[1])) < 0.0 )
      LODWORD(v10) += 0x80000000;
    v11 = sqrtf((float)(v5[4] * v5[4]) + (float)(v5[3] * v5[3]));
    rotation = gameswf::matrix::get_rotation((gameswf::matrix *)v5);
    gameswf::matrix::set_scale_rotation((gameswf::matrix *)v13, v10, v11, rotation);
    gameswf::character::set_matrix((int)a2, v13);
  }
}


// ===== 7aa5e0 RenderFX::SetPosition(char const*,int,int) =====
void __fastcall RenderFX::SetPosition(gameswf::root **this, const char *a2, int a3, int a4)
{
  gameswf::as_object *v7; // r0

  v7 = RenderFX::Find(this, a2);
  RenderFX::SetPosition((RenderFX *)this, v7, a3, a4);
}


// ===== 7aa60c gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r5
  int v5; // r4
  _DWORD *v6; // r6

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v6 = &v2[v5];
        if ( v2[v5] != -2 && v6[1] != -1 )
        {
          if ( *((char *)v6 + 8) == -1 )
            gameswf::free_internal((void *)v6[5]);
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7aa6ac RenderFX::SearchIndex::Clear(void) =====
void __fastcall RenderFX::SearchIndex::Clear(RenderFX::SearchIndex *this)
{
  int v1; // r2
  int v3; // r1
  int i; // r4
  int v5; // r3
  int v6; // r0
  int v7; // r12
  int v8; // r1
  int v9; // r3
  int v10; // r0
  int v11; // r12

  v1 = *(_DWORD *)this;
  if ( *(_DWORD *)this )
  {
    v3 = *(_DWORD *)(v1 + 4);
    if ( v3 >= 0 )
    {
      v5 = 8;
      for ( i = 0; i <= v3; ++i )
      {
        v6 = *(_DWORD *)(v1 + v5);
        v7 = v1 + v5;
        v5 += 32;
        if ( v6 != -2 && *(_DWORD *)(v7 + 4) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    if ( this )
    {
      while ( v1 )
      {
        if ( i > *(_DWORD *)(v1 + 4) )
          break;
        gameswf::destruct<gameswf::array<RenderFX::SearchIndex::Entry>>(*(_DWORD **)(v1 + 32 * i + 36));
        v1 = *(_DWORD *)this;
        v8 = *(_DWORD *)(*(_DWORD *)this + 4);
        if ( i > v8 )
          break;
        if ( v8 >= ++i )
        {
          v9 = 32 * i + 8;
          do
          {
            v10 = *(_DWORD *)(v1 + v9);
            v11 = v1 + v9;
            v9 += 32;
            if ( v10 != -2 && *(_DWORD *)(v11 + 4) != -1 )
              break;
            ++i;
          }
          while ( v8 >= i );
        }
      }
    }
  }
  gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::clear((_DWORD **)this);
}


// ===== 7aa790 gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r6
  int v5; // r4
  void (__fastcall ***v6)(_DWORD); // r0
  _DWORD *v7; // r5

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v7 = &v2[v5];
        if ( v2[v5] != -2 && v7[1] != -1 )
        {
          if ( *((char *)v7 + 8) == -1 )
            gameswf::free_internal((void *)v7[5]);
          v6 = (void (__fastcall ***)(_DWORD))v7[7];
          if ( v6 )
            gameswf::ref_counted::drop_ref(v6);
          *v7 = -2;
          v7[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7aa840 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r6
  int v5; // r4
  void (__fastcall ***v6)(_DWORD); // r0
  _DWORD *v7; // r5

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v7 = &v2[v5];
        if ( v2[v5] != -2 && v7[1] != -1 )
        {
          if ( *((char *)v7 + 8) == -1 )
            gameswf::free_internal((void *)v7[5]);
          v6 = (void (__fastcall ***)(_DWORD))v7[7];
          if ( v6 )
            gameswf::ref_counted::drop_ref(v6);
          *v7 = -2;
          v7[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7aa8f0 gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r10
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r5
  _DWORD *v11; // r4
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 32;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          v11 = &v7[v10];
          ++v9;
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::add(
              v12,
              &v7[v10 + 2],
              &v7[v10 + 7]);
            if ( *((char *)v11 + 8) == -1 )
              gameswf::free_internal((void *)v11[5]);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 8;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_19;
  }
}


// ===== 7aaa68 gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7aaa9c gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::add(gameswf::tu_string const&,gameswf::array<RenderFX::SearchIndex::Entry> * const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        _DWORD *a3)
{
  char *v5; // r1
  int v6; // r3
  bool v7; // zf
  int v8; // r3
  int v9; // r5
  char *v10; // r3
  int v11; // t1
  _DWORD *v12; // r6
  int v13; // r3
  int v14; // r2
  int v15; // r11
  int v16; // r1
  _DWORD *v17; // r9
  int v18; // r12
  int v19; // r7
  int v20; // r8
  int v21; // r0
  _DWORD *v22; // r8
  int v23; // r3
  int v24; // r10
  int *v25; // r10
  gameswf::tu_string *result; // r0
  int v27; // r3

  gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(a1);
  ++**a1;
  v6 = *(char *)a2;
  v7 = v6 == -1;
  if ( v6 == -1 )
  {
    v8 = *((_DWORD *)a2 + 1);
  }
  else
  {
    v8 = v6 - 1;
    v5 = (char *)a2 + 1;
  }
  if ( v7 )
  {
    --v8;
    v5 = *((char **)a2 + 3);
  }
  if ( v8 > 0 )
  {
    v10 = &v5[v8];
    v9 = 5381;
    do
    {
      v11 = (unsigned __int8)*--v10;
      v9 = (33 * v9) ^ v11;
    }
    while ( v10 != v5 );
    if ( v9 == -1 )
      v9 = -32769;
  }
  else
  {
    v9 = 5381;
  }
  v12 = *a1;
  v13 = v12[1];
  v14 = v9 & v13;
  v15 = 4 * (v9 & v13) + 1;
  v16 = v12[2 * v15];
  v17 = &v12[2 * v15];
  if ( v16 == -2 )
  {
    v12[2 * v15] = -1;
LABEL_21:
    v17[1] = v9;
    result = gameswf::tu_string::tu_string((gameswf::tu_string *)(v17 + 2), a2);
    v17[7] = *a3;
    return result;
  }
  v18 = v17[1];
  if ( v18 == -1 )
    goto LABEL_21;
  v19 = v9 & v13;
  do
  {
    v19 = (v19 + 1) & v13;
    v20 = 4 * v19 + 1;
    v21 = v12[2 * v20];
    v22 = &v12[2 * v20];
  }
  while ( v21 != -2 );
  v23 = v13 & v18;
  if ( v23 == v14 )
  {
    *v22 = v16;
    v22[1] = v17[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v22 + 2), (const gameswf::tu_string *)(v17 + 2));
    v22[7] = v17[7];
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v17 + 2), (char *)a2);
    v17[7] = *a3;
    v12[2 * v15] = v19;
    v17[1] = v9;
  }
  else
  {
    do
    {
      v24 = 4 * v23 + 1;
      v23 = v12[2 * v24];
      v25 = &v12[2 * v24];
    }
    while ( v23 != v14 );
    *v22 = v16;
    v22[1] = v17[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v22 + 2), (const gameswf::tu_string *)(v17 + 2));
    v22[7] = v17[7];
    *v25 = v19;
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v17 + 2), (char *)a2);
    v27 = *a3;
    v17[1] = v9;
    v17[7] = v27;
    v12[2 * v15] = -1;
  }
  return result;
}


// ===== 7aac54 RenderFX::ClearFonts(gameswf::player_context *) =====
void __fastcall RenderFX::ClearFonts(RenderFX *this, gameswf::player_context *a2)
{
  RenderFX *v2; // r6
  int v3; // r4
  RenderFX *v4; // r0
  char *Characters; // r10
  int v6; // r8
  int v7; // r4
  gameswf::texture_cache *v8; // r0
  int v9; // r4
  gameswf::texture_cache *v10; // r0
  _BYTE v11[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]
  unsigned int v13; // [sp+10h] [bp-8h]

  v2 = this;
  if ( !this )
    v2 = (RenderFX *)RenderFX::s_default_context;
  v3 = 0;
  v13 = v13 & 0xFF000000 | 0xFFFFFF;
  v11[0] = 1;
  HIBYTE(v13) &= ~1u;
  v11[1] = 0;
  if ( *((int *)v2 + 6) > 0 )
  {
    do
    {
      v4 = *(RenderFX **)(*(_DWORD *)(*((_DWORD *)v2 + 5) + 4 * v3) + 148);
      Characters = RenderFX::FindCharacters(v4, *(gameswf::character **)(*((_DWORD *)v4 + 15) + 16), nullptr, 0);
      if ( *((int *)Characters + 1) > 0 )
      {
        v6 = 0;
        do
        {
          while ( !(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)Characters + 4 * v6) + 8))(
                     *(_DWORD *)(*(_DWORD *)Characters + 4 * v6),
                     32) )
          {
            if ( ++v6 >= *((_DWORD *)Characters + 1) )
              goto LABEL_9;
          }
          gameswf::edit_text_character::set_text_value(
            *(gameswf::player ****)(*(_DWORD *)Characters + 4 * v6++),
            (const gameswf::tu_string *)v11,
            0);
        }
        while ( v6 < *((_DWORD *)Characters + 1) );
      }
LABEL_9:
      ++v3;
    }
    while ( v3 < *((_DWORD *)v2 + 6) );
  }
  v7 = *((_DWORD *)v2 + 3);
  if ( v7 )
  {
    gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear((_DWORD **)(v7 + 36));
    v8 = *(gameswf::texture_cache **)(v7 + 40);
    if ( v8 )
      gameswf::texture_cache::reset(v8);
  }
  v9 = *((_DWORD *)v2 + 4);
  if ( v9 )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)(v9 + 4));
    v10 = *(gameswf::texture_cache **)(v9 + 12);
    if ( v10 )
      gameswf::texture_cache::reset(v10);
  }
  if ( v11[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7aadf8 RenderFX::SearchIndex::Find(char const*) =====
int __fastcall RenderFX::SearchIndex::Find(RenderFX::SearchIndex *this, const char *a2)
{
  Elf32_Dyn **v2; // r4
  const char *v5; // r10
  char *v6; // r0
  const char *v7; // r1
  int index; // r0
  _DWORD *v9; // r9
  int v10; // r11
  const char *v11; // r7
  const char *v12; // r6
  const char *v13; // r11
  Elf32_Dyn **v14; // r9
  const char *v15; // r7
  char *v16; // r0
  int v17; // r4
  char *v18; // r0
  int v19; // r5
  bool v20; // cc
  int v22; // [sp+8h] [bp-ACh]
  _DWORD *v23; // [sp+Ch] [bp-A8h]
  int v24; // [sp+10h] [bp-A4h]
  _DWORD *v25; // [sp+14h] [bp-A0h]
  char v26[128]; // [sp+18h] [bp-9Ch] BYREF
  char v27[8]; // [sp+98h] [bp-1Ch] BYREF
  void *p; // [sp+A4h] [bp-10h]

  v2 = &__GLOBAL_OFFSET_TABLE_;
  v5 = &a2[LC_API_STRLEN_0(a2)];
  v6 = strrchr(a2, 46);
  if ( v6 )
    v7 = v6 + 1;
  else
    v7 = a2;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v27, v7, v5 - v7);
  index = gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(
            (int *)this,
            v27);
  if ( index >= 0 )
  {
    v9 = *(_DWORD **)(*(_DWORD *)this + 32 * index + 36);
    if ( (int)v9[1] > 0 )
    {
      v10 = 0;
      v22 = 0;
      v11 = a2;
      do
      {
        v12 = v11;
        v24 = v10;
        v23 = (_DWORD *)(*v9 + v10);
        v25 = v9;
        v13 = v11;
        v14 = v2;
        v15 = (const char *)(v23 + 1);
        while ( 1 )
        {
          v16 = strchr(v12, 46);
          if ( !v16 )
            v16 = (char *)v5;
          v17 = v16 - v12;
          memcpy(v26, v12, v16 - v12);
          v26[v17] = 0;
          v18 = LC_API_STRSTR_0(v15, v26);
          if ( !v18 )
            break;
          v15 = &v18[v17];
          if ( !v18[v17] )
          {
            v19 = *v23;
            goto LABEL_16;
          }
          v12 += v17 + 1;
        }
        v2 = v14;
        v9 = v25;
        v11 = v13;
        v20 = ++v22 < v25[1];
        v10 = v24 + 260;
      }
      while ( v20 );
    }
  }
  v19 = 0;
LABEL_16:
  if ( v27[0] == -1 )
    gameswf::free_internal(p);
  return v19;
}


// ===== 7aafac RenderFX::PreloadGlyphs(ushort *,int,char const*,int,bool,bool,gameswf::filter const*) =====
int __fastcall RenderFX::PreloadGlyphs(int a1, int a2, int a3, const char *a4, int a5, char a6, char a7, int a8)
{
  gameswf::player *v10; // r8
  _BYTE *v11; // r4
  int v12; // r7
  char v16[8]; // [sp+18h] [bp-1Ch] BYREF
  void *p; // [sp+24h] [bp-10h]

  v10 = *(gameswf::player **)(a1 + 56);
  v11 = operator new(0x88u, 0);
  gameswf::font::font((gameswf::font *)v11, v10);
  if ( v11 )
    gameswf::ref_counted::add_ref((int)v11);
  v11[77] = a6;
  v11[76] = a7;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v16, a4);
  gameswf::tu_string::operator=((gameswf::tu_string *)(v11 + 48), v16);
  if ( v16[0] == -1 )
    gameswf::free_internal(p);
  v12 = gameswf::preload_glyph_codes(*(_DWORD *)(*(_DWORD *)(a1 + 56) + 172), a2, a3, (gameswf::font *)v11, a5, a8);
  gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v11);
  return v12;
}


// ===== 7ab0b8 RenderFX::PreloadGlyphs(char const*,char const*,int,bool,bool,gameswf::filter const*) =====
unsigned int __fastcall RenderFX::PreloadGlyphs(
        int a1,
        const char **a2,
        const char *a3,
        int a4,
        char a5,
        char a6,
        int a7)
{
  unsigned int unicode_character; // r9
  int v11; // r3
  int v12; // r10
  int v13; // r2
  int v14; // r0
  int v16; // r3
  const char **v17; // [sp+14h] [bp+0h] BYREF
  int v18; // [sp+18h] [bp+4h] BYREF
  int v19; // [sp+1Ch] [bp+8h]
  int v20; // [sp+20h] [bp+Ch]
  char v21; // [sp+24h] [bp+10h]

  v17 = a2;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while ( 1 )
  {
    unicode_character = gameswf::decode_next_unicode_character((gameswf *)&v17, a2);
    if ( !unicode_character )
      break;
    v11 = v19;
    v12 = v19 + 1;
    if ( v19 + 1 > v20 )
    {
      gameswf::array<unsigned short>::reserve((int)&v18, v12 + (v12 >> 1));
      v11 = v19;
    }
    *(_WORD *)(v18 + 2 * v11) = unicode_character;
    v19 = v12;
  }
  v13 = v19;
  if ( v19 <= 0
    || (v14 = RenderFX::PreloadGlyphs(a1, v18, v19, a3, a4, a5, a6, a7), v13 = v19, unicode_character = v14, v19 <= 0) )
  {
    if ( v13 < 0 )
    {
      v16 = 2 * v13;
      do
      {
        ++v13;
        *(_WORD *)(v18 + v16) = 0;
        v16 += 2;
      }
      while ( v13 );
    }
  }
  v19 = 0;
  gameswf::array<unsigned short>::reserve((int)&v18, 0);
  return unicode_character;
}


// ===== 7ab1cc RenderFX::~RenderFX() =====
void __fastcall RenderFX::~RenderFX(RenderFX *this)
{
  RenderFX::Controller *v2; // r6
  RenderFX::Controller *v3; // r5
  void (__fastcall ***v4)(_DWORD); // r0
  void (__fastcall ***v5)(_DWORD); // r0
  int v6; // r3
  int v7; // r2

  *(_DWORD *)this = off_9911A0;
  v2 = (RenderFX *)((char *)this + 88);
  v3 = (RenderFX *)((char *)this + 248);
  RenderFX::Unload((gameswf::ref_counted **)this);
  do
  {
    v3 = (RenderFX::Controller *)((char *)v3 - 40);
    RenderFX::Controller::~Controller(v3);
  }
  while ( v3 != v2 );
  if ( *((char *)this + 68) == -1 )
    gameswf::free_internal(*((void **)this + 20));
  v4 = *((void (__fastcall ****)(_DWORD))this + 15);
  if ( v4 )
    gameswf::ref_counted::drop_ref(v4);
  v5 = *((void (__fastcall ****)(_DWORD))this + 14);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  RenderFX::DepthSearchData::~DepthSearchData((RenderFX *)((char *)this + 24));
  RenderFX::SearchIndex::Clear((RenderFX *)((char *)this + 20));
  gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::clear((_DWORD **)this + 5);
  v6 = *((_DWORD *)this + 2);
  if ( v6 < 0 )
  {
    v7 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*((_DWORD *)this + 1) + v7) = 0;
      v7 += 4;
    }
    while ( v6 );
  }
  *((_DWORD *)this + 2) = 0;
  gameswf::array<gameswf::character *>::reserve((int)this + 4, 0);
}


// ===== 7ab2c4 RenderFX::~RenderFX() =====
void __fastcall RenderFX::~RenderFX(RenderFX *this)
{
  RenderFX::~RenderFX(this);
  LC_API_FREE_0(this);
}


// ===== 7ab2e0 RenderFX::~RenderFX() =====
void __fastcall RenderFX::~RenderFX(RenderFX *this)
{
  RenderFX::Controller *v2; // r6
  RenderFX::Controller *v3; // r5
  void (__fastcall ***v4)(_DWORD); // r0
  void (__fastcall ***v5)(_DWORD); // r0
  int v6; // r3
  int v7; // r2

  *(_DWORD *)this = off_9911A0;
  v2 = (RenderFX *)((char *)this + 88);
  v3 = (RenderFX *)((char *)this + 248);
  RenderFX::Unload((gameswf::ref_counted **)this);
  do
  {
    v3 = (RenderFX::Controller *)((char *)v3 - 40);
    RenderFX::Controller::~Controller(v3);
  }
  while ( v3 != v2 );
  if ( *((char *)this + 68) == -1 )
    gameswf::free_internal(*((void **)this + 20));
  v4 = *((void (__fastcall ****)(_DWORD))this + 15);
  if ( v4 )
    gameswf::ref_counted::drop_ref(v4);
  v5 = *((void (__fastcall ****)(_DWORD))this + 14);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  RenderFX::DepthSearchData::~DepthSearchData((RenderFX *)((char *)this + 24));
  RenderFX::SearchIndex::Clear((RenderFX *)((char *)this + 20));
  gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::clear((_DWORD **)this + 5);
  v6 = *((_DWORD *)this + 2);
  if ( v6 < 0 )
  {
    v7 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*((_DWORD *)this + 1) + v7) = 0;
      v7 += 4;
    }
    while ( v6 );
  }
  *((_DWORD *)this + 2) = 0;
  gameswf::array<gameswf::character *>::reserve((int)this + 4, 0);
}


// ===== 7ab3d8 RenderFX::SetLocalVariable(char const*,char const*,gameswf::as_value &) =====
void __fastcall RenderFX::SetLocalVariable(gameswf::root **this, const char *a2, const char *a3, gameswf::as_value *a4)
{
  gameswf::as_object *target; // r10
  gameswf::as_environment *v8; // r0
  gameswf::player **root_movie; // r0
  _BYTE v10[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]

  gameswf::tu_string::tu_string((gameswf::tu_string *)v10, a3);
  target = RenderFX::Find(this, a2);
  if ( !target
    && (root_movie = (gameswf::player **)gameswf::root::get_root_movie(*(this + 15)),
        (target = gameswf::as_object::find_target(root_movie, a2)) == nullptr)
    || !(*(int (__fastcall **)(gameswf::as_object *, int))(*(_DWORD *)target + 8))(target, 2) )
  {
    if ( v10[0] != -1 )
      return;
LABEL_6:
    gameswf::free_internal(p);
    return;
  }
  v8 = (gameswf::as_environment *)(*(int (__fastcall **)(gameswf::as_object *))(*(_DWORD *)target + 88))(target);
  gameswf::as_environment::set_local(v8, (const gameswf::tu_string *)v10, a4);
  if ( v10[0] == -1 )
    goto LABEL_6;
}


// ===== 7ab4cc RenderFX::ReplaceTexture(char const*,glitch::video::ITexture *) =====
void __fastcall RenderFX::ReplaceTexture(RenderFX *this, const char *a2, glitch::video::ITexture *a3)
{
  int v5; // r0
  int v6; // r7
  int v7; // r0
  int v8; // r6
  int v9; // r0
  _BYTE v10[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v5 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)this + 15) + 16) + 304))(*(_DWORD *)(*((_DWORD *)this + 15) + 16));
  v6 = v5;
  if ( v5 && (*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 8))(v5, 8) )
  {
    gameswf::tu_string::tu_string((gameswf::tu_string *)v10, a2);
    v7 = (*(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)v6 + 88))(v6, v10);
    v8 = v7;
    if ( v7 && (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 8))(v7, 33) )
    {
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 44))(v8);
      (*(void (__fastcall **)(int, glitch::video::ITexture *))(*(_DWORD *)v9 + 32))(v9, a3);
    }
    if ( v10[0] == -1 )
      gameswf::free_internal(p);
  }
}


// ===== 7ab5d4 RenderFX::SetMember(char const*,char const*,gameswf::as_value &) =====
void __fastcall RenderFX::SetMember(gameswf::root **this, const char *a2, const char *a3, gameswf::as_value *a4)
{
  gameswf::as_object *target; // r10
  void (__fastcall *v8)(gameswf::as_object *, _BYTE *, gameswf::as_value *); // r6
  gameswf::player **root_movie; // r0
  _BYTE v10[8]; // [sp+4h] [bp-2Ch] BYREF
  void *v11; // [sp+10h] [bp-20h]
  _BYTE v12[8]; // [sp+18h] [bp-18h] BYREF
  void *p; // [sp+24h] [bp-Ch]

  gameswf::tu_string::tu_string((gameswf::tu_string *)v12, a3);
  target = RenderFX::Find(this, a2);
  if ( target
    || (root_movie = (gameswf::player **)gameswf::root::get_root_movie(*(this + 15)),
        (target = gameswf::as_object::find_target(root_movie, a2)) != nullptr) )
  {
    v8 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, gameswf::as_value *))(*(_DWORD *)target + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v10, (const gameswf::tu_string *)v12);
    v8(target, v10, a4);
    if ( v10[0] == -1 )
      gameswf::free_internal(v11);
  }
  if ( v12[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7ab6c8 RenderFX::SetMember(char const*,char const*,int) =====
void __fastcall RenderFX::SetMember(gameswf::root **this, const char *a2, const char *a3, int a4)
{
  _BYTE v4[4]; // [sp+4h] [bp-18h] BYREF
  double v5; // [sp+8h] [bp-14h]
  double v6; // [sp+10h] [bp-Ch]

  v4[0] = 0;
  v4[1] = 2;
  v6 = (double)a4;
  v5 = (double)a4;
  RenderFX::SetMember(this, a2, a3, (gameswf::as_value *)v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
}


// ===== 7ab730 RenderFX::SetMember(char const*,char const*,char const*) =====
void __fastcall RenderFX::SetMember(gameswf::root **this, const char *a2, const char *a3, const char *a4)
{
  gameswf::tu_string *v7[4]; // [sp+4h] [bp-10h] BYREF

  LOWORD(v7[0]) = 0;
  gameswf::as_value::set_string(v7, a4);
  RenderFX::SetMember(this, a2, a3, (gameswf::as_value *)v7);
  gameswf::as_value::drop_refs((gameswf::as_value *)v7);
}


// ===== 7ab784 RenderFX::Load(char const*,gameswf::player_context *) =====
int __fastcall RenderFX::Load(RenderFX *this, const char *a2, gameswf::player_context *a3)
{
  gameswf::player_context *v3; // r8
  gameswf::player *v6; // r10
  size_t v7; // r0
  const char *v8; // r3
  int i; // r2
  signed int v10; // r2
  const char *v11; // r1
  gameswf::ref_counted *v13; // [sp+0h] [bp-34h] BYREF
  char v14; // [sp+4h] [bp-30h] BYREF
  _BYTE v15[3]; // [sp+5h] [bp-2Fh] BYREF
  char *v16; // [sp+10h] [bp-24h]
  char v17; // [sp+18h] [bp-1Ch]
  char v18; // [sp+19h] [bp-1Bh]
  void *p; // [sp+24h] [bp-10h]

  v3 = a3;
  if ( !a3 )
    v3 = (gameswf::player_context *)RenderFX::s_default_context;
  gameswf::tu_string::operator=((char *)this + 68, a2);
  v6 = (gameswf::player *)operator new(0xE0u, 0);
  gameswf::player::player(v6, v3);
  gameswf::smart_ptr<gameswf::player>::set_ref((gameswf::ref_counted **)this + 14, v6);
  *(_DWORD *)(*((_DWORD *)this + 14) + 148) = this;
  v17 = 1;
  v18 = 0;
  v7 = LC_API_STRLEN_0(a2);
  v8 = &a2[v7];
  if ( !__CFADD__(a2, v7) )
  {
    for ( i = a2[v7]; i != 47; i = *v8 )
    {
      if ( i == 92 )
        break;
      if ( a2 > --v8 )
        break;
    }
  }
  v10 = (signed int)&v8[1 - (_DWORD)a2];
  if ( v10 > 0 )
  {
    gameswf::tu_string::tu_string((gameswf::tu_string *)&v14, a2, v10);
    v11 = v14 == -1 ? v16 : v15;
    gameswf::player::set_workdir(*((gameswf::player **)this + 14), v11);
    if ( v14 == -1 )
      gameswf::free_internal(v16);
  }
  if ( v17 == -1 )
    gameswf::free_internal(p);
  gameswf::player::load_file((gameswf::player *)&v13, *((gameswf::player **)this + 14), a2);
  gameswf::smart_ptr<gameswf::root>::set_ref((gameswf::ref_counted **)this + 15, v13);
  if ( v13 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v13);
  return RenderFX::SetContext((int)this, *(gameswf::character **)(*((_DWORD *)this + 15) + 16));
}


// ===== 7ab924 RenderFX::GotoFrame(gameswf::character *,char const*,bool) =====
int __fastcall RenderFX::GotoFrame(RenderFX *this, gameswf::character *a2, const char *a3, int a4)
{
  const char *v7; // r1
  int (__fastcall *v8)(gameswf::character *, _BYTE *); // r7
  int v9; // r7
  _BYTE v11[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  if ( !a2 || !(*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2) )
    return 0;
  v7 = a3;
  v8 = *(int (__fastcall **)(gameswf::character *, _BYTE *))(*(_DWORD *)a2 + 156);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, v7);
  v9 = v8(a2, v11);
  if ( v11[0] == -1 )
    gameswf::free_internal(p);
  if ( !v9 )
    return 0;
  (*(void (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 148))(a2, a4 ^ 1);
  return 1;
}


// ===== 7aba04 RenderFX::PlayAnim(gameswf::character *,char const*,int) =====
int __fastcall RenderFX::PlayAnim(RenderFX *this, gameswf::character *a2, const char *a3, int a4)
{
  return RenderFX::GotoFrame(this, a2, a3, 1);
}


// ===== 7aba0c RenderFX::SetEnabled(gameswf::character *,bool) =====
int __fastcall RenderFX::SetEnabled(int this, gameswf::character *a2, int a3)
{
  RenderFX *v4; // r6

  v4 = (RenderFX *)this;
  if ( a2 )
  {
    this = (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2);
    if ( this )
    {
      if ( *((unsigned __int8 *)a2 + 234) == a3 || (*((_DWORD *)v4 + 62) & 0x40) != 0 )
        goto LABEL_7;
      if ( !a3 )
      {
        this = RenderFX::PlayAnim(v4, a2, "disabled", 0);
        *((_BYTE *)a2 + 234) = 0;
        return this;
      }
      this = RenderFX::PlayAnim(v4, a2, "activated", 0);
      if ( this )
      {
LABEL_7:
        *((_BYTE *)a2 + 234) = a3;
      }
      else
      {
        this = RenderFX::PlayAnim(v4, a2, "focus_out", 0);
        *((_BYTE *)a2 + 234) = a3;
      }
    }
  }
  return this;
}


// ===== 7abac8 RenderFX::SetEnabled(char const*,bool) =====
int __fastcall RenderFX::SetEnabled(gameswf::root **this, const char *a2, int a3)
{
  gameswf::as_object *v5; // r0

  v5 = RenderFX::Find(this, a2);
  return RenderFX::SetEnabled((int)this, v5, a3);
}


// ===== 7abaec RenderFX::GotoFrame(char const*,char const*,bool) =====
int __fastcall RenderFX::GotoFrame(gameswf::root **this, const char *a2, const char *a3, int a4)
{
  gameswf::as_object *v7; // r0

  v7 = RenderFX::Find(this, a2);
  return RenderFX::GotoFrame((RenderFX *)this, v7, a3, a4);
}


// ===== 7abb18 RenderFX::PlayAnim(char const*,char const*,int) =====
int __fastcall RenderFX::PlayAnim(gameswf::root **this, const char *a2, const char *a3, int a4)
{
  return RenderFX::GotoFrame(this, a2, a3, 1);
}


// ===== 7abb20 MenuFX::PopAll(void) =====
int __fastcall MenuFX::PopAll(MenuFX *this)
{
  int v1; // r5
  char *v3; // r7
  int v4; // r0

  v1 = *((_DWORD *)this + 70);
  if ( v1 > 0 )
  {
    v3 = (char *)this + 276;
    while ( 1 )
    {
      v4 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (v1 - 1));
      (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 16))(v4);
      *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1)) + 88) = 2;
      v1 = *((_DWORD *)this + 70) - 1;
      if ( *((_DWORD *)this + 70) == 1 )
        break;
      if ( v1 > *((_DWORD *)this + 71) )
        gameswf::array<MenuFX::State *>::reserve((int)v3, v1 + (v1 >> 1));
      *((_DWORD *)this + 70) = v1;
      if ( v1 <= 0 )
        return RenderFX::SetContext((int)this, *(gameswf::character **)(*((_DWORD *)this + 15) + 16));
    }
    *((_DWORD *)this + 70) = 0;
  }
  return RenderFX::SetContext((int)this, *(gameswf::character **)(*((_DWORD *)this + 15) + 16));
}


// ===== 7abbbc MenuFX::Unload(void) =====
_DWORD *__fastcall MenuFX::Unload(gameswf::ref_counted **this)
{
  int v2; // r3
  int v3; // r3
  _DWORD *result; // r0
  int v5; // r2
  int v6; // r2

  RenderFX::Unload(this);
  RenderFX::Controller::Reset(this + 22);
  RenderFX::Controller::Reset(this + 32);
  RenderFX::Controller::Reset(this + 42);
  RenderFX::Controller::Reset(this + 52);
  v2 = (int)*(this + 66);
  if ( v2 < 0 )
  {
    v5 = 4 * v2;
    do
    {
      ++v2;
      *(_DWORD *)((char *)*(this + 65) + v5) = 0;
      v5 += 4;
    }
    while ( v2 );
  }
  v3 = (int)*(this + 70);
  *(this + 66) = nullptr;
  result = this + 69;
  if ( v3 < 0 )
  {
    v6 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*result + v6) = 0;
      v6 += 4;
    }
    while ( v3 );
    *(this + 70) = nullptr;
  }
  else
  {
    *(this + 70) = nullptr;
  }
  return result;
}


// ===== 7abc68 MenuFX::~MenuFX() =====
void __fastcall MenuFX::~MenuFX(MenuFX *this)
{
  int v1; // r1
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // r0
  int v6; // r3
  int v7; // r2

  v1 = *((_DWORD *)this + 70);
  v3 = (_DWORD *)((char *)this + 276);
  *(_DWORD *)this = off_991150;
  *((_DWORD *)this + 64) = &off_99118C;
  if ( v1 < 0 )
  {
    v6 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*v3 + v6) = 0;
      v6 += 4;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 70) = 0;
  gameswf::array<MenuFX::State *>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 66);
  v5 = (_DWORD *)((char *)this + 260);
  if ( v4 < 0 )
  {
    v7 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v7) = 0;
      v7 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 66) = 0;
  gameswf::array<MenuFX::State *>::reserve((int)v5, 0);
  RenderFX::~RenderFX(this);
}


// ===== 7abd2c MenuFX::~MenuFX() =====
void __fastcall MenuFX::~MenuFX(MenuFX *this)
{
  MenuFX::~MenuFX(this);
  LC_API_FREE_0(this);
}


// ===== 7abd48 MenuFX::~MenuFX() =====
void __fastcall MenuFX::~MenuFX(MenuFX *this)
{
  int v1; // r1
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // r0
  int v6; // r3
  int v7; // r2

  v1 = *((_DWORD *)this + 70);
  v3 = (_DWORD *)((char *)this + 276);
  *(_DWORD *)this = off_991150;
  *((_DWORD *)this + 64) = &off_99118C;
  if ( v1 < 0 )
  {
    v6 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*v3 + v6) = 0;
      v6 += 4;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 70) = 0;
  gameswf::array<MenuFX::State *>::reserve((int)v3, 0);
  v4 = *((_DWORD *)this + 66);
  v5 = (_DWORD *)((char *)this + 260);
  if ( v4 < 0 )
  {
    v7 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v7) = 0;
      v7 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 66) = 0;
  gameswf::array<MenuFX::State *>::reserve((int)v5, 0);
  RenderFX::~RenderFX(this);
}


// ===== 7abe0c RenderFX::InvokeASCallback(gameswf::character *,char const*,gameswf::as_value const*,int) =====
int __fastcall RenderFX::InvokeASCallback(
        RenderFX *this,
        gameswf::character *a2,
        const char *a3,
        const gameswf::as_value *a4,
        int a5)
{
  gameswf::character *v8; // r10
  gameswf::as_environment *v9; // r0
  int ptr; // r0
  _BYTE v12[8]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]

  if ( !a2 )
    return 0;
  if ( (*(int (__fastcall **)(gameswf::character *, int))(*(_DWORD *)a2 + 8))(a2, 2) )
  {
    v8 = a2;
    goto LABEL_5;
  }
  if ( !gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)a2 + 15) )
    return 0;
  ptr = gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)a2 + 15);
  if ( !(*(int (__fastcall **)(int, int))(*(_DWORD *)ptr + 8))(ptr, 2) )
    return 0;
  v8 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)a2 + 15);
  if ( !v8 )
    return 0;
LABEL_5:
  gameswf::ref_counted::add_ref((int)a2);
  v9 = (gameswf::as_environment *)(*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)v8 + 88))(v8);
  gameswf::call_method((gameswf *)v12, v9, a2, a3, a4, a5);
  if ( v12[0] == -1 )
    gameswf::free_internal(p);
  gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))a2);
  return 1;
}


// ===== 7abf34 RenderFX::SendEvent(RenderFX::Event &) =====
int __fastcall RenderFX::SendEvent(RenderFX *this, gameswf::character **a2)
{
  int result; // r0
  const char *v5; // r6

  result = (***((int (__fastcall ****)(_DWORD))this + 63))(*((_DWORD *)this + 63));
  if ( !*((_BYTE *)a2 + 36) )
  {
    switch ( (unsigned int)a2[2] )
    {
      case 0u:
        result = RenderFX::InvokeASCallback(this, *a2, "on_focus_in", nullptr, 0);
        break;
      case 1u:
        result = RenderFX::InvokeASCallback(this, *a2, "on_focus_out", nullptr, 0);
        break;
      case 2u:
        result = RenderFX::InvokeASCallback(this, *a2, "on_clicked", nullptr, 0);
        break;
      case 4u:
        result = RenderFX::InvokeASCallback(this, *a2, "onPress", nullptr, 0);
        break;
      case 6u:
        RenderFX::InvokeASCallback(this, *a2, "onRelease", nullptr, 0);
        v5 = (const char *)a2[1];
        if ( !LC_API_STRCMP_0(v5, "btnDelete") )
        {
          lastOpenMenuID = 19;
          v5 = (const char *)a2[1];
        }
        if ( !LC_API_STRCMP_0(v5, "btn_GAMEPLAYMENUS_ACCEPT") || !LC_API_STRCMP_0(v5, "btn_GAMEPLAYMENUS_REFUSE") )
        {
          lastOpenMenuID = 1;
          v5 = (const char *)a2[1];
        }
        if ( !LC_API_STRCMP_0(v5, "btn_Legend") )
        {
          lastOpenMenuID = 20;
          v5 = (const char *)a2[1];
        }
        result = LC_API_STRCMP_0(v5, "btn_deadzone");
        if ( !result )
          lastOpenMenuID = 12;
        break;
      case 7u:
        result = RenderFX::InvokeASCallback(this, *a2, "onReleaseOutside", nullptr, 0);
        break;
      case 8u:
        result = RenderFX::InvokeASCallback(this, *a2, "onRollOver", nullptr, 0);
        break;
      case 9u:
        result = RenderFX::InvokeASCallback(this, *a2, "onRollOut", nullptr, 0);
        break;
      case 0xAu:
        result = RenderFX::InvokeASCallback(this, *a2, "onDragOver", nullptr, 0);
        break;
      case 0xBu:
        result = RenderFX::InvokeASCallback(this, *a2, "onDragOut", nullptr, 0);
        break;
      default:
        return result;
    }
  }
  return result;
}


// ===== 7ac228 RenderFX::SetFocus(gameswf::character *,int) =====
gameswf::ref_counted *__fastcall RenderFX::SetFocus(gameswf::ref_counted *this, gameswf::character *a2, int a3)
{
  gameswf::ref_counted *v4; // r5
  int v5; // r7
  char *v7; // r2
  char *v8; // r2
  char *v9; // r1
  int v10; // r3
  bool v11; // zf
  int v12; // r3
  gameswf::character *v13; // [sp+4h] [bp-130h] BYREF
  char *v14; // [sp+8h] [bp-12Ch]
  int v15; // [sp+Ch] [bp-128h]
  int v16; // [sp+10h] [bp-124h]
  int v17; // [sp+14h] [bp-120h]
  int v18; // [sp+18h] [bp-11Ch]
  int v19; // [sp+1Ch] [bp-118h]
  int v20; // [sp+20h] [bp-114h]
  int v21; // [sp+24h] [bp-110h]
  char v22; // [sp+28h] [bp-10Ch]
  char v23; // [sp+29h] [bp-10Bh]

  v4 = this;
  v5 = *((_DWORD *)this + 10 * a3 + 26);
  if ( a2 != (gameswf::character *)v5 )
  {
    if ( (*((_DWORD *)this + 62) & 0x40) == 0
      && v5
      && (*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 8))(v5, 2)
      && *(_BYTE *)(v5 + 234) )
    {
      RenderFX::PlayAnim(v4, (gameswf::character *)v5, "focus_out", 0);
      v19 = 0;
      v18 = 0;
      v15 = 1;
      v17 = 0;
      v16 = 0;
      v13 = (gameswf::character *)v5;
      v7 = *(char **)(v5 + 68);
      if ( *v7 == -1 )
        v8 = *((char **)v7 + 3);
      else
        v8 = v7 + 1;
      v14 = v8;
      v22 = 0;
      v23 = 0;
      v20 = 0;
      v21 = a3;
      RenderFX::SendEvent(v4, &v13);
    }
    this = gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)v4 + 10 * a3 + 26, a2);
    if ( (*((_DWORD *)v4 + 62) & 0x40) == 0 && a2 )
    {
      v9 = *((char **)a2 + 17);
      v15 = *((_DWORD *)v4 + 62) & 0x40;
      v18 = 0;
      v17 = 0;
      v16 = 0;
      v19 = 0;
      v13 = a2;
      v10 = *v9;
      v11 = v10 == -1;
      if ( v10 == -1 )
        v9 = *((char **)v9 + 3);
      v12 = *((_DWORD *)v4 + 63);
      if ( !v11 )
        ++v9;
      v14 = v9;
      v21 = a3;
      v23 = 0;
      v20 = 0;
      v22 = 0;
      if ( (*(int (__fastcall **)(int, gameswf::character **))(*(_DWORD *)v12 + 8))(v12, &v13) )
      {
        RenderFX::PlayAnim(v4, a2, "focus_in", 0);
        return (gameswf::ref_counted *)RenderFX::SendEvent(v4, &v13);
      }
      else
      {
        return gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)v4 + 10 * a3 + 26, nullptr);
      }
    }
  }
  return this;
}


// ===== 7ac410 RenderFX::ResetFocus(int) =====
gameswf::ref_counted *__fastcall RenderFX::ResetFocus(RenderFX *this, int a2)
{
  RenderFX::SetFocus(this, nullptr, a2);
  return gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)this + 10 * a2 + 30, nullptr);
}


// ===== 7ac444 MenuFX::SetFocusDefault(void) =====
gameswf::ref_counted *__fastcall MenuFX::SetFocusDefault(gameswf::character **this)
{
  char *Characters; // r0

  Characters = RenderFX::FindCharacters((RenderFX *)this, *(this + 16), "btn", 3);
  if ( *((int *)Characters + 1) <= 0 )
    return RenderFX::ResetFocus((RenderFX *)this, 0);
  else
    return RenderFX::SetFocus((gameswf::ref_counted *)this, **(gameswf::character ***)Characters, 0);
}


// ===== 7ac498 RenderFX::SetFocus(char const*,int) =====
gameswf::ref_counted *__fastcall RenderFX::SetFocus(gameswf::root **this, const char *a2, int a3)
{
  gameswf::as_object *v5; // r0

  v5 = RenderFX::Find(this, a2);
  return RenderFX::SetFocus((gameswf::ref_counted *)this, v5, a3);
}


// ===== 7ac4bc RenderFX::UpdateInput(int,int) =====
void __fastcall RenderFX::UpdateInput(RenderFX *this, gameswf::character *a2, int a3)
{
  int v3; // r9
  RenderFX *v4; // r7
  gameswf::character *v5; // r5
  int v6; // r8
  char *v8; // r2
  gameswf::character *v9; // r2
  char *world_matrix; // r0
  int v11; // r9
  char *Characters; // r0
  int v13; // r5
  char *v14; // r7
  float v15; // r8
  gameswf::character *v16; // r6
  char *v17; // r0
  float v18; // r10
  float v19; // r9
  float v20; // r0
  gameswf::character *v21; // lr
  gameswf::character *v22; // r3
  float v23; // [sp+0h] [bp-1ACh]
  float v24; // [sp+4h] [bp-1A8h]
  float v25; // [sp+8h] [bp-1A4h]
  float v26; // [sp+Ch] [bp-1A0h]
  gameswf::character *v27; // [sp+10h] [bp-19Ch]
  float v28; // [sp+14h] [bp-198h]
  float v29; // [sp+18h] [bp-194h]
  float v30; // [sp+1Ch] [bp-190h]
  gameswf::character *v31; // [sp+20h] [bp-18Ch]
  gameswf::character *v32; // [sp+24h] [bp-188h]
  gameswf::character *v33; // [sp+28h] [bp-184h]
  int v34; // [sp+2Ch] [bp-180h]
  gameswf::character *v35; // [sp+30h] [bp-17Ch]
  RenderFX *v36; // [sp+34h] [bp-178h]
  char v37; // [sp+38h] [bp-174h]
  int v38; // [sp+3Ch] [bp-170h]
  float v39; // [sp+54h] [bp-158h]
  float v40; // [sp+60h] [bp-14Ch]
  gameswf::character *v41[9]; // [sp+7Ch] [bp-130h] BYREF
  char v42; // [sp+A0h] [bp-10Ch]
  char v43; // [sp+A1h] [bp-10Bh]

  v3 = (int)this + 40 * a3;
  v4 = this;
  v5 = *(gameswf::character **)(v3 + 104);
  v6 = a3;
  if ( v5 )
  {
    gameswf::ref_counted::add_ref(*(_DWORD *)(v3 + 104));
    if ( !a2 || *(_DWORD *)(v3 + 116) )
      goto LABEL_3;
    v41[2] = (gameswf::character *)(&dword_0 + 3);
    memset(&v41[3], 0, 16);
    v41[0] = v5;
    v8 = *((char **)v5 + 17);
    v9 = *v8 == -1 ? *((gameswf::character **)v8 + 3) : (gameswf::character *)(v8 + 1);
    v42 = 0;
    v43 = 0;
    v41[1] = v9;
    v41[8] = (gameswf::character *)v6;
    v41[7] = a2;
    RenderFX::SendEvent(v4, v41);
    if ( v42 )
      goto LABEL_3;
    world_matrix = gameswf::character::get_world_matrix(v5);
    if ( ((unsigned __int8)a2 & 0xC) == 0 )
      v3 = 1090519040;
    v24 = *((float *)world_matrix + 2);
    if ( ((unsigned __int8)a2 & 0xC) != 0 )
      v11 = 1065353216;
    else
      v11 = v3 + 0x200000;
    v23 = *((float *)world_matrix + 5);
    v34 = (unsigned __int8)a2 & 1;
    if ( ((unsigned __int8)a2 & 1) != 0 || ((unsigned __int8)a2 & 2) != 0 )
      v25 = 1.0;
    else
      v25 = 10.0;
    Characters = RenderFX::FindCharacters(v4, *((gameswf::character **)v4 + 16), "btn", 3);
    if ( *((int *)Characters + 1) <= 0 )
    {
      v27 = nullptr;
      v31 = nullptr;
      v32 = nullptr;
      v33 = nullptr;
    }
    else
    {
      v26 = 2147500000.0;
      v30 = 2147500000.0;
      v29 = 2147500000.0;
      v28 = 2147500000.0;
      v35 = v5;
      v36 = v4;
      v38 = v6;
      v27 = nullptr;
      v31 = nullptr;
      v32 = nullptr;
      v33 = nullptr;
      v13 = 0;
      v14 = Characters;
      v37 = (char)a2;
      v15 = *(float *)&v11;
      do
      {
        v16 = *(gameswf::character **)(*(_DWORD *)v14 + 4 * v13);
        v17 = gameswf::character::get_world_matrix(v16);
        v39 = *((float *)v17 + 2);
        v40 = *((float *)v17 + 5);
        v18 = v15 * (float)(v39 - v24);
        v19 = v25 * (float)(v40 - v23);
        v20 = (float)(v18 * v18) + (float)(v19 * v19);
        if ( v19 < 0.0 && fabs(v25 * (float)(v40 - v23)) > 0.0 && v20 < v30 )
        {
          v30 = (float)(v18 * v18) + (float)(v19 * v19);
          v31 = v16;
        }
        if ( v19 > 0.0 && fabs(v25 * (float)(v40 - v23)) > 0.0 && v29 > v20 )
        {
          v29 = (float)(v18 * v18) + (float)(v19 * v19);
          v32 = v16;
        }
        if ( v18 < 0.0 && fabs(v15 * (float)(v39 - v24)) > 0.0 && v28 > v20 )
        {
          v28 = (float)(v18 * v18) + (float)(v19 * v19);
          v27 = v16;
        }
        if ( v18 > 0.0 && fabs(v15 * (float)(v39 - v24)) > 0.0 && v20 < v26 )
        {
          v26 = (float)(v18 * v18) + (float)(v19 * v19);
          v33 = v16;
        }
        ++v13;
      }
      while ( v13 < *((_DWORD *)v14 + 1) );
      v5 = v35;
      v4 = v36;
      LOBYTE(a2) = v37;
      v6 = v38;
    }
    if ( v34 )
    {
      v21 = v31;
      if ( v31 )
        goto LABEL_41;
    }
    if ( ((unsigned __int8)a2 & 2) == 0 || (v22 = v32) == nullptr )
    {
      if ( ((unsigned __int8)a2 & 4) != 0 )
      {
        v21 = v27;
        if ( v27 )
        {
LABEL_41:
          RenderFX::SetFocus(v4, v21, v6);
LABEL_3:
          gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
          return;
        }
      }
      if ( ((unsigned __int8)a2 & 8) == 0 || (v22 = v33) == nullptr )
      {
        if ( ((unsigned __int8)a2 & 0x10) != 0 && *((_DWORD *)v4 + 63) && (*((_DWORD *)v4 + 62) & 0x40) == 0 )
        {
          RenderFX::PlayAnim(v4, v5, "clicked", 0);
          gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)v4 + 10 * v6 + 29, v5);
        }
        goto LABEL_3;
      }
    }
    RenderFX::SetFocus(v4, v22, v6);
    goto LABEL_3;
  }
}


// ===== 7ac924 RenderFX::UpdateCursor(RenderFX::Cursor &,int) =====
void __fastcall RenderFX::UpdateCursor(RenderFX *this, Cursor *a2, unsigned int a3)
{
  char *v6; // r10
  float v7; // r0
  Cursor v8; // r1
  int v9; // r2
  Cursor v10; // r3
  Cursor *v11; // t0
  float v12; // r2
  int v13; // r3
  float v14; // r9
  float v15; // r9
  float v16; // r3
  char *v17; // r3
  Cursor v18; // lr
  bool v19; // zf
  int v20; // r10
  int v21; // r0
  gameswf::character *v22; // r10
  char *v23; // r3
  void (__fastcall ***v24)(_DWORD); // r11
  gameswf::character *v25; // r0
  char *v26; // r9
  gameswf::character *v27; // r0
  gameswf::character *v28; // r2
  char *v29; // r1
  Cursor v30; // r0
  char *v31; // r1
  int v32; // r3
  char *v33; // r1
  Cursor v34; // r0
  char *v35; // r1
  int v36; // r3
  char *v37; // r9
  gameswf::character *v38; // r0
  int v39; // r9
  int *world_matrix; // r0
  int v41; // r1
  int v42; // r2
  float v43; // r3
  int *v44; // r2
  int v45; // r0
  float v46; // r1
  float v47; // r12
  int v48; // r3
  char *v49; // r2
  Cursor v50; // lr
  char *v51; // r2
  char *v52; // r2
  Cursor v53; // lr
  char *v54; // r2
  int v55; // r3
  char *v56; // r2
  Cursor v57; // lr
  char *v58; // r2
  gameswf::character *v59; // r3
  gameswf::character *v60; // r2
  char *v61; // r2
  char *v62; // r2
  int v63; // r3
  char *v64; // r3
  char *v65; // r1
  Cursor v66; // r0
  int v67; // r3
  RenderFX::Event *v68; // r12
  char *v69; // r2
  char *v70; // r2
  gameswf::character *v71; // r2
  char *v72; // r1
  char *v73; // r1
  int v74; // r3
  int v75; // r7
  float v76; // [sp+4h] [bp-2B8h]
  float v77; // [sp+4h] [bp-2B8h]
  RenderFX::Event *v78; // [sp+4h] [bp-2B8h]
  float v79; // [sp+8h] [bp-2B4h]
  float v80; // [sp+8h] [bp-2B4h]
  RenderFX::Event *v81; // [sp+Ch] [bp-2B0h]
  RenderFX::Event *v82; // [sp+Ch] [bp-2B0h]
  float v83; // [sp+10h] [bp-2ACh]
  float v84; // [sp+14h] [bp-2A8h]
  float v85; // [sp+14h] [bp-2A8h]
  float v86; // [sp+18h] [bp-2A4h]
  int v87; // [sp+18h] [bp-2A4h]
  int v88; // [sp+1Ch] [bp-2A0h]
  Cursor v89; // [sp+20h] [bp-29Ch]
  gameswf::ref_counted *v90; // [sp+24h] [bp-298h]
  float v91; // [sp+2Ch] [bp-290h] BYREF
  float v92; // [sp+30h] [bp-28Ch]
  float v93; // [sp+34h] [bp-288h]
  float v94; // [sp+38h] [bp-284h]
  float v95; // [sp+3Ch] [bp-280h]
  float v96; // [sp+40h] [bp-27Ch]
  float v97; // [sp+44h] [bp-278h] BYREF
  float v98; // [sp+48h] [bp-274h]
  float v99; // [sp+4Ch] [bp-270h]
  float v100; // [sp+50h] [bp-26Ch]
  int v101; // [sp+54h] [bp-268h]
  float v102; // [sp+58h] [bp-264h]
  float v103; // [sp+5Ch] [bp-260h] BYREF
  float v104; // [sp+60h] [bp-25Ch]
  gameswf::character *v105; // [sp+64h] [bp-258h] BYREF
  char *v106; // [sp+68h] [bp-254h]
  int v107; // [sp+6Ch] [bp-250h]
  float v108; // [sp+70h] [bp-24Ch]
  float v109; // [sp+74h] [bp-248h]
  int v110; // [sp+78h] [bp-244h]
  Cursor v111; // [sp+7Ch] [bp-240h]
  int v112; // [sp+80h] [bp-23Ch]
  unsigned int v113; // [sp+84h] [bp-238h]
  char v114; // [sp+88h] [bp-234h]
  char v115; // [sp+89h] [bp-233h]
  gameswf::character *v116; // [sp+18Ch] [bp-130h] BYREF
  char *v117; // [sp+190h] [bp-12Ch]
  int v118; // [sp+194h] [bp-128h]
  float v119; // [sp+198h] [bp-124h]
  float v120; // [sp+19Ch] [bp-120h]
  int v121; // [sp+1A0h] [bp-11Ch]
  Cursor v122; // [sp+1A4h] [bp-118h]
  int v123; // [sp+1A8h] [bp-114h]
  unsigned int v124; // [sp+1ACh] [bp-110h]
  char v125; // [sp+1B0h] [bp-10Ch]
  char v126; // [sp+1B1h] [bp-10Bh]

  if ( a3 <= 3 )
  {
    v6 = (char *)this + 40 * a3;
    v7 = *(float *)a2;
    v11 = a2 + 1;
    v8 = a2[1];
    v9 = *++v11;
    v10 = v11[1];
    v86 = *((float *)v6 + 23);
    v84 = *((float *)v6 + 22);
    v88 = *((_DWORD *)v6 + 25);
    *((float *)v6 + 22) = v7;
    *((_DWORD *)v6 + 23) = v8;
    *((_DWORD *)v6 + 24) = v9;
    *((_DWORD *)v6 + 25) = v10;
    v12 = *(float *)a2;
    v13 = *((_DWORD *)this + 15);
    v104 = *((float *)a2 + 1);
    v103 = v12;
    *(float *)(v13 + 76) = v104;
    *(float *)(v13 + 72) = v12;
    *(_DWORD *)(*((_DWORD *)this + 15) + 80) = a3;
    gameswf::root::screen_to_logical(*((_DWORD **)this + 15), &v103);
    v79 = v103;
    *(float *)&v81 = v104;
    if ( *((_DWORD *)v6 + 28) )
    {
      v100 = 0.0;
      v102 = 0.0;
      v101 = 1065353216;
      v98 = 0.0;
      v97 = 1.0;
      v14 = (float)((float)(v103 * 20.0) + (float)((float)(v104 * 20.0) * 0.0)) + 0.0;
      if ( v14 < -3.4028e38 || v14 > 3.4028e38 )
        v14 = 0.0;
      v99 = v14;
      v15 = (float)((float)(v104 * 20.0) + (float)((float)(v103 * 20.0) * v100)) + v102;
      if ( v15 < -3.4028e38 || v15 > 3.4028e38 )
        v15 = 0.0;
      v16 = *((float *)a2 + 2);
      v102 = v15;
      gameswf::matrix::set_scale_rotation((gameswf::matrix *)&v97, 1.0, 1.0, v16);
      gameswf::character::set_matrix(*((_DWORD *)this + 10 * a3 + 28), (int *)&v97);
    }
    v17 = (char *)this + 40 * a3;
    if ( v17[124] )
    {
      if ( *((_DWORD *)this + 16) && ((*((_DWORD *)this + 62) & 0x20) == 0 || !*((_DWORD *)v17 + 29)) )
      {
        gameswf::root::notify_mouse_state(*((_DWORD **)this + 15), (int)v79, (int)*(float *)&v81, 0);
        if ( a2[3] )
        {
          v89 = v88 == 0;
          if ( *(float *)a2 != v84 || *((float *)a2 + 1) != v86 )
          {
            v88 = 0;
            v87 = 1;
LABEL_19:
            if ( (*((_DWORD *)this + 62) & 4) != 0 )
            {
              v20 = *(_DWORD *)(*((_DWORD *)this + 15) + 16);
              if ( v20 )
              {
LABEL_21:
                v90 = (gameswf::ref_counted *)v20;
                gameswf::ref_counted::add_ref(v20);
                goto LABEL_22;
              }
            }
            else
            {
              v20 = *((_DWORD *)this + 16);
              if ( v20 )
                goto LABEL_21;
            }
            v90 = nullptr;
LABEL_22:
            v85 = v79 * 20.0;
            v83 = *(float *)&v81 * 20.0;
            v21 = (*(int (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)v20 + 104))(
                    v20,
                    v79 * 20.0,
                    *(float *)&v81 * 20.0);
            v22 = (gameswf::character *)v21;
            if ( v21 )
              gameswf::ref_counted::add_ref(v21);
            v23 = (char *)this + 40 * a3;
            v24 = *((void (__fastcall ****)(_DWORD))v23 + 26);
            if ( v24 )
              gameswf::ref_counted::add_ref(*((_DWORD *)v23 + 26));
            if ( *((_DWORD *)this + 10 * a3 + 30) )
            {
              if ( (*((_DWORD *)this + 62) & 0x80) == 0 || !v22 || !v87 )
              {
LABEL_30:
                if ( v89 )
                {
LABEL_32:
                  if ( *((_DWORD *)this + 10 * a3 + 26) != *((_DWORD *)this + 10 * a3 + 29) )
                    gameswf::smart_ptr<gameswf::character>::set_ref(
                      (gameswf::ref_counted **)this + 10 * a3 + 29,
                      nullptr);
LABEL_34:
                  v25 = *((gameswf::character **)this + 10 * a3 + 30);
                  if ( v25 && !CanHandleMouseEvent(v25) )
                    gameswf::smart_ptr<gameswf::character>::set_ref(
                      (gameswf::ref_counted **)this + 10 * a3 + 30,
                      nullptr);
                  v26 = (char *)this + 40 * a3;
                  if ( v24 != *((void (__fastcall ****)(_DWORD))v26 + 26) )
                  {
                    v27 = *((gameswf::character **)v26 + 27);
                    if ( v27 && CanHandleMouseEvent(v27) )
                    {
                      GetLocalPosition(
                        (gameswf::character *)&v97,
                        *((gameswf::character **)v26 + 27),
                        v79,
                        *(float *)&v81);
                      v28 = *((gameswf::character **)v26 + 27);
                      v122 = 0;
                      v120 = 0.0;
                      v119 = 0.0;
                      v116 = v28;
                      v121 = 0;
                      v118 = 9;
                      v29 = *((char **)v28 + 17);
                      v30 = a2[3];
                      v31 = *v29 == -1 ? *((char **)v29 + 3) : v29 + 1;
                      v32 = *((_DWORD *)this + 63);
                      v117 = v31;
                      v122 = v30;
                      v125 = 0;
                      v119 = v97;
                      v126 = 0;
                      v123 = 0;
                      v120 = v98;
                      v124 = a3;
                      if ( (*(int (__fastcall **)(int, gameswf::character **))(*(_DWORD *)v32 + 8))(v32, &v116) )
                        RenderFX::SendEvent(this, &v116);
                    }
                    if ( v22 && CanHandleMouseEvent(v22) )
                    {
                      GetLocalPosition((gameswf::character *)&v97, v22, v79, *(float *)&v81);
                      v122 = 0;
                      v118 = 8;
                      v120 = 0.0;
                      v119 = 0.0;
                      v121 = 0;
                      v116 = v22;
                      v33 = *((char **)v22 + 17);
                      v34 = a2[3];
                      v35 = *v33 == -1 ? *((char **)v33 + 3) : v33 + 1;
                      v36 = *((_DWORD *)this + 63);
                      v117 = v35;
                      v122 = v34;
                      v125 = 0;
                      v119 = v97;
                      v126 = 0;
                      v123 = 0;
                      v120 = v98;
                      v124 = a3;
                      if ( (*(int (__fastcall **)(int, gameswf::character **))(*(_DWORD *)v36 + 8))(v36, &v116) )
                        RenderFX::SendEvent(this, &v116);
                    }
                  }
                  if ( v87 )
                  {
                    v37 = (char *)this + 40 * a3;
                    v38 = *((gameswf::character **)v37 + 26);
                    if ( v38 )
                    {
                      if ( v38 != *((gameswf::character **)v37 + 27) )
                        goto LABEL_143;
                      if ( v22 == v38 )
                      {
                        v38 = v22;
                        v59 = v22;
                      }
                      else
                      {
                        if ( CanHandleMouseEvent(v38) )
                        {
                          v60 = *((gameswf::character **)v37 + 26);
                          v122 = 0;
                          v121 = 0;
                          v118 = 11;
                          v120 = 0.0;
                          v119 = 0.0;
                          v116 = v60;
                          v61 = *((char **)v60 + 17);
                          v37 = (char *)this + 40 * a3;
                          v62 = *v61 == -1 ? *((char **)v61 + 3) : v61 + 1;
                          v117 = v62;
                          v125 = 0;
                          v126 = 0;
                          v123 = 0;
                          v124 = a3;
                          GetLocalPosition(
                            (gameswf::character *)&v97,
                            *((gameswf::character **)v37 + 26),
                            v79,
                            *(float *)&v81);
                          v63 = *((_DWORD *)this + 63);
                          v122 = a2[3];
                          v119 = v97;
                          v120 = v98;
                          if ( (*(int (__fastcall **)(int, gameswf::character **))(*(_DWORD *)v63 + 8))(v63, &v116) )
                            RenderFX::SendEvent(this, &v116);
                        }
                        v38 = *((gameswf::character **)v37 + 26);
                        v59 = *((gameswf::character **)v37 + 27);
                      }
                      if ( v38 != v59 )
                      {
LABEL_143:
                        if ( v22 == v38 && CanHandleMouseEvent(v22) )
                        {
                          v71 = *((gameswf::character **)this + 10 * a3 + 26);
                          v122 = 0;
                          v116 = v71;
                          v121 = 0;
                          v118 = 10;
                          v120 = 0.0;
                          v119 = 0.0;
                          v72 = *((char **)v71 + 17);
                          v73 = *v72 == -1 ? *((char **)v72 + 3) : v72 + 1;
                          v125 = 0;
                          v126 = 0;
                          v123 = 0;
                          v117 = v73;
                          v124 = a3;
                          GetLocalPosition(
                            (gameswf::character *)&v97,
                            *((gameswf::character **)this + 10 * a3 + 26),
                            v79,
                            *(float *)&v81);
                          v74 = *((_DWORD *)this + 63);
                          v122 = a2[3];
                          v119 = v97;
                          v120 = v98;
                          if ( (*(int (__fastcall **)(int, gameswf::character **))(*(_DWORD *)v74 + 8))(v74, &v116) )
                            RenderFX::SendEvent(this, &v116);
                        }
                      }
                    }
                  }
                  v82 = (RenderFX *)((char *)this + 40 * a3);
                  gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)v82 + 27, v22);
                  v39 = *((_DWORD *)v82 + 26);
                  if ( !v39 )
                    goto LABEL_63;
                  gameswf::ref_counted::add_ref(*((_DWORD *)v82 + 26));
                  if ( !CanHandleMouseEvent((gameswf::character *)v39) )
                  {
LABEL_62:
                    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v39);
LABEL_63:
                    if ( v24 )
                      gameswf::ref_counted::drop_ref(v24);
                    if ( v22 )
                      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v22);
                    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v90);
                    return;
                  }
                  world_matrix = (int *)gameswf::character::get_world_matrix((gameswf::character *)v39);
                  v41 = world_matrix[1];
                  v42 = world_matrix[2];
                  v43 = *((float *)world_matrix + 3);
                  v97 = *(float *)world_matrix;
                  v98 = *(float *)&v41;
                  v99 = *(float *)&v42;
                  v100 = v43;
                  v44 = world_matrix + 4;
                  v45 = world_matrix[4];
                  v46 = *((float *)v44 + 1);
                  v93 = 0.0;
                  v94 = 0.0;
                  v101 = v45;
                  v102 = v46;
                  v96 = 0.0;
                  v92 = 0.0;
                  v95 = 1.0;
                  v91 = 1.0;
                  gameswf::matrix::set_inverse((gameswf::matrix *)&v91, (const gameswf::matrix *)&v97);
                  v80 = (float)((float)(v85 * v91) + (float)(v83 * v92)) + v93;
                  v76 = v85 * v94;
                  v47 = (float)((float)(v85 * v94) + (float)(v83 * v95)) + v96;
                  if ( v89 )
                  {
                    v48 = *((_DWORD *)this + 62);
                    if ( (v48 & 1) == 0 && !v22 )
                    {
LABEL_61:
                      RenderFX::ResetFocus(this, a3);
                      goto LABEL_62;
                    }
                    if ( (v48 & 0x40) == 0 )
                    {
                      v77 = (float)(v76 + (float)(v83 * v95)) + v96;
                      RenderFX::PlayAnim(this, (gameswf::character *)v39, "pressed", 0);
                      v47 = v77;
                    }
                    v122 = 0;
                    v120 = 0.0;
                    v119 = 0.0;
                    v121 = 0;
                    v118 = 4;
                    v116 = (gameswf::character *)v39;
                    v49 = *(char **)(v39 + 68);
                    v50 = a2[3];
                    if ( *v49 == -1 )
                      v51 = *((char **)v49 + 3);
                    else
                      v51 = v49 + 1;
                    v117 = v51;
                    v125 = 0;
                    v122 = v50;
                    v119 = v80;
                    v120 = v47;
                    v126 = 0;
                    v123 = 0;
                    v124 = a3;
                    RenderFX::SendEvent(this, &v116);
                    goto LABEL_78;
                  }
                  if ( !v88 )
                  {
                    if ( !v87 )
                    {
                      if ( (*((_DWORD *)this + 62) & 1) != 0 || v22 || *((_DWORD *)v82 + 30) )
                        goto LABEL_62;
                      goto LABEL_61;
                    }
                    if ( (*((_DWORD *)this + 62) & 0x40) == 0 )
                    {
                      v111 = 0;
                      v109 = 0.0;
                      v108 = 0.0;
                      v110 = 0;
                      v107 = 5;
                      v105 = (gameswf::character *)v39;
                      v56 = *(char **)(v39 + 68);
                      v57 = a2[3];
                      if ( *v56 == -1 )
                        v58 = *((char **)v56 + 3);
                      else
                        v58 = v56 + 1;
                      v106 = v58;
                      v114 = 0;
                      v111 = v57;
                      v108 = (float)((float)(v85 * v91) + (float)(v83 * v92)) + v93;
                      v109 = (float)(v76 + (float)(v83 * v95)) + v96;
                      v115 = 0;
                      v112 = 0;
                      v113 = a3;
                      RenderFX::SendEvent(this, &v105);
                    }
LABEL_78:
                    gameswf::smart_ptr<gameswf::character>::set_ref(
                      (gameswf::ref_counted **)this + 10 * a3 + 30,
                      (gameswf::ref_counted *)v39);
                    goto LABEL_62;
                  }
                  if ( (*((_DWORD *)this + 62) & 1) == 0 && v22 != (gameswf::character *)v39 )
                  {
                    v122 = 0;
                    v120 = 0.0;
                    v119 = 0.0;
                    v121 = 0;
                    v118 = 7;
                    v116 = (gameswf::character *)v39;
                    v52 = *(char **)(v39 + 68);
                    v53 = a2[3];
                    if ( *v52 == -1 )
                      v54 = *((char **)v52 + 3);
                    else
                      v54 = v52 + 1;
                    v117 = v54;
                    v125 = 0;
                    v122 = v53;
                    v119 = (float)((float)(v85 * v91) + (float)(v83 * v92)) + v93;
                    v120 = (float)(v76 + (float)(v83 * v95)) + v96;
                    v126 = 0;
                    v123 = 0;
                    v124 = a3;
                    RenderFX::SendEvent(this, &v116);
                    RenderFX::ResetFocus(this, a3);
                    goto LABEL_91;
                  }
                  v122 = 0;
                  v121 = 0;
                  v118 = 6;
                  v120 = 0.0;
                  v119 = 0.0;
                  v116 = (gameswf::character *)v39;
                  v64 = *(char **)(v39 + 68);
                  if ( *v64 == -1 )
                    v65 = *((char **)v64 + 3);
                  else
                    v65 = v64 + 1;
                  v66 = a2[3];
                  v67 = *((_DWORD *)this + 63);
                  v125 = 0;
                  v126 = 0;
                  v123 = 0;
                  v117 = v65;
                  v122 = v66;
                  v120 = (float)(v76 + (float)(v83 * v95)) + v96;
                  v124 = a3;
                  v119 = (float)((float)(v85 * v91) + (float)(v83 * v92)) + v93;
                  *(float *)&v78 = v120;
                  if ( !(*(int (__fastcall **)(int, gameswf::character **))(*(_DWORD *)v67 + 8))(v67, &v116) )
                    goto LABEL_91;
                  if ( (*((_DWORD *)this + 62) & 0x40) != 0 )
                  {
                    RenderFX::SendEvent(this, &v116);
                    v68 = v78;
LABEL_122:
                    v111 = 0;
                    v109 = 0.0;
                    v108 = 0.0;
                    v110 = 0;
                    v107 = 2;
                    v105 = (gameswf::character *)v39;
                    v69 = *(char **)(v39 + 68);
                    if ( *v69 == -1 )
                      v70 = *((char **)v69 + 3);
                    else
                      v70 = v69 + 1;
                    v106 = v70;
                    v114 = 0;
                    v108 = v80;
                    v109 = *(float *)&v68;
                    v115 = 0;
                    v112 = 0;
                    v113 = a3;
                    RenderFX::SendEvent(this, &v105);
                    goto LABEL_91;
                  }
                  if ( RenderFX::PlayAnim(this, (gameswf::character *)v39, "released", 0) )
                  {
                    RenderFX::SendEvent(this, &v116);
                  }
                  else
                  {
                    v75 = RenderFX::PlayAnim(this, (gameswf::character *)v39, "clicked", 0);
                    RenderFX::SendEvent(this, &v116);
                    v68 = v78;
                    if ( !v75 )
                      goto LABEL_122;
                  }
                  gameswf::smart_ptr<gameswf::character>::set_ref(
                    (gameswf::ref_counted **)this + 10 * a3 + 29,
                    (gameswf::ref_counted *)v39);
LABEL_91:
                  gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)this + 10 * a3 + 30, nullptr);
                  goto LABEL_62;
                }
LABEL_31:
                if ( !v88 )
                  goto LABEL_34;
                goto LABEL_32;
              }
            }
            else
            {
              v55 = *((_DWORD *)this + 62);
              if ( !v89 && (v55 & 0x10) != 0 && ((v55 & 0x80) == 0 || !v87 || !v22) )
                goto LABEL_31;
            }
            RenderFX::SetFocus(this, v22, a3);
            goto LABEL_30;
          }
          v88 = 0;
        }
        else
        {
          v19 = v88 == 0;
          if ( v88 )
          {
            v89 = a2[3];
            v88 = 1;
          }
          else
          {
            v18 = 0;
          }
          if ( v19 )
            v89 = v18;
        }
        v87 = 0;
        goto LABEL_19;
      }
    }
  }
}


// ===== 7ad68c RenderFX::Update(int,bool) =====
void __fastcall RenderFX::Update(gameswf::player **this, int a2, int a3)
{
  int root; // r0
  gameswf::root *v7; // r6
  int v8; // r8
  gameswf::player **v9; // r10
  gameswf::player *v10; // r3
  gameswf::character *v11; // r3
  char *v12; // r3
  gameswf::character *v13; // r3
  gameswf::character *v14[9]; // [sp+Ch] [bp-130h] BYREF
  char v15; // [sp+30h] [bp-10Ch]
  char v16; // [sp+31h] [bp-10Bh]

  root = gameswf::player::get_root(*(this + 14));
  v7 = (gameswf::root *)root;
  if ( root )
    gameswf::ref_counted::add_ref(root);
  gameswf::root::advance(v7, (float)a2 / 1000.0, a3);
  v8 = (unsigned int)*(this + 62) & 0x40;
  if ( !v8 )
  {
    v9 = this;
    do
    {
      v10 = v9[29];
      if ( v10 && (*(int (__fastcall **)(gameswf::player *))(*(_DWORD *)v10 + 152))(v9[29]) == 1 )
      {
        v11 = v9[29];
        memset(&v14[3], 0, 16);
        v14[2] = (gameswf::character *)(&dword_0 + 2);
        v14[0] = v11;
        v12 = *((char **)v11 + 17);
        if ( *v12 == -1 )
          v13 = *((gameswf::character **)v12 + 3);
        else
          v13 = (gameswf::character *)(v12 + 1);
        v16 = 0;
        v14[1] = v13;
        v14[7] = nullptr;
        v15 = 0;
        v14[8] = (gameswf::character *)v8;
        RenderFX::SendEvent((RenderFX *)this, v14);
        gameswf::smart_ptr<gameswf::character>::set_ref(this + 10 * v8 + 29, nullptr);
      }
      ++v8;
      v9 += 10;
    }
    while ( v8 != 4 );
  }
  if ( v7 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v7);
}


// ===== 7ad7e8 RenderFX::InvokeASCallback(char const*,char const*,gameswf::as_value const*,int) =====
int __fastcall RenderFX::InvokeASCallback(
        gameswf::root **this,
        const char *a2,
        const char *a3,
        const gameswf::as_value *a4,
        int a5)
{
  gameswf::as_object *v8; // r0

  v8 = RenderFX::Find(this, a2);
  return RenderFX::InvokeASCallback((RenderFX *)this, v8, a3, a4, a5);
}


// ===== 7ad81c fscommand_callback_handler(gameswf::character *,char const*,char const*) =====
int __fastcall fscommand_callback_handler(gameswf::character *a1, const char *a2, const char *a3)
{
  int v3; // r3
  _BYTE *v6; // r0
  const char *v9; // [sp+4h] [bp-8h]

  v3 = *((_DWORD *)a1 + 12);
  if ( v3 )
  {
    v6 = *((_BYTE **)a1 + 11);
    if ( !v6[4] )
    {
      if ( (*(_DWORD *)v6)-- == 1 )
      {
        v9 = a3;
        gameswf::free_internal(v6);
        a3 = v9;
      }
      v3 = 0;
      *((_DWORD *)a1 + 12) = 0;
      *((_DWORD *)a1 + 11) = 0;
    }
  }
  return RenderFX::FSCommand(*(_DWORD *)(v3 + 148), a2, a3);
}


// ===== 7ad88c MenuFX::Update(int,bool) =====
// write access to const memory has been detected, the output may be wrong!
void __fastcall MenuFX::Update(gameswf::player **this, int a2, bool a3)
{
  int v5; // r8
  int v6; // r0
  int v7; // r7
  int v8; // r6
  int v9; // r2
  int v10; // r3
  void *v11; // r0
  bool v12; // zf
  int v13; // r3
  int v14; // r2
  int i; // r5
  _DWORD *v16; // r6
  int v17; // r3
  _BYTE *v18; // r0
  int v19; // r6
  int v20; // r3
  int v21; // r2
  int v22; // r10
  int v23; // r6
  int v24; // r3
  _BYTE *v25; // r0

  RenderFX::Update(this, a2, a3);
  v5 = (int)*(this + 70);
  if ( v5 > 0 )
  {
    v6 = *((_DWORD *)*(this + 69) + v5 - 1);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v6 + 32))(v6, a2);
    v5 = (int)*(this + 70);
  }
  if ( v5 - 2 >= 0 )
  {
    v7 = 4 * (v5 - 2);
    while ( 1 )
    {
      --v5;
      v8 = *(_DWORD *)((char *)*(this + 69) + v7);
      v9 = *(_DWORD *)(v8 + 76);
      if ( v9 )
      {
        v10 = *(_DWORD *)(v8 + 72);
        if ( !*(_BYTE *)(v10 + 4) )
          break;
      }
      if ( *(_BYTE *)(v9 + 155) )
      {
        v13 = *(_DWORD *)((char *)*(this + 69) + v7);
        v7 -= 4;
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v13 + 40))(v13, a2);
        if ( v5 == 1 )
          goto LABEL_14;
      }
      else
      {
LABEL_6:
        v7 -= 4;
        if ( v5 == 1 )
          goto LABEL_14;
      }
    }
    v11 = *(void **)(v8 + 72);
    v12 = (*(_DWORD *)v10)-- == 1;
    if ( v12 )
      gameswf::free_internal(v11);
    *(_DWORD *)(v8 + 76) = 0;
    *(_DWORD *)(v8 + 72) = 0;
    goto LABEL_6;
  }
LABEL_14:
  v14 = (int)*(this + 66);
  if ( v14 > 0 )
  {
    for ( i = 0; i < v14; ++i )
    {
      while ( 1 )
      {
        v16 = *((_DWORD **)*(this + 65) + i);
        if ( v16[22] == 2 )
          break;
        if ( ++i >= v14 )
          return;
      }
      v17 = v16[19];
      if ( v17 && (v18 = (_BYTE *)v16[18], !v18[4]) )
      {
        v12 = (*(_DWORD *)v18)-- == 1;
        if ( v12 )
          gameswf::free_internal(v18);
        v16[19] = 0;
        v16[18] = 0;
        if ( MEMORY[0x464C4617](0) != 1 )
          goto LABEL_21;
      }
      else if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 152))(v16[19]) != 1 )
      {
        goto LABEL_21;
      }
      v19 = *((_DWORD *)*(this + 65) + i);
      v20 = *(_DWORD *)(v19 + 76);
      if ( v20 )
      {
        v21 = *(_DWORD *)(v19 + 72);
        v22 = *(unsigned __int8 *)(v21 + 4);
        if ( !*(_BYTE *)(v21 + 4) )
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)(v19 + 72), (_DWORD *)*(unsigned __int8 *)(v21 + 4));
          *(_DWORD *)(v19 + 76) = v22;
          v20 = v22;
        }
      }
      if ( *(_BYTE *)(v20 + 155) && !*(this + 29) && !*(this + 39) && !*(this + 49) && !*(this + 59) )
      {
        v23 = *((_DWORD *)*(this + 65) + i);
        v24 = *(_DWORD *)(v23 + 76);
        if ( v24 && (v25 = *(_BYTE **)(v23 + 72), !v25[4]) )
        {
          v12 = (*(_DWORD *)v25)-- == 1;
          if ( v12 )
            gameswf::free_internal(v25);
          *(_DWORD *)(v23 + 76) = 0;
          *(_DWORD *)(v23 + 72) = 0;
          HIBYTE(dword_98) = 0;
        }
        else
        {
          *(_BYTE *)(v24 + 155) = 0;
        }
        v14 = (int)*(this + 66);
        continue;
      }
LABEL_21:
      v14 = (int)*(this + 66);
    }
  }
}


// ===== 7adb14 RenderFX::SearchIndex::Init(RenderFX&) =====
_DWORD *__fastcall RenderFX::SearchIndex::Init(RenderFX::SearchIndex *this, gameswf::character **a2)
{
  _DWORD *result; // r0
  int v4; // r1
  int i; // r9
  int v6; // r5
  char *v7; // r2
  int v8; // r3
  int index; // r0
  char *v10; // r3
  int v11; // r11
  int v12; // r2
  _BYTE *v13; // r1
  char *v14; // r3
  int v15; // r3
  _BYTE *v16; // r0
  _BYTE *v17; // r1
  _DWORD *v19; // r11
  const char *v20; // t1
  _DWORD *v21; // r5
  int v22; // r3
  int v23; // r11
  char *v24; // r0
  _DWORD *v25; // r0
  _DWORD *v26; // [sp+4h] [bp-1A8h]
  _DWORD v28[32]; // [sp+1Ch] [bp-190h] BYREF
  _DWORD *v29; // [sp+9Ch] [bp-110h] BYREF
  _DWORD v30[65]; // [sp+A0h] [bp-10Ch] BYREF

  RenderFX::SearchIndex::Clear(this);
  result = RenderFX::FindCharacters((RenderFX *)a2, a2[16], nullptr, 4);
  v26 = result;
  v4 = result[1];
  if ( v4 > 0 )
  {
    for ( i = 0; i < v4; ++i )
    {
      v6 = *(_DWORD *)(*v26 + 4 * i);
      v7 = *(char **)(v6 + 68);
      v8 = *v7;
      if ( v8 == -1 )
        v8 = *((_DWORD *)v7 + 1);
      if ( v8 - 1 > 0 )
      {
        v29 = nullptr;
        index = gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(
                  (int *)this,
                  *(char **)(v6 + 68));
        if ( index < 0 )
        {
          v25 = operator new(0x10u, 0);
          *v25 = 0;
          v25[1] = 0;
          v25[2] = 0;
          *((_BYTE *)v25 + 12) = 0;
          v29 = v25;
          gameswf::hash<gameswf::tu_string,gameswf::array<RenderFX::SearchIndex::Entry> *,gameswf::string_hash_functor<gameswf::tu_string>>::add(
            (_DWORD **)this,
            *(const gameswf::tu_string **)(v6 + 68),
            &v29);
        }
        else
        {
          v29 = *(_DWORD **)(*(_DWORD *)this + 32 * index + 36);
        }
        LC_API_MEMSET_0(v30, 0, 0x104u);
        v30[0] = v6;
        v10 = *(char **)(v6 + 68);
        v11 = 0;
        v12 = *v10;
        if ( v12 == -1 )
          v13 = *((_BYTE **)v10 + 3);
        else
          v13 = v10 + 1;
        if ( *v13 )
        {
LABEL_12:
          if ( v12 == -1 )
            v14 = *((char **)v10 + 3);
          else
            v14 = v10 + 1;
          v28[v11++] = v14;
        }
        while ( 1 )
        {
          v15 = *(_DWORD *)(v6 + 64);
          if ( !v15 )
            break;
          v16 = *(_BYTE **)(v6 + 60);
          if ( !v16[4] )
          {
            if ( (*(_DWORD *)v16)-- == 1 )
              gameswf::free_internal(v16);
            *(_DWORD *)(v6 + 64) = 0;
            *(_DWORD *)(v6 + 60) = 0;
            break;
          }
          v6 = *(_DWORD *)(v6 + 64);
          v10 = *(char **)(v15 + 68);
          v12 = *v10;
          if ( v12 == -1 )
            v17 = *((_BYTE **)v10 + 3);
          else
            v17 = v10 + 1;
          if ( *v17 )
            goto LABEL_12;
        }
        LOBYTE(v30[1]) = 0;
        if ( v11 )
        {
          v19 = &v28[v11];
          while ( 1 )
          {
            v20 = (const char *)*--v19;
            LC_API_STRCAT_0((char *)&v30[1], v20);
            if ( v19 == v28 )
              break;
            v24 = (char *)v30 + LC_API_STRLEN_0((const char *)&v30[1]);
            v24[4] = 46;
            v24[5] = 0;
          }
        }
        v21 = v29;
        v22 = v29[1];
        v23 = v22 + 1;
        if ( v22 + 1 > v29[2] )
        {
          gameswf::array<RenderFX::SearchIndex::Entry>::reserve((int)v29, v23 + (v23 >> 1));
          v22 = v21[1];
        }
        result = memcpy((void *)(*v21 + 260 * v22), v30, 0x104u);
        v21[1] = v23;
        v4 = v26[1];
      }
    }
  }
  return result;
}


// ===== 7add94 RenderFX::GetSearchIndex(void) =====
char *__fastcall RenderFX::GetSearchIndex(gameswf::character **this)
{
  char *v1; // r4

  v1 = (char *)(this + 5);
  RenderFX::SearchIndex::Init((RenderFX::SearchIndex *)(this + 5), this);
  return v1;
}


// ===== 7addb0 MenuFX::GetStateHandler(gameswf::character *) =====
int __fastcall MenuFX::GetStateHandler(MenuFX *this, int a2, int a3)
{
  int v3; // r10
  int v4; // r11
  int v6; // r9
  int v7; // r7
  int v8; // r6
  int v9; // r4
  int v10; // r5
  unsigned __int8 *v11; // r3
  _BYTE *v12; // r0
  bool v13; // zf

  v4 = *((_DWORD *)this + 70);
  if ( v4 - 1 >= 0 )
    v3 = 0;
  v6 = a2;
  if ( v4 - 1 < 0 )
    return MenuFX::GetCurrentState((int)this, a2, a3);
  v7 = 4 * (v4 - 1);
  v8 = v3;
  while ( !v6 )
  {
LABEL_25:
    ++v3;
    v7 -= 4;
    if ( v3 == v4 )
      return MenuFX::GetCurrentState((int)this, a2, a3);
  }
  v9 = v6;
  v10 = *(_DWORD *)(*((_DWORD *)this + 69) + v7);
  a3 = *(_DWORD *)(v10 + 76);
  if ( a3 && (v11 = *(unsigned __int8 **)(v10 + 72), (a2 = v11[4]) == 0) )
  {
    while ( 1 )
    {
      v13 = *(_DWORD *)v11 == 1;
      a2 = *(_DWORD *)v11 - 1;
      *(_DWORD *)v11 = a2;
      if ( v13 )
        gameswf::free_internal(v11);
      a3 = v8;
      *(_DWORD *)(v10 + 76) = v8;
      *(_DWORD *)(v10 + 72) = v8;
      if ( v8 == v9 )
        break;
LABEL_12:
      if ( !*(_DWORD *)(v9 + 64) )
        goto LABEL_25;
      v12 = *(_BYTE **)(v9 + 60);
      a3 = (unsigned __int8)v12[4];
      if ( !v12[4] )
      {
        a2 = *(_DWORD *)v12 - 1;
        v13 = *(_DWORD *)v12 == 1;
        *(_DWORD *)v12 = a2;
        if ( v13 )
          gameswf::free_internal(v12);
        *(_DWORD *)(v9 + 64) = v8;
        *(_DWORD *)(v9 + 60) = v8;
        goto LABEL_25;
      }
      v9 = *(_DWORD *)(v9 + 64);
      v10 = *(_DWORD *)(*((_DWORD *)this + 69) + v7);
      a3 = *(_DWORD *)(v10 + 76);
      if ( a3 )
      {
        v11 = *(unsigned __int8 **)(v10 + 72);
        a2 = v11[4];
        if ( !v11[4] )
          continue;
      }
      goto LABEL_11;
    }
  }
  else
  {
LABEL_11:
    if ( a3 != v9 )
      goto LABEL_12;
  }
  return *(_DWORD *)(*((_DWORD *)this + 69) + v7);
}


// ===== 7aded8 `non-virtual thunk to'MenuFX::CanHandleEvent(RenderFX::Event &) =====
int __fastcall `non-virtual thunk to'MenuFX::CanHandleEvent(MenuFX *this, RenderFX::Event *a2)
{
  return MenuFX::CanHandleEvent((MenuFX *)((char *)this - 256), a2);
}


// ===== 7adee0 MenuFX::CanHandleEvent(RenderFX::Event &) =====
int __fastcall MenuFX::CanHandleEvent(MenuFX *this, RenderFX::Event *a2, int a3)
{
  int StateHandler; // r0

  if ( *((int *)this + 70) <= 0 )
    return 1;
  StateHandler = MenuFX::GetStateHandler(this, *(_DWORD *)a2, a3);
  return (*(int (__fastcall **)(int, RenderFX::Event *))(*(_DWORD *)StateHandler + 52))(StateHandler, a2);
}


// ===== 7adf18 `non-virtual thunk to'MenuFX::OnEvent(RenderFX::Event &) =====
int __fastcall `non-virtual thunk to'MenuFX::OnEvent(MenuFX *this, RenderFX::Event *a2)
{
  return MenuFX::OnEvent((MenuFX *)((char *)this - 256), a2);
}


// ===== 7adf20 MenuFX::OnEvent(RenderFX::Event &) =====
int *__fastcall MenuFX::OnEvent(int *this, RenderFX::Event *a2, int a3)
{
  int StateHandler; // r0

  if ( *(this + 70) > 0 )
  {
    StateHandler = MenuFX::GetStateHandler((MenuFX *)this, *(_DWORD *)a2, a3);
    return (int *)(*(int (__fastcall **)(int, RenderFX::Event *))(*(_DWORD *)StateHandler + 44))(StateHandler, a2);
  }
  return this;
}


// ===== 7adf50 MenuFX::RegisterState(MenuFX::State *,char const*) =====
int __fastcall MenuFX::RegisterState(MenuFX *this, MenuFX::State *a2, const char *a3)
{
  int v4; // r6
  int v6; // r7
  int v7; // r3
  gameswf::as_object *v8; // r4
  const char *v10; // [sp+4h] [bp-8h]

  *((_DWORD *)a2 + 1) = this;
  v4 = *((_DWORD *)this + 66);
  v6 = v4 + 1;
  if ( v4 != -1 && v6 > *((_DWORD *)this + 67) )
  {
    v10 = a3;
    gameswf::array<MenuFX::State *>::reserve((int)this + 260, v6 + (v6 >> 1));
    a3 = v10;
  }
  *(_DWORD *)(*((_DWORD *)this + 65) + 4 * v4) = 0;
  v7 = *((_DWORD *)this + 65);
  if ( !a3 )
    a3 = (char *)a2 + 8;
  *((_DWORD *)this + 66) = v6;
  *(_DWORD *)(v7 + 4 * v4) = a2;
  v8 = RenderFX::Find((gameswf::root **)this, a3);
  gameswf::weak_ptr<gameswf::character>::operator=((int)a2 + 72, v8);
  *((_BYTE *)v8 + 155) = 0;
  return (*(int (__fastcall **)(MenuFX::State *))(*(_DWORD *)a2 + 8))(a2);
}


// ===== 7adff0 MenuFX::RegisterStates(MenuFX::State **,int) =====
char *__fastcall MenuFX::RegisterStates(MenuFX *this, MenuFX::State **a2, int a3)
{
  int v6; // r10
  int v7; // r9
  int v8; // r5
  MenuFX::State *v9; // r2
  int v10; // r7
  int v11; // r11
  char *result; // r0
  char *v13; // r5
  int v14; // r4
  int v15; // r3
  int v16; // r7
  const char *v17; // r11
  gameswf::as_object *v18; // r0
  gameswf::as_object *v19; // r9
  char *s; // [sp+0h] [bp-9Ch]
  char v21[128]; // [sp+14h] [bp-88h] BYREF

  if ( a3 > 0 )
  {
    v6 = 0;
    s = (char *)this + 260;
    v7 = 0;
    v8 = 0;
    do
    {
      *((_DWORD *)a2[v6] + 1) = this;
      v10 = *((_DWORD *)this + 66);
      v11 = v10 + 1;
      if ( v10 != -1 && v11 > *((_DWORD *)this + 67) )
        gameswf::array<MenuFX::State *>::reserve((int)s, v11 + (v11 >> 1));
      ++v7;
      *(_DWORD *)(*((_DWORD *)this + 65) + 4 * v10) = 0;
      *((_DWORD *)this + 66) = v11;
      v9 = a2[v6++];
      *(_DWORD *)(*((_DWORD *)this + 65) + 4 * v10) = v9;
    }
    while ( v7 != a3 );
    v16 = 0;
    do
    {
      v17 = (char *)a2[v8] + 8;
      v18 = RenderFX::Find((gameswf::root **)this, v17);
      v19 = v18;
      if ( v18 )
      {
        gameswf::weak_ptr<gameswf::character>::operator=((int)a2[v8] + 72, v18);
        *((_BYTE *)v19 + 155) = 0;
        (*(void (__fastcall **)(MenuFX::State *))(*(_DWORD *)a2[v8] + 8))(a2[v8]);
      }
      else
      {
        sprintf(v21, "menu %s not found", v17);
        message_log((gameswf *)v21);
      }
      ++v16;
      ++v8;
    }
    while ( v16 != a3 );
  }
  result = RenderFX::FindCharacters(this, *((gameswf::character **)this + 16), "btn", 0);
  v13 = result;
  if ( *((int *)result + 1) > 0 )
  {
    v14 = 0;
    do
    {
      result = (char *)(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(*(_DWORD *)v13 + 4 * v14) + 8))(
                         *(_DWORD *)(*(_DWORD *)v13 + 4 * v14),
                         2);
      if ( result )
        v15 = *(_DWORD *)(*(_DWORD *)v13 + 4 * v14);
      ++v14;
      if ( result )
        *(_BYTE *)(v15 + 234) = 1;
    }
    while ( v14 < *((_DWORD *)v13 + 1) );
  }
  return result;
}


// ===== 7ae1c8 gameswf::bitmap_character::bitmap_character(gameswf::player *,gameswf::bitmap_info *,gameswf::rect *) =====
gameswf::bitmap_character *__fastcall gameswf::bitmap_character::bitmap_character(
        gameswf::bitmap_character *this,
        gameswf::player *a2,
        gameswf::bitmap_info *a3,
        gameswf::rect *a4)
{
  int v7; // r3
  float v8; // r0
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3

  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 8) = a3;
  *(_DWORD *)this = off_98FBF8;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  v7 = *((_DWORD *)this + 8);
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 11) = 0;
  v8 = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v7 + 36))(v7) * 20.0;
  v9 = *((_DWORD *)this + 8);
  *((float *)this + 10) = v8;
  *((float *)this + 12) = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v9 + 40))(v9) * 20.0;
  if ( a4 )
  {
    v10 = *((_DWORD *)a4 + 1);
    v11 = *((_DWORD *)a4 + 2);
    v12 = *((_DWORD *)a4 + 3);
    *((_DWORD *)this + 9) = *(_DWORD *)a4;
    *((_DWORD *)this + 10) = v10;
    *((_DWORD *)this + 11) = v11;
    *((_DWORD *)this + 12) = v12;
  }
  return this;
}


// ===== 7ae284 MenuFX::SetMenu(char const*,bool) =====
// write access to const memory has been detected, the output may be wrong!
int __fastcall MenuFX::SetMenu(gameswf::ref_counted **this, const char *a2, int a3)
{
  int result; // r0
  int v6; // r4
  int v7; // r6
  _DWORD *v8; // r6
  _DWORD *v9; // r8
  gameswf::character *v10; // r0
  int v11; // r7
  int v12; // r3
  int v13; // r3
  _BYTE *v14; // r0
  gameswf::character *v15; // r1
  _BYTE *v16; // r0
  int v17; // r3
  bool v18; // zf
  gameswf::character *v19; // r1
  int v20; // r3
  gameswf::character *v21; // r6
  int v22; // r3
  int v23; // r2
  int v24; // r6
  int v25; // r3
  int v26; // r6
  int v27; // r3
  _BYTE *v28; // r0
  int v29; // r3
  int v30; // r8
  gameswf::character *ptr; // r0

  result = MenuFX::GetState((MenuFX *)this, a2);
  v6 = result;
  if ( result )
  {
    v7 = (int)*(this + 70);
    if ( v7 <= 0 )
      goto LABEL_13;
    v8 = *((_DWORD **)*(this + 69) + v7 - 1);
    (*(void (__fastcall **)(_DWORD *))(*v8 + 24))(v8);
    if ( !a3 )
      (*(void (__fastcall **)(_DWORD *))(*v8 + 16))(v8);
    if ( ((unsigned int)*(this + 62) & 0x40) == 0 )
    {
      if ( !a3 )
      {
        v9 = v8 + 18;
        goto LABEL_9;
      }
      v9 = v8 + 18;
      ptr = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr(v8 + 18);
      if ( !RenderFX::PlayAnim((RenderFX *)this, ptr, "focus_out", 0) )
      {
LABEL_9:
        v10 = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr(v9);
        if ( RenderFX::PlayAnim((RenderFX *)this, v10, "hide", 0) )
          v8[22] = 2;
        goto LABEL_11;
      }
      v8[22] = 4;
    }
LABEL_11:
    gameswf::weak_ptr<gameswf::character>::operator=((int)(v8 + 20), *(this + 26));
    if ( ((unsigned int)*(this + 62) & 8) == 0 )
      goto LABEL_12;
    v27 = *(_DWORD *)(v6 + 76);
    if ( v27 )
    {
      v28 = *(_BYTE **)(v6 + 72);
      if ( !v28[4] )
      {
        v18 = (*(_DWORD *)v28)-- == 1;
        if ( v18 )
          gameswf::free_internal(v28);
        v27 = 0;
        *(_DWORD *)(v6 + 72) = 0;
        *(_DWORD *)(v6 + 76) = 0;
      }
    }
    if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v27 + 8))(v27, 2) )
    {
      if ( v8[19] && (v29 = v8[18], v30 = *(unsigned __int8 *)(v29 + 4), !*(_BYTE *)(v29 + 4)) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)v8 + 18, (_DWORD *)*(unsigned __int8 *)(v29 + 4));
        v8[19] = v30;
      }
      else
      {
        v30 = v8[19];
      }
      *(_BYTE *)(v30 + 234) = 0;
      v7 = (int)*(this + 70);
    }
    else
    {
LABEL_12:
      v7 = (int)*(this + 70);
    }
LABEL_13:
    if ( !a3 )
    {
      if ( --v7 && v7 > (int)*(this + 71) )
      {
        gameswf::array<MenuFX::State *>::reserve((int)(this + 69), v7 + (v7 >> 1));
        *(this + 70) = (gameswf::ref_counted *)v7;
      }
      else
      {
        *(this + 70) = (gameswf::ref_counted *)v7;
      }
    }
    v11 = v7 + 1;
    if ( v7 != -1 && v11 > (int)*(this + 71) )
      gameswf::array<MenuFX::State *>::reserve((int)(this + 69), v11 + (v11 >> 1));
    *((_DWORD *)*(this + 69) + v7) = 0;
    v12 = (int)*(this + 69);
    *(this + 70) = (gameswf::ref_counted *)v11;
    *(_DWORD *)(v12 + 4 * v7) = v6;
    v13 = *(_DWORD *)(v6 + 76);
    if ( v13 && (v14 = *(_BYTE **)(v6 + 72), !v14[4]) )
    {
      v18 = (*(_DWORD *)v14)-- == 1;
      if ( v18 )
        gameswf::free_internal(v14);
      *(_DWORD *)(v6 + 72) = 0;
      *(_DWORD *)(v6 + 76) = 0;
      HIBYTE(dword_98) = 1;
      if ( ((unsigned int)*(this + 62) & 8) == 0 )
      {
LABEL_18:
        v15 = *(gameswf::character **)(v6 + 76);
        if ( v15 && (v16 = *(_BYTE **)(v6 + 72), !v16[4]) )
        {
          v18 = (*(_DWORD *)v16)-- == 1;
          if ( v18 )
            gameswf::free_internal(v16);
          *(_DWORD *)(v6 + 72) = 0;
          *(_DWORD *)(v6 + 76) = 0;
          RenderFX::SetContext((int)this, nullptr);
          v17 = (int)*(this + 62);
          if ( (v17 & 0x40) != 0 )
          {
LABEL_21:
            if ( (v17 & 1) == 0 )
            {
LABEL_22:
              (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 12))(v6);
              result = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 20))(v6);
              *(_DWORD *)(v6 + 88) = 1;
              return result;
            }
LABEL_34:
            (*((void (__fastcall **)(gameswf::ref_counted **))*this + 9))(this);
            goto LABEL_22;
          }
        }
        else
        {
          RenderFX::SetContext((int)this, v15);
          v17 = (int)*(this + 62);
          if ( (v17 & 0x40) != 0 )
            goto LABEL_21;
        }
        v19 = *(gameswf::character **)(v6 + 76);
        if ( v19 )
        {
          v20 = *(_DWORD *)(v6 + 72);
          v21 = (gameswf::character *)*(unsigned __int8 *)(v20 + 4);
          if ( !*(_BYTE *)(v20 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v6 + 72), (_DWORD *)*(unsigned __int8 *)(v20 + 4));
            *(_DWORD *)(v6 + 76) = v21;
            v19 = v21;
          }
        }
        RenderFX::PlayAnim((RenderFX *)this, v19, "show", 0);
        if ( ((unsigned int)*(this + 62) & 1) == 0 )
          goto LABEL_22;
        goto LABEL_34;
      }
    }
    else
    {
      *(_BYTE *)(v13 + 155) = 1;
      if ( ((unsigned int)*(this + 62) & 8) == 0 )
        goto LABEL_18;
    }
    v22 = *(_DWORD *)(v6 + 76);
    if ( v22 )
    {
      v23 = *(_DWORD *)(v6 + 72);
      v24 = *(unsigned __int8 *)(v23 + 4);
      if ( !*(_BYTE *)(v23 + 4) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v6 + 72), (_DWORD *)*(unsigned __int8 *)(v23 + 4));
        *(_DWORD *)(v6 + 76) = v24;
        v22 = v24;
      }
    }
    if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v22 + 8))(v22, 2) )
    {
      if ( *(_DWORD *)(v6 + 76)
        && (v25 = *(_DWORD *)(v6 + 72), v26 = *(unsigned __int8 *)(v25 + 4), !*(_BYTE *)(v25 + 4)) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v6 + 72), (_DWORD *)*(unsigned __int8 *)(v25 + 4));
        *(_DWORD *)(v6 + 76) = v26;
      }
      else
      {
        v26 = *(_DWORD *)(v6 + 76);
      }
      *(_BYTE *)(v26 + 234) = 1;
    }
    goto LABEL_18;
  }
  return result;
}


// ===== 7ae69c MenuFX::SwitchMenu(char const*) =====
int __fastcall MenuFX::SwitchMenu(gameswf::ref_counted **this, const char *a2)
{
  return MenuFX::SetMenu(this, a2, 0);
}


// ===== 7ae6a4 MenuFX::PushMenu(char const*) =====
int __fastcall MenuFX::PushMenu(gameswf::ref_counted **this, const char *a2)
{
  return MenuFX::SetMenu(this, a2, 1);
}


// ===== 7ae6ac RenderFX::SetTexture(char const*,glitch::video::ITexture *,bool) =====
gameswf::as_object *__fastcall RenderFX::SetTexture(
        gameswf::root **this,
        const char *a2,
        glitch::video::ITexture *a3,
        int a4)
{
  gameswf::as_object *result; // r0
  glitch::video::ITexture *v7; // r1
  gameswf::as_object *v8; // r4
  gameswf::bitmap_info *bitmap_info_texture; // r7
  gameswf::player *v10; // r6
  _BYTE *v11; // r0
  gameswf::bitmap_character *v12; // r5
  gameswf::player *v13; // r8
  int v14; // r3
  gameswf::player *v15; // r5
  float v17[6]; // [sp+0h] [bp-28h] BYREF
  float v18[4]; // [sp+18h] [bp-10h] BYREF

  result = RenderFX::Find(this, a2);
  v8 = result;
  if ( result )
  {
    bitmap_info_texture = (gameswf::bitmap_info *)gameswf::render::create_bitmap_info_texture(a3, v7);
    if ( a4 )
    {
      (*(void (__fastcall **)(gameswf::as_object *, float *))(*(_DWORD *)v8 + 300))(v8, v18);
      v17[5] = 0.0;
      memset(&v17[1], 0, 12);
      v17[4] = 1.0;
      v17[0] = 1.0;
      gameswf::matrix::set_inverse((gameswf::matrix *)v17, *((const gameswf::matrix **)v8 + 19));
      gameswf::matrix::transform(v17, v18);
      v13 = *((gameswf::player **)v8 + 12);
      if ( v13 )
      {
        v14 = *((_DWORD *)v8 + 11);
        v15 = (gameswf::player *)*(unsigned __int8 *)(v14 + 4);
        if ( !*(_BYTE *)(v14 + 4) )
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)v8 + 11, (_DWORD *)*(unsigned __int8 *)(v14 + 4));
          v13 = v15;
          *((_DWORD *)v8 + 12) = v15;
        }
      }
      v12 = (gameswf::bitmap_character *)operator new(0x34u, 0);
      gameswf::bitmap_character::bitmap_character(v12, v13, bitmap_info_texture, (gameswf::rect *)v18);
    }
    else
    {
      v10 = *((gameswf::player **)v8 + 12);
      if ( v10 )
      {
        v11 = *((_BYTE **)v8 + 11);
        if ( !v11[4] )
        {
          if ( (*(_DWORD *)v11)-- == 1 )
            gameswf::free_internal(v11);
          v10 = nullptr;
          *((_DWORD *)v8 + 11) = 0;
          *((_DWORD *)v8 + 12) = 0;
        }
      }
      v12 = (gameswf::bitmap_character *)operator new(0x34u, 0);
      gameswf::bitmap_character::bitmap_character(v12, v10, bitmap_info_texture, nullptr);
    }
    return (gameswf::as_object *)(*(int (__fastcall **)(gameswf::as_object *, gameswf::bitmap_character *))(*(_DWORD *)v8 + 172))(
                                   v8,
                                   v12);
  }
  return result;
}


// ===== 7ae808 MenuFX::PopMenu(void) =====
// write access to const memory has been detected, the output may be wrong!
void __fastcall MenuFX::PopMenu(MenuFX *this)
{
  int v2; // r0
  int v3; // r0
  int v4; // r5
  int v5; // r5
  int v6; // r3
  _BYTE *v7; // r0
  int v8; // r5
  gameswf::character *v9; // r1
  _BYTE *v10; // r0
  int v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r5
  int v15; // r3
  _BYTE *v16; // r0
  int v17; // r5
  int v18; // r2
  _BYTE *v19; // r0
  int v20; // r5
  gameswf::character *v21; // r1
  _BYTE *v22; // r0
  bool v23; // zf
  int v24; // r5
  int v25; // r3
  int v26; // r2
  int v27; // r6
  int v28; // r6
  int v29; // r3
  int v30; // r5
  int v31; // r5
  gameswf::character *v32; // r1
  int v33; // r3
  gameswf::character *v34; // r6
  int v35; // r5
  int v36; // r3
  int v37; // r6
  int v38; // r6
  gameswf::character *v39; // r1
  int v40; // r3
  gameswf::character *v41; // r5
  gameswf::character *ptr; // r0

  v2 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
  (*(void (__fastcall **)(int))(*(_DWORD *)v2 + 24))(v2);
  v3 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
  (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 16))(v3);
  if ( (*((_DWORD *)this + 62) & 0x40) == 0 )
  {
    v20 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
    v21 = *(gameswf::character **)(v20 + 76);
    if ( v21 )
    {
      v22 = *(_BYTE **)(v20 + 72);
      if ( !v22[4] )
      {
        v23 = (*(_DWORD *)v22)-- == 1;
        if ( v23 )
          gameswf::free_internal(v22);
        v21 = nullptr;
        *(_DWORD *)(v20 + 76) = 0;
        *(_DWORD *)(v20 + 72) = 0;
      }
    }
    RenderFX::PlayAnim(this, v21, "hide", 0);
  }
  *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1)) + 88) = 2;
  if ( (*((_DWORD *)this + 62) & 8) != 0 )
  {
    v14 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
    v15 = *(_DWORD *)(v14 + 76);
    if ( v15 )
    {
      v16 = *(_BYTE **)(v14 + 72);
      if ( !v16[4] )
      {
        v23 = (*(_DWORD *)v16)-- == 1;
        if ( v23 )
          gameswf::free_internal(v16);
        v15 = 0;
        *(_DWORD *)(v14 + 76) = 0;
        *(_DWORD *)(v14 + 72) = 0;
      }
    }
    if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 8))(v15, 2) )
    {
      v17 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
      v18 = *(_DWORD *)(v17 + 76);
      if ( v18 )
      {
        v19 = *(_BYTE **)(v17 + 72);
        if ( !v19[4] )
        {
          v23 = (*(_DWORD *)v19)-- == 1;
          if ( v23 )
            gameswf::free_internal(v19);
          v18 = 0;
          *(_DWORD *)(v17 + 76) = 0;
          *(_DWORD *)(v17 + 72) = 0;
        }
      }
      *(_BYTE *)(v18 + 234) = 0;
    }
  }
  RenderFX::SetContext((int)this, *(gameswf::character **)(*((_DWORD *)this + 15) + 16));
  v4 = *((_DWORD *)this + 70) - 1;
  if ( *((_DWORD *)this + 70) == 1 )
  {
    *((_DWORD *)this + 70) = 0;
    return;
  }
  if ( v4 > *((_DWORD *)this + 71) )
    gameswf::array<MenuFX::State *>::reserve((int)this + 276, v4 + (v4 >> 1));
  *((_DWORD *)this + 70) = v4;
  if ( v4 > 0 )
  {
    v5 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (v4 - 1));
    v6 = *(_DWORD *)(v5 + 76);
    if ( v6 && (v7 = *(_BYTE **)(v5 + 72), !v7[4]) )
    {
      v23 = (*(_DWORD *)v7)-- == 1;
      if ( v23 )
        gameswf::free_internal(v7);
      *(_DWORD *)(v5 + 76) = 0;
      *(_DWORD *)(v5 + 72) = 0;
      HIBYTE(dword_98) = 1;
      if ( (*((_DWORD *)this + 62) & 8) == 0 )
      {
LABEL_11:
        v8 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
        v9 = *(gameswf::character **)(v8 + 76);
        if ( v9 && (v10 = *(_BYTE **)(v8 + 72), !v10[4]) )
        {
          v23 = (*(_DWORD *)v10)-- == 1;
          if ( v23 )
            gameswf::free_internal(v10);
          *(_DWORD *)(v8 + 76) = 0;
          *(_DWORD *)(v8 + 72) = 0;
          RenderFX::SetContext((int)this, nullptr);
          v11 = *((_DWORD *)this + 62);
          if ( (v11 & 0x40) != 0 )
          {
LABEL_14:
            if ( (v11 & 1) == 0 )
              goto LABEL_15;
            goto LABEL_50;
          }
        }
        else
        {
          RenderFX::SetContext((int)this, v9);
          v11 = *((_DWORD *)this + 62);
          if ( (v11 & 0x40) != 0 )
            goto LABEL_14;
        }
        v31 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
        v32 = *(gameswf::character **)(v31 + 76);
        if ( v32 )
        {
          v33 = *(_DWORD *)(v31 + 72);
          v34 = (gameswf::character *)*(unsigned __int8 *)(v33 + 4);
          if ( !*(_BYTE *)(v33 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v31 + 72), (_DWORD *)*(unsigned __int8 *)(v33 + 4));
            *(_DWORD *)(v31 + 76) = v34;
            v32 = v34;
          }
        }
        if ( !RenderFX::PlayAnim(this, v32, "focus_in", 0) )
        {
          ptr = (gameswf::character *)gameswf::weak_ptr<gameswf::character>::get_ptr((_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1))
                                                                                              + 72));
          RenderFX::PlayAnim(this, ptr, "show", 0);
        }
        if ( (*((_DWORD *)this + 62) & 1) == 0 )
          goto LABEL_15;
LABEL_50:
        v12 = *((_DWORD *)this + 70);
        v13 = *((_DWORD *)this + 69);
        v35 = *(_DWORD *)(v13 + 4 * (v12 - 1));
        if ( !*(_DWORD *)(v35 + 84) )
          goto LABEL_16;
        v36 = *(_DWORD *)(v35 + 80);
        v37 = *(unsigned __int8 *)(v36 + 4);
        if ( !*(_BYTE *)(v36 + 4) )
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)(v35 + 80), (_DWORD *)*(unsigned __int8 *)(v36 + 4));
          *(_DWORD *)(v35 + 84) = v37;
          v12 = *((_DWORD *)this + 70);
          v13 = *((_DWORD *)this + 69);
          goto LABEL_16;
        }
        RenderFX::ResetFocus(this, 0);
        v38 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
        v39 = *(gameswf::character **)(v38 + 84);
        if ( v39 )
        {
          v40 = *(_DWORD *)(v38 + 80);
          v41 = (gameswf::character *)*(unsigned __int8 *)(v40 + 4);
          if ( !*(_BYTE *)(v40 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v38 + 80), (_DWORD *)*(unsigned __int8 *)(v40 + 4));
            *(_DWORD *)(v38 + 84) = v41;
            v39 = v41;
          }
        }
        RenderFX::SetFocus(this, v39, 0);
LABEL_15:
        v12 = *((_DWORD *)this + 70);
        v13 = *((_DWORD *)this + 69);
LABEL_16:
        (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v13 + 4 * (v12 - 1)) + 20))(*(_DWORD *)(v13 + 4 * (v12 - 1)));
        *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1)) + 88) = 3;
        return;
      }
    }
    else
    {
      *(_BYTE *)(v6 + 155) = 1;
      if ( (*((_DWORD *)this + 62) & 8) == 0 )
        goto LABEL_11;
    }
    v24 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
    v25 = *(_DWORD *)(v24 + 76);
    if ( v25 )
    {
      v26 = *(_DWORD *)(v24 + 72);
      v27 = *(unsigned __int8 *)(v26 + 4);
      if ( !*(_BYTE *)(v26 + 4) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v24 + 72), (_DWORD *)*(unsigned __int8 *)(v26 + 4));
        *(_DWORD *)(v24 + 76) = v27;
        v25 = v27;
      }
    }
    if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 8))(v25, 2) )
    {
      v28 = *(_DWORD *)(*((_DWORD *)this + 69) + 4 * (*((_DWORD *)this + 70) - 1));
      if ( *(_DWORD *)(v28 + 76)
        && (v29 = *(_DWORD *)(v28 + 72), v30 = *(unsigned __int8 *)(v29 + 4), !*(_BYTE *)(v29 + 4)) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v28 + 72), (_DWORD *)*(unsigned __int8 *)(v29 + 4));
        *(_DWORD *)(v28 + 76) = v30;
      }
      else
      {
        v30 = *(_DWORD *)(v28 + 76);
      }
      *(_BYTE *)(v30 + 234) = 1;
    }
    goto LABEL_11;
  }
}


// ===== 7aed38 noBegin(int) =====
void __fastcall noBegin(int a1)
{
  ;
}


// ===== 7aed3c noEdgeFlag(char) =====
void __fastcall noEdgeFlag(char a1)
{
  ;
}


// ===== 7aed40 noVertex(void *) =====
void __fastcall noVertex(void *a1)
{
  ;
}


// ===== 7aed44 noEnd(void) =====
void noEnd()
{
  ;
}


// ===== 7aed48 noError(int) =====
void __fastcall noError(int a1)
{
  ;
}


// ===== 7aed4c noCombine(double *,void **,float *,void **) =====
void __fastcall noCombine(double *a1, void **a2, float *a3, void **a4)
{
  ;
}


// ===== 7aed50 noMesh(GLUmesh *) =====
void noMesh()
{
  ;
}


// ===== 7aed54 __gl_noBeginData(int,void *) =====
void __fastcall __gl_noBeginData(int a1, void *a2)
{
  ;
}


// ===== 7aed58 __gl_noEdgeFlagData(char,void *) =====
void __fastcall __gl_noEdgeFlagData(char a1, void *a2)
{
  ;
}


// ===== 7aed5c __gl_noVertexData(void *,void *) =====
void __fastcall __gl_noVertexData(void *a1, void *a2)
{
  ;
}


// ===== 7aed60 __gl_noEndData(void *) =====
void __fastcall __gl_noEndData(void *a1)
{
  ;
}


// ===== 7aed64 __gl_noErrorData(int,void *) =====
void __fastcall __gl_noErrorData(int a1, void *a2)
{
  ;
}


// ===== 7aed68 __gl_noCombineData(double *,void **,float *,void **,void *) =====
void __fastcall __gl_noCombineData(double *a1, void **a2, float *a3, void **a4, void *a5)
{
  ;
}


// ===== 7aed6c gluTessProperty(GLUtesselator *,int,double) =====
int __fastcall gluTessProperty(GLUtesselator *a1, int a2, double a3)
{
  void (__fastcall *v4)(int, void *); // r3
  int result; // r0
  int v6; // r8
  void (__fastcall *v7)(int, void *); // r3

  if ( a2 != 100141 )
  {
    if ( a2 == 100142 )
    {
      if ( a3 >= 0.0 )
      {
        result = a3 > 1.0;
        if ( a3 <= 1.0 )
        {
          *((double *)a1 + 11) = a3;
          return result;
        }
      }
LABEL_7:
      v7 = *((void (__fastcall **)(int, void *))a1 + 844);
      if ( v7 == __gl_noErrorData )
        return (*((int (__fastcall **)(int))a1 + 3))(100901);
      else
        return ((int (__fastcall *)(int, _DWORD))v7)(100901, *((_DWORD *)a1 + 910));
    }
    if ( a2 != 100140 )
    {
      v4 = *((void (__fastcall **)(int, void *))a1 + 844);
      if ( v4 == __gl_noErrorData )
        return (*((int (__fastcall **)(int))a1 + 3))(100900);
      else
        return ((int (__fastcall *)(int, _DWORD))v4)(100900, *((_DWORD *)a1 + 910));
    }
    v6 = (int)a3;
    result = (double)(int)a3 == a3;
    if ( (double)(int)a3 != a3 )
      goto LABEL_7;
    if ( (unsigned int)(v6 - 100130) <= 4 )
    {
      *((_DWORD *)a1 + 24) = v6;
      return result;
    }
  }
  *((_BYTE *)a1 + 121) = 0;
  result = a3 == 0.0;
  if ( a3 != 0.0 )
    *((_BYTE *)a1 + 121) = 1;
  return result;
}


// ===== 7aeeec gluGetTessProperty(GLUtesselator *,int,double *) =====
int __fastcall gluGetTessProperty(double a1, double *a2)
{
  void (__fastcall *v2)(int, void *); // r2

  switch ( HIDWORD(a1) )
  {
    case 0x1872D:
      a1 = (double)*(char *)(LODWORD(a1) + 121);
      *a2 = a1;
      break;
    case 0x1872E:
      *a2 = *(double *)(LODWORD(a1) + 88);
      break;
    case 0x1872C:
      a1 = (double)*(int *)(LODWORD(a1) + 96);
      *a2 = a1;
      break;
    default:
      *a2 = 0.0;
      v2 = *(void (__fastcall **)(int, void *))(LODWORD(a1) + 3376);
      if ( v2 == __gl_noErrorData )
        LODWORD(a1) = (*(int (__fastcall **)(int))(LODWORD(a1) + 12))(100900);
      else
        LODWORD(a1) = ((int (__fastcall *)(int, _DWORD))v2)(100900, *(_DWORD *)(LODWORD(a1) + 3640));
      break;
  }
  return LODWORD(a1);
}


// ===== 7aefac gluTessNormal(GLUtesselator *,double,double,double) =====
double *__fastcall gluTessNormal(double *result, double a2, double a3, double a4)
{
  result[2] = a2;
  result[4] = a4;
  result[3] = a3;
  return result;
}


// ===== 7aefc4 gluTessCallback(GLUtesselator *,int,void (*)(void)) =====
int __fastcall gluTessCallback(int result, int a2, void (__fastcall *a3)(char a1))
{
  void (__fastcall *v3)(int, void *); // r2
  void (__fastcall *v4)(char); // r3
  void (__fastcall *v5)(char, void *); // r3

  switch ( a2 )
  {
    case 100100:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))noBegin;
      *(_DWORD *)(result + 128) = a3;
      break;
    case 100101:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))noVertex;
      *(_DWORD *)(result + 136) = a3;
      break;
    case 100102:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))noEnd;
      *(_DWORD *)(result + 140) = a3;
      break;
    case 100103:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))noError;
      *(_DWORD *)(result + 12) = a3;
      break;
    case 100104:
      if ( a3 )
        v4 = a3;
      else
        v4 = noEdgeFlag;
      *(_BYTE *)(result + 120) = a3 != nullptr;
      *(_DWORD *)(result + 132) = v4;
      break;
    case 100105:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))noCombine;
      *(_DWORD *)(result + 116) = a3;
      break;
    case 100106:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))__gl_noBeginData;
      *(_DWORD *)(result + 3360) = a3;
      break;
    case 100107:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))__gl_noVertexData;
      *(_DWORD *)(result + 3368) = a3;
      break;
    case 100108:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))__gl_noEndData;
      *(_DWORD *)(result + 3372) = a3;
      break;
    case 100109:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))__gl_noErrorData;
      *(_DWORD *)(result + 3376) = a3;
      break;
    case 100110:
      if ( a3 )
        v5 = (void (__fastcall *)(char, void *))a3;
      else
        v5 = __gl_noEdgeFlagData;
      *(_BYTE *)(result + 120) = a3 != nullptr;
      *(_DWORD *)(result + 3364) = v5;
      break;
    case 100111:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))__gl_noCombineData;
      *(_DWORD *)(result + 3380) = a3;
      break;
    case 100112:
      if ( !a3 )
        a3 = (void (__fastcall *)(char))noMesh;
      *(_DWORD *)(result + 144) = a3;
      break;
    default:
      v3 = *(void (__fastcall **)(int, void *))(result + 3376);
      if ( v3 == __gl_noErrorData )
        result = (*(int (__fastcall **)(int))(result + 12))(100900);
      else
        result = ((int (__fastcall *)(int, _DWORD))v3)(100900, *(_DWORD *)(result + 3640));
      break;
  }
  return result;
}


// ===== 7af21c GotoState(GLUtesselator *,TessState) =====
GLUtesselator *__fastcall GotoState(GLUtesselator *result, int a2)
{
  int v2; // r3
  GLUtesselator *v3; // r4
  void (__fastcall *v5)(int, void *); // r3
  void (__fastcall *v6)(int, void *); // r3
  void (__fastcall *v7)(int, void *); // r3
  void (__fastcall *v8)(int, void *); // r3

  v2 = *(_DWORD *)result;
  v3 = result;
LABEL_2:
  while ( a2 != v2 )
  {
    while ( v2 < a2 )
    {
      if ( v2 )
      {
        if ( v2 == 1 )
        {
          v7 = *((void (__fastcall **)(int, void *))v3 + 844);
          if ( v7 == __gl_noErrorData )
            (*((void (__fastcall **)(int))v3 + 3))(100152);
          else
            v7(100152, *((void **)v3 + 910));
          result = (GLUtesselator *)gluTessBeginContour(v3);
          v2 = *(_DWORD *)v3;
        }
        goto LABEL_2;
      }
      v5 = *((void (__fastcall **)(int, void *))v3 + 844);
      if ( v5 == __gl_noErrorData )
        (*((void (__fastcall **)(int))v3 + 3))(100151);
      else
        v5(100151, *((void **)v3 + 910));
      result = (GLUtesselator *)gluTessBeginPolygon(v3, nullptr);
      v2 = *(_DWORD *)v3;
      if ( a2 == *(_DWORD *)v3 )
        return result;
    }
    if ( v2 == 1 )
    {
      v8 = *((void (__fastcall **)(int, void *))v3 + 844);
      if ( v8 == __gl_noErrorData )
        (*((void (__fastcall **)(int))v3 + 3))(100153);
      else
        v8(100153, *((void **)v3 + 910));
      result = *((GLUtesselator **)v3 + 2);
      if ( result )
        result = (GLUtesselator *)__gl_meshDeleteMesh(result);
      *(_DWORD *)v3 = 0;
      *((_DWORD *)v3 + 1) = 0;
      *((_DWORD *)v3 + 2) = 0;
      v2 = 0;
    }
    else if ( v2 == 2 )
    {
      v6 = *((void (__fastcall **)(int, void *))v3 + 844);
      if ( v6 == __gl_noErrorData )
        (*((void (__fastcall **)(int))v3 + 3))(100154);
      else
        v6(100154, *((void **)v3 + 910));
      result = (GLUtesselator *)gluTessEndContour(v3);
      v2 = *(_DWORD *)v3;
    }
  }
  return result;
}


// ===== 7af3a4 gluTessEndContour(GLUtesselator *) =====
GLUtesselator *__fastcall gluTessEndContour(GLUtesselator *result)
{
  GLUtesselator *v1; // r4

  v1 = result;
  if ( *(_DWORD *)result != 2 )
    result = GotoState(result, 2);
  *(_DWORD *)v1 = 1;
  return result;
}


// ===== 7af3cc gluTessBeginContour(GLUtesselator *) =====
GLUtesselator *__fastcall gluTessBeginContour(GLUtesselator *result)
{
  GLUtesselator *v1; // r4
  int v2; // r3

  v1 = result;
  if ( *(_DWORD *)result != 1 )
    result = GotoState(result, 1);
  v2 = *((_DWORD *)v1 + 38);
  *(_DWORD *)v1 = 2;
  *((_DWORD *)v1 + 1) = 0;
  if ( v2 > 0 )
    *((_BYTE *)v1 + 148) = 1;
  return result;
}


// ===== 7af40c gluNextContour(GLUtesselator *,int) =====
GLUtesselator *__fastcall gluNextContour(GLUtesselator *a1, int a2)
{
  gluTessEndContour(a1);
  return gluTessBeginContour(a1);
}


// ===== 7af424 gluTessBeginPolygon(GLUtesselator *,void *) =====
GLUtesselator *__fastcall gluTessBeginPolygon(GLUtesselator *result, void *a2)
{
  GLUtesselator *v2; // r4

  v2 = result;
  if ( *(_DWORD *)result )
    result = GotoState(result, 0);
  *((_DWORD *)v2 + 910) = a2;
  *(_DWORD *)v2 = 1;
  *((_DWORD *)v2 + 2) = 0;
  *((_DWORD *)v2 + 38) = 0;
  *((_BYTE *)v2 + 148) = 0;
  return result;
}


// ===== 7af464 gluBeginPolygon(GLUtesselator *) =====
GLUtesselator *__fastcall gluBeginPolygon(GLUtesselator *a1)
{
  gluTessBeginPolygon(a1, nullptr);
  return gluTessBeginContour(a1);
}


// ===== 7af480 AddVertex(GLUtesselator *,double *,void *) =====
int __fastcall AddVertex(GLUtesselator *a1, double *a2, void *a3)
{
  int v3; // r4
  _DWORD *v7; // r4
  int v9; // r2
  int Edge; // r0

  v3 = *((_DWORD *)a1 + 1);
  if ( v3 )
  {
    if ( __gl_meshSplitEdge(*((_DWORD *)a1 + 1)) )
    {
      v7 = *(_DWORD **)(v3 + 12);
LABEL_4:
      *(_DWORD *)(v7[4] + 12) = a3;
      *(double *)(v7[4] + 16) = *a2;
      *(double *)(v7[4] + 24) = a2[1];
      *(double *)(v7[4] + 32) = a2[2];
      v9 = v7[1];
      v7[7] = 1;
      *(_DWORD *)(v9 + 28) = -1;
      *((_DWORD *)a1 + 1) = v7;
      return 1;
    }
  }
  else
  {
    Edge = __gl_meshMakeEdge(*((_DWORD *)a1 + 2));
    v7 = (_DWORD *)Edge;
    if ( Edge && __gl_meshSplice(Edge, *(_DWORD *)(Edge + 4)) )
      goto LABEL_4;
  }
  return 0;
}


// ===== 7af524 EmptyCache(GLUtesselator *) =====
int __fastcall EmptyCache(GLUtesselator *a1)
{
  int v2; // r0
  char *v3; // r4
  char *v4; // r6
  int v5; // r0

  v2 = __gl_meshNewMesh();
  *((_DWORD *)a1 + 2) = v2;
  if ( !v2 )
    return 0;
  v3 = (char *)a1 + 160;
  v4 = (char *)a1 + 32 * *((_DWORD *)a1 + 38) + 160;
  if ( (char *)a1 + 160 < v4 )
  {
    do
    {
      v5 = AddVertex(a1, (double *)v3, *((void **)v3 + 6));
      v3 += 32;
      if ( !v5 )
        return 0;
    }
    while ( v4 > v3 );
  }
  *((_BYTE *)a1 + 148) = 0;
  *((_DWORD *)a1 + 38) = 0;
  return 1;
}


// ===== 7af598 gluTessEndPolygon(GLUtesselator *) =====
int __fastcall gluTessEndPolygon(void (__fastcall **a1)(int a1, void *a2))
{
  void (__fastcall *v1)(int, void *); // r3
  int result; // r0
  void (__fastcall *v3)(int, void *); // r3
  void (__fastcall *v4)(int, void *); // r4
  int v5; // r0
  struct __jmp_buf_tag *env; // [sp+Ch] [bp-4h]

  env = (struct __jmp_buf_tag *)(a1 + 846);
  if ( !setjmp((struct __jmp_buf_tag *)(a1 + 846)) )
  {
    if ( *a1 != (void (__fastcall *)(int, void *))((char *)&dword_0 + 1) )
      GotoState((GLUtesselator *)a1, 1);
    v3 = a1[2];
    *a1 = nullptr;
    if ( v3 )
      goto LABEL_37;
    if ( !*((_BYTE *)a1 + 120) && (char *)a1[36] == (char *)noMesh )
    {
      result = __gl_renderCache((GLUtesselator *)a1);
      if ( (_BYTE)result )
      {
        a1[910] = nullptr;
        return result;
      }
    }
    if ( EmptyCache((GLUtesselator *)a1) )
    {
LABEL_37:
      __gl_projectPolygon((GLUtesselator *)a1);
      if ( __gl_computeInterior((GLUtesselator *)a1) )
      {
        v4 = a1[2];
        if ( *((_BYTE *)a1 + 100) )
        {
LABEL_17:
          result = __gl_meshDeleteMesh(v4);
          a1[2] = nullptr;
          a1[910] = nullptr;
          return result;
        }
        if ( *((_BYTE *)a1 + 121) )
          v5 = __gl_meshSetWindingNumber(a1[2], 1, 1);
        else
          v5 = __gl_meshTessellateInterior(a1[2]);
        if ( v5 )
        {
          if ( (char *)a1[32] != (char *)noBegin
            || (char *)a1[35] != (char *)noEnd
            || (char *)a1[34] != (char *)noVertex
            || (char *)a1[33] != (char *)noEdgeFlag
            || a1[840] != __gl_noBeginData
            || (char *)a1[843] != (char *)__gl_noEndData
            || (char *)a1[842] != (char *)__gl_noVertexData
            || (char *)a1[841] != (char *)__gl_noEdgeFlagData )
          {
            if ( *((_BYTE *)a1 + 121) )
              __gl_renderBoundary(a1, v4);
            else
              __gl_renderMesh(a1, v4);
          }
          if ( (char *)a1[36] != (char *)noMesh )
          {
            __gl_meshDiscardExterior(v4);
            result = ((int (__fastcall *)(void (__fastcall *)(int, void *)))a1[36])(v4);
            a1[910] = nullptr;
            a1[2] = nullptr;
            return result;
          }
          goto LABEL_17;
        }
      }
    }
    longjmp(env, 1);
  }
  v1 = a1[844];
  if ( v1 == __gl_noErrorData )
    return ((int (__fastcall *)(int))a1[3])(100902);
  else
    return ((int (__fastcall *)(int, _DWORD))v1)(100902, a1[910]);
}


// ===== 7af880 gluEndPolygon(GLUtesselator *) =====
int __fastcall gluEndPolygon(GLUtesselator *a1)
{
  gluTessEndContour(a1);
  return gluTessEndPolygon((void (__fastcall **)(int, void *))a1);
}


// ===== 7af898 gluTessVertex(GLUtesselator *,double *,void *) =====
int __fastcall gluTessVertex(GLUtesselator *a1, double *a2, void *a3)
{
  int v5; // r4
  int v6; // r8
  double v7; // r6
  int v8; // r1
  void (__fastcall *v9)(int, void *); // r3
  int result; // r0
  void (__fastcall *v11)(int, void *); // r3
  int v12; // r3
  char *v13; // r2
  double v15[2]; // [sp+8h] [bp-1Ch] BYREF
  __int64 v16; // [sp+18h] [bp-Ch]

  if ( *(_DWORD *)a1 != 2 )
    GotoState(a1, 2);
  if ( *((_BYTE *)a1 + 148) )
  {
    if ( !EmptyCache(a1) )
    {
      v11 = *((void (__fastcall **)(int, void *))a1 + 844);
      if ( v11 != __gl_noErrorData )
        return ((int (__fastcall *)(int, _DWORD))v11)(100902, *((_DWORD *)a1 + 910));
      return (*((int (__fastcall **)(int))a1 + 3))(100902);
    }
    *((_DWORD *)a1 + 1) = 0;
  }
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = a2[v5];
    v8 = HIDWORD(v7);
    if ( v7 >= -1.0e150 )
    {
      if ( v7 > 1.0e150 )
      {
        v7 = 1.0e150;
        v6 = 1;
      }
    }
    else
    {
      v7 = -1.0e150;
      v6 = 1;
    }
    v15[v5++] = v7;
  }
  while ( v5 != 3 );
  if ( v6 )
  {
    v9 = *((void (__fastcall **)(int, void *))a1 + 844);
    if ( v9 == __gl_noErrorData )
      (*((void (__fastcall **)(int, int))a1 + 3))(100155, v8);
    else
      v9(100155, *((void **)a1 + 910));
  }
  if ( !*((_DWORD *)a1 + 2) )
  {
    v12 = *((_DWORD *)a1 + 38);
    if ( v12 <= 99 )
    {
      v13 = (char *)a1 + 32 * v12;
      *((_DWORD *)v13 + 46) = a3;
      *((double *)v13 + 20) = v15[0];
      *((double *)v13 + 21) = v15[1];
      result = v16;
      *((_QWORD *)v13 + 22) = v16;
      ++*((_DWORD *)a1 + 38);
      return result;
    }
    if ( !EmptyCache(a1) )
      goto LABEL_13;
  }
  result = AddVertex(a1, v15, a3);
  if ( !result )
  {
LABEL_13:
    v11 = *((void (__fastcall **)(int, void *))a1 + 844);
    if ( v11 != __gl_noErrorData )
      return ((int (__fastcall *)(int, _DWORD))v11)(100902, *((_DWORD *)a1 + 910));
    return (*((int (__fastcall **)(int))a1 + 3))(100902);
  }
  return result;
}


// ===== 7afa94 gluDeleteTess(GLUtesselator *) =====
void __fastcall gluDeleteTess(GLUtesselator *p)
{
  if ( *(_DWORD *)p )
    GotoState(p, 0);
  free(p);
}


// ===== 7afabc gluNewTess(void) =====
_QWORD *gluNewTess()
{
  _QWORD *result; // r0

  result = LC_API_MALLOC_0(0xE40u);
  if ( result )
  {
    result[11] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    *((_DWORD *)result + 24) = 100130;
    *((_DWORD *)result + 32) = noBegin;
    *((_DWORD *)result + 33) = noEdgeFlag;
    *((_DWORD *)result + 34) = noVertex;
    *((_DWORD *)result + 35) = noEnd;
    *((_DWORD *)result + 3) = noError;
    *((_DWORD *)result + 29) = noCombine;
    *((_DWORD *)result + 36) = noMesh;
    *((_DWORD *)result + 840) = __gl_noBeginData;
    *((_DWORD *)result + 841) = __gl_noEdgeFlagData;
    *((_DWORD *)result + 842) = __gl_noVertexData;
    *((_DWORD *)result + 843) = __gl_noEndData;
    *((_DWORD *)result + 844) = __gl_noErrorData;
    *((_DWORD *)result + 910) = 0;
    *((_DWORD *)result + 845) = __gl_noCombineData;
    *(_DWORD *)result = 0;
    *((_BYTE *)result + 120) = 0;
    *((_BYTE *)result + 121) = 0;
  }
  return result;
}


// ===== 7afc10 __gl_meshSetWindingNumber(GLUmesh *,int,char) =====
int __fastcall __gl_meshSetWindingNumber(int a1, int a2, int a3)
{
  _DWORD *v3; // r0
  _DWORD *v4; // r4
  int v7; // r7
  _DWORD *v8; // r6
  int v9; // r3
  int result; // r0

  v4 = (_DWORD *)(a1 + 88);
  v3 = *(_DWORD **)(a1 + 88);
  v7 = -a2;
  if ( v3 != v4 )
  {
    while ( 1 )
    {
      v8 = (_DWORD *)*v3;
      if ( *(unsigned __int8 *)(v3[5] + 21) != *(unsigned __int8 *)(*(_DWORD *)(v3[1] + 20) + 21) )
        break;
      if ( !a3 )
      {
        v3[7] = 0;
LABEL_7:
        v3 = v8;
        goto LABEL_8;
      }
      result = __gl_meshDelete(v3);
      if ( !result )
        return result;
      v3 = v8;
LABEL_8:
      if ( v3 == v4 )
        return 1;
    }
    if ( *(_BYTE *)(v3[5] + 21) )
      v9 = a2;
    else
      v9 = v7;
    v3[7] = v9;
    goto LABEL_7;
  }
  return 1;
}


// ===== 7afc94 __gl_meshDiscardExterior(GLUmesh *) =====
_BYTE *__fastcall __gl_meshDiscardExterior(int a1)
{
  _BYTE *result; // r0
  _BYTE *v2; // r5
  _BYTE *v3; // r4

  v2 = (_BYTE *)(a1 + 64);
  result = *(_BYTE **)(a1 + 64);
  while ( result != v2 )
  {
    v3 = *(_BYTE **)result;
    if ( result[21] )
    {
      result = *(_BYTE **)result;
    }
    else
    {
      __gl_meshZapFace(result);
      result = v3;
    }
  }
  return result;
}


// ===== 7afcd4 __gl_meshTessellateMonoRegion(GLUface *) =====
int __fastcall __gl_meshTessellateMonoRegion(int a1)
{
  _DWORD *i; // r4
  int v2; // r5
  int v3; // r10
  double v4; // r6
  double v5; // r8
  _DWORD *v6; // r8
  _DWORD *v7; // r5
  _DWORD *v8; // r6
  _DWORD *v9; // r7
  int v10; // r9
  int v11; // r10
  _DWORD *v12; // r8
  int v13; // r0
  int v14; // r5
  int v15; // r6
  int v16; // r7
  _DWORD *v17; // r8
  int v18; // r0
  int v19; // r3
  int v20; // r7
  int v21; // r4
  _DWORD *v22; // r0
  _DWORD *v23; // r1
  int v24; // r0
  double v26; // [sp+0h] [bp-14h]
  double v27; // [sp+8h] [bp-Ch]

  for ( i = *(_DWORD **)(a1 + 8); ; i = *(_DWORD **)(i[2] + 4) )
  {
    v2 = i[4];
    v3 = *(_DWORD *)(i[1] + 16);
    v4 = *(double *)(v2 + 40);
    v5 = *(double *)(v3 + 40);
    if ( v5 >= v4 && (v5 != v4 || *(double *)(v3 + 48) > *(double *)(v2 + 48)) )
      break;
  }
  while ( v4 < v5 || v4 == v5 && *(double *)(v2 + 48) <= *(double *)(v3 + 48) )
  {
    i = (_DWORD *)i[3];
    v2 = i[4];
    v3 = *(_DWORD *)(i[1] + 16);
    v4 = *(double *)(v2 + 40);
    v5 = *(double *)(v3 + 40);
  }
  v6 = (_DWORD *)i[3];
  v7 = *(_DWORD **)(i[2] + 4);
  v8 = (_DWORD *)v7[3];
  v9 = v8;
  while ( v7 != v6 )
  {
    v10 = v7[4];
    v11 = *(_DWORD *)(i[1] + 16);
    v26 = *(double *)(v10 + 40);
    v27 = *(double *)(v11 + 40);
    if ( v27 < v26 || v27 == v26 && *(double *)(v11 + 48) <= *(double *)(v10 + 48) )
    {
      if ( i != v9 )
      {
        v17 = i;
        do
        {
          v19 = v9[1];
          v20 = v9[4];
          v21 = *(_DWORD *)(v19 + 16);
          if ( *(double *)(v21 + 40) >= *(double *)(v20 + 40)
            && (*(double *)(v21 + 40) != *(double *)(v20 + 40) || *(double *)(v21 + 48) > *(double *)(v20 + 48)) )
          {
            if ( __gl_edgeSign(v7[4], *(_DWORD *)(v7[1] + 16), v21) > 0.0 )
              break;
            v8 = (_DWORD *)v7[3];
          }
          v18 = __gl_meshConnect(v8, v7);
          if ( !v18 )
            return 0;
          v7 = *(_DWORD **)(v18 + 4);
          v8 = (_DWORD *)v7[3];
          v9 = v8;
        }
        while ( v8 != v17 );
        i = v17;
        v6 = (_DWORD *)v17[3];
      }
      v7 = *(_DWORD **)(v7[2] + 4);
      v8 = (_DWORD *)v7[3];
      v9 = v8;
    }
    else
    {
      if ( i != v9 )
      {
        v12 = v7;
        while ( 1 )
        {
          v14 = *(_DWORD *)(i[2] + 4);
          v15 = *(_DWORD *)(v14 + 16);
          v16 = *(_DWORD *)(*(_DWORD *)(v14 + 4) + 16);
          if ( *(double *)(v15 + 40) >= *(double *)(v16 + 40)
            && (*(double *)(v15 + 40) != *(double *)(v16 + 40) || *(double *)(v15 + 48) > *(double *)(v16 + 48)) )
          {
            if ( __gl_edgeSign(*(_DWORD *)(i[1] + 16), i[4], *(_DWORD *)(v14 + 16)) < 0.0 )
            {
              v7 = v12;
              v6 = (_DWORD *)i[3];
              i = (_DWORD *)v7[3];
              v8 = i;
              goto LABEL_24;
            }
            v14 = *(_DWORD *)(i[2] + 4);
          }
          v13 = __gl_meshConnect(i, v14);
          if ( !v13 )
            return 0;
          i = (_DWORD *)v12[3];
          v8 = i;
          if ( i == *(_DWORD **)(v13 + 4) )
            break;
          i = *(_DWORD **)(v13 + 4);
        }
        v7 = v12;
        v6 = (_DWORD *)i[3];
      }
LABEL_24:
      v9 = i;
      i = v6;
      v6 = (_DWORD *)v6[3];
    }
  }
  if ( i == (_DWORD *)v9[3] )
    return 1;
  v22 = v9;
  v23 = v7;
  while ( 1 )
  {
    v24 = __gl_meshConnect(v22, v23);
    if ( !v24 )
      break;
    v23 = *(_DWORD **)(v24 + 4);
    v22 = (_DWORD *)v23[3];
    if ( i == (_DWORD *)v22[3] )
      return 1;
  }
  return 0;
}


// ===== 7b0044 __gl_meshTessellateInterior(GLUmesh *) =====
int __fastcall __gl_meshTessellateInterior(int a1)
{
  int v1; // r0
  int v2; // r5
  int v3; // r4
  int result; // r0

  v2 = a1 + 64;
  v1 = *(_DWORD *)(a1 + 64);
  while ( v1 != v2 )
  {
    v3 = *(_DWORD *)v1;
    if ( *(_BYTE *)(v1 + 21) )
    {
      result = __gl_meshTessellateMonoRegion(v1);
      if ( !result )
        return result;
      v1 = v3;
    }
    else
    {
      v1 = *(_DWORD *)v1;
    }
  }
  return 1;
}


// ===== 7b0090 gameswf::edges_intersect_sub(int *,int *,gameswf::vec2<float> const&,gameswf::vec2<float> const&,gameswf::vec2<float> const&,gameswf::vec2<float> const&) =====
bool __fastcall gameswf::edges_intersect_sub(_DWORD *a1, _DWORD *a2, float *a3, float *a4, float *a5, float *a6)
{
  float v6; // r9
  float v7; // r8
  float v8; // r10
  _BOOL4 result; // r0
  double v10; // r0
  double v11; // r8
  double v12; // r8
  int v13; // r8
  _BOOL4 v14; // r0
  double v15; // r10
  double v16; // r0
  double v17; // r4
  int v18; // r4
  _BOOL4 v19; // r0
  float v20; // [sp+0h] [bp-34h]
  double v21; // [sp+0h] [bp-34h]
  double v22; // [sp+0h] [bp-34h]
  double v23; // [sp+8h] [bp-2Ch]
  double v24; // [sp+8h] [bp-2Ch]
  double v25; // [sp+10h] [bp-24h]
  double v26; // [sp+10h] [bp-24h]
  float v27; // [sp+18h] [bp-1Ch]
  float v28; // [sp+20h] [bp-14h]
  float v29; // [sp+24h] [bp-10h]

  v6 = *a3;
  if ( *a3 == *a4 )
  {
    v7 = a3[1];
    v8 = a4[1];
    if ( v7 == v8 )
    {
      v20 = *a5;
      v28 = *a6;
      if ( *a5 == *a6 )
      {
        v27 = a5[1];
        v29 = a6[1];
        if ( v27 == v29 && v6 == v20 )
        {
          result = v7 == v27;
          if ( v7 == v27 )
          {
            *a1 = 0;
            *a2 = 0;
            return result;
          }
        }
      }
      else
      {
        v27 = a5[1];
        v29 = a6[1];
      }
    }
    else
    {
      v20 = *a5;
      v27 = a5[1];
      v29 = a6[1];
      v28 = *a6;
    }
  }
  else
  {
    v20 = *a5;
    v27 = a5[1];
    v7 = a3[1];
    v8 = a4[1];
    v29 = a6[1];
    v28 = *a6;
  }
  v23 = v6;
  v25 = *a4 - v6;
  v10 = v7;
  v11 = v7;
  v21 = v25 * (v27 - v11) - (v8 - v10) * (v20 - v23);
  v12 = v25 * (v29 - v11) - (v8 - v11) * (v28 - v23);
  if ( v12 >= 0.0 )
  {
    v14 = v12 > 0.0;
    v13 = v14;
    if ( v14 )
      v13 = 1;
  }
  else
  {
    v13 = -1;
  }
  if ( v21 >= 0.0 )
  {
    if ( v21 == 0.0 )
    {
LABEL_30:
      *a2 = 0;
      goto LABEL_18;
    }
  }
  else
  {
    v13 = -v13;
  }
  if ( v13 == 1 )
  {
    *a2 = 1;
    goto LABEL_18;
  }
  if ( v13 != -1 )
    goto LABEL_30;
  *a2 = -1;
LABEL_18:
  v15 = *a5;
  v24 = *a6 - v15;
  v16 = a5[1];
  v26 = a6[1] - v16;
  v22 = v24 * (a3[1] - v16) - v26 * (*a3 - v15);
  v17 = v24 * (a4[1] - v16) - v26 * (*a4 - v15);
  if ( v17 >= 0.0 )
  {
    v19 = v17 > 0.0;
    v18 = v19;
    if ( v19 )
      v18 = 1;
  }
  else
  {
    v18 = -1;
  }
  result = v22 < 0.0;
  if ( v22 >= 0.0 )
  {
    result = v22 == 0.0;
    if ( v22 == 0.0 )
    {
LABEL_28:
      *a1 = 0;
      return result;
    }
  }
  else
  {
    v18 = -v18;
  }
  if ( v18 == 1 )
  {
    *a1 = 1;
    return result;
  }
  if ( v18 != -1 )
    goto LABEL_28;
  *a1 = -1;
  return result;
}


// ===== 7b054c gameswf::grid_index_point<float,bool>::get_containing_cell_clamped(gameswf::index_point<float> const&) =====
int *__fastcall gameswf::grid_index_point<float,bool>::get_containing_cell_clamped(int *a1, int a2, float *a3)
{
  int v4; // r0
  int v5; // r5
  int v6; // r3
  int *result; // r0
  int v8; // r3
  int v9; // r2

  v4 = (int)(float)((float)((float)(*a3 - *(float *)a2) * (float)*(int *)(a2 + 16))
                  / (float)(*(float *)(a2 + 8) - *(float *)a2));
  *a1 = v4;
  v5 = v4;
  if ( v4 < 0 )
    v5 = 0;
  a1[1] = (int)(float)((float)((float)(a3[1] - *(float *)(a2 + 4)) * (float)*(int *)(a2 + 20))
                     / (float)(*(float *)(a2 + 12) - *(float *)(a2 + 4)));
  if ( v4 < 0 )
    *a1 = v5;
  v6 = *(_DWORD *)(a2 + 16);
  result = a1;
  if ( v5 >= v6 )
    *a1 = v6 - 1;
  v8 = a1[1];
  if ( v8 < 0 )
  {
    v8 = 0;
    a1[1] = 0;
  }
  v9 = *(_DWORD *)(a2 + 20);
  if ( v8 >= v9 )
    a1[1] = v9 - 1;
  return result;
}


// ===== 7b063c gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vertex_in_cone(gameswf::vec2<float> const&,gameswf::vec2<float> const&,gameswf::vec2<float> const&,gameswf::vec2<float> const&) =====
bool __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vertex_in_cone(
        float *a1,
        float *a2,
        float *a3,
        float *a4)
{
  double v4; // r10
  double v5; // r8
  double v6; // r6
  int v7; // r5
  double v8; // r6
  _BOOL4 v9; // r4
  double v10; // r6
  _BOOL4 result; // r0
  double v12; // [sp+0h] [bp-44h]
  double v13; // [sp+8h] [bp-3Ch]
  double v14; // [sp+10h] [bp-34h]
  double v15; // [sp+18h] [bp-2Ch]
  double v16; // [sp+28h] [bp-1Ch]
  double v17; // [sp+30h] [bp-14h]

  v12 = *a3;
  v4 = *a2;
  v17 = a4[1];
  v5 = a2[1];
  v16 = a3[1];
  v15 = *a4;
  v6 = (v12 - v4) * (v17 - v5) - (v16 - v5) * (v15 - v4);
  if ( v6 <= 0.0 )
  {
    if ( v6 >= 0.0 )
      v7 = 0;
    else
      v7 = -1;
  }
  else
  {
    v7 = 1;
  }
  v14 = a1[1];
  v13 = *a1;
  v8 = (v12 - v4) * (v14 - v5) - (v16 - v5) * (v13 - v4);
  v9 = v8 > 0.0 || v8 >= 0.0;
  v10 = (v15 - v12) * (v14 - v16) - (v17 - v16) * (v13 - v12);
  result = v10 > 0.0 || v10 >= 0.0;
  if ( v7 == 1 )
  {
    if ( !v9 )
      return 0;
  }
  else if ( v9 )
  {
    return 1;
  }
  return result;
}


// ===== 7b0910 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate const*,int,int,int) =====
float *__fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(
        float *a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  int v5; // r4
  float v7; // r0
  float v8; // r10
  float v9; // r0
  float v10; // r0

  v5 = *(_DWORD *)(a2 + 4);
  v7 = (float)((float)(*(float *)(v5 + 20 * a3 + 4) + *(float *)(v5 + 20 * a4 + 4)) + *(float *)(v5 + 20 * a5 + 4))
     / 3.0;
  v8 = v7;
  v9 = (float)(*(float *)(v5 + 20 * a3) + *(float *)(v5 + 20 * a4)) + *(float *)(v5 + 20 * a5);
  a1[1] = v8;
  v10 = v9 / 3.0;
  *a1 = v10;
  return a1;
}


// ===== 7b09a8 gameswf::grid_index_point<float,bool>::begin(gameswf::index_box<float> const&) =====
int *__fastcall gameswf::grid_index_point<float,bool>::begin(int *a1, int a2, int a3)
{
  float *v4; // r12
  float v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // t0
  int v12; // r2
  int v13; // r1
  int v14; // r7
  int v15; // r0
  int v16; // r3
  int v17; // r2
  int v19; // r2
  int v20; // r12
  int v21; // r6
  int v22; // r3
  int v23; // r3
  int v24; // r2
  int v25; // [sp+0h] [bp-Ch] BYREF
  int v26; // [sp+4h] [bp-8h]

  *a1 = a2;
  v4 = (float *)(a1 + 1);
  a1[3] = 0;
  a1[2] = 0;
  a1[1] = 0;
  a1[4] = 0;
  a1[11] = 0;
  a1[6] = 0;
  a1[5] = 0;
  a1[8] = 0;
  a1[7] = 0;
  a1[9] = 0;
  a1[10] = 0;
  v7 = *(float *)a3;
  v8 = *(_DWORD *)(a3 + 4);
  v11 = a3 + 8;
  v9 = *(_DWORD *)(a3 + 8);
  v10 = *(_DWORD *)(v11 + 4);
  *v4 = v7;
  *((_DWORD *)v4 + 1) = v8;
  *((_DWORD *)v4 + 2) = v9;
  *((_DWORD *)v4 + 3) = v10;
  gameswf::grid_index_point<float,bool>::get_containing_cell_clamped(&v25, a2, (float *)a3);
  v12 = v25;
  a1[6] = v26;
  a1[5] = v12;
  gameswf::grid_index_point<float,bool>::get_containing_cell_clamped(&v25, a2, (float *)(a3 + 8));
  v13 = v25;
  v14 = v26;
  v15 = a1[5];
  v16 = a1[6];
  a1[7] = v25;
  a1[9] = v15;
  a1[8] = v14;
  a1[10] = v16;
  v17 = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 4 * (v15 + *(_DWORD *)(a2 + 16) * v16));
  a1[11] = v17;
  if ( !v17 )
  {
    v19 = v15 + 1;
    a1[9] = v15 + 1;
    if ( v16 <= v14 )
    {
      v20 = *a1;
      v21 = v16;
      while ( 1 )
      {
        if ( v13 >= v19 )
        {
          v22 = *(_DWORD *)(*(_DWORD *)(v20 + 24) + 4 * (v19 + v21 * *(_DWORD *)(v20 + 16)));
          a1[11] = v22;
          if ( v22 )
            return a1;
          v23 = a1[9];
          while ( 1 )
          {
            a1[9] = ++v23;
            if ( v13 < v23 )
              break;
            v24 = *(_DWORD *)(*(_DWORD *)(v20 + 24) + 4 * (v23 + *(_DWORD *)(v20 + 16) * v21));
            a1[11] = v24;
            if ( v24 )
              return a1;
          }
        }
        ++v21;
        a1[9] = v15;
        a1[10] = v21;
        if ( v14 < v21 )
          break;
        v19 = v15;
      }
    }
  }
  return a1;
}


// ===== 7b0afc gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::any_reflex_vert_in_triangle(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate const*,int,int,int) =====
int __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::any_reflex_vert_in_triangle(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  int v6; // r2
  float v7; // r5
  float v8; // r7
  float v9; // r10
  float v10; // r2
  float v11; // r3
  int v12; // r4
  int v13; // r6
  float v14; // r9
  int v15; // r0
  int v16; // r2
  int v17; // r1
  int v18; // r3
  int *v19; // r2
  int v20; // t1
  float v21; // r11
  double v23; // [sp+0h] [bp-CCh]
  double v24; // [sp+8h] [bp-C4h]
  double v25; // [sp+10h] [bp-BCh]
  double v26; // [sp+18h] [bp-B4h]
  double v27; // [sp+20h] [bp-ACh]
  double v28; // [sp+28h] [bp-A4h]
  double v29; // [sp+30h] [bp-9Ch]
  double v30; // [sp+38h] [bp-94h]
  float *v31; // [sp+44h] [bp-88h]
  float *v32; // [sp+48h] [bp-84h]
  float v33; // [sp+4Ch] [bp-80h]
  float v34; // [sp+5Ch] [bp-70h]
  float *v35; // [sp+60h] [bp-6Ch]
  float v36; // [sp+68h] [bp-64h]
  int v37; // [sp+74h] [bp-58h]
  int v38[7]; // [sp+88h] [bp-44h] BYREF
  int v39; // [sp+A4h] [bp-28h]
  int v40; // [sp+A8h] [bp-24h]
  int v41; // [sp+ACh] [bp-20h]
  int v42; // [sp+B0h] [bp-1Ch]
  int v43; // [sp+B4h] [bp-18h]
  float v44; // [sp+B8h] [bp-14h] BYREF
  float v45; // [sp+BCh] [bp-10h]
  float v46; // [sp+C0h] [bp-Ch]
  float v47; // [sp+C4h] [bp-8h]

  v4 = *(_DWORD *)(a1 + 4);
  v5 = 20 * a2;
  v6 = 20 * a3;
  v7 = *(float *)(v4 + v5);
  v8 = *(float *)(v4 + v6);
  v32 = (float *)(v4 + v5);
  v9 = *(float *)(v4 + v5 + 4);
  v35 = (float *)(v4 + 20 * a4);
  v31 = (float *)(v4 + v6);
  v33 = *v35;
  v10 = *(float *)(v4 + v6 + 4);
  v34 = v10;
  v11 = v35[1];
  v45 = v9;
  v44 = v7;
  v36 = v11;
  v47 = v9;
  v46 = v7;
  if ( v7 > v8 )
    v44 = v8;
  if ( v9 > v10 )
    v45 = v10;
  if ( v8 > v46 )
    v46 = v8;
  if ( v10 > v47 )
    v47 = v10;
  if ( v33 < v44 )
    v44 = v33;
  if ( v11 < v45 )
    v45 = v11;
  if ( v33 > v46 )
    v46 = v33;
  if ( v11 > v47 )
    v47 = v11;
  gameswf::grid_index_point<float,bool>::begin(v38, *(_DWORD *)(a1 + 60), (int)&v44);
  v12 = v43;
  v37 = v42;
  v13 = v41;
  if ( v43 )
  {
LABEL_18:
    while ( 2 )
    {
      v14 = *(float *)v12;
      if ( (v7 != *(float *)v12 || v9 != *(float *)(v12 + 4))
        && (v8 != v14 || v34 != *(float *)(v12 + 4))
        && (v33 != v14 || v36 != *(float *)(v12 + 4))
        && v14 >= v44
        && v14 <= v46 )
      {
        v21 = *(float *)(v12 + 4);
        if ( v21 >= v45 && v21 <= v47 )
        {
          v28 = *v31;
          v24 = *v32;
          v30 = v21;
          v26 = v32[1];
          v25 = v31[1];
          v29 = v14;
          if ( (v28 - v24) * (v21 - v26) - (v25 - v26) * (v14 - v24) >= 0.0 )
          {
            v27 = *v35;
            v23 = v35[1];
            if ( (v27 - v28) * (v30 - v25) - (v23 - v25) * (v29 - v28) >= 0.0
              && (v24 - v27) * (v30 - v23) - (v26 - v23) * (v29 - v27) >= 0.0 )
            {
              return 1;
            }
          }
        }
      }
      v12 = *(_DWORD *)(v12 + 12);
      if ( v12 )
        continue;
      break;
    }
    if ( v37 <= v40 )
    {
      ++v13;
      v15 = v37;
      while ( 1 )
      {
        if ( v13 <= v39 )
        {
          v16 = *(_DWORD *)(v38[0] + 24);
          v17 = *(_DWORD *)(v38[0] + 16) * v15;
          v12 = *(_DWORD *)(v16 + 4 * (v17 + v13));
          if ( v12 )
          {
LABEL_43:
            v37 = v15;
            goto LABEL_18;
          }
          v18 = v13 + 1;
          v19 = (int *)(v16 + 4 * (v13 + 1 + v17));
          while ( 1 )
          {
            v13 = v18;
            if ( v18 > v39 )
              break;
            v20 = *v19++;
            v12 = v20;
            ++v18;
            if ( v20 )
              goto LABEL_43;
          }
        }
        if ( ++v15 > v40 )
          return 0;
        v13 = v38[5];
      }
    }
  }
  return 0;
}


// ===== 7b1000 std::priv::__linear_insert<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>) =====
_DWORD *__fastcall std::priv::__linear_insert<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
        _DWORD *result,
        _DWORD *a2,
        int a3,
        int a4,
        int a5)
{
  int v5; // r4
  int v6; // t1
  int v7; // r6
  int v8; // r5
  _DWORD *v9; // r4

  if ( result[2] <= a5 )
  {
    result = a2 - 3;
    if ( a5 < *(a2 - 1) )
    {
      while ( 1 )
      {
        *a2 = *result;
        v9 = a2 + 1;
        a2[1] = result[1];
        a2 = result;
        v9[1] = result[2];
        if ( *(result - 1) <= a5 )
          break;
        result -= 3;
      }
      *result = a3;
      result[1] = a4;
      result[2] = a5;
    }
    else
    {
      *a2 = a3;
      a2[1] = a4;
      a2[2] = a5;
    }
  }
  else
  {
    v5 = -1431655765 * (a2 - result);
    if ( v5 > 0 )
    {
      do
      {
        v6 = *(a2 - 3);
        a2 -= 3;
        --v5;
        v7 = a2[1];
        v8 = a2[2];
        a2[3] = v6;
        a2[4] = v7;
        a2[5] = v8;
      }
      while ( v5 );
    }
    *result = a3;
    result[1] = a4;
    result[2] = a5;
  }
  return result;
}


// ===== 7b10d0 std::priv::__final_insertion_sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>) =====
int *__fastcall std::priv::__final_insertion_sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
        int *result,
        int *a2)
{
  int *v2; // r5
  _DWORD *v4; // r10
  int *v5; // r7
  int *v6; // r4
  int v7; // r2
  int v8; // r3
  int v9; // r12
  int *v10; // r1
  int *j; // r10
  int v12; // r4
  int v13; // r5
  int v14; // r7
  int *v15; // r3
  _DWORD *v16; // r2
  int *i; // r4
  int v18; // r2
  int v19; // r3
  int v20; // r12
  int *v21; // r1

  v2 = result;
  if ( (char *)a2 - (char *)result <= 203 )
  {
    if ( a2 != result )
    {
      for ( i = result + 3;
            a2 != i;
            result = std::priv::__linear_insert<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
                       v2,
                       v21,
                       v18,
                       v19,
                       v20) )
      {
        v18 = *i;
        v19 = i[1];
        v20 = i[2];
        v21 = i;
        i += 3;
      }
    }
  }
  else
  {
    v4 = result + 3;
    v5 = result + 48;
    v6 = result + 3;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6;
      v6 += 3;
      result = std::priv::__linear_insert<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
                 v2,
                 v10,
                 v7,
                 v8,
                 v9);
    }
    while ( v6 != v5 );
    for ( j = v4 + 45; a2 != j; v15[1] = v14 )
    {
      v12 = j[2];
      v13 = *j;
      v14 = j[1];
      v15 = j - 3;
      if ( v12 < *(j - 1) )
      {
        result = j;
        while ( 1 )
        {
          *result = *v15;
          v16 = result + 1;
          result[1] = v15[1];
          result = v15;
          v16[1] = v15[2];
          if ( v12 >= *(v15 - 1) )
            break;
          v15 -= 3;
        }
      }
      else
      {
        v15 = j;
      }
      j += 3;
      v15[2] = v12;
      *v15 = v13;
    }
  }
  return result;
}


// ===== 7b11e4 gameswf::grid_index_box<float,bool>::get_containing_cell_clamped(gameswf::index_point<float> const&) =====
int *__fastcall gameswf::grid_index_box<float,bool>::get_containing_cell_clamped(int *a1, int a2, float *a3)
{
  int v4; // r0
  int v5; // r5
  int v6; // r3
  int *result; // r0
  int v8; // r3
  int v9; // r2

  v4 = (int)(float)((float)((float)(*a3 - *(float *)a2) * (float)*(int *)(a2 + 16))
                  / (float)(*(float *)(a2 + 8) - *(float *)a2));
  *a1 = v4;
  v5 = v4;
  if ( v4 < 0 )
    v5 = 0;
  a1[1] = (int)(float)((float)((float)(a3[1] - *(float *)(a2 + 4)) * (float)*(int *)(a2 + 20))
                     / (float)(*(float *)(a2 + 12) - *(float *)(a2 + 4)));
  if ( v4 < 0 )
    *a1 = v5;
  v6 = *(_DWORD *)(a2 + 16);
  result = a1;
  if ( v5 >= v6 )
    *a1 = v6 - 1;
  v8 = a1[1];
  if ( v8 < 0 )
  {
    v8 = 0;
    a1[1] = 0;
  }
  v9 = *(_DWORD *)(a2 + 20);
  if ( v8 >= v9 )
    a1[1] = v9 - 1;
  return result;
}


// ===== 7b12d4 gameswf::grid_index_box<float,bool>::get_containing_cells_clamped(gameswf::index_box<float> const&) =====
_DWORD *__fastcall gameswf::grid_index_box<float,bool>::get_containing_cells_clamped(_DWORD *a1, int a2, float *a3)
{
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v10[2]; // [sp+0h] [bp-10h] BYREF
  int v11[2]; // [sp+8h] [bp-8h] BYREF

  gameswf::grid_index_box<float,bool>::get_containing_cell_clamped(v11, a2, a3);
  gameswf::grid_index_box<float,bool>::get_containing_cell_clamped(v10, a2, a3 + 2);
  v6 = v11[1];
  v7 = v10[0];
  v8 = v10[1];
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return a1;
}


// ===== 7b131c gameswf::grid_index_box<float,bool>::iterator::advance(void) =====
_DWORD *__fastcall gameswf::grid_index_box<float,bool>::iterator::advance(_DWORD *result)
{
  _DWORD *v1; // r6
  int v2; // r7
  int v3; // r12
  int v4; // r8
  int v5; // r3
  _DWORD *v6; // r4
  int i; // r2
  int v8; // r1
  int v9; // r11
  int v10; // r12
  int v11; // r10
  int v12; // r3
  int v13; // r5
  int v14; // r3
  _DWORD *v15; // r12
  int j; // r2
  int v17; // r1
  int v18; // r12

  v1 = (_DWORD *)*result;
  v2 = result[10];
  v3 = result[9];
  v4 = *(_DWORD *)(*result + 24);
  v5 = result[11] + 1;
  v6 = (_DWORD *)(*(_DWORD *)(*result + 28) + 16 * (v3 + v2 * *(_DWORD *)(*result + 16)));
  for ( i = 4 * v5; ; i += 4 )
  {
    result[11] = v5;
    if ( v5 >= v6[1] )
      break;
    ++v5;
    v8 = *(_DWORD *)(*v6 + i);
    result[12] = v8;
    if ( v4 != *(_DWORD *)(v8 + 20) )
    {
      *(_DWORD *)(v8 + 20) = v4;
      return result;
    }
  }
  v9 = result[8];
  v10 = v3 + 1;
  result[12] = 0;
  result[11] = -1;
  result[9] = v10;
  if ( v9 >= v2 )
  {
    v11 = result[7];
    do
    {
      if ( v11 >= v10 )
      {
        v12 = result[11];
        do
        {
          v13 = v1[6];
          v14 = v12 + 1;
          v15 = (_DWORD *)(v1[7] + 16 * (v10 + v1[4] * v2));
          for ( j = 4 * v14; ; j += 4 )
          {
            result[11] = v14;
            if ( v14 >= v15[1] )
              break;
            ++v14;
            v17 = *(_DWORD *)(*v15 + j);
            result[12] = v17;
            if ( v13 != *(_DWORD *)(v17 + 20) )
            {
              *(_DWORD *)(v17 + 20) = v13;
              return result;
            }
          }
          v18 = result[9];
          result[12] = 0;
          result[11] = -1;
          v10 = v18 + 1;
          result[9] = v10;
          v12 = -1;
        }
        while ( v11 >= v10 );
      }
      v10 = result[5];
      ++v2;
      result[9] = v10;
      result[10] = v2;
    }
    while ( v9 >= v2 );
  }
  return result;
}


// ===== 7b144c gameswf::grid_index_box<float,bool>::begin(gameswf::index_box<float> const&) =====
_DWORD *__fastcall gameswf::grid_index_box<float,bool>::begin(_DWORD *a1, _DWORD *a2, int a3)
{
  int v4; // r3
  int v7; // r7
  _DWORD *v8; // r12
  int v9; // r0
  int i; // r2
  int v11; // r1
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r2
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v20; // [sp+0h] [bp-Ch] BYREF
  int v21; // [sp+4h] [bp-8h]

  v4 = a2[6] + 1;
  a2[6] = v4;
  if ( !v4 )
  {
    v7 = a2[4] * a2[5];
    if ( v7 > 0 )
    {
      do
      {
        v8 = (_DWORD *)(a2[7] + 16 * v4);
        v9 = v8[1];
        if ( v9 > 0 )
        {
          for ( i = 0; i != v9; ++i )
          {
            v11 = *(_DWORD *)(*v8 + 4 * i);
            *(_DWORD *)(v11 + 20) = 0;
          }
        }
        ++v4;
      }
      while ( v4 != v7 );
    }
    a2[6] = 1;
  }
  *a1 = a2;
  a1[3] = 0;
  a1[2] = 0;
  a1[1] = 0;
  a1[4] = 0;
  a1[11] = -1;
  a1[12] = 0;
  a1[6] = 0;
  a1[5] = 0;
  a1[8] = 0;
  a1[7] = 0;
  a1[9] = 0;
  a1[10] = 0;
  v12 = *(_DWORD *)(a3 + 4);
  v13 = *(_DWORD *)(a3 + 8);
  v14 = *(_DWORD *)(a3 + 12);
  a1[1] = *(_DWORD *)a3;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v14;
  gameswf::grid_index_box<float,bool>::get_containing_cell_clamped(&v20, (int)a2, (float *)a3);
  v15 = v20;
  a1[6] = v21;
  a1[5] = v15;
  gameswf::grid_index_box<float,bool>::get_containing_cell_clamped(&v20, (int)a2, (float *)(a3 + 8));
  v16 = v21;
  v17 = a1[5];
  v18 = a1[6];
  a1[7] = v20;
  a1[8] = v16;
  a1[9] = v17;
  a1[10] = v18;
  gameswf::grid_index_box<float,bool>::iterator::advance(a1);
  return a1;
}


// ===== 7b157c gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::any_edge_intersects(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate const*,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::edge const&,gameswf::grid_index_box<float,bool> *) =====
int __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::any_edge_intersects(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v3; // r3
  float *v4; // r8
  float v5; // r0
  float v6; // r4
  int v7; // r10
  float v8; // r5
  float *v9; // r10
  float v10; // r6
  int v11; // lr
  int v12; // r6
  int v13; // r7
  _DWORD v15[12]; // [sp+14h] [bp-60h] BYREF
  int *v16; // [sp+44h] [bp-30h]
  float v17; // [sp+48h] [bp-2Ch] BYREF
  float v18; // [sp+4Ch] [bp-28h]
  float v19; // [sp+50h] [bp-24h]
  float v20; // [sp+54h] [bp-20h]
  int v21; // [sp+58h] [bp-1Ch] BYREF
  int v22; // [sp+5Ch] [bp-18h]
  int v23; // [sp+60h] [bp-14h] BYREF
  int v24; // [sp+64h] [bp-10h]
  int v25; // [sp+68h] [bp-Ch] BYREF
  int v26; // [sp+6Ch] [bp-8h] BYREF

  v3 = *(_DWORD *)(a1 + 4);
  v4 = (float *)(v3 + 20 * *a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = 20 * a2[1];
  v18 = v6;
  v20 = v6;
  v17 = v5;
  v19 = v5;
  v8 = *(float *)(v3 + v7);
  v9 = (float *)(v3 + v7);
  v10 = v9[1];
  if ( v5 > v8 )
    v17 = v8;
  if ( v6 > v10 )
    v18 = v10;
  if ( v8 > v19 )
    v19 = v8;
  if ( v10 > v20 )
    v20 = v10;
  gameswf::grid_index_box<float,bool>::begin(v15, a3, (int)&v17);
  while ( 1 )
  {
    if ( !v16 )
      return 0;
    v11 = v16[1];
    v23 = *v16;
    v24 = v11;
    v12 = v16[3];
    v13 = v16[2];
    v22 = v12;
    v21 = v13;
    if ( !*((_BYTE *)v16 + 16) )
    {
      v24 = v12;
      v22 = v11;
    }
    gameswf::edges_intersect_sub(&v26, &v25, v4, v9, (float *)&v23, (float *)&v21);
    if ( v26 < 0 && v25 <= 0 )
      break;
    if ( !v16 )
      return 0;
    gameswf::grid_index_box<float,bool>::iterator::advance(v15);
  }
  return 1;
}


// ===== 7b16d8 std::__push_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>) =====
int __fastcall std::__push_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
        int result,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v6; // r4
  int v7; // r12
  int v8; // r1
  int v9; // r7
  int v10; // r5

  if ( a2 > a3 )
  {
    v7 = (a2 - 1) / 2;
    if ( a6 > *(_DWORD *)(result + 12 * v7 + 8) )
    {
      do
      {
        v8 = 12 * a2;
        v6 = (_DWORD *)(result + 12 * v7);
        *(_DWORD *)(result + v8) = *v6;
        v9 = result + v8;
        *(_DWORD *)(v9 + 4) = v6[1];
        v10 = (v7 - 1) / 2;
        a2 = v7;
        *(_DWORD *)(v9 + 8) = v6[2];
        if ( a3 >= v7 )
          break;
        v7 = (v7 - 1) / 2;
      }
      while ( *(_DWORD *)(result + 12 * v10 + 8) < a6 );
    }
    else
    {
      v6 = (_DWORD *)(result + 12 * a2);
    }
  }
  else
  {
    v6 = (_DWORD *)(result + 12 * a2);
  }
  v6[2] = a6;
  *v6 = a4;
  v6[1] = a5;
  return result;
}


// ===== 7b178c std::__adjust_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>) =====
int __fastcall std::__adjust_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  int v6; // r12
  int v7; // lr
  int v8; // r7
  _DWORD *v9; // r3
  int v10; // r8
  int v11; // r6
  int v12; // r7
  bool v13; // cc
  int v14; // r6
  int v16; // lr
  _DWORD *v17; // r2
  _DWORD *v18; // r3
  int varg_r3; // [sp+34h] [bp+1Ch]

  v6 = a2;
  v7 = 2 * (a2 + 1);
  if ( v7 < a3 )
  {
    v8 = a2;
    do
    {
      a2 = v7 - 1;
      v9 = (_DWORD *)(a1 + 12 * v7);
      v10 = v9[2];
      v11 = *(_DWORD *)(a1 + 12 * (v7 - 1) + 8);
      v12 = 12 * v8;
      v13 = v10 < v11;
      if ( v10 < v11 )
        v9 = (_DWORD *)(a1 + 12 * (v7 - 1));
      v14 = a1 + v12;
      if ( !v13 )
        a2 = v7;
      *(_DWORD *)(a1 + v12) = *v9;
      v7 = 2 * (a2 + 1);
      *(_DWORD *)(v14 + 4) = v9[1];
      v8 = a2;
      *(_DWORD *)(v14 + 8) = v9[2];
    }
    while ( a3 > v7 );
  }
  if ( v7 == a3 )
  {
    v16 = v7 - 1;
    v17 = (_DWORD *)(a1 + 12 * v16);
    v18 = (_DWORD *)(a1 + 12 * a2);
    *v18 = *v17;
    a2 = v16;
    v18[1] = v17[1];
    v18[2] = v17[2];
  }
  return std::__push_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
           a1,
           a2,
           v6,
           varg_r3,
           a5,
           a6);
}


// ===== 7b1888 std::__make_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,int>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int *) =====
int __fastcall std::__make_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,int>(
        int result,
        int a2)
{
  int v2; // r1
  int v3; // r7
  int v4; // r4
  int v5; // r10
  int v6; // r5
  int v7; // r6

  v2 = a2 - result;
  v3 = result;
  if ( v2 > 23 )
  {
    v4 = 0;
    v5 = -1431655765 * (v2 >> 2);
    v6 = (v5 - 2) >> 1;
    v7 = result + 12 * v6;
    while ( 1 )
    {
      result = std::__adjust_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
                 v3,
                 v6,
                 v5,
                 *(_DWORD *)(v7 + v4),
                 *(_DWORD *)(v7 + v4 + 4),
                 *(_DWORD *)(v7 + v4 + 8));
      v4 -= 12;
      if ( !v6 )
        break;
      --v6;
    }
  }
  return result;
}


// ===== 7b1944 std::__pop_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,int>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,int *) =====
int __fastcall std::__pop_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  *a3 = *a1;
  a3[1] = a1[1];
  a3[2] = a1[2];
  return std::__adjust_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
           (int)a1,
           0,
           -1431655765 * ((a2 - (int)a1) >> 2),
           a4,
           a5,
           a6);
}


// ===== 7b19c0 std::priv::__partial_sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>) =====
int __fastcall std::priv::__partial_sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
        char *a1,
        int a2,
        unsigned int a3)
{
  int *v4; // r4
  int result; // r0
  int *v7; // r5
  int *v8; // r2
  int i; // r5
  int v10; // [sp+28h] [bp-1Ch]
  int v11; // [sp+2Ch] [bp-18h]
  int v12; // [sp+30h] [bp-14h]

  v4 = (int *)a2;
  result = std::__make_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,int>(
             (int)a1,
             a2);
  if ( (unsigned int)v4 < a3 )
  {
    v7 = v4;
    do
    {
      while ( v7[2] >= *((_DWORD *)a1 + 2) )
      {
        v7 += 3;
        if ( a3 <= (unsigned int)v7 )
          goto LABEL_6;
      }
      v11 = v7[1];
      v10 = *v7;
      v12 = v7[2];
      v8 = v7;
      v7 += 3;
      result = std::__pop_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,int>(
                 a1,
                 (int)v4,
                 v8,
                 v10,
                 v11,
                 v12);
    }
    while ( a3 > (unsigned int)v7 );
  }
LABEL_6:
  for ( i = (char *)v4 - a1;
        i > 23;
        result = std::__pop_heap<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>,int>(
                   a1,
                   (int)v4,
                   v4,
                   *v4,
                   v4[1],
                   v4[2]) )
  {
    v4 -= 3;
    i -= 12;
  }
  return result;
}


// ===== 7b1afc std::priv::__introsort_loop<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,int,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,int,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>) =====
int __fastcall std::priv::__introsort_loop<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,int,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
        int result,
        unsigned int a2,
        int a3,
        int a4)
{
  int v4; // r2
  int v5; // r5
  int v6; // r6
  int v7; // r0
  int v8; // r3
  int v9; // r2
  int v10; // r12
  int *v11; // r3
  int *v12; // r8
  int *v13; // r4
  int v14; // r9
  int v15; // r10
  _BYTE v16[8]; // [sp+Ch] [bp-8h] BYREF

  v4 = a2 - result;
  v5 = result;
  v6 = a4;
  if ( (int)(a2 - result) > 203 )
  {
    if ( a4 )
    {
      do
      {
        v7 = *(_DWORD *)(v5 + 8);
        --v6;
        v8 = *(_DWORD *)(v5 + 12 * ((-1431655765 * (v4 >> 2)) >> 1) + 8);
        if ( v7 >= v8 )
        {
          v9 = *(_DWORD *)(a2 - 4);
          if ( v7 >= v9 )
          {
            if ( v8 >= v9 )
            {
LABEL_23:
              v10 = v9;
              v9 = v8;
              goto LABEL_7;
            }
LABEL_16:
            v10 = v9;
            goto LABEL_7;
          }
        }
        else
        {
          v9 = *(_DWORD *)(a2 - 4);
          if ( v8 < v9 )
            goto LABEL_23;
          if ( v7 < v9 )
            goto LABEL_16;
        }
        v10 = v9;
        v9 = *(_DWORD *)(v5 + 8);
LABEL_7:
        v11 = (int *)a2;
        v12 = (int *)v5;
        while ( 1 )
        {
          if ( v9 > v7 )
          {
            v13 = v12;
            do
            {
              v13 += 3;
              v7 = v13[2];
            }
            while ( v7 < v9 );
          }
          else
          {
            v13 = v12;
          }
          v11 -= 3;
          if ( v9 < v10 )
          {
            do
              v11 -= 3;
            while ( v11[2] > v9 );
          }
          if ( v11 <= v13 )
            break;
          v14 = v13[1];
          v15 = *v13;
          *v13 = *v11;
          v12 = v13 + 3;
          v13[1] = v11[1];
          v13[2] = v11[2];
          v11[2] = v7;
          v11[1] = v14;
          *v11 = v15;
          v10 = *(v11 - 1);
          v7 = v13[5];
        }
        result = std::priv::__introsort_loop<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,int,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
                   v13,
                   a2,
                   0,
                   v6,
                   v16);
        v4 = (int)v13 - v5;
        if ( (int)v13 - v5 <= 203 )
          return result;
        a2 = (unsigned int)v13;
      }
      while ( v6 );
    }
    return std::priv::__partial_sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
             (char *)v5,
             a2,
             a2);
  }
  return result;
}


// ===== 7b1c80 std::sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *>(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *) =====
int *__fastcall std::sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *>(
        int *result,
        int *a2)
{
  int *v2; // r5
  int v4; // r2
  int v5; // r3
  int v6; // r3

  v2 = result;
  if ( result != a2 )
  {
    v4 = -1431655765 * (a2 - result);
    if ( v4 == 1 )
    {
      v5 = 0;
    }
    else
    {
      v6 = 0;
      do
      {
        v4 >>= 1;
        ++v6;
      }
      while ( v4 != 1 );
      v5 = 2 * v6;
    }
    std::priv::__introsort_loop<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info,int,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
      (int)result,
      (unsigned int)a2,
      0,
      v5);
    return std::priv::__final_insertion_sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *,std::less<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>>(
             v2,
             a2);
  }
  return result;
}


// ===== 7b1d08 gameswf::grid_index_point<float,bool>::~grid_index_point() =====
_DWORD *__fastcall gameswf::grid_index_point<float,bool>::~grid_index_point(_DWORD *a1)
{
  int v2; // r6
  _DWORD *v3; // r3
  int i; // r5
  _DWORD *v5; // r0
  _DWORD *v6; // r4
  void *v7; // r0

  v2 = a1[4] * a1[5];
  if ( v2 > 0 )
  {
    v3 = (_DWORD *)a1[6];
    for ( i = 0; i != v2; ++i )
    {
      v5 = (_DWORD *)v3[i];
      if ( v5 )
      {
        v6 = (_DWORD *)v5[3];
        gameswf::free_internal(v5);
        while ( v6 )
        {
          v7 = v6;
          v6 = (_DWORD *)v6[3];
          gameswf::free_internal(v7);
        }
        v3 = (_DWORD *)a1[6];
      }
    }
  }
  else
  {
    v3 = (_DWORD *)a1[6];
  }
  if ( v3 )
    gameswf::free_internal(v3);
  return a1;
}


// ===== 7b1d94 gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::reserve(int) =====
void __fastcall gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::reserve(
        int a1,
        int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 20 * a2, 20 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(20 * a2);
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


// ===== 7b1e1c gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::resize(int) =====
void __fastcall gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::resize(
        _DWORD *a1,
        int a2)
{
  int v4; // r6
  int v5; // r2
  _DWORD *v6; // r3

  v4 = a1[1];
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::reserve(
      (int)a1,
      a2 + (a2 >> 1));
  if ( v4 < a2 )
  {
    v5 = 20 * v4;
    do
    {
      ++v4;
      v6 = (_DWORD *)(*a1 + v5);
      *v6 = 0;
      v6[4] = 0;
      v6[1] = 0;
      v6[2] = -1;
      v6[3] = -1;
      v5 += 20;
    }
    while ( v4 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b1e98 gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::reserve(int) =====
void __fastcall gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::reserve(
        int a1,
        int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 12 * a2, 12 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(12 * a2);
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


// ===== 7b1f20 gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::resize(int) =====
void __fastcall gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::resize(
        _DWORD *a1,
        int a2)
{
  int v4; // r6
  int v5; // r3
  _DWORD *v6; // r1

  v4 = a1[1];
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::reserve(
      (int)a1,
      a2 + (a2 >> 1));
  if ( v4 < a2 )
  {
    v5 = 12 * v4;
    do
    {
      ++v4;
      v6 = (_DWORD *)(*a1 + v5);
      *v6 = -1;
      v6[2] = -1;
      v6[1] = -1;
      v5 += 12;
    }
    while ( v4 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b1f8c gameswf::array<gameswf::grid_entry_box<float,bool> *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::grid_entry_box<float,bool> *>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b2008 gameswf::grid_index_box<float,bool>::add(gameswf::index_box<float> const&,bool) =====
void __fastcall gameswf::grid_index_box<float,bool>::add(_DWORD *a1, int a2, char a3)
{
  _DWORD *v6; // r0
  _DWORD *v7; // r4
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r9
  int v12; // r7
  int v13; // r11
  int v14; // r10
  int v15; // r6
  int v16; // r3
  int v17; // r8
  _DWORD v18[5]; // [sp+0h] [bp-14h] BYREF

  gameswf::grid_index_box<float,bool>::get_containing_cells_clamped(v18, (int)a1, (float *)a2);
  v6 = operator new(0x18u, 0);
  v6[5] = 0;
  v7 = v6;
  v8 = *(_DWORD *)(a2 + 4);
  v9 = *(_DWORD *)(a2 + 8);
  v10 = *(_DWORD *)(a2 + 12);
  *v6 = *(_DWORD *)a2;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  *((_BYTE *)v6 + 16) = a3;
  v11 = a1[4] * a1[5];
  if ( v11 > 0 )
  {
    v12 = 0;
    do
    {
      while ( 1 )
      {
        v13 = a1[7];
        v14 = 16 * v12++;
        v15 = v13 + v14;
        v16 = *(_DWORD *)(v13 + v14 + 4);
        v17 = v16 + 1;
        if ( v16 + 1 > *(_DWORD *)(v13 + v14 + 8) )
          break;
        *(_DWORD *)(*(_DWORD *)(v13 + v14) + 4 * v16) = v7;
        *(_DWORD *)(v15 + 4) = v17;
        if ( v12 == v11 )
          return;
      }
      gameswf::array<gameswf::grid_entry_box<float,bool> *>::reserve(v13 + v14, v17 + (v17 >> 1));
      *(_DWORD *)(*(_DWORD *)(v13 + v14) + 4 * *(_DWORD *)(v15 + 4)) = v7;
      *(_DWORD *)(v15 + 4) = v17;
    }
    while ( v12 != v11 );
  }
}


// ===== 7b20d0 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::add_edge(gameswf::grid_index_box<float,bool> *,gameswf::vec2<float> const&,gameswf::vec2<float> const&) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::add_edge(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  float v3; // r5
  float v4; // r4
  _BOOL4 v6; // r0
  float v7; // r7
  float v8; // r1
  char v9; // r8
  _BOOL4 v10; // r0
  float v11; // r5
  float v12; // [sp+0h] [bp-14h] BYREF
  float v13; // [sp+4h] [bp-10h]
  float v14; // [sp+8h] [bp-Ch]
  float v15; // [sp+Ch] [bp-8h]

  v3 = *a2;
  v4 = a2[1];
  v6 = (float)((float)(*a3 - *a2) * (float)(a3[1] - v4)) > 0.0;
  v7 = *a3;
  v8 = *a3;
  v12 = v3;
  v14 = v3;
  v13 = v4;
  v9 = v6;
  v15 = v4;
  v10 = v3 > v8;
  v11 = a3[1];
  if ( v10 )
    v12 = v7;
  if ( v4 > v11 )
    v13 = v11;
  if ( v7 > v14 )
    v14 = v7;
  if ( v11 > v15 )
    v15 = v11;
  gameswf::grid_index_box<float,bool>::add(a1, (int)&v12, v9);
}


// ===== 7b21a8 gameswf::destructa<gameswf::array<gameswf::grid_entry_box<float,bool> *>>(gameswf::array<gameswf::grid_entry_box<float,bool> *> const*,uint) =====
void __fastcall gameswf::destructa<gameswf::array<gameswf::grid_entry_box<float,bool> *>>(char *a1, int a2)
{
  int v3; // r6
  int *v4; // r4
  int v5; // r3
  int v6; // r0
  int v7; // r2

  if ( a1 )
  {
    v3 = a2 - 1;
    if ( a2 - 1 >= 0 )
    {
      v4 = (int *)&a1[16 * a2 - 12];
      do
      {
        while ( 1 )
        {
          v5 = *v4;
          v6 = (int)(v4 - 1);
          if ( *v4 < 0 )
            break;
          *v4 = 0;
          v4 -= 4;
          gameswf::array<gameswf::grid_entry_box<float,bool> *>::reserve(v6, 0);
          if ( --v3 < 0 )
            goto LABEL_9;
        }
        v7 = 4 * v5;
        do
        {
          ++v5;
          *(_DWORD *)(*(v4 - 1) + v7) = 0;
          v7 += 4;
        }
        while ( v5 );
        *v4 = 0;
        v4 -= 4;
        gameswf::array<gameswf::grid_entry_box<float,bool> *>::reserve(v6, 0);
        --v3;
      }
      while ( v3 >= 0 );
    }
LABEL_9:
    gameswf::free_internal(a1);
  }
}


// ===== 7b2238 gameswf::grid_index_box<float,bool>::~grid_index_box() =====
_DWORD *__fastcall gameswf::grid_index_box<float,bool>::~grid_index_box(_DWORD *a1)
{
  int v1; // r5
  int v3; // r6
  int i; // r4
  void *v5; // r0

  v1 = a1[7];
  v3 = *(_DWORD *)(v1 + 4);
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
    {
      v5 = *(void **)(*(_DWORD *)v1 + 4 * i);
      if ( v5 )
        gameswf::free_internal(v5);
    }
    v1 = a1[7];
  }
  gameswf::destructa<gameswf::array<gameswf::grid_entry_box<float,bool> *>>((char *)v1, a1[4] * a1[5]);
  return a1;
}


// ===== 7b2298 gameswf::grid_index_pick_good_grid_size<float>(int *,int *,gameswf::index_box<float> const&,int,float) [clone] =====
int __fastcall gameswf::grid_index_pick_good_grid_size<float>(int result, int *a2, float *a3, int a4)
{
  int *v4; // r5
  float v6; // r8
  float v7; // r7
  float v8; // r10
  float v9; // r0
  int v10; // r3

  *(_DWORD *)result = 1;
  v4 = (int *)result;
  *a2 = 1;
  if ( a4 > 0 )
  {
    v6 = a3[2] - *a3;
    v7 = a3[3] - a3[1];
    v8 = v6 * v7;
    if ( (float)(v6 * v7) <= 0.0 )
    {
      if ( v6 <= 0.0 )
      {
        *a2 = (int)(float)((float)a4 * 0.49985);
        result = *(_DWORD *)result;
      }
      else
      {
        result = (int)(float)((float)a4 * 0.49985);
        *v4 = result;
      }
    }
    else
    {
      v9 = sqrtf((float)a4);
      *v4 = (int)(float)(v9 * (float)((float)((float)(v6 * v6) / v8) * 0.707));
      *a2 = (int)(float)(v9 * (float)((float)((float)(v7 * v7) / v8) * 0.707));
      result = *v4;
    }
    if ( result <= 255 )
    {
      if ( result < 1 )
        result = 1;
    }
    else
    {
      result = 256;
    }
    *v4 = result;
    v10 = *a2;
    if ( *a2 <= 255 )
    {
      if ( v10 < 1 )
        v10 = 1;
    }
    else
    {
      v10 = 256;
    }
    *a2 = v10;
  }
  return result;
}


// ===== 7b2408 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::join_paths_into_one_poly(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate *) =====
_DWORD *__fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::join_paths_into_one_poly(
        _DWORD *result)
{
  int v1; // r3
  int v2; // r5
  int v3; // lr
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r4
  int v8; // r6
  _DWORD *v9; // r0
  int v10; // r2
  int v11; // r3
  int v12; // r4
  int v13; // r6
  int v14; // r3
  float *v15; // r1
  int v16; // r2
  int v17; // r2
  int v18; // r6
  int v19; // r4
  int v21; // r9
  int v22; // r12
  _DWORD *v23; // lr
  _DWORD *v24; // r12
  int v25; // r1
  int v26; // r2
  int v27; // r3
  int v28; // r12
  _DWORD *v29; // lr
  _DWORD *v30; // r12
  int v31; // r1
  int v32; // r2
  int v33; // r3
  bool v34; // cc
  int v35; // [sp+4h] [bp-48h]
  int v36; // [sp+8h] [bp-44h]
  int v37; // [sp+Ch] [bp-40h]
  int v38; // [sp+14h] [bp-38h]
  _DWORD v39[4]; // [sp+20h] [bp-2Ch] BYREF
  int v40; // [sp+30h] [bp-1Ch] BYREF
  int v41[3]; // [sp+34h] [bp-18h] BYREF
  _DWORD v42[3]; // [sp+40h] [bp-Ch] BYREF

  v1 = result[6];
  v2 = (int)result;
  if ( v1 > 1 )
  {
    std::sort<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info *>(
      (int *)result[5],
      (int *)(result[5] + 12 * v1));
    v3 = *(_DWORD *)(v2 + 8);
    v4 = *(_DWORD *)(v2 + 44);
    v5 = *(_DWORD *)(v2 + 48);
    v6 = *(_DWORD *)(v2 + 52);
    v7 = 0;
    v39[0] = *(_DWORD *)(v2 + 40);
    v39[1] = v4;
    v39[2] = v5;
    v39[3] = v6;
    v41[1] = 0;
    gameswf::grid_index_pick_good_grid_size<float>((int)&v40, v41, (float *)(v2 + 40), v3);
    v8 = v40 * v41[0];
    v9 = operator new[](16 * v40 * v41[0] + 8);
    *v9 = 16;
    v9[1] = v8;
    v10 = (int)(v9 + 2);
    if ( v8 )
    {
      do
      {
        ++v7;
        v9[2] = 0;
        v9[3] = 0;
        v9[4] = 0;
        *((_BYTE *)v9 + 20) = 0;
        v9 += 4;
      }
      while ( v8 != v7 );
    }
    v11 = *(_DWORD *)(v2 + 8);
    v41[2] = v10;
    if ( v11 > 0 )
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = *(_DWORD *)(v2 + 4);
        ++v13;
        v15 = (float *)(v14 + v12);
        v16 = *(_DWORD *)(v14 + v12 + 8);
        v12 += 20;
        gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::add_edge(
          v39,
          v15,
          (float *)(v14 + 20 * v16));
      }
      while ( v13 < *(_DWORD *)(v2 + 8) );
    }
    v17 = *(_DWORD *)(v2 + 24);
    if ( v17 > 1 )
    {
      v35 = 12;
      v36 = 1;
      do
      {
        v18 = *(_DWORD *)(*(_DWORD *)(v2 + 20) + v35 + 8);
        if ( v18 > 0 )
        {
          v19 = v18 - 1;
          while ( 1 )
          {
            v42[1] = v19;
            v42[0] = v18;
            if ( !gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::any_edge_intersects(
                    v2,
                    v42,
                    v39) )
              break;
            if ( v19-- == 0 )
            {
              v19 = v18 - 1;
              break;
            }
          }
          v21 = *(_DWORD *)(v2 + 8);
          gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::resize(
            (_DWORD *)(v2 + 4),
            v21 + 2);
          v22 = *(_DWORD *)(v2 + 4);
          v38 = 20 * v21;
          v23 = (_DWORD *)(v22 + 20 * v21);
          v24 = (_DWORD *)(v22 + 20 * v18);
          v25 = v24[1];
          v26 = v24[2];
          v27 = v24[3];
          *v23 = *v24;
          v23[1] = v25;
          v23[2] = v26;
          v23[3] = v27;
          v37 = 20 * (v21 + 1);
          v23[4] = v24[4];
          v28 = *(_DWORD *)(v2 + 4);
          v29 = (_DWORD *)(v28 + v37);
          v30 = (_DWORD *)(v28 + 20 * v19);
          v31 = v30[1];
          v32 = v30[2];
          v33 = v30[3];
          *v29 = *v30;
          v29[1] = v31;
          v29[2] = v32;
          v29[3] = v33;
          v29[4] = v30[4];
          *(_DWORD *)(*(_DWORD *)(v2 + 4) + 20 * v18 + 12) = v19;
          *(_DWORD *)(*(_DWORD *)(v2 + 4) + 20 * v19 + 8) = v18;
          *(_DWORD *)(*(_DWORD *)(v2 + 4) + v38 + 8) = v21 + 1;
          *(_DWORD *)(*(_DWORD *)(v2 + 4) + v37 + 12) = v21;
          *(_DWORD *)(*(_DWORD *)(v2 + 4) + 20 * *(_DWORD *)(*(_DWORD *)(v2 + 4) + v38 + 12) + 8) = v21;
          *(_DWORD *)(*(_DWORD *)(v2 + 4) + 20 * *(_DWORD *)(*(_DWORD *)(v2 + 4) + v37 + 8) + 12) = v21 + 1;
          gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::add_edge(
            v39,
            (float *)(*(_DWORD *)(v2 + 4) + 20 * v18),
            (float *)(*(_DWORD *)(v2 + 4) + 20 * v19));
          v17 = *(_DWORD *)(v2 + 24);
        }
        v34 = ++v36 < v17;
        v35 += 12;
      }
      while ( v34 );
    }
    return gameswf::grid_index_box<float,bool>::~grid_index_box(v39);
  }
  return result;
}


// ===== 7b26a0 std::priv::__unguarded_partition<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
_DWORD *__fastcall std::priv::__unguarded_partition<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        int *a4)
{
  _DWORD *i; // r7
  int v6; // r10
  _DWORD *v7; // r7
  _DWORD *v8; // r7
  int v9; // r4
  float v10; // r5
  int v11; // r8
  int v12; // r10
  float v13; // r6
  int v14; // r10
  int v16; // [sp+0h] [bp-14h]
  _DWORD *v18; // [sp+4h] [bp-10h]

  while ( 1 )
  {
    v8 = a1;
    v9 = *a4;
    v10 = *(float *)(*a4 + 20 * a3);
    v16 = *a4 + 20 * a3;
    while ( 1 )
    {
      v11 = *v8;
      v12 = 20 * *v8;
      v13 = *(float *)(v9 + v12);
      v14 = v9 + v12;
      if ( v13 >= v10 && (v13 > v10 || *(float *)(v14 + 4) >= *(float *)(v16 + 4)) )
        break;
      ++v8;
    }
    v18 = v8;
    for ( i = a2; ; --i )
    {
      v6 = *(i - 1);
      if ( *(float *)(v9 + 20 * v6) <= v10
        && (*(float *)(v9 + 20 * v6) < v10 || *(float *)(v16 + 4) >= *(float *)(v9 + 20 * v6 + 4)) )
      {
        break;
      }
    }
    v7 = i - 1;
    a2 = v7;
    if ( v7 <= v18 )
      break;
    *v18 = v6;
    a1 = v18 + 1;
    *v7 = v11;
  }
  return v18;
}


// ===== 7b27c4 std::__push_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
bool __fastcall std::__push_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        _BOOL4 result,
        int a2,
        int a3,
        int a4,
        _DWORD *a5)
{
  int v5; // r4
  int i; // r7
  int v7; // r8
  float v8; // r6
  float v9; // r5
  int v10; // r9
  _DWORD *v11; // [sp+4h] [bp-18h]
  int v12; // [sp+8h] [bp-14h]
  int v13; // [sp+Ch] [bp-10h]

  v12 = a2;
  v5 = result;
  if ( a2 > a3 )
  {
    for ( i = (a2 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v7 = *(_DWORD *)(v5 + 4 * i);
      v11 = (_DWORD *)(v5 + 4 * i);
      v8 = *(float *)(*a5 + 20 * a4);
      v9 = *(float *)(*a5 + 20 * v7);
      v13 = *a5 + 20 * v7;
      v10 = *a5 + 20 * a4;
      result = LODWORD(v9);
      if ( v9 >= v8 )
      {
        result = v9 > v8;
        if ( v9 > v8 )
        {
          v11 = (_DWORD *)(v5 + 4 * v12);
          goto LABEL_3;
        }
        result = *(float *)(v13 + 4) < *(float *)(v10 + 4);
        if ( *(float *)(v13 + 4) >= *(float *)(v10 + 4) )
        {
          a2 = v12;
          break;
        }
      }
      *(_DWORD *)(v5 + 4 * v12) = v7;
      if ( a3 >= i )
        goto LABEL_3;
      v12 = i;
    }
  }
  v11 = (_DWORD *)(v5 + 4 * a2);
LABEL_3:
  *v11 = a4;
  return result;
}


// ===== 7b28c8 std::__adjust_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
bool __fastcall std::__adjust_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        int a1,
        int a2,
        int a3,
        int a4,
        _DWORD *a5)
{
  int v5; // r4
  int v6; // r9
  int v7; // r10
  int v8; // r6
  int v9; // r11
  float v10; // r8
  int v11; // r11
  int v12; // r4
  int v14; // [sp+10h] [bp-Ch]

  v14 = a2;
  v5 = 2 * (a2 + 1);
  if ( v5 < a3 )
  {
    v6 = a2;
    do
    {
      v7 = v5 - 1;
      v8 = *(_DWORD *)(a1 + 4 * v5);
      v9 = 20 * *(_DWORD *)(a1 + 4 * (v5 - 1));
      v10 = *(float *)(*a5 + v9);
      v11 = *a5 + v9;
      if ( *(float *)(*a5 + 20 * v8) < v10
        || *(float *)(*a5 + 20 * v8) <= v10 && *(float *)(*a5 + 20 * v8 + 4) < *(float *)(v11 + 4) )
      {
        v8 = *(_DWORD *)(a1 + 4 * v7);
      }
      else
      {
        v7 = v5;
      }
      v5 = 2 * (v7 + 1);
      *(_DWORD *)(a1 + 4 * v6) = v8;
      v6 = v7;
    }
    while ( a3 > v5 );
    a2 = v7;
  }
  if ( v5 == a3 )
  {
    v12 = v5 - 1;
    *(_DWORD *)(a1 + 4 * a2) = *(_DWORD *)(a1 + 4 * v12);
    a2 = v12;
  }
  return std::__push_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
           a1,
           a2,
           v14,
           a4,
           a5);
}


// ===== 7b29d8 std::__make_heap<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter,int,int>(int *,int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter,int *,int *) =====
bool __fastcall std::__make_heap<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter,int,int>(
        _BOOL4 result,
        int a2,
        _DWORD *a3)
{
  int v3; // r1
  int v4; // r6
  int v6; // r8
  int v7; // r4
  int v8; // r5
  int v9; // r7

  v3 = a2 - result;
  v4 = result;
  if ( v3 > 7 )
  {
    v6 = v3 >> 2;
    v7 = ((v3 >> 2) - 2) >> 1;
    v8 = 0;
    v9 = result + 4 * v7;
    while ( 1 )
    {
      result = std::__adjust_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                 v4,
                 v7,
                 v6,
                 *(_DWORD *)(v9 + v8),
                 a3);
      v8 -= 4;
      if ( !v7 )
        break;
      --v7;
    }
  }
  return result;
}


// ===== 7b2a3c std::sort_heap<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
bool __fastcall std::sort_heap<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        _BOOL4 result,
        int a2,
        _DWORD *a3)
{
  int v3; // r5
  _DWORD *v4; // r6
  int v6; // r4
  int v7; // r3

  v3 = a2 - result;
  v4 = (_DWORD *)result;
  if ( a2 - result > 7 )
  {
    v6 = a2;
    do
    {
      v3 -= 4;
      v7 = *(_DWORD *)(v6 - 4);
      *(_DWORD *)(v6 - 4) = *v4;
      v6 -= 4;
      result = std::__adjust_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                 (int)v4,
                 0,
                 v3 >> 2,
                 v7,
                 a3);
    }
    while ( v3 > 7 );
  }
  return result;
}


// ===== 7b2a90 std::priv::__partial_sort<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int *,int *,int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
bool __fastcall std::priv::__partial_sort<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        int *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        _DWORD *a5)
{
  int *v5; // r4
  int v6; // r10
  int v7; // r2
  int v8; // r11
  float v9; // r7
  float v10; // r8
  int v11; // r11

  std::__make_heap<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter,int,int>(
    (_BOOL4)a1,
    a2,
    a5);
  if ( a2 < a3 )
  {
    v5 = (int *)a2;
    do
    {
      while ( 1 )
      {
        v6 = *v5;
        v7 = 20 * *v5;
        v8 = 20 * *a1;
        v9 = *(float *)(*a5 + v7);
        v10 = *(float *)(*a5 + v8);
        v11 = *a5 + v8;
        if ( v9 < v10 || v9 <= v10 && *(float *)(*a5 + v7 + 4) < *(float *)(v11 + 4) )
          break;
        if ( a3 <= (unsigned int)++v5 )
          return std::sort_heap<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                   (_BOOL4)a1,
                   a2,
                   a5);
      }
      *v5 = *a1;
      std::__adjust_heap<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        (int)a1,
        0,
        (int)(a2 - (_DWORD)a1) >> 2,
        v6,
        a5);
      ++v5;
    }
    while ( a3 > (unsigned int)v5 );
  }
  return std::sort_heap<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
           (_BOOL4)a1,
           a2,
           a5);
}


// ===== 7b2ba8 std::priv::__linear_insert<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
void *__fastcall std::priv::__linear_insert<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r9
  int v6; // r10
  float v7; // r7
  float v8; // r6
  _DWORD *v10; // r11
  void *result; // r0
  int v12; // r9
  _DWORD *i; // r8
  int v14; // r9
  float v15; // r5
  int v16; // r9
  int v17; // r4

  v4 = *a4;
  v5 = 20 * *a1;
  v6 = 20 * a3;
  v7 = *(float *)(*a4 + v5);
  v8 = *(float *)(*a4 + 20 * a3);
  v10 = a2;
  result = (void *)(v8 < v7);
  v12 = *a4 + v5;
  if ( v8 < v7 || v8 <= v7 && (result = (void *)(*(float *)(v4 + v6 + 4) < *(float *)(v12 + 4))) != nullptr )
  {
    if ( (char *)a2 - (char *)a1 > 0 )
      result = memmove(a1 + 1, a1, (char *)a2 - (char *)a1);
    *a1 = a3;
  }
  else
  {
    for ( i = a2 - 1; ; --i )
    {
      v14 = 20 * *i;
      v15 = *(float *)(v4 + v14);
      v16 = v4 + v14;
      if ( v8 >= v15 )
      {
        result = (void *)(v8 > v15);
        v17 = v4 + v6;
        if ( v8 > v15 )
          break;
        result = (void *)(*(float *)(v17 + 4) < *(float *)(v16 + 4));
        if ( *(float *)(v17 + 4) >= *(float *)(v16 + 4) )
          break;
      }
      *v10 = *i;
      v10 = i;
      v4 = *a4;
      v8 = *(float *)(*a4 + 20 * a3);
    }
    *v10 = a3;
  }
  return result;
}


// ===== 7b2ccc std::priv::__final_insertion_sort<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
void *__fastcall std::priv::__final_insertion_sort<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        void *result,
        int *a2,
        int *a3)
{
  _DWORD *v3; // r6
  char *v5; // r8
  int *v6; // r7
  int *v7; // r5
  int *v8; // r1
  int v9; // r2
  int *v10; // r7
  int v11; // r10
  int v12; // r9
  float v13; // r5
  float v14; // r6
  int v15; // r11
  int v16; // r9
  int *v17; // r5
  int *v18; // r1
  int v19; // r2
  int *v20; // [sp+0h] [bp-14h]
  int *v21; // [sp+4h] [bp-10h]
  int v22; // [sp+8h] [bp-Ch]

  v3 = result;
  if ( (char *)a2 - (_BYTE *)result <= 67 )
  {
    if ( a2 != result )
    {
      v17 = (int *)((char *)result + 4);
      if ( a2 != (int *)((char *)result + 4) )
      {
        do
        {
          v18 = v17;
          v19 = *v17++;
          result = std::priv::__linear_insert<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                     v3,
                     v18,
                     v19,
                     a3);
        }
        while ( a2 != v17 );
      }
    }
  }
  else
  {
    v5 = (char *)result + 4;
    v6 = (int *)((char *)result + 64);
    v7 = (int *)((char *)result + 4);
    do
    {
      v8 = v7;
      v9 = *v7++;
      result = std::priv::__linear_insert<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                 v3,
                 v8,
                 v9,
                 a3);
    }
    while ( v7 != v6 );
    v21 = (int *)(v5 + 60);
    if ( a2 != (int *)(v5 + 60) )
    {
      do
      {
        v10 = v21 - 1;
        v20 = v21;
        v11 = 20 * *v21;
        v22 = *v21;
        while ( 1 )
        {
          v12 = 20 * *v10;
          v14 = *(float *)(*a3 + v12);
          v16 = *a3 + v12;
          if ( *(float *)(*a3 + v11) >= v14 )
          {
            v13 = *(float *)(*a3 + v11);
            result = (void *)(v13 > v14);
            if ( v13 > v14 )
              break;
            v15 = *a3 + v11;
            result = (void *)(*(float *)(v15 + 4) < *(float *)(v16 + 4));
            if ( *(float *)(v15 + 4) >= *(float *)(v16 + 4) )
              break;
          }
          *v20 = *v10;
          v20 = v10--;
        }
        ++v21;
        *v20 = v22;
      }
      while ( a2 != v21 );
    }
  }
  return result;
}


// ===== 7b2e24 std::priv::__median<int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int const&,int const&,int const&,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
_DWORD *__fastcall std::priv::__median<int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4)
{
  _DWORD *v4; // r4
  int v5; // r6
  int v6; // r9
  int v7; // r3
  float v8; // r7
  float v9; // r8
  int v10; // r9
  int v11; // r3
  float v12; // r11
  int v13; // r6
  int v15; // r3
  float v16; // r11
  int v17; // r6
  int v18; // [sp+4h] [bp-8h]

  v4 = a2;
  v5 = *a4;
  v6 = 20 * *a1;
  v7 = 20 * *a2;
  v8 = *(float *)(v5 + v6);
  v9 = *(float *)(v5 + v7);
  v18 = v5 + v7;
  v10 = v5 + v6;
  if ( v8 < v9 || v8 <= v9 && *(float *)(v10 + 4) < *(float *)(v18 + 4) )
  {
    v15 = 20 * *a3;
    v16 = *(float *)(v5 + v15);
    v17 = v5 + v15;
    if ( v9 < v16 || v9 <= v16 && *(float *)(v18 + 4) < *(float *)(v17 + 4) )
      return v4;
    if ( v8 < v16 || v8 <= v16 && *(float *)(v10 + 4) < *(float *)(v17 + 4) )
      return a3;
    return a1;
  }
  v11 = 20 * *a3;
  v12 = *(float *)(v5 + v11);
  v13 = v5 + v11;
  if ( v8 < v12 || v8 <= v12 && *(float *)(v10 + 4) < *(float *)(v13 + 4) )
    return a1;
  if ( v9 < v12 || v9 <= v12 && *(float *)(v18 + 4) < *(float *)(v13 + 4) )
    return a3;
  return v4;
}


// ===== 7b2fdc std::priv::__introsort_loop<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int *,int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
int __fastcall std::priv::__introsort_loop<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        int result,
        char *a2,
        int a3,
        int a4,
        int *a5)
{
  char *v5; // r5
  int v6; // r1
  char *v7; // r4
  int v8; // r6
  int *v9; // r0
  char *v10; // r8

  v5 = a2;
  v6 = (int)&a2[-result];
  v7 = (char *)result;
  v8 = a4;
  if ( v6 > 67 )
  {
    if ( a4 )
    {
      while ( 1 )
      {
        v9 = std::priv::__median<int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
               v7,
               &v7[4 * (v6 >> 3)],
               (_DWORD *)v5 - 1,
               a5);
        --v8;
        v10 = (char *)std::priv::__unguarded_partition<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                        v7,
                        v5,
                        *v9,
                        a5);
        result = std::priv::__introsort_loop<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                   v10,
                   v5,
                   0,
                   v8,
                   a5);
        v6 = v10 - v7;
        if ( v10 - v7 <= 67 )
          break;
        v5 = v10;
        if ( !v8 )
          return std::priv::__partial_sort<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                   (int *)v7,
                   (unsigned int)v5,
                   (unsigned int)v5,
                   0,
                   a5);
      }
    }
    else
    {
      return std::priv::__partial_sort<int *,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
               (int *)v7,
               (unsigned int)v5,
               (unsigned int)v5,
               0,
               a5);
    }
  }
  return result;
}


// ===== 7b3094 std::sort<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(int *,int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter) =====
char *__fastcall std::sort<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
        char *result,
        char *a2,
        int *a3)
{
  char *v3; // r5
  int v6; // r2
  int v7; // r3
  int v8; // r3

  v3 = result;
  if ( result != a2 )
  {
    v6 = (a2 - result) >> 2;
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
    std::priv::__introsort_loop<int *,int,int,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
      (int)result,
      a2,
      0,
      v7,
      a3);
    return (char *)std::priv::__final_insertion_sort<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
                     v3,
                     (int *)a2,
                     a3);
  }
  return result;
}


// ===== 7b3110 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate::~tristate() =====
_DWORD *__fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate::~tristate(
        _DWORD *a1)
{
  void *v1; // r5

  v1 = (void *)a1[15];
  if ( v1 )
  {
    gameswf::grid_index_point<float,bool>::~grid_index_point((_DWORD *)a1[15]);
    gameswf::free_internal(v1);
  }
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::resize(
    a1 + 5,
    0);
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::reserve(
    (int)(a1 + 5),
    0);
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::resize(
    a1 + 1,
    0);
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::reserve(
    (int)(a1 + 1),
    0);
  return a1;
}


// ===== 7b3178 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::sort_and_remap(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate *) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::sort_and_remap(
        _DWORD *a1)
{
  int v2; // r5
  int v3; // r1
  int v4; // r11
  int v5; // r7
  int v6; // r6
  _DWORD *v7; // lr
  _DWORD *v8; // r12
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r5
  int v13; // r3
  int v14; // r5
  int v15; // r1
  int i; // r3
  int v17; // r5
  int v18; // lr
  int v19; // r6
  _DWORD *v20; // r12
  _DWORD *v21; // r6
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r3
  int v26; // r2
  int v27; // r1
  int v28; // r12
  int v29; // r3
  int v30; // r2
  int v31; // r1
  int v32; // r0
  int v33; // r3
  int v34; // r3
  int v35; // r2
  int v36; // r2
  int v37; // [sp+0h] [bp-34h] BYREF
  int v38; // [sp+4h] [bp-30h]
  int v39; // [sp+8h] [bp-2Ch]
  char v40; // [sp+Ch] [bp-28h]
  char *v41; // [sp+10h] [bp-24h] BYREF
  int v42; // [sp+14h] [bp-20h]
  int v43; // [sp+18h] [bp-1Ch]
  char v44; // [sp+1Ch] [bp-18h]
  int v45; // [sp+20h] [bp-14h] BYREF
  int v46; // [sp+24h] [bp-10h]
  int v47; // [sp+28h] [bp-Ch]
  char v48; // [sp+2Ch] [bp-8h]

  v2 = 0;
  v3 = a1[2];
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::resize(
    &v45,
    v3);
  v4 = v46;
  v5 = v46;
  if ( v46 > 0 )
  {
    v6 = 0;
    do
    {
      ++v6;
      v7 = (_DWORD *)(a1[1] + v2);
      v8 = (_DWORD *)(v45 + v2);
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      *v8 = *v7;
      v8[1] = v9;
      v8[2] = v10;
      v8[3] = v11;
      v2 += 20;
      v8[4] = v7[4];
      v4 = v46;
      v5 = v46;
    }
    while ( v6 < v46 );
  }
  v12 = 0;
  v41 = nullptr;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if ( v4 > 0 )
  {
    gameswf::array<int>::reserve((int)&v41, v4 + (v4 >> 1));
    do
      *(_DWORD *)&v41[4 * v12++] = 0;
    while ( v12 != v4 );
    v4 = v46;
  }
  v42 = v5;
  if ( v4 > 0 )
  {
    v13 = 0;
    do
    {
      *(_DWORD *)&v41[4 * v13] = v13;
      v4 = v46;
      ++v13;
    }
    while ( v13 < v46 );
    v5 = v42;
  }
  if ( v5 )
  {
    std::sort<int *,gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vert_index_sorter>(
      v41,
      &v41[4 * v5],
      &v45);
    v4 = v46;
  }
  v14 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if ( v4 > 0 )
  {
    gameswf::array<int>::reserve((int)&v37, v4 + (v4 >> 1));
    do
      *(_DWORD *)(v37 + 4 * v14++) = 0;
    while ( v14 != v4 );
  }
  v15 = v42;
  v38 = v4;
  if ( v42 > 0 )
  {
    for ( i = 0; i < v42; ++i )
    {
      *(_DWORD *)(v37 + 4 * *(_DWORD *)&v41[4 * i]) = i;
      v15 = v42;
    }
  }
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::resize(
    a1 + 1,
    v15);
  if ( v42 > 0 )
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(_DWORD *)&v41[4 * v18];
      v20 = (_DWORD *)(a1[1] + v17);
      ++v18;
      v21 = (_DWORD *)(v45 + 20 * v19);
      v17 += 20;
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      *v20 = *v21;
      v20[1] = v22;
      v20[2] = v23;
      v20[3] = v24;
      v20[4] = v21[4];
    }
    while ( v18 < v42 );
  }
  if ( (int)a1[2] > 0 )
  {
    v25 = 0;
    v26 = 0;
    do
    {
      ++v26;
      *(_DWORD *)(a1[1] + v25 + 8) = *(_DWORD *)(v37 + 4 * *(_DWORD *)(a1[1] + v25 + 8));
      v27 = a1[1] + v25;
      v25 += 20;
      *(_DWORD *)(v27 + 12) = *(_DWORD *)(v37 + 4 * *(_DWORD *)(v27 + 12));
    }
    while ( v26 < a1[2] );
  }
  v28 = a1[6];
  if ( v28 > 0 )
  {
    v29 = 0;
    v30 = 0;
    do
    {
      ++v30;
      v31 = a1[5] + v29;
      v32 = *(_DWORD *)(v31 + 8);
      v29 += 12;
      if ( v32 >= 0 )
      {
        *(_DWORD *)(v31 + 8) = *(_DWORD *)(v37 + 4 * v32);
        v28 = a1[6];
      }
    }
    while ( v30 < v28 );
  }
  v33 = v38;
  if ( v38 < 0 )
  {
    v35 = 4 * v38;
    do
    {
      ++v33;
      *(_DWORD *)(v37 + v35) = 0;
      v35 += 4;
    }
    while ( v33 );
  }
  v38 = 0;
  gameswf::array<int>::reserve((int)&v37, 0);
  v34 = v42;
  if ( v42 < 0 )
  {
    v36 = 4 * v42;
    do
    {
      ++v34;
      *(_DWORD *)&v41[v36] = 0;
      v36 += 4;
    }
    while ( v34 );
  }
  v42 = 0;
  gameswf::array<int>::reserve((int)&v41, 0);
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::resize(
    &v45,
    0);
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::reserve(
    (int)&v45,
    0);
}


// ===== 7b34bc gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::init(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate *,gameswf::ear_clip_triangulate::ear_clip_array_io<float>*,gameswf::ear_clip_triangulate::ear_clip_array_io<float>*,int,gameswf::array<float> *) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::init(
        float *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5)
{
  float *v5; // r4
  int v6; // r0
  int v7; // r5
  int v8; // r3
  int v9; // r2
  int v10; // r0
  int v11; // r3
  int v12; // r6
  _DWORD *v13; // r5
  int v14; // r1
  int v15; // r2
  int v16; // r3
  void *v17; // r0
  int v18; // r3
  int v19; // r2
  int v20; // r2
  int v21; // r7
  int v22; // r11
  int v23; // r6
  int v24; // r8
  int v25; // r9
  float *v26; // r5
  int v27; // r4
  int v28; // r9
  float v29; // r10
  float v30; // r9
  _BOOL4 v31; // r11
  int v32; // r4
  float *v33; // r0
  float v34; // r3
  int v35; // r2
  bool v36; // cc
  int v37; // r2
  int *v38; // r7
  int v39; // r8
  _DWORD *v40; // r0
  float *v41; // r6
  int v42; // r2
  int v43; // r3
  int v44; // r2
  int v45; // r2
  float v46; // r9
  float v47; // r11
  float *v48; // r6
  int v49; // r5
  int v50; // r3
  int v51; // r6
  int v52; // r11
  int v53; // r1
  _DWORD *v54; // r2
  float v55; // r11
  float v56; // r9
  float v57; // r1
  _BOOL4 v58; // r0
  float v59; // r1
  int v60; // r3
  int v61; // [sp+4h] [bp-48h]
  double v62; // [sp+8h] [bp-44h]
  double v63; // [sp+8h] [bp-44h]
  _DWORD *v64; // [sp+8h] [bp-44h]
  double v65; // [sp+10h] [bp-3Ch]
  float *v66; // [sp+10h] [bp-3Ch]
  double v67; // [sp+18h] [bp-34h]
  int v68; // [sp+18h] [bp-34h]
  int v70; // [sp+20h] [bp-2Ch]
  int *v71; // [sp+24h] [bp-28h]
  int v72; // [sp+28h] [bp-24h]
  int v73; // [sp+28h] [bp-24h]
  int v74; // [sp+2Ch] [bp-20h]
  int v75; // [sp+2Ch] [bp-20h]
  int v76[2]; // [sp+38h] [bp-14h] BYREF
  float v77; // [sp+40h] [bp-Ch] BYREF
  float v78; // [sp+44h] [bp-8h]

  v5 = a1;
  *(_DWORD *)a1 = a2;
  *((_DWORD *)a1 + 16) = a4;
  v6 = 0;
  *((_DWORD *)v5 + 17) = a5;
  v5[14] = 0.0;
  v5[9] = 0.0;
  v7 = a3[1];
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(a3[2] + 16 * v6++ + 4);
      v8 += v9;
    }
    while ( v6 != v7 );
    v6 = v8 >> 1;
  }
  v10 = v6 + 2 * (v7 - 1);
  *((_DWORD *)v5 + 9) = v10;
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::reserve(
    (int)(v5 + 1),
    v10);
  gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::reserve(
    (int)(v5 + 5),
    v7);
  while ( 1 )
  {
    v11 = a3[3];
    if ( v11 >= a3[1] )
      break;
    v37 = a3[2];
    v68 = *(_DWORD *)(v37 + 16 * v11 + 4);
    if ( v68 <= 0 )
    {
      a3[3] = v11 + 1;
    }
    else
    {
      v38 = *(int **)(v37 + 16 * v11);
      a3[3] = v11 + 1;
      v39 = 0;
      gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::path_info>::resize(
        (_DWORD *)v5 + 5,
        *((_DWORD *)v5 + 6) + 1);
      v75 = *((_DWORD *)v5 + 5);
      v40 = (_DWORD *)(v75 + 12 * (*((_DWORD *)v5 + 6) - 1));
      v73 = 12 * (*((_DWORD *)v5 + 6) - 1);
      *v40 = *((_DWORD *)v5 + 2);
      v64 = v40;
      do
      {
        v49 = *((_DWORD *)v5 + 2);
        v50 = *v38;
        v51 = v49 + 1;
        v52 = v38[1];
        if ( v49 + 1 > *((_DWORD *)v5 + 3) )
        {
          v61 = *v38;
          gameswf::array<gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::poly_vert>::reserve(
            (int)(v5 + 1),
            v51 + (v51 >> 1));
          v53 = *((_DWORD *)v5 + 2);
          v50 = v61;
        }
        else
        {
          v53 = *((_DWORD *)v5 + 2);
        }
        v54 = (_DWORD *)(*((_DWORD *)v5 + 1) + 20 * v53);
        v54[1] = v52;
        v54[3] = v49 - 1;
        v54[4] = 0;
        v54[2] = v51;
        *v54 = v50;
        *((_DWORD *)v5 + 2) = v51;
        if ( v49 )
        {
          v41 = *((float **)v5 + 1);
          v55 = v41[5 * v49];
          v56 = v41[5 * v49 + 1];
          v57 = v5[11];
          if ( v55 < v5[10] )
            v5[10] = v55;
          v58 = v56 < v57;
          v59 = v5[12];
          if ( v58 )
            v5[11] = v56;
          if ( v55 > v59 )
            v5[12] = v55;
          if ( v56 > v5[13] )
            v5[13] = v56;
        }
        else
        {
          v41 = *((float **)v5 + 1);
          v42 = *(_DWORD *)v41;
          v43 = *((_DWORD *)v41 + 1);
          v5[12] = *v41;
          *((_DWORD *)v5 + 13) = v43;
          *((_DWORD *)v5 + 10) = v42;
          *((_DWORD *)v5 + 11) = v43;
        }
        v44 = v64[2];
        if ( v44 == -1
          || (v45 = 5 * v44, v46 = v41[5 * v49], v47 = v41[v45], v66 = &v41[v45], v48 = &v41[5 * v49], v47 >= v46)
          && (v47 > v46 || v66[1] > v48[1]) )
        {
          v64[2] = v49;
        }
        v39 += 2;
        v38 += 2;
      }
      while ( v39 < v68 );
      if ( v64 )
      {
        v60 = *((_DWORD *)v5 + 2);
        if ( v60 )
        {
          *(_DWORD *)(*((_DWORD *)v5 + 1) + 20 * (v60 - 1) + 8) = *(_DWORD *)(v75 + v73);
          *(_DWORD *)(*((_DWORD *)v5 + 1) + 20 * *(_DWORD *)(v75 + v73) + 12) = *((_DWORD *)v5 + 2) - 1;
          v60 = *((_DWORD *)v5 + 2);
        }
        v64[1] = v60;
      }
    }
  }
  v12 = *((_DWORD *)v5 + 2);
  v13 = operator new(0x1Cu, 0);
  v14 = *((_DWORD *)v5 + 11);
  v15 = *((_DWORD *)v5 + 12);
  v16 = *((_DWORD *)v5 + 13);
  *v13 = *((_DWORD *)v5 + 10);
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  gameswf::grid_index_pick_good_grid_size<float>((int)(v13 + 4), v13 + 5, v5 + 10, v12 / 2);
  v17 = operator new[](4 * v13[4] * v13[5]);
  v18 = v13[4];
  v19 = v13[5];
  v13[6] = v17;
  LC_API_MEMSET_0(v17, 0, 4 * v19 * v18);
  v20 = *((_DWORD *)v5 + 6);
  *((_DWORD *)v5 + 15) = v13;
  if ( v20 > 0 )
  {
    v72 = 0;
    v74 = 0;
    do
    {
      v71 = (int *)(*((_DWORD *)v5 + 5) + v72);
      v21 = *v71;
      v22 = v71[1];
      if ( v22 - *v71 > 2 && v22 > v21 )
      {
        v23 = 20 * v21;
        v24 = v22 - 1;
        v25 = v22 - 2;
        v26 = v5;
        v70 = v71[1];
        while ( 1 )
        {
          v27 = *((_DWORD *)v26 + 1);
          v28 = 20 * v25;
          v29 = *(float *)(v27 + 20 * v24);
          v67 = *(float *)(v27 + v28);
          v62 = *(float *)(v27 + v28 + 4);
          v30 = *(float *)(v27 + 20 * v24 + 4);
          v65 = (v29 - v67) * (*(float *)(v27 + v23 + 4) - v62);
          v63 = v30 - v62;
          v31 = v65 - v63 * (*(float *)(v27 + v23) - v67) > 0.0;
          if ( v65 - v63 * (*(float *)(v27 + v23) - v67) <= 0.0 )
          {
            v32 = *((_DWORD *)v26 + 15);
            v77 = v29;
            v78 = v30;
            gameswf::grid_index_point<float,bool>::get_containing_cell_clamped(v76, v32, &v77);
            v33 = (float *)operator new(0x10u, v31);
            *v33 = v77;
            v34 = v78;
            *((_BYTE *)v33 + 8) = 0;
            v33[1] = v34;
            v35 = v76[0] + v76[1] * *(_DWORD *)(v32 + 16);
            v33[3] = *(float *)(*(_DWORD *)(v32 + 24) + 4 * v35);
            *(_DWORD *)(*(_DWORD *)(v32 + 24) + 4 * v35) = v33;
            v70 = v71[1];
          }
          v25 = v24;
          v23 += 20;
          if ( v70 <= v21 + 1 )
            break;
          v24 = v21++;
        }
        v20 = *((_DWORD *)v26 + 6);
        v5 = v26;
      }
      v36 = ++v74 < v20;
      v72 += 12;
    }
    while ( v36 );
  }
  gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::sort_and_remap(v5);
  if ( *((int *)v5 + 6) > 1 )
  {
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::join_paths_into_one_poly(v5);
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::sort_and_remap(v5);
  }
  gameswf::array<float>::reserve(**(_DWORD **)v5, 6 * (*((_DWORD *)v5 + 2) - 2));
}


// ===== 7b3a88 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::fill_debug_out(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate *) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::fill_debug_out(
        _DWORD *a1)
{
  int v2; // r2
  int v3; // r7
  int i; // r8
  int v5; // r6
  _DWORD *v6; // r5
  _DWORD *v7; // r10
  int v8; // r3
  int v9; // r9
  int v10; // r11
  _DWORD *v11; // r10
  int v12; // r3
  int v13; // r11
  _DWORD *v14; // r10
  int v15; // r3
  int v16; // r11
  _DWORD *v17; // r10
  int v18; // r3
  int v19; // r9
  _DWORD *v20; // r10
  int v21; // r3
  int v22; // r9
  _DWORD *v23; // r10
  int v24; // r3
  int v25; // r9
  _DWORD *v26; // r5
  int v27; // r3
  int v28; // r10
  _DWORD *v29; // r5
  int v30; // r3
  int v31; // r6
  int v32; // [sp+4h] [bp-10h]
  int v33; // [sp+8h] [bp-Ch]
  int v34; // [sp+Ch] [bp-8h]

  if ( a1[17] )
  {
    v2 = a1[2];
    if ( v2 > 0 )
    {
      v3 = 0;
      for ( i = 0; i < v2; ++i )
      {
        v5 = a1[1];
        v6 = (_DWORD *)(v5 + v3);
        if ( *(_DWORD *)(v5 + v3 + 16) != 2 )
        {
          v7 = (_DWORD *)a1[17];
          v8 = v7[1];
          v9 = 20 * v6[2];
          v10 = v8 + 1;
          v32 = 20 * v6[3];
          v34 = v5 + v9;
          v33 = v5 + v32;
          if ( v8 + 1 > v7[2] )
          {
            gameswf::array<float>::reserve((int)v7, v10 + (v10 >> 1));
            v8 = v7[1];
          }
          *(_DWORD *)(*v7 + 4 * v8) = *v6;
          v7[1] = v10;
          v11 = (_DWORD *)a1[17];
          v12 = v11[1];
          v13 = v12 + 1;
          if ( v12 + 1 > v11[2] )
          {
            gameswf::array<float>::reserve(a1[17], v13 + (v13 >> 1));
            v12 = v11[1];
          }
          *(_DWORD *)(*v11 + 4 * v12) = v6[1];
          v11[1] = v13;
          v14 = (_DWORD *)a1[17];
          v15 = v14[1];
          v16 = v15 + 1;
          if ( v15 + 1 > v14[2] )
          {
            gameswf::array<float>::reserve(a1[17], v16 + (v16 >> 1));
            v15 = v14[1];
          }
          *(_DWORD *)(*v14 + 4 * v15) = *(_DWORD *)(v5 + v9);
          v14[1] = v16;
          v17 = (_DWORD *)a1[17];
          v18 = v17[1];
          v19 = v18 + 1;
          if ( v18 + 1 > v17[2] )
          {
            gameswf::array<float>::reserve(a1[17], v19 + (v19 >> 1));
            v18 = v17[1];
          }
          *(_DWORD *)(*v17 + 4 * v18) = *(_DWORD *)(v34 + 4);
          v17[1] = v19;
          v20 = (_DWORD *)a1[17];
          v21 = v20[1];
          v22 = v21 + 1;
          if ( v21 + 1 > v20[2] )
          {
            gameswf::array<float>::reserve(a1[17], v22 + (v22 >> 1));
            v21 = v20[1];
          }
          *(_DWORD *)(*v20 + 4 * v21) = *v6;
          v20[1] = v22;
          v23 = (_DWORD *)a1[17];
          v24 = v23[1];
          v25 = v24 + 1;
          if ( v24 + 1 > v23[2] )
          {
            gameswf::array<float>::reserve(a1[17], v25 + (v25 >> 1));
            v24 = v23[1];
          }
          *(_DWORD *)(*v23 + 4 * v24) = v6[1];
          v23[1] = v25;
          v26 = (_DWORD *)a1[17];
          v27 = v26[1];
          v28 = v27 + 1;
          if ( v27 + 1 > v26[2] )
          {
            gameswf::array<float>::reserve(a1[17], v28 + (v28 >> 1));
            v27 = v26[1];
          }
          *(_DWORD *)(*v26 + 4 * v27) = *(_DWORD *)(v5 + v32);
          v26[1] = v28;
          v29 = (_DWORD *)a1[17];
          v30 = v29[1];
          v31 = v30 + 1;
          if ( v30 + 1 > v29[2] )
          {
            gameswf::array<float>::reserve(a1[17], v31 + (v31 >> 1));
            v30 = v29[1];
          }
          *(_DWORD *)(*v29 + 4 * v30) = *(_DWORD *)(v33 + 4);
          v29[1] = v31;
          v2 = a1[2];
        }
        v3 += 20;
      }
    }
  }
}


// ===== 7b3cd8 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_square(gameswf::array<float> *,gameswf::vec2<float> const&) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_square(
        _DWORD *a1,
        float *a2)
{
  int v4; // r3
  float v5; // r6
  int v6; // r8
  int v7; // r7
  float v8; // r10
  int v9; // r6
  float v10; // r10
  int v11; // r8
  float v12; // r10
  int v13; // r7
  float v14; // r10
  int v15; // r6
  float v16; // r10
  int v17; // r8
  float v18; // r10
  int v19; // r7
  float v20; // r10
  int v21; // r6
  float v22; // r10
  int v23; // r8
  float v24; // r10
  int v25; // r7
  float v26; // r10
  int v27; // r6
  float v28; // r10
  int v29; // r8
  float v30; // r10
  int v31; // r7
  float v32; // r10
  int v33; // r6
  float v34; // r10
  int v35; // r8
  float v36; // r5

  if ( a1 )
  {
    v4 = a1[1];
    v5 = *a2 - 200.0;
    v6 = v4 + 1;
    if ( v4 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v6 + (v6 >> 1));
      v4 = a1[1];
    }
    *(float *)(*a1 + 4 * v4) = v5;
    a1[1] = v6;
    v7 = v6 + 1;
    v8 = a2[1] - 200.0;
    if ( v6 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v7 + (v7 >> 1));
      v6 = a1[1];
    }
    *(float *)(*a1 + 4 * v6) = v8;
    a1[1] = v7;
    v9 = v7 + 1;
    v10 = *a2 + 200.0;
    if ( v7 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v9 + (v9 >> 1));
      v7 = a1[1];
    }
    *(float *)(*a1 + 4 * v7) = v10;
    a1[1] = v9;
    v11 = v9 + 1;
    v12 = a2[1] - 200.0;
    if ( v9 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v11 + (v11 >> 1));
      v9 = a1[1];
    }
    *(float *)(*a1 + 4 * v9) = v12;
    a1[1] = v11;
    v13 = v11 + 1;
    v14 = *a2 + 200.0;
    if ( v11 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v13 + (v13 >> 1));
      v11 = a1[1];
    }
    *(float *)(*a1 + 4 * v11) = v14;
    a1[1] = v13;
    v15 = v13 + 1;
    v16 = a2[1] - 200.0;
    if ( v13 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v15 + (v15 >> 1));
      v13 = a1[1];
    }
    *(float *)(*a1 + 4 * v13) = v16;
    a1[1] = v15;
    v17 = v15 + 1;
    v18 = *a2 + 200.0;
    if ( v15 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v17 + (v17 >> 1));
      v15 = a1[1];
    }
    *(float *)(*a1 + 4 * v15) = v18;
    a1[1] = v17;
    v19 = v17 + 1;
    v20 = a2[1] + 200.0;
    if ( v17 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v19 + (v19 >> 1));
      v17 = a1[1];
    }
    *(float *)(*a1 + 4 * v17) = v20;
    a1[1] = v19;
    v21 = v19 + 1;
    v22 = *a2 + 200.0;
    if ( v19 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v21 + (v21 >> 1));
      v19 = a1[1];
    }
    *(float *)(*a1 + 4 * v19) = v22;
    a1[1] = v21;
    v23 = v21 + 1;
    v24 = a2[1] + 200.0;
    if ( v21 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v23 + (v23 >> 1));
      v21 = a1[1];
    }
    *(float *)(*a1 + 4 * v21) = v24;
    a1[1] = v23;
    v25 = v23 + 1;
    v26 = *a2 - 200.0;
    if ( v23 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v25 + (v25 >> 1));
      v23 = a1[1];
    }
    *(float *)(*a1 + 4 * v23) = v26;
    a1[1] = v25;
    v27 = v25 + 1;
    v28 = a2[1] + 200.0;
    if ( v25 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v27 + (v27 >> 1));
      v25 = a1[1];
    }
    *(float *)(*a1 + 4 * v25) = v28;
    a1[1] = v27;
    v29 = v27 + 1;
    v30 = *a2 - 200.0;
    if ( v27 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v29 + (v29 >> 1));
      v27 = a1[1];
    }
    *(float *)(*a1 + 4 * v27) = v30;
    a1[1] = v29;
    v31 = v29 + 1;
    v32 = a2[1] + 200.0;
    if ( v29 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v31 + (v31 >> 1));
      v29 = a1[1];
    }
    *(float *)(*a1 + 4 * v29) = v32;
    a1[1] = v31;
    v33 = v31 + 1;
    v34 = *a2 - 200.0;
    if ( v31 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v33 + (v33 >> 1));
      v31 = a1[1];
    }
    *(float *)(*a1 + 4 * v31) = v34;
    a1[1] = v33;
    v35 = v33 + 1;
    v36 = a2[1] - 200.0;
    if ( v33 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v35 + (v35 >> 1));
      v33 = a1[1];
    }
    *(float *)(*a1 + 4 * v33) = v36;
    a1[1] = v35;
  }
}


// ===== 7b4130 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_x(gameswf::array<float> *,gameswf::vec2<float> const&) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_x(
        _DWORD *a1,
        float *a2)
{
  int v4; // r3
  float v5; // r7
  int v6; // r6
  int v7; // r8
  float v8; // r10
  int v9; // r7
  float v10; // r10
  int v11; // r6
  float v12; // r10
  int v13; // r8
  float v14; // r10
  int v15; // r7
  float v16; // r10
  int v17; // r6
  float v18; // r10
  int v19; // r8
  float v20; // r5

  if ( a1 )
  {
    v4 = a1[1];
    v5 = *a2 - 200.0;
    v6 = v4 + 1;
    if ( v4 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v6 + (v6 >> 1));
      v4 = a1[1];
    }
    *(float *)(*a1 + 4 * v4) = v5;
    a1[1] = v6;
    v7 = v6 + 1;
    v8 = a2[1] - 200.0;
    if ( v6 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v7 + (v7 >> 1));
      v6 = a1[1];
    }
    *(float *)(*a1 + 4 * v6) = v8;
    a1[1] = v7;
    v9 = v7 + 1;
    v10 = *a2 + 200.0;
    if ( v7 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v9 + (v9 >> 1));
      v7 = a1[1];
    }
    *(float *)(*a1 + 4 * v7) = v10;
    a1[1] = v9;
    v11 = v9 + 1;
    v12 = a2[1] + 200.0;
    if ( v9 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v11 + (v11 >> 1));
      v9 = a1[1];
    }
    *(float *)(*a1 + 4 * v9) = v12;
    a1[1] = v11;
    v13 = v11 + 1;
    v14 = *a2 - 200.0;
    if ( v11 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v13 + (v13 >> 1));
      v11 = a1[1];
    }
    *(float *)(*a1 + 4 * v11) = v14;
    a1[1] = v13;
    v15 = v13 + 1;
    v16 = a2[1] + 200.0;
    if ( v13 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v15 + (v15 >> 1));
      v13 = a1[1];
    }
    *(float *)(*a1 + 4 * v13) = v16;
    a1[1] = v15;
    v17 = v15 + 1;
    v18 = *a2 + 200.0;
    if ( v15 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v17 + (v17 >> 1));
      v15 = a1[1];
    }
    *(float *)(*a1 + 4 * v15) = v18;
    a1[1] = v17;
    v19 = v17 + 1;
    v20 = a2[1] - 200.0;
    if ( v17 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v19 + (v19 >> 1));
      v17 = a1[1];
    }
    *(float *)(*a1 + 4 * v17) = v20;
    a1[1] = v19;
  }
}


// ===== 7b4368 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_plus(gameswf::array<float> *,gameswf::vec2<float> const&) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_plus(
        _DWORD *a1,
        int a2)
{
  int v4; // r3
  int v5; // r6
  int v6; // r8
  float v7; // r10
  int v8; // r7
  int v9; // r3
  int v10; // r6
  float v11; // r10
  int v12; // r8
  float v13; // r10
  int v14; // r7
  int v15; // r3
  int v16; // r6
  float v17; // r10
  int v18; // r8
  int v19; // r3
  int v20; // r3
  int v21; // r3
  int v22; // r3

  if ( a1 )
  {
    v4 = a1[1];
    v5 = v4 + 1;
    if ( v4 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v5 + (v5 >> 1));
      v4 = a1[1];
    }
    *(_DWORD *)(*a1 + 4 * v4) = *(_DWORD *)a2;
    a1[1] = v5;
    v6 = v5 + 1;
    v7 = *(float *)(a2 + 4) - 200.0;
    if ( v5 + 1 > a1[2] )
    {
      gameswf::array<float>::reserve((int)a1, v6 + (v6 >> 1));
      v8 = v5 + 2;
      *(float *)(*a1 + 4 * a1[1]) = v7;
      v22 = a1[2];
      a1[1] = v6;
      if ( v5 + 2 <= v22 )
      {
LABEL_6:
        *(_DWORD *)(*a1 + 4 * v6) = *(_DWORD *)a2;
        a1[1] = v8;
        v10 = v8 + 1;
        v11 = *(float *)(a2 + 4) + 200.0;
        if ( v8 + 1 > a1[2] )
        {
          gameswf::array<float>::reserve((int)a1, v10 + (v10 >> 1));
          v8 = a1[1];
        }
        *(float *)(*a1 + 4 * v8) = v11;
        a1[1] = v10;
        v12 = v10 + 1;
        v13 = *(float *)a2 - 200.0;
        if ( v10 + 1 > a1[2] )
        {
          gameswf::array<float>::reserve((int)a1, v12 + (v12 >> 1));
          v14 = v10 + 2;
          *(float *)(*a1 + 4 * a1[1]) = v13;
          v21 = a1[2];
          a1[1] = v12;
          if ( v10 + 2 <= v21 )
          {
LABEL_10:
            *(_DWORD *)(*a1 + 4 * v12) = *(_DWORD *)(a2 + 4);
            a1[1] = v14;
            v16 = v14 + 1;
            v17 = *(float *)a2 + 200.0;
            if ( v14 + 1 > a1[2] )
            {
              gameswf::array<float>::reserve((int)a1, v16 + (v16 >> 1));
              v18 = v14 + 2;
              *(float *)(*a1 + 4 * a1[1]) = v17;
              v20 = a1[2];
              a1[1] = v16;
              if ( v14 + 2 <= v20 )
                goto LABEL_12;
            }
            else
            {
              v18 = v14 + 2;
              *(float *)(*a1 + 4 * v14) = *(float *)a2 + 200.0;
              v19 = a1[2];
              a1[1] = v16;
              if ( v14 + 2 <= v19 )
              {
LABEL_12:
                *(_DWORD *)(*a1 + 4 * v16) = *(_DWORD *)(a2 + 4);
                a1[1] = v18;
                return;
              }
            }
            gameswf::array<float>::reserve((int)a1, v18 + (v18 >> 1));
            v16 = a1[1];
            goto LABEL_12;
          }
        }
        else
        {
          v14 = v10 + 2;
          *(float *)(*a1 + 4 * v10) = *(float *)a2 - 200.0;
          v15 = a1[2];
          a1[1] = v12;
          if ( v10 + 2 <= v15 )
            goto LABEL_10;
        }
        gameswf::array<float>::reserve((int)a1, v14 + (v14 >> 1));
        v12 = a1[1];
        goto LABEL_10;
      }
    }
    else
    {
      v8 = v5 + 2;
      *(float *)(*a1 + 4 * v5) = *(float *)(a2 + 4) - 200.0;
      v9 = a1[2];
      a1[1] = v6;
      if ( v5 + 2 <= v9 )
        goto LABEL_6;
    }
    gameswf::array<float>::reserve((int)a1, v8 + (v8 >> 1));
    v6 = a1[1];
    goto LABEL_6;
  }
}


// ===== 7b45a4 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::find_ear_vertex(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate const*,int,int) =====
int __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::find_ear_vertex(
        int a1,
        int a2,
        int a3)
{
  int v3; // r6
  int v4; // r4
  float v5; // r9
  int v7; // r10
  int result; // r0
  int v9; // r12
  float v10; // r11
  int v11; // r10
  int v12; // r11
  int v13; // r9
  int v14; // r7
  int v15; // r5
  _BOOL4 v16; // r0
  int v17; // r4
  int v18; // r11
  int v19; // r9
  int v20; // r3
  float *v21; // r5
  float v22; // r6
  float v23; // r8
  _DWORD *v24; // r5
  float *v25; // r3
  int v26; // r6
  int v27; // r5
  float *v28; // r11
  int v29; // r8
  float v30; // r7
  int v31; // r8
  int v32; // r3
  int v33; // r8
  bool v34; // cc
  _DWORD *v35; // r5
  int v36; // r11
  _BOOL4 v37; // r0
  _DWORD *v38; // r5
  float *v39; // [sp+8h] [bp-74h]
  float *v40; // [sp+8h] [bp-74h]
  int v42; // [sp+14h] [bp-68h]
  float *v43; // [sp+14h] [bp-68h]
  float *v44; // [sp+18h] [bp-64h]
  int v45; // [sp+20h] [bp-5Ch]
  int v46; // [sp+20h] [bp-5Ch]
  int v47; // [sp+28h] [bp-54h]
  int v48; // [sp+28h] [bp-54h]
  int v49; // [sp+30h] [bp-4Ch]
  int i; // [sp+38h] [bp-44h]
  int v51; // [sp+3Ch] [bp-40h]
  int v53; // [sp+48h] [bp-34h]
  float v54[2]; // [sp+58h] [bp-24h] BYREF
  float v55[2]; // [sp+60h] [bp-1Ch] BYREF
  float v56[2]; // [sp+68h] [bp-14h] BYREF
  float v57[3]; // [sp+70h] [bp-Ch] BYREF

  v3 = 20 * a3;
  v4 = *(_DWORD *)(a1 + 4);
  v5 = *(float *)(v4 + 20 * a3);
  v7 = v4 + 20 * a3;
  if ( *(float *)(v4 + 20 * a2) == v5 && *(float *)(v4 + 20 * a2 + 4) == *(float *)(v7 + 4) )
  {
    result = *(_DWORD *)(v7 + 8);
    if ( result != a2 )
      return result;
    return -1;
  }
  if ( *(_DWORD *)(v7 + 16) == 1 )
    return -1;
  if ( a3 > 0 && (v39 = (float *)(v4 + 20 * (a3 - 1)), v5 == *v39) && v39[1] == *(float *)(v7 + 4) )
  {
    v36 = 20 * (a3 - 2);
    v53 = a3;
    do
    {
      if ( !--v53 )
        break;
      if ( v5 != *(float *)(v4 + v36) )
        break;
      v37 = *(float *)(v4 + v36 + 4) == *(float *)(v7 + 4);
      v36 -= 20;
    }
    while ( v37 );
  }
  else
  {
    v53 = a3;
  }
  v9 = a3 + 1;
  v42 = a3 + 1;
  if ( a3 + 1 < *(_DWORD *)(a1 + 8) && v5 == *(float *)(v4 + 20 * v9) )
  {
    v10 = *(float *)(v7 + 4);
    if ( *(float *)(v4 + 20 * v9 + 4) == v10 )
    {
      v11 = 20 * (a3 + 2);
      do
      {
        if ( ++v42 == *(_DWORD *)(a1 + 8) )
          break;
        if ( v5 != *(float *)(v4 + v11) )
          break;
        v16 = *(float *)(v4 + v11 + 4) == v10;
        v11 += 20;
      }
      while ( v16 );
    }
  }
  if ( v53 >= v42 )
    return -1;
  v12 = v53;
  v13 = 20 * v53;
  v51 = -1;
  v45 = 20 * a3;
  v49 = 20 * a2;
  for ( i = a1; ; v4 = *(_DWORD *)(i + 4) )
  {
    v14 = *(_DWORD *)(v4 + v13 + 8);
    ++v12;
    v13 += 20;
    v15 = v4 + 20 * v14;
    if ( *(_DWORD *)(v15 + 16) != 2
      && (*(float *)(v4 + v3) - *(float *)(v4 + v49)) * (*(float *)(v15 + 4) - *(float *)(v4 + v49 + 4))
       - (*(float *)(v4 + v3 + 4) - *(float *)(v4 + v49 + 4)) * (*(float *)(v4 + 20 * v14) - *(float *)(v4 + v49)) > 0.0
      && (v51 == -1
       || gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vertex_in_cone(
            (float *)(v4 + 20 * v14),
            (float *)(v4 + v49),
            (float *)(v4 + v3),
            (float *)(v4 + 20 * v51))) )
    {
      v51 = v14;
    }
    if ( v12 == v42 )
      break;
  }
  if ( v51 == -1 )
    return -1;
  v17 = *(_DWORD *)(i + 4);
  v18 = 20 * v53;
  v47 = 20 * v51;
  v19 = v53;
  do
  {
    v20 = 20 * *(_DWORD *)(v17 + v18 + 12);
    v21 = (float *)(v17 + v20);
    if ( *(_DWORD *)(v17 + v20 + 16) == 2 )
      goto LABEL_30;
    v22 = *(float *)(v17 + v20);
    v40 = (float *)(v17 + v49);
    if ( v22 == *(float *)(v17 + v49) )
    {
      v23 = v21[1];
      if ( v23 == v40[1] )
        goto LABEL_30;
    }
    else
    {
      v23 = v21[1];
    }
    v44 = (float *)(v17 + v47);
    if ( (v22 != *(float *)(v17 + 20 * v51) || v23 != v44[1])
      && (*(float *)(v17 + v45) - *(float *)(v17 + v49)) * (v23 - v40[1])
       - (*(float *)(v17 + v45 + 4) - v40[1]) * (v22 - *(float *)(v17 + v49)) > 0.0 )
    {
      if ( gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::vertex_in_cone(
             v21,
             v40,
             (float *)(v17 + v45),
             v44) )
      {
        gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(
          v54,
          i,
          a2,
          a3,
          v51);
        v24 = *(_DWORD **)(i + 68);
        gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(
          v57,
          i,
          a2,
          a3,
          v51);
        gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_square(
          v24,
          v57);
        return -1;
      }
      v17 = *(_DWORD *)(i + 4);
    }
LABEL_30:
    ++v19;
    v18 += 20;
  }
  while ( v19 != v42 );
  v25 = (float *)(v17 + v47);
  v43 = (float *)(v17 + v49);
  v46 = 0;
  v26 = v53;
  v48 = 0;
  v27 = 20 * v53;
  v28 = v25;
  do
  {
    v32 = 20 * *(_DWORD *)(v17 + v27 + 12);
    v33 = v17 + v32;
    if ( *(_DWORD *)(v17 + v32 + 16) != 2 )
    {
      if ( *(float *)(v17 + v32) == *v28 && *(float *)(v33 + 4) == v28[1] )
      {
        --v46;
      }
      else if ( *(float *)(v17 + v32) == *v43 && *(float *)(v33 + 4) == v43[1] )
      {
        ++v48;
      }
      v29 = 20 * *(_DWORD *)(v17 + v27 + 8);
      v30 = *(float *)(v17 + v29);
      v31 = v17 + v29;
      if ( *v28 == v30 && *(float *)(v31 + 4) == v28[1] )
      {
        ++v46;
      }
      else if ( v30 == *v43 && *(float *)(v31 + 4) == v43[1] )
      {
        --v48;
      }
    }
    ++v26;
    v27 += 20;
  }
  while ( v19 != v26 );
  v34 = v46 <= 0;
  if ( v46 <= 0 )
    v34 = v48 <= 0;
  if ( v34 )
  {
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(
      v54,
      i,
      a2,
      a3,
      v51);
    v38 = *(_DWORD **)(i + 68);
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(
      v56,
      i,
      a2,
      a3,
      v51);
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_x(
      v38,
      v56);
    return -1;
  }
  else if ( gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::any_reflex_vert_in_triangle(
              i,
              a2,
              a3,
              v51) )
  {
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(
      v54,
      i,
      a2,
      a3,
      v51);
    v35 = *(_DWORD **)(i + 68);
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_centroid(
      v55,
      i,
      a2,
      a3,
      v51);
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::debug_make_plus(
      v35,
      (int)v55);
    return -1;
  }
  else
  {
    return v51;
  }
}


// ===== 7b4d88 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::find_and_clip_ear(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate *) =====
int __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::find_and_clip_ear(
        int a1)
{
  int v1; // r4
  int v2; // r12
  int v4; // r7
  int v5; // r3
  int v6; // r2
  int v7; // r6
  int ear_vertex; // r0
  int v10; // r3
  int v11; // r9
  int v12; // r2
  int v13; // r8
  int v14; // r11
  int v15; // r1
  int v16; // r10
  int v17; // r4
  int v18; // r6
  int v19; // r9
  _BOOL4 v20; // r0
  int v21; // r2
  int v22; // r3
  _DWORD **v23; // r6
  int v24; // r3
  _DWORD *v25; // r4
  int v26; // r5
  int v27; // r2
  int v28; // r12
  int v29; // r9
  int v30; // r8
  int v31; // r11
  int v32; // r10
  int v33; // r7
  int v34; // r5
  int i; // r3
  int v36; // r2
  _DWORD *v37; // r4
  _DWORD *v38; // r3
  int v39; // [sp+4h] [bp-18h]
  int v40; // [sp+8h] [bp-14h]
  int v41; // [sp+8h] [bp-14h]
  int v42; // [sp+Ch] [bp-10h]
  int v43; // [sp+10h] [bp-Ch]

  v1 = *(_DWORD *)(a1 + 56);
  v2 = *(_DWORD *)(a1 + 8);
LABEL_2:
  v4 = 20 * v1;
  v5 = v1 + 1;
  if ( v1 >= v2 )
    return 0;
  while ( 1 )
  {
    v6 = *(_DWORD *)(a1 + 4) + v4;
    v7 = *(_DWORD *)(v6 + 12);
    *(_DWORD *)(a1 + 56) = v5;
    if ( *(_DWORD *)(v6 + 16) == 2 || v7 == v1 )
    {
      v1 = v5;
      goto LABEL_2;
    }
    ear_vertex = gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::find_ear_vertex(
                   a1,
                   v7,
                   v1);
    if ( ear_vertex >= 0 )
      break;
    v1 = *(_DWORD *)(a1 + 56);
    v2 = *(_DWORD *)(a1 + 8);
    v4 = 20 * v1;
    v5 = v1 + 1;
    if ( v1 >= v2 )
      return 0;
  }
  v10 = *(_DWORD *)(a1 + 4);
  v11 = ear_vertex;
  v40 = 20 * ear_vertex;
  v12 = *(_DWORD *)(v10 + 20 * ear_vertex + 12);
  v13 = ear_vertex;
  v14 = v7;
  v43 = v1;
  if ( v1 != v12 )
  {
    v15 = *(_DWORD *)(v10 + v4 + 8);
    *(_DWORD *)(v10 + 20 * v12 + 8) = v15;
    *(_DWORD *)(*(_DWORD *)(a1 + 4) + 20 * v15 + 12) = v12;
    *(_DWORD *)(*(_DWORD *)(a1 + 4) + v40 + 12) = v1;
    *(_DWORD *)(*(_DWORD *)(a1 + 4) + v4 + 8) = ear_vertex;
    v10 = *(_DWORD *)(a1 + 4);
  }
  *(_DWORD *)(v10 + v4 + 16) = 2;
  v42 = 20 * v7;
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + v4 + 12) = v1;
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + v4 + 8) = v1;
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + 20 * v7 + 8) = ear_vertex;
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + v40 + 12) = v7;
  if ( *(_DWORD *)(a1 + 56) > v7 )
    *(_DWORD *)(a1 + 56) = v7;
  else
    v7 = *(_DWORD *)(a1 + 56);
  if ( v1 < v7 )
    *(_DWORD *)(a1 + 56) = v1;
  else
    v1 = v7;
  if ( v1 > ear_vertex )
    *(_DWORD *)(a1 + 56) = ear_vertex;
  else
    v11 = v1;
  if ( v11 > 0 )
  {
    v16 = v11 - 1;
    v17 = *(_DWORD *)(a1 + 4);
    v18 = 20 * (v11 - 1);
    if ( *(float *)(v17 + v18) == *(float *)(v17 + 20 * v11)
      && *(float *)(v17 + v18 + 4) == *(float *)(v17 + 20 * v11 + 4) )
    {
      v19 = 20 * (v11 - 2);
      while ( 1 )
      {
        *(_DWORD *)(a1 + 56) = v16;
        if ( !v16 )
          break;
        v20 = *(float *)(v17 + v19) == *(float *)(v17 + v18);
        v21 = v17 + v19;
        v22 = v17 + v18;
        v19 -= 20;
        if ( !v20 )
          break;
        v18 -= 20;
        if ( *(float *)(v21 + 4) != *(float *)(v22 + 4) )
          break;
        --v16;
      }
    }
  }
  if ( v14 == v13 || v43 == v13 )
    return 1;
  v23 = *(_DWORD ***)a1;
  v24 = *(_DWORD *)(a1 + 4);
  v25 = **(_DWORD ***)a1;
  v26 = v25[1];
  v27 = v24 + v40;
  v28 = *(_DWORD *)(v24 + v40);
  v29 = *(_DWORD *)(v24 + v42);
  v30 = v26 + 6;
  v41 = *(_DWORD *)(v24 + v42 + 4);
  v31 = *(_DWORD *)(v24 + v4);
  v32 = *(_DWORD *)(v24 + v4 + 4);
  v33 = *(_DWORD *)(v27 + 4);
  if ( v26 != -6 && v30 > v25[2] )
  {
    v39 = v28;
    gameswf::array<float>::reserve((int)v25, v30 + (v30 >> 1));
    v28 = v39;
  }
  v34 = 4 * v26;
  for ( i = 0; i != 24; i += 4 )
  {
    v36 = v34 + i;
    *(_DWORD *)(*v25 + v36) = 0;
  }
  v25[1] = v30;
  v37 = (_DWORD *)(**v23 + 4 * ((*v23)[1] - 1));
  v38 = v37 - 5;
  *(v37 - 5) = v29;
  v38[4] = v28;
  v38[2] = v31;
  v38[3] = v32;
  v38[1] = v41;
  *v37 = v33;
  return 1;
}


// ===== 7b5098 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::triangulate_plane(gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate *) =====
void __fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::triangulate_plane(
        _DWORD *a1)
{
  int v2; // r3
  int v3; // r3
  _DWORD *v4; // r0
  int v5; // r3
  int v6; // r2

LABEL_1:
  if ( gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::find_and_clip_ear((int)a1) )
  {
    while ( 1 )
    {
      v2 = a1[16];
      if ( v2 > 0 )
      {
        v3 = v2 - 1;
        a1[16] = v3;
        if ( !v3 )
          break;
      }
      v4 = (_DWORD *)a1[17];
      if ( !v4 )
        goto LABEL_1;
      v5 = v4[1];
      if ( v5 < 0 )
      {
        v6 = 4 * v5;
        do
        {
          ++v5;
          *(_DWORD *)(*v4 + v6) = 0;
          v6 += 4;
        }
        while ( v5 );
        v4[1] = 0;
      }
      else
      {
        v4[1] = 0;
      }
      if ( !gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::find_and_clip_ear((int)a1) )
        return;
    }
    gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::fill_debug_out(a1);
  }
}


// ===== 7b5134 gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::compute_triangulation_impl(gameswf::ear_clip_triangulate::ear_clip_array_io<float>*,gameswf::ear_clip_triangulate::ear_clip_array_io<float>*,int,gameswf::array<float> *) =====
_DWORD *__fastcall gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::compute_triangulation_impl(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  float v5[4]; // [sp+8h] [bp-48h] BYREF
  char v6; // [sp+18h] [bp-38h]
  int v7; // [sp+1Ch] [bp-34h]
  int v8; // [sp+20h] [bp-30h]
  int v9; // [sp+24h] [bp-2Ch]
  char v10; // [sp+28h] [bp-28h]
  int v11; // [sp+2Ch] [bp-24h]
  int v12; // [sp+40h] [bp-10h]
  int v13; // [sp+44h] [bp-Ch]

  v13 = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::init(
    v5,
    a1,
    a2,
    a3,
    a4);
  gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::triangulate_plane(v5);
  return gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::tristate::~tristate(v5);
}


// ===== 7b51ac gameswf::ear_clip_triangulate::compute(gameswf::array<float> *,int,gameswf::array<float> const*,int,gameswf::array<float> *) =====
_DWORD *__fastcall gameswf::ear_clip_triangulate::compute(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = 0;
  return gameswf::ear_clip_wrapper<float,gameswf::ear_clip_triangulate::ear_clip_array_io<float>,gameswf::ear_clip_triangulate::ear_clip_array_io<float>>::compute_triangulation_impl(
           (int)v6,
           v6,
           a4,
           a5);
}


// ===== 7b51dc gameswf::image_base::image_base(uchar *,int,int,int,gameswf::image_base::id_image) =====
_DWORD *__fastcall gameswf::image_base::image_base(_DWORD *result, int a2, int a3, int a4, int a5, int a6)
{
  result[5] = a5;
  result[2] = a2;
  *result = off_9911F0;
  result[3] = a3;
  result[4] = a4;
  result[1] = a6;
  return result;
}


// ===== 7b5224 gameswf::image_base::image_base(uchar *,int,int,int,gameswf::image_base::id_image) =====
_DWORD *__fastcall gameswf::image_base::image_base(_DWORD *result, int a2, int a3, int a4, int a5, int a6)
{
  result[5] = a5;
  result[2] = a2;
  *result = off_9911F0;
  result[3] = a3;
  result[4] = a4;
  result[1] = a6;
  return result;
}


// ===== 7b526c gameswf::scanline(gameswf::image_base *,int) =====
int __fastcall gameswf::scanline(int a1, int a2)
{
  return *(_DWORD *)(a1 + 8) + *(_DWORD *)(a1 + 20) * a2;
}


// ===== 7b527c gameswf::scanline(gameswf::image_base const*,int) =====
int __fastcall gameswf::scanline(int a1, int a2)
{
  return *(_DWORD *)(a1 + 8) + *(_DWORD *)(a1 + 20) * a2;
}


// ===== 7b528c gameswf::image_rgba::set_pixel(int,int,uchar,uchar,uchar,uchar) =====
int __fastcall gameswf::image_rgba::set_pixel(
        gameswf::image_rgba *this,
        int a2,
        int a3,
        unsigned __int8 a4,
        char a5,
        char a6,
        char a7)
{
  int result; // r0
  _BYTE *v10; // r3

  result = gameswf::scanline((int)this, a3);
  v10 = (_BYTE *)(result + 4 * a2);
  *v10 = a4;
  v10[3] = a7;
  v10[1] = a5;
  v10[2] = a6;
  return result;
}


// ===== 7b52c4 gameswf::image_alpha::set_pixel(int,int,uchar) =====
int __fastcall gameswf::image_alpha::set_pixel(gameswf::image_alpha *this, int a2, int a3, unsigned __int8 a4)
{
  int result; // r0

  result = gameswf::scanline((int)this, a3);
  *(_BYTE *)(result + a2) = a4;
  return result;
}


// ===== 7b52e0 gameswf::image_alpha::compute_hash(void) =====
int __fastcall gameswf::image_alpha::compute_hash(gameswf::image_alpha *this)
{
  int v2; // r4
  int v3; // r3
  int v4; // r5
  int v5; // r7
  int v6; // r0
  int v7; // r3

  v2 = 5381;
  v3 = 4;
  do
    v2 = (33 * v2) ^ *((unsigned __int8 *)this + --v3 + 12);
  while ( v3 );
  v4 = 4;
  do
    v2 = (33 * v2) ^ *((unsigned __int8 *)this + --v4 + 16);
  while ( v4 );
  v5 = *((_DWORD *)this + 4);
  if ( v5 > 0 )
  {
    do
    {
      v6 = gameswf::scanline((int)this, v4);
      v7 = *((_DWORD *)this + 3);
      if ( v7 > 0 )
      {
        do
        {
          --v7;
          v2 = (33 * v2) ^ *(unsigned __int8 *)(v6 + v7);
        }
        while ( v7 );
      }
      ++v4;
    }
    while ( v4 != v5 );
  }
  return v2;
}


// ===== 7b537c gameswf::make_next_miplevel(gameswf::image_rgb *) =====
int __fastcall gameswf::make_next_miplevel(_DWORD *a1)
{
  int v1; // r3
  int v2; // r2
  int v3; // r1
  int v4; // r8
  int v6; // r1
  unsigned __int8 *v7; // r2
  int v8; // r0
  _BYTE *v9; // r1
  unsigned __int8 *v10; // r3
  int v11; // r9
  int v12; // r10
  int v13; // r12
  int v14; // r7
  int v15; // r6
  int v16; // r4
  int v17; // r11
  int v18; // t1
  bool v19; // cc
  int v20; // [sp+4h] [bp-2Ch]
  int v21; // [sp+8h] [bp-28h]
  int v22; // [sp+Ch] [bp-24h]
  int v23; // [sp+10h] [bp-20h]
  int v24; // [sp+14h] [bp-1Ch]
  int v26; // [sp+1Ch] [bp-14h]
  int v27; // [sp+24h] [bp-Ch]
  unsigned int v28; // [sp+28h] [bp-8h]
  int v29; // [sp+2Ch] [bp-4h]

  v1 = a1[3];
  v2 = a1[4];
  v24 = v1 >> 1;
  if ( v1 >> 1 <= 0 )
  {
    v3 = 2;
    v28 = 4;
    v24 = 1;
  }
  else
  {
    v3 = 2 * v24;
    v28 = (3 * v24 + 3) & 0xFFFFFFFC;
  }
  v4 = v2 >> 1;
  if ( v2 >> 1 < 1 )
    v4 = 1;
  if ( v1 == v3 && v2 == 2 * v4 )
  {
    v27 = 0;
    v26 = 0;
    v29 = a1[5];
    do
    {
      v6 = a1[2];
      v7 = (unsigned __int8 *)(v6 + v29 * 2 * v26);
      v8 = 0;
      v9 = (_BYTE *)(v6 + v27);
      v10 = &v7[v29];
      do
      {
        v11 = v7[4];
        v12 = v7[1];
        v20 = v7[5];
        v13 = v10[2];
        v14 = v7[2];
        v15 = v7[3];
        v16 = v10[1];
        v17 = *v10;
        v18 = *v7;
        v7 += 6;
        v21 = v10[4];
        v22 = v10[5];
        v23 = v10[3];
        ++v8;
        v10 += 6;
        *v9 = (v15 + v18 + v17 + v23) >> 2;
        v9[1] = (v11 + v12 + v16 + v21) >> 2;
        v9[2] = (v20 + v14 + v13 + v22) >> 2;
        v9 += 3;
      }
      while ( v24 > v8 );
      v19 = v4 <= ++v26;
      v27 += v28;
    }
    while ( !v19 );
  }
  a1[5] = v28;
  a1[3] = v24;
  a1[4] = v4;
  return v4;
}


// ===== 7b552c gameswf::make_next_miplevel(gameswf::image_rgba *) =====
int __fastcall gameswf::make_next_miplevel(gameswf *this, gameswf::image_rgba *a2)
{
  int v2; // r4
  int v3; // r8
  int v4; // r12
  int v5; // r3
  int v6; // r2
  int result; // r0
  int v8; // r4
  int v9; // r1
  int v10; // r1
  unsigned __int8 *v11; // r2
  int v12; // r0
  _BYTE *v13; // r1
  unsigned __int8 *v14; // r3
  int v15; // r9
  int v16; // r10
  int v17; // r4
  int v18; // r7
  int v19; // r6
  int v20; // r5
  int v21; // r11
  int v22; // t1
  int v23; // r8
  bool v24; // cc
  int v25; // [sp+4h] [bp-3Ch]
  int v26; // [sp+8h] [bp-38h]
  int v27; // [sp+Ch] [bp-34h]
  int v28; // [sp+10h] [bp-30h]
  int v29; // [sp+14h] [bp-2Ch]
  int v30; // [sp+18h] [bp-28h]
  int v31; // [sp+1Ch] [bp-24h]
  int v32; // [sp+24h] [bp-1Ch]
  int v34; // [sp+2Ch] [bp-14h]
  int v35; // [sp+30h] [bp-10h]
  int v36; // [sp+34h] [bp-Ch]
  int v37; // [sp+38h] [bp-8h]
  int v38; // [sp+3Ch] [bp-4h]

  v5 = *((_DWORD *)this + 3);
  v6 = *((_DWORD *)this + 4);
  result = v5 >> 1;
  v32 = v5 >> 1;
  if ( v5 >> 1 > 0 )
  {
    v4 = v5 >> 1;
    result = v5 >> 1;
  }
  else
  {
    v2 = 4;
  }
  if ( v5 >> 1 <= 0 )
    v37 = v2;
  v8 = v6 >> 1;
  if ( v5 >> 1 > 0 )
    v4 *= 4;
  else
    v3 = 1;
  if ( v5 >> 1 > 0 )
    v9 = 2 * result;
  else
    v9 = 2;
  if ( v5 >> 1 > 0 )
    v37 = v4;
  else
    v32 = v3;
  if ( v6 >> 1 < 1 )
    v8 = 1;
  v35 = v8;
  if ( v5 == v9 && v6 == 2 * v8 )
  {
    v36 = 0;
    v34 = 0;
    v38 = *((_DWORD *)this + 5);
    do
    {
      v10 = *((_DWORD *)this + 2);
      v11 = (unsigned __int8 *)(v10 + v38 * 2 * v34);
      v12 = 0;
      v13 = (_BYTE *)(v10 + v36);
      v14 = &v11[v38];
      do
      {
        v15 = v11[5];
        v16 = v11[1];
        v25 = v11[6];
        v17 = v11[4];
        v18 = v11[2];
        v19 = v11[7];
        v20 = v11[3];
        v21 = v14[1];
        v22 = *v11;
        v11 += 8;
        v27 = v14[2];
        v29 = v14[3];
        v31 = *v14;
        ++v12;
        v26 = v14[5];
        v28 = v14[6];
        v30 = v14[7];
        v23 = v14[4];
        v14 += 8;
        *v13 = (v17 + v22 + v31 + v23) >> 2;
        v13[1] = (unsigned int)(v15 + v16 + v21 + v26) >> 2;
        v13[2] = (v25 + v18 + v27 + v28) >> 2;
        v13[3] = (v19 + v20 + v29 + v30) >> 2;
        v13 += 4;
      }
      while ( v32 > v12 );
      result = v35;
      v24 = v35 <= ++v34;
      v36 += v37;
    }
    while ( !v24 );
  }
  *((_DWORD *)this + 5) = v37;
  *((_DWORD *)this + 3) = v32;
  *((_DWORD *)this + 4) = v35;
  return result;
}


// ===== 7b5714 gameswf::image_alpha::image_alpha(int,int) =====
gameswf::image_alpha *__fastcall gameswf::image_alpha::image_alpha(gameswf::image_alpha *this, int a2, int a3)
{
  int v4; // r2
  int v5; // r0

  gameswf::image_base::image_base(this, 0, a2, a3, a2, 3);
  v4 = *((_DWORD *)this + 4);
  v5 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_9911C0;
  *((_DWORD *)this + 2) = operator new[](v5 * v4);
  return this;
}


// ===== 7b5780 gameswf::image_alpha::image_alpha(int,int) =====
gameswf::image_alpha *__fastcall gameswf::image_alpha::image_alpha(gameswf::image_alpha *this, int a2, int a3)
{
  int v4; // r2
  int v5; // r0

  gameswf::image_base::image_base(this, 0, a2, a3, a2, 3);
  v4 = *((_DWORD *)this + 4);
  v5 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_9911C0;
  *((_DWORD *)this + 2) = operator new[](v5 * v4);
  return this;
}


// ===== 7b57ec gameswf::image_rgba::image_rgba(int,int) =====
gameswf::image_rgba *__fastcall gameswf::image_rgba::image_rgba(gameswf::image_rgba *this, int a2, int a3)
{
  int v4; // r2
  int v5; // r0

  gameswf::image_base::image_base(this, 0, a2, a3, 4 * a2, 2);
  v4 = *((_DWORD *)this + 4);
  v5 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_9911D0;
  *((_DWORD *)this + 2) = operator new[](v5 * v4);
  return this;
}


// ===== 7b585c gameswf::image_rgba::image_rgba(int,int) =====
gameswf::image_rgba *__fastcall gameswf::image_rgba::image_rgba(gameswf::image_rgba *this, int a2, int a3)
{
  int v4; // r2
  int v5; // r0

  gameswf::image_base::image_base(this, 0, a2, a3, 4 * a2, 2);
  v4 = *((_DWORD *)this + 4);
  v5 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_9911D0;
  *((_DWORD *)this + 2) = operator new[](v5 * v4);
  return this;
}


// ===== 7b58cc gameswf::image_rgb::image_rgb(int,int) =====
gameswf::image_rgb *__fastcall gameswf::image_rgb::image_rgb(gameswf::image_rgb *this, int a2, int a3)
{
  int v4; // r2
  int v5; // r0

  gameswf::image_base::image_base(this, 0, a2, a3, (3 * (a2 + 1)) & 0xFFFFFFFC, 1);
  v4 = *((_DWORD *)this + 4);
  v5 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_9911E0;
  *((_DWORD *)this + 2) = operator new[](v5 * v4);
  return this;
}


// ===== 7b5944 gameswf::image_rgb::image_rgb(int,int) =====
gameswf::image_rgb *__fastcall gameswf::image_rgb::image_rgb(gameswf::image_rgb *this, int a2, int a3)
{
  int v4; // r2
  int v5; // r0

  gameswf::image_base::image_base(this, 0, a2, a3, (3 * (a2 + 1)) & 0xFFFFFFFC, 1);
  v4 = *((_DWORD *)this + 4);
  v5 = *((_DWORD *)this + 5);
  *(_DWORD *)this = off_9911E0;
  *((_DWORD *)this + 2) = operator new[](v5 * v4);
  return this;
}


// ===== 7b59bc gameswf::image_base::~image_base() =====
void __fastcall gameswf::image_base::~image_base(gameswf::image_base *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_9911F0;
  if ( v2 )
  {
    gameswf::free_internal(v2);
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 7b5a08 gameswf::image_base::~image_base() =====
void __fastcall gameswf::image_base::~image_base(gameswf::image_base *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_9911F0;
  if ( v2 )
  {
    gameswf::free_internal(v2);
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 7b5a54 gameswf::image_alpha::~image_alpha() =====
void __fastcall gameswf::image_alpha::~image_alpha(gameswf::image_alpha *this)
{
  *(_DWORD *)this = off_9911C0;
  gameswf::image_base::~image_base(this);
}


// ===== 7b5a88 gameswf::image_alpha::~image_alpha() =====
void __fastcall gameswf::image_alpha::~image_alpha(gameswf::image_alpha *this)
{
  *(_DWORD *)this = off_9911C0;
  gameswf::image_base::~image_base(this);
}


// ===== 7b5abc gameswf::image_rgba::~image_rgba() =====
void __fastcall gameswf::image_rgba::~image_rgba(gameswf::image_rgba *this)
{
  *(_DWORD *)this = off_9911D0;
  gameswf::image_base::~image_base(this);
}


// ===== 7b5af0 gameswf::image_rgba::~image_rgba() =====
void __fastcall gameswf::image_rgba::~image_rgba(gameswf::image_rgba *this)
{
  *(_DWORD *)this = off_9911D0;
  gameswf::image_base::~image_base(this);
}


// ===== 7b5b24 gameswf::image_rgb::~image_rgb() =====
void __fastcall gameswf::image_rgb::~image_rgb(gameswf::image_rgb *this)
{
  *(_DWORD *)this = off_9911E0;
  gameswf::image_base::~image_base(this);
}


// ===== 7b5b58 gameswf::image_rgb::~image_rgb() =====
void __fastcall gameswf::image_rgb::~image_rgb(gameswf::image_rgb *this)
{
  *(_DWORD *)this = off_9911E0;
  gameswf::image_base::~image_base(this);
}


// ===== 7b5b8c gameswf::image_alpha::operator==(gameswf::image_alpha const&) =====
int __fastcall gameswf::image_alpha::operator==(int a1, int a2)
{
  int v5; // r7
  int v6; // r4
  const void *v7; // r8
  const void *v8; // r0

  if ( *(_DWORD *)(a1 + 12) != *(_DWORD *)(a2 + 12) )
    return 0;
  v5 = *(_DWORD *)(a1 + 16);
  if ( v5 != *(_DWORD *)(a2 + 16) )
    return 0;
  if ( v5 > 0 )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = (const void *)gameswf::scanline(a1, v6);
      v8 = (const void *)gameswf::scanline(a2, v6++);
      if ( memcmp(v7, v8, *(_DWORD *)(a1 + 12)) )
        break;
      if ( v6 == v5 )
        return 1;
    }
    return 0;
  }
  return 1;
}


// ===== 7b5c14 gameswf::image_base::~image_base() =====
void __fastcall gameswf::image_base::~image_base(gameswf::image_base *this)
{
  gameswf::image_base::~image_base(this);
  LC_API_FREE_0(this);
}


// ===== 7b5c30 gameswf::image_alpha::~image_alpha() =====
void __fastcall gameswf::image_alpha::~image_alpha(gameswf::image_alpha *this)
{
  gameswf::image_alpha::~image_alpha(this);
  LC_API_FREE_0(this);
}


// ===== 7b5c4c gameswf::image_rgba::~image_rgba() =====
void __fastcall gameswf::image_rgba::~image_rgba(gameswf::image_rgba *this)
{
  gameswf::image_rgba::~image_rgba(this);
  LC_API_FREE_0(this);
}


// ===== 7b5c68 gameswf::image_rgb::~image_rgb() =====
void __fastcall gameswf::image_rgb::~image_rgb(gameswf::image_rgb *this)
{
  gameswf::image_rgb::~image_rgb(this);
  LC_API_FREE_0(this);
}


// ===== 7b5c84 gameswf::create_alpha(int,int) =====
gameswf::image_alpha *__fastcall gameswf::create_alpha(gameswf *this, int a2, int a3)
{
  gameswf::image_alpha *v5; // r4

  v5 = (gameswf::image_alpha *)operator new(0x18u, 0);
  gameswf::image_alpha::image_alpha(v5, (int)this, a2);
  return v5;
}


// ===== 7b5cb4 gameswf::create_rgba(int,int) =====
gameswf::image_rgba *__fastcall gameswf::create_rgba(gameswf *this, int a2, int a3)
{
  gameswf::image_rgba *v5; // r4

  v5 = (gameswf::image_rgba *)operator new(0x18u, 0);
  gameswf::image_rgba::image_rgba(v5, (int)this, a2);
  return v5;
}


// ===== 7b5ce4 gameswf::read_swf_jpeg3(gameswf::tu_file *) =====
gameswf::image_rgba *__fastcall gameswf::read_swf_jpeg3(gameswf *this, gameswf::tu_file *a2)
{
  void (__fastcall ***swf_jpeg2_header_only)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r4
  gameswf::image_rgba *rgba; // r8
  gameswf *v5; // r5
  int v6; // r0
  int v7; // r2
  int v8; // r0
  char *v9; // r7
  int i; // r6
  char *v11; // r9
  int v12; // r10
  int v13; // r11
  char v14; // r3

  swf_jpeg2_header_only = (void (__fastcall ***)(_DWORD))gameswf::jpeg::input::create_swf_jpeg2_header_only(this, a2);
  v3 = swf_jpeg2_header_only;
  if ( !swf_jpeg2_header_only )
    return nullptr;
  (*swf_jpeg2_header_only)[3](swf_jpeg2_header_only);
  v5 = (gameswf *)((int (__fastcall *)(_DWORD))(*v3)[6])(v3);
  v6 = ((int (__fastcall *)(_DWORD))(*v3)[5])(v3);
  rgba = gameswf::create_rgba(v5, v6, v7);
  v8 = ((int (__fastcall *)(_DWORD))(*v3)[6])(v3);
  v9 = (char *)operator new[](3 * v8);
  for ( i = 0; i < ((int (__fastcall *)(_DWORD))(*v3)[5])(v3); ++i )
  {
    ((void (__fastcall *)(void (__fastcall ***)(_DWORD), char *))(*v3)[7])(v3, v9);
    v11 = v9;
    v12 = gameswf::scanline((int)rgba, i);
    v13 = 0;
    while ( 1 )
    {
      v12 += 4;
      v11 += 3;
      if ( v13 >= ((int (__fastcall *)(_DWORD))(*v3)[6])(v3) )
        break;
      ++v13;
      *(_BYTE *)(v12 - 4) = *(v11 - 3);
      *(_BYTE *)(v12 - 3) = *(v11 - 2);
      v14 = *(v11 - 1);
      *(_BYTE *)(v12 - 1) = -1;
      *(_BYTE *)(v12 - 2) = v14;
    }
  }
  (*v3)[6](v3);
  if ( v9 )
    gameswf::free_internal(v9);
  (*v3)[4](v3);
  gameswf::destruct<gameswf::jpeg::input>(v3);
  return rgba;
}


// ===== 7b5e48 gameswf::create_rgb(int,int) =====
gameswf::image_rgb *__fastcall gameswf::create_rgb(gameswf *this, int a2, int a3)
{
  gameswf::image_rgb *v5; // r4

  v5 = (gameswf::image_rgb *)operator new(0x18u, 0);
  gameswf::image_rgb::image_rgb(v5, (int)this, a2);
  return v5;
}


// ===== 7b5e78 gameswf::read_swf_jpeg2_with_tables(gameswf::jpeg::input *) =====
int __fastcall gameswf::read_swf_jpeg2_with_tables(int a1)
{
  gameswf *v2; // r5
  int v3; // r0
  int v4; // r2
  gameswf::image_rgb *rgb; // r0
  int v6; // r5
  int v7; // r7
  void (__fastcall *v8)(int, int); // r6
  int v9; // r0
  int v10; // r0
  int v11; // r1

  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 12))(a1);
  v2 = (gameswf *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 24))(a1);
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 20))(a1);
  rgb = gameswf::create_rgb(v2, v3, v4);
  v6 = 0;
  v7 = (int)rgb;
  while ( 1 )
  {
    v10 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 20))(a1);
    v11 = v6;
    if ( v6 >= v10 )
      break;
    ++v6;
    v8 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 28);
    v9 = gameswf::scanline(v7, v11);
    v8(a1, v9);
  }
  (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 16))(a1, v6);
  return v7;
}


// ===== 7b5f1c gameswf::read_swf_jpeg2(gameswf::tu_file *) =====
int __fastcall gameswf::read_swf_jpeg2(gameswf *this, gameswf::tu_file *a2)
{
  int swf_jpeg2_header_only; // r0
  void (__fastcall ***v3)(_DWORD); // r5
  int swf_jpeg2_with_tables; // r4

  swf_jpeg2_header_only = gameswf::jpeg::input::create_swf_jpeg2_header_only(this, a2);
  v3 = (void (__fastcall ***)(_DWORD))swf_jpeg2_header_only;
  if ( !swf_jpeg2_header_only )
    return 0;
  swf_jpeg2_with_tables = gameswf::read_swf_jpeg2_with_tables(swf_jpeg2_header_only);
  gameswf::destruct<gameswf::jpeg::input>(v3);
  return swf_jpeg2_with_tables;
}


// ===== 7b5f48 gameswf::read_jpeg(gameswf::tu_file *) =====
int __fastcall gameswf::read_jpeg(gameswf *this, gameswf::tu_file *a2)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r4
  int v4; // r7
  gameswf *v5; // r5
  int v6; // r0
  int v7; // r2
  gameswf::image_rgb *rgb; // r0
  int v9; // r5
  void (__fastcall *v10)(_DWORD); // r6
  int v11; // r0
  bool v12; // cc
  int v13; // r1

  v2 = (void (__fastcall ***)(_DWORD))gameswf::jpeg::input::create(this, a2);
  v3 = v2;
  if ( !v2 )
    return 0;
  v5 = (gameswf *)((int (__fastcall *)(_DWORD))(*v2)[6])(v2);
  v6 = ((int (__fastcall *)(_DWORD))(*v3)[5])(v3);
  rgb = gameswf::create_rgb(v5, v6, v7);
  v9 = 0;
  v4 = (int)rgb;
  while ( 1 )
  {
    v12 = v9 < ((int (__fastcall *)(_DWORD))(*v3)[5])(v3);
    v13 = v9;
    if ( !v12 )
      break;
    ++v9;
    v10 = (*v3)[7];
    v11 = gameswf::scanline(v4, v13);
    ((void (__fastcall *)(void (__fastcall ***)(_DWORD), int))v10)(v3, v11);
  }
  gameswf::destruct<gameswf::jpeg::input>(v3);
  return v4;
}


// ===== 7b5fe0 gameswf::read_jpeg(char const*) =====
int __fastcall gameswf::read_jpeg(gameswf *this, const char *a2)
{
  gameswf::tu_file *v2; // r1
  int jpeg; // r5
  _DWORD v5[11]; // [sp+0h] [bp-2Ch] BYREF

  gameswf::tu_file::tu_file((gameswf::tu_file *)v5, (const char *)this, "rb");
  if ( v5[9] )
    jpeg = 0;
  else
    jpeg = gameswf::read_jpeg((gameswf *)v5, v2);
  gameswf::tu_file::~tu_file((gameswf::tu_file *)v5);
  return jpeg;
}


// ===== 7b6034 gameswf::write_tga(gameswf::tu_file *,gameswf::image_rgba *) =====
int __fastcall gameswf::write_tga(_DWORD *a1, int a2)
{
  int v2; // r10
  int result; // r0
  _BYTE *v6; // r5
  int v7; // r7
  int v8; // r2
  int v9; // r2
  int v10; // r2
  __int16 v11; // [sp+6h] [bp-6h] BYREF

  v2 = 0;
  LOBYTE(v11) = 0;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 1, *a1);
  LOBYTE(v11) = 0;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 1, *a1);
  LOBYTE(v11) = 2;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 1, *a1);
  v11 = 0;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 2, *a1);
  v11 = 0;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 2, *a1);
  LOBYTE(v11) = 0;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 1, *a1);
  v11 = 0;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 2, *a1);
  v11 = 0;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 2, *a1);
  v11 = *(_WORD *)(a2 + 12);
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 2, *a1);
  v11 = *(_WORD *)(a2 + 16);
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 2, *a1);
  LOBYTE(v11) = 32;
  ((void (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 1, *a1);
  LOBYTE(v11) = 0;
  result = ((int (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 1, *a1);
  if ( *(int *)(a2 + 16) > 0 )
  {
    do
    {
      result = gameswf::scanline(a2, v2);
      if ( *(int *)(a2 + 12) > 0 )
      {
        v6 = (_BYTE *)result;
        v7 = 0;
        do
        {
          v8 = *a1;
          LOBYTE(v11) = *v6;
          ((void (__fastcall *)(__int16 *, int, int))a1[3])(&v11, 1, v8);
          v9 = *a1;
          LOBYTE(v11) = v6[1];
          ((void (__fastcall *)(__int16 *, int, int))a1[3])(&v11, 1, v9);
          v10 = *a1;
          LOBYTE(v11) = v6[2];
          ((void (__fastcall *)(__int16 *, int, int))a1[3])(&v11, 1, v10);
          LOBYTE(v11) = v6[3];
          result = ((int (__fastcall *)(__int16 *, int, _DWORD))a1[3])(&v11, 1, *a1);
          ++v7;
          v6 += 4;
        }
        while ( *(_DWORD *)(a2 + 12) > v7 );
      }
      ++v2;
    }
    while ( *(_DWORD *)(a2 + 16) > v2 );
  }
  return result;
}


// ===== 7b6248 gameswf::jpeg::input::create(gameswf::tu_file *) =====
int gameswf::jpeg::input::create()
{
  return 0;
}


// ===== 7b6250 gameswf::jpeg::input::create_swf_jpeg2_header_only(gameswf::tu_file *) =====
int gameswf::jpeg::input::create_swf_jpeg2_header_only()
{
  return 0;
}


// ===== 7b6258 gameswf::jpeg::output::create(gameswf::tu_file *,int,int,int) =====
int gameswf::jpeg::output::create()
{
  return 0;
}


// ===== 7b6260 gameswf::membuf::capacity(int) =====
int __fastcall gameswf::membuf::capacity(gameswf::membuf *this, int a2)
{
  bool v2; // zf
  int result; // r0

  v2 = this == nullptr;
  if ( this )
    result = (int)this + 255;
  else
    result = 256;
  if ( !v2 )
    return result & 0xFFFFFF00;
  return result;
}


// ===== 7b6274 gameswf::membuf::membuf(void) =====
int __fastcall gameswf::membuf::membuf(int this)
{
  *(_BYTE *)(this + 12) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  return this;
}


// ===== 7b628c gameswf::membuf::membuf(void) =====
int __fastcall gameswf::membuf::membuf(int this)
{
  *(_BYTE *)(this + 12) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  return this;
}


// ===== 7b62a4 gameswf::membuf::membuf(gameswf::membuf::read_only_enum,void const*,int) =====
int __fastcall gameswf::membuf::membuf(int result, int a2, int a3, int a4)
{
  *(_DWORD *)result = a4;
  *(_BYTE *)(result + 12) = 1;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = a3;
  return result;
}


// ===== 7b62c0 gameswf::membuf::membuf(gameswf::membuf::read_only_enum,void const*,int) =====
int __fastcall gameswf::membuf::membuf(int result, int a2, int a3, int a4)
{
  *(_DWORD *)result = a4;
  *(_BYTE *)(result + 12) = 1;
  *(_DWORD *)(result + 4) = 0;
  *(_DWORD *)(result + 8) = a3;
  return result;
}


// ===== 7b62dc gameswf::membuf::operator!=(gameswf::membuf const&) =====
bool __fastcall gameswf::membuf::operator!=(int a1, int a2)
{
  return *(_DWORD *)a1 == *(_DWORD *)a2
      && memcmp(*(const void **)(a1 + 8), *(const void **)(a2 + 8), *(_DWORD *)a1) != 0;
}


// ===== 7b6310 gameswf::membuf::operator==(gameswf::membuf const&) =====
bool __fastcall gameswf::membuf::operator==(int a1, int a2)
{
  return *(_DWORD *)a1 == *(_DWORD *)a2
      && memcmp(*(const void **)(a1 + 8), *(const void **)(a2 + 8), *(_DWORD *)a1) == 0;
}


// ===== 7b6344 gameswf::membuf::shrink(void) =====
size_t *__fastcall gameswf::membuf::shrink(size_t *this)
{
  size_t v1; // r2
  size_t v2; // r5
  size_t *v3; // r4

  v1 = *(this + 1);
  v2 = *this;
  v3 = this;
  if ( v1 != *this )
  {
    this = (size_t *)*(this + 2);
    if ( this )
    {
      this = (size_t *)gameswf::realloc_internal(this, v2, v1);
      v3[1] = v2;
      v3[2] = (size_t)this;
    }
  }
  return this;
}


// ===== 7b6380 gameswf::membuf::reserve(int) =====
void *__fastcall gameswf::membuf::reserve(gameswf::membuf *this, int a2)
{
  void *result; // r0
  signed int v5; // r2

  result = *((void **)this + 2);
  if ( result )
  {
    v5 = *((_DWORD *)this + 1);
    if ( a2 > v5 )
    {
      result = gameswf::realloc_internal(result, a2, v5);
      *((_DWORD *)this + 2) = result;
    }
  }
  else
  {
    result = gameswf::malloc_internal(a2);
    *((_DWORD *)this + 2) = result;
  }
  *((_DWORD *)this + 1) = a2;
  return result;
}


// ===== 7b63cc gameswf::membuf::operator=(gameswf::membuf const&) =====
void *__fastcall gameswf::membuf::operator=(int a1, int a2)
{
  void *result; // r0

  gameswf::membuf::resize((gameswf::membuf *)a1, *(gameswf::membuf **)a2);
  result = memcpy(*(void **)(a1 + 8), *(const void **)(a2 + 8), *(_DWORD *)a1);
  *(_BYTE *)(a1 + 12) = *(_BYTE *)(a2 + 12);
  return result;
}


// ===== 7b63fc gameswf::membuf::append(void const*,int) =====
void *__fastcall gameswf::membuf::append(gameswf::membuf *this, const void *a2, size_t a3)
{
  int v3; // r4

  v3 = *(_DWORD *)this;
  gameswf::membuf::resize(this, (gameswf::membuf *)(a3 + *(_DWORD *)this));
  return memcpy((void *)(*((_DWORD *)this + 2) + v3), a2, a3);
}


// ===== 7b6430 gameswf::membuf::append(gameswf::tu_string const&) =====
void *__fastcall gameswf::membuf::append(gameswf::membuf *this, const gameswf::tu_string *a2)
{
  int v2; // r2
  char *v3; // r1

  v2 = *(char *)a2;
  if ( v2 == -1 )
  {
    v2 = *((_DWORD *)a2 + 1);
    v3 = *((char **)a2 + 3);
  }
  else
  {
    v3 = (char *)a2 + 1;
  }
  return gameswf::membuf::append(this, v3, v2 - 1);
}


// ===== 7b644c gameswf::membuf::membuf(gameswf::tu_string const&) =====
gameswf::membuf *__fastcall gameswf::membuf::membuf(gameswf::membuf *this, const gameswf::tu_string *a2)
{
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  gameswf::membuf::append(this, a2);
  return this;
}


// ===== 7b6474 gameswf::membuf::membuf(gameswf::tu_string const&) =====
gameswf::membuf *__fastcall gameswf::membuf::membuf(gameswf::membuf *this, const gameswf::tu_string *a2)
{
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  gameswf::membuf::append(this, a2);
  return this;
}


// ===== 7b649c gameswf::membuf::append(gameswf::membuf const&) =====
void *__fastcall gameswf::membuf::append(gameswf::membuf *this, const void **a2)
{
  return gameswf::membuf::append(this, a2[2], (size_t)*a2);
}


// ===== 7b64a8 gameswf::membuf::membuf(gameswf::membuf const&) =====
gameswf::membuf *__fastcall gameswf::membuf::membuf(gameswf::membuf *this, const void **a2)
{
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  gameswf::membuf::append(this, a2);
  return this;
}


// ===== 7b64d0 gameswf::membuf::membuf(gameswf::membuf const&) =====
gameswf::membuf *__fastcall gameswf::membuf::membuf(gameswf::membuf *this, const void **a2)
{
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  gameswf::membuf::append(this, a2);
  return this;
}


// ===== 7b64f8 gameswf::membuf::membuf(void const*,int) =====
gameswf::membuf *__fastcall gameswf::membuf::membuf(gameswf::membuf *this, const void *a2, size_t a3)
{
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  gameswf::membuf::append(this, a2, a3);
  return this;
}


// ===== 7b6520 gameswf::membuf::membuf(void const*,int) =====
gameswf::membuf *__fastcall gameswf::membuf::membuf(gameswf::membuf *this, const void *a2, size_t a3)
{
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  gameswf::membuf::append(this, a2, a3);
  return this;
}


// ===== 7b6548 gameswf::membuf::~membuf() =====
void __fastcall gameswf::membuf::~membuf(void **this)
{
  if ( !*((_BYTE *)this + 12) && *(this + 1) )
  {
    gameswf::free_internal(*(this + 2));
    *(this + 2) = nullptr;
  }
  else
  {
    *(this + 2) = nullptr;
  }
}


// ===== 7b6590 gameswf::membuf::~membuf() =====
void __fastcall gameswf::membuf::~membuf(void **this)
{
  if ( !*((_BYTE *)this + 12) && *(this + 1) )
  {
    gameswf::free_internal(*(this + 2));
    *(this + 2) = nullptr;
  }
  else
  {
    *(this + 2) = nullptr;
  }
}


// ===== 7b65d8 gameswf::mem_seek_func(int,void *) =====
int __fastcall gameswf::mem_seek_func(int this, int *a2, void *a3)
{
  bool v3; // cc

  if ( this >= 0 )
  {
    v3 = this <= *a2;
    if ( this > *a2 )
    {
      a2[4] = *a2;
      this = 4;
    }
    else
    {
      a2[4] = this;
    }
    if ( v3 )
      return 0;
  }
  else
  {
    a2[4] = 0;
    return 4;
  }
  return this;
}


// ===== 7b6608 gameswf::mem_seek_to_end_func(void *) =====
int __fastcall gameswf::mem_seek_to_end_func(gameswf *this, void *a2)
{
  int v2; // r2

  v2 = *(_DWORD *)this;
  *((_DWORD *)this + 4) = v2;
  return 0;
}


// ===== 7b661c gameswf::mem_tell_func(void const*) =====
int __fastcall gameswf::mem_tell_func(gameswf *this, const void *a2)
{
  return *((_DWORD *)this + 4);
}


// ===== 7b6624 gameswf::mem_get_eof_func(void *) =====
bool __fastcall gameswf::mem_get_eof_func(gameswf *this, void *a2)
{
  return *((_DWORD *)this + 4) >= *(_DWORD *)this;
}


// ===== 7b663c gameswf::tu_file::tu_file(void *,int (*)(void *,int,void *),int (*)(void const*,int,void *),int (*)(int,void *),int (*)(void *),int (*)(void const*),bool (*)(void *),int (*)(void *)) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(
        _DWORD *this,
        void *a2,
        int (*a3)(void *, int, void *),
        int (*a4)(const void *, int, void *),
        int (*a5)(int, void *),
        int (*a6)(void *),
        int (*a7)(const void *),
        bool (*a8)(void *),
        int (*a9)(void *))
{
  *(this + 3) = a4;
  *(this + 9) = 0;
  *(this + 4) = a5;
  *this = a2;
  *(this + 2) = a3;
  *(this + 5) = a6;
  *(this + 6) = a7;
  *(this + 7) = a8;
  *(this + 8) = a9;
  return this;
}


// ===== 7b6684 gameswf::tu_file::tu_file(void *,int (*)(void *,int,void *),int (*)(void const*,int,void *),int (*)(int,void *),int (*)(void *),int (*)(void const*),bool (*)(void *),int (*)(void *)) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(
        _DWORD *this,
        void *a2,
        int (*a3)(void *, int, void *),
        int (*a4)(const void *, int, void *),
        int (*a5)(int, void *),
        int (*a6)(void *),
        int (*a7)(const void *),
        bool (*a8)(void *),
        int (*a9)(void *))
{
  *(this + 3) = a4;
  *(this + 9) = 0;
  *(this + 4) = a5;
  *this = a2;
  *(this + 2) = a3;
  *(this + 5) = a6;
  *(this + 6) = a7;
  *(this + 7) = a8;
  *(this + 8) = a9;
  return this;
}


// ===== 7b66cc gameswf::tu_file::tu_file(__sFILE *,bool) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(_DWORD *this, __sFILE *a2, _DWORD (*a3)(gameswf *__hidden this, void *))
{
  *this = a2;
  *(this + 2) = gameswf::std_read_func;
  *(this + 3) = gameswf::std_write_func;
  *(this + 4) = gameswf::std_seek_func;
  *(this + 5) = gameswf::std_seek_to_end_func;
  *(this + 6) = gameswf::std_tell_func;
  *(this + 7) = gameswf::std_get_eof_func;
  if ( a3 )
    a3 = gameswf::std_close_func;
  *(this + 8) = a3;
  *(this + 9) = 0;
  return this;
}


// ===== 7b6758 gameswf::tu_file::tu_file(__sFILE *,bool) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(_DWORD *this, __sFILE *a2, _DWORD (*a3)(gameswf *__hidden this, void *))
{
  *this = a2;
  *(this + 2) = gameswf::std_read_func;
  *(this + 3) = gameswf::std_write_func;
  *(this + 4) = gameswf::std_seek_func;
  *(this + 5) = gameswf::std_seek_to_end_func;
  *(this + 6) = gameswf::std_tell_func;
  *(this + 7) = gameswf::std_get_eof_func;
  if ( a3 )
    a3 = gameswf::std_close_func;
  *(this + 8) = a3;
  *(this + 9) = 0;
  return this;
}


// ===== 7b67e4 gameswf::tu_file::tu_file(char const*,char const*) =====
gameswf::tu_file *__fastcall gameswf::tu_file::tu_file(gameswf::tu_file *this, const char *a2, const char *a3)
{
  IStreamBase *v4; // r0

  *((_DWORD *)this + 9) = 1;
  *((_DWORD *)this + 1) = fs_open_func;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  v4 = fs_open_func(a2, a3);
  *(_DWORD *)this = v4;
  if ( v4 )
  {
    *((_DWORD *)this + 9) = 0;
    *((_DWORD *)this + 2) = fs_read_func;
    *((_DWORD *)this + 3) = fs_write_func;
    *((_DWORD *)this + 4) = fs_seek_func;
    *((_DWORD *)this + 5) = fs_seek_to_end_func;
    *((_DWORD *)this + 6) = fs_tell_func;
    *((_DWORD *)this + 7) = fs_get_eof_func;
    *((_DWORD *)this + 8) = fs_close_func;
  }
  return this;
}


// ===== 7b68c8 gameswf::tu_file::tu_file(char const*,char const*) =====
gameswf::tu_file *__fastcall gameswf::tu_file::tu_file(gameswf::tu_file *this, const char *a2, const char *a3)
{
  IStreamBase *v4; // r0

  *((_DWORD *)this + 9) = 1;
  *((_DWORD *)this + 1) = fs_open_func;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  v4 = fs_open_func(a2, a3);
  *(_DWORD *)this = v4;
  if ( v4 )
  {
    *((_DWORD *)this + 9) = 0;
    *((_DWORD *)this + 2) = fs_read_func;
    *((_DWORD *)this + 3) = fs_write_func;
    *((_DWORD *)this + 4) = fs_seek_func;
    *((_DWORD *)this + 5) = fs_seek_to_end_func;
    *((_DWORD *)this + 6) = fs_tell_func;
    *((_DWORD *)this + 7) = fs_get_eof_func;
    *((_DWORD *)this + 8) = fs_close_func;
  }
  return this;
}


// ===== 7b69ac gameswf::tu_file::close(void) =====
_DWORD *__fastcall gameswf::tu_file::close(_DWORD *this)
{
  int (__fastcall *v1)(_DWORD); // r3
  _DWORD *v2; // r4

  v1 = (int (__fastcall *)(_DWORD))*(this + 8);
  v2 = this;
  if ( v1 )
    this = (_DWORD *)v1(*this);
  v2[8] = 0;
  *v2 = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v2[6] = 0;
  return this;
}


// ===== 7b69e8 gameswf::tu_file::~tu_file() =====
void __fastcall gameswf::tu_file::~tu_file(gameswf::tu_file *this)
{
  gameswf::tu_file::close(this);
}


// ===== 7b69fc gameswf::tu_file::~tu_file() =====
void __fastcall gameswf::tu_file::~tu_file(gameswf::tu_file *this)
{
  gameswf::tu_file::close(this);
}


// ===== 7b6a10 gameswf::tu_file::copy_from(gameswf::tu_file*) =====
char *__fastcall gameswf::tu_file::copy_from(gameswf::tu_file *this, gameswf::tu_file *a2)
{
  char *result; // r0
  bool v5; // zf
  char v6; // [sp+7h] [bp-1h] BYREF

  while ( 1 )
  {
    v5 = (*((int (__fastcall **)(_DWORD))a2 + 7))(*(_DWORD *)a2) == 0;
    result = &v6;
    if ( !v5 )
      break;
    (*((void (__fastcall **)(char *, int, _DWORD))a2 + 2))(&v6, 1, *(_DWORD *)a2);
    result = &v6;
    if ( *((_DWORD *)a2 + 9) )
      break;
    (*((void (__fastcall **)(char *, int, _DWORD))this + 3))(&v6, 1, *(_DWORD *)this);
  }
  return result;
}


// ===== 7b6a80 gameswf::tu_file::read_fully(gameswf::membuf *,int) =====
int __fastcall gameswf::tu_file::read_fully(gameswf::tu_file *this, gameswf::membuf *a2, int a3)
{
  int v5; // r5
  int i; // r6
  int result; // r0

  if ( a3 == -1 )
    v5 = *(_DWORD *)a2;
  else
    v5 = a3;
  for ( i = 0; ; i += result )
  {
    result = (*((int (__fastcall **)(_DWORD))this + 7))(*(_DWORD *)this);
    if ( result )
      break;
    if ( v5 <= 0 )
      break;
    result = (*((int (__fastcall **)(int, int, _DWORD))this + 2))(*((_DWORD *)a2 + 2) + i, v5, *(_DWORD *)this);
    if ( *((_DWORD *)this + 9) || result <= 0 )
      break;
    v5 -= result;
  }
  return result;
}


// ===== 7b6af0 gameswf::tu_file::copy_bytes(gameswf::tu_file*,int) =====
int __fastcall gameswf::tu_file::copy_bytes(gameswf::tu_file *this, gameswf::tu_file *a2, int a3)
{
  int v4; // r9
  int v6; // r4
  int v7; // r5
  int v8; // r0
  int v9; // r0
  int v11; // [sp+4h] [bp-1008h] BYREF

  v4 = a3;
  if ( a3 )
  {
    v6 = a3;
    while ( 1 )
    {
      v7 = v6 >= 4096 ? 4096 : v6;
      v8 = (*((int (__fastcall **)(int *, int, _DWORD))a2 + 2))(&v11, v7, *(_DWORD *)a2);
      v9 = (*((int (__fastcall **)(int *, int, _DWORD))this + 3))(&v11, v8, *(_DWORD *)this);
      v6 -= v9;
      if ( v7 > v9 )
        break;
      if ( !v6 )
        return v4;
    }
    v4 -= v6;
  }
  return v4;
}


// ===== 7b6bb8 gameswf::tu_file::write_string(char const*) =====
int __fastcall gameswf::tu_file::write_string(gameswf::tu_file *this, const char *a2)
{
  int v4; // r4
  char v5; // r3
  int result; // r0
  char v7[5]; // [sp+7h] [bp+0h] BYREF

  v4 = 0;
  do
  {
    v5 = a2[v4++];
    v7[0] = v5;
    result = (*((int (__fastcall **)(char *, int, _DWORD))this + 3))(v7, 1, *(_DWORD *)this);
  }
  while ( a2[v4 - 1] );
  return result;
}


// ===== 7b6c08 gameswf::tu_file::read_string(char *,int,char) =====
int __fastcall gameswf::tu_file::read_string(gameswf::tu_file *this, char *a2, int a3, int a4)
{
  int v8; // r7
  bool v9; // zf
  char v11[5]; // [sp+7h] [bp-5h] BYREF

  if ( a3 <= 0 )
  {
LABEL_7:
    a2[a3 - 1] = 0;
    return -1;
  }
  else
  {
    v8 = 0;
    while ( 1 )
    {
      (*((void (__fastcall **)(char *, int, _DWORD))this + 2))(v11, 1, *(_DWORD *)this);
      v9 = v11[0] == a4;
      a2[v8] = v11[0];
      if ( v9 )
        break;
      if ( ++v8 == a3 )
        goto LABEL_7;
    }
    a2[v8] = 0;
  }
  return v8;
}


// ===== 7b6c8c gameswf::buffered_write(void const*,int,void *) =====
int __fastcall gameswf::buffered_write(gameswf *this, const void *a2, int a3, void *a4)
{
  return 0;
}


// ===== 7b6c94 gameswf::buffered_seek(int,void *) =====
int __fastcall gameswf::buffered_seek(gameswf *this, _DWORD **a2, void *a3)
{
  char *v3; // r3
  gameswf *v6; // r5
  int v7; // r0
  char *v8; // r5
  _DWORD *v9; // r3
  _DWORD *v10; // r5
  int result; // r0

  v3 = (char *)a2[1026];
  if ( v3 )
  {
    v6 = (gameswf *)a2[1027];
    v7 = (int)a2[1025];
    if ( (int)this >= v7 )
    {
LABEL_4:
      v8 = (char *)((gameswf *)((char *)this - v7) - v6);
      if ( (unsigned int)this - v7 < 0x1000 )
      {
        v9 = (_DWORD *)(v3 - v8);
        v10 = (_DWORD *)((char *)a2[1027] + (_DWORD)v8);
        a2[1026] = v9;
        a2[1027] = v10;
        return (int)v10 + v7;
      }
    }
LABEL_7:
    ((void (__fastcall *)(gameswf *, _DWORD))(*a2)[4])(this, **a2);
    result = ((int (__fastcall *)(_DWORD))(*a2)[6])(**a2);
    a2[1027] = nullptr;
    a2[1025] = (_DWORD *)result;
    a2[1026] = nullptr;
    return result;
  }
  v6 = (gameswf *)a2[1027];
  if ( v6 )
  {
    v7 = (int)a2[1025];
    if ( (int)this >= v7 )
      goto LABEL_4;
    goto LABEL_7;
  }
  ((void (__fastcall *)(gameswf *, _DWORD, gameswf *))(*a2)[4])(this, **a2, this);
  result = ((int (__fastcall *)(_DWORD))(*a2)[6])(**a2);
  a2[1027] = nullptr;
  a2[1025] = (_DWORD *)result;
  a2[1026] = nullptr;
  return result;
}


// ===== 7b6d9c gameswf::buffered_seek_to_end(void *) =====
int __fastcall gameswf::buffered_seek_to_end(gameswf *this, void *a2)
{
  (*(void (__fastcall **)(_DWORD, void *))(*(_DWORD *)this + 20))(**(_DWORD **)this, a2);
  *((_DWORD *)this + 1025) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)this + 24))(**(_DWORD **)this);
  *((_DWORD *)this + 1027) = 0;
  *((_DWORD *)this + 1026) = 0;
  return 0;
}


// ===== 7b6de8 gameswf::buffered_tell(void const*) =====
int __fastcall gameswf::buffered_tell(gameswf *this, const void *a2)
{
  return *((_DWORD *)this + 1027) + *((_DWORD *)this + 1025);
}


// ===== 7b6e00 gameswf::buffered_get_eof(void *) =====
int __fastcall gameswf::buffered_get_eof(gameswf *this, void *a2)
{
  int result; // r0

  result = (*(int (__fastcall **)(_DWORD, void *))(*(_DWORD *)this + 28))(**(_DWORD **)this, a2);
  if ( result )
    return *((_DWORD *)this + 1026) == 0;
  return result;
}


// ===== 7b6e34 gameswf::get_buffered_file(gameswf::tu_file *) =====
_DWORD *__fastcall gameswf::get_buffered_file(gameswf *this, gameswf::tu_file *a2)
{
  _DWORD *v3; // r0
  void *v4; // r8
  _DWORD *v5; // r10

  v3 = operator new(0x1010u, 0);
  *v3 = this;
  v3[1025] = 0;
  v3[1026] = 0;
  v3[1027] = 0;
  v4 = v3;
  v5 = operator new(0x28u, 0);
  gameswf::tu_file::tu_file(
    v5,
    v4,
    (int (*)(void *, int, void *))gameswf::buffered_read,
    (int (*)(const void *, int, void *))gameswf::buffered_write,
    (int (*)(int, void *))gameswf::buffered_seek,
    (int (*)(void *))gameswf::buffered_seek_to_end,
    (int (*)(const void *))gameswf::buffered_tell,
    (bool (*)(void *))gameswf::buffered_get_eof,
    (int (*)(void *))gameswf::buffered_close);
  return v5;
}


// ===== 7b6f04 gameswf::buffered_close(void *) =====
int __fastcall gameswf::buffered_close(gameswf *this, void *a2)
{
  if ( this )
    gameswf::free_internal(this);
  return 0;
}


// ===== 7b6f20 gameswf::buffered_read(void *,int,void *) =====
int __fastcall gameswf::buffered_read(gameswf *this, int a2, _DWORD *a3, void *a4)
{
  char *v4; // r6
  int v7; // r9
  int v8; // r0
  _DWORD *v9; // r11
  size_t v10; // r4
  int v11; // r1
  int v12; // r0
  _DWORD *v13; // r3

  v4 = (char *)a2;
  if ( a2 <= 0 )
    return 0;
  v8 = a3[1026];
  v7 = 0;
  v9 = a3 + 1;
  while ( 1 )
  {
    if ( v8 )
    {
      v11 = a3[1027];
    }
    else
    {
      v12 = (*(int (__fastcall **)(_DWORD))(*a3 + 24))(*(_DWORD *)*a3);
      v13 = (_DWORD *)*a3;
      a3[1025] = v12;
      v8 = ((int (__fastcall *)(_DWORD *, int, _DWORD))v13[2])(v9, 4096, *v13);
      a3[1026] = v8;
      a3[1027] = 0;
      if ( !v8 )
        return v7;
      v11 = 0;
    }
    v10 = v8 >= (int)v4 ? (size_t)v4 : v8;
    memcpy(this, (char *)v9 + v11, v10);
    v4 -= v10;
    v8 = a3[1026] - v10;
    a3[1027] += v10;
    v7 += v10;
    a3[1026] = v8;
    if ( (int)v4 <= 0 )
      break;
    this = (gameswf *)((char *)this + v10);
  }
  return v7;
}


// ===== 7b6ff4 gameswf::mem_read_func(void *,int,void *) =====
signed int __fastcall gameswf::mem_read_func(gameswf *this, signed int a2, _DWORD *a3, void *a4)
{
  int v4; // r3
  signed int v6; // r5

  v4 = a3[4];
  v6 = *a3 - v4;
  if ( a2 < v6 )
    v6 = a2;
  if ( v6 )
  {
    memcpy(this, (const void *)(a3[2] + v4), v6);
    v4 = a3[4];
  }
  a3[4] = v4 + v6;
  return v6;
}


// ===== 7b7040 gameswf::tu_file::printf(char const*,...) =====
int gameswf::tu_file::printf(gameswf::tu_file *this, const char *a2, ...)
{
  size_t v3; // r0
  char s[1000]; // [sp+4h] [bp-3ECh] BYREF
  va_list varg_r2; // [sp+408h] [bp+18h] BYREF

  va_start(varg_r2, a2);
  vsnprintf(s, 0x3E8u, a2, varg_r2);
  v3 = LC_API_STRLEN_0(s);
  return (*((int (__fastcall **)(char *, size_t, _DWORD))this + 3))(s, v3, *(_DWORD *)this);
}


// ===== 7b70d4 gameswf::tu_file::copy_to(gameswf::membuf *) =====
gameswf::membuf *__fastcall gameswf::tu_file::copy_to(gameswf::tu_file *this, gameswf::membuf *a2)
{
  bool v4; // zf
  gameswf::membuf *result; // r0

  while ( 1 )
  {
    v4 = (*((int (__fastcall **)(_DWORD))this + 7))(*(_DWORD *)this) == 0;
    result = a2;
    if ( !v4 )
      break;
    gameswf::membuf::resize(a2, (gameswf::membuf *)(*(_DWORD *)a2 + 4096));
    result = (gameswf::membuf *)(*((int (__fastcall **)(int, int, _DWORD))this + 2))(
                                  *((_DWORD *)a2 + 2) + *(_DWORD *)a2 - 4096,
                                  4096,
                                  *(_DWORD *)this);
    if ( (int)result > 4095 )
    {
      if ( *((_DWORD *)this + 9) )
        return result;
    }
    else
    {
      result = gameswf::membuf::resize(a2, (gameswf::membuf *)((char *)result + *(_DWORD *)a2 - 4096));
      if ( *((_DWORD *)this + 9) )
        return result;
    }
  }
  return result;
}


// ===== 7b7168 gameswf::mem_write_func(void const*,int,void *) =====
size_t __fastcall gameswf::mem_write_func(gameswf *this, size_t a2, gameswf::membuf *a3, void *a4)
{
  int v5; // r3
  int v6; // r2
  int v9; // r1

  v5 = *((_DWORD *)a3 + 4);
  v6 = *(_DWORD *)a3;
  v9 = v5 - v6 + a2;
  if ( v9 > 0 )
  {
    if ( *((_BYTE *)a3 + 20) )
      return 0;
    gameswf::membuf::resize(a3, (gameswf::membuf *)(v9 + v6));
    v5 = *(_DWORD *)a3;
    if ( *((_DWORD *)a3 + 4) > *(_DWORD *)a3 )
      *((_DWORD *)a3 + 4) = v5;
    else
      v5 = *((_DWORD *)a3 + 4);
  }
  memcpy((void *)(*((_DWORD *)a3 + 2) + v5), this, a2);
  *((_DWORD *)a3 + 4) += a2;
  return a2;
}


// ===== 7b71f0 gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum,int,void *) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(_DWORD *a1, int a2, int a3, int a4)
{
  _BYTE *v7; // r5

  v7 = operator new(0x18u, 0);
  gameswf::membuf::membuf((int)v7, 0, a4, a3);
  v7[20] = 1;
  *((_DWORD *)v7 + 4) = 0;
  a1[5] = gameswf::mem_seek_to_end_func;
  *a1 = v7;
  a1[2] = gameswf::mem_read_func;
  a1[3] = gameswf::mem_write_func;
  a1[4] = gameswf::mem_seek_func;
  a1[6] = gameswf::mem_tell_func;
  a1[7] = gameswf::mem_get_eof_func;
  a1[8] = gameswf::mem_close_func;
  a1[9] = 0;
  return a1;
}


// ===== 7b72b0 gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum,int,void *) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(_DWORD *a1, int a2, int a3, int a4)
{
  _BYTE *v7; // r5

  v7 = operator new(0x18u, 0);
  gameswf::membuf::membuf((int)v7, 0, a4, a3);
  v7[20] = 1;
  *((_DWORD *)v7 + 4) = 0;
  a1[5] = gameswf::mem_seek_to_end_func;
  *a1 = v7;
  a1[2] = gameswf::mem_read_func;
  a1[3] = gameswf::mem_write_func;
  a1[4] = gameswf::mem_seek_func;
  a1[6] = gameswf::mem_tell_func;
  a1[7] = gameswf::mem_get_eof_func;
  a1[8] = gameswf::mem_close_func;
  a1[9] = 0;
  return a1;
}


// ===== 7b7370 gameswf::mem_close_func(void *) =====
int __fastcall gameswf::mem_close_func(void **this, void *a2)
{
  if ( this )
  {
    gameswf::membuf::~membuf(this);
    gameswf::free_internal(this);
  }
  return 0;
}


// ===== 7b7394 gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(_DWORD *a1)
{
  _DWORD *v2; // r5

  v2 = operator new(0x18u, 0);
  gameswf::membuf::membuf((int)v2);
  v2[4] = 0;
  *((_BYTE *)v2 + 20) = 0;
  a1[6] = gameswf::mem_tell_func;
  *a1 = v2;
  a1[2] = gameswf::mem_read_func;
  a1[3] = gameswf::mem_write_func;
  a1[4] = gameswf::mem_seek_func;
  a1[5] = gameswf::mem_seek_to_end_func;
  a1[7] = gameswf::mem_get_eof_func;
  a1[8] = gameswf::mem_close_func;
  a1[9] = 0;
  return a1;
}


// ===== 7b743c gameswf::tu_file::tu_file(gameswf::tu_file::memory_buffer_enum) =====
_DWORD *__fastcall gameswf::tu_file::tu_file(_DWORD *a1)
{
  _DWORD *v2; // r5

  v2 = operator new(0x18u, 0);
  gameswf::membuf::membuf((int)v2);
  v2[4] = 0;
  *((_BYTE *)v2 + 20) = 0;
  a1[6] = gameswf::mem_tell_func;
  *a1 = v2;
  a1[2] = gameswf::mem_read_func;
  a1[3] = gameswf::mem_write_func;
  a1[4] = gameswf::mem_seek_func;
  a1[5] = gameswf::mem_seek_to_end_func;
  a1[7] = gameswf::mem_get_eof_func;
  a1[8] = gameswf::mem_close_func;
  a1[9] = 0;
  return a1;
}


// ===== 7b74e4 gameswf::std_close_func(void *) =====
int __fastcall gameswf::std_close_func(FILE *this, void *a2)
{
  if ( fclose(this) == -1 )
    return 5;
  else
    return 0;
}


// ===== 7b74fc gameswf::std_get_eof_func(void *) =====
bool __fastcall gameswf::std_get_eof_func(FILE *this, void *a2)
{
  return feof(this) != 0;
}


// ===== 7b7510 gameswf::std_tell_func(void const*) =====
// attributes: thunk
int gameswf::std_tell_func(FILE *stream)
{
  return ftell(stream);
}


// ===== 7b7514 gameswf::std_seek_to_end_func(void *) =====
int __fastcall gameswf::std_seek_to_end_func(FILE *this, void *a2)
{
  if ( fseek(this, 0, 2) == -1 )
    return 4;
  else
    return 0;
}


// ===== 7b7534 gameswf::std_seek_func(int,void *) =====
int __fastcall gameswf::std_seek_func(gameswf *this, FILE *stream, void *a3)
{
  stream->_flags &= 0xFF9Fu;
  if ( fseek(stream, (int)this, 0) == -1 )
    return 4;
  else
    return 0;
}


// ===== 7b7568 gameswf::std_write_func(void const*,int,void *) =====
size_t __fastcall gameswf::std_write_func(gameswf *this, size_t n, FILE *s, void *a4)
{
  return fwrite(this, 1u, n, s);
}


// ===== 7b7578 gameswf::std_read_func(void *,int,void *) =====
size_t __fastcall gameswf::std_read_func(gameswf *this, size_t n, FILE *stream, void *a4)
{
  return fread(this, 1u, n, stream);
}


// ===== 7b7588 gameswf::tu_loadlib::~tu_loadlib() =====
void __fastcall gameswf::tu_loadlib::~tu_loadlib(gameswf::tu_loadlib *this)
{
  ;
}


// ===== 7b758c gameswf::tu_loadlib::~tu_loadlib() =====
void __fastcall gameswf::tu_loadlib::~tu_loadlib(gameswf::tu_loadlib *this)
{
  ;
}


// ===== 7b7590 gameswf::tu_loadlib::get_function(char const*) =====
int __fastcall gameswf::tu_loadlib::get_function(gameswf::tu_loadlib *this, const char *a2)
{
  return 0;
}


// ===== 7b7598 gameswf::tu_string::tu_string(char const*) [clone] =====
gameswf::tu_string *__fastcall gameswf::tu_string::tu_string(gameswf::tu_string *this, const char *a2)
{
  char *v3; // r0
  unsigned int v5; // r3

  *(_BYTE *)this = 1;
  *((_BYTE *)this + 1) = 0;
  gameswf::tu_string::resize(this, 3);
  if ( *(char *)this == -1 )
    v3 = *((char **)this + 3);
  else
    v3 = (char *)this + 1;
  strcpy(v3, "lib");
  v5 = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 4) = v5;
  *((_BYTE *)this + 19) = HIBYTE(v5) & 0xFE;
  return this;
}


// ===== 7b7600 gameswf::tu_loadlib::tu_loadlib(char const*) =====
gameswf::tu_loadlib *__fastcall gameswf::tu_loadlib::tu_loadlib(gameswf::tu_loadlib *this, char *a2)
{
  int v3; // r3
  const char *v6; // r1
  char v7; // [sp+0h] [bp-18h] BYREF
  char v8; // [sp+1h] [bp-17h] BYREF
  void *p; // [sp+Ch] [bp-Ch]
  int v10; // [sp+14h] [bp-4h]

  v3 = _stack_chk_guard;
  *(_DWORD *)this = 0;
  v10 = v3;
  gameswf::tu_string::tu_string((gameswf::tu_string *)&v7, a2);
  gameswf::tu_string::operator+=((gameswf::tu_string *)&v7, a2);
  gameswf::tu_string::operator+=((gameswf::tu_string *)&v7, ".so");
  if ( !*(_DWORD *)this )
  {
    if ( v7 == -1 )
      v6 = (const char *)p;
    else
      v6 = &v8;
    printf("can't load shared library '%s'\n", v6);
  }
  if ( v7 == -1 )
    gameswf::free_internal(p);
  return this;
}


// ===== 7b76d4 gameswf::tu_loadlib::tu_loadlib(char const*) =====
gameswf::tu_loadlib *__fastcall gameswf::tu_loadlib::tu_loadlib(gameswf::tu_loadlib *this, char *a2)
{
  int v3; // r3
  const char *v6; // r1
  char v7; // [sp+0h] [bp-18h] BYREF
  char v8; // [sp+1h] [bp-17h] BYREF
  void *p; // [sp+Ch] [bp-Ch]
  int v10; // [sp+14h] [bp-4h]

  v3 = _stack_chk_guard;
  *(_DWORD *)this = 0;
  v10 = v3;
  gameswf::tu_string::tu_string((gameswf::tu_string *)&v7, a2);
  gameswf::tu_string::operator+=((gameswf::tu_string *)&v7, a2);
  gameswf::tu_string::operator+=((gameswf::tu_string *)&v7, ".so");
  if ( !*(_DWORD *)this )
  {
    if ( v7 == -1 )
      v6 = (const char *)p;
    else
      v6 = &v8;
    printf("can't load shared library '%s'\n", v6);
  }
  if ( v7 == -1 )
    gameswf::free_internal(p);
  return this;
}


// ===== 7b77a8 gameswf::tu_random::generator::seed_random(uint) =====
int __fastcall gameswf::tu_random::generator::seed_random(int this, int a2)
{
  int v2; // r3
  int v3; // r2
  unsigned int v4; // r3

  v2 = 12345;
  v3 = 0;
  if ( a2 )
    v2 = a2;
  do
  {
    v4 = v2 ^ (v2 << 13) ^ ((v2 ^ (unsigned int)(v2 << 13)) >> 17);
    v2 = v4 ^ (32 * v4);
    *(_DWORD *)(this + v3) = v2;
    v3 += 4;
  }
  while ( v3 != 32 );
  *(_DWORD *)(this + 36) = 7;
  *(_DWORD *)(this + 32) = 362436;
  return this;
}


// ===== 7b77ec gameswf::tu_random::generator::generator(void) =====
gameswf::tu_random::generator *__fastcall gameswf::tu_random::generator::generator(gameswf::tu_random::generator *this)
{
  gameswf::tu_random::generator::seed_random((int)this, 987654321);
  return this;
}


// ===== 7b7808 gameswf::tu_random::generator::generator(void) =====
gameswf::tu_random::generator *__fastcall gameswf::tu_random::generator::generator(gameswf::tu_random::generator *this)
{
  gameswf::tu_random::generator::seed_random((int)this, 987654321);
  return this;
}


// ===== 7b7824 gameswf::tu_random::seed_random(uint) =====
int __fastcall gameswf::tu_random::seed_random(gameswf::tu_random *this, unsigned int a2)
{
  return gameswf::tu_random::generator::seed_random((int)&gameswf::tu_random::s_generator, (int)this);
}


// ===== 7b7838 gameswf::tu_random::generator::next_random(void) =====
int __fastcall gameswf::tu_random::generator::next_random(gameswf::tu_random::generator *this)
{
  int v1; // r12
  unsigned int v3; // r0
  int v4; // r12
  bool v5; // cf
  int v6; // r4
  __int64 v7; // r0
  int v8; // r2

  v1 = *((_DWORD *)this + 9);
  v3 = *((_DWORD *)this + 8);
  v4 = ((_BYTE)v1 + 1) & 7;
  *((_DWORD *)this + 9) = v4;
  v7 = 716514398LL * *((unsigned int *)this + v4) + v3;
  v5 = __CFADD__(HIDWORD(v7), (_DWORD)v7);
  v6 = HIDWORD(v7) + v7;
  LOWORD(v7) = -2;
  if ( v5 )
    ++v6;
  WORD1(v7) = -1;
  v8 = HIDWORD(v7);
  LODWORD(v7) = v7 - v6;
  if ( v5 )
    v8 = HIDWORD(v7) + 1;
  *((_DWORD *)this + 8) = HIDWORD(v7);
  if ( v5 )
    *((_DWORD *)this + 8) = v8;
  *((_DWORD *)this + v4) = v7;
  return v7;
}


// ===== 7b7898 gameswf::tu_random::next_random(void) =====
int __fastcall gameswf::tu_random::next_random(gameswf::tu_random *this)
{
  return gameswf::tu_random::generator::next_random((gameswf::tu_random::generator *)&gameswf::tu_random::s_generator);
}


// ===== 7b78a8 gameswf::tu_random::generator::get_unit_float(void) =====
float __fastcall gameswf::tu_random::generator::get_unit_float(gameswf::tu_random::generator *this)
{
  return (float)((unsigned int)gameswf::tu_random::generator::next_random(this) >> 8) / 16777000.0;
}


// ===== 7b78c8 gameswf::tu_random::get_unit_float(void) =====
float __fastcall gameswf::tu_random::get_unit_float(gameswf::tu_random *this)
{
  return gameswf::tu_random::generator::get_unit_float((gameswf::tu_random::generator *)&gameswf::tu_random::s_generator);
}


// ===== 7b78d8 `global constructor keyed to'.._.._src_base_tu_random.cpp =====
gameswf::tu_random::generator *`global constructor keyed to'.._.._src_base_tu_random.cpp()
{
  return gameswf::tu_random::generator::generator((gameswf::tu_random::generator *)&gameswf::tu_random::s_generator);
}


// ===== 7b78e8 gameswf::tu_timer::get_milli(ulong long) =====
int __fastcall gameswf::tu_timer::get_milli(gameswf::tu_timer *this, unsigned __int64 a2)
{
  return 0;
}


// ===== 7b78f0 gameswf::tu_timer::sleep(int) =====
// attributes: thunk
void __fastcall __noreturn gameswf::tu_timer::sleep(gameswf::tu_timer *this, int a2)
{
  while ( 1 )
    ;
}


// ===== 7b78f4 gameswf::tu_timer::get_profile_ticks(void) =====
__int64 __fastcall gameswf::tu_timer::get_profile_ticks(gameswf::tu_timer *this)
{
  return 0;
}


// ===== 7b7900 gameswf::tu_timer::profile_ticks_to_seconds(ulong long) =====
double __fastcall gameswf::tu_timer::profile_ticks_to_seconds(unsigned __int64 this, unsigned __int64 a2)
{
  return (double)this / 1000000.0;
}


// ===== 7b791c gameswf::tu_timer::ticks_to_seconds(ulong long) =====
// attributes: thunk
double __fastcall gameswf::tu_timer::ticks_to_seconds(unsigned __int64 this, unsigned __int64 a2)
{
  return gameswf::tu_timer::profile_ticks_to_seconds(this, a2);
}


// ===== 7b7920 gameswf::tu_timer::profile_ticks_to_milliseconds(ulong long) =====
double __fastcall gameswf::tu_timer::profile_ticks_to_milliseconds(unsigned __int64 this, unsigned __int64 a2)
{
  return (double)this / 1000.0;
}


// ===== 7b793c gameswf::profiler::set_enabled(bool) =====
void __fastcall gameswf::profiler::set_enabled(gameswf::profiler *this, bool a2)
{
  ;
}


// ===== 7b7940 gameswf::profiler::begin_event(char const*) =====
void __fastcall gameswf::profiler::begin_event(gameswf::profiler *this, const char *a2)
{
  ;
}


// ===== 7b7944 gameswf::profiler::end_event(void) =====
void __fastcall gameswf::profiler::end_event(gameswf::profiler *this)
{
  ;
}


// ===== 7b7948 gameswf::profiler::dump(void) =====
void __fastcall gameswf::profiler::dump(gameswf::profiler *this)
{
  ;
}


// ===== 7b794c gameswf::tu_timer::get_ticks(void) =====
__int64 __fastcall gameswf::tu_timer::get_ticks(gameswf::tu_timer *this)
{
  struct timeval v2; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v2, nullptr);
  return 1000 * v2.tv_sec + (__int64)(v2.tv_usec / 1000);
}


// ===== 7b799c gameswf::tu_timer::get_time(ulong long) =====
__int64 __fastcall gameswf::tu_timer::get_time(__int64 this, unsigned __int64 a2)
{
  time_t v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  localtime(&v4);
  return 1000 * this;
}


// ===== 7b79d0 gameswf::tu_timer::get_year(ulong long) =====
int __fastcall gameswf::tu_timer::get_year(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_year;
}


// ===== 7b79f4 gameswf::tu_timer::get_seconds(ulong long) =====
int __fastcall gameswf::tu_timer::get_seconds(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_sec;
}


// ===== 7b7a18 gameswf::tu_timer::get_minutes(ulong long) =====
int __fastcall gameswf::tu_timer::get_minutes(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_min;
}


// ===== 7b7a3c gameswf::tu_timer::get_month(ulong long) =====
int __fastcall gameswf::tu_timer::get_month(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_mon;
}


// ===== 7b7a60 gameswf::tu_timer::get_fullyear(ulong long) =====
int __fastcall gameswf::tu_timer::get_fullyear(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_year + 1900;
}


// ===== 7b7a8c gameswf::tu_timer::get_hours(ulong long) =====
int __fastcall gameswf::tu_timer::get_hours(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_hour;
}


// ===== 7b7ab0 gameswf::tu_timer::get_day(ulong long) =====
int __fastcall gameswf::tu_timer::get_day(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_wday;
}


// ===== 7b7ad4 gameswf::tu_timer::get_date(ulong long) =====
int __fastcall gameswf::tu_timer::get_date(gameswf::tu_timer *this, unsigned __int64 a2)
{
  gameswf::tu_timer *v4; // [sp+4h] [bp-8h] BYREF

  v4 = this;
  return localtime((const time_t *)&v4)->tm_mday;
}


// ===== 7b7af8 gameswf::tu_timer::get_systime(void) =====
__int64 __fastcall gameswf::tu_timer::get_systime(gameswf::tu_timer *this)
{
  time_t timer; // [sp+4h] [bp-8h] BYREF

  time(&timer);
  return timer;
}


// ===== 7b7b20 gameswf::zlib_adapter::inflater_impl::rewind_unused_bytes(void) =====
int __fastcall gameswf::zlib_adapter::inflater_impl::rewind_unused_bytes(int this)
{
  _DWORD **v1; // r4
  int v2; // r0

  v1 = (_DWORD **)this;
  if ( *(_DWORD *)(this + 8) )
  {
    v2 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)this + 24))(**(_DWORD **)this);
    return ((int (__fastcall *)(int, _DWORD))(*v1)[4])(v2 - (_DWORD)v1[2], **v1);
  }
  return this;
}


// ===== 7b7b60 gameswf::zlib_adapter::inflate_write(void const*,int,void *) =====
int __fastcall gameswf::zlib_adapter::inflate_write(gameswf::zlib_adapter *this, const void *a2, int a3, void *a4)
{
  return 0;
}


// ===== 7b7b68 gameswf::zlib_adapter::inflate_tell(void const*) =====
int __fastcall gameswf::zlib_adapter::inflate_tell(gameswf::zlib_adapter *this, const void *a2)
{
  return *((_DWORD *)this + 16);
}


// ===== 7b7b70 gameswf::zlib_adapter::inflate_get_eof(void *) =====
int __fastcall gameswf::zlib_adapter::inflate_get_eof(gameswf::zlib_adapter *this, void *a2)
{
  return *((unsigned __int8 *)this + 68);
}


// ===== 7b7b78 gameswf::zlib_adapter::inflater_impl::inflater_impl(gameswf::tu_file *) =====
gameswf::zlib_adapter::inflater_impl *__fastcall gameswf::zlib_adapter::inflater_impl::inflater_impl(
        gameswf::zlib_adapter::inflater_impl *this,
        gameswf::tu_file *a2)
{
  *(_DWORD *)this = a2;
  *((_DWORD *)this + 15) = (*((int (__fastcall **)(_DWORD))a2 + 6))(*(_DWORD *)a2);
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 68) = 0;
  *((_DWORD *)this + 1042) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 4) = 0;
  if ( inflateInit_((_DWORD *)this + 1, "1.2.3", 56) )
    *((_DWORD *)this + 1042) = 1;
  return this;
}


// ===== 7b7bf0 gameswf::zlib_adapter::make_inflater(gameswf::tu_file *) =====
_DWORD *__fastcall gameswf::zlib_adapter::make_inflater(gameswf::zlib_adapter *this, gameswf::tu_file *a2)
{
  gameswf::zlib_adapter::inflater_impl *v3; // r8
  _DWORD *v4; // r10

  v3 = (gameswf::zlib_adapter::inflater_impl *)operator new(0x104Cu, 0);
  gameswf::zlib_adapter::inflater_impl::inflater_impl(v3, this);
  v4 = operator new(0x28u, 0);
  gameswf::tu_file::tu_file(
    v4,
    v3,
    (int (*)(void *, int, void *))gameswf::zlib_adapter::inflate_read,
    (int (*)(const void *, int, void *))gameswf::zlib_adapter::inflate_write,
    (int (*)(int, void *))gameswf::zlib_adapter::inflate_seek,
    (int (*)(void *))gameswf::zlib_adapter::inflate_seek_to_end,
    (int (*)(const void *))gameswf::zlib_adapter::inflate_tell,
    (bool (*)(void *))gameswf::zlib_adapter::inflate_get_eof,
    (int (*)(void *))gameswf::zlib_adapter::inflate_close);
  return v4;
}


// ===== 7b7cac gameswf::zlib_adapter::inflate_close(void *) =====
int __fastcall gameswf::zlib_adapter::inflate_close(gameswf::zlib_adapter *this, void *a2)
{
  int v3; // r4

  gameswf::zlib_adapter::inflater_impl::rewind_unused_bytes((int)this);
  v3 = inflateEnd_0((_DWORD *)this + 1);
  if ( this )
    gameswf::free_internal(this);
  if ( v3 )
    return 5;
  else
    return 0;
}


// ===== 7b7ce8 gameswf::zlib_adapter::inflater_impl::inflate_from_stream(void *,int) =====
int __fastcall gameswf::zlib_adapter::inflater_impl::inflate_from_stream(
        gameswf::zlib_adapter::inflater_impl *this,
        void *a2,
        int a3)
{
  char *v5; // r5
  unsigned __int8 **v6; // r6
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int result; // r0

  if ( *((_DWORD *)this + 1042) )
    return 0;
  *((_DWORD *)this + 4) = a2;
  v5 = (char *)this + 69;
  *((_DWORD *)this + 5) = a3;
  v6 = (unsigned __int8 **)((char *)this + 4);
  while ( 1 )
  {
    if ( !*((_DWORD *)this + 2) )
    {
      v7 = (*(int (__fastcall **)(char *, int, _DWORD))(*(_DWORD *)this + 8))(v5, 4096, **(_DWORD **)this);
      if ( !v7 )
        goto LABEL_12;
      *((_DWORD *)this + 2) = v7;
      *((_DWORD *)this + 1) = v5;
    }
    v8 = inflate(v6, 2);
    if ( v8 == 1 )
      break;
    if ( v8 )
    {
      *((_DWORD *)this + 1042) = 1;
      v9 = *((_DWORD *)this + 5);
LABEL_9:
      result = a3 - v9;
      *((_DWORD *)this + 16) += result;
      return result;
    }
    v9 = *((_DWORD *)this + 5);
    if ( !v9 )
      goto LABEL_9;
  }
  *((_BYTE *)this + 68) = 1;
LABEL_12:
  result = a3 - *((_DWORD *)this + 5);
  *((_DWORD *)this + 16) += result;
  return result;
}


// ===== 7b7dbc gameswf::zlib_adapter::inflate_seek_to_end(void *) =====
int __fastcall gameswf::zlib_adapter::inflate_seek_to_end(gameswf::zlib_adapter *this, void *a2)
{
  int v4; // [sp+4h] [bp-1008h] BYREF

  if ( !*((_DWORD *)this + 1042) )
  {
    while ( gameswf::zlib_adapter::inflater_impl::inflate_from_stream(this, &v4, 4096) )
      ;
  }
  return *((_DWORD *)this + 16);
}


// ===== 7b7e4c gameswf::zlib_adapter::inflate_read(void *,int,void *) =====
int __fastcall gameswf::zlib_adapter::inflate_read(
        gameswf::zlib_adapter *this,
        int a2,
        gameswf::zlib_adapter::inflater_impl *a3,
        void *a4)
{
  if ( *((_DWORD *)a3 + 1042) )
    return 0;
  else
    return gameswf::zlib_adapter::inflater_impl::inflate_from_stream(a3, this, a2);
}


// ===== 7b7e88 gameswf::zlib_adapter::inflater_impl::reset(void) =====
int __fastcall gameswf::zlib_adapter::inflater_impl::reset(gameswf::zlib_adapter::inflater_impl *this)
{
  int result; // r0
  int v3; // r3

  *((_BYTE *)this + 68) = 0;
  *((_DWORD *)this + 1042) = 0;
  result = inflateReset((_DWORD *)this + 1);
  if ( result )
  {
    *((_DWORD *)this + 1042) = 1;
  }
  else
  {
    v3 = *(_DWORD *)this;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 5) = 0;
    result = (*(int (__fastcall **)(_DWORD, _DWORD))(v3 + 16))(*((_DWORD *)this + 15), *(_DWORD *)v3);
    *((_DWORD *)this + 16) = 0;
  }
  return result;
}


// ===== 7b7ee8 gameswf::zlib_adapter::inflate_seek(int,void *) =====
int __fastcall gameswf::zlib_adapter::inflate_seek(
        gameswf::zlib_adapter *this,
        gameswf::zlib_adapter::inflater_impl *a2,
        void *a3)
{
  int result; // r0
  char *v6; // r2
  int v7; // [sp+4h] [bp-1004h] BYREF

  if ( *((_DWORD *)a2 + 1042) )
    return *((_DWORD *)a2 + 16);
  result = *((_DWORD *)a2 + 16);
  if ( result > (int)this )
  {
    gameswf::zlib_adapter::inflater_impl::reset(a2);
    result = *((_DWORD *)a2 + 16);
  }
  while ( (int)this > result )
  {
    v6 = (char *)this - result;
    if ( (int)this - result >= 4096 )
      v6 = (_BYTE *)(elf_hash_bucket + 3876);
    if ( !gameswf::zlib_adapter::inflater_impl::inflate_from_stream(a2, &v7, (int)v6) )
      return *((_DWORD *)a2 + 16);
    result = *((_DWORD *)a2 + 16);
  }
  return result;
}


// ===== 7b7fb0 gameswf::metadata_info::read(gameswf::stream *,gameswf::abc_def *) =====
void gameswf::metadata_info::read()
{
  ;
}


// ===== 7b7fb4 gameswf::abc_def::find_instance(gameswf::tu_string const&) =====
int __fastcall gameswf::abc_def::find_instance(gameswf::abc_def *this, const gameswf::tu_string *a2)
{
  return **((_DWORD **)this + 39);
}


// ===== 7b7fc0 gameswf::abc_def::get_class_constructor(gameswf::tu_string &) =====
int __fastcall gameswf::abc_def::get_class_constructor(gameswf::abc_def *this, gameswf::tu_string *a2)
{
  int result; // r0

  result = gameswf::abc_def::find_instance(this, a2);
  if ( result )
    return *(_DWORD *)(*((_DWORD *)this + 31) + 4 * *(_DWORD *)(result + 44));
  return result;
}


// ===== 7b7fe0 gameswf::except_info::read(gameswf::stream *,gameswf::abc_def *) =====
int __fastcall gameswf::except_info::read(gameswf::except_info *this, gameswf::stream *a2, gameswf::abc_def *a3)
{
  int result; // r0

  *((_DWORD *)this + 3) = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 4) = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 5) = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 6) = gameswf::stream::read_vu32(a2);
  result = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 7) = result;
  return result;
}


// ===== 7b802c gameswf::array<uint>::reserve(int) =====
void __fastcall gameswf::array<unsigned int>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b80a8 gameswf::array<double>::reserve(int) =====
void __fastcall gameswf::array<double>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
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


// ===== 7b8124 gameswf::array<gameswf::tu_string>::reserve(int) =====
void __fastcall gameswf::array<gameswf::tu_string>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 20 * a2, 20 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(20 * a2);
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


// ===== 7b81ac gameswf::array<gameswf::tu_string>::resize(int) =====
void __fastcall gameswf::array<gameswf::tu_string>::resize(int *a1, int a2)
{
  int v2; // r8
  int v5; // r4
  int v6; // r5
  int v7; // r2
  int v8; // r3
  int v9; // r2
  int v10; // r3
  int v11; // r3
  int v12; // r1
  unsigned int v13; // r1

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 20 * a2;
    v6 = a2;
    do
    {
      while ( 1 )
      {
        ++v6;
        v7 = *(char *)(*a1 + v5);
        v8 = *a1 + v5;
        v5 += 20;
        if ( v7 == -1 )
          break;
        if ( v6 == v2 )
          goto LABEL_6;
      }
      gameswf::free_internal(*(void **)(v8 + 12));
    }
    while ( v6 != v2 );
  }
LABEL_6:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::tu_string>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v9 = 20 * v2;
    do
    {
      v10 = *a1;
      ++v2;
      *(_BYTE *)(v10 + v9) = 1;
      v11 = v10 + v9;
      v12 = *(_DWORD *)(v11 + 16);
      *(_BYTE *)(v11 + 1) = 0;
      v9 += 20;
      v13 = v12 & 0xFF000000 | 0xFFFFFF;
      *(_DWORD *)(v11 + 16) = v13;
      *(_BYTE *)(v11 + 19) = HIBYTE(v13) & 0xFE;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b828c gameswf::array<gameswf::namespac>::reserve(int) =====
void __fastcall gameswf::array<gameswf::namespac>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
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


// ===== 7b8308 gameswf::array<gameswf::array<int>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::array<int>>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 16 * a2, 16 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(16 * a2);
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


// ===== 7b8384 gameswf::traits_info::read(gameswf::stream *,gameswf::abc_def *) =====
void __fastcall gameswf::traits_info::read(gameswf::traits_info *this, gameswf::stream *a2, gameswf::abc_def *a3)
{
  unsigned int u8; // r0
  char v6; // r3
  int v7; // r0
  int v8; // r0
  int v9; // r0
  char v10; // r3
  int v11; // r0
  int v12; // r6
  int v13; // r4
  int v14; // r3
  int i; // r4
  int v16; // r8
  int vu32; // r0
  char v18; // r0

  *((_DWORD *)this + 3) = gameswf::stream::read_vu32(a2);
  u8 = gameswf::stream::read_u8(a2);
  v6 = u8 >> 4;
  v7 = u8 & 0xF;
  *((_BYTE *)this + 16) = v7;
  *((_BYTE *)this + 17) = v6;
  switch ( v7 )
  {
    case 0:
    case 6:
      *((_DWORD *)this + 5) = gameswf::stream::read_vu32(a2);
      *((_DWORD *)this + 6) = gameswf::stream::read_vu32(a2);
      vu32 = gameswf::stream::read_vu32(a2);
      *((_DWORD *)this + 7) = vu32;
      if ( vu32 )
      {
        v18 = gameswf::stream::read_u8(a2);
        v6 = *((_BYTE *)this + 17);
        *((_BYTE *)this + 32) = v18;
      }
      else
      {
        v6 = *((_BYTE *)this + 17);
      }
      goto LABEL_3;
    case 1:
    case 2:
    case 3:
      *((_DWORD *)this + 5) = gameswf::stream::read_vu32(a2);
      v9 = gameswf::stream::read_vu32(a2);
      v10 = *((_BYTE *)this + 17);
      *((_DWORD *)this + 6) = v9;
      if ( (v10 & 4) != 0 )
        goto LABEL_6;
      return;
    case 4:
    case 5:
      *((_DWORD *)this + 5) = gameswf::stream::read_vu32(a2);
      v8 = gameswf::stream::read_vu32(a2);
      v6 = *((_BYTE *)this + 17);
      *((_DWORD *)this + 6) = v8;
      goto LABEL_3;
    default:
LABEL_3:
      if ( (v6 & 4) != 0 )
      {
LABEL_6:
        v11 = gameswf::stream::read_vu32(a2);
        v12 = v11;
        v13 = *((_DWORD *)this + 10);
        if ( v11 && v11 > *((_DWORD *)this + 11) )
          gameswf::array<int>::reserve((int)this + 36, v11 + (v11 >> 1));
        if ( v12 > v13 )
        {
          v14 = 4 * v13;
          do
          {
            ++v13;
            *(_DWORD *)(*((_DWORD *)this + 9) + v14) = 0;
            v14 += 4;
          }
          while ( v12 != v13 );
        }
        *((_DWORD *)this + 10) = v12;
        if ( v12 > 0 )
        {
          for ( i = 0; i != v12; ++i )
          {
            v16 = *((_DWORD *)this + 9);
            *(_DWORD *)(v16 + 4 * i) = gameswf::stream::read_vu32(a2);
          }
        }
      }
      return;
  }
}


// ===== 7b84fc gameswf::array<gameswf::multiname>::reserve(int) =====
void __fastcall gameswf::array<gameswf::multiname>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 20 * a2, 20 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(20 * a2);
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


// ===== 7b8584 gameswf::array<gameswf::multiname>::resize(int) =====
void __fastcall gameswf::array<gameswf::multiname>::resize(_DWORD *a1, int a2)
{
  int v4; // r6
  int v5; // r2
  _DWORD *v6; // r1

  v4 = a1[1];
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::multiname>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v4 < a2 )
  {
    v5 = 20 * v4;
    do
    {
      ++v4;
      v6 = (_DWORD *)(*a1 + v5);
      *v6 = 0;
      v6[4] = 0;
      v6[1] = 0;
      v6[2] = 0;
      v5 += 20;
    }
    while ( v4 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b85f4 gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b8670 gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b86ec gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b8768 gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b87e4 gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b8860 gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7b88dc gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b8978 gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b8a14 gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b8ab0 gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b8b4c gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b8be8 gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b8c84 gameswf::smart_ptr<gameswf::as_3_function>::set_ref(gameswf::as_3_function*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_3_function>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7b8cc4 gameswf::smart_ptr<gameswf::metadata_info>::set_ref(gameswf::metadata_info*) =====
void __fastcall gameswf::smart_ptr<gameswf::metadata_info>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7b8d04 gameswf::smart_ptr<gameswf::instance_info>::set_ref(gameswf::instance_info*) =====
void __fastcall gameswf::smart_ptr<gameswf::instance_info>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7b8d44 gameswf::smart_ptr<gameswf::class_info>::set_ref(gameswf::class_info*) =====
void __fastcall gameswf::smart_ptr<gameswf::class_info>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7b8d84 gameswf::smart_ptr<gameswf::script_info>::set_ref(gameswf::script_info*) =====
void __fastcall gameswf::smart_ptr<gameswf::script_info>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7b8dc4 gameswf::smart_ptr<gameswf::traits_info>::set_ref(gameswf::traits_info*) =====
void __fastcall gameswf::smart_ptr<gameswf::traits_info>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7b8e04 gameswf::abc_def::abc_def(gameswf::player *) =====
gameswf::abc_def *__fastcall gameswf::abc_def::abc_def(gameswf::abc_def *this, gameswf::player *a2)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_991250;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 56) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_BYTE *)this + 104) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 120) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 136) = 0;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_BYTE *)this + 168) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_BYTE *)this + 184) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  return this;
}


// ===== 7b8efc gameswf::abc_def::abc_def(gameswf::player *) =====
gameswf::abc_def *__fastcall gameswf::abc_def::abc_def(gameswf::abc_def *this, gameswf::player *a2)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_991250;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 56) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_BYTE *)this + 104) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_BYTE *)this + 120) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_BYTE *)this + 136) = 0;
  *((_BYTE *)this + 200) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_BYTE *)this + 152) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_BYTE *)this + 168) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_BYTE *)this + 184) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  return this;
}


// ===== 7b8ff4 gameswf::script_info::read(gameswf::stream *,gameswf::abc_def *) =====
void __fastcall gameswf::script_info::read(gameswf::script_info *this, gameswf::stream *a2, gameswf::abc_def *a3)
{
  int vu32; // r9
  int i; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r5
  gameswf::ref_counted **v10; // r0

  *((_DWORD *)this + 3) = gameswf::stream::read_vu32(a2);
  vu32 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 4, vu32);
  if ( vu32 > 0 )
  {
    for ( i = 0; i != vu32; ++i )
    {
      v8 = operator new(0x34u, 0);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = 0;
      v8[8] = 0;
      v8[9] = 0;
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      v9 = v8;
      gameswf::ref_counted::ref_counted(v8);
      v9[9] = 0;
      *v9 = off_991240;
      v9[10] = 0;
      v9[11] = 0;
      *((_BYTE *)v9 + 48) = 0;
      gameswf::traits_info::read((gameswf::traits_info *)v9, a2, a3);
      v10 = (gameswf::ref_counted **)(*((_DWORD *)this + 4) + 4 * i);
      gameswf::smart_ptr<gameswf::traits_info>::set_ref(v10, (gameswf::ref_counted *)v9);
    }
  }
}


// ===== 7b90f8 gameswf::class_info::read(gameswf::stream *,gameswf::abc_def *) =====
void __fastcall gameswf::class_info::read(gameswf::class_info *this, gameswf::stream *a2, gameswf::abc_def *a3)
{
  int vu32; // r9
  int i; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r5
  gameswf::ref_counted **v10; // r0

  *((_DWORD *)this + 3) = gameswf::stream::read_vu32(a2);
  vu32 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 4, vu32);
  if ( vu32 > 0 )
  {
    for ( i = 0; i != vu32; ++i )
    {
      v8 = operator new(0x34u, 0);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = 0;
      v8[8] = 0;
      v8[9] = 0;
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      v9 = v8;
      gameswf::ref_counted::ref_counted(v8);
      v9[9] = 0;
      *v9 = off_991240;
      v9[10] = 0;
      v9[11] = 0;
      *((_BYTE *)v9 + 48) = 0;
      gameswf::traits_info::read((gameswf::traits_info *)v9, a2, a3);
      v10 = (gameswf::ref_counted **)(*((_DWORD *)this + 4) + 4 * i);
      gameswf::smart_ptr<gameswf::traits_info>::set_ref(v10, (gameswf::ref_counted *)v9);
    }
  }
}


// ===== 7b91fc gameswf::metadata_info::~metadata_info() =====
void __fastcall gameswf::metadata_info::~metadata_info(gameswf::metadata_info *this)
{
  *(_DWORD *)this = off_991200;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7b9230 gameswf::metadata_info::~metadata_info() =====
void __fastcall gameswf::metadata_info::~metadata_info(gameswf::metadata_info *this)
{
  *(_DWORD *)this = off_991200;
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 7b926c gameswf::class_info::~class_info() =====
void __fastcall gameswf::class_info::~class_info(gameswf::class_info *this)
{
  char *v2; // r5

  *(_DWORD *)this = off_991220;
  v2 = (char *)this + 16;
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 4, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)v2, 0);
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 7b92c8 gameswf::script_info::~script_info() =====
void __fastcall gameswf::script_info::~script_info(gameswf::script_info *this)
{
  char *v2; // r4

  *(_DWORD *)this = off_991230;
  v2 = (char *)this + 16;
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 4, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)v2, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7b931c gameswf::class_info::~class_info() =====
void __fastcall gameswf::class_info::~class_info(gameswf::class_info *this)
{
  char *v2; // r4

  *(_DWORD *)this = off_991220;
  v2 = (char *)this + 16;
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 4, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)v2, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7b9370 gameswf::script_info::~script_info() =====
void __fastcall gameswf::script_info::~script_info(gameswf::script_info *this)
{
  char *v2; // r5

  *(_DWORD *)this = off_991230;
  v2 = (char *)this + 16;
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 4, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)v2, 0);
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 7b93cc gameswf::array<gameswf::array<int>>::resize(int) =====
void __fastcall gameswf::array<gameswf::array<int>>::resize(_DWORD *a1, int a2)
{
  int v2; // r10
  int v5; // r6
  int v6; // r5
  _DWORD *v7; // r0
  int v8; // r3
  int v9; // r2
  int v10; // r1
  int v11; // r10
  int v12; // r2

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 16 * a2;
    v6 = a2;
    do
    {
      while ( 1 )
      {
        v7 = (_DWORD *)(*a1 + v5);
        v8 = v7[1];
        if ( v8 < 0 )
          break;
        v7[1] = 0;
        ++v6;
        gameswf::array<int>::reserve((int)v7, 0);
        v5 += 16;
        if ( v6 == v2 )
          goto LABEL_8;
      }
      v9 = 4 * v8;
      do
      {
        ++v8;
        *(_DWORD *)(*v7 + v9) = 0;
        v9 += 4;
      }
      while ( v8 );
      v7[1] = 0;
      ++v6;
      gameswf::array<int>::reserve((int)v7, 0);
      v5 += 16;
    }
    while ( v6 != v2 );
  }
LABEL_8:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::array<int>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v10 = v2;
    v11 = 16 * v2;
    do
    {
      ++v10;
      v12 = *a1 + v11;
      *(_DWORD *)v12 = 0;
      *(_BYTE *)(v12 + 12) = 0;
      *(_DWORD *)(v12 + 4) = 0;
      *(_DWORD *)(v12 + 8) = 0;
      v11 += 16;
    }
    while ( v10 != a2 );
  }
  a1[1] = a2;
}


// ===== 7b94c4 gameswf::abc_def::~abc_def() =====
void __fastcall gameswf::abc_def::~abc_def(gameswf::abc_def *this)
{
  char *v2; // r5
  int v3; // r2
  _DWORD *v4; // r0
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r3
  _DWORD *v8; // r0
  int v9; // r3
  _DWORD *v10; // r0
  int v11; // r3
  _DWORD *v12; // lr
  int v13; // r2
  int v14; // r2
  int v15; // r2

  *(_DWORD *)this = off_991250;
  v2 = (char *)this + 188;
  gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::resize((_DWORD *)this + 47, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::reserve((int)v2, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::resize((_DWORD *)this + 43, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::reserve((int)this + 172, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::resize((_DWORD *)this + 39, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::reserve((int)this + 156, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::resize((_DWORD *)this + 35, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::reserve((int)this + 140, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::resize((_DWORD *)this + 31, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::reserve((int)this + 124, 0);
  gameswf::array<gameswf::multiname>::resize((_DWORD *)this + 27, 0);
  gameswf::array<gameswf::multiname>::reserve((int)this + 108, 0);
  gameswf::array<gameswf::array<int>>::resize((_DWORD *)this + 23, 0);
  gameswf::array<gameswf::array<int>>::reserve((int)this + 92, 0);
  v3 = *((_DWORD *)this + 20);
  v4 = (_DWORD *)((char *)this + 76);
  if ( v3 < 0 )
  {
    v11 = 8 * v3;
    do
    {
      ++v3;
      v12 = (_DWORD *)(*v4 + v11);
      *v12 = 0;
      v12[1] = 0;
      v11 += 8;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 20) = 0;
  gameswf::array<gameswf::namespac>::reserve((int)v4, 0);
  gameswf::array<gameswf::tu_string>::resize((int *)this + 15, 0);
  gameswf::array<gameswf::tu_string>::reserve((int)this + 60, 0);
  v5 = *((_DWORD *)this + 12);
  v6 = (_DWORD *)((char *)this + 44);
  if ( v5 < 0 )
  {
    v13 = 8 * v5;
    do
    {
      ++v5;
      *(_QWORD *)(*v6 + v13) = 0;
      v13 += 8;
    }
    while ( v5 );
  }
  *((_DWORD *)this + 12) = 0;
  gameswf::array<double>::reserve((int)v6, 0);
  v7 = *((_DWORD *)this + 8);
  v8 = (_DWORD *)((char *)this + 28);
  if ( v7 < 0 )
  {
    v14 = 4 * v7;
    do
    {
      ++v7;
      *(_DWORD *)(*v8 + v14) = 0;
      v14 += 4;
    }
    while ( v7 );
  }
  *((_DWORD *)this + 8) = 0;
  gameswf::array<unsigned int>::reserve((int)v8, 0);
  v9 = *((_DWORD *)this + 4);
  v10 = (_DWORD *)((char *)this + 12);
  if ( v9 < 0 )
  {
    v15 = 4 * v9;
    do
    {
      ++v9;
      *(_DWORD *)(*v10 + v15) = 0;
      v15 += 4;
    }
    while ( v9 );
  }
  *((_DWORD *)this + 4) = 0;
  gameswf::array<int>::reserve((int)v10, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7b96f0 gameswf::abc_def::~abc_def() =====
void __fastcall gameswf::abc_def::~abc_def(gameswf::abc_def *this)
{
  gameswf::abc_def::~abc_def(this);
  LC_API_FREE_0(this);
}


// ===== 7b970c gameswf::instance_info::read(gameswf::stream *,gameswf::abc_def *) =====
void __fastcall gameswf::instance_info::read(gameswf::instance_info *this, gameswf::stream *a2, gameswf::abc_def *a3)
{
  char u8; // r0
  int vu32; // r0
  int v8; // r5
  int v9; // r4
  int v10; // r3
  int i; // r4
  int v12; // r6
  int v13; // r9
  int j; // r6
  _DWORD *v15; // r0
  _DWORD *v16; // r5
  gameswf::ref_counted **v17; // r0

  *((_DWORD *)this + 3) = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 4) = gameswf::stream::read_vu32(a2);
  u8 = gameswf::stream::read_u8(a2);
  *((_BYTE *)this + 20) = u8;
  if ( (u8 & 8) != 0 )
    *((_DWORD *)this + 6) = gameswf::stream::read_vu32(a2);
  vu32 = gameswf::stream::read_vu32(a2);
  v8 = vu32;
  v9 = *((_DWORD *)this + 8);
  if ( vu32 && vu32 > *((_DWORD *)this + 9) )
    gameswf::array<int>::reserve((int)this + 28, vu32 + (vu32 >> 1));
  if ( v8 > v9 )
  {
    v10 = 4 * v9;
    do
    {
      ++v9;
      *(_DWORD *)(*((_DWORD *)this + 7) + v10) = 0;
      v10 += 4;
    }
    while ( v8 != v9 );
  }
  *((_DWORD *)this + 8) = v8;
  if ( v8 > 0 )
  {
    for ( i = 0; i != v8; ++i )
    {
      v12 = *((_DWORD *)this + 7);
      *(_DWORD *)(v12 + 4 * i) = gameswf::stream::read_vu32(a2);
    }
  }
  *((_DWORD *)this + 11) = gameswf::stream::read_vu32(a2);
  v13 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 12, v13);
  if ( v13 > 0 )
  {
    for ( j = 0; j != v13; ++j )
    {
      v15 = operator new(0x34u, 0);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = 0;
      v15[5] = 0;
      v15[6] = 0;
      v15[7] = 0;
      v15[8] = 0;
      v15[9] = 0;
      v15[10] = 0;
      v15[11] = 0;
      v15[12] = 0;
      v16 = v15;
      gameswf::ref_counted::ref_counted(v15);
      v16[9] = 0;
      *v16 = off_991240;
      v16[10] = 0;
      v16[11] = 0;
      *((_BYTE *)v16 + 48) = 0;
      gameswf::traits_info::read((gameswf::traits_info *)v16, a2, a3);
      v17 = (gameswf::ref_counted **)(*((_DWORD *)this + 12) + 4 * j);
      gameswf::smart_ptr<gameswf::traits_info>::set_ref(v17, (gameswf::ref_counted *)v16);
    }
  }
}


// ===== 7b98d4 gameswf::array<int>::~array() =====
_DWORD *__fastcall gameswf::array<int>::~array(_DWORD *a1)
{
  int v1; // r3
  int v3; // r2

  v1 = a1[1];
  if ( v1 < 0 )
  {
    v3 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*a1 + v3) = 0;
      v3 += 4;
    }
    while ( v1 );
  }
  a1[1] = 0;
  gameswf::array<int>::reserve((int)a1, 0);
  return a1;
}


// ===== 7b9938 gameswf::instance_info::~instance_info() =====
void __fastcall gameswf::instance_info::~instance_info(gameswf::instance_info *this)
{
  char *v2; // r5
  int v3; // r3
  _DWORD *v4; // r0
  int v5; // r2

  *(_DWORD *)this = off_991210;
  v2 = (char *)this + 48;
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 12, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)v2, 0);
  v3 = *((_DWORD *)this + 8);
  v4 = (_DWORD *)((char *)this + 28);
  if ( v3 < 0 )
  {
    v5 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*v4 + v5) = 0;
      v5 += 4;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 8) = 0;
  gameswf::array<int>::reserve((int)v4, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7b99d0 gameswf::instance_info::~instance_info() =====
void __fastcall gameswf::instance_info::~instance_info(gameswf::instance_info *this)
{
  gameswf::instance_info::~instance_info(this);
  LC_API_FREE_0(this);
}


// ===== 7b99ec gameswf::abc_def::~abc_def() =====
void __fastcall gameswf::abc_def::~abc_def(gameswf::abc_def *this)
{
  char *v2; // r5
  int v3; // r2
  _DWORD *v4; // r0
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r3
  _DWORD *v8; // r0
  int v9; // r3
  _DWORD *v10; // r0
  int v11; // r3
  _DWORD *v12; // lr
  int v13; // r2
  int v14; // r2
  int v15; // r2

  *(_DWORD *)this = off_991250;
  v2 = (char *)this + 188;
  gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::resize((_DWORD *)this + 47, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::reserve((int)v2, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::resize((_DWORD *)this + 43, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::reserve((int)this + 172, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::resize((_DWORD *)this + 39, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::reserve((int)this + 156, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::resize((_DWORD *)this + 35, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::reserve((int)this + 140, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::resize((_DWORD *)this + 31, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::reserve((int)this + 124, 0);
  gameswf::array<gameswf::multiname>::resize((_DWORD *)this + 27, 0);
  gameswf::array<gameswf::multiname>::reserve((int)this + 108, 0);
  gameswf::array<gameswf::array<int>>::resize((_DWORD *)this + 23, 0);
  gameswf::array<gameswf::array<int>>::reserve((int)this + 92, 0);
  v3 = *((_DWORD *)this + 20);
  v4 = (_DWORD *)((char *)this + 76);
  if ( v3 < 0 )
  {
    v11 = 8 * v3;
    do
    {
      ++v3;
      v12 = (_DWORD *)(*v4 + v11);
      *v12 = 0;
      v12[1] = 0;
      v11 += 8;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 20) = 0;
  gameswf::array<gameswf::namespac>::reserve((int)v4, 0);
  gameswf::array<gameswf::tu_string>::resize((int *)this + 15, 0);
  gameswf::array<gameswf::tu_string>::reserve((int)this + 60, 0);
  v5 = *((_DWORD *)this + 12);
  v6 = (_DWORD *)((char *)this + 44);
  if ( v5 < 0 )
  {
    v13 = 8 * v5;
    do
    {
      ++v5;
      *(_QWORD *)(*v6 + v13) = 0;
      v13 += 8;
    }
    while ( v5 );
  }
  *((_DWORD *)this + 12) = 0;
  gameswf::array<double>::reserve((int)v6, 0);
  v7 = *((_DWORD *)this + 8);
  v8 = (_DWORD *)((char *)this + 28);
  if ( v7 < 0 )
  {
    v14 = 4 * v7;
    do
    {
      ++v7;
      *(_DWORD *)(*v8 + v14) = 0;
      v14 += 4;
    }
    while ( v7 );
  }
  *((_DWORD *)this + 8) = 0;
  gameswf::array<unsigned int>::reserve((int)v8, 0);
  v9 = *((_DWORD *)this + 4);
  v10 = (_DWORD *)((char *)this + 12);
  if ( v9 < 0 )
  {
    v15 = 4 * v9;
    do
    {
      ++v9;
      *(_DWORD *)(*v10 + v15) = 0;
      v15 += 4;
    }
    while ( v9 );
  }
  *((_DWORD *)this + 4) = 0;
  gameswf::array<int>::reserve((int)v10, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7b9c18 gameswf::traits_info::~traits_info() =====
void __fastcall gameswf::traits_info::~traits_info(gameswf::traits_info *this)
{
  _DWORD *v2; // r0
  int v3; // r3
  int v4; // r2

  *(_DWORD *)this = off_991240;
  v2 = (_DWORD *)((char *)this + 36);
  v3 = *((_DWORD *)this + 10);
  if ( v3 < 0 )
  {
    v4 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*v2 + v4) = 0;
      v4 += 4;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 10) = 0;
  gameswf::array<int>::reserve((int)v2, 0);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7b9c90 gameswf::abc_def::read_cpool(gameswf::stream *) =====
void __fastcall gameswf::abc_def::read_cpool(gameswf::abc_def *this, gameswf::stream *a2)
{
  int vu32; // r0
  int v5; // r7
  int v6; // r6
  int v7; // r3
  _DWORD *v8; // r3
  int i; // r6
  int v10; // r8
  int v11; // r0
  int v12; // r7
  int v13; // r6
  int v14; // r3
  _DWORD *v15; // r3
  int j; // r6
  int v17; // r8
  int v18; // r0
  int v19; // r7
  int v20; // r6
  int v21; // r3
  _QWORD *v22; // r3
  int k; // r6
  int v24; // r8
  __int64 v25; // r0
  int v26; // r3
  int v27; // r8
  gameswf::tu_string *v28; // r6
  char *v29; // r3
  int v30; // r7
  int m; // r6
  int v32; // r0
  int v33; // r0
  int v34; // r7
  int v35; // r6
  int v36; // r3
  _DWORD *v37; // r0
  _DWORD *v38; // r3
  int n; // r6
  int u8; // r8
  int v41; // r0
  int *v42; // r2
  int v43; // r11
  int *v44; // r1
  int **v45; // r0
  int v46; // r3
  int ii; // r9
  int v48; // r0
  int v49; // r6
  int v50; // r7
  int v51; // r3
  int jj; // r7
  int v53; // r8
  _DWORD *v54; // r7
  int v55; // r8
  int v56; // r3
  int v57; // r3
  int v58; // r6
  _DWORD *v59; // r3
  int v60; // r9
  int v61; // r10
  int v62; // r7
  int v63; // r11
  unsigned int v64; // r8
  int v65; // r3
  unsigned int *v66; // r3
  int v67; // r2
  int v68; // [sp+4h] [bp-18h]
  int v69; // [sp+8h] [bp-14h] BYREF
  int v70; // [sp+Ch] [bp-10h]
  int v71; // [sp+10h] [bp-Ch]
  char v72; // [sp+14h] [bp-8h]

  vu32 = gameswf::stream::read_vu32(a2);
  v5 = vu32;
  if ( vu32 > 0 )
  {
    v6 = *((_DWORD *)this + 4);
    if ( vu32 > *((_DWORD *)this + 5) )
      gameswf::array<int>::reserve((int)this + 12, vu32 + (vu32 >> 1));
    if ( v5 > v6 )
    {
      v7 = 4 * v6;
      do
      {
        ++v6;
        *(_DWORD *)(*((_DWORD *)this + 3) + v7) = 0;
        v7 += 4;
      }
      while ( v5 != v6 );
    }
    v8 = *((_DWORD **)this + 3);
    *((_DWORD *)this + 4) = v5;
    *v8 = 0;
    if ( v5 != 1 )
    {
      for ( i = 1; i != v5; ++i )
      {
        v10 = *((_DWORD *)this + 3);
        *(_DWORD *)(v10 + 4 * i) = gameswf::stream::read_vu32(a2);
      }
    }
  }
  v11 = gameswf::stream::read_vu32(a2);
  v12 = v11;
  if ( v11 > 0 )
  {
    v13 = *((_DWORD *)this + 8);
    if ( v11 > *((_DWORD *)this + 9) )
      gameswf::array<unsigned int>::reserve((int)this + 28, v11 + (v11 >> 1));
    if ( v12 > v13 )
    {
      v14 = 4 * v13;
      do
      {
        ++v13;
        *(_DWORD *)(*((_DWORD *)this + 7) + v14) = 0;
        v14 += 4;
      }
      while ( v12 != v13 );
    }
    v15 = *((_DWORD **)this + 7);
    *((_DWORD *)this + 8) = v12;
    *v15 = 0;
    if ( v12 != 1 )
    {
      for ( j = 1; j != v12; ++j )
      {
        v17 = *((_DWORD *)this + 7);
        *(_DWORD *)(v17 + 4 * j) = gameswf::stream::read_vu32(a2);
      }
    }
  }
  v18 = gameswf::stream::read_vu32(a2);
  v19 = v18;
  if ( v18 > 0 )
  {
    v20 = *((_DWORD *)this + 12);
    if ( v18 > *((_DWORD *)this + 13) )
      gameswf::array<double>::reserve((int)this + 44, v18 + (v18 >> 1));
    if ( v19 > v20 )
    {
      v21 = 8 * v20;
      do
      {
        ++v20;
        *(_QWORD *)(*((_DWORD *)this + 11) + v21) = 0;
        v21 += 8;
      }
      while ( v19 != v20 );
    }
    v22 = *((_QWORD **)this + 11);
    *((_DWORD *)this + 12) = v19;
    *v22 = 0;
    if ( v19 != 1 )
    {
      for ( k = 1; k != v19; ++k )
      {
        v24 = *((_DWORD *)this + 11);
        v25 = gameswf::stream::read_double(a2);
        v26 = 8 * k;
        *(_QWORD *)(v24 + v26) = v25;
      }
    }
  }
  v27 = gameswf::stream::read_vu32(a2);
  if ( v27 > 0 )
  {
    gameswf::array<gameswf::tu_string>::resize((int *)this + 15, v27);
    v28 = *((gameswf::tu_string **)this + 15);
    gameswf::tu_string::resize(v28, 0);
    v29 = *(char *)v28 == -1 ? *((char **)v28 + 3) : (char *)v28 + 1;
    *v29 = 0;
    *((_DWORD *)v28 + 4) = *((_DWORD *)v28 + 4) & 0xFF000000 | 0xFFFFFF;
    if ( v27 != 1 )
    {
      v30 = 20;
      for ( m = 1; m != v27; ++m )
      {
        v32 = gameswf::stream::read_vu32(a2);
        gameswf::stream::read_string_with_length(a2, v32, (gameswf::tu_string *)(*((_DWORD *)this + 15) + v30));
        v30 += 20;
      }
    }
  }
  v33 = gameswf::stream::read_vu32(a2);
  v34 = v33;
  if ( v33 > 0 )
  {
    v35 = *((_DWORD *)this + 20);
    if ( v33 > *((_DWORD *)this + 21) )
      gameswf::array<gameswf::namespac>::reserve((int)this + 76, v33 + (v33 >> 1));
    if ( v34 > v35 )
    {
      v36 = 8 * v35;
      do
      {
        ++v35;
        v37 = (_DWORD *)(*((_DWORD *)this + 19) + v36);
        *v37 = 0;
        v37[1] = 0;
        v36 += 8;
      }
      while ( v34 != v35 );
    }
    v38 = *((_DWORD **)this + 19);
    *((_DWORD *)this + 20) = v34;
    *v38 = 0;
    v38[1] = 0;
    if ( v34 != 1 )
    {
      for ( n = 1; n != v34; ++n )
      {
        u8 = gameswf::stream::read_u8(a2);
        v41 = gameswf::stream::read_vu32(a2);
        v42 = (int *)(*((_DWORD *)this + 19) + 8 * n);
        v42[1] = v41;
        *v42 = u8;
      }
    }
  }
  v43 = gameswf::stream::read_vu32(a2);
  if ( v43 > 0 )
  {
    gameswf::array<gameswf::array<int>>::resize((_DWORD *)this + 23, v43);
    v45 = *((int ***)this + 23);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v46 = (int)v45[1];
    if ( v46 < 0 )
    {
      v67 = v46;
      do
      {
        v44 = *v45;
        ++v46;
        (*v45)[v67++] = 0;
      }
      while ( v46 );
    }
    if ( v43 == 1 )
      v44 = &v69;
    v45[1] = nullptr;
    if ( v43 == 1 )
    {
      gameswf::array<int>::~array(v44);
    }
    else
    {
      for ( ii = 1; ii != v43; ++ii )
      {
        v48 = gameswf::stream::read_vu32(a2);
        v49 = v48;
        v50 = v70;
        if ( v48 && v48 > v71 )
          gameswf::array<int>::reserve((int)&v69, v48 + (v48 >> 1));
        if ( v49 > v50 )
        {
          v51 = 4 * v50;
          do
          {
            ++v50;
            *(_DWORD *)(v69 + v51) = 0;
            v51 += 4;
          }
          while ( v49 != v50 );
        }
        v70 = v49;
        if ( v49 > 0 )
        {
          for ( jj = 0; jj != v49; ++jj )
          {
            v53 = v69;
            *(_DWORD *)(v53 + 4 * jj) = gameswf::stream::read_vu32(a2);
          }
          v49 = v70;
        }
        v54 = (_DWORD *)(*((_DWORD *)this + 23) + 16 * ii);
        v55 = v54[1];
        if ( v49 && v49 > v54[2] )
          gameswf::array<int>::reserve(*((_DWORD *)this + 23) + 16 * ii, v49 + (v49 >> 1));
        if ( v49 > v55 )
        {
          v56 = 4 * v55;
          do
          {
            ++v55;
            *(_DWORD *)(*v54 + v56) = 0;
            v56 += 4;
          }
          while ( v55 != v49 );
        }
        v54[1] = v49;
        if ( v49 > 0 )
        {
          v57 = 0;
          do
          {
            *(_DWORD *)(*v54 + 4 * v57) = *(_DWORD *)(v69 + 4 * v57);
            ++v57;
          }
          while ( v57 < v54[1] );
        }
      }
      gameswf::array<int>::~array(&v69);
    }
  }
  v58 = gameswf::stream::read_vu32(a2);
  if ( v58 > 0 )
  {
    gameswf::array<gameswf::multiname>::resize((_DWORD *)this + 27, v58);
    v59 = *((_DWORD **)this + 27);
    v60 = 0;
    *v59 = 0;
    v59[3] = 0;
    v59[4] = 0;
    v59[2] = 0;
    v59[1] = 0;
    if ( v58 != 1 )
    {
      v68 = 0;
      v61 = 1;
      v62 = 20;
      v63 = 0;
      do
      {
        v64 = gameswf::stream::read_u8(a2);
        if ( v64 <= 0x1C )
        {
          v65 = 1 << v64;
          if ( ((1 << v64) & 0x4200) != 0 )
          {
            v60 = gameswf::stream::read_vu32(a2);
            v63 = gameswf::stream::read_vu32(a2);
          }
          else if ( (v65 & 0x2080) != 0 )
          {
            v68 = gameswf::stream::read_vu32(a2);
            v63 = gameswf::stream::read_vu32(a2);
          }
          else if ( (v65 & 0x18000000) != 0 )
          {
            v60 = gameswf::stream::read_vu32(a2);
          }
        }
        ++v61;
        v66 = (unsigned int *)(*((_DWORD *)this + 27) + v62);
        v66[1] = 0;
        v66[3] = v60;
        v66[4] = v63;
        v66[2] = v68;
        *v66 = v64;
        v62 += 20;
      }
      while ( v61 != v58 );
    }
  }
}


// ===== 7ba258 gameswf::abc_def::read(gameswf::stream *,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::abc_def::read(gameswf::abc_def *this, gameswf::stream *a2, gameswf::movie_definition_sub *a3)
{
  int vu32; // r9
  int i; // r6
  gameswf::player *v8; // r10
  gameswf::as_3_function *v9; // r8
  gameswf::ref_counted **v10; // r0
  int v11; // r9
  int j; // r8
  gameswf::ref_counted *v13; // r0
  gameswf::ref_counted *v14; // r6
  gameswf::ref_counted **v15; // r0
  int v16; // r9
  int v17; // r10
  int v18; // r8
  _DWORD *v19; // r6
  gameswf::ref_counted **v20; // r0
  _DWORD *v21; // r0
  _DWORD *v22; // r6
  gameswf::ref_counted **v23; // r0
  int v24; // r9
  int k; // r10
  _DWORD *v26; // r0
  _DWORD *v27; // r6
  gameswf::ref_counted **v28; // r0
  int result; // r0
  int v30; // r7
  int v31; // r6
  int v32; // r0

  gameswf::stream::get_tag_end_position(a2);
  gameswf::stream::read_u16(a2);
  gameswf::stream::read_u16(a2);
  gameswf::abc_def::read_cpool(this, a2);
  vu32 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::as_3_function>>::resize((_DWORD *)this + 31, vu32);
  if ( vu32 > 0 )
  {
    for ( i = 0; i != vu32; ++i )
    {
      gameswf::weak_ptr<gameswf::player>::check_proxy((int)a3 + 24);
      v8 = *((gameswf::player **)a3 + 7);
      v9 = (gameswf::as_3_function *)operator new(0xBCu, 0);
      gameswf::as_3_function::as_3_function(v9, this, i, v8);
      gameswf::as_3_function::read(v9, a2);
      v10 = (gameswf::ref_counted **)(*((_DWORD *)this + 31) + 4 * i);
      gameswf::smart_ptr<gameswf::as_3_function>::set_ref(v10, v9);
    }
  }
  v11 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::metadata_info>>::resize((_DWORD *)this + 35, v11);
  if ( v11 > 0 )
  {
    for ( j = 0; j != v11; ++j )
    {
      v13 = (gameswf::ref_counted *)operator new(0xCu, 0);
      *(_DWORD *)v13 = 0;
      *((_DWORD *)v13 + 1) = 0;
      *((_DWORD *)v13 + 2) = 0;
      v14 = v13;
      gameswf::ref_counted::ref_counted(v13);
      *(_DWORD *)v14 = off_991200;
      gameswf::metadata_info::read();
      v15 = (gameswf::ref_counted **)(*((_DWORD *)this + 35) + 4 * j);
      gameswf::smart_ptr<gameswf::metadata_info>::set_ref(v15, v14);
    }
  }
  v16 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::instance_info>>::resize((_DWORD *)this + 39, v16);
  if ( v16 <= 0 )
  {
    gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::resize((_DWORD *)this + 43, v16);
  }
  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = operator new(0x40u, 0);
      gameswf::ref_counted::ref_counted(v19);
      *v19 = off_991210;
      v19[3] = 0;
      v19[4] = 0;
      *((_BYTE *)v19 + 20) = 0;
      v19[6] = 0;
      v19[7] = 0;
      v19[8] = 0;
      v19[9] = 0;
      *((_BYTE *)v19 + 40) = 0;
      v19[11] = 0;
      v19[12] = 0;
      v19[13] = 0;
      v19[14] = 0;
      *((_BYTE *)v19 + 60) = 0;
      gameswf::instance_info::read((gameswf::instance_info *)v19, a2, this);
      v20 = (gameswf::ref_counted **)(*((_DWORD *)this + 39) + 4 * v17++);
      gameswf::smart_ptr<gameswf::instance_info>::set_ref(v20, (gameswf::ref_counted *)v19);
    }
    while ( v17 != v16 );
    gameswf::array<gameswf::smart_ptr<gameswf::class_info>>::resize((_DWORD *)this + 43, v16);
    do
    {
      v21 = operator new(0x20u, 0);
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = 0;
      *((_BYTE *)v21 + 28) = 0;
      v22 = v21;
      gameswf::ref_counted::ref_counted(v21);
      *v22 = off_991220;
      v22[4] = 0;
      v22[5] = 0;
      v22[6] = 0;
      *((_BYTE *)v22 + 28) = 0;
      gameswf::class_info::read((gameswf::class_info *)v22, a2, this);
      v23 = (gameswf::ref_counted **)(*((_DWORD *)this + 43) + 4 * v18++);
      gameswf::smart_ptr<gameswf::class_info>::set_ref(v23, (gameswf::ref_counted *)v22);
    }
    while ( v18 != v16 );
  }
  v24 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::script_info>>::resize((_DWORD *)this + 47, v24);
  if ( v24 > 0 )
  {
    for ( k = 0; k != v24; ++k )
    {
      v26 = operator new(0x20u, 0);
      *v26 = 0;
      v26[1] = 0;
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = 0;
      v26[5] = 0;
      v26[6] = 0;
      *((_BYTE *)v26 + 28) = 0;
      v27 = v26;
      gameswf::ref_counted::ref_counted(v26);
      *v27 = off_991230;
      v27[4] = 0;
      v27[5] = 0;
      v27[6] = 0;
      *((_BYTE *)v27 + 28) = 0;
      gameswf::script_info::read((gameswf::script_info *)v27, a2, this);
      v28 = (gameswf::ref_counted **)(*((_DWORD *)this + 47) + 4 * k);
      gameswf::smart_ptr<gameswf::script_info>::set_ref(v28, (gameswf::ref_counted *)v27);
    }
  }
  result = gameswf::stream::read_vu32(a2);
  v30 = result;
  if ( result > 0 )
  {
    v31 = 0;
    do
    {
      v32 = gameswf::stream::read_vu32(a2);
      ++v31;
      result = gameswf::as_3_function::read_body(*(gameswf::as_3_function **)(*((_DWORD *)this + 31) + 4 * v32), a2);
    }
    while ( v31 != v30 );
  }
  return result;
}


// ===== 7ba5e4 gameswf::traits_info::~traits_info() =====
void __fastcall gameswf::traits_info::~traits_info(gameswf::traits_info *this)
{
  _DWORD *v2; // r0
  int v3; // r3
  int v4; // r2

  *(_DWORD *)this = off_991240;
  v2 = (_DWORD *)((char *)this + 36);
  v3 = *((_DWORD *)this + 10);
  if ( v3 < 0 )
  {
    v4 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*v2 + v4) = 0;
      v4 += 4;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 10) = 0;
  gameswf::array<int>::reserve((int)v2, 0);
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 7ba664 gameswf::do_action::execute(gameswf::character *) =====
int __fastcall gameswf::do_action::execute(gameswf::do_action *this, gameswf::character *a2)
{
  return (*(int (__fastcall **)(gameswf::character *, char *))(*(_DWORD *)a2 + 204))(a2, (char *)this + 4);
}


// ===== 7ba684 gameswf::do_action::is_action_tag(void) =====
int __fastcall gameswf::do_action::is_action_tag(gameswf::do_action *this)
{
  return 1;
}


// ===== 7ba68c gameswf::do_action::get_action_offset(void) =====
int __fastcall gameswf::do_action::get_action_offset(gameswf::do_action *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 7ba694 gameswf::cast_to<gameswf::character>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::character>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 1) )
    return a1;
  else
    return 0;
}


// ===== 7ba6c8 gameswf::cast_to<gameswf::as_c_function>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_c_function>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 5) )
    return a1;
  else
    return 0;
}


// ===== 7ba6fc gameswf::cast_to<gameswf::as_s_function>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_s_function>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 6) )
    return a1;
  else
    return 0;
}


// ===== 7ba730 `global constructor keyed to'.._.._src_gameswf_gameswf_action.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_action.cpp()
{
  byte_A2EBD4 = 0;
  gameswf::s_fnames_string = 0;
  dword_A2EBCC = 0;
  dword_A2EBD0 = 0;
  return _aeabi_atexit(
           (int)&gameswf::s_fnames_string,
           (int)gameswf::array<gameswf::tu_stringi>::~array,
           (int)&_dso_handle);
}


// ===== 7ba778 gameswf::array<gameswf::tu_stringi>::reserve(int) =====
void __fastcall gameswf::array<gameswf::tu_stringi>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 20 * a2, 20 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(20 * a2);
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


// ===== 7ba800 gameswf::array<gameswf::tu_string const*>::reserve(int) =====
void __fastcall gameswf::array<gameswf::tu_string const*>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
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


// ===== 7ba87c gameswf::array<gameswf::as_s_function::arg_spec>::reserve(int) =====
void __fastcall gameswf::array<gameswf::as_s_function::arg_spec>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 24 * a2, 24 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(24 * a2);
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


// ===== 7ba904 gameswf::call_method(gameswf::as_value const&,gameswf::as_environment *,gameswf::as_value const&,int,int,char const*) =====
_BYTE *__fastcall gameswf::call_method(_BYTE *a1, gameswf::as_value *this, int a3, int a4, int a5, int a6, int a7)
{
  int v8; // r0

  *a1 = 0;
  a1[1] = 0;
  v8 = gameswf::as_value::to_function(this);
  if ( v8 )
    (*(void (**)(void))(*(_DWORD *)v8 + 100))();
  return a1;
}


// ===== 7ba984 gameswf::as_value::operator/=(double) =====
int __fastcall gameswf::as_value::operator/=(gameswf::as_value *a1, int a2, double a3)
{
  double v4; // r2

  v4 = COERCE_DOUBLE(gameswf::as_value::to_number(a1, a2, (const char *)LODWORD(a3))) / a3;
  return gameswf::as_value::set_double(a1, v4);
}


// ===== 7ba9b8 gameswf::array<gameswf::as_value>::push_back<float>(float const&) =====
double __fastcall gameswf::array<gameswf::as_value>::push_back<float>(_DWORD *a1, float *a2)
{
  int v2; // r3
  int v3; // r6
  float v6; // r0
  int v7; // r5
  double result; // r0

  v2 = a1[1];
  v3 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v3 + (v3 >> 1));
    v2 = a1[1];
  }
  v6 = *a2;
  v7 = *a1 + 12 * v2;
  *(_BYTE *)v7 = 0;
  *(_BYTE *)(v7 + 1) = 2;
  result = v6;
  *(double *)(v7 + 4) = result;
  a1[1] = v3;
  return result;
}


// ===== 7baa34 gameswf::array<gameswf::as_value>::push_back<double>(double const&) =====
int __fastcall gameswf::array<gameswf::as_value>::push_back<double>(int *a1, __int64 *a2)
{
  int v2; // r3
  int v3; // r5
  int v6; // r1
  int v7; // r3
  __int64 v8; // r6
  int v10; // r2

  v2 = a1[1];
  v3 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v3 + (v3 >> 1));
    v2 = a1[1];
  }
  v6 = *a1;
  v7 = 12 * v2;
  v8 = *a2;
  *(_BYTE *)(v6 + v7) = 0;
  v10 = v6 + v7;
  *(_BYTE *)(v10 + 1) = 2;
  *(_QWORD *)(v10 + 4) = v8;
  a1[1] = v3;
  return 0;
}


// ===== 7baaac gameswf::array<gameswf::with_stack_entry>::resize(int) =====
void __fastcall gameswf::array<gameswf::with_stack_entry>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6
  _DWORD *v10; // r0

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 8 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 8;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::with_stack_entry>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 8 * v2;
    do
    {
      ++v8;
      v10 = (_DWORD *)(*a1 + v9);
      *v10 = 0;
      v10[1] = 0;
      v9 += 8;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7bab50 gameswf::array<gameswf::with_stack_entry>::operator=(gameswf::array<gameswf::with_stack_entry> const&) =====
void __fastcall gameswf::array<gameswf::with_stack_entry>::operator=(_DWORD *a1, _DWORD *a2)
{
  int v4; // r4
  int v5; // r5
  int v6; // r7

  gameswf::array<gameswf::with_stack_entry>::resize(a1, a2[1]);
  if ( (int)a1[1] > 0 )
  {
    v4 = 0;
    do
    {
      v5 = *a1 + 8 * v4;
      v6 = *a2 + 8 * v4;
      gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)v5, *(gameswf::ref_counted **)v6);
      ++v4;
      *(_DWORD *)(v5 + 4) = *(_DWORD *)(v6 + 4);
    }
    while ( a1[1] > v4 );
  }
}


// ===== 7babb0 gameswf::as_value::as_value(gameswf::as_object *) =====
gameswf::as_value *__fastcall gameswf::as_value::as_value(gameswf::as_value *this, gameswf::as_object *a2)
{
  *(_BYTE *)this = 0;
  *((_BYTE *)this + 1) = 5;
  *((_DWORD *)this + 1) = a2;
  if ( a2 )
    gameswf::ref_counted::add_ref((int)a2);
  return this;
}


// ===== 7babe4 gameswf::array<gameswf::with_stack_entry>::push_back<gameswf::with_stack_entry>(gameswf::with_stack_entry const&) =====
int __fastcall gameswf::array<gameswf::with_stack_entry>::push_back<gameswf::with_stack_entry>(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r5
  int result; // r0
  int v7; // r7
  bool v8; // zf
  int v9; // r7

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::with_stack_entry>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = *a1;
  v8 = *a2 == 0;
  *(_DWORD *)(*a1 + 8 * v2) = *a2;
  v9 = v7 + 8 * v2;
  if ( !v8 )
    result = gameswf::ref_counted::add_ref(result);
  *(_DWORD *)(v9 + 4) = a2[1];
  a1[1] = v4;
  return result;
}


// ===== 7bac40 gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(gameswf::tu_string const&) =====
int __fastcall gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(
        int *a1,
        char *a2)
{
  int v2; // r5
  int v4; // r6
  int v6; // r10
  char *v7; // r1
  int v8; // r3
  int v9; // t1
  int v10; // r3
  int v11; // r4
  char *v12; // r3
  int v13; // t1
  int v14; // r3
  int v15; // r8
  int v16; // r2
  int v17; // r8
  int v18; // r2
  const char *v19; // r0
  const char *v20; // r1

  v2 = *a1;
  if ( !*a1 )
    return -1;
  v6 = *a2;
  if ( v6 == -1 )
  {
    v8 = *((_DWORD *)a2 + 1);
    v7 = *((char **)a2 + 3);
  }
  else
  {
    v9 = *a2;
    v7 = a2 + 1;
    v8 = v9;
  }
  v10 = v8 - 1;
  if ( v10 > 0 )
  {
    v12 = &v7[v10];
    v11 = 5381;
    do
    {
      v13 = (unsigned __int8)*--v12;
      v11 = (33 * v11) ^ v13;
    }
    while ( v12 != v7 );
    if ( v11 == -1 )
      v11 = -32769;
  }
  else
  {
    v11 = 5381;
  }
  v14 = *(_DWORD *)(v2 + 4);
  v4 = v11 & v14;
  v15 = 4 * (v11 & v14) + 1;
  v16 = *(_DWORD *)(v2 + 8 * v15);
  v17 = v2 + 8 * v15;
  if ( v16 == -2 )
    return -1;
  v18 = *(_DWORD *)(v17 + 4);
  if ( v18 != -1 && (v14 & v18) != v4 )
    return -1;
  while ( 1 )
  {
    if ( v11 == v18 )
    {
      if ( a2 == (char *)(v17 + 8) )
        break;
      v19 = *(char *)(v17 + 8) == -1 ? *(const char **)(v17 + 20) : (const char *)(v17 + 9);
      v20 = v6 == -1 ? *((const char **)a2 + 3) : a2 + 1;
      if ( !LC_API_STRCMP_0(v19, v20) )
        break;
    }
    v4 = *(_DWORD *)v17;
    if ( *(_DWORD *)v17 == -1 )
      break;
    v17 = v2 + 32 * v4 + 8;
    v18 = *(_DWORD *)(v2 + 32 * v4 + 12);
  }
  return v4;
}


// ===== 7bad44 gameswf::action_buffer::enumerate(gameswf::as_environment *,gameswf::as_object *) =====
void __fastcall gameswf::action_buffer::enumerate(
        gameswf::action_buffer *this,
        gameswf::as_environment *a2,
        gameswf::as_object *a3)
{
  _BYTE v5[12]; // [sp+4h] [bp-Ch] BYREF

  v5[0] = 0;
  v5[1] = 0;
  gameswf::as_value::set_as_object((gameswf::as_value *)v5, nullptr);
  gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(this);
  if ( a2 )
    (*(void (__fastcall **)(gameswf::as_environment *, gameswf::action_buffer *))(*(_DWORD *)a2 + 48))(a2, this);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
}


// ===== 7badb4 gameswf::swap<gameswf::as_value>(gameswf::as_value *,gameswf::as_value *) =====
void __fastcall gameswf::swap<gameswf::as_value>(gameswf::as_value *a1, gameswf::as_value *a2)
{
  _BYTE v4[12]; // [sp+4h] [bp-Ch] BYREF

  v4[1] = 0;
  v4[0] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v4, (int)a1);
  gameswf::as_value::operator=(a1, (int)a2);
  gameswf::as_value::operator=(a2, (int)v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
}


// ===== 7bae08 gameswf::action_buffer::action_buffer(void) =====
gameswf::action_buffer *__fastcall gameswf::action_buffer::action_buffer(gameswf::action_buffer *this)
{
  _DWORD *v2; // r5

  v2 = operator new(0x24u, 0);
  gameswf::membuf::membuf((int)v2);
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  *((_BYTE *)v2 + 32) = 0;
  *(_DWORD *)this = v2;
  ++v2[4];
  *((_DWORD *)this + 1) = -1;
  *((_DWORD *)this + 2) = 0;
  return this;
}


// ===== 7bae5c gameswf::action_buffer::action_buffer(void) =====
gameswf::action_buffer *__fastcall gameswf::action_buffer::action_buffer(gameswf::action_buffer *this)
{
  _DWORD *v2; // r5

  v2 = operator new(0x24u, 0);
  gameswf::membuf::membuf((int)v2);
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  *((_BYTE *)v2 + 32) = 0;
  *(_DWORD *)this = v2;
  ++v2[4];
  *((_DWORD *)this + 1) = -1;
  *((_DWORD *)this + 2) = 0;
  return this;
}


// ===== 7baeb0 gameswf::array<gameswf::as_value>::push_back<wchar_t const*>(wchar_t const* const&) =====
gameswf::as_value *__fastcall gameswf::array<gameswf::as_value>::push_back<wchar_t const*>(
        _DWORD *a1,
        const wchar_t **a2)
{
  int v2; // r3
  int v4; // r5
  gameswf::as_value *result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = gameswf::as_value::as_value((gameswf::as_value *)(*a1 + 12 * v2), *a2);
  a1[1] = v4;
  return result;
}


// ===== 7baef8 gameswf::event_id::get_function_name(void) =====
int __fastcall gameswf::event_id::get_function_name(gameswf::event_id *this)
{
  int v2; // r5
  int i; // r3
  const char *v5; // r1
  int v6; // r4

  v2 = dword_A2EBCC;
  if ( !dword_A2EBCC )
  {
    gameswf::array<gameswf::tu_stringi>::reserve((int)&gameswf::s_fnames_string, 27);
    for ( i = dword_A2EBCC; ; i = v6 )
    {
      v6 = i + 1;
      if ( i + 1 > dword_A2EBD0 )
      {
        gameswf::array<gameswf::tu_stringi>::reserve((int)&gameswf::s_fnames_string, v6 + (v6 >> 1));
        i = dword_A2EBCC;
      }
      v5 = *(char **)((char *)gameswf::s_function_names + v2);
      v2 += 4;
      gameswf::tu_string::tu_string((gameswf::tu_string *)(gameswf::s_fnames_string + 20 * i), v5);
      dword_A2EBCC = v6;
      if ( v2 == 108 )
        break;
    }
  }
  return gameswf::s_fnames_string + 20 * *(unsigned __int8 *)this;
}


// ===== 7bafa4 gameswf::action_buffer::read(gameswf::stream *) =====
gameswf::membuf *__fastcall gameswf::action_buffer::read(gameswf::membuf ***this, gameswf::stream *a2)
{
  gameswf::membuf **v4; // r4
  int tag_end_position; // r6
  int position; // r0
  int v7; // r0
  gameswf::membuf *result; // r0
  gameswf::membuf *v9; // r6
  gameswf::membuf *v10; // r5
  gameswf::membuf *v11; // r1
  int u16; // r0
  gameswf::membuf *v13; // r5
  int v14; // r10
  gameswf::membuf *v15; // r1
  char v16; // r7
  gameswf::membuf *v17; // r5
  gameswf::membuf *v18; // r1
  int v19; // r5
  char u8; // r0
  gameswf::membuf *v21; // r6
  char v22; // r7
  gameswf::membuf *v23; // r1

  v4 = *this;
  tag_end_position = gameswf::stream::get_tag_end_position(a2);
  position = gameswf::stream::get_position(a2);
  gameswf::membuf::reserve((gameswf::membuf *)v4, (int)*v4 + tag_end_position - position);
  if ( *(_BYTE *)a2 )
    v7 = gameswf::stream::get_position(a2) + 8;
  else
    v7 = gameswf::stream::get_position(a2);
  *(this + 2) = (gameswf::membuf **)v7;
  do
  {
    while ( 1 )
    {
      result = (gameswf::membuf *)gameswf::stream::read_u8(a2);
      v9 = *v4;
      v10 = result;
      v11 = (gameswf::membuf *)((char *)*v4 + 1);
      if ( (int)v11 >= (int)v4[1] )
        result = gameswf::membuf::resize((gameswf::membuf *)v4, v11);
      else
        *v4 = v11;
      *((_BYTE *)v9 + (_DWORD)v4[2]) = (_BYTE)v10;
      if ( ((unsigned __int8)v10 & 0x80) == 0 )
        break;
      u16 = gameswf::stream::read_u16(a2);
      v13 = *v4;
      v14 = u16;
      v15 = (gameswf::membuf *)((char *)*v4 + 1);
      v16 = u16;
      if ( (int)v15 >= (int)v4[1] )
        gameswf::membuf::resize((gameswf::membuf *)v4, v15);
      else
        *v4 = v15;
      *((_BYTE *)v13 + (_DWORD)v4[2]) = v16;
      v17 = *v4;
      v18 = (gameswf::membuf *)((char *)*v4 + 1);
      if ( (int)v18 >= (int)v4[1] )
        gameswf::membuf::resize((gameswf::membuf *)v4, v18);
      else
        *v4 = v18;
      *((_BYTE *)v17 + (_DWORD)v4[2]) = BYTE1(v14);
      if ( v14 )
      {
        v19 = 0;
        do
        {
          u8 = gameswf::stream::read_u8(a2);
          v21 = *v4;
          v22 = u8;
          v23 = (gameswf::membuf *)((char *)*v4 + 1);
          if ( (int)v23 >= (int)v4[1] )
            gameswf::membuf::resize((gameswf::membuf *)v4, v23);
          else
            *v4 = v23;
          ++v19;
          *((_BYTE *)v21 + (_DWORD)v4[2]) = v22;
        }
        while ( v14 > v19 );
      }
    }
  }
  while ( v10 );
  return result;
}


// ===== 7bb100 gameswf::do_init_action_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::do_init_action_loader(
        gameswf *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r7
  gameswf::membuf ***v7; // r6

  u16 = gameswf::stream::read_u16(this);
  v7 = (gameswf::membuf ***)operator new(0x10u, 0);
  *v7 = (gameswf::membuf **)off_991260;
  gameswf::action_buffer::action_buffer((gameswf::action_buffer *)(v7 + 1));
  gameswf::action_buffer::read(v7 + 1, this);
  return (*(int (__fastcall **)(int, int, gameswf::membuf ***))(*(_DWORD *)a3 + 132))(a3, u16, v7);
}


// ===== 7bb178 gameswf::do_action_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::do_action_loader(gameswf *this, gameswf::stream *a2, int a3, gameswf::movie_definition_sub *a4)
{
  gameswf::membuf ***v6; // r7

  v6 = (gameswf::membuf ***)operator new(0x10u, 0);
  *v6 = (gameswf::membuf **)off_991260;
  gameswf::action_buffer::action_buffer((gameswf::action_buffer *)(v6 + 1));
  gameswf::action_buffer::read(v6 + 1, this);
  return (*(int (__fastcall **)(int, gameswf::membuf ***))(*(_DWORD *)a3 + 128))(a3, v6);
}


// ===== 7bb1e4 gameswf::action_buffer::operator=(gameswf::action_buffer const&) =====
void __fastcall gameswf::action_buffer::operator=(int a1, gameswf::counted_buffer **a2)
{
  gameswf::counted_buffer *v3; // r5
  gameswf::counted_buffer *v4; // r0

  v3 = *a2;
  v4 = *(gameswf::counted_buffer **)a1;
  if ( *a2 != v4 )
  {
    if ( v4 )
      gameswf::counted_buffer::drop_ref(v4);
    *(_DWORD *)a1 = v3;
    if ( v3 )
      ++*((_DWORD *)v3 + 4);
  }
  *(_DWORD *)(a1 + 4) = a2[1];
  *(_DWORD *)(a1 + 8) = a2[2];
}


// ===== 7bb234 gameswf::do_action::~do_action() =====
void __fastcall gameswf::do_action::~do_action(gameswf::do_action *this)
{
  gameswf::counted_buffer *v2; // r0

  v2 = *((gameswf::counted_buffer **)this + 1);
  *(_DWORD *)this = off_991260;
  if ( v2 )
    gameswf::counted_buffer::drop_ref(v2);
}


// ===== 7bb274 gameswf::do_action::~do_action() =====
void __fastcall gameswf::do_action::~do_action(gameswf::do_action *this)
{
  gameswf::counted_buffer *v2; // r0

  v2 = *((gameswf::counted_buffer **)this + 1);
  *(_DWORD *)this = off_991260;
  if ( v2 )
    gameswf::counted_buffer::drop_ref(v2);
  LC_API_FREE_0(this);
}


// ===== 7bb2bc gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(gameswf::as_object * const&) =====
int __fastcall gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(_DWORD *a1, int *a2)
{
  int v2; // r3
  int v4; // r5
  int result; // r0
  int v7; // r2

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = *a1 + 12 * v2;
  *(_BYTE *)v7 = 0;
  *(_BYTE *)(v7 + 1) = 5;
  *(_DWORD *)(v7 + 4) = result;
  if ( result )
    result = gameswf::ref_counted::add_ref(result);
  a1[1] = v4;
  return result;
}


// ===== 7bb324 gameswf::array<gameswf::tu_stringi>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::tu_stringi>::resize(int *a1)
{
  int v1; // r4
  int v3; // r5
  int v4; // r6
  int v5; // r2
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r3
  int v10; // r1
  unsigned int v11; // r1

  v1 = a1[1];
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v7 = 20 * v1;
      do
      {
        v8 = *a1;
        ++v1;
        *(_BYTE *)(v8 + v7) = 1;
        v9 = v8 + v7;
        v10 = *(_DWORD *)(v9 + 16);
        *(_BYTE *)(v9 + 1) = 0;
        v7 += 20;
        v11 = v10 & 0xFF000000 | 0xFFFFFF;
        *(_DWORD *)(v9 + 16) = v11;
        *(_BYTE *)(v9 + 19) = HIBYTE(v11) & 0xFE;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      while ( 1 )
      {
        ++v4;
        v5 = *(char *)(*a1 + v3);
        v6 = *a1 + v3;
        v3 += 20;
        if ( v5 == -1 )
          break;
        if ( v4 == v1 )
          goto LABEL_10;
      }
      gameswf::free_internal(*(void **)(v6 + 12));
    }
    while ( v4 != v1 );
  }
LABEL_10:
  a1[1] = 0;
}


// ===== 7bb3e0 gameswf::clear_standard_fnames(void) =====
void __fastcall gameswf::clear_standard_fnames(gameswf *this)
{
  gameswf::array<gameswf::tu_stringi>::resize(&gameswf::s_fnames_string);
  gameswf::array<gameswf::tu_stringi>::resize(&gameswf::s_fnames_string);
  gameswf::array<gameswf::tu_stringi>::reserve((int)&gameswf::s_fnames_string, 0);
}


// ===== 7bb410 gameswf::array<gameswf::tu_stringi>::~array() =====
int *__fastcall gameswf::array<gameswf::tu_stringi>::~array(int *a1)
{
  gameswf::array<gameswf::tu_stringi>::resize(a1);
  gameswf::array<gameswf::tu_stringi>::reserve((int)a1, 0);
  return a1;
}


// ===== 7bb430 gameswf::array<gameswf::as_s_function::arg_spec>::resize(int) =====
void __fastcall gameswf::array<gameswf::as_s_function::arg_spec>::resize(_DWORD *a1, int a2)
{
  int v2; // r8
  int v5; // r5
  int v6; // r4
  int v7; // r3
  int v8; // r0
  int v9; // r1
  int v10; // r3
  unsigned int v11; // r3

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 24 * a2;
    v6 = a2;
    do
    {
      while ( 1 )
      {
        ++v6;
        v7 = *a1 + v5;
        v5 += 24;
        if ( *(char *)(v7 + 4) == -1 )
          break;
        if ( v6 == v2 )
          goto LABEL_6;
      }
      gameswf::free_internal(*(void **)(v7 + 16));
    }
    while ( v6 != v2 );
  }
LABEL_6:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::as_s_function::arg_spec>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = 24 * v2;
    do
    {
      ++v2;
      v9 = *a1 + v8;
      *(_DWORD *)v9 = 0;
      *(_DWORD *)(v9 + 4) = 0;
      *(_DWORD *)(v9 + 8) = 0;
      *(_DWORD *)(v9 + 12) = 0;
      *(_DWORD *)(v9 + 16) = 0;
      *(_DWORD *)(v9 + 20) = 0;
      v10 = *(_DWORD *)(v9 + 20);
      *(_BYTE *)(v9 + 4) = 1;
      v8 += 24;
      v11 = v10 & 0xFF000000 | 0xFFFFFF;
      *(_DWORD *)(v9 + 20) = v11;
      *(_BYTE *)(v9 + 23) = HIBYTE(v11) & 0xFE;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 7bb528 gameswf::as_s_function::add_arg(int,char const*) =====
char *__fastcall gameswf::as_s_function::add_arg(gameswf::as_s_function *this, int a2, const char *a3)
{
  gameswf::array<gameswf::as_s_function::arg_spec>::resize((_DWORD *)this + 24, *((_DWORD *)this + 25) + 1);
  *(_DWORD *)(*((_DWORD *)this + 24) + 24 * (*((_DWORD *)this + 25) - 1)) = a2;
  return gameswf::tu_string::operator=((char *)(*((_DWORD *)this + 24) + 24 * (*((_DWORD *)this + 25) - 1) + 4), a3);
}


// ===== 7bb580 gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r10
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r5
  _DWORD *v11; // r4
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 32;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          v11 = &v7[v10];
          ++v9;
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::add(
              v12,
              &v7[v10 + 2],
              &v7[v10 + 7]);
            if ( *((char *)v11 + 8) == -1 )
              gameswf::free_internal((void *)v11[5]);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 8;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_19;
  }
}


// ===== 7bb6f8 gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7bb72c gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::add(gameswf::tu_string const&,gameswf::tu_loadlib * const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        _DWORD *a3)
{
  char *v5; // r1
  int v6; // r3
  bool v7; // zf
  int v8; // r3
  int v9; // r5
  char *v10; // r3
  int v11; // t1
  _DWORD *v12; // r6
  int v13; // r3
  int v14; // r2
  int v15; // r11
  int v16; // r1
  _DWORD *v17; // r9
  int v18; // r12
  int v19; // r7
  int v20; // r8
  int v21; // r0
  _DWORD *v22; // r8
  int v23; // r3
  int v24; // r10
  int *v25; // r10
  gameswf::tu_string *result; // r0
  int v27; // r3

  gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(a1);
  ++**a1;
  v6 = *(char *)a2;
  v7 = v6 == -1;
  if ( v6 == -1 )
  {
    v8 = *((_DWORD *)a2 + 1);
  }
  else
  {
    v8 = v6 - 1;
    v5 = (char *)a2 + 1;
  }
  if ( v7 )
  {
    --v8;
    v5 = *((char **)a2 + 3);
  }
  if ( v8 > 0 )
  {
    v10 = &v5[v8];
    v9 = 5381;
    do
    {
      v11 = (unsigned __int8)*--v10;
      v9 = (33 * v9) ^ v11;
    }
    while ( v10 != v5 );
    if ( v9 == -1 )
      v9 = -32769;
  }
  else
  {
    v9 = 5381;
  }
  v12 = *a1;
  v13 = v12[1];
  v14 = v9 & v13;
  v15 = 4 * (v9 & v13) + 1;
  v16 = v12[2 * v15];
  v17 = &v12[2 * v15];
  if ( v16 == -2 )
  {
    v12[2 * v15] = -1;
LABEL_21:
    v17[1] = v9;
    result = gameswf::tu_string::tu_string((gameswf::tu_string *)(v17 + 2), a2);
    v17[7] = *a3;
    return result;
  }
  v18 = v17[1];
  if ( v18 == -1 )
    goto LABEL_21;
  v19 = v9 & v13;
  do
  {
    v19 = (v19 + 1) & v13;
    v20 = 4 * v19 + 1;
    v21 = v12[2 * v20];
    v22 = &v12[2 * v20];
  }
  while ( v21 != -2 );
  v23 = v13 & v18;
  if ( v23 == v14 )
  {
    *v22 = v16;
    v22[1] = v17[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v22 + 2), (const gameswf::tu_string *)(v17 + 2));
    v22[7] = v17[7];
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v17 + 2), (char *)a2);
    v17[7] = *a3;
    v12[2 * v15] = v19;
    v17[1] = v9;
  }
  else
  {
    do
    {
      v24 = 4 * v23 + 1;
      v23 = v12[2 * v24];
      v25 = &v12[2 * v24];
    }
    while ( v23 != v14 );
    *v22 = v16;
    v22[1] = v17[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v22 + 2), (const gameswf::tu_string *)(v17 + 2));
    v22[7] = v17[7];
    *v25 = v19;
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v17 + 2), (char *)a2);
    v27 = *a3;
    v17[1] = v9;
    v17[7] = v27;
    v12[2 * v15] = -1;
  }
  return result;
}


// ===== 7bb8e4 gameswf::action_buffer::load_as_plugin(gameswf::player *,gameswf::tu_string const&,gameswf::array<gameswf::as_value> const&) =====
int __fastcall gameswf::action_buffer::load_as_plugin(gameswf *a1, char *a2, int a3)
{
  int *shared_libs; // r7
  int index; // r0
  gameswf::tu_loadlib *v8; // r0
  int (__fastcall *function)(gameswf *, int); // r3
  char *v11; // r7
  gameswf::tu_loadlib *v12; // r8
  gameswf *v13; // r0
  int *v14; // r0
  gameswf::tu_loadlib *v15; // [sp+4h] [bp-4h] BYREF

  v15 = nullptr;
  shared_libs = gameswf::get_shared_libs(a1);
  index = gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(
            shared_libs,
            a2);
  if ( index < 0 )
  {
    if ( *a2 == -1 )
      v11 = *((char **)a2 + 3);
    else
      v11 = a2 + 1;
    v12 = (gameswf::tu_loadlib *)operator new(4u, 0);
    v13 = gameswf::tu_loadlib::tu_loadlib(v12, v11);
    v15 = v12;
    v14 = gameswf::get_shared_libs(v13);
    gameswf::hash<gameswf::tu_string,gameswf::tu_loadlib *,gameswf::string_hash_functor<gameswf::tu_string>>::add(
      (_DWORD **)v14,
      (const gameswf::tu_string *)a2,
      &v15);
    v8 = v15;
  }
  else
  {
    v8 = *(gameswf::tu_loadlib **)(*shared_libs + 32 * index + 36);
    v15 = v8;
  }
  function = (int (__fastcall *)(gameswf *, int))gameswf::tu_loadlib::get_function(v8, "gameswf_module_init");
  if ( function )
    return function(a1, a3);
  else
    return 0;
}


// ===== 7bb9a0 gameswf::action_buffer::process_decl_dict(int,int,gameswf::player *) =====
void __fastcall gameswf::action_buffer::process_decl_dict(
        gameswf::action_buffer *this,
        const char *a2,
        int a3,
        gameswf::player *a4)
{
  const char *v4; // r12
  _DWORD *v6; // r5
  int v7; // r7
  int v8; // r8
  int v9; // r2
  char **v10; // r11
  const char *v11; // r1
  int v12; // r10
  int v13; // r6
  int v14; // r9
  int v15; // r10
  int v16; // r7
  int v17; // r4
  gameswf::player *v18; // [sp+4h] [bp-48h]
  _BYTE v20[8]; // [sp+1Ch] [bp-30h] BYREF
  void *p; // [sp+28h] [bp-24h]
  _BYTE v22[8]; // [sp+30h] [bp-1Ch] BYREF
  void *v23; // [sp+3Ch] [bp-10h]

  v4 = *((const char **)this + 1);
  v6 = *(_DWORD **)this;
  if ( v4 != a2 )
  {
    if ( v4 != (const char *)-1 )
    {
      gameswf::log_error("error: process_decl_dict(%d, %d): decl_dict was already processed at %d\n", a2, a3, v4);
      return;
    }
    *((_DWORD *)this + 1) = a2;
    v7 = v6[6];
    v8 = (unsigned __int8)a2[v6[2] + 3] | ((unsigned __int8)a2[v6[2] + 4] << 8);
    if ( v8 && v8 > v6[7] )
    {
      v18 = a4;
      gameswf::array<gameswf::tu_string const*>::reserve((int)(v6 + 5), v8 + ((unsigned int)v8 >> 1));
      a4 = v18;
    }
    if ( v8 > v7 )
    {
      v9 = 4 * v7;
      do
      {
        ++v7;
        *(_DWORD *)(v6[5] + v9) = 0;
        v9 += 4;
      }
      while ( v7 != v8 );
    }
    v6[6] = v8;
    if ( v8 > 0 )
    {
      v10 = (char **)((char *)a4 + 44);
      v11 = (const char *)v6[2];
      v12 = (int)(a2 + 2);
      v13 = 0;
      while ( 1 )
      {
        v14 = v6[5];
        gameswf::tu_string::tu_string((gameswf::tu_string *)v22, &v11[v12 + 3]);
        *(_DWORD *)(v14 + 4 * v13) = gameswf::permanent_string_cache::get(v10, (const gameswf::tu_string *)v22);
        if ( v22[0] == -1 )
          gameswf::free_internal(v23);
        v11 = (const char *)v6[2];
        if ( v11[v12 + 3] )
        {
          if ( a3 <= v12 )
          {
LABEL_21:
            gameswf::log_error("error: action buffer dict length exceeded\n", v11);
            if ( v8 > v13 )
            {
              v16 = 4 * v13;
              do
              {
                while ( 1 )
                {
                  v17 = v6[5];
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v20, "<invalid>");
                  *(_DWORD *)(v17 + v16) = gameswf::permanent_string_cache::get(v10, (const gameswf::tu_string *)v20);
                  if ( v20[0] == -1 )
                    break;
                  ++v13;
                  v16 += 4;
                  if ( v8 <= v13 )
                    return;
                }
                ++v13;
                gameswf::free_internal(p);
                v16 += 4;
              }
              while ( v8 > v13 );
            }
            return;
          }
          v15 = v12 + 4;
          while ( v11[v15] )
          {
            if ( ++v15 == a3 + 4 )
              goto LABEL_21;
          }
          v12 = v15 - 3;
        }
        if ( ++v13 == v8 )
          return;
        ++v12;
      }
    }
  }
}


// ===== 7bbbfc gameswf::call_method(gameswf::as_environment *,gameswf::as_object *,char const*,gameswf::as_value const*,int) =====
gameswf *__fastcall gameswf::call_method(
        gameswf *this,
        gameswf::as_environment *a2,
        gameswf::as_object *a3,
        const char *a4,
        const gameswf::as_value *a5,
        int a6)
{
  char *v9; // r10
  int i; // r8
  int v11; // r12
  int v12; // r11
  unsigned int v13; // r2
  char *v15; // r0
  int v17; // [sp+1Ch] [bp-58h]
  _DWORD v18[3]; // [sp+24h] [bp-50h] BYREF
  char v19; // [sp+30h] [bp-44h]
  _BYTE v20[4]; // [sp+34h] [bp-40h] BYREF
  gameswf::as_object *v21; // [sp+38h] [bp-3Ch]
  _BYTE v22[12]; // [sp+40h] [bp-34h] BYREF
  _BYTE v23[12]; // [sp+4Ch] [bp-28h] BYREF
  _BYTE v24[8]; // [sp+58h] [bp-1Ch] BYREF
  void *p; // [sp+64h] [bp-10h]

  v17 = *((_DWORD *)a2 + 1);
  if ( a6 - 1 >= 0 )
  {
    v9 = (char *)a5 + 12 * a6 - 12;
    for ( i = 0; i != a6; ++i )
    {
      gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
      v9 -= 12;
    }
  }
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v24, a4);
  gameswf::as_environment::get_variable((int)v23, a2, (int)v24, (int)v18, 0);
  if ( v24[0] == -1 )
    gameswf::free_internal(p);
  v11 = *((_DWORD *)a2 + 1);
  v20[0] = 0;
  v20[1] = 5;
  v12 = v11 - v17;
  v21 = a3;
  if ( a3 )
  {
    gameswf::ref_counted::add_ref((int)a3);
    v11 = *((_DWORD *)a2 + 1);
  }
  gameswf::call_method(v22, (gameswf::as_value *)v23, (int)a2, (int)v20, v12, v11 - 1, (int)a4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v20);
  gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - v12);
  if ( v22[1] )
  {
    v15 = gameswf::as_value::to_tu_string((gameswf::as_value *)v22);
    gameswf::tu_string::tu_string(this, (const gameswf::tu_string *)v15);
  }
  else
  {
    v13 = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
    *((_DWORD *)this + 4) = v13;
    *(_BYTE *)this = 1;
    *((_BYTE *)this + 19) = HIBYTE(v13) & 0xFE;
    *((_BYTE *)this + 1) = 0;
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)v22);
  gameswf::as_value::drop_refs((gameswf::as_value *)v23);
  gameswf::array<gameswf::with_stack_entry>::resize(v18, 0);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)v18, 0);
  return this;
}


// ===== 7bbdf0 gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list) =====
char *__fastcall gameswf::call_method_parsed(
        gameswf *this,
        gameswf::as_environment *a2,
        gameswf::as_object *a3,
        const char *a4,
        const char *a5,
        __va_list a6)
{
  int v8; // r3
  const char *v11; // r4
  bool v12; // zf
  int v13; // t1
  int v14; // r3
  int v15; // t1
  int v16; // t1
  int v17; // t1
  int v18; // r4
  int v19; // r11
  int v20; // r5
  int v21; // r7
  char *v22; // r0
  char *v23; // r4
  unsigned int v25; // r5
  __int64 v26; // r2
  int v28; // [sp+20h] [bp-64h]
  _DWORD v29[3]; // [sp+2Ch] [bp-58h] BYREF
  char v30; // [sp+38h] [bp-4Ch]
  _BYTE v31[4]; // [sp+3Ch] [bp-48h] BYREF
  gameswf::as_environment *v32; // [sp+40h] [bp-44h]
  _BYTE v33[12]; // [sp+48h] [bp-3Ch] BYREF
  _BYTE v34[12]; // [sp+54h] [bp-30h] BYREF
  __int64 v35; // [sp+60h] [bp-24h] BYREF
  _BYTE v36[8]; // [sp+68h] [bp-1Ch] BYREF
  void *p; // [sp+74h] [bp-10h]

  v8 = *(unsigned __int8 *)a4;
  v28 = *((_DWORD *)this + 1);
  if ( v8 )
  {
    v11 = a4;
    while ( 1 )
    {
      if ( (char)v8 != 37 )
      {
        v12 = (char)v8 == 32;
        if ( (char)v8 != 32 )
          v12 = (char)v8 == 9;
        if ( !v12 && (char)v8 != 44 )
          gameswf::log_error("call_method_parsed('%s','%s') -- invalid char '%c'\n", (const char *)a3, a4);
        goto LABEL_8;
      }
      v15 = *++v11;
      v14 = v15;
      if ( v15 == 100 )
        break;
      switch ( v14 )
      {
        case 'f':
          v25 = (unsigned int)(a5 + 7) & 0xFFFFFFF8;
          v26 = *(_QWORD *)v25;
          a5 = (const char *)(v25 + 8);
          v35 = v26;
          gameswf::array<gameswf::as_value>::push_back<double>((int *)this, &v35);
          goto LABEL_8;
        case 's':
          LODWORD(v35) = *(_DWORD *)a5;
          a5 += 4;
          gameswf::array<gameswf::as_value>::push_back<char const*>(this, (const char **)&v35);
          goto LABEL_8;
        case 'l':
          v16 = *++v11;
          if ( v16 == 115 )
          {
            LODWORD(v35) = *(_DWORD *)a5;
            a5 += 4;
            gameswf::array<gameswf::as_value>::push_back<wchar_t const*>(this, (const wchar_t **)&v35);
            goto LABEL_8;
          }
          gameswf::log_error("call_method_parsed('%s','%s') -- invalid fmt '%%l%c'\n", (const char *)a3, a4);
          v17 = *(unsigned __int8 *)++v11;
          LOBYTE(v8) = v17;
          if ( !v17 )
            goto LABEL_16;
          break;
        default:
          gameswf::log_error("call_method_parsed('%s','%s') -- invalid fmt '%%%c'\n", (const char *)a3, a4);
LABEL_8:
          v13 = *(unsigned __int8 *)++v11;
          LOBYTE(v8) = v13;
          if ( !v13 )
            goto LABEL_16;
          break;
      }
    }
    LODWORD(v35) = *(_DWORD *)a5;
    a5 += 4;
    gameswf::array<gameswf::as_value>::push_back<int>(this, (int *)&v35);
    goto LABEL_8;
  }
LABEL_16:
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v36, (const char *)a3);
  gameswf::as_environment::get_variable((int)v34, this, (int)v36, (int)v29, 0);
  if ( v36[0] == -1 )
    gameswf::free_internal(p);
  v18 = *((_DWORD *)this + 1) - v28;
  if ( v18 >> 1 > 0 )
  {
    v19 = 12 * (*((_DWORD *)this + 1) - 1);
    v20 = 0;
    v21 = 0;
    do
    {
      ++v21;
      gameswf::swap<gameswf::as_value>(
        (gameswf::as_value *)(*(_DWORD *)this + v20 + 12 * v28),
        (gameswf::as_value *)(*(_DWORD *)this + v19 - v20));
      v20 += 12;
    }
    while ( v21 != v18 >> 1 );
  }
  v31[0] = 0;
  v31[1] = 5;
  v32 = a2;
  if ( a2 )
    gameswf::ref_counted::add_ref((int)a2);
  gameswf::call_method(v33, (gameswf::as_value *)v34, (int)this, (int)v31, v18, *((_DWORD *)this + 1) - 1, (int)"???");
  gameswf::as_value::drop_refs((gameswf::as_value *)v31);
  gameswf::array<gameswf::as_value>::resize(this, *((_DWORD *)this + 1) - v18);
  if ( (`guard variable for'gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list)::s_retval
      & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list)::s_retval) )
  {
    dword_A2EBEC = dword_A2EBEC & 0xFF000000 | 0xFFFFFF;
    gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list)::s_retval = 1;
    HIBYTE(dword_A2EBEC) &= ~1u;
    byte_A2EBDD = 0;
    _cxa_guard_release(&`guard variable for'gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list)::s_retval);
    _aeabi_atexit(
      (int)&gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list)::s_retval,
      (int)gameswf::tu_string::~tu_string,
      (int)&_dso_handle);
  }
  v22 = gameswf::as_value::to_tu_string((gameswf::as_value *)v33);
  gameswf::tu_string::operator=(
    (gameswf::tu_string *)&gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list)::s_retval,
    v22);
  if ( gameswf::call_method_parsed(gameswf::as_environment *,gameswf::as_object *,char const*,char const*,std::__va_list)::s_retval == -1 )
    v23 = (char *)dword_A2EBE8;
  else
    v23 = &byte_A2EBDD;
  gameswf::as_value::drop_refs((gameswf::as_value *)v33);
  gameswf::as_value::drop_refs((gameswf::as_value *)v34);
  gameswf::array<gameswf::with_stack_entry>::resize(v29, 0);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)v29, 0);
  return v23;
}


// ===== 7bc1dc gameswf::as_environment::get_player(void) =====
int __fastcall gameswf::as_environment::get_player(gameswf::as_environment *this)
{
  int result; // r0
  _BYTE *v3; // r3

  result = *((_DWORD *)this + 26);
  if ( result )
  {
    v3 = *((_BYTE **)this + 25);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 26) = 0;
      *((_DWORD *)this + 25) = 0;
      return 0;
    }
  }
  return result;
}


// ===== 7bc230 gameswf::action_buffer::execute(gameswf::as_environment *,int,int,gameswf::as_value *,gameswf::array<gameswf::with_stack_entry> const&,bool) =====
int __fastcall gameswf::action_buffer::execute(
        gameswf::action_buffer *a1,
        gameswf::as_environment *a2,
        const char *a3,
        int a4,
        gameswf::as_value *a5,
        _DWORD *a6,
        char a7)
{
  gameswf::character *target; // r0
  const char *v11; // r9
  _DWORD *v12; // r8
  double v13; // r0
  const char *v14; // r2
  int v15; // r1
  int v16; // r7
  const char *v17; // r3
  const char *v18; // r11
  int v19; // r10
  const gameswf::as_value *v20; // r1
  int v21; // r0
  char v22; // r0
  int v23; // r2
  gameswf::tu_string *v24; // r3
  int v25; // r0
  int v26; // r1
  const char *v27; // r2
  float v28; // r0
  int v29; // r1
  int v30; // r2
  gameswf::tu_string *v31; // r3
  float v32; // r0
  int v33; // r1
  int v34; // r2
  gameswf::tu_string *v35; // r3
  float v36; // r0
  int v37; // r1
  int v38; // r2
  gameswf::tu_string *v39; // r3
  float v40; // r0
  int v41; // r1
  int v42; // r0
  gameswf::as_value *v44; // r0
  char *v45; // r0
  char *v46; // r7
  char *v47; // r0
  const char *v48; // r4
  int v49; // r2
  gameswf::ref_counted *v50; // r4
  int v51; // r4
  const char *v52; // r1
  int (__fastcall *v53)(int, _BYTE *); // r7
  int v54; // r0
  int v55; // r7
  int v56; // r10
  int v57; // r4
  int v58; // r3
  gameswf::player *v59; // r3
  _BYTE *v60; // r0
  const char *v61; // r4
  size_t v62; // r3
  const char *v63; // r0
  const char *v64; // r7
  int (__fastcall *fscommand_callback)(int, const char *, const char *); // r10
  int v66; // r0
  int v67; // r0
  int v68; // r7
  int v69; // r0
  unsigned int v70; // r3
  int v71; // r0
  __int16 v72; // r10
  __int16 v73; // r7
  int v74; // r4
  const char *v75; // r1
  int v76; // r3
  const char *v77; // r11
  int v78; // r0
  int v79; // r0
  int v80; // r7
  gameswf::as_s_function *v81; // r4
  gameswf::ref_counted *v82; // r0
  int v83; // r2
  const char *v84; // r7
  int v85; // r11
  int v86; // r10
  int v87; // r2
  int v88; // r3
  int v89; // r3
  int v90; // r2
  gameswf::as_value *v91; // r7
  gameswf::as_object *v92; // r1
  int v93; // r2
  int v94; // r3
  const char *v95; // r11
  int v96; // r1
  const char *v97; // r7
  int v98; // r2
  int v99; // r3
  const char *v100; // r11
  int v101; // r0
  int v102; // r0
  int v103; // r7
  _BYTE *v104; // r4
  gameswf::ref_counted *v105; // r0
  int v106; // r1
  char v107; // r2
  int v108; // r0
  int v109; // r1
  const char *v110; // r3
  gameswf::as_value *v111; // r7
  gameswf::as_environment *v112; // r10
  const char *v113; // r5
  int v114; // r2
  int v115; // r3
  const char *v116; // r5
  gameswf::as_object *v117; // r1
  int v118; // r2
  const char *v119; // r3
  const char *v120; // r11
  gameswf::tu_string *v121; // r3
  int v122; // r2
  int v123; // r1
  int v124; // r7
  int v125; // r2
  int v126; // r1
  int v127; // r2
  int v128; // r7
  gameswf::tu_string *v129; // r3
  gameswf::tu_string *v130; // r12
  int v131; // r2
  int v132; // r0
  int v133; // r3
  bool v134; // r2
  signed int v135; // r3
  gameswf::as_value *v136; // r1
  gameswf::tu_string *v137; // r3
  _BYTE *v138; // r0
  int v139; // r3
  int v140; // r11
  int v141; // r1
  gameswf *v142; // r0
  void (__fastcall *v143)(int, const char *, char *); // r10
  int v144; // r0
  int v145; // r0
  gameswf::as_value *v146; // r7
  char is_instance_of; // r1
  gameswf::as_value *v148; // r0
  int v149; // r3
  int v150; // r0
  int v151; // r7
  char *v152; // r11
  int v153; // r1
  int v154; // r0
  gameswf::as_value *v155; // r7
  char *v156; // r10
  char *v157; // r0
  const char *v158; // r1
  const char *v159; // r0
  int v160; // r0
  gameswf::tu_string *v161; // r3
  int v162; // r0
  gameswf::as_object *v163; // r7
  gameswf::tu_random *v164; // r0
  unsigned int v165; // r10
  gameswf::as_value *v166; // r7
  int v167; // r0
  char *v168; // r0
  char *v169; // r0
  int v170; // r0
  gameswf::tu_string *v171; // r3
  int v172; // r2
  __int64 ticks; // r0
  char *v174; // r0
  int v175; // r1
  int v176; // r3
  int v177; // r7
  char *v178; // r0
  int local; // r0
  int v180; // r10
  int v181; // r2
  int v182; // r1
  int v183; // r1
  const char *v184; // r2
  int v185; // r11
  char *v186; // r0
  int v187; // r0
  int v188; // r0
  int v189; // r10
  int v190; // r7
  int v191; // r3
  int v192; // r11
  int v193; // r2
  const char *v194; // r3
  int v195; // r0
  int v196; // r0
  gameswf::as_value *v197; // r7
  double v198; // kr00_8
  double v199; // r0
  gameswf::as_value *v200; // r7
  char *v201; // r10
  char *v202; // r0
  const char *v203; // r1
  const char *v204; // r0
  const char *v205; // r2
  gameswf::as_value *v206; // r7
  double v207; // r0
  int v208; // r7
  gameswf::tu_string *v209; // r11
  gameswf::tu_string *v210; // r3
  _BYTE *v211; // r12
  gameswf::as_value *v212; // r7
  int v213; // r11
  int v214; // r1
  const char *v215; // r2
  int v216; // r0
  int v217; // r0
  gameswf::ref_counted *v218; // r1
  int v219; // r0
  const gameswf::as_function *v220; // r0
  gameswf::as_object *v221; // r2
  gameswf::as_environment *v222; // r1
  double v223; // r0
  const char *v224; // r2
  double v225; // r0
  const char *v226; // r2
  double v227; // r0
  const char *v228; // r2
  double v229; // r0
  const char *v230; // r2
  double v231; // r0
  const char *v232; // r2
  gameswf::tu_string *v233; // r7
  int v234; // r11
  __int64 v235; // r0
  gameswf::as_value *v236; // r7
  const char *v237; // r2
  bool v238; // r10
  double v239; // kr08_8
  double v240; // kr10_8
  int v241; // r7
  int (__fastcall *v242)(int, int); // r10
  int v243; // r0
  int v244; // r0
  int v245; // r7
  int (__fastcall *v246)(int, int); // r10
  int v247; // r0
  int v248; // r0
  __int64 v249; // r0
  char *v250; // r0
  int v251; // r1
  int v252; // r1
  int v253; // r7
  gameswf::tu_string *v254; // r11
  int v255; // r3
  char *v256; // r0
  int v257; // r7
  int v258; // r2
  const char *v259; // r2
  gameswf::as_value *v260; // r7
  double v261; // r0
  int v262; // r1
  const char *v263; // r2
  int v264; // r1
  const char *v265; // r2
  __int64 v266; // r10
  double v267; // r0
  int v268; // r1
  const char *v269; // r2
  int v270; // r0
  int v271; // r0
  void (*v272)(void); // r3
  int v273; // r1
  gameswf::as_value *v274; // r2
  char *v275; // r10
  char *v276; // r0
  char *v277; // r1
  int v278; // r3
  const char *v279; // r0
  const char *v280; // r1
  int v281; // r7
  gameswf::tu_string *v282; // r11
  gameswf::as_value *v283; // r0
  unsigned int v284; // r1
  const char *v285; // r2
  double v286; // r0
  char *v287; // r0
  char *v288; // r0
  int v289; // r0
  int v290; // r0
  int v291; // r1
  const char *v292; // r2
  int v293; // r11
  char *v294; // r0
  int v295; // r0
  int v296; // r1
  const char *v297; // r2
  gameswf *v298; // r10
  gameswf::as_object *v299; // r0
  int v300; // r0
  int v301; // r0
  double v302; // r0
  const char *v303; // r2
  const char *v304; // r2
  __int64 v305; // r0
  char *v306; // r0
  char *v307; // r0
  int v308; // r0
  int v309; // r1
  int v310; // r10
  const char *v311; // r2
  int v312; // r11
  char *v313; // r0
  int v314; // r3
  int v315; // r3
  int v316; // r1
  int v317; // r1
  int v318; // r3
  int v319; // r7
  char *v320; // r3
  int v321; // r1
  char *v322; // r0
  int v323; // r2
  int v324; // r3
  bool v325; // zf
  int v326; // r1
  const char *v327; // r2
  gameswf::player *v328; // r10
  gameswf::as_object *v329; // r7
  int v330; // r10
  void (__fastcall *v331)(gameswf::as_object *, char *, int); // r4
  char *v332; // r0
  gameswf::as_value *v333; // r7
  char *v334; // r0
  char *v335; // r0
  gameswf::as_object *v336; // r2
  gameswf::as_environment *v337; // r1
  char *v338; // r0
  gameswf::as_value *v339; // r3
  gameswf::as_value *v340; // r7
  double v341; // r0
  const char *v342; // r2
  bool v343; // r1
  gameswf::as_value *v344; // r7
  char v345; // r0
  gameswf::as_value *v346; // r7
  char v347; // r0
  gameswf::tu_string *v348; // r3
  int v349; // r0
  int v350; // r10
  int v351; // r11
  void (__fastcall *v352)(int, _BYTE *, char *); // r7
  gameswf::player *v353; // r11
  gameswf::ref_counted **v354; // r7
  gameswf::ref_counted *v355; // r1
  int v356; // r2
  int v357; // r3
  gameswf::as_value *v358; // r7
  const char *v359; // r2
  double v360; // r0
  const char *v361; // r2
  bool v362; // r1
  int v363; // r0
  int v364; // r7
  int v365; // r2
  int v366; // r7
  int v367; // r2
  int v368; // r3
  char *v369; // r0
  int v370; // r2
  int v371; // r3
  int v372; // r7
  int v373; // r2
  int v374; // r11
  gameswf::as_value *v375; // lr
  gameswf::player *v376; // r10
  gameswf::as_object *v377; // r11
  int v378; // r0
  const gameswf::as_function *v379; // r1
  gameswf::as_object *v380; // r10
  int v381; // r7
  int (__fastcall *v382)(gameswf::as_object *, char *, int); // r7
  char *v383; // r0
  int (__fastcall *v384)(gameswf::as_object *, void **, char *); // r7
  int v385; // r7
  int v386; // r7
  gameswf::as_object *v387; // r1
  void (__fastcall *v388)(int, _DWORD *); // r10
  int v389; // r2
  int v390; // r10
  int v391; // r7
  gameswf::as_value *v392; // r0
  void (__fastcall *v393)(int, char *, int); // r7
  char *v394; // r0
  int v395; // r2
  int v396; // r1
  int v397; // r2
  int v398; // r0
  int v399; // r3
  const char *v400; // r1
  __int64 v401; // r1
  double v402; // r0
  int v403; // r4
  int v404; // r10
  int v405; // r11
  int i; // r7
  int v407; // r10
  int v408; // r4
  const char *v409; // r7
  int v410; // r11
  int j; // r10
  char *v412; // r0
  int v413; // r0
  int v414; // r0
  gameswf::player *v415; // r10
  gameswf::as_object *v416; // r11
  double *v417; // r0
  const char *v418; // r2
  __int64 v419; // r1
  gameswf::as_value *v420; // r0
  void (__fastcall *v421)(gameswf::as_object *, int, int); // r7
  int v422; // r0
  char *v423; // r11
  char *v424; // r0
  const char *v425; // r1
  const char *v426; // r0
  int v427; // r0
  char *v428; // r0
  char *v429; // r0
  gameswf::as_object *v430; // r11
  gameswf::player *player; // r7
  gameswf::as_object *v432; // r10
  gameswf::as_value *v433; // r0
  char *v434; // r1
  int v435; // r3
  int v436; // r12
  char *v437; // r10
  char *v438; // r0
  const char *v439; // r1
  const char *v440; // r0
  bool v441; // r1
  char *v442; // r0
  __int64 v443; // r1
  gameswf::as_value *v444; // r0
  char *v445; // r0
  gameswf::as_value *v446; // r2
  int v447; // r3
  char *v448; // r7
  gameswf::ref_counted *v449; // r0
  gameswf::character *v450; // r1
  _BYTE *v451; // r12
  int v452; // r3
  const char *v453; // r1
  _BYTE *v454; // r2
  gameswf::as_object *v455; // r1
  int v456; // r7
  _BYTE *v457; // r12
  gameswf::as_value *v458; // r1
  int v459; // r3
  int v460; // r10
  gameswf *v461; // r10
  char *v462; // r0
  gameswf::as_object *as_plugin; // r1
  char *v464; // r0
  int v465; // r0
  char *v466; // r0
  gameswf::as_object *v467; // r1
  gameswf::ref_counted *v468; // r1
  char *v469; // r0
  const char *v470; // r0
  gameswf::tu_string *v471; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v472; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v473; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v474; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v475; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v476; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v477; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v478; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v479; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v480; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v481; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *proto; // [sp+10h] [bp-4ECh]
  gameswf::tu_string *v483; // [sp+10h] [bp-4ECh]
  gameswf::as_value *v484; // [sp+14h] [bp-4E8h]
  gameswf::as_object *v485; // [sp+14h] [bp-4E8h]
  bool v486; // [sp+14h] [bp-4E8h]
  gameswf::as_object *v487; // [sp+14h] [bp-4E8h]
  gameswf::as_value *v488; // [sp+14h] [bp-4E8h]
  int v489; // [sp+18h] [bp-4E4h]
  int v490; // [sp+18h] [bp-4E4h]
  int v491; // [sp+18h] [bp-4E4h]
  double v492; // [sp+18h] [bp-4E4h]
  double v493; // [sp+18h] [bp-4E4h]
  double v494; // [sp+18h] [bp-4E4h]
  int v495; // [sp+18h] [bp-4E4h]
  int v496; // [sp+18h] [bp-4E4h]
  void (__fastcall *v497)(int, _BYTE *, _BYTE *); // [sp+18h] [bp-4E4h]
  int v498; // [sp+18h] [bp-4E4h]
  int v499; // [sp+18h] [bp-4E4h]
  gameswf::as_object *v500; // [sp+18h] [bp-4E4h]
  gameswf::as_value *v501; // [sp+20h] [bp-4DCh]
  gameswf::as_value *v502; // [sp+20h] [bp-4DCh]
  char *v503; // [sp+20h] [bp-4DCh]
  gameswf::as_value *v504; // [sp+20h] [bp-4DCh]
  gameswf::tu_string *v505; // [sp+20h] [bp-4DCh]
  gameswf::as_value *v506; // [sp+24h] [bp-4D8h]
  gameswf::as_value *v508; // [sp+3Ch] [bp-4C0h]
  gameswf::as_value *v509; // [sp+3Ch] [bp-4C0h]
  gameswf::character *v510; // [sp+40h] [bp-4BCh]
  gameswf::tu_string *v511; // [sp+64h] [bp-498h]
  int v512; // [sp+6Ch] [bp-490h] BYREF
  int v513; // [sp+70h] [bp-48Ch]
  float v514; // [sp+74h] [bp-488h]
  float v515; // [sp+78h] [bp-484h]
  float v516; // [sp+7Ch] [bp-480h]
  float v517; // [sp+80h] [bp-47Ch]
  int v518; // [sp+84h] [bp-478h]
  int v519; // [sp+88h] [bp-474h]
  _DWORD v520[7]; // [sp+8Ch] [bp-470h] BYREF
  _DWORD v521[14]; // [sp+A8h] [bp-454h] BYREF
  _DWORD v522[7]; // [sp+E0h] [bp-41Ch] BYREF
  _DWORD v523[3]; // [sp+FCh] [bp-400h] BYREF
  char v524; // [sp+108h] [bp-3F4h]
  int v525; // [sp+10Ch] [bp-3F0h] BYREF
  int v526; // [sp+110h] [bp-3ECh]
  int v527; // [sp+114h] [bp-3E8h]
  char v528; // [sp+118h] [bp-3E4h]
  _BYTE v529[12]; // [sp+11Ch] [bp-3E0h] BYREF
  char v530; // [sp+128h] [bp-3D4h] BYREF
  char v531; // [sp+129h] [bp-3D3h]
  int v532; // [sp+12Ch] [bp-3D0h]
  _BYTE v533[12]; // [sp+134h] [bp-3C8h] BYREF
  char v534; // [sp+140h] [bp-3BCh] BYREF
  char v535; // [sp+141h] [bp-3BBh]
  int v536; // [sp+144h] [bp-3B8h]
  gameswf::tu_string *v537[3]; // [sp+14Ch] [bp-3B0h] BYREF
  gameswf::tu_string *v538[3]; // [sp+158h] [bp-3A4h] BYREF
  _BYTE v539[4]; // [sp+164h] [bp-398h] BYREF
  gameswf::ref_counted **v540; // [sp+168h] [bp-394h]
  char v541; // [sp+170h] [bp-38Ch] BYREF
  char v542; // [sp+171h] [bp-38Bh]
  gameswf::ref_counted *v543; // [sp+174h] [bp-388h]
  _BYTE v544[4]; // [sp+17Ch] [bp-380h] BYREF
  gameswf::as_environment *v545; // [sp+180h] [bp-37Ch]
  _BYTE v546[4]; // [sp+188h] [bp-374h] BYREF
  gameswf::ref_counted *v547; // [sp+18Ch] [bp-370h]
  _BYTE v548[12]; // [sp+194h] [bp-368h] BYREF
  _BYTE v549[12]; // [sp+1A0h] [bp-35Ch] BYREF
  _BYTE v550[12]; // [sp+1ACh] [bp-350h] BYREF
  _BYTE v551[12]; // [sp+1B8h] [bp-344h] BYREF
  _BYTE v552[12]; // [sp+1C4h] [bp-338h] BYREF
  char v553; // [sp+1D0h] [bp-32Ch] BYREF
  char v554; // [sp+1D1h] [bp-32Bh]
  int v555; // [sp+1D4h] [bp-328h]
  _BYTE v556[12]; // [sp+1DCh] [bp-320h] BYREF
  _BYTE v557[12]; // [sp+1E8h] [bp-314h] BYREF
  _BYTE v558[4]; // [sp+1F4h] [bp-308h] BYREF
  gameswf::ref_counted *v559; // [sp+1F8h] [bp-304h]
  _BYTE v560[12]; // [sp+200h] [bp-2FCh] BYREF
  _BYTE v561[4]; // [sp+20Ch] [bp-2F0h] BYREF
  int v562; // [sp+210h] [bp-2ECh]
  char v563; // [sp+218h] [bp-2E4h] BYREF
  char v564; // [sp+219h] [bp-2E3h]
  int v565; // [sp+21Ch] [bp-2E0h]
  _BYTE v566[12]; // [sp+224h] [bp-2D8h] BYREF
  _BYTE v567[12]; // [sp+230h] [bp-2CCh] BYREF
  _BYTE v568[12]; // [sp+23Ch] [bp-2C0h] BYREF
  _BYTE v569[12]; // [sp+248h] [bp-2B4h] BYREF
  _BYTE v570[12]; // [sp+254h] [bp-2A8h] BYREF
  _BYTE v571[12]; // [sp+260h] [bp-29Ch] BYREF
  _BYTE v572[12]; // [sp+26Ch] [bp-290h] BYREF
  _BYTE v573[12]; // [sp+278h] [bp-284h] BYREF
  _BYTE v574[4]; // [sp+284h] [bp-278h] BYREF
  int v575; // [sp+288h] [bp-274h]
  char v576; // [sp+290h] [bp-26Ch] BYREF
  char v577; // [sp+291h] [bp-26Bh]
  int v578; // [sp+294h] [bp-268h]
  gameswf::as_property *v579[3]; // [sp+29Ch] [bp-260h] BYREF
  _BYTE v580[12]; // [sp+2A8h] [bp-254h] BYREF
  _BYTE v581[12]; // [sp+2B4h] [bp-248h] BYREF
  _BYTE v582[4]; // [sp+2C0h] [bp-23Ch] BYREF
  gameswf::as_environment *v583; // [sp+2C4h] [bp-238h]
  _BYTE v584[12]; // [sp+2CCh] [bp-230h] BYREF
  _BYTE v585[12]; // [sp+2D8h] [bp-224h] BYREF
  _BYTE v586[12]; // [sp+2E4h] [bp-218h] BYREF
  _BYTE v587[12]; // [sp+2F0h] [bp-20Ch] BYREF
  _BYTE v588[12]; // [sp+2FCh] [bp-200h] BYREF
  _BYTE v589[12]; // [sp+308h] [bp-1F4h] BYREF
  _BYTE v590[12]; // [sp+314h] [bp-1E8h] BYREF
  char v591; // [sp+320h] [bp-1DCh] BYREF
  char v592; // [sp+321h] [bp-1DBh]
  int v593; // [sp+324h] [bp-1D8h]
  char v594; // [sp+32Ch] [bp-1D0h] BYREF
  char v595; // [sp+32Dh] [bp-1CFh]
  int v596; // [sp+330h] [bp-1CCh]
  _BYTE v597[12]; // [sp+338h] [bp-1C4h] BYREF
  _BYTE v598[12]; // [sp+344h] [bp-1B8h] BYREF
  _BYTE v599[12]; // [sp+350h] [bp-1ACh] BYREF
  _BYTE v600[12]; // [sp+35Ch] [bp-1A0h] BYREF
  _BYTE v601[12]; // [sp+368h] [bp-194h] BYREF
  _BYTE v602[12]; // [sp+374h] [bp-188h] BYREF
  _BYTE v603[12]; // [sp+380h] [bp-17Ch] BYREF
  _BYTE v604[12]; // [sp+38Ch] [bp-170h] BYREF
  char v605; // [sp+398h] [bp-164h] BYREF
  char v606; // [sp+399h] [bp-163h]
  gameswf::as_object *v607; // [sp+39Ch] [bp-160h]
  _BYTE v608[12]; // [sp+3A4h] [bp-158h] BYREF
  char v609; // [sp+3B0h] [bp-14Ch] BYREF
  char v610; // [sp+3B1h] [bp-14Bh]
  _BYTE v611[12]; // [sp+3BCh] [bp-140h] BYREF
  _BYTE v612[12]; // [sp+3C8h] [bp-134h] BYREF
  gameswf::ref_counted *v613[3]; // [sp+3D4h] [bp-128h] BYREF
  char v614; // [sp+3E0h] [bp-11Ch] BYREF
  char v615; // [sp+3E1h] [bp-11Bh]
  gameswf::as_value *v616; // [sp+3E4h] [bp-118h]
  char v617; // [sp+3ECh] [bp-110h] BYREF
  char v618; // [sp+3EDh] [bp-10Fh]
  const char *v619; // [sp+3F0h] [bp-10Ch]
  double v620; // [sp+3F8h] [bp-104h] BYREF
  double v621; // [sp+400h] [bp-FCh] BYREF
  gameswf::ref_counted *v622[2]; // [sp+40Ch] [bp-F0h] BYREF
  int v623; // [sp+414h] [bp-E8h] BYREF
  _BYTE v624[8]; // [sp+418h] [bp-E4h] BYREF
  void *v625; // [sp+424h] [bp-D8h]
  unsigned int v626; // [sp+428h] [bp-D4h]
  _BYTE v627[8]; // [sp+42Ch] [bp-D0h] BYREF
  void *v628; // [sp+438h] [bp-C4h]
  _BYTE v629[8]; // [sp+440h] [bp-BCh] BYREF
  void *v630; // [sp+44Ch] [bp-B0h]
  _BYTE v631[8]; // [sp+454h] [bp-A8h] BYREF
  void *p; // [sp+460h] [bp-9Ch]
  _BYTE v633[8]; // [sp+468h] [bp-94h] BYREF
  void *v634; // [sp+474h] [bp-88h]
  _BYTE v635[8]; // [sp+47Ch] [bp-80h] BYREF
  void *v636; // [sp+488h] [bp-74h]
  char v637; // [sp+490h] [bp-6Ch] BYREF
  _BYTE v638[3]; // [sp+491h] [bp-6Bh] BYREF
  int v639; // [sp+494h] [bp-68h]
  void *v640; // [sp+49Ch] [bp-60h]
  unsigned int v641; // [sp+4A0h] [bp-5Ch]
  void *v642[3]; // [sp+4A4h] [bp-58h] BYREF
  void *v643[2]; // [sp+4B8h] [bp-44h] BYREF
  unsigned int v644; // [sp+4C8h] [bp-34h]
  _BYTE v645[8]; // [sp+4CCh] [bp-30h] BYREF
  void *v646; // [sp+4D8h] [bp-24h]
  char v647[4]; // [sp+4E0h] [bp-1Ch] BYREF
  int v648; // [sp+4E4h] [bp-18h]
  void *v649; // [sp+4ECh] [bp-10h]
  unsigned int v650; // [sp+4F0h] [bp-Ch]

  v525 = 0;
  v526 = 0;
  v527 = 0;
  v528 = 0;
  gameswf::array<gameswf::with_stack_entry>::operator=(&v525, a6);
  target = (gameswf::character *)gameswf::as_environment::get_target(a2);
  v650 = v650 & 0xFF000000 | 0xFFFFFF;
  v615 = 5;
  v11 = &a3[a4];
  v510 = target;
  v647[0] = 1;
  HIBYTE(v650) &= ~1u;
  v617 = 0;
  v618 = 0;
  v614 = 0;
  v616 = nullptr;
  v647[1] = 0;
  v12 = *(_DWORD **)a1;
  if ( (int)a3 < (int)v11 )
  {
    LODWORD(v13) = &v617;
    do
    {
      v14 = (const char *)v526;
      if ( v526 > 0 && (v15 = v526 - 1, (int)a3 >= *(_DWORD *)(v525 + 8 * (v526 - 1) + 4)) )
      {
        do
        {
          gameswf::array<gameswf::with_stack_entry>::resize(&v525, v15);
          v14 = (const char *)v526;
          if ( v526 <= 0 )
            goto LABEL_5;
          v15 = v526 - 1;
        }
        while ( *(_DWORD *)(v525 + 8 * (v526 - 1) + 4) <= (int)a3 );
        v16 = v12[2];
        HIDWORD(v13) = (unsigned __int8)a3[v16];
        if ( (BYTE4(v13) & 0x80) == 0 )
        {
LABEL_6:
          switch ( HIDWORD(v13) )
          {
            case 0:
              if ( v647[0] == -1 )
                goto LABEL_143;
              goto LABEL_21;
            case 4:
              v241 = gameswf::as_environment::get_target(a2);
              v242 = *(int (__fastcall **)(int, int))(*(_DWORD *)v241 + 332);
              v243 = gameswf::as_environment::get_target(a2);
              v244 = (*(int (__fastcall **)(int))(*(_DWORD *)v243 + 312))(v243);
              LODWORD(v13) = v242(v241, v244 + 1);
              goto LABEL_18;
            case 5:
              v245 = gameswf::as_environment::get_target(a2);
              v246 = *(int (__fastcall **)(int, int))(*(_DWORD *)v245 + 332);
              v247 = gameswf::as_environment::get_target(a2);
              v248 = (*(int (__fastcall **)(int))(*(_DWORD *)v247 + 312))(v247);
              LODWORD(v13) = v246(v245, v248 - 1);
              goto LABEL_18;
            case 6:
              v300 = gameswf::as_environment::get_target(a2);
              LODWORD(v13) = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v300 + 148))(v300, 0);
              goto LABEL_18;
            case 7:
              v301 = gameswf::as_environment::get_target(a2);
              LODWORD(v13) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v301 + 148))(v301, 1);
              goto LABEL_18;
            case 8:
            case 0x2A:
            case 0x2C:
            case 0x31:
            case 0x35:
            case 0x37:
            case 0x45:
              LODWORD(v13) = gameswf::log_error("todo opcode: %02X\n", (const char *)HIDWORD(v13));
              goto LABEL_18;
            case 9:
              LODWORD(v13) = gameswf::get_sound_handler((gameswf *)LODWORD(v13));
              if ( LODWORD(v13) )
                LODWORD(v13) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)LODWORD(v13) + 24))(LODWORD(v13));
              goto LABEL_18;
            case 0xA:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v302 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = v302 + COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v302), v303));
              goto LABEL_212;
            case 0xB:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v229 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v229), v230)) - v229;
              goto LABEL_212;
            case 0xC:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v231 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = v231 * COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v231), v232));
              goto LABEL_212;
            case 0xD:
              v233 = *(gameswf::tu_string **)a2;
              v234 = *((_DWORD *)a2 + 1) - 1;
              v235 = gameswf::as_value::to_number((gameswf::as_value *)(*(_DWORD *)a2 + 12 * v234), SHIDWORD(v13), v14);
              gameswf::as_value::operator/=(
                (gameswf::tu_string *)((char *)v233 + 12 * v234 - 12),
                SHIDWORD(v235),
                *(double *)&v235);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              goto LABEL_18;
            case 0xE:
            case 0x66:
              v146 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              is_instance_of = gameswf::as_value::operator==(
                                 (int)v146,
                                 *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1),
                                 (const char *)(*((_DWORD *)a2 + 1) - 1));
              goto LABEL_139;
            case 0xF:
              v340 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v341 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v343 = v341 > COERCE_DOUBLE(gameswf::as_value::to_number(v340, SHIDWORD(v341), v342));
              v148 = v340;
              is_instance_of = v343;
              goto LABEL_140;
            case 0x10:
              v146 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              if ( !gameswf::as_value::to_bool(v146)
                || !gameswf::as_value::to_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1))) )
              {
                is_instance_of = 0;
                v148 = v146;
                goto LABEL_140;
              }
              is_instance_of = 1;
              goto LABEL_348;
            case 0x11:
              v146 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              if ( gameswf::as_value::to_bool(v146) )
                goto LABEL_347;
              v363 = gameswf::as_value::to_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)));
              is_instance_of = v363;
              if ( !v363 )
              {
LABEL_139:
                v148 = v146;
                goto LABEL_140;
              }
              is_instance_of = 1;
              goto LABEL_348;
            case 0x12:
              v344 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              v345 = gameswf::as_value::to_bool(v344);
              gameswf::as_value::set_bool(v344, v345 != 1);
              goto LABEL_18;
            case 0x13:
              v146 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v275 = gameswf::as_value::to_tu_string(v146);
              v276 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              v277 = v276;
              if ( v275 == v276 )
              {
LABEL_347:
                is_instance_of = 1;
LABEL_348:
                v148 = v146;
              }
              else
              {
                v278 = *v276;
                if ( *v275 == -1 )
                  v279 = *((const char **)v275 + 3);
                else
                  v279 = v275 + 1;
                if ( v278 == -1 )
                  v280 = *((const char **)v277 + 3);
                else
                  v280 = v277 + 1;
                is_instance_of = LC_API_STRCMP_0(v279, v280) == 0;
                v148 = v146;
              }
LABEL_140:
              gameswf::as_value::set_bool(v148, is_instance_of);
LABEL_141:
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              goto LABEL_18;
            case 0x14:
              v166 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              v322 = gameswf::as_value::to_tu_string(v166);
              v324 = *v322;
              v325 = v324 == -1;
              if ( v324 == -1 )
                v324 = *((_DWORD *)v322 + 1);
              else
                ++v322;
              if ( v325 )
                v322 = *((char **)v322 + 3);
              v167 = gameswf::tu_string::utf8_char_count((gameswf::tu_string *)v322, (const char **)(v324 - 1), v323);
              goto LABEL_173;
            case 0x15:
              v308 = (int)COERCE_DOUBLE(
                            gameswf::as_value::to_number(
                              (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                              SHIDWORD(v13),
                              v14));
              v310 = v308;
              v312 = (int)COERCE_DOUBLE(
                            gameswf::as_value::to_number(
                              (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                              v309,
                              v311))
                   - 1;
              v313 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 3)));
              v314 = *v313;
              if ( v314 == -1 )
              {
                v320 = *((char **)v313 + 3);
                v395 = *((_DWORD *)v313 + 1) - 1;
                if ( v312 >= v395 )
                  v396 = *((_DWORD *)v313 + 1) - 1;
                else
                  v396 = v312;
                v317 = v396 & ~(v396 >> 31);
                v397 = v395 - v317;
                if ( v397 >= v310 )
                  v319 = v310;
                else
                  v319 = v397;
              }
              else
              {
                v315 = v314 - 1;
                if ( v312 >= v315 )
                  v316 = v315;
                else
                  v316 = v312;
                v317 = v316 & ~(v316 >> 31);
                v318 = v315 - v317;
                if ( v318 >= v310 )
                  v319 = v310;
                else
                  v319 = v318;
                v320 = v313 + 1;
              }
              gameswf::tu_string::operator=(v647, &v320[v317]);
              gameswf::tu_string::resize((gameswf::tu_string *)v647, v319);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 2);
              gameswf::as_value::set_tu_string(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                (const gameswf::tu_string *)v647);
              goto LABEL_18;
            case 0x17:
              v321 = *((_DWORD *)a2 + 1);
              if ( v321 > 0 )
                gameswf::array<gameswf::as_value>::resize(a2, v321 - 1);
              goto LABEL_18;
            case 0x18:
              v304 = (const char *)(*((_DWORD *)a2 + 1) - 1);
              v166 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (_DWORD)v304);
              v305 = gameswf::as_value::to_number(v166, SHIDWORD(v13), v304);
              v167 = (int)floor(*(double *)&v305);
              goto LABEL_173;
            case 0x1C:
              v306 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              gameswf::as_environment::get_variable((int)v613, a2, (int)v306, (int)&v525, 0);
              gameswf::as_value::operator=(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                (int)v613);
              gameswf::as_value::drop_refs((gameswf::as_value *)v613);
              goto LABEL_18;
            case 0x1D:
              v307 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 2)));
              gameswf::as_environment::set_variable(a2, v307, *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1), &v525);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 2);
              goto LABEL_18;
            case 0x20:
              gameswf::as_environment::set_target(
                a2,
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                v510);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              goto LABEL_18;
            case 0x21:
              v287 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 2)));
              gameswf::tu_string::operator=((gameswf::tu_string *)v647, v287);
              v288 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              gameswf::tu_string::operator+=((gameswf::tu_string *)v647, v288);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              gameswf::as_value::set_tu_string(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                (const gameswf::tu_string *)v647);
              goto LABEL_18;
            case 0x22:
              v289 = gameswf::as_environment::find_target(
                       a2,
                       (const gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)));
              v290 = gameswf::cast_to<gameswf::character>(v289);
              if ( v290 )
              {
                v485 = (gameswf::as_object *)v290;
                v293 = *((_DWORD *)a2 + 1) - 1;
                v476 = *(gameswf::tu_string **)a2;
                v294 = (char *)(int)COERCE_DOUBLE(
                                      gameswf::as_value::to_number(
                                        (gameswf::as_value *)(*(_DWORD *)a2 + 12 * v293),
                                        v291,
                                        v292));
                gameswf::get_property((gameswf *)v612, v485, v294);
                gameswf::as_value::operator=((gameswf::tu_string *)((char *)v476 + 12 * v293 - 12), (int)v612);
                gameswf::as_value::drop_refs((gameswf::as_value *)v612);
              }
              else
              {
                gameswf::as_value::operator=(
                  (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                  (int)&v617);
              }
              goto LABEL_141;
            case 0x23:
              v295 = gameswf::as_environment::find_target(
                       a2,
                       (const gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 3)));
              v298 = (gameswf *)gameswf::cast_to<gameswf::character>(v295);
              if ( v298 )
              {
                v299 = (gameswf::as_object *)(int)COERCE_DOUBLE(
                                                    gameswf::as_value::to_number(
                                                      (gameswf::as_value *)(*(_DWORD *)a2
                                                                          + 12 * (*((_DWORD *)a2 + 1) - 2)),
                                                      v296,
                                                      v297));
                gameswf::set_property(
                  v298,
                  v299,
                  *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1),
                  *(const gameswf::as_value **)a2);
              }
              goto LABEL_157;
            case 0x24:
              v149 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 3);
              if ( *(_BYTE *)(v149 + 1) == 5 )
                v150 = *(_DWORD *)(v149 + 4);
              else
                v150 = 0;
              v151 = gameswf::cast_to<gameswf::character>(v150);
              if ( v151
                || (v464 = gameswf::as_value::to_string(
                             (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 3)),
                             (gameswf::tu_string *)v647),
                    gameswf::as_environment::get_variable((int)&v512, a2, (int)v464, (int)&v525, 0),
                    BYTE1(v512) == 5 ? (v465 = v513) : (v465 = 0),
                    v151 = gameswf::cast_to<gameswf::character>(v465),
                    gameswf::as_value::drop_refs((gameswf::as_value *)&v512),
                    v151) )
              {
                v474 = *(gameswf::tu_string **)(*(_DWORD *)v151 + 212);
                v152 = gameswf::as_value::to_string(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                         (gameswf::tu_string *)v647);
                v154 = (int)COERCE_DOUBLE(
                              gameswf::as_value::to_number(
                                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                                v153,
                                (const char *)*(_DWORD *)a2));
                ((void (__fastcall *)(int, char *, int))v474)(v151, v152, v154);
              }
LABEL_157:
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 3);
              goto LABEL_18;
            case 0x25:
              v187 = gameswf::as_environment::find_target(
                       a2,
                       (const gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)));
              v188 = gameswf::cast_to<gameswf::character>(v187);
              v189 = v188;
              if ( v188 )
              {
                v190 = *(_DWORD *)(v188 + 64);
                if ( v190 )
                {
                  v191 = *(_DWORD *)(v188 + 60);
                  v192 = *(unsigned __int8 *)(v191 + 4);
                  if ( *(_BYTE *)(v191 + 4) )
                  {
                    if ( (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v190 + 8))(*(_DWORD *)(v188 + 64), 2) )
                      (*(void (__fastcall **)(int, int))(*(_DWORD *)v190 + 168))(v190, v189);
                  }
                  else
                  {
                    gameswf::smart_ptr_proxy::operator=(
                      (_DWORD **)(v188 + 60),
                      (_DWORD *)*(unsigned __int8 *)(v191 + 4));
                    *(_DWORD *)(v189 + 64) = v192;
                  }
                }
              }
              goto LABEL_141;
            case 0x26:
              v193 = *((_DWORD *)a2 + 1) - 1;
              v522[0] = *(_DWORD *)a2 + 12 * v193;
              v194 = "trace";
              v522[6] = "trace";
              if ( v618 == 5 )
                v194 = v619;
              v522[2] = &v617;
              if ( v618 != 5 )
                v194 = nullptr;
              v522[4] = (char *)&dword_0 + 1;
              v522[5] = v193;
              v522[3] = a2;
              v522[1] = v194;
              gameswf::as_global_trace((gameswf *)v522, (const gameswf::fn_call *)((char *)&dword_0 + 1));
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              goto LABEL_18;
            case 0x27:
              v20 = (const gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              v517 = 1.0;
              v519 = 0;
              v512 = 0;
              LOBYTE(v513) = 0;
              *(_WORD *)((char *)&v513 + 1) = 0;
              v514 = 0.0;
              v515 = 0.0;
              v516 = 1.0;
              v518 = 0;
              v21 = gameswf::as_environment::find_target(a2, v20);
              v512 = gameswf::cast_to<gameswf::character>(v21);
              if ( !v512 )
              {
                v469 = gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)));
                gameswf::log_error("error: start_drag of invalid target '%s'.\n", v469);
              }
              v22 = gameswf::as_value::to_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)));
              v23 = *((_DWORD *)a2 + 1);
              v24 = *(gameswf::tu_string **)a2;
              BYTE1(v513) = v22;
              v25 = gameswf::as_value::to_bool((gameswf::tu_string *)((char *)v24 + 12 * v23 - 36));
              BYTE2(v513) = v25;
              if ( v25 )
              {
                v28 = COERCE_DOUBLE(
                        gameswf::as_value::to_number(
                          (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 7)),
                          v26,
                          v27));
                v30 = *((_DWORD *)a2 + 1);
                v31 = *(gameswf::tu_string **)a2;
                v514 = v28;
                v32 = COERCE_DOUBLE(
                        gameswf::as_value::to_number(
                          (gameswf::tu_string *)((char *)v31 + 12 * v30 - 72),
                          v29,
                          (const char *)(v30 - 6)));
                v34 = *((_DWORD *)a2 + 1);
                v35 = *(gameswf::tu_string **)a2;
                v515 = v32;
                v36 = COERCE_DOUBLE(
                        gameswf::as_value::to_number(
                          (gameswf::tu_string *)((char *)v35 + 12 * v34 - 60),
                          v33,
                          (const char *)(v34 - 5)));
                v38 = *((_DWORD *)a2 + 1);
                v39 = *(gameswf::tu_string **)a2;
                v516 = v36;
                v40 = COERCE_DOUBLE(
                        gameswf::as_value::to_number(
                          (gameswf::tu_string *)((char *)v39 + 12 * v38 - 48),
                          v37,
                          (const char *)(v38 - 4)));
                v41 = *((_DWORD *)a2 + 1);
                v517 = v40;
                gameswf::array<gameswf::as_value>::resize(a2, v41 - 4);
              }
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 3);
              v42 = gameswf::as_environment::get_target(a2);
              LODWORD(v13) = (*(int (__fastcall **)(int))(*(_DWORD *)v42 + 308))(v42);
              if ( LODWORD(v13) && v512 )
                LODWORD(v13) = (*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)LODWORD(v13) + 224))(
                                 LODWORD(v13),
                                 &v512);
              goto LABEL_18;
            case 0x28:
              v195 = gameswf::as_environment::get_target(a2);
              v196 = (*(int (__fastcall **)(int))(*(_DWORD *)v195 + 308))(v195);
              LODWORD(v13) = (*(int (__fastcall **)(int))(*(_DWORD *)v196 + 228))(v196);
              goto LABEL_18;
            case 0x29:
              v155 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v156 = gameswf::as_value::to_tu_string(v155);
              v157 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              if ( *v157 == -1 )
                v158 = *((const char **)v157 + 3);
              else
                v158 = v157 + 1;
              if ( *v156 == -1 )
                v159 = *((const char **)v156 + 3);
              else
                v159 = v156 + 1;
              v160 = LC_API_STRCMP_0(v159, v158);
              gameswf::as_value::set_bool(v155, v160 < 0);
              goto LABEL_18;
            case 0x2B:
              v161 = *(gameswf::tu_string **)a2;
              v162 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1);
              if ( *(_BYTE *)(v162 + 1) != 5 )
              {
                gameswf::as_value::to_function((gameswf::tu_string *)((char *)v161 + 12 * *((_DWORD *)a2 + 1) - 24));
LABEL_167:
                v163 = nullptr;
                goto LABEL_168;
              }
              v163 = *(gameswf::as_object **)(v162 + 4);
              v379 = (const gameswf::as_function *)gameswf::as_value::to_function((gameswf::tu_string *)((char *)v161 + 12 * *((_DWORD *)a2 + 1) - 24));
              if ( !v163 || !gameswf::as_object::is_instance_of(v163, v379) )
                goto LABEL_167;
LABEL_168:
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              gameswf::as_value::set_as_object(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                v163);
LABEL_18:
              ++a3;
              break;
            case 0x30:
              v164 = (gameswf::tu_random *)(int)COERCE_DOUBLE(
                                                  gameswf::as_value::to_number(
                                                    (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                                                    SHIDWORD(v13),
                                                    v14));
              if ( (int)v164 < 1 )
                v165 = 1;
              else
                v165 = (unsigned int)v164;
              v166 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              v167 = gameswf::tu_random::next_random(v164) % v165;
              goto LABEL_173;
            case 0x32:
              v166 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              v168 = gameswf::as_value::to_string(v166, (gameswf::tu_string *)v647);
              if ( *v168 == -1 )
                v169 = *((char **)v168 + 3);
              else
                v169 = v168 + 1;
              v167 = *v169;
LABEL_173:
              LODWORD(v13) = gameswf::as_value::set_double(v166, (double)v167);
              goto LABEL_18;
            case 0x33:
              v170 = (int)COERCE_DOUBLE(
                            gameswf::as_value::to_number(
                              (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                              SHIDWORD(v13),
                              v14));
              v171 = *(gameswf::tu_string **)a2;
              v172 = *((_DWORD *)a2 + 1) - 1;
              LOWORD(v613[0]) = (unsigned __int8)v170;
              gameswf::as_value::set_string((gameswf::tu_string **)v171 + 3 * v172, (const char *)v613);
              goto LABEL_18;
            case 0x34:
              ticks = gameswf::tu_timer::get_ticks((gameswf::tu_timer *)LODWORD(v13));
              v620 = (double)(unsigned __int64)(ticks - *(_QWORD *)(gameswf::as_environment::get_player(a2) + 64));
              LODWORD(v13) = gameswf::array<gameswf::as_value>::push_back<double>((int *)a2, (__int64 *)&v620);
              goto LABEL_18;
            case 0x3A:
              v174 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              gameswf::tu_string::operator=((gameswf::tu_string *)v647, v174);
              v175 = *((_DWORD *)a2 + 1) - 1;
              v176 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2);
              if ( *(_BYTE *)(v176 + 1) == 5 )
              {
                v177 = *(_DWORD *)(v176 + 4);
                gameswf::array<gameswf::as_value>::resize(a2, v175);
                if ( v177 )
                {
                  v611[1] = 0;
                  v611[0] = 0;
                  if ( (*(int (__fastcall **)(int, char *, _BYTE *))(*(_DWORD *)v177 + 32))(v177, v647, v611) )
                  {
                    (*(void (__fastcall **)(int, char *, char *))(*(_DWORD *)v177 + 28))(v177, v647, &v617);
                    LOBYTE(v177) = 1;
                  }
                  else
                  {
                    LOBYTE(v177) = 0;
                  }
                  gameswf::as_value::drop_refs((gameswf::as_value *)v611);
                }
              }
              else
              {
                gameswf::array<gameswf::as_value>::resize(a2, v175);
                LOBYTE(v177) = 0;
              }
              gameswf::as_value::set_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)), v177);
              goto LABEL_18;
            case 0x3B:
              v178 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              gameswf::tu_string::tu_string((gameswf::tu_string *)v645, (const gameswf::tu_string *)v178);
              gameswf::as_environment::get_variable_raw((int)&v609, a2, (gameswf::tu_string *)v645, (int)&v525, 0);
              if ( !v610 )
                goto LABEL_392;
              gameswf::as_value::drop_refs((gameswf::as_value *)&v609);
              v610 = 0;
              local = gameswf::as_environment::find_local(a2, (const gameswf::tu_string *)v645, 1);
              if ( local < 0 )
              {
                v608[1] = 0;
                v608[0] = 0;
                if ( gameswf::as_environment::get_member(a2, v645, v608) )
                {
                  gameswf::as_environment::set_member(a2, v645, &v609);
                  gameswf::as_value::set_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)), 1);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v608);
                }
                else
                {
                  gameswf::as_value::drop_refs((gameswf::as_value *)v608);
LABEL_392:
                  gameswf::as_value::set_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)), 0);
                }
              }
              else
              {
                v180 = *((_DWORD *)a2 + 21) + 32 * local;
                gameswf::as_value::drop_refs((gameswf::as_value *)(v180 + 20));
                *(_BYTE *)(v180 + 21) = 0;
                gameswf::as_value::set_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)), 1);
              }
              gameswf::as_value::drop_refs((gameswf::as_value *)&v609);
              if ( v645[0] == -1 )
                gameswf::free_internal(v646);
              goto LABEL_18;
            case 0x3C:
              v186 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 2)));
              gameswf::as_environment::set_local(
                a2,
                (const gameswf::tu_string *)v186,
                (const gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)));
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 2);
              goto LABEL_18;
            case 0x3D:
              v604[1] = 0;
              v613[0] = nullptr;
              v605 = 0;
              v606 = 0;
              v604[0] = 0;
              gameswf::as_value::operator=((gameswf::as_value *)v604, (int)&v614);
              v181 = *((_DWORD *)a2 + 1) - 1;
              v182 = *(_DWORD *)a2 + 12 * v181;
              if ( (unsigned __int8)(*(_BYTE *)(v182 + 1) - 3) <= 1u )
              {
                v445 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12 * v181));
                v447 = *v445;
                if ( v447 == -1 )
                  v446 = *((gameswf::as_value **)v445 + 3);
                else
                  v506 = (gameswf::as_value *)(v445 + 1);
                if ( v447 == -1 )
                  v506 = v446;
                LODWORD(v620) = -1;
                v448 = v445;
                gameswf::as_environment::get_variable((int)v603, a2, (int)v445, (int)&v525, (int)&v620);
                gameswf::as_value::operator=((gameswf::as_value *)&v605, (int)v603);
                gameswf::as_value::drop_refs((gameswf::as_value *)v603);
                if ( LODWORD(v620) != -1 )
                {
                  v449 = (gameswf::ref_counted *)gameswf::as_environment::get_target(a2);
                  gameswf::smart_ptr<gameswf::character>::set_ref(v613, v449);
                  v450 = (gameswf::character *)gameswf::cast_to<gameswf::character>(*(_DWORD *)(v525 + 8 * LODWORD(v620)));
                  if ( v450 )
                    gameswf::as_environment::set_target(a2, v450);
                }
                if ( v606 == 5 )
                {
                  v500 = v607;
                  if ( v607 )
                  {
                    if ( gameswf::as_object::get_ctor(v607, (gameswf::as_value *)&v605) )
                    {
                      v470 = *v448 == -1 ? *((const char **)v448 + 3) : v448 + 1;
                      if ( !LC_API_STRCMP_0(v470, "super") )
                      {
                        gameswf::as_value::as_value((gameswf::as_value *)v602, v500);
                        gameswf::as_value::operator=((gameswf::as_value *)v604, (int)v602);
                        gameswf::as_value::drop_refs((gameswf::as_value *)v602);
                        gameswf::as_object::create_proto(v500, (const gameswf::as_value *)&v605);
                      }
                    }
                  }
                }
                if ( !gameswf::as_value::is_function((gameswf::as_value *)&v605) )
                {
                  if ( *v448 == -1 )
                    gameswf::log_error("error in call_function: '%s' is not a function\n", *((const char **)v448 + 3));
                  else
                    gameswf::log_error("error in call_function: '%s' is not a function\n", v448 + 1);
                }
              }
              else
              {
                gameswf::as_value::operator=((gameswf::as_value *)&v605, v182);
                v506 = (gameswf::as_value *)"?";
              }
              v185 = (int)COERCE_DOUBLE(
                            gameswf::as_value::to_number(
                              (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                              v183,
                              v184));
              gameswf::call_method(
                v601,
                (gameswf::as_value *)&v605,
                (int)a2,
                (int)v604,
                v185,
                *((_DWORD *)a2 + 1) - 3,
                (int)v506);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1 - v185);
              gameswf::as_value::operator=(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                (int)v601);
              if ( v613[0] )
                gameswf::as_environment::set_target(a2, v613[0]);
              gameswf::as_value::drop_refs((gameswf::as_value *)v601);
              gameswf::as_value::drop_refs((gameswf::as_value *)v604);
              gameswf::as_value::drop_refs((gameswf::as_value *)&v605);
              *(gameswf::ref_counted **)&v13 = v613[0];
              if ( v613[0] )
                gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v613[0]);
              goto LABEL_18;
            case 0x3E:
              if ( a5 )
                gameswf::as_value::operator=(a5, *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              a3 = v11;
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              goto LABEL_18;
            case 0x3F:
              LOWORD(v523[0]) = 0;
              gameswf::as_environment::pop((gameswf::as_environment *)v600, a2);
              v493 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v600, v262, v263));
              gameswf::as_value::drop_refs((gameswf::as_value *)v600);
              gameswf::as_environment::pop((gameswf::as_environment *)v599, a2);
              v266 = gameswf::as_value::to_number((gameswf::as_value *)v599, v264, v265);
              gameswf::as_value::drop_refs((gameswf::as_value *)v599);
              if ( v493 == 0.0 )
              {
                v212 = (gameswf::as_value *)v523;
              }
              else
              {
                v267 = fmod(*(double *)&v266, v493);
                v212 = (gameswf::as_value *)v523;
                gameswf::as_value::set_double((gameswf::as_value *)v523, v267);
              }
              goto LABEL_264;
            case 0x40:
              gameswf::as_environment::pop((gameswf::as_environment *)v598, a2);
              gameswf::as_environment::pop((gameswf::as_environment *)v597, a2);
              v506 = (gameswf::as_value *)(int)COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v597, v268, v269));
              gameswf::as_value::drop_refs((gameswf::as_value *)v597);
              v503 = gameswf::as_value::to_string((gameswf::as_value *)v598, (gameswf::tu_string *)v647);
              gameswf::as_environment::get_variable((int)&v594, a2, (int)v503, (int)&v525, 0);
              v591 = 0;
              v592 = 0;
              if ( v595 == 5 )
                v270 = v596;
              else
                v270 = 0;
              v271 = gameswf::cast_to<gameswf::as_c_function>(v270);
              if ( v271 )
              {
                v272 = *(void (**)(void))(*(_DWORD *)v271 + 100);
                v273 = *((_DWORD *)a2 + 1) - 1;
                v521[13] = "new";
                v274 = v506;
                v521[12] = v273;
                v521[11] = v506;
                if ( v615 == 5 )
                  v274 = v616;
                v521[9] = &v614;
                if ( v615 != 5 )
                  v274 = nullptr;
                v521[8] = v274;
                v521[7] = &v591;
                v521[10] = a2;
                v272();
              }
              else
              {
                if ( v595 == 5 )
                  v271 = v596;
                v430 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_s_function>(v271);
                if ( v430 )
                {
                  player = (gameswf::player *)gameswf::as_environment::get_player(a2);
                  v432 = (gameswf::as_object *)operator new(0x38u, 0);
                  gameswf::as_object::as_object(v432, player);
                  if ( v432 )
                    gameswf::ref_counted::add_ref((int)v432);
                  v590[0] = 0;
                  v590[1] = 0;
                  gameswf::as_value::set_as_object((gameswf::as_value *)v590, v430);
                  proto = (gameswf::tu_string *)gameswf::as_object::create_proto(v432, (const gameswf::as_value *)v590);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v590);
                  gameswf::weak_ptr<gameswf::as_object>::operator=((int)proto + 32, v432);
                  v589[1] = 0;
                  v589[0] = 0;
                  gameswf::as_value::set_as_object((gameswf::as_value *)v589, v430);
                  v433 = gameswf::as_value::as_value((gameswf::as_value *)v588, v432);
                  v435 = *v503;
                  if ( v435 == -1 )
                    v434 = v503;
                  else
                    v433 = (gameswf::as_value *)v503;
                  if ( v435 == -1 )
                    v436 = *((_DWORD *)v434 + 3);
                  else
                    v436 = (int)v433 + 1;
                  gameswf::call_method(
                    v587,
                    (gameswf::as_value *)v589,
                    (int)a2,
                    (int)v588,
                    (int)v506,
                    *((_DWORD *)a2 + 1) - 1,
                    v436);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v587);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v588);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v589);
                  v586[1] = 0;
                  v586[0] = 0;
                  gameswf::as_value::set_as_object((gameswf::as_value *)v586, v430);
                  gameswf::as_object::set_ctor(v432, (const gameswf::as_value *)v586);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v586);
                  gameswf::as_value::set_as_object((gameswf::as_value *)&v591, v432);
                  if ( v432 )
                    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v432);
                }
                else
                {
                  v459 = *((_DWORD *)a2 + 1);
                  memset(v523, 0, sizeof(v523));
                  v460 = 12 * (v459 - 1);
                  v524 = 0;
                  while ( (int)v430 < (int)v506 )
                  {
                    v430 = (gameswf::as_object *)((char *)v430 + 1);
                    gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v523);
                    v460 -= 12;
                  }
                  v461 = (gameswf *)gameswf::as_environment::get_player(a2);
                  v462 = gameswf::as_value::to_tu_string((gameswf::as_value *)v598);
                  as_plugin = (gameswf::as_object *)gameswf::action_buffer::load_as_plugin(v461, v462, (int)v523);
                  if ( as_plugin )
                  {
                    gameswf::as_value::set_as_object((gameswf::as_value *)&v591, as_plugin);
                  }
                  else
                  {
                    v466 = gameswf::as_value::to_tu_string((gameswf::as_value *)v598);
                    if ( *v466 == -1 )
                      gameswf::log_error("can't create object with unknown class '%s'\n", *((const char **)v466 + 3));
                    else
                      gameswf::log_error("can't create object with unknown class '%s'\n", v466 + 1);
                  }
                  gameswf::array<gameswf::as_value>::resize(v523, 0);
                  gameswf::array<gameswf::as_value>::reserve((int)v523, 0);
                }
              }
              if ( v592 == 5 && v593 )
              {
                v398 = gameswf::as_environment::get_player(a2);
                if ( v592 == 5 )
                  v399 = v593;
                else
                  v399 = 0;
                *(int *)((char *)&dword_34 + v399) = *(_DWORD *)(v398 + 48);
              }
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - (_DWORD)v506);
              gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
              gameswf::as_value::drop_refs((gameswf::as_value *)&v591);
              gameswf::as_value::drop_refs((gameswf::as_value *)&v594);
              gameswf::as_value::drop_refs((gameswf::as_value *)v598);
              goto LABEL_18;
            case 0x41:
              v338 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              gameswf::as_environment::declare_local(a2, (const gameswf::tu_string *)v338);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              goto LABEL_18;
            case 0x42:
              v339 = nullptr;
              v585[0] = 0;
              v585[1] = 0;
              if ( v615 == 5 )
                v339 = v616;
              v521[5] = -1;
              v521[6] = "array";
              v521[2] = &v614;
              v521[4] = -1;
              v521[1] = v339;
              v521[0] = v585;
              v521[3] = a2;
              gameswf::as_global_array_ctor((gameswf *)v521, (const gameswf::fn_call *)0xFFFFFFFF);
              gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
              gameswf::as_value::drop_refs((gameswf::as_value *)v585);
              goto LABEL_18;
            case 0x43:
              gameswf::as_environment::pop((gameswf::as_environment *)v584, a2);
              v495 = (int)COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v584, v326, v327));
              gameswf::as_value::drop_refs((gameswf::as_value *)v584);
              v328 = (gameswf::player *)gameswf::as_environment::get_player(a2);
              v329 = (gameswf::as_object *)operator new(0x38u, 0);
              gameswf::as_object::as_object(v329, v328);
              if ( v495 > 0 )
              {
                v330 = 0;
                v504 = (gameswf::as_value *)a3;
                do
                {
                  v331 = *(void (__fastcall **)(gameswf::as_object *, char *, int))(*(_DWORD *)v329 + 28);
                  v332 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2
                                                                             + 12 * (*((_DWORD *)a2 + 1) - 2)));
                  v331(v329, v332, *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
                  ++v330;
                  gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 2);
                }
                while ( v330 != v495 );
                a3 = (const char *)v504;
              }
              LODWORD(v620) = v329;
              LODWORD(v13) = gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(a2, (int *)&v620);
              goto LABEL_18;
            case 0x44:
              v333 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              v334 = gameswf::as_value::_typeof(v333);
              gameswf::as_value::set_string((gameswf::tu_string **)v333, v334);
              goto LABEL_18;
            case 0x46:
              v335 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              gameswf::as_environment::get_variable((int)v582, a2, (int)v335, (int)&v525, 0);
              if ( v582[1] == 5 )
                v337 = v583;
              else
                v337 = nullptr;
              gameswf::action_buffer::enumerate(a2, v337, v336);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              gameswf::as_value::drop_refs((gameswf::as_value *)v582);
              goto LABEL_18;
            case 0x47:
              v281 = *((_DWORD *)a2 + 1);
              v282 = *(gameswf::tu_string **)a2;
              v283 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (v281 - 1));
              v284 = (unsigned __int8)(*((_BYTE *)v283 + 1) - 3);
              if ( v284 <= 1 || (unsigned __int8)(*((_BYTE *)v282 + 12 * v281 - 23) - 3) <= 1u )
              {
                LOWORD(v643[0]) = 1;
                v644 = v644 & 0xFF000000 | 0xFFFFFF;
                HIBYTE(v644) &= ~1u;
                v428 = gameswf::as_value::to_string(
                         (gameswf::tu_string *)((char *)v282 + 12 * v281 - 24),
                         (gameswf::tu_string *)v647);
                gameswf::tu_string::operator=((gameswf::tu_string *)v643, v428);
                v429 = gameswf::as_value::to_string(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         (gameswf::tu_string *)v647);
                gameswf::tu_string::operator+=((gameswf::tu_string *)v643, v429);
                gameswf::as_value::set_tu_string(
                  (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                  (const gameswf::tu_string *)v643);
                gameswf::tu_string::~tu_string(v643);
              }
              else
              {
                v494 = COERCE_DOUBLE(gameswf::as_value::to_number(v283, v284, (const char *)(v281 - 2)));
                v286 = v494
                     + COERCE_DOUBLE(
                         gameswf::as_value::to_number(
                           (gameswf::tu_string *)((char *)v282 + 12 * v281 - 24),
                           SHIDWORD(v494),
                           v285));
                gameswf::as_value::set_double((gameswf::tu_string *)((char *)v282 + 12 * v281 - 24), v286);
              }
              goto LABEL_141;
            case 0x48:
              v358 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v359 = (const char *)(unsigned __int8)(*((_BYTE *)v358 + 1) - 3);
              if ( (unsigned int)v359 <= 1 )
              {
                v423 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2
                                                                           + 12 * (*((_DWORD *)a2 + 1) - 2)));
                v424 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2
                                                                           + 12 * (*((_DWORD *)a2 + 1) - 1)));
                if ( *v424 == -1 )
                  v425 = *((const char **)v424 + 3);
                else
                  v425 = v424 + 1;
                if ( *v423 == -1 )
                  v426 = *((const char **)v423 + 3);
                else
                  v426 = v423 + 1;
                v427 = LC_API_STRCMP_0(v426, v425);
                gameswf::as_value::set_bool(v358, v427 < 0);
              }
              else
              {
                v360 = COERCE_DOUBLE(
                         gameswf::as_value::to_number(
                           (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                           SHIDWORD(v13),
                           v359));
                v362 = v360 > COERCE_DOUBLE(gameswf::as_value::to_number(v358, SHIDWORD(v360), v361));
                gameswf::as_value::set_bool(v358, v362);
              }
              goto LABEL_141;
            case 0x49:
              v346 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v347 = gameswf::as_value::operator==(
                       (int)v346,
                       *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1),
                       (const char *)(*((_DWORD *)a2 + 1) - 1));
              gameswf::as_value::set_bool(v346, v347);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
              goto LABEL_18;
            case 0x4A:
              v249 = gameswf::as_value::to_number(
                       (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                       SHIDWORD(v13),
                       v14);
              LODWORD(v13) = gameswf::as_value::set_double(
                               (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                               *(double *)&v249);
              goto LABEL_18;
            case 0x4B:
              v250 = gameswf::as_value::to_string(
                       (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                       (gameswf::tu_string *)v647);
              gameswf::as_value::set_tu_string(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                (const gameswf::tu_string *)v250);
              goto LABEL_18;
            case 0x4C:
              v212 = (gameswf::as_value *)v581;
              v251 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1);
              v581[1] = 0;
              v581[0] = 0;
              gameswf::as_value::operator=((gameswf::as_value *)v581, v251);
LABEL_264:
              gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
              goto LABEL_230;
            case 0x4D:
              v252 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2);
              v580[1] = 0;
              v580[0] = 0;
              gameswf::as_value::operator=((gameswf::as_value *)v580, v252);
              gameswf::as_value::operator=(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
              gameswf::as_value::operator=(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                (int)v580);
              gameswf::as_value::drop_refs((gameswf::as_value *)v580);
              goto LABEL_18;
            case 0x4E:
              v253 = *((_DWORD *)a2 + 1);
              v254 = *(gameswf::tu_string **)a2;
              v255 = *(_DWORD *)a2 + 12 * (v253 - 2);
              if ( *(_BYTE *)(v255 + 1) == 5 && (v380 = *(gameswf::as_object **)(v255 + 4)) != nullptr )
              {
                v479 = (gameswf::tu_string *)(*(_DWORD *)a2 + 12 * (v253 - 2));
                gameswf::as_value::drop_refs(v479);
                *((_BYTE *)v479 + 1) = 0;
                v381 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1);
                if ( *(_BYTE *)(v381 + 1) == 2 )
                {
                  v620 = *(double *)(v381 + 4);
                  v420 = (gameswf::as_value *)v381;
                  v421 = *(void (__fastcall **)(gameswf::as_object *, int, int))(*(_DWORD *)v380 + 40);
                  v422 = (int)COERCE_DOUBLE(gameswf::as_value::to_number(v420, v419, (const char *)HIDWORD(v419)));
                  v421(v380, v422, *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
                }
                else
                {
                  v382 = *(int (__fastcall **)(gameswf::as_object *, char *, int))(*(_DWORD *)v380 + 32);
                  v383 = gameswf::as_value::to_string(
                           (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                           (gameswf::tu_string *)v647);
                  if ( !v382(v380, v383, *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)) )
                  {
                    v576 = 0;
                    v577 = 0;
                    v384 = *(int (__fastcall **)(gameswf::as_object *, void **, char *))(*(_DWORD *)v380 + 32);
                    gameswf::tu_string::tu_string((gameswf::tu_string *)v642, "__resolve");
                    v385 = v384(v380, v642, &v576);
                    gameswf::tu_string::~tu_string(v642);
                    if ( v385 )
                    {
                      if ( v577 == 5 )
                      {
                        v386 = v578;
                        if ( v578 )
                        {
                          if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v578 + 8))(v578, 4) )
                          {
                            v387 = v380;
                            v388 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v386 + 100);
                            gameswf::as_value::as_value((gameswf::as_value *)v574, v387);
                            v520[5] = *((_DWORD *)a2 + 1) - 1;
                            if ( v574[1] == 5 )
                              v389 = v575;
                            else
                              v389 = 0;
                            v520[4] = 1;
                            v520[1] = v389;
                            v520[0] = &v576;
                            v520[2] = v574;
                            v520[6] = "__resolve";
                            v520[3] = a2;
                            v388(v386, v520);
                            gameswf::as_value::drop_refs((gameswf::as_value *)v574);
                            gameswf::as_value::operator=(
                              (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                              (int)&v576);
                          }
                        }
                      }
                    }
                    gameswf::as_value::drop_refs((gameswf::as_value *)&v576);
                  }
                }
              }
              else
              {
                LOWORD(v579[0]) = 0;
                v256 = gameswf::as_value::to_tu_string((gameswf::tu_string *)((char *)v254 + 12 * v253 - 12));
                gameswf::as_value::get_member(
                  (gameswf::tu_string *)((char *)v254 + 12 * v253 - 24),
                  (const gameswf::tu_string *)v256,
                  (gameswf::as_value *)v579);
                if ( BYTE1(v579[0]) == 6 )
                  gameswf::as_value::get_property(
                    v579,
                    (const gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                    (gameswf::as_value *)v579);
                gameswf::as_value::operator=(
                  (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                  (int)v579);
                gameswf::as_value::drop_refs((gameswf::as_value *)v579);
              }
              goto LABEL_141;
            case 0x4F:
              v257 = *((_DWORD *)a2 + 1);
              v258 = *(_DWORD *)a2 + 12 * (v257 - 3);
              if ( *(_BYTE *)(v258 + 1) == 5 )
              {
                v390 = *(_DWORD *)(v258 + 4);
                if ( v390 )
                {
                  v391 = *(_DWORD *)a2 + 12 * (v257 - 2);
                  if ( *(_BYTE *)(v391 + 1) == 2 )
                  {
                    v620 = *(double *)(v391 + 4);
                    v444 = (gameswf::as_value *)v391;
                    v393 = *(void (__fastcall **)(int, char *, int))(*(_DWORD *)v390 + 36);
                    v394 = (char *)(int)COERCE_DOUBLE(gameswf::as_value::to_number(v444, v443, (const char *)HIDWORD(v443)));
                  }
                  else
                  {
                    v392 = (gameswf::as_value *)v391;
                    v393 = *(void (__fastcall **)(int, char *, int))(*(_DWORD *)v390 + 28);
                    v394 = gameswf::as_value::to_tu_string(v392);
                  }
                  v393(v390, v394, *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
                  v257 = *((_DWORD *)a2 + 1);
                }
              }
              gameswf::array<gameswf::as_value>::resize(a2, v257 - 3);
              goto LABEL_18;
            case 0x50:
              v259 = (const char *)(*((_DWORD *)a2 + 1) - 1);
              v260 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (_DWORD)v259);
              v261 = COERCE_DOUBLE(gameswf::as_value::to_number(v260, SHIDWORD(v13), v259)) + 1.0;
              LODWORD(v13) = gameswf::as_value::set_double(v260, v261);
              goto LABEL_18;
            case 0x51:
              v205 = (const char *)(*((_DWORD *)a2 + 1) - 1);
              v206 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (_DWORD)v205);
              v207 = COERCE_DOUBLE(gameswf::as_value::to_number(v206, SHIDWORD(v13), v205)) - 1.0;
              LODWORD(v13) = gameswf::as_value::set_double(v206, v207);
              goto LABEL_18;
            case 0x52:
              v490 = (int)COERCE_DOUBLE(
                            gameswf::as_value::to_number(
                              (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 3)),
                              SHIDWORD(v13),
                              v14));
              v208 = *((_DWORD *)a2 + 1);
              v209 = *(gameswf::tu_string **)a2;
              v210 = (gameswf::tu_string *)(*(_DWORD *)a2 + 12 * (v208 - 1));
              v573[0] = 0;
              v573[1] = 0;
              if ( (unsigned __int8)(*((_BYTE *)v210 + 1) - 3) <= 1u )
              {
                v483 = v210;
                v442 = gameswf::as_value::to_string(v210, (gameswf::tu_string *)v647);
                gameswf::tu_string::tu_string((gameswf::tu_string *)&v637, (const gameswf::tu_string *)v442);
                v208 = *((_DWORD *)a2 + 1);
                v209 = *(gameswf::tu_string **)a2;
                v210 = v483;
              }
              else
              {
                v641 = v641 & 0xFF000000 | 0xFFFFFF;
                v637 = 1;
                HIBYTE(v641) &= ~1u;
                v638[0] = 0;
              }
              v506 = (gameswf::as_value *)v572;
              v475 = v210;
              v572[1] = 0;
              v572[0] = 0;
              if ( gameswf::as_value::get_member(
                     (gameswf::tu_string *)((char *)v209 + 12 * v208 - 24),
                     (const gameswf::tu_string *)&v637,
                     (gameswf::as_value *)v572) )
              {
                if ( v637 == -1 )
                  v211 = v640;
                else
                  v211 = v638;
                v212 = (gameswf::as_value *)v573;
                gameswf::call_method(
                  v571,
                  (gameswf::as_value *)v572,
                  (int)a2,
                  *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2),
                  v490,
                  *((_DWORD *)a2 + 1) - 4,
                  (int)v211);
                gameswf::as_value::operator=((gameswf::as_value *)v573, (int)v571);
                gameswf::as_value::drop_refs((gameswf::as_value *)v571);
                goto LABEL_228;
              }
              if ( *((_BYTE *)v475 + 1) && (v637 != -1 ? (v370 = v637) : (v370 = v639), v370 != 1) )
              {
                if ( v637 == -1 )
                  v400 = (const char *)v640;
                else
                  v400 = v638;
                v212 = (gameswf::as_value *)v573;
                gameswf::log_error("error: can't find method %s\n", v400);
              }
              else
              {
                v371 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2);
                if ( *(_BYTE *)(v371 + 1) == 5 )
                  v372 = *(_DWORD *)(v371 + 4);
                else
                  v372 = 0;
                if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v372 + 8))(v372, 4) )
                {
                  v455 = (gameswf::as_object *)v372;
                  v456 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2);
                  gameswf::as_value::as_value((gameswf::as_value *)v570, v455);
                  if ( v637 == -1 )
                    v457 = v640;
                  else
                    v457 = v638;
                  v458 = (gameswf::as_value *)v456;
                  v212 = (gameswf::as_value *)v573;
                  gameswf::call_method(v569, v458, (int)a2, (int)v570, v490, *((_DWORD *)a2 + 1) - 4, (int)v457);
                  gameswf::as_value::operator=((gameswf::as_value *)v573, (int)v569);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v569);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v570);
                }
                else
                {
                  if ( *(_DWORD *)(v372 + 36) )
                  {
                    v373 = *(_DWORD *)(v372 + 32);
                    v374 = *(unsigned __int8 *)(v373 + 4);
                    if ( *(_BYTE *)(v373 + 4) )
                    {
                      v568[1] = 0;
                      v568[0] = 0;
                      if ( gameswf::as_object::get_ctor((gameswf::as_object *)v372, (gameswf::as_value *)v568) )
                      {
                        gameswf::as_object::create_proto((gameswf::as_object *)v372, (const gameswf::as_value *)v568);
                        gameswf::as_value::as_value((gameswf::as_value *)v567, (gameswf::as_object *)v372);
                        if ( v637 == -1 )
                          v451 = v640;
                        else
                          v451 = v638;
                        v212 = (gameswf::as_value *)v573;
                        gameswf::call_method(
                          v566,
                          (gameswf::as_value *)v568,
                          (int)a2,
                          (int)v567,
                          v490,
                          *((_DWORD *)a2 + 1) - 4,
                          (int)v451);
                        gameswf::as_value::operator=((gameswf::as_value *)v573, (int)v566);
                        gameswf::as_value::drop_refs((gameswf::as_value *)v566);
                        gameswf::as_value::drop_refs((gameswf::as_value *)v567);
                      }
                      else
                      {
                        v212 = (gameswf::as_value *)v573;
                      }
                      gameswf::as_value::drop_refs((gameswf::as_value *)v568);
                      goto LABEL_228;
                    }
                    gameswf::smart_ptr_proxy::operator=(
                      (_DWORD **)(v372 + 32),
                      (_DWORD *)*(unsigned __int8 *)(v373 + 4));
                    *(_DWORD *)(v372 + 36) = v374;
                  }
                  v452 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2);
                  if ( *(_BYTE *)(v452 + 1) == 5 )
                    v453 = *(const char **)(v452 + 4);
                  else
                    v453 = nullptr;
                  v212 = (gameswf::as_value *)v573;
                  if ( v637 == -1 )
                    v454 = v640;
                  else
                    v454 = v638;
                  gameswf::log_error("error: call_method can't call constructor 0x%p.%s\n", v453, v454);
                }
              }
LABEL_228:
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 2 - v490);
              gameswf::as_value::operator=(
                (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                (int)v573);
              gameswf::as_value::drop_refs((gameswf::as_value *)v572);
              if ( v637 == -1 )
                gameswf::free_internal(v640);
LABEL_230:
              gameswf::as_value::drop_refs(v212);
              goto LABEL_18;
            case 0x53:
              v212 = (gameswf::as_value *)&v563;
              gameswf::as_environment::pop((gameswf::as_environment *)&v563, a2);
              gameswf::as_environment::pop((gameswf::as_environment *)v561, a2);
              if ( v561[1] == 5 )
                v213 = v562;
              else
                v213 = 0;
              gameswf::as_value::drop_refs((gameswf::as_value *)v561);
              gameswf::as_environment::pop((gameswf::as_environment *)v560, a2);
              v491 = (int)COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v560, v214, v215));
              gameswf::as_value::drop_refs((gameswf::as_value *)v560);
              v613[0] = nullptr;
              if ( v564 == 5 )
                v216 = v565;
              else
                v216 = 0;
              v217 = gameswf::cast_to<gameswf::as_c_function>(v216);
              if ( v217 )
              {
                gameswf::call_method(
                  v558,
                  (gameswf::as_value *)&v563,
                  (int)a2,
                  (int)&v614,
                  v491,
                  *((_DWORD *)a2 + 1) - 1,
                  (int)"???");
                if ( v558[1] == 5 )
                  v218 = v559;
                else
                  v218 = nullptr;
                gameswf::smart_ptr<gameswf::as_object>::set_ref(v613, v218);
                gameswf::as_value::drop_refs((gameswf::as_value *)v558);
              }
              else
              {
                if ( v564 == 5 )
                  v217 = v565;
                if ( gameswf::cast_to<gameswf::as_s_function>(v217) )
                {
                  v376 = (gameswf::player *)gameswf::as_environment::get_player(a2);
                  v377 = (gameswf::as_object *)operator new(0x38u, 0);
                  gameswf::as_object::as_object(v377, v376);
                  gameswf::smart_ptr<gameswf::as_object>::set_ref(v613, v377);
                  v378 = gameswf::as_object::create_proto(v613[0], (const gameswf::as_value *)&v563);
                  gameswf::weak_ptr<gameswf::as_object>::operator=(v378 + 32, v613[0]);
                  gameswf::as_value::as_value((gameswf::as_value *)v557, v613[0]);
                  gameswf::call_method(
                    v556,
                    (gameswf::as_value *)&v563,
                    (int)a2,
                    (int)v557,
                    v491,
                    *((_DWORD *)a2 + 1) - 1,
                    (int)"???");
                  gameswf::as_value::drop_refs((gameswf::as_value *)v556);
                  gameswf::as_value::drop_refs((gameswf::as_value *)v557);
                }
                else
                {
                  if ( !v213 )
                    v375 = (gameswf::as_value *)&v553;
                  v553 = 0;
                  v554 = 0;
                  if ( v213 )
                  {
                    v506 = (gameswf::as_value *)&v553;
                    v480 = *(gameswf::tu_string **)(*(_DWORD *)v213 + 32);
                    v412 = gameswf::as_value::to_tu_string((gameswf::as_value *)&v563);
                    if ( ((int (__fastcall *)(int, char *, char *))v480)(v213, v412, &v553) )
                    {
                      if ( v554 == 5 )
                        v413 = v555;
                      else
                        v413 = 0;
                      v414 = gameswf::cast_to<gameswf::as_s_function>(v413);
                      if ( v414 )
                      {
                        v481 = (gameswf::tu_string *)v414;
                        v415 = (gameswf::player *)gameswf::as_environment::get_player(a2);
                        v416 = (gameswf::as_object *)operator new(0x38u, 0);
                        gameswf::as_object::as_object(v416, v415);
                        gameswf::smart_ptr<gameswf::as_object>::set_ref(v613, v416);
                        v552[0] = 0;
                        v552[1] = 0;
                        v487 = v613[0];
                        gameswf::as_value::set_as_object((gameswf::as_value *)v552, v481);
                        v488 = (gameswf::as_value *)gameswf::as_object::create_proto(
                                                      v487,
                                                      (const gameswf::as_value *)v552);
                        gameswf::as_value::drop_refs((gameswf::as_value *)v552);
                        gameswf::weak_ptr<gameswf::as_object>::operator=((int)v488 + 32, v613[0]);
                        v551[1] = 0;
                        v551[0] = 0;
                        gameswf::as_value::set_as_object((gameswf::as_value *)v551, v481);
                        gameswf::as_value::as_value((gameswf::as_value *)v550, v613[0]);
                        gameswf::call_method(
                          v549,
                          (gameswf::as_value *)v551,
                          (int)a2,
                          (int)v550,
                          v491,
                          *((_DWORD *)a2 + 1) - 1,
                          (int)"???");
                        gameswf::as_value::drop_refs((gameswf::as_value *)v549);
                        gameswf::as_value::drop_refs((gameswf::as_value *)v550);
                        gameswf::as_value::drop_refs((gameswf::as_value *)v551);
                      }
                      else
                      {
                        if ( v554 == 5 )
                          v414 = v555;
                        v467 = (gameswf::as_object *)gameswf::cast_to<gameswf::as_c_function>(v414);
                        if ( v467 )
                        {
                          gameswf::as_value::as_value((gameswf::as_value *)v548, v467);
                          gameswf::call_method(
                            v546,
                            (gameswf::as_value *)v548,
                            (int)a2,
                            (int)&v614,
                            v491,
                            *((_DWORD *)a2 + 1) - 1,
                            (int)"???");
                          if ( v546[1] == 5 )
                            v468 = v547;
                          else
                            v468 = nullptr;
                          gameswf::smart_ptr<gameswf::as_object>::set_ref(v613, v468);
                          gameswf::as_value::drop_refs((gameswf::as_value *)v546);
                          gameswf::as_value::drop_refs((gameswf::as_value *)v548);
                        }
                      }
                    }
                    gameswf::as_value::drop_refs((gameswf::as_value *)&v553);
                  }
                  else
                  {
                    v506 = v375;
                    gameswf::as_value::drop_refs(v375);
                  }
                }
              }
              v219 = gameswf::as_environment::get_player(a2);
              *((_DWORD *)v613[0] + 13) = *(_DWORD *)(v219 + 48);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - v491);
              *(gameswf::ref_counted **)&v620 = v613[0];
              gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(a2, (int *)&v620);
              if ( v613[0] )
                gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v613[0]);
              goto LABEL_230;
            case 0x54:
              v220 = (const gameswf::as_function *)gameswf::as_value::to_function((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)));
              is_instance_of = gameswf::as_value::is_instance_of(
                                 (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                                 v220);
              v148 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              goto LABEL_140;
            case 0x55:
              v212 = (gameswf::as_value *)v544;
              gameswf::as_environment::pop((gameswf::as_environment *)v544, a2);
              if ( v544[1] == 5 )
                v222 = v545;
              else
                v222 = nullptr;
              gameswf::action_buffer::enumerate(a2, v222, v221);
              goto LABEL_230;
            case 0x60:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v223 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = (double)((int)v223 & (int)COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v223), v224)));
              goto LABEL_212;
            case 0x61:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v225 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = (double)((int)v225 | (int)COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v225), v226)));
              goto LABEL_212;
            case 0x62:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v227 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = (double)((int)v227 ^ (int)COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v227), v228)));
              goto LABEL_212;
            case 0x63:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v198 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = (double)((int)COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v198), (const char *)LODWORD(v198))) << (int)v198);
              goto LABEL_212;
            case 0x64:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v239 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = (double)((int)COERCE_DOUBLE(gameswf::as_value::to_number(v197, SHIDWORD(v239), (const char *)LODWORD(v239))) >> (int)v239);
              goto LABEL_212;
            case 0x65:
              v197 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v240 = COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                         SHIDWORD(v13),
                         &byte_9[3]));
              v199 = (double)(int)((unsigned int)COERCE_DOUBLE(
                                                   gameswf::as_value::to_number(
                                                     v197,
                                                     SHIDWORD(v240),
                                                     (const char *)LODWORD(v240))) >> (int)v240);
LABEL_212:
              gameswf::as_value::set_double(v197, v199);
              goto LABEL_141;
            case 0x67:
              v236 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              if ( (unsigned __int8)(*((_BYTE *)v236 + 1) - 3) <= 1u )
              {
                v437 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2
                                                                           + 12 * (*((_DWORD *)a2 + 1) - 2)));
                v438 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2
                                                                           + 12 * (*((_DWORD *)a2 + 1) - 1)));
                if ( *v438 == -1 )
                  v439 = *((const char **)v438 + 3);
                else
                  v439 = v438 + 1;
                if ( *v437 == -1 )
                  v440 = *((const char **)v437 + 3);
                else
                  v440 = v437 + 1;
                v441 = LC_API_STRCMP_0(v440, v439) > 0;
                gameswf::as_value::set_bool(v236, v441);
              }
              else
              {
                v492 = COERCE_DOUBLE(
                         gameswf::as_value::to_number(
                           (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                           SHIDWORD(v13),
                           v14));
                v238 = v492 > COERCE_DOUBLE(
                                gameswf::as_value::to_number(
                                  (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)),
                                  SHIDWORD(v492),
                                  v237));
                gameswf::as_value::set_bool(v236, v238);
              }
              goto LABEL_141;
            case 0x68:
              v200 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2));
              v201 = gameswf::as_value::to_tu_string(v200);
              v202 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12
                                                                                         * (*((_DWORD *)a2 + 1) - 1)));
              if ( *v202 == -1 )
                v203 = *((const char **)v202 + 3);
              else
                v203 = v202 + 1;
              if ( *v201 == -1 )
                v204 = *((const char **)v201 + 3);
              else
                v204 = v201 + 1;
              is_instance_of = LC_API_STRCMP_0(v204, v203) > 0;
              v148 = v200;
              goto LABEL_140;
            case 0x69:
              v348 = *(gameswf::tu_string **)a2;
              v349 = *((_DWORD *)a2 + 1) - 1;
              v350 = *(_DWORD *)a2 + 12 * v349;
              v351 = 0;
              v541 = 0;
              v542 = 0;
              v496 = (int)v348 + 12 * v349 - 12;
              if ( *(_BYTE *)(v350 + 1) == 5 )
                v351 = *(_DWORD *)(v350 + 4);
              v352 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v351 + 32);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v635, "prototype");
              v352(v351, v635, &v541);
              if ( v635[0] == -1 )
                gameswf::free_internal(v636);
              v353 = (gameswf::player *)gameswf::as_environment::get_player(a2);
              v354 = (gameswf::ref_counted **)operator new(0x38u, 0);
              gameswf::as_object::as_object((gameswf::as_object *)v354, v353);
              if ( v542 == 5 )
                v355 = v543;
              else
                v355 = nullptr;
              gameswf::smart_ptr<gameswf::as_object>::set_ref(v354 + 10, v355);
              gameswf::as_object::set_ctor((gameswf::as_object *)v354, (const gameswf::as_value *)v350);
              v357 = *(char *)(v496 + 1);
              if ( v357 == 5 )
                v356 = v496;
              else
                v350 = 0;
              if ( v357 == 5 )
                v350 = *(_DWORD *)(v356 + 4);
              v497 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v350 + 28);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v633, "prototype");
              v539[0] = 0;
              v539[1] = 5;
              v540 = v354;
              if ( v354 )
                gameswf::ref_counted::add_ref((int)v354);
              v497(v350, v633, v539);
              gameswf::as_value::drop_refs((gameswf::as_value *)v539);
              if ( v633[0] == -1 )
                gameswf::free_internal(v634);
              gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 2);
              gameswf::as_value::drop_refs((gameswf::as_value *)&v541);
              goto LABEL_18;
            default:
              goto LABEL_18;
          }
          continue;
        }
      }
      else
      {
LABEL_5:
        v16 = v12[2];
        HIDWORD(v13) = (unsigned __int8)a3[v16];
        if ( (BYTE4(v13) & 0x80) == 0 )
          goto LABEL_6;
      }
      v17 = &a3[v16];
      LODWORD(v13) = (unsigned __int8)a3[v16 + 1];
      v18 = a3 + 3;
      v19 = LODWORD(v13) | ((unsigned __int8)a3[v16 + 2] << 8);
      v489 = (int)&a3[v19 + 3];
      switch ( HIDWORD(v13) )
      {
        case 0x81:
          a3 += v19 + 3;
          v68 = (unsigned __int8)v18[v16] | (*((unsigned __int8 *)v17 + 4) << 8);
          v69 = gameswf::as_environment::get_target(a2);
          LODWORD(v13) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v69 + 332))(v69, v68);
          break;
        case 0x83:
          v61 = &v18[v16];
          v62 = (size_t)&v18[LC_API_STRLEN_0(&v18[v16]) + 1];
          v63 = &v18[v16];
          v64 = (const char *)(v16 + v62);
          if ( LC_API_STRNCMP_0(v63, "FSCommand:", 0xAu) )
          {
            LOWORD(v538[0]) = 0;
            gameswf::as_value::set_string(v538, v64);
            gameswf::as_environment::load_file(a2, v61, (const gameswf::as_value *)v538);
            gameswf::as_value::drop_refs((gameswf::as_value *)v538);
            a3 = (const char *)v489;
          }
          else
          {
            LODWORD(v13) = gameswf::get_fscommand_callback(nullptr);
            if ( LODWORD(v13) )
            {
              fscommand_callback = (int (__fastcall *)(int, const char *, const char *))gameswf::get_fscommand_callback((gameswf *)LODWORD(v13));
              v66 = gameswf::as_environment::get_target(a2);
              v67 = (*(int (__fastcall **)(int))(*(_DWORD *)v66 + 308))(v66);
              LODWORD(v13) = fscommand_callback(v67, v61 + 10, v64);
              a3 = (const char *)v489;
            }
            else
            {
LABEL_31:
              a3 = (const char *)v489;
            }
          }
          break;
        case 0x87:
          v70 = (unsigned __int8)v18[v16];
          if ( a7 )
          {
            gameswf::as_value::operator=(
              (gameswf::as_value *)(*((_DWORD *)a2 + 16) + 12 * (*((_DWORD *)a2 + 17) - 1 - v70)),
              *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
            a3 += v19 + 3;
          }
          else if ( v70 > 3 )
          {
            a3 += v19 + 3;
            LODWORD(v13) = gameswf::log_error(
                             "store_register[%d] -- register out of bounds!",
                             (const char *)(unsigned __int8)v18[v16]);
          }
          else
          {
            gameswf::as_value::operator=(
              (gameswf::as_environment *)((char *)a2 + 12 * v70 + 16),
              *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
            a3 += v19 + 3;
          }
          break;
        case 0x88:
          v59 = *((gameswf::player **)a2 + 26);
          if ( v59 )
          {
            v60 = *((_BYTE **)a2 + 25);
            if ( !v60[4] )
            {
              v325 = (*(_DWORD *)v60)-- == 1;
              if ( v325 )
                gameswf::free_internal(v60);
              v59 = nullptr;
              *((_DWORD *)a2 + 25) = 0;
              *((_DWORD *)a2 + 26) = 0;
            }
          }
          gameswf::action_buffer::process_decl_dict(a1, a3, v489, v59);
          a3 += v19 + 3;
          break;
        case 0x8B:
          LOWORD(v537[0]) = 0;
          gameswf::as_value::set_string(v537, &v18[v16]);
          gameswf::as_environment::set_target(a2, (gameswf::as_value *)v537, v510);
          gameswf::as_value::drop_refs((gameswf::as_value *)v537);
          a3 += v19 + 3;
          break;
        case 0x8C:
          v51 = gameswf::as_environment::get_target(a2);
          v52 = &v18[v16];
          v53 = *(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)v51 + 156);
          gameswf::tu_string::tu_string((gameswf::tu_string *)v631, v52);
          LODWORD(v13) = v53(v51, v631);
          if ( v631[0] != -1 )
            goto LABEL_31;
          gameswf::free_internal(p);
          a3 = (const char *)v489;
          break;
        case 0x8D:
          goto LABEL_38;
        case 0x8E:
          gameswf::tu_string::operator=(v647, &v18[v16]);
          v99 = v647[0];
          if ( v647[0] == -1 )
            v99 = v648;
          v100 = &v18[v99];
          if ( v99 - 1 <= 0 )
            goto LABEL_95;
          v534 = 0;
          v535 = 0;
          if ( gameswf::as_environment::get_member(a2, v647, &v534) )
          {
            v101 = v535 == 5 ? v536 : 0;
            v102 = gameswf::cast_to<gameswf::as_s_function>(v101);
            if ( v102 )
            {
              if ( *(_DWORD *)(v102 + 60) == *(_DWORD *)a1 )
              {
                v403 = *(_DWORD *)(v102 + 88);
                if ( v403 == v489 )
                {
                  gameswf::as_value::drop_refs((gameswf::as_value *)&v534);
                  v404 = (int)(v100 + 5);
                  v498 = v12[2];
                  v405 = (unsigned __int8)v100[v498] | ((unsigned __int8)v100[v498 + 1] << 8);
                  if ( v405 > 0 )
                  {
                    for ( i = 0; i != v405; ++i )
                    {
                      v407 = v404 + 1;
                      LODWORD(v13) = LC_API_STRLEN_0((const char *)(v498 + v407));
                      v404 = v407 + LODWORD(v13) + 1;
                    }
                  }
                  a3 = (const char *)(v403
                                    + (*(unsigned __int8 *)(v498 + v404) | (*(unsigned __int8 *)(v498 + v404 + 1) << 8)));
                  break;
                }
              }
            }
          }
          gameswf::as_value::drop_refs((gameswf::as_value *)&v534);
LABEL_95:
          v103 = gameswf::as_environment::get_player(a2);
          v104 = operator new(0x7Cu, 0);
          gameswf::as_s_function::as_s_function(v104, v103, a1, v489, &v525);
          v105 = (gameswf::ref_counted *)gameswf::as_environment::get_target(a2);
          gameswf::weak_ptr<gameswf::as_object>::operator=((int)(v104 + 116), v105);
          v104[112] = 1;
          v106 = v12[2];
          v107 = v100[v106 + 2];
          v108 = (unsigned __int8)v100[v106 + 1];
          v109 = (unsigned __int8)v100[v106];
          v104[113] = v107;
          v506 = (gameswf::as_value *)(v109 | (v108 << 8));
          v110 = v100 + 5;
          *((_WORD *)v104 + 57) = (unsigned __int8)v100[v12[2] + 3] | ((unsigned __int8)v100[v12[2] + 4] << 8);
          if ( (int)v506 > 0 )
          {
            v111 = nullptr;
            v112 = a2;
            do
            {
              v113 = v110 + 1;
              gameswf::as_s_function::add_arg(
                (gameswf::as_s_function *)v104,
                (unsigned __int8)v110[v12[2]],
                &v110[v12[2] + 1]);
              v114 = *((_DWORD *)v104 + 24) + 24 * (*((_DWORD *)v104 + 25) - 1);
              v111 = (gameswf::as_value *)((char *)v111 + 1);
              v115 = *(char *)(v114 + 4);
              v116 = v113 + 1;
              if ( v115 == -1 )
                v115 = *(_DWORD *)(v114 + 8);
              v110 = &v116[v115 - 1];
            }
            while ( v111 != v506 );
            a2 = v112;
          }
          v91 = (gameswf::as_value *)v533;
          v117 = (gameswf::as_object *)v104;
          v118 = (unsigned __int8)v110[v12[2]] | ((unsigned __int8)v110[v12[2] + 1] << 8);
          *((_DWORD *)v104 + 23) = v118;
          v533[1] = 0;
          v533[0] = 0;
          a3 = (const char *)(v118 + v489);
          gameswf::as_value::set_as_object((gameswf::as_value *)v533, v117);
          v94 = v647[0];
          if ( v647[0] == -1 )
            goto LABEL_102;
          goto LABEL_78;
        case 0x94:
          if ( (int)v14 <= 7 )
          {
            v49 = *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1);
            v50 = (gameswf::ref_counted *)(v489 + ((unsigned __int8)v18[v16] | (*((unsigned __int8 *)v17 + 4) << 8)));
            if ( *(_BYTE *)(v49 + 1) == 5 )
            {
              v622[0] = *(gameswf::ref_counted **)(v49 + 4);
              if ( v622[0] )
                gameswf::ref_counted::add_ref((int)v622[0]);
            }
            else
            {
              v622[0] = nullptr;
            }
            v622[1] = v50;
            gameswf::array<gameswf::with_stack_entry>::push_back<gameswf::with_stack_entry>(&v525, (int *)v622);
            if ( v622[0] )
              gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v622[0]);
          }
LABEL_38:
          a3 = (const char *)v489;
          gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
          break;
        case 0x96:
          LODWORD(v13) = &v621;
          v95 = a3;
          v506 = (gameswf::as_value *)&v620;
          while ( v19 > v95 - a3 )
          {
            v96 = v12[2];
            v97 = v95 + 1;
            v98 = v96;
            switch ( v95[v96 + 3] )
            {
              case 0:
                v484 = (gameswf::as_value *)v12[2];
                v502 = (gameswf::as_value *)(v95 + 4);
                v508 = (gameswf::as_value *)&v95[v96 + 4];
                v135 = LC_API_STRLEN_0((const char *)v508);
                v136 = v484;
                if ( v135 > 0 )
                {
                  v137 = *((gameswf::tu_string **)a2 + 26);
                  v509 = (gameswf::as_value *)v12[6];
                  if ( v137 )
                  {
                    v138 = *((_BYTE **)a2 + 25);
                    if ( !v138[4] )
                    {
                      v325 = (*(_DWORD *)v138)-- == 1;
                      if ( v325 )
                        gameswf::free_internal(v138);
                      v137 = nullptr;
                      *((_DWORD *)a2 + 25) = 0;
                      *((_DWORD *)a2 + 26) = 0;
                      v136 = (gameswf::as_value *)v12[2];
                    }
                  }
                  v472 = v137;
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v627, (const char *)v502 + (_DWORD)v136);
                  v511 = gameswf::permanent_string_cache::get((char **)v472 + 11, (const gameswf::tu_string *)v627);
                  if ( v627[0] == -1 )
                    gameswf::free_internal(v628);
                  v139 = v12[6];
                  v140 = v139 + 1;
                  if ( v139 + 1 > v12[7] )
                  {
                    gameswf::array<gameswf::tu_string const*>::reserve((int)(v12 + 5), v140 + (v140 >> 1));
                    v139 = v12[6];
                  }
                  *(_DWORD *)(v12[5] + 4 * v139) = v511;
                  v141 = v12[2];
                  v12[6] = v140;
                  v97[v141 + 2] = 10;
                  v119 = v97 + 4;
                  *((_BYTE *)v502 + v12[2]) = (_BYTE)v509;
                  v97[v12[2] + 4] = BYTE1(v509);
                  v98 = v12[2];
                  goto LABEL_106;
                }
                v95 += v135 + 2;
                v364 = gameswf::as_environment::get_player(a2);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v629, (const char *)v508);
                v505 = gameswf::permanent_string_cache::get((char **)(v364 + 44), (const gameswf::tu_string *)v629);
                if ( v629[0] == -1 )
                  gameswf::free_internal(v630);
                v365 = *((_DWORD *)a2 + 1);
                v366 = v365 + 1;
                if ( v365 + 1 > *((_DWORD *)a2 + 2) )
                {
                  gameswf::array<gameswf::as_value>::reserve((int)a2, v366 + (v366 >> 1));
                  v365 = *((_DWORD *)a2 + 1);
                }
                LODWORD(v13) = *(_DWORD *)a2;
                v367 = 12 * v365;
                *(_BYTE *)(LODWORD(v13) + v367) = 0;
                v368 = LODWORD(v13) + v367;
                *(_DWORD *)(v368 + 8) = 0;
                *(_BYTE *)(v368 + 1) = 3;
                *(_DWORD *)(v368 + 4) = v505;
                *((_DWORD *)a2 + 1) = v366;
                continue;
              case 1:
                memcpy(&v623, &v95[v96 + 4], sizeof(v623));
                LODWORD(v620) = v623;
                v95 += 5;
                v13 = gameswf::array<gameswf::as_value>::push_back<float>(a2, (float *)&v620);
                continue;
              case 2:
                LODWORD(v13) = gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
                goto LABEL_104;
              case 3:
                LODWORD(v13) = gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
                ++v95;
                continue;
              case 4:
                v95 += 2;
                if ( a7 || (unsigned __int8)v97[v96 + 3] <= 3u )
                {
                  LODWORD(v13) = gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
                }
                else
                {
                  v471 = (gameswf::tu_string *)(unsigned __int8)v97[v96 + 3];
                  gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
                  LODWORD(v13) = gameswf::log_error(
                                   "push register[%d] -- register out of bounds!\n",
                                   (const char *)v471);
                }
                continue;
              case 5:
                v132 = *((_DWORD *)a2 + 1);
                v133 = v132 + 1;
                v134 = v97[v96 + 3] != 0;
                v95 += 2;
                if ( v132 + 1 > *((_DWORD *)a2 + 2) )
                {
                  v486 = v97[v96 + 3] != 0;
                  v477 = (gameswf::tu_string *)(v132 + 1);
                  gameswf::array<gameswf::as_value>::reserve((int)a2, v133 + (v133 >> 1));
                  v132 = *((_DWORD *)a2 + 1);
                  v133 = (int)v477;
                  v134 = v486;
                }
                LODWORD(v13) = 12 * v132;
                HIDWORD(v13) = *(_DWORD *)a2 + LODWORD(v13);
                *(_BYTE *)HIDWORD(v13) = 0;
                *(_BYTE *)(HIDWORD(v13) + 4) = v134;
                *(_BYTE *)(HIDWORD(v13) + 1) = 1;
                *((_DWORD *)a2 + 1) = v133;
                continue;
              case 6:
                memcpy((char *)&v621 + 4, &v95[v96 + 4], 4u);
                memcpy(&v621, &v95[v12[2] + 8], 4u);
                v620 = v621;
                v95 += 9;
                LODWORD(v13) = gameswf::array<gameswf::as_value>::push_back<double>((int *)a2, (__int64 *)&v620);
                continue;
              case 7:
                v95 += 5;
                LODWORD(v620) = ((unsigned __int8)v97[v96 + 5] << 16)
                              | ((unsigned __int8)v97[v96 + 4] << 8)
                              | (unsigned __int8)v97[v96 + 3]
                              | ((unsigned __int8)v97[v96 + 6] << 24);
                v13 = gameswf::array<gameswf::as_value>::push_back<int>(a2, (int *)&v620);
                continue;
              case 8:
                v126 = (unsigned __int8)v97[v96 + 3];
                v95 += 2;
                if ( v126 >= v12[6] )
                  goto LABEL_117;
                goto LABEL_112;
              case 9:
                v95 += 3;
                v126 = (unsigned __int8)v97[v96 + 3] | ((unsigned __int8)v97[v96 + 4] << 8);
                if ( v126 >= v12[6] )
                {
LABEL_117:
                  gameswf::log_error("error: dict_lookup(%d) is out of bounds!\n", (const char *)v126);
                  LODWORD(v620) = 0;
                  v13 = gameswf::array<gameswf::as_value>::push_back<int>(a2, (int *)&v620);
                }
                else
                {
LABEL_112:
                  v127 = *((_DWORD *)a2 + 1);
                  v128 = v127 + 1;
                  v129 = *(gameswf::tu_string **)(v12[5] + 4 * v126);
                  if ( v127 + 1 > *((_DWORD *)a2 + 2) )
                  {
                    v478 = *(gameswf::tu_string **)(v12[5] + 4 * v126);
                    gameswf::array<gameswf::as_value>::reserve((int)a2, v128 + (v128 >> 1));
                    v127 = *((_DWORD *)a2 + 1);
                    v129 = v478;
                  }
                  v130 = *(gameswf::tu_string **)a2;
                  v131 = 12 * v127;
                  LODWORD(v13) = 0;
                  *((_BYTE *)v130 + v131) = 0;
                  HIDWORD(v13) = (char *)v130 + v131;
                  *(_DWORD *)(HIDWORD(v13) + 8) = 0;
                  *(_BYTE *)(HIDWORD(v13) + 1) = 3;
                  *(_DWORD *)(HIDWORD(v13) + 4) = v129;
                  *((_DWORD *)a2 + 1) = v128;
                }
                break;
              case 0xA:
                v502 = (gameswf::as_value *)(v95 + 4);
                v119 = v95 + 5;
LABEL_106:
                v120 = v97 + 1;
                v121 = *(gameswf::tu_string **)(v12[5]
                                              + 4
                                              * (*((unsigned __int8 *)v502 + v98) | ((unsigned __int8)v119[v98] << 8)));
                v122 = *((_DWORD *)a2 + 1);
                v123 = *(char *)v121;
                v124 = v122 + 1;
                if ( v123 == -1 )
                  v123 = *((_DWORD *)v121 + 1);
                v95 = &v120[v123 - 1];
                if ( v124 > *((_DWORD *)a2 + 2) )
                {
                  v473 = v121;
                  gameswf::array<gameswf::as_value>::reserve((int)a2, v124 + (v124 >> 1));
                  v122 = *((_DWORD *)a2 + 1);
                  v121 = v473;
                }
                LODWORD(v13) = 12 * v122;
                v125 = *(_DWORD *)a2 + 12 * v122;
                *(_BYTE *)v125 = 0;
                *(_DWORD *)(v125 + 8) = 0;
                *(_BYTE *)(v125 + 1) = 3;
                *(_DWORD *)(v125 + 4) = v121;
                *((_DWORD *)a2 + 1) = v124;
                break;
              default:
LABEL_104:
                ++v95;
                break;
            }
          }
          goto LABEL_31;
        case 0x99:
          a3 = (const char *)(v489 + (__int16)((unsigned __int8)v18[v16] | (*((unsigned __int8 *)v17 + 4) << 8)));
          break;
        case 0x9A:
          v44 = (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
          v624[0] = 1;
          v626 = v626 & 0xFF000000 | 0xFFFFFF;
          v624[1] = 0;
          HIBYTE(v626) &= ~1u;
          v45 = gameswf::as_value::to_string(v44, (gameswf::tu_string *)v624);
          if ( *v45 == -1 )
            v46 = *((char **)v45 + 3);
          else
            v46 = v45 + 1;
          v47 = gameswf::as_value::to_string(
                  (gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 2)),
                  (gameswf::tu_string *)v647);
          if ( *v47 == -1 )
            v48 = *((const char **)v47 + 3);
          else
            v48 = v47 + 1;
          if ( LC_API_STRNCMP_0(v48, "FSCommand:", 0xAu) )
          {
            gameswf::as_environment::load_file(
              a2,
              v48,
              (const gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)));
          }
          else
          {
            v142 = (gameswf *)gameswf::get_fscommand_callback(nullptr);
            if ( v142 )
            {
              v143 = (void (__fastcall *)(int, const char *, char *))gameswf::get_fscommand_callback(v142);
              v144 = gameswf::as_environment::get_target(a2);
              v145 = (*(int (__fastcall **)(int))(*(_DWORD *)v144 + 308))(v144);
              v143(v145, v48 + 10, v46);
            }
          }
          gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 2);
          if ( v624[0] != -1 )
            goto LABEL_31;
          gameswf::free_internal(v625);
          a3 = (const char *)v489;
          break;
        case 0x9B:
          gameswf::tu_string::operator=(v647, &v18[v16]);
          v76 = v647[0];
          if ( v647[0] == -1 )
            v76 = v648;
          v77 = &v18[v76];
          if ( v76 - 1 <= 0 )
            goto LABEL_70;
          v530 = 0;
          v531 = 0;
          if ( gameswf::as_environment::get_member(a2, v647, &v530)
            && (v531 == 5 ? (v78 = v532) : (v78 = 0),
                (v79 = gameswf::cast_to<gameswf::as_s_function>(v78)) != 0
             && *(_DWORD *)(v79 + 60) == *(_DWORD *)a1
             && (v408 = *(_DWORD *)(v79 + 88), v408 == v489)) )
          {
            gameswf::as_value::drop_refs((gameswf::as_value *)&v530);
            v409 = v77 + 2;
            v499 = v12[2];
            v410 = (unsigned __int8)v77[v499] | ((unsigned __int8)v77[v499 + 1] << 8);
            if ( v410 > 0 )
            {
              for ( j = 0; j != v410; ++j )
                v409 += LC_API_STRLEN_0(&v409[v499]) + 1;
            }
            LODWORD(v13) = v499;
            a3 = (const char *)(v408 + ((unsigned __int8)v409[v499] | ((unsigned __int8)v409[v499 + 1] << 8)));
          }
          else
          {
            gameswf::as_value::drop_refs((gameswf::as_value *)&v530);
LABEL_70:
            v80 = gameswf::as_environment::get_player(a2);
            v81 = (gameswf::as_s_function *)operator new(0x7Cu, 0);
            gameswf::as_s_function::as_s_function(v81, v80, a1, v489, &v525);
            v82 = (gameswf::ref_counted *)gameswf::as_environment::get_target(a2);
            gameswf::weak_ptr<gameswf::as_object>::operator=((int)v81 + 116, v82);
            v83 = v12[2];
            v84 = v77 + 2;
            v85 = (unsigned __int8)v77[v83] | ((unsigned __int8)v77[v83 + 1] << 8);
            if ( v85 > 0 )
            {
              v86 = 0;
              while ( 1 )
              {
                gameswf::as_s_function::add_arg(v81, 0, &v84[v83]);
                v87 = *((_DWORD *)v81 + 24) + 24 * (*((_DWORD *)v81 + 25) - 1);
                ++v86;
                v88 = *(char *)(v87 + 4);
                if ( v88 == -1 )
                  v88 = *(_DWORD *)(v87 + 8);
                v84 += v88;
                if ( v86 == v85 )
                  break;
                v83 = v12[2];
              }
              v83 = v12[2];
            }
            v89 = (unsigned __int8)v84[v83];
            v90 = (unsigned __int8)v84[v83 + 1];
            v91 = (gameswf::as_value *)v529;
            v92 = v81;
            v93 = v89 | (v90 << 8);
            *((_DWORD *)v81 + 23) = v93;
            v529[1] = 0;
            v529[0] = 0;
            a3 = (const char *)(v93 + v489);
            gameswf::as_value::set_as_object((gameswf::as_value *)v529, v92);
            v94 = v647[0];
            if ( v647[0] == -1 )
LABEL_102:
              v94 = v648;
LABEL_78:
            if ( v94 - 1 <= 0 )
              gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a2);
            else
              gameswf::as_environment::set_member(a2, v647, v91);
            gameswf::as_value::drop_refs(v91);
          }
          break;
        case 0x9D:
          v72 = *((unsigned __int8 *)v17 + 4);
          v73 = (unsigned __int8)v18[v16];
          v74 = gameswf::as_value::to_bool((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1)));
          gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
          if ( !v74 )
            goto LABEL_31;
          v75 = (const char *)(v489 + (__int16)(v73 | (v72 << 8)));
          if ( (int)v11 < (int)v75 )
          {
            gameswf::log_error("branch to offset %d -- this section only runs to %d\n", v75, v11);
            goto LABEL_20;
          }
          a3 = (const char *)(v489 + (__int16)(v73 | (v72 << 8)));
          break;
        case 0x9E:
          v71 = gameswf::as_environment::get_target(a2);
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v71 + 232))(v71, *(_DWORD *)a2 + 12 * (*((_DWORD *)a2 + 1) - 1));
          a3 += v19 + 3;
          gameswf::array<gameswf::as_value>::resize(a2, *((_DWORD *)a2 + 1) - 1);
          break;
        case 0x9F:
          v501 = (gameswf::as_value *)(unsigned __int8)v18[v16];
          v54 = gameswf::as_environment::get_target(a2);
          v55 = *((_DWORD *)a2 + 1);
          v56 = *(_DWORD *)a2 + 12 * (v55 - 1);
          v57 = v54;
          v58 = *(unsigned __int8 *)(v56 + 1);
          if ( !*(_BYTE *)(v56 + 1) )
            goto LABEL_45;
          if ( (unsigned __int8)(v58 - 3) > 1u )
          {
            if ( v58 != 2 )
              goto LABEL_45;
            v620 = *(double *)(v56 + 4);
            v402 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v56, v401, (const char *)HIDWORD(v401)));
            goto LABEL_453;
          }
          v369 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)a2 + 12 * (v55 - 1)));
          if ( (*(int (__fastcall **)(int, char *))(*(_DWORD *)v57 + 156))(v57, v369) )
            goto LABEL_386;
          v417 = (double *)gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)a2
                                                                            + 12 * (*((_DWORD *)a2 + 1) - 1)));
          if ( gameswf::string_to_number((gameswf *)&v620, v417, v418) )
          {
            v402 = v620;
LABEL_453:
            (*(void (__fastcall **)(int, int))(*(_DWORD *)v57 + 332))(v57, (int)v402);
LABEL_386:
            (*(void (__fastcall **)(int, bool))(*(_DWORD *)v57 + 148))(v57, v501 == nullptr);
          }
          v55 = *((_DWORD *)a2 + 1);
LABEL_45:
          gameswf::array<gameswf::as_value>::resize(a2, v55 - 1);
          a3 = (const char *)v489;
          break;
        default:
          goto LABEL_31;
      }
    }
    while ( (int)v11 > (int)a3 );
  }
LABEL_20:
  gameswf::as_environment::set_target(a2, v510);
  if ( v647[0] == -1 )
LABEL_143:
    gameswf::free_internal(v649);
LABEL_21:
  gameswf::as_value::drop_refs((gameswf::as_value *)&v614);
  gameswf::as_value::drop_refs((gameswf::as_value *)&v617);
  gameswf::array<gameswf::with_stack_entry>::resize(&v525, 0);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)&v525, 0);
  return 16556;
}


// ===== 7c0690 gameswf::action_buffer::execute(gameswf::as_environment *) =====
void __fastcall gameswf::action_buffer::execute(gameswf::action_buffer *this, gameswf::as_environment *a2)
{
  _DWORD v2[3]; // [sp+10h] [bp-14h] BYREF
  char v3; // [sp+1Ch] [bp-8h]

  memset(v2, 0, sizeof(v2));
  v3 = 0;
  gameswf::action_buffer::execute(this, a2, nullptr, **(_DWORD **)this, nullptr, v2, 0);
  gameswf::array<gameswf::with_stack_entry>::resize(v2, 0);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)v2, 0);
}


// ===== 7c06e8 gameswf::cast_to<gameswf::sprite_instance>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::sprite_instance>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 2) )
    return a1;
  else
    return 0;
}


// ===== 7c071c gameswf::sprite_unloadmovie(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_unloadmovie(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r3
  gameswf::as_environment *v3; // r5
  _BYTE v4[4]; // [sp+4h] [bp-10h] BYREF
  int v5; // [sp+8h] [bp-Ch]

  v2 = *((_DWORD *)this + 1);
  v4[0] = 0;
  v4[1] = 5;
  v5 = v2;
  v3 = *((gameswf::as_environment **)this + 3);
  if ( v2 )
    gameswf::ref_counted::add_ref(v2);
  gameswf::as_environment::load_file(v3, "", (const gameswf::as_value *)v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
}


// ===== 7c077c gameswf::sprite_loadmovie(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_loadmovie(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_environment *v3; // r5
  char *v4; // r6
  int v5; // r0
  _BYTE v6[4]; // [sp+4h] [bp-Ch] BYREF
  int v7; // [sp+8h] [bp-8h]

  if ( *((int *)this + 4) > 0 )
  {
    v3 = *((gameswf::as_environment **)this + 3);
    v4 = gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)v3 + 12 * *((_DWORD *)this + 5)));
    v5 = *((_DWORD *)this + 1);
    v6[0] = 0;
    v6[1] = 5;
    v7 = v5;
    if ( v5 )
      gameswf::ref_counted::add_ref(v5);
    gameswf::as_environment::load_file(v3, v4, (const gameswf::as_value *)v6);
    gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  }
}


// ===== 7c07f8 gameswf::sprite_getptr(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_getptr(gameswf *this, const gameswf::fn_call *a2)
{
  int result; // r0
  int target; // r0

  result = gameswf::cast_to<gameswf::sprite_instance>(*((_DWORD *)this + 1));
  if ( !result )
  {
    target = gameswf::as_environment::get_target(*((gameswf::as_environment **)this + 3));
    return gameswf::cast_to<gameswf::sprite_instance>(target);
  }
  return result;
}


// ===== 7c0824 gameswf::sprite_add_script(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_add_script(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r1
  const char *v4; // r2
  gameswf::sprite_instance *v5; // r5
  double v6; // r8
  gameswf::as_function *v7; // r2

  v5 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  if ( *((_DWORD *)this + 4) == 2 )
  {
    v6 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
             v3,
             v4));
    v7 = (gameswf::as_function *)gameswf::as_value::to_function((gameswf::as_value *)(**((_DWORD **)this + 3)
                                                                                    + 12 * (*((_DWORD *)this + 5) - 1)));
    gameswf::sprite_instance::add_script(v5, (gameswf::ref_counted *)(int)v6, v7);
  }
}


// ===== 7c08a0 gameswf::sprite_line_style(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_line_style(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  gameswf::canvas *canvas; // r0
  int v5; // r1
  gameswf::canvas *v6; // r6
  float v7; // r0
  const char *v8; // r2
  int v9; // r1
  unsigned __int16 v10; // r8
  int v11; // r3
  char v12; // r5
  float v13; // r0
  int v14; // r0
  int v15; // r1
  float v17; // r0
  char v18; // [sp+4h] [bp-8h] BYREF
  char v19; // [sp+5h] [bp-7h]
  char v20; // [sp+6h] [bp-6h]
  char v21; // [sp+7h] [bp-5h]

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  canvas = (gameswf::canvas *)gameswf::sprite_instance::get_canvas(v3);
  v5 = *((_DWORD *)this + 4);
  v6 = canvas;
  if ( v5 )
  {
    v7 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
             v5,
             (const char *)*((_DWORD *)this + 5)));
    if ( v7 < 255.0 )
    {
      if ( v7 > 0.0 )
        v10 = (unsigned int)(float)(v7 * 20.0);
      else
        v10 = 0;
    }
    else
    {
      v10 = 5100;
    }
    v11 = *((_DWORD *)this + 4);
    v12 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    if ( v11 > 1 )
    {
      v13 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                v9,
                v8));
      v14 = (int)v13;
      v15 = *((_DWORD *)this + 4);
      v18 = BYTE2(v14);
      v19 = BYTE1(v14);
      v20 = v14;
      v21 = -1;
      if ( v15 > 2 )
      {
        v17 = COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2)),
                  v15,
                  (const char *)(v14 >> 16)));
        if ( v17 < 100.0 )
        {
          if ( v17 > 0.0 )
            v12 = (unsigned int)(float)((float)(v17 / 100.0) * 255.0);
        }
        else
        {
          v12 = -1;
        }
        v21 = v12;
      }
    }
    return gameswf::canvas::set_line_style(v6, v10, (const gameswf::rgba *)&v18);
  }
  else
  {
    *((_DWORD *)canvas + 37) = 0;
    return gameswf::canvas::add_path(canvas, 0);
  }
}


// ===== 7c0a3c gameswf::sprite_curve_to(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_curve_to(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  int result; // r0
  int v5; // r1
  const char *v6; // r2
  gameswf::canvas *v7; // r6
  double v8; // r10
  const char *v9; // r2
  double v10; // r8
  const char *v11; // r2
  const char *v12; // r2
  double v13; // r4
  float v14; // r0
  float v15; // r7
  float v16; // r0
  float v17; // r0
  float v18; // r0
  double v19; // [sp+8h] [bp-Ch]

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  result = gameswf::sprite_instance::get_canvas(v3);
  v7 = (gameswf::canvas *)result;
  if ( *((int *)this + 4) > 3 )
  {
    v8 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
             v5,
             v6));
    v10 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
              SHIDWORD(v8),
              v9));
    v19 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2)),
              SHIDWORD(v10),
              v11));
    v13 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 3)),
              SHIDWORD(v19),
              v12));
    v14 = v8;
    v15 = v14 * 20.0;
    v16 = v10;
    *(float *)&v8 = v16 * 20.0;
    v17 = v19;
    *(float *)&v10 = v17 * 20.0;
    v18 = v13;
    return gameswf::canvas::curve_to(v7, v15, *(float *)&v8, *(float *)&v10, v18 * 20.0);
  }
  return result;
}


// ===== 7c0b64 gameswf::sprite_line_to(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_line_to(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  int result; // r0
  int v5; // r1
  const char *v6; // r2
  gameswf::canvas *v7; // r6
  double v8; // r10
  const char *v9; // r2
  double v10; // r8
  float v11; // r0
  float v12; // r0
  float v13; // r1

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  result = gameswf::sprite_instance::get_canvas(v3);
  v7 = (gameswf::canvas *)result;
  if ( *((int *)this + 4) > 1 )
  {
    v8 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
             v5,
             v6));
    v10 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
              SHIDWORD(v8),
              v9));
    v11 = v8;
    v13 = v11 * 20.0;
    v12 = v10;
    return gameswf::canvas::line_to(v7, v13, v12 * 20.0);
  }
  return result;
}


// ===== 7c0c10 gameswf::sprite_move_to(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_move_to(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  int result; // r0
  int v5; // r1
  const char *v6; // r2
  gameswf::canvas *v7; // r6
  double v8; // r10
  const char *v9; // r2
  double v10; // r8
  float v11; // r0
  float v12; // r0
  float v13; // r1

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  result = gameswf::sprite_instance::get_canvas(v3);
  v7 = (gameswf::canvas *)result;
  if ( *((int *)this + 4) > 1 )
  {
    v8 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
             v5,
             v6));
    v10 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
              SHIDWORD(v8),
              v9));
    v11 = v8;
    v13 = v11 * 20.0;
    v12 = v10;
    return gameswf::canvas::move_to(v7, v13, v12 * 20.0);
  }
  return result;
}


// ===== 7c0cbc gameswf::sprite_end_fill(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_end_fill(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v2; // r0
  gameswf::canvas *canvas; // r0

  v2 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  canvas = (gameswf::canvas *)gameswf::sprite_instance::get_canvas(v2);
  return gameswf::canvas::end_fill(canvas);
}

