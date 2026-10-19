// ===== 604ed8 glitch::video::CImageLoaderJPG::output_message(jpeg_common_struct *) =====
int __fastcall glitch::video::CImageLoaderJPG::output_message(int a1)
{
  _BYTE v2[200]; // [sp+4h] [bp-D0h] BYREF

  (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)a1 + 12))(a1, v2);
  return glitch::os::Printer::log("JPEG FATAL ERROR", v2, 3);
}


// ===== 604f48 glitch::video::CImageLoaderJPG::error_exit(jpeg_common_struct *) =====
void __fastcall __noreturn glitch::video::CImageLoaderJPG::error_exit(int a1)
{
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 8))(a1);
  longjmp((struct __jmp_buf_tag *)(*(_DWORD *)a1 + 132), 1);
}


// ===== 604f6c glitch::video::CImageLoaderJPG::isALoadableFileExtension(char const*) =====
bool __fastcall glitch::video::CImageLoaderJPG::isALoadableFileExtension(
        glitch::video::CImageLoaderJPG *this,
        const char *a2)
{
  return LC_API_STRSTR_0(a2, ".jpg") || LC_API_STRSTR_0(a2, ".JPG") != nullptr;
}


// ===== 604fb8 glitch::video::CImageLoaderJPG::~CImageLoaderJPG() =====
void __fastcall glitch::video::CImageLoaderJPG::~CImageLoaderJPG(glitch::video::CImageLoaderJPG *this)
{
  glitch::video::CImageLoaderJPG::~CImageLoaderJPG(this);
  LC_API_FREE_0(this);
}


// ===== 604fd4 glitch::video::CImageLoaderPng::~CImageLoaderPng() =====
void __fastcall glitch::video::CImageLoaderPng::~CImageLoaderPng(glitch::video::CImageLoaderPng *this)
{
  ;
}


// ===== 604fd8 `global constructor keyed to'.._source_glitch_video_CImageLoaderPNG.cpp =====
void `global constructor keyed to'.._source_glitch_video_CImageLoaderPNG.cpp()
{
  dword_9F6C54 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6C50 = 1056964608;
}


// ===== 604ff8 glitch::video::CImageLoaderPng::~CImageLoaderPng() =====
void __fastcall glitch::video::CImageLoaderPng::~CImageLoaderPng(glitch::video::CImageLoaderPng *this)
{
  LC_API_FREE_0(this);
}


// ===== 60500c glitch::video::createImageLoaderPNG(void) =====
_DWORD *__fastcall glitch::video::createImageLoaderPNG(glitch::video *this)
{
  _DWORD *result; // r0

  result = operator new(8u, 0);
  result[1] = 1;
  *result = off_978390;
  return result;
}


// ===== 605048 glitch::video::CImageLoaderPng::isALoadableFileFormat(glitch::io::IReadFile *) =====
bool __fastcall glitch::video::CImageLoaderPng::isALoadableFileFormat(
        glitch::video::CImageLoaderPng *this,
        glitch::io::IReadFile *a2)
{
  _BYTE v3[8]; // [sp+4h] [bp-Ch] BYREF

  return a2
      && (*(int (__fastcall **)(glitch::io::IReadFile *, _BYTE *, int))(*(_DWORD *)a2 + 12))(a2, v3, 8) == 8
      && png_sig_cmp(v3, 0) == 0;
}


// ===== 6050dc glitch::video::CImageLoaderPng::loadImage(glitch::io::IReadFile *) =====
glitch::video::CImageLoaderPng *__fastcall glitch::video::CImageLoaderPng::loadImage(
        glitch::video::CImageLoaderPng *this,
        glitch::io::IReadFile *a2,
        int a3)
{
  glitch::video::CImageLoaderPng *v3; // r3
  int v4; // r0
  int v6; // r1
  bool v7; // zf
  bool v8; // zf
  unsigned int v9; // r4
  int v10; // r5
  int v11; // r3
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r0
  int v16; // r0
  glitch::IReferenceCounted *v19; // [sp+24h] [bp-44h]
  _DWORD *v20; // [sp+28h] [bp-40h]
  _DWORD v21[2]; // [sp+34h] [bp-34h] BYREF
  unsigned int v22; // [sp+3Ch] [bp-2Ch] BYREF
  int v23; // [sp+40h] [bp-28h] BYREF
  int v24; // [sp+44h] [bp-24h] BYREF
  int v25; // [sp+48h] [bp-20h] BYREF
  unsigned int v26; // [sp+4Ch] [bp-1Ch] BYREF
  int v27; // [sp+50h] [bp-18h] BYREF
  int info_struct; // [sp+54h] [bp-14h] BYREF
  struct __jmp_buf_tag *__attribute__((__org_typedef(jmp_buf))) env; // [sp+58h] [bp-10h] BYREF
  _BYTE v30[8]; // [sp+5Ch] [bp-Ch] BYREF

  v3 = (glitch::video::CImageLoaderPng *)_stack_chk_guard;
  if ( !a3 )
    v3 = this;
  if ( a3 )
  {
    if ( (*(int (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)a3 + 12))(a3, v30, 8) == 8 )
    {
      v6 = png_sig_cmp(v30, 0);
      if ( v6 )
      {
        v12 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a3 + 40))(a3, v6);
        glitch::os::Printer::log("LOAD PNG: not really a png\n", v12, 3);
        *(_DWORD *)this = 0;
        v19 = nullptr;
      }
      else
      {
        env = (struct __jmp_buf_tag *)png_create_read_struct(
                                        "1.2.32",
                                        0,
                                        glitch::video::`anonymous namespace'::png_cpexcept_error,
                                        0);
        if ( env )
        {
          info_struct = png_create_info_struct();
          if ( info_struct )
          {
            if ( setjmp(env) )
            {
              png_destroy_read_struct(&env, &info_struct, 0);
              *(_DWORD *)this = 0;
              v19 = nullptr;
            }
            else
            {
              png_set_read_fn(env, a3, glitch::video::user_read_data_fcn);
              png_set_sig_bytes(env, 8);
              png_read_info(env, info_struct);
              png_get_IHDR(env, info_struct, &v23, &v22, &v25, &v24, 0, 0, 0);
              v27 = v23;
              v26 = v22;
              if ( v24 == 3 )
                png_set_palette_to_rgb(env);
              if ( v25 <= 7 )
              {
                v7 = v24 == 0;
                if ( v24 )
                  v7 = v24 == 4;
                if ( v7 )
                  png_set_gray_1_2_4_to_8(env);
                else
                  png_set_packing(env);
              }
              if ( png_get_valid(env, info_struct, 16) )
                png_set_tRNS_to_alpha(env);
              if ( v25 == 16 )
                png_set_strip_16(env);
              v8 = v24 == 0;
              if ( v24 )
                v8 = v24 == 4;
              if ( v8 )
                png_set_gray_to_rgb(env);
              png_read_update_info(env, info_struct);
              v9 = 0;
              png_get_IHDR(env, info_struct, &v27, &v26, &v25, &v24, 0, 0, 0);
              if ( v24 == 6 )
                v10 = 14;
              else
                v10 = 10;
              png_get_IHDR(env, info_struct, &v27, &v26, &v25, &v24, 0, 0, 0);
              v21[0] = v27;
              v21[1] = v26;
              v19 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
              glitch::video::CImage::CImage((int)v19, v10, v21);
              if ( v19 )
              {
                ++*((_DWORD *)v19 + 1);
                v20 = operator new[](4 * v26, 0);
                if ( v20 )
                {
                  v11 = *((_DWORD *)v19 + 2);
                  if ( v26 )
                  {
                    do
                    {
                      v20[v9++] = v11;
                      v11 += *((_DWORD *)v19 + 6);
                    }
                    while ( v26 > v9 );
                  }
                  if ( setjmp(env) )
                  {
                    png_destroy_read_struct(&env, &info_struct, 0);
                    *(_DWORD *)this = 0;
                  }
                  else
                  {
                    png_read_image(env, v20);
                    png_read_end(env, 0);
                    png_destroy_read_struct(&env, &info_struct, 0);
                    *(_DWORD *)this = v19;
                    ++*((_DWORD *)v19 + 1);
                  }
                  operator delete[](v20);
                  goto LABEL_8;
                }
                v16 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
                glitch::os::Printer::log("LOAD PNG: Internal PNG create row pointers failure\n", v16, 3);
                png_destroy_read_struct(&env, 0, 0);
                *(_DWORD *)this = 0;
              }
              else
              {
                v15 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
                glitch::os::Printer::log("LOAD PNG: Internal PNG create image struct failure\n", v15, 3);
                png_destroy_read_struct(&env, 0, 0);
                *(_DWORD *)this = 0;
              }
            }
          }
          else
          {
            v14 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
            glitch::os::Printer::log("LOAD PNG: Internal PNG create info struct failure\n", v14, 3);
            png_destroy_read_struct(&env, 0, 0);
            v19 = nullptr;
            *(_DWORD *)this = 0;
          }
        }
        else
        {
          v13 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
          glitch::os::Printer::log("LOAD PNG: Internal PNG create read struct failure\n", v13, 3);
          v19 = nullptr;
          *(_DWORD *)this = 0;
        }
      }
    }
    else
    {
      v4 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
      glitch::os::Printer::log("LOAD PNG: can't read file\n", v4, 3);
      *(_DWORD *)this = 0;
      v19 = nullptr;
    }
    if ( !v19 )
      return this;
LABEL_8:
    glitch::IReferenceCounted::drop(v19);
    return this;
  }
  *(_DWORD *)v3 = 0;
  return this;
}


// ===== 60564c glitch::video::`anonymous namespace'::png_cpexcept_error(png_struct_def *,char const*) =====
void __fastcall __noreturn glitch::video::`anonymous namespace'::png_cpexcept_error(struct __jmp_buf_tag *a1, int a2)
{
  glitch::os::Printer::log("PNG FATAL ERROR", a2, 3);
  longjmp(a1, 1);
}


// ===== 605674 glitch::video::CImageLoaderPng::isALoadableFileExtension(char const*) =====
bool __fastcall glitch::video::CImageLoaderPng::isALoadableFileExtension(
        glitch::video::CImageLoaderPng *this,
        const char *a2)
{
  char *v2; // r0
  const char *v3; // r4

  v2 = strrchr(a2, 46);
  v3 = v2;
  if ( !v2 )
    return 0;
  if ( LC_API_STRCMP_0(v2, ".PNG") )
    return LC_API_STRCMP_0(v3, ".png") == 0;
  return 1;
}


// ===== 6056d4 glitch::video::user_read_data_fcn(png_struct_def *,uchar *,uint) =====
int __fastcall glitch::video::user_read_data_fcn(int a1, int a2, int a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 276) + 12))(*(_DWORD *)(a1 + 276));
  if ( result != a3 )
    return png_error(a1, "Read Error");
  return result;
}


// ===== 605718 glitch::video::CImageLoaderPVR::hasTextureLoadInterface(void) =====
int __fastcall glitch::video::CImageLoaderPVR::hasTextureLoadInterface(glitch::video::CImageLoaderPVR *this)
{
  return 1;
}


// ===== 605720 glitch::video::CImageLoaderPVR::CDataInfo::getFileDataSize(void) =====
int __fastcall glitch::video::CImageLoaderPVR::CDataInfo::getFileDataSize(
        glitch::video::CImageLoaderPVR::CDataInfo *this)
{
  return *((_DWORD *)this + 3);
}


// ===== 605728 glitch::video::CImageLoaderPVR::CDataInfo::getFilePitch(uchar) =====
int __fastcall glitch::video::CImageLoaderPVR::CDataInfo::getFilePitch(
        glitch::video::CImageLoaderPVR::CDataInfo *this,
        unsigned __int8 a2)
{
  return 0;
}


// ===== 605730 glitch::video::CImageLoaderPVR::CDataInfo::isLittleEndian(void) =====
int __fastcall glitch::video::CImageLoaderPVR::CDataInfo::isLittleEndian(
        glitch::video::CImageLoaderPVR::CDataInfo *this)
{
  return 1;
}


// ===== 605738 glitch::video::CImageLoaderPVR::CDataInfo::needsFlip(void) =====
int __fastcall glitch::video::CImageLoaderPVR::CDataInfo::needsFlip(glitch::video::CImageLoaderPVR::CDataInfo *this)
{
  return 0;
}


// ===== 605740 glitch::video::CImageLoaderPVR::CImageLoaderPVR(void) =====
_DWORD *__fastcall glitch::video::CImageLoaderPVR::CImageLoaderPVR(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_9783E0;
  return this;
}


// ===== 60576c glitch::video::CImageLoaderPVR::CImageLoaderPVR(void) =====
_DWORD *__fastcall glitch::video::CImageLoaderPVR::CImageLoaderPVR(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_9783E0;
  return this;
}


// ===== 605798 glitch::video::CImageLoaderPVR::~CImageLoaderPVR() =====
void __fastcall glitch::video::CImageLoaderPVR::~CImageLoaderPVR(glitch::video::CImageLoaderPVR *this)
{
  ;
}


// ===== 60579c glitch::video::CImageLoaderPVR::~CImageLoaderPVR() =====
void __fastcall glitch::video::CImageLoaderPVR::~CImageLoaderPVR(glitch::video::CImageLoaderPVR *this)
{
  ;
}


// ===== 6057a0 `global constructor keyed to'.._source_glitch_video_CImageLoaderPVR.cpp =====
void `global constructor keyed to'.._source_glitch_video_CImageLoaderPVR.cpp()
{
  dword_9F6C60 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6C5C = 1056964608;
}


// ===== 6057c0 glitch::video::createImageLoaderPVR(void) =====
_DWORD *__fastcall glitch::video::createImageLoaderPVR(glitch::video *this)
{
  _DWORD *v1; // r4

  v1 = operator new(8u, 0);
  glitch::video::CImageLoaderPVR::CImageLoaderPVR(v1);
  return v1;
}


// ===== 6057e0 glitch::video::CImageLoaderPVR::isALoadableFileFormat(glitch::io::IReadFile *) =====
bool __fastcall glitch::video::CImageLoaderPVR::isALoadableFileFormat(
        glitch::video::CImageLoaderPVR *this,
        glitch::io::IReadFile *a2)
{
  int v4; // r7
  int v5; // r6
  char v6[44]; // [sp+4h] [bp-38h] BYREF
  char v7[12]; // [sp+30h] [bp-Ch] BYREF

  if ( !a2 )
    return 0;
  v4 = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 36))(a2);
  v5 = (*(int (__fastcall **)(glitch::io::IReadFile *, char *, int))(*(_DWORD *)a2 + 12))(a2, v6, 52);
  (*(void (__fastcall **)(glitch::io::IReadFile *, int, _DWORD))(*(_DWORD *)a2 + 24))(a2, v4, 0);
  return v5 == 52 && *(_DWORD *)v6 == 52 && !LC_API_STRNCMP_0(v7, "PVR!", 4u)
      || LC_API_STRNCMP_0(v6, "BTEXpvr", 8u) == 0;
}


// ===== 6058a4 glitch::video::`anonymous namespace'::readPVRHeader(glitch::io::IReadFile *,glitch::video::`anonymous namespace'::SPVRHeader &,bool &) =====
int __fastcall glitch::video::`anonymous namespace'::readPVRHeader(int a1, char *a2, _BYTE *a3)
{
  int v6; // r0
  int v8; // r0
  unsigned int v9; // r3
  unsigned int v10; // r2
  unsigned int v11; // r3
  unsigned int v12; // r1
  unsigned int v13; // r3
  unsigned int v14; // r0
  unsigned int *v15; // r3
  const char *v16; // r0
  unsigned int v17; // [sp+0h] [bp-1Ch] BYREF
  unsigned int v18; // [sp+4h] [bp-18h] BYREF
  unsigned int v19; // [sp+8h] [bp-14h] BYREF
  char v20[8]; // [sp+Ch] [bp-10h] BYREF

  (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)a1 + 24))(a1, 0, 0);
  *a3 = 0;
  v20[7] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v20[6] = 0;
  (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)a1 + 12))(a1, v20, 8);
  if ( LC_API_STRNCMP_0(v20, "BTEXpvr", 8u) )
  {
    memcpy(a2, v20, 8u);
    if ( (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)a1 + 12))(a1, (_DWORD *)a2 + 2, 44) != 44 )
      return 0;
  }
  else
  {
    v6 = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)a1 + 12))(a1, a2, 52);
    *a3 = 1;
    if ( v6 != 52 )
      return 0;
  }
  if ( LC_API_STRNCMP_0(a2 + 44, "PVR!", 4u) )
    return 0;
  if ( *(_DWORD *)a2 != 52 )
    return 0;
  v8 = *((_DWORD *)a2 + 4);
  if ( (v8 & 0x100) != 0 && !*((_DWORD *)a2 + 3) )
    return 0;
  if ( (v8 & 0x1000) != 0 && *((_DWORD *)a2 + 12) != 6 )
    return 0;
  if ( (v8 & 0x100) == 0 )
    return 1;
  v9 = *((_DWORD *)a2 + 2);
  if ( v9 )
  {
    v10 = -1;
    do
    {
      v9 >>= 1;
      ++v10;
    }
    while ( v9 );
  }
  else
  {
    v10 = -1;
  }
  v11 = *((_DWORD *)a2 + 1);
  v19 = v10;
  if ( v11 )
  {
    v12 = -1;
    do
    {
      v11 >>= 1;
      ++v12;
    }
    while ( v11 );
  }
  else
  {
    v12 = -1;
  }
  v18 = v12;
  if ( (v8 & 0x4000) == 0 )
  {
    v13 = 1;
    goto LABEL_21;
  }
  v13 = *((_DWORD *)a2 + 12);
  if ( v13 )
  {
LABEL_21:
    v14 = -1;
    do
    {
      v13 >>= 1;
      ++v14;
    }
    while ( v13 );
    goto LABEL_23;
  }
  v14 = -1;
LABEL_23:
  if ( v12 <= v10 )
  {
    v15 = &v19;
  }
  else
  {
    v10 = v12;
    v15 = &v18;
  }
  if ( v10 < v14 )
    v15 = &v17;
  v17 = v14;
  if ( *v15 != *((_DWORD *)a2 + 3) )
  {
    v16 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 40))(a1);
    glitch::os::Printer::logf(3, "loading %s: incomplete mipmap chain not supported", v16);
    return 0;
  }
  return 1;
}


// ===== 605b10 glitch::video::CImageLoaderPVR::loadTextureHeader(glitch::io::IReadFile *,glitch::video::STextureDesc &) =====
int __fastcall glitch::video::CImageLoaderPVR::loadTextureHeader(int a1, int a2, int a3)
{
  int result; // r0
  char v6; // r3^1
  int v7; // r7
  int v8; // r1
  bool v9; // zf
  int v10; // r2
  int v11; // r0
  int v12; // r3
  __int16 v13; // r3
  int v14; // r2
  const char *v15; // r0
  const char *v16; // r0
  const char *v17; // r0
  int v18; // r2
  int v19; // r2
  int v20; // r2
  char v21[4]; // [sp+0h] [bp-3Ch] BYREF
  int v22; // [sp+4h] [bp-38h]
  int v23; // [sp+8h] [bp-34h]
  int v24; // [sp+10h] [bp-2Ch]
  int v25; // [sp+14h] [bp-28h]
  int v26; // [sp+30h] [bp-Ch]
  _BYTE v27[5]; // [sp+37h] [bp-5h] BYREF

  result = glitch::video::`anonymous namespace'::readPVRHeader(a2, v21, v27);
  if ( result )
  {
    v6 = BYTE1(v24);
    v7 = v27[0];
    if ( (v24 & 0x1000) != 0 )
    {
      *(_DWORD *)a3 = 2;
    }
    else
    {
      v14 = v24 & 0x4000;
      if ( (v24 & 0x4000) != 0 )
        v14 = 1;
      *(_DWORD *)a3 = v14;
    }
    v8 = v23;
    v9 = *(_DWORD *)a3 == 1;
    *(_DWORD *)(a3 + 20) = v22;
    *(_DWORD *)(a3 + 8) = 0;
    *(_DWORD *)(a3 + 16) = v8;
    if ( v9 )
      v10 = v26;
    else
      v10 = 1;
    *(_DWORD *)(a3 + 24) = v10;
    *(_BYTE *)(a3 + 28) = v6 & 1;
    v11 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 32))(a2);
    if ( v7 )
      v7 = 8;
    if ( *(_DWORD *)a3 == 2 )
      v12 = 6;
    else
      v12 = 1;
    if ( v11 - 52 - v7 == v25 * v12 )
    {
      v13 = v24;
      switch ( (char)v24 )
      {
        case 0:
          *(_DWORD *)(a3 + 4) = 6;
          goto LABEL_21;
        case 1:
          *(_DWORD *)(a3 + 4) = 8;
          goto LABEL_21;
        case 2:
        case 19:
          *(_DWORD *)(a3 + 4) = 5;
          goto LABEL_21;
        case 4:
        case 21:
          *(_DWORD *)(a3 + 4) = 10;
          goto LABEL_21;
        case 5:
        case 26:
          *(_DWORD *)(a3 + 4) = 13;
          goto LABEL_21;
        case 7:
        case 22:
          *(_DWORD *)(a3 + 4) = 0;
          goto LABEL_21;
        case 8:
        case 23:
          *(_DWORD *)(a3 + 4) = 4;
          goto LABEL_21;
        case 12:
        case 24:
          if ( (v24 & 0x8000) != 0 )
            v18 = 25;
          else
            v18 = 24;
          *(_DWORD *)(a3 + 4) = v18;
          goto LABEL_21;
        case 13:
        case 25:
          if ( (v24 & 0x8000) != 0 )
            v19 = 27;
          else
            v19 = 26;
          *(_DWORD *)(a3 + 4) = v19;
          goto LABEL_21;
        case 16:
          *(_DWORD *)(a3 + 4) = 7;
          goto LABEL_21;
        case 17:
          *(_DWORD *)(a3 + 4) = 9;
          goto LABEL_21;
        case 18:
          *(_DWORD *)(a3 + 4) = 14;
          goto LABEL_21;
        case 32:
          if ( (v24 & 0x8000) != 0 )
            v20 = 18;
          else
            v20 = 17;
          *(_DWORD *)(a3 + 4) = v20;
          goto LABEL_21;
        case 33:
        case 34:
          *(_DWORD *)(a3 + 4) = 19;
          goto LABEL_21;
        case 35:
        case 36:
          *(_DWORD *)(a3 + 4) = 20;
          goto LABEL_21;
        case 42:
          *(_DWORD *)(a3 + 4) = 16;
          goto LABEL_21;
        case 57:
          *(_DWORD *)(a3 + 4) = 2;
          goto LABEL_21;
        case 59:
          *(_DWORD *)(a3 + 4) = 1;
          goto LABEL_21;
        case 80:
          *(_DWORD *)(a3 + 4) = 31;
          goto LABEL_21;
        case 83:
          *(_DWORD *)(a3 + 4) = 30;
          goto LABEL_21;
        case 86:
          *(_DWORD *)(a3 + 4) = 29;
LABEL_21:
          if ( (v13 & 0x200) == 0
            || (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * *(_DWORD *)(a3 + 4)] & 8) != 0 )
          {
            result = 1;
          }
          else
          {
            v16 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 40))(a2);
            glitch::os::Printer::logf(3, "loading %s: twiddled format not supported", v16);
            result = 0;
          }
          break;
        default:
          v17 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 40))(a2);
          glitch::os::Printer::logf(3, "loading %s: pixel format %0x02u not supported", v17, (unsigned __int8)v24);
          result = 0;
          break;
      }
    }
    else
    {
      v15 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 40))(a2);
      glitch::os::Printer::logf(3, "loading %s: file size mismatches header info", v15);
      return 0;
    }
  }
  return result;
}


// ===== 605f30 glitch::video::CImageLoaderPVR::~CImageLoaderPVR() =====
void __fastcall glitch::video::CImageLoaderPVR::~CImageLoaderPVR(glitch::video::CImageLoaderPVR *this)
{
  glitch::video::CImageLoaderPVR::~CImageLoaderPVR(this);
  LC_API_FREE_0(this);
}


// ===== 605f4c glitch::video::CImageLoaderPVR::CDataInfo::~CDataInfo() =====
void __fastcall glitch::video::CImageLoaderPVR::CDataInfo::~CDataInfo(glitch::video::CImageLoaderPVR::CDataInfo *this)
{
  *(_DWORD *)this = off_9783C0;
  glitch::video::IImageLoader::IDataInfo::~IDataInfo(this);
}


// ===== 605f80 glitch::video::CImageLoaderPVR::loadImage(glitch::io::IReadFile *) =====
glitch::video::CImageLoaderPVR *__fastcall glitch::video::CImageLoaderPVR::loadImage(
        glitch::video::CImageLoaderPVR *this,
        glitch::io::IReadFile *a2,
        int a3)
{
  void *v6; // r6
  int v7; // r0
  int v8; // r0
  int v9; // r7
  glitch::IReferenceCounted *v10; // r5
  char v11[4]; // [sp+10h] [bp-44h] BYREF
  int v12; // [sp+14h] [bp-40h]
  int v13; // [sp+18h] [bp-3Ch]
  int v14; // [sp+1Ch] [bp-38h]
  int v15; // [sp+20h] [bp-34h]
  size_t v16; // [sp+24h] [bp-30h]
  _DWORD v17[2]; // [sp+44h] [bp-10h] BYREF
  _BYTE v18[5]; // [sp+4Fh] [bp-5h] BYREF

  if ( glitch::video::`anonymous namespace'::readPVRHeader(a3, v11, v18) )
  {
    v6 = operator new[](v16, 0);
    v7 = (*(int (__fastcall **)(int, void *, size_t))(*(_DWORD *)a3 + 12))(a3, v6, v16);
    if ( v7 == v16 )
    {
      switch ( (char)v15 )
      {
        case 1:
          v9 = 8;
          goto LABEL_12;
        case 16:
          v9 = 7;
          goto LABEL_12;
        case 17:
          v9 = 9;
          goto LABEL_12;
        case 18:
          v9 = 14;
          goto LABEL_12;
        case 19:
          v9 = 5;
          goto LABEL_12;
        case 21:
          v9 = 10;
          goto LABEL_12;
        case 22:
          v9 = 0;
          goto LABEL_12;
        case 23:
          v9 = 4;
          goto LABEL_12;
        case 24:
          if ( (v15 & 0x8000) != 0 )
            v9 = 25;
          else
            v9 = 24;
          goto LABEL_12;
        case 25:
          if ( (v15 & 0x8000) != 0 )
            v9 = 27;
          else
            v9 = 26;
LABEL_12:
          v17[0] = v13;
          v17[1] = v12;
          v10 = (glitch::IReferenceCounted *)operator new(0x2Cu, 0);
          glitch::video::CImage::CImage((int)v10, v9, v17, v6, v16, v14, 1, 1);
          if ( v10 )
          {
            v6 = nullptr;
            ++*((_DWORD *)v10 + 1);
            *(_DWORD *)this = v10;
            ++*((_DWORD *)v10 + 1);
            glitch::IReferenceCounted::drop(v10);
          }
          else
          {
            *(_DWORD *)this = 0;
            v6 = nullptr;
          }
          break;
        default:
          glitch::os::Printer::log("PVR loader", "unsupported format", 3);
          *(_DWORD *)this = 0;
          break;
      }
    }
    else
    {
      v8 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
      glitch::os::Printer::log("corrupt PVR file", v8, 3);
      *(_DWORD *)this = 0;
    }
    LC_API_FREE_0(v6);
  }
  else
  {
    *(_DWORD *)this = 0;
  }
  return this;
}


// ===== 6061b4 glitch::video::CImageLoaderPVR::isALoadableFileExtension(char const*) =====
bool __fastcall glitch::video::CImageLoaderPVR::isALoadableFileExtension(
        glitch::video::CImageLoaderPVR *this,
        const char *a2)
{
  return LC_API_STRSTR_0(a2, ".pvr") || LC_API_STRSTR_0(a2, ".btex") != nullptr;
}


// ===== 606200 glitch::video::CImageLoaderPVR::CDataInfo::~CDataInfo() =====
void __fastcall glitch::video::CImageLoaderPVR::CDataInfo::~CDataInfo(glitch::video::CImageLoaderPVR::CDataInfo *this)
{
  *(_DWORD *)this = off_9783C0;
  glitch::video::IImageLoader::IDataInfo::~IDataInfo(this);
  LC_API_FREE_0(this);
}


// ===== 60623c glitch::video::CImageLoaderPVR::loadTextureData(glitch::io::IReadFile *,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::video::STextureDesc const&) =====
int __fastcall glitch::video::CImageLoaderPVR::loadTextureData(int a1, int a2, int a3, int a4)
{
  int Data; // r4
  int v8; // r0
  int v9; // r3
  int v10; // r0
  char v12[52]; // [sp+0h] [bp-4Ch] BYREF
  _DWORD v13[4]; // [sp+34h] [bp-18h] BYREF
  _BYTE v14[5]; // [sp+47h] [bp-5h] BYREF

  if ( !glitch::video::`anonymous namespace'::readPVRHeader(a2, v12, v14) )
    return 0;
  v8 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 32))(a2);
  v9 = v14[0];
  v10 = v8 - 52;
  if ( v14[0] )
    v9 = 8;
  v13[1] = v12;
  v13[3] = v10 - v9;
  v13[0] = off_9783C0;
  v13[2] = a4;
  Data = glitch::video::IImageLoader::loadData(a2, v13, a4, a3);
  v13[0] = off_9783C0;
  glitch::video::IImageLoader::IDataInfo::~IDataInfo((glitch::video::IImageLoader::IDataInfo *)v13);
  return Data;
}


// ===== 6062f4 glitch::video::CImageLoaderTGA::~CImageLoaderTGA() =====
void __fastcall glitch::video::CImageLoaderTGA::~CImageLoaderTGA(glitch::video::CImageLoaderTGA *this)
{
  ;
}


// ===== 6062f8 `global constructor keyed to'.._source_glitch_video_CImageLoaderTGA.cpp =====
void `global constructor keyed to'.._source_glitch_video_CImageLoaderTGA.cpp()
{
  dword_9F6C6C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6C68 = 1056964608;
}


// ===== 606318 glitch::video::CImageLoaderTGA::~CImageLoaderTGA() =====
void __fastcall glitch::video::CImageLoaderTGA::~CImageLoaderTGA(glitch::video::CImageLoaderTGA *this)
{
  LC_API_FREE_0(this);
}


// ===== 60632c glitch::video::createImageLoaderTGA(void) =====
_DWORD *__fastcall glitch::video::createImageLoaderTGA(glitch::video *this)
{
  _DWORD *result; // r0

  result = operator new(8u, 0);
  result[1] = 1;
  *result = off_978410;
  return result;
}


// ===== 606368 glitch::video::CImageLoaderTGA::loadImage(glitch::io::IReadFile *) =====
glitch::video::CImageLoaderTGA *__fastcall glitch::video::CImageLoaderTGA::loadImage(
        glitch::video::CImageLoaderTGA *this,
        glitch::io::IReadFile *a2,
        int a3)
{
  int v4; // r3
  int v5; // r0
  bool v7; // zf
  int v8; // r7
  glitch::IReferenceCounted *v9; // r5
  int v10; // r6
  signed int v11; // r10
  char *v12; // r4
  char v13; // r11
  char v14; // r3
  int v15; // r3
  int v16; // r0
  char *v17; // r0
  char *v18; // r1
  int v19; // r12
  int v20; // r3
  bool v21; // zf
  int v22; // r0
  void *v23; // [sp+1Ch] [bp-38h]
  int v25; // [sp+24h] [bp-30h]
  int v26; // [sp+28h] [bp-2Ch]
  char *v27; // [sp+2Ch] [bp-28h]
  _BYTE v28[2]; // [sp+30h] [bp-24h] BYREF
  char v29; // [sp+32h] [bp-22h]
  unsigned int v30; // [sp+34h] [bp-20h]
  unsigned __int16 v31; // [sp+3Ch] [bp-18h]
  unsigned __int16 v32; // [sp+3Eh] [bp-16h]
  unsigned __int8 v33; // [sp+40h] [bp-14h]
  unsigned __int8 v34; // [sp+41h] [bp-13h]
  _DWORD v35[2]; // [sp+44h] [bp-10h] BYREF
  _BYTE v36[5]; // [sp+4Fh] [bp-5h] BYREF

  (*(void (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)a3 + 12))(a3, v28, 18);
  if ( v28[0] )
    (*(void (__fastcall **)(int))(*(_DWORD *)a3 + 24))(a3);
  if ( !v28[1] )
  {
    v23 = nullptr;
    v4 = v33;
    if ( v33 != 24 )
      goto LABEL_7;
LABEL_41:
    v21 = v29 == 10;
    if ( v29 != 10 )
      v21 = v29 == 2;
    v25 = 10;
    v26 = 11;
    v8 = !v21;
    if ( v21 )
      goto LABEL_19;
LABEL_47:
    v22 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
    glitch::os::Printer::log("Unsupported TGA file type", v22, 3);
    *(_DWORD *)this = 0;
    goto LABEL_10;
  }
  v23 = operator new[]((unsigned __int16)(v30 >> 8) * (HIBYTE(v30) >> 3), 0);
  (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)a3 + 12))(
    a3,
    v23,
    (unsigned __int16)(v30 >> 8) * (HIBYTE(v30) >> 3));
  v4 = v33;
  if ( v33 == 24 )
    goto LABEL_41;
LABEL_7:
  if ( v4 == 32 )
  {
    v25 = 13;
    v26 = 13;
  }
  else
  {
    if ( v4 != 16 )
    {
      v5 = (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 40))(a3);
      glitch::os::Printer::log("Unsupported TGA format", v5, 3);
      *(_DWORD *)this = 0;
      goto LABEL_10;
    }
    v25 = 8;
    v26 = 8;
  }
  v7 = v29 == 10;
  if ( v29 != 10 )
    v7 = v29 == 2;
  if ( !v7 )
    goto LABEL_47;
  v8 = 0;
LABEL_19:
  v35[0] = v31;
  v35[1] = v32;
  v9 = (glitch::IReferenceCounted *)operator new(0x2Cu, v8);
  glitch::video::CImage::CImage((int)v9, v25, v35);
  if ( !v9 )
  {
    *(_DWORD *)this = 0;
    goto LABEL_10;
  }
  v27 = *((char **)v9 + 2);
  ++*((_DWORD *)v9 + 1);
  if ( v29 == 2 )
  {
    (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)a3 + 12))(a3, v27, v33 * v32 * v31 / 8);
    glitch::video::pixel_format::convert(v26, v27, v8, v25, v27, v8, v31, v32, ((v34 ^ 0x20) & 0x20) != 0);
  }
  else
  {
    v10 = v33 >> 3;
    v11 = v10 * v32 * v31;
    v12 = (char *)operator new[](v11, v8);
    if ( v11 > 0 )
    {
      v13 = v8;
      do
      {
        while ( 1 )
        {
          v36[0] = v13;
          (*(void (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)a3 + 12))(a3, v36, 1);
          v14 = v36[0];
          if ( (v36[0] & 0x80) != 0 )
            break;
          ++v36[0];
          (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)a3 + 12))(
            a3,
            &v12[v8],
            v10 * (unsigned __int8)(v14 + 1));
          v8 += v36[0] * v10;
LABEL_25:
          if ( v11 <= v8 )
            goto LABEL_37;
        }
        v36[0] -= 127;
        (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)a3 + 12))(a3, &v12[v8], v10);
        v15 = v36[0];
        v16 = v8;
        v8 += v10;
        if ( v36[0] <= 1u )
          goto LABEL_25;
        v17 = &v12[v16];
        v18 = &v12[v8];
        v19 = 1;
        do
        {
          if ( v10 )
          {
            v20 = 0;
            do
            {
              v18[v20] = v17[v20];
              ++v20;
            }
            while ( v10 > v20 );
            v15 = v36[0];
          }
          ++v19;
          v8 += v10;
          v18 += v10;
        }
        while ( v19 < v15 );
      }
      while ( v11 > v8 );
    }
LABEL_37:
    glitch::video::pixel_format::convert(v26, v12, 0, v25, v27, 0, v31, v32, ((v34 ^ 0x20) & 0x20) != 0);
    if ( v12 )
      operator delete[](v12);
  }
  *(_DWORD *)this = v9;
  ++*((_DWORD *)v9 + 1);
  glitch::IReferenceCounted::drop(v9);
LABEL_10:
  if ( v23 )
    operator delete[](v23);
  return this;
}


// ===== 606778 glitch::video::CImageLoaderTGA::isALoadableFileFormat(glitch::io::IReadFile *) =====
bool __fastcall glitch::video::CImageLoaderTGA::isALoadableFileFormat(
        glitch::video::CImageLoaderTGA *this,
        glitch::io::IReadFile *a2)
{
  void (__fastcall *v4)(glitch::io::IReadFile *, int, _DWORD); // r8
  int v5; // r0
  _DWORD v6[2]; // [sp+0h] [bp-24h] BYREF
  _DWORD v7[4]; // [sp+8h] [bp-1Ch] BYREF
  __int16 v8; // [sp+18h] [bp-Ch]

  if ( !a2 || (unsigned int)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 32))(a2) <= 0x19 )
    return 0;
  memset(v7, 0, sizeof(v7));
  v6[0] = 0;
  v6[1] = 0;
  v8 = 0;
  v4 = *(void (__fastcall **)(glitch::io::IReadFile *, int, _DWORD))(*(_DWORD *)a2 + 24);
  v5 = (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 32))(a2);
  v4(a2, v5 - 26, 0);
  (*(void (__fastcall **)(glitch::io::IReadFile *, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v6, 26);
  return LC_API_STRCMP_0((const char *)v7, "TRUEVISION-XFILE.") == 0;
}


// ===== 60686c glitch::video::CImageLoaderTGA::isALoadableFileExtension(char const*) =====
bool __fastcall glitch::video::CImageLoaderTGA::isALoadableFileExtension(
        glitch::video::CImageLoaderTGA *this,
        const char *a2)
{
  return LC_API_STRSTR_0(a2, ".tga") || LC_API_STRSTR_0(a2, ".TGA") != nullptr;
}


// ===== 6068b8 glitch::video::`anonymous namespace'::jpeg_init_destination(jpeg_compress_struct *) =====
int __fastcall glitch::video::`anonymous namespace'::jpeg_init_destination(int result)
{
  _DWORD *v1; // r3

  v1 = *(_DWORD **)(result + 24);
  v1[1] = 4096;
  *v1 = v1 + 6;
  return result;
}


// ===== 6068d0 glitch::video::`anonymous namespace'::jpeg_empty_output_buffer(jpeg_compress_struct *) =====
int __fastcall glitch::video::`anonymous namespace'::jpeg_empty_output_buffer(_DWORD *a1)
{
  int v1; // r4

  v1 = a1[6];
  if ( (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 20) + 12))(*(_DWORD *)(v1 + 20), v1 + 24, 4096) != 4096 )
  {
    *(_DWORD *)(*a1 + 20) = 37;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  *(_DWORD *)(v1 + 4) = 4096;
  *(_DWORD *)v1 = v1 + 24;
  return 1;
}


// ===== 606934 glitch::video::`anonymous namespace'::jpeg_term_destination(jpeg_compress_struct *) =====
int __fastcall glitch::video::`anonymous namespace'::jpeg_term_destination(_DWORD *a1)
{
  int v1; // r1
  int v3; // r5
  int result; // r0

  v1 = a1[6];
  v3 = 4096 - *(_DWORD *)(v1 + 4);
  result = (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v1 + 20) + 12))(*(_DWORD *)(v1 + 20), v1 + 24, v3);
  if ( v3 != result )
  {
    *(_DWORD *)(*a1 + 20) = 37;
    return (*(int (__fastcall **)(_DWORD *))*a1)(a1);
  }
  return result;
}


// ===== 60698c glitch::video::IImageWriter::~IImageWriter() =====
void __fastcall glitch::video::IImageWriter::~IImageWriter(glitch::video::IImageWriter *this)
{
  ;
}


// ===== 606990 glitch::video::CImageWriterJPG::CImageWriterJPG(void) =====
_DWORD *__fastcall glitch::video::CImageWriterJPG::CImageWriterJPG(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_978460;
  return this;
}


// ===== 6069bc glitch::video::CImageWriterJPG::CImageWriterJPG(void) =====
_DWORD *__fastcall glitch::video::CImageWriterJPG::CImageWriterJPG(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_978460;
  return this;
}


// ===== 6069e8 glitch::video::CImageWriterJPG::~CImageWriterJPG() =====
void __fastcall glitch::video::CImageWriterJPG::~CImageWriterJPG(glitch::video::CImageWriterJPG *this)
{
  ;
}


// ===== 6069ec `global constructor keyed to'.._source_glitch_video_CImageWriterJPG.cpp =====
void `global constructor keyed to'.._source_glitch_video_CImageWriterJPG.cpp()
{
  dword_9F6C78 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6C74 = 1056964608;
}


// ===== 606a0c glitch::video::CImageWriterJPG::~CImageWriterJPG() =====
void __fastcall glitch::video::CImageWriterJPG::~CImageWriterJPG(glitch::video::CImageWriterJPG *this)
{
  LC_API_FREE_0(this);
}


// ===== 606a20 glitch::video::IImageWriter::~IImageWriter() =====
void __fastcall glitch::video::IImageWriter::~IImageWriter(glitch::video::IImageWriter *this)
{
  LC_API_FREE_0(this);
}


// ===== 606a34 glitch::video::CImageWriterJPG::writeImage(glitch::io::IWriteFile *,boost::intrusive_ptr<glitch::video::CImage> const&,uint) =====
char *__fastcall glitch::video::CImageWriterJPG::writeImage(int a1, int a2, int *a3, int a4)
{
  int v5; // r7
  int v6; // r9
  char *v9; // r11
  _DWORD *v11; // r1
  unsigned int v12; // r3
  int v13; // r1
  glitch::core *started; // r0
  bool v15; // r1
  int v16; // r1
  int v17; // r0
  int v18; // r3
  unsigned int v19; // r5
  char *i; // r4
  void *v21; // r1
  bool v22; // r1
  unsigned int v23; // [sp+18h] [bp-20Ch]
  char isProcessBufferHeapExcessEnabled; // [sp+20h] [bp-204h]
  int v25; // [sp+2Ch] [bp-1F8h] BYREF
  _DWORD v26[6]; // [sp+30h] [bp-1F4h] BYREF
  _DWORD *v27; // [sp+48h] [bp-1DCh]
  int v28; // [sp+4Ch] [bp-1D8h]
  unsigned int v29; // [sp+50h] [bp-1D4h]
  int v30; // [sp+54h] [bp-1D0h]
  int v31; // [sp+58h] [bp-1CCh]
  unsigned int v32; // [sp+100h] [bp-124h]
  _BYTE v33[132]; // [sp+198h] [bp-8Ch] BYREF

  v5 = *a3;
  v6 = *(_DWORD *)(*a3 + 32);
  if ( (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * v6] & 8) != 0 )
    return nullptr;
  v26[0] = jpeg_std_error(v33);
  jpeg_CreateCompress(v26);
  v11 = v27;
  if ( !v27 )
  {
    v11 = (_DWORD *)(*(int (__fastcall **)(_DWORD *, _DWORD, int))v26[1])(v26, 0, 4120);
    v27 = v11;
  }
  v11[2] = glitch::video::`anonymous namespace'::jpeg_init_destination;
  v11[3] = glitch::video::`anonymous namespace'::jpeg_empty_output_buffer;
  v11[5] = a2;
  v11[4] = glitch::video::`anonymous namespace'::jpeg_term_destination;
  v28 = *(_DWORD *)(v5 + 16);
  v12 = *(_DWORD *)(v5 + 20);
  v30 = 3;
  v29 = v12;
  v31 = 2;
  jpeg_set_defaults(v26);
  if ( a4 )
    v13 = a4;
  else
    v13 = 75;
  jpeg_set_quality(v26, v13, 1);
  started = (glitch::core *)jpeg_start_compress(v26, 1);
  v23 = 3 * *(_DWORD *)(v5 + 16);
  isProcessBufferHeapExcessEnabled = glitch::core::isProcessBufferHeapExcessEnabled(started);
  glitch::core::setProcessBufferHeapExcessEnabled((char)&dword_0 + 1, v15);
  v17 = glitch::core::allocProcessBuffer((glitch::core *)v23, v16);
  v9 = (char *)v17;
  if ( v17 )
  {
    v18 = *a3;
    v25 = v17;
    v19 = *(_DWORD *)(v18 + 24);
    for ( i = *(char **)(v18 + 8); v32 < v29; i += v19 )
    {
      glitch::video::pixel_format::convert(v6, i, v19, 10, v9, v23, *(_DWORD *)(v5 + 16), 1, 0);
      jpeg_write_scanlines(v26, &v25, 1);
    }
    jpeg_finish_compress(v26);
    jpeg_destroy_compress(v26);
    glitch::core::releaseProcessBuffer((glitch::core *)v9, v21);
    v9 = (_BYTE *)(&dword_0 + 1);
  }
  else
  {
    jpeg_destroy_compress(v26);
  }
  glitch::core::setProcessBufferHeapExcessEnabled(isProcessBufferHeapExcessEnabled, v22);
  return v9;
}


