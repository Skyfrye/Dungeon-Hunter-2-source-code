// ===== 54ac34 glitch::gui::CGUISkin::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUISkin::serializeAttributes(int a1, int a2)
{
  int i; // r5
  int v5; // r2
  char *v6; // r1
  int v7; // r5
  int v8; // r7
  int j; // r6
  char *v10; // r1
  int v11; // r7
  int k; // r6
  char *v13; // r1
  int m; // r6
  char *v15; // r1
  int result; // r0

  for ( i = 0; i != 21; ++i )
  {
    v5 = *(_DWORD *)(a1 + 4 * i + 4);
    v6 = glitch::gui::GUISkinColorNames[i];
    (*(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 280))(a2, v6, v5, 0);
  }
  v7 = a1;
  v8 = a1;
  for ( j = 0; j != 10; ++j )
  {
    v10 = glitch::gui::GUISkinSizeNames[j];
    (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, v10, *(_DWORD *)(v8 + 88), 0);
    v8 += 4;
  }
  v11 = a1;
  for ( k = 0; k != 8; ++k )
  {
    v13 = glitch::gui::GUISkinTextNames[k];
    (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 148))(a2, v13, *(_DWORD *)(v11 + 312), 0);
    v11 += 72;
  }
  for ( m = 0; m != 23; ++m )
  {
    v15 = glitch::gui::GUISkinIconNames[m];
    result = (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
               a2,
               v15,
               *(_DWORD *)(v7 + 128),
               0);
    v7 += 4;
  }
  return result;
}


// ===== 54ad4c `global constructor keyed to'.._source_glitch_gui_CGUISkin.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUISkin.cpp()
{
  dword_9F6664 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6660 = 1056964608;
}


// ===== 54ad6c glitch::gui::IGUISkin::~IGUISkin() =====
void __fastcall glitch::gui::IGUISkin::~IGUISkin(glitch::gui::IGUISkin *this)
{
  *(_DWORD *)this = off_96FFDC;
  LC_API_FREE_0(this);
}


// ===== 54ada0 `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin(glitch::gui::IGUISkin *this)
{
  glitch::gui::IGUISkin::~IGUISkin((glitch::gui::IGUISkin *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54adb0 `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISkin::~IGUISkin(glitch::gui::IGUISkin *this)
{
  glitch::gui::IGUISkin::~IGUISkin((glitch::gui::IGUISkin *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54adc0 glitch::gui::CGUISkin::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUISkin::deserializeAttributes(int a1, int a2)
{
  int i; // r5
  int v5; // r0
  int v6; // r2
  int v7; // r5
  int v8; // r8
  int j; // r6
  int v10; // r0
  int k; // r6
  _DWORD **v12; // r10
  int m; // r6
  int result; // r0
  _DWORD *v15[17]; // [sp+0h] [bp-4Ch] BYREF
  void *p; // [sp+44h] [bp-8h]

  for ( i = 0; i != 21; ++i )
  {
    v5 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 292))(a2, glitch::gui::GUISkinColorNames[i]);
    v6 = a1 + 4 * i;
    *(_DWORD *)(v6 + 4) = v5;
  }
  v7 = a1;
  v8 = a1;
  for ( j = 0; j != 10; ++j )
  {
    v10 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 88))(a2, glitch::gui::GUISkinSizeNames[j]);
    *(_DWORD *)(v8 + 88) = v10;
    v8 += 4;
  }
  for ( k = 0; k != 8; ++k )
  {
    v12 = (_DWORD **)(a1 + 72 * k + 244);
    (*(void (__fastcall **)(_DWORD **, int, char *))(*(_DWORD *)a2 + 156))(v15, a2, glitch::gui::GUISkinTextNames[k]);
    if ( v12 != v15 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v12,
        (const wchar_t *)p,
        v15[16]);
    if ( p != v15 && p )
      GlitchFree(p);
  }
  for ( m = 0; m != 23; ++m )
  {
    result = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 88))(a2, glitch::gui::GUISkinIconNames[m]);
    *(_DWORD *)(v7 + 128) = result;
    v7 += 4;
  }
  return result;
}


// ===== 54af28 glitch::gui::CGUISkin::~CGUISkin() =====
void __fastcall glitch::gui::CGUISkin::~CGUISkin(glitch::IReferenceCounted **this)
{
  glitch::gui::CGUISkin *v2; // r5
  int v3; // r4
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted **v6; // r4
  glitch::IReferenceCounted **v7; // r0

  v2 = (glitch::gui::CGUISkin *)this;
  v3 = 0;
  *this = (glitch::IReferenceCounted *)off_9700D4;
  *(this + 208) = (glitch::IReferenceCounted *)off_970150;
  do
  {
    v4 = *((glitch::IReferenceCounted **)v2 + 55);
    ++v3;
    v2 = (glitch::gui::CGUISkin *)((char *)v2 + 4);
    if ( v4 )
      glitch::IReferenceCounted::drop(v4);
  }
  while ( v3 != 5 );
  v5 = *(this + 60);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = this + 205;
  do
  {
    v6 -= 18;
    v7 = (glitch::IReferenceCounted **)v6[17];
    if ( v7 != v6 )
    {
      if ( v7 )
        GlitchFree(v7);
    }
  }
  while ( v6 != this + 61 );
}


// ===== 54afc4 glitch::gui::CGUISkin::~CGUISkin() =====
void __fastcall glitch::gui::CGUISkin::~CGUISkin(glitch::IReferenceCounted **this)
{
  glitch::gui::CGUISkin::~CGUISkin(this);
  LC_API_FREE_0(this);
}


// ===== 54afe0 glitch::gui::CGUISkin::~CGUISkin() =====
void __fastcall glitch::gui::CGUISkin::~CGUISkin(glitch::IReferenceCounted **this, glitch::IReferenceCounted **a2)
{
  glitch::IReferenceCounted *v2; // r3
  glitch::gui::CGUISkin *v4; // r5
  int v5; // r4
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r0
  glitch::IReferenceCounted **v8; // r4
  glitch::IReferenceCounted **v9; // r0

  v2 = *a2;
  v4 = (glitch::gui::CGUISkin *)this;
  *this = *a2;
  v5 = 0;
  *(glitch::IReferenceCounted **)((char *)this + *((_DWORD *)v2 - 7)) = a2[4];
  *(glitch::IReferenceCounted **)((char *)this + *((_DWORD *)*this - 3)) = a2[5];
  do
  {
    v6 = *((glitch::IReferenceCounted **)v4 + 55);
    ++v5;
    v4 = (glitch::gui::CGUISkin *)((char *)v4 + 4);
    if ( v6 )
      glitch::IReferenceCounted::drop(v6);
  }
  while ( v5 != 5 );
  v7 = *(this + 60);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v8 = this + 205;
  do
  {
    v8 -= 18;
    v9 = (glitch::IReferenceCounted **)v8[17];
    if ( v9 != v8 )
    {
      if ( v9 )
        GlitchFree(v9);
    }
  }
  while ( v8 != this + 61 );
}


// ===== 54b078 glitch::gui::CGUISkin::draw2DRectangle(glitch::gui::IGUIElement *,glitch::video::SColor const&,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
int __fastcall glitch::gui::CGUISkin::draw2DRectangle(int a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
  return glitch::video::C2DDriver::draw2DRectangle(
           *(_DWORD *)(a1 + 820),
           *a3 | (a3[1] << 8) | (a3[2] << 16) | (a3[3] << 24),
           a4,
           a5,
           a5);
}


// ===== 54b0ac glitch::gui::CGUISkin::draw3DTabButton(glitch::gui::IGUIElement *,bool,glitch::core::rect<int> const&,glitch::core::rect<int> const*,glitch::gui::EGUI_ALIGNMENT) =====
_DWORD *__fastcall glitch::gui::CGUISkin::draw3DTabButton(_DWORD *result, int a2, int a3, int *a4, int a5, int a6)
{
  int v6; // r8
  _DWORD *v7; // r4
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r8
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r5
  int v20; // r2
  int v21; // r3
  int v22; // r5
  int v23; // r3
  _DWORD *v24; // r0
  int v25; // r4
  int v26; // r3
  int v27; // r1
  int v28; // r2
  int v29; // r8
  int v30; // r2
  int v31; // r1
  int v32; // r3
  int v33; // r5
  int v34; // r2
  int v35; // r3
  int v36; // r5
  int v37; // r3
  _DWORD *v38; // r0
  int v39; // [sp+0h] [bp-44h]
  int v40; // [sp+8h] [bp-3Ch] BYREF
  int v41; // [sp+Ch] [bp-38h]
  int v42; // [sp+10h] [bp-34h]
  int v43; // [sp+14h] [bp-30h]
  int v44; // [sp+18h] [bp-2Ch]
  int v45; // [sp+1Ch] [bp-28h]
  int v46; // [sp+20h] [bp-24h]
  int v47; // [sp+24h] [bp-20h]
  int v48; // [sp+28h] [bp-1Ch]
  int v49; // [sp+2Ch] [bp-18h]
  int v50; // [sp+30h] [bp-14h]
  int v51; // [sp+34h] [bp-10h]
  int v52; // [sp+38h] [bp-Ch]
  int v53; // [sp+3Ch] [bp-8h]

  v6 = result[205];
  v7 = result;
  if ( v6 )
  {
    v9 = a4[1];
    v10 = a4[3];
    v41 = v9;
    v43 = v10;
    v11 = *a4;
    v42 = a4[2] - 2;
    if ( a6 )
    {
      v40 = v11 + 1;
      v41 = v10 - 1;
      v48 = (*(int (__fastcall **)(_DWORD *, int))(*result + 16))(result, 3);
      glitch::video::C2DDriver::draw2DRectangle(v6, v48, &v40, a5, v48);
      v12 = *a4;
      v13 = *a4 + 1;
      v14 = a4[3] - 1;
      v41 = a4[1];
      v42 = v13;
      v43 = v14;
      v40 = v12;
      v15 = v7[205];
      v47 = (*(int (__fastcall **)(_DWORD *, int))(*v7 + 16))(v7, 3);
      glitch::video::C2DDriver::draw2DRectangle(v15, v47, &v40, a5, v47);
      v16 = a4[1] - 1;
      v17 = a4[2] - 2;
      v18 = a4[3] - 1;
      v40 = *a4 + 1;
      v41 = v16;
      v42 = v17;
      v43 = v18;
      v19 = v7[205];
      v46 = (*(int (__fastcall **)(_DWORD *, int))(*v7 + 16))(v7, 2);
      glitch::video::C2DDriver::draw2DRectangle(v19, v46, &v40, a5, v46);
      v20 = v42;
      v21 = *v7;
      ++v42;
      v40 = v20;
      v22 = v7[205];
      v45 = (*(int (__fastcall **)(_DWORD *))(v21 + 16))(v7);
      glitch::video::C2DDriver::draw2DRectangle(v22, v45, &v40, a5, v45);
      ++v42;
      ++v40;
      --v43;
      v23 = *v7;
      v24 = v7;
      v25 = v7[205];
      v39 = (*(int (__fastcall **)(_DWORD *, _DWORD))(v23 + 16))(v24, 0);
      v44 = v39;
    }
    else
    {
      v43 = v9 + 1;
      v40 = v11 + 1;
      v53 = (*(int (__fastcall **)(_DWORD *, int))(*result + 16))(result, 3);
      glitch::video::C2DDriver::draw2DRectangle(v6, v53, &v40, a5, v53);
      v26 = *a4;
      v27 = *a4 + 1;
      v28 = a4[1] + 1;
      v43 = a4[3];
      v42 = v27;
      v41 = v28;
      v40 = v26;
      v29 = v7[205];
      v52 = (*(int (__fastcall **)(_DWORD *, int))(*v7 + 16))(v7, 3);
      glitch::video::C2DDriver::draw2DRectangle(v29, v52, &v40, a5, v52);
      v30 = a4[1] + 1;
      v31 = *a4 + 1;
      v32 = a4[2] - 2;
      v43 = a4[3];
      v40 = v31;
      v41 = v30;
      v42 = v32;
      v33 = v7[205];
      v51 = (*(int (__fastcall **)(_DWORD *, int))(*v7 + 16))(v7, 2);
      glitch::video::C2DDriver::draw2DRectangle(v33, v51, &v40, a5, v51);
      v34 = v42;
      v35 = *v7;
      ++v42;
      v40 = v34;
      v36 = v7[205];
      v50 = (*(int (__fastcall **)(_DWORD *, int))(v35 + 16))(v7, 1);
      glitch::video::C2DDriver::draw2DRectangle(v36, v50, &v40, a5, v50);
      ++v42;
      ++v40;
      ++v41;
      v37 = *v7;
      v38 = v7;
      v25 = v7[205];
      v39 = (*(int (__fastcall **)(_DWORD *, _DWORD))(v37 + 16))(v38, 0);
      v49 = v39;
    }
    return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v25, v39, &v40, a5, v39);
  }
  return result;
}


// ===== 54b53c glitch::gui::CGUISkin::draw3DSunkenPane(glitch::gui::IGUIElement *,glitch::video::SColor,bool,bool,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
_DWORD *__fastcall glitch::gui::CGUISkin::draw3DSunkenPane(
        _DWORD *result,
        int a2,
        int a3,
        int a4,
        char a5,
        int *a6,
        int a7)
{
  int v7; // r8
  _DWORD *v8; // r4
  int v9; // r12
  int v10; // lr
  int v11; // r7
  int v12; // r3
  int v13; // r8
  int v14; // r3
  int v15; // r1
  int v16; // r8
  int v17; // r3
  int v18; // r1
  int v19; // r3
  _DWORD *v20; // r0
  int v21; // r4
  int v22; // r5
  int v23; // r5
  int v24; // r0
  int v26; // [sp+10h] [bp-34h] BYREF
  int v27; // [sp+14h] [bp-30h]
  int v28; // [sp+18h] [bp-2Ch]
  int v29; // [sp+1Ch] [bp-28h]
  int v30; // [sp+20h] [bp-24h]
  int v31; // [sp+24h] [bp-20h]
  int v32; // [sp+28h] [bp-1Ch]
  int v33; // [sp+2Ch] [bp-18h]
  int v34; // [sp+30h] [bp-14h]
  int v35; // [sp+34h] [bp-10h]
  int v36; // [sp+38h] [bp-Ch]
  int v37; // [sp+3Ch] [bp-8h]

  v7 = result[205];
  v8 = result;
  if ( v7 )
  {
    v9 = a6[1];
    v10 = a6[2];
    v11 = a6[3];
    v26 = *a6;
    v29 = v11;
    v27 = v9;
    v28 = v10;
    if ( a4 )
    {
      if ( a5 )
      {
        glitch::video::C2DDriver::draw2DRectangle(v7, a3, &v26, a7);
        v9 = v27;
        v7 = v8[205];
      }
      v29 = v9 + 1;
      v37 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 1);
      glitch::video::C2DDriver::draw2DRectangle(v7, v37, &v26, a7);
      v12 = *v8;
      v29 = a6[3];
      v28 = v26 + 1;
      v13 = v8[205];
      v36 = (*(int (__fastcall **)(_DWORD *, int))(v12 + 16))(v8, 1);
      glitch::video::C2DDriver::draw2DRectangle(v13, v36, &v26, a7);
      v14 = a6[2];
      v15 = a6[3];
      v27 = a6[1];
      v29 = v15;
      v26 = v14 - 1;
      v28 = v14;
      v16 = v8[205];
      v35 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 3);
      glitch::video::C2DDriver::draw2DRectangle(v16, v35, &v26, a7);
      v17 = a6[3];
      v18 = a6[2];
      v26 = *a6;
      v28 = v18;
      v27 = v17 - 1;
      v29 = v17;
      v19 = *v8;
      v20 = v8;
      v21 = v8[205];
      v34 = (*(int (__fastcall **)(_DWORD *, int))(v19 + 16))(v20, 3);
      return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v21, v34, &v26, a7);
    }
    else
    {
      if ( a5 )
      {
        v33 = (*(int (__fastcall **)(_DWORD *, int))(*result + 16))(result, 3);
        glitch::video::C2DDriver::draw2DRectangle(v7, v33, &v26, a7);
        v10 = v28;
        v7 = v8[205];
      }
      v28 = v10 - 1;
      --v29;
      v32 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 1);
      glitch::video::C2DDriver::draw2DRectangle(v7, v32, &v26, a7);
      ++v26;
      ++v27;
      v22 = v8[205];
      v31 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 4);
      glitch::video::C2DDriver::draw2DRectangle(v22, v31, &v26, a7);
      --v28;
      --v29;
      v23 = v8[205];
      v30 = (*(int (__fastcall **)(_DWORD *, _DWORD))(*v8 + 16))(v8, 0);
      glitch::video::C2DDriver::draw2DRectangle(v23, v30, &v26, a7);
      v24 = v8[205];
      ++v26;
      ++v27;
      return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v24, a3, &v26, a7);
    }
  }
  return result;
}


// ===== 54b910 glitch::gui::CGUISkin::draw3DTabBody(glitch::gui::IGUIElement *,bool,bool,glitch::core::rect<int> const&,glitch::core::rect<int> const*,int,glitch::gui::EGUI_ALIGNMENT) =====
_DWORD *__fastcall glitch::gui::CGUISkin::draw3DTabBody(
        _DWORD *result,
        int a2,
        int a3,
        int a4,
        int *a5,
        int a6,
        _DWORD *a7,
        int a8)
{
  _DWORD *v8; // r4
  _DWORD *v10; // r6
  int v11; // r12
  int v12; // r1
  int v13; // r3
  int v14; // r3
  int v15; // r9
  int v16; // r2
  int v17; // r3
  int v18; // r9
  int v19; // r3
  int v20; // r1
  int v21; // r9
  int v22; // r6
  int v23; // r3
  int v24; // r2
  int v25; // r3
  int v26; // r0
  int v27; // r3
  int v28; // r1
  int v29; // r2
  int v30; // r3
  _DWORD *v31; // r0
  int v32; // r4
  int v33; // r9
  int v34; // r2
  int v35; // r3
  int v36; // r9
  int v37; // r3
  int v38; // r1
  int v39; // [sp+14h] [bp-48h]
  int v40; // [sp+18h] [bp-44h]
  int v41; // [sp+18h] [bp-44h]
  int v42; // [sp+18h] [bp-44h]
  int v43; // [sp+24h] [bp-38h] BYREF
  int v44; // [sp+28h] [bp-34h]
  int v45; // [sp+2Ch] [bp-30h]
  int v46; // [sp+30h] [bp-2Ch]
  int v47; // [sp+34h] [bp-28h]
  int v48; // [sp+38h] [bp-24h]
  int v49; // [sp+3Ch] [bp-20h]
  int v50; // [sp+40h] [bp-1Ch]
  int v51; // [sp+44h] [bp-18h]
  int v52; // [sp+48h] [bp-14h]
  int v53; // [sp+4Ch] [bp-10h]
  int v54; // [sp+50h] [bp-Ch]
  int v55; // [sp+54h] [bp-8h]

  v8 = result;
  v10 = a7;
  if ( result[205] )
  {
    v11 = a5[1];
    v12 = a5[2];
    v13 = a5[3];
    v43 = *a5;
    v44 = v11;
    v45 = v12;
    v46 = v13;
    if ( a7 == (_DWORD *)-1 )
    {
      v39 = a3;
      result = (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*result + 24))(result, 7);
      a3 = v39;
      v10 = result;
    }
    if ( a3 )
    {
      if ( a8 )
      {
        v46 = v46 - 2 - (_DWORD)v10;
        v45 = v43 + 1;
        v33 = v8[205];
        v52 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 3);
        glitch::video::C2DDriver::draw2DRectangle(v33, v52, &v43, a6);
        v34 = a5[2];
        v35 = *v8;
        v43 = v34 - 1;
        v45 = v34;
        v36 = v8[205];
        v51 = (*(int (__fastcall **)(_DWORD *, int))(v35 + 16))(v8, 1);
        glitch::video::C2DDriver::draw2DRectangle(v36, v51, &v43, a6);
        v37 = a5[1];
        v38 = a5[2];
        v43 = *a5;
        v45 = v38;
        v46 = v37 + 1;
        v44 = v37;
        v21 = v8[205];
        v40 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 3);
        v50 = v40;
      }
      else
      {
        v14 = *v8;
        v44 += (int)v10 + 2;
        v45 = v43 + 1;
        v15 = v8[205];
        v55 = (*(int (__fastcall **)(_DWORD *, int))(v14 + 16))(v8, 3);
        glitch::video::C2DDriver::draw2DRectangle(v15, v55, &v43, a6);
        v16 = a5[2];
        v17 = *v8;
        v43 = v16 - 1;
        v45 = v16;
        v18 = v8[205];
        v54 = (*(int (__fastcall **)(_DWORD *, int))(v17 + 16))(v8, 1);
        glitch::video::C2DDriver::draw2DRectangle(v18, v54, &v43, a6);
        v19 = a5[3];
        v20 = a5[2];
        v43 = *a5;
        v45 = v20;
        v44 = v19 - 1;
        v46 = v19;
        v21 = v8[205];
        v40 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 1);
        v53 = v40;
      }
      result = (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v21, v40, &v43, a6);
    }
    if ( a4 )
    {
      if ( a8 )
      {
        v22 = a5[3] - 2 - (_DWORD)v10;
        v23 = a5[2] - 1;
        v24 = a5[1] - 1;
        v43 = *a5 + 1;
        v44 = v24;
        v45 = v23;
        v46 = v22;
        if ( *((_BYTE *)v8 + 824) )
        {
LABEL_11:
          v41 = (*(int (__fastcall **)(_DWORD *, int))(*v8 + 16))(v8, 2);
          v25 = *v8;
          v48 = v41;
          v42 = (*(int (__fastcall **)(_DWORD *, int))(v25 + 16))(v8, 1);
          v26 = v8[205];
          v47 = v42;
          return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v26, &v43, v48, v48, v42, v42, a6);
        }
      }
      else
      {
        v27 = a5[3] - 1;
        v28 = a5[2] - 1;
        v29 = *a5 + 1;
        v44 = (int)v10 + a5[1] + 2;
        v45 = v28;
        v43 = v29;
        v46 = v27;
        if ( *((_BYTE *)v8 + 824) )
          goto LABEL_11;
      }
      v30 = *v8;
      v31 = v8;
      v32 = v8[205];
      v49 = (*(int (__fastcall **)(_DWORD *, int))(v30 + 16))(v31, 2);
      return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v32, v49, &v43, a6);
    }
  }
  return result;
}


// ===== 54bd84 glitch::gui::CGUISkin::draw3DToolBar(glitch::gui::IGUIElement *,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
_DWORD *__fastcall glitch::gui::CGUISkin::draw3DToolBar(_DWORD *result, int a2, int *a3, int a4)
{
  int v4; // r6
  _DWORD *v5; // r4
  int v8; // r3
  int v9; // r12
  int v10; // r2
  int v11; // r12
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r3
  int v16; // r0
  int v17; // r3
  _DWORD *v18; // r0
  int v19; // r4
  int v20; // r3
  int v21; // r0
  int v22; // [sp+10h] [bp-28h]
  int v23; // [sp+10h] [bp-28h]
  int v24; // [sp+10h] [bp-28h]
  unsigned int v25; // [sp+10h] [bp-28h]
  int v26; // [sp+18h] [bp-20h] BYREF
  int v27; // [sp+1Ch] [bp-1Ch]
  int v28; // [sp+20h] [bp-18h]
  int v29; // [sp+24h] [bp-14h]
  int v30; // [sp+28h] [bp-10h]
  unsigned int v31; // [sp+2Ch] [bp-Ch]
  int v32; // [sp+30h] [bp-8h]
  int v33; // [sp+34h] [bp-4h]

  v4 = result[205];
  v5 = result;
  if ( v4 )
  {
    v8 = a3[3];
    v9 = *a3;
    v10 = a3[2];
    v26 = v9;
    v27 = v8 - 1;
    v28 = v10;
    v29 = v8;
    v33 = (*(int (__fastcall **)(_DWORD *, int))(*result + 16))(result, 1);
    glitch::video::C2DDriver::draw2DRectangle(v4, v33, &v26, a4);
    v11 = *((unsigned __int8 *)v5 + 824);
    v12 = a3[1];
    v13 = a3[2];
    v14 = a3[3] - 1;
    v26 = *a3;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    if ( v11 )
    {
      if ( v5[207] == 2 )
      {
        v24 = (*(int (__fastcall **)(_DWORD *))(*v5 + 16))(v5);
        v20 = *v5;
        v30 = v24;
        v25 = (*(int (__fastcall **)(_DWORD *, int))(v20 + 16))(v5, 1);
        v21 = v5[205];
        v31 = v25;
        HIBYTE(v30) = ~((unsigned int)~(HIBYTE(v30) << 28) >> 28);
        HIBYTE(v31) = ~((unsigned int)~(HIBYTE(v25) << 28) >> 28);
        ++v29;
        return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v21, &v26, v30, v31, v30, v31, a4);
      }
      else
      {
        v22 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 2);
        v15 = *v5;
        v31 = v22;
        v23 = (*(int (__fastcall **)(_DWORD *, int))(v15 + 16))(v5, 1);
        v16 = v5[205];
        v30 = v23;
        return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v16, &v26, v31, v31, v23, v23, a4);
      }
    }
    else
    {
      v17 = *v5;
      v18 = v5;
      v19 = v5[205];
      v32 = (*(int (__fastcall **)(_DWORD *, int))(v17 + 16))(v18, 2);
      return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v19, v32, &v26, a4);
    }
  }
  return result;
}


// ===== 54bff4 glitch::gui::CGUISkin::draw3DMenuPane(glitch::gui::IGUIElement *,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
_DWORD *__fastcall glitch::gui::CGUISkin::draw3DMenuPane(_DWORD *result, int a2, int *a3, int a4)
{
  int v4; // r8
  _DWORD *v5; // r4
  int v8; // r7
  int v9; // r10
  int v10; // lr
  int v11; // r2
  int v12; // r12
  int v13; // r8
  int v14; // r1
  int v15; // r3
  int v16; // r2
  int v17; // r8
  int v18; // r8
  int v19; // r3
  int v20; // r2
  int v21; // r8
  int v22; // r8
  int v23; // r12
  int v24; // r1
  int v25; // r2
  int v26; // r3
  int v27; // r3
  int v28; // r0
  int v29; // r3
  _DWORD *v30; // r0
  int v31; // r4
  int v32; // [sp+10h] [bp-44h]
  int v33; // [sp+10h] [bp-44h]
  int v34; // [sp+1Ch] [bp-38h] BYREF
  int v35; // [sp+20h] [bp-34h]
  int v36; // [sp+24h] [bp-30h]
  int v37; // [sp+28h] [bp-2Ch]
  int v38; // [sp+2Ch] [bp-28h]
  int v39; // [sp+30h] [bp-24h]
  int v40; // [sp+34h] [bp-20h]
  int v41; // [sp+38h] [bp-1Ch]
  int v42; // [sp+3Ch] [bp-18h]
  int v43; // [sp+40h] [bp-14h]
  int v44; // [sp+44h] [bp-10h]
  int v45; // [sp+48h] [bp-Ch]
  int v46; // [sp+4Ch] [bp-8h]

  v4 = result[205];
  v5 = result;
  if ( v4 )
  {
    v8 = result[207];
    v9 = *a3;
    v10 = a3[2];
    v11 = a3[1];
    v12 = a3[3];
    v34 = v9;
    v36 = v10;
    v37 = v12;
    v35 = v11;
    if ( v8 == 2 )
    {
      v35 = v11 - 3;
      return (_DWORD *)(*(int (__fastcall **)(_DWORD *, int, int *))(*result + 64))(result, a2, &v34);
    }
    else
    {
      v37 = v11 + 1;
      v46 = (*(int (__fastcall **)(_DWORD *, int))(*result + 16))(result, 3);
      glitch::video::C2DDriver::draw2DRectangle(v4, v46, &v34, a4);
      v37 = a3[3];
      v36 = v34 + 1;
      v13 = v5[205];
      v45 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 3);
      glitch::video::C2DDriver::draw2DRectangle(v13, v45, &v34, a4);
      v14 = a3[1];
      v15 = a3[2];
      v16 = a3[3];
      v34 = v15 - 1;
      v35 = v14;
      v37 = v16;
      v36 = v15;
      v17 = v5[205];
      v44 = (*(int (__fastcall **)(_DWORD *, _DWORD))(*v5 + 16))(v5, 0);
      glitch::video::C2DDriver::draw2DRectangle(v17, v44, &v34, a4);
      --v34;
      --v36;
      ++v35;
      --v37;
      v18 = v5[205];
      v43 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 1);
      glitch::video::C2DDriver::draw2DRectangle(v18, v43, &v34, a4);
      v19 = a3[3];
      v20 = a3[2];
      v34 = *a3;
      v35 = v19 - 1;
      v36 = v20;
      v37 = v19;
      v21 = v5[205];
      v42 = (*(int (__fastcall **)(_DWORD *, _DWORD))(*v5 + 16))(v5, 0);
      glitch::video::C2DDriver::draw2DRectangle(v21, v42, &v34, a4);
      ++v34;
      --v36;
      --v35;
      --v37;
      v22 = v5[205];
      v41 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 1);
      glitch::video::C2DDriver::draw2DRectangle(v22, v41, &v34, a4);
      v23 = *((unsigned __int8 *)v5 + 824);
      v24 = a3[1] + 1;
      v25 = a3[2] - 2;
      v26 = a3[3] - 2;
      v34 = *a3 + 1;
      v35 = v24;
      v36 = v25;
      v37 = v26;
      if ( v23 )
      {
        v32 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 2);
        v27 = *v5;
        v39 = v32;
        v33 = (*(int (__fastcall **)(_DWORD *, int))(v27 + 16))(v5, 1);
        v28 = v5[205];
        v38 = v33;
        return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v28, &v34, v39, v39, v33, v33, a4);
      }
      else
      {
        v29 = *v5;
        v30 = v5;
        v31 = v5[205];
        v40 = (*(int (__fastcall **)(_DWORD *, int))(v29 + 16))(v30, 2);
        return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v31, v40, &v34, a4);
      }
    }
  }
  return result;
}


// ===== 54c40c glitch::gui::CGUISkin::draw3DWindowBackground(glitch::gui::IGUIElement *,bool,glitch::video::SColor,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
int *__fastcall glitch::gui::CGUISkin::draw3DWindowBackground(
        int *a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        int *a6,
        int a7)
{
  int v7; // r10
  int *v11; // r5
  int v12; // r6
  int v13; // r3
  int v14; // r1
  int v15; // r10
  int v16; // r1
  int v17; // r3
  int v18; // r2
  int v19; // r10
  int v20; // r10
  int v21; // r3
  int v22; // r2
  int v23; // r10
  int v24; // r10
  int v25; // r12
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r3
  int v30; // r0
  int v31; // r3
  int v32; // r1
  int v33; // r2
  int v34; // r5
  float v35; // r2
  int v36; // r0
  int v37; // r1
  int v38; // r2
  int v39; // r3
  int v41; // r10
  int v42; // r3
  int v43; // r0
  int v44; // r0
  int v45; // [sp+10h] [bp-58h]
  int v46; // [sp+10h] [bp-58h]
  int v47; // [sp+10h] [bp-58h]
  int Interpolated; // [sp+10h] [bp-58h]
  int v49; // [sp+10h] [bp-58h]
  int v50; // [sp+10h] [bp-58h]
  int v51; // [sp+1Ch] [bp-4Ch] BYREF
  int v52; // [sp+20h] [bp-48h]
  int v53; // [sp+24h] [bp-44h]
  int v54; // [sp+28h] [bp-40h]
  unsigned __int8 v55[4]; // [sp+2Ch] [bp-3Ch] BYREF
  int v56; // [sp+30h] [bp-38h]
  unsigned __int8 v57[4]; // [sp+34h] [bp-34h] BYREF
  int v58; // [sp+38h] [bp-30h]
  unsigned __int8 v59[4]; // [sp+3Ch] [bp-2Ch] BYREF
  int v60; // [sp+40h] [bp-28h] BYREF
  unsigned __int8 v61[4]; // [sp+44h] [bp-24h] BYREF
  int v62; // [sp+48h] [bp-20h] BYREF
  int v63; // [sp+4Ch] [bp-1Ch]
  int v64; // [sp+50h] [bp-18h]
  int v65; // [sp+54h] [bp-14h]
  int v66; // [sp+58h] [bp-10h]
  int v67; // [sp+5Ch] [bp-Ch]
  int v68; // [sp+60h] [bp-8h]
  int v69; // [sp+64h] [bp-4h]

  v7 = a2[205];
  v11 = a6;
  v12 = a7;
  if ( v7 )
  {
    v13 = a6[1];
    v14 = a6[2];
    v51 = *a6;
    v53 = v14;
    v54 = v13 + 1;
    v52 = v13;
    v69 = (*(int (__fastcall **)(int *, int))(*a2 + 16))(a2, 3);
    glitch::video::C2DDriver::draw2DRectangle(v7, v69, &v51, v12);
    v54 = v11[3];
    v53 = v51 + 1;
    v15 = a2[205];
    v68 = (*(int (__fastcall **)(int *, int))(*a2 + 16))(a2, 3);
    glitch::video::C2DDriver::draw2DRectangle(v15, v68, &v51, v12);
    v16 = v11[1];
    v17 = v11[2];
    v18 = v11[3];
    v51 = v17 - 1;
    v52 = v16;
    v54 = v18;
    v53 = v17;
    v19 = a2[205];
    v67 = (*(int (__fastcall **)(int *, _DWORD))(*a2 + 16))(a2, 0);
    glitch::video::C2DDriver::draw2DRectangle(v19, v67, &v51, v12);
    --v51;
    --v53;
    ++v52;
    --v54;
    v20 = a2[205];
    v66 = (*(int (__fastcall **)(int *, int))(*a2 + 16))(a2, 1);
    glitch::video::C2DDriver::draw2DRectangle(v20, v66, &v51, v12);
    v21 = v11[3];
    v22 = v11[2];
    v51 = *v11;
    v52 = v21 - 1;
    v53 = v22;
    v54 = v21;
    v23 = a2[205];
    v65 = (*(int (__fastcall **)(int *, _DWORD))(*a2 + 16))(a2, 0);
    glitch::video::C2DDriver::draw2DRectangle(v23, v65, &v51, v12);
    ++v51;
    --v53;
    --v52;
    --v54;
    v24 = a2[205];
    v64 = (*(int (__fastcall **)(int *, int))(*a2 + 16))(a2, 1);
    glitch::video::C2DDriver::draw2DRectangle(v24, v64, &v51, v12);
    v25 = *((unsigned __int8 *)a2 + 824);
    v26 = v11[1] + 1;
    v27 = v11[2] - 2;
    v28 = v11[3] - 2;
    v51 = *v11 + 1;
    v52 = v26;
    v53 = v27;
    v54 = v28;
    if ( v25 )
    {
      if ( a2[207] == 2 )
      {
        v62 = (*(int (__fastcall **)(int *, int))(*a2 + 16))(a2, 17);
        v61[0] = -1;
        v61[1] = -1;
        v61[2] = -1;
        v61[3] = -1;
        Interpolated = glitch::video::SColor::getInterpolated((unsigned __int8 *)&v62, v61, 0.9);
        v42 = *a2;
        v56 = Interpolated;
        v60 = (*(int (__fastcall **)(int *, int))(v42 + 16))(a2, 17);
        v59[3] = -1;
        v59[0] = -1;
        v59[1] = -1;
        v59[2] = -1;
        v49 = glitch::video::SColor::getInterpolated((unsigned __int8 *)&v60, v59, 0.8);
        v43 = a2[205];
        v58 = v49;
        glitch::video::C2DDriver::draw2DRectangle(v43, &v51, v56, v56, v49, v49, v12);
      }
      else
      {
        v45 = (*(int (__fastcall **)(int *, int))(*a2 + 16))(a2, 1);
        v29 = *a2;
        v58 = v45;
        v46 = (*(int (__fastcall **)(int *, int))(v29 + 16))(a2, 2);
        v30 = a2[205];
        v56 = v46;
        glitch::video::C2DDriver::draw2DRectangle(v30, &v51, v46, v46, v46, v58, v12);
      }
    }
    else
    {
      v41 = a2[205];
      v63 = (*(int (__fastcall **)(int *, int))(*a2 + 16))(a2, 2);
      glitch::video::C2DDriver::draw2DRectangle(v41, v63, &v51, v12);
    }
    v31 = v11[2];
    v32 = v11[3];
    v33 = *v11 + 2;
    v34 = v11[1] + 2;
    v54 = v32;
    v52 = v34;
    v51 = v33;
    v53 = v31 - 2;
    v54 = v34 + 2 + (*(int (__fastcall **)(int *, int))(*a2 + 24))(a2, 2);
    if ( a4 )
    {
      LOWORD(v35) = -13107;
      if ( a2[207] == 2 )
      {
        HIWORD(v35) = 16204;
        v57[3] = -1;
        v57[0] = -1;
        v57[1] = -1;
        v57[2] = -1;
        v50 = glitch::video::SColor::getInterpolated((unsigned __int8 *)&a5, v57, v35);
        v44 = a2[205];
        v56 = v50;
        glitch::video::C2DDriver::draw2DRectangle(v44, &v51, a5, a5, v50, v50, v12);
      }
      else
      {
        HIWORD(v35) = 15948;
        v55[2] = 0;
        v55[3] = -1;
        v55[0] = 0;
        v55[1] = 0;
        v47 = glitch::video::SColor::getInterpolated((unsigned __int8 *)&a5, v55, v35);
        v36 = a2[205];
        v56 = v47;
        glitch::video::C2DDriver::draw2DRectangle(v36, &v51, a5, v47, a5, v47, v12);
      }
    }
    v37 = v52;
    v38 = v53;
    v39 = v54;
    *a1 = v51;
    a1[1] = v37;
    a1[2] = v38;
    a1[3] = v39;
  }
  else
  {
    *a1 = *a6;
    a1[1] = v11[1];
    a1[2] = v11[2];
    a1[3] = v11[3];
  }
  return a1;
}


// ===== 54caa8 glitch::gui::CGUISkin::draw3DButtonPanePressed(glitch::gui::IGUIElement *,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
_DWORD *__fastcall glitch::gui::CGUISkin::draw3DButtonPanePressed(_DWORD *result, int a2, int *a3, int a4)
{
  int v4; // r7
  _DWORD *v5; // r4
  int v7; // r3
  int v8; // r12
  int v9; // r1
  int v10; // r2
  int v11; // r7
  int v12; // r7
  int v13; // r1
  int v14; // r3
  int v15; // r0
  int v16; // r3
  _DWORD *v17; // r0
  int v18; // r4
  int v19; // [sp+10h] [bp-3Ch]
  int Interpolated; // [sp+10h] [bp-3Ch]
  int v21; // [sp+1Ch] [bp-30h] BYREF
  int v22; // [sp+20h] [bp-2Ch]
  int v23; // [sp+24h] [bp-28h]
  int v24; // [sp+28h] [bp-24h]
  _DWORD v25[2]; // [sp+2Ch] [bp-20h] BYREF
  int v26; // [sp+34h] [bp-18h] BYREF
  int v27; // [sp+38h] [bp-14h]
  int v28; // [sp+3Ch] [bp-10h]
  int v29; // [sp+40h] [bp-Ch]
  int v30; // [sp+44h] [bp-8h]

  v4 = result[205];
  v5 = result;
  if ( v4 )
  {
    v7 = a3[3];
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v7;
    v30 = (*(int (__fastcall **)(_DWORD *, int))(*result + 16))(result, 3);
    glitch::video::C2DDriver::draw2DRectangle(v4, v30, &v21, a4);
    --v23;
    --v24;
    v11 = v5[205];
    v29 = (*(int (__fastcall **)(_DWORD *, _DWORD))(*v5 + 16))(v5, 0);
    glitch::video::C2DDriver::draw2DRectangle(v11, v29, &v21, a4);
    ++v21;
    ++v22;
    v12 = v5[205];
    v28 = (*(int (__fastcall **)(_DWORD *))(*v5 + 16))(v5);
    glitch::video::C2DDriver::draw2DRectangle(v12, v28, &v21, a4);
    v13 = *((unsigned __int8 *)v5 + 824);
    ++v21;
    ++v22;
    if ( v13 )
    {
      v19 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 2);
      v14 = *v5;
      v26 = v19;
      v25[0] = (*(int (__fastcall **)(_DWORD *, _DWORD))(v14 + 16))(v5, 0);
      Interpolated = glitch::video::SColor::getInterpolated((unsigned __int8 *)&v26, (unsigned __int8 *)v25, 0.4);
      v15 = v5[205];
      v25[1] = Interpolated;
      return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v15, &v21, v26, v26, Interpolated, Interpolated, a4);
    }
    else
    {
      v16 = *v5;
      v17 = v5;
      v18 = v5[205];
      v27 = (*(int (__fastcall **)(_DWORD *, int))(v16 + 16))(v17, 2);
      return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v18, v27, &v21, a4);
    }
  }
  return result;
}


// ===== 54cd44 glitch::gui::CGUISkin::draw3DButtonPaneStandard(glitch::gui::IGUIElement *,glitch::core::rect<int> const&,glitch::core::rect<int> const*) =====
_DWORD *__fastcall glitch::gui::CGUISkin::draw3DButtonPaneStandard(_DWORD *result, int a2, int *a3, int a4)
{
  int v4; // r7
  _DWORD *v5; // r4
  int v8; // r3
  int v9; // r1
  int v10; // lr
  int v11; // r12
  int v12; // r2
  int v13; // r7
  int v14; // r7
  int v15; // r1
  int v16; // r3
  int v17; // r0
  int v18; // r3
  _DWORD *v19; // r0
  int v20; // r4
  int v21; // r3
  int (__fastcall *v22)(_DWORD *, int); // r7
  int v23; // [sp+10h] [bp-44h]
  int Interpolated; // [sp+10h] [bp-44h]
  int v25; // [sp+10h] [bp-44h]
  int v26; // [sp+18h] [bp-3Ch] BYREF
  int v27; // [sp+1Ch] [bp-38h]
  int v28; // [sp+20h] [bp-34h]
  int v29; // [sp+24h] [bp-30h]
  _DWORD v30[2]; // [sp+28h] [bp-2Ch] BYREF
  int v31; // [sp+30h] [bp-24h] BYREF
  int v32; // [sp+34h] [bp-20h]
  int v33; // [sp+38h] [bp-1Ch]
  int v34; // [sp+3Ch] [bp-18h]
  int v35; // [sp+40h] [bp-14h]
  unsigned __int8 v36[4]; // [sp+48h] [bp-Ch] BYREF
  int v37; // [sp+4Ch] [bp-8h] BYREF

  v4 = result[205];
  v5 = result;
  if ( v4 )
  {
    v8 = result[207];
    v9 = a3[3];
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = v9;
    if ( v8 == 2 )
    {
      v21 = *result;
      v26 = v10 - 1;
      v27 = v11 - 1;
      v28 = v12 + 1;
      v29 = v9 + 1;
      v22 = *(int (__fastcall **)(_DWORD *, int))(v21 + 72);
      v25 = (*(int (__fastcall **)(_DWORD *, int))(v21 + 16))(result, 17);
      v36[3] = -1;
      v36[0] = -1;
      v36[1] = -1;
      v36[2] = -1;
      v37 = v25;
      glitch::video::SColor::getInterpolated((unsigned __int8 *)&v37, v36, 0.9);
      return (_DWORD *)v22(v5, a2);
    }
    else
    {
      v35 = (*(int (__fastcall **)(_DWORD *, _DWORD))(*result + 16))(result, 0);
      glitch::video::C2DDriver::draw2DRectangle(v4, v35, &v26, a4);
      --v28;
      --v29;
      v13 = v5[205];
      v34 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 3);
      glitch::video::C2DDriver::draw2DRectangle(v13, v34, &v26, a4);
      ++v26;
      ++v27;
      v14 = v5[205];
      v33 = (*(int (__fastcall **)(_DWORD *))(*v5 + 16))(v5);
      glitch::video::C2DDriver::draw2DRectangle(v14, v33, &v26, a4);
      v15 = *((unsigned __int8 *)v5 + 824);
      --v28;
      --v29;
      if ( v15 )
      {
        v23 = (*(int (__fastcall **)(_DWORD *, int))(*v5 + 16))(v5, 2);
        v16 = *v5;
        v31 = v23;
        v30[0] = (*(int (__fastcall **)(_DWORD *, _DWORD))(v16 + 16))(v5, 0);
        Interpolated = glitch::video::SColor::getInterpolated((unsigned __int8 *)&v31, (unsigned __int8 *)v30, 0.4);
        v17 = v5[205];
        v30[1] = Interpolated;
        return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v17, &v26, v31, v31, Interpolated, Interpolated, a4);
      }
      else
      {
        v18 = *v5;
        v19 = v5;
        v20 = v5[205];
        v32 = (*(int (__fastcall **)(_DWORD *, int))(v18 + 16))(v19, 2);
        return (_DWORD *)glitch::video::C2DDriver::draw2DRectangle(v20, v32, &v26, a4);
      }
    }
  }
  return result;
}


// ===== 54d0bc glitch::gui::CGUISkin::setDefaultText(glitch::gui::EGUI_DEFAULT_TEXT,wchar_t const*) =====
int __fastcall glitch::gui::CGUISkin::setDefaultText(int result, unsigned int a2, wchar_t *s)
{
  int v4; // r5
  wchar_t *v6; // r3

  v4 = result;
  if ( a2 <= 7 )
  {
    v6 = &s[wcslen(s)];
    return std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             v4 + 72 * a2 + 244,
             s,
             v6);
  }
  return result;
}


// ===== 54d100 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 54d104 glitch::gui::CGUISkin::CGUISkin(glitch::gui::EGUI_SKIN_TYPE,glitch::video::IVideoDriver *) =====
int __fastcall glitch::gui::CGUISkin::CGUISkin(int a1, unsigned int a2, int a3)
{
  int v4; // r7
  int v7; // r10
  size_t v8; // r0
  size_t v9; // r0
  size_t v10; // r0
  size_t v11; // r0
  size_t v12; // r0
  size_t v13; // r0
  size_t v14; // r0
  size_t v15; // r0
  int v16; // r1

  *(_DWORD *)(a1 + 832) = off_95B720;
  *(_DWORD *)a1 = off_970234;
  *(_DWORD *)(a1 + 836) = 1;
  *(int *)((char *)&elf_hash_bucket[153] + a1) = (int)off_970254;
  *(_DWORD *)a1 = off_97019C;
  *(int *)((char *)&dword_0 + a1) = (int)off_97019C;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_970218;
  v4 = 0;
  *(_DWORD *)a1 = off_9700D4;
  *(_DWORD *)(a1 + 832) = off_970150;
  *(_DWORD *)(a1 + 240) = 0;
  v7 = a1 + 244;
  do
  {
    *(_DWORD *)(v7 + 64) = v7;
    *(_DWORD *)(v7 + 68) = v7;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
    v4 += 72;
    **(_DWORD **)(v7 + 64) = 0;
    v7 += 72;
  }
  while ( v4 != 576 );
  *(_DWORD *)(a1 + 820) = a3;
  *(_DWORD *)(a1 + 828) = a2;
  if ( a2 <= 1 )
  {
    *(_BYTE *)(a1 + 4) = 50;
    *(_BYTE *)(a1 + 26) = 115;
    *(_BYTE *)(a1 + 6) = 50;
    *(_BYTE *)(a1 + 5) = 50;
    *(_BYTE *)(a1 + 24) = 16;
    *(_BYTE *)(a1 + 32) = 100;
    *(_BYTE *)(a1 + 7) = 101;
    *(_BYTE *)(a1 + 11) = 101;
    *(_BYTE *)(a1 + 10) = -126;
    *(_BYTE *)(a1 + 9) = -126;
    *(_BYTE *)(a1 + 8) = -126;
    *(_BYTE *)(a1 + 15) = 101;
    *(_BYTE *)(a1 + 14) = -46;
    *(_BYTE *)(a1 + 13) = -46;
    *(_BYTE *)(a1 + 12) = -46;
    *(_BYTE *)(a1 + 19) = 101;
    *(_BYTE *)(a1 + 23) = 101;
    *(_BYTE *)(a1 + 22) = -46;
    *(_BYTE *)(a1 + 21) = -46;
    *(_BYTE *)(a1 + 20) = -46;
    *(_BYTE *)(a1 + 27) = 101;
    *(_BYTE *)(a1 + 25) = 14;
    *(_BYTE *)(a1 + 35) = 101;
    *(_BYTE *)(a1 + 34) = 100;
    *(_BYTE *)(a1 + 33) = 100;
    *(_BYTE *)(a1 + 18) = -1;
    *(_BYTE *)(a1 + 17) = -1;
    *(_BYTE *)(a1 + 16) = -1;
    *(_BYTE *)(a1 + 31) = -56;
    *(_BYTE *)(a1 + 30) = -1;
    *(_BYTE *)(a1 + 29) = -1;
    *(_BYTE *)(a1 + 28) = -1;
    *(_BYTE *)(a1 + 39) = -16;
    *(_BYTE *)(a1 + 38) = 10;
    *(_BYTE *)(a1 + 40) = -126;
    *(_BYTE *)(a1 + 42) = -126;
    *(_BYTE *)(a1 + 41) = -126;
    *(_BYTE *)(a1 + 46) = 107;
    *(_BYTE *)(a1 + 56) = -46;
    *(_BYTE *)(a1 + 47) = 101;
    *(_BYTE *)(a1 + 45) = 36;
    *(_BYTE *)(a1 + 55) = 101;
    *(_BYTE *)(a1 + 59) = 101;
    *(_BYTE *)(a1 + 58) = -46;
    *(_BYTE *)(a1 + 57) = -46;
    *(_BYTE *)(a1 + 71) = 101;
    *(_BYTE *)(a1 + 51) = -16;
    *(_BYTE *)(a1 + 52) = -91;
    *(_BYTE *)(a1 + 66) = -31;
    *(_BYTE *)(a1 + 37) = 10;
    *(_BYTE *)(a1 + 36) = 10;
    *(_BYTE *)(a1 + 43) = -16;
    *(_BYTE *)(a1 + 44) = 8;
    *(_BYTE *)(a1 + 50) = -1;
    *(_BYTE *)(a1 + 49) = -1;
    *(_BYTE *)(a1 + 48) = -1;
    *(_BYTE *)(a1 + 54) = -91;
    *(_BYTE *)(a1 + 53) = -91;
    *(_BYTE *)(a1 + 63) = -56;
    *(_BYTE *)(a1 + 62) = 0;
    *(_BYTE *)(a1 + 61) = 0;
    *(_BYTE *)(a1 + 60) = 0;
    *(_BYTE *)(a1 + 67) = -56;
    *(_BYTE *)(a1 + 65) = -1;
    *(_BYTE *)(a1 + 64) = -1;
    *(_BYTE *)(a1 + 70) = -26;
    *(_BYTE *)(a1 + 69) = -26;
    *(_BYTE *)(a1 + 68) = -26;
    *(_BYTE *)(a1 + 75) = 101;
    *(_DWORD *)(a1 + 88) = 14;
    *(_DWORD *)(a1 + 96) = 15;
    *(_DWORD *)(a1 + 100) = 18;
    *(_DWORD *)(a1 + 104) = 500;
    *(_DWORD *)(a1 + 108) = 200;
    *(_BYTE *)(a1 + 85) = 36;
    *(_DWORD *)(a1 + 112) = 80;
    *(_BYTE *)(a1 + 76) = 10;
    *(_BYTE *)(a1 + 80) = -1;
    *(_BYTE *)(a1 + 87) = -56;
    *(_BYTE *)(a1 + 86) = 107;
    *(_BYTE *)(a1 + 84) = 8;
    *(_DWORD *)(a1 + 116) = 30;
    *(_DWORD *)(a1 + 120) = 2;
    *(_DWORD *)(a1 + 124) = 0;
    *(_BYTE *)(a1 + 74) = -1;
    *(_BYTE *)(a1 + 73) = -1;
    *(_BYTE *)(a1 + 72) = -1;
    *(_BYTE *)(a1 + 79) = -56;
    *(_BYTE *)(a1 + 78) = 10;
    *(_BYTE *)(a1 + 77) = 10;
    *(_BYTE *)(a1 + 83) = -56;
    *(_BYTE *)(a1 + 82) = -1;
    *(_BYTE *)(a1 + 81) = -1;
    *(_DWORD *)(a1 + 92) = 30;
  }
  else
  {
    *(_BYTE *)(a1 + 6) = -126;
    *(_BYTE *)(a1 + 5) = 121;
    *(_BYTE *)(a1 + 4) = 118;
    *(_BYTE *)(a1 + 10) = -15;
    *(_BYTE *)(a1 + 9) = -24;
    *(_BYTE *)(a1 + 8) = -28;
    *(_BYTE *)(a1 + 18) = -36;
    *(_BYTE *)(a1 + 17) = -52;
    *(_BYTE *)(a1 + 16) = -57;
    *(_BYTE *)(a1 + 22) = 58;
    *(_BYTE *)(a1 + 21) = 49;
    *(_BYTE *)(a1 + 20) = 46;
    *(_BYTE *)(a1 + 27) = 0x80;
    *(_BYTE *)(a1 + 14) = -39;
    *(_BYTE *)(a1 + 12) = -53;
    *(_BYTE *)(a1 + 24) = 64;
    *(_BYTE *)(a1 + 11) = 80;
    *(_BYTE *)(a1 + 19) = 64;
    *(_BYTE *)(a1 + 26) = 64;
    *(_BYTE *)(a1 + 25) = 64;
    *(_BYTE *)(a1 + 13) = -46;
    *(_BYTE *)(a1 + 23) = 0x80;
    *(_BYTE *)(a1 + 32) = 100;
    *(_BYTE *)(a1 + 7) = 96;
    *(_BYTE *)(a1 + 15) = -64;
    *(_BYTE *)(a1 + 31) = -16;
    *(_BYTE *)(a1 + 30) = -48;
    *(_BYTE *)(a1 + 29) = -48;
    *(_BYTE *)(a1 + 28) = -48;
    *(_BYTE *)(a1 + 35) = -64;
    *(_BYTE *)(a1 + 34) = 100;
    *(_BYTE *)(a1 + 33) = 100;
    *(_BYTE *)(a1 + 39) = -48;
    *(_BYTE *)(a1 + 38) = 22;
    *(_BYTE *)(a1 + 43) = 60;
    *(_BYTE *)(a1 + 47) = 108;
    *(_BYTE *)(a1 + 62) = 51;
    *(_BYTE *)(a1 + 61) = 32;
    *(_BYTE *)(a1 + 65) = -46;
    *(_BYTE *)(a1 + 58) = -46;
    *(_BYTE *)(a1 + 57) = -46;
    *(_BYTE *)(a1 + 56) = -46;
    *(_BYTE *)(a1 + 52) = -91;
    *(_BYTE *)(a1 + 66) = -39;
    *(_BYTE *)(a1 + 50) = -32;
    *(_BYTE *)(a1 + 49) = -32;
    *(_BYTE *)(a1 + 48) = -32;
    *(_BYTE *)(a1 + 54) = -91;
    *(_BYTE *)(a1 + 53) = -91;
    *(_BYTE *)(a1 + 70) = -32;
    *(_BYTE *)(a1 + 69) = -32;
    *(_BYTE *)(a1 + 40) = 20;
    *(_BYTE *)(a1 + 67) = -64;
    *(_BYTE *)(a1 + 64) = -53;
    *(_BYTE *)(a1 + 37) = 22;
    *(_BYTE *)(a1 + 36) = 22;
    *(_BYTE *)(a1 + 42) = 20;
    *(_BYTE *)(a1 + 41) = 20;
    *(_BYTE *)(a1 + 46) = 96;
    *(_BYTE *)(a1 + 45) = 96;
    *(_BYTE *)(a1 + 44) = 96;
    *(_BYTE *)(a1 + 51) = -48;
    *(_BYTE *)(a1 + 55) = -16;
    *(_BYTE *)(a1 + 59) = -16;
    *(_BYTE *)(a1 + 63) = -16;
    *(_BYTE *)(a1 + 60) = 15;
    *(_BYTE *)(a1 + 71) = -16;
    *(_BYTE *)(a1 + 68) = -32;
    *(_DWORD *)(a1 + 88) = 14;
    *(_DWORD *)(a1 + 92) = 48;
    *(_DWORD *)(a1 + 100) = 18;
    *(_DWORD *)(a1 + 104) = 500;
    *(_DWORD *)(a1 + 108) = 200;
    *(_DWORD *)(a1 + 116) = 30;
    *(_DWORD *)(a1 + 120) = 3;
    *(_BYTE *)(a1 + 72) = -16;
    *(_BYTE *)(a1 + 80) = 22;
    *(_BYTE *)(a1 + 87) = -48;
    *(_BYTE *)(a1 + 84) = 96;
    *(_DWORD *)(a1 + 96) = 15;
    *(_DWORD *)(a1 + 112) = 80;
    *(_DWORD *)(a1 + 124) = 2;
    *(_BYTE *)(a1 + 75) = -16;
    *(_BYTE *)(a1 + 74) = -16;
    *(_BYTE *)(a1 + 73) = -16;
    *(_BYTE *)(a1 + 79) = -48;
    *(_BYTE *)(a1 + 78) = 22;
    *(_BYTE *)(a1 + 77) = 22;
    *(_BYTE *)(a1 + 76) = 22;
    *(_BYTE *)(a1 + 83) = -48;
    *(_BYTE *)(a1 + 82) = 22;
    *(_BYTE *)(a1 + 81) = 22;
    *(_BYTE *)(a1 + 86) = 96;
    *(_BYTE *)(a1 + 85) = 96;
  }
  v8 = wcslen((const wchar_t *)"O");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 244,
    (const wchar_t *)"O",
    &aO_2[4 * v8]);
  v9 = wcslen((const wchar_t *)"C");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 316,
    (const wchar_t *)"C",
    &aC_6[4 * v9]);
  v10 = wcslen((const wchar_t *)"Y");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 388,
    (const wchar_t *)"Y",
    &aY[4 * v10]);
  v11 = wcslen((const wchar_t *)"N");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 460,
    (const wchar_t *)"N",
    &aN_4[4 * v11]);
  v12 = wcslen((const wchar_t *)"C");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 532,
    (const wchar_t *)"C",
    &aC_5[4 * v12]);
  v13 = wcslen((const wchar_t *)"R");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 748,
    (const wchar_t *)"R",
    &aR_3[4 * v13]);
  v14 = wcslen((const wchar_t *)"M");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 676,
    (const wchar_t *)"M",
    &aM_3[4 * v14]);
  v15 = wcslen((const wchar_t *)"M");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 604,
    (const wchar_t *)"M",
    &aM_5[4 * v15]);
  *(_DWORD *)(a1 + 128) = 225;
  *(_DWORD *)(a1 + 132) = 226;
  *(_DWORD *)(a1 + 136) = 227;
  *(_DWORD *)(a1 + 140) = 228;
  *(_DWORD *)(a1 + 148) = 229;
  *(_DWORD *)(a1 + 152) = 230;
  *(_DWORD *)(a1 + 156) = 231;
  *(_DWORD *)(a1 + 168) = 233;
  *(_DWORD *)(a1 + 172) = 234;
  *(_DWORD *)(a1 + 176) = 235;
  *(_DWORD *)(a1 + 180) = 236;
  *(_DWORD *)(a1 + 184) = 237;
  *(_DWORD *)(a1 + 188) = 238;
  *(_DWORD *)(a1 + 192) = 239;
  *(_DWORD *)(a1 + 196) = 240;
  v16 = *(_DWORD *)(a1 + 828);
  *(_DWORD *)(a1 + 200) = 241;
  *(_DWORD *)(a1 + 144) = 242;
  *(_DWORD *)(a1 + 204) = 243;
  *(_DWORD *)(a1 + 208) = 244;
  *(_DWORD *)(a1 + 212) = 245;
  *(_DWORD *)(a1 + 216) = 246;
  *(_DWORD *)(a1 + 164) = 232;
  *(_DWORD *)(a1 + 236) = 0;
  *(_BYTE *)(a1 + 824) = (unsigned int)(v16 - 1) <= 1;
  *(_DWORD *)(a1 + 160) = 232;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  return a1;
}


// ===== 54d80c glitch::gui::CGUISkin::CGUISkin(glitch::gui::EGUI_SKIN_TYPE,glitch::video::IVideoDriver *) =====
int __fastcall glitch::gui::CGUISkin::CGUISkin(int a1, int *a2, unsigned int a3, int a4)
{
  int v4; // r12
  int v8; // r7
  int v9; // r3
  int v10; // r10
  size_t v11; // r0
  size_t v12; // r0
  size_t v13; // r0
  size_t v14; // r0
  size_t v15; // r0
  size_t v16; // r0
  size_t v17; // r0
  size_t v18; // r0
  int v19; // r1

  v4 = a2[1];
  *(_DWORD *)a1 = v4;
  *(_DWORD *)(a1 + *(_DWORD *)(v4 - 28)) = a2[2];
  v8 = 0;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[3];
  v9 = *a2;
  v10 = a1 + 244;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 28)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  *(_DWORD *)(a1 + 240) = 0;
  do
  {
    *(_DWORD *)(v10 + 64) = v10;
    *(_DWORD *)(v10 + 68) = v10;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
    v8 += 72;
    **(_DWORD **)(v10 + 64) = 0;
    v10 += 72;
  }
  while ( v8 != 576 );
  *(_DWORD *)(a1 + 820) = a4;
  *(_DWORD *)(a1 + 828) = a3;
  if ( a3 <= 1 )
  {
    *(_BYTE *)(a1 + 4) = 50;
    *(_BYTE *)(a1 + 26) = 115;
    *(_BYTE *)(a1 + 6) = 50;
    *(_BYTE *)(a1 + 5) = 50;
    *(_BYTE *)(a1 + 24) = 16;
    *(_BYTE *)(a1 + 32) = 100;
    *(_BYTE *)(a1 + 7) = 101;
    *(_BYTE *)(a1 + 11) = 101;
    *(_BYTE *)(a1 + 10) = -126;
    *(_BYTE *)(a1 + 9) = -126;
    *(_BYTE *)(a1 + 8) = -126;
    *(_BYTE *)(a1 + 15) = 101;
    *(_BYTE *)(a1 + 14) = -46;
    *(_BYTE *)(a1 + 13) = -46;
    *(_BYTE *)(a1 + 12) = -46;
    *(_BYTE *)(a1 + 19) = 101;
    *(_BYTE *)(a1 + 23) = 101;
    *(_BYTE *)(a1 + 22) = -46;
    *(_BYTE *)(a1 + 21) = -46;
    *(_BYTE *)(a1 + 20) = -46;
    *(_BYTE *)(a1 + 27) = 101;
    *(_BYTE *)(a1 + 25) = 14;
    *(_BYTE *)(a1 + 35) = 101;
    *(_BYTE *)(a1 + 34) = 100;
    *(_BYTE *)(a1 + 33) = 100;
    *(_BYTE *)(a1 + 18) = -1;
    *(_BYTE *)(a1 + 17) = -1;
    *(_BYTE *)(a1 + 16) = -1;
    *(_BYTE *)(a1 + 31) = -56;
    *(_BYTE *)(a1 + 30) = -1;
    *(_BYTE *)(a1 + 29) = -1;
    *(_BYTE *)(a1 + 28) = -1;
    *(_BYTE *)(a1 + 39) = -16;
    *(_BYTE *)(a1 + 38) = 10;
    *(_BYTE *)(a1 + 40) = -126;
    *(_BYTE *)(a1 + 42) = -126;
    *(_BYTE *)(a1 + 41) = -126;
    *(_BYTE *)(a1 + 46) = 107;
    *(_BYTE *)(a1 + 56) = -46;
    *(_BYTE *)(a1 + 47) = 101;
    *(_BYTE *)(a1 + 45) = 36;
    *(_BYTE *)(a1 + 55) = 101;
    *(_BYTE *)(a1 + 59) = 101;
    *(_BYTE *)(a1 + 58) = -46;
    *(_BYTE *)(a1 + 57) = -46;
    *(_BYTE *)(a1 + 71) = 101;
    *(_BYTE *)(a1 + 51) = -16;
    *(_BYTE *)(a1 + 52) = -91;
    *(_BYTE *)(a1 + 66) = -31;
    *(_BYTE *)(a1 + 37) = 10;
    *(_BYTE *)(a1 + 36) = 10;
    *(_BYTE *)(a1 + 43) = -16;
    *(_BYTE *)(a1 + 44) = 8;
    *(_BYTE *)(a1 + 50) = -1;
    *(_BYTE *)(a1 + 49) = -1;
    *(_BYTE *)(a1 + 48) = -1;
    *(_BYTE *)(a1 + 54) = -91;
    *(_BYTE *)(a1 + 53) = -91;
    *(_BYTE *)(a1 + 63) = -56;
    *(_BYTE *)(a1 + 62) = 0;
    *(_BYTE *)(a1 + 61) = 0;
    *(_BYTE *)(a1 + 60) = 0;
    *(_BYTE *)(a1 + 67) = -56;
    *(_BYTE *)(a1 + 65) = -1;
    *(_BYTE *)(a1 + 64) = -1;
    *(_BYTE *)(a1 + 70) = -26;
    *(_BYTE *)(a1 + 69) = -26;
    *(_BYTE *)(a1 + 68) = -26;
    *(_BYTE *)(a1 + 75) = 101;
    *(_DWORD *)(a1 + 88) = 14;
    *(_DWORD *)(a1 + 96) = 15;
    *(_DWORD *)(a1 + 100) = 18;
    *(_DWORD *)(a1 + 104) = 500;
    *(_DWORD *)(a1 + 108) = 200;
    *(_BYTE *)(a1 + 85) = 36;
    *(_DWORD *)(a1 + 112) = 80;
    *(_BYTE *)(a1 + 76) = 10;
    *(_BYTE *)(a1 + 80) = -1;
    *(_BYTE *)(a1 + 87) = -56;
    *(_BYTE *)(a1 + 86) = 107;
    *(_BYTE *)(a1 + 84) = 8;
    *(_DWORD *)(a1 + 116) = 30;
    *(_DWORD *)(a1 + 120) = 2;
    *(_DWORD *)(a1 + 124) = 0;
    *(_BYTE *)(a1 + 74) = -1;
    *(_BYTE *)(a1 + 73) = -1;
    *(_BYTE *)(a1 + 72) = -1;
    *(_BYTE *)(a1 + 79) = -56;
    *(_BYTE *)(a1 + 78) = 10;
    *(_BYTE *)(a1 + 77) = 10;
    *(_BYTE *)(a1 + 83) = -56;
    *(_BYTE *)(a1 + 82) = -1;
    *(_BYTE *)(a1 + 81) = -1;
    *(_DWORD *)(a1 + 92) = 30;
  }
  else
  {
    *(_BYTE *)(a1 + 6) = -126;
    *(_BYTE *)(a1 + 5) = 121;
    *(_BYTE *)(a1 + 4) = 118;
    *(_BYTE *)(a1 + 10) = -15;
    *(_BYTE *)(a1 + 9) = -24;
    *(_BYTE *)(a1 + 8) = -28;
    *(_BYTE *)(a1 + 18) = -36;
    *(_BYTE *)(a1 + 17) = -52;
    *(_BYTE *)(a1 + 16) = -57;
    *(_BYTE *)(a1 + 22) = 58;
    *(_BYTE *)(a1 + 21) = 49;
    *(_BYTE *)(a1 + 20) = 46;
    *(_BYTE *)(a1 + 27) = 0x80;
    *(_BYTE *)(a1 + 14) = -39;
    *(_BYTE *)(a1 + 12) = -53;
    *(_BYTE *)(a1 + 24) = 64;
    *(_BYTE *)(a1 + 11) = 80;
    *(_BYTE *)(a1 + 19) = 64;
    *(_BYTE *)(a1 + 26) = 64;
    *(_BYTE *)(a1 + 25) = 64;
    *(_BYTE *)(a1 + 13) = -46;
    *(_BYTE *)(a1 + 23) = 0x80;
    *(_BYTE *)(a1 + 32) = 100;
    *(_BYTE *)(a1 + 7) = 96;
    *(_BYTE *)(a1 + 15) = -64;
    *(_BYTE *)(a1 + 31) = -16;
    *(_BYTE *)(a1 + 30) = -48;
    *(_BYTE *)(a1 + 29) = -48;
    *(_BYTE *)(a1 + 28) = -48;
    *(_BYTE *)(a1 + 35) = -64;
    *(_BYTE *)(a1 + 34) = 100;
    *(_BYTE *)(a1 + 33) = 100;
    *(_BYTE *)(a1 + 39) = -48;
    *(_BYTE *)(a1 + 38) = 22;
    *(_BYTE *)(a1 + 43) = 60;
    *(_BYTE *)(a1 + 47) = 108;
    *(_BYTE *)(a1 + 62) = 51;
    *(_BYTE *)(a1 + 61) = 32;
    *(_BYTE *)(a1 + 65) = -46;
    *(_BYTE *)(a1 + 58) = -46;
    *(_BYTE *)(a1 + 57) = -46;
    *(_BYTE *)(a1 + 56) = -46;
    *(_BYTE *)(a1 + 52) = -91;
    *(_BYTE *)(a1 + 66) = -39;
    *(_BYTE *)(a1 + 50) = -32;
    *(_BYTE *)(a1 + 49) = -32;
    *(_BYTE *)(a1 + 48) = -32;
    *(_BYTE *)(a1 + 54) = -91;
    *(_BYTE *)(a1 + 53) = -91;
    *(_BYTE *)(a1 + 70) = -32;
    *(_BYTE *)(a1 + 69) = -32;
    *(_BYTE *)(a1 + 40) = 20;
    *(_BYTE *)(a1 + 67) = -64;
    *(_BYTE *)(a1 + 64) = -53;
    *(_BYTE *)(a1 + 37) = 22;
    *(_BYTE *)(a1 + 36) = 22;
    *(_BYTE *)(a1 + 42) = 20;
    *(_BYTE *)(a1 + 41) = 20;
    *(_BYTE *)(a1 + 46) = 96;
    *(_BYTE *)(a1 + 45) = 96;
    *(_BYTE *)(a1 + 44) = 96;
    *(_BYTE *)(a1 + 51) = -48;
    *(_BYTE *)(a1 + 55) = -16;
    *(_BYTE *)(a1 + 59) = -16;
    *(_BYTE *)(a1 + 63) = -16;
    *(_BYTE *)(a1 + 60) = 15;
    *(_BYTE *)(a1 + 71) = -16;
    *(_BYTE *)(a1 + 68) = -32;
    *(_DWORD *)(a1 + 88) = 14;
    *(_DWORD *)(a1 + 92) = 48;
    *(_DWORD *)(a1 + 100) = 18;
    *(_DWORD *)(a1 + 104) = 500;
    *(_DWORD *)(a1 + 108) = 200;
    *(_DWORD *)(a1 + 116) = 30;
    *(_DWORD *)(a1 + 120) = 3;
    *(_BYTE *)(a1 + 72) = -16;
    *(_BYTE *)(a1 + 80) = 22;
    *(_BYTE *)(a1 + 87) = -48;
    *(_BYTE *)(a1 + 84) = 96;
    *(_DWORD *)(a1 + 96) = 15;
    *(_DWORD *)(a1 + 112) = 80;
    *(_DWORD *)(a1 + 124) = 2;
    *(_BYTE *)(a1 + 75) = -16;
    *(_BYTE *)(a1 + 74) = -16;
    *(_BYTE *)(a1 + 73) = -16;
    *(_BYTE *)(a1 + 79) = -48;
    *(_BYTE *)(a1 + 78) = 22;
    *(_BYTE *)(a1 + 77) = 22;
    *(_BYTE *)(a1 + 76) = 22;
    *(_BYTE *)(a1 + 83) = -48;
    *(_BYTE *)(a1 + 82) = 22;
    *(_BYTE *)(a1 + 81) = 22;
    *(_BYTE *)(a1 + 86) = 96;
    *(_BYTE *)(a1 + 85) = 96;
  }
  v11 = wcslen((const wchar_t *)"O");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 244,
    (const wchar_t *)"O",
    &aO_2[4 * v11]);
  v12 = wcslen((const wchar_t *)"C");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 316,
    (const wchar_t *)"C",
    &aC_6[4 * v12]);
  v13 = wcslen((const wchar_t *)"Y");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 388,
    (const wchar_t *)"Y",
    &aY[4 * v13]);
  v14 = wcslen((const wchar_t *)"N");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 460,
    (const wchar_t *)"N",
    &aN_4[4 * v14]);
  v15 = wcslen((const wchar_t *)"C");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 532,
    (const wchar_t *)"C",
    &aC_5[4 * v15]);
  v16 = wcslen((const wchar_t *)"R");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 748,
    (const wchar_t *)"R",
    &aR_3[4 * v16]);
  v17 = wcslen((const wchar_t *)"M");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 676,
    (const wchar_t *)"M",
    &aM_3[4 * v17]);
  v18 = wcslen((const wchar_t *)"M");
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 604,
    (const wchar_t *)"M",
    &aM_5[4 * v18]);
  *(_DWORD *)(a1 + 128) = 225;
  *(_DWORD *)(a1 + 132) = 226;
  *(_DWORD *)(a1 + 136) = 227;
  *(_DWORD *)(a1 + 140) = 228;
  *(_DWORD *)(a1 + 148) = 229;
  *(_DWORD *)(a1 + 152) = 230;
  *(_DWORD *)(a1 + 156) = 231;
  *(_DWORD *)(a1 + 168) = 233;
  *(_DWORD *)(a1 + 172) = 234;
  *(_DWORD *)(a1 + 176) = 235;
  *(_DWORD *)(a1 + 180) = 236;
  *(_DWORD *)(a1 + 184) = 237;
  *(_DWORD *)(a1 + 188) = 238;
  *(_DWORD *)(a1 + 192) = 239;
  *(_DWORD *)(a1 + 196) = 240;
  v19 = *(_DWORD *)(a1 + 828);
  *(_DWORD *)(a1 + 200) = 241;
  *(_DWORD *)(a1 + 144) = 242;
  *(_DWORD *)(a1 + 204) = 243;
  *(_DWORD *)(a1 + 208) = 244;
  *(_DWORD *)(a1 + 212) = 245;
  *(_DWORD *)(a1 + 216) = 246;
  *(_DWORD *)(a1 + 164) = 232;
  *(_DWORD *)(a1 + 236) = 0;
  *(_BYTE *)(a1 + 824) = (unsigned int)(v19 - 1) <= 1;
  *(_DWORD *)(a1 + 160) = 232;
  *(_DWORD *)(a1 + 220) = 0;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  return a1;
}


// ===== 54ded8 `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin(glitch::gui::CGUISkin *this)
{
  glitch::gui::CGUISkin::~CGUISkin((glitch::IReferenceCounted **)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54dee8 `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin(glitch::gui::CGUISkin *this)
{
  glitch::gui::CGUISkin::~CGUISkin((glitch::IReferenceCounted **)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54def8 `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin(glitch::gui::CGUISkin *this)
{
  glitch::gui::CGUISkin::~CGUISkin((glitch::IReferenceCounted **)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54df08 `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISkin::~CGUISkin(glitch::gui::CGUISkin *this)
{
  glitch::gui::CGUISkin::~CGUISkin((glitch::IReferenceCounted **)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54df18 `virtual thunk to'glitch::gui::CGUISkin::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUISkin::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUISkin::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 54df28 `virtual thunk to'glitch::gui::CGUISkin::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUISkin::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUISkin::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 54df38 glitch::gui::CGUISpinBox::getEditBox(void) =====
int __fastcall glitch::gui::CGUISpinBox::getEditBox(glitch::gui::CGUISpinBox *this)
{
  return *((_DWORD *)this + 86);
}


// ===== 54df40 glitch::gui::CGUISpinBox::setRange(float,float) =====
int __fastcall glitch::gui::CGUISpinBox::setRange(glitch::gui::CGUISpinBox *this, float a2, float a3)
{
  *((float *)this + 90) = a2;
  *((float *)this + 91) = a3;
  return (*(int (__fastcall **)(glitch::gui::CGUISpinBox *))(*(_DWORD *)this + 160))(this);
}


// ===== 54df5c glitch::gui::CGUISpinBox::getMin(void) =====
int __fastcall glitch::gui::CGUISpinBox::getMin(glitch::gui::CGUISpinBox *this)
{
  return *((_DWORD *)this + 90);
}


// ===== 54df64 glitch::gui::CGUISpinBox::getMax(void) =====
int __fastcall glitch::gui::CGUISpinBox::getMax(glitch::gui::CGUISpinBox *this)
{
  return *((_DWORD *)this + 91);
}


// ===== 54df6c glitch::gui::CGUISpinBox::getStepSize(void) =====
int __fastcall glitch::gui::CGUISpinBox::getStepSize(glitch::gui::CGUISpinBox *this)
{
  return *((_DWORD *)this + 89);
}


// ===== 54df74 glitch::gui::CGUISpinBox::setStepSize(float) =====
int __fastcall glitch::gui::CGUISpinBox::setStepSize(int this, float a2)
{
  *(float *)(this + 356) = a2;
  return this;
}


// ===== 54df7c glitch::gui::CGUISpinBox::verifyValueRange(void) =====
int __fastcall glitch::gui::CGUISpinBox::verifyValueRange(glitch::gui::CGUISpinBox *this)
{
  float v2; // r0
  float v3; // r5
  float v4; // r6
  int result; // r0

  v2 = COERCE_FLOAT((*(int (__fastcall **)(glitch::gui::CGUISpinBox *))(*(_DWORD *)this + 132))(this));
  v3 = *((float *)this + 90);
  v4 = v2;
  if ( v2 < v3 )
    return (*(int (__fastcall **)(glitch::gui::CGUISpinBox *, float))(*(_DWORD *)this + 128))(
             this,
             COERCE_FLOAT(LODWORD(v3)));
  v3 = *((float *)this + 91);
  result = v2 > v3;
  if ( v4 > v3 )
    return (*(int (__fastcall **)(glitch::gui::CGUISpinBox *, float))(*(_DWORD *)this + 128))(
             this,
             COERCE_FLOAT(LODWORD(v3)));
  return result;
}


// ===== 54dfd8 glitch::gui::CGUISpinBox::setText(wchar_t const*) =====
int __fastcall glitch::gui::CGUISpinBox::setText(glitch::gui::CGUISpinBox *this, const wchar_t *a2)
{
  void (__fastcall *v3)(glitch::gui::CGUISpinBox *, int); // r5
  int v4; // r0

  (*(void (__fastcall **)(_DWORD, const wchar_t *))(**((_DWORD **)this + 86) + 68))(*((_DWORD *)this + 86), a2);
  v3 = *(void (__fastcall **)(glitch::gui::CGUISpinBox *, int))(*(_DWORD *)this + 128);
  v4 = (*(int (__fastcall **)(glitch::gui::CGUISpinBox *))(*(_DWORD *)this + 132))(this);
  v3(this, v4);
  return (*(int (__fastcall **)(glitch::gui::CGUISpinBox *))(*(_DWORD *)this + 160))(this);
}


// ===== 54e028 glitch::gui::CGUISpinBox::getText(void) =====
int __fastcall glitch::gui::CGUISpinBox::getText(glitch::gui::CGUISpinBox *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 86) + 72))(*((_DWORD *)this + 86));
}


// ===== 54e044 glitch::gui::CGUISpinBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUISpinBox::serializeAttributes(_DWORD *a1, int a2)
{
  void (__fastcall *v4)(int, const char *, int, _DWORD); // r6
  int v5; // r0
  void (__fastcall *v6)(int, const char *, int, _DWORD); // r6
  int v7; // r0
  void (__fastcall *v8)(int, char *, int, _DWORD); // r6
  int v9; // r0

  glitch::gui::IGUIElement::serializeAttributes(a1, a2);
  v4 = *(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 100);
  v5 = (*(int (__fastcall **)(_DWORD *))(*a1 + 140))(a1);
  v4(a2, "Min", v5, 0);
  v6 = *(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 100);
  v7 = (*(int (__fastcall **)(_DWORD *))(*a1 + 144))(a1);
  v6(a2, "Max", v7, 0);
  v8 = *(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 100);
  v9 = (*(int (__fastcall **)(_DWORD *))(*a1 + 156))(a1);
  v8(a2, "Step", v9, 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
           a2,
           "DecimalPlaces",
           a1[110],
           0);
}


// ===== 54e118 `global constructor keyed to'.._source_glitch_gui_CGUISpinBox.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUISpinBox.cpp()
{
  dword_9F6670 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F666C = 1056964608;
}


// ===== 54e138 glitch::gui::CGUISpinBox::setValue(float) =====
int __fastcall glitch::gui::CGUISpinBox::setValue(glitch::gui::CGUISpinBox *this, float a2, int a3, int a4)
{
  int v6[101]; // [sp+8h] [bp-194h] BYREF

  swprintf(
    (int)v6,
    99,
    *((_DWORD *)this + 109),
    a4,
    COERCE_UNSIGNED_INT64(a2),
    HIDWORD(COERCE_UNSIGNED_INT64(a2)),
    v6[0],
    v6[1],
    v6[2],
    v6[3]);
  (*(void (__fastcall **)(_DWORD, int *))(**((_DWORD **)this + 86) + 68))(*((_DWORD *)this + 86), v6);
  return (*(int (__fastcall **)(glitch::gui::CGUISpinBox *))(*(_DWORD *)this + 160))(this);
}


// ===== 54e194 glitch::gui::IGUISpinBox::IGUISpinBox(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUISpinBox::IGUISpinBox(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r10
  int v8; // r7
  int v9; // r6
  int v10; // r8
  int v11; // r0
  _DWORD *v13; // r1
  _DWORD *v15; // r3
  int v16; // r0
  int v17; // r12
  int v18; // r10
  int v19; // r8
  int v20; // r2
  int v21; // r1
  int v22; // r6
  int v23; // r7
  int v24; // r0
  int v25; // r1
  int v26; // r1
  int v27; // r2
  int v28; // r1
  int v29; // r3
  int v30; // r1
  bool v31; // cc
  int v32; // r3
  int v33; // r3

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  *(_DWORD *)a1 = off_95C300;
  v11 = a2[1];
  v13 = a2 + 1;
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = v13[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = v13[2];
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)(a1 + 8) = a1 + 4;
  *(_DWORD *)(a1 + 4) = a1 + 4;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 12),
    0x10u);
  **(_BYTE **)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 88) = v8;
  *(_DWORD *)(a1 + 92) = v9;
  *(_DWORD *)(a1 + 96) = v10;
  *(_DWORD *)(a1 + 100) = v7;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = v8;
  *(_DWORD *)(a1 + 44) = v9;
  *(_DWORD *)(a1 + 48) = v10;
  *(_DWORD *)(a1 + 52) = v7;
  *(_DWORD *)(a1 + 56) = v8;
  *(_DWORD *)(a1 + 60) = v9;
  *(_DWORD *)(a1 + 64) = v10;
  *(_DWORD *)(a1 + 68) = v7;
  *(_DWORD *)(a1 + 72) = v8;
  *(_DWORD *)(a1 + 76) = v9;
  *(_DWORD *)(a1 + 80) = v10;
  *(_DWORD *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 160),
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 340) = 15;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v15 = *(_DWORD **)(a1 + 36);
  if ( v15 )
  {
    v16 = v15[15];
    v17 = v15[14];
    v18 = v15[16];
    v19 = v15[17];
    v20 = v16 + *(_DWORD *)(a1 + 68);
    v21 = v17 + *(_DWORD *)(a1 + 64);
    v22 = v16 + *(_DWORD *)(a1 + 60);
    v23 = v17 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v22;
    *(_DWORD *)(a1 + 84) = v20;
    *(_DWORD *)(a1 + 72) = v23;
    *(_DWORD *)(a1 + 80) = v21;
    *(_DWORD *)(a1 + 68) = v20;
    *(_DWORD *)(a1 + 112) = v18;
    *(_DWORD *)(a1 + 116) = v19;
    *(_DWORD *)(a1 + 104) = v17;
    *(_DWORD *)(a1 + 108) = v16;
    *(_DWORD *)(a1 + 56) = v23;
    *(_DWORD *)(a1 + 60) = v22;
    *(_DWORD *)(a1 + 64) = v21;
    v24 = v15[20];
    if ( v21 > v24 )
      *(_DWORD *)(a1 + 80) = v24;
    v25 = v15[21];
    if ( v20 > v25 )
      *(_DWORD *)(a1 + 84) = v25;
    v26 = v15[18];
    v27 = *(_DWORD *)(a1 + 72);
    if ( v26 > v27 )
    {
      *(_DWORD *)(a1 + 72) = v26;
      v27 = v26;
    }
    v28 = v15[19];
    v29 = *(_DWORD *)(a1 + 76);
    if ( v28 > v29 )
    {
      *(_DWORD *)(a1 + 76) = v28;
      v29 = v28;
    }
    v30 = *(_DWORD *)(a1 + 84);
    v31 = v29 <= v30;
    v32 = *(_DWORD *)(a1 + 80);
    if ( !v31 )
      *(_DWORD *)(a1 + 76) = v30;
    if ( v27 > v32 )
      *(_DWORD *)(a1 + 72) = v32;
  }
  v33 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v33 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 54e46c std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(wchar_t const*,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0> const&) [clone] =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1)
{
  size_t v2; // r0
  const wchar_t *v3; // r7
  size_t v4; // r5
  _DWORD *v5; // r0

  a1[16] = a1;
  a1[17] = a1;
  v2 = wcslen(U"%f");
  v3 = &aF_7[v2];
  v4 = 4 * v2;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    ((int)(4 * v2) >> 2) + 1);
  v5 = (_DWORD *)a1[17];
  if ( v3 != U"%f" )
    v5 = (char *)memcpy(v5, U"%f", v4) + v4;
  a1[16] = v5;
  *v5 = 0;
  return a1;
}


// ===== 54e4d8 glitch::gui::CGUISpinBox::CGUISpinBox(wchar_t const*,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int> const&) =====
int __fastcall glitch::gui::CGUISpinBox::CGUISpinBox(int a1, int *a2, int a3, int a4, int a5, int a6, int *a7)
{
  int v9; // r8
  int v10; // r4
  int v11; // lr
  int v13; // r3
  int v14; // r0
  int v15; // r9
  int v16; // r0
  int v17; // r11
  int v18; // r0
  int v19; // r3
  int v20; // r2
  int (__fastcall *v21)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  _DWORD *v22; // r0
  int v23; // r0
  int v24; // r2
  int v25; // r3
  int (__fastcall *v26)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  _DWORD *v27; // r0
  int v28; // r7
  int v29; // r10
  int v30; // r10
  int v31; // r10
  int v32; // r11
  int v33; // r10
  int v34; // r11
  int v35; // r0
  int v36; // r3
  _DWORD *v37; // r0
  int v39; // [sp+Ch] [bp-70h]
  int v40; // [sp+Ch] [bp-70h]
  void (__fastcall *v41)(int, _DWORD, int, int, _DWORD); // [sp+Ch] [bp-70h]
  void (__fastcall *v42)(int, int, int); // [sp+Ch] [bp-70h]
  void (__fastcall *v43)(int, _DWORD, int, int, _DWORD); // [sp+10h] [bp-6Ch]
  void (__fastcall *v44)(int, int, int, int, _DWORD); // [sp+10h] [bp-6Ch]
  _DWORD v46[4]; // [sp+24h] [bp-58h] BYREF
  _DWORD v47[4]; // [sp+34h] [bp-48h] BYREF
  _DWORD v48[4]; // [sp+44h] [bp-38h] BYREF
  int v49[5]; // [sp+54h] [bp-28h] BYREF
  int v50; // [sp+68h] [bp-14h]
  int v51; // [sp+6Ch] [bp-10h]
  int v52; // [sp+70h] [bp-Ch]

  v9 = *a7;
  v10 = a7[1];
  v11 = a7[2];
  v49[3] = a7[3];
  v49[0] = v9;
  v49[1] = v10;
  v49[2] = v11;
  glitch::gui::IGUISpinBox::IGUISpinBox(a1, a2 + 1, a4, a5, a6, v49);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 360) = -8388609;
  *(_DWORD *)(a1 + 364) = 2139095039;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string((_DWORD *)(a1 + 368));
  *(_DWORD *)(a1 + 440) = -1;
  if ( a4 && (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 56))(a4) )
  {
    v14 = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 56))(a4);
    v15 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v14 + 24))(v14, 0);
    v16 = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 56))(a4);
    v17 = (*(int (__fastcall **)(int))(*(_DWORD *)v16 + 48))(v16);
  }
  else
  {
    v17 = 0;
    v15 = 16;
  }
  v18 = *(_DWORD *)(a1 + 336);
  v19 = a7[3] - a7[1];
  v20 = a7[2] - *a7;
  v21 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v18 + 120);
  v48[0] = v20 - v15;
  v48[1] = v19 / 2 + 1;
  v48[2] = v20;
  v48[3] = v19;
  v22 = (_DWORD *)v21(v18, v48, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 352) = v22;
  ++*(_DWORD *)((char *)v22 + *(_DWORD *)(*v22 - 16) + 4);
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 352) + 56))(*(_DWORD *)(a1 + 352));
  *(_BYTE *)(*(_DWORD *)(a1 + 352) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 352), 1, 1, 2, 1);
  v23 = *(_DWORD *)(a1 + 336);
  v24 = a7[3] - a7[1];
  v25 = a7[2] - *a7;
  v26 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v23 + 120);
  v47[0] = v25 - v15;
  v47[2] = v25;
  v47[3] = v24 / 2;
  v47[1] = 0;
  v27 = (_DWORD *)v26(v23, v47, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 348) = v27;
  ++*(_DWORD *)((char *)v27 + *(_DWORD *)(*v27 - 16) + 4);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 348) + 56))(*(_DWORD *)(a1 + 348), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 348) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 348), 1, 1, 0, 2);
  if ( v17 )
  {
    v28 = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 56))(a4);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 352) + 144))(*(_DWORD *)(a1 + 352), v17);
    v29 = *(_DWORD *)(a1 + 352);
    v43 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v29 + 148);
    v39 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 56))(v28, 13);
    v52 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 16))(v28, 18);
    v43(v29, 0, v39, v52, 0);
    v30 = *(_DWORD *)(a1 + 352);
    v44 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v30 + 148);
    v40 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 56))(v28, 13);
    v51 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 16))(v28, 18);
    v44(v30, 1, v40, v51, 0);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 348) + 144))(*(_DWORD *)(a1 + 348), v17);
    v31 = *(_DWORD *)(a1 + 348);
    v41 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v31 + 148);
    v32 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 56))(v28, 12);
    v50 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 16))(v28, 18);
    v41(v31, 0, v32, v50, 0);
    v33 = *(_DWORD *)(a1 + 348);
    v42 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v33 + 148);
    v34 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 56))(v28, 12);
    v49[4] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 16))(v28, 18);
    v42(v33, 1, v34);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, void *))(**(_DWORD **)(a1 + 352) + 68))(*(_DWORD *)(a1 + 352), &unk_8DEA60);
    (*(void (__fastcall **)(_DWORD, void *))(**(_DWORD **)(a1 + 348) + 68))(*(_DWORD *)(a1 + 348), &unk_8DEA68);
  }
  v35 = a7[2] - 1 - *a7;
  v36 = *(_DWORD *)(a1 + 336);
  v46[3] = a7[3] - a7[1];
  v46[2] = v35 - v15;
  v46[0] = 0;
  v46[1] = 0;
  v37 = (_DWORD *)(*(int (__fastcall **)(int, int, _DWORD *, int, int, int))(*(_DWORD *)v36 + 172))(
                    v36,
                    a3,
                    v46,
                    1,
                    a1,
                    -1);
  *(_DWORD *)(a1 + 344) = v37;
  ++*(_DWORD *)((char *)v37 + *(_DWORD *)(*v37 - 16) + 4);
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 344) + 56))(*(_DWORD *)(a1 + 344));
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 344), 0, 1, 0, 1);
  return a1;
}


// ===== 54eaac glitch::gui::CGUISpinBox::CGUISpinBox(wchar_t const*,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int> const&) =====
int __fastcall glitch::gui::CGUISpinBox::CGUISpinBox(int a1, int a2, int a3, int a4, int a5, int *a6)
{
  int v6; // lr
  int v7; // r10
  int v8; // r8
  int v11; // r0
  int v12; // r9
  int v13; // r0
  int v14; // r11
  int v15; // r0
  int v16; // r3
  int v17; // r2
  int (__fastcall *v18)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  _DWORD *v19; // r0
  int v20; // r0
  int v21; // r2
  int v22; // r3
  int (__fastcall *v23)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  _DWORD *v24; // r0
  int v25; // r7
  int v26; // r10
  int v27; // r10
  int v28; // r10
  int v29; // r11
  int v30; // r10
  int v31; // r11
  int v32; // r0
  int v33; // r3
  _DWORD *v34; // r0
  int v36; // [sp+Ch] [bp-70h]
  int v37; // [sp+Ch] [bp-70h]
  void (__fastcall *v38)(int, _DWORD, int, int, _DWORD); // [sp+Ch] [bp-70h]
  void (__fastcall *v39)(int, int, int); // [sp+Ch] [bp-70h]
  void (__fastcall *v40)(int, _DWORD, int, int, _DWORD); // [sp+10h] [bp-6Ch]
  void (__fastcall *v41)(int, int, int, int, _DWORD); // [sp+10h] [bp-6Ch]
  _DWORD v43[4]; // [sp+24h] [bp-58h] BYREF
  _DWORD v44[4]; // [sp+34h] [bp-48h] BYREF
  _DWORD v45[4]; // [sp+44h] [bp-38h] BYREF
  int v46[5]; // [sp+54h] [bp-28h] BYREF
  int v47; // [sp+68h] [bp-14h]
  int v48; // [sp+6Ch] [bp-10h]
  int v49; // [sp+70h] [bp-Ch]

  *(_DWORD *)(a1 + 452) = 1;
  *(_DWORD *)(a1 + 448) = off_95B720;
  *(_DWORD *)(a1 + 444) = off_97077C;
  *(_DWORD *)&byte_4[a1 + 444] = off_97079C;
  v6 = a6[2];
  v7 = *a6;
  v8 = a6[3];
  v46[1] = a6[1];
  v46[2] = v6;
  v46[0] = v7;
  v46[3] = v8;
  glitch::gui::IGUISpinBox::IGUISpinBox(a1, (int *)off_97057C, a3, a4, a5, v46);
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 444) = off_97054C;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 360) = -8388609;
  *(_DWORD *)a1 = off_970490;
  *(_DWORD *)(a1 + 364) = 2139095039;
  *(_DWORD *)(a1 + 448) = off_97056C;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string((_DWORD *)(a1 + 368));
  *(_DWORD *)(a1 + 440) = -1;
  if ( a3 && (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 56))(a3) )
  {
    v11 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 56))(a3);
    v12 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v11 + 24))(v11, 0);
    v13 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 56))(a3);
    v14 = (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 48))(v13);
  }
  else
  {
    v14 = 0;
    v12 = 16;
  }
  v15 = *(_DWORD *)(a1 + 336);
  v16 = a6[3] - a6[1];
  v17 = a6[2] - *a6;
  v18 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v15 + 120);
  v45[0] = v17 - v12;
  v45[1] = v16 / 2 + 1;
  v45[2] = v17;
  v45[3] = v16;
  v19 = (_DWORD *)v18(v15, v45, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 352) = v19;
  ++*(_DWORD *)((char *)v19 + *(_DWORD *)(*v19 - 16) + 4);
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 352) + 56))(*(_DWORD *)(a1 + 352));
  *(_BYTE *)(*(_DWORD *)(a1 + 352) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 352), 1, 1, 2, 1);
  v20 = *(_DWORD *)(a1 + 336);
  v21 = a6[3] - a6[1];
  v22 = a6[2] - *a6;
  v23 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v20 + 120);
  v44[0] = v22 - v12;
  v44[2] = v22;
  v44[3] = v21 / 2;
  v44[1] = 0;
  v24 = (_DWORD *)v23(v20, v44, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 348) = v24;
  ++*(_DWORD *)((char *)v24 + *(_DWORD *)(*v24 - 16) + 4);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 348) + 56))(*(_DWORD *)(a1 + 348), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 348) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 348), 1, 1, 0, 2);
  if ( v14 )
  {
    v25 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 56))(a3);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 352) + 144))(*(_DWORD *)(a1 + 352), v14);
    v26 = *(_DWORD *)(a1 + 352);
    v40 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v26 + 148);
    v36 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 56))(v25, 13);
    v49 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 16))(v25, 18);
    v40(v26, 0, v36, v49, 0);
    v27 = *(_DWORD *)(a1 + 352);
    v41 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v27 + 148);
    v37 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 56))(v25, 13);
    v48 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 16))(v25, 18);
    v41(v27, 1, v37, v48, 0);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 348) + 144))(*(_DWORD *)(a1 + 348), v14);
    v28 = *(_DWORD *)(a1 + 348);
    v38 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v28 + 148);
    v29 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 56))(v25, 12);
    v47 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 16))(v25, 18);
    v38(v28, 0, v29, v47, 0);
    v30 = *(_DWORD *)(a1 + 348);
    v39 = *(void (__fastcall **)(int, int, int))(*(_DWORD *)v30 + 148);
    v31 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 56))(v25, 12);
    v46[4] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 16))(v25, 18);
    v39(v30, 1, v31);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, void *))(**(_DWORD **)(a1 + 352) + 68))(*(_DWORD *)(a1 + 352), &unk_8DEA60);
    (*(void (__fastcall **)(_DWORD, void *))(**(_DWORD **)(a1 + 348) + 68))(*(_DWORD *)(a1 + 348), &unk_8DEA68);
  }
  v32 = a6[2] - 1 - *a6;
  v33 = *(_DWORD *)(a1 + 336);
  v43[3] = a6[3] - a6[1];
  v43[2] = v32 - v12;
  v43[0] = 0;
  v43[1] = 0;
  v34 = (_DWORD *)(*(int (__fastcall **)(int, int, _DWORD *, int, int, int))(*(_DWORD *)v33 + 172))(
                    v33,
                    a2,
                    v43,
                    1,
                    a1,
                    -1);
  *(_DWORD *)(a1 + 344) = v34;
  ++*(_DWORD *)((char *)v34 + *(_DWORD *)(*v34 - 16) + 4);
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 344) + 56))(*(_DWORD *)(a1 + 344));
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 344), 0, 1, 0, 1);
  return a1;
}


// ===== 54f0c0 glitch::gui::CGUISpinBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUISpinBox::deserializeAttributes(float *a1, int a2)
{
  void (__fastcall *v4)(float *, int, int); // r6
  int v5; // r7
  int v6; // r0
  void (__fastcall *v7)(float *, int); // r6
  int v8; // r0
  int v9; // r3
  int v10; // r0
  int (__fastcall *v11)(float *, int); // r4
  int v12; // r0

  glitch::gui::IGUIElement::deserializeAttributes(a1, a2);
  v4 = *(void (__fastcall **)(float *, int, int))(*(_DWORD *)a1 + 136);
  v5 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "Min");
  v6 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 112))(a2, "Max");
  v4(a1, v5, v6);
  v7 = *(void (__fastcall **)(float *, int))(*(_DWORD *)a1 + 148);
  v8 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 112))(a2, "Step");
  v7(a1, v8);
  v9 = *(_DWORD *)a2;
  v10 = a2;
  v11 = *(int (__fastcall **)(float *, int))(*(_DWORD *)a1 + 152);
  v12 = (*(int (__fastcall **)(int, const char *))(v9 + 88))(v10, "DecimalPlaces");
  return v11(a1, v12);
}


// ===== 54f188 glitch::gui::CGUISpinBox::getValue(void) =====
int __fastcall glitch::gui::CGUISpinBox::getValue(glitch::gui::CGUISpinBox *this)
{
  const wchar_t *v1; // r1
  int v2; // r7
  float *v3; // r2
  int v5; // [sp+0h] [bp-24h] BYREF
  _BYTE v6[20]; // [sp+4h] [bp-20h] BYREF
  void *p; // [sp+18h] [bp-Ch]

  v1 = (const wchar_t *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 86) + 72))(*((_DWORD *)this + 86));
  if ( !v1 )
    return 0;
  glitch::core::stringw2stringc((glitch::core *)v6, v1);
  glitch::core::fast_atof_move((glitch::core *)p, (float *)&v5, v3);
  v2 = v5;
  if ( p != v6 && p )
    GlitchFree(p);
  return v2;
}


// ===== 54f228 glitch::gui::CGUISpinBox::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUISpinBox::onEvent(_DWORD *a1, int *a2)
{
  int v4; // r3
  int v5; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r3
  float v10; // r0
  _DWORD v11[7]; // [sp+0h] [bp-1Ch] BYREF

  if ( !*((_BYTE *)a1 + 153) )
    goto LABEL_3;
  v4 = *a2;
  if ( *a2 )
    goto LABEL_3;
  v7 = a2[4];
  if ( v7 == 5 )
  {
    v9 = a2[2];
    if ( v9 == a1[87] )
    {
      v10 = (*(float (__fastcall **)(_DWORD *))(*a1 + 132))(a1) + *((float *)a1 + 89);
    }
    else
    {
      if ( v9 != a1[88] )
        goto LABEL_3;
      v10 = (*(float (__fastcall **)(_DWORD *))(*a1 + 132))(a1) - *((float *)a1 + 89);
    }
    (*(void (__fastcall **)(_DWORD *, float))(*a1 + 128))(a1, COERCE_FLOAT(LODWORD(v10)));
    v7 = a2[4];
    v4 = 1;
  }
  if ( v7 == 16 && a2[2] == a1[86] )
  {
    (*(void (__fastcall **)(_DWORD *))(*a1 + 160))(a1);
    goto LABEL_10;
  }
  if ( !v4 )
  {
LABEL_3:
    v5 = a1[9];
    if ( v5 )
      return (*(int (__fastcall **)(_DWORD, int *))(*(_DWORD *)v5 + 8))(a1[9], a2);
    else
      return 0;
  }
LABEL_10:
  v8 = a1[9];
  v11[3] = 0;
  v11[4] = 20;
  v11[0] = 0;
  v11[2] = a1;
  if ( v8 )
    (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v8 + 8))(v8, v11);
  return 1;
}


// ===== 54f364 glitch::gui::IGUISpinBox::~IGUISpinBox() =====
void __fastcall glitch::gui::IGUISpinBox::~IGUISpinBox(glitch::gui::IGUISpinBox *this)
{
  *(_DWORD *)this = off_970270;
  *((_DWORD *)this + 86) = off_970328;
  *((_DWORD *)this + 87) = off_970348;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_97035C);
}


// ===== 54f3b8 `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox(glitch::gui::IGUISpinBox *this)
{
  glitch::gui::IGUISpinBox::~IGUISpinBox((glitch::gui::IGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54f3c8 `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox(glitch::gui::IGUISpinBox *this)
{
  glitch::gui::IGUISpinBox::~IGUISpinBox((glitch::gui::IGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54f3d8 glitch::gui::CGUISpinBox::~CGUISpinBox() =====
void __fastcall glitch::gui::CGUISpinBox::~CGUISpinBox(glitch::gui::CGUISpinBox *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3
  _DWORD *v4; // r3
  char *v5; // r0

  v1 = *((_DWORD **)this + 87);
  *(_DWORD *)this = off_970490;
  *((_DWORD *)this + 111) = off_97054C;
  *((_DWORD *)this + 112) = off_97056C;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((_DWORD **)this + 88);
  if ( v3 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 16)));
  v4 = *((_DWORD **)this + 86);
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 16)));
  v5 = *((char **)this + 109);
  if ( v5 != (char *)this + 368 && v5 )
    GlitchFree(v5);
  *(_DWORD *)this = off_9705B8;
  *(int *)((char *)&elf_hash_bucket[56] + (_DWORD)this) = (int)off_970670;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_970690;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_970580);
}


// ===== 54f4c4 glitch::gui::CGUISpinBox::~CGUISpinBox() =====
void __fastcall glitch::gui::CGUISpinBox::~CGUISpinBox(glitch::gui::CGUISpinBox *this)
{
  glitch::gui::CGUISpinBox::~CGUISpinBox(this);
  LC_API_FREE_0(this);
}


// ===== 54f4e0 glitch::gui::CGUISpinBox::~CGUISpinBox() =====
void __fastcall glitch::gui::CGUISpinBox::~CGUISpinBox(glitch::gui::CGUISpinBox *this, int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  _DWORD *v7; // r3
  char *v8; // r0
  int v9; // r3
  int *v10; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD **)this + 87);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 88);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((_DWORD **)this + 86);
  if ( v7 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
  v8 = *((char **)this + 109);
  if ( v8 != (char *)this + 368 && v8 )
    GlitchFree(v8);
  v9 = a2[1];
  v10 = a2 + 1;
  *(_DWORD *)this = v9;
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 12)) = v10[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v10[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v10 + 1);
}


// ===== 54f5bc glitch::gui::IGUISpinBox::~IGUISpinBox() =====
void __fastcall glitch::gui::IGUISpinBox::~IGUISpinBox(glitch::gui::IGUISpinBox *this)
{
  *(_DWORD *)this = off_970270;
  *((_DWORD *)this + 86) = off_970328;
  *((_DWORD *)this + 87) = off_970348;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_97035C);
  LC_API_FREE_0(this);
}


// ===== 54f618 `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox(glitch::gui::IGUISpinBox *this)
{
  glitch::gui::IGUISpinBox::~IGUISpinBox((glitch::gui::IGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54f628 `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::IGUISpinBox::~IGUISpinBox(glitch::gui::IGUISpinBox *this)
{
  glitch::gui::IGUISpinBox::~IGUISpinBox((glitch::gui::IGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54f638 glitch::gui::CGUISpinBox::setDecimalPlaces(int) =====
int __fastcall glitch::gui::CGUISpinBox::setDecimalPlaces(glitch::gui::CGUISpinBox *this, int a2)
{
  size_t v3; // r0
  size_t v4; // r0
  size_t v5; // r0
  int (__fastcall *v6)(glitch::gui::CGUISpinBox *, int); // r5
  int v7; // r0
  size_t v9; // r0
  wchar_t v10[257]; // [sp+0h] [bp-404h] BYREF

  *((_DWORD *)this + 110) = a2;
  if ( a2 == -1 )
  {
    v9 = wcslen(U"%f");
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)this + 368,
      U"%f",
      &aF_7[v9]);
  }
  else
  {
    swprintf((int)v10, 256, (int)&unk_8BEB70, a2, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5]);
    v3 = wcslen(U"%.");
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)this + 368,
      U"%.",
      &asc_8DEA70[v3]);
    v4 = wcslen(v10);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      (_DWORD *)this + 92,
      v10,
      &v10[v4]);
    v5 = wcslen(U"f");
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      (_DWORD *)this + 92,
      U"f",
      &aF_8[v5]);
  }
  v6 = *(int (__fastcall **)(glitch::gui::CGUISpinBox *, int))(*(_DWORD *)this + 128);
  v7 = (*(int (__fastcall **)(glitch::gui::CGUISpinBox *))(*(_DWORD *)this + 132))(this);
  return v6(this, v7);
}


// ===== 54f72c `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox(glitch::gui::CGUISpinBox *this)
{
  glitch::gui::CGUISpinBox::~CGUISpinBox((glitch::gui::CGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54f73c `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox(glitch::gui::CGUISpinBox *this)
{
  glitch::gui::CGUISpinBox::~CGUISpinBox((glitch::gui::CGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54f74c `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox(glitch::gui::CGUISpinBox *this)
{
  glitch::gui::CGUISpinBox::~CGUISpinBox((glitch::gui::CGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 54f75c `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox() =====
void __fastcall `virtual thunk to'glitch::gui::CGUISpinBox::~CGUISpinBox(glitch::gui::CGUISpinBox *this)
{
  glitch::gui::CGUISpinBox::~CGUISpinBox((glitch::gui::CGUISpinBox *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 54f76c `virtual thunk to'glitch::gui::CGUISpinBox::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUISpinBox::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUISpinBox::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 54f77c `virtual thunk to'glitch::gui::CGUISpinBox::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUISpinBox::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUISpinBox::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 54f78c glitch::gui::IGUISpriteBank::~IGUISpriteBank() =====
void __fastcall glitch::gui::IGUISpriteBank::~IGUISpriteBank(glitch::gui::IGUISpriteBank *this)
{
  ;
}


// ===== 54f790 glitch::gui::CGUISpriteBank::CGUISpriteBank(glitch::gui::IGUIEnvironment *) =====
glitch::gui::CGUISpriteBank *__fastcall glitch::gui::CGUISpriteBank::CGUISpriteBank(
        glitch::gui::CGUISpriteBank *this,
        glitch::gui::IGUIEnvironment *a2)
{
  int v3; // r0

  *(_DWORD *)this = off_9707E0;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = a2;
  if ( a2 )
  {
    v3 = (*(int (__fastcall **)(glitch::gui::IGUIEnvironment *))(*(_DWORD *)a2 + 32))(a2);
    *((_DWORD *)this + 12) = v3;
    if ( v3 )
      ++*(_DWORD *)(v3 + 4);
  }
  return this;
}


// ===== 54f820 glitch::gui::CGUISpriteBank::CGUISpriteBank(glitch::gui::IGUIEnvironment *) =====
glitch::gui::CGUISpriteBank *__fastcall glitch::gui::CGUISpriteBank::CGUISpriteBank(
        glitch::gui::CGUISpriteBank *this,
        glitch::gui::IGUIEnvironment *a2)
{
  int v3; // r0

  *(_DWORD *)this = off_9707E0;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = a2;
  if ( a2 )
  {
    v3 = (*(int (__fastcall **)(glitch::gui::IGUIEnvironment *))(*(_DWORD *)a2 + 32))(a2);
    *((_DWORD *)this + 12) = v3;
    if ( v3 )
      ++*(_DWORD *)(v3 + 4);
  }
  return this;
}


// ===== 54f8b0 glitch::gui::CGUISpriteBank::getPositions(void) =====
char *__fastcall glitch::gui::CGUISpriteBank::getPositions(glitch::gui::CGUISpriteBank *this)
{
  return (char *)this + 20;
}


// ===== 54f8b8 glitch::gui::CGUISpriteBank::getSprites(void) =====
char *__fastcall glitch::gui::CGUISpriteBank::getSprites(glitch::gui::CGUISpriteBank *this)
{
  return (char *)this + 8;
}


// ===== 54f8c0 glitch::gui::CGUISpriteBank::getTextureCount(void) =====
int __fastcall glitch::gui::CGUISpriteBank::getTextureCount(glitch::gui::CGUISpriteBank *this)
{
  return (*((_DWORD *)this + 9) - *((_DWORD *)this + 8)) >> 2;
}


// ===== 54f8d4 glitch::gui::CGUISpriteBank::getTexture(uint) =====
_DWORD *__fastcall glitch::gui::CGUISpriteBank::getTexture(_DWORD *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3
  int v4; // r3

  v3 = *(_DWORD *)(a2 + 32);
  if ( a3 >= (*(_DWORD *)(a2 + 36) - v3) >> 2 )
  {
    *this = 0;
  }
  else
  {
    v4 = *(_DWORD *)(v3 + 4 * a3);
    *this = v4;
    if ( v4 )
      ++*(_DWORD *)(v4 + 4);
  }
  return this;
}


// ===== 54f910 `global constructor keyed to'.._source_glitch_gui_CGUISpriteBank.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUISpriteBank.cpp()
{
  dword_9F667C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6678 = 1056964608;
}


// ===== 54f930 glitch::gui::CGUISpriteBank::draw2DSprite(uint,glitch::core::position2d<int> const&,glitch::core::rect<int> const*,glitch::video::SColor const&,uint,uint,bool,bool) =====
unsigned int __fastcall glitch::gui::CGUISpriteBank::draw2DSprite(
        _DWORD *a1,
        unsigned int a2,
        int *a3,
        int a4,
        void *a5,
        int a6,
        int a7,
        char a8,
        char a9)
{
  unsigned int result; // r0
  int *v12; // r2
  int v13; // r6
  int v14; // r7
  unsigned int v17; // r1
  unsigned int v18; // r1
  unsigned int v19; // r1
  unsigned int v20; // r1
  unsigned int v21; // t0
  int v22; // r3
  int v23; // r2
  unsigned int v24; // r1
  _DWORD *v25; // r5
  int v26; // r6
  int v27; // r4
  int v28; // kr04_4
  unsigned int v29; // r7
  int v30; // r4
  int v31; // [sp+4h] [bp-20h] BYREF
  int v32; // [sp+14h] [bp-10h] BYREF
  int v33; // [sp+18h] [bp-Ch]
  glitch::IReferenceCounted *v34[2]; // [sp+1Ch] [bp-8h] BYREF

  result = a1[2];
  v12 = (int *)(result + 16 * a2);
  v13 = *v12;
  v14 = v12[1];
  if ( *v12 != v14 )
  {
    result = a1[3] - result;
    if ( a2 < (int)result >> 4 )
    {
      v17 = v12[3];
      if ( v17 )
      {
        result = (a7 - a6) / v17;
        v18 = result;
        if ( a8 )
        {
          v19 = (v14 - v13) >> 3;
          v21 = result / v19;
          v20 = result % v19;
          result = v21;
          v17 = 8 * v20;
        }
        else
        {
          v29 = (v14 - v13) >> 3;
          if ( result >= v29 )
            v18 = v29 - 1;
          v17 = 8 * v18;
        }
      }
      v22 = *(_DWORD *)(a1[8] + 4 * *(_DWORD *)(v13 + v17));
      if ( v22 )
      {
        v34[0] = *(glitch::IReferenceCounted **)(a1[8] + 4 * *(_DWORD *)(v13 + v17));
        ++*(_DWORD *)(v22 + 4);
        result = (unsigned int)v34[0];
        if ( v34[0] )
        {
          v23 = a1[5];
          v24 = *(_DWORD *)(*(_DWORD *)(a1[2] + 16 * a2) + v17 + 4);
          if ( v24 >= (a1[6] - v23) >> 4 )
            return glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)result);
          v25 = (_DWORD *)(v23 + 16 * v24);
          if ( a9 )
          {
            v26 = *a3;
            v27 = a1[12];
            v33 = a3[1];
            v32 = v26;
            v28 = v25[3] - v25[1];
            v32 = v26 - (v25[2] - *(_DWORD *)(v23 + 16 * v24)) / 2;
            v33 -= v28 / 2;
            memcpy(&v31, a5, sizeof(v31));
            glitch::video::C2DDriver::draw2DImage(v27, v34, &v32, v25, a4, v31, 1);
          }
          else
          {
            v30 = a1[12];
            memcpy(&v31, a5, sizeof(v31));
            glitch::video::C2DDriver::draw2DImage(v30, v34, a3, v25, a4, v31, 1);
          }
          result = (unsigned int)v34[0];
          if ( v34[0] )
            return glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)result);
        }
      }
    }
  }
  return result;
}


// ===== 54fae8 std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
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


// ===== 54fb2c std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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


// ===== 54fb78 std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void *v4; // r0
  void *v5; // t1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v5 = *((void **)v1 - 4);
      v1 -= 16;
      v4 = v5;
      if ( v5 )
        GlitchFree(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 54fbc0 glitch::gui::CGUISpriteBank::~CGUISpriteBank() =====
void __fastcall glitch::gui::CGUISpriteBank::~CGUISpriteBank(glitch::gui::CGUISpriteBank *this)
{
  int v1; // r1
  int v3; // r0
  unsigned int v4; // r4
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  void *v7; // r0

  v1 = *((_DWORD *)this + 8);
  v3 = *((_DWORD *)this + 9);
  *(_DWORD *)this = off_9707E0;
  if ( (unsigned int)(v3 - v1) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = *(glitch::IReferenceCounted **)(v1 + 4 * v4);
      *(_DWORD *)(v1 + 4 * v4++) = 0;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
      v1 = *((_DWORD *)this + 8);
    }
    while ( v4 < (*((_DWORD *)this + 9) - v1) >> 2 );
  }
  v6 = *((glitch::IReferenceCounted **)this + 12);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 8);
  v7 = *((void **)this + 5);
  if ( v7 )
    GlitchFree(v7);
  std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 2);
}


// ===== 54fc68 glitch::gui::CGUISpriteBank::~CGUISpriteBank() =====
void __fastcall glitch::gui::CGUISpriteBank::~CGUISpriteBank(glitch::gui::CGUISpriteBank *this)
{
  int v1; // r1
  int v3; // r0
  unsigned int v4; // r4
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // r0
  void *v7; // r0

  v1 = *((_DWORD *)this + 8);
  v3 = *((_DWORD *)this + 9);
  *(_DWORD *)this = off_9707E0;
  if ( (unsigned int)(v3 - v1) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = *(glitch::IReferenceCounted **)(v1 + 4 * v4);
      *(_DWORD *)(v1 + 4 * v4++) = 0;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
      v1 = *((_DWORD *)this + 8);
    }
    while ( v4 < (*((_DWORD *)this + 9) - v1) >> 2 );
  }
  v6 = *((glitch::IReferenceCounted **)this + 12);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 8);
  v7 = *((void **)this + 5);
  if ( v7 )
    GlitchFree(v7);
  std::vector<glitch::gui::SGUISprite,glitch::core::SAllocator<glitch::gui::SGUISprite,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 2);
}


// ===== 54fd10 glitch::gui::CGUISpriteBank::~CGUISpriteBank() =====
void __fastcall glitch::gui::CGUISpriteBank::~CGUISpriteBank(glitch::gui::CGUISpriteBank *this)
{
  glitch::gui::CGUISpriteBank::~CGUISpriteBank(this);
  LC_API_FREE_0(this);
}


// ===== 54fd2c glitch::gui::IGUISpriteBank::~IGUISpriteBank() =====
void __fastcall glitch::gui::IGUISpriteBank::~IGUISpriteBank(glitch::gui::IGUISpriteBank *this)
{
  LC_API_FREE_0(this);
}


// ===== 54fd40 std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::ITexture>*,boost::intrusive_ptr<glitch::video::ITexture> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        int *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  size_t v8; // r6
  _DWORD *v9; // r0
  int v10; // r2
  char *v11; // r12
  _DWORD *v12; // r8
  int v13; // r5
  int *v14; // r5
  int v15; // r1
  int v16; // r3
  int v17; // r3
  _DWORD *v18; // r6
  bool v19; // zf
  _DWORD *v20; // r5

  v6 = ((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -1;
  else
    v8 = v7;
  v9 = GlitchAlloc(v8 * 4, 0);
  v11 = (char *)*a1;
  v12 = v9;
  v13 = (a2 - (int)*a1) >> 2;
  if ( v13 > 0 )
  {
    v15 = v13;
    v10 = 0;
    do
    {
      v16 = *(_DWORD *)&v11[v10];
      *(_DWORD *)((char *)v12 + v10) = v16;
      if ( v16 )
        v9 = *(_DWORD **)(v16 + 4);
      v10 += 4;
      if ( v16 )
      {
        v9 = (_DWORD *)((char *)v9 + 1);
        *(_DWORD *)(v16 + 4) = v9;
      }
      --v15;
    }
    while ( v15 );
    v14 = &v12[v13];
  }
  else
  {
    v14 = v9;
  }
  v17 = *a3;
  v18 = &v12[v8];
  v19 = *a3 == 0;
  *v14 = *a3;
  if ( !v19 )
    v10 = *(_DWORD *)(v17 + 4);
  v20 = v14 + 1;
  if ( !v19 )
    *(_DWORD *)(v17 + 4) = v10 + 1;
  std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(a1);
  a1[1] = v20;
  a1[2] = v18;
  *a1 = v12;
}


// ===== 54fe14 glitch::gui::CGUISpriteBank::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
void __fastcall glitch::gui::CGUISpriteBank::addTexture(int a1, int *a2)
{
  int *v2; // r3
  int v3; // r2

  v2 = *(int **)(a1 + 36);
  if ( v2 == *(int **)(a1 + 40) )
  {
    std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (void **)(a1 + 32),
      (int)v2,
      a2);
  }
  else
  {
    v3 = *a2;
    *v2 = *a2;
    if ( v3 )
      ++*(_DWORD *)(v3 + 4);
    *(_DWORD *)(a1 + 36) += 4;
  }
}


// ===== 54fe5c glitch::gui::CGUISpriteBank::setTexture(uint,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUISpriteBank::setTexture(_DWORD *a1, unsigned int a2, int *a3)
{
  void **v6; // r8
  _DWORD *v7; // r1
  int v8; // r3
  _DWORD *v9; // r3
  int v10; // r2
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v12; // [sp+4h] [bp+0h] BYREF

  v6 = (void **)(a1 + 8);
  while ( 1 )
  {
    v7 = (_DWORD *)a1[9];
    v8 = a1[8];
    if ( a2 <= ((int)v7 - v8) >> 2 )
      break;
    while ( 1 )
    {
      v9 = (_DWORD *)a1[10];
      v12 = nullptr;
      if ( v7 == v9 )
      {
        std::vector<boost::intrusive_ptr<glitch::video::ITexture>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          v6,
          (int)v7,
          (int *)&v12);
      }
      else
      {
        *v7 = 0;
        a1[9] += 4;
      }
      if ( !v12 )
        break;
      glitch::IReferenceCounted::drop(v12);
      v7 = (_DWORD *)a1[9];
      v8 = a1[8];
      if ( a2 <= ((int)v7 - v8) >> 2 )
        goto LABEL_7;
    }
  }
LABEL_7:
  v10 = *a3;
  if ( *a3 )
    ++*(_DWORD *)(v10 + 4);
  result = *(glitch::IReferenceCounted **)(v8 + 4 * a2);
  *(_DWORD *)(v8 + 4 * a2) = v10;
  if ( result )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  return result;
}


// ===== 54ff14 glitch::gui::CGUIStaticText::getOverrideFont(void) =====
int __fastcall glitch::gui::CGUIStaticText::getOverrideFont(glitch::gui::CGUIStaticText *this)
{
  return *((_DWORD *)this + 95);
}


// ===== 54ff1c glitch::gui::CGUIStaticText::setOverrideColor(glitch::video::SColor) =====
int __fastcall glitch::gui::CGUIStaticText::setOverrideColor(int result, int a2)
{
  *(_BYTE *)(result + 368) = 1;
  *(_DWORD *)(result + 371) = a2;
  return result;
}


// ===== 54ff54 glitch::gui::CGUIStaticText::setBackgroundColor(glitch::video::SColor) =====
int __fastcall glitch::gui::CGUIStaticText::setBackgroundColor(int result, int a2)
{
  *(_BYTE *)(result + 370) = 1;
  *(_DWORD *)(result + 375) = a2;
  return result;
}


// ===== 54ff8c glitch::gui::CGUIStaticText::setDrawBackground(bool) =====
int __fastcall glitch::gui::CGUIStaticText::setDrawBackground(int this, bool a2)
{
  *(_BYTE *)(this + 370) = a2;
  return this;
}


// ===== 54ff94 glitch::gui::CGUIStaticText::setDrawBorder(bool) =====
int __fastcall glitch::gui::CGUIStaticText::setDrawBorder(int this, bool a2)
{
  *(_BYTE *)(this + 356) = a2;
  return this;
}


// ===== 54ff9c glitch::gui::CGUIStaticText::setTextAlignment(glitch::gui::EGUI_ALIGNMENT,glitch::gui::EGUI_ALIGNMENT) =====
int __fastcall glitch::gui::CGUIStaticText::setTextAlignment(int result, int a2, int a3)
{
  *(_DWORD *)(result + 364) = a3;
  *(_DWORD *)(result + 360) = a2;
  return result;
}


// ===== 54ffa8 glitch::gui::CGUIStaticText::getOverrideColor(void) =====
char *__fastcall glitch::gui::CGUIStaticText::getOverrideColor(glitch::gui::CGUIStaticText *this)
{
  return (char *)this + 371;
}


// ===== 54ffb4 glitch::gui::CGUIStaticText::enableOverrideColor(bool) =====
int __fastcall glitch::gui::CGUIStaticText::enableOverrideColor(int this, bool a2)
{
  *(_BYTE *)(this + 368) = a2;
  return this;
}


// ===== 54ffbc glitch::gui::CGUIStaticText::isOverrideColorEnabled(void) =====
int __fastcall glitch::gui::CGUIStaticText::isOverrideColorEnabled(glitch::gui::CGUIStaticText *this)
{
  return *((unsigned __int8 *)this + 368);
}


// ===== 54ffc4 glitch::gui::CGUIStaticText::isWordWrapEnabled(void) =====
int __fastcall glitch::gui::CGUIStaticText::isWordWrapEnabled(glitch::gui::CGUIStaticText *this)
{
  return *((unsigned __int8 *)this + 369);
}


// ===== 54ffcc glitch::gui::CGUIStaticText::getTextHeight(void) =====
int __fastcall glitch::gui::CGUIStaticText::getTextHeight(glitch::gui::CGUIStaticText *this)
{
  int v2; // r0
  int v3; // r4
  int v4; // r3
  int v5; // r0
  int v6; // r4
  int result; // r0
  _DWORD v8[3]; // [sp+0h] [bp-Ch] BYREF

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( !v2 )
    return 0;
  v3 = *((_DWORD *)this + 95);
  if ( !v3 )
  {
    v3 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 40))(v2, 0);
    if ( !v3 )
      return 0;
  }
  (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)v3 + 28))(v8, v3, "A");
  v4 = *(_DWORD *)v3;
  v5 = v3;
  v6 = v8[1];
  result = (*(int (__fastcall **)(int))(v4 + 60))(v5) + v6;
  if ( *((_BYTE *)this + 369) )
    result *= 954437177 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 3);
  return result;
}


// ===== 55009c glitch::gui::CGUIStaticText::getTextWidth(void) =====
int __fastcall glitch::gui::CGUIStaticText::getTextWidth(glitch::gui::CGUIStaticText *this)
{
  int v1; // r7
  int v3; // r2
  int v4; // r4
  unsigned int v5; // r5
  int v6; // r8
  int v8; // r0
  int v9; // [sp+0h] [bp-14h] BYREF
  _DWORD v10[3]; // [sp+8h] [bp-Ch] BYREF

  v1 = *((_DWORD *)this + 95);
  if ( !v1 )
  {
    v8 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
    if ( !v8 )
      return 0;
    v1 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v8 + 40))(v8, 0);
    if ( !v1 )
      return 0;
  }
  if ( *((_BYTE *)this + 369) )
  {
    v3 = *((_DWORD *)this + 86);
    if ( !(954437177 * ((*((_DWORD *)this + 87) - v3) >> 3)) )
      return 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*(_DWORD *)v1 + 28))(v10, v1, *(_DWORD *)(v3 + v4 + 68));
      v3 = *((_DWORD *)this + 86);
      ++v5;
      if ( v6 < v10[0] )
        v6 = v10[0];
      v4 += 72;
    }
    while ( v5 < 954437177 * ((*((_DWORD *)this + 87) - v3) >> 3) );
  }
  else
  {
    (*(void (__fastcall **)(int *, int, _DWORD))(*(_DWORD *)v1 + 28))(&v9, v1, *((_DWORD *)this + 57));
    return v9;
  }
  return v6;
}


// ===== 5501d0 `global constructor keyed to'.._source_glitch_gui_CGUIStaticText.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIStaticText.cpp()
{
  dword_9F6688 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6684 = 1056964608;
}


// ===== 5501f0 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(uint) =====
void __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
        _DWORD *a1,
        int a2)
{
  int v2; // r5
  _DWORD *v4; // r6
  int v5; // r0
  int v6; // r7
  _DWORD *v7; // r7
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // r0

  v2 = a2;
  v4 = GlitchAlloc(4 * a2, 0);
  v5 = a1[17];
  v6 = (a1[16] - v5) >> 2;
  if ( v6 > 0 )
  {
    v8 = (a1[16] - v5) >> 2;
    v9 = 0;
    do
    {
      --v8;
      v4[v9] = *(_DWORD *)(v5 + v9 * 4);
      ++v9;
    }
    while ( v8 );
    v7 = &v4[v6];
  }
  else
  {
    v7 = v4;
  }
  *v7 = 0;
  v10 = (_DWORD *)a1[17];
  if ( v10 != a1 && v10 )
    GlitchFree(v10);
  a1[17] = v4;
  *a1 = &v4[v2];
  a1[16] = v7;
}


// ===== 55027c std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(wchar_t) =====
void __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  int *v2; // r3
  int v3; // r5
  bool v5; // zf
  int v6; // r3
  int v7; // r1
  int v8; // r1
  unsigned int size; // r0

  v2 = (int *)a1[17];
  v3 = a2;
  v5 = v2 == a1;
  if ( v2 != a1 )
    a2 = *a1;
  v6 = a1[16];
  if ( v5 )
    v7 = (v6 - (int)a1) >> 2;
  else
    v7 = a2 - v6;
  if ( v5 )
    v8 = 16 - v7;
  else
    v8 = v7 >> 2;
  if ( v8 == 1 )
  {
    size = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             (int)a1,
             1u);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
      a1,
      size);
    v6 = a1[16];
  }
  *(_DWORD *)(v6 + 4) = 0;
  *(_DWORD *)a1[16] = v3;
  a1[16] += 4;
}


// ===== 5502f0 std::priv::__ufill<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,int>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ufill<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,int>(
        _DWORD *result,
        int a2,
        int a3)
{
  int v4; // r5
  _DWORD *i; // r4

  v4 = 954437177 * ((a2 - (int)result) >> 3);
  if ( v4 > 0 )
  {
    for ( i = result; ; i += 18 )
    {
      i[16] = i;
      i[17] = i;
      result = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i,
                 *(_BYTE **)(a3 + 68),
                 *(_BYTE **)(a3 + 64));
      if ( !--v4 )
        break;
    }
  }
  return result;
}


// ===== 550354 glitch::gui::IGUIStaticText::IGUIStaticText(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIStaticText::IGUIStaticText(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  _DWORD *v13; // r9
  int v14; // r0
  _DWORD *v17; // r3
  int v18; // r0
  int v19; // r12
  int v20; // r10
  int v21; // r8
  int v22; // r2
  int v23; // r1
  int v24; // r5
  int v25; // r7
  int v26; // r0
  int v27; // r1
  int v28; // r1
  int v29; // r2
  int v30; // r1
  int v31; // r3
  int v32; // r1
  bool v33; // cc
  int v34; // r3
  int v35; // r3
  int v37; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v13 = (_DWORD *)(a1 + 160);
  v37 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v14 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v14;
  *(_DWORD *)(a1 + 28) = v14;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v37;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v13,
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 16;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v17 = *(_DWORD **)(a1 + 36);
  if ( v17 )
  {
    v18 = v17[15];
    v19 = v17[14];
    v20 = v17[16];
    v21 = v17[17];
    v22 = v18 + *(_DWORD *)(a1 + 68);
    v23 = v19 + *(_DWORD *)(a1 + 64);
    v24 = v18 + *(_DWORD *)(a1 + 60);
    v25 = v19 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v24;
    *(_DWORD *)(a1 + 84) = v22;
    *(_DWORD *)(a1 + 72) = v25;
    *(_DWORD *)(a1 + 80) = v23;
    *(_DWORD *)(a1 + 68) = v22;
    *(_DWORD *)(a1 + 112) = v20;
    *(_DWORD *)(a1 + 116) = v21;
    *(_DWORD *)(a1 + 104) = v19;
    *(_DWORD *)(a1 + 108) = v18;
    *(_DWORD *)(a1 + 56) = v25;
    *(_DWORD *)(a1 + 60) = v24;
    *(_DWORD *)(a1 + 64) = v23;
    v26 = v17[20];
    if ( v23 > v26 )
      *(_DWORD *)(a1 + 80) = v26;
    v27 = v17[21];
    if ( v22 > v27 )
      *(_DWORD *)(a1 + 84) = v27;
    v28 = v17[18];
    v29 = *(_DWORD *)(a1 + 72);
    if ( v28 > v29 )
    {
      *(_DWORD *)(a1 + 72) = v28;
      v29 = v28;
    }
    v30 = v17[19];
    v31 = *(_DWORD *)(a1 + 76);
    if ( v30 > v31 )
    {
      *(_DWORD *)(a1 + 76) = v30;
      v31 = v30;
    }
    v32 = *(_DWORD *)(a1 + 84);
    v33 = v32 < v31;
    v34 = *(_DWORD *)(a1 + 80);
    if ( v33 )
      *(_DWORD *)(a1 + 76) = v32;
    if ( v29 > v34 )
      *(_DWORD *)(a1 + 72) = v34;
  }
  v35 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v35 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 55061c glitch::gui::CGUIStaticText::CGUIStaticText(wchar_t const*,bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int> const&,bool) =====
int __fastcall glitch::gui::CGUIStaticText::CGUIStaticText(
        int a1,
        const wchar_t *a2,
        char a3,
        int a4,
        int a5,
        int a6,
        int *a7,
        char a8)
{
  int v9; // r8
  int v10; // r10
  int v11; // r11
  size_t v15; // r0
  int v16; // r0
  int v18[5]; // [sp+8h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 396) = 1;
  *(_DWORD *)(a1 + 392) = off_95B720;
  *(_DWORD *)(a1 + 388) = off_970D54;
  *(_DWORD *)&byte_4[a1 + 388] = off_970D74;
  v9 = a7[1];
  v10 = a7[3];
  v11 = a7[2];
  v18[0] = *a7;
  v18[1] = v9;
  v18[2] = v11;
  v18[3] = v10;
  glitch::gui::IGUIStaticText::IGUIStaticText(a1, (int *)off_970B44, a4, a5, a6, v18);
  *(_DWORD *)a1 = off_970A48;
  *(_DWORD *)(a1 + 388) = off_970B14;
  *(_DWORD *)(a1 + 392) = off_970B34;
  *(_BYTE *)(a1 + 356) = a3;
  *(_BYTE *)(a1 + 370) = a8;
  *(_BYTE *)(a1 + 373) = -1;
  *(_BYTE *)(a1 + 377) = -46;
  *(_BYTE *)(a1 + 378) = 101;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 368) = 0;
  *(_BYTE *)(a1 + 369) = 0;
  *(_BYTE *)(a1 + 371) = -1;
  *(_BYTE *)(a1 + 372) = -1;
  *(_BYTE *)(a1 + 374) = 101;
  *(_BYTE *)(a1 + 375) = -46;
  *(_BYTE *)(a1 + 376) = -46;
  *(_DWORD *)(a1 + 380) = 0;
  if ( !a2 )
    a2 = dword_8BEC18;
  v15 = wcslen(a2);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 160,
    a2,
    &a2[v15]);
  if ( a4 && (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 56))(a4) )
  {
    v16 = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 56))(a4);
    *(_DWORD *)(a1 + 375) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v16 + 16))(v16, 2);
  }
  return a1;
}


// ===== 5507e4 glitch::gui::CGUIStaticText::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIStaticText::serializeAttributes(int a1, int a2)
{
  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Border",
    *(unsigned __int8 *)(a1 + 356),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "OverrideColorEnabled",
    *(unsigned __int8 *)(a1 + 368),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "WordWrap",
    *(unsigned __int8 *)(a1 + 369),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Background",
    *(unsigned __int8 *)(a1 + 370),
    0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 280))(
    a2,
    "OverrideColor",
    *(unsigned __int8 *)(a1 + 371)
  | (*(unsigned __int8 *)(a1 + 372) << 8)
  | (*(unsigned __int8 *)(a1 + 373) << 16)
  | (*(unsigned __int8 *)(a1 + 374) << 24),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "HTextAlign",
    *(_DWORD *)(a1 + 360),
    glitch::gui::GUIAlignmentNames,
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
           a2,
           "VTextAlign",
           *(_DWORD *)(a1 + 364),
           glitch::gui::GUIAlignmentNames,
           0);
}


// ===== 550930 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void ***a1,
        int a2,
        int a3)
{
  unsigned int v5; // r0
  unsigned int v6; // r2
  size_t v7; // r11
  void **v8; // r0
  void **v9; // r12
  void **v10; // r10
  int v11; // r3
  int v12; // r9
  void **v13; // r9
  int v14; // r5
  void **v15; // lr
  void **v16; // r3
  void *v17; // r1
  void *v18; // r2
  void *v19; // r3
  void *v20; // r1
  void *v21; // r2
  void *v22; // r3
  void *v23; // r1
  void *v24; // r2
  void *v25; // r3
  void *v26; // r1
  void *v27; // r2
  void *v28; // r3
  _BYTE *v29; // r2
  _BYTE *v30; // r3
  void **v31; // r0
  void **v32; // r9
  void **v33; // r5
  void **v34; // r6
  void **v35; // r3

  v5 = 954437177 * (((char *)a1[1] - (char *)*a1) >> 3);
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 <= 0x38E38E3 && v5 <= v6 )
    v7 = 18 * v6;
  else
    v7 = -10;
  v8 = (void **)GlitchAlloc(v7 * 4, 0);
  v9 = *a1;
  v10 = v8;
  v11 = (a2 - (int)*a1) >> 3;
  v12 = 954437177 * v11;
  if ( 954437177 * v11 <= 0 )
  {
    v13 = v8;
    goto LABEL_15;
  }
  v14 = 954437177 * v11;
  v15 = v8;
  while ( 1 )
  {
    v15[17] = v9[17];
    v16 = (void **)v9[17];
    if ( v16 == v9 )
      break;
    v15[17] = v16;
    --v14;
    v15[16] = v9[16];
    *v15 = *v9;
    v9[17] = nullptr;
    v15 += 18;
    if ( !v14 )
      goto LABEL_14;
LABEL_11:
    v9 += 18;
  }
  v17 = v9[1];
  v18 = v9[2];
  v19 = v9[3];
  *v15 = *v9;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v20 = v9[5];
  v21 = v9[6];
  v22 = v9[7];
  v15[4] = v9[4];
  v15[5] = v20;
  v15[6] = v21;
  v15[7] = v22;
  v23 = v9[9];
  v24 = v9[10];
  v25 = v9[11];
  v15[8] = v9[8];
  v15[9] = v23;
  v15[10] = v24;
  v15[11] = v25;
  v26 = v9[13];
  v27 = v9[14];
  v28 = v9[15];
  v15[12] = v9[12];
  v15[13] = v26;
  v15[14] = v27;
  v15[15] = v28;
  v29 = v9[16];
  v30 = v9[17];
  --v14;
  v15[17] = v15;
  v15[16] = (char *)v15 + ((v29 - v30) & 0xFFFFFFFC);
  v15 += 18;
  if ( v14 )
    goto LABEL_11;
LABEL_14:
  v13 = &v8[18 * v12];
LABEL_15:
  v13[16] = v13;
  v13[17] = v13;
  v31 = v13;
  v32 = v13 + 18;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v31,
    *(_BYTE **)(a3 + 68),
    *(_BYTE **)(a3 + 64));
  v33 = a1[1];
  v34 = *a1;
  if ( v33 != *a1 )
  {
    do
    {
      v33 -= 18;
      v35 = (void **)v33[17];
      if ( v35 != v33 && v35 )
        GlitchFree(v33[17]);
    }
    while ( v34 != v33 );
    v34 = *a1;
  }
  GlitchFree(v34);
  a1[1] = v32;
  a1[2] = &v10[v7];
  *a1 = v10;
}


// ===== 550b08 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 18;
    v4 = (void **)v1[17];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[17]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 550b60 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::__true_type const&) =====
_DWORD *__fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  _DWORD *v3; // r7
  bool v5; // zf
  _DWORD *v6; // r6
  _DWORD *v8; // r5
  _DWORD *v9; // r4
  bool v10; // zf
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r2
  int v26; // r3
  bool v27; // zf
  _DWORD *v28; // r5
  _DWORD *v29; // r3
  _DWORD *v30; // r3
  _DWORD *v31; // r6
  _DWORD *v33; // r3
  _DWORD *v34; // r3
  int v35; // r1
  int v36; // r2
  int v37; // r3
  int v38; // r1
  int v39; // r2
  int v40; // r3
  int v41; // r1
  int v42; // r2
  int v43; // r3
  int v44; // r1
  int v45; // r2
  int v46; // r3
  int v47; // r2
  int v48; // r3
  _DWORD *v49; // r3
  _BOOL4 v50; // [sp+4h] [bp-8h]

  v3 = *(_DWORD **)(a1 + 4);
  v5 = a2 == a3;
  if ( a2 != a3 )
    v5 = a3 == v3;
  v6 = a3;
  v50 = a3 != v3;
  if ( v5 )
  {
    v8 = a3;
    v9 = a2;
  }
  else
  {
    v8 = a3;
    v9 = a2;
    do
    {
      while ( 1 )
      {
        v11 = (_DWORD *)v9[17];
        if ( v11 != v9 && v11 )
          GlitchFree((void *)v9[17]);
        v9[17] = v8[17];
        v12 = (_DWORD *)v8[17];
        if ( v12 != v8 )
          break;
        v13 = v8[1];
        v14 = v8[2];
        v15 = v8[3];
        *v9 = *v8;
        v9[1] = v13;
        v9[2] = v14;
        v9[3] = v15;
        v16 = v8[5];
        v17 = v8[6];
        v18 = v8[7];
        v9[4] = v8[4];
        v9[5] = v16;
        v9[6] = v17;
        v9[7] = v18;
        v19 = v8[9];
        v20 = v8[10];
        v21 = v8[11];
        v9[8] = v8[8];
        v9[9] = v19;
        v9[10] = v20;
        v9[11] = v21;
        v22 = v8[13];
        v23 = v8[14];
        v24 = v8[15];
        v9[12] = v8[12];
        v9[13] = v22;
        v9[14] = v23;
        v9[15] = v24;
        v25 = v8[16];
        v26 = v8[17];
        v9[17] = v9;
        v8 += 18;
        v9[16] = (char *)v9 + ((v25 - v26) & 0xFFFFFFFC);
        v9 += 18;
        v27 = v8 == v3;
        if ( v8 != v3 )
          v27 = v6 == v9;
        if ( v27 )
          goto LABEL_17;
      }
      v9[17] = v12;
      v9[16] = v8[16];
      *v9 = *v8;
      v8[17] = 0;
      v9 += 18;
      v8 += 18;
      v10 = v8 == v3;
      if ( v8 != v3 )
        v10 = v6 == v9;
    }
    while ( !v10 );
  }
LABEL_17:
  if ( v9 == v6 )
  {
    for ( ; v8 != v3; v9 += 18 )
    {
      while ( 1 )
      {
        v33 = (_DWORD *)v9[17];
        if ( v33 != v9 && v33 )
          GlitchFree((void *)v9[17]);
        v9[17] = v8[17];
        v34 = (_DWORD *)v8[17];
        if ( v34 == v8 )
          break;
        v9[17] = v34;
        v9[16] = v8[16];
        *v9 = *v8;
        v8[17] = 0;
        v8 += 18;
        v9 += 18;
        if ( v8 == v3 )
          goto LABEL_39;
      }
      v35 = v8[1];
      v36 = v8[2];
      v37 = v8[3];
      *v9 = *v8;
      v9[1] = v35;
      v9[2] = v36;
      v9[3] = v37;
      v38 = v8[5];
      v39 = v8[6];
      v40 = v8[7];
      v9[4] = v8[4];
      v9[5] = v38;
      v9[6] = v39;
      v9[7] = v40;
      v41 = v8[9];
      v42 = v8[10];
      v43 = v8[11];
      v9[8] = v8[8];
      v9[9] = v41;
      v9[10] = v42;
      v9[11] = v43;
      v44 = v8[13];
      v45 = v8[14];
      v46 = v8[15];
      v9[12] = v8[12];
      v9[13] = v44;
      v9[14] = v45;
      v9[15] = v46;
      v47 = v8[16];
      v48 = v8[17];
      v8 += 18;
      v9[17] = v9;
      v9[16] = (char *)v9 + ((v47 - v48) & 0xFFFFFFFC);
    }
LABEL_39:
    v31 = v9;
    while ( v9 != v8 )
    {
      v49 = (_DWORD *)v9[17];
      v5 = v49 == v9;
      v9 += 18;
      if ( !v5 && v49 )
        GlitchFree(v49);
    }
  }
  else
  {
    v28 = v9;
    do
    {
      v29 = (_DWORD *)v28[17];
      v5 = v29 == v28;
      v28 += 18;
      if ( !v5 && v29 )
        GlitchFree(v29);
    }
    while ( v6 != v28 );
    if ( v50 )
    {
      do
      {
        v30 = (_DWORD *)v6[17];
        v5 = v30 == v6;
        v6 += 18;
        if ( !v5 && v30 )
          GlitchFree(v30);
      }
      while ( v3 != v6 );
    }
    v31 = v9;
  }
  *(_DWORD *)(a1 + 4) = v31;
  return a2;
}


// ===== 550dcc glitch::gui::CGUIStaticText::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUIStaticText::deserializeAttributes(int a1, int a2)
{
  int v4; // r0
  float v5; // r2
  void (__fastcall *v6)(int, int); // r6
  int v7; // r0
  void (__fastcall *v8)(int, int); // r6
  int v9; // r0
  char v10; // r0
  float v11; // r12
  int (__fastcall *v12)(int, int, int); // r7
  int v13; // r8
  int v14; // r0

  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  *(_BYTE *)(a1 + 356) = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 228))(a2, "Border");
  v4 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "OverrideColor");
  *(_BYTE *)(a1 + 373) = BYTE2(v4);
  v5 = *(float *)a1;
  *(_WORD *)(a1 + 371) = v4;
  *(_BYTE *)(a1 + 374) = HIBYTE(v4);
  v6 = *(void (__fastcall **)(int, int))(LODWORD(v5) + 140);
  v7 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "OverrideColorEnabled");
  v6(a1, v7);
  v8 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 164);
  v9 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "WordWrap");
  v8(a1, v9);
  v10 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "Background");
  v11 = *(float *)a1;
  *(_BYTE *)(a1 + 370) = v10;
  v12 = *(int (__fastcall **)(int, int, int))(LODWORD(v11) + 160);
  v13 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "HTextAlign",
          glitch::gui::GUIAlignmentNames);
  v14 = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
          a2,
          "VTextAlign",
          glitch::gui::GUIAlignmentNames);
  return v12(a1, v13, v14);
}


// ===== 550f24 glitch::gui::IGUIStaticText::~IGUIStaticText() =====
void __fastcall glitch::gui::IGUIStaticText::~IGUIStaticText(glitch::gui::IGUIStaticText *this)
{
  *(_DWORD *)this = off_970818;
  *((_DWORD *)this + 86) = off_9708E4;
  *((_DWORD *)this + 87) = off_970904;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_970914);
}


// ===== 550f78 `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText(glitch::gui::IGUIStaticText *this)
{
  glitch::gui::IGUIStaticText::~IGUIStaticText((glitch::gui::IGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 550f88 `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText(glitch::gui::IGUIStaticText *this)
{
  glitch::gui::IGUIStaticText::~IGUIStaticText((glitch::gui::IGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 550f98 glitch::gui::CGUIStaticText::~CGUIStaticText() =====
void __fastcall glitch::gui::CGUIStaticText::~CGUIStaticText(glitch::gui::CGUIStaticText *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 95);
  *(_DWORD *)this = off_970A48;
  *((_DWORD *)this + 97) = off_970B14;
  *((_DWORD *)this + 98) = off_970B34;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 86);
  *(_DWORD *)this = off_970B80;
  *(int *)((char *)&elf_hash_bucket[42] + (_DWORD)this) = (int)off_970C4C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_970C6C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_970B48);
}


// ===== 55102c glitch::gui::CGUIStaticText::~CGUIStaticText() =====
void __fastcall glitch::gui::CGUIStaticText::~CGUIStaticText(glitch::gui::CGUIStaticText *this)
{
  glitch::gui::CGUIStaticText::~CGUIStaticText(this);
  LC_API_FREE_0(this);
}


// ===== 551048 glitch::gui::CGUIStaticText::~CGUIStaticText() =====
void __fastcall glitch::gui::CGUIStaticText::~CGUIStaticText(glitch::gui::CGUIStaticText *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r3
  int *v7; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((glitch::IReferenceCounted **)this + 95);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 86);
  v6 = a2[1];
  v7 = a2 + 1;
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 12)) = v7[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v7[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v7 + 1);
}


// ===== 5510cc glitch::gui::IGUIStaticText::~IGUIStaticText() =====
void __fastcall glitch::gui::IGUIStaticText::~IGUIStaticText(glitch::gui::IGUIStaticText *this)
{
  *(_DWORD *)this = off_970818;
  *((_DWORD *)this + 86) = off_9708E4;
  *((_DWORD *)this + 87) = off_970904;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_970914);
  LC_API_FREE_0(this);
}


// ===== 551128 `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText(glitch::gui::IGUIStaticText *this)
{
  glitch::gui::IGUIStaticText::~IGUIStaticText((glitch::gui::IGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 551138 `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIStaticText::~IGUIStaticText(glitch::gui::IGUIStaticText *this)
{
  glitch::gui::IGUIStaticText::~IGUIStaticText((glitch::gui::IGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 551148 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
void __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        unsigned int a2)
{
  _DWORD *v2; // r4
  _BYTE *v4; // r2
  _BYTE *v5; // r1
  void *v6[17]; // [sp+0h] [bp-48h] BYREF
  void *p; // [sp+44h] [bp-4h]

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    if ( a2 < *(_DWORD *)a1 || (unsigned int)v2 <= a2 )
    {
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void ***)a1,
        *(_DWORD *)(a1 + 4),
        a2);
    }
    else
    {
      v4 = *(_BYTE **)(a2 + 64);
      v5 = *(_BYTE **)(a2 + 68);
      v6[16] = v6;
      p = v6;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v6,
        v5,
        v4);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void ***)a1,
        (int)v2,
        (int)v6);
      if ( p != v6 )
      {
        if ( p )
          GlitchFree(p);
      }
    }
  }
  else
  {
    v2[16] = v2;
    v2[17] = v2;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 68),
      *(_BYTE **)(a2 + 64));
    *(_DWORD *)(a1 + 4) += 72;
  }
}


// ===== 551204 glitch::gui::CGUIStaticText::breakText(void) =====
void __fastcall glitch::gui::CGUIStaticText::breakText(glitch::gui::CGUIStaticText *this)
{
  int v2; // r0
  int v3; // r5
  _DWORD *v4; // r1
  _DWORD *v5; // r2
  int v6; // r6
  int v7; // r3
  unsigned int v8; // r7
  int v9; // r4
  signed int v10; // r5
  bool v11; // zf
  int v12; // r9
  int v13; // r12
  size_t v14; // r2
  size_t v15; // r0
  size_t v16; // r0
  size_t v17; // r0
  size_t v18; // r0
  size_t v19; // r0
  unsigned int v20; // r2
  size_t v21; // r0
  int v22; // [sp+0h] [bp-184h]
  int v23; // [sp+0h] [bp-184h]
  int v24; // [sp+0h] [bp-184h]
  int v25; // [sp+8h] [bp-17Ch]
  int v26; // [sp+Ch] [bp-178h]
  glitch::gui::CGUIStaticText *i; // [sp+14h] [bp-170h]
  int v28; // [sp+18h] [bp-16Ch]
  int v29; // [sp+1Ch] [bp-168h]
  char *v30; // [sp+20h] [bp-164h]
  int v31; // [sp+24h] [bp-160h]
  int v32; // [sp+28h] [bp-15Ch]
  char *v33; // [sp+38h] [bp-14Ch]
  int v34[17]; // [sp+44h] [bp-140h] BYREF
  void *v35; // [sp+88h] [bp-FCh]
  int v36[16]; // [sp+8Ch] [bp-F8h] BYREF
  char *v37; // [sp+CCh] [bp-B8h]
  void *p; // [sp+D0h] [bp-B4h]
  int v39[16]; // [sp+D4h] [bp-B0h] BYREF
  char *v40; // [sp+114h] [bp-70h]
  void *v41; // [sp+118h] [bp-6Ch]
  _DWORD v42[16]; // [sp+11Ch] [bp-68h] BYREF
  _DWORD *v43; // [sp+15Ch] [bp-28h]
  void *v44; // [sp+160h] [bp-24h]
  int v45; // [sp+164h] [bp-20h] BYREF
  _DWORD v46[2]; // [sp+16Ch] [bp-18h] BYREF
  _DWORD v47[2]; // [sp+174h] [bp-10h] BYREF

  v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  v3 = v2;
  if ( *((_BYTE *)this + 369) && v2 )
  {
    v4 = *((_DWORD **)this + 86);
    v5 = *((_DWORD **)this + 87);
    v30 = (char *)this + 344;
    if ( v4 != v5 )
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)this + 344,
        v4,
        v5);
    v28 = *((_DWORD *)this + 95);
    if ( v28 || (v28 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 40))(v3)) != 0 )
    {
      *((_DWORD *)this + 96) = v28;
      v43 = v42;
      v44 = v42;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v42,
        0x10u);
      v6 = 0;
      *v43 = 0;
      v40 = (char *)v39;
      v41 = v39;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v39,
        0x10u);
      *(_DWORD *)v40 = 0;
      v37 = (char *)v36;
      p = v36;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v36,
        0x10u);
      *(_DWORD *)v37 = 0;
      v7 = *((_DWORD *)this + 57);
      v25 = (*((_DWORD *)this + 56) - v7) >> 2;
      v32 = *((_DWORD *)this + 12) - 6 - *((_DWORD *)this + 10);
      if ( v25 > 0 )
      {
        v33 = (char *)this + 160;
        v8 = 1;
        v26 = 0;
        v29 = v25 - 1;
        for ( i = this; ; v7 = *((_DWORD *)i + 57) )
        {
          v9 = *(_DWORD *)(v7 + 4 * v6);
          if ( v9 == 13 )
            break;
          if ( v9 == 10 )
          {
            v10 = v8;
            goto LABEL_41;
          }
          v11 = v9 == 32;
          if ( v9 != 32 )
            v11 = v9 == 45;
          if ( v11 )
          {
            v10 = v8;
            v12 = 0;
          }
          else
          {
            v12 = 0;
            if ( v9 )
            {
              if ( v29 != v6 )
              {
                std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
                  v39,
                  *(_DWORD *)(v7 + 4 * v6));
                v10 = v8;
                goto LABEL_44;
              }
              v10 = v8;
            }
            else
            {
              v10 = v8;
              v12 = 0;
            }
          }
          if ( (unsigned int)(v40 - (_BYTE *)v41) >> 2 )
          {
LABEL_21:
            (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)v28 + 28))(v47);
            v22 = v47[0];
            (*(void (__fastcall **)(_DWORD *, int, void *))(*(_DWORD *)v28 + 28))(v46, v28, v41);
            v13 = v22;
            v31 = v46[0];
            if ( v6 != v29 )
              goto LABEL_22;
            goto LABEL_49;
          }
LABEL_42:
          if ( v6 != v29 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
              v36,
              v9);
            if ( v12 )
              goto LABEL_26;
            goto LABEL_44;
          }
          (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)v28 + 28))(v47);
          v23 = v47[0];
          (*(void (__fastcall **)(_DWORD *, int, void *))(*(_DWORD *)v28 + 28))(v46, v28, v41);
          v13 = v23;
          v31 = v46[0];
LABEL_49:
          v24 = v13;
          v34[16] = (int)v34;
          v35 = v34;
          v21 = wcslen(dword_8BEC18);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
            v34,
            dword_8BEC18,
            &dword_8BEC18[v21]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v34,
            v9);
          (*(void (__fastcall **)(int *, int, void *))(*(_DWORD *)v28 + 28))(&v45, v28, v35);
          v13 = v24;
          v31 += v45;
          if ( v35 != v34 && v35 )
          {
            GlitchFree(v35);
            v13 = v24;
          }
LABEL_22:
          v26 += v31 + v13;
          if ( v32 > v26 )
          {
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
              v42,
              p,
              v37);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
              v42,
              v41,
              v40);
          }
          else
          {
            v14 = wcslen(U"-");
            if ( v14 == (v37 - (_BYTE *)p) >> 2 && !wmemcmp((const wchar_t *)p, U"-", v14) )
              std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
                v42,
                p,
                v37);
            std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
              (int)v30,
              (unsigned int)v42);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              (int)v42,
              (const wchar_t *)v41,
              v40);
            v26 = v31;
          }
          v15 = wcslen(dword_8BEC18);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            (int)v39,
            dword_8BEC18,
            &dword_8BEC18[v15]);
          v16 = wcslen(dword_8BEC18);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            (int)v36,
            dword_8BEC18,
            &dword_8BEC18[v16]);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v36,
            v9);
          if ( v12 )
          {
LABEL_26:
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
              v42,
              p,
              v37);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
              v42,
              v41,
              v40);
            std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
              (int)v30,
              (unsigned int)v42);
            v17 = wcslen(dword_8BEC18);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              (int)v42,
              dword_8BEC18,
              &dword_8BEC18[v17]);
            v18 = wcslen(dword_8BEC18);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              (int)v39,
              dword_8BEC18,
              &dword_8BEC18[v18]);
            v19 = wcslen(dword_8BEC18);
            std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
              (int)v36,
              dword_8BEC18,
              &dword_8BEC18[v19]);
            v26 = 0;
            ++v6;
            ++v8;
            if ( v25 <= v10 )
              goto LABEL_27;
            continue;
          }
LABEL_44:
          ++v6;
          ++v8;
          if ( v25 <= v10 )
            goto LABEL_27;
        }
        v10 = v8;
        if ( *(_DWORD *)(v7 + 4 * v8) == 10 )
        {
          v20 = (*((_DWORD *)i + 56) - v7) >> 2;
          if ( v20 < v8 )
          {
            __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
            v7 = *((_DWORD *)i + 57);
            v20 = (*((_DWORD *)i + 56) - v7) >> 2;
          }
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::erase(
            (int)v33,
            (wchar_t *)(v7 + 4 * v8),
            (wchar_t *)(v7 + 4 * v20));
          v25 = v29--;
        }
LABEL_41:
        v12 = 1;
        v9 = 32;
        if ( (unsigned int)(v40 - (_BYTE *)v41) >> 2 )
          goto LABEL_21;
        goto LABEL_42;
      }
LABEL_27:
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v42,
        p,
        v37);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v42,
        v41,
        v40);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int)v30,
        (unsigned int)v42);
      if ( p != v36 && p )
        GlitchFree(p);
      if ( v41 != v39 && v41 )
        GlitchFree(v41);
      if ( v44 != v42 )
      {
        if ( v44 )
          GlitchFree(v44);
      }
    }
  }
}


// ===== 551820 glitch::gui::CGUIStaticText::updateAbsolutePosition(void) =====
void __fastcall glitch::gui::CGUIStaticText::updateAbsolutePosition(glitch::gui::CGUIStaticText *this)
{
  glitch::gui::IGUIElement::updateAbsolutePosition(this);
  glitch::gui::CGUIStaticText::breakText(this);
}


// ===== 551838 glitch::gui::CGUIStaticText::setWordWrap(bool) =====
void __fastcall glitch::gui::CGUIStaticText::setWordWrap(glitch::gui::CGUIStaticText *this, bool a2)
{
  *((_BYTE *)this + 369) = a2;
  glitch::gui::CGUIStaticText::breakText(this);
}


// ===== 551840 glitch::gui::CGUIStaticText::setOverrideFont(glitch::gui::IGUIFont *) =====
void __fastcall glitch::gui::CGUIStaticText::setOverrideFont(
        glitch::gui::CGUIStaticText *this,
        glitch::gui::IGUIFont *a2)
{
  glitch::IReferenceCounted *v3; // r0

  v3 = *((glitch::IReferenceCounted **)this + 95);
  if ( v3 != a2 )
  {
    if ( v3 )
      glitch::IReferenceCounted::drop(v3);
    *((_DWORD *)this + 95) = a2;
    if ( a2 )
      ++*((_DWORD *)a2 + 1);
    glitch::gui::CGUIStaticText::breakText(this);
  }
}


// ===== 551888 glitch::gui::CGUIStaticText::draw(void) =====
int __fastcall glitch::gui::CGUIStaticText::draw(int this)
{
  int v1; // r4
  int v2; // r7
  int v3; // r5
  int v4; // r1
  int v5; // r2
  int v6; // r3
  void (__fastcall *v7)(int, int, _DWORD, int, _DWORD, int *, int); // r12
  int v8; // r5
  int v9; // r5
  int v10; // r8
  int (__fastcall *v11)(int, int, int *, _DWORD, bool, bool, int); // r6
  int v12; // r1
  int v13; // r4
  int *i; // r5
  int *v15; // t1
  int v16; // r10
  int v17; // r10
  int v18; // r6
  int v19; // r2
  int v20; // r12
  int v21; // r3
  int v22; // r1
  int v23; // r6
  unsigned int v24; // r8
  int v25; // r9
  int v26; // r7
  int v27; // r7
  int v28; // r0
  int v29; // r3
  void (__fastcall *v30)(int, int, int *, int, bool, _DWORD, int); // r11
  int v31; // r7
  int v32; // r1
  int v33; // r7
  int v34; // r6
  int v35; // r6
  int v36; // r6
  int v37; // [sp+34h] [bp-50h] BYREF
  int v38; // [sp+38h] [bp-4Ch]
  int v39; // [sp+3Ch] [bp-48h]
  int v40; // [sp+40h] [bp-44h]
  int v41; // [sp+44h] [bp-40h] BYREF
  int v42; // [sp+48h] [bp-3Ch]
  int v43; // [sp+4Ch] [bp-38h]
  int v44; // [sp+50h] [bp-34h]
  int v45; // [sp+54h] [bp-30h] BYREF
  char v46[4]; // [sp+5Ch] [bp-28h] BYREF
  int v47; // [sp+60h] [bp-24h]
  int v48; // [sp+64h] [bp-20h] BYREF
  char v49[4]; // [sp+6Ch] [bp-18h] BYREF
  int v50; // [sp+70h] [bp-14h]
  int v51; // [sp+74h] [bp-10h] BYREF
  _DWORD v52[3]; // [sp+78h] [bp-Ch] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v2 = this;
    if ( this )
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 32))(*(_DWORD *)(v1 + 336));
      v3 = *(unsigned __int8 *)(v1 + 370);
      v4 = *(_DWORD *)(v1 + 60);
      v5 = *(_DWORD *)(v1 + 64);
      v6 = *(_DWORD *)(v1 + 68);
      v41 = *(_DWORD *)(v1 + 56);
      v42 = v4;
      v43 = v5;
      v44 = v6;
      if ( v3 )
        this = glitch::video::C2DDriver::draw2DRectangle(
                 this,
                 *(unsigned __int8 *)(v1 + 375)
               | (*(unsigned __int8 *)(v1 + 376) << 8)
               | (*(unsigned __int8 *)(v1 + 377) << 16)
               | (*(unsigned __int8 *)(v1 + 378) << 24),
                 &v41,
                 v1 + 72);
      if ( *(_BYTE *)(v1 + 356) )
      {
        v7 = *(void (__fastcall **)(int, int, _DWORD, int, _DWORD, int *, int))(*(_DWORD *)v2 + 72);
        v52[1] = 0;
        v7(v2, v1, 0, 1, 0, &v41, v1 + 72);
        v8 = v41;
        this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 24))(v2, 8) + v8;
        v41 = this;
      }
      if ( (unsigned int)(*(_DWORD *)(v1 + 224) - *(_DWORD *)(v1 + 228)) >> 2 )
      {
        v9 = *(_DWORD *)(v1 + 380);
        if ( v9 || (this = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 40))(v2, 0), (v9 = this) != 0) )
        {
          if ( *(_BYTE *)(v1 + 369) )
          {
            if ( *(_DWORD *)(v1 + 384) != v9 )
              glitch::gui::CGUIStaticText::breakText((glitch::gui::CGUIStaticText *)v1);
            v37 = v41;
            v38 = v42;
            v39 = v43;
            v40 = v44;
            (*(void (__fastcall **)(char *, int, const char *))(*(_DWORD *)v9 + 28))(v46, v9, "A");
            v16 = v47;
            v17 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 60))(v9) + v16;
            v18 = 954437177 * ((*(_DWORD *)(v1 + 348) - *(_DWORD *)(v1 + 344)) >> 3) * v17;
            this = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 68))(v9);
            v19 = *(_DWORD *)(v1 + 344);
            v20 = *(_DWORD *)(v1 + 364);
            v21 = 954437177 * ((*(_DWORD *)(v1 + 348) - v19) >> 3);
            v22 = v18 + (v21 - 1) * this;
            if ( v20 == 2 )
            {
              this = (v40 + v38) / 2;
              v38 = this - v22 / 2;
            }
            else if ( v20 == 1 )
            {
              this = v40;
              v38 = v40 - v22;
            }
            if ( v21 )
            {
              v23 = 0;
              v24 = 0;
              v25 = v2;
              do
              {
                if ( *(_DWORD *)(v1 + 360) == 1 )
                {
                  v33 = v43;
                  (*(void (__fastcall **)(int *, int, _DWORD))(*(_DWORD *)v9 + 28))(
                    &v45,
                    v9,
                    *(_DWORD *)(v19 + v23 + 68));
                  v19 = *(_DWORD *)(v1 + 344);
                  v37 = v33 - v45;
                }
                v30 = *(void (__fastcall **)(int, int, int *, int, bool, _DWORD, int))(*(_DWORD *)v9 + 12);
                v31 = *(_DWORD *)(v19 + v23 + 68);
                if ( *(_BYTE *)(v1 + 368) )
                {
                  memcpy(&v51, (const void *)(v1 + 371), sizeof(v51));
                }
                else
                {
                  if ( *(_BYTE *)(v1 + 153) )
                    v32 = 8;
                  else
                    v32 = 9;
                  v51 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v25 + 16))(v25, v32);
                }
                v30(v9, v31, &v37, v51, *(_DWORD *)(v1 + 360) == 2, 0, v1 + 72);
                v26 = v40;
                v40 = v17 + v26 + (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 68))(v9);
                v27 = v38;
                v28 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 68))(v9);
                v19 = *(_DWORD *)(v1 + 344);
                v29 = (*(_DWORD *)(v1 + 348) - v19) >> 3;
                v38 = v17 + v27 + v28;
                ++v24;
                v23 += 72;
                this = 119308288 * v29;
              }
              while ( v24 < 954437177 * v29 );
            }
          }
          else
          {
            if ( *(_DWORD *)(v1 + 364) == 1 )
            {
              v35 = v44;
              (*(void (__fastcall **)(char *, int, const char *))(*(_DWORD *)v9 + 28))(v49, v9, "A");
              v36 = v35 - v50;
              v42 = v36 - (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 60))(v9);
            }
            if ( *(_DWORD *)(v1 + 360) == 1 )
            {
              v34 = v43;
              (*(void (__fastcall **)(int *, int, _DWORD))(*(_DWORD *)v9 + 28))(&v48, v9, *(_DWORD *)(v1 + 228));
              v41 = v34 - v48;
            }
            v10 = *(_DWORD *)(v1 + 228);
            v11 = *(int (__fastcall **)(int, int, int *, _DWORD, bool, bool, int))(*(_DWORD *)v9 + 12);
            if ( *(_BYTE *)(v1 + 368) )
            {
              memcpy(v52, (const void *)(v1 + 371), 4u);
            }
            else
            {
              if ( *(_BYTE *)(v1 + 153) )
                v12 = 8;
              else
                v12 = 9;
              v52[0] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v12);
            }
            this = v11(v9, v10, &v41, v52[0], *(_DWORD *)(v1 + 360) == 2, *(_DWORD *)(v1 + 364) == 2, v1 + 72);
          }
        }
      }
      if ( *(_BYTE *)(v1 + 152) )
      {
        v15 = *(int **)(v1 + 4);
        v13 = v1 + 4;
        for ( i = v15; i != (int *)v13; i = (int *)*i )
          this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
      }
    }
  }
  return this;
}


// ===== 551e34 glitch::gui::CGUIStaticText::setText(wchar_t const*) =====
void __fastcall glitch::gui::CGUIStaticText::setText(glitch::gui::CGUIStaticText *this, const wchar_t *s)
{
  size_t v4; // r0

  v4 = wcslen(s);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)this + 160,
    s,
    &s[v4]);
  glitch::gui::CGUIStaticText::breakText(this);
}


// ===== 551e64 glitch::gui::CGUIStaticText::CGUIStaticText(wchar_t const*,bool,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int> const&,bool) =====
int __fastcall glitch::gui::CGUIStaticText::CGUIStaticText(
        int a1,
        int *a2,
        const wchar_t *a3,
        char a4,
        int a5,
        int a6,
        int a7,
        int *a8,
        char a9)
{
  int v10; // r4
  int v11; // lr
  int v12; // r8
  int v16; // r2
  size_t v17; // r0
  int v18; // r0
  int v20[5]; // [sp+8h] [bp-14h] BYREF

  v10 = *a8;
  v11 = a8[1];
  v12 = a8[2];
  v20[3] = a8[3];
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  glitch::gui::IGUIStaticText::IGUIStaticText(a1, a2 + 1, a5, a6, a7, v20);
  v16 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v16 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_BYTE *)(a1 + 356) = a4;
  *(_BYTE *)(a1 + 370) = a9;
  *(_BYTE *)(a1 + 373) = -1;
  *(_BYTE *)(a1 + 377) = -46;
  *(_BYTE *)(a1 + 378) = 101;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 368) = 0;
  *(_BYTE *)(a1 + 369) = 0;
  *(_BYTE *)(a1 + 371) = -1;
  *(_BYTE *)(a1 + 372) = -1;
  *(_BYTE *)(a1 + 374) = 101;
  *(_BYTE *)(a1 + 375) = -46;
  *(_BYTE *)(a1 + 376) = -46;
  *(_DWORD *)(a1 + 380) = 0;
  if ( !a3 )
    a3 = dword_8BEC18;
  v17 = wcslen(a3);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    a1 + 160,
    a3,
    &a3[v17]);
  if ( a5 && (*(int (__fastcall **)(int))(*(_DWORD *)a5 + 56))(a5) )
  {
    v18 = (*(int (__fastcall **)(int))(*(_DWORD *)a5 + 56))(a5);
    *(_DWORD *)(a1 + 375) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 16))(v18, 2);
  }
  return a1;
}


// ===== 551fe0 `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText(glitch::gui::CGUIStaticText *this)
{
  glitch::gui::CGUIStaticText::~CGUIStaticText((glitch::gui::CGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 551ff0 `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText(glitch::gui::CGUIStaticText *this)
{
  glitch::gui::CGUIStaticText::~CGUIStaticText((glitch::gui::CGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 552000 `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText(glitch::gui::CGUIStaticText *this)
{
  glitch::gui::CGUIStaticText::~CGUIStaticText((glitch::gui::CGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 552010 `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIStaticText::~CGUIStaticText(glitch::gui::CGUIStaticText *this)
{
  glitch::gui::CGUIStaticText::~CGUIStaticText((glitch::gui::CGUIStaticText *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 552020 `virtual thunk to'glitch::gui::CGUIStaticText::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIStaticText::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIStaticText::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 552030 `virtual thunk to'glitch::gui::CGUIStaticText::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUIStaticText::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUIStaticText::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 552040 glitch::gui::CGUITab::getNumber(void) =====
int __fastcall glitch::gui::CGUITab::getNumber(glitch::gui::CGUITab *this)
{
  return *((_DWORD *)this + 86);
}


// ===== 552048 glitch::gui::CGUITab::setNumber(int) =====
int __fastcall glitch::gui::CGUITab::setNumber(int this, int a2)
{
  *(_DWORD *)(this + 344) = a2;
  return this;
}


// ===== 552050 glitch::gui::CGUITab::setDrawBackground(bool) =====
int __fastcall glitch::gui::CGUITab::setDrawBackground(int this, bool a2)
{
  *(_BYTE *)(this + 348) = a2;
  return this;
}


// ===== 552058 glitch::gui::CGUITab::setBackgroundColor(glitch::video::SColor) =====
int __fastcall glitch::gui::CGUITab::setBackgroundColor(int result, int a2)
{
  *(_DWORD *)(result + 349) = a2;
  return result;
}


// ===== 552080 glitch::gui::CGUITab::setTextColor(glitch::video::SColor) =====
int __fastcall glitch::gui::CGUITab::setTextColor(int result, int a2)
{
  *(_DWORD *)(result + 353) = a2;
  return result;
}


// ===== 5520a8 glitch::gui::CGUITab::getTextColor(void) =====
int __fastcall glitch::gui::CGUITab::getTextColor(glitch::gui::CGUITab *this)
{
  _BYTE v2[4]; // [sp+4h] [bp-8h] BYREF

  memcpy(v2, (char *)this + 353, sizeof(v2));
  return v2[0] | (unsigned __int16)(v2[1] << 8) | (v2[2] << 16) & 0xFFFFFF | (v2[3] << 24);
}


// ===== 5520f0 glitch::gui::CGUITab::isDrawingBackground(void) =====
int __fastcall glitch::gui::CGUITab::isDrawingBackground(glitch::gui::CGUITab *this)
{
  return *((unsigned __int8 *)this + 348);
}


// ===== 5520f8 glitch::gui::CGUITab::getBackgroundColor(void) =====
int __fastcall glitch::gui::CGUITab::getBackgroundColor(glitch::gui::CGUITab *this)
{
  _BYTE v2[4]; // [sp+4h] [bp-8h] BYREF

  memcpy(v2, (char *)this + 349, sizeof(v2));
  return v2[0] | (unsigned __int16)(v2[1] << 8) | (v2[2] << 16) & 0xFFFFFF | (v2[3] << 24);
}


// ===== 552140 glitch::gui::CGUITab::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUITab::serializeAttributes(int a1, int a2)
{
  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "TabNumber",
    *(_DWORD *)(a1 + 344),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "DrawBackground",
    *(unsigned __int8 *)(a1 + 348),
    0);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 280))(
    a2,
    "BackColor",
    *(unsigned __int8 *)(a1 + 349)
  | (*(unsigned __int8 *)(a1 + 350) << 8)
  | (*(unsigned __int8 *)(a1 + 351) << 16)
  | (*(unsigned __int8 *)(a1 + 352) << 24),
    0);
  return (*(int (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 280))(
           a2,
           "TextColor",
           *(unsigned __int8 *)(a1 + 353)
         | (*(unsigned __int8 *)(a1 + 354) << 8)
         | (*(unsigned __int8 *)(a1 + 355) << 16)
         | (*(unsigned __int8 *)(a1 + 356) << 24),
           0);
}


// ===== 552214 glitch::gui::CGUITabControl::getTabCount(void) =====
int __fastcall glitch::gui::CGUITabControl::getTabCount(glitch::gui::CGUITabControl *this)
{
  return (*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2;
}


// ===== 552228 glitch::gui::CGUITabControl::getTab(int) =====
int __fastcall glitch::gui::CGUITabControl::getTab(glitch::gui::CGUITabControl *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 86);
  if ( a2 < (*((_DWORD *)this + 87) - v2) >> 2 )
    return *(_DWORD *)(v2 + 4 * a2);
  else
    return 0;
}


// ===== 552244 glitch::gui::CGUITabControl::needScrollControl(int,bool) =====
int __fastcall glitch::gui::CGUITabControl::needScrollControl(glitch::gui::CGUITabControl *this, int a2, int a3)
{
  int v4; // r7
  int v6; // r0
  int v7; // r0
  int v8; // r3
  int v9; // r2
  int v10; // r8
  int v11; // r7
  int v12; // r6
  int v13; // r5
  int v14; // r7
  int v15; // r2
  int v17; // [sp+0h] [bp-8h] BYREF

  v4 = a2;
  if ( a2 >= (*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2 )
    v4 = a2 - 1;
  v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( v6 )
  {
    v7 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v6 + 40))(v6, 0);
    v8 = *((_DWORD *)this + 86);
    v9 = *((_DWORD *)this + 87);
    v10 = v7;
    if ( v8 != v9 )
    {
      if ( v7 )
      {
        v11 = v4 & ~(v4 >> 31);
        if ( v11 < (v9 - v8) >> 2 )
        {
          v12 = v11;
          v13 = *((_DWORD *)this + 14) + 2;
          v14 = 4 * v11;
          do
          {
            v15 = *(_DWORD *)(v8 + v14);
            if ( v15 )
              v15 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v15 + 72))(*(_DWORD *)(v8 + v14));
            (*(void (__fastcall **)(int *, int, int))(*(_DWORD *)v10 + 28))(&v17, v10, v15);
            ++v12;
            v13 += *((_DWORD *)this + 97) + v17;
            if ( a3 )
            {
              if ( v13 > *((_DWORD *)this + 16) - *((_DWORD *)this + 95) )
                return 1;
            }
            else if ( v13 > *((_DWORD *)this + 16) )
            {
              return 1;
            }
            v8 = *((_DWORD *)this + 86);
            v14 += 4;
          }
          while ( v12 < (*((_DWORD *)this + 87) - v8) >> 2 );
        }
      }
    }
  }
  return 0;
}


// ===== 552378 glitch::gui::CGUITabControl::selectTab(glitch::core::position2d<int>) =====
int __fastcall glitch::gui::CGUITabControl::selectTab(int a1, _DWORD *a2)
{
  int v4; // r0
  int v5; // r0
  int v6; // r3
  int v7; // r11
  int v8; // r5
  bool v9; // zf
  int v10; // r3
  int v11; // r8
  int v12; // r2
  int v14; // r3
  int v15; // r7
  int v16; // r5
  int i; // r6
  int v18; // r2
  int v19; // r1
  int v20; // [sp+4h] [bp-10h]
  _DWORD v21[3]; // [sp+8h] [bp-Ch] BYREF

  v4 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 56))(*(_DWORD *)(a1 + 336));
  v5 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 40))(v4, 0);
  v6 = *(_DWORD *)(a1 + 368);
  v7 = *(_DWORD *)(a1 + 60);
  v8 = *(_DWORD *)(a1 + 56);
  v9 = v6 == 0;
  if ( !v6 )
    v7 += 2;
  v20 = *(_DWORD *)(a1 + 68);
  if ( v6 )
  {
    v10 = *(_DWORD *)(a1 + 68);
    v7 = *(_DWORD *)(a1 + 364);
  }
  else
  {
    v10 = *(_DWORD *)(a1 + 364);
  }
  if ( v9 )
    v20 = v7 + v10;
  else
    v7 = v10 - v7;
  v11 = v5;
  if ( v8 <= *a2 )
  {
    v12 = a2[1];
    if ( v7 <= v12 && *(_DWORD *)(a1 + 64) >= *a2 && v20 >= v12 )
    {
      v14 = *(_DWORD *)(a1 + 344);
      v15 = *(_DWORD *)(a1 + 384);
      if ( v15 < (*(_DWORD *)(a1 + 348) - v14) >> 2 )
      {
        v16 = v8 + 2;
        for ( i = 4 * v15; ; i += 4 )
        {
          v18 = *(_DWORD *)(v14 + i);
          if ( v18 )
            v18 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v18 + 72))(*(_DWORD *)(v14 + i));
          (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)v11 + 28))(v21, v11, v18);
          if ( *(_BYTE *)(a1 + 362) )
          {
            if ( *(_DWORD *)(a1 + 64) < v16 )
              break;
          }
          if ( v16 <= *a2 )
          {
            v19 = a2[1];
            if ( v7 <= v19 && *(_DWORD *)(a1 + 388) + v21[0] + v16 >= *a2 && v20 >= v19 )
            {
              (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 136))(a1, v15);
              return 1;
            }
          }
          v14 = *(_DWORD *)(a1 + 344);
          if ( ++v15 >= (*(_DWORD *)(a1 + 348) - v14) >> 2 )
            return 0;
          v16 += *(_DWORD *)(a1 + 388) + v21[0];
        }
      }
    }
  }
  return 0;
}


// ===== 55250c glitch::gui::CGUITabControl::getTabHeight(void) =====
int __fastcall glitch::gui::CGUITabControl::getTabHeight(glitch::gui::CGUITabControl *this)
{
  return *((_DWORD *)this + 91);
}


// ===== 552514 glitch::gui::CGUITabControl::getTabExtraWidth(void) =====
int __fastcall glitch::gui::CGUITabControl::getTabExtraWidth(glitch::gui::CGUITabControl *this)
{
  return *((_DWORD *)this + 97);
}


// ===== 55251c glitch::gui::CGUITabControl::recalculateScrollBar(void) =====
int __fastcall glitch::gui::CGUITabControl::recalculateScrollBar(glitch::gui::CGUITabControl *this)
{
  int v2; // r5
  int v3; // r3
  int v4; // r0
  int v5; // r1

  v2 = glitch::gui::CGUITabControl::needScrollControl(this, 0, 0);
  if ( v2 || *((int *)this + 96) > 0 )
  {
    v3 = *((_DWORD *)this + 93);
    v2 = 1;
    *((_BYTE *)this + 362) = 1;
    v4 = v3;
    v5 = 1;
  }
  else
  {
    v3 = *((_DWORD *)this + 93);
    *((_BYTE *)this + 362) = 0;
    v5 = 0;
    v4 = v3;
  }
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 48))(v4, v5);
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 94) + 48))(*((_DWORD *)this + 94), v2);
  (*(void (__fastcall **)(glitch::gui::CGUITabControl *, _DWORD))(*(_DWORD *)this + 100))(this, *((_DWORD *)this + 93));
  return (*(int (__fastcall **)(glitch::gui::CGUITabControl *, _DWORD))(*(_DWORD *)this + 100))(
           this,
           *((_DWORD *)this + 94));
}


// ===== 5525bc glitch::gui::CGUITabControl::setTabExtraWidth(int) =====
int __fastcall glitch::gui::CGUITabControl::setTabExtraWidth(glitch::gui::CGUITabControl *this, int a2)
{
  *((_DWORD *)this + 97) = a2 & ~(a2 >> 31);
  return glitch::gui::CGUITabControl::recalculateScrollBar(this);
}


// ===== 5525c8 glitch::gui::CGUITabControl::setTabHeight(int) =====
int __fastcall glitch::gui::CGUITabControl::setTabHeight(glitch::gui::CGUITabControl *this, int a2)
{
  int v2; // r1

  v2 = a2 & ~(a2 >> 31);
  *((_DWORD *)this + 95) = 2 * v2;
  *((_DWORD *)this + 91) = v2;
  return glitch::gui::CGUITabControl::recalculateScrollBar(this);
}


// ===== 5525dc glitch::gui::CGUITabControl::scrollLeft(void) =====
int __fastcall glitch::gui::CGUITabControl::scrollLeft(glitch::gui::CGUITabControl *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 96);
  if ( v1 > 0 )
    *((_DWORD *)this + 96) = v1 - 1;
  return glitch::gui::CGUITabControl::recalculateScrollBar(this);
}


// ===== 5525f0 glitch::gui::CGUITabControl::scrollRight(void) =====
int __fastcall glitch::gui::CGUITabControl::scrollRight(glitch::gui::CGUITabControl *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 96);
  if ( v1 < ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2) - 1
    && glitch::gui::CGUITabControl::needScrollControl(this, v1, 1) )
  {
    ++*((_DWORD *)this + 96);
  }
  return glitch::gui::CGUITabControl::recalculateScrollBar(this);
}


// ===== 55263c glitch::gui::CGUITabControl::setTabVerticalAlignment(glitch::gui::EGUI_ALIGNMENT) =====
int __fastcall glitch::gui::CGUITabControl::setTabVerticalAlignment(int a1, int a2)
{
  int v2; // r3
  int v4; // r0
  int v5; // r0
  int v6; // r8
  int v7; // r5
  int v8; // r0
  int v9; // r10
  int v10; // r12
  int v11; // r7
  int v12; // r6
  int v13; // r8
  float *v14; // r0
  float *v15; // r0
  int v17[4]; // [sp+8h] [bp-24h] BYREF
  int v18[5]; // [sp+18h] [bp-14h] BYREF

  v2 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 368) = a2;
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 56))(v2);
  if ( v4 )
  {
    v5 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v4 + 24))(v4, 2);
    v6 = *(_DWORD *)(a1 + 364);
    v7 = v5;
    if ( v5 > v6 )
    {
      v8 = (int)(float)((float)v6 * 2.5);
      v9 = v6 + 1;
      v10 = v6 / -2;
      v7 = *(_DWORD *)(a1 + 364);
    }
    else
    {
      v8 = (int)(float)((float)v5 * 2.5);
      v9 = v7 + 1;
      v10 = v7 / -2;
    }
  }
  else
  {
    v9 = 17;
    v10 = -8;
    v8 = 40;
    v7 = 16;
    v6 = *(_DWORD *)(a1 + 364);
  }
  v11 = *(_DWORD *)(a1 + 368);
  v12 = *(_DWORD *)(a1 + 48) - 1 - *(_DWORD *)(a1 + 40) - v8;
  *(_DWORD *)(a1 + 380) = v8;
  if ( v11 )
  {
    v13 = v6 / -2 - *(_DWORD *)(a1 + 44) + *(_DWORD *)(a1 + 52) + v10;
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 372), 1, 1, 1, 1);
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 376), 1, 1, 1, 1);
  }
  else
  {
    v13 = v10 + v6 / 2;
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 372), 1, 1, 0, 0);
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 376), 1, 1, 0, 0);
  }
  v14 = *(float **)(a1 + 372);
  v18[0] = v12;
  v18[2] = v12 + v7;
  v18[1] = v13;
  v18[3] = v13 + v7;
  glitch::gui::IGUIElement::setRelativePosition(v14, v18);
  v15 = *(float **)(a1 + 376);
  v17[0] = v12 + v9;
  v17[1] = v13;
  v17[2] = v12 + v9 + v7;
  v17[3] = v13 + v7;
  glitch::gui::IGUIElement::setRelativePosition(v15, v17);
  return glitch::gui::CGUITabControl::recalculateScrollBar((glitch::gui::CGUITabControl *)a1);
}


// ===== 552800 glitch::gui::CGUITabControl::getTabVerticalAlignment(void) =====
int __fastcall glitch::gui::CGUITabControl::getTabVerticalAlignment(glitch::gui::CGUITabControl *this)
{
  return *((_DWORD *)this + 92);
}


// ===== 552808 glitch::gui::CGUITabControl::getActiveTab(void) =====
int __fastcall glitch::gui::CGUITabControl::getActiveTab(glitch::gui::CGUITabControl *this)
{
  return *((_DWORD *)this + 89);
}


// ===== 552810 glitch::gui::CGUITabControl::setActiveTab(int) =====
int __fastcall glitch::gui::CGUITabControl::setActiveTab(glitch::gui::CGUITabControl *this, unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v7; // r7
  int v8; // r4
  int v9; // r3
  int v10; // r3
  _DWORD v11[7]; // [sp+0h] [bp-1Ch] BYREF

  v3 = *((_DWORD *)this + 86);
  v4 = *((_DWORD *)this + 87);
  if ( a2 >= (v4 - v3) >> 2 )
    return 0;
  v7 = *((_DWORD *)this + 89);
  *((_DWORD *)this + 89) = a2;
  if ( v4 - v3 > 3 )
  {
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(v3 + 4 * v8);
      if ( v9 )
      {
        (*(void (__fastcall **)(_DWORD, bool))(*(_DWORD *)v9 + 48))(
          *(_DWORD *)(v3 + 4 * v8),
          *((_DWORD *)this + 89) == v8);
        v4 = *((_DWORD *)this + 87);
        v3 = *((_DWORD *)this + 86);
      }
      ++v8;
    }
    while ( v8 < (v4 - v3) >> 2 );
  }
  if ( a2 != v7 )
  {
    v10 = *((_DWORD *)this + 9);
    v11[4] = 17;
    v11[3] = 0;
    v11[0] = 0;
    v11[2] = this;
    (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v10 + 8))(v10, v11);
  }
  return 1;
}


// ===== 5528d4 glitch::gui::CGUITabControl::setActiveTab(glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUITabControl::setActiveTab(
        glitch::gui::CGUITabControl *this,
        glitch::gui::IGUIElement *a2)
{
  int v3; // r2
  glitch::gui::IGUIElement **v4; // r0
  int v5; // r4
  int v6; // r2

  v3 = *((_DWORD *)this + 87);
  v4 = *((glitch::gui::IGUIElement ***)this + 86);
  v5 = (v3 - (int)v4) >> 2;
  if ( v5 <= 0 )
    return 0;
  if ( *v4 != a2 )
  {
    v6 = 0;
    while ( ++v6 != v5 )
    {
      if ( v4[v6] == a2 )
        return (*(int (__fastcall **)(glitch::gui::CGUITabControl *, int))(*(_DWORD *)this + 136))(this, v6);
    }
    return 0;
  }
  v6 = 0;
  return (*(int (__fastcall **)(glitch::gui::CGUITabControl *, int))(*(_DWORD *)this + 136))(this, v6);
}


// ===== 552944 glitch::gui::CGUITabControl::updateAbsolutePosition(void) =====
int __fastcall glitch::gui::CGUITabControl::updateAbsolutePosition(glitch::gui::CGUITabControl *this)
{
  glitch::gui::IGUIElement::updateAbsolutePosition(this);
  return glitch::gui::CGUITabControl::recalculateScrollBar(this);
}


// ===== 55295c glitch::gui::CGUITabControl::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUITabControl::serializeAttributes(int a1, int a2)
{
  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "ActiveTab",
    *(_DWORD *)(a1 + 356),
    0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Border",
    *(unsigned __int8 *)(a1 + 360),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "FillBackground",
    *(unsigned __int8 *)(a1 + 361),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "TabHeight",
    *(_DWORD *)(a1 + 364),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
           a2,
           "TabVerticalAlignment",
           *(_DWORD *)(a1 + 368),
           glitch::gui::GUIAlignmentNames,
           0);
}


// ===== 552a40 `global constructor keyed to'.._source_glitch_gui_CGUITabControl.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUITabControl.cpp()
{
  dword_9F6694 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6690 = 1056964608;
}


// ===== 552a60 glitch::gui::CGUITabControl::removeChild(glitch::gui::IGUIElement *) =====
int __fastcall glitch::gui::CGUITabControl::removeChild(
        glitch::gui::CGUITabControl *this,
        glitch::gui::IGUIElement *a2)
{
  int v2; // r12
  unsigned int v3; // r4
  int v6; // r3
  int v7; // r0
  int v8; // r7
  unsigned int v9; // r4
  int v10; // r3
  unsigned int v11; // r1
  char *v13; // r3
  char *v14; // r1

  v2 = *((_DWORD *)this + 86);
  v3 = 0;
  v6 = *((_DWORD *)this + 87) - v2;
  v7 = 0;
  while ( v3 < v6 >> 2 )
  {
    v8 = 4 * v3;
    if ( *(glitch::gui::IGUIElement **)(v2 + 4 * v3) == a2 )
    {
      glitch::IReferenceCounted::drop((glitch::gui::IGUIElement *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 16)));
      v2 = *((_DWORD *)this + 86);
      v13 = *((char **)this + 87);
      v14 = (char *)(v2 + v8 + 4);
      if ( v14 == v13 )
      {
        *((_DWORD *)this + 87) = v2 + v8;
        v7 = 1;
      }
      else
      {
        memmove((void *)(v2 + v8), v14, v13 - v14);
        v14 = *((char **)this + 87);
        v2 = *((_DWORD *)this + 86);
        v7 = 1;
        *((_DWORD *)this + 87) = v14 - 4;
      }
      v6 = (int)&v14[-v2 - 4];
    }
    else
    {
      ++v3;
    }
  }
  if ( v7 && v6 >> 2 )
  {
    v9 = 0;
    do
    {
      v10 = *(_DWORD *)(v2 + 4 * v9);
      v11 = v9++;
      if ( v10 )
      {
        (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v10 + 152))(v10, v11);
        v2 = *((_DWORD *)this + 86);
      }
    }
    while ( v9 < (*((_DWORD *)this + 87) - v2) >> 2 );
  }
  glitch::gui::IGUIElement::removeChild(this, a2);
  return glitch::gui::CGUITabControl::recalculateScrollBar(this);
}


// ===== 552b70 std::vector<glitch::gui::CGUITab *,glitch::core::SAllocator<glitch::gui::CGUITab *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::gui::CGUITab **,glitch::gui::CGUITab * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::CGUITab *,glitch::core::SAllocator<glitch::gui::CGUITab *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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
    v9 = GlitchAlloc(0xFFFFFFFC, 0);
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
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = *(const void **)a1;
  v11 = v9;
  v12 = a2 - *(_DWORD *)a1;
  if ( v12 )
    goto LABEL_14;
  v13 = v9;
LABEL_11:
  *v13 = *a3;
  GlitchFree(*(void **)a1);
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + 4) = v13 + 1;
  *(_DWORD *)(a1 + 8) = &v11[v8];
}


// ===== 552c20 std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 552c24 glitch::gui::IGUIElement::IGUIElement(glitch::gui::EGUI_ELEMENT_TYPE,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement*,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIElement::IGUIElement(int a1, int *a2, int a3, int a4, int a5, int a6, _DWORD *a7)
{
  int v8; // r7
  int v9; // r0
  int v12; // r3
  _DWORD *v13; // r3
  int v14; // r0
  int v15; // r12
  int v16; // r8
  int v17; // r7
  int v18; // r2
  int v19; // r1
  int v20; // r5
  int v21; // r6
  int v22; // r0
  int v23; // r1
  int v24; // r1
  int v25; // r2
  int v26; // r1
  int v27; // r3
  int v28; // r1
  bool v29; // cc
  int v30; // r3

  v8 = a1 + 4;
  *(_DWORD *)a1 = off_95C300;
  v9 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 12)) = a2[1];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[2];
  *(_DWORD *)(a1 + 8) = v8;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)(a1 + 4) = v8;
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = *a7;
  *(_DWORD *)(a1 + 44) = a7[1];
  *(_DWORD *)(a1 + 48) = a7[2];
  *(_DWORD *)(a1 + 52) = a7[3];
  *(_DWORD *)(a1 + 56) = *a7;
  *(_DWORD *)(a1 + 60) = a7[1];
  *(_DWORD *)(a1 + 64) = a7[2];
  *(_DWORD *)(a1 + 68) = a7[3];
  *(_DWORD *)(a1 + 72) = *a7;
  *(_DWORD *)(a1 + 76) = a7[1];
  *(_DWORD *)(a1 + 80) = a7[2];
  *(_DWORD *)(a1 + 84) = a7[3];
  *(_DWORD *)(a1 + 88) = *a7;
  *(_DWORD *)(a1 + 92) = a7[1];
  *(_DWORD *)(a1 + 96) = a7[2];
  v12 = a7[3];
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 100) = v12;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a4;
  *(_DWORD *)(a1 + 304) = a6;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = a3;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a5 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a5 + 20))(a5, a1);
  v13 = *(_DWORD **)(a1 + 36);
  if ( v13 )
  {
    v14 = v13[15];
    v15 = v13[14];
    v16 = v13[16];
    v17 = v13[17];
    v18 = v14 + *(_DWORD *)(a1 + 68);
    v19 = v15 + *(_DWORD *)(a1 + 64);
    v20 = v14 + *(_DWORD *)(a1 + 60);
    v21 = v15 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v20;
    *(_DWORD *)(a1 + 84) = v18;
    *(_DWORD *)(a1 + 72) = v21;
    *(_DWORD *)(a1 + 80) = v19;
    *(_DWORD *)(a1 + 68) = v18;
    *(_DWORD *)(a1 + 112) = v16;
    *(_DWORD *)(a1 + 116) = v17;
    *(_DWORD *)(a1 + 104) = v15;
    *(_DWORD *)(a1 + 108) = v14;
    *(_DWORD *)(a1 + 56) = v21;
    *(_DWORD *)(a1 + 60) = v20;
    *(_DWORD *)(a1 + 64) = v19;
    v22 = v13[20];
    if ( v19 > v22 )
      *(_DWORD *)(a1 + 80) = v22;
    v23 = v13[21];
    if ( v18 > v23 )
      *(_DWORD *)(a1 + 84) = v23;
    v24 = v13[18];
    v25 = *(_DWORD *)(a1 + 72);
    if ( v24 > v25 )
    {
      *(_DWORD *)(a1 + 72) = v24;
      v25 = v24;
    }
    v26 = v13[19];
    v27 = *(_DWORD *)(a1 + 76);
    if ( v26 > v27 )
    {
      *(_DWORD *)(a1 + 76) = v26;
      v27 = v26;
    }
    v28 = *(_DWORD *)(a1 + 84);
    v29 = v28 < v27;
    v30 = *(_DWORD *)(a1 + 80);
    if ( v29 )
      *(_DWORD *)(a1 + 76) = v28;
    if ( v25 > v30 )
      *(_DWORD *)(a1 + 72) = v30;
  }
  return a1;
}


// ===== 552ec0 glitch::gui::IGUITabControl::IGUITabControl(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int *__fastcall glitch::gui::IGUITabControl::IGUITabControl(int *a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // lr
  int v8; // r6
  int v9; // r4
  int v11; // r3
  _DWORD v13[4]; // [sp+10h] [bp-10h] BYREF

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v13[2] = a6[2];
  v13[1] = v9;
  v13[0] = v8;
  v13[3] = v7;
  glitch::gui::IGUIElement::IGUIElement((int)a1, a2 + 1, 18, a3, a4, a5, v13);
  v11 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v11 - 12)) = a2[4];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 16)) = a2[5];
  return a1;
}


// ===== 552f44 glitch::gui::CGUITabControl::CGUITabControl(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,glitch::core::rect<int> const&,bool,bool,int) =====
int __fastcall glitch::gui::CGUITabControl::CGUITabControl(int a1, int a2, int a3, int *a4, char a5, char a6, int a7)
{
  int v7; // lr
  int v8; // r6
  int v9; // r10
  int v11; // r3
  int v12; // r0
  int v13; // r5
  int v14; // r7
  int v15; // r0
  int (__fastcall *v16)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  int v17; // r0
  int v18; // r10
  void (__fastcall *v19)(int, _DWORD, int, int, _DWORD); // r8
  int v20; // r0
  int v21; // r10
  void (__fastcall *v22)(int, int, int, int, _DWORD); // r8
  int v23; // r0
  int v24; // r8
  void (__fastcall *v25)(int, int); // r6
  int v26; // r0
  int v27; // r3
  int v28; // r0
  int (__fastcall *v29)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  int v30; // r0
  int v31; // r8
  void (__fastcall *v32)(int, _DWORD, int, int, _DWORD); // r7
  int v33; // r0
  int v34; // r7
  int v35; // r3
  int v36; // r0
  void (__fastcall *v37)(int, int, int, int, _DWORD); // r5
  int v38; // r0
  int v39; // r6
  void (__fastcall *v40)(int, int); // r5
  int v41; // r0
  int v42; // r3
  _DWORD v44[4]; // [sp+14h] [bp-38h] BYREF
  _DWORD v45[4]; // [sp+24h] [bp-28h] BYREF
  int v46[4]; // [sp+34h] [bp-18h] BYREF
  int v47; // [sp+44h] [bp-8h]

  *(_DWORD *)(a1 + 400) = 1;
  *(_DWORD *)(a1 + 392) = off_9714D4;
  *(_DWORD *)(a1 + 396) = off_95B720;
  *(_DWORD *)&byte_4[a1 + 392] = off_9714F4;
  v7 = a4[3];
  v8 = a4[1];
  v9 = a4[2];
  v46[0] = *a4;
  v46[1] = v8;
  v46[3] = v7;
  v46[2] = v9;
  glitch::gui::IGUITabControl::IGUITabControl((int *)a1, (int *)off_9712CC, a2, a3, a7, v46);
  v11 = *(_DWORD *)(a1 + 336);
  *(_BYTE *)(a1 + 360) = a6;
  *(_DWORD *)(a1 + 392) = off_971298;
  *(_DWORD *)(a1 + 388) = 20;
  *(_DWORD *)a1 = off_9711D0;
  *(_DWORD *)(a1 + 396) = off_9712B8;
  *(_BYTE *)(a1 + 361) = a5;
  *(_DWORD *)(a1 + 384) = 0;
  HIBYTE(v47) = -1;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = -1;
  *(_BYTE *)(a1 + 362) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  LOWORD(v47) = -1;
  BYTE2(v47) = -1;
  v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 56))(v11);
  v13 = v12;
  *(_DWORD *)(a1 + 364) = 32;
  if ( v12 )
  {
    v14 = (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 48))(v12);
    v47 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 16))(v13, 18);
    *(_DWORD *)(a1 + 364) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 24))(v13, 7) + 2;
  }
  else
  {
    v14 = 0;
  }
  v15 = *(_DWORD *)(a1 + 336);
  v16 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v15 + 120);
  v45[3] = 10;
  v45[2] = 10;
  v45[0] = 0;
  v45[1] = 0;
  v17 = v16(v15, v45, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 372) = v17;
  if ( v17 )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v17 + 144))(v17, v14);
    v18 = *(_DWORD *)(a1 + 372);
    v19 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v18 + 148);
    v20 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 56))(v13, 7);
    v19(v18, 0, v20, v47, 0);
    v21 = *(_DWORD *)(a1 + 372);
    v22 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v21 + 148);
    v23 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 56))(v13, 7);
    v22(v21, 1, v23, v47, 0);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 372) + 48))(*(_DWORD *)(a1 + 372), 0);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 372) + 56))(*(_DWORD *)(a1 + 372), 1);
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 372), 1, 1, 0, 0);
    v24 = *(_DWORD *)(a1 + 372);
    v25 = *(void (__fastcall **)(int, int))(*(_DWORD *)v24 + 124);
    v26 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 104))(*(_DWORD *)(a1 + 336));
    v25(v24, v26);
    v27 = *(_DWORD *)(a1 + 372) + *(_DWORD *)(**(_DWORD **)(a1 + 372) - 16);
    ++*(_DWORD *)(v27 + 4);
  }
  v28 = *(_DWORD *)(a1 + 336);
  v29 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v28 + 120);
  v44[3] = 10;
  v44[2] = 10;
  v44[0] = 0;
  v44[1] = 0;
  v30 = v29(v28, v44, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 376) = v30;
  if ( v30 )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v30 + 144))(v30, v14);
    v31 = *(_DWORD *)(a1 + 376);
    v32 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v31 + 148);
    v33 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v13 + 56))(v13, 8);
    v32(v31, 0, v33, v47, 0);
    v34 = *(_DWORD *)(a1 + 376);
    v35 = *(_DWORD *)v13;
    v36 = v13;
    v37 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v34 + 148);
    v38 = (*(int (__fastcall **)(int, int))(v35 + 56))(v36, 8);
    v37(v34, 1, v38, v47, 0);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 376) + 48))(*(_DWORD *)(a1 + 376), 0);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 376) + 56))(*(_DWORD *)(a1 + 376), 1);
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 376), 1, 1, 0, 0);
    v39 = *(_DWORD *)(a1 + 376);
    v40 = *(void (__fastcall **)(int, int))(*(_DWORD *)v39 + 124);
    v41 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 104))(*(_DWORD *)(a1 + 336));
    v40(v39, v41);
    v42 = *(_DWORD *)(a1 + 376) + *(_DWORD *)(**(_DWORD **)(a1 + 376) - 16);
    ++*(_DWORD *)(v42 + 4);
  }
  glitch::gui::CGUITabControl::setTabVerticalAlignment(a1, 0);
  return a1;
}


// ===== 5533b0 glitch::gui::CGUITabControl::CGUITabControl(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,glitch::core::rect<int> const&,bool,bool,int) =====
int __fastcall glitch::gui::CGUITabControl::CGUITabControl(
        int a1,
        int *a2,
        int a3,
        int a4,
        int *a5,
        char a6,
        char a7,
        int a8)
{
  int v9; // lr
  int v10; // r4
  int v11; // r12
  int v13; // r3
  int v14; // r0
  int v15; // r3
  int v16; // r3
  int v17; // r0
  int v18; // r5
  int v19; // r7
  int v20; // r0
  int (__fastcall *v21)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  int v22; // r0
  int v23; // r10
  void (__fastcall *v24)(int, _DWORD, int, int, _DWORD); // r8
  int v25; // r0
  int v26; // r10
  void (__fastcall *v27)(int, int, int, int, _DWORD); // r8
  int v28; // r0
  int v29; // r8
  void (__fastcall *v30)(int, int); // r6
  int v31; // r0
  int v32; // r3
  int v33; // r0
  int (__fastcall *v34)(int, _DWORD *, int, int, _DWORD, _DWORD); // r12
  int v35; // r0
  int v36; // r8
  void (__fastcall *v37)(int, _DWORD, int, int, _DWORD); // r7
  int v38; // r0
  int v39; // r7
  int v40; // r3
  int v41; // r0
  void (__fastcall *v42)(int, int, int, int, _DWORD); // r5
  int v43; // r0
  int v44; // r6
  void (__fastcall *v45)(int, int); // r5
  int v46; // r0
  int v47; // r3
  _DWORD v49[4]; // [sp+14h] [bp-38h] BYREF
  _DWORD v50[4]; // [sp+24h] [bp-28h] BYREF
  int v51[4]; // [sp+34h] [bp-18h] BYREF
  int v52; // [sp+44h] [bp-8h]

  v9 = a5[3];
  v10 = a5[1];
  v11 = a5[2];
  v51[0] = *a5;
  v51[2] = v11;
  v51[1] = v10;
  v51[3] = v9;
  glitch::gui::IGUITabControl::IGUITabControl((int *)a1, a2 + 1, a3, a4, a8, v51);
  v13 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v13 - 12)) = a2[7];
  v14 = a2[8];
  v15 = *(_DWORD *)(*(_DWORD *)a1 - 16);
  HIBYTE(v52) = -1;
  LOBYTE(v52) = -1;
  *(_DWORD *)(a1 + v15) = v14;
  v16 = *(_DWORD *)(a1 + 336);
  *(_BYTE *)(a1 + 360) = a7;
  *(_DWORD *)(a1 + 388) = 20;
  *(_BYTE *)(a1 + 361) = a6;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = -1;
  *(_BYTE *)(a1 + 362) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_WORD *)((char *)&v52 + 1) = -1;
  v17 = (*(int (__fastcall **)(int))(*(_DWORD *)v16 + 56))(v16);
  v18 = v17;
  *(_DWORD *)(a1 + 364) = 32;
  if ( v17 )
  {
    v19 = (*(int (__fastcall **)(int))(*(_DWORD *)v17 + 48))(v17);
    v52 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 16))(v18, 18);
    *(_DWORD *)(a1 + 364) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 24))(v18, 7) + 2;
  }
  else
  {
    v19 = 0;
  }
  v20 = *(_DWORD *)(a1 + 336);
  v21 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v20 + 120);
  v50[3] = 10;
  v50[2] = 10;
  v50[0] = 0;
  v50[1] = 0;
  v22 = v21(v20, v50, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 372) = v22;
  if ( v22 )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v22 + 144))(v22, v19);
    v23 = *(_DWORD *)(a1 + 372);
    v24 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v23 + 148);
    v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 56))(v18, 7);
    v24(v23, 0, v25, v52, 0);
    v26 = *(_DWORD *)(a1 + 372);
    v27 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v26 + 148);
    v28 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 56))(v18, 7);
    v27(v26, 1, v28, v52, 0);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 372) + 48))(*(_DWORD *)(a1 + 372), 0);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 372) + 56))(*(_DWORD *)(a1 + 372), 1);
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 372), 1, 1, 0, 0);
    v29 = *(_DWORD *)(a1 + 372);
    v30 = *(void (__fastcall **)(int, int))(*(_DWORD *)v29 + 124);
    v31 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 104))(*(_DWORD *)(a1 + 336));
    v30(v29, v31);
    v32 = *(_DWORD *)(a1 + 372) + *(_DWORD *)(**(_DWORD **)(a1 + 372) - 16);
    ++*(_DWORD *)(v32 + 4);
  }
  v33 = *(_DWORD *)(a1 + 336);
  v34 = *(int (__fastcall **)(int, _DWORD *, int, int, _DWORD, _DWORD))(*(_DWORD *)v33 + 120);
  v49[3] = 10;
  v49[2] = 10;
  v49[0] = 0;
  v49[1] = 0;
  v35 = v34(v33, v49, a1, -1, 0, 0);
  *(_DWORD *)(a1 + 376) = v35;
  if ( v35 )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v35 + 144))(v35, v19);
    v36 = *(_DWORD *)(a1 + 376);
    v37 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v36 + 148);
    v38 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v18 + 56))(v18, 8);
    v37(v36, 0, v38, v52, 0);
    v39 = *(_DWORD *)(a1 + 376);
    v40 = *(_DWORD *)v18;
    v41 = v18;
    v42 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v39 + 148);
    v43 = (*(int (__fastcall **)(int, int))(v40 + 56))(v41, 8);
    v42(v39, 1, v43, v52, 0);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 376) + 48))(*(_DWORD *)(a1 + 376), 0);
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 376) + 56))(*(_DWORD *)(a1 + 376), 1);
    glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 376), 1, 1, 0, 0);
    v44 = *(_DWORD *)(a1 + 376);
    v45 = *(void (__fastcall **)(int, int))(*(_DWORD *)v44 + 124);
    v46 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 104))(*(_DWORD *)(a1 + 336));
    v45(v44, v46);
    v47 = *(_DWORD *)(a1 + 376) + *(_DWORD *)(**(_DWORD **)(a1 + 376) - 16);
    ++*(_DWORD *)(v47 + 4);
  }
  glitch::gui::CGUITabControl::setTabVerticalAlignment(a1, 0);
  return a1;
}


// ===== 5537cc glitch::gui::IGUITab::IGUITab(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int *__fastcall glitch::gui::IGUITab::IGUITab(int *a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // lr
  int v8; // r6
  int v9; // r4
  int v11; // r3
  _DWORD v13[4]; // [sp+10h] [bp-10h] BYREF

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v13[2] = a6[2];
  v13[1] = v9;
  v13[0] = v8;
  v13[3] = v7;
  glitch::gui::IGUIElement::IGUIElement((int)a1, a2 + 1, 17, a3, a4, a5, v13);
  v11 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v11 - 12)) = a2[4];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 16)) = a2[5];
  return a1;
}


// ===== 553850 glitch::gui::CGUITab::CGUITab(int,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,glitch::core::rect<int> const&,int) =====
int __fastcall glitch::gui::CGUITab::CGUITab(int a1, int a2, int a3, int a4, int *a5, int a6)
{
  int v6; // r6
  int v7; // r8
  int v8; // r7
  int v12; // r0
  int v14[5]; // [sp+8h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 368) = 1;
  *(_DWORD *)(a1 + 364) = off_95B720;
  *(_DWORD *)(a1 + 360) = off_9717EC;
  *(_DWORD *)&byte_4[a1 + 360] = off_97180C;
  v6 = a5[1];
  v7 = a5[3];
  v8 = *a5;
  v14[2] = a5[2];
  v14[1] = v6;
  v14[0] = v8;
  v14[3] = v7;
  glitch::gui::IGUITab::IGUITab((int *)a1, (int *)off_9715F4, a3, a4, a6, v14);
  *(_DWORD *)(a1 + 344) = a2;
  *(_BYTE *)(a1 + 352) = 0;
  *(_BYTE *)(a1 + 348) = 0;
  *(_DWORD *)a1 = off_971510;
  *(_DWORD *)(a1 + 360) = off_9715C4;
  *(_DWORD *)(a1 + 364) = off_9715E4;
  *(_BYTE *)(a1 + 349) = 0;
  *(_BYTE *)(a1 + 350) = 0;
  *(_BYTE *)(a1 + 351) = 0;
  v12 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 56))(a3);
  if ( v12 )
  {
    *(_DWORD *)(a1 + 353) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v12 + 16))(v12, 8);
  }
  else
  {
    *(_BYTE *)(a1 + 356) = -1;
    *(_BYTE *)(a1 + 355) = 0;
    *(_BYTE *)(a1 + 353) = 0;
    *(_BYTE *)(a1 + 354) = 0;
  }
  return a1;
}


// ===== 553994 glitch::gui::CGUITab::CGUITab(int,glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,glitch::core::rect<int> const&,int) =====
int __fastcall glitch::gui::CGUITab::CGUITab(int a1, int *a2, int a3, int a4, int a5, int *a6, int a7)
{
  int v9; // r7
  int v10; // lr
  int v11; // r8
  int v14; // r2
  int v15; // r0
  int v17[4]; // [sp+8h] [bp-10h] BYREF

  v9 = *a6;
  v10 = a6[1];
  v11 = a6[2];
  v17[3] = a6[3];
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  glitch::gui::IGUITab::IGUITab((int *)a1, a2 + 1, a4, a5, a7, v17);
  v14 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v14 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_DWORD *)(a1 + 344) = a3;
  *(_BYTE *)(a1 + 352) = 0;
  *(_BYTE *)(a1 + 348) = 0;
  *(_BYTE *)(a1 + 349) = 0;
  *(_BYTE *)(a1 + 350) = 0;
  *(_BYTE *)(a1 + 351) = 0;
  v15 = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 56))(a4);
  if ( v15 )
  {
    *(_DWORD *)(a1 + 353) = (*(int (__fastcall **)(int, int))(*(_DWORD *)v15 + 16))(v15, 8);
  }
  else
  {
    *(_BYTE *)(a1 + 356) = -1;
    *(_BYTE *)(a1 + 355) = 0;
    *(_BYTE *)(a1 + 353) = 0;
    *(_BYTE *)(a1 + 354) = 0;
  }
  return a1;
}


// ===== 553a94 glitch::gui::CGUITabControl::addTab(glitch::gui::CGUITab *) =====
int __fastcall glitch::gui::CGUITabControl::addTab(int this, glitch::gui::CGUITab *a2)
{
  _DWORD *v3; // r4
  glitch::gui::CGUITab **v4; // r1
  int v5; // r3
  int v6; // r0
  _DWORD *v7; // r1
  _DWORD *v8; // r3
  int v9; // r0
  _DWORD *v10; // r1
  int v11; // r3
  int v12; // r1
  int v13; // r0
  int v14; // [sp+4h] [bp-4h] BYREF

  v3 = (_DWORD *)this;
  if ( a2 )
  {
    v4 = *(glitch::gui::CGUITab ***)(this + 344);
    this = (*(_DWORD *)(this + 348) - (int)v4) >> 2;
    if ( this )
    {
      if ( a2 == *v4 )
        return this;
      v5 = 0;
      while ( ++v5 != this )
      {
        if ( a2 == v4[v5] )
          return this;
      }
    }
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 16) + 4);
    if ( (*(int (__fastcall **)(glitch::gui::CGUITab *))(*(_DWORD *)a2 + 124))(a2) == -1 )
      (*(void (__fastcall **)(glitch::gui::CGUITab *, int))(*(_DWORD *)a2 + 152))(a2, (v3[87] - v3[86]) >> 2);
    while ( 1 )
    {
      v6 = (*(int (__fastcall **)(glitch::gui::CGUITab *))(*(_DWORD *)a2 + 124))(a2);
      v7 = (_DWORD *)v3[87];
      if ( v6 < ((int)v7 - v3[86]) >> 2 )
        break;
      v8 = (_DWORD *)v3[88];
      v14 = 0;
      if ( v7 == v8 )
      {
        std::vector<glitch::gui::CGUITab *,glitch::core::SAllocator<glitch::gui::CGUITab *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (int)(v3 + 86),
          (int)v7,
          &v14);
      }
      else
      {
        *v7 = 0;
        v3[87] += 4;
      }
    }
    if ( *(_DWORD *)(v3[86] + 4 * (*(int (__fastcall **)(glitch::gui::CGUITab *))(*(_DWORD *)a2 + 124))(a2)) )
    {
      v9 = (*(int (__fastcall **)(glitch::gui::CGUITab *))(*(_DWORD *)a2 + 124))(a2);
      v10 = (_DWORD *)v3[87];
      v11 = v3[86];
      if ( v10 == (_DWORD *)v3[88] )
      {
        std::vector<glitch::gui::CGUITab *,glitch::core::SAllocator<glitch::gui::CGUITab *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (int)(v3 + 86),
          (int)v10,
          (_DWORD *)(v11 + 4 * v9));
        v12 = v3[87];
      }
      else
      {
        *v10 = *(_DWORD *)(v11 + 4 * v9);
        v12 = v3[87] + 4;
        v3[87] = v12;
      }
      v13 = *(_DWORD *)(v3[86] + 4 * (((v12 - v3[86]) >> 2) - 1));
      (*(void (__fastcall **)(int))(*(_DWORD *)v13 + 152))(v13);
    }
    *(_DWORD *)(v3[86] + 4 * (*(int (__fastcall **)(glitch::gui::CGUITab *))(*(_DWORD *)a2 + 124))(a2)) = a2;
    if ( v3[89] == -1 )
      v3[89] = (*(int (__fastcall **)(glitch::gui::CGUITab *))(*(_DWORD *)a2 + 124))(a2);
    this = (*(int (__fastcall **)(glitch::gui::CGUITab *))(*(_DWORD *)a2 + 124))(a2);
    if ( this == v3[89] )
      return (*(int (__fastcall **)(_DWORD *, int))(*v3 + 136))(v3, this);
  }
  return this;
}


// ===== 553ca4 glitch::gui::CGUITabControl::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUITabControl::deserializeAttributes(int a1, int a2)
{
  char v4; // r0
  float v5; // r2
  void (__fastcall *v6)(int, int); // r7
  int v7; // r0
  void (__fastcall *v8)(int, int); // r6
  int v9; // r0
  int v10; // r3
  int v11; // r0
  int (__fastcall *v12)(int, int); // r4
  int v13; // r0

  *(_BYTE *)(a1 + 360) = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 228))(a2, "Border");
  v4 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "FillBackground");
  v5 = *(float *)a1;
  *(_BYTE *)(a1 + 361) = v4;
  *(_DWORD *)(a1 + 356) = -1;
  v6 = *(void (__fastcall **)(int, int))(LODWORD(v5) + 148);
  v7 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "TabHeight");
  v6(a1, v7);
  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  v8 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 136);
  v9 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ActiveTab");
  v8(a1, v9);
  v10 = *(_DWORD *)a2;
  v11 = a2;
  v12 = *(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 156);
  v13 = (*(int (__fastcall **)(int, const char *, char **))(v10 + 256))(
          v11,
          "TabVerticalAlignment",
          glitch::gui::GUIAlignmentNames);
  return v12(a1, v13);
}


// ===== 553db0 glitch::gui::CGUITab::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUITab::deserializeAttributes(int a1, int a2)
{
  void (__fastcall *v4)(int, int); // r6
  int v5; // r0
  void (__fastcall *v6)(int, int); // r6
  int v7; // r0
  void (__fastcall *v8)(int, int); // r6
  int v9; // r3
  int v10; // r0
  int (__fastcall *v11)(int); // r5
  int result; // r0
  _DWORD *v13; // r3
  int v14; // [sp+0h] [bp-10h]

  glitch::gui::IGUIElement::deserializeAttributes((float *)a1, a2);
  v4 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 152);
  v5 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "TabNumber");
  v4(a1, v5);
  v6 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 128);
  v7 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "DrawBackground");
  v6(a1, v7);
  v8 = *(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 132);
  v14 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "BackColor");
  v8(a1, v14);
  v9 = *(_DWORD *)a2;
  v10 = a2;
  v11 = *(int (__fastcall **)(int))(*(_DWORD *)a1 + 144);
  (*(void (__fastcall **)(int, const char *))(v9 + 292))(v10, "TextColor");
  result = v11(a1);
  v13 = *(_DWORD **)(a1 + 36);
  if ( v13 && v13[85] == 18 )
  {
    (*(void (__fastcall **)(_DWORD, int))(*v13 + 172))(*(_DWORD *)(a1 + 36), a1);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 44))(a1);
    if ( result )
      return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 36) + 140))(*(_DWORD *)(a1 + 36), a1);
  }
  return result;
}


// ===== 553f30 glitch::gui::IGUITab::~IGUITab() =====
void __fastcall glitch::gui::IGUITab::~IGUITab(glitch::gui::IGUITab *this)
{
  *(_DWORD *)this = off_970D90;
  *((_DWORD *)this + 86) = off_970E40;
  *((_DWORD *)this + 87) = off_970E60;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_970E74);
}


// ===== 553f84 `virtual thunk to'glitch::gui::IGUITab::~IGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITab::~IGUITab(glitch::gui::IGUITab *this)
{
  glitch::gui::IGUITab::~IGUITab((glitch::gui::IGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 553f94 `virtual thunk to'glitch::gui::IGUITab::~IGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITab::~IGUITab(glitch::gui::IGUITab *this)
{
  glitch::gui::IGUITab::~IGUITab((glitch::gui::IGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 553fa4 glitch::gui::CGUITab::~CGUITab() =====
void __fastcall glitch::gui::CGUITab::~CGUITab(glitch::gui::CGUITab *this)
{
  *((_DWORD *)this + 90) = off_9715C4;
  *((_DWORD *)this + 91) = off_9715E4;
  *(_DWORD *)this = off_971630;
  *(int *)((char *)&elf_hash_bucket[35] + (_DWORD)this) = (int)off_9716E0;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_971700;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_9715F8);
}


// ===== 554014 `virtual thunk to'glitch::gui::CGUITab::~CGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITab::~CGUITab(glitch::gui::CGUITab *this)
{
  glitch::gui::CGUITab::~CGUITab((glitch::gui::CGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 554024 `virtual thunk to'glitch::gui::CGUITab::~CGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITab::~CGUITab(glitch::gui::CGUITab *this)
{
  glitch::gui::CGUITab::~CGUITab((glitch::gui::CGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 554034 glitch::gui::CGUITab::~CGUITab() =====
void __fastcall glitch::gui::CGUITab::~CGUITab(glitch::gui::CGUITab *this)
{
  glitch::gui::CGUITab::~CGUITab(this);
  LC_API_FREE_0(this);
}


// ===== 554050 `virtual thunk to'glitch::gui::CGUITab::~CGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITab::~CGUITab(glitch::gui::CGUITab *this)
{
  glitch::gui::CGUITab::~CGUITab((glitch::gui::CGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 554060 `virtual thunk to'glitch::gui::CGUITab::~CGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITab::~CGUITab(glitch::gui::CGUITab *this)
{
  glitch::gui::CGUITab::~CGUITab((glitch::gui::CGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 554070 glitch::gui::IGUITabControl::~IGUITabControl() =====
void __fastcall glitch::gui::IGUITabControl::~IGUITabControl(glitch::gui::IGUITabControl *this)
{
  *(_DWORD *)this = off_970FA8;
  *((_DWORD *)this + 86) = off_97106C;
  *((_DWORD *)this + 87) = off_97108C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_97109C);
}


// ===== 5540c4 `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl(glitch::gui::IGUITabControl *this)
{
  glitch::gui::IGUITabControl::~IGUITabControl((glitch::gui::IGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5540d4 `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl(glitch::gui::IGUITabControl *this)
{
  glitch::gui::IGUITabControl::~IGUITabControl((glitch::gui::IGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5540e4 glitch::gui::CGUITabControl::~CGUITabControl() =====
void __fastcall glitch::gui::CGUITabControl::~CGUITabControl(glitch::gui::CGUITabControl *this)
{
  int v1; // r2
  int v2; // r1
  unsigned int v4; // r5
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  _DWORD *v7; // r3
  void *v8; // r0

  v1 = *((_DWORD *)this + 86);
  v2 = *((_DWORD *)this + 87);
  *(_DWORD *)this = off_9711D0;
  *((_DWORD *)this + 98) = off_971298;
  *((_DWORD *)this + 99) = off_9712B8;
  if ( (unsigned int)(v2 - v1) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD **)(v1 + 4 * v4++);
      if ( v5 )
      {
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
        v1 = *((_DWORD *)this + 86);
        v2 = *((_DWORD *)this + 87);
      }
    }
    while ( v4 < (v2 - v1) >> 2 );
  }
  v6 = *((_DWORD **)this + 93);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((_DWORD **)this + 94);
  if ( v7 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
  v8 = *((void **)this + 86);
  if ( v8 )
    GlitchFree(v8);
  *(_DWORD *)this = off_971308;
  *(int *)((char *)&elf_hash_bucket[43] + (_DWORD)this) = (int)off_9713CC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_9713EC;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_9712D0);
}


// ===== 5541f4 glitch::gui::CGUITabControl::~CGUITabControl() =====
void __fastcall glitch::gui::CGUITabControl::~CGUITabControl(glitch::gui::CGUITabControl *this)
{
  glitch::gui::CGUITabControl::~CGUITabControl(this);
  LC_API_FREE_0(this);
}


// ===== 554210 glitch::gui::CGUITabControl::~CGUITabControl() =====
void __fastcall glitch::gui::CGUITabControl::~CGUITabControl(glitch::gui::CGUITabControl *this, int *a2)
{
  int v2; // r3
  int v5; // r2
  int v6; // r1
  unsigned int v7; // r5
  _DWORD *v8; // r3
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  void *v11; // r0
  int v12; // r3
  int *v13; // r6

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD *)this + 86);
  v6 = *((_DWORD *)this + 87);
  if ( (unsigned int)(v6 - v5) >> 2 )
  {
    v7 = 0;
    do
    {
      v8 = *(_DWORD **)(v5 + 4 * v7++);
      if ( v8 )
      {
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v8 + *(_DWORD *)(*v8 - 16)));
        v5 = *((_DWORD *)this + 86);
        v6 = *((_DWORD *)this + 87);
      }
    }
    while ( v7 < (v6 - v5) >> 2 );
  }
  v9 = *((_DWORD **)this + 93);
  if ( v9 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v9 + *(_DWORD *)(*v9 - 16)));
  v10 = *((_DWORD **)this + 94);
  if ( v10 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v10 + *(_DWORD *)(*v10 - 16)));
  v11 = *((void **)this + 86);
  if ( v11 )
    GlitchFree(v11);
  v12 = a2[1];
  v13 = a2 + 1;
  *(_DWORD *)this = v12;
  *(_DWORD *)((char *)this + *(_DWORD *)(v12 - 12)) = v13[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v13[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v13 + 1);
}


// ===== 554310 glitch::gui::CGUITabControl::onEvent(glitch::SEvent const&) =====
char *__fastcall glitch::gui::CGUITabControl::onEvent(int a1, _DWORD *a2)
{
  int v4; // r3
  int v6; // r3
  int v7; // r3
  int v8; // r3
  _DWORD v9[3]; // [sp+0h] [bp-Ch] BYREF

  if ( *(_BYTE *)(a1 + 153) )
  {
    if ( *a2 )
    {
      if ( *a2 == 1 )
      {
        v6 = a2[5];
        if ( !v6 )
          return (_BYTE *)(&dword_0 + 1);
        if ( v6 == 3 )
        {
          v7 = a2[2];
          v9[1] = a2[3];
          v9[0] = v7;
          if ( glitch::gui::CGUITabControl::selectTab(a1, v9) )
            return (char *)&dword_0 + 1;
        }
      }
    }
    else if ( a2[4] == 5 )
    {
      v8 = a2[2];
      if ( v8 == *(_DWORD *)(a1 + 372) )
      {
        glitch::gui::CGUITabControl::scrollLeft((glitch::gui::CGUITabControl *)a1);
        return (_BYTE *)(&dword_0 + 1);
      }
      if ( v8 == *(_DWORD *)(a1 + 376) )
      {
        glitch::gui::CGUITabControl::scrollRight((glitch::gui::CGUITabControl *)a1);
        return (char *)&dword_0 + 1;
      }
    }
  }
  v4 = *(_DWORD *)(a1 + 36);
  if ( v4 )
    return (char *)(*(int (__fastcall **)(_DWORD, _DWORD *))(*(_DWORD *)v4 + 8))(*(_DWORD *)(a1 + 36), a2);
  else
    return nullptr;
}


// ===== 5543ec glitch::gui::CGUITabControl::addTab(wchar_t const*,int) =====
int __fastcall glitch::gui::CGUITabControl::addTab(glitch::gui::CGUITabControl *this, const wchar_t *a2, int a3)
{
  int result; // r0
  int v7; // r2
  int v8; // r1
  int v9; // r8
  float v10; // r5
  float *v11; // r1
  int v12; // r1
  int v13; // r3
  int v14; // r2
  float v15; // r3
  int v16; // [sp+Ch] [bp-14h] BYREF
  int v17; // [sp+10h] [bp-10h]
  int v18; // [sp+14h] [bp-Ch]
  int v19; // [sp+18h] [bp-8h]
  float v20; // [sp+1Ch] [bp-4h] BYREF

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( result )
  {
    if ( *((_DWORD *)this + 92) )
    {
      v7 = *((_DWORD *)this + 17) - *((_DWORD *)this + 15) - *((_DWORD *)this + 91);
      v8 = *((_DWORD *)this + 16) - 1 - *((_DWORD *)this + 14);
      v17 = 1;
      v18 = v8;
      v19 = v7;
      v16 = 1;
    }
    else
    {
      v12 = *((_DWORD *)this + 91);
      v13 = *((_DWORD *)this + 17) - 1 - *((_DWORD *)this + 15);
      v14 = *((_DWORD *)this + 16) - 1 - *((_DWORD *)this + 14);
      v16 = 1;
      v17 = v12;
      v18 = v14;
      v19 = v13;
    }
    v9 = *((_DWORD *)this + 87) - *((_DWORD *)this + 86);
    v10 = COERCE_FLOAT(operator new(0x174u, 0));
    glitch::gui::CGUITab::CGUITab(SLODWORD(v10), v9 >> 2, *((_DWORD *)this + 84), (int)this, &v16, a3);
    v20 = v10;
    (*(void (__fastcall **)(float, const wchar_t *))(*(_DWORD *)LODWORD(v10) + 68))(COERCE_FLOAT(LODWORD(v10)), a2);
    glitch::gui::IGUIElement::setAlignment(v20, 0, 1, 0, 1);
    (*(void (__fastcall **)(float, _DWORD))(*(_DWORD *)LODWORD(v20) + 48))(COERCE_FLOAT(LODWORD(v20)), 0);
    v11 = *((float **)this + 87);
    if ( v11 == *((float **)this + 88) )
    {
      std::vector<glitch::gui::CGUITab *,glitch::core::SAllocator<glitch::gui::CGUITab *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (int)this + 344,
        (int)v11,
        &v20);
    }
    else
    {
      *v11 = v20;
      *((_DWORD *)this + 87) += 4;
    }
    if ( *((_DWORD *)this + 89) == -1 )
    {
      v15 = v20;
      *((_DWORD *)this + 89) = 0;
      (*(void (__fastcall **)(float, int))(*(_DWORD *)LODWORD(v15) + 48))(COERCE_FLOAT(LODWORD(v15)), 1);
    }
    glitch::gui::CGUITabControl::recalculateScrollBar(this);
    return LODWORD(v20);
  }
  return result;
}


// ===== 554598 glitch::gui::IGUITab::~IGUITab() =====
void __fastcall glitch::gui::IGUITab::~IGUITab(glitch::gui::IGUITab *this)
{
  *(_DWORD *)this = off_970D90;
  *((_DWORD *)this + 86) = off_970E40;
  *((_DWORD *)this + 87) = off_970E60;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_970E74);
  LC_API_FREE_0(this);
}


// ===== 5545f4 `virtual thunk to'glitch::gui::IGUITab::~IGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITab::~IGUITab(glitch::gui::IGUITab *this)
{
  glitch::gui::IGUITab::~IGUITab((glitch::gui::IGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 554604 `virtual thunk to'glitch::gui::IGUITab::~IGUITab() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITab::~IGUITab(glitch::gui::IGUITab *this)
{
  glitch::gui::IGUITab::~IGUITab((glitch::gui::IGUITab *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 554614 glitch::gui::IGUITabControl::~IGUITabControl() =====
void __fastcall glitch::gui::IGUITabControl::~IGUITabControl(glitch::gui::IGUITabControl *this)
{
  *(_DWORD *)this = off_970FA8;
  *((_DWORD *)this + 86) = off_97106C;
  *((_DWORD *)this + 87) = off_97108C;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_97109C);
  LC_API_FREE_0(this);
}


// ===== 554670 `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl(glitch::gui::IGUITabControl *this)
{
  glitch::gui::IGUITabControl::~IGUITabControl((glitch::gui::IGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 554680 `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITabControl::~IGUITabControl(glitch::gui::IGUITabControl *this)
{
  glitch::gui::IGUITabControl::~IGUITabControl((glitch::gui::IGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 554690 glitch::gui::CGUITab::draw(void) =====
int __fastcall glitch::gui::CGUITab::draw(int this)
{
  int v1; // r4
  int v2; // r4
  int *i; // r5
  int *v4; // t1

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    if ( this && *(_BYTE *)(v1 + 348) )
      this = (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)this + 100))(
               this,
               v1,
               v1 + 349,
               v1 + 56,
               v1 + 72);
    if ( *(_BYTE *)(v1 + 152) )
    {
      v4 = *(int **)(v1 + 4);
      v2 = v1 + 4;
      for ( i = v4; i != (int *)v2; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 554738 glitch::gui::CGUITabControl::draw(void) =====
int __fastcall glitch::gui::CGUITabControl::draw(int this)
{
  int v1; // r4
  int v2; // r11
  int v3; // r7
  int v4; // r5
  int v5; // r12
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r1
  int v10; // r3
  unsigned int v11; // r5
  int v12; // r0
  int v13; // r6
  int v14; // r8
  int v15; // r6
  int v16; // r9
  int v17; // lr
  int v18; // r10
  int v19; // r3
  void (__fastcall *v20)(int, int, int *, int, int, int, int); // r6
  bool v21; // zf
  int v22; // r2
  void (__fastcall *v23)(int, int, int *, int, int, int, int); // r8
  int v24; // r6
  int v25; // r0
  int v26; // r4
  int *i; // r5
  int *v28; // t1
  int v29; // r1
  void (__fastcall *v30)(int, int, int *, int, int, int, int); // r8
  int v31; // r6
  int v32; // [sp+18h] [bp-74h]
  int v33; // [sp+20h] [bp-6Ch]
  int v34; // [sp+24h] [bp-68h]
  int v35; // [sp+28h] [bp-64h]
  int v36; // [sp+2Ch] [bp-60h]
  int v37; // [sp+30h] [bp-5Ch]
  int v38; // [sp+38h] [bp-54h] BYREF
  int v39; // [sp+3Ch] [bp-50h]
  int v40; // [sp+40h] [bp-4Ch]
  int v41; // [sp+44h] [bp-48h]
  int v42; // [sp+48h] [bp-44h] BYREF
  int v43; // [sp+4Ch] [bp-40h]
  int v44; // [sp+50h] [bp-3Ch]
  int v45; // [sp+54h] [bp-38h]
  _DWORD v46[5]; // [sp+58h] [bp-34h] BYREF
  int v47; // [sp+6Ch] [bp-20h]
  int v48; // [sp+70h] [bp-1Ch]
  int v49; // [sp+74h] [bp-18h]
  int v50; // [sp+78h] [bp-14h]
  int v51; // [sp+7Ch] [bp-10h]
  int v52; // [sp+80h] [bp-Ch]
  int v53; // [sp+84h] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v2 = this;
    if ( this )
    {
      v3 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)this + 40))(this, 0);
      v36 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 32))(*(_DWORD *)(v1 + 336));
      v4 = *(_DWORD *)(v1 + 344);
      v5 = *(_DWORD *)(v1 + 348);
      this = *(_DWORD *)(v1 + 56);
      v6 = *(_DWORD *)(v1 + 60);
      v7 = *(_DWORD *)(v1 + 64);
      v8 = *(_DWORD *)(v1 + 68);
      v42 = this;
      v43 = v6;
      v44 = v7;
      v45 = v8;
      if ( v4 == v5 )
      {
        v53 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
        this = glitch::video::C2DDriver::draw2DRectangle(v36, v53, &v42, v1 + 72);
      }
      if ( v3 )
      {
        v9 = *(_DWORD *)(v1 + 368);
        if ( v9 )
        {
          v43 = v45 - 1 - *(_DWORD *)(v1 + 364);
          v45 -= 2;
        }
        else
        {
          v45 = v43 + 2 + *(_DWORD *)(v1 + 364);
          v43 += 2;
        }
        v10 = *(_DWORD *)(v1 + 344);
        v11 = *(_DWORD *)(v1 + 384);
        v12 = *(_DWORD *)(v1 + 348) - v10;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        if ( v11 < v12 >> 2 )
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v13 = v42 + 2;
          v32 = v1 + 72;
          v14 = 4 * v11;
          while ( 1 )
          {
            v16 = *(_DWORD *)(v10 + v14);
            if ( v16 )
              v16 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v16 + 72))(*(_DWORD *)(v10 + v14));
            (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)v3 + 28))(v46, v3, v16);
            v17 = *(unsigned __int8 *)(v1 + 362);
            v18 = *(_DWORD *)(v1 + 388) + v46[0] + v13;
            v42 = v13;
            v44 = v18;
            if ( v17 )
            {
              if ( v18 < v13 )
                break;
            }
            if ( *(_DWORD *)(v1 + 356) == v11 )
            {
              v10 = *(_DWORD *)(v1 + 344);
              v35 = v13;
              v34 = v18;
              v15 = *(_DWORD *)(v10 + v14);
              ++v11;
              v14 += 4;
              v33 = v15;
              if ( v11 >= (*(_DWORD *)(v1 + 348) - v10) >> 2 )
                break;
            }
            else
            {
              (*(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 88))(v2, v1);
              ++v11;
              v19 = *(_DWORD *)(*(_DWORD *)(v1 + 344) + v14);
              v20 = *(void (__fastcall **)(int, int, int *, int, int, int, int))(*(_DWORD *)v3 + 12);
              v14 += 4;
              v52 = (*(int (__fastcall **)(int))(*(_DWORD *)v19 + 148))(v19);
              v20(v3, v16, &v42, v52, 1, 1, v32);
              v10 = *(_DWORD *)(v1 + 344);
              if ( v11 >= (*(_DWORD *)(v1 + 348) - v10) >> 2 )
                break;
            }
            v13 = v18;
          }
          v21 = v34 == 0;
          if ( v34 )
            v21 = v35 == 0;
          if ( !v21 && v33 )
          {
            v22 = *(_DWORD *)(v1 + 368);
            v42 = v35 - 2;
            v44 = v34 + 2;
            if ( v22 )
            {
              v45 += 2;
              (*(void (__fastcall **)(int, int, int, int *, int, int))(*(_DWORD *)v2 + 88))(v2, v1, 1, &v42, v32, v22);
              v30 = *(void (__fastcall **)(int, int, int *, int, int, int, int))(*(_DWORD *)v3 + 12);
              v31 = (*(int (__fastcall **)(int))(*(_DWORD *)v33 + 72))(v33);
              v48 = (*(int (__fastcall **)(int))(*(_DWORD *)v33 + 148))(v33);
              v30(v3, v31, &v42, v48, 1, 1, v32);
              v38 = *(_DWORD *)(v1 + 56);
              v40 = v35 - 1;
              v39 = v43 - 1;
              v41 = v43;
              v47 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 16))(v2, 0);
              glitch::video::C2DDriver::draw2DRectangle(v36, v47, &v38, v32);
              v40 = *(_DWORD *)(v1 + 64);
              v38 = v34;
              v37 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 16))(v2, 0);
              v46[4] = v37;
            }
            else
            {
              v43 -= 2;
              (*(void (__fastcall **)(int, int, int, int *, int, _DWORD))(*(_DWORD *)v2 + 88))(v2, v1, 1, &v42, v32, 0);
              v23 = *(void (__fastcall **)(int, int, int *, int, int, int, int))(*(_DWORD *)v3 + 12);
              v24 = (*(int (__fastcall **)(int))(*(_DWORD *)v33 + 72))(v33);
              v51 = (*(int (__fastcall **)(int))(*(_DWORD *)v33 + 148))(v33);
              v23(v3, v24, &v42, v51, 1, 1, v32);
              v25 = *(_DWORD *)(v1 + 56);
              v41 = v45;
              v38 = v25;
              v40 = v35 - 1;
              v39 = v45 - 1;
              v50 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
              glitch::video::C2DDriver::draw2DRectangle(v36, v50, &v38, v32);
              v40 = *(_DWORD *)(v1 + 64);
              v38 = v34;
              v37 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
              v49 = v37;
            }
LABEL_26:
            glitch::video::C2DDriver::draw2DRectangle(v36, v37, &v38, v32);
            this = (*(int (__fastcall **)(int, int, _DWORD, _DWORD, int, int, _DWORD, _DWORD))(*(_DWORD *)v2 + 92))(
                     v2,
                     v1,
                     *(unsigned __int8 *)(v1 + 360),
                     *(unsigned __int8 *)(v1 + 361),
                     v1 + 56,
                     v32,
                     *(_DWORD *)(v1 + 364),
                     *(_DWORD *)(v1 + 368));
            if ( *(_BYTE *)(v1 + 152) )
            {
              v28 = *(int **)(v1 + 4);
              v26 = v1 + 4;
              for ( i = v28; i != (int *)v26; i = (int *)*i )
                this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
            }
            return this;
          }
          v9 = *(_DWORD *)(v1 + 368);
        }
        else
        {
          v32 = v1 + 72;
        }
        if ( v9 )
        {
          v38 = *(_DWORD *)(v1 + 56);
          v40 = 1000;
          v39 = v43 - 1;
          v41 = v43;
          v37 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 16))(v2, 0);
          v46[2] = v37;
        }
        else
        {
          v29 = *(_DWORD *)(v1 + 64);
          v38 = *(_DWORD *)(v1 + 56);
          v40 = v29;
          v39 = v45 - 1;
          v41 = v45;
          v37 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
          v46[3] = v37;
        }
        goto LABEL_26;
      }
    }
  }
  return this;
}


// ===== 554ee0 `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl(glitch::gui::CGUITabControl *this)
{
  glitch::gui::CGUITabControl::~CGUITabControl((glitch::gui::CGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 554ef0 `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl(glitch::gui::CGUITabControl *this)
{
  glitch::gui::CGUITabControl::~CGUITabControl((glitch::gui::CGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 554f00 `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl(glitch::gui::CGUITabControl *this)
{
  glitch::gui::CGUITabControl::~CGUITabControl((glitch::gui::CGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 554f10 `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITabControl::~CGUITabControl(glitch::gui::CGUITabControl *this)
{
  glitch::gui::CGUITabControl::~CGUITabControl((glitch::gui::CGUITabControl *)((char *)this
                                                                             + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 554f20 `virtual thunk to'glitch::gui::CGUITab::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUITab::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUITab::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 554f30 `virtual thunk to'glitch::gui::CGUITabControl::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUITabControl::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUITabControl::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2);
}


// ===== 554f40 `virtual thunk to'glitch::gui::CGUITabControl::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUITabControl::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUITabControl::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 554f50 `virtual thunk to'glitch::gui::CGUITab::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUITab::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUITab::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 554f60 glitch::gui::CGUITable::getColumnCount(void) =====
int __fastcall glitch::gui::CGUITable::getColumnCount(glitch::gui::CGUITable *this)
{
  return 1022611261 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2);
}


// ===== 554f80 glitch::gui::CGUITable::getRowCount(void) =====
int __fastcall glitch::gui::CGUITable::getRowCount(glitch::gui::CGUITable *this)
{
  return -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2);
}


// ===== 554fa8 glitch::gui::CGUITable::setActiveColumn(int,bool) =====
int __fastcall glitch::gui::CGUITable::setActiveColumn(glitch::gui::CGUITable *this, int a2, int a3)
{
  int v5; // r1
  int v7; // r6
  int v8; // r3
  void (__fastcall *v9)(glitch::gui::CGUITable *, int, _DWORD); // r7
  int v10; // r0
  int v11; // r3
  int v12; // r3
  _DWORD v13[6]; // [sp+0h] [bp-34h] BYREF
  _DWORD v14[7]; // [sp+18h] [bp-1Ch] BYREF

  if ( a2 < 0 )
    return 0;
  v5 = *((_DWORD *)this + 86);
  if ( a2 >= 1022611261 * ((*((_DWORD *)this + 87) - v5) >> 2) )
    return 0;
  v7 = *((_DWORD *)this + 106);
  *((_DWORD *)this + 106) = a2;
  if ( a3 )
  {
    switch ( *(_DWORD *)(v5 + 84 * a2 + 80) )
    {
      case 1:
        v12 = *((_DWORD *)this + 9);
        *((_DWORD *)this + 107) = 0;
        if ( v12 )
        {
          v14[0] = 0;
          v14[4] = 22;
          v14[2] = this;
          (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 8))(v12, v14);
        }
        break;
      case 2:
        *((_DWORD *)this + 107) = 1;
        break;
      case 3:
        *((_DWORD *)this + 107) = 2;
        break;
      case 4:
        if ( *((_DWORD *)this + 107) == 1 )
          v11 = 2;
        else
          v11 = 1;
        *((_DWORD *)this + 107) = v11;
        break;
      default:
        *((_DWORD *)this + 107) = 0;
        break;
    }
    v9 = *(void (__fastcall **)(glitch::gui::CGUITable *, int, _DWORD))(*(_DWORD *)this + 192);
    v10 = (*(int (__fastcall **)(glitch::gui::CGUITable *))(*(_DWORD *)this + 140))(this);
    v9(this, v10, *((_DWORD *)this + 107));
  }
  if ( a2 != v7 )
  {
    v8 = *((_DWORD *)this + 9);
    v13[0] = 0;
    v13[4] = 22;
    v13[2] = this;
    (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v8 + 8))(v8, v13);
  }
  return 1;
}


// ===== 555100 glitch::gui::CGUITable::getActiveColumn(void) =====
int __fastcall glitch::gui::CGUITable::getActiveColumn(glitch::gui::CGUITable *this)
{
  return *((_DWORD *)this + 106);
}


// ===== 555108 glitch::gui::CGUITable::getActiveColumnOrdering(void) =====
int __fastcall glitch::gui::CGUITable::getActiveColumnOrdering(glitch::gui::CGUITable *this)
{
  return *((_DWORD *)this + 107);
}


// ===== 555110 glitch::gui::CGUITable::setResizableColumns(bool) =====
int __fastcall glitch::gui::CGUITable::setResizableColumns(int this, bool a2)
{
  *(_BYTE *)(this + 392) = a2;
  return this;
}


// ===== 555118 glitch::gui::CGUITable::hasResizableColumns(void) =====
int __fastcall glitch::gui::CGUITable::hasResizableColumns(glitch::gui::CGUITable *this)
{
  return *((unsigned __int8 *)this + 392);
}


// ===== 555120 glitch::gui::CGUITable::setCellColor(uint,uint,glitch::video::SColor) =====
unsigned int __fastcall glitch::gui::CGUITable::setCellColor(
        unsigned int result,
        unsigned int a2,
        unsigned int a3,
        int a4)
{
  int v4; // r12

  v4 = *(_DWORD *)(result + 356);
  if ( a2 < -1431655765 * ((*(_DWORD *)(result + 360) - v4) >> 2) )
  {
    result = 1022611261 * ((*(_DWORD *)(result + 348) - *(_DWORD *)(result + 344)) >> 2);
    if ( a3 < result )
    {
      *(_DWORD *)(*(_DWORD *)(v4 + 12 * a2) + 152 * a3 + 144) = a4;
      return 152;
    }
  }
  return result;
}


// ===== 5551bc glitch::gui::CGUITable::setCellData(uint,uint,void *) =====
unsigned int __fastcall glitch::gui::CGUITable::setCellData(
        unsigned int this,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12

  v4 = *(_DWORD *)(this + 356);
  if ( a2 < -1431655765 * ((*(_DWORD *)(this + 360) - v4) >> 2) )
  {
    this = 1022611261 * ((*(_DWORD *)(this + 348) - *(_DWORD *)(this + 344)) >> 2);
    if ( a3 < this )
    {
      *(_DWORD *)(*(_DWORD *)(v4 + 12 * a2) + 152 * a3 + 148) = a4;
      return 152;
    }
  }
  return this;
}


// ===== 555230 glitch::gui::CGUITable::getCellText(uint,uint) =====
int __fastcall glitch::gui::CGUITable::getCellText(glitch::gui::CGUITable *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3

  v3 = *((_DWORD *)this + 89);
  if ( a2 < -1431655765 * ((*((_DWORD *)this + 90) - v3) >> 2)
    && a3 < 1022611261 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2) )
  {
    return *(_DWORD *)(*(_DWORD *)(v3 + 12 * a2) + 152 * a3 + 68);
  }
  else
  {
    return 0;
  }
}


// ===== 5552ac glitch::gui::CGUITable::getCellData(uint,uint) =====
int __fastcall glitch::gui::CGUITable::getCellData(glitch::gui::CGUITable *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3

  v3 = *((_DWORD *)this + 89);
  if ( a2 < -1431655765 * ((*((_DWORD *)this + 90) - v3) >> 2)
    && a3 < 1022611261 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2) )
  {
    return *(_DWORD *)(*(_DWORD *)(v3 + 12 * a2) + 152 * a3 + 148);
  }
  else
  {
    return 0;
  }
}


// ===== 555328 glitch::gui::CGUITable::getSelected(void) =====
int __fastcall glitch::gui::CGUITable::getSelected(glitch::gui::CGUITable *this)
{
  return *((_DWORD *)this + 102);
}


// ===== 555330 glitch::gui::CGUITable::getSelectedColumn(void) =====
int __fastcall glitch::gui::CGUITable::getSelectedColumn(glitch::gui::CGUITable *this)
{
  return *((_DWORD *)this + 103);
}


// ===== 555338 glitch::gui::CGUITable::setSelectableColumn(bool) =====
int __fastcall glitch::gui::CGUITable::setSelectableColumn(int this, bool a2)
{
  *(_BYTE *)(this + 393) = a2;
  return this;
}


// ===== 555340 glitch::gui::CGUITable::getSelectableColumn(void) =====
int __fastcall glitch::gui::CGUITable::getSelectableColumn(glitch::gui::CGUITable *this)
{
  return *((unsigned __int8 *)this + 393);
}


// ===== 555348 glitch::gui::CGUITable::recalculateWidths(void) =====
int __fastcall glitch::gui::CGUITable::recalculateWidths(glitch::gui::CGUITable *this)
{
  int v1; // lr
  unsigned int v2; // r4
  int v3; // r2
  int v5; // r0
  unsigned int v6; // r1

  v1 = *((_DWORD *)this + 86);
  v2 = 1022611261 * ((*((_DWORD *)this + 87) - v1) >> 2);
  v3 = 0;
  *((_DWORD *)this + 101) = 0;
  if ( v2 )
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ++v6;
      v5 += *(_DWORD *)(v1 + v3 + 76);
      *((_DWORD *)this + 101) = v5;
      v3 += 84;
    }
    while ( v6 < v2 );
  }
  return (*(int (__fastcall **)(glitch::gui::CGUITable *))(*(_DWORD *)this + 248))(this);
}


// ===== 5553b8 glitch::gui::CGUITable::recalculateHeights(void) =====
int __fastcall glitch::gui::CGUITable::recalculateHeights(glitch::gui::CGUITable *this)
{
  int v1; // r3
  int v3; // r0
  int v4; // r6
  int v5; // r5
  glitch::IReferenceCounted *v6; // r0
  int v7; // r0
  int v8; // r3
  _DWORD v10[2]; // [sp+0h] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 84);
  *((_DWORD *)this + 100) = 0;
  v3 = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 56))(v1);
  v4 = *((_DWORD *)this + 92);
  v5 = v3;
  if ( v4 == (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v3 + 40))(v3, 0) )
  {
    v7 = *((_DWORD *)this + 99) * -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2);
  }
  else
  {
    v6 = *((glitch::IReferenceCounted **)this + 92);
    if ( v6 )
      glitch::IReferenceCounted::drop(v6);
    v7 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v5 + 40))(v5, 0);
    *((_DWORD *)this + 99) = 0;
    *((_DWORD *)this + 92) = v7;
    if ( v7 )
    {
      (*(void (__fastcall **)(_DWORD *, int, const char *))(*(_DWORD *)v7 + 28))(v10, v7, "A");
      v8 = *((_DWORD *)this + 92);
      *((_DWORD *)this + 99) = v10[1] + 2 * *((_DWORD *)this + 104);
      ++*(_DWORD *)(v8 + 4);
      v7 = *((_DWORD *)this + 99) * -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2);
    }
  }
  *((_DWORD *)this + 100) = v7;
  return (*(int (__fastcall **)(glitch::gui::CGUITable *))(*(_DWORD *)this + 248))(this);
}


// ===== 5554f0 glitch::gui::CGUITable::checkScrollbars(void) =====
int __fastcall glitch::gui::CGUITable::checkScrollbars(glitch::gui::CGUITable *this)
{
  int result; // r0
  int v3; // r6
  bool v4; // zf
  int v5; // r6
  int v6; // r5
  int v7; // r11
  int v8; // r10
  int v9; // r8
  int v10; // r9
  int v11; // r6
  int v12; // r6
  int v13; // r2
  float *v14; // r0
  int v15; // r3
  float *v16; // r0
  int v17; // r3
  int v18; // r2
  int v19; // r3
  float *v20; // r0
  int v21; // r2
  int v22; // r8
  int v23; // r2
  float *v24; // r0
  int v25; // r3
  int v26; // [sp+4h] [bp-48h]
  int v27[4]; // [sp+8h] [bp-44h] BYREF
  int v28[4]; // [sp+18h] [bp-34h] BYREF
  int v29[4]; // [sp+28h] [bp-24h] BYREF
  int v30[5]; // [sp+38h] [bp-14h] BYREF

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( *((_DWORD *)this + 94) )
  {
    v3 = *((_DWORD *)this + 93);
    v4 = v3 == 0;
    if ( v3 )
      v4 = result == 0;
    v5 = v4;
    if ( !v4 )
    {
      v6 = (*(int (__fastcall **)(int, int))(*(_DWORD *)result + 24))(result, v5);
      v7 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 44))(*((_DWORD *)this + 94));
      v26 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 44))(*((_DWORD *)this + 93));
      (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 94) + 48))(*((_DWORD *)this + 94), v5);
      (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 93) + 48))(*((_DWORD *)this + 93), v5);
      v8 = *((_DWORD *)this + 16);
      v9 = *((_DWORD *)this + 14) + 1;
      v10 = -*((_DWORD *)this + 99) - *((_DWORD *)this + 15) - 2;
      v11 = *((_DWORD *)this + 17);
      if ( *((_DWORD *)this + 101) > v8 - v9 )
      {
        v11 -= v6;
        (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 94) + 48))(*((_DWORD *)this + 94), 1);
        (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 94) + 128))(
          *((_DWORD *)this + 94),
          *((_DWORD *)this + 101) - (v8 - v9));
      }
      v12 = v10 + v11;
      if ( *((_DWORD *)this + 100) > v12 )
      {
        (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 93) + 48))(*((_DWORD *)this + 93), 1);
        (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 93) + 128))(
          *((_DWORD *)this + 93),
          *((_DWORD *)this + 100) - v12);
        if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 44))(*((_DWORD *)this + 94)) )
        {
          v22 = v8 - v6 - v9;
          if ( *((_DWORD *)this + 101) > v22 )
          {
            (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 94) + 48))(*((_DWORD *)this + 94), 1);
            (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 94) + 128))(
              *((_DWORD *)this + 94),
              *((_DWORD *)this + 101) - v22);
          }
        }
      }
      if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 44))(*((_DWORD *)this + 93)) )
      {
        if ( !v26 )
          (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 93) + 152))(*((_DWORD *)this + 93), 0);
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 44))(*((_DWORD *)this + 94)) )
        {
          v13 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
          v14 = *((float **)this + 93);
          v15 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11) + ~v6;
          v30[0] = v13 - v6;
          v30[1] = 1;
          v30[2] = v13 - 1;
          v30[3] = v15;
          glitch::gui::IGUIElement::setRelativePosition(v14, v30);
        }
        else
        {
          v23 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10);
          v24 = *((float **)this + 93);
          v25 = *((_DWORD *)this + 13) - 1 - *((_DWORD *)this + 11);
          v29[0] = v23 - v6;
          v29[1] = 1;
          v29[2] = v23 - 1;
          v29[3] = v25;
          glitch::gui::IGUIElement::setRelativePosition(v24, v29);
        }
      }
      result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 44))(*((_DWORD *)this + 94));
      if ( result )
      {
        if ( !v7 )
          (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 94) + 152))(*((_DWORD *)this + 94), 0);
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 44))(*((_DWORD *)this + 93)) )
        {
          v16 = *((float **)this + 94);
          v17 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11);
          v18 = *((_DWORD *)this + 12) - *((_DWORD *)this + 10) + ~v6;
          v28[0] = 1;
          v28[1] = v17 - v6;
          v28[2] = v18;
          v28[3] = v17 - 1;
          return glitch::gui::IGUIElement::setRelativePosition(v16, v28);
        }
        else
        {
          v19 = *((_DWORD *)this + 13) - *((_DWORD *)this + 11);
          v20 = *((float **)this + 94);
          v21 = *((_DWORD *)this + 12) - 1 - *((_DWORD *)this + 10);
          v27[0] = 1;
          v27[1] = v19 - v6;
          v27[2] = v21;
          v27[3] = v19 - 1;
          return glitch::gui::IGUIElement::setRelativePosition(v20, v27);
        }
      }
    }
  }
  return result;
}


// ===== 5558ac glitch::gui::CGUITable::refreshControls(void) =====
int __fastcall glitch::gui::CGUITable::refreshControls(glitch::gui::CGUITable *this)
{
  int v2; // r3
  int v3; // r3

  (*(void (__fastcall **)(glitch::gui::CGUITable *))(*(_DWORD *)this + 12))(this);
  v2 = *((_DWORD *)this + 93);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v2 + 48))(*((_DWORD *)this + 93), 0);
  v3 = *((_DWORD *)this + 94);
  if ( v3 )
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v3 + 48))(*((_DWORD *)this + 94), 0);
  glitch::gui::CGUITable::recalculateHeights(this);
  return glitch::gui::CGUITable::recalculateWidths(this);
}


// ===== 555914 glitch::gui::CGUITable::setColumnOrdering(uint,glitch::gui::EGUI_COLUMN_ORDERING) =====
int __fastcall glitch::gui::CGUITable::setColumnOrdering(int a1, unsigned int a2, int a3)
{
  int v3; // r12
  int result; // r0

  v3 = *(_DWORD *)(a1 + 348);
  result = *(_DWORD *)(a1 + 344);
  if ( a2 < 1022611261 * ((v3 - result) >> 2) )
  {
    result += 84 * a2;
    *(_DWORD *)(result + 80) = a3;
  }
  return result;
}


// ===== 555944 glitch::gui::CGUITable::dragColumnStart(int,int) =====
int __fastcall glitch::gui::CGUITable::dragColumnStart(glitch::gui::CGUITable *this, int a2, int a3)
{
  int v5; // r3
  int v6; // r6
  int v7; // r12
  int v8; // r3
  int v9; // r2
  int i; // r6
  int v11; // r1

  if ( !*((_BYTE *)this + 392) || *((_DWORD *)this + 99) + *((_DWORD *)this + 15) < a3 )
    return 0;
  v5 = *((_DWORD *)this + 94);
  v6 = *((_DWORD *)this + 14) + 1;
  if ( v5 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 44))(*((_DWORD *)this + 94)) )
    v6 -= (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 148))(*((_DWORD *)this + 94));
  v7 = *((_DWORD *)this + 86);
  v8 = 1022611261 * ((*((_DWORD *)this + 87) - v7) >> 2) - 1;
  if ( v8 < 0 )
    return 0;
  v9 = 84 * v8;
  for ( i = v6 + *((_DWORD *)this + 101); ; i -= v11 )
  {
    v11 = *(_DWORD *)(v7 + v9 + 76);
    if ( i - 3 <= a2 && a2 <= i + 2 )
      break;
    --v8;
    v9 -= 84;
    if ( v8 == -1 )
      return 0;
  }
  *((_DWORD *)this + 97) = a2;
  *((_DWORD *)this + 96) = v8;
  return 1;
}


// ===== 555a3c glitch::gui::CGUITable::dragColumnUpdate(int) =====
int __fastcall glitch::gui::CGUITable::dragColumnUpdate(glitch::gui::CGUITable *this, int a2)
{
  int v5; // r1
  int v6; // r2
  int v7; // r2

  if ( *((_BYTE *)this + 392)
    && (v5 = *((_DWORD *)this + 96), v5 >= 0)
    && (v6 = *((_DWORD *)this + 86), v5 < 1022611261 * ((*((_DWORD *)this + 87) - v6) >> 2)) )
  {
    v7 = *(_DWORD *)(v6 + 84 * v5 + 76) - *((_DWORD *)this + 97) + a2;
    (*(void (__fastcall **)(glitch::gui::CGUITable *, int, int))(*(_DWORD *)this + 148))(this, v5, v7 & ~(v7 >> 31));
    *((_DWORD *)this + 97) = a2;
    return 0;
  }
  else
  {
    *((_DWORD *)this + 96) = -1;
    return 0;
  }
}


// ===== 555ac8 glitch::gui::CGUITable::selectColumnHeader(int,int) =====
int __fastcall glitch::gui::CGUITable::selectColumnHeader(glitch::gui::CGUITable *this, int a2, int a3)
{
  int v5; // r3
  int v6; // r6
  int v7; // r0
  int v8; // r12
  int v9; // r3
  int v10; // r1
  int v11; // r2

  if ( *((_DWORD *)this + 99) + *((_DWORD *)this + 15) < a3 )
    return 0;
  v5 = *((_DWORD *)this + 94);
  v6 = *((_DWORD *)this + 14) + 1;
  if ( v5 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 44))(*((_DWORD *)this + 94)) )
    v6 -= (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 148))(*((_DWORD *)this + 94));
  v7 = *((_DWORD *)this + 86);
  v8 = 1022611261 * ((*((_DWORD *)this + 87) - v7) >> 2);
  if ( !v8 )
    return 0;
  v9 = 0;
  v10 = 0;
  while ( 1 )
  {
    v11 = *(_DWORD *)(v7 + v9 + 76);
    if ( a2 >= v6 && a2 < v6 + v11 )
      break;
    ++v10;
    v9 += 84;
    if ( v8 == v10 )
      return 0;
    v6 += v11;
  }
  (*(void (__fastcall **)(glitch::gui::CGUITable *, int, int))(*(_DWORD *)this + 136))(this, v10, 1);
  return 1;
}


// ===== 555bb0 glitch::gui::CGUITable::selectNew(int,bool) =====
int __fastcall glitch::gui::CGUITable::selectNew(glitch::gui::CGUITable *this, int a2, int a3)
{
  int result; // r0
  int v7; // r10
  int v8; // r8
  int v9; // r7
  int v10; // r3
  int v11; // r3
  int v12; // r2
  int v13; // r7
  _DWORD v14[7]; // [sp+0h] [bp-1Ch] BYREF

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( result )
  {
    v7 = *((_DWORD *)this + 15);
    v8 = *((_DWORD *)this + 99);
    v9 = *((_DWORD *)this + 102);
    if ( v8 + v7 <= a2 )
    {
      if ( v8 )
      {
        result = (~v7
                - v8
                + a2
                + (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 148))(*((_DWORD *)this + 93)))
               / *((_DWORD *)this + 99);
        *((_DWORD *)this + 102) = result;
      }
      else
      {
        result = *((_DWORD *)this + 102);
      }
      v10 = -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2);
      if ( result < v10 )
      {
        if ( result < 0 )
          *((_DWORD *)this + 102) = 0;
      }
      else
      {
        *((_DWORD *)this + 102) = v10 - 1;
      }
      v11 = *((_DWORD *)this + 9);
      if ( v11 && !a3 )
      {
        v12 = *((_DWORD *)this + 102);
        v14[0] = 0;
        v14[2] = this;
        if ( v12 == v9 )
          v13 = 23;
        else
          v13 = 21;
        v14[4] = v13;
        return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v11 + 8))(v11, v14);
      }
    }
  }
  return result;
}


// ===== 555cc4 glitch::gui::CGUITable::selectColumn(int,bool) =====
int __fastcall glitch::gui::CGUITable::selectColumn(int this, int a2, int a3)
{
  int v3; // r4
  int v6; // r3
  int v7; // r6
  int v8; // r12
  int v9; // r3
  int v10; // r2
  int v11; // r1
  int v12; // r3
  int v13; // r2
  _DWORD v14[6]; // [sp+0h] [bp-18h] BYREF

  v3 = this;
  if ( *(_BYTE *)(this + 393) )
  {
    v6 = *(_DWORD *)(this + 376);
    v7 = *(_DWORD *)(this + 56) + 1;
    if ( v6 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 44))(*(_DWORD *)(this + 376)) )
      v7 -= (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v3 + 376) + 148))(*(_DWORD *)(v3 + 376));
    this = *(_DWORD *)(v3 + 344);
    v8 = 1022611261 * ((*(_DWORD *)(v3 + 348) - this) >> 2);
    if ( v8 )
    {
      v9 = 0;
      v10 = 0;
      while ( 1 )
      {
        v11 = *(_DWORD *)(this + v9 + 76);
        if ( a2 >= v7 && a2 < v7 + v11 )
          break;
        ++v10;
        v9 += 84;
        if ( v8 == v10 )
          return this;
        v7 += v11;
      }
      v12 = *(_DWORD *)(v3 + 36);
      *(_DWORD *)(v3 + 412) = v10;
      if ( v12 && !a3 )
      {
        if ( v10 == 1 )
          v13 = 23;
        else
          v13 = 21;
        v14[0] = 0;
        v14[2] = v3;
        v14[4] = v13;
        return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 8))(v12, v14);
      }
    }
  }
  return this;
}


// ===== 555dd8 glitch::gui::CGUITable::setDrawFlags(int) =====
int __fastcall glitch::gui::CGUITable::setDrawFlags(int this, int a2)
{
  *(_DWORD *)(this + 432) = a2;
  return this;
}


// ===== 555de0 glitch::gui::CGUITable::getDrawFlags(void) =====
int __fastcall glitch::gui::CGUITable::getDrawFlags(glitch::gui::CGUITable *this)
{
  return *((_DWORD *)this + 108);
}


// ===== 555de8 glitch::gui::CGUITable::getRowColumn(uint,uint,int &,int &) =====
int __fastcall glitch::gui::CGUITable::getRowColumn(glitch::gui::CGUITable *this, int a2, int a3, int *a4, int *a5)
{
  int result; // r0
  int v10; // r10
  signed int v11; // r8
  int v12; // r8
  int v13; // r3
  int v14; // r6
  int v15; // r7
  int v16; // r3
  int v17; // r6
  int v18; // r2
  bool v19; // cc
  int v20; // r1
  _BOOL4 v21; // r12
  bool v22; // cf

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
  if ( result )
  {
    v10 = *((_DWORD *)this + 15);
    v11 = *((_DWORD *)this + 99);
    if ( a3 >= v11 + v10 )
    {
      if ( v11 )
        v11 = (unsigned int)(~v11
                           - v10
                           + a3
                           + (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 148))(*((_DWORD *)this + 93)))
            / *((_DWORD *)this + 99);
      if ( v11 < -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2) )
        v12 = v11 | (v11 >> 31);
      else
        v12 = -1;
      *a4 = v12;
      v13 = *((_DWORD *)this + 94);
      v14 = *((_DWORD *)this + 14) + 1;
      if ( v13 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 44))(*((_DWORD *)this + 94)) )
        v14 -= (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 148))(*((_DWORD *)this + 94));
      v15 = *((_DWORD *)this + 86);
      result = 1022611261 * ((*((_DWORD *)this + 87) - v15) >> 2);
      v16 = result - 1;
      if ( result - 1 >= 0 )
      {
        v17 = v14 + *((_DWORD *)this + 101);
        v18 = v17 - *(_DWORD *)(v15 + 84 * v16 + 76);
        v19 = a2 <= v18;
        if ( a2 >= v18 )
          v19 = v17 <= a2;
        if ( v19 )
        {
          v20 = 84 * (result - 2);
          while ( 1 )
          {
            v22 = v16-- != 0;
            result = v15 + v20;
            if ( !v22 )
              break;
            v20 -= 84;
            result = v18 - *(_DWORD *)(result + 76);
            v21 = result <= a2;
            if ( v18 <= a2 )
              v21 = 0;
            if ( v21 )
              goto LABEL_23;
            v18 = result;
          }
        }
        else
        {
LABEL_23:
          *a5 = v16;
        }
      }
    }
  }
  return result;
}


// ===== 555f80 `global constructor keyed to'.._source_glitch_gui_CGUITable.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUITable.cpp()
{
  dword_9F66A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F669C = 1056964608;
}


// ===== 555fa0 std::priv::__ufill<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column,int>(glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ufill<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column,int>(
        _DWORD *result,
        int a2,
        int a3)
{
  int v3; // r6
  _DWORD *i; // r4

  v3 = 1022611261 * ((a2 - (int)result) >> 2);
  if ( v3 > 0 )
  {
    for ( i = result; ; i += 21 )
    {
      i[16] = i;
      i[17] = i;
      result = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                 i,
                 *(_BYTE **)(a3 + 68),
                 *(_BYTE **)(a3 + 64));
      --v3;
      i[18] = *(_DWORD *)(a3 + 72);
      i[19] = *(_DWORD *)(a3 + 76);
      i[20] = *(_DWORD *)(a3 + 80);
      if ( !v3 )
        break;
    }
  }
  return result;
}


// ===== 55600c std::priv::__ucopy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r7
  int v4; // r5
  int v6; // r6
  _DWORD *v7; // r4
  int v8; // r3

  v3 = 1022611261 * ((a2 - a1) >> 2);
  v4 = a1;
  if ( v3 <= 0 )
    return a3;
  v6 = 1022611261 * ((a2 - a1) >> 2);
  v7 = a3;
  do
  {
    v7[16] = v7;
    v7[17] = v7;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v7,
      *(_BYTE **)(v4 + 68),
      *(_BYTE **)(v4 + 64));
    --v6;
    v7[18] = *(_DWORD *)(v4 + 72);
    v7[19] = *(_DWORD *)(v4 + 76);
    v8 = *(_DWORD *)(v4 + 80);
    v4 += 84;
    v7[20] = v8;
    v7 += 21;
  }
  while ( v6 );
  return &a3[21 * v3];
}


// ===== 556090 glitch::gui::CGUITable::Cell::Cell(glitch::gui::CGUITable::Cell const&) =====
_DWORD *__fastcall glitch::gui::CGUITable::Cell::Cell(_DWORD *a1, int a2)
{
  a1[16] = a1;
  a1[17] = a1;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    *(_BYTE **)(a2 + 68),
    *(_BYTE **)(a2 + 64));
  a1[34] = a1 + 18;
  a1[35] = a1 + 18;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1 + 18,
    *(_BYTE **)(a2 + 140),
    *(_BYTE **)(a2 + 136));
  a1[36] = *(_DWORD *)(a2 + 144);
  a1[37] = *(_DWORD *)(a2 + 148);
  return a1;
}


// ===== 5560e0 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compare(wchar_t const*,wchar_t const*,wchar_t const*,wchar_t const*) =====
int __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compare(
        const wchar_t *a1,
        int a2,
        wchar_t *s2,
        int a4)
{
  int v4; // r1
  int v5; // r3
  int v7; // r5
  int v8; // r4
  size_t v9; // r2
  int result; // r0

  v4 = a2 - (_DWORD)a1;
  v5 = a4 - (_DWORD)s2;
  v7 = v4 >> 2;
  v8 = v5 >> 2;
  if ( v5 >> 2 >= v4 >> 2 )
    v9 = v4 >> 2;
  else
    v9 = v5 >> 2;
  result = wmemcmp(a1, s2, v9);
  if ( !result )
  {
    if ( v7 < v8 )
      return -1;
    else
      return v7 > v8;
  }
  return result;
}


// ===== 556130 std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 556134 glitch::gui::IGUITable::IGUITable(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUITable::IGUITable(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r6
  int v8; // r10
  int v9; // r8
  int v10; // r7
  int v11; // r0
  _DWORD *v14; // r3
  int v15; // r0
  int v16; // r12
  int v17; // r10
  int v18; // r8
  int v19; // r2
  int v20; // r1
  int v21; // r6
  int v22; // r7
  int v23; // r0
  int v24; // r1
  int v25; // r1
  int v26; // r2
  int v27; // r1
  int v28; // r3
  int v29; // r1
  bool v30; // cc
  int v31; // r3
  int v32; // r3

  v7 = a6[3];
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  *(_DWORD *)a1 = off_95C300;
  v11 = a2[1];
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 12)) = a2[2];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 28) = a1 + 12;
  *(_DWORD *)(a1 + 32) = a1 + 12;
  *(_DWORD *)(a1 + 8) = a1 + 4;
  *(_DWORD *)(a1 + 4) = a1 + 4;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_BYTE **)(a1 + 28) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 88) = v8;
  *(_DWORD *)(a1 + 92) = v9;
  *(_DWORD *)(a1 + 96) = v10;
  *(_DWORD *)(a1 + 100) = v7;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = v8;
  *(_DWORD *)(a1 + 44) = v9;
  *(_DWORD *)(a1 + 48) = v10;
  *(_DWORD *)(a1 + 52) = v7;
  *(_DWORD *)(a1 + 56) = v8;
  *(_DWORD *)(a1 + 60) = v9;
  *(_DWORD *)(a1 + 64) = v10;
  *(_DWORD *)(a1 + 68) = v7;
  *(_DWORD *)(a1 + 72) = v8;
  *(_DWORD *)(a1 + 76) = v9;
  *(_DWORD *)(a1 + 80) = v10;
  *(_DWORD *)(a1 + 84) = v7;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 160),
    0x10u);
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 232),
    0x10u);
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 19;
  *(_DWORD *)(a1 + 336) = a3;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v14 = *(_DWORD **)(a1 + 36);
  if ( v14 )
  {
    v15 = v14[15];
    v16 = v14[14];
    v17 = v14[16];
    v18 = v14[17];
    v19 = v15 + *(_DWORD *)(a1 + 68);
    v20 = v16 + *(_DWORD *)(a1 + 64);
    v21 = v15 + *(_DWORD *)(a1 + 60);
    v22 = v16 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v21;
    *(_DWORD *)(a1 + 84) = v19;
    *(_DWORD *)(a1 + 72) = v22;
    *(_DWORD *)(a1 + 80) = v20;
    *(_DWORD *)(a1 + 68) = v19;
    *(_DWORD *)(a1 + 112) = v17;
    *(_DWORD *)(a1 + 116) = v18;
    *(_DWORD *)(a1 + 104) = v16;
    *(_DWORD *)(a1 + 108) = v15;
    *(_DWORD *)(a1 + 56) = v22;
    *(_DWORD *)(a1 + 60) = v21;
    *(_DWORD *)(a1 + 64) = v20;
    v23 = v14[20];
    if ( v20 > v23 )
      *(_DWORD *)(a1 + 80) = v23;
    v24 = v14[21];
    if ( v19 > v24 )
      *(_DWORD *)(a1 + 84) = v24;
    v25 = v14[18];
    v26 = *(_DWORD *)(a1 + 72);
    if ( v25 > v26 )
    {
      *(_DWORD *)(a1 + 72) = v25;
      v26 = v25;
    }
    v27 = v14[19];
    v28 = *(_DWORD *)(a1 + 76);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 76) = v27;
      v28 = v27;
    }
    v29 = *(_DWORD *)(a1 + 84);
    v30 = v29 < v28;
    v31 = *(_DWORD *)(a1 + 80);
    if ( v30 )
      *(_DWORD *)(a1 + 76) = v29;
    if ( v26 > v31 )
      *(_DWORD *)(a1 + 72) = v31;
  }
  v32 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v32 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 5563fc glitch::gui::CGUITable::CGUITable(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool,bool,bool) =====
int __fastcall glitch::gui::CGUITable::CGUITable(int a1, int a2, int a3, int a4, int *a5, char a6, char a7, char a8)
{
  int v8; // r9
  int v9; // r10
  int v10; // r11
  int v12; // r0
  int (__fastcall *v13)(int, _DWORD, _DWORD *, int, int); // r12
  _DWORD *v14; // r0
  int v15; // r0
  int (__fastcall *v16)(int, int, _DWORD *, int, int, int); // r12
  _DWORD *v17; // r0
  int v19; // [sp+4h] [bp-38h]
  _DWORD v20[4]; // [sp+8h] [bp-34h] BYREF
  _DWORD v21[4]; // [sp+18h] [bp-24h] BYREF
  int v22[5]; // [sp+28h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 440) = off_95B720;
  *(_DWORD *)(a1 + 436) = off_971E2C;
  *(_DWORD *)(a1 + 444) = 1;
  *(_DWORD *)&byte_4[a1 + 436] = off_971E4C;
  v8 = a5[3];
  v9 = a5[1];
  v10 = a5[2];
  v22[0] = *a5;
  v22[1] = v9;
  v22[3] = v8;
  v22[2] = v10;
  glitch::gui::IGUITable::IGUITable(a1, (int *)off_971BDC, a2, a3, a4, v22);
  v12 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 384) = -1;
  *(_DWORD *)(a1 + 436) = off_971BAC;
  *(_DWORD *)(a1 + 416) = 2;
  *(_DWORD *)(a1 + 420) = 5;
  *(_DWORD *)(a1 + 432) = 7;
  *(_DWORD *)(a1 + 408) = -1;
  *(_DWORD *)(a1 + 424) = -1;
  *(_DWORD *)a1 = off_971A98;
  *(_DWORD *)(a1 + 440) = off_971BCC;
  *(_BYTE *)(a1 + 380) = a6;
  *(_BYTE *)(a1 + 381) = a7;
  *(_BYTE *)(a1 + 382) = a8;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_BYTE *)(a1 + 383) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_WORD *)(a1 + 392) = 1;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  v13 = *(int (__fastcall **)(int, _DWORD, _DWORD *, int, int))(*(_DWORD *)v12 + 136);
  v21[0] = 0;
  v21[3] = 100;
  v21[2] = 100;
  v21[1] = 0;
  v14 = (_DWORD *)v13(v12, 0, v21, a1, -1);
  *(_DWORD *)(a1 + 372) = v14;
  if ( v14 )
  {
    ++*(_DWORD *)((char *)v14 + *(_DWORD *)(*v14 - 16) + 4);
    *(_BYTE *)(*(_DWORD *)(a1 + 372) + 155) = 0;
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 372) + 56))(*(_DWORD *)(a1 + 372), 1);
  }
  v15 = *(_DWORD *)(a1 + 336);
  v16 = *(int (__fastcall **)(int, int, _DWORD *, int, int, int))(*(_DWORD *)v15 + 136);
  v20[3] = 100;
  v20[2] = 100;
  v20[0] = 0;
  v20[1] = 0;
  v17 = (_DWORD *)v16(v15, 1, v20, a1, -1, v19);
  *(_DWORD *)(a1 + 376) = v17;
  if ( v17 )
  {
    ++*(_DWORD *)((char *)v17 + *(_DWORD *)(*v17 - 16) + 4);
    *(_BYTE *)(*(_DWORD *)(a1 + 376) + 155) = 0;
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 376) + 56))(*(_DWORD *)(a1 + 376));
  }
  glitch::gui::CGUITable::refreshControls((glitch::gui::CGUITable *)a1);
  return a1;
}


// ===== 55664c glitch::gui::CGUITable::CGUITable(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>,bool,bool,bool) =====
int __fastcall glitch::gui::CGUITable::CGUITable(
        int a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        int *a6,
        char a7,
        char a8,
        char a9)
{
  int v10; // lr
  int v11; // r4
  int v12; // r12
  int v14; // r2
  int v15; // r0
  int (__fastcall *v16)(int, _DWORD, _DWORD *, int, int); // r12
  _DWORD *v17; // r0
  int v18; // r0
  int (__fastcall *v19)(int, int, _DWORD *, int, int, int); // r12
  _DWORD *v20; // r0
  int v22; // [sp+4h] [bp-34h]
  _DWORD v23[4]; // [sp+8h] [bp-30h] BYREF
  _DWORD v24[4]; // [sp+18h] [bp-20h] BYREF
  int v25[4]; // [sp+28h] [bp-10h] BYREF

  v10 = a6[3];
  v11 = a6[1];
  v12 = a6[2];
  v25[0] = *a6;
  v25[2] = v12;
  v25[1] = v11;
  v25[3] = v10;
  glitch::gui::IGUITable::IGUITable(a1, a2 + 1, a3, a4, a5, v25);
  v14 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v14 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_DWORD *)(a1 + 416) = 2;
  *(_DWORD *)(a1 + 420) = 5;
  *(_DWORD *)(a1 + 384) = -1;
  *(_DWORD *)(a1 + 408) = -1;
  *(_DWORD *)(a1 + 424) = -1;
  *(_BYTE *)(a1 + 380) = a7;
  *(_BYTE *)(a1 + 381) = a8;
  *(_BYTE *)(a1 + 382) = a9;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_BYTE *)(a1 + 383) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_BYTE *)(a1 + 392) = 1;
  *(_BYTE *)(a1 + 393) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  v15 = *(_DWORD *)(a1 + 336);
  *(_DWORD *)(a1 + 432) = 7;
  v16 = *(int (__fastcall **)(int, _DWORD, _DWORD *, int, int))(*(_DWORD *)v15 + 136);
  v24[3] = 100;
  v24[0] = 0;
  v24[1] = 0;
  v24[2] = 100;
  v17 = (_DWORD *)v16(v15, 0, v24, a1, -1);
  *(_DWORD *)(a1 + 372) = v17;
  if ( v17 )
  {
    ++*(_DWORD *)((char *)v17 + *(_DWORD *)(*v17 - 16) + 4);
    *(_BYTE *)(*(_DWORD *)(a1 + 372) + 155) = 0;
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 372) + 56))(*(_DWORD *)(a1 + 372), 1);
  }
  v18 = *(_DWORD *)(a1 + 336);
  v19 = *(int (__fastcall **)(int, int, _DWORD *, int, int, int))(*(_DWORD *)v18 + 136);
  v23[3] = 100;
  v23[2] = 100;
  v23[0] = 0;
  v23[1] = 0;
  v20 = (_DWORD *)v19(v18, 1, v23, a1, -1, v22);
  *(_DWORD *)(a1 + 376) = v20;
  if ( v20 )
  {
    ++*(_DWORD *)((char *)v20 + *(_DWORD *)(*v20 - 16) + 4);
    *(_BYTE *)(*(_DWORD *)(a1 + 376) + 155) = 0;
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 376) + 56))(*(_DWORD *)(a1 + 376));
  }
  glitch::gui::CGUITable::refreshControls((glitch::gui::CGUITable *)a1);
  return a1;
}


// ===== 556850 glitch::gui::CGUITable::Cell::Cell(void) =====
glitch::gui::CGUITable::Cell *__fastcall glitch::gui::CGUITable::Cell::Cell(glitch::gui::CGUITable::Cell *this)
{
  *((_DWORD *)this + 16) = this;
  *((_DWORD *)this + 17) = this;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    0x10u);
  **((_DWORD **)this + 16) = 0;
  *((_DWORD *)this + 34) = (char *)this + 72;
  *((_DWORD *)this + 35) = (char *)this + 72;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 18,
    0x10u);
  **((_DWORD **)this + 34) = 0;
  *((_DWORD *)this + 37) = 0;
  return this;
}


// ===== 5568a0 glitch::gui::CGUITable::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUITable::onEvent(glitch::gui::CGUITable *this, float *a2)
{
  int v4; // r3
  int v5; // r3
  int result; // r0
  int v7; // r6
  int v8; // r7
  int v9; // r3
  int v10; // r6
  void (__fastcall *v11)(int, int); // r4
  int v12; // r0
  int v13; // r1
  int v14; // r2
  bool v15; // cc
  int v16; // r3
  _DWORD *v17; // r3
  _DWORD *v18; // r3
  _DWORD *v19; // r3
  _DWORD *v20; // r3

  if ( !*((_BYTE *)this + 153) )
    goto LABEL_6;
  if ( !*(_DWORD *)a2 )
  {
    v4 = *((_DWORD *)a2 + 4);
    if ( v4 )
    {
      if ( v4 == 6 )
      {
        v9 = *((_DWORD *)a2 + 2);
        if ( v9 == *((_DWORD *)this + 93) || v9 == *((_DWORD *)this + 94) )
          return 1;
      }
    }
    else
    {
      *((_DWORD *)this + 96) = -1;
      *((_BYTE *)this + 383) = 0;
    }
    goto LABEL_6;
  }
  if ( *(_DWORD *)a2 != 1 )
  {
LABEL_6:
    v5 = *((_DWORD *)this + 9);
    if ( v5 )
      return (*(int (__fastcall **)(_DWORD, float *))(*(_DWORD *)v5 + 8))(*((_DWORD *)this + 9), a2);
    else
      return 0;
  }
  v7 = *((_DWORD *)a2 + 2);
  v8 = *((_DWORD *)a2 + 3);
  switch ( *((_DWORD *)a2 + 5) )
  {
    case 0:
      if ( (*(int (__fastcall **)(_DWORD, glitch::gui::CGUITable *))(**((_DWORD **)this + 84) + 28))(
             *((_DWORD *)this + 84),
             this) )
      {
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 44))(*((_DWORD *)this + 93)) )
        {
          v18 = *((_DWORD **)this + 93);
          if ( v7 >= v18[14]
            && v8 >= v18[15]
            && v7 <= v18[16]
            && v8 <= v18[17]
            && (*(int (__fastcall **)(_DWORD, float *))(*v18 + 8))(*((_DWORD *)this + 93), a2) )
          {
            return 1;
          }
        }
      }
      if ( (*(int (__fastcall **)(_DWORD, glitch::gui::CGUITable *))(**((_DWORD **)this + 84) + 28))(
             *((_DWORD *)this + 84),
             this) )
      {
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 44))(*((_DWORD *)this + 94)) )
        {
          v19 = *((_DWORD **)this + 94);
          if ( v7 >= v19[14]
            && v8 >= v19[15]
            && v7 <= v19[16]
            && v8 <= v19[17]
            && (*(int (__fastcall **)(_DWORD, float *))(*v19 + 8))(*((_DWORD *)this + 94), a2) )
          {
            return 1;
          }
        }
      }
      if ( glitch::gui::CGUITable::dragColumnStart(this, *((_DWORD *)a2 + 2), *((_DWORD *)a2 + 3)) )
      {
        (*(void (__fastcall **)(_DWORD, glitch::gui::CGUITable *))(**((_DWORD **)this + 84) + 16))(
          *((_DWORD *)this + 84),
          this);
        result = 1;
      }
      else
      {
        if ( glitch::gui::CGUITable::selectColumnHeader(this, *((_DWORD *)a2 + 2), *((_DWORD *)a2 + 3)) )
          return 1;
        v16 = *((_DWORD *)this + 84);
        *((_BYTE *)this + 383) = 1;
        (*(void (__fastcall **)(int, glitch::gui::CGUITable *))(*(_DWORD *)v16 + 16))(v16, this);
        result = 1;
      }
      break;
    case 3:
      v13 = *((_DWORD *)this + 16);
      v14 = *((_DWORD *)this + 17);
      v15 = v7 < *((_DWORD *)this + 14);
      *((_DWORD *)this + 96) = -1;
      *((_BYTE *)this + 383) = 0;
      if ( v15 || v8 < *((_DWORD *)this + 15) || v7 > v13 || v8 > v14 )
        (*(void (__fastcall **)(_DWORD, glitch::gui::CGUITable *, int))(**((_DWORD **)this + 84) + 24))(
          *((_DWORD *)this + 84),
          this,
          v14);
      if ( (*(int (__fastcall **)(_DWORD, glitch::gui::CGUITable *))(**((_DWORD **)this + 84) + 28))(
             *((_DWORD *)this + 84),
             this) )
      {
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 93) + 44))(*((_DWORD *)this + 93)) )
        {
          v17 = *((_DWORD **)this + 93);
          if ( v7 >= v17[14]
            && v8 >= v17[15]
            && v7 <= v17[16]
            && v8 <= v17[17]
            && (*(int (__fastcall **)(_DWORD, float *))(*v17 + 8))(*((_DWORD *)this + 93), a2) )
          {
            return 1;
          }
        }
      }
      if ( (*(int (__fastcall **)(_DWORD, glitch::gui::CGUITable *))(**((_DWORD **)this + 84) + 28))(
             *((_DWORD *)this + 84),
             this) )
      {
        if ( (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 44))(*((_DWORD *)this + 94)) )
        {
          v20 = *((_DWORD **)this + 94);
          if ( v7 >= v20[14]
            && v8 >= v20[15]
            && v7 <= v20[16]
            && v8 <= v20[17]
            && (*(int (__fastcall **)(_DWORD, float *))(*v20 + 8))(*((_DWORD *)this + 94), a2) )
          {
            return 1;
          }
        }
      }
      glitch::gui::CGUITable::selectNew(this, *((_DWORD *)a2 + 3), 0);
      glitch::gui::CGUITable::selectColumn((int)this, *((_DWORD *)a2 + 2), 0);
      return 1;
    case 6:
      if ( *((int *)this + 96) >= 0 && glitch::gui::CGUITable::dragColumnUpdate(this, *((_DWORD *)a2 + 2)) )
        return 1;
      if ( !*((_BYTE *)this + 383) && !*((_BYTE *)this + 382)
        || v7 < *((_DWORD *)this + 14)
        || v8 < *((_DWORD *)this + 15)
        || v7 > *((_DWORD *)this + 16)
        || v8 > *((_DWORD *)this + 17) )
      {
        goto LABEL_6;
      }
      glitch::gui::CGUITable::selectNew(this, *((_DWORD *)a2 + 3), 0);
      return 1;
    case 7:
      v10 = *((_DWORD *)this + 93);
      v11 = *(void (__fastcall **)(int, int))(*(_DWORD *)v10 + 152);
      v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 148))(v10);
      v11(v10, v12 - 10 * (int)a2[4]);
      return (int)&dword_0 + 1;
    default:
      goto LABEL_6;
  }
  return result;
}


// ===== 556d64 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::gui::CGUITable::Cell const*>(uint &,glitch::gui::CGUITable::Cell const*,glitch::gui::CGUITable::Cell const*) =====
char *__fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::gui::CGUITable::Cell const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)GlitchAlloc(152 * *a2, 0);
  v7 = 678152731 * ((a4 - a3) >> 3);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      glitch::gui::CGUITable::Cell::Cell(&v6[v8], a3 + v8);
      --v7;
      v8 += 152;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 556dd4 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int *a2)
{
  int v2; // r4
  size_t v5; // r7
  char *v6; // r0
  int v7; // r7
  char *v8; // r6
  char *v9; // r3
  int v10; // r10
  int v11; // r5

  v2 = 0;
  v5 = 3 * ((a2[1] - *a2) >> 3);
  *a1 = 0;
  a1[1] = 0;
  v5 *= 1431655768;
  a1[2] = 0;
  v6 = (char *)GlitchAlloc(v5, 0);
  a1[2] = &v6[v5];
  *a1 = v6;
  a1[1] = v6;
  v7 = *a2;
  v8 = v6;
  v9 = v6;
  v10 = 678152731 * ((a2[1] - *a2) >> 3);
  if ( v10 > 0 )
  {
    v11 = 678152731 * ((a2[1] - *a2) >> 3);
    do
    {
      glitch::gui::CGUITable::Cell::Cell(&v8[v2], v7 + v2);
      --v11;
      v2 += 152;
    }
    while ( v11 );
    v9 = &v8[152 * v10];
  }
  a1[1] = v9;
  return a1;
}


// ===== 556ea0 glitch::gui::CGUITable::draw(void) =====
int __fastcall glitch::gui::CGUITable::draw(int this)
{
  int v1; // r4
  int v2; // r6
  int v3; // r7
  int v4; // r3
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r5
  void (__fastcall *v10)(int, int); // r8
  int v11; // r3
  int v12; // r10
  int v13; // r3
  int v14; // r8
  int v15; // lr
  int v16; // r12
  int v17; // r2
  unsigned int v18; // r11
  int v19; // r10
  int v20; // r9
  int v21; // r6
  int v22; // r1
  int v23; // r7
  int v24; // r5
  unsigned int v25; // r8
  void (__fastcall *v26)(int, int, int *, int, _DWORD, int, int *); // r12
  int v27; // r3
  int v28; // r11
  int v29; // r2
  int v30; // r3
  int v31; // r2
  int v32; // r11
  int v33; // r1
  int v34; // r3
  int v35; // r8
  bool v36; // zf
  int v37; // r11
  unsigned int v38; // r5
  int v39; // r9
  int v40; // r3
  int v41; // r7
  int v42; // r3
  int v43; // r7
  unsigned int v44; // r10
  int v45; // r1
  int v46; // r1
  void (__fastcall *v47)(int, int, int *); // r8
  void (__fastcall *v48)(int, int, int, _DWORD *, _DWORD, _DWORD, _DWORD, int *); // r12
  int v49; // r4
  int *i; // r5
  int *v51; // t1
  void (__fastcall *v52)(int, int, int, _DWORD *, _DWORD, _DWORD, _DWORD, int *); // r12
  void (__fastcall *v53)(int, int, int *, int, _DWORD, int, int *); // [sp+14h] [bp-D8h]
  void (__fastcall *v54)(int, int, int *, int, _DWORD, int, int *); // [sp+14h] [bp-D8h]
  int *v55; // [sp+18h] [bp-D4h]
  unsigned int v56; // [sp+20h] [bp-CCh]
  int v57; // [sp+20h] [bp-CCh]
  int v58; // [sp+30h] [bp-BCh]
  int v59; // [sp+34h] [bp-B8h]
  int v60; // [sp+38h] [bp-B4h]
  _DWORD v61[4]; // [sp+48h] [bp-A4h] BYREF
  int v62; // [sp+58h] [bp-94h] BYREF
  int v63; // [sp+5Ch] [bp-90h]
  int v64; // [sp+60h] [bp-8Ch]
  int v65; // [sp+64h] [bp-88h]
  int v66; // [sp+68h] [bp-84h] BYREF
  int v67; // [sp+6Ch] [bp-80h]
  int v68; // [sp+70h] [bp-7Ch]
  int v69; // [sp+74h] [bp-78h]
  _DWORD v70[2]; // [sp+78h] [bp-74h] BYREF
  int v71; // [sp+80h] [bp-6Ch]
  int v72; // [sp+84h] [bp-68h]
  int v73; // [sp+88h] [bp-64h] BYREF
  int v74; // [sp+8Ch] [bp-60h]
  int v75; // [sp+90h] [bp-5Ch]
  int v76; // [sp+94h] [bp-58h]
  int v77; // [sp+98h] [bp-54h] BYREF
  int v78; // [sp+9Ch] [bp-50h]
  int v79; // [sp+A0h] [bp-4Ch]
  int v80; // [sp+A4h] [bp-48h]
  int v81; // [sp+A8h] [bp-44h] BYREF
  int v82; // [sp+ACh] [bp-40h]
  int v83; // [sp+B0h] [bp-3Ch]
  int v84; // [sp+B4h] [bp-38h]
  _DWORD v85[2]; // [sp+B8h] [bp-34h] BYREF
  _DWORD v86[3]; // [sp+C0h] [bp-2Ch] BYREF
  int v87; // [sp+CCh] [bp-20h]
  int v88; // [sp+D0h] [bp-1Ch]
  int v89; // [sp+D4h] [bp-18h]
  int v90; // [sp+D8h] [bp-14h]
  int v91; // [sp+DCh] [bp-10h]
  int v92; // [sp+E0h] [bp-Ch]
  int v93; // [sp+E4h] [bp-8h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v60 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 32))(*(_DWORD *)(this + 336));
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 336) + 56))(*(_DWORD *)(v1 + 336));
    v2 = this;
    if ( this )
    {
      this = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)this + 40))(this, 0);
      v3 = this;
      if ( this )
      {
        v4 = *(_DWORD *)(v1 + 372);
        v5 = *(_DWORD *)(v1 + 68);
        v6 = *(_DWORD *)(v1 + 56) + 1;
        v7 = *(_DWORD *)(v1 + 60) + 1;
        v83 = *(_DWORD *)(v1 + 64);
        v84 = v5;
        v81 = v6;
        v82 = v7;
        if ( v4 && (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 44))(v4) )
          v83 -= (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 24))(v2, 0);
        v8 = *(_DWORD *)(v1 + 376);
        if ( v8 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 44))(*(_DWORD *)(v1 + 376)) )
          v84 -= (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 24))(v2, 0);
        v59 = *(_DWORD *)(v1 + 396) + v82;
        v9 = v59 + 1;
        v78 = v59 + 1;
        v77 = v81;
        v79 = v83;
        v80 = v84;
        v10 = *(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 72);
        v93 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 3);
        v10(v2, v1);
        v11 = *(_DWORD *)(v1 + 372);
        v58 = v81;
        v12 = v81 + *(_DWORD *)(v1 + 404);
        if ( v11 && (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 44))(v11) )
        {
          v9 -= (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 372) + 148))(*(_DWORD *)(v1 + 372));
          (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 372) + 148))(*(_DWORD *)(v1 + 372));
        }
        v13 = *(_DWORD *)(v1 + 376);
        if ( v13 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 44))(*(_DWORD *)(v1 + 376)) )
        {
          v58 = v81 - (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 376) + 148))(*(_DWORD *)(v1 + 376));
          v12 -= (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 376) + 148))(*(_DWORD *)(v1 + 376));
        }
        v14 = *(_DWORD *)(v1 + 360);
        v15 = *(_DWORD *)(v1 + 356);
        v16 = *(_DWORD *)(v1 + 396);
        v17 = v9 + v16;
        v75 = v12;
        v73 = v58;
        v74 = v9;
        v76 = v9 + v16;
        if ( -1431655765 * ((v14 - v15) >> 2) )
        {
          v55 = nullptr;
          v18 = 0;
          v19 = v3;
          v20 = v2;
          do
          {
            if ( *(_DWORD *)(v1 + 60) <= v17 && *(_DWORD *)(v1 + 68) >= v9 )
            {
              if ( (*(_DWORD *)(v1 + 432) & 1) != 0 )
              {
                v62 = v73;
                v63 = v76 - 1;
                v64 = v75;
                v65 = v76;
                v92 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 16))(v20, 1);
                glitch::video::C2DDriver::draw2DRectangle(v60, v92, &v62, &v77);
              }
              v21 = v73;
              v36 = *(_DWORD *)(v1 + 408) == v18;
              v66 = v73;
              v67 = v74;
              v68 = v75;
              v69 = v76;
              if ( v36 && (*(_DWORD *)(v1 + 432) & 4) != 0 )
              {
                v91 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 16))(v20, 10);
                glitch::video::C2DDriver::draw2DRectangle(v60, v91, &v73, &v77);
              }
              v22 = *(_DWORD *)(v1 + 344);
              if ( 1022611261 * ((*(_DWORD *)(v1 + 348) - v22) >> 2) )
              {
                v23 = 0;
                v24 = 0;
                v25 = 0;
                v56 = v18;
                while ( 1 )
                {
                  v30 = *(_DWORD *)(v1 + 420);
                  v31 = *(_DWORD *)(v1 + 408);
                  v66 = v21 + v30;
                  v68 = *(_DWORD *)(v22 + v24 + 76) - v30 + v21;
                  if ( v31 == v56 )
                  {
                    v32 = *(_DWORD *)(*(int *)((char *)v55 + *(_DWORD *)(v1 + 356)) + v23 + 140);
                    v53 = *(void (__fastcall **)(int, int, int *, int, _DWORD, int, int *))(*(_DWORD *)v19 + 12);
                    v33 = *(_BYTE *)(v1 + 153) ? 11 : 9;
                    v90 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 16))(v20, v33);
                    v53(v19, v32, &v66, v90, 0, 1, &v77);
                  }
                  else
                  {
                    v26 = *(void (__fastcall **)(int, int, int *, int, _DWORD, int, int *))(*(_DWORD *)v19 + 12);
                    v27 = *(int *)((char *)v55 + *(_DWORD *)(v1 + 356)) + v23;
                    v28 = *(_DWORD *)(v27 + 140);
                    if ( *(_BYTE *)(v1 + 153) )
                    {
                      v89 = *(_DWORD *)(v27 + 144);
                      v26(v19, v28, &v66, v89, 0, 1, &v77);
                    }
                    else
                    {
                      v54 = *(void (__fastcall **)(int, int, int *, int, _DWORD, int, int *))(*(_DWORD *)v19 + 12);
                      v89 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v20 + 16))(v20, 9);
                      v54(v19, v28, &v66, v89, 0, 1, &v77);
                    }
                  }
                  v22 = *(_DWORD *)(v1 + 344);
                  ++v25;
                  v29 = *(_DWORD *)(v22 + v24 + 76);
                  v24 += 84;
                  v23 += 152;
                  if ( v25 >= 1022611261 * ((*(_DWORD *)(v1 + 348) - v22) >> 2) )
                    break;
                  v21 += v29;
                }
                v18 = v56;
              }
              v9 = v74;
              v16 = *(_DWORD *)(v1 + 396);
              v14 = *(_DWORD *)(v1 + 360);
              v15 = *(_DWORD *)(v1 + 356);
            }
            ++v18;
            v9 += v16;
            v17 = v16 + v76;
            v74 = v9;
            v76 += v16;
            v55 += 3;
          }
          while ( v18 < -1431655765 * ((v14 - v15) >> 2) );
          v3 = v19;
          v2 = v20;
        }
        v34 = *(_DWORD *)(v1 + 344);
        v35 = v58;
        v36 = 1022611261 * ((*(_DWORD *)(v1 + 348) - v34) >> 2) == 0;
        if ( !(1022611261 * ((*(_DWORD *)(v1 + 348) - v34) >> 2)) )
          v55 = &v81;
        v70[0] = v77;
        v70[1] = v78;
        v71 = v79;
        v72 = v80;
        if ( !v36 )
        {
          v37 = 0;
          v55 = &v81;
          v38 = 0;
          v39 = v3;
          while ( 1 )
          {
            v40 = v34 + v37;
            v41 = *(_DWORD *)(v40 + 76);
            v42 = *(_DWORD *)(v40 + 68);
            v66 = v35;
            v43 = v35 + v41;
            v57 = v42;
            v68 = v43;
            v67 = v82;
            v69 = v59;
            (*(void (__fastcall **)(int, int, int *, int *))(*(_DWORD *)v2 + 64))(v2, v1, &v66, &v81);
            v58 = v43;
            if ( (*(_DWORD *)(v1 + 432) & 2) != 0 )
            {
              v71 = v35 + 1;
              v70[0] = v35;
              v88 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 1);
              glitch::video::C2DDriver::draw2DRectangle(v60, v88, v70, &v81);
            }
            if ( *(_BYTE *)(v1 + 393) && (v44 = *(_DWORD *)(v1 + 412), v44 == v38) )
            {
              v62 = v35;
              v64 = v43;
              v63 = v82;
              v65 = v84;
              v87 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, 10);
              glitch::video::C2DDriver::draw2DRectangle(v60, v87, &v62, &v81);
            }
            else
            {
              v44 = v38;
            }
            v45 = *(unsigned __int8 *)(v1 + 153);
            v66 += *(_DWORD *)(v1 + 420);
            if ( v45 )
              v46 = 8;
            else
              v46 = 9;
            v47 = *(void (__fastcall **)(int, int, int *))(*(_DWORD *)v39 + 12);
            v86[2] = (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 16))(v2, v46);
            v47(v39, v57, &v66);
            if ( *(_DWORD *)(v1 + 424) == v44 )
            {
              if ( *(_DWORD *)(v1 + 428) == 1 )
              {
                v66 = v68 - 5 - *(_DWORD *)(v1 + 420);
                v67 += 7;
                v52 = *(void (__fastcall **)(int, int, int, _DWORD *, _DWORD, _DWORD, _DWORD, int *))(*(_DWORD *)v2 + 96);
                v86[0] = v66;
                v86[1] = v67;
                v52(v2, v1, 5, v86, 0, 0, 0, &v81);
              }
              else
              {
                v66 = v68 - 5 - *(_DWORD *)(v1 + 420);
                v67 += 7;
                v48 = *(void (__fastcall **)(int, int, int, _DWORD *, _DWORD, _DWORD, _DWORD, int *))(*(_DWORD *)v2 + 96);
                v85[0] = v66;
                v85[1] = v67;
                v48(v2, v1, 6, v85, 0, 0, 0, &v81);
              }
            }
            v34 = *(_DWORD *)(v1 + 344);
            ++v38;
            v37 += 84;
            if ( v38 >= 1022611261 * ((*(_DWORD *)(v1 + 348) - v34) >> 2) )
              break;
            v35 = v43;
          }
        }
        v61[1] = v82;
        v61[0] = v58;
        v61[3] = v59;
        v61[2] = v83;
        this = (*(int (__fastcall **)(int, int, _DWORD *, int *))(*(_DWORD *)v2 + 64))(v2, v1, v61, v55);
        if ( *(_BYTE *)(v1 + 152) )
        {
          v51 = *(int **)(v1 + 4);
          v49 = v1 + 4;
          for ( i = v51; i != (int *)v49; i = (int *)*i )
            this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
        }
      }
    }
  }
  return this;
}


// ===== 557894 std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 21;
    v4 = (void **)v1[17];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[17]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 5578ec std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::gui::CGUITable::Column*,glitch::gui::CGUITable::Column const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        int *a1,
        int a2,
        int a3,
        int a4)
{
  unsigned int v5; // r12
  unsigned int v6; // lr
  size_t v10; // r7
  _DWORD *v11; // r6
  _DWORD *v12; // r10
  _DWORD *v13; // r11
  void **v14; // r5
  void **v15; // r8
  void **v16; // r3

  v5 = 1022611261 * ((a1[1] - *a1) >> 2);
  if ( v5 )
    v6 = 2045222522 * ((a1[1] - *a1) >> 2);
  else
    v6 = 1;
  if ( v6 <= 0x30C30C3 && v5 <= v6 )
    v10 = 21 * v6;
  else
    v10 = -1;
  v11 = GlitchAlloc(v10 * 4, 0);
  v12 = std::priv::__ucopy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(*a1, a2, v11);
  v12[16] = v12;
  v12[17] = v12;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v12,
    *(_BYTE **)(a3 + 68),
    *(_BYTE **)(a3 + 64));
  v13 = v12 + 21;
  v12[18] = *(_DWORD *)(a3 + 72);
  v12[19] = *(_DWORD *)(a3 + 76);
  v12[20] = *(_DWORD *)(a3 + 80);
  if ( !a4 )
    v13 = std::priv::__ucopy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(a2, a1[1], v12 + 21);
  v14 = (void **)a1[1];
  v15 = (void **)*a1;
  if ( v14 != (void **)*a1 )
  {
    do
    {
      v14 -= 21;
      v16 = (void **)v14[17];
      if ( v16 != v14 && v16 )
        GlitchFree(v14[17]);
    }
    while ( v15 != v14 );
    v15 = (void **)*a1;
  }
  GlitchFree(v15);
  a1[2] = (int)&v11[v10];
  *a1 = (int)v11;
  a1[1] = (int)v13;
}


// ===== 557a30 std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUITable::Column const&) =====
void __fastcall std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int *a1,
        int a2)
{
  _DWORD *v2; // r4

  v2 = (_DWORD *)a1[1];
  if ( v2 == (_DWORD *)a1[2] )
  {
    std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a1,
      a1[1],
      a2,
      1);
  }
  else
  {
    v2[16] = v2;
    v2[17] = v2;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v2,
      *(_BYTE **)(a2 + 68),
      *(_BYTE **)(a2 + 64));
    v2[18] = *(_DWORD *)(a2 + 72);
    v2[19] = *(_DWORD *)(a2 + 76);
    v2[20] = *(_DWORD *)(a2 + 80);
    a1[1] += 84;
  }
}


// ===== 557aa0 glitch::gui::IGUITable::~IGUITable() =====
void __fastcall glitch::gui::IGUITable::~IGUITable(glitch::gui::IGUITable *this)
{
  *(_DWORD *)this = off_971828;
  *((_DWORD *)this + 86) = off_971934;
  *((_DWORD *)this + 87) = off_971954;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_971964);
}


// ===== 557af4 `virtual thunk to'glitch::gui::IGUITable::~IGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITable::~IGUITable(glitch::gui::IGUITable *this)
{
  glitch::gui::IGUITable::~IGUITable((glitch::gui::IGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 557b04 `virtual thunk to'glitch::gui::IGUITable::~IGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITable::~IGUITable(glitch::gui::IGUITable *this)
{
  glitch::gui::IGUITable::~IGUITable((glitch::gui::IGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 557b14 glitch::gui::IGUITable::~IGUITable() =====
void __fastcall glitch::gui::IGUITable::~IGUITable(glitch::gui::IGUITable *this)
{
  *(_DWORD *)this = off_971828;
  *((_DWORD *)this + 86) = off_971934;
  *((_DWORD *)this + 87) = off_971954;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_971964);
  LC_API_FREE_0(this);
}


// ===== 557b70 `virtual thunk to'glitch::gui::IGUITable::~IGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITable::~IGUITable(glitch::gui::IGUITable *this)
{
  glitch::gui::IGUITable::~IGUITable((glitch::gui::IGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 557b80 `virtual thunk to'glitch::gui::IGUITable::~IGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::IGUITable::~IGUITable(glitch::gui::IGUITable *this)
{
  glitch::gui::IGUITable::~IGUITable((glitch::gui::IGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 557b90 glitch::gui::CGUITable::Cell::~Cell() =====
void __fastcall glitch::gui::CGUITable::Cell::~Cell(glitch::gui::CGUITable::Cell *this)
{
  char *v1; // r3
  char *v3; // r0
  glitch::gui::CGUITable::Cell *v4; // r0

  v1 = (char *)this + 72;
  v3 = *((char **)this + 35);
  if ( v3 != v1 && v3 )
    GlitchFree(v3);
  v4 = *((glitch::gui::CGUITable::Cell **)this + 17);
  if ( v4 != this )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 557bd4 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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
    v1 -= 38;
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


// ===== 557c4c std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ****__fastcall std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ****a1)
{
  void ***v1; // r4
  void ***v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 3;
    std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 557c90 glitch::gui::CGUITable::~CGUITable() =====
void __fastcall glitch::gui::CGUITable::~CGUITable(glitch::gui::CGUITable *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3
  glitch::IReferenceCounted *v4; // r0

  v1 = *((_DWORD **)this + 93);
  *(_DWORD *)this = off_971A98;
  *((_DWORD *)this + 109) = off_971BAC;
  *((_DWORD *)this + 110) = off_971BCC;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((_DWORD **)this + 94);
  if ( v3 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 16)));
  v4 = *((glitch::IReferenceCounted **)this + 92);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ****)this + 89);
  std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 86);
  *(_DWORD *)this = off_971C18;
  *(int *)((char *)&elf_hash_bucket[54] + (_DWORD)this) = (int)off_971D24;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_971D44;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_971BE0);
}


// ===== 557d64 glitch::gui::CGUITable::~CGUITable() =====
void __fastcall glitch::gui::CGUITable::~CGUITable(glitch::gui::CGUITable *this)
{
  glitch::gui::CGUITable::~CGUITable(this);
  LC_API_FREE_0(this);
}


// ===== 557d80 glitch::gui::CGUITable::~CGUITable() =====
void __fastcall glitch::gui::CGUITable::~CGUITable(glitch::gui::CGUITable *this, int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  glitch::IReferenceCounted *v7; // r0
  int v8; // r3
  int *v9; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD **)this + 93);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 94);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((glitch::IReferenceCounted **)this + 92);
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ****)this + 89);
  std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void ***)this + 86);
  v8 = a2[1];
  v9 = a2 + 1;
  *(_DWORD *)this = v8;
  *(_DWORD *)((char *)this + *(_DWORD *)(v8 - 12)) = v9[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v9[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v9 + 1);
}


// ===== 557e44 std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::gui::CGUITable::Row*,glitch::gui::CGUITable::Row const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void ****a1,
        int *a2,
        int *a3,
        int a4)
{
  unsigned int v6; // r12
  unsigned int v7; // r3
  size_t v8; // r11
  void ***v9; // r0
  void ***v10; // r10
  void ***v11; // r8
  int v12; // r3
  int v13; // r9
  void ***v14; // r9
  int v15; // r7
  int v16; // r6
  _DWORD *v17; // r9
  void ***v18; // r6
  void ***v19; // r4
  void ***v20; // r0
  int v21; // r3
  int v22; // r10
  int v23; // r7
  _DWORD *v24; // r6

  v6 = -1431655765 * (a1[1] - *a1);
  if ( v6 )
    v7 = 1431655766 * (a1[1] - *a1);
  else
    v7 = 1;
  if ( v7 <= 0x15555555 && v6 <= v7 )
    v8 = 3 * v7;
  else
    v8 = -1;
  v9 = (void ***)GlitchAlloc(v8 * 4, 0);
  v10 = *a1;
  v11 = v9;
  v12 = ((char *)a2 - (char *)*a1) >> 2;
  v13 = -1431655765 * v12;
  if ( -1431655765 * v12 > 0 )
  {
    v15 = -1431655765 * v12;
    v16 = 0;
    do
    {
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        &v11[v16],
        (int *)&v10[v16]);
      --v15;
      v16 += 3;
    }
    while ( v15 );
    v14 = &v11[3 * v13];
  }
  else
  {
    v14 = v9;
  }
  std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    v14,
    a3);
  v17 = v14 + 3;
  if ( a4 )
    goto LABEL_13;
  v18 = a1[1];
  v21 = ((char *)v18 - (char *)a2) >> 2;
  v22 = -1431655765 * v21;
  if ( -1431655765 * v21 > 0 )
  {
    v23 = -1431655765 * v21;
    v24 = v17;
    do
    {
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        v24,
        a2);
      --v23;
      a2 += 3;
      v24 += 3;
    }
    while ( v23 );
    v17 += 3 * v22;
LABEL_13:
    v18 = a1[1];
  }
  v19 = *a1;
  if ( v18 == *a1 )
  {
    v20 = v18;
  }
  else
  {
    do
    {
      v18 -= 3;
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v18);
    }
    while ( v19 != v18 );
    v20 = *a1;
  }
  GlitchFree(v20);
  *a1 = v11;
  a1[1] = (void ***)v17;
  a1[2] = &v11[v8];
}


// ===== 557fc8 std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUITable::Row const&) =====
void __fastcall std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        int *a2)
{
  if ( *(_DWORD *)(a1 + 4) == *(_DWORD *)(a1 + 8) )
  {
    std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (void ****)a1,
      *(int **)(a1 + 4),
      a2,
      1);
  }
  else
  {
    std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      *(_DWORD **)(a1 + 4),
      a2);
    *(_DWORD *)(a1 + 4) += 12;
  }
}


// ===== 558008 std::priv::__copy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r8
  int v4; // r4
  _DWORD *v5; // r7
  _DWORD *v6; // r5
  int v7; // r6
  int v8; // r3

  v3 = 1022611261 * ((a2 - a1) >> 2);
  v4 = a1;
  v5 = a3;
  if ( v3 > 0 )
  {
    v6 = a3;
    v7 = 1022611261 * ((a2 - a1) >> 2);
    do
    {
      if ( v6 != (_DWORD *)v4 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v6,
          *(const wchar_t **)(v4 + 68),
          *(_DWORD **)(v4 + 64));
      --v7;
      v6[18] = *(_DWORD *)(v4 + 72);
      v6[19] = *(_DWORD *)(v4 + 76);
      v8 = *(_DWORD *)(v4 + 80);
      v4 += 84;
      v6[20] = v8;
      v6 += 21;
    }
    while ( v7 );
    v5 += 21 * v3;
  }
  return v5;
}


// ===== 558088 std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUITable::Column*,glitch::gui::CGUITable::Column*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v5; // r0
  _DWORD *v6; // r7
  _DWORD *v7; // r8
  _DWORD *v8; // r6
  _DWORD *v9; // r3
  bool v10; // zf

  v5 = std::priv::__copy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(
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
      v9 = (_DWORD *)v8[17];
      v10 = v9 == v8;
      v8 += 21;
      if ( !v10 && v9 )
        GlitchFree(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 558104 std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUITable::Column*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  int v2; // r3
  int v4; // r0
  void *v6; // r3
  void *v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v4 = (int)(a2 + 21);
  if ( a2 + 21 != (_DWORD *)v2 )
  {
    std::priv::__copy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(v4, v2, a2);
    v4 = *(_DWORD *)(a1 + 4);
  }
  v6 = (void *)(v4 - 84);
  *(_DWORD *)(a1 + 4) = v4 - 84;
  v7 = *(void **)(v4 - 16);
  if ( v7 != v6 && v7 )
    GlitchFree(v7);
  return a2;
}


// ===== 55816c std::priv::__copy_backward<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy_backward<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r8
  int v4; // r4
  _DWORD *v5; // r7
  _DWORD *v6; // r5
  int v7; // r6

  v3 = 1022611261 * ((a2 - a1) >> 2);
  v4 = a2;
  v5 = a3;
  if ( v3 > 0 )
  {
    v6 = a3;
    v7 = 1022611261 * ((a2 - a1) >> 2);
    do
    {
      v6 -= 21;
      v4 -= 84;
      if ( v6 != (_DWORD *)v4 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          (int)v6,
          *(const wchar_t **)(v4 + 68),
          *(_DWORD **)(v4 + 64));
      --v7;
      v6[18] = *(_DWORD *)(v4 + 72);
      v6[19] = *(_DWORD *)(v4 + 76);
      v6[20] = *(_DWORD *)(v4 + 80);
    }
    while ( v7 );
    v5 -= 21 * v3;
  }
  return v5;
}


// ===== 5581f8 std::priv::__fill<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column,int>(glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column const&,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__fill<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column,int>(
        int result,
        int a2,
        int a3)
{
  int v3; // r6
  _DWORD *v4; // r4

  v3 = 1022611261 * ((a2 - result) >> 2);
  v4 = (_DWORD *)result;
  if ( v3 > 0 )
  {
    while ( 1 )
    {
      result = (int)v4;
      if ( v4 != (_DWORD *)a3 )
        result = std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
                   (int)v4,
                   *(const wchar_t **)(a3 + 68),
                   *(_DWORD **)(a3 + 64));
      --v3;
      v4[18] = *(_DWORD *)(a3 + 72);
      v4[19] = *(_DWORD *)(a3 + 76);
      v4[20] = *(_DWORD *)(a3 + 80);
      if ( !v3 )
        break;
      v4 += 21;
    }
  }
  return result;
}


// ===== 558264 std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::gui::CGUITable::Column*,uint,glitch::gui::CGUITable::Column const&,std::__false_type const&) [clone] =====
void __fastcall std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *v6; // r6
  _BYTE *v7; // r1
  _BYTE *v8; // r2
  int v9; // r3
  int v10; // r12
  unsigned int v11; // r8
  void *v12[17]; // [sp+Ch] [bp-70h] BYREF
  void *p; // [sp+50h] [bp-2Ch]
  int v14; // [sp+54h] [bp-28h]
  int v15; // [sp+58h] [bp-24h]
  int v16; // [sp+5Ch] [bp-20h]

  if ( *a1 > (unsigned int)a3 )
  {
    v6 = (_DWORD *)a1[1];
LABEL_7:
    v11 = 1022611261 * (((int)v6 - a2) >> 2);
    if ( v11 > 1 )
    {
      std::priv::__ucopy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(
        (int)(v6 - 21),
        (int)v6,
        v6);
      a1[1] += 84;
      std::priv::__copy_backward<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(
        a2,
        (int)(v6 - 21),
        v6);
      std::priv::__fill<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column,int>(a2, a2 + 84, (int)a3);
    }
    else
    {
      std::priv::__ufill<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column,int>(
        v6,
        (int)&v6[21 * (1 - v11)],
        (int)a3);
      a1[1] = &v6[21 * (1 - v11)];
      std::priv::__ucopy<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column *,int>(
        a2,
        (int)v6,
        &v6[21 * (1 - v11)]);
      a1[1] += 84 * v11;
      std::priv::__fill<glitch::gui::CGUITable::Column *,glitch::gui::CGUITable::Column,int>(a2, (int)v6, (int)a3);
    }
    return;
  }
  v6 = (_DWORD *)a1[1];
  if ( a3 >= v6 )
    goto LABEL_7;
  v7 = (_BYTE *)a3[17];
  v8 = (_BYTE *)a3[16];
  v12[16] = v12;
  p = v12;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v12,
    v7,
    v8);
  v9 = a3[20];
  v10 = a3[19];
  v14 = a3[18];
  v15 = v10;
  v16 = v9;
  std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    a1,
    a2,
    v12);
  if ( p != v12 )
  {
    if ( p )
      GlitchFree(p);
  }
}


// ===== 5583e0 glitch::gui::CGUITable::Cell::operator=(glitch::gui::CGUITable::Cell const&) =====
int __fastcall glitch::gui::CGUITable::Cell::operator=(int a1, int a2)
{
  if ( a1 != a2 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1,
      *(const wchar_t **)(a2 + 68),
      *(_DWORD **)(a2 + 64));
  if ( a1 + 72 != a2 + 72 )
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 72,
      *(const wchar_t **)(a2 + 140),
      *(_DWORD **)(a2 + 136));
  *(_DWORD *)(a1 + 144) = *(_DWORD *)(a2 + 144);
  *(_DWORD *)(a1 + 148) = *(_DWORD *)(a2 + 148);
  return a1;
}


// ===== 558434 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
void ***__fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        void ***a1,
        int *a2)
{
  int v4; // r3
  int v5; // r8
  void **v6; // r6
  int v7; // r5
  int v8; // r11
  int v9; // r7
  void **v10; // r3
  void **v11; // r3
  bool v12; // zf
  int v14; // r10
  int v15; // r7
  void **v16; // r8
  int v17; // r10
  int v18; // r7
  int v19; // r6
  char *v20; // r0
  void **v21; // r7
  void **v22; // r8
  void **v23; // r3
  void **v24; // r3
  int v25; // r3
  void **v26; // [sp+4h] [bp-10h]
  int v27; // [sp+Ch] [bp-8h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = 678152731 * ((v4 - *a2) >> 3);
    v8 = v7;
    if ( v7 > (unsigned int)(678152731 * (((char *)a1[2] - (char *)*a1) >> 3)) )
    {
      v27 = 678152731 * ((v4 - *a2) >> 3);
      v20 = std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::gui::CGUITable::Cell const*>(
              (int)a1,
              &v27,
              v5,
              v4);
      v21 = a1[1];
      v22 = *a1;
      v6 = (void **)v20;
      if ( v21 != *a1 )
      {
        do
        {
          v21 -= 38;
          v23 = (void **)v21[35];
          if ( v23 != v21 + 18 && v23 )
            GlitchFree(v21[35]);
          v24 = (void **)v21[17];
          if ( v24 != v21 && v24 )
            GlitchFree(v21[17]);
        }
        while ( v22 != v21 );
        v21 = *a1;
      }
      GlitchFree(v21);
      v25 = v27;
      *a1 = v6;
      a1[2] = &v6[38 * v25];
      goto LABEL_17;
    }
    v26 = a1[1];
    if ( v7 > (unsigned int)(678152731 * (((char *)v26 - (char *)v6) >> 3)) )
    {
      v14 = v5 + 8 * (((char *)v26 - (char *)v6) >> 3);
      v15 = 678152731 * ((8 * (((char *)v26 - (char *)v6) >> 3)) >> 3);
      if ( v15 > 0 )
      {
        v17 = 0;
        do
        {
          glitch::gui::CGUITable::Cell::operator=((int)&v6[v17], v5 + v17 * 4);
          --v15;
          v17 += 38;
        }
        while ( v15 );
        v6 = *a1;
        v16 = a1[1];
        v4 = a2[1];
        v14 = *a2 + 8 * (((char *)v16 - (char *)*a1) >> 3);
      }
      else
      {
        v16 = a1[1];
      }
      v18 = 678152731 * ((v4 - v14) >> 3);
      if ( v18 <= 0 )
        goto LABEL_17;
      v19 = 0;
      do
      {
        glitch::gui::CGUITable::Cell::Cell(&v16[v19], v14 + v19 * 4);
        --v18;
        v19 += 38;
      }
      while ( v18 );
    }
    else
    {
      if ( v7 > 0 )
      {
        v9 = 0;
        do
        {
          glitch::gui::CGUITable::Cell::operator=((int)&v6[v9], v5 + v9 * 4);
          --v8;
          v9 += 38;
        }
        while ( v8 );
        v6 += 38 * v7;
        v26 = a1[1];
      }
      while ( v6 != v26 )
      {
        v10 = (void **)v6[35];
        if ( v10 != v6 + 18 && v10 )
          GlitchFree(v6[35]);
        v11 = (void **)v6[17];
        v12 = v11 == v6;
        v6 += 38;
        if ( !v12 && v11 )
          GlitchFree(v11);
      }
    }
    v6 = *a1;
LABEL_17:
    a1[1] = &v6[38 * v7];
  }
  return a1;
}


// ===== 5586dc std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUITable::Row*,glitch::gui::CGUITable::Row*,std::__false_type const&) =====
void ***__fastcall std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        void ***a2,
        int a3)
{
  void ***v3; // r4
  int v6; // r3
  int v8; // r10
  void ***v9; // r10
  int v10; // r6
  int v11; // r4
  void ***v12; // r6
  void ***v13; // r0

  v3 = *(void ****)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v8 = -1431655765 * v6;
  if ( -1431655765 * v6 > 0 )
  {
    v10 = -1431655765 * v6;
    v11 = 0;
    do
    {
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        &a2[v11],
        (int *)(a3 + v11 * 4));
      --v10;
      v11 += 3;
    }
    while ( v10 );
    v9 = &a2[3 * v8];
    v3 = *(void ****)(a1 + 4);
  }
  else
  {
    v9 = a2;
  }
  if ( v3 != v9 )
  {
    v12 = v9;
    do
    {
      v13 = v12;
      v12 += 3;
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v13);
    }
    while ( v3 != v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return a2;
}


// ===== 558770 glitch::gui::CGUITable::clearRows(void) =====
int __fastcall glitch::gui::CGUITable::clearRows(glitch::gui::CGUITable *this)
{
  void ***v1; // r1
  int v2; // r2
  int v4; // r3

  v1 = *((void ****)this + 89);
  v2 = *((_DWORD *)this + 90);
  if ( v1 != (void ***)v2 )
    std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 356,
      v1,
      v2);
  v4 = *((_DWORD *)this + 93);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v4 + 152))(*((_DWORD *)this + 93), 0);
  return glitch::gui::CGUITable::recalculateHeights(this);
}


// ===== 5587c8 glitch::gui::CGUITable::clear(void) =====
int __fastcall glitch::gui::CGUITable::clear(glitch::gui::CGUITable *this)
{
  void ***v1; // r1
  int v2; // r2
  _DWORD *v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r3

  v1 = *((void ****)this + 89);
  v2 = *((_DWORD *)this + 90);
  if ( v1 != (void ***)v2 )
    std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 356,
      v1,
      v2);
  v4 = *((_DWORD **)this + 86);
  v5 = *((_DWORD *)this + 87);
  if ( v4 != (_DWORD *)v5 )
    std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 344,
      v4,
      v5);
  v6 = *((_DWORD *)this + 93);
  if ( v6 )
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v6 + 152))(*((_DWORD *)this + 93), 0);
  v7 = *((_DWORD *)this + 94);
  if ( v7 )
    (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v7 + 152))(*((_DWORD *)this + 94), 0);
  glitch::gui::CGUITable::recalculateHeights(this);
  return glitch::gui::CGUITable::recalculateWidths(this);
}


// ===== 558864 std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUITable::Row*,std::__false_type const&) =====
int __fastcall std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v3; // r0
  int v5; // r4
  int v6; // r0
  int v7; // r5
  void ***v8; // r0

  v3 = *(_DWORD *)(a1 + 4);
  if ( a2 + 12 != v3 )
  {
    v5 = -1431655765 * ((v3 - (a2 + 12)) >> 2);
    if ( v5 > 0 )
    {
      v6 = a2;
      do
      {
        v7 = v6 + 12;
        std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
          (void ***)v6,
          (int *)(v6 + 12));
        --v5;
        v6 = v7;
      }
      while ( v5 );
      v3 = *(_DWORD *)(a1 + 4);
    }
  }
  v8 = (void ***)(v3 - 12);
  *(_DWORD *)(a1 + 4) = v8;
  std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v8);
  return a2;
}


// ===== 5588d8 glitch::gui::CGUITable::removeRow(uint) =====
int __fastcall glitch::gui::CGUITable::removeRow(glitch::gui::CGUITable *this, unsigned int a2)
{
  int v2; // r3
  int v4; // r2
  int result; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 89);
  v4 = (*((_DWORD *)this + 90) - v2) >> 2;
  result = 1431655765 * v4;
  if ( a2 <= -1431655765 * v4 )
  {
    std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 356,
      v2 + 12 * a2);
    v6 = -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2);
    if ( *((_DWORD *)this + 102) >= v6 )
      *((_DWORD *)this + 102) = v6 - 1;
    return glitch::gui::CGUITable::recalculateHeights(this);
  }
  return result;
}


// ===== 558968 glitch::gui::CGUITable::swapRows(uint,uint) =====
unsigned int __fastcall glitch::gui::CGUITable::swapRows(
        glitch::gui::CGUITable *this,
        unsigned int a2,
        unsigned int a3)
{
  int v4; // r3
  unsigned int result; // r0
  unsigned int v8; // r10
  int v9; // r3
  void **v10[4]; // [sp+4h] [bp-10h] BYREF

  v4 = *((_DWORD *)this + 89);
  result = -1431655765 * ((*((_DWORD *)this + 90) - v4) >> 2);
  if ( a2 < result && a3 < result )
  {
    v8 = 12 * a2;
    std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v10,
      (int *)(v4 + 12 * a2));
    std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
      (void ***)(*((_DWORD *)this + 89) + v8),
      (int *)(*((_DWORD *)this + 89) + 12 * a3));
    std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
      (void ***)(*((_DWORD *)this + 89) + 12 * a3),
      (int *)v10);
    v9 = *((_DWORD *)this + 102);
    if ( v9 == a2 )
    {
      *((_DWORD *)this + 102) = a3;
    }
    else if ( v9 == a3 )
    {
      *((_DWORD *)this + 102) = a2;
    }
    return (unsigned int)std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v10);
  }
  return result;
}


// ===== 558a18 glitch::gui::CGUITable::orderRows(int,glitch::gui::EGUI_ORDERING_MODE) =====
void ***__fastcall glitch::gui::CGUITable::orderRows(_DWORD *a1, int a2, int a3)
{
  int v5; // r0
  int v6; // r12
  int v7; // r10
  int v8; // r9
  int v9; // r5
  int j; // r6
  int v11; // r7
  int v12; // r8
  int v13; // r3
  int v14; // r3
  int v15; // r0
  int v16; // r12
  int v17; // r10
  int v18; // r9
  int v19; // r5
  int i; // r6
  int v21; // r7
  int v22; // r8
  int v23; // r3
  int v24; // r3
  int v25; // [sp+4h] [bp-18h]
  void **v26[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v26, 0, 12);
  if ( a2 == -1 )
  {
    v25 = a3;
    a2 = (*(int (__fastcall **)(_DWORD *))(*a1 + 140))(a1);
    a3 = v25;
    if ( a2 < 0 )
      return std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v26);
  }
  else if ( a2 < 0 )
  {
    return std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v26);
  }
  if ( a3 == 1 )
  {
    v15 = a1[89];
    v16 = a1[90] - v15;
    if ( v16 > 23 )
    {
      v17 = 152 * a2;
      v18 = 0;
      do
      {
        v19 = 0;
        for ( i = 0; ; ++i )
        {
          v21 = v19 + 12;
          v22 = i + 1;
          v23 = -1431655765 * (v16 >> 2) - 1;
          if ( i >= v23 - v18 )
            break;
          if ( std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compare(
                 *(const wchar_t **)(*(_DWORD *)(v15 + v21) + v17 + 68),
                 *(_DWORD *)(*(_DWORD *)(v15 + v21) + v17 + 64),
                 *(wchar_t **)(*(_DWORD *)(v15 + v19) + v17 + 68),
                 *(_DWORD *)(*(_DWORD *)(v15 + v19) + v17 + 64)) < 0 )
          {
            std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              v26,
              (int *)(a1[89] + v19));
            std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (void ***)(a1[89] + v19),
              (int *)(a1[89] + v21));
            std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (void ***)(a1[89] + v21),
              (int *)v26);
            v24 = a1[102];
            if ( v24 == i )
            {
              a1[102] = v22;
            }
            else if ( v22 == v24 )
            {
              a1[102] = i;
            }
          }
          v15 = a1[89];
          v19 += 12;
          v16 = a1[90] - v15;
        }
        ++v18;
      }
      while ( v18 < v23 );
    }
  }
  else if ( a3 == 2 )
  {
    v5 = a1[89];
    v6 = a1[90] - v5;
    if ( v6 > 23 )
    {
      v7 = 152 * a2;
      v8 = 0;
      do
      {
        v9 = 0;
        for ( j = 0; ; ++j )
        {
          v11 = v9 + 12;
          v12 = j + 1;
          v13 = -1431655765 * (v6 >> 2) - 1;
          if ( j >= v13 - v8 )
            break;
          if ( std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compare(
                 *(const wchar_t **)(*(_DWORD *)(v5 + v9) + v7 + 68),
                 *(_DWORD *)(*(_DWORD *)(v5 + v9) + v7 + 64),
                 *(wchar_t **)(*(_DWORD *)(v5 + v11) + v7 + 68),
                 *(_DWORD *)(*(_DWORD *)(v5 + v11) + v7 + 64)) < 0 )
          {
            std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              v26,
              (int *)(a1[89] + v9));
            std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (void ***)(a1[89] + v9),
              (int *)(a1[89] + v11));
            std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
              (void ***)(a1[89] + v11),
              (int *)v26);
            v14 = a1[102];
            if ( v14 == j )
            {
              a1[102] = v12;
            }
            else if ( v12 == v14 )
            {
              a1[102] = j;
            }
          }
          v5 = a1[89];
          v9 += 12;
          v6 = a1[90] - v5;
        }
        ++v8;
      }
      while ( v8 < v13 );
    }
  }
  return std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v26);
}


// ===== 558c8c std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<wchar_t const*>(wchar_t const*,wchar_t const*,std::forward_iterator_tag const&) =====
int __fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<wchar_t const*>(
        int a1,
        char *a2,
        char *a3)
{
  char *v3; // r5
  int v5; // r3
  size_t v6; // r7
  unsigned int v7; // r6
  bool v8; // zf
  char *v9; // r3
  int v10; // r1
  unsigned int v11; // r1
  int v12; // r0
  size_t v14; // r8
  char *v15; // r0
  _BYTE *v16; // r1
  _BYTE *v17; // r10
  char *v18; // r6
  char *v19; // r0
  int v20; // r3
  char *v21; // r7

  v3 = a2;
  if ( a2 == a3 )
    return a1;
  v5 = *(_DWORD *)(a1 + 68);
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 2;
  v8 = v5 == a1;
  if ( v5 != a1 )
    a2 = *(char **)a1;
  v9 = *(char **)(a1 + 64);
  if ( v8 )
    v10 = (int)&v9[-a1] >> 2;
  else
    v10 = a2 - v9;
  if ( v8 )
    v11 = 16 - v10;
  else
    v11 = v10 >> 2;
  if ( v7 < v11 )
  {
    *(_DWORD *)v9 = *(_DWORD *)v3;
    v12 = *(_DWORD *)(a1 + 64);
    if ( a3 != v3 + 4 )
    {
      memcpy((void *)(v12 + 4), v3 + 4, a3 - (v3 + 4));
      v12 = *(_DWORD *)(a1 + 64);
    }
    *(_DWORD *)(v12 + 4 * v7) = 0;
    *(_DWORD *)(a1 + 64) += 4 * v7;
    return a1;
  }
  v14 = 4
      * std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
          a1,
          v7);
  v15 = (char *)GlitchAlloc(v14, 0);
  v16 = *(_BYTE **)(a1 + 68);
  v17 = *(_BYTE **)(a1 + 64);
  v18 = v15;
  if ( v16 != v17 )
    v15 = (char *)memcpy(v15, v16, v17 - v16) + v17 - v16;
  v19 = (char *)memcpy(v15, v3, v6);
  *(_DWORD *)&v19[v6] = 0;
  v20 = *(_DWORD *)(a1 + 68);
  v21 = &v19[v6];
  if ( a1 != v20 && v20 )
    GlitchFree(*(void **)(a1 + 68));
  *(_DWORD *)a1 = &v18[v14];
  *(_DWORD *)(a1 + 64) = v21;
  *(_DWORD *)(a1 + 68) = v18;
  return a1;
}


// ===== 558da8 std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,wchar_t const*) =====
_DWORD *__fastcall std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
        _DWORD *a1,
        int a2,
        wchar_t *s)
{
  size_t v6; // r0
  int v7; // r3
  int v8; // r1
  size_t v9; // r6

  v6 = wcslen(s);
  v7 = *(_DWORD *)(a2 + 68);
  v8 = *(_DWORD *)(a2 + 64);
  v9 = v6;
  a1[16] = a1;
  a1[17] = a1;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    v6 + ((v8 - v7) >> 2) + 1);
  *(_DWORD *)a1[16] = 0;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    *(_DWORD **)(a2 + 68),
    *(_DWORD **)(a2 + 64));
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<wchar_t const*>(
    (int)a1,
    (char *)s,
    (char *)&s[v9]);
  return a1;
}


// ===== 558e28 glitch::gui::CGUITable::breakText(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>&,uint) =====
void __fastcall glitch::gui::CGUITable::breakText(int a1, int a2, int a3, int a4)
{
  int v7; // r0
  int v8; // r5
  unsigned int v9; // r7
  int v10; // r3
  wchar_t *v11; // r2
  unsigned int v12; // r6
  int v13; // r10
  void (__fastcall *v14)(int *, int, void *); // r4
  int v15; // r4
  unsigned int v16; // [sp+4h] [bp-160h]
  unsigned int v17; // [sp+8h] [bp-15Ch]
  int v18; // [sp+10h] [bp-154h]
  void *v20[17]; // [sp+20h] [bp-144h] BYREF
  void *v21; // [sp+64h] [bp-100h]
  _DWORD v22[17]; // [sp+68h] [bp-FCh] BYREF
  void *p; // [sp+ACh] [bp-B8h]
  _DWORD v24[16]; // [sp+B0h] [bp-B4h] BYREF
  _DWORD *v25; // [sp+F0h] [bp-74h]
  void *v26; // [sp+F4h] [bp-70h]
  int v27[16]; // [sp+F8h] [bp-6Ch] BYREF
  int *v28; // [sp+138h] [bp-2Ch]
  void *v29; // [sp+13Ch] [bp-28h]
  int v30; // [sp+140h] [bp-24h] BYREF
  _DWORD v31[2]; // [sp+148h] [bp-1Ch] BYREF
  int v32; // [sp+150h] [bp-14h] BYREF
  wchar_t v33[3]; // [sp+158h] [bp-Ch] BYREF

  v7 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 336) + 56))(*(_DWORD *)(a1 + 336));
  if ( v7 )
  {
    if ( *(_DWORD *)(a1 + 368) )
    {
      v8 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v7 + 40))(v7, 0);
      if ( v8 )
      {
        v28 = v27;
        v29 = v27;
        std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v27,
          0x10u);
        v9 = 0;
        *v28 = 0;
        v25 = v24;
        v26 = v24;
        std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v24,
          0x10u);
        *v25 = 0;
        v10 = *(_DWORD *)(a1 + 420);
        v33[1] = 0;
        v16 = a4 - 2 * v10;
        (*(void (__fastcall **)(int *, int, const char *))(*(_DWORD *)v8 + 28))(&v32, v8, ".");
        v11 = *(wchar_t **)(a2 + 68);
        v17 = (*(_DWORD *)(a2 + 64) - (int)v11) >> 2;
        v18 = v16 - v32;
        if ( !v17 )
          goto LABEL_16;
        v33[0] = *v11;
        if ( v33[0] == 10 )
        {
          v12 = 0;
        }
        else
        {
          v12 = 0;
          v13 = a2;
          (*(void (__fastcall **)(_DWORD *, int, wchar_t *))(*(_DWORD *)v8 + 28))(v31, v8, v33);
          while ( 1 )
          {
            v9 += v31[0];
            if ( v16 < v9 )
              break;
            ++v12;
            v14 = *(void (__fastcall **)(int *, int, void *))(*(_DWORD *)v8 + 28);
            std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
              v22,
              (int)v27,
              v33);
            v14(&v30, v8, p);
            v15 = v30;
            if ( p != v22 && p )
              GlitchFree(p);
            if ( v18 >= v15 )
            {
              std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
                v27,
                v33[0]);
              if ( v12 == v17 )
                goto LABEL_16;
            }
            else
            {
              std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
                (int)v24,
                (const wchar_t *)v29,
                v28);
              std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
                v27,
                v33[0]);
              if ( v12 == v17 )
                goto LABEL_16;
            }
            v33[0] = *(_DWORD *)(*(_DWORD *)(v13 + 68) + 4 * v12);
            if ( v33[0] == 10 )
              goto LABEL_26;
            (*(void (__fastcall **)(_DWORD *, int, wchar_t *))(*(_DWORD *)v8 + 28))(v31, v8, v33);
          }
        }
        if ( v17 > v12 )
        {
LABEL_26:
          std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
            v20,
            (int)v24,
            (wchar_t *)".");
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            a3,
            (const wchar_t *)v21,
            (_DWORD *)v20[16]);
          if ( v21 != v20 && v21 )
            GlitchFree(v21);
        }
        else
        {
LABEL_16:
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            a3,
            (const wchar_t *)v29,
            v28);
        }
        if ( v26 != v24 && v26 )
          GlitchFree(v26);
        if ( v29 != v27 )
        {
          if ( v29 )
            GlitchFree(v29);
        }
      }
    }
  }
}


// ===== 5590d4 glitch::gui::CGUITable::setCellText(uint,uint,wchar_t const*,glitch::video::SColor) =====
void __fastcall glitch::gui::CGUITable::setCellText(_DWORD *a1, unsigned int a2, unsigned int a3, wchar_t *s, int a5)
{
  int v6; // r12
  int v9; // r9
  size_t v10; // r0
  int v11; // r1
  int v12; // [sp+0h] [bp-Ch]
  int v13; // [sp+4h] [bp-8h]

  v6 = a1[89];
  if ( a2 < -1431655765 * ((a1[90] - v6) >> 2) && a3 < 1022611261 * ((a1[87] - a1[86]) >> 2) )
  {
    v9 = 12 * a2;
    v13 = 152 * a3;
    v12 = *(_DWORD *)(v6 + 12 * a2) + 152 * a3;
    v10 = wcslen(s);
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v12,
      s,
      &s[v10]);
    v11 = *(_DWORD *)(a1[89] + v9) + v13;
    glitch::gui::CGUITable::breakText((int)a1, v11, v11 + 72, *(_DWORD *)(a1[86] + 84 * a3 + 76));
    *(_DWORD *)(*(_DWORD *)(a1[89] + v9) + v13 + 144) = a5;
  }
}


// ===== 5591dc glitch::gui::CGUITable::setCellText(uint,uint,wchar_t const*) =====
int __fastcall glitch::gui::CGUITable::setCellText(
        glitch::gui::CGUITable *this,
        unsigned int a2,
        unsigned int a3,
        const wchar_t *s)
{
  int v5; // r12
  int v8; // r2
  int result; // r0
  unsigned int v10; // r7
  int v11; // r8
  size_t v12; // r0
  int v13; // r1
  unsigned int v14; // r6

  v5 = *((_DWORD *)this + 89);
  v8 = (*((_DWORD *)this + 90) - v5) >> 2;
  result = 1431655765 * v8;
  if ( a2 < -1431655765 * v8 )
  {
    result = *((_DWORD *)this + 87);
    if ( a3 < 1022611261 * ((result - *((_DWORD *)this + 86)) >> 2) )
    {
      v10 = 12 * a2;
      v11 = *(_DWORD *)(v5 + 12 * a2);
      v12 = wcslen(s);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v11 + 152 * a3,
        s,
        &s[v12]);
      v13 = *(_DWORD *)(*((_DWORD *)this + 89) + v10) + 152 * a3;
      glitch::gui::CGUITable::breakText((int)this, v13, v13 + 72, *(_DWORD *)(*((_DWORD *)this + 86) + 84 * a3 + 76));
      result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 84) + 56))(*((_DWORD *)this + 84));
      if ( result )
      {
        v14 = *(_DWORD *)(*((_DWORD *)this + 89) + v10) + 152 * a3;
        result = (*(int (__fastcall **)(int, int))(*(_DWORD *)result + 16))(result, 8);
        *(_DWORD *)(v14 + 144) = result;
      }
    }
  }
  return result;
}


// ===== 5592f0 glitch::gui::CGUITable::setColumnWidth(uint,uint) =====
int __fastcall glitch::gui::CGUITable::setColumnWidth(glitch::gui::CGUITable *this, unsigned int a2, unsigned int a3)
{
  int v4; // r12
  int v5; // r0
  unsigned int v9; // r7
  unsigned int v10; // r3
  unsigned int v11; // r2
  int v12; // r2
  unsigned int v13; // r8
  int v14; // r5
  unsigned int v15; // r6
  int v16; // [sp+0h] [bp-8h] BYREF

  v4 = *((_DWORD *)this + 87);
  v5 = *((_DWORD *)this + 86);
  if ( a2 < 1022611261 * ((v4 - v5) >> 2) )
  {
    v9 = 84 * a2;
    (*(void (__fastcall **)(int *, _DWORD, _DWORD))(**((_DWORD **)this + 92) + 28))(
      &v16,
      *((_DWORD *)this + 92),
      *(_DWORD *)(v5 + 84 * a2 + 68));
    v10 = *((_DWORD *)this + 86) + v9;
    v11 = v16 + 2 * *((_DWORD *)this + 105);
    if ( a3 < v11 )
      *(_DWORD *)(v10 + 76) = v11;
    else
      *(_DWORD *)(v10 + 76) = a3;
    v12 = *((_DWORD *)this + 89);
    if ( -1431655765 * ((*((_DWORD *)this + 90) - v12) >> 2) )
    {
      v13 = 152 * a2;
      v14 = 0;
      v15 = 0;
      do
      {
        glitch::gui::CGUITable::breakText(
          (int)this,
          *(_DWORD *)(v12 + v14) + v13,
          *(_DWORD *)(v12 + v14) + v13 + 72,
          *(_DWORD *)(*((_DWORD *)this + 86) + v9 + 76));
        v12 = *((_DWORD *)this + 89);
        ++v15;
        v14 += 12;
      }
      while ( v15 < -1431655765 * ((*((_DWORD *)this + 90) - v12) >> 2) );
    }
  }
  return glitch::gui::CGUITable::recalculateWidths(this);
}


// ===== 559414 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::gui::CGUITable::Cell*,glitch::gui::CGUITable::Cell const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        int a3,
        int a4)
{
  unsigned int v5; // r12
  unsigned int v6; // r3
  size_t v8; // r11
  _DWORD *v9; // r0
  void **v10; // r10
  _DWORD *v11; // r8
  int v12; // r9
  _DWORD *v13; // r9
  int v14; // r7
  int v15; // r6
  _DWORD *v16; // r9
  void **v17; // r6
  void **v18; // r4
  void **v19; // r0
  void **v20; // r3
  void **v21; // r3
  int v22; // r10
  int v23; // r7
  _DWORD *v24; // r6

  v5 = 678152731 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 3);
  if ( v5 )
    v6 = 1356305462 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 3);
  else
    v6 = 1;
  if ( v6 <= 0x1AF286B && v5 <= v6 )
    v8 = 38 * v6;
  else
    v8 = -30;
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = (void **)*a1;
  v11 = v9;
  v12 = 678152731 * ((a2 - (int)*a1) >> 3);
  if ( v12 > 0 )
  {
    v14 = 678152731 * ((a2 - (int)*a1) >> 3);
    v15 = 0;
    do
    {
      glitch::gui::CGUITable::Cell::Cell(&v11[v15], (int)&v10[v15]);
      --v14;
      v15 += 38;
    }
    while ( v14 );
    v13 = &v11[38 * v12];
  }
  else
  {
    v13 = v9;
  }
  glitch::gui::CGUITable::Cell::Cell(v13, a3);
  v16 = v13 + 38;
  if ( a4 )
    goto LABEL_13;
  v17 = (void **)a1[1];
  v22 = 678152731 * (((int)v17 - a2) >> 3);
  if ( v22 > 0 )
  {
    v23 = 678152731 * (((int)v17 - a2) >> 3);
    v24 = v16;
    do
    {
      glitch::gui::CGUITable::Cell::Cell(v24, a2);
      --v23;
      a2 += 152;
      v24 += 38;
    }
    while ( v23 );
    v16 += 38 * v22;
LABEL_13:
    v17 = (void **)a1[1];
  }
  v18 = (void **)*a1;
  if ( v17 == *a1 )
  {
    v19 = v17;
  }
  else
  {
    do
    {
      v17 -= 38;
      v20 = (void **)v17[35];
      if ( v20 != v17 + 18 && v20 )
        GlitchFree(v17[35]);
      v21 = (void **)v17[17];
      if ( v21 != v17 && v21 )
        GlitchFree(v17[17]);
    }
    while ( v18 != v17 );
    v19 = (void **)*a1;
  }
  GlitchFree(v19);
  *a1 = v11;
  a1[1] = v16;
  a1[2] = &v11[v8];
}


// ===== 5595d8 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::gui::CGUITable::Cell const&) =====
void __fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        int a2)
{
  if ( *(_DWORD *)(a1 + 4) == *(_DWORD *)(a1 + 8) )
  {
    std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (void **)a1,
      *(_DWORD *)(a1 + 4),
      a2,
      1);
  }
  else
  {
    glitch::gui::CGUITable::Cell::Cell(*(_DWORD **)(a1 + 4), a2);
    *(_DWORD *)(a1 + 4) += 152;
  }
}


// ===== 559618 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUITable::Cell*,std::__false_type const&) =====
int __fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r3
  int v5; // r4
  int v6; // r0
  int v7; // r5
  _DWORD *v8; // r4
  _DWORD *v9; // r3
  _DWORD *v10; // r0
  _DWORD *v11; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( a2 + 152 != v2 )
  {
    v5 = 678152731 * ((v2 - (a2 + 152)) >> 3);
    if ( v5 > 0 )
    {
      v6 = a2;
      do
      {
        v7 = v6 + 152;
        glitch::gui::CGUITable::Cell::operator=(v6, v6 + 152);
        --v5;
        v6 = v7;
      }
      while ( v5 );
      v2 = *(_DWORD *)(a1 + 4);
    }
  }
  v8 = (_DWORD *)(v2 - 152);
  *(_DWORD *)(a1 + 4) = v2 - 152;
  v9 = (_DWORD *)(v2 - 80);
  v10 = (_DWORD *)v9[17];
  if ( v10 != v9 && v10 )
    GlitchFree(v10);
  v11 = (_DWORD *)v8[17];
  if ( v11 != v8 && v11 )
    GlitchFree(v11);
  return a2;
}


// ===== 5596c0 glitch::gui::CGUITable::removeColumn(uint) =====
int __fastcall glitch::gui::CGUITable::removeColumn(glitch::gui::CGUITable *this, int a2)
{
  int v3; // r2
  int v5; // r3
  int v7; // r0
  int v8; // r5
  unsigned int v9; // r6

  v3 = *((_DWORD *)this + 86);
  if ( a2 < (unsigned int)(1022611261 * ((*((_DWORD *)this + 87) - v3) >> 2)) )
  {
    std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 344,
      (_DWORD *)(v3 + 84 * a2));
    v7 = *((_DWORD *)this + 89);
    if ( -1431655765 * ((*((_DWORD *)this + 90) - v7) >> 2) )
    {
      v8 = 0;
      v9 = 0;
      do
      {
        std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
          v7 + v8,
          *(_DWORD *)(v7 + v8) + 152 * a2);
        v7 = *((_DWORD *)this + 89);
        ++v9;
        v8 += 12;
      }
      while ( v9 < -1431655765 * ((*((_DWORD *)this + 90) - v7) >> 2) );
    }
  }
  if ( a2 <= *((_DWORD *)this + 106) )
  {
    if ( 1022611261 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2) )
      v5 = 0;
    else
      v5 = -1;
    *((_DWORD *)this + 106) = v5;
  }
  return glitch::gui::CGUITable::recalculateWidths(this);
}


// ===== 5597dc glitch::gui::CGUITable::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUITable::serializeAttributes(int a1, int a2)
{
  int v4; // r6
  unsigned int v5; // r11
  int v6; // r6
  int v7; // r8
  int v8; // r3
  unsigned int v9; // r10
  unsigned int v11; // [sp+28h] [bp-4Ch]
  _DWORD v12[4]; // [sp+3Ch] [bp-38h] BYREF
  _BYTE *v13; // [sp+4Ch] [bp-28h]
  void *v14; // [sp+50h] [bp-24h]
  _DWORD v15[4]; // [sp+54h] [bp-20h] BYREF
  _BYTE *v16; // [sp+64h] [bp-10h]
  void *p; // [sp+68h] [bp-Ch]

  glitch::gui::IGUIElement::serializeAttributes((_DWORD *)a1, a2);
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "ColumnCount",
    1022611261 * ((*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344)) >> 2),
    0);
  if ( 1022611261 * ((*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344)) >> 2) )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v16 = v15;
      p = v15;
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
      *v16 = 0;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v15,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v15,
        (_DWORD *)(char)v5);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v15,
        "name",
        "");
      (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 148))(
        a2,
        p,
        *(_DWORD *)(*(_DWORD *)(a1 + 344) + v4 + 68),
        0);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v15,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v15,
        (_DWORD *)(char)v5);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v15,
        "color",
        "");
      (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(
        a2,
        p,
        *(_DWORD *)(*(_DWORD *)(a1 + 344) + v4 + 72),
        0);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v15,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v15,
        (_DWORD *)(char)v5);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v15,
        "width",
        "");
      (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
        a2,
        p,
        *(_DWORD *)(*(_DWORD *)(a1 + 344) + v4 + 76),
        0);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v15,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v15,
        (_DWORD *)(char)v5);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v15,
        "OrderingMode",
        "");
      (*(void (__fastcall **)(int, void *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
        a2,
        p,
        *(_DWORD *)(*(_DWORD *)(a1 + 344) + v4 + 80),
        glitch::gui::GUIColumnOrderingNames,
        0);
      if ( p != v15 && p )
        GlitchFree(p);
      ++v5;
      v4 += 84;
    }
    while ( v5 < 1022611261 * ((*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344)) >> 2) );
  }
  (*(void (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "RowCount",
    -1431655765 * ((*(_DWORD *)(a1 + 360) - *(_DWORD *)(a1 + 356)) >> 2),
    0);
  if ( -1431655765 * ((*(_DWORD *)(a1 + 360) - *(_DWORD *)(a1 + 356)) >> 2) )
  {
    v6 = 0;
    v11 = 0;
    do
    {
      v13 = v12;
      v14 = v12;
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
      v7 = 0;
      *v13 = 0;
      v8 = *(_DWORD *)(a1 + 356);
      if ( -678152731 * ((*(_DWORD *)(v8 + v6 + 4) - *(_DWORD *)(v8 + v6)) >> 3) )
      {
        v9 = 0;
        do
        {
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            v12,
            "Row",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v12,
            (_DWORD *)(char)v11);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v12,
            "cell",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v12,
            (_DWORD *)(char)v9);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v12,
            "text",
            "");
          (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 148))(
            a2,
            v14,
            *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 356) + v6) + v7 + 68),
            0);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            v12,
            "Row",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v12,
            (_DWORD *)(char)v11);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v12,
            "cell",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v12,
            (_DWORD *)(char)v9);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v12,
            "color",
            "");
          (*(void (__fastcall **)(int, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(
            a2,
            v14,
            *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 356) + v6) + v7 + 144),
            0);
          v8 = *(_DWORD *)(a1 + 356);
          ++v9;
          v7 += 152;
        }
        while ( v9 < 678152731 * ((*(_DWORD *)(v8 + v6 + 4) - *(_DWORD *)(v8 + v6)) >> 3) );
      }
      if ( v14 != v12 && v14 )
      {
        GlitchFree(v14);
        v8 = *(_DWORD *)(a1 + 356);
      }
      v6 += 12;
      ++v11;
    }
    while ( v11 < -1431655765 * ((*(_DWORD *)(a1 + 360) - v8) >> 2) );
  }
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Clip",
    *(unsigned __int8 *)(a1 + 380),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "DrawBack",
    *(unsigned __int8 *)(a1 + 381),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "MoveOverSelect",
    *(unsigned __int8 *)(a1 + 382),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "ResizableColumns",
    *(unsigned __int8 *)(a1 + 392),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "CellWidthPadding",
    *(_DWORD *)(a1 + 420),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
    a2,
    "CellHeightPadding",
    *(_DWORD *)(a1 + 416),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, char **, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "CurrentOrdering",
    *(_DWORD *)(a1 + 428),
    glitch::gui::GUIOrderingModeNames,
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(
           a2,
           "DrawFlags",
           *(_DWORD *)(a1 + 432),
           0);
}


// ===== 559ecc glitch::gui::CGUITable::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::gui::CGUITable::deserializeAttributes(float *a1, int a2)
{
  int v2; // r7
  _DWORD *v4; // r1
  int v5; // r2
  int v6; // r10
  int v7; // r7
  char *v8; // r11
  int v9; // r9
  _DWORD *v10; // r3
  int v11; // r0
  void ***v12; // r1
  int v13; // r2
  int v14; // r9
  int i; // r8
  int v16; // r0
  int v17; // r2
  int v18; // r3
  glitch::IReferenceCounted *v20; // r0
  int v21; // r0
  int v22; // r3
  int v24; // [sp+18h] [bp-22Ch]
  int *v25; // [sp+28h] [bp-21Ch]
  int v26; // [sp+3Ch] [bp-208h]
  int v27; // [sp+44h] [bp-200h]
  int v28; // [sp+48h] [bp-1FCh]
  _BYTE v29[68]; // [sp+58h] [bp-1ECh] BYREF
  void *v30; // [sp+9Ch] [bp-1A8h]
  _BYTE v31[68]; // [sp+A0h] [bp-1A4h] BYREF
  void *v32; // [sp+E4h] [bp-160h]
  int v33; // [sp+E8h] [bp-15Ch]
  int v34; // [sp+ECh] [bp-158h]
  void **v35[16]; // [sp+F0h] [bp-154h] BYREF
  void ***v36; // [sp+130h] [bp-114h]
  void *v37; // [sp+134h] [bp-110h]
  int v38; // [sp+138h] [bp-10Ch]
  int v39; // [sp+13Ch] [bp-108h]
  int v40; // [sp+140h] [bp-104h]
  _BYTE v41[64]; // [sp+144h] [bp-100h] BYREF
  _DWORD *v42; // [sp+184h] [bp-C0h]
  void *v43; // [sp+188h] [bp-BCh]
  _DWORD v44[16]; // [sp+18Ch] [bp-B8h] BYREF
  _DWORD *v45; // [sp+1CCh] [bp-78h]
  void *p; // [sp+1D0h] [bp-74h]
  _BYTE v47[20]; // [sp+1DCh] [bp-68h] BYREF
  char *v48; // [sp+1F0h] [bp-54h]
  _DWORD v49[4]; // [sp+1F4h] [bp-50h] BYREF
  _BYTE *v50; // [sp+204h] [bp-40h]
  void *v51; // [sp+208h] [bp-3Ch]
  _BYTE v52[16]; // [sp+20Ch] [bp-38h] BYREF
  int v53; // [sp+21Ch] [bp-28h]
  void *v54; // [sp+220h] [bp-24h]
  _DWORD v55[4]; // [sp+224h] [bp-20h] BYREF
  _BYTE *v56; // [sp+234h] [bp-10h]
  void *v57; // [sp+238h] [bp-Ch]

  v2 = (int)a1;
  v25 = (int *)(a1 + 86);
  glitch::gui::IGUIElement::deserializeAttributes(a1, a2);
  v4 = *(_DWORD **)(v2 + 344);
  v5 = *(_DWORD *)(v2 + 348);
  if ( v4 != (_DWORD *)v5 )
    std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)v25,
      v4,
      v5);
  v24 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "ColumnCount");
  if ( v24 )
  {
    v6 = 0;
    v27 = v2;
    do
    {
      v56 = v55;
      v57 = v55;
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
      v7 = 0;
      *v56 = 0;
      v36 = v35;
      v37 = v35;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v35,
        0x10u);
      *v36 = nullptr;
      v39 = 0;
      v40 = 0;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v55,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v55,
        (_DWORD *)(char)v6);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v55,
        "name",
        "");
      (*(void (__fastcall **)(_BYTE *, int, void *))(*(_DWORD *)a2 + 132))(v52, a2, v57);
      v8 = (char *)v54;
      v9 = v53 - (_DWORD)v54;
      v45 = v44;
      p = v44;
      std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
        v44,
        v53 - (_DWORD)v54 + 1);
      v10 = p;
      if ( v9 > 0 )
      {
        do
        {
          v10[v7] = v8[v7];
          ++v7;
        }
        while ( v7 != v9 );
        v10 += v7;
      }
      v45 = v10;
      *v10 = 0;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)v35,
        (const wchar_t *)p,
        v45);
      if ( p != v44 && p )
        GlitchFree(p);
      if ( v54 != v52 && v54 )
        GlitchFree(v54);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v55,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v55,
        (_DWORD *)(char)v6);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v55,
        "color",
        "");
      v38 = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 292))(a2, v57);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v55,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v55,
        (_DWORD *)(char)v6);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v55,
        "width",
        "");
      v39 = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 88))(a2, v57);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v55,
        "Column",
        "");
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v55,
        (_DWORD *)(char)v6);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v55,
        "OrderingMode",
        "");
      v40 = 0;
      v11 = (*(int (__fastcall **)(int, void *, char **))(*(_DWORD *)a2 + 256))(
              a2,
              v57,
              glitch::gui::GUIColumnOrderingNames);
      if ( v11 > 0 )
        v40 = v11;
      std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v25,
        (int)v35);
      if ( v37 != v35 && v37 )
        GlitchFree(v37);
      if ( v57 != v55 && v57 )
        GlitchFree(v57);
      ++v6;
    }
    while ( v24 != v6 );
    v2 = v27;
  }
  v12 = *(void ****)(v2 + 356);
  v13 = *(_DWORD *)(v2 + 360);
  if ( v12 != (void ***)v13 )
    std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      v2 + 356,
      v12,
      v13);
  v28 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "RowCount");
  if ( v28 )
  {
    v26 = 0;
    do
    {
      v50 = v49;
      v51 = v49;
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
      v14 = 0;
      *v50 = 0;
      memset(v35, 0, 12);
      std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v2 + 356,
        (int *)v35);
      if ( v24 )
      {
        for ( i = 0; i != v24; ++i )
        {
          glitch::gui::CGUITable::Cell::Cell((glitch::gui::CGUITable::Cell *)v29);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            v49,
            "Row",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v49,
            (_DWORD *)(char)v26);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v49,
            "cell",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v49,
            (_DWORD *)(char)i);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v49,
            "text",
            "");
          (*(void (__fastcall **)(_BYTE *, int, void *))(*(_DWORD *)a2 + 132))(v47, a2, v51);
          glitch::core::stringc2stringw((glitch::core *)v41, v48);
          std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            (int)v29,
            (const wchar_t *)v43,
            v42);
          if ( v43 != v41 && v43 )
            GlitchFree(v43);
          if ( v48 != v47 && v48 )
            GlitchFree(v48);
          glitch::gui::CGUITable::breakText(v2, (int)v29, (int)v31, *(_DWORD *)(*(_DWORD *)(v2 + 344) + v14 + 76));
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            v49,
            "Row",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v49,
            (_DWORD *)(char)v26);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v49,
            "cell",
            "");
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v49,
            (_DWORD *)(char)i);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
            v49,
            "color",
            "");
          v16 = (*(int (__fastcall **)(int, void *))(*(_DWORD *)a2 + 292))(a2, v51);
          v17 = *(_DWORD *)(v2 + 356);
          v18 = (*(_DWORD *)(v2 + 360) - v17) >> 2;
          v33 = v16;
          v34 = 0;
          std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            v17 + 12 * (-1431655765 * v18 - 1),
            (int)v29);
          if ( v32 != v31 && v32 )
            GlitchFree(v32);
          if ( v30 != v29 && v30 )
            GlitchFree(v30);
          v14 += 84;
        }
      }
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v35);
      if ( v51 != v49 && v51 )
        GlitchFree(v51);
    }
    while ( v28 != ++v26 );
  }
  v20 = *(glitch::IReferenceCounted **)(v2 + 368);
  *(_DWORD *)(v2 + 396) = 0;
  *(_DWORD *)(v2 + 400) = 0;
  *(_DWORD *)(v2 + 404) = 0;
  if ( v20 )
  {
    glitch::IReferenceCounted::drop(v20);
    *(_DWORD *)(v2 + 368) = 0;
  }
  *(_BYTE *)(v2 + 380) = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 228))(a2, "Clip");
  *(_BYTE *)(v2 + 381) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "DrawBack");
  *(_BYTE *)(v2 + 382) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "MoveOverSelect");
  *(_DWORD *)(v2 + 384) = -1;
  *(_DWORD *)(v2 + 388) = 0;
  *(_BYTE *)(v2 + 392) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 228))(a2, "ResizableColumns");
  *(_DWORD *)(v2 + 408) = -1;
  *(_DWORD *)(v2 + 420) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "CellWidthPadding");
  *(_DWORD *)(v2 + 416) = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "CellHeightPadding");
  *(_DWORD *)(v2 + 424) = -1;
  *(_BYTE *)(v2 + 383) = 0;
  *(_DWORD *)(v2 + 428) = (*(int (__fastcall **)(int, const char *, char **))(*(_DWORD *)a2 + 256))(
                            a2,
                            "CurrentOrdering",
                            glitch::gui::GUIOrderingModeNames);
  v21 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 88))(a2, "DrawFlags");
  v22 = *(_DWORD *)v2;
  *(_DWORD *)(v2 + 432) = v21;
  return (*(int (__fastcall **)(int))(v22 + 244))(v2);
}


// ===== 55a770 std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::gui::CGUITable::Cell*,uint,glitch::gui::CGUITable::Cell const&,std::__false_type const&) [clone] =====
void __fastcall std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *a1,
        int a2,
        unsigned int a3)
{
  _DWORD *v6; // r5
  unsigned int v7; // r9
  int v8; // r1
  int v9; // r10
  int v10; // r6
  int v11; // r6
  _DWORD *v12; // r10
  int v13; // r6
  _DWORD v14[38]; // [sp+0h] [bp-98h] BYREF

  if ( *a1 > a3 )
  {
    v6 = (_DWORD *)a1[1];
  }
  else
  {
    v6 = (_DWORD *)a1[1];
    if ( a3 < (unsigned int)v6 )
    {
      glitch::gui::CGUITable::Cell::Cell(v14, a3);
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        v14);
      glitch::gui::CGUITable::Cell::~Cell((glitch::gui::CGUITable::Cell *)v14);
      return;
    }
  }
  v7 = 678152731 * (((int)v6 - a2) >> 3);
  if ( v7 <= 1 )
  {
    v12 = &v6[38 * (1 - v7)];
    v13 = 678152731 * ((int)(152 * (1 - v7)) >> 3);
    if ( v13 > 0 )
    {
      do
      {
        glitch::gui::CGUITable::Cell::Cell(v6, a3);
        --v13;
        v6 += 38;
      }
      while ( v13 );
    }
    a1[1] = (unsigned int)v12;
    if ( v7 == 1 )
    {
      glitch::gui::CGUITable::Cell::Cell(v12, a2);
      a1[1] += 152;
      glitch::gui::CGUITable::Cell::operator=(a2, a3);
    }
    else
    {
      a1[1] = (unsigned int)&v12[38 * v7];
    }
  }
  else
  {
    v8 = (int)(v6 - 38);
    v9 = (int)(v6 - 38);
    v10 = 1;
    while ( 1 )
    {
      glitch::gui::CGUITable::Cell::Cell(v6, v8);
      --v10;
      v6 += 38;
      if ( !v10 )
        break;
      v8 = (int)(v6 - 38);
    }
    v11 = 678152731 * ((v9 - a2) >> 3);
    a1[1] += 152;
    if ( v11 > 0 )
    {
      while ( 1 )
      {
        glitch::gui::CGUITable::Cell::operator=(v9, v9 - 152);
        if ( !--v11 )
          break;
        v9 -= 152;
      }
    }
    glitch::gui::CGUITable::Cell::operator=(a2, a3);
  }
}


// ===== 55a914 glitch::gui::CGUITable::addColumn(wchar_t const*,int) =====
void __fastcall glitch::gui::CGUITable::addColumn(glitch::gui::CGUITable *this, const wchar_t *a2, int a3)
{
  size_t v6; // r0
  int v7; // r3
  int v8; // r0
  int v9; // r3
  int v10; // r1
  int v11; // r1
  int *v12; // r0
  int v13; // r9
  int v14; // r5
  unsigned int v15; // r7
  unsigned int *v16; // r12
  int v17; // r1
  int v18; // r6
  unsigned int v19; // r7
  _BYTE v20[68]; // [sp+4h] [bp-190h] BYREF
  void *v21; // [sp+48h] [bp-14Ch]
  int v22; // [sp+4Ch] [bp-148h] BYREF
  void *p; // [sp+90h] [bp-104h]
  _BYTE v24[68]; // [sp+9Ch] [bp-F8h] BYREF
  void *v25; // [sp+E0h] [bp-B4h]
  int v26; // [sp+E4h] [bp-B0h] BYREF
  void *v27; // [sp+128h] [bp-6Ch]
  _DWORD v28[16]; // [sp+134h] [bp-60h] BYREF
  _DWORD *v29; // [sp+174h] [bp-20h]
  void *v30; // [sp+178h] [bp-1Ch]
  int v31; // [sp+17Ch] [bp-18h]
  int v32; // [sp+180h] [bp-14h]
  int v33; // [sp+184h] [bp-10h]
  _DWORD v34[3]; // [sp+188h] [bp-Ch] BYREF

  v29 = v28;
  v30 = v28;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v28,
    0x10u);
  *v29 = 0;
  v32 = 0;
  v33 = 0;
  v6 = wcslen(a2);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (int)v28,
    a2,
    &a2[v6]);
  (*(void (__fastcall **)(_DWORD *, _DWORD, const wchar_t *))(**((_DWORD **)this + 92) + 28))(
    v34,
    *((_DWORD *)this + 92),
    a2);
  v7 = *((_DWORD *)this + 84);
  v32 = v34[0] + 15 + 2 * *((_DWORD *)this + 105);
  v33 = 0;
  v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 56))(v7);
  if ( v8 )
    v31 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 16))(v8, 8);
  if ( a3 < 0 || (v9 = *((_DWORD *)this + 87), v10 = *((_DWORD *)this + 86), a3 >= 1022611261 * ((v9 - v10) >> 2)) )
  {
    std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      (int *)this + 86,
      (int)v28);
    if ( -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2) )
    {
      v18 = 0;
      v19 = 0;
      do
      {
        glitch::gui::CGUITable::Cell::Cell((glitch::gui::CGUITable::Cell *)v24);
        ++v19;
        std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          *((_DWORD *)this + 89) + v18,
          (int)v24);
        v18 += 12;
        if ( v27 != &v26 && v27 )
          GlitchFree(v27);
        if ( v25 != v24 && v25 )
          GlitchFree(v25);
      }
      while ( v19 < -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2) );
    }
  }
  else
  {
    v11 = v10 + 84 * a3;
    v12 = (int *)((char *)this + 344);
    if ( 1022611261 * ((*((_DWORD *)this + 88) - v9) >> 2) )
      std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        v12,
        v11,
        v28);
    else
      std::vector<glitch::gui::CGUITable::Column,glitch::core::SAllocator<glitch::gui::CGUITable::Column,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        v12,
        v11,
        (int)v28,
        0);
    if ( -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2) )
    {
      v13 = 152 * a3;
      v14 = 0;
      v15 = 0;
      do
      {
        glitch::gui::CGUITable::Cell::Cell((glitch::gui::CGUITable::Cell *)v20);
        v16 = (unsigned int *)(*((_DWORD *)this + 89) + v14);
        v17 = *v16 + v13;
        if ( 678152731 * ((int)(v16[2] - v16[1]) >> 3) )
          std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
            v16,
            v17,
            (unsigned int)v20);
        else
          std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
            (void **)v16,
            v17,
            (int)v20,
            0);
        ++v15;
        v14 += 12;
        if ( p != &v22 && p )
          GlitchFree(p);
        if ( v21 != v20 && v21 )
          GlitchFree(v21);
      }
      while ( v15 < -1431655765 * ((*((_DWORD *)this + 90) - *((_DWORD *)this + 89)) >> 2) );
    }
  }
  if ( *((_DWORD *)this + 106) == -1 )
    *((_DWORD *)this + 106) = 0;
  glitch::gui::CGUITable::recalculateWidths(this);
  if ( v30 != v28 )
  {
    if ( v30 )
      GlitchFree(v30);
  }
}


// ===== 55ac64 std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::gui::CGUITable::Row*,uint,glitch::gui::CGUITable::Row const&,std::__false_type const&) [clone] =====
void ***__fastcall std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        void ***result,
        int *a2,
        int *a3)
{
  void ***v3; // r4
  int *v6; // r5
  unsigned int v7; // r9
  int *v8; // r1
  void ***v9; // r10
  int v10; // r6
  int v11; // r4
  void **v12; // r10
  int v13; // r6
  void **v14[3]; // [sp+4h] [bp-Ch] BYREF

  v3 = result;
  if ( *result > (void **)a3 )
  {
    v6 = (int *)result[1];
  }
  else
  {
    v6 = (int *)result[1];
    if ( a3 < v6 )
    {
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        v14,
        a3);
      std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        v3,
        a2,
        v14);
      return std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v14);
    }
  }
  v7 = -1431655765 * (v6 - a2);
  if ( v7 <= 1 )
  {
    v12 = (void **)&v6[3 * (1 - v7)];
    v13 = -1431655765 * ((int)(12 * (1 - v7)) >> 2);
    if ( v13 > 0 )
    {
      do
      {
        result = (void ***)std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
                             v6,
                             a3);
        --v13;
        v6 += 3;
      }
      while ( v13 );
    }
    v3[1] = v12;
    if ( v7 == 1 )
    {
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        v12,
        a2);
      v3[1] += 3;
      return std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
               (void ***)a2,
               a3);
    }
    else
    {
      v3[1] = &v12[3 * v7];
    }
  }
  else
  {
    v8 = v6 - 3;
    v9 = (void ***)(v6 - 3);
    v10 = 1;
    while ( 1 )
    {
      std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        v6,
        v8);
      --v10;
      v6 += 3;
      if ( !v10 )
        break;
      v8 = v6 - 3;
    }
    v3[1] += 3;
    v11 = -1431655765 * (((char *)v9 - (char *)a2) >> 2);
    if ( v11 > 0 )
    {
      while ( 1 )
      {
        std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
          v9,
          (int *)v9 - 3);
        if ( !--v11 )
          break;
        v9 -= 3;
      }
    }
    return std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
             (void ***)a2,
             a3);
  }
  return result;
}


// ===== 55adfc glitch::gui::CGUITable::addRow(uint) =====
void ***__fastcall glitch::gui::CGUITable::addRow(glitch::gui::CGUITable *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int v6; // r1
  void ***result; // r0
  unsigned int v8; // r1
  int *v9; // r1
  void ***v10; // r0
  unsigned int v11; // r5
  unsigned int v12; // r8
  _BYTE v13[68]; // [sp+4h] [bp-A4h] BYREF
  void *v14; // [sp+48h] [bp-60h]
  int v15; // [sp+4Ch] [bp-5Ch] BYREF
  void *p; // [sp+90h] [bp-18h]
  void **v17[3]; // [sp+9Ch] [bp-Ch] BYREF

  v2 = *((_DWORD *)this + 90);
  v3 = *((_DWORD *)this + 89);
  v6 = (v2 - v3) >> 2;
  result = (void ***)(1431655765 * v6);
  v8 = -1431655765 * v6;
  if ( a2 <= v8 )
  {
    memset(v17, 0, sizeof(v17));
    if ( a2 == v8 )
    {
      std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int)this + 356,
        (int *)v17);
    }
    else
    {
      v9 = (int *)(v3 + 12 * a2);
      v10 = (void ***)((char *)this + 356);
      if ( -1431655765 * ((*((_DWORD *)this + 91) - v2) >> 2) )
        std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
          v10,
          v9,
          (int *)v17);
      else
        std::vector<glitch::gui::CGUITable::Row,glitch::core::SAllocator<glitch::gui::CGUITable::Row,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (void ****)v10,
          v9,
          (int *)v17,
          0);
    }
    if ( 1022611261 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2) )
    {
      v11 = 12 * a2;
      v12 = 0;
      do
      {
        glitch::gui::CGUITable::Cell::Cell((glitch::gui::CGUITable::Cell *)v13);
        ++v12;
        std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          *((_DWORD *)this + 89) + v11,
          (int)v13);
        if ( p != &v15 && p )
          GlitchFree(p);
        if ( v14 != v13 )
        {
          if ( v14 )
            GlitchFree(v14);
        }
      }
      while ( v12 < 1022611261 * ((*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2) );
    }
    glitch::gui::CGUITable::recalculateHeights(this);
    return std::vector<glitch::gui::CGUITable::Cell,glitch::core::SAllocator<glitch::gui::CGUITable::Cell,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v17);
  }
  return result;
}


// ===== 55af6c `virtual thunk to'glitch::gui::CGUITable::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUITable::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUITable::deserializeAttributes((float *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 55af7c `virtual thunk to'glitch::gui::CGUITable::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::gui::CGUITable::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::gui::CGUITable::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2);
}


// ===== 55af8c `virtual thunk to'glitch::gui::CGUITable::~CGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITable::~CGUITable(glitch::gui::CGUITable *this)
{
  glitch::gui::CGUITable::~CGUITable((glitch::gui::CGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 55af9c `virtual thunk to'glitch::gui::CGUITable::~CGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITable::~CGUITable(glitch::gui::CGUITable *this)
{
  glitch::gui::CGUITable::~CGUITable((glitch::gui::CGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 55afac `virtual thunk to'glitch::gui::CGUITable::~CGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITable::~CGUITable(glitch::gui::CGUITable *this)
{
  glitch::gui::CGUITable::~CGUITable((glitch::gui::CGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 55afbc `virtual thunk to'glitch::gui::CGUITable::~CGUITable() =====
void __fastcall `virtual thunk to'glitch::gui::CGUITable::~CGUITable(glitch::gui::CGUITable *this)
{
  glitch::gui::CGUITable::~CGUITable((glitch::gui::CGUITable *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 55afcc glitch::gui::CGUIToolBar::updateAbsolutePosition(void) =====
int __fastcall glitch::gui::CGUIToolBar::updateAbsolutePosition(glitch::gui::IGUIElement *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 9);
  if ( v1 )
  {
    *((_DWORD *)this + 22) = 0;
    *((_DWORD *)this + 24) = *(_DWORD *)(v1 + 64) - *(_DWORD *)(v1 + 56);
  }
  return glitch::gui::IGUIElement::updateAbsolutePosition(this);
}


// ===== 55aff4 `global constructor keyed to'.._source_glitch_gui_CGUIToolBar.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIToolBar.cpp()
{
  dword_9F66AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F66A8 = 1056964608;
}


// ===== 55b014 glitch::gui::CGUIToolBar::addButton(int,wchar_t const*,wchar_t const*,boost::intrusive_ptr<glitch::video::ITexture> const&,boost::intrusive_ptr<glitch::video::ITexture> const&,bool,bool) =====
char *__fastcall glitch::gui::CGUIToolBar::addButton(
        int a1,
        int a2,
        int a3,
        int a4,
        int *a5,
        _DWORD *a6,
        char a7,
        char a8)
{
  int v8; // r12
  int v11; // r1
  int v12; // r8
  int v13; // r3
  char *v15; // r4
  int v17; // [sp+8h] [bp-1Ch]
  _DWORD v18[5]; // [sp+10h] [bp-14h] BYREF

  v8 = *(_DWORD *)(a1 + 344) + 3;
  *(_DWORD *)(a1 + 344) = v8;
  v11 = *a5;
  v12 = a3;
  if ( *a5 )
  {
    v13 = *(_DWORD *)(v11 + 32);
    a3 = *(_DWORD *)(v11 + 36);
  }
  else
  {
    v13 = 0;
  }
  if ( *a5 )
    v13 += 8 + v8;
  else
    a3 = v13;
  if ( *a5 )
    a3 += 8;
  *(_DWORD *)(a1 + 344) = v13;
  v18[0] = v8;
  v18[1] = 2;
  v18[2] = v13;
  v18[3] = a3;
  v15 = (char *)operator new(0x1E4u, 0);
  glitch::gui::CGUIButton::CGUIButton(v15, *(_DWORD *)(a1 + 336), a1, a2, v18, 0, v17);
  glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)&v15[*(_DWORD *)(*(_DWORD *)v15 - 16)]);
  if ( v12 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v15 + 68))(v15, v12);
  if ( a4 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v15 + 76))(v15, a4);
  if ( *a5 )
    (*(void (__fastcall **)(char *, int *))(*(_DWORD *)v15 + 128))(v15, a5);
  if ( *a6 )
    (*(void (__fastcall **)(char *, _DWORD *))(*(_DWORD *)v15 + 136))(v15, a6);
  if ( a7 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v15 + 152))(v15, 1);
  if ( a8 )
    (*(void (__fastcall **)(char *, int))(*(_DWORD *)v15 + 164))(v15, 1);
  return v15;
}


// ===== 55b18c std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 55b190 glitch::gui::IGUIToolBar::IGUIToolBar(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIToolBar::IGUIToolBar(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 20;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 55b450 glitch::gui::CGUIToolBar::CGUIToolBar(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIToolBar::CGUIToolBar(int a1, int a2, int a3, int a4, int *a5)
{
  Elf32_Dyn **v5; // r5
  int v6; // r8
  int v7; // lr
  int v8; // r10
  _DWORD *v9; // r6
  _DWORD *v11; // r0
  int v12; // r3
  _DWORD *v13; // r0
  _DWORD *i; // r2
  _DWORD *v15; // r3
  int v16; // r12
  _DWORD *v17; // r1
  int v18; // lr
  Elf32_Dyn **v19; // r3
  int v20; // r3
  int v21; // r0
  int v22; // r0
  int v24[2]; // [sp+8h] [bp-24h] BYREF
  Elf32_Dyn **v25; // [sp+10h] [bp-1Ch]
  char *v26; // [sp+14h] [bp-18h]
  int v27[5]; // [sp+18h] [bp-14h] BYREF

  v5 = &__GLOBAL_OFFSET_TABLE_;
  *(_DWORD *)(a1 + 356) = 1;
  *(_DWORD *)(a1 + 352) = off_95B720;
  *(_DWORD *)(a1 + 348) = off_972314;
  *(_DWORD *)&byte_4[a1 + 348] = off_972334;
  v6 = a5[3];
  v7 = a5[1];
  v8 = a5[2];
  v9 = (_DWORD *)a3;
  v27[0] = *a5;
  v27[1] = v7;
  v27[2] = v8;
  v27[3] = v6;
  glitch::gui::IGUIToolBar::IGUIToolBar(a1, (int *)off_972134, a2, a3, a4, v27);
  *(_DWORD *)(a1 + 344) = 5;
  if ( !v9 )
    v5 = (Elf32_Dyn **)&dword_64;
  *(_DWORD *)a1 = off_972068;
  *(_DWORD *)(a1 + 348) = off_972100;
  *(_DWORD *)(a1 + 352) = off_972120;
  if ( v9 )
  {
    v11 = v9;
    v12 = *v9;
    v9 = nullptr;
    v5 = (Elf32_Dyn **)(*(_DWORD *)(*(_DWORD *)(a1 + 36) + 64) - *(_DWORD *)(*(_DWORD *)(a1 + 36) + 56));
    v13 = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(v12 + 104))(v11);
    for ( i = (_DWORD *)*v13; v13 != i; v9 = v17 )
    {
      v15 = (_DWORD *)i[2];
      v16 = v15[14];
      v17 = (_DWORD *)v15[17];
      v18 = v15[15];
      v19 = (Elf32_Dyn **)v15[16];
      if ( v16 || (int)v9 < v18 || v5 != v19 )
        v17 = v9;
      i = (_DWORD *)*i;
    }
  }
  v20 = *(_DWORD *)(a1 + 336);
  v26 = nullptr;
  v24[0] = 0;
  v25 = nullptr;
  v24[1] = (int)v9;
  v21 = (*(int (__fastcall **)(int))(*(_DWORD *)v20 + 56))(v20);
  v22 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v21 + 24))(v21, 1);
  v25 = v5;
  v26 = (char *)v9 + v22;
  glitch::gui::IGUIElement::setRelativePosition((float *)a1, v24);
  return a1;
}


// ===== 55b5f0 glitch::gui::CGUIToolBar::CGUIToolBar(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIToolBar::CGUIToolBar(int a1, _DWORD *a2, int a3, int a4, int a5, int *a6)
{
  _DWORD *v6; // r5
  int v7; // r4
  int v8; // r12
  int v9; // lr
  _DWORD *v11; // r6
  int v12; // r3
  int v13; // r2
  _DWORD *v14; // r0
  int v15; // r3
  _DWORD *v16; // r0
  _DWORD *i; // r2
  _DWORD *v18; // r3
  int v19; // r12
  _DWORD *v20; // r1
  int v21; // lr
  _DWORD *v22; // r3
  int v23; // r3
  int v24; // r0
  int v25; // r0
  int v27[2]; // [sp+8h] [bp-20h] BYREF
  _DWORD *v28; // [sp+10h] [bp-18h]
  char *v29; // [sp+14h] [bp-14h]
  int v30[4]; // [sp+18h] [bp-10h] BYREF

  v6 = a2;
  v7 = a6[1];
  v8 = a6[2];
  v9 = a6[3];
  v30[0] = *a6;
  v30[1] = v7;
  v30[2] = v8;
  v11 = (_DWORD *)a4;
  v30[3] = v9;
  glitch::gui::IGUIToolBar::IGUIToolBar(a1, a2 + 1, a3, a4, a5, v30);
  v12 = *v6;
  *(_DWORD *)a1 = *v6;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = v6[7];
  v13 = v6[8];
  if ( !v11 )
    v6 = &dword_64;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = v13;
  *(_DWORD *)(a1 + 344) = 5;
  if ( v11 )
  {
    v14 = v11;
    v15 = *v11;
    v11 = nullptr;
    v6 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 36) + 64) - *(_DWORD *)(*(_DWORD *)(a1 + 36) + 56));
    v16 = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(v15 + 104))(v14);
    for ( i = (_DWORD *)*v16; v16 != i; v11 = v20 )
    {
      v18 = (_DWORD *)i[2];
      v19 = v18[14];
      v20 = (_DWORD *)v18[17];
      v21 = v18[15];
      v22 = (_DWORD *)v18[16];
      if ( v19 || (int)v11 < v21 || v6 != v22 )
        v20 = v11;
      i = (_DWORD *)*i;
    }
  }
  v23 = *(_DWORD *)(a1 + 336);
  v29 = nullptr;
  v27[0] = 0;
  v28 = nullptr;
  v27[1] = (int)v11;
  v24 = (*(int (__fastcall **)(int))(*(_DWORD *)v23 + 56))(v23);
  v25 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v24 + 24))(v24, 1);
  v28 = v6;
  v29 = (char *)v11 + v25;
  glitch::gui::IGUIElement::setRelativePosition((float *)a1, v27);
  return a1;
}


// ===== 55b740 glitch::gui::CGUIToolBar::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIToolBar::onEvent(int a1, int *a2)
{
  int v2; // r3
  int v4; // r2
  int v5; // r4

  if ( *(_BYTE *)(a1 + 153) )
  {
    v2 = *a2;
    if ( *a2 == 1 && !a2[5] )
    {
      v4 = a2[2];
      v5 = a2[3];
      if ( v4 >= *(_DWORD *)(a1 + 72)
        && v5 >= *(_DWORD *)(a1 + 76)
        && v4 <= *(_DWORD *)(a1 + 80)
        && v5 <= *(_DWORD *)(a1 + 84) )
      {
        return v2;
      }
    }
  }
  v2 = *(_DWORD *)(a1 + 36);
  if ( !v2 )
    return v2;
  else
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 8))(*(_DWORD *)(a1 + 36));
}


// ===== 55b7c8 glitch::gui::IGUIToolBar::~IGUIToolBar() =====
void __fastcall glitch::gui::IGUIToolBar::~IGUIToolBar(glitch::gui::IGUIToolBar *this)
{
  *(_DWORD *)this = off_971E68;
  *((_DWORD *)this + 86) = off_971F00;
  *((_DWORD *)this + 87) = off_971F20;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_971F34);
}


// ===== 55b81c `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar(glitch::gui::IGUIToolBar *this)
{
  glitch::gui::IGUIToolBar::~IGUIToolBar((glitch::gui::IGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 55b82c `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar(glitch::gui::IGUIToolBar *this)
{
  glitch::gui::IGUIToolBar::~IGUIToolBar((glitch::gui::IGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 55b83c glitch::gui::CGUIToolBar::~CGUIToolBar() =====
void __fastcall glitch::gui::CGUIToolBar::~CGUIToolBar(glitch::gui::CGUIToolBar *this)
{
  *((_DWORD *)this + 87) = off_972100;
  *((_DWORD *)this + 88) = off_972120;
  *(_DWORD *)this = off_972170;
  *(int *)((char *)&elf_hash_bucket[32] + (_DWORD)this) = (int)off_972208;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_972228;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_972138);
}


// ===== 55b8ac `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar(glitch::gui::CGUIToolBar *this)
{
  glitch::gui::CGUIToolBar::~CGUIToolBar((glitch::gui::CGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 55b8bc `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar(glitch::gui::CGUIToolBar *this)
{
  glitch::gui::CGUIToolBar::~CGUIToolBar((glitch::gui::CGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 55b8cc glitch::gui::CGUIToolBar::~CGUIToolBar() =====
void __fastcall glitch::gui::CGUIToolBar::~CGUIToolBar(glitch::gui::CGUIToolBar *this)
{
  glitch::gui::CGUIToolBar::~CGUIToolBar(this);
  LC_API_FREE_0(this);
}


// ===== 55b8e8 `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar(glitch::gui::CGUIToolBar *this)
{
  glitch::gui::CGUIToolBar::~CGUIToolBar((glitch::gui::CGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 55b8f8 `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIToolBar::~CGUIToolBar(glitch::gui::CGUIToolBar *this)
{
  glitch::gui::CGUIToolBar::~CGUIToolBar((glitch::gui::CGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 55b908 glitch::gui::IGUIToolBar::~IGUIToolBar() =====
void __fastcall glitch::gui::IGUIToolBar::~IGUIToolBar(glitch::gui::IGUIToolBar *this)
{
  *(_DWORD *)this = off_971E68;
  *((_DWORD *)this + 86) = off_971F00;
  *((_DWORD *)this + 87) = off_971F20;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_971F34);
  LC_API_FREE_0(this);
}


// ===== 55b964 `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar(glitch::gui::IGUIToolBar *this)
{
  glitch::gui::IGUIToolBar::~IGUIToolBar((glitch::gui::IGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 55b974 `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar() =====
void __fastcall `virtual thunk to'glitch::gui::IGUIToolBar::~IGUIToolBar(glitch::gui::IGUIToolBar *this)
{
  glitch::gui::IGUIToolBar::~IGUIToolBar((glitch::gui::IGUIToolBar *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 55b984 glitch::gui::CGUIToolBar::draw(void) =====
int __fastcall glitch::gui::CGUIToolBar::draw(int this)
{
  int v1; // r4
  int v2; // r12
  int v3; // r2
  int v4; // lr
  int v5; // r4
  int *i; // r5
  int *v7; // t1
  _DWORD v8[5]; // [sp+0h] [bp-14h] BYREF

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    if ( this )
    {
      v2 = *(_DWORD *)(v1 + 60);
      v3 = *(_DWORD *)(v1 + 68);
      v4 = *(_DWORD *)(v1 + 56);
      v8[2] = *(_DWORD *)(v1 + 64);
      v8[3] = v3;
      v8[0] = v4;
      v8[1] = v2;
      this = (*(int (__fastcall **)(int, int, _DWORD *, int))(*(_DWORD *)this + 84))(this, v1, v8, v1 + 72);
      if ( *(_BYTE *)(v1 + 152) )
      {
        v7 = *(int **)(v1 + 4);
        v5 = v1 + 4;
        for ( i = v7; i != (int *)v5; i = (int *)*i )
          this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
      }
    }
  }
  return this;
}


// ===== 55ba30 glitch::gui::IGUITTFont::clearGlyphs(void) =====
void __fastcall glitch::gui::IGUITTFont::clearGlyphs(glitch::gui::IGUITTFont *this)
{
  ;
}


// ===== 55ba34 glitch::gui::CGUITTGlyph::CGUITTGlyph(void) =====
_DWORD *__fastcall glitch::gui::CGUITTGlyph::CGUITTGlyph(_DWORD *this)
{
  *(this + 19) = 0;
  *(this + 1) = 1;
  *this = off_972440;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  return this;
}


// ===== 55bab0 glitch::gui::CGUITTGlyph::CGUITTGlyph(void) =====
_DWORD *__fastcall glitch::gui::CGUITTGlyph::CGUITTGlyph(_DWORD *this)
{
  *(this + 19) = 0;
  *(this + 1) = 1;
  *this = off_972440;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  return this;
}


// ===== 55bb2c glitch::gui::IGUITTFont::~IGUITTFont() =====
void __fastcall glitch::gui::IGUITTFont::~IGUITTFont(glitch::gui::IGUITTFont *this)
{
  ;
}


// ===== 55bb30 glitch::gui::CGUITTFont::CGUITTFont(glitch::video::IVideoDriver *) =====
int __fastcall glitch::gui::CGUITTFont::CGUITTFont(int result, int a2)
{
  *(_DWORD *)result = off_9723C0;
  *(_DWORD *)(result + 4) = 1;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 8) = a2;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 44) = 0;
  if ( a2 )
    ++*(_DWORD *)(a2 + 4);
  *(_DWORD *)(result + 60) = 0;
  *(_BYTE *)(result + 52) = 0;
  *(_BYTE *)(result + 53) = 0;
  *(_DWORD *)(result + 56) = 0;
  return result;
}


// ===== 55bbb4 glitch::gui::CGUITTFont::CGUITTFont(glitch::video::IVideoDriver *) =====
int __fastcall glitch::gui::CGUITTFont::CGUITTFont(int result, int a2)
{
  *(_DWORD *)result = off_9723C0;
  *(_DWORD *)(result + 4) = 1;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 8) = a2;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 44) = 0;
  if ( a2 )
    ++*(_DWORD *)(a2 + 4);
  *(_DWORD *)(result + 60) = 0;
  *(_BYTE *)(result + 52) = 0;
  *(_BYTE *)(result + 53) = 0;
  *(_DWORD *)(result + 56) = 0;
  return result;
}


// ===== 55bc38 glitch::gui::CGUITTFont::setBorder(uint,glitch::video::SColor) =====
int __fastcall glitch::gui::CGUITTFont::setBorder(int result, int a2, int a3)
{
  int v3; // r3
  int v4; // r6
  int v5; // r3
  int v6; // r1
  int v7; // r6
  int v8; // r7

  v3 = *(_DWORD *)(result + 48);
  if ( v3 )
  {
    v4 = *(_DWORD *)(v3 + 8);
    v5 = *(_DWORD *)(result + 24);
    v6 = *(_DWORD *)(v5 + 12) * a2;
    if ( *(int *)(v4 + 16) > 0 )
    {
      v7 = 0;
      v8 = 0;
      while ( 1 )
      {
        *(_DWORD *)(v5 + v7 + 80) = v6;
        ++v8;
        *(_DWORD *)(*(_DWORD *)(result + 24) + v7 + 84) = a3;
        v7 += 88;
        if ( *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(result + 48) + 8) + 16) <= v8 )
          break;
        v5 = *(_DWORD *)(result + 24);
      }
    }
  }
  return result;
}


// ===== 55bcd4 glitch::gui::CGUITTFont::setKerningWidth(int) =====
void __fastcall glitch::gui::CGUITTFont::setKerningWidth(glitch::gui::CGUITTFont *this, int a2)
{
  ;
}


// ===== 55bcd8 glitch::gui::CGUITTFont::setKerningHeight(int) =====
void __fastcall glitch::gui::CGUITTFont::setKerningHeight(glitch::gui::CGUITTFont *this, int a2)
{
  ;
}


// ===== 55bcdc glitch::gui::CGUITTFont::getKerningWidth(wchar_t const*,wchar_t const*) =====
int __fastcall glitch::gui::CGUITTFont::getKerningWidth(
        glitch::gui::CGUITTFont *this,
        const wchar_t *a2,
        const wchar_t *a3)
{
  return 0;
}


// ===== 55bce4 glitch::gui::CGUITTFont::getKerningHeight(void) =====
int __fastcall glitch::gui::CGUITTFont::getKerningHeight(glitch::gui::CGUITTFont *this)
{
  return 0;
}


// ===== 55bcec glitch::gui::CGUITTFont::setTracking(int) =====
int __fastcall glitch::gui::CGUITTFont::setTracking(int this, int a2)
{
  if ( a2 >= 0 )
    *(_DWORD *)(this + 56) = a2;
  else
    *(_DWORD *)(this + 56) = 0;
  return this;
}


// ===== 55bd00 glitch::gui::CGUITTFont::getTracking(void) =====
int __fastcall glitch::gui::CGUITTFont::getTracking(glitch::gui::CGUITTFont *this)
{
  return *((_DWORD *)this + 14);
}


// ===== 55bd08 glitch::gui::CGUITTFont::setAntiAlias(bool) =====
int __fastcall glitch::gui::CGUITTFont::setAntiAlias(int this, bool a2)
{
  *(_BYTE *)(this + 52) = a2;
  return this;
}


// ===== 55bd10 glitch::gui::CGUITTFont::getAntiAlias(void) =====
int __fastcall glitch::gui::CGUITTFont::getAntiAlias(glitch::gui::CGUITTFont *this)
{
  return *((unsigned __int8 *)this + 52);
}


// ===== 55bd18 glitch::gui::CGUITTFont::setTransparency(bool) =====
int __fastcall glitch::gui::CGUITTFont::setTransparency(int this, bool a2)
{
  *(_BYTE *)(this + 53) = a2;
  return this;
}


// ===== 55bd20 glitch::gui::CGUITTFont::getTransparency(void) =====
int __fastcall glitch::gui::CGUITTFont::getTransparency(glitch::gui::CGUITTFont *this)
{
  return *((unsigned __int8 *)this + 53);
}


// ===== 55bd28 glitch::gui::CGUITTFont::setSpaceWidth(int) =====
int __fastcall glitch::gui::CGUITTFont::setSpaceWidth(int this, int a2)
{
  *(_DWORD *)(this + 60) = a2;
  return this;
}


// ===== 55bd30 glitch::gui::CGUITTFont::getSpaceWidth(void) =====
int __fastcall glitch::gui::CGUITTFont::getSpaceWidth(glitch::gui::CGUITTFont *this)
{
  return *((_DWORD *)this + 15);
}


// ===== 55bd38 `global constructor keyed to'.._source_glitch_gui_CGUITTFont.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUITTFont.cpp()
{
  dword_9F66B8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F66B4 = 1056964608;
}


// ===== 55bd58 glitch::core::getUTF8charValue(char const*) =====
int __fastcall glitch::core::getUTF8charValue(glitch::core *this, const char *a2)
{
  int result; // r0

  switch ( LC_API_STRLEN_0((const char *)this) )
  {
    case 1u:
      result = *(_BYTE *)this & 0x7F;
      break;
    case 2u:
      result = *((_BYTE *)this + 1) & 0x3F | ((*(_BYTE *)this & 0x1F) << 6);
      break;
    case 3u:
      result = *((_BYTE *)this + 2) & 0x3F | ((*(_BYTE *)this & 0xF) << 12) | ((*((_BYTE *)this + 1) & 0x3F) << 6);
      break;
    case 4u:
      result = *((_BYTE *)this + 3) & 0x3F
             | ((*(_BYTE *)this & 7) << 18)
             | ((*((_BYTE *)this + 1) & 0x3F) << 12)
             | ((*((_BYTE *)this + 2) & 0x3F) << 6);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 55be04 glitch::core::iterateUTF8String(char const*&) =====
int __fastcall glitch::core::iterateUTF8String(char **this, const char **a2)
{
  char *v2; // r1
  char v3; // r2
  char v5; // r3
  char v7; // r3
  char v8; // r3
  _BYTE v9[8]; // [sp+0h] [bp-Ch] BYREF

  v2 = *this;
  v9[4] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
  v3 = *v2;
  v5 = *v2;
  if ( *v2 < 0 )
  {
    if ( (v5 & 0xE0) == 0xC0 )
    {
      v9[0] = *v2;
      v7 = v2[1];
      v2 += 2;
      *this = v2;
      v9[1] = v7;
    }
    else if ( (v5 & 0xF0) == 0xE0 )
    {
      v9[0] = *v2;
      v9[1] = v2[1];
      v8 = v2[2];
      *this = v2 + 3;
      v9[2] = v8;
    }
    else if ( (v5 & 0xF8) == 0xF0 )
    {
      memcpy(v9, v2, 4u);
      *this += 4;
    }
    else
    {
      *this = ++v2;
    }
  }
  else
  {
    *this = ++v2;
    v9[0] = v3;
  }
  return glitch::core::getUTF8charValue((glitch::core *)v9, v2);
}


// ===== 55beec std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = -1171354717 * ((a1[1] - *a1) >> 3);
  if ( 48806446 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x2E8BA2E || result < v2 )
    return 48806446;
  return result;
}


// ===== 55bf64 std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void (__fastcall **v4)(void *); // t1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void (__fastcall ***)(void *))v1 - 22);
      v1 -= 88;
      (*v4)(v1);
    }
    while ( v2 != v1 );
    v1 = (char *)*a1;
  }
  GlitchFree(v1);
}


// ===== 55bfa4 std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void (__fastcall **v4)(void *); // t1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((void (__fastcall ***)(void *))v1 - 22);
      v1 -= 88;
      (*v4)(v1);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 55bfec glitch::gui::CGUITTFont::drawGlyph(glitch::gui::CGUITTGlyph const*,glitch::core::position2d<int>,glitch::core::rect<int> const*,glitch::video::SColor) =====
int __fastcall glitch::gui::CGUITTFont::drawGlyph(int result, _DWORD *a2, int *a3, int a4, int a5)
{
  int v6; // r7
  int v7; // r5
  int v8; // r3
  int v9; // r6
  int v10; // lr
  int v11; // r2
  int v12; // r0
  int v13; // r8
  int v14; // r5
  int v15; // r3
  int v16; // r6
  int v17; // r7
  int v18; // r2
  int v19; // r0
  _DWORD v20[4]; // [sp+10h] [bp-30h] BYREF
  _DWORD v21[4]; // [sp+20h] [bp-20h] BYREF
  _DWORD v22[2]; // [sp+30h] [bp-10h] BYREF
  _DWORD v23[2]; // [sp+38h] [bp-8h] BYREF

  if ( !*(_BYTE *)(result + 53) )
    HIBYTE(a5) = -1;
  if ( a2[18] )
  {
    v6 = a3[1];
    v7 = a2[10];
    v8 = a2[11];
    v9 = *a3;
    v10 = a2[14];
    v11 = a2[3];
    v12 = *(_DWORD *)(result + 8);
    v21[3] = a2[15] - 1;
    v23[0] = v9 + v8;
    v23[1] = v6 - v7 + v11;
    v21[1] = 0;
    v21[2] = v10 - 1;
    v21[0] = 0;
    return glitch::video::C2DDriver::draw2DImage(v12, a2 + 18, v23, v21, a4, a5, 1);
  }
  else if ( a2[17] )
  {
    v13 = a3[1];
    v14 = a2[4];
    v15 = a2[5];
    v16 = *a3;
    v17 = a2[8];
    v18 = a2[3];
    v19 = *(_DWORD *)(result + 8);
    v20[3] = a2[9] - 1;
    v22[0] = v16 + v15;
    v22[1] = v13 - v14 + v18;
    v20[1] = 0;
    v20[2] = v17 - 1;
    v20[0] = 0;
    return glitch::video::C2DDriver::draw2DImage(v19, a2 + 17, v22, v20, a4, a5, 1);
  }
  return result;
}


// ===== 55c110 glitch::gui::CGUITTFont::drawGlyphInTexture(glitch::gui::CGUITTGlyph const*,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::position2d<int>,glitch::core::rect<int> const*,glitch::video::SColor) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUITTFont::drawGlyphInTexture(
        glitch::IReferenceCounted *result,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        int a6)
{
  int v7; // r4
  _DWORD *v10; // r3
  int v11; // lr
  int v12; // r0
  int v13[2]; // [sp+8h] [bp-18h] BYREF
  _DWORD v14[2]; // [sp+10h] [bp-10h] BYREF
  glitch::IReferenceCounted *v15; // [sp+18h] [bp-8h] BYREF
  glitch::IReferenceCounted *v16; // [sp+1Ch] [bp-4h] BYREF

  v7 = (int)result;
  if ( *a3 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**((_DWORD **)result + 2) + 132))(
      &v16,
      *((_DWORD *)result + 2));
    (*(void (__fastcall **)(_DWORD, glitch::IReferenceCounted **))(**(_DWORD **)(v7 + 8) + 140))(
      *(_DWORD *)(v7 + 8),
      &v16);
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v7 + 8) + 20))(*(_DWORD *)(v7 + 8));
    v10 = *(_DWORD **)(v7 + 8);
    if ( (v10[39] & 0x800) == 0 )
    {
      (*(void (__fastcall **)(_DWORD, int))(*v10 + 168))(*(_DWORD *)(v7 + 8), 1);
      v12 = *(_DWORD *)(v7 + 8);
      v14[1] = 0;
      v14[0] = 0;
      glitch::video::C2DDriver::draw2DImage(v12, a3, v14);
    }
    v11 = *a4;
    v13[1] = a4[1];
    v13[0] = v11;
    glitch::gui::CGUITTFont::drawGlyph(v7, a2, v13, a5, a6);
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v7 + 8) + 24))(*(_DWORD *)(v7 + 8));
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**(_DWORD **)(v7 + 8) + 144))(
      &v15,
      *(_DWORD *)(v7 + 8));
    if ( v15 )
      glitch::IReferenceCounted::drop(v15);
    result = v16;
    if ( v16 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v16);
  }
  return result;
}


// ===== 55c240 glitch::gui::CGUITTFont::getVertBearingFactor(void) =====
float __fastcall glitch::gui::CGUITTFont::getVertBearingFactor(glitch::gui::CGUITTFont *this)
{
  int Char_Index; // r0
  int v3; // r3

  Char_Index = FT_Get_Char_Index(*(_DWORD *)(*((_DWORD *)this + 12) + 8), 97);
  if ( FT_Load_Glyph(*(_DWORD *)(*((_DWORD *)this + 12) + 8), Char_Index, 10) )
    return 0.0;
  v3 = *(_DWORD *)(*((_DWORD *)this + 12) + 8);
  if ( (*(_DWORD *)(v3 + 8) & 0x20) != 0 )
    return 0.7;
  else
    return (float)((float)((float)*(int *)(*(_DWORD *)(v3 + 84) + 48) * -0.5)
                 / (float)((float)*(int *)(*(_DWORD *)(v3 + 84) + 48) - (float)*(int *)(*(_DWORD *)(v3 + 84) + 44)))
         + 1.0;
}


// ===== 55c2e4 glitch::gui::IGUITTFont::~IGUITTFont() =====
void __fastcall glitch::gui::IGUITTFont::~IGUITTFont(glitch::gui::IGUITTFont *this)
{
  LC_API_FREE_0(this);
}


// ===== 55c2f8 glitch::gui::CGUITTFace::~CGUITTFace() =====
void __fastcall glitch::gui::CGUITTFace::~CGUITTFace(glitch::gui::CGUITTFace *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_972458;
  FT_Done_Face(v2);
  *((_DWORD *)this + 2) = 0;
  if ( glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)glitch::gui::CGUITTFace::library) )
    glitch::gui::CGUITTFace::library = 0;
}


// ===== 55c354 glitch::gui::CGUITTFace::~CGUITTFace() =====
void __fastcall glitch::gui::CGUITTFace::~CGUITTFace(glitch::gui::CGUITTFace *this)
{
  glitch::gui::CGUITTFace::~CGUITTFace(this);
  LC_API_FREE_0(this);
}


// ===== 55c370 glitch::gui::CGUITTFace::~CGUITTFace() =====
void __fastcall glitch::gui::CGUITTFace::~CGUITTFace(glitch::gui::CGUITTFace *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_972458;
  FT_Done_Face(v2);
  *((_DWORD *)this + 2) = 0;
  if ( glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)glitch::gui::CGUITTFace::library) )
    glitch::gui::CGUITTFace::library = 0;
}


// ===== 55c3cc glitch::gui::CGUITTFace::load(glitch::io::IReadFile *) =====
bool __fastcall glitch::gui::CGUITTFace::load(glitch::gui::CGUITTFace *this, glitch::io::IReadFile *a2)
{
  int v4; // r5
  int v5; // r7
  int v6; // r0

  v4 = *(_DWORD *)(glitch::gui::CGUITTFace::library + 8);
  v5 = (*(int (__fastcall **)(glitch::io::IReadFile *, _DWORD))(*(_DWORD *)a2 + 48))(a2, 0);
  v6 = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 32))(a2);
  return FT_New_Memory_Face(v4, v5, v6, 0, (char *)this + 8) == 0;
}


// ===== 55c450 glitch::gui::CGUITTFace::load(char const*) =====
bool __fastcall glitch::gui::CGUITTFace::load(glitch::gui::CGUITTFace *this, const char *a2)
{
  return FT_New_Face(*(_DWORD *)(glitch::gui::CGUITTFace::library + 8), a2, 0, (char *)this + 8) == 0;
}


// ===== 55c48c glitch::gui::CGUITTLibrary::~CGUITTLibrary() =====
void __fastcall glitch::gui::CGUITTLibrary::~CGUITTLibrary(glitch::gui::CGUITTLibrary *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_972470;
  FT_Done_FreeType(v2);
}


// ===== 55c4c4 glitch::gui::CGUITTLibrary::~CGUITTLibrary() =====
void __fastcall glitch::gui::CGUITTLibrary::~CGUITTLibrary(glitch::gui::CGUITTLibrary *this)
{
  glitch::gui::CGUITTLibrary::~CGUITTLibrary(this);
  LC_API_FREE_0(this);
}


// ===== 55c4e0 glitch::gui::CGUITTLibrary::~CGUITTLibrary() =====
void __fastcall glitch::gui::CGUITTLibrary::~CGUITTLibrary(glitch::gui::CGUITTLibrary *this)
{
  int v2; // r0

  v2 = *((_DWORD *)this + 2);
  *(_DWORD *)this = off_972470;
  FT_Done_FreeType(v2);
}


// ===== 55c518 glitch::gui::CGUITTLibrary::CGUITTLibrary(void) =====
glitch::gui::CGUITTLibrary *__fastcall glitch::gui::CGUITTLibrary::CGUITTLibrary(glitch::gui::CGUITTLibrary *this)
{
  int inited; // r0
  char v3; // r3

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_972470;
  inited = FT_Init_FreeType((char *)this + 8);
  if ( inited )
    *((_BYTE *)this + 12) = 0;
  else
    v3 = 1;
  if ( !inited )
    *((_BYTE *)this + 12) = v3;
  return this;
}


// ===== 55c564 glitch::gui::CGUITTFace::CGUITTFace(void) =====
glitch::gui::CGUITTFace *__fastcall glitch::gui::CGUITTFace::CGUITTFace(glitch::gui::CGUITTFace *this)
{
  glitch::gui::CGUITTLibrary *v3; // r6
  int v4; // r6

  *(_DWORD *)this = off_972458;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 2) = 0;
  if ( glitch::gui::CGUITTFace::library )
  {
    ++*(_DWORD *)(glitch::gui::CGUITTFace::library + 4);
  }
  else
  {
    v3 = (glitch::gui::CGUITTLibrary *)operator new(0x10u, 0);
    glitch::gui::CGUITTLibrary::CGUITTLibrary(v3);
    glitch::gui::CGUITTFace::library = (int)v3;
    ++*((_DWORD *)v3 + 1);
    v4 = *(unsigned __int8 *)(glitch::gui::CGUITTFace::library + 12);
    if ( !*(_BYTE *)(glitch::gui::CGUITTFace::library + 12) )
    {
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)glitch::gui::CGUITTFace::library);
      glitch::gui::CGUITTFace::library = v4;
    }
  }
  return this;
}


// ===== 55c600 glitch::gui::CGUITTFace::CGUITTFace(void) =====
glitch::gui::CGUITTFace *__fastcall glitch::gui::CGUITTFace::CGUITTFace(glitch::gui::CGUITTFace *this)
{
  glitch::gui::CGUITTLibrary *v3; // r6
  int v4; // r6

  *(_DWORD *)this = off_972458;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 2) = 0;
  if ( glitch::gui::CGUITTFace::library )
  {
    ++*(_DWORD *)(glitch::gui::CGUITTFace::library + 4);
  }
  else
  {
    v3 = (glitch::gui::CGUITTLibrary *)operator new(0x10u, 0);
    glitch::gui::CGUITTLibrary::CGUITTLibrary(v3);
    glitch::gui::CGUITTFace::library = (int)v3;
    ++*((_DWORD *)v3 + 1);
    v4 = *(unsigned __int8 *)(glitch::gui::CGUITTFace::library + 12);
    if ( !*(_BYTE *)(glitch::gui::CGUITTFace::library + 12) )
    {
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)glitch::gui::CGUITTFace::library);
      glitch::gui::CGUITTFace::library = v4;
    }
  }
  return this;
}


// ===== 55c69c glitch::gui::CGUITTLibrary::CGUITTLibrary(void) =====
glitch::gui::CGUITTLibrary *__fastcall glitch::gui::CGUITTLibrary::CGUITTLibrary(glitch::gui::CGUITTLibrary *this)
{
  int inited; // r0
  char v3; // r3

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_972470;
  inited = FT_Init_FreeType((char *)this + 8);
  if ( inited )
    *((_BYTE *)this + 12) = 0;
  else
    v3 = 1;
  if ( !inited )
    *((_BYTE *)this + 12) = v3;
  return this;
}


// ===== 55c6e8 glitch::gui::CGUITTGlyph::~CGUITTGlyph() =====
void __fastcall glitch::gui::CGUITTGlyph::~CGUITTGlyph(glitch::gui::CGUITTGlyph *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 18);
  *(_DWORD *)this = off_972440;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 17);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
}


// ===== 55c738 glitch::gui::CGUITTGlyph::~CGUITTGlyph() =====
void __fastcall glitch::gui::CGUITTGlyph::~CGUITTGlyph(glitch::gui::CGUITTGlyph *this)
{
  glitch::gui::CGUITTGlyph::~CGUITTGlyph(this);
  LC_API_FREE_0(this);
}


// ===== 55c754 glitch::gui::CGUITTGlyph::~CGUITTGlyph() =====
void __fastcall glitch::gui::CGUITTGlyph::~CGUITTGlyph(glitch::gui::CGUITTGlyph *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 18);
  *(_DWORD *)this = off_972440;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 17);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
}


// ===== 55c7a4 glitch::gui::CGUITTGlyph::Free(glitch::video::IVideoDriver *) =====
glitch::video::ITexture *__fastcall glitch::gui::CGUITTGlyph::Free(
        glitch::gui::CGUITTGlyph *this,
        glitch::video::IVideoDriver *a2)
{
  void *v3; // r0
  glitch::video::CTextureManager *v5; // r5

  v3 = *((void **)this + 19);
  if ( v3 )
    operator delete[](v3);
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 19) = 0;
  v5 = *((glitch::video::CTextureManager **)a2 + 56);
  glitch::video::CTextureManager::removeTexture(v5, (glitch::IReferenceCounted **)this + 17);
  return glitch::video::CTextureManager::removeTexture(v5, (glitch::IReferenceCounted **)this + 18);
}


// ===== 55c7ec glitch::gui::CGUITTGlyph::operator=(glitch::gui::CGUITTGlyph const&) =====
int __fastcall glitch::gui::CGUITTGlyph::operator=(int a1, int a2)
{
  int v4; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r3
  glitch::IReferenceCounted *v7; // r0

  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
  *(_BYTE *)(a1 + 8) = *(_BYTE *)(a2 + 8);
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(a1 + 20) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 24) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 28) = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 32) = *(_DWORD *)(a2 + 32);
  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 40) = *(_DWORD *)(a2 + 40);
  *(_DWORD *)(a1 + 44) = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 48) = *(_DWORD *)(a2 + 48);
  *(_DWORD *)(a1 + 52) = *(_DWORD *)(a2 + 52);
  *(_DWORD *)(a1 + 56) = *(_DWORD *)(a2 + 56);
  *(_DWORD *)(a1 + 60) = *(_DWORD *)(a2 + 60);
  *(_DWORD *)(a1 + 64) = *(_DWORD *)(a2 + 64);
  v4 = *(_DWORD *)(a2 + 68);
  if ( v4 )
    ++*(_DWORD *)(v4 + 4);
  v5 = *(glitch::IReferenceCounted **)(a1 + 68);
  *(_DWORD *)(a1 + 68) = v4;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *(_DWORD *)(a2 + 72);
  if ( v6 )
    ++*(_DWORD *)(v6 + 4);
  v7 = *(glitch::IReferenceCounted **)(a1 + 72);
  *(_DWORD *)(a1 + 72) = v6;
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  *(_DWORD *)(a1 + 76) = *(_DWORD *)(a2 + 76);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 80);
  *(_DWORD *)(a1 + 84) = *(_DWORD *)(a2 + 84);
  return a1;
}


// ===== 55c8e8 std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::gui::CGUITTGlyph*,glitch::gui::CGUITTGlyph*,std::__false_type const&) =====
void (__fastcall ***__fastcall std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        void (__fastcall ***a2)(_DWORD),
        int a3))(_DWORD)
{
  void (__fastcall ***v3)(_DWORD); // r4
  int v4; // r10
  void (__fastcall ***v8)(_DWORD); // r10
  int v9; // r6
  int v10; // r4
  void (__fastcall ***v11)(_DWORD); // r6
  void (__fastcall **v12)(_DWORD); // r3
  void (__fastcall ***v13)(_DWORD); // r0

  v3 = *(void (__fastcall ****)(_DWORD))(a1 + 4);
  v4 = -1171354717 * (((int)v3 - a3) >> 3);
  if ( v4 > 0 )
  {
    v9 = -1171354717 * (((int)v3 - a3) >> 3);
    v10 = 0;
    do
    {
      glitch::gui::CGUITTGlyph::operator=((int)&a2[v10], a3 + v10 * 4);
      --v9;
      v10 += 22;
    }
    while ( v9 );
    v8 = &a2[22 * v4];
    v3 = *(void (__fastcall ****)(_DWORD))(a1 + 4);
  }
  else
  {
    v8 = a2;
  }
  if ( v8 != v3 )
  {
    v11 = v8;
    do
    {
      v12 = *v11;
      v13 = v11;
      v11 += 22;
      (*v12)(v13);
    }
    while ( v11 != v3 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 55c97c glitch::gui::CGUITTFont::clearGlyphs(void) =====
glitch::video::ITexture *__fastcall glitch::gui::CGUITTFont::clearGlyphs(glitch::video::ITexture *this)
{
  int v1; // r2
  void (__fastcall ***v2)(_DWORD); // r1
  glitch::video::ITexture *v3; // r4
  int v4; // r5
  unsigned int v5; // r6
  int v6; // r2
  void (__fastcall ***v7)(_DWORD); // r1
  int v8; // r5
  unsigned int v9; // r6
  int v10; // r2
  void (__fastcall ***v11)(_DWORD); // r1
  int v12; // r5
  unsigned int v13; // r6

  v1 = *((_DWORD *)this + 4);
  v2 = *((void (__fastcall ****)(_DWORD))this + 3);
  v3 = this;
  if ( -1171354717 * ((v1 - (int)v2) >> 3) )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      this = glitch::gui::CGUITTGlyph::Free(
               (glitch::gui::CGUITTGlyph *)&v2[v4],
               *((glitch::video::IVideoDriver **)v3 + 2));
      v1 = *((_DWORD *)v3 + 4);
      v2 = *((void (__fastcall ****)(_DWORD))v3 + 3);
      ++v5;
      v4 += 22;
    }
    while ( v5 < -1171354717 * ((v1 - (int)v2) >> 3) );
  }
  if ( v2 != (void (__fastcall ***)(_DWORD))v1 )
    this = (glitch::video::ITexture *)std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                                        (int)v3 + 12,
                                        v2,
                                        v1);
  v6 = *((_DWORD *)v3 + 7);
  v7 = *((void (__fastcall ****)(_DWORD))v3 + 6);
  if ( -1171354717 * ((v6 - (int)v7) >> 3) )
  {
    v8 = 0;
    v9 = 0;
    do
    {
      this = glitch::gui::CGUITTGlyph::Free(
               (glitch::gui::CGUITTGlyph *)&v7[v8],
               *((glitch::video::IVideoDriver **)v3 + 2));
      v6 = *((_DWORD *)v3 + 7);
      v7 = *((void (__fastcall ****)(_DWORD))v3 + 6);
      ++v9;
      v8 += 22;
    }
    while ( v9 < -1171354717 * ((v6 - (int)v7) >> 3) );
  }
  if ( (void (__fastcall ***)(_DWORD))v6 != v7 )
    this = (glitch::video::ITexture *)std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                                        (int)v3 + 24,
                                        v7,
                                        v6);
  v10 = *((_DWORD *)v3 + 10);
  v11 = *((void (__fastcall ****)(_DWORD))v3 + 9);
  if ( -1171354717 * ((v10 - (int)v11) >> 3) )
  {
    v12 = 0;
    v13 = 0;
    do
    {
      this = glitch::gui::CGUITTGlyph::Free(
               (glitch::gui::CGUITTGlyph *)&v11[v12],
               *((glitch::video::IVideoDriver **)v3 + 2));
      v10 = *((_DWORD *)v3 + 10);
      v11 = *((void (__fastcall ****)(_DWORD))v3 + 9);
      ++v13;
      v12 += 22;
    }
    while ( v13 < -1171354717 * ((v10 - (int)v11) >> 3) );
  }
  if ( (void (__fastcall ***)(_DWORD))v10 != v11 )
    return (glitch::video::ITexture *)std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                                        (int)v3 + 36,
                                        v11,
                                        v10);
  return this;
}


// ===== 55cae0 glitch::gui::CGUITTFont::~CGUITTFont() =====
void __fastcall glitch::gui::CGUITTFont::~CGUITTFont(glitch::gui::CGUITTFont *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 12);
  *(_DWORD *)this = off_9723C0;
  if ( v2 )
  {
    glitch::IReferenceCounted::drop(v2);
    *((_DWORD *)this + 12) = 0;
  }
  glitch::gui::CGUITTFont::clearGlyphs(this);
  v3 = *((glitch::IReferenceCounted **)this + 2);
  if ( v3 )
  {
    glitch::IReferenceCounted::drop(v3);
    *((_DWORD *)this + 2) = 0;
  }
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 9);
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 6);
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 3);
}


// ===== 55cb60 glitch::gui::CGUITTFont::~CGUITTFont() =====
void __fastcall glitch::gui::CGUITTFont::~CGUITTFont(glitch::gui::CGUITTFont *this)
{
  glitch::gui::CGUITTFont::~CGUITTFont(this);
  LC_API_FREE_0(this);
}


// ===== 55cb7c glitch::gui::CGUITTFont::~CGUITTFont() =====
void __fastcall glitch::gui::CGUITTFont::~CGUITTFont(glitch::gui::CGUITTFont *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 12);
  *(_DWORD *)this = off_9723C0;
  if ( v2 )
  {
    glitch::IReferenceCounted::drop(v2);
    *((_DWORD *)this + 12) = 0;
  }
  glitch::gui::CGUITTFont::clearGlyphs(this);
  v3 = *((glitch::IReferenceCounted **)this + 2);
  if ( v3 )
  {
    glitch::IReferenceCounted::drop(v3);
    *((_DWORD *)this + 2) = 0;
  }
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 9);
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 6);
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 3);
}


// ===== 55cbfc glitch::gui::CGUITTGlyph::cache(uint,glitch::gui::CGUITTFace *,glitch::video::IVideoDriver *,bool) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUITTGlyph::cache(
        glitch::gui::CGUITTGlyph *this,
        unsigned int a2,
        glitch::gui::CGUITTFace *a3,
        glitch::video::IVideoDriver *a4,
        bool a5)
{
  int v6; // r5
  _DWORD *v7; // r6
  glitch::IReferenceCounted *result; // r0
  _DWORD *v9; // r5
  int *v10; // r6
  unsigned int v11; // r1
  int v12; // r7
  int v13; // r6
  int v14; // r2
  unsigned int v15; // r3
  unsigned int v16; // r3
  unsigned int v17; // r2
  unsigned int v18; // r0
  bool v19; // cc
  int v20; // r0
  char *v21; // r11
  int v22; // r9
  int v23; // r10
  char *j; // lr
  int k; // r3
  int v26; // r2
  bool v27; // zf
  int v28; // r1
  int v29; // lr
  int v30; // r5
  glitch::IReferenceCounted *v31; // r3
  glitch::IReferenceCounted *v32; // r0
  int *v33; // r8
  void *v34; // r3
  int v35; // r9
  void *v36; // r0
  unsigned int v37; // r3
  int v38; // r2
  unsigned int v39; // r2
  unsigned int v40; // r3
  unsigned int v41; // r3
  char *v42; // r11
  int v43; // r0
  _BYTE *v44; // r12
  char *v45; // r10
  char *v46; // lr
  int v47; // r6
  int v48; // r2
  int i; // r3
  int v50; // r1
  unsigned int v51; // r1
  int v52; // r1
  int v53; // lr
  int v54; // r8
  glitch::IReferenceCounted *v55; // r3
  glitch::IReferenceCounted *v56; // r0
  glitch::IReferenceCounted *v57; // r0
  char *v59; // [sp+1Ch] [bp-D0h]
  int v61; // [sp+30h] [bp-BCh]
  int v62; // [sp+34h] [bp-B8h]
  int v63; // [sp+38h] [bp-B4h]
  const void *v64; // [sp+38h] [bp-B4h]
  _DWORD v65[2]; // [sp+44h] [bp-A8h] BYREF
  _DWORD v66[3]; // [sp+4Ch] [bp-A0h] BYREF
  glitch::IReferenceCounted *v67; // [sp+58h] [bp-94h] BYREF
  glitch::IReferenceCounted *v68; // [sp+5Ch] [bp-90h] BYREF
  glitch::IReferenceCounted *v69; // [sp+60h] [bp-8Ch] BYREF
  char s[128]; // [sp+64h] [bp-88h] BYREF

  v6 = *((_DWORD *)a3 + 2);
  FT_Set_Pixel_Sizes(v6, 0, *((_DWORD *)this + 3));
  if ( !FT_Load_Glyph(v6, a2, 10) )
  {
    v7 = *(_DWORD **)(v6 + 84);
    if ( v7[18] == 1869968492 && !FT_Render_Glyph(*(_DWORD *)(v6 + 84), 0) )
    {
      if ( a5 )
      {
        FT_GlyphSlot_Own_Bitmap(v7);
        v33 = v7 + 19;
        FT_Bitmap_Embolden(
          *(_DWORD *)(glitch::gui::CGUITTFace::library + 8),
          v7 + 19,
          *((_DWORD *)this + 20),
          *((_DWORD *)this + 20));
      }
      else
      {
        v33 = v7 + 19;
      }
      v61 = v33[1];
      v64 = (const void *)v33[3];
      v34 = *((void **)this + 19);
      v35 = *v33;
      if ( v34 )
        operator delete[](v34);
      v36 = operator new[](v61 * v35, 0);
      *((_DWORD *)this + 19) = v36;
      memcpy(v36, v64, v61 * v35);
      v37 = 1;
      *((_DWORD *)this + 4) = v7[26];
      v38 = v7[25];
      *((_DWORD *)this + 8) = 1;
      *((_DWORD *)this + 9) = 1;
      *((_DWORD *)this + 5) = v38;
      *((_DWORD *)this + 6) = v61;
      *((_DWORD *)this + 7) = v35;
      if ( v61 )
      {
        do
          v37 *= 2;
        while ( v61 >= v37 );
        *((_DWORD *)this + 8) = v37;
      }
      v39 = *((_DWORD *)this + 9);
      v40 = *((_DWORD *)this + 7);
      if ( v39 <= v40 )
      {
        do
          v39 *= 2;
        while ( v39 <= v40 );
        *((_DWORD *)this + 9) = v39;
      }
      v41 = *((_DWORD *)this + 8);
      if ( v41 <= v39 )
      {
        v41 = v39;
        *((_DWORD *)this + 8) = v39;
      }
      else
      {
        *((_DWORD *)this + 9) = v41;
      }
      v42 = (char *)operator new[](4 * *((_DWORD *)this + 9) * v41, 0);
      LC_API_MEMSET_0(v42, 0, 4 * *((_DWORD *)this + 9) * *((_DWORD *)this + 8));
      *((_DWORD *)this + 16) = *((_DWORD *)this + 3) - v35;
      v43 = (*(int (__fastcall **)(glitch::video::IVideoDriver *))(*(_DWORD *)a4 + 92))(a4);
      if ( v35 > 0 )
      {
        v44 = v64;
        v45 = v42;
        v46 = v42;
        v47 = 0;
        while ( 1 )
        {
          if ( v61 > 0 )
          {
            v48 = 0;
            for ( i = 0; i != v61; ++i )
            {
              v50 = (unsigned __int8)v44[i];
              if ( v44[i] )
              {
                if ( v43 == 128 )
                  v51 = 257 * v50;
                else
                  v51 = v50 << 24;
                if ( v43 == 128 )
                  v52 = 65537 * v51;
                else
                  v52 = ~HIBYTE(v51);
                if ( v43 != 128 )
                  v52 = ~(v52 << 24);
                *(_DWORD *)&v46[v48] = v52;
              }
              else
              {
                *(_DWORD *)&v46[v48] = v50;
              }
              v48 += 4;
            }
            v44 += v61;
          }
          if ( ++v47 == v35 )
            break;
          v45 += 4 * *((_DWORD *)this + 8);
          v46 = v45;
        }
      }
      sprintf(s, "TTFontGlyph%d", a2);
      v53 = *((_DWORD *)this + 8);
      v54 = *((_DWORD *)a4 + 56);
      v66[1] = *((_DWORD *)this + 9);
      v66[0] = v53;
      glitch::video::CTextureManager::createImageFromData(&v68, v54, 12, v66, v42, 0, 1);
      glitch::video::CTextureManager::addTexture(&v69, v54, s, &v68, 0, 0);
      v55 = v69;
      if ( v69 )
        ++*((_DWORD *)v69 + 1);
      v56 = *((glitch::IReferenceCounted **)this + 17);
      *((_DWORD *)this + 17) = v55;
      if ( v56 )
        glitch::IReferenceCounted::drop(v56);
      if ( v69 )
        glitch::IReferenceCounted::drop(v69);
      if ( v42 )
        operator delete[](v42);
      v57 = v68;
      *((_BYTE *)this + 8) = 1;
      if ( v57 )
        glitch::IReferenceCounted::drop(v57);
    }
  }
  result = (glitch::IReferenceCounted *)FT_Load_Glyph(v6, a2, 4110);
  if ( result )
  {
    v9 = *(_DWORD **)(v6 + 84);
    if ( a5 )
    {
      FT_GlyphSlot_Own_Bitmap(v9);
      v10 = v9 + 19;
      FT_Bitmap_Embolden(*(_DWORD *)(glitch::gui::CGUITTFace::library + 8), v9 + 19, 8, 8);
    }
    else
    {
      v10 = v9 + 19;
    }
    v11 = v10[1];
    v62 = v10[2];
    v63 = v10[3];
    v12 = *v10;
    v13 = v11;
    *((_DWORD *)this + 10) = v9[26];
    v14 = v9[25];
    v15 = 1;
    *((_DWORD *)this + 14) = 1;
    *((_DWORD *)this + 11) = v14;
    *((_DWORD *)this + 15) = 1;
    *((_DWORD *)this + 12) = v11;
    *((_DWORD *)this + 13) = v12;
    if ( v11 > 1 )
    {
      do
        v15 *= 2;
      while ( v11 > v15 );
      *((_DWORD *)this + 14) = v15;
    }
    v16 = *((_DWORD *)this + 15);
    v17 = *((_DWORD *)this + 13);
    if ( v16 < v17 )
    {
      do
        v16 *= 2;
      while ( v16 < v17 );
      *((_DWORD *)this + 15) = v16;
    }
    v18 = *((_DWORD *)this + 14);
    v19 = v18 > v16;
    if ( v18 > v16 )
    {
      v16 = *((_DWORD *)this + 14);
      *((_DWORD *)this + 15) = v18;
    }
    else
    {
      v18 = *((_DWORD *)this + 15);
    }
    v20 = v18 * v16;
    if ( !v19 )
      *((_DWORD *)this + 14) = v16;
    v59 = (char *)operator new[](2 * v20, 0);
    LC_API_MEMSET_0(v59, 0, 2 * *((_DWORD *)this + 15) * *((_DWORD *)this + 14));
    *((_DWORD *)this + 16) = *((_DWORD *)this + 3) - v12;
    if ( v12 > 0 )
    {
      v21 = v59;
      v22 = 0;
      v23 = 0;
      for ( j = v59; ; j = v21 )
      {
        if ( v13 > 0 )
        {
          for ( k = 0; k != v13; ++k )
          {
            v26 = *(unsigned __int8 *)(v63 + v22 + (k >> 3));
            v28 = v26 & (128 >> (k & 7));
            v27 = v28 == 0;
            if ( v28 )
            {
              v26 = 2 * k;
              LOWORD(v28) = -1;
            }
            if ( !v27 )
              *(_WORD *)&j[v26] = v28;
          }
        }
        ++v23;
        v22 += v62;
        if ( v23 == v12 )
          break;
        v21 += 2 * *((_DWORD *)this + 14);
      }
    }
    sprintf(s, "TTFontGlyph%d_16", a2);
    v29 = *((_DWORD *)this + 14);
    v30 = *((_DWORD *)a4 + 56);
    v65[1] = *((_DWORD *)this + 15);
    v65[0] = v29;
    glitch::video::CTextureManager::createImageFromData(&v68, v30, 8, v65, v59, 0, 1);
    glitch::video::CTextureManager::addTexture(&v67, v30, s, &v68, 0, 0);
    v31 = v67;
    if ( v67 )
      ++*((_DWORD *)v67 + 1);
    v32 = *((glitch::IReferenceCounted **)this + 18);
    *((_DWORD *)this + 18) = v31;
    if ( v32 )
      glitch::IReferenceCounted::drop(v32);
    if ( v67 )
      glitch::IReferenceCounted::drop(v67);
    v66[2] = 0;
    glitch::video::CTextureManager::makeColorKeyTexture(v30, (char *)this + 72, 0);
    if ( v59 )
      operator delete[](v59);
    result = v68;
    if ( v68 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v68);
  }
  return result;
}


// ===== 55d218 glitch::gui::CGUITTFont::getGlyphByValue(uint) =====
unsigned int __fastcall glitch::gui::CGUITTFont::getGlyphByValue(glitch::gui::CGUITTFont *this, unsigned int a2)
{
  int Char_Index; // r0
  unsigned int v4; // r5
  int v5; // r6
  bool *v6; // r0
  int v7; // r0

  Char_Index = FT_Get_Char_Index(*(_DWORD *)(*((_DWORD *)this + 12) + 8), a2);
  v4 = Char_Index;
  if ( Char_Index )
  {
    v5 = 88 * (Char_Index - 1);
    v6 = (bool *)(*((_DWORD *)this + 3) + v5);
    if ( !v6[8] )
      glitch::gui::CGUITTGlyph::cache(
        (glitch::gui::CGUITTGlyph *)v6,
        v4,
        *((glitch::gui::CGUITTFace **)this + 12),
        *((glitch::video::IVideoDriver **)this + 2),
        v6[8]);
    v7 = *((_DWORD *)this + 6) + v5;
    if ( *(_DWORD *)(v7 + 80) && !*(_BYTE *)(v7 + 8) )
      glitch::gui::CGUITTGlyph::cache(
        (glitch::gui::CGUITTGlyph *)v7,
        v4,
        *((glitch::gui::CGUITTFace **)this + 12),
        *((glitch::video::IVideoDriver **)this + 2),
        1);
  }
  return v4;
}


// ===== 55d2b0 glitch::gui::CGUITTFont::getWidthFromCharacter(uint) =====
int __fastcall glitch::gui::CGUITTFont::getWidthFromCharacter(glitch::gui::CGUITTFont *this, unsigned int a2)
{
  unsigned int GlyphByValue; // r0
  int v5; // r3
  int v6; // r0
  int result; // r0

  GlyphByValue = glitch::gui::CGUITTFont::getGlyphByValue(this, a2);
  if ( GlyphByValue )
  {
    v5 = *((_DWORD *)this + 3) + 88 * (GlyphByValue - 1);
    v6 = *(_DWORD *)(v5 + 20) + *(_DWORD *)(v5 + 24);
    if ( v6 > 0 )
      return v6 + *((_DWORD *)this + 14);
  }
  if ( a2 >= 0x2000 )
    return *((_DWORD *)this + 14) + *(_DWORD *)(*((_DWORD *)this + 3) + 12);
  if ( a2 <= 0x1F )
    return 0;
  result = *((_DWORD *)this + 15);
  if ( result <= 0 )
    return *((_DWORD *)this + 14) + (*(_DWORD *)(*((_DWORD *)this + 3) + 12) >> 1);
  return result;
}


// ===== 55d340 glitch::gui::CGUITTFont::getCharacterFromPos(char const*,int) =====
int __fastcall glitch::gui::CGUITTFont::getCharacterFromPos(glitch::gui::CGUITTFont *this, char *a2, int a3)
{
  int v5; // r6
  int v6; // r5
  unsigned int v7; // r0
  char *v9; // [sp+4h] [bp-4h] BYREF

  v9 = a2;
  if ( !*a2 )
    return -1;
  v5 = 0;
  v6 = 0;
  while ( 1 )
  {
    v7 = glitch::core::iterateUTF8String(&v9, (const char **)a2);
    v6 += glitch::gui::CGUITTFont::getWidthFromCharacter(this, v7);
    if ( v6 >= a3 )
      break;
    ++v5;
    if ( !*v9 )
      return -1;
  }
  return v5;
}


// ===== 55d3b8 glitch::gui::CGUITTFont::getCharacterFromPos(wchar_t const*,int) =====
int __fastcall glitch::gui::CGUITTFont::getCharacterFromPos(glitch::gui::CGUITTFont *this, const wchar_t *a2, int a3)
{
  unsigned int v4; // r1
  int v7; // r6
  int v8; // r7

  v4 = *a2;
  if ( !v4 )
    return -1;
  v7 = 0;
  v8 = 0;
  while ( 1 )
  {
    v8 += glitch::gui::CGUITTFont::getWidthFromCharacter(this, v4);
    if ( v8 >= a3 )
      break;
    v4 = a2[++v7];
    if ( !v4 )
      return -1;
  }
  return v7;
}


// ===== 55d418 glitch::gui::CGUITTFont::getDimension(char const*) =====
glitch::gui::CGUITTFont *__fastcall glitch::gui::CGUITTFont::getDimension(
        glitch::gui::CGUITTFont *this,
        char *a2,
        char *a3)
{
  int v3; // r3
  int v4; // r3
  const char **v6; // r1
  unsigned int v8; // r0
  int v9; // r6
  int WidthFromCharacter; // r0
  char *v11; // r3
  char *v13; // [sp+4h] [bp-8h] BYREF

  v3 = *((_DWORD *)a2 + 3);
  v13 = a3;
  v4 = *(_DWORD *)(v3 + 12);
  v6 = nullptr;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = v4;
  if ( *a3 )
  {
    do
    {
      v8 = glitch::core::iterateUTF8String(&v13, v6);
      v9 = *(_DWORD *)this;
      WidthFromCharacter = glitch::gui::CGUITTFont::getWidthFromCharacter((glitch::gui::CGUITTFont *)a2, v8);
      v11 = v13;
      *(_DWORD *)this = WidthFromCharacter + v9;
    }
    while ( *v11 );
  }
  return this;
}


// ===== 55d488 glitch::gui::CGUITTFont::getDimension(wchar_t const*) =====
glitch::gui::CGUITTFont *__fastcall glitch::gui::CGUITTFont::getDimension(
        glitch::gui::CGUITTFont *this,
        wchar_t *a2,
        unsigned int *a3)
{
  int v3; // r6
  unsigned int *v4; // r7
  int v5; // r3
  unsigned int v8; // r1
  unsigned int v9; // t1

  v3 = 0;
  v4 = a3;
  v5 = *(_DWORD *)(a2[3] + 12);
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = v5;
  if ( a3 )
  {
    v8 = *a3;
    if ( *a3 )
    {
      do
      {
        v3 += glitch::gui::CGUITTFont::getWidthFromCharacter((glitch::gui::CGUITTFont *)a2, v8);
        *(_DWORD *)this = v3;
        v9 = v4[1];
        ++v4;
        v8 = v9;
      }
      while ( v9 );
    }
  }
  return this;
}


// ===== 55d4e0 glitch::gui::CGUITTFont::drawInTexture(char const*,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int>,glitch::video::SColor,bool,bool) =====
glitch::IReferenceCounted *__fastcall glitch::gui::CGUITTFont::drawInTexture(
        glitch::gui::CGUITTFont *a1,
        char *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        char a6,
        char a7)
{
  glitch::IReferenceCounted *result; // r0
  int v11; // r6
  const char **v12; // r1
  _DWORD *v13; // r3
  int v14; // r3
  int v15; // r6
  int v16; // r9
  unsigned int v17; // r5
  unsigned int v18; // r0
  int v19; // r12
  unsigned int v20; // r5
  unsigned int GlyphByValue; // r0
  int v22; // r12
  _DWORD *v23; // r1
  int v24; // r12
  unsigned int v25; // r12
  int v26; // r0
  int v27; // [sp+Ch] [bp-50h]
  int v28; // [sp+14h] [bp-48h]
  char **v29; // [sp+20h] [bp-3Ch]
  int v30; // [sp+24h] [bp-38h]
  char *v31; // [sp+2Ch] [bp-30h] BYREF
  int v32[2]; // [sp+30h] [bp-2Ch] BYREF
  int v33[2]; // [sp+38h] [bp-24h] BYREF
  _DWORD v34[2]; // [sp+40h] [bp-1Ch] BYREF
  _DWORD v35[2]; // [sp+48h] [bp-14h] BYREF
  glitch::IReferenceCounted *v36; // [sp+50h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v37[2]; // [sp+54h] [bp-8h] BYREF

  result = *((glitch::IReferenceCounted **)a1 + 2);
  v31 = a2;
  if ( result && *a3 )
  {
    (*(void (__fastcall **)(_DWORD *, glitch::gui::CGUITTFont *, char *))(*(_DWORD *)a1 + 32))(v35, a1, a2);
    v29 = (char **)v35[0];
    v30 = v35[1];
    v11 = *a4;
    v28 = a4[1];
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD *, _DWORD))(**((_DWORD **)a1 + 2) + 132))(
      v37,
      *((_DWORD *)a1 + 2),
      a3,
      0);
    (*(void (__fastcall **)(_DWORD, glitch::IReferenceCounted **))(**((_DWORD **)a1 + 2) + 140))(
      *((_DWORD *)a1 + 2),
      v37);
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)a1 + 2) + 20))(*((_DWORD *)a1 + 2));
    v13 = *((_DWORD **)a1 + 2);
    if ( (v13[39] & 0x800) == 0 )
    {
      (*(void (__fastcall **)(_DWORD, int))(*v13 + 168))(*((_DWORD *)a1 + 2), 1);
      v26 = *((_DWORD *)a1 + 2);
      v34[1] = 0;
      v34[0] = 0;
      glitch::video::C2DDriver::draw2DImage(v26, a3, v34);
    }
    if ( *(_DWORD *)(*((_DWORD *)a1 + 6) + 80) )
    {
      if ( a6 )
      {
        v12 = (const char **)v29;
        v11 += (a4[2] - *a4 - (int)v29) / 2;
      }
      if ( a7 )
        v28 += (a4[3] - a4[1] - v30) / 2;
      for ( ; *v31; v11 += glitch::gui::CGUITTFont::getWidthFromCharacter(a1, v20) )
      {
        v20 = glitch::core::iterateUTF8String(&v31, v12);
        GlyphByValue = glitch::gui::CGUITTFont::getGlyphByValue(a1, v20);
        v22 = 88 * (GlyphByValue - 1);
        if ( GlyphByValue )
        {
          v23 = (_DWORD *)(*((_DWORD *)a1 + 6) + v22);
          v24 = *((_DWORD *)a1 + 3) + v22;
          v27 = *(_DWORD *)(v24 + 24);
          v25 = v23[7] - *(_DWORD *)(v24 + 28);
          v33[0] = v11 - ((unsigned int)(v23[6] - v27) >> 1);
          v33[1] = v28 - (v25 >> 1);
          glitch::gui::CGUITTFont::drawGlyphInTexture(a1, v23, a3, v33, 0, v23[21]);
        }
      }
      v14 = 0;
    }
    else
    {
      v14 = (unsigned __int8)*v31;
    }
    v15 = *a4;
    v16 = a4[1];
    if ( a6 )
    {
      v12 = (const char **)v29;
      v15 += (a4[2] - v15 - (int)v29) / 2;
    }
    if ( a7 )
      v16 += (a4[3] - v16 - v30) / 2;
    if ( v14 )
    {
      do
      {
        v17 = glitch::core::iterateUTF8String(&v31, v12);
        v18 = glitch::gui::CGUITTFont::getGlyphByValue(a1, v17);
        if ( v18 )
        {
          v19 = *((_DWORD *)a1 + 3);
          v32[0] = v15;
          v32[1] = v16;
          glitch::gui::CGUITTFont::drawGlyph((int)a1, (_DWORD *)(v19 + 88 * (v18 - 1)), v32, 0, a5);
        }
        v15 += glitch::gui::CGUITTFont::getWidthFromCharacter(a1, v17);
      }
      while ( *v31 );
    }
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)a1 + 2) + 24))(*((_DWORD *)a1 + 2));
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**((_DWORD **)a1 + 2) + 144))(
      &v36,
      *((_DWORD *)a1 + 2));
    if ( v36 )
      glitch::IReferenceCounted::drop(v36);
    result = v37[0];
    if ( v37[0] )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v37[0]);
  }
  return result;
}


// ===== 55d854 glitch::gui::CGUITTFont::draw(char const*,glitch::core::rect<int> const&,glitch::video::SColor,bool,bool,glitch::core::rect<int> const*) =====
int __fastcall glitch::gui::CGUITTFont::draw(
        glitch::gui::CGUITTFont *a1,
        char *a2,
        int *a3,
        int a4,
        unsigned __int8 a5,
        char a6,
        int a7)
{
  int result; // r0
  const char **v10; // r1
  int v11; // r6
  int v12; // r9
  int v13; // r3
  char **v14; // r1
  unsigned int v15; // r5
  unsigned int v16; // r0
  int v17; // r12
  int v18; // r3
  int v19; // r10
  unsigned int v20; // r5
  unsigned int GlyphByValue; // r0
  int v22; // r1
  _DWORD *v23; // r12
  int v24; // r1
  unsigned int v25; // lr
  int v26; // [sp+8h] [bp-3Ch]
  char **v27; // [sp+14h] [bp-30h]
  char **v28; // [sp+18h] [bp-2Ch]
  char *v30; // [sp+24h] [bp-20h] BYREF
  int v31[2]; // [sp+28h] [bp-1Ch] BYREF
  int v32[2]; // [sp+30h] [bp-14h] BYREF
  char **v33; // [sp+38h] [bp-Ch] BYREF
  const char **v34; // [sp+3Ch] [bp-8h]

  result = *((_DWORD *)a1 + 2);
  v30 = a2;
  if ( result )
  {
    result = (*(int (__fastcall **)(char ***, glitch::gui::CGUITTFont *, char *))(*(_DWORD *)a1 + 32))(&v33, a1, a2);
    v10 = v34;
    v28 = (char **)v34;
    v27 = v33;
    v11 = *a3;
    v12 = a3[1];
    if ( *(_DWORD *)(*((_DWORD *)a1 + 6) + 80) )
    {
      v18 = a5;
      if ( a5 )
      {
        v19 = a3[2];
        v10 = (const char **)v33;
      }
      else
      {
        v19 = *a3;
      }
      if ( a5 )
        v19 = v11 + (v19 - v11 - (int)v10) / 2;
      if ( a6 )
      {
        v18 = a3[3];
        v10 = v34;
      }
      else
      {
        v26 = a3[1];
      }
      if ( a6 )
        v26 = v12 + (v18 - v12 - (int)v10) / 2;
      v13 = *v30;
      if ( *v30 )
      {
        do
        {
          v20 = glitch::core::iterateUTF8String(&v30, v10);
          GlyphByValue = glitch::gui::CGUITTFont::getGlyphByValue(a1, v20);
          v22 = 88 * (GlyphByValue - 1);
          if ( GlyphByValue )
          {
            v23 = (_DWORD *)(*((_DWORD *)a1 + 6) + v22);
            v24 = *((_DWORD *)a1 + 3) + v22;
            v25 = v23[7] - *(_DWORD *)(v24 + 28);
            v32[0] = v19 - ((unsigned int)(v23[6] - *(_DWORD *)(v24 + 24)) >> 1);
            v32[1] = v26 - (v25 >> 1);
            glitch::gui::CGUITTFont::drawGlyph((int)a1, v23, v32, a7, v23[21]);
          }
          result = glitch::gui::CGUITTFont::getWidthFromCharacter(a1, v20);
          v19 += result;
          v13 = *v30;
        }
        while ( *v30 );
        v11 = *a3;
        v12 = a3[1];
      }
    }
    else
    {
      v13 = (unsigned __int8)*v30;
    }
    v14 = (char **)a5;
    if ( a5 )
    {
      v14 = v27;
      v11 += (a3[2] - v11 - (int)v27) / 2;
    }
    if ( a6 )
      v12 += (a3[3] - v12 - (int)v28) / 2;
    if ( v13 )
    {
      do
      {
        v15 = glitch::core::iterateUTF8String(&v30, (const char **)v14);
        v16 = glitch::gui::CGUITTFont::getGlyphByValue(a1, v15);
        if ( v16 )
        {
          v17 = *((_DWORD *)a1 + 3);
          v31[0] = v11;
          v31[1] = v12;
          glitch::gui::CGUITTFont::drawGlyph((int)a1, (_DWORD *)(v17 + 88 * (v16 - 1)), v31, a7, a4);
        }
        result = glitch::gui::CGUITTFont::getWidthFromCharacter(a1, v15);
        v11 += result;
      }
      while ( *v30 );
    }
  }
  return result;
}


// ===== 55dab8 glitch::gui::CGUITTFont::getHeight(char const*) =====
int __fastcall glitch::gui::CGUITTFont::getHeight(glitch::gui::CGUITTFont *this, char *a2)
{
  int v3; // r6
  unsigned int v4; // r4
  unsigned int GlyphByValue; // r0
  int v6; // r3
  char *v8; // [sp+4h] [bp-4h] BYREF

  v8 = a2;
  v3 = 0;
  while ( *v8 )
  {
    v4 = glitch::core::iterateUTF8String(&v8, (const char **)a2);
    GlyphByValue = glitch::gui::CGUITTFont::getGlyphByValue(this, v4);
    if ( GlyphByValue )
    {
      v6 = *(_DWORD *)(*((_DWORD *)this + 3) + 88 * (GlyphByValue - 1) + 28);
    }
    else
    {
      if ( v4 <= 0x1F )
        continue;
      v6 = *(_DWORD *)(*((_DWORD *)this + 3) + 12);
    }
    if ( v3 < v6 )
      v3 = v6;
  }
  return v3;
}


// ===== 55db50 glitch::gui::CGUITTFont::getHeight(wchar_t const*) =====
signed int __fastcall glitch::gui::CGUITTFont::getHeight(glitch::gui::CGUITTFont *this, const wchar_t *a2)
{
  unsigned int v2; // r4
  signed int v4; // r5
  const wchar_t *v5; // r6
  unsigned int v6; // t1
  signed int v7; // r0
  signed int GlyphByValue; // r0
  int v9; // r3
  bool v10; // cc
  unsigned int v11; // t1

  v2 = *a2;
  if ( !*a2 )
    return 0;
  v5 = a2;
  v4 = 0;
  do
  {
    while ( 1 )
    {
      GlyphByValue = glitch::gui::CGUITTFont::getGlyphByValue(this, v2);
      if ( GlyphByValue )
        break;
      v10 = v2 > 0x1F;
      if ( v2 > 0x1F )
        v9 = *((_DWORD *)this + 3);
      v11 = v5[1];
      ++v5;
      v2 = v11;
      if ( v10 )
        GlyphByValue = *(_DWORD *)(v9 + 12);
      if ( v4 < GlyphByValue )
        v4 = GlyphByValue;
      if ( !v2 )
        return v4;
    }
    v6 = v5[1];
    ++v5;
    v2 = v6;
    v7 = *(_DWORD *)(*((_DWORD *)this + 3) + 88 * (GlyphByValue - 1) + 28);
    if ( v4 < v7 )
      v4 = v7;
  }
  while ( v2 );
  return v4;
}


// ===== 55dbd8 glitch::gui::CGUITTFont::getGlyphByChar(wchar_t) =====
unsigned int __fastcall glitch::gui::CGUITTFont::getGlyphByChar(glitch::gui::CGUITTFont *this, wchar_t a2)
{
  int Char_Index; // r0
  unsigned int v4; // r5
  int v5; // r6
  bool *v6; // r0
  int v7; // r0

  Char_Index = FT_Get_Char_Index(*(_DWORD *)(*((_DWORD *)this + 12) + 8), a2);
  v4 = Char_Index;
  if ( Char_Index )
  {
    v5 = 88 * (Char_Index - 1);
    v6 = (bool *)(*((_DWORD *)this + 3) + v5);
    if ( !v6[8] )
      glitch::gui::CGUITTGlyph::cache(
        (glitch::gui::CGUITTGlyph *)v6,
        v4,
        *((glitch::gui::CGUITTFace **)this + 12),
        *((glitch::video::IVideoDriver **)this + 2),
        v6[8]);
    v7 = *((_DWORD *)this + 6) + v5;
    if ( *(_DWORD *)(v7 + 80) && !*(_BYTE *)(v7 + 8) )
      glitch::gui::CGUITTGlyph::cache(
        (glitch::gui::CGUITTGlyph *)v7,
        v4,
        *((glitch::gui::CGUITTFace **)this + 12),
        *((glitch::video::IVideoDriver **)this + 2),
        1);
  }
  return v4;
}


// ===== 55dc70 glitch::gui::CGUITTFont::drawInTexture(wchar_t const*,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::core::rect<int>,glitch::video::SColor,bool,bool) =====
void __fastcall glitch::gui::CGUITTFont::drawInTexture(
        glitch::gui::CGUITTFont *a1,
        wchar_t *a2,
        _DWORD *a3,
        int *a4,
        int a5,
        char a6,
        char a7)
{
  int v11; // r6
  _DWORD *v12; // r3
  wchar_t v13; // r1
  int v14; // r6
  int v15; // r9
  int v16; // r5
  int v17; // r7
  unsigned int v18; // r0
  _DWORD *v19; // r12
  int v20; // r0
  int v21; // r7
  int v22; // r5
  unsigned int GlyphByChar; // r0
  int v24; // r12
  _DWORD *v25; // r1
  _DWORD *v26; // r12
  unsigned int v27; // r12
  int WidthFromCharacter; // r0
  _DWORD *v29; // r0
  int v30; // [sp+Ch] [bp-A0h]
  int v31; // [sp+14h] [bp-98h]
  int v32; // [sp+24h] [bp-88h]
  int v33; // [sp+28h] [bp-84h]
  _DWORD v34[17]; // [sp+34h] [bp-78h] BYREF
  void *p; // [sp+78h] [bp-34h]
  int v36[2]; // [sp+7Ch] [bp-30h] BYREF
  int v37[2]; // [sp+84h] [bp-28h] BYREF
  _DWORD v38[2]; // [sp+8Ch] [bp-20h] BYREF
  _DWORD v39[2]; // [sp+94h] [bp-18h] BYREF
  glitch::IReferenceCounted *v40; // [sp+9Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v41; // [sp+A0h] [bp-Ch] BYREF

  if ( *((_DWORD *)a1 + 2) && *a3 )
  {
    (*(void (__fastcall **)(_DWORD *, glitch::gui::CGUITTFont *, wchar_t *))(*(_DWORD *)a1 + 28))(v39, a1, a2);
    v32 = v39[0];
    v33 = v39[1];
    v11 = *a4;
    v31 = a4[1];
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v34,
      a2);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD *, _DWORD *, _DWORD))(**((_DWORD **)a1 + 2) + 132))(
      &v41,
      *((_DWORD **)a1 + 2),
      a3,
      0);
    (*(void (__fastcall **)(_DWORD *, glitch::IReferenceCounted **))(**((_DWORD **)a1 + 2) + 140))(
      *((_DWORD **)a1 + 2),
      &v41);
    (*(void (__fastcall **)(_DWORD *))(**((_DWORD **)a1 + 2) + 20))(*((_DWORD **)a1 + 2));
    v12 = *((_DWORD **)a1 + 2);
    if ( (v12[39] & 0x800) == 0 )
    {
      (*(void (__fastcall **)(_DWORD *, int))(*v12 + 168))(*((_DWORD **)a1 + 2), 1);
      v29 = *((_DWORD **)a1 + 2);
      v38[1] = 0;
      v38[0] = 0;
      glitch::video::C2DDriver::draw2DImage(v29, a3, v38);
    }
    if ( *(_DWORD *)(*((_DWORD *)a1 + 6) + 80) )
    {
      if ( a6 )
        v11 += (a4[2] - *a4 - v32) / 2;
      if ( a7 )
        v31 += (a4[3] - a4[1] - v33) / 2;
      v13 = *(_DWORD *)p;
      if ( *(_DWORD *)p )
      {
        v21 = 0;
        v22 = 4;
        do
        {
          GlyphByChar = glitch::gui::CGUITTFont::getGlyphByChar(a1, v13);
          v24 = 88 * (GlyphByChar - 1);
          if ( GlyphByChar )
          {
            v25 = (_DWORD *)(*((_DWORD *)a1 + 6) + v24);
            v26 = (_DWORD *)(*((_DWORD *)a1 + 3) + v24);
            v30 = v26[6];
            v27 = v25[7] - v26[7];
            v37[0] = v11 - ((unsigned int)(v25[6] - v30) >> 1);
            v37[1] = v31 - (v27 >> 1);
            glitch::gui::CGUITTFont::drawGlyphInTexture(a1, v25, a3, v37, 0, v25[21]);
          }
          WidthFromCharacter = glitch::gui::CGUITTFont::getWidthFromCharacter(a1, *(_DWORD *)((char *)p + v21));
          v21 = v22;
          v13 = *(_DWORD *)((char *)p + v22);
          v11 += WidthFromCharacter;
          v22 += 4;
        }
        while ( v13 );
        v13 = *(_DWORD *)p;
      }
    }
    else
    {
      v13 = *(_DWORD *)p;
    }
    v14 = *a4;
    v15 = a4[1];
    if ( a6 )
      v14 += (a4[2] - v14 - v32) / 2;
    if ( a7 )
      v15 += (a4[3] - v15 - v33) / 2;
    if ( v13 )
    {
      v16 = 4;
      v17 = 0;
      do
      {
        v18 = glitch::gui::CGUITTFont::getGlyphByChar(a1, v13);
        if ( v18 )
        {
          v19 = *((_DWORD **)a1 + 3);
          v36[0] = v14;
          v36[1] = v15;
          glitch::gui::CGUITTFont::drawGlyph((int)a1, &v19[22 * v18 - 22], v36, 0, a5);
        }
        v20 = glitch::gui::CGUITTFont::getWidthFromCharacter(a1, *(_DWORD *)((char *)p + v17));
        v17 = v16;
        v13 = *(_DWORD *)((char *)p + v16);
        v14 += v20;
        v16 += 4;
      }
      while ( v13 );
    }
    (*(void (__fastcall **)(_DWORD *))(**((_DWORD **)a1 + 2) + 24))(*((_DWORD **)a1 + 2));
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD *))(**((_DWORD **)a1 + 2) + 144))(
      &v40,
      *((_DWORD **)a1 + 2));
    if ( v40 )
      glitch::IReferenceCounted::drop(v40);
    if ( v41 )
      glitch::IReferenceCounted::drop(v41);
    if ( p != v34 )
    {
      if ( p )
        GlitchFree(p);
    }
  }
}


// ===== 55e020 glitch::gui::CGUITTFont::draw(wchar_t const*,glitch::core::rect<int> const&,glitch::video::SColor,bool,bool,glitch::core::rect<int> const*) =====
void __fastcall glitch::gui::CGUITTFont::draw(
        glitch::gui::CGUITTFont *a1,
        wchar_t *a2,
        int *a3,
        int a4,
        char a5,
        char a6,
        int a7)
{
  int v10; // r6
  void **v11; // r3
  wchar_t v12; // r1
  int v13; // r6
  int v14; // r9
  int v15; // r5
  int v16; // r7
  unsigned int v17; // r0
  int v18; // r12
  int v19; // r0
  int v20; // r5
  int v21; // r7
  unsigned int GlyphByChar; // r0
  int v23; // r1
  _DWORD *v24; // r12
  int v25; // r1
  unsigned int v26; // r9
  int WidthFromCharacter; // r0
  int v28; // [sp+10h] [bp-8Ch]
  int v29; // [sp+20h] [bp-7Ch]
  int v30; // [sp+24h] [bp-78h]
  _DWORD v32[17]; // [sp+34h] [bp-68h] BYREF
  void *p; // [sp+78h] [bp-24h]
  int v34[2]; // [sp+7Ch] [bp-20h] BYREF
  int v35[2]; // [sp+84h] [bp-18h] BYREF
  _DWORD v36[2]; // [sp+8Ch] [bp-10h] BYREF

  if ( *((_DWORD *)a1 + 2) )
  {
    (*(void (__fastcall **)(_DWORD *, glitch::gui::CGUITTFont *, wchar_t *))(*(_DWORD *)a1 + 28))(v36, a1, a2);
    v30 = v36[1];
    v29 = v36[0];
    v10 = *a3;
    v28 = a3[1];
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v32,
      a2);
    if ( *(_DWORD *)(*((_DWORD *)a1 + 6) + 80) )
    {
      if ( a5 )
        v10 += (a3[2] - *a3 - v29) / 2;
      if ( a6 )
        v28 += (a3[3] - a3[1] - v30) / 2;
      v11 = (void **)p;
      v12 = *(_DWORD *)p;
      if ( *(_DWORD *)p )
      {
        v20 = 4;
        v21 = 0;
        do
        {
          GlyphByChar = glitch::gui::CGUITTFont::getGlyphByChar(a1, v12);
          v23 = 88 * (GlyphByChar - 1);
          if ( GlyphByChar )
          {
            v24 = (_DWORD *)(*((_DWORD *)a1 + 6) + v23);
            v25 = *((_DWORD *)a1 + 3) + v23;
            v26 = v24[7] - *(_DWORD *)(v25 + 28);
            v35[0] = v10 - ((unsigned int)(v24[6] - *(_DWORD *)(v25 + 24)) >> 1);
            v35[1] = v28 - (v26 >> 1);
            glitch::gui::CGUITTFont::drawGlyph((int)a1, v24, v35, a7, v24[21]);
          }
          WidthFromCharacter = glitch::gui::CGUITTFont::getWidthFromCharacter(a1, *(_DWORD *)((char *)p + v21));
          v11 = (void **)p;
          v21 = v20;
          v12 = *(_DWORD *)((char *)p + v20);
          v10 += WidthFromCharacter;
          v20 += 4;
        }
        while ( v12 );
        v12 = *(_DWORD *)p;
      }
    }
    else
    {
      v11 = (void **)p;
      v12 = *(_DWORD *)p;
    }
    v13 = *a3;
    v14 = a3[1];
    if ( a5 )
      v13 += (a3[2] - v13 - v29) / 2;
    if ( a6 )
      v14 += (a3[3] - v14 - v30) / 2;
    if ( v12 )
    {
      v15 = 4;
      v16 = 0;
      do
      {
        v17 = glitch::gui::CGUITTFont::getGlyphByChar(a1, v12);
        if ( v17 )
        {
          v18 = *((_DWORD *)a1 + 3);
          v34[0] = v13;
          v34[1] = v14;
          glitch::gui::CGUITTFont::drawGlyph((int)a1, (_DWORD *)(v18 + 88 * (v17 - 1)), v34, a7, a4);
        }
        v19 = glitch::gui::CGUITTFont::getWidthFromCharacter(a1, *(_DWORD *)((char *)p + v16));
        v11 = (void **)p;
        v16 = v15;
        v12 = *(_DWORD *)((char *)p + v15);
        v13 += v19;
        v15 += 4;
      }
      while ( v12 );
    }
    if ( v11 != v32 )
    {
      if ( v11 )
        GlitchFree(v11);
    }
  }
}


// ===== 55e2f0 std::priv::__uninitialized_fill_n<glitch::gui::CGUITTGlyph *,uint,glitch::gui::CGUITTGlyph>(glitch::gui::CGUITTGlyph *,uint,glitch::gui::CGUITTGlyph const&) =====
int __fastcall std::priv::__uninitialized_fill_n<glitch::gui::CGUITTGlyph *,unsigned int,glitch::gui::CGUITTGlyph>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int result; // r0
  int v5; // r12
  int v6; // r1
  int v7; // r1
  int v8; // r1

  v3 = a1;
  result = a1 + 88 * a2;
  v5 = -1171354717 * ((result - v3) >> 3);
  if ( v5 > 0 )
  {
    while ( 1 )
    {
      v6 = *(_DWORD *)(a3 + 4);
      *(_DWORD *)v3 = off_972440;
      *(_DWORD *)(v3 + 4) = v6;
      *(_BYTE *)(v3 + 8) = *(_BYTE *)(a3 + 8);
      *(_DWORD *)(v3 + 12) = *(_DWORD *)(a3 + 12);
      *(_DWORD *)(v3 + 16) = *(_DWORD *)(a3 + 16);
      *(_DWORD *)(v3 + 20) = *(_DWORD *)(a3 + 20);
      *(_DWORD *)(v3 + 24) = *(_DWORD *)(a3 + 24);
      *(_DWORD *)(v3 + 28) = *(_DWORD *)(a3 + 28);
      *(_DWORD *)(v3 + 32) = *(_DWORD *)(a3 + 32);
      *(_DWORD *)(v3 + 36) = *(_DWORD *)(a3 + 36);
      *(_DWORD *)(v3 + 40) = *(_DWORD *)(a3 + 40);
      *(_DWORD *)(v3 + 44) = *(_DWORD *)(a3 + 44);
      *(_DWORD *)(v3 + 48) = *(_DWORD *)(a3 + 48);
      *(_DWORD *)(v3 + 52) = *(_DWORD *)(a3 + 52);
      *(_DWORD *)(v3 + 56) = *(_DWORD *)(a3 + 56);
      *(_DWORD *)(v3 + 60) = *(_DWORD *)(a3 + 60);
      *(_DWORD *)(v3 + 64) = *(_DWORD *)(a3 + 64);
      v7 = *(_DWORD *)(a3 + 68);
      *(_DWORD *)(v3 + 68) = v7;
      if ( v7 )
        ++*(_DWORD *)(v7 + 4);
      v8 = *(_DWORD *)(a3 + 72);
      *(_DWORD *)(v3 + 72) = v8;
      if ( v8 )
        ++*(_DWORD *)(v8 + 4);
      --v5;
      *(_DWORD *)(v3 + 76) = *(_DWORD *)(a3 + 76);
      *(_DWORD *)(v3 + 80) = *(_DWORD *)(a3 + 80);
      *(_DWORD *)(v3 + 84) = *(_DWORD *)(a3 + 84);
      if ( !v5 )
        break;
      v3 += 88;
    }
  }
  return result;
}


// ===== 55e41c std::priv::__ucopy_ptrs<glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *>(glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *,std::__false_type const&) =====
int __fastcall std::priv::__ucopy_ptrs<glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *>(int a1, int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r5
  int v6; // r4
  int v7; // r1
  int v8; // r1
  int v9; // r1
  int v10; // r1

  v3 = a1;
  v4 = -1171354717 * ((a2 - a1) >> 3);
  if ( v4 > 0 )
  {
    v5 = -1171354717 * ((a2 - a1) >> 3);
    v6 = a3;
    do
    {
      v7 = *(_DWORD *)(v3 + 4);
      *(_DWORD *)v6 = off_972440;
      *(_DWORD *)(v6 + 4) = v7;
      *(_BYTE *)(v6 + 8) = *(_BYTE *)(v3 + 8);
      *(_DWORD *)(v6 + 12) = *(_DWORD *)(v3 + 12);
      *(_DWORD *)(v6 + 16) = *(_DWORD *)(v3 + 16);
      *(_DWORD *)(v6 + 20) = *(_DWORD *)(v3 + 20);
      *(_DWORD *)(v6 + 24) = *(_DWORD *)(v3 + 24);
      *(_DWORD *)(v6 + 28) = *(_DWORD *)(v3 + 28);
      *(_DWORD *)(v6 + 32) = *(_DWORD *)(v3 + 32);
      *(_DWORD *)(v6 + 36) = *(_DWORD *)(v3 + 36);
      *(_DWORD *)(v6 + 40) = *(_DWORD *)(v3 + 40);
      *(_DWORD *)(v6 + 44) = *(_DWORD *)(v3 + 44);
      *(_DWORD *)(v6 + 48) = *(_DWORD *)(v3 + 48);
      *(_DWORD *)(v6 + 52) = *(_DWORD *)(v3 + 52);
      *(_DWORD *)(v6 + 56) = *(_DWORD *)(v3 + 56);
      *(_DWORD *)(v6 + 60) = *(_DWORD *)(v3 + 60);
      *(_DWORD *)(v6 + 64) = *(_DWORD *)(v3 + 64);
      v8 = *(_DWORD *)(v3 + 68);
      *(_DWORD *)(v6 + 68) = v8;
      if ( v8 )
        ++*(_DWORD *)(v8 + 4);
      v9 = *(_DWORD *)(v3 + 72);
      *(_DWORD *)(v6 + 72) = v9;
      if ( v9 )
        ++*(_DWORD *)(v9 + 4);
      --v5;
      *(_DWORD *)(v6 + 76) = *(_DWORD *)(v3 + 76);
      *(_DWORD *)(v6 + 80) = *(_DWORD *)(v3 + 80);
      v10 = *(_DWORD *)(v3 + 84);
      v3 += 88;
      *(_DWORD *)(v6 + 84) = v10;
      v6 += 88;
    }
    while ( v5 );
    a3 += 88 * v4;
  }
  return a3;
}


// ===== 55e550 std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::gui::CGUITTGlyph*,uint,glitch::gui::CGUITTGlyph const&,std::__false_type const&) =====
void __fastcall std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  int v6; // r4
  unsigned int v7; // r5
  int v8; // r5
  int v9; // lr
  int v10; // r12
  char v11; // r11
  int v12; // r9
  int v13; // r10
  int v14; // r7
  int v15; // r0
  int v16; // r1
  int v17; // r3
  int v18; // r3
  int v19; // r12
  int v20; // lr
  int v21; // r6
  int v22; // r7
  int v23; // r9
  int v24; // r7
  int v25; // r10
  int v26; // r9
  int v27; // r0
  int v28; // [sp+Ch] [bp-88h]
  int v29; // [sp+10h] [bp-84h]
  int v30; // [sp+14h] [bp-80h]
  int v31; // [sp+18h] [bp-7Ch]
  int v32; // [sp+1Ch] [bp-78h]
  int v33; // [sp+20h] [bp-74h]
  int v34; // [sp+24h] [bp-70h]
  _DWORD v35[2]; // [sp+2Ch] [bp-68h] BYREF
  char v36; // [sp+34h] [bp-60h]
  int v37; // [sp+38h] [bp-5Ch]
  int v38; // [sp+3Ch] [bp-58h]
  int v39; // [sp+40h] [bp-54h]
  int v40; // [sp+44h] [bp-50h]
  int v41; // [sp+48h] [bp-4Ch]
  int v42; // [sp+4Ch] [bp-48h]
  int v43; // [sp+50h] [bp-44h]
  int v44; // [sp+54h] [bp-40h]
  int v45; // [sp+58h] [bp-3Ch]
  int v46; // [sp+5Ch] [bp-38h]
  int v47; // [sp+60h] [bp-34h]
  int v48; // [sp+64h] [bp-30h]
  int v49; // [sp+68h] [bp-2Ch]
  int v50; // [sp+6Ch] [bp-28h]
  int v51; // [sp+70h] [bp-24h]
  int v52; // [sp+74h] [bp-20h]
  int v53; // [sp+78h] [bp-1Ch]
  int v54; // [sp+7Ch] [bp-18h]
  int v55; // [sp+80h] [bp-14h]
  _BYTE v56[8]; // [sp+8Ch] [bp-8h] BYREF

  v6 = a2;
  if ( a4 < *a1 )
  {
    v7 = a1[1];
    goto LABEL_10;
  }
  v7 = a1[1];
  if ( a4 >= v7 )
  {
LABEL_10:
    v22 = -1171354717 * ((int)(v7 - a2) >> 3);
    if ( a3 >= v22 )
    {
      v27 = std::priv::__uninitialized_fill_n<glitch::gui::CGUITTGlyph *,unsigned int,glitch::gui::CGUITTGlyph>(
              v7,
              a3 - v22,
              a4);
      a1[1] = v27;
      std::priv::__ucopy_ptrs<glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *>(v6, v7, v27);
      a1[1] += 88 * v22;
      if ( v22 > 0 )
      {
        do
        {
          glitch::gui::CGUITTGlyph::operator=(v6, a4);
          --v22;
          v6 += 88;
        }
        while ( v22 );
      }
    }
    else
    {
      v23 = 88 * a3;
      v24 = v7 - 88 * a3;
      std::priv::__ucopy_ptrs<glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *>(v24, v7, v7);
      v25 = -1171354717 * ((v24 - v6) >> 3);
      a1[1] += v23;
      if ( v25 > 0 )
      {
        do
        {
          v7 -= 88;
          v24 -= 88;
          glitch::gui::CGUITTGlyph::operator=(v7, v24);
          --v25;
        }
        while ( v25 );
      }
      v26 = -1171354717 * (v23 >> 3);
      if ( v26 > 0 )
      {
        do
        {
          glitch::gui::CGUITTGlyph::operator=(v6, a4);
          --v26;
          v6 += 88;
        }
        while ( v26 );
      }
    }
    return;
  }
  v8 = *(_DWORD *)(a4 + 24);
  v9 = *(_DWORD *)(a4 + 28);
  v10 = *(_DWORD *)(a4 + 32);
  v11 = *(_BYTE *)(a4 + 8);
  v12 = *(_DWORD *)(a4 + 12);
  v13 = *(_DWORD *)(a4 + 16);
  v14 = *(_DWORD *)(a4 + 20);
  v15 = *(_DWORD *)(a4 + 36);
  v28 = *(_DWORD *)(a4 + 40);
  v29 = *(_DWORD *)(a4 + 44);
  v30 = *(_DWORD *)(a4 + 48);
  v31 = *(_DWORD *)(a4 + 52);
  v32 = *(_DWORD *)(a4 + 56);
  v33 = *(_DWORD *)(a4 + 60);
  v34 = *(_DWORD *)(a4 + 64);
  v16 = *(_DWORD *)(a4 + 4);
  v35[0] = off_972440;
  v40 = v8;
  v35[1] = v16;
  v41 = v9;
  v42 = v10;
  v36 = v11;
  v37 = v12;
  v38 = v13;
  v39 = v14;
  v43 = v15;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v17 = *(_DWORD *)(a4 + 68);
  v51 = v17;
  if ( v17 )
    ++*(_DWORD *)(v17 + 4);
  v18 = *(_DWORD *)(a4 + 72);
  v52 = v18;
  if ( v18 )
    ++*(_DWORD *)(v18 + 4);
  v19 = *(_DWORD *)(a4 + 84);
  v20 = *(_DWORD *)(a4 + 76);
  v21 = *(_DWORD *)(a4 + 80);
  v55 = v19;
  v53 = v20;
  v54 = v21;
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    a1,
    v6,
    a3,
    v35,
    v56);
  glitch::gui::CGUITTGlyph::~CGUITTGlyph((glitch::gui::CGUITTGlyph *)v35);
}


// ===== 55e7d4 std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::gui::CGUITTGlyph*,uint,glitch::gui::CGUITTGlyph const&) =====
void __fastcall std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  size_t v8; // r11
  char *v9; // r8
  int v10; // r0
  int v11; // r2
  int v12; // r5
  int v13; // r2
  int v14; // r2

  if ( a3 )
  {
    if ( a3 <= -1171354717 * ((int)(a1[2] - a1[1]) >> 3) )
    {
      std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 88
         * std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = (char *)GlitchAlloc(v8, 0);
      v10 = std::priv::__ucopy_ptrs<glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *>(*a1, a2, (int)v9);
      if ( a3 == 1 )
      {
        *(_DWORD *)(v10 + 4) = *(_DWORD *)(a4 + 4);
        *(_DWORD *)v10 = off_972440;
        *(_BYTE *)(v10 + 8) = *(_BYTE *)(a4 + 8);
        *(_DWORD *)(v10 + 12) = *(_DWORD *)(a4 + 12);
        *(_DWORD *)(v10 + 16) = *(_DWORD *)(a4 + 16);
        *(_DWORD *)(v10 + 20) = *(_DWORD *)(a4 + 20);
        *(_DWORD *)(v10 + 24) = *(_DWORD *)(a4 + 24);
        *(_DWORD *)(v10 + 28) = *(_DWORD *)(a4 + 28);
        *(_DWORD *)(v10 + 32) = *(_DWORD *)(a4 + 32);
        *(_DWORD *)(v10 + 36) = *(_DWORD *)(a4 + 36);
        *(_DWORD *)(v10 + 40) = *(_DWORD *)(a4 + 40);
        *(_DWORD *)(v10 + 44) = *(_DWORD *)(a4 + 44);
        *(_DWORD *)(v10 + 48) = *(_DWORD *)(a4 + 48);
        *(_DWORD *)(v10 + 52) = *(_DWORD *)(a4 + 52);
        *(_DWORD *)(v10 + 56) = *(_DWORD *)(a4 + 56);
        *(_DWORD *)(v10 + 60) = *(_DWORD *)(a4 + 60);
        *(_DWORD *)(v10 + 64) = *(_DWORD *)(a4 + 64);
        v13 = *(_DWORD *)(a4 + 68);
        *(_DWORD *)(v10 + 68) = v13;
        if ( v13 )
          ++*(_DWORD *)(v13 + 4);
        v14 = *(_DWORD *)(a4 + 72);
        *(_DWORD *)(v10 + 72) = v14;
        if ( v14 )
          ++*(_DWORD *)(v14 + 4);
        v11 = v10 + 88;
        *(_DWORD *)(v10 + 76) = *(_DWORD *)(a4 + 76);
        *(_DWORD *)(v10 + 80) = *(_DWORD *)(a4 + 80);
        *(_DWORD *)(v10 + 84) = *(_DWORD *)(a4 + 84);
      }
      else
      {
        v11 = std::priv::__uninitialized_fill_n<glitch::gui::CGUITTGlyph *,unsigned int,glitch::gui::CGUITTGlyph>(
                v10,
                a3,
                a4);
      }
      v12 = std::priv::__ucopy_ptrs<glitch::gui::CGUITTGlyph *,glitch::gui::CGUITTGlyph *>(a2, a1[1], v11);
      std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move((void **)a1);
      a1[1] = v12;
      a1[2] = (unsigned int)&v9[v8];
      *a1 = (unsigned int)v9;
    }
  }
}


// ===== 55e990 std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::gui::CGUITTGlyph const&) =====
void __fastcall std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        unsigned int a3)
{
  void (__fastcall ***v3)(_DWORD); // r12
  unsigned int v4; // r5
  void (__fastcall ***v5)(_DWORD); // r1

  v3 = *(void (__fastcall ****)(_DWORD))(a1 + 4);
  v4 = -1171354717 * (((int)v3 - *(_DWORD *)a1) >> 3);
  if ( a2 >= v4 )
  {
    std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (unsigned int *)a1,
      *(_DWORD *)(a1 + 4),
      a2 - v4,
      a3);
  }
  else
  {
    v5 = (void (__fastcall ***)(_DWORD))(*(_DWORD *)a1 + 88 * a2);
    if ( v5 != v3 )
      std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v5,
        *(_DWORD *)(a1 + 4));
  }
}


// ===== 55e9f0 glitch::gui::CGUITTFont::attach(glitch::gui::CGUITTFace *,uint,uint,glitch::video::SColor) =====
int __fastcall glitch::gui::CGUITTFont::attach(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  int v6; // r0
  bool v8; // zf
  glitch::IReferenceCounted *v12; // r0
  int v13; // r2
  int v14; // r1
  int v15; // r0
  int v16; // r3
  unsigned int v17; // [sp+0h] [bp-BCh]
  unsigned int v18; // [sp+0h] [bp-BCh]
  _DWORD v19[22]; // [sp+8h] [bp-B4h] BYREF
  _DWORD v20[23]; // [sp+60h] [bp-5Ch] BYREF

  v6 = a1[2];
  v8 = v6 == 0;
  if ( v6 )
    v8 = a2 == 0;
  if ( v8 )
    return 0;
  v12 = (glitch::IReferenceCounted *)a1[12];
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  a1[12] = a2;
  ++*(_DWORD *)(a2 + 4);
  (*(void (__fastcall **)(_DWORD *))(*a1 + 96))(a1);
  v17 = *(_DWORD *)(*(_DWORD *)(a1[12] + 8) + 16);
  glitch::gui::CGUITTGlyph::CGUITTGlyph(v20);
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 3),
    v17,
    (unsigned int)v20);
  glitch::gui::CGUITTGlyph::~CGUITTGlyph((glitch::gui::CGUITTGlyph *)v20);
  v18 = *(_DWORD *)(*(_DWORD *)(a1[12] + 8) + 16);
  glitch::gui::CGUITTGlyph::CGUITTGlyph(v19);
  std::vector<glitch::gui::CGUITTGlyph,glitch::core::SAllocator<glitch::gui::CGUITTGlyph,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 6),
    v18,
    (unsigned int)v19);
  glitch::gui::CGUITTGlyph::~CGUITTGlyph((glitch::gui::CGUITTGlyph *)v19);
  if ( *(int *)(*(_DWORD *)(a1[12] + 8) + 16) > 0 )
  {
    v13 = 0;
    v14 = 0;
    do
    {
      ++v14;
      v15 = a1[3] + v13;
      v16 = a1[6] + v13;
      *(_BYTE *)(v15 + 8) = 0;
      *(_DWORD *)(v15 + 12) = a3;
      *(_BYTE *)(v16 + 8) = 0;
      *(_BYTE *)(v16 + 84) = a5;
      *(_DWORD *)(v16 + 12) = a3;
      *(_DWORD *)(v16 + 80) = a4;
      *(_BYTE *)(v16 + 87) = HIBYTE(a5);
      *(_BYTE *)(v16 + 86) = BYTE2(a5);
      *(_BYTE *)(v16 + 85) = BYTE1(a5);
      v13 += 88;
    }
    while ( *(_DWORD *)(*(_DWORD *)(a1[12] + 8) + 16) > v14 );
  }
  return 1;
}


// ===== 55eb40 glitch::gui::CGUIWindow::updateAbsolutePosition(void) =====
// attributes: thunk
int __fastcall glitch::gui::CGUIWindow::updateAbsolutePosition(glitch::gui::IGUIElement *this)
{
  return glitch::gui::IGUIElement::updateAbsolutePosition(this);
}


// ===== 55eb44 glitch::gui::CGUIWindow::getCloseButton(void) =====
int __fastcall glitch::gui::CGUIWindow::getCloseButton(glitch::gui::CGUIWindow *this)
{
  return *((_DWORD *)this + 89);
}


// ===== 55eb4c glitch::gui::CGUIWindow::getMinimizeButton(void) =====
int __fastcall glitch::gui::CGUIWindow::getMinimizeButton(glitch::gui::CGUIWindow *this)
{
  return *((_DWORD *)this + 90);
}


// ===== 55eb54 glitch::gui::CGUIWindow::getMaximizeButton(void) =====
int __fastcall glitch::gui::CGUIWindow::getMaximizeButton(glitch::gui::CGUIWindow *this)
{
  return *((_DWORD *)this + 91);
}


// ===== 55eb5c `global constructor keyed to'.._source_glitch_gui_CGUIWindow.cpp =====
void `global constructor keyed to'.._source_glitch_gui_CGUIWindow.cpp()
{
  dword_9F66C8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F66C4 = 1056964608;
}


// ===== 55eb7c glitch::gui::IGUIElement::getNextElement(int,bool,bool,glitch::gui::IGUIElement*&,glitch::gui::IGUIElement*&,bool) [clone] =====
int __fastcall glitch::gui::IGUIElement::getNextElement(int a1, int a2, int a3, int a4, char a5)
{
  int *v5; // r4
  int *v6; // r6
  int v10; // r0
  int v12; // r3
  _BOOL4 v13; // r2

  v6 = (int *)(a1 + 4);
  v5 = *(int **)(a1 + 4);
  if ( v5 == (int *)(a1 + 4) )
    return 0;
  while ( 1 )
  {
    if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v5[2] + 44))(v5[2]) && !a5 )
      goto LABEL_10;
    if ( a2 )
    {
      v10 = v5[2];
    }
    else
    {
      v10 = v5[2];
      if ( *(_BYTE *)(v10 + 316) )
        goto LABEL_10;
    }
    if ( !*(_BYTE *)(v10 + 308) || *(unsigned __int8 *)(v10 + 316) != a2 )
    {
LABEL_9:
      if ( glitch::gui::IGUIElement::getNextElement(v10, a2, a3, a4, 0) )
        return 1;
      goto LABEL_10;
    }
    v12 = *(_DWORD *)(v10 + 312);
    if ( v12 == 0x40000000 )
      break;
    if ( !*(_DWORD *)a4 )
    {
      if ( v12 >= -1 )
        goto LABEL_18;
LABEL_17:
      *(_DWORD *)a4 = v10;
      v10 = v5[2];
      goto LABEL_18;
    }
    v13 = v12 > *(_DWORD *)(*(_DWORD *)a4 + 312);
    if ( v12 >= -1 )
      v13 = 0;
    if ( v13 )
      goto LABEL_17;
LABEL_18:
    if ( *(_DWORD *)a3 && v12 <= *(_DWORD *)(*(_DWORD *)a3 + 312) )
      goto LABEL_9;
    *(_DWORD *)a3 = v10;
    if ( glitch::gui::IGUIElement::getNextElement(v5[2], a2, a3, a4, 0) )
      return 1;
LABEL_10:
    v5 = (int *)*v5;
    if ( v5 == v6 )
      return 0;
  }
  *(_DWORD *)a4 = v10;
  return 1;
}


// ===== 55ecd0 glitch::gui::IGUIElement::setTabOrder(int) [clone] =====
int __fastcall glitch::gui::IGUIElement::setTabOrder(int this, int a2)
{
  int v2; // r1
  int v3; // r4
  int i; // r3
  int v5; // [sp+8h] [bp-8h] BYREF
  int v6; // [sp+Ch] [bp-4h] BYREF

  v2 = *(unsigned __int8 *)(this + 316);
  v3 = this;
  *(_DWORD *)(this + 312) = 0;
  if ( v2 )
  {
    this = *(_DWORD *)(this + 36);
    if ( this )
    {
      for ( i = *(_DWORD *)(this + 36); i; i = *(_DWORD *)(i + 36) )
        this = i;
    }
    else
    {
      this = v3;
    }
LABEL_9:
    v5 = 0;
    v6 = 0;
    this = glitch::gui::IGUIElement::getNextElement(this, v2, (int)&v6, (int)&v5, 1);
    if ( v6 )
      *(_DWORD *)(v3 + 312) = *(_DWORD *)(v6 + 312) + 1;
  }
  else
  {
    while ( 1 )
    {
      this = *(_DWORD *)(this + 36);
      if ( !this )
        break;
      if ( *(_BYTE *)(this + 316) )
        goto LABEL_9;
    }
  }
  return this;
}


// ===== 55ed7c std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 55ed80 glitch::gui::IGUIWindow::IGUIWindow(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::IGUIWindow::IGUIWindow(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r8
  int v8; // r7
  int v9; // lr
  int v10; // r10
  int v12; // r1
  int v13; // r0
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r12
  int v19; // r10
  int v20; // r8
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r7
  int v25; // r0
  int v26; // r1
  int v27; // r1
  int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r1
  bool v32; // cc
  int v33; // r3
  int v34; // r3
  int v36; // [sp+Ch] [bp-10h]

  v7 = *a6;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  *(_DWORD *)a1 = off_95C300;
  v12 = a2[1];
  *(_DWORD *)a1 = v12;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[2];
  v36 = a1 + 4;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[3];
  *(_DWORD *)(a1 + 8) = a1 + 4;
  v13 = a1 + 12;
  *(_DWORD *)(a1 + 48) = v9;
  *(_DWORD *)(a1 + 40) = v7;
  *(_DWORD *)(a1 + 32) = v13;
  *(_DWORD *)(a1 + 28) = v13;
  *(_DWORD *)(a1 + 44) = v8;
  *(_DWORD *)(a1 + 4) = v36;
  *(_DWORD *)(a1 + 52) = v10;
  *(_DWORD *)(a1 + 56) = v7;
  *(_DWORD *)(a1 + 60) = v8;
  *(_DWORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 76) = v8;
  *(_DWORD *)(a1 + 80) = v9;
  *(_DWORD *)(a1 + 88) = v7;
  *(_DWORD *)(a1 + 92) = v8;
  *(_DWORD *)(a1 + 96) = v9;
  *(_DWORD *)(a1 + 132) = 0;
  *(_BYTE *)(a1 + 153) = 1;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 144) = 1;
  *(_DWORD *)(a1 + 148) = 1;
  *(_BYTE *)(a1 + 152) = 1;
  *(_DWORD *)(a1 + 68) = v10;
  *(_BYTE *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 100) = v10;
  *(_DWORD *)(a1 + 84) = v10;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 136) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_BYTE *)(a1 + 154) = 0;
  *(_BYTE *)(a1 + 155) = 0;
  *(_BYTE *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 224) = a1 + 160;
  *(_DWORD *)(a1 + 228) = a1 + 160;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 296) = a1 + 232;
  *(_DWORD *)(a1 + 300) = a1 + 232;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **(_DWORD **)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 304) = a5;
  *(_DWORD *)(a1 + 312) = -1;
  *(_DWORD *)(a1 + 340) = 21;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  if ( a4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a4 + 20))(a4, a1);
  v16 = *(_DWORD **)(a1 + 36);
  if ( v16 )
  {
    v17 = v16[15];
    v18 = v16[14];
    v19 = v16[16];
    v20 = v16[17];
    v21 = v17 + *(_DWORD *)(a1 + 68);
    v22 = v18 + *(_DWORD *)(a1 + 64);
    v23 = v17 + *(_DWORD *)(a1 + 60);
    v24 = v18 + *(_DWORD *)(a1 + 56);
    *(_DWORD *)(a1 + 76) = v23;
    *(_DWORD *)(a1 + 84) = v21;
    *(_DWORD *)(a1 + 72) = v24;
    *(_DWORD *)(a1 + 80) = v22;
    *(_DWORD *)(a1 + 68) = v21;
    *(_DWORD *)(a1 + 112) = v19;
    *(_DWORD *)(a1 + 116) = v20;
    *(_DWORD *)(a1 + 104) = v18;
    *(_DWORD *)(a1 + 108) = v17;
    *(_DWORD *)(a1 + 56) = v24;
    *(_DWORD *)(a1 + 60) = v23;
    *(_DWORD *)(a1 + 64) = v22;
    v25 = v16[20];
    if ( v22 > v25 )
      *(_DWORD *)(a1 + 80) = v25;
    v26 = v16[21];
    if ( v21 > v26 )
      *(_DWORD *)(a1 + 84) = v26;
    v27 = v16[18];
    v28 = *(_DWORD *)(a1 + 72);
    if ( v27 > v28 )
    {
      *(_DWORD *)(a1 + 72) = v27;
      v28 = v27;
    }
    v29 = v16[19];
    v30 = *(_DWORD *)(a1 + 76);
    if ( v29 > v30 )
    {
      *(_DWORD *)(a1 + 76) = v29;
      v30 = v29;
    }
    v31 = *(_DWORD *)(a1 + 84);
    v32 = v31 < v30;
    v33 = *(_DWORD *)(a1 + 80);
    if ( v32 )
      *(_DWORD *)(a1 + 76) = v31;
    if ( v28 > v33 )
      *(_DWORD *)(a1 + 72) = v33;
  }
  v34 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v34 - 12)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[5];
  return a1;
}


// ===== 55f040 glitch::gui::CGUIWindow::CGUIWindow(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIWindow::CGUIWindow(int a1, int a2, int a3, int a4, int *a5)
{
  int v5; // r8
  int v6; // lr
  int v7; // r10
  int v8; // r5
  int v10; // r6
  int v11; // r8
  int v12; // r10
  int v13; // r7
  int v14; // r9
  int (__fastcall *v15)(int, _DWORD *, int, int, wchar_t *, const char *); // r11
  const char *v16; // r0
  int v17; // r0
  int v18; // r11
  int v19; // r0
  int v20; // r11
  int v21; // r0
  int v22; // r7
  int v23; // r9
  int (__fastcall *v24)(int, _DWORD *, int, int, wchar_t *, const char *); // r11
  const char *v25; // r0
  int v26; // r0
  int v27; // r11
  int v28; // r0
  int v29; // r11
  int v30; // r0
  int v31; // r11
  int (__fastcall *v32)(int, _DWORD *, int, int, wchar_t *, const char *); // r7
  const char *v33; // r0
  int v34; // r0
  int v35; // r8
  void (__fastcall *v36)(int, _DWORD, int, int, _DWORD); // r7
  int v37; // r0
  int v38; // r7
  int v39; // r3
  int v40; // r0
  void (__fastcall *v41)(int, int, int, int, _DWORD); // r5
  int v42; // r0
  int v43; // r2
  int v44; // r2
  int v45; // r2
  int v46; // r1
  void (__fastcall *v48)(int, _DWORD, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  void (__fastcall *v49)(int, int, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  void (__fastcall *v50)(int, _DWORD, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  void (__fastcall *v51)(int, int, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  int v52; // [sp+Ch] [bp-58h]
  _DWORD v53[4]; // [sp+1Ch] [bp-48h] BYREF
  _DWORD v54[4]; // [sp+2Ch] [bp-38h] BYREF
  _DWORD v55[4]; // [sp+3Ch] [bp-28h] BYREF
  int v56[4]; // [sp+4Ch] [bp-18h] BYREF
  int v57; // [sp+5Ch] [bp-8h]

  *(_DWORD *)(a1 + 376) = 1;
  *(_DWORD *)(a1 + 372) = off_95B720;
  *(_DWORD *)(a1 + 368) = off_97274C;
  *(_DWORD *)&byte_4[a1 + 368] = off_97276C;
  v5 = a5[3];
  v6 = a5[1];
  v7 = a5[2];
  v8 = a2;
  v56[0] = *a5;
  v56[1] = v6;
  v56[2] = v7;
  v56[3] = v5;
  glitch::gui::IGUIWindow::IGUIWindow(a1, (int *)off_972564, a2, a3, a4, v56);
  *(_BYTE *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)a1 = off_972490;
  *(_DWORD *)(a1 + 368) = off_972530;
  *(_DWORD *)(a1 + 372) = off_972550;
  *(_DWORD *)(a1 + 348) = 0;
  if ( v8 )
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 56))(v8);
  v57 = -1;
  if ( v8 )
  {
    v10 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 24))(v8, 2);
    v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 48))(v8);
    v57 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 16))(v8, 18);
    v12 = -2 - v10;
    v52 = v10 + 3;
  }
  else
  {
    v12 = -17;
    v52 = 18;
    v10 = 15;
    v11 = 0;
  }
  v13 = *(_DWORD *)(a1 + 336);
  v14 = *(_DWORD *)(a1 + 48) - 4 - *(_DWORD *)(a1 + 40) - v10;
  v15 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, const char *))(*(_DWORD *)v13 + 120);
  v55[2] = *(_DWORD *)(a1 + 48) - 4 - *(_DWORD *)(a1 + 40);
  v55[1] = 3;
  v55[0] = v14;
  v55[3] = v52;
  if ( v8 )
    v16 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 28))(v8, 4);
  else
    v16 = "C";
  v17 = v15(v13, v55, a1, -1, dword_8BEC18, v16);
  *(_DWORD *)(a1 + 356) = v17;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v17 + 56))(v17, 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 356) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 356), 1, 1, 0, 0);
  if ( v11 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 356) + 144))(*(_DWORD *)(a1 + 356), v11);
    v18 = *(_DWORD *)(a1 + 356);
    v48 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v18 + 148);
    v19 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 56))(v8, 2);
    v48(v18, 0, v19, v57, 0);
    v20 = *(_DWORD *)(a1 + 356);
    v49 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v20 + 148);
    v21 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 56))(v8, 2);
    v49(v20, 1, v21, v57, 0);
  }
  v22 = *(_DWORD *)(a1 + 336);
  v23 = v14 + v12;
  v24 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, const char *))(*(_DWORD *)v22 + 120);
  v54[2] = v23 + v10;
  v54[1] = 3;
  v54[0] = v23;
  v54[3] = v52;
  if ( v8 )
    v25 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 28))(v8, 7);
  else
    v25 = "R";
  v26 = v24(v22, v54, a1, -1, dword_8BEC18, v25);
  *(_DWORD *)(a1 + 364) = v26;
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v26 + 48))(v26, 0);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 364) + 56))(*(_DWORD *)(a1 + 364), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 364) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 364), 1, 1, 0, 0);
  if ( v11 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 364) + 144))(*(_DWORD *)(a1 + 364), v11);
    v27 = *(_DWORD *)(a1 + 364);
    v50 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v27 + 148);
    v28 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 56))(v8, 1);
    v50(v27, 0, v28, v57, 0);
    v29 = *(_DWORD *)(a1 + 364);
    v51 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v29 + 148);
    v30 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 56))(v8, 1);
    v51(v29, 1, v30, v57, 0);
  }
  v31 = *(_DWORD *)(a1 + 336);
  v32 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, const char *))(*(_DWORD *)v31 + 120);
  v53[1] = 3;
  v53[0] = v23 + v12;
  v53[2] = v23 + v12 + v10;
  v53[3] = v52;
  if ( v8 )
    v33 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 28))(v8, 6);
  else
    v33 = "M";
  v34 = v32(v31, v53, a1, -1, dword_8BEC18, v33);
  *(_DWORD *)(a1 + 360) = v34;
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v34 + 48))(v34, 0);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 360) + 56))(*(_DWORD *)(a1 + 360), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 360) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 360), 1, 1, 0, 0);
  if ( v11 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 360) + 144))(*(_DWORD *)(a1 + 360), v11);
    v35 = *(_DWORD *)(a1 + 360);
    v36 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v35 + 148);
    v37 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 56))(v8, 3);
    v36(v35, 0, v37, v57, 0);
    v38 = *(_DWORD *)(a1 + 360);
    v39 = *(_DWORD *)v8;
    v40 = v8;
    v41 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v38 + 148);
    v42 = (*(int (__fastcall **)(int, int))(v39 + 56))(v40, 3);
    v41(v38, 1, v42, v57, 0);
  }
  v43 = *(_DWORD *)(a1 + 360) + *(_DWORD *)(**(_DWORD **)(a1 + 360) - 16);
  ++*(_DWORD *)(v43 + 4);
  v44 = *(_DWORD *)(a1 + 364) + *(_DWORD *)(**(_DWORD **)(a1 + 364) - 16);
  ++*(_DWORD *)(v44 + 4);
  v45 = *(_DWORD *)(a1 + 356) + *(_DWORD *)(**(_DWORD **)(a1 + 356) - 16);
  v46 = *(_DWORD *)(v45 + 4) + 1;
  *(_DWORD *)(v45 + 4) = v46;
  *(_BYTE *)(a1 + 308) = 1;
  *(_BYTE *)(a1 + 316) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v46);
  return a1;
}


// ===== 55f680 glitch::gui::CGUIWindow::CGUIWindow(glitch::gui::IGUIEnvironment *,glitch::gui::IGUIElement *,int,glitch::core::rect<int>) =====
int __fastcall glitch::gui::CGUIWindow::CGUIWindow(int a1, int *a2, int a3, int a4, int a5, int *a6)
{
  int v7; // r4
  int v8; // r12
  int v9; // lr
  int v11; // r5
  int v12; // r2
  int v13; // r6
  int v14; // r8
  int v15; // r10
  int v16; // r7
  int v17; // r9
  int (__fastcall *v18)(int, _DWORD *, int, int, wchar_t *, const char *); // r11
  const char *v19; // r0
  int v20; // r0
  int v21; // r11
  int v22; // r0
  int v23; // r11
  int v24; // r0
  int v25; // r7
  int v26; // r9
  int (__fastcall *v27)(int, _DWORD *, int, int, wchar_t *, const char *); // r11
  const char *v28; // r0
  int v29; // r0
  int v30; // r11
  int v31; // r0
  int v32; // r11
  int v33; // r0
  int v34; // r11
  int (__fastcall *v35)(int, _DWORD *, int, int, wchar_t *, const char *); // r7
  const char *v36; // r0
  int v37; // r0
  int v38; // r8
  void (__fastcall *v39)(int, _DWORD, int, int, _DWORD); // r7
  int v40; // r0
  int v41; // r7
  int v42; // r3
  int v43; // r0
  void (__fastcall *v44)(int, int, int, int, _DWORD); // r5
  int v45; // r0
  int v46; // r2
  int v47; // r2
  int v48; // r2
  int v49; // r1
  void (__fastcall *v51)(int, _DWORD, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  void (__fastcall *v52)(int, int, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  void (__fastcall *v53)(int, _DWORD, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  void (__fastcall *v54)(int, int, int, int, _DWORD); // [sp+8h] [bp-5Ch]
  int v55; // [sp+Ch] [bp-58h]
  _DWORD v56[4]; // [sp+1Ch] [bp-48h] BYREF
  _DWORD v57[4]; // [sp+2Ch] [bp-38h] BYREF
  _DWORD v58[4]; // [sp+3Ch] [bp-28h] BYREF
  int v59[4]; // [sp+4Ch] [bp-18h] BYREF
  int v60; // [sp+5Ch] [bp-8h]

  v7 = a6[1];
  v8 = a6[2];
  v9 = a6[3];
  v59[0] = *a6;
  v59[1] = v7;
  v59[2] = v8;
  v11 = a3;
  v59[3] = v9;
  glitch::gui::IGUIWindow::IGUIWindow(a1, a2 + 1, a3, a4, a5, v59);
  v12 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 12)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 16)) = a2[8];
  *(_BYTE *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  if ( v11 )
    v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 56))(v11);
  v60 = -1;
  if ( v11 )
  {
    v13 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 24))(v11, 2);
    v14 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 48))(v11);
    v60 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 16))(v11, 18);
    v15 = -2 - v13;
    v55 = v13 + 3;
  }
  else
  {
    v15 = -17;
    v55 = 18;
    v13 = 15;
    v14 = 0;
  }
  v16 = *(_DWORD *)(a1 + 336);
  v17 = *(_DWORD *)(a1 + 48) - 4 - *(_DWORD *)(a1 + 40) - v13;
  v18 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, const char *))(*(_DWORD *)v16 + 120);
  v58[2] = *(_DWORD *)(a1 + 48) - 4 - *(_DWORD *)(a1 + 40);
  v58[1] = 3;
  v58[0] = v17;
  v58[3] = v55;
  if ( v11 )
    v19 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 28))(v11, 4);
  else
    v19 = "C";
  v20 = v18(v16, v58, a1, -1, dword_8BEC18, v19);
  *(_DWORD *)(a1 + 356) = v20;
  (*(void (__fastcall **)(int, int))(*(_DWORD *)v20 + 56))(v20, 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 356) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 356), 1, 1, 0, 0);
  if ( v14 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 356) + 144))(*(_DWORD *)(a1 + 356), v14);
    v21 = *(_DWORD *)(a1 + 356);
    v51 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v21 + 148);
    v22 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 2);
    v51(v21, 0, v22, v60, 0);
    v23 = *(_DWORD *)(a1 + 356);
    v52 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v23 + 148);
    v24 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 2);
    v52(v23, 1, v24, v60, 0);
  }
  v25 = *(_DWORD *)(a1 + 336);
  v26 = v17 + v15;
  v27 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, const char *))(*(_DWORD *)v25 + 120);
  v57[2] = v26 + v13;
  v57[1] = 3;
  v57[0] = v26;
  v57[3] = v55;
  if ( v11 )
    v28 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 28))(v11, 7);
  else
    v28 = "R";
  v29 = v27(v25, v57, a1, -1, dword_8BEC18, v28);
  *(_DWORD *)(a1 + 364) = v29;
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v29 + 48))(v29, 0);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 364) + 56))(*(_DWORD *)(a1 + 364), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 364) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 364), 1, 1, 0, 0);
  if ( v14 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 364) + 144))(*(_DWORD *)(a1 + 364), v14);
    v30 = *(_DWORD *)(a1 + 364);
    v53 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v30 + 148);
    v31 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 1);
    v53(v30, 0, v31, v60, 0);
    v32 = *(_DWORD *)(a1 + 364);
    v54 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v32 + 148);
    v33 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 1);
    v54(v32, 1, v33, v60, 0);
  }
  v34 = *(_DWORD *)(a1 + 336);
  v35 = *(int (__fastcall **)(int, _DWORD *, int, int, wchar_t *, const char *))(*(_DWORD *)v34 + 120);
  v56[1] = 3;
  v56[0] = v26 + v15;
  v56[2] = v26 + v15 + v13;
  v56[3] = v55;
  if ( v11 )
    v36 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 28))(v11, 6);
  else
    v36 = "M";
  v37 = v35(v34, v56, a1, -1, dword_8BEC18, v36);
  *(_DWORD *)(a1 + 360) = v37;
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v37 + 48))(v37, 0);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 360) + 56))(*(_DWORD *)(a1 + 360), 1);
  *(_BYTE *)(*(_DWORD *)(a1 + 360) + 308) = 0;
  glitch::gui::IGUIElement::setAlignment(*(float *)(a1 + 360), 1, 1, 0, 0);
  if ( v14 )
  {
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 360) + 144))(*(_DWORD *)(a1 + 360), v14);
    v38 = *(_DWORD *)(a1 + 360);
    v39 = *(void (__fastcall **)(int, _DWORD, int, int, _DWORD))(*(_DWORD *)v38 + 148);
    v40 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 56))(v11, 3);
    v39(v38, 0, v40, v60, 0);
    v41 = *(_DWORD *)(a1 + 360);
    v42 = *(_DWORD *)v11;
    v43 = v11;
    v44 = *(void (__fastcall **)(int, int, int, int, _DWORD))(*(_DWORD *)v41 + 148);
    v45 = (*(int (__fastcall **)(int, int))(v42 + 56))(v43, 3);
    v44(v41, 1, v45, v60, 0);
  }
  v46 = *(_DWORD *)(a1 + 360) + *(_DWORD *)(**(_DWORD **)(a1 + 360) - 16);
  ++*(_DWORD *)(v46 + 4);
  v47 = *(_DWORD *)(a1 + 364) + *(_DWORD *)(**(_DWORD **)(a1 + 364) - 16);
  ++*(_DWORD *)(v47 + 4);
  v48 = *(_DWORD *)(a1 + 356) + *(_DWORD *)(**(_DWORD **)(a1 + 356) - 16);
  v49 = *(_DWORD *)(v48 + 4) + 1;
  *(_DWORD *)(v48 + 4) = v49;
  *(_BYTE *)(a1 + 308) = 1;
  *(_BYTE *)(a1 + 316) = 1;
  glitch::gui::IGUIElement::setTabOrder(a1, v49);
  return a1;
}


// ===== 55fc70 glitch::gui::CGUIWindow::~CGUIWindow() =====
void __fastcall glitch::gui::CGUIWindow::~CGUIWindow(glitch::gui::CGUIWindow *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3
  _DWORD *v4; // r3

  v1 = *((_DWORD **)this + 90);
  *(_DWORD *)this = off_972490;
  *((_DWORD *)this + 92) = off_972530;
  *((_DWORD *)this + 93) = off_972550;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 16)));
  v3 = *((_DWORD **)this + 91);
  if ( v3 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 16)));
  v4 = *((_DWORD **)this + 89);
  if ( v4 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 16)));
  *(_DWORD *)this = off_9725A0;
  *(int *)((char *)&elf_hash_bucket[37] + (_DWORD)this) = (int)off_972640;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = off_972660;
  glitch::gui::IGUIElement::~IGUIElement(this, (int *)&off_972568);
}


// ===== 55fd40 glitch::gui::CGUIWindow::~CGUIWindow() =====
void __fastcall glitch::gui::CGUIWindow::~CGUIWindow(glitch::gui::CGUIWindow *this)
{
  glitch::gui::CGUIWindow::~CGUIWindow(this);
  LC_API_FREE_0(this);
}


// ===== 55fd5c glitch::gui::CGUIWindow::~CGUIWindow() =====
void __fastcall glitch::gui::CGUIWindow::~CGUIWindow(glitch::gui::CGUIWindow *this, int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3
  _DWORD *v7; // r3
  int v8; // r3
  int *v9; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = a2[8];
  v5 = *((_DWORD **)this + 90);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 16)));
  v6 = *((_DWORD **)this + 91);
  if ( v6 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 16)));
  v7 = *((_DWORD **)this + 89);
  if ( v7 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 16)));
  v8 = a2[1];
  v9 = a2 + 1;
  *(_DWORD *)this = v8;
  *(_DWORD *)((char *)this + *(_DWORD *)(v8 - 12)) = v9[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 16)) = v9[5];
  glitch::gui::IGUIElement::~IGUIElement(this, v9 + 1);
}


// ===== 55fe1c glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&) =====
int __fastcall glitch::gui::CGUIWindow::onEvent(int a1, _DWORD *a2)
{
  int v4; // r3
  int v5; // r3
  int v7; // r3
  int v8; // r3
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // r3
  int v12; // r2
  int v13; // r1
  int v14; // r2
  void (__fastcall *v15)(int, _DWORD *); // r3
  int v16; // r0
  int i; // r2
  bool v18; // zf
  _DWORD v19[6]; // [sp+0h] [bp-20h] BYREF
  _DWORD v20[2]; // [sp+18h] [bp-8h] BYREF

  if ( *(_BYTE *)(a1 + 153) )
  {
    if ( *a2 )
    {
      if ( *a2 == 1 )
      {
        v7 = a2[5];
        switch ( v7 )
        {
          case 3:
            *(_BYTE *)(a1 + 352) = 0;
            return 1;
          case 6:
            if ( *(_BYTE *)(a1 + 352) )
            {
              v11 = *(_DWORD **)(a1 + 36);
              if ( v11 )
              {
                v12 = a2[2];
                if ( v12 <= v11[14] )
                  return 1;
                v13 = a2[3];
                if ( v13 <= v11[15] || v12 >= v11[16] || v13 >= v11[17] )
                  return 1;
              }
              else
              {
                v12 = a2[2];
                v13 = a2[3];
              }
              v14 = v12 - *(_DWORD *)(a1 + 344);
              v15 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)a1 + 40);
              v20[1] = v13 - *(_DWORD *)(a1 + 348);
              v20[0] = v14;
              v15(a1, v20);
              *(_DWORD *)(a1 + 344) = a2[2];
              *(_DWORD *)(a1 + 348) = a2[3];
              return 1;
            }
            break;
          case 0:
            v8 = *(_DWORD *)(a1 + 36);
            *(_DWORD *)(a1 + 344) = a2[2];
            v9 = a2[3];
            *(_BYTE *)(a1 + 352) = 1;
            *(_DWORD *)(a1 + 348) = v9;
            if ( v8 )
            {
              (*(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 100))(v8, a1);
              return 1;
            }
            return 1;
        }
      }
    }
    else
    {
      v4 = a2[4];
      if ( !v4 )
      {
        *(_BYTE *)(a1 + 352) = 0;
        goto LABEL_6;
      }
      if ( v4 == 1 )
      {
        v5 = *(_DWORD *)(a1 + 36);
        if ( !v5 )
          return 0;
        v16 = a2[2];
        if ( v16 != a1 )
        {
          if ( !v16 )
            return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v5 + 8))(v5, a2);
          for ( i = *(_DWORD *)(v16 + 36); i; i = *(_DWORD *)(i + 36) )
          {
            v16 = i;
            v18 = i == a1;
            if ( i != a1 )
              v18 = *(_DWORD *)(i + 36) == 0;
            if ( v18 )
              goto LABEL_41;
          }
          i = v16;
LABEL_41:
          if ( a1 != i )
            return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v5 + 8))(v5, a2);
        }
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 100))(v5, a1);
      }
      else if ( v4 == 5 && a2[2] == *(_DWORD *)(a1 + 356) )
      {
        v10 = *(_DWORD *)(a1 + 36);
        if ( !v10 )
        {
          (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
          return 1;
        }
        v19[2] = a1;
        v19[3] = 0;
        v19[4] = 4;
        v19[0] = 0;
        if ( !(*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v10 + 8))(v10, v19) )
        {
          (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 28))(a1);
          return 1;
        }
        return 1;
      }
    }
  }
LABEL_6:
  v5 = *(_DWORD *)(a1 + 36);
  if ( !v5 )
    return 0;
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v5 + 8))(v5, a2);
}


// ===== 56008c glitch::gui::CGUIWindow::draw(void) =====
int __fastcall glitch::gui::CGUIWindow::draw(int this)
{
  int v1; // r4
  int v2; // r6
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r5
  int (__fastcall *v8)(_DWORD *, int, int, int, int, int, int); // r7
  int v9; // r7
  bool v10; // zf
  int v11; // r4
  int *i; // r5
  int *v13; // t1
  int v14; // r7
  int v15; // r7
  int v16; // r7
  int v17; // r3
  int v18; // r0
  int (__fastcall *v19)(int, int, int *, int, _DWORD, int, int); // r5
  int v20; // r8
  _DWORD v21[4]; // [sp+18h] [bp-28h] BYREF
  int v22; // [sp+28h] [bp-18h] BYREF
  int v23; // [sp+2Ch] [bp-14h]
  int v24; // [sp+30h] [bp-10h]
  int v25; // [sp+34h] [bp-Ch]
  int v26; // [sp+38h] [bp-8h]
  int v27; // [sp+3Ch] [bp-4h]

  v1 = this;
  if ( *(_BYTE *)(this + 152) )
  {
    v2 = this + 72;
    v3 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 336) + 56))(*(_DWORD *)(this + 336));
    v4 = *(_DWORD *)(v1 + 60);
    v5 = *(_DWORD *)(v1 + 64);
    v6 = *(_DWORD *)(v1 + 68);
    v22 = *(_DWORD *)(v1 + 56);
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v7 = v3;
    v8 = *(int (__fastcall **)(_DWORD *, int, int, int, int, int, int))(*(_DWORD *)v3 + 76);
    v27 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 16))(v3, 5);
    this = v8(v21, v7, v1, 1, v27, v1 + 56, v2);
    v9 = v21[0];
    v10 = (unsigned int)(*(_DWORD *)(v1 + 224) - *(_DWORD *)(v1 + 228)) >> 2 == 0;
    v22 = v21[0];
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    if ( !v10 )
    {
      v22 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 24))(v7, 8) + v9;
      v14 = v23;
      v23 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 24))(v7, 9) + v14;
      v15 = v24;
      v24 = v15 + 5 - (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 24))(v7, 2);
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 40))(v7, 2);
      v16 = this;
      if ( this )
      {
        v17 = *(_DWORD *)v7;
        v18 = v7;
        v19 = *(int (__fastcall **)(int, int, int *, int, _DWORD, int, int))(*(_DWORD *)v16 + 12);
        v20 = *(_DWORD *)(v1 + 228);
        v26 = (*(int (__fastcall **)(int, int))(v17 + 16))(v18, 6);
        this = v19(v16, v20, &v22, v26, 0, 1, v2);
      }
    }
    if ( *(_BYTE *)(v1 + 152) )
    {
      v13 = *(int **)(v1 + 4);
      v11 = v1 + 4;
      for ( i = v13; i != (int *)v11; i = (int *)*i )
        this = (*(int (__fastcall **)(int))(*(_DWORD *)i[2] + 32))(i[2]);
    }
  }
  return this;
}


// ===== 560290 `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow(glitch::gui::CGUIWindow *this)
{
  glitch::gui::CGUIWindow::~CGUIWindow((glitch::gui::CGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5602a0 `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow(glitch::gui::CGUIWindow *this)
{
  glitch::gui::CGUIWindow::~CGUIWindow((glitch::gui::CGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5602b0 `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow(glitch::gui::CGUIWindow *this)
{
  glitch::gui::CGUIWindow::~CGUIWindow((glitch::gui::CGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 5602c0 `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow() =====
void __fastcall `virtual thunk to'glitch::gui::CGUIWindow::~CGUIWindow(glitch::gui::CGUIWindow *this)
{
  glitch::gui::CGUIWindow::~CGUIWindow((glitch::gui::CGUIWindow *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 5602d0 glitch::core::quaternion::getMatrix_transposed(glitch::core::CMatrix4<float> &) =====
float __fastcall glitch::core::quaternion::getMatrix_transposed(float *a1, int a2)
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
  *(float *)(a2 + 16) = v14 + v10;
  *(_DWORD *)(a2 + 48) = 0;
  *(float *)(a2 + 32) = v15 - v9;
  *(float *)(a2 + 4) = v14 - v10;
  *(float *)(a2 + 20) = (float)(1.0 - v12) - v13;
  *(_DWORD *)(a2 + 52) = 0;
  *(float *)(a2 + 36) = v16 + v8;
  *(float *)(a2 + 8) = v15 + v9;
  *(float *)(a2 + 24) = v16 - v8;
  result = (float)(1.0 - (float)(v5 * (float)(v5 + v5))) - v12;
  *(float *)(a2 + 40) = result;
  *(_DWORD *)(a2 + 44) = 0;
  *(_DWORD *)(a2 + 60) = 1065353216;
  *(_DWORD *)(a2 + 56) = 0;
  *(_DWORD *)(a2 + 12) = 0;
  *(_DWORD *)(a2 + 28) = 0;
  return result;
}


// ===== 560484 glitch::io::CVector2DIAttribute::getType(void) =====
int __fastcall glitch::io::CVector2DIAttribute::getType(glitch::io::CVector2DIAttribute *this)
{
  return 10;
}


// ===== 56048c glitch::io::CVector2DIAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CVector2DIAttribute::getTypeString(glitch::io::CVector2DIAttribute *this)
{
  return &unk_8DED00;
}


// ===== 56049c glitch::io::CVector3DIAttribute::getType(void) =====
int __fastcall glitch::io::CVector3DIAttribute::getType(glitch::io::CVector3DIAttribute *this)
{
  return 11;
}


// ===== 5604a4 glitch::io::CVector3DIAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CVector3DIAttribute::getTypeString(glitch::io::CVector3DIAttribute *this)
{
  return &unk_8DED28;
}


// ===== 5604b4 glitch::io::CVector4DIAttribute::getType(void) =====
int __fastcall glitch::io::CVector4DIAttribute::getType(glitch::io::CVector4DIAttribute *this)
{
  return 12;
}


// ===== 5604bc glitch::io::CVector4DIAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CVector4DIAttribute::getTypeString(glitch::io::CVector4DIAttribute *this)
{
  return &unk_8DED50;
}


// ===== 5604cc glitch::io::CPosition2DAttribute::getType(void) =====
int __fastcall glitch::io::CPosition2DAttribute::getType(glitch::io::CPosition2DAttribute *this)
{
  return 13;
}


// ===== 5604d4 glitch::io::CPosition2DAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CPosition2DAttribute::getTypeString(glitch::io::CPosition2DAttribute *this)
{
  return &unk_8DED78;
}


// ===== 5604e4 glitch::io::CRectAttribute::getType(void) =====
int __fastcall glitch::io::CRectAttribute::getType(glitch::io::CRectAttribute *this)
{
  return 14;
}


// ===== 5604ec glitch::io::CRectAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CRectAttribute::getTypeString(glitch::io::CRectAttribute *this)
{
  return &unk_8DEDA0;
}


// ===== 5604fc glitch::io::CMatrixAttribute::getType(void) =====
int __fastcall glitch::io::CMatrixAttribute::getType(glitch::io::CMatrixAttribute *this)
{
  return 15;
}


// ===== 560504 glitch::io::CMatrixAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CMatrixAttribute::getTypeString(glitch::io::CMatrixAttribute *this)
{
  return &unk_8DEDB8;
}


// ===== 560514 glitch::io::CQuaternionAttribute::getType(void) =====
int __fastcall glitch::io::CQuaternionAttribute::getType(glitch::io::CQuaternionAttribute *this)
{
  return 16;
}


// ===== 56051c glitch::io::CQuaternionAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CQuaternionAttribute::getTypeString(glitch::io::CQuaternionAttribute *this)
{
  return &unk_8DEDD8;
}


// ===== 56052c glitch::io::CBBoxAttribute::getType(void) =====
int __fastcall glitch::io::CBBoxAttribute::getType(glitch::io::CBBoxAttribute *this)
{
  return 17;
}


// ===== 560534 glitch::io::CBBoxAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CBBoxAttribute::getTypeString(glitch::io::CBBoxAttribute *this)
{
  return &unk_8DEE08;
}


// ===== 560544 glitch::io::CPlaneAttribute::getType(void) =====
int __fastcall glitch::io::CPlaneAttribute::getType(glitch::io::CPlaneAttribute *this)
{
  return 18;
}


// ===== 56054c glitch::io::CPlaneAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CPlaneAttribute::getTypeString(glitch::io::CPlaneAttribute *this)
{
  return &unk_8DEE20;
}


// ===== 56055c glitch::io::CTriangleAttribute::getType(void) =====
int __fastcall glitch::io::CTriangleAttribute::getType(glitch::io::CTriangleAttribute *this)
{
  return 19;
}


// ===== 560564 glitch::io::CTriangleAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CTriangleAttribute::getTypeString(glitch::io::CTriangleAttribute *this)
{
  return &unk_8DEE38;
}


// ===== 560574 glitch::io::CLine2dAttribute::getType(void) =====
int __fastcall glitch::io::CLine2dAttribute::getType(glitch::io::CLine2dAttribute *this)
{
  return 20;
}


// ===== 56057c glitch::io::CLine2dAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CLine2dAttribute::getTypeString(glitch::io::CLine2dAttribute *this)
{
  return &unk_8DEE60;
}


// ===== 56058c glitch::io::CLine3dAttribute::getType(void) =====
int __fastcall glitch::io::CLine3dAttribute::getType(glitch::io::CLine3dAttribute *this)
{
  return 21;
}


// ===== 560594 glitch::io::CLine3dAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CLine3dAttribute::getTypeString(glitch::io::CLine3dAttribute *this)
{
  return &unk_8DEE80;
}


// ===== 5605a4 glitch::io::CEnumAttribute::getFloat(void) =====
float __fastcall glitch::io::CEnumAttribute::getFloat(glitch::io::CEnumAttribute *this)
{
  return (float)(*(int (__fastcall **)(glitch::io::CEnumAttribute *))(*(_DWORD *)this + 12))(this);
}


// ===== 5605bc glitch::io::CEnumAttribute::getBool(void) =====
bool __fastcall glitch::io::CEnumAttribute::getBool(glitch::io::CEnumAttribute *this)
{
  return (*(int (__fastcall **)(glitch::io::CEnumAttribute *))(*(_DWORD *)this + 12))(this) != 0;
}


// ===== 5605d8 glitch::io::CEnumAttribute::setFloat(float) =====
int __fastcall glitch::io::CEnumAttribute::setFloat(glitch::io::CEnumAttribute *this, float a2)
{
  return (*(int (__fastcall **)(glitch::io::CEnumAttribute *, int))(*(_DWORD *)this + 136))(this, (int)a2);
}


// ===== 560600 glitch::io::CEnumAttribute::getEnum(void) =====
int __fastcall glitch::io::CEnumAttribute::getEnum(glitch::io::CEnumAttribute *this)
{
  return *((_DWORD *)this + 14);
}


// ===== 560608 glitch::io::CEnumAttribute::getType(void) =====
int __fastcall glitch::io::CEnumAttribute::getType(glitch::io::CEnumAttribute *this)
{
  return 4;
}


// ===== 560610 glitch::io::CEnumAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CEnumAttribute::getTypeString(glitch::io::CEnumAttribute *this)
{
  return &unk_8DEEA0;
}


// ===== 560620 glitch::io::CBinaryAttribute::getType(void) =====
int __fastcall glitch::io::CBinaryAttribute::getType(glitch::io::CBinaryAttribute *this)
{
  return 25;
}


// ===== 560628 glitch::io::CBinaryAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CBinaryAttribute::getTypeString(glitch::io::CBinaryAttribute *this)
{
  return &unk_8DEEB8;
}


// ===== 560638 glitch::io::CTextureAttribute::getTexture(void) =====
_DWORD *__fastcall glitch::io::CTextureAttribute::getTexture(_DWORD *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 36);
  *this = v2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  return this;
}


// ===== 560654 glitch::io::CTextureAttribute::getBool(void) =====
bool __fastcall glitch::io::CTextureAttribute::getBool(glitch::io::CTextureAttribute *this)
{
  return *((_DWORD *)this + 9) != 0;
}


// ===== 560664 glitch::io::CTextureAttribute::setTexture(boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::io::CTextureAttribute::setTexture(int result, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r2

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  v3 = *(glitch::IReferenceCounted **)(result + 36);
  *(_DWORD *)(result + 36) = v2;
  if ( v3 )
    return glitch::IReferenceCounted::drop(v3);
  return result;
}


// ===== 560690 glitch::io::CTextureAttribute::getType(void) =====
int __fastcall glitch::io::CTextureAttribute::getType(glitch::io::CTextureAttribute *this)
{
  return 26;
}


// ===== 560698 glitch::io::CTextureAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CTextureAttribute::getTypeString(glitch::io::CTextureAttribute *this)
{
  return &unk_8DEED8;
}


// ===== 5606a8 glitch::io::CLightAttribute::getLight(void) =====
_DWORD *__fastcall glitch::io::CLightAttribute::getLight(_DWORD *this, int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(a2 + 36);
  *this = v2;
  if ( v2 )
    ++*v2;
  return this;
}


// ===== 5606c4 glitch::io::CLightAttribute::getBool(void) =====
bool __fastcall glitch::io::CLightAttribute::getBool(glitch::io::CLightAttribute *this)
{
  return *((_DWORD *)this + 9) != 0;
}


// ===== 5606d4 glitch::io::CLightAttribute::setString(char const*) =====
void __fastcall glitch::io::CLightAttribute::setString(glitch::io::CLightAttribute *this, const char *a2)
{
  ;
}


// ===== 5606d8 glitch::io::CLightAttribute::getType(void) =====
int __fastcall glitch::io::CLightAttribute::getType(glitch::io::CLightAttribute *this)
{
  return 27;
}


// ===== 5606e0 glitch::io::CLightAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CLightAttribute::getTypeString(glitch::io::CLightAttribute *this)
{
  return &unk_8DEEF8;
}


// ===== 5606f0 glitch::io::CStringWArrayAttribute::getType(void) =====
int __fastcall glitch::io::CStringWArrayAttribute::getType(glitch::io::CStringWArrayAttribute *this)
{
  return 22;
}


// ===== 5606f8 glitch::io::CStringWArrayAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CStringWArrayAttribute::getTypeString(glitch::io::CStringWArrayAttribute *this)
{
  return &unk_8DEF10;
}


// ===== 560708 glitch::io::CUserPointerAttribute::getInt(void) =====
int __fastcall glitch::io::CUserPointerAttribute::getInt(glitch::io::CUserPointerAttribute *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 560710 glitch::io::CUserPointerAttribute::getBool(void) =====
bool __fastcall glitch::io::CUserPointerAttribute::getBool(glitch::io::CUserPointerAttribute *this)
{
  return *((_DWORD *)this + 9) != 0;
}


// ===== 560720 glitch::io::CUserPointerAttribute::getType(void) =====
int __fastcall glitch::io::CUserPointerAttribute::getType(glitch::io::CUserPointerAttribute *this)
{
  return 28;
}


// ===== 560728 glitch::io::CUserPointerAttribute::setUserPointer(void *) =====
int __fastcall glitch::io::CUserPointerAttribute::setUserPointer(int this, void *a2)
{
  *(_DWORD *)(this + 36) = a2;
  return this;
}


// ===== 560730 glitch::io::CUserPointerAttribute::getUserPointer(void) =====
int __fastcall glitch::io::CUserPointerAttribute::getUserPointer(glitch::io::CUserPointerAttribute *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 560738 glitch::io::CUserPointerAttribute::getTypeString(void) =====
void *__fastcall glitch::io::CUserPointerAttribute::getTypeString(glitch::io::CUserPointerAttribute *this)
{
  return &unk_8DEF48;
}


// ===== 560748 glitch::io::IAttributes::~IAttributes() =====
void __fastcall glitch::io::IAttributes::~IAttributes(glitch::io::IAttributes *this)
{
  ;
}


// ===== 56074c glitch::io::CAttributes::getTexture(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getTexture(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 120))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *this = 0;
  }
  return this;
}


// ===== 560798 glitch::io::CAttributes::getLight(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getLight(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 124))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *this = 0;
  }
  return this;
}


// ===== 5607e4 glitch::io::CAttributes::getAttributeCount(void) =====
int __fastcall glitch::io::CAttributes::getAttributeCount(glitch::io::CAttributes *this)
{
  return (*(_DWORD *)(*((_DWORD *)this + 18) + 4) - **((_DWORD **)this + 18)) >> 2;
}


// ===== 5607fc glitch::io::CAttributes::getAttributeName(int) =====
int __fastcall glitch::io::CAttributes::getAttributeName(int this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3
  int v5; // r2

  v2 = *(int **)(this + 72);
  v3 = v2[1];
  v4 = *v2;
  v5 = v3 - v4;
  if ( a2 >= v5 >> 2 )
    this = 0;
  else
    v4 = *(_DWORD *)(v4 + 4 * a2);
  if ( a2 < v5 >> 2 )
    return *(_DWORD *)(v4 + 28);
  return this;
}


// ===== 560820 glitch::io::CAttributes::getAttributeType(int) =====
int __fastcall glitch::io::CAttributes::getAttributeType(glitch::io::CAttributes *this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3

  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 < (v3 - v4) >> 2 )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 260))(*(_DWORD *)(v4 + 4 * a2));
  else
    return 30;
}


// ===== 56085c glitch::io::CAttributes::getAttributeTypeString(int) =====
void *__fastcall glitch::io::CAttributes::getAttributeTypeString(glitch::io::CAttributes *this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3

  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 < (v3 - v4) >> 2 )
    return (void *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 264))(*(_DWORD *)(v4 + 4 * a2));
  else
    return &unk_8DEF78;
}


// ===== 5608a0 glitch::io::CAttributes::getBool(int) =====
int __fastcall glitch::io::CAttributes::getBool(glitch::io::CAttributes *this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3

  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 < (v3 - v4) >> 2 )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 40))(*(_DWORD *)(v4 + 4 * a2));
  else
    return 0;
}


// ===== 5608dc glitch::io::CAttributes::getInt(int) =====
int __fastcall glitch::io::CAttributes::getInt(glitch::io::CAttributes *this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3

  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 < (v3 - v4) >> 2 )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 12))(*(_DWORD *)(v4 + 4 * a2));
  else
    return 0;
}


// ===== 560918 glitch::io::CAttributes::getFloat(int) =====
int __fastcall glitch::io::CAttributes::getFloat(glitch::io::CAttributes *this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3

  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 < (v3 - v4) >> 2 )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 16))(*(_DWORD *)(v4 + 4 * a2));
  else
    return 0;
}


// ===== 560954 glitch::io::CAttributes::getColor(int) =====
int __fastcall glitch::io::CAttributes::getColor(glitch::io::CAttributes *this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3
  unsigned __int8 v5; // r3
  unsigned __int8 v6; // r12
  unsigned __int8 v7; // r1
  unsigned int v8; // r2
  unsigned int v10; // [sp+0h] [bp-14h]

  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 < (v3 - v4) >> 2 )
  {
    v10 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 24))(*(_DWORD *)(v4 + 4 * a2));
    v5 = v10;
    v8 = HIBYTE(v10);
    v7 = BYTE2(v10);
    v6 = BYTE1(v10);
  }
  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 0;
  }
  return v5 | (unsigned __int16)(v6 << 8) | (v7 << 16) & 0xFFFFFF | ((unsigned __int8)v8 << 24);
}


// ===== 5609e8 glitch::io::CAttributes::getColorf(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getColorf(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 20))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 2) = 0;
    *(this + 3) = 1065353216;
    *this = 0;
    *(this + 1) = 0;
  }
  return this;
}


// ===== 560a44 glitch::io::CAttributes::getVector2d(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getVector2d(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 76))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 1) = 0;
    *this = 0;
  }
  return this;
}


// ===== 560a94 glitch::io::CAttributes::getVector3d(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getVector3d(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 48))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 2) = 0;
    *this = 0;
    *(this + 1) = 0;
  }
  return this;
}


// ===== 560ae8 glitch::io::CAttributes::getVector4d(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getVector4d(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 52))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 3) = 0;
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
  return this;
}


// ===== 560b40 glitch::io::CAttributes::getVector2di(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getVector2di(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 80))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 1) = 0;
    *this = 0;
  }
  return this;
}


// ===== 560b90 glitch::io::CAttributes::getVector3di(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getVector3di(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 84))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 2) = 0;
    *this = 0;
    *(this + 1) = 0;
  }
  return this;
}


// ===== 560be4 glitch::io::CAttributes::getVector4di(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getVector4di(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 88))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 3) = 0;
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
  return this;
}


// ===== 560c3c glitch::io::CAttributes::getPosition2d(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getPosition2d(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 56))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 1) = 0;
    *this = 0;
  }
  return this;
}


// ===== 560c8c glitch::io::CAttributes::getRect(int) =====
_DWORD *__fastcall glitch::io::CAttributes::getRect(_DWORD *this, int a2, unsigned int a3)
{
  int *v3; // r3
  _DWORD *v4; // r4
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v4 = this;
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 60))(this, *(_DWORD *)(v6 + 4 * a3));
    return v4;
  }
  else
  {
    *(this + 3) = 0;
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
  return this;
}


// ===== 560ce4 glitch::io::CAttributes::getBinaryData(int,void *,int) =====
int __fastcall glitch::io::CAttributes::getBinaryData(glitch::io::CAttributes *this, unsigned int a2, void *a3, int a4)
{
  int result; // r0
  int *v5; // t0

  v5 = *((int **)this + 18);
  result = *v5;
  if ( a2 < (v5[1] - *v5) >> 2 )
    return (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(result + 4 * a2) + 44))(
             *(_DWORD *)(result + 4 * a2),
             a3,
             a4);
  return result;
}


// ===== 560d1c glitch::io::CAttributes::getEnum(int) =====
int __fastcall glitch::io::CAttributes::getEnum(glitch::io::CAttributes *this, unsigned int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3

  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 < (v3 - v4) >> 2 )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 128))(*(_DWORD *)(v4 + 4 * a2));
  else
    return 0;
}


// ===== 560d58 glitch::io::CAttributes::addEnum(char const*,int,char const* const*,bool) =====
int __fastcall glitch::io::CAttributes::addEnum(
        glitch::io::CAttributes *this,
        const char *a2,
        int a3,
        const char *const *a4,
        bool a5)
{
  int v7; // r0

  (*(void (__fastcall **)(glitch::io::CAttributes *, const char *, char *, const char *const *, bool))(*(_DWORD *)this + 240))(
    this,
    a2,
    "",
    a4,
    a5);
  v7 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 136))(v7, a3);
}


// ===== 560db0 glitch::io::CAttributes::setAttribute(int,char const*) =====
int __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, unsigned int a2, const char *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *((int **)this + 18);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, const char *))(**(_DWORD **)(v5 + 4 * a2) + 144))(
             *(_DWORD *)(v5 + 4 * a2),
             a3);
  return result;
}


// ===== 560de8 glitch::io::CAttributes::setAttribute(int,wchar_t const*) =====
int __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, unsigned int a2, const wchar_t *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *((int **)this + 18);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, const wchar_t *))(**(_DWORD **)(v5 + 4 * a2) + 148))(
             *(_DWORD *)(v5 + 4 * a2),
             a3);
  return result;
}


// ===== 560e20 glitch::io::CAttributes::setAttribute(int,bool) =====
int __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, unsigned int a2, bool a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *((int **)this + 18);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, bool))(**(_DWORD **)(v5 + 4 * a2) + 164))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 560e58 glitch::io::CAttributes::setAttribute(int,int) =====
int __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, unsigned int a2, int a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *((int **)this + 18);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v5 + 4 * a2) + 136))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 560e90 glitch::io::CAttributes::setAttribute(int,float) =====
int __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, unsigned int a2, float a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *((int **)this + 18);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v5 + 4 * a2) + 140))(
             *(_DWORD *)(v5 + 4 * a2),
             LODWORD(a3));
  return result;
}


// ===== 560ec8 glitch::io::CAttributes::setAttribute(int,glitch::video::SColor) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, int a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v5 + 4 * a2) + 160))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 560f0c glitch::io::CAttributes::setAttribute(int,glitch::video::SColorf) =====
int __fastcall glitch::io::CAttributes::setAttribute(int result, unsigned int a2, int a3, int a4, int a5, int a6)
{
  int *v6; // r3
  int v7; // r2
  int v8; // r3
  int varg_r2; // [sp+10h] [bp+4h]
  int varg_r3; // [sp+14h] [bp+8h]

  v6 = *(int **)(result + 72);
  v7 = v6[1];
  v8 = *v6;
  if ( a2 < (v7 - v8) >> 2 )
    return (*(int (__fastcall **)(_DWORD, int, int, int, int))(**(_DWORD **)(v8 + 4 * a2) + 156))(
             *(_DWORD *)(v8 + 4 * a2),
             varg_r2,
             varg_r3,
             a5,
             a6);
  return result;
}


// ===== 560f6c glitch::io::CAttributes::setAttribute(int,glitch::core::vector2d<float> const&) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, _DWORD *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0
  int v7; // r0
  int v8; // r12
  int (__fastcall *v9)(int, _DWORD *); // r3
  _DWORD v10[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
  {
    v7 = *(_DWORD *)(v5 + 4 * a2);
    v8 = a3[1];
    v9 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 172);
    v10[0] = *a3;
    v10[1] = v8;
    return v9(v7, v10);
  }
  return result;
}


// ===== 560fb8 glitch::io::CAttributes::setAttribute(int,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, int a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v5 + 4 * a2) + 176))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 560ff0 glitch::io::CAttributes::setAttribute(int,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, int a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v5 + 4 * a2) + 180))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 561028 glitch::io::CAttributes::setAttribute(int,glitch::core::vector2d<int> const&) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, _DWORD *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0
  int v7; // r0
  int v8; // r12
  int (__fastcall *v9)(int, _DWORD *); // r3
  _DWORD v10[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
  {
    v7 = *(_DWORD *)(v5 + 4 * a2);
    v8 = a3[1];
    v9 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 204);
    v10[0] = *a3;
    v10[1] = v8;
    return v9(v7, v10);
  }
  return result;
}


// ===== 56106c glitch::io::CAttributes::setAttribute(int,glitch::core::vector3d<int> const&) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, int a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v5 + 4 * a2) + 208))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 5610a4 glitch::io::CAttributes::setAttribute(int,glitch::core::vector4d<int> const&) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, int a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v5 + 4 * a2) + 212))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 5610dc glitch::io::CAttributes::setAttribute(int,glitch::core::position2d<int>) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, _DWORD *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0
  int v7; // r0
  int v8; // r12
  int (__fastcall *v9)(int, _DWORD *); // r3
  _DWORD v10[3]; // [sp+0h] [bp-Ch] BYREF

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
  {
    v7 = *(_DWORD *)(v5 + 4 * a2);
    v8 = a3[1];
    v9 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 184);
    v10[0] = *a3;
    v10[1] = v8;
    return v9(v7, v10);
  }
  return result;
}


// ===== 561120 glitch::io::CAttributes::setAttribute(int,glitch::core::rect<int>) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, int *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0
  int v7; // r0
  int v8; // lr
  int v9; // r1
  int v10; // r12
  int v11; // r2
  int (__fastcall *v12)(int, _DWORD *); // r3
  _DWORD v13[5]; // [sp+0h] [bp-14h] BYREF

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
  {
    v7 = *(_DWORD *)(v5 + 4 * a2);
    v8 = *a3;
    v9 = a3[3];
    v10 = a3[1];
    v11 = a3[2];
    v12 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 188);
    v13[3] = v9;
    v13[0] = v8;
    v13[1] = v10;
    v13[2] = v11;
    return v12(v7, v13);
  }
  return result;
}


// ===== 56117c glitch::io::CAttributes::setAttribute(int,void *,int) =====
int __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, unsigned int a2, void *a3, int a4)
{
  int result; // r0
  int *v5; // t0

  v5 = *((int **)this + 18);
  result = *v5;
  if ( a2 < (v5[1] - *v5) >> 2 )
    return (*(int (__fastcall **)(_DWORD, void *, int))(**(_DWORD **)(result + 4 * a2) + 168))(
             *(_DWORD *)(result + 4 * a2),
             a3,
             a4);
  return result;
}