// ===== 606c78 glitch::video::CImageWriterJPG::isAWriteableFileExtension(char const*) =====
bool __fastcall glitch::video::CImageWriterJPG::isAWriteableFileExtension(
        glitch::video::CImageWriterJPG *this,
        const char *a2)
{
  char *v2; // r0
  const char *v3; // r4

  v2 = strrchr(a2, 46);
  v3 = v2;
  if ( !v2 )
    return 0;
  if ( LC_API_STRCMP_0(v2, ".jpg") && LC_API_STRCMP_0(v3, ".jpeg") && LC_API_STRCMP_0(v3, ".JPG") )
    return LC_API_STRCMP_0(v3, ".JPEG") == 0;
  return 1;
}


// ===== 606d10 glitch::video::createImageWriterJPG(void) =====
_DWORD *__fastcall glitch::video::createImageWriterJPG(glitch::video *this)
{
  _DWORD *v1; // r4

  v1 = operator new(8u, 0);
  glitch::video::CImageWriterJPG::CImageWriterJPG(v1);
  return v1;
}


// ===== 606d30 glitch::video::CImageWriterPNG::CImageWriterPNG(void) =====
_DWORD *__fastcall glitch::video::CImageWriterPNG::CImageWriterPNG(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_978480;
  return this;
}


// ===== 606d5c glitch::video::CImageWriterPNG::CImageWriterPNG(void) =====
_DWORD *__fastcall glitch::video::CImageWriterPNG::CImageWriterPNG(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_978480;
  return this;
}


// ===== 606d88 glitch::video::CImageWriterPNG::~CImageWriterPNG() =====
void __fastcall glitch::video::CImageWriterPNG::~CImageWriterPNG(glitch::video::CImageWriterPNG *this)
{
  ;
}


// ===== 606d8c `global constructor keyed to'.._source_glitch_video_CImageWriterPNG.cpp =====
void `global constructor keyed to'.._source_glitch_video_CImageWriterPNG.cpp()
{
  dword_9F6C84 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6C80 = 1056964608;
}


// ===== 606dac glitch::video::CImageWriterPNG::~CImageWriterPNG() =====
void __fastcall glitch::video::CImageWriterPNG::~CImageWriterPNG(glitch::video::CImageWriterPNG *this)
{
  LC_API_FREE_0(this);
}


// ===== 606dc0 glitch::video::CImageWriterPNG::writeImage(glitch::io::IWriteFile *,boost::intrusive_ptr<glitch::video::CImage> const&,uint) =====
struct __jmp_buf_tag *__fastcall glitch::video::CImageWriterPNG::writeImage(int a1, int a2, int *a3)
{
  struct __jmp_buf_tag *info_struct; // r4
  int v4; // r12
  int v5; // r2
  char *v6; // r4
  unsigned int v7; // r5
  int v8; // r0
  int v9; // r1
  int v10; // r3
  int v11; // r0
  size_t v12; // r0
  int v13; // lr
  int v14; // r3
  int v15; // r6
  int v16; // r2
  int v17; // r12
  int v19; // r2
  int v20; // r0
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v25; // [sp+20h] [bp-20h]
  int v26; // [sp+24h] [bp-1Ch]
  _DWORD *v27; // [sp+28h] [bp-18h]
  int v29; // [sp+30h] [bp-10h]
  char *v30; // [sp+34h] [bp-Ch]
  struct __jmp_buf_tag *v31; // [sp+38h] [bp-8h] BYREF
  struct __jmp_buf_tag *__attribute__((__org_typedef(jmp_buf))) env; // [sp+3Ch] [bp-4h] BYREF

  if ( !a2 || !*a3 )
    return nullptr;
  v26 = *(_DWORD *)(*a3 + 32);
  v29 = v26;
  v25 = *(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * v26];
  if ( (v25 & 0x3A) != 0 )
  {
    info_struct = nullptr;
    glitch::os::Printer::log("PGNWriter: can only handle fixed bit width RGB/L+A formats", 3);
  }
  else
  {
    info_struct = (struct __jmp_buf_tag *)png_create_write_struct(
                                            "1.2.32",
                                            0,
                                            glitch::video::`anonymous namespace'::png_cpexcept_error,
                                            0);
    env = info_struct;
    if ( info_struct )
    {
      info_struct = (struct __jmp_buf_tag *)png_create_info_struct();
      v31 = info_struct;
      if ( info_struct )
      {
        if ( setjmp(env) )
        {
          png_destroy_write_struct(&env, &v31);
          return nullptr;
        }
        else
        {
          png_set_write_fn(env, a2, glitch::video::user_write_data_fcn, 0);
          v5 = *a3;
          v6 = *(char **)(*a3 + 8);
          v7 = *(_DWORD *)(*a3 + 24);
          if ( (v25 & 0x40) != 0 )
          {
            v8 = *(_DWORD *)(v5 + 20);
            v9 = v25 & 1;
            v10 = *(_DWORD *)(v5 + 16);
            if ( (v25 & 1) != 0 )
              v4 = 14;
            else
              v5 = 10;
            v11 = v8 * v10;
            if ( (v25 & 1) != 0 )
            {
              v9 = 0;
              v12 = 4 * v11;
            }
            else
            {
              v12 = 3 * v11;
            }
            if ( (v25 & 1) != 0 )
              v26 = v4;
            else
              v26 = v5;
            v30 = (char *)operator new[](v12, v9);
            if ( !v30 )
            {
              v22 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 28))(a2);
              glitch::os::Printer::log("PNGWriter: Internal PNG create image failure\n", v22, 3);
              png_destroy_write_struct(&env, &v31);
              return nullptr;
            }
            v29 = v26;
            v7 = glitch::video::pixel_format::computePitch(v26, *(_DWORD *)(*a3 + 16));
            glitch::video::pixel_format::convert(
              *(_DWORD *)(*a3 + 32),
              v6,
              *(_DWORD *)(*a3 + 24),
              v26,
              v30,
              v7,
              *(_DWORD *)(*a3 + 16),
              *(_DWORD *)(*a3 + 20),
              0);
            v6 = v30;
            v5 = *a3;
            v25 = *(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * v26];
          }
          else
          {
            v30 = nullptr;
          }
          v13 = v25 & 1;
          if ( (v25 & 1) != 0 )
          {
            if ( (v25 & 4) != 0 )
              v13 = 4;
            else
              v13 = 6;
          }
          else if ( (v25 & 4) == 0 )
          {
            v13 = 2;
          }
          v14 = *(_DWORD *)(v5 + 20);
          v15 = 0;
          v16 = *(_DWORD *)(v5 + 16);
          if ( v26 == 1 )
            v17 = 16;
          else
            v17 = 8;
          png_set_IHDR(env, v31, v16, v14, v17, v13, 0, 0, 0);
          v27 = operator new[](4 * *(_DWORD *)(*a3 + 20), 0);
          if ( v27 )
          {
            if ( *(int *)(*a3 + 20) > 0 )
            {
              do
              {
                v27[v15++] = v6;
                v6 += v7;
              }
              while ( *(_DWORD *)(*a3 + 20) > v15 );
            }
            if ( setjmp(env) )
            {
              png_destroy_write_struct(&env, &v31);
              info_struct = nullptr;
            }
            else
            {
              png_set_rows(env, v31, v27);
              if ( (unsigned int)(v29 - 12) <= 1 )
                v19 = CSWTCH_4342[v29 - 12];
              else
                v19 = 0;
              png_write_png(env, v31, v19, 0);
              png_destroy_write_struct(&env, &v31);
              info_struct = (struct __jmp_buf_tag *)(&dword_0 + 1);
            }
            operator delete[](v27);
          }
          else
          {
            v23 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 28))(a2);
            glitch::os::Printer::log("PNGWriter: Internal PNG create row pointers failure\n", v23, 3);
            png_destroy_write_struct(&env, &v31);
            info_struct = nullptr;
          }
          if ( v30 )
            operator delete[](v30);
        }
      }
      else
      {
        v21 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 28))(a2);
        glitch::os::Printer::log("PNGWriter: Internal PNG create info struct failure\n", v21, 3);
        png_destroy_write_struct(&env, 0);
      }
    }
    else
    {
      v20 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 28))(a2);
      glitch::os::Printer::log("PNGWriter: Internal PNG create write struct failure\n", v20, 3);
    }
  }
  return info_struct;
}


// ===== 607208 glitch::video::`anonymous namespace'::png_cpexcept_error(png_struct_def *,char const*) =====
void __fastcall __noreturn glitch::video::`anonymous namespace'::png_cpexcept_error(struct __jmp_buf_tag *a1, int a2)
{
  glitch::os::Printer::log("PNG FATAL ERROR", a2, 3);
  longjmp(a1, 1);
}


// ===== 607230 glitch::video::CImageWriterPNG::isAWriteableFileExtension(char const*) =====
bool __fastcall glitch::video::CImageWriterPNG::isAWriteableFileExtension(
        glitch::video::CImageWriterPNG *this,
        const char *a2)
{
  return LC_API_STRSTR_0(a2, ".png") || LC_API_STRSTR_0(a2, ".PNG") != nullptr;
}


// ===== 60727c glitch::video::user_write_data_fcn(png_struct_def *,uchar *,uint) =====
int __fastcall glitch::video::user_write_data_fcn(int a1, int a2, int a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 276) + 12))(*(_DWORD *)(a1 + 276));
  if ( result != a3 )
    return png_error(a1, "Write Error");
  return result;
}


// ===== 6072c0 glitch::video::createImageWriterPNG(void) =====
_DWORD *__fastcall glitch::video::createImageWriterPNG(glitch::video *this)
{
  _DWORD *v1; // r4

  v1 = operator new(8u, 0);
  glitch::video::CImageWriterPNG::CImageWriterPNG(v1);
  return v1;
}


// ===== 6072e0 glitch::video::CImageWriterTGA::CImageWriterTGA(void) =====
_DWORD *__fastcall glitch::video::CImageWriterTGA::CImageWriterTGA(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_9784A0;
  return this;
}


// ===== 60730c glitch::video::CImageWriterTGA::CImageWriterTGA(void) =====
_DWORD *__fastcall glitch::video::CImageWriterTGA::CImageWriterTGA(_DWORD *this)
{
  *(this + 1) = 1;
  *this = off_9784A0;
  return this;
}


// ===== 607338 glitch::video::CImageWriterTGA::~CImageWriterTGA() =====
void __fastcall glitch::video::CImageWriterTGA::~CImageWriterTGA(glitch::video::CImageWriterTGA *this)
{
  ;
}


// ===== 60733c `global constructor keyed to'.._source_glitch_video_CImageWriterTGA.cpp =====
void `global constructor keyed to'.._source_glitch_video_CImageWriterTGA.cpp()
{
  dword_9F6C90 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6C8C = 1056964608;
}


// ===== 60735c glitch::video::CImageWriterTGA::~CImageWriterTGA() =====
void __fastcall glitch::video::CImageWriterTGA::~CImageWriterTGA(glitch::video::CImageWriterTGA *this)
{
  LC_API_FREE_0(this);
}


// ===== 607370 glitch::video::CImageWriterTGA::writeImage(glitch::io::IWriteFile *,boost::intrusive_ptr<glitch::video::CImage> const&,uint) =====
bool __fastcall glitch::video::CImageWriterTGA::writeImage(int a1, int a2, int *a3)
{
  int v4; // r2
  unsigned __int16 v6; // r12
  int v7; // r11
  int v8; // r2
  int v9; // r3
  bool v10; // zf
  _BOOL4 v11; // r4
  char *v13; // r7
  unsigned int v14; // r10
  glitch::core *v15; // r4
  bool v16; // r1
  int v17; // r1
  int v18; // r0
  unsigned int i; // r6
  char *v20; // r8
  void *v21; // r1
  int v22; // [sp+1Ch] [bp-48h]
  char isProcessBufferHeapExcessEnabled; // [sp+20h] [bp-44h]
  _BYTE v24[4]; // [sp+2Ch] [bp-38h] BYREF
  int v25; // [sp+30h] [bp-34h]
  char v26; // [sp+34h] [bp-30h]
  char v27; // [sp+35h] [bp-2Fh]
  char v28; // [sp+36h] [bp-2Eh]
  char v29; // [sp+37h] [bp-2Dh]
  unsigned __int16 v30; // [sp+38h] [bp-2Ch]
  unsigned __int16 v31; // [sp+3Ah] [bp-2Ah]
  char v32; // [sp+3Ch] [bp-28h]
  char v33; // [sp+3Dh] [bp-27h]
  _DWORD v34[2]; // [sp+40h] [bp-24h] BYREF
  char v35[20]; // [sp+48h] [bp-1Ch] BYREF

  LOBYTE(v25) = 0;
  v4 = *a3;
  v25 &= 0xFF0000FF;
  v24[2] = 2;
  v29 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v24[3] = 0;
  HIBYTE(v25) = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v30 = *(_WORD *)(v4 + 16);
  v6 = *(_WORD *)(v4 + 20);
  v33 = 32;
  v31 = v6;
  v7 = *(_DWORD *)(v4 + 32);
  v8 = 40;
  v9 = glitch::video::pixel_format::detail::PFDTable[40 * v7 + 22];
  if ( v9 == 16 )
  {
    v32 = 16;
    v33 = 33;
    v22 = 8;
  }
  else
  {
    v10 = v9 == 24;
    if ( v9 == 24 )
    {
      v32 = 24;
      v9 = 11;
    }
    else
    {
      v8 = 12;
    }
    if ( v10 )
      v22 = v9;
    else
      v22 = v8;
  }
  if ( (*(int (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)a2 + 12))(a2, v24, 18) != 18 )
    return 0;
  v13 = *(char **)(*a3 + 8);
  if ( !v13 )
    return 0;
  v14 = *(_DWORD *)(*a3 + 24);
  v15 = (glitch::core *)glitch::video::pixel_format::computePitch(v22, v30);
  isProcessBufferHeapExcessEnabled = glitch::core::isProcessBufferHeapExcessEnabled(v15);
  glitch::core::setProcessBufferHeapExcessEnabled((char)&dword_0 + 1, v16);
  v18 = glitch::core::allocProcessBuffer(v15, v17);
  i = v31;
  v20 = (char *)v18;
  if ( v31 )
  {
    for ( i = 0; i < v31; ++i )
    {
      glitch::video::pixel_format::convert(v7, v13, v14, v22, v20, (unsigned int)v15, v30, 1, 0);
      if ( v15 != (glitch::core *)(*(int (__fastcall **)(int, char *, glitch::core *))(*(_DWORD *)a2 + 12))(
                                    a2,
                                    v20,
                                    v15) )
        break;
      v13 += v14;
    }
  }
  v11 = 0;
  v34[0] = 0;
  v34[1] = 0;
  strcpy(v35, "TRUEVISION-XFILE.");
  if ( (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)a2 + 12))(a2, v34, 26) > 25 )
    v11 = v31 < i;
  if ( v20 )
    glitch::core::releaseProcessBuffer((glitch::core *)v20, v21);
  glitch::core::setProcessBufferHeapExcessEnabled(isProcessBufferHeapExcessEnabled, (bool)v21);
  return v11;
}


// ===== 6075e0 glitch::video::CImageWriterTGA::isAWriteableFileExtension(char const*) =====
bool __fastcall glitch::video::CImageWriterTGA::isAWriteableFileExtension(
        glitch::video::CImageWriterTGA *this,
        const char *a2)
{
  return LC_API_STRSTR_0(a2, ".tga") || LC_API_STRSTR_0(a2, ".TGA") != nullptr;
}


// ===== 60762c glitch::video::createImageWriterTGA(void) =====
_DWORD *__fastcall glitch::video::createImageWriterTGA(glitch::video *this)
{
  _DWORD *v1; // r4

  v1 = operator new(8u, 0);
  glitch::video::CImageWriterTGA::CImageWriterTGA(v1);
  return v1;
}


// ===== 60764c glitch::video::IImageLoader::IDataInfo::~IDataInfo() =====
void __fastcall glitch::video::IImageLoader::IDataInfo::~IDataInfo(glitch::video::IImageLoader::IDataInfo *this)
{
  ;
}


// ===== 607650 glitch::video::IImageLoader::IDataInfo::~IDataInfo() =====
void __fastcall glitch::video::IImageLoader::IDataInfo::~IDataInfo(glitch::video::IImageLoader::IDataInfo *this)
{
  ;
}


// ===== 607654 glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading(void) =====
int __fastcall glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading(int this)
{
  *(_BYTE *)(this + 34) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)this = off_9784C0;
  *(_BYTE *)(this + 33) = 1;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_BYTE *)(this + 32) = 0;
  return this;
}


// ===== 6076a8 glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading(void) =====
int __fastcall glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading(int this)
{
  *(_BYTE *)(this + 34) = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)this = off_9784C0;
  *(_BYTE *)(this + 33) = 1;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_BYTE *)(this + 32) = 0;
  return this;
}


// ===== 6076fc glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading() =====
void __fastcall glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(
        glitch::video::IImageLoader::ITextureDataLoading *this)
{
  ;
}


// ===== 607700 glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading() =====
void __fastcall glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(
        glitch::video::IImageLoader::ITextureDataLoading *this)
{
  ;
}


// ===== 607704 glitch::video::`anonymous namespace'::IMappedWholeLoading::~IMappedWholeLoading() =====
void __fastcall glitch::video::`anonymous namespace'::IMappedWholeLoading::~IMappedWholeLoading(
        glitch::video::_anonymous_namespace_::IMappedWholeLoading *this)
{
  *(_DWORD *)this = off_957518;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
}


// ===== 60772c glitch::video::`anonymous namespace'::CPerFaceLoading::~CPerFaceLoading() =====
void __fastcall glitch::video::`anonymous namespace'::CPerFaceLoading::~CPerFaceLoading(
        glitch::video::_anonymous_namespace_::CPerFaceLoading *this)
{
  *(_DWORD *)this = off_957518;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
}


// ===== 607754 glitch::video::`anonymous namespace'::CWholeLoading::~CWholeLoading() =====
void __fastcall glitch::video::`anonymous namespace'::CWholeLoading::~CWholeLoading(
        glitch::video::_anonymous_namespace_::CWholeLoading *this)
{
  *(_DWORD *)this = off_957518;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
}


// ===== 60777c glitch::video::`anonymous namespace'::CPerLevelRemapLoading::~CPerLevelRemapLoading() =====
void __fastcall glitch::video::`anonymous namespace'::CPerLevelRemapLoading::~CPerLevelRemapLoading(
        glitch::video::_anonymous_namespace_::CPerLevelRemapLoading *this)
{
  *(_DWORD *)this = off_957560;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
}


// ===== 6077a4 `global constructor keyed to'.._source_glitch_video_IImageLoader.cpp =====
void `global constructor keyed to'.._source_glitch_video_IImageLoader.cpp()
{
  dword_9F6C9C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6C98 = 1056964608;
}


// ===== 6077c4 glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(uchar) =====
unsigned int __fastcall glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(
        glitch::video::IImageLoader::ITextureDataLoading *this,
        unsigned __int8 a2)
{
  unsigned int result; // r0
  int v5; // r2
  int v6; // r5
  int v7; // r1

  result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 12))(*((_DWORD *)this + 2));
  if ( result )
  {
    *((_BYTE *)this + 34) = 0;
  }
  else
  {
    v5 = *((_DWORD *)this + 3);
    v6 = *(int *)(v5 + 16) >> a2;
    if ( v6 < 1 )
      v7 = 1;
    else
      v7 = v6;
    result = glitch::video::pixel_format::computePitch(*(_DWORD *)(v5 + 4), v7);
    *((_BYTE *)this + 34) = 1;
  }
  return result;
}


// ===== 607824 glitch::video::SMapTextureWrite::reset(boost::intrusive_ptr<glitch::video::ITexture> const&,uchar,glitch::video::E_TEXTURE_CUBE_MAP_FACE,glitch::video::E_BUFFER_MAP_ACCESS) =====
int __fastcall glitch::video::SMapTextureWrite::reset(int a1, int *a2, int a3, int a4, int a5)
{
  int v9; // r3
  glitch::IReferenceCounted *v10; // r0
  int result; // r0

  if ( *(_DWORD *)(a1 + 4) )
    glitch::video::ITexture::unmap(*(_BYTE **)a1);
  v9 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v9 + 4);
  v10 = *(glitch::IReferenceCounted **)a1;
  *(_DWORD *)a1 = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  result = *a2;
  if ( *a2 )
  {
    result = glitch::video::ITexture::map(result, a5, a4, a3);
    *(_DWORD *)(a1 + 4) = result;
  }
  return result;
}


// ===== 607898 glitch::video::IImageLoader::ITextureDataLoading::getSourceStep(uchar) =====
unsigned int __fastcall glitch::video::IImageLoader::ITextureDataLoading::getSourceStep(
        glitch::video::IImageLoader::ITextureDataLoading *this,
        char a2)
{
  int v2; // r2
  int v3; // r3
  int v4; // r0
  unsigned int v5; // r3
  int v6; // r0
  int v7; // r1
  int v8; // r0

  if ( *((_BYTE *)this + 34) )
    return glitch::video::pixel_format::computeMipmapSizeInBytes(
             *(_DWORD *)(*((_DWORD *)this + 3) + 4),
             *(_DWORD *)(*((_DWORD *)this + 3) + 16),
             *(_DWORD *)(*((_DWORD *)this + 3) + 20),
             *(_DWORD *)(*((_DWORD *)this + 3) + 24),
             a2,
             *(_DWORD *)(*((_DWORD *)this + 3) + 8) == 1);
  v2 = *((_DWORD *)this + 7);
  v3 = **((_DWORD **)this + 4);
  v4 = *(_DWORD *)(v3 + 36);
  v5 = *(_DWORD *)(v3 + 40);
  v6 = v4 >> a2;
  if ( v6 < 1 )
    v6 = 1;
  v7 = v5 >> a2;
  v8 = v2 * v6;
  if ( !v7 )
    v7 = 1;
  return v7 * v8;
}


// ===== 60791c glitch::video::`anonymous namespace'::IMappedWholeLoading::process(glitch::video::E_TEXTURE_CUBE_MAP_FACE,uchar) =====
int __fastcall glitch::video::`anonymous namespace'::IMappedWholeLoading::process(
        glitch::video::IImageLoader::ITextureDataLoading *this,
        int a2,
        int a3)
{
  bool v3; // zf
  int v6; // r2
  int *v7; // r3
  int v8; // r0
  int v9; // r1
  int v10; // r2
  bool v12; // zf
  int *v13; // r12

  v3 = a2 == 0;
  if ( a2 <= 0 )
    v3 = a3 == 0;
  if ( !v3 )
  {
    v6 = *((unsigned __int8 *)this + 33);
    v7 = *((int **)this + 4);
    v8 = *v7;
    if ( v6 == 1 )
    {
      v9 = *(_BYTE *)(v8 + 63) & 2;
      v12 = v9 == 0;
      if ( (*(_BYTE *)(v8 + 63) & 2) != 0 )
      {
        v13 = *(int **)(v8 + 48);
      }
      else
      {
        v13 = (int *)*(unsigned __int8 *)(v8 + 62);
        v6 = *(_DWORD *)(v8 + 48);
      }
      if ( (*(_BYTE *)(v8 + 63) & 2) != 0 )
      {
        v10 = *v13;
        v13 = (int *)v13[1];
        LOBYTE(v9) = 0;
      }
      else
      {
        v10 = *(_DWORD *)(v6 + 4 * (_DWORD)v13);
      }
      if ( !v12 )
        v10 = (int)v13 - v10;
    }
    else
    {
      if ( a3 )
        LOBYTE(v9) = a3 - 1;
      else
        LOBYTE(v9) = *(_BYTE *)(v8 + 62) - 1;
      v10 = *(_DWORD *)(*(_DWORD *)(v8 + 48) + 4 * ((unsigned __int8)v9 + 1))
          - *(_DWORD *)(*(_DWORD *)(v8 + 48) + 4 * (unsigned __int8)v9);
    }
    if ( a3 )
      *((_DWORD *)this + 6) += v10;
    else
      *((_DWORD *)this + 6) = v7[1] + ((*((_BYTE *)this + 20) - (unsigned __int8)v7[1] + 127 + (_BYTE)v10) & 0x7F);
    if ( v7[2] )
    {
      *((_DWORD *)this + 5) += glitch::video::IImageLoader::ITextureDataLoading::getSourceStep(this, v9);
      *((_DWORD *)this + 7) = glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(this, a3);
    }
    else
    {
      *((_DWORD *)this + 5) = *((_DWORD *)this + 6);
      *((_DWORD *)this + 7) = glitch::video::ITexture::getPitch((glitch::video::ITexture *)v8, a3);
    }
  }
  return 1;
}


// ===== 607a2c glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading() =====
void __fastcall glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(
        glitch::video::IImageLoader::ITextureDataLoading *this)
{
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
  LC_API_FREE_0(this);
}


// ===== 607a48 glitch::video::IImageLoader::IDataInfo::~IDataInfo() =====
void __fastcall glitch::video::IImageLoader::IDataInfo::~IDataInfo(glitch::video::IImageLoader::IDataInfo *this)
{
  glitch::video::IImageLoader::IDataInfo::~IDataInfo(this);
  LC_API_FREE_0(this);
}


// ===== 607a64 glitch::video::IImageLoader::ITextureDataLoading::load(glitch::io::IReadFile *,glitch::video::IImageLoader::IDataInfo const&,glitch::video::STextureDesc const&,glitch::video::`anonymous namespace'::SLoadInfo &) =====
int __fastcall glitch::video::IImageLoader::ITextureDataLoading::load(int a1, int a2, int a3, int a4, int *a5)
{
  int v6; // r2
  int v7; // r6
  int v9; // r3
  unsigned int v10; // r3
  unsigned int v11; // r10
  int v12; // r3
  int v13; // r8
  unsigned __int8 v14; // r5
  int v15; // r7
  unsigned __int8 v16; // r1
  int v17; // r3
  int v18; // r11
  int v19; // r7
  char *v20; // r9
  char v21; // r0
  int result; // r0
  int v23; // r2
  int v24; // r3
  int v25; // r2
  int v26; // r3
  int v27; // r1
  unsigned int v28; // r3
  int v29; // r0
  int v30; // [sp+18h] [bp-24h]
  int v31; // [sp+1Ch] [bp-20h]
  int v32; // [sp+20h] [bp-1Ch]
  unsigned int Pitch; // [sp+24h] [bp-18h]
  unsigned int v34; // [sp+28h] [bp-14h]
  char *v35; // [sp+2Ch] [bp-10h]
  int v36; // [sp+30h] [bp-Ch]
  int v37; // [sp+34h] [bp-8h]

  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 8) = a3;
  *(_DWORD *)(a1 + 12) = a4;
  *(_DWORD *)(a1 + 16) = a5;
  v6 = a5[1];
  v7 = *a5;
  *(_DWORD *)(a1 + 24) = v6;
  v9 = a5[2];
  if ( v9 )
  {
    *(_DWORD *)(a1 + 20) = v9;
    *(_DWORD *)(a1 + 28) = glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(
                             (glitch::video::IImageLoader::ITextureDataLoading *)a1,
                             0);
  }
  else
  {
    *(_DWORD *)(a1 + 20) = v6;
    *(_DWORD *)(a1 + 28) = glitch::video::pixel_format::computePitch(
                             (*(_DWORD *)(v7 + 56) >> 4) & 0x3F,
                             *(_DWORD *)(v7 + 32));
  }
  if ( *(_BYTE *)(a4 + 28) )
  {
    v10 = *(unsigned __int8 *)(v7 + 62);
    if ( v10 <= 1 )
    {
      v24 = *(_DWORD *)(v7 + 32);
      if ( v24 )
      {
        v25 = -1;
        do
        {
          v24 >>= 1;
          ++v25;
        }
        while ( v24 );
      }
      else
      {
        v25 = -1;
      }
      v26 = *(_DWORD *)(v7 + 36);
      if ( v26 )
      {
        v27 = -1;
        do
        {
          v26 >>= 1;
          ++v27;
        }
        while ( v26 );
      }
      else
      {
        v27 = -1;
      }
      v28 = *(_DWORD *)(v7 + 40);
      if ( v28 )
      {
        v29 = -1;
        do
        {
          v28 >>= 1;
          ++v29;
        }
        while ( v28 );
      }
      else
      {
        v29 = -1;
      }
      if ( v27 >= v25 )
        v25 = v27;
      if ( v25 < v29 )
        LOBYTE(v25) = v29;
      *(_BYTE *)(a1 + 33) = v25 + 1;
    }
    else
    {
      if ( (*(_BYTE *)(v7 + 63) & 2) != 0 )
        LOBYTE(v10) = 1;
      *(_BYTE *)(a1 + 33) = v10;
    }
  }
  if ( !(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 8))(a1) )
    return *(unsigned __int8 *)(a1 + 32) ^ 1;
  v11 = *(unsigned __int8 *)(a1 + 33);
  if ( v11 >= *(unsigned __int8 *)(v7 + 62) )
    v11 = *(unsigned __int8 *)(v7 + 62);
  if ( (*(_DWORD *)(v7 + 56) & 3) == 2 )
    v12 = 6;
  else
    v12 = 1;
  v37 = v12;
  v36 = 0;
  v13 = 0;
  while ( !v11 )
  {
LABEL_30:
    v23 = ++v36;
    if ( v36 >= v37 )
      return *(unsigned __int8 *)(a1 + 32) ^ 1;
    v13 = v23;
  }
  v14 = 0;
  v15 = 0;
  while ( 1 )
  {
    if ( (*(int (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 12))(a1, v13, v15) )
    {
      v16 = v15;
      if ( *(_BYTE *)(*(_DWORD *)(a1 + 16) + 12) )
      {
        v17 = *(int *)(v7 + 32) >> v14;
        v18 = *(int *)(v7 + 36) >> v14;
        if ( v17 < 1 )
          v17 = 1;
        if ( v18 < 1 )
          v18 = 1;
        v19 = *(_DWORD *)(v7 + 40) >> v14;
        v31 = v17;
        if ( !v19 )
          v19 = 1;
        v32 = (*(_DWORD *)(v7 + 56) >> 4) & 0x3F;
        v20 = *(char **)(a1 + 20);
        v34 = *(_DWORD *)(a1 + 28);
        v30 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 4);
        v35 = *(char **)(a1 + 24);
        Pitch = glitch::video::ITexture::getPitch((glitch::video::ITexture *)v7, v16);
        v21 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 8) + 20))(*(_DWORD *)(a1 + 8));
        result = glitch::video::pixel_format::convert(v30, v20, v34, v32, v35, Pitch, v31, v18 * v19, v21);
        if ( !result )
        {
          *(_BYTE *)(a1 + 32) = 1;
          return result;
        }
      }
    }
    v15 = ++v14;
    if ( *(_BYTE *)(a1 + 32) )
      return 0;
    if ( v11 <= v14 )
      goto LABEL_30;
  }
}


// ===== 607d1c glitch::video::IImageLoader::ITextureDataLoading::read(void *,uint) =====
int __fastcall glitch::video::IImageLoader::ITextureDataLoading::read(
        glitch::video::IImageLoader::ITextureDataLoading *this,
        _WORD *a2,
        unsigned int a3)
{
  unsigned int v6; // r7
  int v8; // r0
  int v9; // r5
  int v10; // r0
  int v11; // r3
  const char *v12; // r0

  v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1));
  if ( v6 == a3 )
  {
    if ( *(_BYTE *)(*((_DWORD *)this + 4) + 13) )
    {
      v8 = *((_DWORD *)this + 2);
      v9 = *(_DWORD *)(*((_DWORD *)this + 3) + 4);
      v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 16))(v8);
      glitch::video::pixel_format::swapBytes(v9, (int)a2, v6, v10, a2);
    }
    return 1;
  }
  else
  {
    v11 = *((_DWORD *)this + 1);
    *((_BYTE *)this + 32) = 1;
    v12 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)v11 + 40))(v11);
    glitch::os::Printer::logf(3, "loading %s: read error", v12);
    return 0;
  }
}


// ===== 607de0 glitch::video::`anonymous namespace'::CPerLevelRemapLoading::process(glitch::video::E_TEXTURE_CUBE_MAP_FACE,uchar) =====
int __fastcall glitch::video::`anonymous namespace'::CPerLevelRemapLoading::process(int a1, int a2, int a3, int a4)
{
  bool v4; // zf
  glitch::IReferenceCounted **v7; // r0
  glitch::IReferenceCounted *v8; // r5
  bool v9; // zf
  unsigned int v10; // r12
  int v11; // r3
  int result; // r0
  int v13; // r8
  int v14; // r5
  unsigned int v15; // r7
  unsigned int SourceStep; // r0
  int Pitch; // r0
  int v18; // r3
  glitch::IReferenceCounted *v19; // [sp+Ch] [bp-4h] BYREF

  v4 = a2 == 0;
  if ( a2 <= 0 )
    v4 = a3 == 0;
  if ( v4 )
    return 1;
  v7 = *(glitch::IReferenceCounted ***)(a1 + 16);
  v8 = *v7;
  v9 = *v7 == nullptr;
  v19 = *v7;
  if ( v19 )
    a4 = *((_DWORD *)v8 + 1);
  v10 = *((unsigned __int8 *)v8 + 66);
  if ( !v9 )
    *((_DWORD *)v8 + 1) = a4 + 1;
  glitch::video::SMapTextureWrite::reset((int)v7, (int *)&v19, a3, a2, v10 >> 5);
  if ( v19 )
    glitch::IReferenceCounted::drop(v19);
  v11 = *(_DWORD *)(a1 + 16);
  result = *(_DWORD *)(v11 + 4);
  if ( !result )
    v11 = 1;
  *(_DWORD *)(a1 + 24) = result;
  if ( !result )
  {
    *(_BYTE *)(a1 + 32) = v11;
    return result;
  }
  if ( *((unsigned __int8 *)v8 + 62) <= 1u
    && *(_BYTE *)(*(_DWORD *)(a1 + 12) + 28)
    && *(unsigned __int8 *)(a1 + 33) > 1u )
  {
    LOBYTE(v15) = 1;
    v13 = 0;
    do
    {
      glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(
        (glitch::video::IImageLoader::ITextureDataLoading *)a1,
        v15);
      SourceStep = glitch::video::IImageLoader::ITextureDataLoading::getSourceStep(
                     (glitch::video::IImageLoader::ITextureDataLoading *)a1,
                     v15);
      v15 = (unsigned __int8)(v15 + 1);
      v13 += SourceStep;
    }
    while ( *(unsigned __int8 *)(a1 + 33) > v15 );
    v11 = *(_DWORD *)(a1 + 16);
  }
  else
  {
    v13 = 0;
  }
  if ( *(_DWORD *)(v11 + 8) )
  {
    if ( v13 > 0 )
    {
      *(_DWORD *)(a1 + 20) += v13;
      return 1;
    }
    *(_DWORD *)(a1 + 28) = glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(
                             (glitch::video::IImageLoader::ITextureDataLoading *)a1,
                             a3);
    v14 = *(_DWORD *)(a1 + 20);
    *(_DWORD *)(a1 + 20) = v14
                         + glitch::video::IImageLoader::ITextureDataLoading::getSourceStep(
                             (glitch::video::IImageLoader::ITextureDataLoading *)a1,
                             a3);
    return 1;
  }
  if ( v13 > 0 && !(*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 4) + 24))(*(_DWORD *)(a1 + 4), v13, 1)
    || !glitch::video::IImageLoader::ITextureDataLoading::read(
          (glitch::video::IImageLoader::ITextureDataLoading *)a1,
          *(_WORD **)(a1 + 24),
          *(_DWORD *)(*((_DWORD *)v8 + 12) + 4 * (a3 + 1)) - *(_DWORD *)(*((_DWORD *)v8 + 12) + 4 * a3)) )
  {
    return 0;
  }
  Pitch = glitch::video::ITexture::getPitch(v8, a3);
  v18 = *(_DWORD *)(a1 + 24);
  *(_DWORD *)(a1 + 28) = Pitch;
  *(_DWORD *)(a1 + 20) = v18;
  return 1;
}


// ===== 607fa0 glitch::video::`anonymous namespace'::CPerLevelRemapLoading::preprocess(void) =====
int __fastcall glitch::video::`anonymous namespace'::CPerLevelRemapLoading::preprocess(
        glitch::video::_anonymous_namespace_::CPerLevelRemapLoading *this)
{
  _DWORD *v1; // r3
  _WORD *v3; // r5
  unsigned int v4; // r2
  int result; // r0
  int v6; // r3

  v1 = *((_DWORD **)this + 4);
  v3 = *((_WORD **)this + 5);
  if ( v1[2] )
    v4 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 8))(*((_DWORD *)this + 2));
  else
    v4 = *(_DWORD *)(*(_DWORD *)(*v1 + 48) + 4) - **(_DWORD **)(*v1 + 48);
  result = glitch::video::IImageLoader::ITextureDataLoading::read(this, v3, v4);
  if ( result )
  {
    v6 = *((_DWORD *)this + 4);
    if ( *(unsigned __int8 *)(*(_DWORD *)v6 + 62) > 1u )
      return 1;
    if ( !*(_DWORD *)(v6 + 8) )
    {
      *((_DWORD *)this + 7) = glitch::video::ITexture::getPitch(*(glitch::video::ITexture **)v6, 0);
      return 1;
    }
    *((_DWORD *)this + 7) = glitch::video::IImageLoader::ITextureDataLoading::getFilePitch(this, 0);
    return 1;
  }
  return result;
}


// ===== 608048 glitch::video::ITexture::setDataDirty(bool) [clone] =====
int __fastcall glitch::video::ITexture::setDataDirty(int result)
{
  int v1; // r1
  int v2; // r7
  int v3; // r2
  int v4; // r7
  unsigned int v5; // r3
  int v6; // r1
  int v7; // r1
  int v8; // r2
  _DWORD *v9; // r3
  _DWORD *v10; // r2

  if ( (*(_BYTE *)(result + 63) & 2) != 0 )
  {
    if ( *(_DWORD *)(result + 44) )
    {
      v1 = *(unsigned __int8 *)(result + 62);
      v2 = *(_DWORD *)(result + 56) & 3;
      v3 = 0;
      *(_WORD *)(result + 64) |= 1u;
      if ( v2 == 2 )
        v4 = 6;
      else
        v4 = 1;
      v5 = 0;
      do
      {
        v6 = *(_DWORD *)(result + 48) + 4 * (v1 + 1);
        ++v3;
        *(_DWORD *)(v6 + 4 * (v5 >> 5)) |= 1 << (v5 & 0x1F);
        v1 = *(unsigned __int8 *)(result + 62);
        v5 += v1;
      }
      while ( v3 < v4 );
    }
  }
  else if ( *(_DWORD *)(result + 44) )
  {
    v7 = *(unsigned __int8 *)(result + 62);
    v8 = (*(_DWORD *)(result + 56) & 3) == 2 ? 6 : 1;
    v9 = (_DWORD *)(*(_DWORD *)(result + 48) + 4 * (v7 + 1));
    v10 = &v9[(unsigned int)(v7 * v8 + 31) >> 5];
    for ( *(_WORD *)(result + 64) |= 1u; v10 != v9; ++v9 )
      *v9 = -1;
  }
  return result;
}


// ===== 608138 glitch::video::`anonymous namespace'::IMappedWholeLoading::preprocess(void) =====
int __fastcall glitch::video::`anonymous namespace'::IMappedWholeLoading::preprocess(
        glitch::video::_anonymous_namespace_::IMappedWholeLoading *this)
{
  int v1; // r0

  v1 = **((_DWORD **)this + 4);
  if ( *(_DWORD *)(v1 + 44) )
    glitch::video::ITexture::setDataDirty(v1);
  return 1;
}


// ===== 60815c glitch::video::`anonymous namespace'::IMappedWholeLoading::~IMappedWholeLoading() =====
void __fastcall glitch::video::`anonymous namespace'::IMappedWholeLoading::~IMappedWholeLoading(
        glitch::video::_anonymous_namespace_::IMappedWholeLoading *this)
{
  *(_DWORD *)this = off_957518;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
  LC_API_FREE_0(this);
}


// ===== 60818c glitch::video::`anonymous namespace'::CPerLevelRemapLoading::~CPerLevelRemapLoading() =====
void __fastcall glitch::video::`anonymous namespace'::CPerLevelRemapLoading::~CPerLevelRemapLoading(
        glitch::video::_anonymous_namespace_::CPerLevelRemapLoading *this)
{
  *(_DWORD *)this = off_957560;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
  LC_API_FREE_0(this);
}


// ===== 6081bc glitch::video::`anonymous namespace'::CPerFaceLoading::~CPerFaceLoading() =====
void __fastcall glitch::video::`anonymous namespace'::CPerFaceLoading::~CPerFaceLoading(
        glitch::video::_anonymous_namespace_::CPerFaceLoading *this)
{
  *(_DWORD *)this = off_957518;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
  LC_API_FREE_0(this);
}


// ===== 6081ec glitch::video::`anonymous namespace'::CWholeLoading::~CWholeLoading() =====
void __fastcall glitch::video::`anonymous namespace'::CWholeLoading::~CWholeLoading(
        glitch::video::_anonymous_namespace_::CWholeLoading *this)
{
  *(_DWORD *)this = off_957518;
  glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading(this);
  LC_API_FREE_0(this);
}


// ===== 60821c glitch::video::`anonymous namespace'::CPerFaceLoading::preprocess(void) =====
int __fastcall glitch::video::`anonymous namespace'::CPerFaceLoading::preprocess(
        glitch::video::_anonymous_namespace_::CPerFaceLoading *this)
{
  int v2; // r4
  int v3; // r3
  int v4; // r5
  int v5; // r7
  int v6; // r0
  int v7; // r8
  unsigned int v8; // r2
  int result; // r0
  int *v10; // r2
  int v11; // r12
  unsigned int v12; // r2

  v2 = **((_DWORD **)this + 4);
  v3 = *(_DWORD *)(v2 + 44);
  if ( v3 )
  {
    glitch::video::ITexture::setDataDirty(**((_DWORD **)this + 4));
    v2 = **((_DWORD **)this + 4);
    v3 = *(_DWORD *)(v2 + 44);
  }
  v4 = 1;
  v5 = v3;
  v6 = 0;
  if ( (*(_DWORD *)(v2 + 56) & 3) == 2 )
    v7 = 6;
  else
    v7 = 1;
  while ( 1 )
  {
    if ( (*(_BYTE *)(v2 + 63) & 2) != 0 )
    {
      v8 = *(_DWORD *)(*(_DWORD *)(v2 + 48) + 4) - **(_DWORD **)(v2 + 48);
      result = glitch::video::IImageLoader::ITextureDataLoading::read(
                 this,
                 (_WORD *)(*((_DWORD *)this + 5) + v3 + v8 * v6 - v5),
                 v8);
      if ( !result )
        return result;
    }
    else
    {
      v10 = *(int **)(v2 + 48);
      v11 = *v10;
      v12 = v10[*(unsigned __int8 *)(v2 + 62)];
      result = glitch::video::IImageLoader::ITextureDataLoading::read(
                 this,
                 (_WORD *)(*((_DWORD *)this + 5) + v3 + v11 + ((v12 + 127) & 0xFFFFFF80) * v6 - v5),
                 v12);
      if ( !result )
        return result;
    }
    if ( v4 >= v7 )
      break;
    v3 = *(_DWORD *)(v2 + 44);
    v6 = v4++;
  }
  return *(unsigned __int8 *)(*((_DWORD *)this + 4) + 12);
}


// ===== 608308 glitch::video::`anonymous namespace'::CWholeLoading::preprocess(void) =====
int __fastcall glitch::video::`anonymous namespace'::CWholeLoading::preprocess(
        glitch::video::_anonymous_namespace_::CWholeLoading *this)
{
  int *v1; // r3
  _WORD *v3; // r5
  unsigned int v4; // r2
  int result; // r0
  int v6; // r3
  int v7; // r0
  int v8; // r3

  v1 = *((int **)this + 4);
  if ( *(_DWORD *)(*v1 + 44) )
  {
    glitch::video::ITexture::setDataDirty(*v1);
    v1 = *((int **)this + 4);
  }
  v3 = *((_WORD **)this + 5);
  if ( v1[2] )
  {
    v4 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 8))(*((_DWORD *)this + 2));
  }
  else
  {
    v6 = *v1;
    if ( (*(_DWORD *)(v6 + 56) & 3) == 2 )
      v7 = 5;
    else
      v7 = 0;
    if ( (*(_BYTE *)(v6 + 63) & 2) != 0 )
      v8 = *(_DWORD *)(*(_DWORD *)(v6 + 48) + 4) - **(_DWORD **)(v6 + 48);
    else
      v8 = *(_DWORD *)(*(_DWORD *)(v6 + 48) + 4 * *(unsigned __int8 *)(v6 + 62));
    v4 = v8 + ((v8 + 127) & 0xFFFFFF80) * v7;
  }
  result = glitch::video::IImageLoader::ITextureDataLoading::read(this, v3, v4);
  if ( result )
    return *(unsigned __int8 *)(*((_DWORD *)this + 4) + 12);
  return result;
}


// ===== 6083d0 glitch::video::IImageLoader::loadData(glitch::io::IReadFile *,glitch::video::IImageLoader::IDataInfo const&,glitch::video::STextureDesc const&,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
void *__fastcall glitch::video::IImageLoader::loadData(int a1, int a2, int a3, int *a4)
{
  int v8; // r8
  bool v9; // r3
  int v10; // r10
  int v11; // r0
  size_t v12; // r0
  void *v13; // r11
  _BOOL4 v14; // r3
  int v15; // r2
  _BOOL4 v16; // r8
  int v17; // r5
  int v18; // r12
  const char *v19; // r0
  int v21; // r3
  int v22; // r1
  unsigned __int8 *v23; // r3
  int v24; // r0
  int v25; // r1
  int v26; // lr
  bool v27; // zf
  int *v28; // r12
  int v29; // r1
  const char *v30; // r0
  const char *v31; // r0
  _DWORD v32[8]; // [sp+Ch] [bp-80h] BYREF
  char v33; // [sp+2Ch] [bp-60h]
  char v34; // [sp+2Dh] [bp-5Fh]
  char v35; // [sp+2Eh] [bp-5Eh]
  _DWORD v36[8]; // [sp+30h] [bp-5Ch] BYREF
  char v37; // [sp+50h] [bp-3Ch]
  char v38; // [sp+51h] [bp-3Bh]
  char v39; // [sp+52h] [bp-3Ah]
  _DWORD v40[8]; // [sp+54h] [bp-38h] BYREF
  char v41; // [sp+74h] [bp-18h]
  char v42; // [sp+75h] [bp-17h]
  char v43; // [sp+76h] [bp-16h]
  glitch::IReferenceCounted *v44; // [sp+78h] [bp-14h] BYREF
  void *v45; // [sp+7Ch] [bp-10h]
  void *v46; // [sp+80h] [bp-Ch]
  bool v47; // [sp+84h] [bp-8h]
  bool v48; // [sp+85h] [bp-7h]

  v48 = 0;
  v44 = nullptr;
  v45 = nullptr;
  v46 = nullptr;
  v47 = 0;
  if ( (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 16))(a2) )
  {
    v8 = 7988;
  }
  else
  {
    v8 = 7988;
    v21 = 40 * *(_DWORD *)(a3 + 4);
    v22 = *(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[v21];
    v23 = &glitch::video::pixel_format::detail::PFDTable[v21];
    if ( (v22 & 8) == 0 )
    {
      v9 = v23[20] != 0;
      goto LABEL_4;
    }
  }
  v9 = 0;
LABEL_4:
  v48 = v9;
  v10 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a2 + 12))(a2, 0);
  v11 = (*(_DWORD *)(*a4 + 56) >> 4) & 0x3F;
  if ( glitch::video::pixel_format::detail::PFDTable[40 * v11 + 22] == glitch::video::pixel_format::detail::PFDTable[40 * *(_DWORD *)(a3 + 4) + 22]
    && (!v10 || v10 == glitch::video::pixel_format::computePitch(v11, *(_DWORD *)(*a4 + 32))) )
  {
    v24 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 8))(a2);
    v15 = *a4;
    v25 = *(unsigned __int8 *)(*a4 + 63);
    if ( (*(_DWORD *)(*a4 + 56) & 3) == 2 )
      v26 = 5;
    else
      v26 = 0;
    v27 = (v25 & 2) == 0;
    if ( (v25 & 2) != 0 )
    {
      v28 = *(int **)(v15 + 48);
    }
    else
    {
      v25 = *(_DWORD *)(v15 + 48);
      v28 = (int *)*(unsigned __int8 *)(v15 + 62);
    }
    if ( v27 )
    {
      v29 = *(_DWORD *)(v25 + 4 * (_DWORD)v28);
    }
    else
    {
      v29 = *v28;
      v8 = v28[1];
    }
    if ( !v27 )
      v29 = v8 - v29;
    v16 = v24 != v29 + ((v29 + 127) & 0xFFFFFF80) * v26;
    v14 = *(_DWORD *)(a3 + 4) != ((*(_DWORD *)(*a4 + 56) >> 4) & 0x3F);
    v47 = *(_DWORD *)(a3 + 4) != ((*(_DWORD *)(*a4 + 56) >> 4) & 0x3F);
  }
  else
  {
    v12 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 8))(a2);
    v13 = operator new[](v12, 0);
    v46 = v13;
    if ( !v13 )
    {
      v30 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 40))(a1);
      glitch::os::Printer::logf(3, "loading %s: out of memory", v30);
      goto LABEL_20;
    }
    v14 = 1;
    v15 = *a4;
    v16 = 0;
    v47 = 1;
  }
  if ( *(unsigned __int8 *)(v15 + 62) <= 1u )
    v17 = *(unsigned __int8 *)(a3 + 28);
  else
    v17 = 0;
  if ( v14 && !v46 || v48 )
    v18 = 5;
  else
    v18 = 4;
  glitch::video::SMapTextureWrite::reset((int)&v44, a4, 0, 0, v18);
  v13 = v45;
  if ( v45 )
  {
    if ( (*(_BYTE *)(*a4 + 63) & 0x40) == 0 )
    {
      if ( !v17 )
        goto LABEL_19;
      goto LABEL_18;
    }
    if ( v17 )
    {
LABEL_18:
      v19 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 40))(a1);
      glitch::os::Printer::logf(
        2,
        "loading %s: superfluous texture data (texture file has mipmaps but texture requests none)",
        v19);
LABEL_19:
      v35 = 0;
      memset(v32, 0, sizeof(v32));
      v33 = 0;
      v34 = 0;
      glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading((int)v32);
      v32[0] = off_957560;
      v13 = (void *)glitch::video::IImageLoader::ITextureDataLoading::load((int)v32, a1, a2, a3, (int *)&v44);
      v32[0] = off_957560;
      glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading((glitch::video::IImageLoader::ITextureDataLoading *)v32);
      goto LABEL_20;
    }
    if ( v16 )
    {
      v43 = 0;
      memset(v40, 0, sizeof(v40));
      v41 = 0;
      v42 = 0;
      glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading((int)v40);
      v40[0] = off_957530;
      v13 = (void *)glitch::video::IImageLoader::ITextureDataLoading::load((int)v40, a1, a2, a3, (int *)&v44);
      v40[0] = off_957518;
      glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading((glitch::video::IImageLoader::ITextureDataLoading *)v40);
    }
    else
    {
      v39 = 0;
      memset(v36, 0, sizeof(v36));
      v37 = 0;
      v38 = 0;
      glitch::video::IImageLoader::ITextureDataLoading::ITextureDataLoading((int)v36);
      v36[0] = off_957548;
      v13 = (void *)glitch::video::IImageLoader::ITextureDataLoading::load((int)v36, a1, a2, a3, (int *)&v44);
      v36[0] = off_957518;
      glitch::video::IImageLoader::ITextureDataLoading::~ITextureDataLoading((glitch::video::IImageLoader::ITextureDataLoading *)v36);
    }
  }
  else
  {
    v31 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 40))(a1);
    glitch::os::Printer::logf(3, "loading %s: map failed", v31);
  }
LABEL_20:
  if ( v46 )
    operator delete[](v46);
  if ( v45 )
    glitch::video::ITexture::unmap(v44);
  if ( v44 )
    glitch::IReferenceCounted::drop(v44);
  return v13;
}


// ===== 608850 `global constructor keyed to'.._source_glitch_video_detail_EVertexAttributeDetail.cpp =====
void `global constructor keyed to'.._source_glitch_video_detail_EVertexAttributeDetail.cpp()
{
  dword_9F6CA8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6CA4 = 1056964608;
}


// ===== 608870 glitch::video::IBatchBaker::~IBatchBaker() =====
void __fastcall glitch::video::IBatchBaker::~IBatchBaker(glitch::video::IBatchBaker *this)
{
  ;
}


// ===== 608874 glitch::core::STransformTexCoordComponent::setConvertType(void *) =====
float __fastcall glitch::core::STransformTexCoordComponent::setConvertType(float this, void *a2)
{
  float v2; // r4
  float *v3; // r3
  float v4; // r6
  float v5; // r8
  float v6; // r0
  float *v7; // r3
  float v8; // r6
  float v9; // r5

  v2 = this;
  if ( !*(_BYTE *)(LODWORD(this) + 64) )
  {
    v3 = *(float **)(LODWORD(this) + 72);
    v4 = v3[1];
    v5 = (float)((float)(*v3 * *(float *)(LODWORD(this) + 4)) + (float)(v4 * *(float *)(LODWORD(this) + 20)))
       + *(float *)(LODWORD(this) + 36);
    v6 = *v3 * *(float *)LODWORD(this);
    v7 = *(float **)(LODWORD(v2) + 68);
    *(float *)(LODWORD(v2) + 32) = *(float *)(LODWORD(v2) + 32)
                                 + (float)(v6 + (float)(v4 * *(float *)(LODWORD(v2) + 16)));
    *(float *)(LODWORD(v2) + 36) = v5;
    *(_BYTE *)(LODWORD(v2) + 64) = 0;
    v8 = *v7;
    v9 = v7[1];
    *(float *)LODWORD(v2) = *(float *)LODWORD(v2) * *v7;
    *(float *)(LODWORD(v2) + 4) = *(float *)(LODWORD(v2) + 4) * v8;
    *(float *)(LODWORD(v2) + 16) = *(float *)(LODWORD(v2) + 16) * v9;
    this = *(float *)(LODWORD(v2) + 20) * v9;
    *(float *)(LODWORD(v2) + 20) = this;
  }
  return this;
}


// ===== 608958 glitch::video::CGenericBaker::getVertexAttributeMap(void) =====
char *__fastcall glitch::video::CGenericBaker::getVertexAttributeMap(glitch::video::CGenericBaker *this)
{
  return (char *)this + 12;
}


// ===== 608960 glitch::core::STransformPositionComponent::setConvertType(void *) =====
int __fastcall glitch::core::STransformPositionComponent::setConvertType(int this, void *a2)
{
  int v2; // r4
  float *v3; // r3
  float v4; // r7
  float v5; // r6
  float v6; // r9
  float v7; // r10
  float v8; // r0
  float *v9; // r1

  v2 = this;
  if ( !*(_BYTE *)(this + 64) )
  {
    v3 = *(float **)(this + 72);
    v4 = v3[1];
    v5 = v3[2];
    v6 = (float)((float)((float)(*v3 * *(float *)this) + (float)(v4 * *(float *)(this + 16)))
               + (float)(v5 * *(float *)(this + 32)))
       + *(float *)(this + 48);
    v7 = (float)((float)((float)(*v3 * *(float *)(this + 4)) + (float)(v4 * *(float *)(this + 20)))
               + (float)(v5 * *(float *)(this + 36)))
       + *(float *)(this + 52);
    v8 = (float)((float)((float)(*v3 * *(float *)(this + 8)) + (float)(v4 * *(float *)(this + 24)))
               + (float)(v5 * *(float *)(this + 40)))
       + *(float *)(this + 56);
    *(_BYTE *)(v2 + 64) = 0;
    v9 = *(float **)(v2 + 68);
    *(float *)(v2 + 56) = v8;
    *(float *)(v2 + 48) = v6;
    *(float *)(v2 + 52) = v7;
    return glitch::core::CMatrix4<float>::postScale(v2, v9);
  }
  return this;
}


// ===== 608a94 glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<short>,glitch::core::STransformPositionComponent>(glitch::core::vector3d<float> *,uint,glitch::core::vector3d<short> const*,uint,ushort,glitch::core::STransformPositionComponent const&) =====
float *__fastcall glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<short>,glitch::core::STransformPositionComponent>(
        float *a1,
        int a2,
        __int16 *a3,
        int a4,
        __int16 a5,
        int a6)
{
  int v7; // r9
  float *v8; // r6
  float v9; // r10
  float v10; // r8
  float v11; // r0
  float *v13; // r7
  int v14; // r10
  float *v15; // r6
  float *v16; // r8
  float v17; // r0
  int v18; // r6
  float *v19; // r4
  float v20; // r7
  float v21; // r0
  float v22; // [sp+4h] [bp-18h]
  float *v23; // [sp+10h] [bp-Ch]

  v23 = a1;
  if ( *(_BYTE *)(a6 + 64) )
  {
    v13 = *(float **)(a6 + 68);
    if ( v13 || *(_DWORD *)(a6 + 72) )
    {
      if ( a5 )
      {
        LOWORD(v14) = a5;
        v15 = a1;
        while ( 1 )
        {
          v16 = *(float **)(a6 + 72);
          v22 = (float)((float)a3[1] * v13[1]) + v16[1];
          v17 = (float)((float)a3[2] * v13[2]) + v16[2];
          *v15 = (float)((float)*a3 * *v13) + *v16;
          v15[2] = v17;
          v15[1] = v22;
          v14 = (unsigned __int16)(v14 - 1);
          v15 = (float *)((char *)v15 + a2);
          if ( !v14 )
            break;
          v13 = *(float **)(a6 + 68);
          a3 = (__int16 *)((char *)a3 + a4);
        }
        return (float *)((char *)v23 + a2 + (unsigned __int16)(a5 - 1) * a2);
      }
    }
    else if ( a5 )
    {
      LOWORD(v18) = a5;
      v19 = a1;
      while ( 1 )
      {
        v20 = (float)a3[1];
        v21 = (float)a3[2];
        v18 = (unsigned __int16)(v18 - 1);
        *v19 = (float)*a3;
        v19[1] = v20;
        v19[2] = v21;
        v19 = (float *)((char *)v19 + a2);
        if ( !v18 )
          break;
        a3 = (__int16 *)((char *)a3 + a4);
      }
      return (float *)((char *)v23 + a2 + (unsigned __int16)(a5 - 1) * a2);
    }
  }
  else if ( a5 )
  {
    LOWORD(v7) = a5;
    v8 = a1;
    while ( 1 )
    {
      v9 = (float)*a3;
      v10 = (float)a3[1];
      v11 = (float)a3[2];
      *v8 = (float)((float)((float)(v9 * *(float *)a6) + (float)(v10 * *(float *)(a6 + 16)))
                  + (float)(v11 * *(float *)(a6 + 32)))
          + *(float *)(a6 + 48);
      v8[1] = (float)((float)((float)(v9 * *(float *)(a6 + 4)) + (float)(v10 * *(float *)(a6 + 20)))
                    + (float)(v11 * *(float *)(a6 + 36)))
            + *(float *)(a6 + 52);
      v8[2] = (float)((float)((float)(v9 * *(float *)(a6 + 8)) + (float)(v10 * *(float *)(a6 + 24)))
                    + (float)(v11 * *(float *)(a6 + 40)))
            + *(float *)(a6 + 56);
      v7 = (unsigned __int16)(v7 - 1);
      v8 = (float *)((char *)v8 + a2);
      if ( !v7 )
        break;
      a3 = (__int16 *)((char *)a3 + a4);
    }
    return (float *)((char *)v23 + a2 + (unsigned __int16)(a5 - 1) * a2);
  }
  return v23;
}


// ===== 608dbc glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::STransformPositionComponent>(glitch::core::vector3d<float> *,uint,glitch::core::vector3d<float> const*,uint,ushort,glitch::core::STransformPositionComponent const&) =====
char *__fastcall glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::STransformPositionComponent>(
        _DWORD *a1,
        int a2,
        float *a3,
        int a4,
        unsigned __int16 a5,
        int a6)
{
  _DWORD *v8; // r6
  int v10; // r10
  float *v11; // r8
  int v13; // r2
  _DWORD *v14; // r3
  int v15; // r1

  v8 = a1;
  if ( *(_BYTE *)(a6 + 64) )
  {
    if ( a5 )
    {
      v13 = a5;
      v14 = a1;
      do
      {
        --v13;
        *v14 = *(_DWORD *)a3;
        v14[1] = *((_DWORD *)a3 + 1);
        v15 = *((_DWORD *)a3 + 2);
        a3 = (float *)((char *)a3 + a4);
        v14[2] = v15;
        v14 = (_DWORD *)((char *)v14 + a2);
      }
      while ( v13 );
      return (char *)a1 + a5 * a2;
    }
  }
  else if ( a5 )
  {
    LOWORD(v10) = a5;
    v11 = (float *)a1;
    do
    {
      *v11 = (float)((float)((float)(*a3 * *(float *)a6) + (float)(a3[1] * *(float *)(a6 + 16)))
                   + (float)(a3[2] * *(float *)(a6 + 32)))
           + *(float *)(a6 + 48);
      v11[1] = (float)((float)((float)(*a3 * *(float *)(a6 + 4)) + (float)(a3[1] * *(float *)(a6 + 20)))
                     + (float)(a3[2] * *(float *)(a6 + 36)))
             + *(float *)(a6 + 52);
      v10 = (unsigned __int16)(v10 - 1);
      v11[2] = (float)((float)((float)(*a3 * *(float *)(a6 + 8)) + (float)(a3[1] * *(float *)(a6 + 24)))
                     + (float)(a3[2] * *(float *)(a6 + 40)))
             + *(float *)(a6 + 56);
      a3 = (float *)((char *)a3 + a4);
      v11 = (float *)((char *)v11 + a2);
    }
    while ( v10 );
    return (char *)a1 + a2 + (unsigned __int16)(a5 - 1) * a2;
  }
  return (char *)v8;
}


// ===== 608f6c glitch::core::copyComponentSF<glitch::core::vector3d<float>,glitch::core::STransformPositionComponent>(glitch::core::vector3d<float> *,uint,uchar const*,uint,glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE,ushort,glitch::core::STransformPositionComponent &) =====
float *__fastcall glitch::core::copyComponentSF<glitch::core::vector3d<float>,glitch::core::STransformPositionComponent>(
        float *result,
        int a2,
        __int16 *a3,
        int a4,
        int a5,
        __int16 a6,
        glitch::core::STransformPositionComponent *a7)
{
  float *v7; // r6

  v7 = result;
  if ( a5 == 2 )
  {
    glitch::core::STransformPositionComponent::setConvertType((int)a7, nullptr);
    return glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<short>,glitch::core::STransformPositionComponent>(
             v7,
             a2,
             a3,
             a4,
             a6,
             (int)a7);
  }
  else if ( a5 == 6 )
  {
    return (float *)glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::STransformPositionComponent>(
                      result,
                      a2,
                      (float *)a3,
                      a4,
                      a6,
                      (int)a7);
  }
  return result;
}


// ===== 608fdc glitch::core::copyComponent<glitch::core::vector2d<float>,glitch::core::vector2d<short>,glitch::core::STransformTexCoordComponent>(glitch::core::vector2d<float> *,uint,glitch::core::vector2d<short> const*,uint,ushort,glitch::core::STransformTexCoordComponent const&) =====
float *__fastcall glitch::core::copyComponent<glitch::core::vector2d<float>,glitch::core::vector2d<short>,glitch::core::STransformTexCoordComponent>(
        float *a1,
        int a2,
        __int16 *a3,
        int a4,
        __int16 a5,
        int a6)
{
  int v7; // r8
  float *v8; // r7
  float v9; // r0
  __int16 v11; // r8
  float *v12; // r7
  float v13; // r9
  float v14; // r10
  float *v15; // [sp+8h] [bp-Ch]

  v15 = a1;
  if ( *(_BYTE *)(a6 + 64) )
  {
    if ( a5 )
    {
      LOWORD(v7) = a5;
      v8 = a1;
      do
      {
        v7 = (unsigned __int16)(v7 - 1);
        *v8 = (float)((float)*a3 * **(float **)(a6 + 68)) + **(float **)(a6 + 72);
        v9 = (float)a3[1];
        a3 = (__int16 *)((char *)a3 + a4);
        v8[1] = (float)(v9 * *(float *)(*(_DWORD *)(a6 + 68) + 4)) + *(float *)(*(_DWORD *)(a6 + 72) + 4);
        v8 = (float *)((char *)v8 + a2);
      }
      while ( v7 );
      return (float *)((char *)v15 + a2 + (unsigned __int16)(a5 - 1) * a2);
    }
  }
  else if ( a5 )
  {
    v11 = a5;
    v12 = a1;
    while ( 1 )
    {
      v13 = (float)*a3;
      v14 = (float)a3[1];
      *v12 = (float)((float)(v13 * *(float *)a6) + (float)(v14 * *(float *)(a6 + 16))) + *(float *)(a6 + 32);
      --v11;
      v12[1] = (float)((float)(v13 * *(float *)(a6 + 4)) + (float)(v14 * *(float *)(a6 + 20))) + *(float *)(a6 + 36);
      v12 = (float *)((char *)v12 + a2);
      if ( !v11 )
        break;
      a3 = (__int16 *)((char *)a3 + a4);
    }
    return (float *)((char *)a1 + a2 + (unsigned __int16)(a5 - 1) * a2);
  }
  return v15;
}


// ===== 60917c glitch::core::copyComponentSF<glitch::core::vector2d<float>,glitch::core::STransformTexCoordComponent>(glitch::core::vector2d<float> *,uint,uchar const*,uint,glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE,ushort,glitch::core::STransformTexCoordComponent &) =====
float *__fastcall glitch::core::copyComponentSF<glitch::core::vector2d<float>,glitch::core::STransformTexCoordComponent>(
        float *a1,
        int a2,
        int a3,
        int a4,
        int a5,
        unsigned __int16 a6,
        glitch::core::STransformTexCoordComponent *a7)
{
  float *v8; // r6
  int v12; // r9
  float *v13; // r10
  int v14; // r2
  float *v15; // r3
  int v16; // r1

  v8 = a1;
  if ( a5 == 2 )
  {
    glitch::core::STransformTexCoordComponent::setConvertType(*(float *)&a7, nullptr);
    return glitch::core::copyComponent<glitch::core::vector2d<float>,glitch::core::vector2d<short>,glitch::core::STransformTexCoordComponent>(
             v8,
             a2,
             (__int16 *)a3,
             a4,
             a6,
             (int)a7);
  }
  else
  {
    if ( a5 == 6 )
    {
      if ( *((_BYTE *)a7 + 64) )
      {
        v14 = a6;
        if ( a6 )
        {
          v15 = a1;
          do
          {
            --v14;
            *v15 = *(float *)a3;
            v16 = *(_DWORD *)(a3 + 4);
            a3 += a4;
            *((_DWORD *)v15 + 1) = v16;
            v15 = (float *)((char *)v15 + a2);
          }
          while ( v14 );
          return (float *)((char *)a1 + a6 * a2);
        }
      }
      else if ( a6 )
      {
        LOWORD(v12) = a6;
        v13 = a1;
        do
        {
          *v13 = (float)((float)(*(float *)a3 * *(float *)a7) + (float)(*(float *)(a3 + 4) * *((float *)a7 + 4)))
               + *((float *)a7 + 8);
          v12 = (unsigned __int16)(v12 - 1);
          v13[1] = (float)((float)(*(float *)a3 * *((float *)a7 + 1)) + (float)(*(float *)(a3 + 4) * *((float *)a7 + 5)))
                 + *((float *)a7 + 9);
          a3 += a4;
          v13 = (float *)((char *)v13 + a2);
        }
        while ( v12 );
        return (float *)((char *)a1 + a2 + (unsigned __int16)(a6 - 1) * a2);
      }
    }
    return v8;
  }
}


// ===== 6092e8 glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<char>,glitch::core::STransformNormalComponent>(glitch::core::vector3d<float> *,uint,glitch::core::vector3d<char> const*,uint,ushort,glitch::core::STransformNormalComponent const&) =====
float *__fastcall glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<char>,glitch::core::STransformNormalComponent>(
        float *a1,
        int a2,
        char *a3,
        int a4,
        __int16 a5,
        int a6)
{
  int v7; // r6
  float *v8; // r4
  float v9; // r8
  float v10; // r7
  int v12; // r9
  float *v13; // r6
  float v14; // r10
  float v15; // r8
  float v16; // r0
  float *v17; // [sp+8h] [bp-Ch]

  v17 = a1;
  if ( *(_BYTE *)(a6 + 64) )
  {
    if ( a5 )
    {
      LOWORD(v7) = a5;
      v8 = a1;
      while ( 1 )
      {
        v9 = (float)a3[1];
        v10 = (float)a3[2];
        *v8 = (float)*a3 * 0.007874;
        v8[1] = v9 * 0.007874;
        v7 = (unsigned __int16)(v7 - 1);
        v8[2] = v10 * 0.007874;
        v8 = (float *)((char *)v8 + a2);
        if ( !v7 )
          break;
        a3 += a4;
      }
      return (float *)((char *)a1 + a2 + (unsigned __int16)(a5 - 1) * a2);
    }
  }
  else if ( a5 )
  {
    LOWORD(v12) = a5;
    v13 = a1;
    while ( 1 )
    {
      v14 = (float)*a3;
      v15 = (float)a3[1];
      v16 = (float)a3[2];
      *v13 = (float)((float)(v14 * *(float *)a6) + (float)(v15 * *(float *)(a6 + 16)))
           + (float)(v16 * *(float *)(a6 + 32));
      v13[1] = (float)((float)(v14 * *(float *)(a6 + 4)) + (float)(v15 * *(float *)(a6 + 20)))
             + (float)(v16 * *(float *)(a6 + 36));
      v13[2] = (float)((float)(v14 * *(float *)(a6 + 8)) + (float)(v15 * *(float *)(a6 + 24)))
             + (float)(v16 * *(float *)(a6 + 40));
      v12 = (unsigned __int16)(v12 - 1);
      v13 = (float *)((char *)v13 + a2);
      if ( !v12 )
        break;
      a3 += a4;
    }
    return (float *)((char *)v17 + a2 + (unsigned __int16)(a5 - 1) * a2);
  }
  return v17;
}


// ===== 609530 glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<short>,glitch::core::STransformNormalComponent>(glitch::core::vector3d<float> *,uint,glitch::core::vector3d<short> const*,uint,ushort,glitch::core::STransformNormalComponent const&) =====
float *__fastcall glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<short>,glitch::core::STransformNormalComponent>(
        float *a1,
        int a2,
        __int16 *a3,
        int a4,
        __int16 a5,
        int a6)
{
  int v7; // r6
  float *v8; // r4
  float v9; // r8
  float v10; // r0
  int v12; // r9
  float *v13; // r6
  float v14; // r10
  float v15; // r8
  float v16; // r0
  float *v17; // [sp+8h] [bp-Ch]

  v17 = a1;
  if ( *(_BYTE *)(a6 + 64) )
  {
    if ( a5 )
    {
      LOWORD(v7) = a5;
      v8 = a1;
      while ( 1 )
      {
        v9 = (float)a3[1];
        v10 = (float)a3[2];
        *v8 = (float)*a3 * 0.000030519;
        v8[1] = v9 * 0.000030519;
        v7 = (unsigned __int16)(v7 - 1);
        v8[2] = v10 * 0.000030519;
        v8 = (float *)((char *)v8 + a2);
        if ( !v7 )
          break;
        a3 = (__int16 *)((char *)a3 + a4);
      }
      return (float *)((char *)v17 + a2 + (unsigned __int16)(a5 - 1) * a2);
    }
  }
  else if ( a5 )
  {
    LOWORD(v12) = a5;
    v13 = a1;
    while ( 1 )
    {
      v14 = (float)*a3;
      v15 = (float)a3[1];
      v16 = (float)a3[2];
      *v13 = (float)((float)(v14 * *(float *)a6) + (float)(v15 * *(float *)(a6 + 16)))
           + (float)(v16 * *(float *)(a6 + 32));
      v13[1] = (float)((float)(v14 * *(float *)(a6 + 4)) + (float)(v15 * *(float *)(a6 + 20)))
             + (float)(v16 * *(float *)(a6 + 36));
      v13[2] = (float)((float)(v14 * *(float *)(a6 + 8)) + (float)(v15 * *(float *)(a6 + 24)))
             + (float)(v16 * *(float *)(a6 + 40));
      v12 = (unsigned __int16)(v12 - 1);
      v13 = (float *)((char *)v13 + a2);
      if ( !v12 )
        break;
      a3 = (__int16 *)((char *)a3 + a4);
    }
    return (float *)((char *)v17 + a2 + (unsigned __int16)(a5 - 1) * a2);
  }
  return v17;
}


// ===== 609778 glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::STransformNormalComponent>(glitch::core::vector3d<float> *,uint,glitch::core::vector3d<float> const*,uint,ushort,glitch::core::STransformNormalComponent const&) =====
char *__fastcall glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::STransformNormalComponent>(
        _DWORD *a1,
        int a2,
        float *a3,
        int a4,
        unsigned __int16 a5,
        int a6)
{
  _DWORD *v8; // r6
  int v10; // r10
  float *v11; // r8
  int v13; // r2
  _DWORD *v14; // r3
  int v15; // r1

  v8 = a1;
  if ( *(_BYTE *)(a6 + 64) )
  {
    if ( a5 )
    {
      v13 = a5;
      v14 = a1;
      do
      {
        --v13;
        *v14 = *(_DWORD *)a3;
        v14[1] = *((_DWORD *)a3 + 1);
        v15 = *((_DWORD *)a3 + 2);
        a3 = (float *)((char *)a3 + a4);
        v14[2] = v15;
        v14 = (_DWORD *)((char *)v14 + a2);
      }
      while ( v13 );
      return (char *)a1 + a5 * a2;
    }
  }
  else if ( a5 )
  {
    LOWORD(v10) = a5;
    v11 = (float *)a1;
    do
    {
      *v11 = (float)((float)(*a3 * *(float *)a6) + (float)(a3[1] * *(float *)(a6 + 16)))
           + (float)(a3[2] * *(float *)(a6 + 32));
      v11[1] = (float)((float)(*a3 * *(float *)(a6 + 4)) + (float)(a3[1] * *(float *)(a6 + 20)))
             + (float)(a3[2] * *(float *)(a6 + 36));
      v10 = (unsigned __int16)(v10 - 1);
      v11[2] = (float)((float)(*a3 * *(float *)(a6 + 8)) + (float)(a3[1] * *(float *)(a6 + 24)))
             + (float)(a3[2] * *(float *)(a6 + 40));
      a3 = (float *)((char *)a3 + a4);
      v11 = (float *)((char *)v11 + a2);
    }
    while ( v10 );
    return (char *)a1 + a2 + (unsigned __int16)(a5 - 1) * a2;
  }
  return (char *)v8;
}


// ===== 609910 glitch::core::copyComponentBSF<glitch::core::vector3d<float>,glitch::core::STransformNormalComponent>(glitch::core::vector3d<float> *,uint,uchar const*,uint,glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE,ushort,glitch::core::STransformNormalComponent &) =====
float *__fastcall glitch::core::copyComponentBSF<glitch::core::vector3d<float>,glitch::core::STransformNormalComponent>(
        float *a1,
        int a2,
        __int16 *a3,
        int a4,
        int a5,
        __int16 a6,
        int a7)
{
  float *v7; // r4
  float v12[3]; // [sp+8h] [bp-1Ch] BYREF
  float v13[4]; // [sp+14h] [bp-10h] BYREF

  v7 = a1;
  switch ( a5 )
  {
    case 2:
      v12[2] = 0.000030519;
      v12[0] = 0.000030519;
      v12[1] = 0.000030519;
      glitch::core::CMatrix4<float>::postScale(a7, v12);
      return glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<short>,glitch::core::STransformNormalComponent>(
               v7,
               a2,
               a3,
               a4,
               a6,
               a7);
    case 6:
      return (float *)glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::STransformNormalComponent>(
                        a1,
                        a2,
                        (float *)a3,
                        a4,
                        a6,
                        a7);
    case 0:
      v13[2] = 0.007874;
      v13[0] = 0.007874;
      v13[1] = 0.007874;
      glitch::core::CMatrix4<float>::postScale(a7, v13);
      return glitch::core::copyComponent<glitch::core::vector3d<float>,glitch::core::vector3d<char>,glitch::core::STransformNormalComponent>(
               v7,
               a2,
               (char *)a3,
               a4,
               a6,
               a7);
  }
  return v7;
}


// ===== 6099e4 `global constructor keyed to'.._source_glitch_video_CGenericBaker.cpp =====
void `global constructor keyed to'.._source_glitch_video_CGenericBaker.cpp()
{
  dword_9F6CB4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6CB0 = 1056964608;
}


// ===== 609a04 glitch::video::IBatchBaker::~IBatchBaker() =====
void __fastcall glitch::video::IBatchBaker::~IBatchBaker(glitch::video::IBatchBaker *this)
{
  LC_API_FREE_0(this);
}


// ===== 609a18 glitch::video::CGenericBaker::~CGenericBaker() =====
void __fastcall glitch::video::CGenericBaker::~CGenericBaker(glitch::video::CMaterial **this)
{
  _DWORD *v2; // r0

  *this = (glitch::video::CMaterial *)off_978520;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 5);
  v2 = *(this + 3);
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      LC_API_FREE_0(v2);
  }
}


// ===== 609a70 glitch::video::CGenericBaker::~CGenericBaker() =====
void __fastcall glitch::video::CGenericBaker::~CGenericBaker(glitch::video::CMaterial **this)
{
  glitch::video::CGenericBaker::~CGenericBaker(this);
  LC_API_FREE_0(this);
}


// ===== 609a8c glitch::video::CGenericBaker::initParameters(boost::intrusive_ptr<glitch::video::CMaterial const> const&,uchar) =====
int __fastcall glitch::video::CGenericBaker::initParameters(int a1, int a2, int a3)
{
  int v4; // r10
  int v6; // r7
  int v7; // r8
  int result; // r0
  int v9; // r3
  int v10; // r3
  int v11; // r11
  int v12; // r4
  unsigned int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r12
  unsigned int v17; // r0
  bool v18; // cc
  unsigned int v19; // r3
  int v20; // r0
  unsigned int v21; // r9
  int v22; // [sp+0h] [bp-Ch]
  int v23; // [sp+4h] [bp-8h]

  v4 = a1 + 20;
  v22 = 0;
  v23 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4) + 24) + 8);
  v6 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)a2 + 4) + 24) + 12 * a3 + 8) + 36);
  v7 = *(_DWORD *)(v23 + 36);
  do
  {
    result = v22;
    v9 = *(_DWORD *)(v23 + 32) + 8 * (v22 + 5);
    v10 = (unsigned __int16)(*(_WORD *)(v9 + 6) - *(_WORD *)(v9 + 4));
    if ( v10 )
    {
      v11 = 2 * ((unsigned __int16)(v10 - 1) + 1);
      v12 = 0;
      do
      {
        v13 = *(unsigned __int16 *)(v7 + v12);
        v14 = 0;
        v15 = *(_DWORD *)(*(_DWORD *)(a1 + 20) + 4);
        v16 = 0;
        v17 = *(unsigned __int16 *)(v15 + 14);
        v18 = v17 > v13;
        if ( v17 > v13 )
          v14 = *(_DWORD *)(v15 + 32);
        v19 = *(unsigned __int16 *)(v6 + v12);
        v20 = *(_DWORD *)(*(_DWORD *)a2 + 4);
        if ( v18 )
          v14 += 16 * v13;
        v12 += 2;
        v21 = *(unsigned __int16 *)(v20 + 14);
        if ( v21 > v19 )
          v16 = *(_DWORD *)(v20 + 32);
        result = v4;
        if ( v21 > v19 )
          v16 += 16 * v19;
        if ( v14 )
        {
          if ( v16 )
            result = glitch::core::copyParameter(v4, v13, a2, v19);
        }
      }
      while ( v12 != v11 );
      v6 += v12;
      v7 += v12;
    }
    ++v22;
  }
  while ( v22 != 2 );
  return result;
}


// ===== 609ba4 glitch::video::CGenericBaker::configureAppendBuffer(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> const&) =====
int __fastcall glitch::video::CGenericBaker::configureAppendBuffer(int a1, glitch::scene::CAppendMeshBuffer **a2)
{
  int v4; // r3
  int v5; // r5
  int v6; // r4
  unsigned __int16 v7; // r1
  int v8; // r3
  int v9; // r2

  glitch::scene::CAppendMeshBuffer::reset(*a2);
  v4 = *(_DWORD *)(a1 + 8);
  v5 = 8 * *(unsigned __int8 *)(v4 + 60);
  if ( v5 )
  {
    v6 = *(_DWORD *)(v4 + 36) + 8;
    v5 = 0;
    do
    {
      v7 = *(_WORD *)(v6 - 4);
      v8 = v7;
      switch ( v7 )
      {
        case 0u:
        case 0x11u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Bu:
          glitch::scene::CAppendMeshBuffer::configureStream(*a2, (unsigned __int8)v7, v5, 6, 3);
          v7 = *(_WORD *)(v6 - 4);
          v5 = (unsigned __int16)(v5 + 12);
          v8 = v7;
          break;
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
          glitch::scene::CAppendMeshBuffer::configureStream(*a2, (unsigned __int8)v7, v5, 6, 2);
          v7 = *(_WORD *)(v6 - 4);
          v5 = (unsigned __int16)(v5 + 8);
          v8 = v7;
          break;
        case 0x12u:
        case 0x13u:
          glitch::scene::CAppendMeshBuffer::configureStream(*a2, (unsigned __int8)v7, v5, 1, 4);
          v7 = *(_WORD *)(v6 - 4);
          v5 = (unsigned __int16)(v5 + 4);
          v8 = v7;
          break;
        default:
          break;
      }
      v9 = v6;
      v6 += 8;
      *(_BYTE *)(*(_DWORD *)(a1 + 12) + v8 + 4) = v7;
    }
    while ( v9 != *(_DWORD *)(*(_DWORD *)(a1 + 8) + 36) + 8 * *(unsigned __int8 *)(*(_DWORD *)(a1 + 8) + 60) );
  }
  return glitch::scene::CAppendMeshBuffer::adjustStride(*a2, v5);
}


// ===== 609d28 glitch::video::CGenericBaker::CGenericBaker(glitch::video::IShader const*) =====
glitch::video::CGenericBaker *__fastcall glitch::video::CGenericBaker::CGenericBaker(
        glitch::video::CGenericBaker *this,
        const glitch::video::IShader *a2)
{
  _DWORD *v3; // r6
  glitch::video::CVertexStreams *v5; // [sp+4h] [bp-4h] BYREF

  *(_DWORD *)this = off_978520;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = a2;
  v5 = nullptr;
  v3 = operator new(0x24u, 0);
  glitch::video::CVertexAttributeMap::CVertexAttributeMap(v3, (int *)&v5);
  *((_DWORD *)this + 3) = v3;
  if ( v3 )
    ++*v3;
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v5);
  *((_DWORD *)this + 5) = 0;
  *((_WORD *)this + 8) = -1;
  return this;
}


// ===== 609db4 glitch::video::CGenericBaker::CGenericBaker(glitch::video::IShader const*) =====
glitch::video::CGenericBaker *__fastcall glitch::video::CGenericBaker::CGenericBaker(
        glitch::video::CGenericBaker *this,
        const glitch::video::IShader *a2)
{
  _DWORD *v3; // r6
  glitch::video::CVertexStreams *v5; // [sp+4h] [bp-4h] BYREF

  *(_DWORD *)this = off_978520;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = a2;
  v5 = nullptr;
  v3 = operator new(0x24u, 0);
  glitch::video::CVertexAttributeMap::CVertexAttributeMap(v3, (int *)&v5);
  *((_DWORD *)this + 3) = v3;
  if ( v3 )
    ++*v3;
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v5);
  *((_DWORD *)this + 5) = 0;
  *((_WORD *)this + 8) = -1;
  return this;
}


// ===== 609e40 glitch::video::CGenericBaker::getBatchMaterial(boost::intrusive_ptr<glitch::video::CMaterial const> const&,uchar) =====
_DWORD *__fastcall glitch::video::CGenericBaker::getBatchMaterial(_DWORD *a1, int a2, int a3, int a4)
{
  glitch::video::CMaterialRenderer *v6; // r7
  int v9; // r3
  glitch::video::CMaterial *v10; // r7
  glitch::video::CMaterialRenderer *v11; // r10
  _DWORD *v12; // r3
  _DWORD *result; // r0
  int v14; // r10
  unsigned int v15; // r0
  size_t v16; // r0
  unsigned __int16 BindedLightCount; // r0
  unsigned int Id; // r0
  int v19; // r3
  glitch::video::CMaterialRenderer **v20; // r3
  glitch::video::CMaterialRenderer *v21; // r0
  glitch::video::CMaterial *v22; // r3
  glitch::video::CMaterial *v23; // r2
  glitch::video::detail::renderpass::SRenderState *v24; // [sp+0h] [bp-64h]
  char *v25; // [sp+0h] [bp-64h]
  int *v26; // [sp+0h] [bp-64h]
  glitch::video::CMaterialRendererManager *v27; // [sp+4h] [bp-60h]
  glitch::video::CMaterial *v28; // [sp+1Ch] [bp-48h] BYREF
  glitch::video::CMaterial *v29; // [sp+20h] [bp-44h] BYREF
  glitch::video::CMaterialRenderer *v30; // [sp+24h] [bp-40h] BYREF
  glitch::IReferenceCounted *v31; // [sp+28h] [bp-3Ch] BYREF
  _DWORD v32[4]; // [sp+2Ch] [bp-38h] BYREF
  _BYTE *v33; // [sp+3Ch] [bp-28h]
  char *v34; // [sp+40h] [bp-24h]
  void *v35[5]; // [sp+44h] [bp-20h] BYREF
  void *p; // [sp+58h] [bp-Ch]

  v6 = *(glitch::video::CMaterialRenderer **)(*(_DWORD *)a3 + 4);
  v27 = *(glitch::video::CMaterialRendererManager **)(*((_DWORD *)v6 + 1) + 220);
  if ( *(unsigned __int16 *)(a2 + 16) != 0xFFFF )
  {
    v9 = *((_DWORD *)v6 + 6);
    v10 = *(glitch::video::CMaterial **)(a2 + 20);
    v11 = *((glitch::video::CMaterialRenderer **)v10 + 1);
    v24 = *(glitch::video::detail::renderpass::SRenderState **)(v9 + 12 * a4 + 8);
    if ( !memcmp(v24, *(const void **)(*((_DWORD *)v11 + 6) + 8), 0x20u) )
      goto LABEL_3;
    glitch::video::CMaterialRenderer::setRenderState(v11, 0, 0, v24);
    goto LABEL_7;
  }
  v33 = v32;
  v34 = (char *)v32;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v32,
    0x10u);
  v14 = 0;
  *v33 = 0;
  do
  {
    v15 = lrand48();
    ++v14;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v32,
      (_DWORD *)glitch::core::randomString(int)::alphanum[v15 % 0x3E]);
  }
  while ( v14 != 20 );
  v35[4] = v35;
  v25 = v34;
  p = v35;
  v16 = LC_API_STRLEN_0(v34);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v35,
    v25,
    &v25[v16]);
  if ( v34 != (char *)v32 && v34 )
    GlitchFree(v34);
  v26 = *(int **)(*((_DWORD *)v6 + 6) + 12 * a4 + 8);
  glitch::video::CMaterialRendererManager::beginMaterialRenderer(v27, (char *)p, 1);
  glitch::video::CMaterialRendererManager::beginTechnique(
    v27,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"ZeTechnique",
    1);
  v31 = *(glitch::IReferenceCounted **)(a2 + 8);
  if ( v31 )
    ++*((_DWORD *)v31 + 1);
  glitch::video::CMaterialRendererManager::addRenderPass((int *)v27, &v31, v26);
  if ( v31 )
    glitch::IReferenceCounted::drop(v31);
  BindedLightCount = (unsigned __int16)glitch::video::CMaterialRenderer::getBindedLightCount(v6, a4, 0);
  glitch::video::CMaterialRendererManager::endTechnique(v27, 1, BindedLightCount);
  glitch::video::CMaterialRendererManager::endMaterialRenderer(v27);
  Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
         (int)v27,
         p);
  *(_WORD *)(a2 + 16) = Id;
  v19 = *((_DWORD *)v27 + 6);
  if ( Id >= (*((_DWORD *)v27 + 7) - v19) >> 3 )
    v20 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    v20 = (glitch::video::CMaterialRenderer **)(v19 + 8 * Id);
  v21 = *v20;
  v30 = *v20;
  if ( v30 )
  {
    ++*(_DWORD *)v21;
    v21 = v30;
  }
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::initParametersToIdentity((int)v21);
  glitch::video::CMaterialRendererManager::getMaterialInstance(&v29, (int)v27, *(unsigned __int16 *)(a2 + 16), 0);
  v22 = v29;
  v28 = v29;
  if ( v29 )
  {
    ++*(_DWORD *)v29;
    v22 = v28;
  }
  v23 = *(glitch::video::CMaterial **)(a2 + 20);
  *(_DWORD *)(a2 + 20) = v22;
  v28 = v23;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v28);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v29);
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v30);
  if ( p == v35 || !p )
  {
LABEL_7:
    v10 = *(glitch::video::CMaterial **)(a2 + 20);
    goto LABEL_3;
  }
  GlitchFree(p);
  v10 = *(glitch::video::CMaterial **)(a2 + 20);
LABEL_3:
  glitch::video::CMaterial::getTechnique(v10);
  glitch::video::CGenericBaker::initParameters(a2, a3, a4);
  v12 = *(_DWORD **)(a2 + 20);
  result = a1;
  *a1 = v12;
  if ( v12 )
    ++*v12;
  return result;
}


// ===== 60a188 glitch::video::CGenericBaker::isCompatible(boost::intrusive_ptr<glitch::video::CMaterial const> const&,uchar) =====
int __fastcall glitch::video::CGenericBaker::isCompatible(int a1, glitch::video::CMaterial **a2, int a3)
{
  glitch::video::CMaterial *v3; // r5
  int v6; // r6
  int v7; // r7
  int v8; // r2
  int v9; // r3
  int v10; // r10
  int v11; // r7
  int v12; // r8
  int v13; // r9
  _DWORD *v14; // r1
  _DWORD *v15; // r0

  v3 = *a2;
  if ( !*a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 20);
  if ( (*(_DWORD *)(v6 + 16) & 1) != 0 )
    glitch::video::CMaterial::updateHashCode(*(glitch::video::CMaterial **)(a1 + 20), 0);
  v7 = **(_DWORD **)(v6 + 24);
  if ( ((*((_DWORD *)v3 + 4) >> a3) & 1) != 0 )
  {
    glitch::video::CMaterial::updateHashCode(v3, a3);
    if ( v7 != *(_DWORD *)(*((_DWORD *)v3 + 6) + 4 * a3) )
      return 0;
  }
  else if ( v7 != *(_DWORD *)(*((_DWORD *)v3 + 6) + 4 * a3) )
  {
    return 0;
  }
  v8 = *(_DWORD *)(*(_DWORD *)(v6 + 4) + 24);
  v9 = *(_DWORD *)(*((_DWORD *)v3 + 1) + 24) + 12 * a3;
  v10 = *(unsigned __int8 *)(v9 + 4);
  if ( *(unsigned __int8 *)(v8 + 4) != v10 )
    return 0;
  if ( *(_BYTE *)(v9 + 4) )
  {
    v11 = *(_DWORD *)(v8 + 8);
    v12 = *(_DWORD *)(v9 + 8);
    if ( *(_DWORD *)(v11 + 32) == *(_DWORD *)(v12 + 32) )
    {
      v13 = 52;
      v14 = *(_DWORD **)(v9 + 8);
      v15 = *(_DWORD **)(v8 + 8);
      do
      {
        if ( memcmp(v15, v14, 0x20u) )
          break;
        v15 = (_DWORD *)(v11 + v13);
        v14 = (_DWORD *)(v12 + v13);
        if ( v13 == 52 * (unsigned __int8)(v10 - 1) + 52 )
          return glitch::video::CMaterial::areParametersEqual((glitch::video::CMaterial *)v6, 0, v10, v3, a3);
        v13 += 52;
      }
      while ( v15[8] == v14[8] );
    }
    return 0;
  }
  return glitch::video::CMaterial::areParametersEqual((glitch::video::CMaterial *)v6, 0, v10, v3, a3);
}


// ===== 60a2cc glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 60a2ec glitch::video::SVertexStream::SMapBuffer<void>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<void>::reset(int **a1, int *a2)
{
  _BYTE *v4; // r6
  char v5; // r3
  int result; // r0

  if ( a1[1] )
  {
    v4 = (_BYTE *)**a1;
    v5 = v4[19];
    if ( (v5 & 0x1Fu) <= 1 )
    {
      if ( (v4[18] & 0x20) != 0 )
        (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 24))(**a1);
      v4[19] = 0;
    }
    else
    {
      v4[19] = ((v5 & 0x1F) - 1) | v5 & 0xE0;
    }
    a1[1] = nullptr;
    *a1 = nullptr;
  }
  *a1 = a2;
  result = glitch::video::IBuffer::map(*a2, 4);
  a1[1] = (int *)(result + a2[1]);
  return result;
}


// ===== 60a384 glitch::core::overrideVertexStreams<true,false,true>(uchar const*,boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,ushort,ushort,uchar const*,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::CMaterial const*,uchar,glitch::video::IVideoDriver const*,ushort,uint) =====
int __fastcall glitch::core::overrideVertexStreams<true,false,true>(
        int a1,
        int *a2,
        int a3,
        __int16 a4,
        int a5,
        int a6,
        int a7,
        unsigned __int8 a8,
        int a9,
        unsigned __int16 a10,
        int a11)
{
  int v11; // r2
  int v12; // r7
  int v13; // r12
  int v14; // r0
  int v15; // r1
  _BYTE *v16; // r2
  int v17; // r6
  _BYTE *v18; // r2
  unsigned int v19; // r4
  int v20; // r8
  int v21; // r3
  int v22; // r5
  int v23; // r10
  int v24; // r11
  int v25; // r9
  _BYTE *v26; // r3
  int v27; // r2
  int v28; // r11
  __int16 *v29; // r5
  float *v30; // r8
  const void *v31; // r0
  int v32; // r4
  int v33; // r11
  _BYTE *v34; // r6
  _BYTE *v35; // r8
  char v36; // r3
  int v37; // r11
  int v38; // r4
  const void *v39; // r0
  int v40; // r4
  int v41; // r2
  bool v42; // zf
  int v43; // r3
  int v44; // r11
  _BYTE *v45; // r4
  _BYTE *v46; // r6
  char v47; // r3
  int v49; // r5
  int v50; // r2
  int v51; // r5
  int v52; // r11
  int v53; // r2
  int v54; // r8
  int v55; // r4
  int v56; // r3
  int v57; // r3
  char v58; // lr
  char v59; // r12
  char v60; // r0
  char v61; // r1
  int v62; // r3
  unsigned int ParameterID; // r0
  _BYTE *v64; // [sp+10h] [bp-34Ch]
  int v65; // [sp+14h] [bp-348h]
  int v66; // [sp+18h] [bp-344h]
  int v69; // [sp+24h] [bp-338h]
  int v71; // [sp+48h] [bp-314h]
  _BYTE v72[240]; // [sp+54h] [bp-308h] BYREF
  _BYTE v73[240]; // [sp+144h] [bp-218h] BYREF
  _BYTE v74[68]; // [sp+234h] [bp-128h] BYREF
  int v75; // [sp+278h] [bp-E4h]
  int v76; // [sp+27Ch] [bp-E0h]
  _DWORD v77[16]; // [sp+280h] [bp-DCh] BYREF
  char v78; // [sp+2C0h] [bp-9Ch]
  int v79; // [sp+2C4h] [bp-98h]
  int v80; // [sp+2C8h] [bp-94h]
  _BYTE v81[52]; // [sp+2CCh] [bp-90h] BYREF
  _BYTE v82[68]; // [sp+310h] [bp-4Ch] BYREF
  char v83; // [sp+354h] [bp-8h] BYREF
  char v84; // [sp+355h] [bp-7h]
  char v85; // [sp+356h] [bp-6h]
  char v86; // [sp+357h] [bp-5h]
  _BYTE v87[4]; // [sp+358h] [bp-4h] BYREF

  v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a7 + 4) + 24) + 12 * a8 + 8);
  v12 = *(_DWORD *)(v11 + 32);
  v13 = 0;
  if ( v12 )
    v11 = *(_DWORD *)(v12 + 4);
  v14 = *(unsigned __int8 *)(v12 + 60);
  if ( v12 )
    *(_DWORD *)(v12 + 4) = v11 + 1;
  v65 = *(_DWORD *)(*(_DWORD *)a6 + 4) & *(_DWORD *)(v12 + 56) & a11;
  v15 = 0;
  do
  {
    *(_DWORD *)&v73[v13] = 0;
    v16 = &v73[v13];
    v13 += 8;
    *((_DWORD *)v16 + 1) = 0;
  }
  while ( v13 != 240 );
  v17 = 0;
  do
  {
    *(_DWORD *)&v72[v15] = 0;
    v18 = &v72[v15];
    v15 += 8;
    *((_DWORD *)v18 + 1) = 0;
  }
  while ( v15 != 240 );
  v86 = -1;
  v69 = (unsigned __int16)(a4 - a3);
  v83 = -1;
  v84 = -1;
  v85 = -1;
  if ( v14 )
  {
    v66 = 8 * ((unsigned __int8)(v14 - 1) + 1);
    v71 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        v19 = *(unsigned __int16 *)(*(_DWORD *)(v12 + 36) + v17 + 4);
        if ( (v65 & (1 << v19)) != 0 )
        {
          v20 = *(unsigned __int8 *)(a1 + v19);
          v21 = *(unsigned __int8 *)(a5 + v19);
          if ( v20 != 255 )
          {
            v22 = *a2 + 20;
            v23 = v22 + 16 * v20;
            if ( *(_DWORD *)v23 )
            {
              v24 = 8 * v21;
              v25 = *(_DWORD *)a6 + 20 + 16 * v21;
              if ( *(_DWORD *)&v72[8 * v21 + 4] )
              {
                v26 = &v87[8 * v20];
                v27 = *((_DWORD *)v26 - 132);
                if ( v27 )
                {
LABEL_16:
                  v28 = (int)&v87[v24];
                  v29 = (__int16 *)(v27 + *(unsigned __int16 *)(v23 + 14) * a3);
                  v30 = (float *)(*(_DWORD *)(v28 - 768) + *(unsigned __int16 *)(v25 + 14) * a10);
                  switch ( v19 )
                  {
                    case 0u:
                      v31 = (const void *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a9 + 112))(a9, 1);
                      glitch::core::CMatrix4<float>::CMatrix4(v82, v31);
                      v32 = *(_WORD *)(*a2 + 14) & 4;
                      if ( v32 )
                        v33 = *(_DWORD *)(*a2 + 16);
                      else
                        v33 = 0;
                      if ( (*(_WORD *)(*a2 + 14) & 4) != 0 )
                        v32 = v33;
                      glitch::core::CMatrix4<float>::CMatrix4(v77, v82);
                      v79 = v32;
                      v80 = v33;
                      glitch::core::copyComponentSF<glitch::core::vector3d<float>,glitch::core::STransformPositionComponent>(
                        v30,
                        *(unsigned __int16 *)(v25 + 14),
                        v29,
                        *(unsigned __int16 *)(v23 + 14),
                        *(unsigned __int16 *)(v23 + 10),
                        v69,
                        (glitch::core::STransformPositionComponent *)v77);
                      goto LABEL_23;
                    case 1u:
                    case 2u:
                    case 3u:
                    case 4u:
                    case 5u:
                    case 6u:
                    case 7u:
                    case 8u:
                      v40 = (unsigned __int8)(*(_BYTE *)(v23 + 8) - 1);
                      LC_API_MEMSET_0(v77, 0, 0x40u);
                      v41 = *a2;
                      v78 = 1;
                      v77[0] = 1065353216;
                      v77[5] = 1065353216;
                      v77[10] = 1065353216;
                      v77[15] = 1065353216;
                      v17 += 8;
                      v43 = *(unsigned __int16 *)(v41 + 14) & (8 << v40);
                      v42 = v43 == 0;
                      if ( v43 )
                      {
                        v28 = 24 * v40;
                        v41 = *(_DWORD *)(v41 + 16);
                        v43 = 24 * v40 + 24;
                      }
                      else
                      {
                        v40 = 0;
                      }
                      if ( v42 )
                      {
                        v44 = v40;
                      }
                      else
                      {
                        v44 = v28 + 36;
                        v40 = v41 + v43;
                      }
                      if ( !v42 )
                        v44 += v41;
                      glitch::core::CMatrix4<float>::CMatrix4(v74, v77);
                      v75 = v40;
                      v76 = v44;
                      glitch::core::copyComponentSF<glitch::core::vector2d<float>,glitch::core::STransformTexCoordComponent>(
                        v30,
                        *(unsigned __int16 *)(v25 + 14),
                        (int)v29,
                        *(unsigned __int16 *)(v23 + 14),
                        *(unsigned __int16 *)(v23 + 10),
                        v69,
                        (glitch::core::STransformTexCoordComponent *)v74);
                      if ( v17 != v66 )
                        continue;
                      goto LABEL_24;
                    case 0x11u:
                    case 0x14u:
                    case 0x15u:
                    case 0x16u:
                    case 0x17u:
                    case 0x18u:
                    case 0x19u:
                    case 0x1Au:
                    case 0x1Bu:
                      v17 += 8;
                      v39 = (const void *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a9 + 112))(a9, 1);
                      glitch::core::CMatrix4<float>::CMatrix4(v81, v39);
                      glitch::core::CMatrix4<float>::CMatrix4(v77, v81);
                      glitch::core::copyComponentBSF<glitch::core::vector3d<float>,glitch::core::STransformNormalComponent>(
                        v30,
                        *(unsigned __int16 *)(v25 + 14),
                        v29,
                        *(unsigned __int16 *)(v23 + 14),
                        *(unsigned __int16 *)(v23 + 10),
                        v69,
                        (int)v77);
                      if ( v17 != v66 )
                        continue;
                      goto LABEL_24;
                    case 0x12u:
                      if ( !v69 )
                        goto LABEL_23;
                      v37 = v17;
                      LOWORD(v38) = 0;
                      do
                      {
                        memcpy(v30, v29, sizeof(float));
                        v38 = (unsigned __int16)(v38 + 1);
                        v29 = (__int16 *)((char *)v29 + *(unsigned __int16 *)(v23 + 14));
                        v30 = (float *)((char *)v30 + *(unsigned __int16 *)(v25 + 14));
                      }
                      while ( v38 != v69 );
                      v17 += 8;
                      if ( v37 + 8 == v66 )
                        goto LABEL_24;
                      continue;
                    default:
                      goto LABEL_23;
                  }
                }
              }
              else
              {
                glitch::video::SVertexStream::SMapBuffer<void>::reset(
                  (int **)&v72[v24],
                  (int *)(*(_DWORD *)a6 + 20 + 16 * v21));
                v26 = &v87[8 * v20];
                v27 = *((_DWORD *)v26 - 132);
                if ( v27 )
                  goto LABEL_16;
              }
              *((_DWORD *)v26 - 133) = v23;
              v64 = v26;
              v27 = glitch::video::IBuffer::map(*(_DWORD *)(v22 + 16 * v20), 1) + *(_DWORD *)(v23 + 4);
              *((_DWORD *)v64 - 132) = v27;
              goto LABEL_16;
            }
          }
          if ( v21 != 255 )
          {
            v49 = *(_DWORD *)a6 + 20;
            v50 = *(_DWORD *)(v49 + 16 * v21);
            v51 = v49 + 16 * v21;
            if ( v50 )
            {
              v52 = 8 * v21;
              if ( !*(_DWORD *)&v72[8 * v21 + 4] )
                glitch::video::SVertexStream::SMapBuffer<void>::reset((int **)&v72[v52], (int *)v51);
              v53 = *(unsigned __int16 *)(v51 + 14);
              v54 = *(_DWORD *)&v72[v52 + 4] + v53 * a10;
              if ( v19 <= 0x1B )
                break;
            }
          }
        }
LABEL_23:
        v17 += 8;
        if ( v17 == v66 )
          goto LABEL_24;
      }
      v55 = 1 << v19;
      if ( (v55 & 0xFF20000) != 0 )
      {
        v56 = v69;
        if ( !v69 )
          goto LABEL_23;
        do
        {
          --v56;
          *(_DWORD *)v54 = 0;
          *(_DWORD *)(v54 + 4) = 1065353216;
          *(_DWORD *)(v54 + 8) = 0;
          v54 += v53;
        }
        while ( v56 );
        v17 += 8;
        if ( v17 == v66 )
          break;
      }
      else if ( (v55 & 0x40000) != 0 )
      {
        if ( !v71 )
        {
          ParameterID = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(a7 + 4), 6, 0);
          if ( ParameterID == 0xFFFF )
          {
            v71 = 1;
            v53 = *(unsigned __int16 *)(v51 + 14);
          }
          else
          {
            glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
              a7,
              ParameterID,
              0,
              &v83);
            v53 = *(unsigned __int16 *)(v51 + 14);
            v71 = 1;
          }
        }
        v57 = v69;
        v58 = v83;
        v59 = v84;
        v60 = v85;
        v61 = v86;
        if ( !v69 )
          goto LABEL_23;
        do
        {
          --v57;
          *(_BYTE *)(v54 + 3) = v61;
          *(_BYTE *)(v54 + 2) = v60;
          *(_BYTE *)(v54 + 1) = v59;
          *(_BYTE *)v54 = v58;
          v54 += v53;
        }
        while ( v57 );
        v17 += 8;
        if ( v17 == v66 )
          break;
      }
      else
      {
        if ( (v55 & 0x1FE) == 0 )
          goto LABEL_23;
        v62 = v69;
        if ( !v69 )
          goto LABEL_23;
        do
        {
          --v62;
          *(_DWORD *)v54 = 0;
          *(_DWORD *)(v54 + 4) = 0;
          v54 += v53;
        }
        while ( v62 );
        v17 += 8;
        if ( v17 == v66 )
          break;
      }
    }
  }
LABEL_24:
  v34 = v73;
  do
  {
    if ( *((_DWORD *)v34 - 1) )
    {
      v35 = **((_BYTE ***)v34 - 2);
      v36 = v35[19];
      if ( (v36 & 0x1Fu) > 1 )
      {
        v35[19] = ((v36 & 0x1F) - 1) | v36 & 0xE0;
      }
      else
      {
        if ( (v35[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v35 + 24))(**((_DWORD **)v34 - 2));
        v35[19] = 0;
      }
      *((_DWORD *)v34 - 2) = 0;
      *((_DWORD *)v34 - 1) = 0;
    }
    v34 -= 8;
  }
  while ( v34 != v72 );
  v45 = v74;
  do
  {
    if ( *((_DWORD *)v45 - 1) )
    {
      v46 = **((_BYTE ***)v45 - 2);
      v47 = v46[19];
      if ( (v47 & 0x1Fu) > 1 )
      {
        v46[19] = ((v47 & 0x1F) - 1) | v47 & 0xE0;
      }
      else
      {
        if ( (v46[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v46 + 24))(**((_DWORD **)v45 - 2));
        v46[19] = 0;
      }
      *((_DWORD *)v45 - 2) = 0;
      *((_DWORD *)v45 - 1) = 0;
    }
    v45 -= 8;
  }
  while ( v45 != v73 );
  return glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v12);
}


// ===== 60ab18 glitch::video::CGenericBaker::bake(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CMaterial const*,uchar,uchar const*,boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::CPrimitiveStream&,glitch::video::CMaterial const*,uchar const*,glitch::video::IVideoDriver const*,uint,uint,uint,uint,uint,uint,uint) =====
int __fastcall glitch::video::CGenericBaker::bake(
        int a1,
        int *a2,
        glitch::core *this,
        int a4,
        unsigned __int8 a5,
        int a6,
        int a7,
        unsigned int a8,
        int a9,
        int a10,
        int a11,
        int a12,
        __int16 a13,
        glitch::video::CPrimitiveStream *a14,
        unsigned int a15,
        int a16,
        glitch::video::CPrimitiveStream *a17,
        int a18)
{
  int v21; // [sp+8h] [bp-14h]

  glitch::core::overridePrimitiveStream(this, a14, a15, a8, a17, a16 - a12, v21);
  return glitch::core::overrideVertexStreams<true,false,true>(
           a6,
           a2,
           (unsigned __int16)a12,
           a13,
           a10,
           a7,
           a4,
           a5,
           a11,
           a16,
           a18);
}


// ===== 60abc4 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,glitch::video::IBatchBaker *>,std::priv::_Select1st<std::pair<uint const,glitch::video::IBatchBaker *>>,std::priv::_MapTraitsT<std::pair<uint const,glitch::video::IBatchBaker *>>,glitch::core::SAllocator<std::pair<uint const,glitch::video::IBatchBaker *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::IBatchBaker *>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::IBatchBaker *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::IBatchBaker *>>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::video::IBatchBaker *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::IBatchBaker *>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::IBatchBaker *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::IBatchBaker *>>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::video::IBatchBaker *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      GlitchFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 60abf8 std::map<uint,glitch::video::IBatchBaker *,std::less<uint>,glitch::core::SAllocator<std::pair<uint const,glitch::video::IBatchBaker *>,(glitch::memory::E_MEMORY_HINT)0>>::~map() =====
int __fastcall std::map<unsigned int,glitch::video::IBatchBaker *,std::less<unsigned int>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::video::IBatchBaker *>,(glitch::memory::E_MEMORY_HINT)0>>::~map(
        int a1)
{
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,glitch::video::IBatchBaker *>,std::priv::_Select1st<std::pair<unsigned int const,glitch::video::IBatchBaker *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,glitch::video::IBatchBaker *>>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::video::IBatchBaker *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1,
      *(_DWORD **)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 60ac2c `global constructor keyed to'.._source_glitch_video_IBatchBaker.cpp =====
int `global constructor keyed to'.._source_glitch_video_IBatchBaker.cpp()
{
  dword_9F6CC0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6CBC = 1056964608;
  dword_9F6CD4 = 0;
  dword_9F6CC8 = 0;
  glitch::BakerMap = 0;
  dword_9F6CCC = (int)&glitch::BakerMap;
  dword_9F6CD0 = (int)&glitch::BakerMap;
  return _aeabi_atexit(
           (int)&glitch::BakerMap,
           (int)std::map<unsigned int,glitch::video::IBatchBaker *,std::less<unsigned int>,glitch::core::SAllocator<std::pair<unsigned int const,glitch::video::IBatchBaker *>,(glitch::memory::E_MEMORY_HINT)0>>::~map,
           (int)&_dso_handle);
}


// ===== 60aca0 glitch::os::Printer::log(char const*,glitch::ELOG_LEVEL) =====
int *__fastcall glitch::os::Printer::log(int a1, int a2)
{
  int *result; // r0

  result = &glitch::os::Printer::Logger;
  if ( glitch::os::Printer::Logger )
    return (int *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)glitch::os::Printer::Logger + 20))(
                    glitch::os::Printer::Logger,
                    a1,
                    a2);
  return result;
}


// ===== 60ace8 glitch::os::Printer::log(char const*,char const*,glitch::ELOG_LEVEL) =====
int *__fastcall glitch::os::Printer::log(int a1, int a2, int a3)
{
  int *result; // r0

  result = &glitch::os::Printer::Logger;
  if ( glitch::os::Printer::Logger )
    return (int *)(*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)glitch::os::Printer::Logger + 24))(
                    glitch::os::Printer::Logger,
                    a1,
                    a2,
                    a3);
  return result;
}


// ===== 60ad38 glitch::os::Printer::log(wchar_t const*,glitch::ELOG_LEVEL) =====
int *__fastcall glitch::os::Printer::log(int a1, int a2)
{
  int *result; // r0

  result = &glitch::os::Printer::Logger;
  if ( glitch::os::Printer::Logger )
    return (int *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)glitch::os::Printer::Logger + 32))(
                    glitch::os::Printer::Logger,
                    a1,
                    a2);
  return result;
}


// ===== 60ad80 glitch::os::Printer::setLogLevel(glitch::ELOG_LEVEL) =====
int __fastcall glitch::os::Printer::setLogLevel(int result)
{
  if ( glitch::os::Printer::Logger )
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)glitch::os::Printer::Logger + 16))(
             glitch::os::Printer::Logger,
             result);
  return result;
}


// ===== 60adc0 glitch::os::Printer::getLogLevel(void) =====
int __fastcall glitch::os::Printer::getLogLevel(glitch::os::Printer *this)
{
  if ( glitch::os::Printer::Logger )
    return (*(int (__fastcall **)(int))(*(_DWORD *)glitch::os::Printer::Logger + 12))(glitch::os::Printer::Logger);
  else
    return 4;
}


// ===== 60ae04 glitch::os::Randomizer::rand(void) =====
int __fastcall glitch::os::Randomizer::rand(glitch::os::Randomizer *this)
{
  int result; // r0

  glitch::os::Randomizer::Seed = 40692 * (glitch::os::Randomizer::Seed % 52774)
                               + 3791 * (glitch::os::Randomizer::Seed / -52774);
  result = glitch::os::Randomizer::Seed;
  if ( glitch::os::Randomizer::Seed < 0 )
  {
    result = glitch::os::Randomizer::Seed + 2147483399;
    glitch::os::Randomizer::Seed += 2147483399;
  }
  return result;
}


// ===== 60ae74 glitch::os::Randomizer::reset(void) =====
void __fastcall glitch::os::Randomizer::reset(glitch::os::Randomizer *this)
{
  glitch::os::Randomizer::Seed = 252645135;
}


// ===== 60ae9c glitch::os::Timer::getSpeed(void) =====
int __fastcall glitch::os::Timer::getSpeed(glitch::os::Timer *this)
{
  return glitch::os::Timer::VirtualTimerSpeed;
}


// ===== 60aebc glitch::os::Timer::isStopped(void) =====
int __fastcall glitch::os::Timer::isStopped(glitch::os::Timer *this)
{
  int result; // r0

  result = glitch::os::Timer::VirtualTimerStopCounter;
  if ( glitch::os::Timer::VirtualTimerStopCounter )
    return 1;
  return result;
}


// ===== 60aee4 glitch::os::Timer::getTime(void) =====
unsigned int __fastcall glitch::os::Timer::getTime(glitch::os::Timer *this)
{
  if ( glitch::os::Timer::isStopped(this) )
    return glitch::os::Timer::LastVirtualTime;
  else
    return (unsigned int)(float)((float)(unsigned int)(glitch::os::Timer::StaticTime - glitch::os::Timer::StartRealTime)
                               * *(float *)&glitch::os::Timer::VirtualTimerSpeed)
         + glitch::os::Timer::LastVirtualTime;
}


// ===== 60af68 glitch::os::Timer::stopTimer(void) =====
int __fastcall glitch::os::Timer::stopTimer(glitch::os::Timer *this)
{
  int result; // r0

  result = glitch::os::Timer::isStopped(this);
  if ( !result )
  {
    result = glitch::os::Timer::getTime(nullptr);
    glitch::os::Timer::LastVirtualTime = result;
  }
  --glitch::os::Timer::VirtualTimerStopCounter;
  return result;
}


// ===== 60afb4 `global constructor keyed to'.._source_glitch_os_os.cpp =====
void `global constructor keyed to'.._source_glitch_os_os.cpp()
{
  dword_9F6CE4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6CE0 = 1056964608;
}


// ===== 60afd4 glitch::os::Printer::logf(char const*,...) =====
int glitch::os::Printer::logf(int this, const char *a2, ...)
{
  if ( glitch::os::Printer::Logger )
    return (*(int (__fastcall **)(int, int, int))(*(_DWORD *)glitch::os::Printer::Logger + 36))(
             glitch::os::Printer::Logger,
             1,
             this);
  return this;
}


// ===== 60b034 glitch::os::Printer::logf(glitch::ELOG_LEVEL,char const*,...) =====
int glitch::os::Printer::logf(int result, const char *a2, ...)
{
  if ( glitch::os::Printer::Logger )
    return (*(int (__fastcall **)(int, int, const char *))(*(_DWORD *)glitch::os::Printer::Logger + 36))(
             glitch::os::Printer::Logger,
             result,
             a2);
  return result;
}


// ===== 60b094 glitch::os::Timer::getMicroSeconds(void) =====
__int64 __fastcall glitch::os::Timer::getMicroSeconds(glitch::os::Timer *this)
{
  struct timeval v2; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v2, nullptr);
  return v2.tv_usec + 1000000 * v2.tv_sec;
}


// ===== 60b0cc glitch::os::Timer::getRealTime(void) =====
int __fastcall glitch::os::Timer::getRealTime(glitch::os::Timer *this)
{
  struct timeval v2; // [sp+0h] [bp-Ch] BYREF

  gettimeofday(&v2, nullptr);
  return v2.tv_usec / 1000 + 1000 * v2.tv_sec;
}


// ===== 60b10c glitch::os::Timer::initVirtualTimer(void) =====
int __fastcall glitch::os::Timer::initVirtualTimer(glitch::os::Timer *this)
{
  int result; // r0

  result = glitch::os::Timer::getRealTime(this);
  glitch::os::Timer::StaticTime = result;
  glitch::os::Timer::StartRealTime = result;
  return result;
}


// ===== 60b144 glitch::os::Timer::initTimer(void) =====
// attributes: thunk
int __fastcall glitch::os::Timer::initTimer(glitch::os::Timer *this)
{
  return glitch::os::Timer::initVirtualTimer(this);
}


// ===== 60b148 glitch::os::Timer::setTime(uint) =====
int __fastcall glitch::os::Timer::setTime(glitch::os::Timer *this, unsigned int a2)
{
  int result; // r0

  result = glitch::os::Timer::getRealTime(this);
  glitch::os::Timer::StaticTime = result;
  glitch::os::Timer::StartRealTime = result;
  glitch::os::Timer::LastVirtualTime = (int)this;
  return result;
}


// ===== 60b194 glitch::os::Timer::setSpeed(float) =====
bool __fastcall glitch::os::Timer::setSpeed(glitch::os::Timer *this, float a2)
{
  glitch::os::Timer *Time; // r0
  unsigned int v4; // r1
  _BOOL4 result; // r0

  Time = (glitch::os::Timer *)glitch::os::Timer::getTime(this);
  glitch::os::Timer::setTime(Time, v4);
  glitch::os::Timer::VirtualTimerSpeed = (int)this;
  result = *(float *)&this < 0.0;
  if ( *(float *)&this < 0.0 )
    glitch::os::Timer::VirtualTimerSpeed = 0;
  return result;
}


// ===== 60b1dc glitch::os::Timer::startTimer(void) =====
int __fastcall glitch::os::Timer::startTimer(glitch::os::Timer *this)
{
  int result; // r0
  unsigned int v2; // r1

  ++glitch::os::Timer::VirtualTimerStopCounter;
  result = glitch::os::Timer::isStopped(this);
  if ( !result )
    return glitch::os::Timer::setTime((glitch::os::Timer *)glitch::os::Timer::LastVirtualTime, v2);
  return result;
}


// ===== 60b22c glitch::os::Timer::tick(void) =====
int __fastcall glitch::os::Timer::tick(glitch::os::Timer *this)
{
  int result; // r0

  result = glitch::os::Timer::getRealTime(this);
  glitch::os::Timer::StaticTime = result;
  ++glitch::os::Timer::TickCount;
  return result;
}


// ===== 60b26c glitch::os::Printer::vprint(char const*,std::__va_list) =====
int __fastcall glitch::os::Printer::vprint(glitch::os::Printer *this, const char *a2, __va_list a3)
{
  vprintf((const char *)this, (__gnuc_va_list)a2);
  return putchar(10);
}


// ===== 60b280 glitch::os::Printer::print(char const*,...) =====
int glitch::os::Printer::print(glitch::os::Printer *this, const char *a2, __va_list a3, ...)
{
  char varg_r1; // [sp+14h] [bp+8h] BYREF

  return glitch::os::Printer::vprint(this, &varg_r1, a3);
}


// ===== 60b2b0 glitch::res::onDemandReader::~onDemandReader() =====
void __fastcall glitch::res::onDemandReader::~onDemandReader(glitch::res::onDemandReader *this)
{
  ;
}


// ===== 60b2b4 glitch::collada::COnDemandReader::~COnDemandReader() =====
void __fastcall glitch::collada::COnDemandReader::~COnDemandReader(glitch::collada::COnDemandReader *this)
{
  ;
}


// ===== 60b2b8 glitch::collada::COnDemandReader::read(int,int,void *) =====
int __fastcall glitch::collada::COnDemandReader::read(glitch::collada::COnDemandReader *this, int a2, int a3, void *a4)
{
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 1) + 24))(*((_DWORD *)this + 1), a3, 0);
  return (*(int (__fastcall **)(_DWORD, void *, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), a4, a2);
}


// ===== 60b304 glitch::collada::COnDemandReader::read(int,int,void *,void (*)(int,int,void *,void *),void *) =====
int __fastcall glitch::collada::COnDemandReader::read(
        glitch::collada::COnDemandReader *this,
        int a2,
        int a3,
        void *a4,
        void (*a5)(int, int, void *, void *),
        void *a6)
{
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 1) + 24))(*((_DWORD *)this + 1), a3, 0);
  return (*(int (__fastcall **)(_DWORD, void *, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), a4, a2);
}


// ===== 60b350 glitch::collada::CAnimationBlock::getBlock(glitch::collada::SAnimationBlockSearchKey &) =====
_DWORD *__fastcall glitch::collada::CAnimationBlock::getBlock(_DWORD *result, _DWORD *a2)
{
  _DWORD *v2; // r3
  int v3; // r12
  _DWORD *v4; // r2
  bool v5; // zf

  v2 = result;
  if ( (*a2 != 0) != (result[1] != 0) || a2[2] != result[3] )
    return nullptr;
  v3 = a2[3];
  do
  {
    v4 = (_DWORD *)result[4];
    if ( *v4 <= v3 )
    {
      if ( v4[1] >= v3 )
        return result;
      result = (_DWORD *)result[6];
    }
    else
    {
      result = (_DWORD *)result[7];
    }
    v5 = result == v2;
    if ( result != v2 )
      v5 = result == nullptr;
  }
  while ( !v5 );
  return nullptr;
}


// ===== 60b3cc glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager(void) =====
_DWORD *__fastcall glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager(_DWORD *this)
{
  *(this + 7) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  glitch::collada::CAnimationStreamingManager::Instance = (int)this;
  return this;
}


// ===== 60b410 glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager(void) =====
_DWORD *__fastcall glitch::collada::CAnimationStreamingManager::CAnimationStreamingManager(_DWORD *this)
{
  *(this + 7) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  glitch::collada::CAnimationStreamingManager::Instance = (int)this;
  return this;
}


// ===== 60b454 std::priv::__lower_bound<glitch::collada::CAnimationBlock **,glitch::collada::SAnimationBlockSearchKey,glitch::collada::CAnimationBlockSearch,glitch::collada::CAnimationBlockSearch,int>(glitch::collada::CAnimationBlock **,glitch::collada::CAnimationBlock **,glitch::collada::SAnimationBlockSearchKey const&,glitch::collada::CAnimationBlockSearch,glitch::collada::CAnimationBlockSearch,int *) =====
int __fastcall std::priv::__lower_bound<glitch::collada::CAnimationBlock **,glitch::collada::SAnimationBlockSearchKey,glitch::collada::CAnimationBlockSearch,glitch::collada::CAnimationBlockSearch,int>(
        int result,
        int a2,
        int *a3)
{
  int i; // r5
  int v4; // r3
  _DWORD *v5; // r1
  int v6; // r7
  int v7; // r10
  int v8; // r12
  int v9; // r12
  unsigned int v10; // r8
  unsigned int v11; // r11
  int v12; // r4
  int v13; // r12
  int v14; // r6

  for ( i = (a2 - result) >> 2; i > 0; result = v7 + 4 )
  {
    v4 = i >> 1;
    v5 = *(_DWORD **)(result + 4 * (i >> 1));
    v6 = *a3;
    v7 = result + 4 * (i >> 1);
    if ( *a3 )
      v6 = 1;
    v8 = v5[1];
    v9 = v8 != 0;
    v10 = v5[3];
    v11 = a3[2];
    if ( v9 >= v6 )
    {
      v12 = v9;
      while ( 1 )
      {
        v13 = v4 >> 1;
        if ( v6 == v12 && (v11 > v10 || v11 == v10 && *(_DWORD *)(v5[4] + 4) < a3[3]) )
          break;
        if ( !v4 )
          return result;
        v5 = *(_DWORD **)(result + 4 * v13);
        v7 = result + 4 * v13;
        i = v4;
        v10 = v5[3];
        v14 = v5[1];
        if ( (v14 != 0) < v6 )
        {
          v4 >>= 1;
          break;
        }
        v12 = v5[1] != 0;
        v4 >>= 1;
      }
    }
    i = i - 1 - v4;
  }
  return result;
}


// ===== 60b530 std::priv::__lower_bound<glitch::collada::CAnimationBlock **,glitch::collada::CAnimationBlock *,glitch::collada::CAnimationBlockSearchCompare,glitch::collada::CAnimationBlockSearchCompare,int>(glitch::collada::CAnimationBlock **,glitch::collada::CAnimationBlock **,glitch::collada::CAnimationBlock * const&,glitch::collada::CAnimationBlockSearchCompare,glitch::collada::CAnimationBlockSearchCompare,int *) =====
int __fastcall std::priv::__lower_bound<glitch::collada::CAnimationBlock **,glitch::collada::CAnimationBlock *,glitch::collada::CAnimationBlockSearchCompare,glitch::collada::CAnimationBlockSearchCompare,int>(
        int result,
        int a2,
        int a3)
{
  int i; // r4
  int v4; // r3
  int v5; // r2
  int v6; // r8
  unsigned int v7; // r7
  int v8; // r1
  int v9; // r1
  int v10; // r6
  unsigned int v11; // r11
  int v12; // r12
  int v13; // r1
  int v14; // r5

  for ( i = (a2 - result) >> 2; i > 0; result = v6 + 4 )
  {
    v4 = i >> 1;
    v5 = *(_DWORD *)(result + 4 * (i >> 1));
    v6 = result + 4 * (i >> 1);
    v7 = *(_DWORD *)(v5 + 12);
    v8 = *(_DWORD *)(v5 + 4);
    v9 = v8 != 0;
    v10 = *(_DWORD *)(*(_DWORD *)a3 + 4) != 0;
    v11 = *(_DWORD *)(*(_DWORD *)a3 + 12);
    if ( v9 >= v10 )
    {
      v12 = v9;
      while ( 1 )
      {
        v13 = v4 >> 1;
        if ( v10 == v12 && (v11 > v7 || v11 == v7 && **(_DWORD **)(v5 + 16) < **(_DWORD **)(*(_DWORD *)a3 + 16)) )
          break;
        if ( !v4 )
          return result;
        v5 = *(_DWORD *)(result + 4 * v13);
        v6 = result + 4 * v13;
        i = v4;
        v7 = *(_DWORD *)(v5 + 12);
        v14 = *(_DWORD *)(v5 + 4);
        if ( (v14 != 0) < v10 )
        {
          v4 >>= 1;
          break;
        }
        v12 = *(_DWORD *)(v5 + 4) != 0;
        v4 >>= 1;
      }
    }
    i = i - 1 - v4;
  }
  return result;
}


// ===== 60b624 `global constructor keyed to'.._source_glitch_collada_CColladaAnimationStreamingManager.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaAnimationStreamingManager.cpp()
{
  dword_9F6D08 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6D04 = 1056964608;
}


// ===== 60b644 glitch::collada::COnDemandReader::~COnDemandReader() =====
void __fastcall glitch::collada::COnDemandReader::~COnDemandReader(glitch::collada::COnDemandReader *this)
{
  LC_API_FREE_0(this);
}


// ===== 60b658 glitch::res::onDemandReader::~onDemandReader() =====
void __fastcall glitch::res::onDemandReader::~onDemandReader(glitch::res::onDemandReader *this)
{
  LC_API_FREE_0(this);
}


// ===== 60b66c glitch::res::onDemand<glitch::collada::SAnimationData>::get(glitch::res::onDemandReader &) =====
int **__fastcall glitch::res::onDemand<glitch::collada::SAnimationData>::get(int **result, int *a2, int a3, int a4)
{
  int **v4; // r5
  void *v7; // r0

  v4 = result;
  *result = a2;
  if ( a2 )
    a4 = *a2;
  if ( a2 )
    *a2 = a4 + 1;
  if ( !a2[3] )
  {
    v7 = operator new[](a2[2] & 0xFFFFFFFC, 0);
    a2[3] = (int)v7;
    (*(void (__fastcall **)(int, int, int, void *))(*(_DWORD *)a3 + 8))(a3, a2[2], a2[1], v7);
    return v4;
  }
  return result;
}


// ===== 60b6d8 std::vector<glitch::collada::CAnimationBlock *,glitch::core::SAllocator<glitch::collada::CAnimationBlock *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::CAnimationBlock **,uint,glitch::collada::CAnimationBlock * const&,std::__false_type const&) [clone] =====
char *__fastcall std::vector<glitch::collada::CAnimationBlock *,glitch::core::SAllocator<glitch::collada::CAnimationBlock *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3)
{
  _BYTE *v6; // r5
  char *result; // r0
  unsigned int v8; // r8
  int v9; // r12
  int i; // r3

  if ( *a1 > (unsigned int)a3 )
  {
    v6 = (_BYTE *)a1[1];
  }
  else
  {
    v6 = (_BYTE *)a1[1];
    if ( a3 < (_DWORD *)v6 )
      return (char *)std::vector<glitch::collada::CAnimationBlock *,glitch::core::SAllocator<glitch::collada::CAnimationBlock *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux();
  }
  v8 = (v6 - (_BYTE *)a2) >> 2;
  if ( v8 > 1 )
  {
    result = (char *)memcpy(v6, v6 - 4, 4u);
    a1[1] += 4;
    if ( v6 - 4 - (_BYTE *)a2 > 0 )
      result = (char *)memmove(a2 + 1, a2, v6 - 4 - (_BYTE *)a2);
LABEL_8:
    *a2 = *a3;
    return result;
  }
  v9 = (int)(4 * (1 - v8)) >> 2;
  result = &v6[4 * (1 - v8)];
  if ( v9 > 0 )
  {
    for ( i = 0; i != v9; ++i )
      *(_DWORD *)&v6[4 * i] = *a3;
  }
  a1[1] = result;
  if ( a2 != (_DWORD *)v6 )
  {
    memcpy(result, a2, v6 - (_BYTE *)a2);
    result = (char *)a1[1];
  }
  a1[1] = &result[4 * v8];
  if ( v8 == 1 )
    goto LABEL_8;
  return result;
}


// ===== 60b7cc std::priv::__copy<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,int>(glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r10
  int v5; // r9
  int v6; // r5
  int v7; // r4
  int v8; // r7
  _DWORD *v9; // r3
  _DWORD *v10; // r6
  void *v12; // r0
  int v13; // r3

  v3 = (a2 - a1) >> 2;
  v4 = a3;
  v5 = -1431655765 * v3;
  if ( -1431655765 * v3 > 0 )
  {
    v6 = a1 + 12;
    v7 = a3 + 12;
    v8 = -1431655765 * v3;
    do
    {
      *(_DWORD *)(v7 - 12) = *(_DWORD *)(v6 - 12);
      v9 = *(_DWORD **)(v6 - 8);
      if ( v9 )
        ++*v9;
      v10 = *(_DWORD **)(v7 - 8);
      if ( v10 )
      {
        if ( (*v10)-- == 1 )
        {
          v12 = (void *)v10[3];
          if ( v12 )
            operator delete[](v12);
          v10[3] = 0;
        }
      }
      --v8;
      *(_DWORD *)(v7 - 8) = *(_DWORD *)(v6 - 8);
      v13 = *(_DWORD *)(v6 - 4);
      v6 += 12;
      *(_DWORD *)(v7 - 4) = v13;
      v7 += 12;
    }
    while ( v8 );
    v4 += 12 * v5;
  }
  return v4;
}


// ===== 60b888 std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::CAnimationStreamingManager::SegmentCacheEntry*,std::__false_type const&) =====
int __fastcall std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r3
  int v4; // r0
  int v6; // r6
  _DWORD *v7; // r5
  void *v9; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v4 = a2 + 12;
  if ( a2 + 12 != v2 )
  {
    std::priv::__copy<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,glitch::collada::CAnimationStreamingManager::SegmentCacheEntry *,int>(
      v4,
      v2,
      a2);
    v4 = *(_DWORD *)(a1 + 4);
  }
  v6 = v4 - 12;
  *(_DWORD *)(a1 + 4) = v4 - 12;
  v7 = *(_DWORD **)(v4 - 8);
  if ( v7 )
  {
    if ( (*v7)-- == 1 )
    {
      v9 = (void *)v7[3];
      if ( v9 )
        operator delete[](v9);
      v7[3] = 0;
    }
    *(_DWORD *)(v6 + 4) = 0;
  }
  return a2;
}


// ===== 60b918 glitch::collada::CAnimationStreamingManager::release(glitch::collada::CColladaDatabase *) =====
_DWORD *__fastcall glitch::collada::CAnimationStreamingManager::release(
        glitch::collada::CAnimationStreamingManager *this,
        glitch::collada::CColladaDatabase *a2)
{
  char *v4; // r7
  _DWORD *v5; // r1
  _DWORD *result; // r0
  int v7; // r3

  v4 = (char *)this + 12;
  v5 = *((_DWORD **)this + 3);
  result = *((_DWORD **)this + 4);
  while ( v5 != result )
  {
    v7 = *(_DWORD *)a2;
    if ( *(_DWORD *)a2 )
      v7 = *(_DWORD *)(v7 + 32);
    if ( v5[2] == v7 )
    {
      *((_DWORD *)this + 7) -= *v5;
      v5 = (_DWORD *)std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                       (int)v4,
                       (int)v5);
      result = *((_DWORD **)this + 4);
    }
    else
    {
      v5 += 3;
    }
  }
  return result;
}


// ===== 60b990 glitch::collada::CAnimationStreamingManager::checkMemoryUsage(void) =====
int *__fastcall glitch::collada::CAnimationStreamingManager::checkMemoryUsage(
        glitch::collada::CAnimationStreamingManager *this)
{
  _DWORD *v2; // r1
  int v3; // r3
  int *result; // r0
  _DWORD *v5; // r2
  int v6; // r0

  v2 = *((_DWORD **)this + 3);
  v3 = *((_DWORD *)this + 7);
  result = *((int **)this + 6);
  while ( (int)result < v3 )
  {
    if ( v2 == *((_DWORD **)this + 4) )
      return glitch::os::Printer::log((int)"AnimationStreamingManager : Memory usage exceed maximum cache size", 2);
    v5 = (_DWORD *)v2[1];
    if ( v5 && *v5 == 1 )
    {
      *((_DWORD *)this + 7) = v3 - *v2;
      v6 = std::vector<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,glitch::core::SAllocator<glitch::collada::CAnimationStreamingManager::SegmentCacheEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             (int)this + 12,
             (int)v2);
      v3 = *((_DWORD *)this + 7);
      v2 = (_DWORD *)v6;
      result = *((int **)this + 6);
    }
    else
    {
      v2 += 3;
    }
  }
  return result;
}


// ===== 60ba2c glitch::collada::CAnimationBlock::~CAnimationBlock() =====
void __fastcall glitch::collada::CAnimationBlock::~CAnimationBlock(glitch::collada::CAnimationBlock *this)
{
  glitch::collada::CAnimationBlock *v1; // r3
  glitch::collada::CAnimationBlock *v3; // r0
  glitch::collada::CAnimationBlock *v4; // r3
  _DWORD *v5; // r5
  void *v7; // r0

  v1 = *((glitch::collada::CAnimationBlock **)this + 6);
  if ( v1 )
  {
    if ( this != v1 )
    {
      *((_DWORD *)v1 + 7) = 0;
      v3 = *((glitch::collada::CAnimationBlock **)this + 6);
      if ( *(_DWORD *)v3 == 1 )
        glitch::collada::CAnimationBlock::free(v3);
    }
  }
  v4 = *((glitch::collada::CAnimationBlock **)this + 7);
  if ( v4 && this != v4 )
    *((_DWORD *)v4 + 6) = 0;
  v5 = *((_DWORD **)this + 5);
  if ( v5 )
  {
    if ( (*v5)-- == 1 )
    {
      v7 = (void *)v5[3];
      if ( v7 )
        operator delete[](v7);
      v5[3] = 0;
    }
    *((_DWORD *)this + 5) = 0;
  }
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CAnimationBlock *)((char *)this + 4));
}


// ===== 60bad0 glitch::collada::CAnimationBlock::free(void) =====
void __fastcall glitch::collada::CAnimationBlock::free(glitch::collada::CAnimationBlock *this)
{
  glitch::collada::CAnimationStreamingManager::unregisterAnimationBlock(
    (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
    this);
  if ( this )
  {
    glitch::collada::CAnimationBlock::~CAnimationBlock(this);
    LC_API_FREE_0(this);
  }
}


// ===== 60bb1c glitch::collada::CAnimationBlock::drop(void) =====
void __fastcall glitch::collada::CAnimationBlock::drop(glitch::collada::CAnimationBlock *this)
{
  int v1; // r3
  _DWORD *v2; // r3

  v1 = *(_DWORD *)this - 1;
  *(_DWORD *)this = v1;
  if ( v1 == 1 )
  {
    v2 = *((_DWORD **)this + 7);
    if ( !v2 || *v2 == 1 || (this = *((glitch::collada::CAnimationBlock **)this + 6)) != nullptr && *(_DWORD *)this == 1 )
      glitch::collada::CAnimationBlock::free(this);
  }
}


// ===== 60bb64 glitch::collada::CAnimationStreamingManager::unregisterAnimationBlock(glitch::collada::CAnimationBlock *) =====
void __fastcall glitch::collada::CAnimationStreamingManager::unregisterAnimationBlock(
        glitch::collada::CAnimationStreamingManager *this,
        glitch::collada::CAnimationBlock *a2)
{
  int v3; // r3
  int v4; // r0
  char *v5; // r0
  char *v6; // r3
  char *v7; // r1
  glitch::collada::CAnimationBlock *v8; // [sp+Ch] [bp-4h] BYREF

  v3 = *((_DWORD *)this + 1);
  v4 = *(_DWORD *)this;
  v8 = a2;
  v5 = (char *)std::priv::__lower_bound<glitch::collada::CAnimationBlock **,glitch::collada::CAnimationBlock *,glitch::collada::CAnimationBlockSearchCompare,glitch::collada::CAnimationBlockSearchCompare,int>(
                 v4,
                 v3,
                 (int)&v8);
  v6 = *((char **)this + 1);
  v7 = v5 + 4;
  if ( v5 + 4 != v6 )
  {
    memmove(v5, v7, v6 - v7);
    v7 = *((char **)this + 1);
  }
  *((_DWORD *)this + 1) = v7 - 4;
  glitch::collada::CAnimationBlock::drop(v8);
}


// ===== 60bbd4 glitch::collada::intrusive_ptr_release(glitch::collada::CAnimationBlock *) =====
// attributes: thunk
void __fastcall glitch::collada::intrusive_ptr_release(
        glitch::collada::CAnimationBlock *this,
        glitch::collada::CAnimationBlock *a2)
{
  glitch::collada::CAnimationBlock::drop(this);
}


// ===== 60bbd8 glitch::collada::CAnimationBlock::~CAnimationBlock() =====
void __fastcall glitch::collada::CAnimationBlock::~CAnimationBlock(glitch::collada::CAnimationBlock *this)
{
  glitch::collada::CAnimationBlock *v1; // r3
  glitch::collada::CAnimationBlock *v3; // r0
  glitch::collada::CAnimationBlock *v4; // r3
  _DWORD *v5; // r5
  void *v7; // r0

  v1 = *((glitch::collada::CAnimationBlock **)this + 6);
  if ( v1 )
  {
    if ( this != v1 )
    {
      *((_DWORD *)v1 + 7) = 0;
      v3 = *((glitch::collada::CAnimationBlock **)this + 6);
      if ( *(_DWORD *)v3 == 1 )
        glitch::collada::CAnimationBlock::free(v3);
    }
  }
  v4 = *((glitch::collada::CAnimationBlock **)this + 7);
  if ( v4 && this != v4 )
    *((_DWORD *)v4 + 6) = 0;
  v5 = *((_DWORD **)this + 5);
  if ( v5 )
  {
    if ( (*v5)-- == 1 )
    {
      v7 = (void *)v5[3];
      if ( v7 )
        operator delete[](v7);
      v5[3] = 0;
    }
    *((_DWORD *)this + 5) = 0;
  }
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CAnimationBlock *)((char *)this + 4));
}


// ===== 60bc7c glitch::collada::CAnimationStreamingManager::cache(glitch::collada::CAnimationBlock *) =====
void __fastcall glitch::collada::CAnimationStreamingManager::cache(
        glitch::collada::CAnimationStreamingManager *a1,
        int a2)
{
  _DWORD *v4; // r4
  int v5; // r6
  _DWORD *v6; // r10
  int v7; // r3
  int v8; // r8
  int v9; // r3
  _DWORD *v10; // r3
  _DWORD *v11; // r7
  int v12; // r3
  bool v13; // zf
  int v14; // r2
  void *v15; // r0
  void *v16; // r0
  unsigned int v17; // r2
  unsigned int v18; // r1
  size_t v19; // r9
  _DWORD *v20; // r0
  _DWORD *v21; // r3
  _DWORD *v22; // r11
  int v23; // r7
  _DWORD *v24; // r12
  int v25; // r0
  _DWORD *v26; // r2
  _DWORD *v27; // r1
  int v28; // r1
  char *v29; // r0
  char *v30; // r10
  char *v31; // r6
  _DWORD *v32; // r7
  void *v33; // r0
  _DWORD *v34; // [sp+4h] [bp-8h]

  v4 = *(_DWORD **)(a2 + 16);
  if ( *((int *)a1 + 6) > 0 )
  {
    glitch::collada::CAnimationStreamingManager::checkMemoryUsage(a1);
    v5 = v4[4];
    v6 = v4 + 2;
    *((_DWORD *)a1 + 7) += v5;
    glitch::collada::CAnimationStreamingManager::checkMemoryUsage(a1);
    v7 = v4[2] + 1;
    v4[2] = v7;
    v8 = *(_DWORD *)(a2 + 4);
    v9 = v7 + 1;
    if ( v8 )
      v8 = *(_DWORD *)(v8 + 32);
    v4[2] = v9;
    v10 = *((_DWORD **)a1 + 4);
    v11 = *((_DWORD **)a1 + 5);
    if ( v10 == v11 )
    {
      v17 = -1431655765 * (((int)v11 - *((_DWORD *)a1 + 3)) >> 2);
      if ( v17 )
        v18 = 1431655766 * (((int)v11 - *((_DWORD *)a1 + 3)) >> 2);
      else
        v18 = 1;
      if ( v18 > 0x15555555 || v17 > v18 )
        v19 = -1;
      else
        v19 = 3 * v18;
      v20 = GlitchAlloc(v19 * 4, 0);
      v21 = *((_DWORD **)a1 + 3);
      v22 = v20;
      v23 = v11 - v21;
      if ( -1431655765 * v23 > 0 )
      {
        v25 = -1431655765 * v23;
        v26 = v22;
        do
        {
          *v26 = *v21;
          v27 = (_DWORD *)v21[1];
          v26[1] = v27;
          if ( v27 )
            ++*v27;
          v28 = v21[2];
          --v25;
          v21 += 3;
          v26[2] = v28;
          v26 += 3;
        }
        while ( v25 );
        v24 = &v22[v23];
      }
      else
      {
        v24 = v20;
      }
      *v24 = v5;
      v24[1] = v6;
      v34 = v24 + 3;
      ++v4[2];
      v24[2] = v8;
      v29 = *((char **)a1 + 4);
      v30 = *((char **)a1 + 3);
      if ( v29 != v30 )
      {
        v31 = *((char **)a1 + 4);
        do
        {
          v32 = *((_DWORD **)v31 - 2);
          if ( v32 )
          {
            v13 = (*v32)-- == 1;
            if ( v13 )
            {
              v33 = (void *)v32[3];
              if ( v33 )
                operator delete[](v33);
              v32[3] = 0;
            }
            *((_DWORD *)v31 - 2) = 0;
          }
          v31 -= 12;
        }
        while ( v30 != v31 );
        v29 = *((char **)a1 + 3);
      }
      GlitchFree(v29);
      *((_DWORD *)a1 + 5) = &v22[v19];
      *((_DWORD *)a1 + 3) = v22;
      *((_DWORD *)a1 + 4) = v34;
    }
    else
    {
      *v10 = v5;
      v10[1] = v6;
      ++v4[2];
      v10[2] = v8;
      *((_DWORD *)a1 + 4) += 12;
    }
    v12 = v4[2] - 1;
    v13 = v4[2] == 1;
    v4[2] = v12;
    v14 = v12;
    if ( v13 )
    {
      v15 = (void *)v4[5];
      if ( v15 )
      {
        operator delete[](v15);
        v12 = v4[2];
      }
      v4[5] = 0;
      v14 = v12;
    }
    v4[2] = v14 - 1;
    if ( v14 == 1 )
    {
      v16 = (void *)v4[5];
      if ( v16 )
        operator delete[](v16);
      v4[5] = 0;
    }
  }
}


// ===== 60bee4 glitch::collada::SAnimationSegment::getData(glitch::res::onDemandReader &) =====
glitch::collada::SAnimationSegment *__fastcall glitch::collada::SAnimationSegment::getData(
        glitch::collada::SAnimationSegment *this,
        glitch::res::onDemandReader *a2,
        int a3,
        int a4)
{
  int v4; // r5
  int *v7; // r6
  int *v8; // r3
  int v9; // r2
  void *v11; // r0
  int *v12; // r3
  int v13; // r3
  int v14; // r2
  void *v15; // r0
  int v16; // r6
  int v17; // r0
  glitch::res::onDemandReader *v18; // [sp+4h] [bp-Ch]
  int *v19; // [sp+Ch] [bp-4h] BYREF

  v4 = *((_DWORD *)a2 + 2);
  if ( v4 )
  {
    if ( v4 == 1 )
    {
      v13 = *((_DWORD *)a2 + 3);
      *((_DWORD *)a2 + 2) = 2;
      if ( !v13 )
      {
        v14 = *((_DWORD *)a2 + 4);
        if ( !v14 )
        {
          v16 = **((_DWORD **)a2 + 5);
          if ( v16 > 0 )
          {
            do
            {
              v17 = *((_DWORD *)a2 + 5) + 8 * v14++;
              *(_DWORD *)(v17 + 8) += v17 + 8;
            }
            while ( v14 != v16 );
          }
          *((_DWORD *)a2 + 4) = 1;
        }
      }
      *(_DWORD *)this = (char *)a2 + 8;
      if ( !*((_DWORD *)a2 + 2) )
      {
        v15 = *((void **)a2 + 5);
        if ( v15 )
        {
          v18 = a2;
          operator delete[](v15);
          a2 = v18;
        }
        *((_DWORD *)a2 + 5) = 0;
      }
    }
    else
    {
      *(_DWORD *)this = (char *)a2 + 8;
      ++*((_DWORD *)a2 + 2);
    }
  }
  else
  {
    glitch::res::onDemand<glitch::collada::SAnimationData>::get(&v19, (int *)a2 + 2, a3, a4);
    v7 = v19;
    v8 = (int *)v19[3];
    v9 = *v8;
    if ( *v8 > 0 )
    {
      while ( 1 )
      {
        v12 = &v8[2 * v4++];
        v12[2] += (int)(v12 + 2);
        if ( v4 == v9 )
          break;
        v8 = (int *)v19[3];
      }
      v7 = v19;
    }
    *(_DWORD *)this = v7;
    if ( v7 )
    {
      ++*v7;
      v7 = v19;
    }
    if ( v7 )
    {
      if ( (*v7)-- == 1 )
      {
        v11 = (void *)v7[3];
        if ( v11 )
          operator delete[](v11);
        v7[3] = 0;
      }
    }
  }
  return this;
}


// ===== 60c05c glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&,glitch::collada::SAnimationClip const*,int) =====
int __fastcall glitch::collada::CAnimationBlock::CAnimationBlock(
        int a1,
        glitch::collada::CColladaDatabase *this,
        int a3,
        int a4)
{
  int v5; // r0
  int v7; // r12
  glitch::IReferenceCounted *v8; // r7
  _DWORD *v9; // r8
  bool v10; // zf
  void *v11; // r0
  _DWORD *v12; // r8
  int result; // r0
  void *v14; // r0
  _DWORD *v15; // [sp+Ch] [bp-4h] BYREF

  *(_DWORD *)a1 = 0;
  v5 = *(_DWORD *)this;
  *(_DWORD *)(a1 + 4) = *(_DWORD *)this;
  *(_DWORD *)(a1 + 8) = *((_DWORD *)this + 1);
  if ( v5 )
  {
    v7 = *(_DWORD *)(v5 + 4);
    if ( v7 )
      *(_DWORD *)(v5 + 4) = v7 + 1;
  }
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 12) = a3;
  *(_DWORD *)(a1 + 16) = glitch::collada::CColladaDatabase::getAnimationSegment(this, a4);
  v8 = *(glitch::IReferenceCounted **)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 4);
  if ( v8 )
    v8 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                          + 52)
                                                                            + 12))(
                                        *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                        *((_DWORD *)v8 + 5));
  glitch::collada::SAnimationSegment::getData(
    (glitch::collada::SAnimationSegment *)&v15,
    *(glitch::res::onDemandReader **)(a1 + 16));
  if ( v15 )
    ++*v15;
  v9 = *(_DWORD **)(a1 + 20);
  if ( v9 )
  {
    v10 = (*v9)-- == 1;
    if ( v10 )
    {
      v11 = (void *)v9[3];
      if ( v11 )
        operator delete[](v11);
      v9[3] = 0;
    }
  }
  v12 = v15;
  v10 = v15 == nullptr;
  *(_DWORD *)(a1 + 20) = v15;
  if ( !v10 )
  {
    v10 = (*v12)-- == 1;
    if ( v10 )
    {
      v14 = (void *)v12[3];
      if ( v14 )
        operator delete[](v14);
      v12[3] = 0;
    }
    v15 = nullptr;
  }
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  glitch::collada::CAnimationStreamingManager::registerAnimationBlock(
    (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
    (glitch::collada::CAnimationBlock *)a1);
  result = a1;
  if ( !*(_DWORD *)(a1 + 12) )
    *(_DWORD *)(a1 + 12) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 24;
  return result;
}


// ===== 60c220 glitch::collada::CAnimationStreamingManager::getAnimationBlock(glitch::collada::SAnimationBlockSearchKey &) =====
_DWORD *__fastcall glitch::collada::CAnimationStreamingManager::getAnimationBlock(
        glitch::collada::CAnimationStreamingManager *this,
        glitch::collada::SAnimationBlockSearchKey *a2)
{
  _DWORD *v4; // r5
  int v6; // r0
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r1
  int v10; // r2

  v4 = *(_DWORD **)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)a2 + 36) + 32) + 36);
  if ( v4 )
  {
    v6 = std::priv::__lower_bound<glitch::collada::CAnimationBlock **,glitch::collada::SAnimationBlockSearchKey,glitch::collada::CAnimationBlockSearch,glitch::collada::CAnimationBlockSearch,int>(
           *(_DWORD *)this,
           *((_DWORD *)this + 1),
           (int *)a2);
    if ( v6 == *((_DWORD *)this + 1) )
      goto LABEL_7;
    v4 = *(_DWORD **)v6;
    v7 = *(_DWORD *)a2;
    if ( *(_DWORD *)a2 )
      v7 = 1;
    if ( v7 != (*(_DWORD *)(*(_DWORD *)v6 + 4) != 0)
      || (v8 = *((_DWORD *)a2 + 2), v8 != v4[3])
      || ((v9 = (_DWORD *)v4[4], v10 = *((_DWORD *)a2 + 3), *v9 > v10) || v10 > v9[1])
      && (!v8 || v10 >= *(_DWORD *)(v8 + 4) && v10 <= *(_DWORD *)(v8 + 8)) )
    {
LABEL_7:
      v4 = operator new(0x20u, 0);
      glitch::collada::CAnimationBlock::CAnimationBlock((int)v4, a2, *((_DWORD *)a2 + 2), *((_DWORD *)a2 + 3));
    }
  }
  return v4;
}


// ===== 60c31c glitch::collada::CAnimationBlock::prepareNextBlock(void) =====
void __fastcall glitch::collada::CAnimationBlock::prepareNextBlock(glitch::collada::CAnimationBlock *this)
{
  int v1; // r3
  _DWORD *v3; // r0
  int v4; // r2
  int v5; // r2
  int v6; // r12
  int v7; // r12
  int v8; // r0
  int v9; // r3
  _DWORD *AnimationBlock; // r0
  _DWORD v11[3]; // [sp+0h] [bp-14h] BYREF
  int v12; // [sp+Ch] [bp-8h]

  v1 = *((_DWORD *)this + 3);
  if ( !v1 )
  {
    v4 = *(_DWORD *)(*((_DWORD *)this + 4) + 4);
    goto LABEL_3;
  }
  v3 = *((_DWORD **)this + 4);
  v4 = v3[1];
  if ( *(_DWORD *)(v1 + 8) > v4 )
  {
LABEL_3:
    v5 = v4 + 1;
    goto LABEL_4;
  }
  v5 = *(_DWORD *)(v1 + 4);
  if ( *v3 <= v5 )
  {
    *((_DWORD *)this + 6) = this;
    return;
  }
LABEL_4:
  v6 = *((_DWORD *)this + 2);
  v11[0] = *((_DWORD *)this + 1);
  v11[1] = v6;
  if ( v11[0] )
  {
    v7 = *(_DWORD *)(v11[0] + 4);
    if ( v7 )
      *(_DWORD *)(v11[0] + 4) = v7 + 1;
  }
  v11[2] = v1;
  v8 = *(_DWORD *)(v1 + 4);
  v9 = *(_DWORD *)(v1 + 8);
  if ( v5 < v8 )
    v5 = v8;
  if ( v5 > v9 )
    v12 = v9;
  else
    v12 = v5;
  AnimationBlock = glitch::collada::CAnimationStreamingManager::getAnimationBlock(
                     (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
                     (glitch::collada::SAnimationBlockSearchKey *)v11);
  *((_DWORD *)this + 6) = AnimationBlock;
  AnimationBlock[7] = this;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v11);
}


// ===== 60c3f0 glitch::collada::CAnimationBlock::grab(void) =====
void __fastcall glitch::collada::CAnimationBlock::grab(glitch::collada::CAnimationBlock *this)
{
  int v1; // r2

  v1 = *(_DWORD *)this + 1;
  *(_DWORD *)this = v1;
  if ( v1 == 2 && !*((_DWORD *)this + 6) )
    glitch::collada::CAnimationBlock::prepareNextBlock(this);
}


// ===== 60c414 glitch::collada::CAnimationStreamingManager::registerAnimationBlock(glitch::collada::CAnimationBlock *) =====
void __fastcall glitch::collada::CAnimationStreamingManager::registerAnimationBlock(
        glitch::collada::CAnimationStreamingManager *this,
        glitch::collada::CAnimationBlock *a2)
{
  int v3; // r3
  int v4; // r0
  _DWORD *v5; // r0
  int v6; // r3
  const void *v7; // r6
  unsigned int v8; // r3
  unsigned int v9; // r7
  size_t v10; // r7
  _DWORD *v11; // r0
  const void *v12; // r1
  _DWORD *v13; // r5
  size_t v14; // r8
  char *v15; // r0
  size_t v16; // r8
  char *v17; // r8
  glitch::collada::CAnimationBlock *v18; // r1
  glitch::collada::CAnimationBlock **v19; // r0
  glitch::collada::CAnimationBlock *v20; // [sp+Ch] [bp-4h] BYREF

  v3 = *((_DWORD *)this + 1);
  v4 = *(_DWORD *)this;
  v20 = a2;
  v5 = (_DWORD *)std::priv::__lower_bound<glitch::collada::CAnimationBlock **,glitch::collada::CAnimationBlock *,glitch::collada::CAnimationBlockSearchCompare,glitch::collada::CAnimationBlockSearchCompare,int>(
                   v4,
                   v3,
                   (int)&v20);
  v6 = *((_DWORD *)this + 1);
  v7 = v5;
  if ( !((unsigned int)(*((_DWORD *)this + 2) - v6) >> 2) )
  {
    v8 = (v6 - *(_DWORD *)this) >> 2;
    if ( v8 )
      v9 = 2 * v8;
    else
      v9 = 1;
    if ( v9 > 0x3FFFFFFF || v8 > v9 )
    {
      v10 = -1;
      v11 = GlitchAlloc(0xFFFFFFFC, 0);
      v12 = *(const void **)this;
      v13 = v11;
      v14 = (size_t)v7 - *(_DWORD *)this;
      if ( v7 != *(const void **)this )
        goto LABEL_16;
    }
    else
    {
      v10 = v9;
      v11 = GlitchAlloc(v10 * 4, 0);
      v12 = *(const void **)this;
      v13 = v11;
      v14 = (size_t)v7 - *(_DWORD *)this;
      if ( v7 != *(const void **)this )
      {
LABEL_16:
        v19 = (glitch::collada::CAnimationBlock **)((char *)memmove(v11, v12, v14) + v14);
        *v19 = v20;
        v15 = (char *)(v19 + 1);
        v16 = *((_DWORD *)this + 1) - (_DWORD)v7;
        if ( !v16 )
        {
          v17 = v15;
          goto LABEL_10;
        }
LABEL_18:
        v17 = (char *)memmove(v15, v7, v16) + v16;
LABEL_10:
        GlitchFree(*(void **)this);
        *((_DWORD *)this + 1) = v17;
        *((_DWORD *)this + 2) = &v13[v10];
        *(_DWORD *)this = v13;
        glitch::collada::CAnimationBlock::grab(v20);
        v18 = v20;
        if ( *(_DWORD *)(*((_DWORD *)v20 + 4) + 8) != 1 )
          return;
LABEL_20:
        glitch::collada::CAnimationStreamingManager::cache(this, (int)v18);
        return;
      }
    }
    *v11 = v20;
    v15 = (char *)(v11 + 1);
    v16 = *((_DWORD *)this + 1) - (_DWORD)v7;
    if ( !v16 )
    {
      v17 = v15;
      goto LABEL_10;
    }
    goto LABEL_18;
  }
  std::vector<glitch::collada::CAnimationBlock *,glitch::core::SAllocator<glitch::collada::CAnimationBlock *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    this,
    v5,
    &v20);
  glitch::collada::CAnimationBlock::grab(v20);
  v18 = v20;
  if ( *(_DWORD *)(*((_DWORD *)v20 + 4) + 8) == 1 )
    goto LABEL_20;
}


// ===== 60c598 glitch::collada::intrusive_ptr_add_ref(glitch::collada::CAnimationBlock *) =====
// attributes: thunk
void __fastcall glitch::collada::intrusive_ptr_add_ref(
        glitch::collada::CAnimationBlock *this,
        glitch::collada::CAnimationBlock *a2)
{
  glitch::collada::CAnimationBlock::grab(this);
}


// ===== 60c59c glitch::collada::CAnimationStreamingManager::getAnimationBlock(glitch::collada::SAnimationBlockSearchKey &,boost::intrusive_ptr<glitch::collada::CAnimationBlock> &) =====
void __fastcall glitch::collada::CAnimationStreamingManager::getAnimationBlock(
        glitch::collada::CAnimationStreamingManager *this,
        glitch::collada::SAnimationBlockSearchKey *a2,
        glitch::collada::CAnimationBlock **a3)
{
  glitch::collada::CAnimationBlock *Block; // r0
  glitch::collada::CAnimationBlock *v7; // r1
  glitch::collada::CAnimationBlock *v8; // r7
  glitch::collada::CAnimationBlock *v9; // r1
  glitch::collada::CAnimationBlock *v10; // r0
  glitch::collada::CAnimationBlock *AnimationBlock; // r0
  glitch::collada::CAnimationBlock *v12; // r1
  glitch::collada::CAnimationBlock *v13; // r5

  if ( *a3 )
  {
    Block = (glitch::collada::CAnimationBlock *)glitch::collada::CAnimationBlock::getBlock(*a3, a2);
    v8 = Block;
    if ( Block )
    {
      glitch::collada::intrusive_ptr_add_ref(Block, v7);
      v10 = *a3;
      *a3 = v8;
      if ( !v10 )
        return;
      goto LABEL_4;
    }
  }
  AnimationBlock = (glitch::collada::CAnimationBlock *)glitch::collada::CAnimationStreamingManager::getAnimationBlock(
                                                         this,
                                                         a2);
  v13 = AnimationBlock;
  if ( AnimationBlock )
  {
    glitch::collada::intrusive_ptr_add_ref(AnimationBlock, v12);
    v10 = *a3;
    *a3 = v13;
    if ( v10 )
LABEL_4:
      glitch::collada::intrusive_ptr_release(v10, v9);
  }
}


// ===== 60c610 glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&,glitch::collada::SAnimationClip const*,glitch::collada::SAnimationSegment *) =====
glitch::collada::CAnimationBlock *__fastcall glitch::collada::CAnimationBlock::CAnimationBlock(
        glitch::collada::CAnimationBlock *a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v6; // r1
  int v7; // r0
  glitch::res::onDemandReader *v8; // r1
  _DWORD *v9; // r5
  bool v10; // zf
  void *v11; // r0
  _DWORD *v12; // r5
  void *v13; // r0
  glitch::collada::CAnimationBlock *result; // r0
  _DWORD v15[2]; // [sp+4h] [bp-Ch] BYREF
  _DWORD *v16; // [sp+Ch] [bp-4h] BYREF

  *(_DWORD *)a1 = 0;
  v6 = *a2;
  *((_DWORD *)a1 + 1) = v6;
  *((_DWORD *)a1 + 2) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *((_DWORD *)a1 + 3) = a3;
  *((_DWORD *)a1 + 4) = a4;
  *((_DWORD *)a1 + 7) = 0;
  *((_DWORD *)a1 + 5) = 0;
  *((_DWORD *)a1 + 6) = 0;
  glitch::collada::CAnimationStreamingManager::registerAnimationBlock(
    (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
    a1);
  v15[1] = (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                               + 52)
                                                 + 12))(
             *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
             *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 4) + 20));
  v8 = *((glitch::res::onDemandReader **)a1 + 4);
  v15[0] = off_978560;
  glitch::collada::SAnimationSegment::getData((glitch::collada::SAnimationSegment *)&v16, v8, (int)v15, (int)off_978560);
  if ( v16 )
    ++*v16;
  v9 = *((_DWORD **)a1 + 5);
  if ( v9 )
  {
    v10 = (*v9)-- == 1;
    if ( v10 )
    {
      v11 = (void *)v9[3];
      if ( v11 )
        operator delete[](v11);
      v9[3] = 0;
    }
  }
  v12 = v16;
  v10 = v16 == nullptr;
  *((_DWORD *)a1 + 5) = v16;
  if ( !v10 )
  {
    v10 = (*v12)-- == 1;
    if ( v10 )
    {
      v13 = (void *)v12[3];
      if ( v13 )
        operator delete[](v13);
      v12[3] = 0;
    }
    v16 = nullptr;
  }
  result = a1;
  if ( !*((_DWORD *)a1 + 3) )
    *((_DWORD *)a1 + 3) = *(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 24;
  return result;
}


// ===== 60c7a8 glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&,glitch::collada::SAnimationClip const*,glitch::collada::SAnimationSegment *) =====
glitch::collada::CAnimationBlock *__fastcall glitch::collada::CAnimationBlock::CAnimationBlock(
        glitch::collada::CAnimationBlock *a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v6; // r1
  int v7; // r0
  glitch::res::onDemandReader *v8; // r1
  _DWORD *v9; // r5
  bool v10; // zf
  void *v11; // r0
  _DWORD *v12; // r5
  void *v13; // r0
  glitch::collada::CAnimationBlock *result; // r0
  _DWORD v15[2]; // [sp+4h] [bp-Ch] BYREF
  _DWORD *v16; // [sp+Ch] [bp-4h] BYREF

  *(_DWORD *)a1 = 0;
  v6 = *a2;
  *((_DWORD *)a1 + 1) = v6;
  *((_DWORD *)a1 + 2) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *((_DWORD *)a1 + 3) = a3;
  *((_DWORD *)a1 + 4) = a4;
  *((_DWORD *)a1 + 7) = 0;
  *((_DWORD *)a1 + 5) = 0;
  *((_DWORD *)a1 + 6) = 0;
  glitch::collada::CAnimationStreamingManager::registerAnimationBlock(
    (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
    a1);
  v15[1] = (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                               + 52)
                                                 + 12))(
             *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
             *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 4) + 20));
  v8 = *((glitch::res::onDemandReader **)a1 + 4);
  v15[0] = off_978560;
  glitch::collada::SAnimationSegment::getData((glitch::collada::SAnimationSegment *)&v16, v8, (int)v15, (int)off_978560);
  if ( v16 )
    ++*v16;
  v9 = *((_DWORD **)a1 + 5);
  if ( v9 )
  {
    v10 = (*v9)-- == 1;
    if ( v10 )
    {
      v11 = (void *)v9[3];
      if ( v11 )
        operator delete[](v11);
      v9[3] = 0;
    }
  }
  v12 = v16;
  v10 = v16 == nullptr;
  *((_DWORD *)a1 + 5) = v16;
  if ( !v10 )
  {
    v10 = (*v12)-- == 1;
    if ( v10 )
    {
      v13 = (void *)v12[3];
      if ( v13 )
        operator delete[](v13);
      v12[3] = 0;
    }
    v16 = nullptr;
  }
  result = a1;
  if ( !*((_DWORD *)a1 + 3) )
    *((_DWORD *)a1 + 3) = *(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 24;
  return result;
}


// ===== 60c940 glitch::collada::CAnimationBlock::CAnimationBlock(glitch::collada::CColladaDatabase const&,glitch::collada::SAnimationClip const*,int) =====
glitch::collada::CAnimationBlock *__fastcall glitch::collada::CAnimationBlock::CAnimationBlock(
        glitch::collada::CAnimationBlock *a1,
        glitch::collada::CColladaDatabase *this,
        int a3,
        int a4)
{
  int v5; // r0
  int v7; // r12
  glitch::IReferenceCounted *v8; // r7
  glitch::res::onDemandReader *v9; // r1
  _DWORD *v10; // r8
  bool v11; // zf
  void *v12; // r0
  _DWORD *v13; // r8
  glitch::collada::CAnimationBlock *result; // r0
  void *v15; // r0
  _DWORD v16[2]; // [sp+4h] [bp-Ch] BYREF
  _DWORD *v17; // [sp+Ch] [bp-4h] BYREF

  *(_DWORD *)a1 = 0;
  v5 = *(_DWORD *)this;
  *((_DWORD *)a1 + 1) = *(_DWORD *)this;
  *((_DWORD *)a1 + 2) = *((_DWORD *)this + 1);
  if ( v5 )
  {
    v7 = *(_DWORD *)(v5 + 4);
    if ( v7 )
      *(_DWORD *)(v5 + 4) = v7 + 1;
  }
  *((_DWORD *)a1 + 7) = 0;
  *((_DWORD *)a1 + 5) = 0;
  *((_DWORD *)a1 + 6) = 0;
  *((_DWORD *)a1 + 3) = a3;
  *((_DWORD *)a1 + 4) = glitch::collada::CColladaDatabase::getAnimationSegment(this, a4);
  v8 = *(glitch::IReferenceCounted **)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 4);
  if ( v8 )
    v8 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                          + 52)
                                                                            + 12))(
                                        *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                        *((_DWORD *)v8 + 5));
  v9 = *((glitch::res::onDemandReader **)a1 + 4);
  v16[1] = v8;
  v16[0] = off_978560;
  glitch::collada::SAnimationSegment::getData((glitch::collada::SAnimationSegment *)&v17, v9, (int)v16, (int)off_978560);
  if ( v17 )
    ++*v17;
  v10 = *((_DWORD **)a1 + 5);
  if ( v10 )
  {
    v11 = (*v10)-- == 1;
    if ( v11 )
    {
      v12 = (void *)v10[3];
      if ( v12 )
        operator delete[](v12);
      v10[3] = 0;
    }
  }
  v13 = v17;
  v11 = v17 == nullptr;
  *((_DWORD *)a1 + 5) = v17;
  if ( !v11 )
  {
    v11 = (*v13)-- == 1;
    if ( v11 )
    {
      v15 = (void *)v13[3];
      if ( v15 )
        operator delete[](v15);
      v13[3] = 0;
    }
    v17 = nullptr;
  }
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  glitch::collada::CAnimationStreamingManager::registerAnimationBlock(
    (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
    a1);
  result = a1;
  if ( !*((_DWORD *)a1 + 3) )
    *((_DWORD *)a1 + 3) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 24;
  return result;
}


// ===== 60cb04 `global constructor keyed to'.._source_glitch_collada_CColladaBillboardSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaBillboardSceneNode.cpp()
{
  dword_9F6D18 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6D14 = 1056964608;
}


// ===== 60cb24 glitch::collada::CBillboardSceneNode::getTransformedBoundingBox(void) =====
char *__fastcall glitch::collada::CBillboardSceneNode::getTransformedBoundingBox(
        glitch::collada::CBillboardSceneNode *this)
{
  char *v2; // r5
  _DWORD *v3; // r0
  int Parent; // r0
  int v5; // r0

  if ( (*((_DWORD *)this + 71) & 0x100) == 0 )
    return (char *)this + 212;
  v3 = (_DWORD *)(*(int (__fastcall **)(glitch::collada::CBillboardSceneNode *))(*(_DWORD *)this + 48))(this);
  *((_DWORD *)this + 53) = *v3;
  v2 = (char *)this + 212;
  *((_DWORD *)this + 54) = v3[1];
  *((_DWORD *)this + 55) = v3[2];
  *((_DWORD *)this + 56) = v3[3];
  *((_DWORD *)this + 57) = v3[4];
  *((_DWORD *)this + 58) = v3[5];
  Parent = glitch::scene::ISceneNode::getParent(this);
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)Parent + 56))(Parent);
  glitch::core::CMatrix4<float>::transformBoxEx(v5, (float *)this + 53);
  *((_DWORD *)this + 71) &= ~0x100u;
  return v2;
}


// ===== 60cbb0 glitch::collada::CBillboardSceneNode::computeBoundingBox(void) =====
bool __fastcall glitch::collada::CBillboardSceneNode::computeBoundingBox(glitch::collada::CBillboardSceneNode *this)
{
  float v2; // r0
  float v3; // r5
  float v4; // r0
  float v5; // r6
  _BOOL4 result; // r0
  int v7; // r3
  float v8; // r6
  float v9; // r8
  float v10; // r7

  glitch::collada::CSceneNode::computeBoundingBox(this);
  v2 = sqrt((float)((float)((float)(*((float *)this + 76) * *((float *)this + 76))
                          + (float)(*((float *)this + 77) * *((float *)this + 77)))
                  + (float)(*((float *)this + 78) * *((float *)this + 78))));
  v3 = v2;
  v4 = sqrt((float)((float)((float)(*((float *)this + 79) * *((float *)this + 79))
                          + (float)(*((float *)this + 80) * *((float *)this + 80)))
                  + (float)(*((float *)this + 81) * *((float *)this + 81))));
  v5 = v4;
  result = v3 > v4;
  if ( !result )
    v3 = v5;
  v7 = *(_DWORD *)(*((_DWORD *)this + 85) + 76);
  if ( *(_DWORD *)v7 != 2 )
    goto LABEL_4;
  v9 = *(float *)(v7 + 28);
  v10 = *(float *)(v7 + 24);
  if ( *(float *)(v7 + 20) == 1.0 && v10 == 0.0 )
  {
    result = v9 == 0.0;
    if ( v9 == 0.0 )
    {
      *((float *)this + 81) = v3;
      *((_DWORD *)this + 78) = LODWORD(v3) + 0x80000000;
      *((_DWORD *)this + 77) = LODWORD(v3) + 0x80000000;
      *((float *)this + 80) = v3;
      return result;
    }
LABEL_4:
    *((float *)this + 81) = v3;
    *((_DWORD *)this + 78) = LODWORD(v3) + 0x80000000;
    *((_DWORD *)this + 76) = LODWORD(v3) + 0x80000000;
    *((_DWORD *)this + 77) = LODWORD(v3) + 0x80000000;
    *((float *)this + 79) = v3;
    *((float *)this + 80) = v3;
    return result;
  }
  v8 = *(float *)(v7 + 20);
  result = v8 == 0.0;
  if ( v8 != 0.0 )
    goto LABEL_4;
  if ( v10 == 1.0 )
  {
    result = v9 == 0.0;
    if ( v9 != 0.0 )
      goto LABEL_4;
    *((float *)this + 81) = v3;
    *((_DWORD *)this + 78) = LODWORD(v3) + 0x80000000;
    *((_DWORD *)this + 76) = LODWORD(v3) + 0x80000000;
    *((float *)this + 79) = v3;
  }
  else
  {
    result = v10 == 0.0;
    if ( v10 != 0.0 )
      goto LABEL_4;
    result = v9 == 1.0;
    if ( v9 != 1.0 )
      goto LABEL_4;
    *((_DWORD *)this + 77) = LODWORD(v3) + 0x80000000;
    *((float *)this + 80) = v3;
    *((_DWORD *)this + 76) = LODWORD(v3) + 0x80000000;
    *((float *)this + 79) = v3;
  }
  return result;
}


// ===== 60cdbc glitch::core::quaternion::fromAngleAxis(float,glitch::core::vector3d<float> const&) =====
float *__fastcall glitch::core::quaternion::fromAngleAxis(float *a1, float a2, float *a3)
{
  float v5; // r7
  float v6; // r5

  v5 = a2 * 0.5;
  v6 = sinf(a2 * 0.5);
  a1[3] = cosf(v5);
  *a1 = *a3 * v6;
  a1[1] = a3[1] * v6;
  a1[2] = a3[2] * v6;
  return a1;
}


// ===== 60ce24 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 60ce44 glitch::collada::CSceneNode::~CSceneNode() [clone] =====
void __fastcall glitch::collada::CSceneNode::~CSceneNode(glitch::collada::CSceneNode *this)
{
  *(_DWORD *)this = off_9786F4;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_9786F4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_9787FC;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CSceneNode *)((char *)this + 332));
  *(_DWORD *)this = off_978824;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_978824;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_978928;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_9786AC);
}


// ===== 60cec8 glitch::collada::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall glitch::collada::CBillboardSceneNode::~CBillboardSceneNode(glitch::collada::CBillboardSceneNode *this)
{
  *(_DWORD *)this = off_97858C;
  *((_DWORD *)this + 86) = off_978694;
  glitch::collada::CSceneNode::~CSceneNode(this);
}


// ===== 60cf04 `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::collada::CBillboardSceneNode *this)
{
  glitch::collada::CBillboardSceneNode::~CBillboardSceneNode((glitch::collada::CBillboardSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 60cf14 `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::collada::CBillboardSceneNode *this)
{
  glitch::collada::CBillboardSceneNode::~CBillboardSceneNode((glitch::collada::CBillboardSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 60cf24 glitch::collada::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall glitch::collada::CBillboardSceneNode::~CBillboardSceneNode(glitch::collada::CBillboardSceneNode *this)
{
  *(_DWORD *)this = off_97858C;
  *((_DWORD *)this + 86) = off_978694;
  glitch::collada::CSceneNode::~CSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 60cf68 `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::collada::CBillboardSceneNode *this)
{
  glitch::collada::CBillboardSceneNode::~CBillboardSceneNode((glitch::collada::CBillboardSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 60cf78 `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CBillboardSceneNode::~CBillboardSceneNode(
        glitch::collada::CBillboardSceneNode *this)
{
  glitch::collada::CBillboardSceneNode::~CBillboardSceneNode((glitch::collada::CBillboardSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 60cf88 glitch::collada::CBillboardSceneNode::updateAbsolutePosition(bool) =====
float *__fastcall glitch::collada::CBillboardSceneNode::updateAbsolutePosition(
        glitch::collada::CBillboardSceneNode *this,
        int a2)
{
  int v2; // r3
  const void *v4; // r0
  _DWORD *v5; // r1
  _DWORD *v6; // r7
  const void *v7; // r0
  int v8; // r3
  float *v9; // r3
  float v10; // r8
  float v11; // r11
  float v12; // r10
  float *v13; // r3
  float v14; // r8
  float v15; // r10
  float v16; // r9
  float *v17; // r0
  float v18; // r8
  float v19; // r7
  float v20; // r10
  float *v21; // r0
  int v22; // r2
  _DWORD *v23; // r3
  float *v24; // r0
  float v25; // r11
  float v26; // r9
  float *v27; // r0
  float v28; // r6
  float v29; // r1
  float *v30; // r0
  char *Inverse; // r2
  int v32; // r3
  float *v33; // r0
  float *result; // r0
  char *v35; // r4
  char *v36; // r5
  char *v37; // t1
  char *v38; // t1
  char *v39; // r3
  float v40; // r3
  float *v41; // r0
  float v42; // r11
  float v43; // r9
  float *v44; // r0
  float v45; // r6
  float v46; // r7
  float v47; // r8
  float v48; // r10
  float v49; // r0
  float v50; // r10
  float *v51; // r0
  float v52; // [sp+4h] [bp-340h]
  float v53; // [sp+8h] [bp-33Ch]
  float v54; // [sp+8h] [bp-33Ch]
  float v55; // [sp+8h] [bp-33Ch]
  float v56; // [sp+8h] [bp-33Ch]
  float v57; // [sp+Ch] [bp-338h]
  float v58; // [sp+Ch] [bp-338h]
  float v59; // [sp+Ch] [bp-338h]
  float v61; // [sp+14h] [bp-330h]
  float v62; // [sp+14h] [bp-330h]
  float v63; // [sp+1Ch] [bp-328h]
  unsigned int v64; // [sp+24h] [bp-320h]
  unsigned int v65; // [sp+28h] [bp-31Ch]
  unsigned int v66; // [sp+2Ch] [bp-318h]
  float v67; // [sp+30h] [bp-314h]
  float v68; // [sp+34h] [bp-310h]
  float v69; // [sp+38h] [bp-30Ch]
  int v70; // [sp+3Ch] [bp-308h]
  int v71; // [sp+40h] [bp-304h]
  int v72; // [sp+44h] [bp-300h]
  float v73[16]; // [sp+4Ch] [bp-2F8h] BYREF
  char v74; // [sp+8Ch] [bp-2B8h]
  float v75[16]; // [sp+90h] [bp-2B4h] BYREF
  char v76; // [sp+D0h] [bp-274h]
  float v77[16]; // [sp+D4h] [bp-270h] BYREF
  char v78; // [sp+114h] [bp-230h]
  float v79[16]; // [sp+118h] [bp-22Ch] BYREF
  char v80; // [sp+158h] [bp-1ECh]
  unsigned int v81; // [sp+15Ch] [bp-1E8h] BYREF
  unsigned int v82; // [sp+160h] [bp-1E4h]
  unsigned int v83; // [sp+164h] [bp-1E0h]
  int v84; // [sp+168h] [bp-1DCh]
  float v85; // [sp+16Ch] [bp-1D8h]
  float v86; // [sp+170h] [bp-1D4h]
  float v87; // [sp+174h] [bp-1D0h]
  float v88; // [sp+17Ch] [bp-1C8h]
  float v89; // [sp+180h] [bp-1C4h]
  float v90; // [sp+184h] [bp-1C0h]
  int v91; // [sp+198h] [bp-1ACh]
  char v92; // [sp+19Ch] [bp-1A8h]
  _BYTE v93[68]; // [sp+1A0h] [bp-1A4h] BYREF
  float v94[17]; // [sp+1E4h] [bp-160h] BYREF
  _DWORD v95[16]; // [sp+228h] [bp-11Ch] BYREF
  char v96; // [sp+268h] [bp-DCh]
  float v97; // [sp+26Ch] [bp-D8h] BYREF
  float v98; // [sp+270h] [bp-D4h]
  float v99; // [sp+274h] [bp-D0h]
  float v100; // [sp+27Ch] [bp-C8h]
  float v101; // [sp+280h] [bp-C4h]
  float v102; // [sp+284h] [bp-C0h]
  float v103; // [sp+28Ch] [bp-B8h]
  float v104; // [sp+290h] [bp-B4h]
  float v105; // [sp+294h] [bp-B0h]
  float v106; // [sp+29Ch] [bp-A8h]
  float v107; // [sp+2A0h] [bp-A4h]
  float v108; // [sp+2A4h] [bp-A0h]
  char v109; // [sp+2ACh] [bp-98h]
  float v110[3]; // [sp+2B0h] [bp-94h] BYREF
  float v111[3]; // [sp+2BCh] [bp-88h] BYREF
  float v112[3]; // [sp+2C8h] [bp-7Ch] BYREF
  float v113[3]; // [sp+2D4h] [bp-70h] BYREF
  float v114[3]; // [sp+2E0h] [bp-64h] BYREF
  float v115[3]; // [sp+2ECh] [bp-58h] BYREF
  float v116[3]; // [sp+2F8h] [bp-4Ch] BYREF
  float v117[3]; // [sp+304h] [bp-40h] BYREF
  float v118; // [sp+310h] [bp-34h] BYREF
  float v119; // [sp+314h] [bp-30h]
  float v120; // [sp+318h] [bp-2Ch]
  float v121; // [sp+31Ch] [bp-28h] BYREF
  float v122; // [sp+320h] [bp-24h]
  float v123; // [sp+324h] [bp-20h]
  float v124; // [sp+328h] [bp-1Ch] BYREF
  float v125; // [sp+32Ch] [bp-18h]
  float v126; // [sp+330h] [bp-14h]
  float v127; // [sp+334h] [bp-10h] BYREF
  float v128; // [sp+338h] [bp-Ch]
  float v129; // [sp+33Ch] [bp-8h]

  v2 = *((_DWORD *)this + 68);
  if ( !v2 || !*(_DWORD *)(v2 + 228) )
  {
    result = glitch::scene::ISceneNode::updateAbsolutePosition((float *)this, a2);
    if ( !a2 )
      return result;
    v38 = *((char **)this + 61);
    v35 = (char *)this + 244;
    v36 = v38;
    goto LABEL_18;
  }
  v4 = (const void *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 59) + 56))(*((_DWORD *)this + 59));
  glitch::core::CMatrix4<float>::CMatrix4(&v97, v4);
  v5 = *((_DWORD **)this + 59);
  v108 = 0.0;
  v106 = 0.0;
  v107 = 0.0;
  v109 = 0;
  glitch::scene::ISceneNode::getAbsolutePosition(&v127, v5);
  v6 = *(_DWORD **)(*((_DWORD *)this + 68) + 228);
  glitch::scene::ISceneNode::getAbsolutePosition(&v124, v6);
  v7 = (const void *)(*(int (__fastcall **)(_DWORD *))(*v6 + 252))(v6);
  glitch::core::CMatrix4<float>::CMatrix4(v95, v7);
  v8 = *((_DWORD *)this + 85);
  v96 = 0;
  v9 = *(float **)(v8 + 76);
  v57 = *(float *)&v95[1];
  v61 = *(float *)&v95[5];
  v121 = v9[2];
  v10 = v121;
  v72 = v95[2];
  v63 = *(float *)&v95[9];
  v122 = v9[3];
  v71 = v95[6];
  v11 = v9[4];
  v12 = (float)(v121 * v99) + (float)(v122 * v102);
  v70 = v95[10];
  v121 = (float)((float)((float)(v121 * v97) + (float)(v122 * v100)) + (float)(v11 * v103)) + v106;
  v64 = v95[0];
  v66 = v95[8];
  v65 = v95[4];
  v122 = (float)((float)((float)(v10 * v98) + (float)(v122 * v101)) + (float)(v11 * v104)) + v107;
  v123 = (float)(v12 + (float)(v11 * v105)) + v108;
  glitch::core::vector3d<float>::normalize(&v121);
  v13 = *(float **)(*((_DWORD *)this + 85) + 76);
  v118 = v13[5];
  v14 = v118;
  v119 = v13[6];
  v15 = v13[7];
  v16 = (float)(v118 * v99) + (float)(v119 * v102);
  v118 = (float)((float)((float)(v118 * v97) + (float)(v119 * v100)) + (float)(v15 * v103)) + v106;
  v119 = (float)((float)((float)(v14 * v98) + (float)(v119 * v101)) + (float)(v15 * v104)) + v107;
  v120 = (float)(v16 + (float)(v15 * v105)) + v108;
  glitch::core::vector3d<float>::normalize(&v118);
  v117[0] = (float)(COERCE_FLOAT(LODWORD(v122) + 0x80000000) * v120) + (float)(v123 * v119);
  v117[1] = (float)(COERCE_FLOAT(LODWORD(v123) + 0x80000000) * v118) + (float)(v120 * v121);
  v117[2] = (float)(v119 * COERCE_FLOAT(LODWORD(v121) + 0x80000000)) + (float)(v122 * v118);
  v17 = glitch::core::vector3d<float>::normalize(v117);
  v18 = v17[1];
  v19 = v17[2];
  v20 = *v17;
  v116[0] = (float)(COERCE_FLOAT(LODWORD(v18) + 0x80000000) * v123) + (float)(v19 * v122);
  v116[1] = (float)(COERCE_FLOAT(LODWORD(v19) + 0x80000000) * v121) + (float)(v20 * v123);
  v116[2] = (float)(v122 * COERCE_FLOAT(LODWORD(v20) + 0x80000000)) + (float)(v18 * v121);
  v21 = glitch::core::vector3d<float>::normalize(v116);
  v69 = v21[2];
  v67 = *v21;
  v68 = v21[1];
  LC_API_MEMSET_0(v94, 0, 0x40u);
  v22 = *((_DWORD *)this + 85);
  v94[15] = 1.0;
  LOBYTE(v94[16]) = 1;
  v94[0] = 1.0;
  v94[5] = 1.0;
  v94[10] = 1.0;
  v23 = *(_DWORD **)(v22 + 76);
  if ( *v23 == 2 )
  {
    if ( v23[1] == 2 )
    {
      LODWORD(v59) = v72 + 0x80000000;
      LODWORD(v40) = v71 + 0x80000000;
      LODWORD(v54) = v70 + 0x80000000;
    }
    else
    {
      v115[0] = v124 - v127;
      v115[1] = v125 - v128;
      v115[2] = v126 - v129;
      v51 = glitch::core::vector3d<float>::normalize(v115);
      v54 = v51[2];
      v59 = *v51;
      v40 = v51[1];
    }
    v62 = (float)(COERCE_FLOAT(LODWORD(v40) + 0x80000000) * v120) + (float)(v119 * v54);
    v55 = (float)(COERCE_FLOAT(LODWORD(v54) + 0x80000000) * v118) + (float)(v59 * v120);
    v52 = (float)(v119 * COERCE_FLOAT(LODWORD(v59) + 0x80000000)) + (float)(v40 * v118);
    v114[0] = (float)(v52 * COERCE_FLOAT(LODWORD(v119) + 0x80000000)) + (float)(v120 * v55);
    v114[1] = (float)(v62 * COERCE_FLOAT(LODWORD(v120) + 0x80000000)) + (float)(v118 * v52);
    v114[2] = (float)(v55 * COERCE_FLOAT(LODWORD(v118) + 0x80000000)) + (float)(v119 * v62);
    v41 = glitch::core::vector3d<float>::normalize(v114);
    v42 = v41[2];
    v43 = *v41;
    v56 = v41[1];
    v113[0] = (float)(v19 * COERCE_FLOAT(LODWORD(v119) + 0x80000000)) + (float)(v18 * v120);
    v113[1] = (float)(v20 * COERCE_FLOAT(LODWORD(v120) + 0x80000000)) + (float)(v19 * v118);
    v113[2] = (float)(v18 * COERCE_FLOAT(LODWORD(v118) + 0x80000000)) + (float)(v20 * v119);
    v44 = glitch::core::vector3d<float>::normalize(v113);
    v45 = *v44;
    v46 = v44[1];
    v47 = v44[2];
    v48 = (float)((float)(v43 * *v44) + (float)(v56 * v46)) + (float)(v42 * v47);
    if ( v48 >= -1.0 )
    {
      if ( v48 >= 1.0 )
        v48 = 1.0;
    }
    else
    {
      v48 = -1.0;
    }
    v49 = acosf(v48);
    v50 = v49;
    if ( (float)((float)((float)((float)((float)(v47 * COERCE_FLOAT(LODWORD(v56) + 0x80000000)) + (float)(v42 * v46))
                               * v118)
                       + (float)((float)((float)(v45 * COERCE_FLOAT(LODWORD(v42) + 0x80000000)) + (float)(v43 * v47))
                               * v119))
               + (float)((float)((float)(v46 * COERCE_FLOAT(LODWORD(v43) + 0x80000000)) + (float)(v56 * v45)) * v120)) >= 0.0 )
      LODWORD(v50) = LODWORD(v49) + 0x80000000;
    v83 = 0;
    v84 = 1065353216;
    v81 = 0;
    v82 = 0;
    glitch::core::quaternion::fromAngleAxis((float *)&v81, v50, &v118);
    v93[64] = 0;
    glitch::core::quaternion::getMatrix_transposed((float *)&v81, (int)v93);
    memcpy(v94, v93, 0x41u);
  }
  else
  {
    if ( v23[1] == 2 )
    {
      LODWORD(v26) = v72 + 0x80000000;
      LODWORD(v25) = v71 + 0x80000000;
      LODWORD(v53) = v70 + 0x80000000;
    }
    else
    {
      v112[0] = v124 - v127;
      v112[1] = v125 - v128;
      v112[2] = v126 - v129;
      v24 = glitch::core::vector3d<float>::normalize(v112);
      v53 = v24[2];
      v25 = v24[1];
      v26 = *v24;
      v111[0] = (float)(v53 * COERCE_FLOAT(LODWORD(v61) + 0x80000000)) + (float)(v63 * v25);
      v111[1] = (float)(v26 * COERCE_FLOAT(LODWORD(v63) + 0x80000000)) + (float)(v57 * v53);
      v111[2] = (float)(v25 * COERCE_FLOAT(LODWORD(v57) + 0x80000000)) + (float)(v61 * v26);
      v27 = glitch::core::vector3d<float>::normalize(v111);
      v28 = v27[2];
      v66 = LODWORD(v28) + 0x80000000;
      v29 = v27[1];
      v65 = LODWORD(v29) + 0x80000000;
      v58 = *v27;
      v110[0] = (float)(v53 * v29) + (float)(v25 * COERCE_FLOAT(LODWORD(v28) + 0x80000000));
      v64 = LODWORD(v58) + 0x80000000;
      v110[1] = (float)(v26 * v28) + (float)(v53 * COERCE_FLOAT(LODWORD(v58) + 0x80000000));
      v110[2] = (float)(v25 * v58) + (float)(v26 * COERCE_FLOAT(LODWORD(v29) + 0x80000000));
      v30 = glitch::core::vector3d<float>::normalize(v110);
      v63 = v30[2];
      v57 = *v30;
      v61 = v30[1];
    }
    LC_API_MEMSET_0(&v81, 0, 0x40u);
    v91 = 1065353216;
    v82 = v65;
    v81 = v64;
    v85 = v57;
    v83 = v66;
    v87 = v63;
    v86 = v61;
    v94[4] = v67;
    v90 = v53;
    v94[6] = v69;
    v94[5] = v68;
    v94[8] = v121;
    v88 = v26;
    v89 = v25;
    v94[9] = v122;
    v94[0] = v20;
    v94[1] = v18;
    v94[10] = v123;
    v94[2] = v19;
    v92 = 0;
    LOBYTE(v94[16]) = 0;
    v94[3] = 0.0;
    v94[7] = 0.0;
    v94[11] = 0.0;
    Inverse = glitch::core::CMatrix4<float>::makeInverse((int)v94);
    if ( Inverse )
    {
      v80 = 0;
      glitch::core::detail::CMatrix4Base<float>::mult34((float *)&v81, v94, v79);
      v94[0] = v79[0];
      v94[1] = v79[1];
      v94[2] = v79[2];
      v94[3] = v79[3];
      v94[4] = v79[4];
      v94[5] = v79[5];
      v94[6] = v79[6];
      v94[7] = v79[7];
      v94[8] = v79[8];
      v94[9] = v79[9];
      v94[10] = v79[10];
      v94[11] = v79[11];
      v94[12] = v79[12];
      v94[13] = v79[13];
      v94[14] = v79[14];
      v94[15] = v79[15];
      LOBYTE(v94[16]) = v80;
    }
    else
    {
      do
      {
        *(float *)((char *)v94 + (_DWORD)Inverse) = 0.0;
        Inverse += 4;
      }
      while ( Inverse != (char *)&dword_40 );
      LOBYTE(v94[16]) = 0;
    }
  }
  LC_API_MEMSET_0(v77, 0, 0x40u);
  v77[12] = v127;
  v77[13] = v128;
  v77[0] = 1.0;
  v77[14] = v129;
  v77[5] = 1.0;
  v77[10] = 1.0;
  v77[15] = 1.0;
  v78 = 0;
  LC_API_MEMSET_0(v75, 0, 0x40u);
  v75[0] = 1.0;
  v75[5] = 1.0;
  v75[10] = 1.0;
  v75[15] = 1.0;
  v76 = 1;
  glitch::core::detail::CMatrix4Base<float>::mult34(v77, v94, v75);
  LC_API_MEMSET_0(v73, 0, 0x40u);
  v73[15] = 1.0;
  v74 = 1;
  v73[0] = 1.0;
  v73[5] = 1.0;
  v73[10] = 1.0;
  glitch::core::detail::CMatrix4Base<float>::mult34(v75, &v97, v73);
  v32 = *(_DWORD *)this;
  *((_DWORD *)this + 71) |= 0x20u;
  v33 = (float *)(*(int (__fastcall **)(glitch::collada::CBillboardSceneNode *))(v32 + 64))(this);
  result = glitch::core::detail::CMatrix4Base<float>::mult34(v73, v33, (float *)this + 9);
  if ( a2 )
  {
    v37 = *((char **)this + 61);
    v35 = (char *)this + 244;
    v36 = v37;
LABEL_18:
    while ( v36 != v35 )
    {
      if ( v36 )
        v39 = v36 - 4;
      else
        v39 = nullptr;
      result = (float *)(*(int (__fastcall **)(char *, int))(*(_DWORD *)v39 + 184))(v39, 1);
      v36 = *(char **)v36;
    }
  }
  return result;
}


// ===== 60dd34 glitch::core::quaternion::operator*(glitch::core::quaternion const&) =====
float *__fastcall glitch::core::quaternion::operator*(float *result, float *a2, float *a3)
{
  result[2] = 0.0;
  *result = 0.0;
  result[1] = 0.0;
  result[3] = 1.0;
  result[3] = (float)((float)((float)(a2[3] * a3[3]) - (float)(*a2 * *a3)) - (float)(a2[1] * a3[1]))
            - (float)(a2[2] * a3[2]);
  *result = (float)((float)((float)(*a2 * a3[3]) + (float)(a2[3] * *a3)) + (float)(a2[2] * a3[1]))
          - (float)(a2[1] * a3[2]);
  result[1] = (float)((float)((float)(a2[1] * a3[3]) + (float)(a2[3] * a3[1])) + (float)(*a2 * a3[2]))
            - (float)(a2[2] * *a3);
  result[2] = (float)((float)((float)(a2[2] * a3[3]) + (float)(a2[3] * a3[2])) + (float)(a2[1] * *a3))
            - (float)(*a2 * a3[1]);
  return result;
}


// ===== 60def4 glitch::collada::IAnimationTrackEx::~IAnimationTrackEx() =====
void __fastcall glitch::collada::IAnimationTrackEx::~IAnimationTrackEx(glitch::collada::IAnimationTrackEx *this)
{
  ;
}


// ===== 60def8 glitch::collada::IAnimationTrackEx::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
void glitch::collada::IAnimationTrackEx::applyBlendedValue()
{
  ;
}


// ===== 60defc glitch::collada::IAnimationTrackEx::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
void glitch::collada::IAnimationTrackEx::applyAddedValue()
{
  ;
}


// ===== 60df00 glitch::collada::IAnimationTrackEx::getBlendedValue(void *,float *,int,void *,float) =====
void __fastcall glitch::collada::IAnimationTrackEx::getBlendedValue(
        glitch::collada::IAnimationTrackEx *this,
        void *a2,
        float *a3,
        int a4,
        void *a5,
        float a6)
{
  ;
}


// ===== 60df04 glitch::collada::IAnimationTrackEx::getAddedValue(void *,float *,int,void *,float) =====
void __fastcall glitch::collada::IAnimationTrackEx::getAddedValue(
        glitch::collada::IAnimationTrackEx *this,
        void *a2,
        float *a3,
        int a4,
        void *a5,
        float a6)
{
  ;
}


// ===== 60df08 glitch::collada::IAnimationTrackEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,float) =====
void glitch::collada::IAnimationTrackEx::getKeyBasedValue()
{
  ;
}


// ===== 60df0c glitch::collada::IAnimationTrackEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,float) =====
void glitch::collada::IAnimationTrackEx::getKeyBasedValue()
{
  ;
}


// ===== 60df10 glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::IAnimationTrackEx::applyKeyBasedValue(int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 32))(a1);
}


// ===== 60df3c glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
int __fastcall glitch::collada::IAnimationTrackEx::applyKeyBasedValue(int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 36))(a1);
}


// ===== 60df70 glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::IAnimationTrackEx::applyKeyBasedValue(int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 40))(a1);
}


// ===== 60df84 glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
int __fastcall glitch::collada::IAnimationTrackEx::applyKeyBasedValue(int a1)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 44))(a1);
}


// ===== 60dfa8 glitch::collada::IAnimationTrackEx::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *,float) =====
void glitch::collada::IAnimationTrackEx::applyBlendedValue()
{
  ;
}


// ===== 60dfac glitch::collada::IAnimationTrackEx::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *,float) =====
void glitch::collada::IAnimationTrackEx::applyAddedValue()
{
  ;
}


// ===== 60dfb0 glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *,float) =====
void glitch::collada::IAnimationTrackEx::applyKeyBasedValue()
{
  ;
}


// ===== 60dfb4 glitch::collada::IAnimationTrackEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,float) =====
void glitch::collada::IAnimationTrackEx::applyKeyBasedValue()
{
  ;
}


// ===== 60dfb8 glitch::collada::IAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,bool) =====
void glitch::collada::IAnimationTrackEx::applyValue()
{
  ;
}


// ===== 60dfbc glitch::collada::IAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,bool) =====
void glitch::collada::IAnimationTrackEx::applyValue()
{
  ;
}


// ===== 60dfc0 glitch::collada::animation_track::CApplicator<glitch::collada::animation_track::SLightColor>::applyValueEx(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CApplicator<glitch::collada::animation_track::SLightColor>::applyValueEx(
        int a1,
        unsigned __int8 *a2)
{
  float v3; // r6
  float result; // r0

  v3 = (float)a2[1] / 255.0;
  result = (float)a2[2] / 255.0;
  *(float *)(a1 + 20) = (float)*a2 / 255.0;
  *(float *)(a1 + 28) = result;
  *(_DWORD *)(a1 + 32) = 1065353216;
  *(float *)(a1 + 24) = v3;
  return result;
}


// ===== 60e028 glitch::collada::IEventsManager::~IEventsManager() =====
void __fastcall glitch::collada::IEventsManager::~IEventsManager(glitch::collada::IEventsManager *this)
{
  ;
}


// ===== 60e02c glitch::collada::CEventsManager::findEntry(int) =====
int __fastcall glitch::collada::CEventsManager::findEntry(glitch::collada::CEventsManager *this, int a2)
{
  int *v2; // r5
  int v3; // r3
  int v5; // r6
  float v6; // r0
  unsigned __int8 *v7; // r5
  int v8; // r4
  int *v9; // r5
  float v10; // r0
  unsigned __int16 *v11; // r5

  v2 = *((int **)this + 5);
  v3 = *v2;
  if ( *v2 == 3 )
  {
    v5 = v2[2];
    if ( v5 > 0 )
    {
      v11 = (unsigned __int16 *)v2[3];
      v10 = (float)a2 / 33.333;
      if ( v10 >= (float)*v11 )
      {
        v8 = 0;
        while ( ++v8 != v5 )
        {
          if ( v10 < (float)v11[v8] )
            return v8 - 1;
        }
        return v5 - 1;
      }
      return -1;
    }
    return v5 - 1;
  }
  if ( v3 == 4 )
  {
    v5 = v2[2];
    if ( v5 > 0 )
    {
      v9 = (int *)v2[3];
      if ( (float)a2 >= (float)*v9 )
      {
        v8 = 0;
        while ( ++v8 != v5 )
        {
          if ( (float)a2 < (float)v9[v8] )
            return v8 - 1;
        }
        return v5 - 1;
      }
      return -1;
    }
    return v5 - 1;
  }
  if ( v3 != 1 )
    return 0;
  v5 = v2[2];
  if ( v5 <= 0 )
    return v5 - 1;
  v7 = (unsigned __int8 *)v2[3];
  v6 = (float)a2 / 33.333;
  if ( v6 >= (float)*v7 )
  {
    v8 = 0;
    while ( ++v8 != v5 )
    {
      if ( v6 < (float)v7[v8] )
        return v8 - 1;
    }
    return v5 - 1;
  }
  return -1;
}


// ===== 60e1d4 glitch::collada::CImage::CImage(glitch::collada::CColladaDatabase const&,glitch::collada::SImage &) =====
_DWORD *__fastcall glitch::collada::CImage::CImage(_DWORD *a1, int *a2, _DWORD *a3)
{
  int v3; // r3
  int v5; // r1
  int v6; // r3
  glitch::IReferenceCounted *v7; // r0

  v3 = *a2;
  a1[3] = *a2;
  a1[4] = a2[1];
  if ( v3 )
  {
    v5 = *(_DWORD *)(v3 + 4);
    if ( v5 )
      *(_DWORD *)(v3 + 4) = v5 + 1;
  }
  a1[6] = a3;
  a1[2] = &unk_9F6F08;
  *a1 = off_97A7E8;
  a1[5] = 0;
  a1[1] = 1;
  a1[2] = *a3;
  v6 = a3[4];
  if ( v6 )
  {
    ++*(_DWORD *)(v6 + 4);
    v7 = (glitch::IReferenceCounted *)a1[5];
    a1[5] = v6;
    if ( v7 )
      glitch::IReferenceCounted::drop(v7);
  }
  else
  {
    a1[5] = 0;
  }
  return a1;
}


// ===== 60e28c glitch::collada::CColladaDatabase::linkInstanceMaterial(glitch::collada::SInstanceMaterial *) =====
int __fastcall glitch::collada::CColladaDatabase::linkInstanceMaterial(int result, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)result + 36) + 32);
  *(_DWORD *)(a2 + 56) = *(_DWORD *)(v2 + 8);
  *(_DWORD *)(v2 + 8) = a2;
  return result;
}


// ===== 60e2a8 glitch::collada::CColladaDatabase::getVersion(void) =====
int __fastcall glitch::collada::CColladaDatabase::getVersion(glitch::collada::CColladaDatabase *this)
{
  return **(_DWORD **)(*(_DWORD *)(*(_DWORD *)this + 36) + 32);
}


// ===== 60e2bc glitch::collada::CColladaDatabase::getAnimationSegment(int) =====
int __fastcall glitch::collada::CColladaDatabase::getAnimationSegment(glitch::collada::CColladaDatabase *this, int a2)
{
  int *v2; // r3
  int v3; // r5
  int result; // r0
  int v5; // r12
  int v6; // r3
  int v7; // r2

  v2 = *(int **)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 48);
  v3 = *v2;
  if ( !*v2 )
    return 0;
  if ( *v2 > 0 )
  {
    v5 = v2[1];
    v6 = 0;
    v7 = 0;
    while ( 1 )
    {
      ++v7;
      result = v5 + v6;
      if ( *(_DWORD *)(v5 + v6) <= a2 && a2 < *(_DWORD *)(result + 4) )
        break;
      v6 += 24;
      if ( v7 == v3 )
        return v5 + 24 * (v3 - 1);
    }
  }
  else
  {
    v5 = v2[1];
    return v5 + 24 * (v3 - 1);
  }
  return result;
}


// ===== 60e334 glitch::collada::CColladaDatabase::getAnimationClipLibrary(void) =====
int __fastcall glitch::collada::CColladaDatabase::getAnimationClipLibrary(glitch::collada::CColladaDatabase *this)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 52;
}


// ===== 60e348 glitch::collada::CColladaDatabase::getScene(void) =====
int __fastcall glitch::collada::CColladaDatabase::getScene(glitch::collada::CColladaDatabase *this)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 184;
}


// ===== 60e35c glitch::collada::CColladaDatabase::getAnimation(int) =====
int __fastcall glitch::collada::CColladaDatabase::getAnimation(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 40) + 32 * a2;
}


// ===== 60e374 glitch::collada::CColladaDatabase::getAnimationClip(int) =====
int __fastcall glitch::collada::CColladaDatabase::getAnimationClip(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 56) + 12 * a2;
}


// ===== 60e390 glitch::collada::CColladaDatabase::getCamera(int) =====
int __fastcall glitch::collada::CColladaDatabase::getCamera(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 64) + 28 * a2;
}


// ===== 60e3ac glitch::collada::CColladaDatabase::getLight(int) =====
int __fastcall glitch::collada::CColladaDatabase::getLight(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 72) + 24 * a2;
}


// ===== 60e3c8 glitch::collada::CColladaDatabase::getImage(int) =====
int __fastcall glitch::collada::CColladaDatabase::getImage(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 80) + 20 * a2;
}


// ===== 60e3e4 glitch::collada::CColladaDatabase::getEffect(int) =====
int __fastcall glitch::collada::CColladaDatabase::getEffect(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 88) + 116 * a2;
}


// ===== 60e400 glitch::collada::CColladaDatabase::getMaterial(int) =====
int __fastcall glitch::collada::CColladaDatabase::getMaterial(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 96) + 36 * a2;
}


// ===== 60e41c glitch::collada::CColladaDatabase::getGeometry(int) =====
int __fastcall glitch::collada::CColladaDatabase::getGeometry(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 108) + 16 * a2;
}


// ===== 60e434 glitch::collada::CColladaDatabase::getController(int) =====
int __fastcall glitch::collada::CColladaDatabase::getController(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 116) + 12 * a2;
}


// ===== 60e450 glitch::collada::CColladaDatabase::getForce(int) =====
int __fastcall glitch::collada::CColladaDatabase::getForce(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 140) + 16 * a2;
}


// ===== 60e468 glitch::collada::CColladaDatabase::getEmitter(int) =====
int __fastcall glitch::collada::CColladaDatabase::getEmitter(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 124) + 144 * a2;
}


// ===== 60e484 glitch::collada::CColladaDatabase::getGNPSEmitter(int) =====
int __fastcall glitch::collada::CColladaDatabase::getGNPSEmitter(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 132) + 232 * a2;
}


// ===== 60e4a0 glitch::collada::CColladaDatabase::getCoronas(int) =====
int __fastcall glitch::collada::CColladaDatabase::getCoronas(glitch::collada::CColladaDatabase *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32) + 148) + 36 * a2;
}


// ===== 60e4bc glitch::collada::CColladaDatabase::getExternalLightSceneNode(boost::intrusive_ptr<glitch::video::CMaterial const> const&,ushort,uint,char const*) =====
int __fastcall glitch::collada::CColladaDatabase::getExternalLightSceneNode(int a1, int a2, int a3, int a4, int a5)
{
  return (*(int (__fastcall **)(_DWORD, int, int, int, int, int))(**(_DWORD **)(a1 + 4) + 120))(
           *(_DWORD *)(a1 + 4),
           a1,
           a2,
           a3,
           a4,
           a5);
}


// ===== 60e504 glitch::collada::CColladaDatabase::getExternalLightSceneNode(boost::intrusive_ptr<glitch::video::CMaterialRenderer const> const&,ushort,uint,char const*) =====
int __fastcall glitch::collada::CColladaDatabase::getExternalLightSceneNode(int a1, int a2, int a3, int a4, int a5)
{
  return (*(int (__fastcall **)(_DWORD, int, int, int, int, int))(**(_DWORD **)(a1 + 4) + 124))(
           *(_DWORD *)(a1 + 4),
           a1,
           a2,
           a3,
           a4,
           a5);
}


// ===== 60e54c glitch::collada::CColladaDatabase::getVisualScene(int) =====
int __fastcall glitch::collada::CColladaDatabase::getVisualScene(glitch::collada::CColladaDatabase *this, int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0

  v2 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32);
  v3 = *(_DWORD *)(v2 + 152);
  if ( v3 <= 0 )
    result = 0;
  else
    result = *(_DWORD *)(v2 + 156);
  if ( v3 > 0 )
    result += 16 * a2;
  return result;
}


// ===== 60e570 glitch::collada::CColladaDatabase::constructEffect(glitch::video::IVideoDriver *,glitch::collada::SEffect *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructEffect(int a1, int *a2, int a3, char **a4, int a5)
{
  int v6; // r1
  char *v11; // r0
  int v12; // r2

  v6 = a2[1];
  if ( a4 == nullptr )
    v11 = "";
  else
    v11 = *a4;
  v12 = *a2;
  if ( *a2 )
    v12 = *(_DWORD *)(v12 + 32);
  (*(void (__fastcall **)(int, int, int *, int, char **, char *, int, int))(*(_DWORD *)v6 + 28))(
    a1,
    v6,
    a2,
    a3,
    a4,
    v11,
    v12,
    a5);
  return a1;
}


// ===== 60e5e4 glitch::collada::CColladaDatabase::constructEffect(glitch::video::IVideoDriver *,int,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructEffect(
        int a1,
        glitch::collada::CColladaDatabase *this,
        int a3,
        int a4,
        int a5)
{
  char **Effect; // r0

  Effect = (char **)glitch::collada::CColladaDatabase::getEffect(this, a4);
  glitch::collada::CColladaDatabase::constructEffect(a1, (int *)this, a3, Effect, a5);
  return a1;
}


// ===== 60e62c glitch::collada::CColladaDatabase::constructCamera(glitch::collada::SInstanceCamera *,glitch::collada::CRootSceneNode *) =====
int glitch::collada::CColladaDatabase::constructCamera()
{
  return 0;
}


// ===== 60e634 glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver *,glitch::collada::SGeometry *) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CColladaDatabase::constructGeometry(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        int a4)
{
  glitch::IReferenceCounted *v6; // r0
  bool v7; // zf
  glitch::IReferenceCounted *v8; // [sp+Ch] [bp-8h] BYREF

  if ( a4 && !*(_DWORD *)(a4 + 8) )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, int))(**(_DWORD **)(a2 + 4) + 52))(
      &v8,
      *(_DWORD *)(a2 + 4),
      a2,
      a3,
      a4);
    v6 = v8;
    v7 = v8 == nullptr;
    *a1 = v8;
    if ( !v7 )
    {
      ++*((_DWORD *)v6 + 1);
      v6 = v8;
    }
    if ( v6 )
      glitch::IReferenceCounted::drop(v6);
  }
  else
  {
    *a1 = nullptr;
  }
  return a1;
}


// ===== 60e6b8 glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver *,int) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CColladaDatabase::constructGeometry(
        glitch::IReferenceCounted **this,
        glitch::video::IVideoDriver *a2,
        int a3,
        int a4)
{
  int Geometry; // r0

  Geometry = glitch::collada::CColladaDatabase::getGeometry(a2, a4);
  glitch::collada::CColladaDatabase::constructGeometry(this, (int)a2, a3, Geometry);
  return this;
}


// ===== 60e6f0 glitch::collada::CColladaDatabase::constructModularSkin(glitch::collada::SInstanceModularSkin *,glitch::collada::CRootSceneNode *) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CColladaDatabase::constructModularSkin(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        int a4)
{
  glitch::IReferenceCounted *v5; // r0
  bool v6; // zf
  glitch::IReferenceCounted *v8; // [sp+Ch] [bp-8h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, int))(**(_DWORD **)(a2 + 4) + 92))(
    &v8,
    *(_DWORD *)(a2 + 4),
    a2,
    a3,
    a4);
  v5 = v8;
  v6 = v8 == nullptr;
  *a1 = v8;
  if ( !v6 )
  {
    ++*((_DWORD *)v5 + 1);
    v5 = v8;
  }
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  return a1;
}


// ===== 60e75c glitch::collada::CColladaDatabase::constructCoronas(glitch::collada::SCoronas *,glitch::video::IVideoDriver *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructCoronas(int a1, int a2, int a3, int a4)
{
  if ( a2 )
    return (*(int (__fastcall **)(_DWORD, int, int, int, int))(**(_DWORD **)(a1 + 4) + 96))(
             *(_DWORD *)(a1 + 4),
             a1,
             a3,
             a2,
             a4);
  else
    return 0;
}


// ===== 60e79c glitch::collada::CColladaDatabase::constructEmitter(glitch::collada::SEmitter *,glitch::video::IVideoDriver *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructEmitter(int a1, int a2, int a3, int a4, int a5)
{
  if ( a2 )
    return (*(int (__fastcall **)(_DWORD, int, int, int, int, int))(**(_DWORD **)(a1 + 4) + 104))(
             *(_DWORD *)(a1 + 4),
             a1,
             a3,
             a2,
             a4,
             a5);
  else
    return 0;
}


// ===== 60e7e0 glitch::collada::CColladaDatabase::constructEmitter(int,glitch::video::IVideoDriver *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructEmitter(
        glitch::collada::CColladaDatabase *a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  int Emitter; // r0

  Emitter = glitch::collada::CColladaDatabase::getEmitter(a1, a2);
  return glitch::collada::CColladaDatabase::constructEmitter((int)a1, Emitter, a3, a4, a5);
}


// ===== 60e814 glitch::collada::CColladaDatabase::constructGNPSEmitter(glitch::collada::SGNPSEmitter *,glitch::video::IVideoDriver *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructGNPSEmitter(int a1, int a2, int a3, int a4, int a5)
{
  if ( a2 )
    return (*(int (__fastcall **)(_DWORD, int, int, int, int, int))(**(_DWORD **)(a1 + 4) + 100))(
             *(_DWORD *)(a1 + 4),
             a1,
             a3,
             a2,
             a4,
             a5);
  else
    return 0;
}


// ===== 60e858 glitch::collada::CColladaDatabase::constructGNPSEmitter(int,glitch::video::IVideoDriver *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructGNPSEmitter(
        glitch::collada::CColladaDatabase *a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  int GNPSEmitter; // r0

  GNPSEmitter = glitch::collada::CColladaDatabase::getGNPSEmitter(a1, a2);
  return glitch::collada::CColladaDatabase::constructGNPSEmitter((int)a1, GNPSEmitter, a3, a4, a5);
}


// ===== 60e88c glitch::collada::CColladaDatabase::constructForce(glitch::collada::SForce *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructForce(int a1, int a2)
{
  int v3; // r3

  if ( !a2 )
    return 0;
  v3 = *(_DWORD *)(a2 + 8);
  if ( v3 == 1 )
    return (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 4) + 112))(*(_DWORD *)(a1 + 4), a1, a2);
  if ( v3 == 2 )
    return (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 4) + 116))(*(_DWORD *)(a1 + 4), a1, a2);
  if ( v3 )
    return 0;
  return (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 4) + 108))(*(_DWORD *)(a1 + 4), a1, a2);
}


// ===== 60e910 glitch::collada::CColladaDatabase::constructForce(int,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CColladaDatabase::constructForce(glitch::collada::CColladaDatabase *a1, int a2)
{
  int Force; // r1

  Force = glitch::collada::CColladaDatabase::getForce(a1, a2);
  return glitch::collada::CColladaDatabase::constructForce((int)a1, Force);
}


// ===== 60e934 glitch::collada::CEventsManager::dispatchEventsEx<int,1000>(int,int,int) =====
int __fastcall glitch::collada::CEventsManager::dispatchEventsEx<int,1000>(int result, int a2, int a3, int a4)
{
  int v4; // r4
  int v6; // r5
  int v7; // r11
  int v8; // r7
  int v9; // r8
  int v10; // r6
  int v11; // r1
  int v12; // r3
  _DWORD v14[3]; // [sp+8h] [bp-Ch] BYREF

  v4 = result;
  if ( a2 <= a3 )
  {
    v6 = *(_DWORD *)(result + 20);
    v7 = a2;
    v8 = 8 * a2;
    v9 = 4 * a2;
    do
    {
      if ( *(int *)(*(_DWORD *)(v6 + 20) + v8) > 0 )
      {
        v10 = 0;
        do
        {
          v14[0] = (int)(float)((float)a4 - (float)*(int *)(*(_DWORD *)(v6 + 12) + v9));
          v11 = *(_DWORD *)(v4 + 12);
          v12 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v6 + 20) + v8 + 4) + 4 * v10++);
          v14[1] = v12;
          result = (*(int (__fastcall **)(_DWORD *, int))(v4 + 8))(v14, v11);
          v6 = *(_DWORD *)(v4 + 20);
        }
        while ( v10 < *(_DWORD *)(*(_DWORD *)(v6 + 20) + v8) );
      }
      ++v7;
      v8 += 8;
      v9 += 4;
    }
    while ( a3 >= v7 );
  }
  return result;
}


// ===== 60ea08 glitch::collada::CEventsManager::dispatchEventsEx<ushort,30>(int,int,int) =====
int __fastcall glitch::collada::CEventsManager::dispatchEventsEx<unsigned short,30>(int result, int a2, int a3, int a4)
{
  int v4; // r4
  int v6; // r5
  int v7; // r7
  int v8; // r10
  int v9; // r6
  int v10; // r1
  int v11; // r3
  bool v12; // cc
  int v13; // [sp+0h] [bp-14h]
  _DWORD v15[3]; // [sp+8h] [bp-Ch] BYREF

  v4 = result;
  if ( a2 <= a3 )
  {
    v13 = a2;
    v6 = *(_DWORD *)(result + 20);
    v7 = 8 * a2;
    v8 = 2 * a2;
    do
    {
      if ( *(int *)(*(_DWORD *)(v6 + 20) + v7) > 0 )
      {
        v9 = 0;
        do
        {
          v15[0] = (int)(float)((float)a4 + (float)((float)*(unsigned __int16 *)(*(_DWORD *)(v6 + 12) + v8) * -33.333));
          v10 = *(_DWORD *)(v4 + 12);
          v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v6 + 20) + v7 + 4) + 4 * v9++);
          v15[1] = v11;
          result = (*(int (__fastcall **)(_DWORD *, int))(v4 + 8))(v15, v10);
          v6 = *(_DWORD *)(v4 + 20);
        }
        while ( v9 < *(_DWORD *)(*(_DWORD *)(v6 + 20) + v7) );
      }
      v7 += 8;
      v12 = a3 < ++v13;
      v8 += 2;
    }
    while ( !v12 );
  }
  return result;
}


// ===== 60eae4 glitch::collada::CEventsManager::dispatchEventsEx<uchar,30>(int,int,int) =====
int __fastcall glitch::collada::CEventsManager::dispatchEventsEx<unsigned char,30>(int result, int a2, int a3, int a4)
{
  int v4; // r4
  int v6; // r5
  int v7; // r10
  int v8; // r7
  int v9; // r6
  int v10; // r1
  int v11; // r3
  _DWORD v13[3]; // [sp+8h] [bp-Ch] BYREF

  v4 = result;
  if ( a2 <= a3 )
  {
    v6 = *(_DWORD *)(result + 20);
    v7 = a2;
    v8 = 8 * a2;
    do
    {
      if ( *(int *)(*(_DWORD *)(v6 + 20) + v8) > 0 )
      {
        v9 = 0;
        do
        {
          v13[0] = (int)(float)((float)a4 + (float)((float)*(unsigned __int8 *)(*(_DWORD *)(v6 + 12) + v7) * -33.333));
          v10 = *(_DWORD *)(v4 + 12);
          v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v6 + 20) + v8 + 4) + 4 * v9++);
          v13[1] = v11;
          result = (*(int (__fastcall **)(_DWORD *, int))(v4 + 8))(v13, v10);
          v6 = *(_DWORD *)(v4 + 20);
        }
        while ( v9 < *(_DWORD *)(*(_DWORD *)(v6 + 20) + v8) );
      }
      ++v7;
      v8 += 8;
    }
    while ( a3 >= v7 );
  }
  return result;
}


// ===== 60ebb4 glitch::collada::CEventsManager::dispatchEvents(int,int,int) =====
int __fastcall glitch::collada::CEventsManager::dispatchEvents(int this, int a2, int a3, int a4)
{
  int v4; // r12

  v4 = **(_DWORD **)(this + 20);
  switch ( v4 )
  {
    case 3:
      return glitch::collada::CEventsManager::dispatchEventsEx<unsigned short,30>(this, a2, a3, a4);
    case 4:
      return glitch::collada::CEventsManager::dispatchEventsEx<int,1000>(this, a2, a3, a4);
    case 1:
      return glitch::collada::CEventsManager::dispatchEventsEx<unsigned char,30>(this, a2, a3, a4);
  }
  return this;
}


// ===== 60ebe0 glitch::collada::CEventsManager::onUpdate(int,int,int,int) =====
glitch::collada::CEventsManager *__fastcall glitch::collada::CEventsManager::onUpdate(
        glitch::collada::CEventsManager *this,
        int a2,
        int a3,
        int a4,
        int a5)
{
  glitch::collada::CEventsManager *v8; // r4
  int v9; // r7
  int Entry; // r8
  int v11; // r0
  int v12; // r0

  v8 = this;
  if ( a2 != a3 && *((_DWORD *)this + 2) )
  {
    v9 = glitch::collada::CEventsManager::findEntry(this, a2 - 1) + 1;
    Entry = glitch::collada::CEventsManager::findEntry(v8, a3);
    if ( *((_DWORD *)v8 + 4) == v9 )
      ++v9;
    ++*((_DWORD *)v8 + 1);
    if ( a2 <= a3 )
    {
      glitch::collada::CEventsManager::dispatchEvents((int)v8, v9, Entry, a3);
    }
    else
    {
      v11 = glitch::collada::CEventsManager::findEntry(v8, a5);
      glitch::collada::CEventsManager::dispatchEvents((int)v8, v9, v11, a5 - a4 + a3);
      v12 = glitch::collada::CEventsManager::findEntry(v8, a4 - 1);
      glitch::collada::CEventsManager::dispatchEvents((int)v8, v12 + 1, Entry, a3);
    }
    this = (glitch::collada::CEventsManager *)glitch::IReferenceCounted::drop(v8);
    *((_DWORD *)v8 + 4) = Entry;
  }
  return this;
}


// ===== 60ecb4 glitch::collada::CEventsManager::onUpdate(int,int) =====
glitch::collada::CEventsManager *__fastcall glitch::collada::CEventsManager::onUpdate(
        glitch::collada::CEventsManager *this,
        int a2,
        int a3)
{
  glitch::collada::CEventsManager *v3; // r4
  int Entry; // r6
  int v6; // r0

  v3 = this;
  if ( *((_DWORD *)this + 2) )
  {
    ++*((_DWORD *)this + 1);
    Entry = glitch::collada::CEventsManager::findEntry(this, a2);
    v6 = glitch::collada::CEventsManager::findEntry(v3, a3);
    glitch::collada::CEventsManager::dispatchEvents((int)v3, Entry + 1, v6, a3);
    return (glitch::collada::CEventsManager *)glitch::IReferenceCounted::drop(v3);
  }
  return this;
}


// ===== 60ed10 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed14 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed18 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed1c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed20 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed24 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed28 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed2c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed30 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed34 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed38 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed3c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed40 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed44 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed48 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed4c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed50 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed54 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed58 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed5c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed60 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed68 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed6c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed70 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed74 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed78 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed7c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed80 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed84 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed88 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed8c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed90 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed94 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed98 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60ed9c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60eda0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60eda4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60eda8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60edac glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60edb0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60edb4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::~CVirtualEx()
{
  ;
}


// ===== 60edb8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::~CVirtualEx()
{
  ;
}


// ===== 60edbc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::~CVirtualEx()
{
  ;
}


// ===== 60edc0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::~CVirtualEx()
{
  ;
}


// ===== 60edc4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::~CVirtualEx()
{
  ;
}


// ===== 60edc8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::~CVirtualEx()
{
  ;
}


// ===== 60edcc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::~CVirtualEx() =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::~CVirtualEx()
{
  ;
}


// ===== 60edd0 glitch::collada::CEventsManager::~CEventsManager() =====
void __fastcall glitch::collada::CEventsManager::~CEventsManager(glitch::collada::CEventsManager *this)
{
  ;
}


// ===== 60edd4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::getValueSize()
{
  return 3;
}


// ===== 60eddc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::retrieveValue()
{
  ;
}


// ===== 60ede0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::getValueSize()
{
  return 4;
}


// ===== 60ede8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::retrieveValue()
{
  ;
}


// ===== 60edec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::getValueSize()
{
  return 4;
}


// ===== 60edf4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::retrieveValue()
{
  ;
}


// ===== 60edf8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::getValueSize()
{
  return 4;
}


// ===== 60ee00 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::retrieveValue()
{
  ;
}


// ===== 60ee04 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::getValueSize()
{
  return 4;
}


// ===== 60ee0c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::retrieveValue()
{
  ;
}


// ===== 60ee10 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::getValueSize()
{
  return 4;
}


// ===== 60ee18 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::retrieveValue()
{
  ;
}


// ===== 60ee1c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::getValueSize()
{
  return 16;
}


// ===== 60ee24 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee28 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::getValueSize()
{
  return 16;
}


// ===== 60ee30 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee34 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getValueSize()
{
  return 16;
}


// ===== 60ee3c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee40 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getValueSize()
{
  return 16;
}


// ===== 60ee48 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee4c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getValueSize()
{
  return 16;
}


// ===== 60ee54 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee58 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getValueSize()
{
  return 12;
}


// ===== 60ee60 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getValueSize()
{
  return 12;
}


// ===== 60ee6c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee70 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getValueSize()
{
  return 8;
}


// ===== 60ee78 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee7c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getValueSize()
{
  return 8;
}


// ===== 60ee84 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee88 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getValueSize()
{
  return 8;
}


// ===== 60ee90 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::retrieveValue()
{
  ;
}


// ===== 60ee94 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getValueSize()
{
  return 4;
}


// ===== 60ee9c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::retrieveValue(void *,void *) =====
void glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::retrieveValue()
{
  ;
}


// ===== 60eea0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getValueSize()
{
  return 3;
}


// ===== 60eea8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::applyValue(
        int a1,
        unsigned __int8 *a2,
        int a3)
{
  return glitch::collada::animation_track::CApplicator<glitch::collada::animation_track::SLightColor>::applyValueEx(
           a3,
           a2);
}


// ===== 60eeb4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::retrieveValue(void *,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::retrieveValue(
        int a1,
        float *a2,
        _BYTE *a3)
{
  unsigned int result; // r0

  *a3 = (unsigned int)(float)(a2[5] * 255.0);
  a3[1] = (unsigned int)(float)(a2[6] * 255.0);
  result = (unsigned int)(float)(a2[7] * 255.0);
  a3[2] = result;
  return result;
}


// ===== 60ef0c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getValueSize()
{
  return 12;
}


// ===== 60ef14 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getValueSize()
{
  return 12;
}


// ===== 60ef1c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getValueSize()
{
  return 12;
}


// ===== 60ef24 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getValueSize()
{
  return 12;
}


// ===== 60ef2c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getValueSize()
{
  return 12;
}


// ===== 60ef34 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getValueSize()
{
  return 12;
}


// ===== 60ef3c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getValueSize()
{
  return 12;
}


// ===== 60ef44 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getValueSize()
{
  return 12;
}


// ===== 60ef4c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getValueSize()
{
  return 12;
}


// ===== 60ef54 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getValueSize()
{
  return 12;
}


// ===== 60ef5c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getValueSize()
{
  return 12;
}


// ===== 60ef64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getValueSize()
{
  return 12;
}


// ===== 60ef6c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::retrieveValue(
        int a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *result; // r0

  result = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 144))(a2);
  *a3 = *result;
  a3[1] = result[1];
  a3[2] = result[2];
  return result;
}


// ===== 60efa0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getValueSize()
{
  return 12;
}


// ===== 60efa8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getValueSize()
{
  return 12;
}


// ===== 60efb0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getValueSize()
{
  return 12;
}


// ===== 60efb8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getValueSize()
{
  return 12;
}


// ===== 60efc0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getValueSize()
{
  return 12;
}


// ===== 60efc8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getValueSize()
{
  return 12;
}


// ===== 60efd0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getValueSize()
{
  return 12;
}


// ===== 60efd8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getValueSize()
{
  return 12;
}


// ===== 60efe0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getValueSize()
{
  return 12;
}


// ===== 60efe8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getValueSize()
{
  return 12;
}


// ===== 60eff0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getValueSize()
{
  return 12;
}


// ===== 60eff8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getValueSize()
{
  return 12;
}


// ===== 60f000 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::retrieveValue(
        int a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *result; // r0

  result = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 160))(a2);
  *a3 = *result;
  a3[1] = result[1];
  a3[2] = result[2];
  return result;
}


// ===== 60f034 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getValueSize()
{
  return 16;
}


// ===== 60f03c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getIdentityValue(
        int a1,
        _DWORD *a2)
{
  a2[2] = 0;
  a2[3] = 1065353216;
  *a2 = 0;
  a2[1] = 0;
}


// ===== 60f058 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getValueSize()
{
  return 16;
}


// ===== 60f060 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getIdentityValue(
        int a1,
        _DWORD *a2)
{
  a2[2] = 0;
  a2[3] = 1065353216;
  *a2 = 0;
  a2[1] = 0;
}


// ===== 60f07c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getValueSize()
{
  return 16;
}


// ===== 60f084 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getIdentityValue(
        int a1,
        _DWORD *a2)
{
  a2[2] = 0;
  a2[3] = 1065353216;
  *a2 = 0;
  a2[1] = 0;
}


// ===== 60f0a0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getValueSize()
{
  return 16;
}


// ===== 60f0a8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getIdentityValue(
        int a1,
        _DWORD *a2)
{
  a2[2] = 0;
  a2[3] = 1065353216;
  *a2 = 0;
  a2[1] = 0;
}


// ===== 60f0c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getValueSize()
{
  return 16;
}


// ===== 60f0cc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getIdentityValue(
        int a1,
        _DWORD *a2)
{
  a2[2] = 0;
  a2[3] = 1065353216;
  *a2 = 0;
  a2[1] = 0;
}


// ===== 60f0e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getValueSize(void) =====
int glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getValueSize()
{
  return 16;
}


// ===== 60f0f0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getIdentityValue(
        int a1,
        _DWORD *a2)
{
  a2[2] = 0;
  a2[3] = 1065353216;
  *a2 = 0;
  a2[1] = 0;
}


// ===== 60f10c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::retrieveValue(
        int a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *result; // r0

  result = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 152))(a2);
  *a3 = *result;
  a3[1] = result[1];
  a3[2] = result[2];
  a3[3] = result[3];
  return result;
}


// ===== 60f148 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float *v6; // r5
  float v7; // r8
  float v8; // r10
  int v9; // r6
  float v10; // r7

  v5 = a4;
  v6 = a2;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
  }
  else
  {
    if ( a4 )
    {
      v7 = 0.0;
      v9 = 0;
      v8 = 0.0;
      do
      {
        v10 = *(float *)(a3 + v9);
        v9 += 4;
        v7 = v7 + (float)(v10 * *v6);
        --v5;
        v8 = v8 + (float)(v10 * v6[1]);
        v6 += 2;
      }
      while ( v5 );
    }
    else
    {
      v7 = 0.0;
      v8 = 0.0;
    }
    a5[1] = v8;
    *a5 = v7;
  }
}


// ===== 60f1ec `global constructor keyed to'.._source_glitch_collada_CColladaDatabase.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaDatabase.cpp()
{
  dword_9F6D24 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6D20 = 1056964608;
  glitch::collada::CColladaDatabase::DefaultFactory = (int)off_97B7E0;
  return _aeabi_atexit(
           (int)&glitch::collada::CColladaDatabase::DefaultFactory,
           (int)glitch::collada::CColladaFactory::~CColladaFactory,
           (int)&_dso_handle);
}


// ===== 60f25c glitch::collada::CColladaDatabase::CColladaDatabase(char const*,glitch::collada::CColladaFactory *) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CColladaDatabase::CColladaDatabase(
        glitch::collada::CColladaDatabase *this,
        const char *a2,
        glitch::collada::CColladaFactory *a3)
{
  int v5; // r0

  v5 = glitch::collada::CResFileManager::load(glitch::collada::CResFileManager::Inst, a2, 0, 0);
  *((_DWORD *)this + 1) = a3;
  *(_DWORD *)this = v5;
  if ( v5 )
    ++*(_DWORD *)(v5 + 4);
  return this;
}


// ===== 60f2b0 glitch::collada::CColladaDatabase::CColladaDatabase(char const*,glitch::collada::CColladaFactory *) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CColladaDatabase::CColladaDatabase(
        glitch::collada::CColladaDatabase *this,
        const char *a2,
        glitch::collada::CColladaFactory *a3)
{
  int v5; // r0

  v5 = glitch::collada::CResFileManager::load(glitch::collada::CResFileManager::Inst, a2, 0, 0);
  *((_DWORD *)this + 1) = a3;
  *(_DWORD *)this = v5;
  if ( v5 )
    ++*(_DWORD *)(v5 + 4);
  return this;
}


// ===== 60f304 glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile *,bool,glitch::collada::CColladaFactory *) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CColladaDatabase::CColladaDatabase(
        glitch::collada::CColladaDatabase *this,
        glitch::io::IReadFile *a2,
        bool a3,
        glitch::collada::CColladaFactory *a4)
{
  int v6; // r0

  v6 = glitch::collada::CResFileManager::load(glitch::collada::CResFileManager::Inst, a2, 0, 0, a3);
  *((_DWORD *)this + 1) = a4;
  *(_DWORD *)this = v6;
  if ( v6 )
    ++*(_DWORD *)(v6 + 4);
  return this;
}


// ===== 60f364 glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile *,bool,glitch::collada::CColladaFactory *) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CColladaDatabase::CColladaDatabase(
        glitch::collada::CColladaDatabase *this,
        glitch::io::IReadFile *a2,
        bool a3,
        glitch::collada::CColladaFactory *a4)
{
  int v6; // r0

  v6 = glitch::collada::CResFileManager::load(glitch::collada::CResFileManager::Inst, a2, 0, 0, a3);
  *((_DWORD *)this + 1) = a4;
  *(_DWORD *)this = v6;
  if ( v6 )
    ++*(_DWORD *)(v6 + 4);
  return this;
}


// ===== 60f3c4 glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile *,glitch::collada::CColladaFactory *) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CColladaDatabase::CColladaDatabase(
        glitch::collada::CColladaDatabase *this,
        glitch::io::IReadFile *a2,
        glitch::collada::CColladaFactory *a3)
{
  int v5; // r0

  v5 = glitch::collada::CResFileManager::load(glitch::collada::CResFileManager::Inst, a2, 0, 0, 0);
  *((_DWORD *)this + 1) = a3;
  *(_DWORD *)this = v5;
  if ( v5 )
    ++*(_DWORD *)(v5 + 4);
  return this;
}


// ===== 60f42c glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile *,glitch::collada::CColladaFactory *) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CColladaDatabase::CColladaDatabase(
        glitch::collada::CColladaDatabase *this,
        glitch::io::IReadFile *a2,
        glitch::collada::CColladaFactory *a3)
{
  int v5; // r0

  v5 = glitch::collada::CResFileManager::load(glitch::collada::CResFileManager::Inst, a2, 0, 0, 0);
  *((_DWORD *)this + 1) = a3;
  *(_DWORD *)this = v5;
  if ( v5 )
    ++*(_DWORD *)(v5 + 4);
  return this;
}


// ===== 60f494 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string() =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(
        _DWORD *a1)
{
  _DWORD *v2; // r0

  v2 = (_DWORD *)a1[5];
  if ( v2 != a1 && v2 )
    GlitchFree(v2);
  return a1;
}


// ===== 60f4bc glitch::collada::CEventsManager::~CEventsManager() =====
void __fastcall glitch::collada::CEventsManager::~CEventsManager(glitch::collada::CEventsManager *this)
{
  LC_API_FREE_0(this);
}


// ===== 60f4d0 glitch::collada::IEventsManager::~IEventsManager() =====
void __fastcall glitch::collada::IEventsManager::~IEventsManager(glitch::collada::IEventsManager *this)
{
  LC_API_FREE_0(this);
}


// ===== 60f4e4 glitch::collada::IAnimationTrackEx::~IAnimationTrackEx() =====
void __fastcall glitch::collada::IAnimationTrackEx::~IAnimationTrackEx(glitch::collada::IAnimationTrackEx *this)
{
  LC_API_FREE_0(this);
}


// ===== 60f4f8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f50c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f520 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f534 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f548 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f55c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f570 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f584 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f598 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f5ac glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f5c0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f5d4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f5e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f5fc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f610 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f624 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f638 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f64c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f660 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f674 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f688 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f69c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f6b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f6c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f6d8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f6ec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f700 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f714 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f728 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f73c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f750 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f764 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f778 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f78c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f7a0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f7b4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f7c8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f7dc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f7f0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f804 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f818 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f82c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f840 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f854 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f868 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f87c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f890 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f8a4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::~CVirtualEx() =====
void *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::~CVirtualEx(
        void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 60f8b8 glitch::collada::CCoronasSceneNode::setMaterial(glitch::collada::SMaterial &,glitch::video::IVideoDriver *) =====
glitch::video::CMaterial **__fastcall glitch::collada::CCoronasSceneNode::setMaterial(int a1, int a2, int a3)
{
  glitch::video::CMaterial *v4; // r3
  glitch::video::CMaterial *v6; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v7; // [sp+4h] [bp-8h] BYREF

  glitch::collada::CRootSceneNode::getMaterial(&v7, *(_DWORD *)(a1 + 512), a2, a3, v6);
  if ( v7 )
  {
    v6 = v7;
    ++*(_DWORD *)v7;
    v4 = v6;
    v6 = *(glitch::video::CMaterial **)(a1 + 360);
    *(_DWORD *)(a1 + 360) = v4;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v6);
  }
  return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v7);
}


// ===== 60f924 glitch::collada::CColladaDatabase::constructSkin(glitch::video::IVideoDriver *,glitch::collada::SController *,glitch::collada::CRootSceneNode *) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CColladaDatabase::constructSkin(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        int a4,
        glitch::collada::CRootSceneNode *a5)
{
  glitch::IReferenceCounted *v6; // r0
  bool v7; // zf
  glitch::IReferenceCounted *v9; // [sp+Ch] [bp-4h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, int, glitch::collada::CRootSceneNode *))(**(_DWORD **)(a2 + 4) + 88))(
    &v9,
    *(_DWORD *)(a2 + 4),
    a2,
    a3,
    a4,
    a5);
  glitch::collada::CRootSceneNode::attachSkin(a5, v9);
  v6 = v9;
  v7 = v9 == nullptr;
  *a1 = v9;
  if ( !v7 )
  {
    ++*((_DWORD *)v6 + 1);
    v6 = v9;
  }
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  return a1;
}


// ===== 60f9a4 glitch::collada::CColladaDatabase::constructMorph(glitch::video::IVideoDriver *,glitch::collada::SController *,glitch::collada::CRootSceneNode *) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CColladaDatabase::constructMorph(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        int a4,
        glitch::collada::CRootSceneNode *a5)
{
  glitch::IReferenceCounted *v6; // r0
  bool v7; // zf
  glitch::IReferenceCounted *v9; // [sp+Ch] [bp-4h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, int, glitch::collada::CRootSceneNode *))(**(_DWORD **)(a2 + 4) + 56))(
    &v9,
    *(_DWORD *)(a2 + 4),
    a2,
    a3,
    a4,
    a5);
  glitch::collada::CRootSceneNode::addMorphingMesh(a5, v9);
  v6 = v9;
  v7 = v9 == nullptr;
  *a1 = v9;
  if ( !v7 )
  {
    ++*((_DWORD *)v6 + 1);
    v6 = v9;
  }
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  return a1;
}


// ===== 60fa24 glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver *,glitch::collada::SController *,glitch::collada::CRootSceneNode *) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CColladaDatabase::constructController(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        _DWORD *a4,
        glitch::collada::CRootSceneNode *a5)
{
  if ( *a4 )
  {
    if ( *a4 == 1 )
      glitch::collada::CColladaDatabase::constructMorph(a1, a2, a3, (int)a4, a5);
    else
      *a1 = nullptr;
  }
  else
  {
    glitch::collada::CColladaDatabase::constructSkin(a1, a2, a3, (int)a4, a5);
  }
  return a1;
}


// ===== 60fa70 glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver *,int,glitch::collada::CRootSceneNode *) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CColladaDatabase::constructController(
        glitch::IReferenceCounted **this,
        glitch::video::IVideoDriver *a2,
        int a3,
        glitch::collada::CRootSceneNode *a4,
        glitch::collada::CRootSceneNode *a5)
{
  _DWORD *Controller; // r0

  Controller = (_DWORD *)glitch::collada::CColladaDatabase::getController(a2, (int)a4);
  glitch::collada::CColladaDatabase::constructController(this, (int)a2, a3, Controller, a5);
  return this;
}


// ===== 60fab8 glitch::collada::ISceneNodeAnimator::setEventsTrack(glitch::collada::SEventsTrack const*) =====
glitch::IReferenceCounted *__fastcall glitch::collada::ISceneNodeAnimator::setEventsTrack(_DWORD *a1, int a2)
{
  glitch::IReferenceCounted *result; // r0
  int v5; // r2
  int v6; // r3

  result = (glitch::IReferenceCounted *)a1[6];
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  if ( a2 )
  {
    result = (glitch::IReferenceCounted *)operator new(0x18u, 0);
    *((_DWORD *)result + 5) = a2;
    *((_DWORD *)result + 2) = glitch::collada::FxEchoNotHandledEvents;
    *((_DWORD *)result + 3) = 0;
    *(_DWORD *)result = off_978AA8;
    *((_DWORD *)result + 1) = 1;
    *((_DWORD *)result + 4) = -1;
    v5 = a1[7];
    v6 = a1[8];
    a1[6] = result;
    *((_DWORD *)result + 2) = v5;
    *((_DWORD *)result + 3) = v6;
  }
  else
  {
    a1[6] = 0;
  }
  return result;
}


// ===== 60fb54 glitch::collada::CColladaDatabase::constructAnimator(void) =====
int __fastcall glitch::collada::CColladaDatabase::constructAnimator(glitch::collada::CColladaDatabase *this)
{
  _DWORD *v2; // r2
  int v3; // r6
  int v4; // r5
  int Image; // r0
  int v6; // r3
  int v7; // r5
  int Animation; // r1

  v2 = *(_DWORD **)(*(_DWORD *)(*(_DWORD *)this + 36) + 32);
  if ( (int)v2[19] > 0 )
  {
    v4 = 0;
    v3 = 0;
    do
    {
      Image = glitch::collada::CColladaDatabase::getImage(this, v4++);
      if ( *(_DWORD *)(Image + 12) == 1 )
        ++v3;
      v2 = *(_DWORD **)(*(_DWORD *)(*(_DWORD *)this + 36) + 32);
    }
    while ( v4 < v2[19] );
  }
  else
  {
    v3 = 0;
  }
  if ( v2[9] || v3 || v2[11] )
  {
    v3 = (*(int (__fastcall **)(_DWORD, glitch::collada::CColladaDatabase *, _DWORD *))(**((_DWORD **)this + 1) + 8))(
           *((_DWORD *)this + 1),
           this,
           v2 + 13);
    v6 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32);
    if ( *(int *)(v6 + 36) > 0 )
    {
      v7 = 0;
      do
      {
        Animation = glitch::collada::CColladaDatabase::getAnimation(this, v7++);
        if ( *(_DWORD *)(Animation + 20) )
          (*(void (__fastcall **)(int, int))(*(_DWORD *)v3 + 136))(v3, Animation);
        v6 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 36) + 32);
      }
      while ( v7 < *(_DWORD *)(v6 + 36) );
    }
    glitch::collada::ISceneNodeAnimator::setEventsTrack(v3, *(_DWORD *)(v6 + 44));
  }
  return v3;
}


// ===== 60fc70 glitch::collada::CColladaDatabase::constructImage(glitch::collada::SImage *,glitch::collada::CRootSceneNode *) =====
_DWORD *__fastcall glitch::collada::CColladaDatabase::constructImage(_DWORD *a1, int *a2, _DWORD *a3)
{
  _DWORD *v6; // r4

  if ( a3 )
  {
    v6 = operator new(0x1Cu, 0);
    glitch::collada::CImage::CImage(v6, a2, a3);
    *a1 = v6;
    if ( v6 )
      ++v6[1];
  }
  else
  {
    *a1 = 0;
  }
  return a1;
}


// ===== 60fcc0 glitch::collada::CColladaDatabase::constructImage(int,glitch::collada::CRootSceneNode *) =====
_DWORD *__fastcall glitch::collada::CColladaDatabase::constructImage(
        _DWORD *a1,
        glitch::collada::CColladaDatabase *this,
        int a3)
{
  _DWORD *Image; // r0

  Image = (_DWORD *)glitch::collada::CColladaDatabase::getImage(this, a3);
  glitch::collada::CColladaDatabase::constructImage(a1, (int *)this, Image);
  return a1;
}


// ===== 60fcf8 glitch::collada::CEventsManager::getEventTimeFromEventNameEx<int,1000>(char const*) =====
int __fastcall glitch::collada::CEventsManager::getEventTimeFromEventNameEx<int,1000>(int a1, char *a2)
{
  _DWORD *v2; // r9
  int v4; // r11
  int v5; // r8
  int v6; // r5
  int v7; // r6
  int i; // r4
  int v11; // [sp+0h] [bp-Ch]
  int v12; // [sp+4h] [bp-8h]

  v2 = *(_DWORD **)(a1 + 20);
  v12 = v2[4];
  if ( v12 <= 0 )
    return -1;
  v5 = 0;
  v4 = -1;
  v11 = v2[5];
  do
  {
    v6 = *(_DWORD *)(v11 + 8 * v5);
    if ( v6 > 0 )
    {
      v7 = *(_DWORD *)(v11 + 8 * v5 + 4);
      for ( i = 0; i != v6; ++i )
      {
        if ( !LC_API_STRCMP_0(a2, *(const char **)(v7 + 4 * i)) )
          v4 = (int)(float)*(int *)(v2[3] + 4 * v5);
      }
    }
    ++v5;
  }
  while ( v5 != v12 );
  return v4;
}


// ===== 60fd9c glitch::collada::CEventsManager::getEventTimeFromEventNameEx<ushort,30>(char const*) =====
int __fastcall glitch::collada::CEventsManager::getEventTimeFromEventNameEx<unsigned short,30>(int a1, char *a2)
{
  int v2; // r3
  int v4; // r2
  int v5; // r10
  int v6; // r11
  int v7; // r9
  int v8; // r8
  int v9; // r5
  int v10; // r6
  int i; // r4
  int v14; // [sp+4h] [bp-8h]

  v2 = *(_DWORD *)(a1 + 20);
  v4 = *(_DWORD *)(v2 + 16);
  if ( v4 <= 0 )
    return -1;
  v14 = 2 * v4;
  v6 = *(_DWORD *)(v2 + 20);
  v7 = v2 + 8;
  v8 = 0;
  v5 = -1;
  do
  {
    v9 = *(_DWORD *)(v6 + 4 * v8);
    if ( v9 > 0 )
    {
      v10 = *(_DWORD *)(v6 + 4 * v8 + 4);
      for ( i = 0; i != v9; ++i )
      {
        if ( !LC_API_STRCMP_0(a2, *(const char **)(v10 + 4 * i)) )
          v5 = (int)(float)((float)*(unsigned __int16 *)(*(_DWORD *)(v7 + 4) + v8) * 33.333);
      }
    }
    v8 += 2;
  }
  while ( v8 != v14 );
  return v5;
}


// ===== 60fe48 glitch::collada::CEventsManager::getEventTimeFromEventNameEx<uchar,30>(char const*) =====
int __fastcall glitch::collada::CEventsManager::getEventTimeFromEventNameEx<unsigned char,30>(int a1, char *a2)
{
  _DWORD *v2; // r10
  int v4; // r9
  int v5; // r11
  int v6; // r8
  int v7; // r5
  int v8; // r6
  int i; // r4
  int v12; // [sp+4h] [bp-8h]

  v2 = *(_DWORD **)(a1 + 20);
  v12 = v2[4];
  if ( v12 <= 0 )
    return -1;
  v5 = v2[5];
  v6 = 0;
  v4 = -1;
  do
  {
    v7 = *(_DWORD *)(v5 + 8 * v6);
    if ( v7 > 0 )
    {
      v8 = *(_DWORD *)(v5 + 8 * v6 + 4);
      for ( i = 0; i != v7; ++i )
      {
        if ( !LC_API_STRCMP_0(a2, *(const char **)(v8 + 4 * i)) )
          v4 = (int)(float)((float)*(unsigned __int8 *)(v2[3] + v6) * 33.333);
      }
    }
    ++v6;
  }
  while ( v6 != v12 );
  return v4;
}


// ===== 60feec glitch::collada::CEventsManager::getEventTimeFromEventName(char const*) =====
int __fastcall glitch::collada::CEventsManager::getEventTimeFromEventName(
        glitch::collada::CEventsManager *this,
        char *a2)
{
  int v2; // r3

  v2 = **((_DWORD **)this + 5);
  switch ( v2 )
  {
    case 3:
      return glitch::collada::CEventsManager::getEventTimeFromEventNameEx<unsigned short,30>((int)this, a2);
    case 4:
      return glitch::collada::CEventsManager::getEventTimeFromEventNameEx<int,1000>((int)this, a2);
    case 1:
      return glitch::collada::CEventsManager::getEventTimeFromEventNameEx<unsigned char,30>((int)this, a2);
  }
  return 0;
}


// ===== 60ff20 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void)::s_Instance = (int)off_978AE8;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance(void)::s_Instance;
}


// ===== 60ffb4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void)::s_Instance = (int)off_978C00;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::getInstance(void)::s_Instance;
}


// ===== 610048 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void)::s_Instance = (int)off_978C98;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::getInstance(void)::s_Instance;
}


// ===== 6100dc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void)::s_Instance = (int)off_978D30;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance(void)::s_Instance;
}


// ===== 610170 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void)::s_Instance = (int)off_978DC8;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::getInstance(void)::s_Instance;
}


// ===== 610204 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void)::s_Instance = (int)off_978E60;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::getInstance(void)::s_Instance;
}


// ===== 610298 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void)::s_Instance = (int)off_978EF8;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance(void)::s_Instance;
}


// ===== 61032c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void)::s_Instance = (int)off_978F90;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getInstance(void)::s_Instance;
}


// ===== 6103c0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void)::s_Instance = (int)off_979028;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getInstance(void)::s_Instance;
}


// ===== 610454 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void)::s_Instance = (int)off_9790C0;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance(void)::s_Instance;
}


// ===== 6104e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void)::s_Instance = (int)off_979158;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getInstance(void)::s_Instance;
}


// ===== 61057c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void)::s_Instance = (int)off_9791F0;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getInstance(void)::s_Instance;
}


// ===== 610610 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void)::s_Instance = (int)off_979288;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance(void)::s_Instance;
}


// ===== 6106a4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void)::s_Instance = (int)off_979320;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getInstance(void)::s_Instance;
}


// ===== 610738 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void)::s_Instance = (int)off_9793B8;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getInstance(void)::s_Instance;
}


// ===== 6107cc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void)::s_Instance = (int)off_979450;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance(void)::s_Instance;
}


// ===== 610860 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void)::s_Instance = (int)off_9794E8;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getInstance(void)::s_Instance;
}


// ===== 6108f4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void)::s_Instance = (int)off_979580;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getInstance(void)::s_Instance;
}


// ===== 610988 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void)::s_Instance = (int)off_979618;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance(void)::s_Instance;
}


// ===== 610a1c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void)::s_Instance = (int)off_9796B0;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getInstance(void)::s_Instance;
}


// ===== 610ab0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void)::s_Instance = (int)off_979748;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getInstance(void)::s_Instance;
}


// ===== 610b44 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void)::s_Instance = (int)off_9797E0;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance(void)::s_Instance;
}


// ===== 610bd8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void)::s_Instance = (int)off_979878;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getInstance(void)::s_Instance;
}


// ===== 610c6c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void)::s_Instance = (int)off_979910;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getInstance(void)::s_Instance;
}


// ===== 610d00 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void)::s_Instance = (int)off_9799A8;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance(void)::s_Instance;
}


// ===== 610d94 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void)::s_Instance = (int)off_979A40;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getInstance(void)::s_Instance;
}


// ===== 610e28 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void)::s_Instance = (int)off_979AD8;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getInstance(void)::s_Instance;
}


// ===== 610ebc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void)::s_Instance = (int)off_979B70;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance(void)::s_Instance;
}


// ===== 610f50 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void)::s_Instance = (int)off_979C08;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getInstance(void)::s_Instance;
}


// ===== 610fe4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void)::s_Instance = (int)off_979CA0;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getInstance(void)::s_Instance;
}


// ===== 611078 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance(void)::s_Instance = (int)off_979D38;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getInstance(void)::s_Instance;
}


// ===== 61110c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void)::s_Instance = (int)off_979DD0;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getInstance(void)::s_Instance;
}


// ===== 6111a0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void)::s_Instance = (int)off_979E68;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getInstance(void)::s_Instance;
}


// ===== 611234 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void)::s_Instance = (int)off_979F00;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getInstance(void)::s_Instance;
}


// ===== 6112c8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void) =====
int *glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance()
{
  if ( (`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void)::s_Instance
      & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void)::s_Instance) )
  {
    return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void)::s_Instance;
  }
  glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void)::s_Instance = (int)off_979F98;
  _cxa_guard_release(&`guard variable for'glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void)::s_Instance);
  _aeabi_atexit(
    (int)&glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void)::s_Instance,
    (int)glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::~CVirtualEx,
    (int)&_dso_handle);
  return &glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getInstance(void)::s_Instance;
}

