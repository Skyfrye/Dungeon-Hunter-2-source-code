// ===== 62cb6c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62cc64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62cc80 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyAddedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62cd78 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62cd94 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62ce8c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62cea8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyAddedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62cfa0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62cfbc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d0b4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d0d0 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyAddedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d1c8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d1e4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d2dc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d2f8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyAddedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d3f0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d40c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d504 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d520 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyAddedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d618 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d634 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d72c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d748 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyAddedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 148))(a4);
}


// ===== 62d840 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d85c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 164))(a4);
}


// ===== 62d954 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62d970 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyAddedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 164))(a4);
}


// ===== 62da68 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62da84 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyBlendedValueEx(
        float *a1,
        int a2,
        unsigned int a3,
        int a4)
{
  float v4; // r10
  unsigned int v5; // r4
  int v7; // r8
  float v8; // r11
  float v9; // r9
  float v10; // r7

  v4 = 0.0;
  v5 = a3;
  if ( a3 > 1 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *(float *)(a2 + v7);
      v7 += 4;
      v4 = v4 + (float)(v10 * *a1);
      v8 = v8 + (float)(v10 * a1[1]);
      --v5;
      v9 = v9 + (float)(v10 * a1[2]);
      a1 += 3;
    }
    while ( v5 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 164))(a4);
}


// ===== 62db7c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62db98 glitch::collada::CAnimationSet::setMismatchBehavior(glitch::collada::CAnimationSet::E_MISMATCH_BEHAVIOR) =====
int __fastcall glitch::collada::CAnimationSet::setMismatchBehavior(int result, int a2)
{
  *(_DWORD *)(result + 8) = a2;
  return result;
}


// ===== 62dba0 glitch::collada::CDynamicAnimationSet::getChannel(uint) =====
unsigned int __fastcall glitch::collada::CDynamicAnimationSet::getChannel(
        glitch::collada::CDynamicAnimationSet *this,
        unsigned int a2)
{
  return *((_DWORD *)this + 29) + 16 * a2;
}


// ===== 62dbac glitch::collada::CDynamicAnimationSet::getChannel(uint) =====
unsigned int __fastcall glitch::collada::CDynamicAnimationSet::getChannel(
        glitch::collada::CDynamicAnimationSet *this,
        unsigned int a2)
{
  return *((_DWORD *)this + 29) + 16 * a2;
}


// ===== 62dbb8 glitch::collada::CDynamicAnimationSet::getDatabaseIndex(glitch::collada::CColladaDatabase &) =====
int __fastcall glitch::collada::CDynamicAnimationSet::getDatabaseIndex(
        glitch::collada::CDynamicAnimationSet *this,
        glitch::collada::CColladaDatabase *a2)
{
  _DWORD *v2; // r3
  int v3; // r2
  int result; // r0

  v2 = *((_DWORD **)this + 9);
  v3 = (*((_DWORD *)this + 10) - (int)v2) >> 3;
  if ( v3 )
  {
    if ( *v2 == *(_DWORD *)a2 )
      return 0;
    result = 0;
    while ( ++result != v3 )
    {
      if ( v2[2 * result] == *(_DWORD *)a2 )
        return result;
    }
  }
  return -1;
}


// ===== 62dc0c std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::SChannel*,uint,glitch::collada::SChannel const&,std::__false_type const&) =====
unsigned int __fastcall std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int *a4)
{
  unsigned int result; // r0
  unsigned int *v6; // r12
  int v7; // r6
  unsigned int *v9; // r8
  unsigned int v10; // r0
  unsigned int v11; // r1
  unsigned int v12; // r2
  unsigned int v13; // r3
  int v14; // r7
  int v15; // r11
  unsigned int *v16; // r10
  int v17; // r5
  unsigned int *v18; // r3
  int v20; // r4
  unsigned int *v22; // r12
  unsigned int v23; // r1
  unsigned int v24; // r2
  unsigned int v25; // r3
  int v26; // r5
  unsigned int *v27; // r7
  unsigned int *v28; // r8
  unsigned int v29; // r1
  unsigned int v30; // r2
  unsigned int v31; // r3
  int v32; // r5
  unsigned int *v33; // r4
  unsigned int v34; // r1
  unsigned int v35; // r2
  unsigned int v36; // r3
  int v37; // r10
  unsigned int *v38; // r11
  int v39; // r5
  unsigned int *v40; // r4
  unsigned int v41; // r1
  unsigned int v42; // r2
  unsigned int v43; // r3
  bool v44; // cc
  unsigned int v45; // r4
  unsigned int *v46; // r5
  unsigned int *v47; // r12
  unsigned int v48; // r0
  unsigned int v49; // r1
  unsigned int v50; // r2
  unsigned int v51; // r3
  unsigned int *v52; // r4
  unsigned int v53; // r1
  unsigned int v54; // r2
  unsigned int v55; // r3
  int v56; // [sp+Ch] [bp-20h]
  _DWORD v57[4]; // [sp+14h] [bp-18h] BYREF
  char v58[8]; // [sp+24h] [bp-8h] BYREF

  result = *a1;
  v6 = a4;
  v7 = a2;
  if ( (unsigned int)a4 >= result )
  {
    v9 = (unsigned int *)a1[1];
    if ( a4 < v9 )
    {
      v10 = *a4;
      v11 = a4[1];
      v12 = a4[2];
      v13 = a4[3];
      v57[0] = v10;
      v57[1] = v11;
      v57[2] = v12;
      v57[3] = v13;
      return std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
               a1,
               v7,
               a3,
               v57,
               v58);
    }
  }
  else
  {
    v9 = (unsigned int *)a1[1];
  }
  v14 = ((int)v9 - a2) >> 4;
  v56 = v14;
  if ( a3 >= v14 )
  {
    v37 = (int)(16 * (a3 - v14)) >> 4;
    v38 = &v9[4 * (a3 - v14)];
    if ( v37 > 0 )
    {
      v39 = 0;
      do
      {
        v40 = &v9[4 * v39++];
        result = *v6;
        v41 = v6[1];
        v42 = v6[2];
        v43 = v6[3];
        *v40 = *v6;
        v40[1] = v41;
        v40[2] = v42;
        v40[3] = v43;
      }
      while ( v39 != v37 );
    }
    v44 = v14 <= 0;
    if ( v14 <= 0 )
      v14 = (int)&v38[4 * v14];
    a1[1] = (unsigned int)v38;
    if ( v44 )
    {
      a1[1] = v14;
    }
    else
    {
      v45 = 0;
      v46 = v6;
      do
      {
        v47 = &v38[v45 / 4];
        --v14;
        v48 = *(_DWORD *)(v7 + v45);
        v49 = *(_DWORD *)(v7 + v45 + 4);
        v50 = *(_DWORD *)(v7 + v45 + 8);
        v51 = *(_DWORD *)(v7 + v45 + 12);
        v45 += 16;
        *v47 = v48;
        v47[1] = v49;
        v47[2] = v50;
        v47[3] = v51;
      }
      while ( v14 );
      a1[1] += 16 * v56;
      do
      {
        v52 = (unsigned int *)(v7 + 16 * v14++);
        result = *v46;
        v53 = v46[1];
        v54 = v46[2];
        v55 = v46[3];
        *v52 = *v46;
        v52[1] = v53;
        v52[2] = v54;
        v52[3] = v55;
      }
      while ( v56 != v14 );
    }
  }
  else
  {
    v15 = 16 * a3;
    v16 = &v9[-4 * a3];
    v17 = (int)(16 * a3) >> 4;
    if ( v17 > 0 )
    {
      v20 = 0;
      do
      {
        v22 = &v9[v20];
        --v17;
        result = v16[v20];
        v23 = v16[v20 + 1];
        v24 = v16[v20 + 2];
        v25 = v16[v20 + 3];
        v20 += 4;
        *v22 = result;
        v22[1] = v23;
        v22[2] = v24;
        v22[3] = v25;
      }
      while ( v17 );
      v18 = (unsigned int *)a1[1];
      v6 = a4;
      v7 = a2;
    }
    else
    {
      v18 = v9;
    }
    v26 = ((int)v16 - v7) >> 4;
    a1[1] = (unsigned int)&v18[v15 / 4u];
    if ( v26 > 0 )
    {
      v27 = v9;
      v28 = &v9[v15 / 0xFFFFFFFC];
      do
      {
        --v26;
        v28 -= 4;
        v27 -= 4;
        result = *v28;
        v29 = v28[1];
        v30 = v28[2];
        v31 = v28[3];
        *v27 = *v28;
        v27[1] = v29;
        v27[2] = v30;
        v27[3] = v31;
      }
      while ( v26 );
    }
    if ( v15 >> 4 > 0 )
    {
      v32 = 0;
      do
      {
        v33 = (unsigned int *)(v7 + 16 * v32++);
        result = *v6;
        v34 = v6[1];
        v35 = v6[2];
        v36 = v6[3];
        *v33 = *v6;
        v33[1] = v34;
        v33[2] = v35;
        v33[3] = v36;
      }
      while ( v32 != v15 >> 4 );
    }
  }
  return result;
}


// ===== 62dde0 std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::CAnimationSet::SBinding*,uint,glitch::collada::CAnimationSet::SBinding const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *result,
        int a2,
        unsigned int a3,
        int *a4)
{
  _DWORD *v4; // r12
  unsigned int v6; // r6
  int v7; // r5
  int v8; // lr
  int v9; // r7
  int v10; // r4
  unsigned int v11; // r8
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r2
  _DWORD *v15; // r1
  int v16; // r0
  int v17; // r1
  unsigned int v18; // r2
  int v19; // r4
  int v20; // r1
  _DWORD *v21; // r2
  unsigned int v22; // r4
  int v23; // r8
  int v24; // r1
  _DWORD *v25; // r2
  int v26; // r6
  int v27; // r2
  _DWORD *v28; // r1
  int v29; // r0
  int v30; // r1
  _DWORD *v31; // r2
  _DWORD v32[3]; // [sp+8h] [bp-10h] BYREF
  char v33[4]; // [sp+14h] [bp-4h] BYREF

  v4 = result;
  if ( (unsigned int)a4 >= *result )
  {
    v6 = result[1];
    if ( (unsigned int)a4 < v6 )
    {
      v7 = *a4;
      v8 = a4[2];
      v32[1] = a4[1];
      v32[2] = v8;
      v32[0] = v7;
      return (_DWORD *)std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
                         result,
                         a2,
                         a3,
                         v32,
                         v33);
    }
  }
  else
  {
    v6 = result[1];
  }
  v9 = -1431655765 * ((int)(v6 - a2) >> 2);
  if ( a3 >= v9 )
  {
    v22 = v6 + 12 * (a3 - v9);
    v23 = -1431655765 * ((int)(12 * (a3 - v9)) >> 2);
    if ( v23 > 0 )
    {
      result = a4 + 1;
      v24 = 0;
      do
      {
        v25 = (_DWORD *)(v6 + v24 + 4);
        *(_DWORD *)(v6 + v24) = *a4;
        --v23;
        v24 += 12;
        *v25 = *result;
        v25[1] = a4[2];
      }
      while ( v23 );
    }
    v4[1] = v22;
    if ( v9 <= 0 )
    {
      v4[1] = v22 + 4 * ((int)(v6 - a2) >> 2);
    }
    else
    {
      v26 = -1431655765 * ((int)(v6 - a2) >> 2);
      v27 = 0;
      do
      {
        *(_DWORD *)(v22 + v27) = *(_DWORD *)(a2 + v27);
        *(_DWORD *)(v22 + v27 + 4) = *(_DWORD *)(a2 + v27 + 4);
        v28 = (_DWORD *)(v22 + v27 + 8);
        v29 = *(_DWORD *)(a2 + v27 + 8);
        --v26;
        v27 += 12;
        *v28 = v29;
      }
      while ( v26 );
      result = a4 + 1;
      v30 = 0;
      v4[1] += 12 * v9;
      do
      {
        v31 = (_DWORD *)(a2 + v30 + 4);
        *(_DWORD *)(a2 + v30) = *a4;
        --v9;
        v30 += 12;
        *v31 = *result;
        v31[1] = a4[2];
      }
      while ( v9 );
    }
  }
  else
  {
    v10 = 12 * a3;
    v11 = v6 - 12 * a3;
    v12 = -1431655765 * ((int)(12 * a3) >> 2);
    if ( v12 > 0 )
    {
      v14 = 0;
      do
      {
        *(_DWORD *)(v6 + v14) = *(_DWORD *)(v11 + v14);
        *(_DWORD *)(v6 + v14 + 4) = *(_DWORD *)(v11 + v14 + 4);
        v15 = (_DWORD *)(v6 + v14 + 8);
        v16 = *(_DWORD *)(v11 + v14 + 8);
        --v12;
        v14 += 12;
        *v15 = v16;
      }
      while ( v12 );
      v13 = v4[1];
    }
    else
    {
      v13 = v6;
    }
    result = (_DWORD *)(v13 + v10);
    v4[1] = result;
    v17 = -1431655765 * ((int)(v11 - a2) >> 2);
    if ( v17 > 0 )
    {
      v18 = v6 - v10;
      do
      {
        --v17;
        *(_DWORD *)(v6 - 12) = *(_DWORD *)(v18 - 12);
        *(_DWORD *)(v6 - 8) = *(_DWORD *)(v18 - 8);
        result = *(_DWORD **)(v18 - 4);
        v18 -= 12;
        *(_DWORD *)(v6 - 4) = result;
        v6 -= 12;
      }
      while ( v17 );
    }
    v19 = -1431655765 * (v10 >> 2);
    if ( v19 > 0 )
    {
      result = a4 + 1;
      v20 = 0;
      do
      {
        v21 = (_DWORD *)(a2 + v20 + 4);
        *(_DWORD *)(a2 + v20) = *a4;
        --v19;
        v20 += 12;
        *v21 = *result;
        v21[1] = a4[2];
      }
      while ( v19 );
    }
  }
  return result;
}


// ===== 62e098 `global constructor keyed to'.._source_glitch_collada_CColladaDynamicAnimationSet.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaDynamicAnimationSet.cpp()
{
  dword_9F6F18 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6F14 = 1056964608;
}


// ===== 62e0b8 std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::IReferenceCounted ***__fastcall std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::IReferenceCounted ***a1)
{
  glitch::IReferenceCounted **v1; // r4
  glitch::IReferenceCounted **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 2;
    glitch::collada::CColladaDatabase::~CColladaDatabase(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 62e0fc glitch::collada::CAnimationSet::~CAnimationSet() =====
void __fastcall glitch::collada::CAnimationSet::~CAnimationSet(glitch::IReferenceCounted ***this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0

  *this = (glitch::IReferenceCounted **)off_9840C0;
  glitch::collada::CAnimationSet::remAnimationTemplate((glitch::collada::CAnimationSet *)this);
  v2 = *(this + 22);
  if ( v2 )
    GlitchFree(v2);
  v3 = *(this + 19);
  if ( v3 )
    GlitchFree(v3);
  v4 = *(this + 16);
  if ( v4 )
    GlitchFree(v4);
  v5 = *(this + 12);
  if ( v5 )
    GlitchFree(v5);
  std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 9);
  v6 = *(this + 6);
  if ( v6 )
    GlitchFree(v6);
  v7 = *(this + 3);
  if ( v7 )
    GlitchFree(v7);
}


// ===== 62e198 glitch::collada::CDynamicAnimationSet::~CDynamicAnimationSet() =====
void __fastcall glitch::collada::CDynamicAnimationSet::~CDynamicAnimationSet(
        glitch::collada::CDynamicAnimationSet *this)
{
  void *v2; // r0

  v2 = *((void **)this + 29);
  *(_DWORD *)this = off_97A800;
  if ( v2 )
    GlitchFree(v2);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 26);
  glitch::collada::CAnimationSet::~CAnimationSet((glitch::IReferenceCounted ***)this);
}


// ===== 62e1e8 glitch::collada::CDynamicAnimationSet::~CDynamicAnimationSet() =====
void __fastcall glitch::collada::CDynamicAnimationSet::~CDynamicAnimationSet(
        glitch::collada::CDynamicAnimationSet *this)
{
  glitch::collada::CDynamicAnimationSet::~CDynamicAnimationSet(this);
  LC_API_FREE_0(this);
}


// ===== 62e204 glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(glitch::collada::CColladaDatabase const&,uint) =====
void __fastcall glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(
        glitch::collada::CDynamicAnimationSet *this,
        glitch::IReferenceCounted **a2,
        unsigned int a3)
{
  int v4; // r3
  glitch::IReferenceCounted *v7; // r2
  int v8; // r0
  glitch::IReferenceCounted *v9; // r2
  int v10; // r1
  bool v11; // zf
  int v12; // r0
  glitch::IReferenceCounted *v13; // r3
  int v14; // r3
  unsigned int v15; // r6
  unsigned int v16; // r5
  int v17; // r7
  int BlendableAnimation; // r8
  char *DefaultValue; // r0
  int v20; // r3
  glitch::IReferenceCounted *v21; // [sp+0h] [bp-14h] BYREF
  glitch::IReferenceCounted *v22; // [sp+4h] [bp-10h]
  glitch::IReferenceCounted *v23[3]; // [sp+8h] [bp-Ch] BYREF

  v4 = *((_DWORD *)this + 9);
  if ( a3 < (*((_DWORD *)this + 10) - v4) >> 3 )
  {
    v7 = *(glitch::IReferenceCounted **)(v4 + 8 * a3);
    v23[0] = v7;
    v23[1] = *(glitch::IReferenceCounted **)(v4 + 8 * a3 + 4);
    if ( v7 )
    {
      v8 = *((_DWORD *)v7 + 1);
      if ( v8 )
      {
        *((_DWORD *)v7 + 1) = v8 + 1;
        v4 = *((_DWORD *)this + 9);
      }
    }
    v9 = *a2;
    v10 = v4 + 8 * a3;
    v11 = *a2 == nullptr;
    v22 = a2[1];
    v21 = v9;
    if ( !v11 )
    {
      v12 = *((_DWORD *)v9 + 1);
      if ( v12 )
      {
        *((_DWORD *)v9 + 1) = v12 + 1;
        v9 = v21;
      }
    }
    v21 = *(glitch::IReferenceCounted **)(v4 + 8 * a3);
    *(_DWORD *)(v4 + 8 * a3) = v9;
    v13 = v22;
    v22 = *(glitch::IReferenceCounted **)(v10 + 4);
    *(_DWORD *)(v10 + 4) = v13;
    glitch::collada::CColladaDatabase::~CColladaDatabase(&v21);
    *(_DWORD *)(*((_DWORD *)this + 16) + 4 * a3) = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)*a2 + 9) + 32) + 28);
    *(_DWORD *)(*((_DWORD *)this + 19) + 4 * a3) = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)*a2 + 9) + 32) + 32);
    *(_DWORD *)(*((_DWORD *)this + 22) + 4 * a3) = *(_DWORD *)(*((_DWORD *)this + 19) + 4 * a3)
                                                 - *(_DWORD *)(*((_DWORD *)this + 16) + 4 * a3);
    v14 = *((_DWORD *)this + 15);
    if ( v14 )
    {
      v15 = 0;
      v16 = a3 * 12 * v14;
      do
      {
        while ( 1 )
        {
          v17 = 16 * v15;
          BlendableAnimation = glitch::collada::CColladaDatabase::getBlendableAnimation(
                                 (glitch::collada::CColladaDatabase *)a2,
                                 *((_DWORD *)this + 29) + 16 * v15);
          DefaultValue = glitch::collada::CColladaDatabase::getDefaultValue(
                           (glitch::collada::CColladaDatabase *)a2,
                           *((_DWORD *)this + 29) + 16 * v15,
                           (_DWORD *)(*((_DWORD *)this + 12) + v16 + 4));
          v20 = *((_DWORD *)this + 12);
          *(_DWORD *)(v20 + v16) = BlendableAnimation ? 2 : 1;
          ++v15;
          *(_DWORD *)(*((_DWORD *)this + 12) + v16 + 8) = BlendableAnimation;
          if ( !DefaultValue
            && (!*((_DWORD *)this + 26)
             || !glitch::collada::CColladaDatabase::getDefaultValue(
                   (glitch::collada::CDynamicAnimationSet *)((char *)this + 104),
                   *((_DWORD *)this + 29) + v17,
                   (_DWORD *)(*((_DWORD *)this + 12) + v16 + 4))) )
          {
            break;
          }
          v16 += 12;
          if ( *((_DWORD *)this + 15) <= v15 )
            goto LABEL_18;
        }
        *(_DWORD *)(*((_DWORD *)this + 12) + v16 + 4) = 0;
        v16 += 12;
      }
      while ( *((_DWORD *)this + 15) > v15 );
    }
LABEL_18:
    glitch::collada::CColladaDatabase::~CColladaDatabase(v23);
  }
}


// ===== 62e3f8 glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(glitch::collada::CColladaDatabase const&,glitch::collada::CColladaDatabase&) =====
void __fastcall glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(
        glitch::collada::CDynamicAnimationSet *this,
        glitch::IReferenceCounted **a2,
        glitch::collada::CColladaDatabase *a3)
{
  unsigned int DatabaseIndex; // r0

  DatabaseIndex = glitch::collada::CDynamicAnimationSet::getDatabaseIndex(this, a3);
  glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(this, a2, DatabaseIndex);
}


// ===== 62e420 std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = -1431655765 * ((a1[1] - *a1) >> 2);
  if ( 357913941 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0x15555555 || result < v3 )
    return 357913941;
  return result;
}


// ===== 62e4a0 std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 4;
  if ( 0xFFFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0xFFFFFFF || result < v2 )
    return 0xFFFFFFF;
  return result;
}


// ===== 62e500 std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 62e560 std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CAnimationSet::SBinding*>(uint &,glitch::collada::CAnimationSet::SBinding*,glitch::collada::CAnimationSet::SBinding*) =====
char *__fastcall std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CAnimationSet::SBinding*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r5
  char *result; // r0
  int v7; // r5
  int v8; // r3
  char *v9; // r2
  int v10; // r1

  v5 = a4 - a3;
  result = (char *)GlitchAlloc(12 * *a2, 0);
  v7 = -1431655765 * (v5 >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      *(_DWORD *)&result[v8] = *(_DWORD *)(a3 + v8);
      *(_DWORD *)&result[v8 + 4] = *(_DWORD *)(a3 + v8 + 4);
      v9 = &result[v8 + 8];
      v10 = *(_DWORD *)(a3 + v8 + 8);
      --v7;
      v8 += 12;
      *(_DWORD *)v9 = v10;
    }
    while ( v7 );
  }
  return result;
}


// ===== 62e5e0 std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int *a1,
        unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  char *v8; // r0
  char *v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = (a1[2] - *a1) >> 2;
  v10 = a2;
  if ( a2 > -1431655765 * v4 )
  {
    if ( a2 > 0x15555555 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = a1[1];
    v6 = -1431655765 * ((v5 - v3) >> 2);
    if ( v3 )
    {
      v7 = std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CAnimationSet::SBinding*>(
             (int)a1,
             &v10,
             v3,
             v5);
      v8 = (char *)a1[1];
      if ( v8 != (char *)*a1 )
        v8 += -12 * ((715827883 * ((unsigned int)&v8[-*a1 - 12] >> 2)) & 0x3FFFFFFF) - 12;
      GlitchFree(v8);
    }
    else
    {
      v7 = (char *)GlitchAlloc(12 * v10, 0);
    }
    v9 = &v7[12 * v10];
    a1[1] = (int)&v7[12 * v6];
    a1[2] = (int)v9;
    *a1 = (int)v7;
  }
}


// ===== 62e710 std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::collada::SChannel*,glitch::collada::SChannel const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  _DWORD *v9; // r0
  char *v10; // r7
  _DWORD *v11; // r5
  int v12; // r8
  _DWORD *v13; // r6
  int v14; // r6
  unsigned int v15; // lr
  _DWORD *v16; // r12
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r7
  _DWORD *v22; // r8
  int v23; // lr
  _DWORD *v24; // r12
  int v25; // r1
  int v26; // r2
  int v27; // r3
  char *v28; // r0
  int v29; // r6
  unsigned int v30; // lr
  int v31; // r4
  _DWORD *v32; // r12
  int v33; // r0
  int v34; // r1
  int v35; // r2
  int v36; // r3
  int v37; // r1
  int v38; // r2
  int v39; // r3
  size_t v40; // [sp+0h] [bp-Ch]

  v40 = 4
      * std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
          a1,
          a5);
  v9 = GlitchAlloc(v40 * 4, 0);
  v10 = (char *)*a1;
  v11 = v9;
  v12 = (a2 - *a1) >> 4;
  if ( v12 > 0 )
  {
    v14 = (a2 - *a1) >> 4;
    v15 = 0;
    do
    {
      v16 = &v11[v15 / 4];
      --v14;
      v17 = *(_DWORD *)&v10[v15];
      v18 = *(_DWORD *)&v10[v15 + 4];
      v19 = *(_DWORD *)&v10[v15 + 8];
      v20 = *(_DWORD *)&v10[v15 + 12];
      v15 += 16;
      *v16 = v17;
      v16[1] = v18;
      v16[2] = v19;
      v16[3] = v20;
    }
    while ( v14 );
    v13 = &v11[4 * v12];
  }
  else
  {
    v13 = v9;
  }
  if ( a5 == 1 )
  {
    v37 = a3[1];
    v38 = a3[2];
    v39 = a3[3];
    v22 = v13 + 4;
    *v13 = *a3;
    v13[1] = v37;
    v13[2] = v38;
    v13[3] = v39;
  }
  else
  {
    v21 = (int)(16 * a5) >> 4;
    v22 = &v13[4 * a5];
    if ( v21 > 0 )
    {
      v23 = 0;
      do
      {
        v24 = &v13[4 * v23++];
        v25 = a3[1];
        v26 = a3[2];
        v27 = a3[3];
        *v24 = *a3;
        v24[1] = v25;
        v24[2] = v26;
        v24[3] = v27;
      }
      while ( v23 != v21 );
    }
  }
  if ( a6 )
  {
    v28 = (char *)a1[1];
  }
  else
  {
    v28 = (char *)a1[1];
    v29 = (int)&v28[-a2] >> 4;
    if ( v29 > 0 )
    {
      v30 = 0;
      v31 = (int)&v28[-a2] >> 4;
      do
      {
        v32 = &v22[v30 / 4];
        --v31;
        v33 = *(_DWORD *)(a2 + v30);
        v34 = *(_DWORD *)(a2 + v30 + 4);
        v35 = *(_DWORD *)(a2 + v30 + 8);
        v36 = *(_DWORD *)(a2 + v30 + 12);
        v30 += 16;
        *v32 = v33;
        v32[1] = v34;
        v32[2] = v35;
        v32[3] = v36;
      }
      while ( v31 );
      v28 = (char *)a1[1];
      v22 += 4 * v29;
    }
  }
  if ( (char *)*a1 != v28 )
    v28 += 16 * ~((unsigned int)&v28[-*a1 - 16] >> 4);
  GlitchFree(v28);
  *a1 = v11;
  a1[1] = v22;
  a1[2] = &v11[v40];
}


// ===== 62e854 std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::SChannel*,uint,glitch::collada::SChannel const&) =====
void __fastcall std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (int)(a1[2] - a1[1]) >> 4 )
      std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 62e8a8 glitch::collada::CDynamicAnimationSet::addAnimationLibrary(glitch::collada::CColladaDatabase const&) =====
int __fastcall glitch::collada::CDynamicAnimationSet::addAnimationLibrary(
        glitch::collada::CDynamicAnimationSet *this,
        const glitch::collada::CColladaDatabase *a2)
{
  int result; // r0

  result = glitch::collada::CAnimationSet::addAnimationLibrary(this, a2);
  *((_BYTE *)this + 112) = 1;
  return result;
}


// ===== 62e8c0 std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::CAnimationTrackEx const**,uint,glitch::collada::CAnimationTrackEx const* const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
      return (char *)std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 62ea08 std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::CAnimationSet::SBinding*,uint,glitch::collada::CAnimationSet::SBinding const&) =====
void __fastcall std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        int a2,
        unsigned int a3,
        int *a4)
{
  size_t v8; // r8
  _DWORD *v9; // r0
  char *v10; // r12
  _DWORD *v11; // r10
  int v12; // r3
  int v13; // r9
  int *v14; // r9
  int v15; // r0
  int v16; // r3
  _DWORD *v17; // r2
  int v18; // r1
  int *v19; // r7
  int v20; // r1
  int v21; // r2
  int *v22; // r3
  char *v23; // r0
  int v24; // lr
  int v25; // r0
  int v26; // r3
  int *v27; // r2
  int v28; // r1

  if ( a3 )
  {
    if ( a3 <= -1431655765 * ((a1[2] - a1[1]) >> 2) )
    {
      std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 3
         * std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = GlitchAlloc(v8 * 4, 0);
      v10 = (char *)*a1;
      v11 = v9;
      v12 = (a2 - *a1) >> 2;
      v13 = -1431655765 * v12;
      if ( -1431655765 * v12 > 0 )
      {
        v15 = -1431655765 * v12;
        v16 = 0;
        do
        {
          v11[v16] = *(_DWORD *)&v10[v16 * 4];
          v11[v16 + 1] = *(_DWORD *)&v10[v16 * 4 + 4];
          v17 = &v11[v16 + 2];
          v18 = *(_DWORD *)&v10[v16 * 4 + 8];
          --v15;
          v16 += 3;
          *v17 = v18;
        }
        while ( v15 );
        v14 = &v11[3 * v13];
      }
      else
      {
        v14 = v9;
      }
      if ( a3 == 1 )
      {
        v19 = v14 + 3;
        *v14 = *a4;
        v14[1] = a4[1];
        v14[2] = a4[2];
      }
      else
      {
        v19 = &v14[3 * a3];
        v20 = -1431655765 * (v19 - v14);
        if ( v20 > 0 )
        {
          v21 = 0;
          do
          {
            v22 = &v14[v21 + 1];
            v14[v21] = *a4;
            --v20;
            v21 += 3;
            *v22 = a4[1];
            v22[1] = a4[2];
          }
          while ( v20 );
        }
      }
      v23 = (char *)a1[1];
      v24 = -1431655765 * ((int)&v23[-a2] >> 2);
      if ( v24 > 0 )
      {
        v25 = -1431655765 * ((int)&v23[-a2] >> 2);
        v26 = 0;
        do
        {
          v19[v26] = *(_DWORD *)(a2 + v26 * 4);
          v19[v26 + 1] = *(_DWORD *)(a2 + v26 * 4 + 4);
          v27 = &v19[v26 + 2];
          v28 = *(_DWORD *)(a2 + v26 * 4 + 8);
          --v25;
          v26 += 3;
          *v27 = v28;
        }
        while ( v25 );
        v19 += 3 * v24;
        v23 = (char *)a1[1];
      }
      if ( (char *)*a1 != v23 )
        v23 += -12 * ((715827883 * ((unsigned int)&v23[-*a1 - 12] >> 2)) & 0x3FFFFFFF) - 12;
      GlitchFree(v23);
      a1[1] = v19;
      a1[2] = &v11[v8];
      *a1 = v11;
    }
  }
}


// ===== 62ec50 std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::collada::CAnimationSet::SBinding const&) =====
void __fastcall std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        _DWORD *a1,
        unsigned int a2,
        int *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = a1[1];
  v5 = -1431655765 * ((v3 - *a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *a1 + 12 * a2;
    if ( v6 != v3 )
      a1[1] = v6;
  }
}


// ===== 62ecac std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::collada::CColladaDatabase const&) =====
void __fastcall std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::IReferenceCounted ***a1,
        glitch::IReferenceCounted **a2)
{
  glitch::IReferenceCounted **v2; // r3
  glitch::IReferenceCounted **v3; // r6
  glitch::IReferenceCounted *v6; // r2
  int v7; // r3
  unsigned int v8; // r3
  unsigned int v9; // r7
  size_t v10; // r7
  glitch::IReferenceCounted **v11; // r0
  glitch::IReferenceCounted **v12; // lr
  glitch::IReferenceCounted **v13; // r8
  int v14; // r10
  glitch::IReferenceCounted **v15; // r10
  int v16; // r0
  int v17; // r12
  glitch::IReferenceCounted *v18; // r3
  glitch::IReferenceCounted **v19; // r2
  glitch::IReferenceCounted *v20; // r1
  int v21; // r2
  glitch::IReferenceCounted *v22; // r3
  int v23; // r2
  glitch::IReferenceCounted **v24; // r5
  glitch::IReferenceCounted **v25; // r6
  glitch::IReferenceCounted **v26; // r10

  v2 = a1[1];
  v3 = a1[2];
  if ( v2 == v3 )
  {
    v8 = ((char *)v3 - (char *)*a1) >> 3;
    if ( v8 )
      v9 = 2 * v8;
    else
      v9 = 1;
    if ( v9 > 0x1FFFFFFF || v8 > v9 )
      v10 = -2;
    else
      v10 = 2 * v9;
    v11 = (glitch::IReferenceCounted **)GlitchAlloc(v10 * 4, 0);
    v12 = *a1;
    v13 = v11;
    v14 = ((char *)v3 - (char *)*a1) >> 3;
    if ( v14 > 0 )
    {
      v16 = ((char *)v3 - (char *)*a1) >> 3;
      v17 = 0;
      do
      {
        v18 = v12[v17];
        v13[v17] = v18;
        v19 = &v13[v17];
        v20 = v12[v17 + 1];
        v17 += 2;
        v19[1] = v20;
        if ( v18 )
        {
          v21 = *((_DWORD *)v18 + 1);
          if ( v21 )
            *((_DWORD *)v18 + 1) = v21 + 1;
        }
        --v16;
      }
      while ( v16 );
      v15 = &v13[2 * v14];
    }
    else
    {
      v15 = v11;
    }
    v22 = *a2;
    *v15 = *a2;
    v15[1] = a2[1];
    if ( v22 )
    {
      v23 = *((_DWORD *)v22 + 1);
      if ( v23 )
        *((_DWORD *)v22 + 1) = v23 + 1;
    }
    v24 = a1[1];
    v25 = *a1;
    v26 = v15 + 2;
    if ( v24 != *a1 )
    {
      do
      {
        v24 -= 2;
        glitch::collada::CColladaDatabase::~CColladaDatabase(v24);
      }
      while ( v25 != v24 );
      v25 = *a1;
    }
    GlitchFree(v25);
    a1[2] = &v13[v10];
    *a1 = v13;
    a1[1] = v26;
  }
  else
  {
    v6 = *a2;
    *v2 = *a2;
    v2[1] = a2[1];
    if ( v6 )
    {
      v7 = *((_DWORD *)v6 + 1);
      if ( v7 )
        *((_DWORD *)v6 + 1) = v7 + 1;
    }
    a1[1] += 2;
  }
}


// ===== 62ee0c std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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


// ===== 62ee9c glitch::collada::CDynamicAnimationSet::addAnimationLibraryBindings(glitch::collada::CColladaDatabase const&) =====
void __fastcall glitch::collada::CDynamicAnimationSet::addAnimationLibraryBindings(
        glitch::collada::CDynamicAnimationSet *this,
        glitch::IReferenceCounted **a2)
{
  _DWORD *v4; // r1
  _DWORD *v5; // r2
  int v6; // r3
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  int v9; // r3
  int *v10; // r2
  int *v11; // r1
  int v12; // r3
  int v13; // r3
  unsigned int v14; // r6
  int v15; // r5
  unsigned int v16; // r7
  int v17; // r5
  int v18; // r7
  int BlendableAnimation; // r8
  char *DefaultValue; // r0
  int v21; // r3
  int v22[3]; // [sp+0h] [bp-1Ch] BYREF
  int v23; // [sp+Ch] [bp-10h] BYREF
  int v24; // [sp+10h] [bp-Ch] BYREF
  int v25; // [sp+14h] [bp-8h] BYREF

  std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    (glitch::IReferenceCounted ***)this + 9,
    a2);
  v4 = *((_DWORD **)this + 17);
  v5 = *((_DWORD **)this + 18);
  v6 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)*a2 + 9) + 32) + 28);
  v25 = v6;
  if ( v4 == v5 )
  {
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (int)this + 64,
      (int)v4,
      &v25);
  }
  else
  {
    *v4 = v6;
    *((_DWORD *)this + 17) += 4;
  }
  v7 = *((_DWORD **)this + 20);
  v8 = *((_DWORD **)this + 21);
  v9 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)*a2 + 9) + 32) + 32);
  v24 = v9;
  if ( v7 == v8 )
  {
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (int)this + 76,
      (int)v7,
      &v24);
  }
  else
  {
    *v7 = v9;
    *((_DWORD *)this + 20) += 4;
  }
  v10 = *((int **)this + 24);
  v11 = *((int **)this + 23);
  v12 = *(_DWORD *)(*((_DWORD *)*a2 + 9) + 32);
  v13 = *(_DWORD *)(v12 + 32) - *(_DWORD *)(v12 + 28);
  v23 = v13;
  if ( v11 == v10 )
  {
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (int)this + 88,
      (int)v11,
      &v23);
  }
  else
  {
    *v11 = v13;
    *((_DWORD *)this + 23) += 4;
  }
  v14 = 0;
  v15 = -1431655765 * ((*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 2);
  v16 = v15 + *((_DWORD *)this + 15);
  std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int *)this + 12,
    v16);
  memset(v22, 0, sizeof(v22));
  std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (_DWORD *)this + 12,
    v16,
    v22);
  if ( *((_DWORD *)this + 15) )
  {
    v17 = 12 * v15;
    do
    {
      while ( 1 )
      {
        v18 = 16 * v14;
        BlendableAnimation = glitch::collada::CColladaDatabase::getBlendableAnimation(
                               (glitch::collada::CColladaDatabase *)a2,
                               *((_DWORD *)this + 29) + 16 * v14);
        DefaultValue = glitch::collada::CColladaDatabase::getDefaultValue(
                         (glitch::collada::CColladaDatabase *)a2,
                         *((_DWORD *)this + 29) + 16 * v14,
                         (_DWORD *)(*((_DWORD *)this + 12) + v17 + 4));
        v21 = *((_DWORD *)this + 12);
        *(_DWORD *)(v21 + v17) = BlendableAnimation ? 2 : 1;
        ++v14;
        *(_DWORD *)(*((_DWORD *)this + 12) + v17 + 8) = BlendableAnimation;
        if ( !DefaultValue
          && (!*((_DWORD *)this + 26)
           || !glitch::collada::CColladaDatabase::getDefaultValue(
                 (glitch::collada::CDynamicAnimationSet *)((char *)this + 104),
                 *((_DWORD *)this + 29) + v18,
                 (_DWORD *)(*((_DWORD *)this + 12) + v17 + 4))) )
        {
          break;
        }
        v17 += 12;
        if ( *((_DWORD *)this + 15) <= v14 )
          return;
      }
      *(_DWORD *)(*((_DWORD *)this + 12) + v17 + 4) = 0;
      v17 += 12;
    }
    while ( *((_DWORD *)this + 15) > v14 );
  }
}


// ===== 62f0cc glitch::collada::CDynamicAnimationSet::remAnimation(glitch::collada::SAnimation const*) =====
int __fastcall glitch::collada::CDynamicAnimationSet::remAnimation(_DWORD *a1, int a2)
{
  int v2; // r3
  int v3; // r8
  int v5; // r7
  int v6; // r4
  int v7; // r2
  unsigned int v8; // r3
  int v9; // r2
  int v10; // r5
  int v11; // r3
  _DWORD *v12; // r12
  int v13; // r7
  int v14; // r1
  int v15; // r2
  int v16; // r3
  char *v17; // r12
  char *v18; // r0
  char *v19; // r1
  unsigned int v21; // [sp+4h] [bp-10h]
  int v22; // [sp+8h] [bp-Ch]

  v2 = a1[29];
  v3 = (a1[30] - v2) >> 4;
  v5 = *(_DWORD *)(a2 + 16);
  if ( !v3 )
    return -1;
  v6 = 0;
  while ( 1 )
  {
    v7 = v2 + 16 * v6;
    if ( *(unsigned __int8 *)(v7 + 12) == *(unsigned __int8 *)(v5 + 12) )
    {
      v8 = *(_DWORD *)(v5 + 8);
      v9 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable + 12 * *(_DWORD *)(v7 + 8);
      if ( v8 > 0x5B )
      {
        v22 = v9;
        v21 = *(_DWORD *)(v5 + 8);
        __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
        v8 = v21;
        v9 = v22;
      }
      if ( (*(_DWORD *)(v9 + 4 * (v8 >> 5)) & (1 << (v8 & 0x1F))) != 0 )
      {
        v10 = a1[29] + 16 * v6;
        if ( !LC_API_STRCMP_0(*(const char **)(v10 + 4), *(const char **)(v5 + 4)) )
          break;
      }
    }
    if ( ++v6 == v3 )
      return -1;
    v2 = a1[29];
  }
  v11 = a1[30];
  v12 = (_DWORD *)(v10 + 16);
  if ( v10 + 16 != v11 )
  {
    v13 = (v11 - (int)v12) >> 4;
    if ( v13 > 0 )
    {
      while ( 1 )
      {
        --v13;
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        *(_DWORD *)v10 = *v12;
        *(_DWORD *)(v10 + 4) = v14;
        *(_DWORD *)(v10 + 8) = v15;
        *(_DWORD *)(v10 + 12) = v16;
        v10 = (int)v12;
        if ( !v13 )
          break;
        v12 += 4;
      }
      v11 = a1[30];
    }
  }
  v17 = (char *)a1[7];
  v18 = (char *)(a1[6] + 4 * v6);
  v19 = v18 + 4;
  a1[30] = v11 - 16;
  if ( v18 + 4 != v17 )
  {
    memmove(v18, v19, v17 - v19);
    v19 = (char *)a1[7];
  }
  a1[7] = v19 - 4;
  return v6;
}


// ===== 62f240 std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::collada::CAnimationTrackEx const**,glitch::collada::CAnimationTrackEx const* const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        const void **a1,
        _BYTE *a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  char *v10; // r0
  char *v11; // r7
  size_t v12; // r10
  char *v13; // r10
  unsigned int v14; // r2
  int v15; // r3
  size_t v16; // r4

  v9 = 4
     * std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = (char *)GlitchAlloc(v9, 0);
  v11 = v10;
  if ( a2 != *a1 )
  {
    v12 = a2 - (_BYTE *)*a1;
    v10 = (char *)memmove(v10, *a1, v12) + v12;
  }
  v13 = v10;
  if ( a5 )
  {
    v14 = a5;
    v15 = 0;
    do
    {
      --v14;
      *(_DWORD *)&v10[v15] = *a3;
      v15 += 4;
    }
    while ( v14 );
    v13 = &v10[4 * a5];
  }
  if ( !a6 )
  {
    v16 = (_BYTE *)a1[1] - a2;
    if ( v16 )
      v13 = (char *)memmove(v13, a2, v16) + v16;
  }
  GlitchFree((void *)*a1);
  a1[2] = &v11[v9];
  *a1 = v11;
  a1[1] = v13;
}


// ===== 62f300 std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::CAnimationTrackEx const**,uint,glitch::collada::CAnimationTrackEx const* const&) =====
void __fastcall std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
      std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 62f354 glitch::collada::CDynamicAnimationSet::addAnimation(glitch::collada::SAnimation const*) =====
int __fastcall glitch::collada::CDynamicAnimationSet::addAnimation(int a1, _DWORD *a2)
{
  int v2; // r2
  int v4; // r11
  int v5; // r7
  int v6; // r3
  int v7; // r5
  int v8; // r1
  int v9; // r2
  int v10; // r6
  int v11; // r3
  int *AnimationTrack; // r0
  _DWORD *v14; // r12
  _DWORD *v15; // r3
  int *v16; // r2
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3
  _DWORD *v21; // t0
  _BYTE *v22; // r1
  int v23; // [sp+8h] [bp-24h]
  int v24; // [sp+Ch] [bp-20h]
  int *v26; // [sp+1Ch] [bp-10h] BYREF
  _BYTE v27[4]; // [sp+20h] [bp-Ch] BYREF
  _BYTE v28[8]; // [sp+24h] [bp-8h] BYREF

  v2 = *(_DWORD *)(a1 + 116);
  v4 = (*(_DWORD *)(a1 + 120) - v2) >> 4;
  v5 = a2[4];
  if ( v4 )
  {
    v6 = *(_DWORD *)(v5 + 8);
    if ( v6 >= 0 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = *(_DWORD *)(v2 + 16 * v7 + 8);
        v9 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable + 12 * v8;
        if ( (unsigned int)v6 > 0x5B )
        {
          v23 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable + 12 * v8;
          v24 = v6;
          __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
          v6 = v24;
          v9 = v23;
        }
        if ( (*(_DWORD *)(v9 + 4 * ((unsigned int)v6 >> 5)) & (1 << (v6 & 0x1F))) != 0 )
        {
          v10 = *(_DWORD *)(a1 + 116) + 16 * v7;
          if ( !LC_API_STRCMP_0(*(const char **)(v10 + 4), *(const char **)(v5 + 4)) )
          {
            v11 = *(_DWORD *)(v5 + 8);
            if ( v11 == 14 )
            {
              if ( *(unsigned __int8 *)(v10 + 12) == *(unsigned __int8 *)(v5 + 12) )
                return v7;
            }
            else if ( v11 != 86 || !LC_API_STRCMP_0(*(const char **)(v10 + 12), *(const char **)(v5 + 12)) )
            {
              return v7;
            }
          }
        }
        if ( ++v7 == v4 )
          goto LABEL_19;
        v6 = *(_DWORD *)(v5 + 8);
        if ( v6 < 0 )
          return -1;
        v2 = *(_DWORD *)(a1 + 116);
      }
    }
    return -1;
  }
LABEL_19:
  AnimationTrack = glitch::collada::CColladaDatabase::getAnimationTrackEx(a2);
  if ( !AnimationTrack )
    return -1;
  v14 = *(_DWORD **)(a1 + 120);
  v15 = *(_DWORD **)(a1 + 124);
  v26 = AnimationTrack;
  v16 = (int *)a2[4];
  if ( v14 == v15 )
  {
    std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (_DWORD *)(a1 + 116),
      (int)v14,
      v16,
      (int)v28,
      1u,
      1);
  }
  else
  {
    v17 = *v16;
    v18 = v16[1];
    v21 = v16 + 2;
    v19 = v16[2];
    v20 = v21[1];
    *v14 = v17;
    v14[1] = v18;
    v14[2] = v19;
    v14[3] = v20;
    *(_DWORD *)(a1 + 120) += 16;
  }
  v22 = *(_BYTE **)(a1 + 28);
  if ( v22 == *(_BYTE **)(a1 + 32) )
  {
    std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)(a1 + 24),
      v22,
      &v26,
      (int)v27,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v22 = v26;
    *(_DWORD *)(a1 + 28) += 4;
  }
  return ((*(_DWORD *)(a1 + 120) - *(_DWORD *)(a1 + 116)) >> 4) - 1;
}


// ===== 62f54c glitch::collada::CDynamicAnimationSet::clearTracks(void) =====
void __fastcall glitch::collada::CDynamicAnimationSet::clearTracks(glitch::collada::CDynamicAnimationSet *this)
{
  int v1; // r1
  int v2; // lr
  bool v4; // zf
  char *v5; // r3
  char *v6; // r1
  unsigned int v7; // r2
  unsigned int v8[4]; // [sp+0h] [bp-24h] BYREF
  int v9[3]; // [sp+10h] [bp-14h] BYREF
  char v10[8]; // [sp+1Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 30);
  v2 = *((_DWORD *)this + 29);
  memset(v8, 0, sizeof(v8));
  if ( (v1 - v2) >> 4 )
  {
    v4 = v1 == v2;
    v5 = *((char **)this + 6);
    v6 = *((char **)this + 7);
    if ( !v4 )
      *((_DWORD *)this + 30) = v2;
    *(_DWORD *)v10 = 0;
    v7 = (v6 - v5) >> 2;
    if ( v7 )
      goto LABEL_5;
LABEL_9:
    std::vector<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (int)this + 24,
      v6,
      v7,
      v10);
    goto LABEL_7;
  }
  std::vector<glitch::collada::SChannel,glitch::core::SAllocator<glitch::collada::SChannel,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
    (unsigned int *)this + 29,
    v1,
    0,
    v8);
  v6 = *((char **)this + 7);
  v5 = *((char **)this + 6);
  *(_DWORD *)v10 = 0;
  v7 = (v6 - v5) >> 2;
  if ( !v7 )
    goto LABEL_9;
LABEL_5:
  if ( v6 != v5 )
    *((_DWORD *)this + 7) = v5;
LABEL_7:
  memset(v9, 0, sizeof(v9));
  std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (_DWORD *)this + 12,
    0,
    v9);
  *((_BYTE *)this + 112) = 1;
  *((_DWORD *)this + 15) = 0;
}


// ===== 62f61c glitch::collada::CDynamicAnimationSet::compile(void) =====
int *__fastcall glitch::collada::CDynamicAnimationSet::compile(int *this)
{
  int *v1; // r4
  int v2; // r3
  int v3; // r2
  unsigned int v4; // r7
  glitch::collada::CColladaDatabase *v5; // r6
  int v6; // r5
  int Animation; // r0
  unsigned int v8; // r1
  int v9; // r1
  unsigned int v10; // r7
  int v11; // r0
  int v12; // r12
  glitch::collada::CColladaDatabase *v13; // r6
  unsigned int v14; // r5
  int v15; // r8
  unsigned int v16; // r5
  int v17; // r10
  int v18; // r3
  int v19; // r2
  unsigned int v20; // r1
  glitch::collada::CColladaDatabase *v21; // r9
  int v22; // r5
  unsigned int v23; // r6
  int v24; // r7
  int BlendableAnimation; // r8
  char *DefaultValue; // r0
  int v27; // r3
  char *v28; // r3
  char *v29; // lr
  char *v30; // r12
  int v31; // r8
  int v32; // r1
  int v33; // r2
  int v34; // r3
  char *v35; // r12
  char *v36; // r0
  char *v37; // r1
  unsigned int v38; // [sp+4h] [bp-18h]
  int v39[3]; // [sp+8h] [bp-14h] BYREF
  int v40; // [sp+14h] [bp-8h] BYREF

  v1 = this;
  if ( *((_BYTE *)this + 112) )
  {
    glitch::collada::CDynamicAnimationSet::clearTracks((glitch::collada::CDynamicAnimationSet *)this);
    v2 = v1[9];
    v3 = v1[10];
    if ( !((unsigned int)(v3 - v2) >> 3) )
      goto LABEL_44;
    v4 = 0;
    do
    {
      v5 = (glitch::collada::CColladaDatabase *)(v2 + 8 * v4);
      if ( *(int *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)v5 + 36) + 32) + 36) > 0 )
      {
        v6 = 0;
        do
        {
          Animation = glitch::collada::CColladaDatabase::getAnimation(v5, v6);
          (*(void (__fastcall **)(int *, int))(*v1 + 12))(v1, Animation);
          ++v6;
        }
        while ( v6 < *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)v5 + 36) + 32) + 36) );
        v2 = v1[9];
        v3 = v1[10];
      }
      ++v4;
      v8 = (v3 - v2) >> 3;
    }
    while ( v4 < v8 );
    if ( v8 )
    {
      v9 = v1[29];
      v10 = 0;
      v11 = v1[30] - v9;
      do
      {
        v12 = v11 >> 4;
        v13 = (glitch::collada::CColladaDatabase *)(v2 + 8 * v10);
        if ( v11 >> 4 )
        {
          v14 = 0;
          do
          {
            v15 = 16 * v14;
            if ( !glitch::collada::CColladaDatabase::getBlendableAnimation(v13, v9 + 16 * v14)
              && !glitch::collada::CColladaDatabase::getDefaultValue(v13, v1[29] + v15, &v40)
              && !v1[2] )
            {
              v28 = (char *)v1[30];
              v29 = (char *)(v1[29] + v15);
              v30 = v29 + 16;
              if ( v29 + 16 != v28 )
              {
                v31 = (v28 - v30) >> 4;
                if ( v31 > 0 )
                {
                  while ( 1 )
                  {
                    --v31;
                    v32 = *((_DWORD *)v30 + 1);
                    v33 = *((_DWORD *)v30 + 2);
                    v34 = *((_DWORD *)v30 + 3);
                    *(_DWORD *)v29 = *(_DWORD *)v30;
                    *((_DWORD *)v29 + 1) = v32;
                    *((_DWORD *)v29 + 2) = v33;
                    *((_DWORD *)v29 + 3) = v34;
                    v29 = v30;
                    if ( !v31 )
                      break;
                    v30 += 16;
                  }
                  v28 = (char *)v1[30];
                }
              }
              v35 = (char *)v1[7];
              v36 = (char *)(v1[6] + 4 * v14);
              v37 = v36 + 4;
              v1[30] = (int)(v28 - 16);
              if ( v36 + 4 != v35 )
              {
                memmove(v36, v37, v35 - v37);
                v37 = (char *)v1[7];
              }
              v1[7] = (int)(v37 - 4);
              --v14;
            }
            v9 = v1[29];
            ++v14;
            v11 = v1[30] - v9;
            v12 = v11 >> 4;
          }
          while ( v14 < v11 >> 4 );
          v2 = v1[9];
          v3 = v1[10];
        }
        ++v10;
      }
      while ( v10 < (v3 - v2) >> 3 );
    }
    else
    {
LABEL_44:
      v12 = (v1[30] - v1[29]) >> 4;
    }
    v16 = ((v3 - v2) >> 3) * v12;
    v1[15] = v12;
    std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      v1 + 12,
      v16);
    v17 = 0;
    memset(v39, 0, sizeof(v39));
    std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      v1 + 12,
      v16,
      v39);
    v18 = v1[9];
    v19 = v1[10];
    if ( (unsigned int)(v19 - v18) >> 3 )
    {
      v20 = v1[15];
      v38 = 0;
      do
      {
        v21 = (glitch::collada::CColladaDatabase *)(v18 + 8 * v38);
        if ( v20 )
        {
          v22 = 12 * v17;
          v23 = 0;
          do
          {
            while ( 1 )
            {
              v24 = 16 * v23;
              BlendableAnimation = glitch::collada::CColladaDatabase::getBlendableAnimation(v21, v1[29] + 16 * v23);
              DefaultValue = glitch::collada::CColladaDatabase::getDefaultValue(
                               v21,
                               v1[29] + 16 * v23,
                               (_DWORD *)(v1[12] + v22 + 4));
              v27 = v1[12];
              *(_DWORD *)(v27 + v22) = BlendableAnimation ? 2 : 1;
              ++v23;
              *(_DWORD *)(v1[12] + v22 + 8) = BlendableAnimation;
              if ( !DefaultValue
                && (!v1[26]
                 || !glitch::collada::CColladaDatabase::getDefaultValue(
                       (glitch::collada::CColladaDatabase *)(v1 + 26),
                       v1[29] + v24,
                       (_DWORD *)(v1[12] + v22 + 4))) )
              {
                break;
              }
              v20 = v1[15];
              ++v17;
              v22 += 12;
              if ( v20 <= v23 )
                goto LABEL_30;
            }
            ++v17;
            *(_DWORD *)(v1[12] + v22 + 4) = 0;
            v20 = v1[15];
            v22 += 12;
          }
          while ( v20 > v23 );
LABEL_30:
          v18 = v1[9];
          v19 = v1[10];
        }
        ++v38;
      }
      while ( v38 < (v19 - v18) >> 3 );
    }
    this = (int *)glitch::collada::CAnimationSet::CompileInternal((glitch::collada::CAnimationSet *)v1);
    *((_BYTE *)v1 + 112) = 0;
  }
  return this;
}


// ===== 62f994 std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::CColladaDatabase*,std::__false_type const&) =====
int __fastcall std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v3; // r0
  int v5; // r6
  int v6; // r5
  glitch::IReferenceCounted *v7; // r3
  int v8; // r2
  int v9; // r3
  glitch::IReferenceCounted **v10; // r0
  glitch::IReferenceCounted *v12; // [sp+0h] [bp-8h] BYREF
  int v13; // [sp+4h] [bp-4h]

  v3 = *(_DWORD *)(a1 + 4);
  if ( a2 + 8 != v3 )
  {
    v5 = (v3 - (a2 + 8)) >> 3;
    if ( v5 > 0 )
    {
      v6 = a2 + 16;
      do
      {
        v7 = *(glitch::IReferenceCounted **)(v6 - 8);
        v12 = v7;
        v13 = *(_DWORD *)(v6 - 4);
        if ( v7 )
        {
          v8 = *((_DWORD *)v7 + 1);
          if ( v8 )
          {
            *((_DWORD *)v7 + 1) = v8 + 1;
            v7 = v12;
          }
        }
        v12 = *(glitch::IReferenceCounted **)(v6 - 16);
        *(_DWORD *)(v6 - 16) = v7;
        v9 = v13;
        v13 = *(_DWORD *)(v6 - 12);
        *(_DWORD *)(v6 - 12) = v9;
        glitch::collada::CColladaDatabase::~CColladaDatabase(&v12);
        --v5;
        v6 += 8;
      }
      while ( v5 );
      v3 = *(_DWORD *)(a1 + 4);
    }
  }
  v10 = (glitch::IReferenceCounted **)(v3 - 8);
  *(_DWORD *)(a1 + 4) = v10;
  glitch::collada::CColladaDatabase::~CColladaDatabase(v10);
  return a2;
}


// ===== 62fa44 glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(uint) =====
_DWORD *__fastcall glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(_DWORD *this, unsigned int a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r2
  int v5; // r4
  int v6; // r5
  int v7; // r7
  int v8; // lr
  int v9; // r3
  _DWORD *v10; // r2
  int v11; // r12

  v2 = *(this + 9);
  if ( a2 < (*(this + 10) - v2) >> 3 )
  {
    v3 = *(this + 15);
    v4 = *(this + 12);
    v5 = v4 + 12 * v3 * a2;
    v6 = v4 + 12 * v3 + a2 * 12 * v3;
    if ( v5 != v6 )
    {
      v7 = -1431655765 * ((*(this + 13) - v6) >> 2);
      if ( v7 > 0 )
      {
        v8 = -1431655765 * ((*(this + 13) - v6) >> 2);
        v9 = 0;
        do
        {
          *(_DWORD *)(v5 + v9) = *(_DWORD *)(v6 + v9);
          *(_DWORD *)(v5 + v9 + 4) = *(_DWORD *)(v6 + v9 + 4);
          v10 = (_DWORD *)(v5 + v9 + 8);
          v11 = *(_DWORD *)(v6 + v9 + 8);
          --v8;
          v9 += 12;
          *v10 = v11;
        }
        while ( v8 );
        v5 += 12 * v7;
        v2 = *(this + 9);
      }
      *(this + 13) = v5;
    }
    return (_DWORD *)std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                       (int)(this + 9),
                       v2 + 8 * a2);
  }
  return this;
}


// ===== 62fb10 glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(glitch::collada::CColladaDatabase &) =====
_DWORD *__fastcall glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(
        glitch::collada::CDynamicAnimationSet *this,
        glitch::collada::CColladaDatabase *a2)
{
  unsigned int DatabaseIndex; // r1

  DatabaseIndex = glitch::collada::CDynamicAnimationSet::getDatabaseIndex(this, a2);
  return glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(this, DatabaseIndex);
}


// ===== 62fb2c glitch::collada::CDynamicAnimationSet::remAnimationLibrary(uint) =====
int __fastcall glitch::collada::CDynamicAnimationSet::remAnimationLibrary(int this, unsigned int a2)
{
  int v2; // r3
  int v3; // r4

  v2 = *(_DWORD *)(this + 36);
  v3 = this;
  if ( a2 < (*(_DWORD *)(this + 40) - v2) >> 3 )
  {
    this = std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             this + 36,
             v2 + 8 * a2);
    *(_BYTE *)(v3 + 112) = 1;
  }
  return this;
}


// ===== 62fb6c glitch::collada::CDynamicAnimationSet::remAnimationLibrary(glitch::collada::CColladaDatabase &) =====
int __fastcall glitch::collada::CDynamicAnimationSet::remAnimationLibrary(
        glitch::collada::CDynamicAnimationSet *this,
        glitch::collada::CColladaDatabase *a2)
{
  unsigned int DatabaseIndex; // r1

  DatabaseIndex = glitch::collada::CDynamicAnimationSet::getDatabaseIndex(this, a2);
  return glitch::collada::CDynamicAnimationSet::remAnimationLibrary((int)this, DatabaseIndex);
}


// ===== 62fb88 std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::CColladaDatabase*,glitch::collada::CColladaDatabase*,std::__false_type const&) =====
glitch::collada::CColladaDatabase *__fastcall std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::collada::CColladaDatabase *this,
        int a3)
{
  glitch::collada::CColladaDatabase *v3; // r4
  int v5; // r9
  glitch::collada::CColladaDatabase *v8; // r7
  int v9; // r7
  int v10; // r4
  glitch::IReferenceCounted *v11; // r3
  int v12; // r1
  glitch::IReferenceCounted *v13; // r1
  int v14; // r12
  int v15; // r3
  glitch::IReferenceCounted **v16; // r6
  glitch::IReferenceCounted **v17; // r0
  glitch::IReferenceCounted *v19; // [sp+0h] [bp-8h] BYREF
  int v20; // [sp+4h] [bp-4h]

  v3 = *(glitch::collada::CColladaDatabase **)(a1 + 4);
  v5 = ((int)v3 - a3) >> 3;
  if ( v5 > 0 )
  {
    v9 = ((int)v3 - a3) >> 3;
    v10 = 0;
    do
    {
      v11 = *(glitch::IReferenceCounted **)(a3 + v10);
      v19 = v11;
      v20 = *(_DWORD *)(a3 + v10 + 4);
      if ( v11 )
      {
        v12 = *((_DWORD *)v11 + 1);
        if ( v12 )
        {
          *((_DWORD *)v11 + 1) = v12 + 1;
          v11 = v19;
        }
      }
      v13 = *(glitch::IReferenceCounted **)((char *)this + v10);
      v14 = v20;
      *(_DWORD *)((char *)this + v10) = v11;
      v15 = *(_DWORD *)((char *)this + v10 + 4);
      *(_DWORD *)((char *)this + v10 + 4) = v14;
      v19 = v13;
      v20 = v15;
      glitch::collada::CColladaDatabase::~CColladaDatabase(&v19);
      --v9;
      v10 += 8;
    }
    while ( v9 );
    v3 = *(glitch::collada::CColladaDatabase **)(a1 + 4);
    v8 = (glitch::collada::CColladaDatabase *)((char *)this + 8 * v5);
  }
  else
  {
    v8 = this;
  }
  if ( v3 != v8 )
  {
    v16 = (glitch::IReferenceCounted **)v8;
    do
    {
      v17 = v16;
      v16 += 2;
      glitch::collada::CColladaDatabase::~CColladaDatabase(v17);
    }
    while ( v3 != (glitch::collada::CColladaDatabase *)v16 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return this;
}


// ===== 62fc58 glitch::collada::CDynamicAnimationSet::clearSet(void) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CDynamicAnimationSet::clearSet(
        glitch::collada::CColladaDatabase *this)
{
  glitch::collada::CColladaDatabase *v1; // r1
  int v2; // r2
  glitch::collada::CColladaDatabase *v3; // r4

  v1 = *((glitch::collada::CColladaDatabase **)this + 9);
  v2 = *((_DWORD *)this + 10);
  v3 = this;
  if ( v1 != (glitch::collada::CColladaDatabase *)v2 )
    this = std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
             (int)this + 36,
             v1,
             v2);
  *((_BYTE *)v3 + 112) = 1;
  return this;
}


// ===== 62fc90 glitch::collada::CDynamicAnimationSet::setDefaultAnimationLibrary(glitch::collada::CColladaDatabase const&) =====
void __fastcall glitch::collada::CDynamicAnimationSet::setDefaultAnimationLibrary(
        glitch::collada::CDynamicAnimationSet *this,
        glitch::IReferenceCounted **a2)
{
  glitch::IReferenceCounted *v2; // r3
  bool v3; // zf
  int v5; // r2
  glitch::IReferenceCounted *v6; // r0
  glitch::IReferenceCounted *v7; // r1
  glitch::IReferenceCounted *v8; // r2
  glitch::IReferenceCounted *v9; // [sp+0h] [bp-8h] BYREF
  glitch::IReferenceCounted *v10; // [sp+4h] [bp-4h]

  v2 = *a2;
  v3 = *a2 == nullptr;
  v10 = a2[1];
  v9 = v2;
  if ( !v3 )
  {
    v5 = *((_DWORD *)v2 + 1);
    if ( v5 )
    {
      *((_DWORD *)v2 + 1) = v5 + 1;
      v2 = v9;
    }
  }
  v6 = v10;
  v7 = *((glitch::IReferenceCounted **)this + 26);
  v8 = *((glitch::IReferenceCounted **)this + 27);
  *((_DWORD *)this + 26) = v2;
  *((_DWORD *)this + 27) = v6;
  v9 = v7;
  v10 = v8;
  glitch::collada::CColladaDatabase::~CColladaDatabase(&v9);
  *((_BYTE *)this + 112) = 1;
}


// ===== 62fcf8 glitch::collada::CDynamicAnimationSet::setDefaultAnimationLibrary(uint) =====
void __fastcall glitch::collada::CDynamicAnimationSet::setDefaultAnimationLibrary(
        glitch::collada::CDynamicAnimationSet *this,
        unsigned int a2)
{
  int v3; // r3
  glitch::IReferenceCounted *v5; // r12
  glitch::IReferenceCounted *v6; // r1
  glitch::IReferenceCounted *v7; // r1
  int v8; // r3
  int v9; // r3
  glitch::IReferenceCounted *v10; // r2
  glitch::IReferenceCounted *v11; // [sp+0h] [bp-1Ch] BYREF
  int v12; // [sp+4h] [bp-18h]
  glitch::IReferenceCounted *v13[2]; // [sp+8h] [bp-14h] BYREF
  glitch::IReferenceCounted *v14[3]; // [sp+10h] [bp-Ch] BYREF

  v3 = *((_DWORD *)this + 9);
  if ( a2 >= (*((_DWORD *)this + 10) - v3) >> 3 )
  {
    v5 = *((glitch::IReferenceCounted **)this + 26);
    v6 = *((glitch::IReferenceCounted **)this + 27);
    *((_DWORD *)this + 26) = 0;
    *((_DWORD *)this + 27) = &glitch::collada::CColladaDatabase::DefaultFactory;
    v14[1] = (glitch::IReferenceCounted *)&glitch::collada::CColladaDatabase::DefaultFactory;
    v13[0] = v5;
    v13[1] = v6;
    v14[0] = nullptr;
    glitch::collada::CColladaDatabase::~CColladaDatabase(v13);
    glitch::collada::CColladaDatabase::~CColladaDatabase(v14);
    v3 = *((_DWORD *)this + 9);
  }
  v7 = *(glitch::IReferenceCounted **)(v3 + 8 * a2);
  v11 = v7;
  v12 = *(_DWORD *)(v3 + 8 * a2 + 4);
  if ( v7 )
  {
    v8 = *((_DWORD *)v7 + 1);
    if ( v8 )
    {
      *((_DWORD *)v7 + 1) = v8 + 1;
      v7 = v11;
    }
  }
  v9 = *((_DWORD *)this + 27);
  v10 = *((glitch::IReferenceCounted **)this + 26);
  *((_DWORD *)this + 27) = v12;
  *((_DWORD *)this + 26) = v7;
  v11 = v10;
  v12 = v9;
  glitch::collada::CColladaDatabase::~CColladaDatabase(&v11);
  *((_BYTE *)this + 112) = 1;
}


// ===== 62fdcc `global constructor keyed to'.._source_glitch_collada_CColladaEventsManager.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaEventsManager.cpp()
{
  dword_9F6F24 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6F20 = 1056964608;
}


// ===== 62fdec glitch::collada::FxEchoNotHandledEvents(glitch::collada::STriggeredEvent const&,void *) =====
int __fastcall glitch::collada::FxEchoNotHandledEvents(int a1)
{
  glitch::os::Printer::log("Warning - Event not handled : See collada::CSceneNodeAnimator::setEventsCallback", 1);
  return glitch::os::Printer::log(*(_DWORD *)(a1 + 4), 1);
}


// ===== 62fe18 glitch::video::SVertexStream::unmapBuffer(void) =====
_DWORD *__fastcall glitch::video::SVertexStream::unmapBuffer(_DWORD *this)
{
  _BYTE *v1; // r4
  char v2; // r3

  v1 = (_BYTE *)*this;
  v2 = *(_BYTE *)(*this + 19);
  if ( (v2 & 0x1Fu) <= 1 )
  {
    if ( (v1[18] & 0x20) != 0 )
      this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 24))(*this);
    v1[19] = 0;
  }
  else
  {
    v1[19] = ((v2 & 0x1F) - 1) | v2 & 0xE0;
  }
  return this;
}


// ===== 62fe78 glitch::ps::PSRandom::Rand(void) =====
double __fastcall glitch::ps::PSRandom::Rand(glitch::ps::PSRandom *this)
{
  int v2; // r0

  v2 = 48271 * (*(_DWORD *)this % 44488) + 3399 * (*(_DWORD *)this / -44488);
  *(_DWORD *)this = v2;
  if ( v2 < 0 )
  {
    v2 += 0x7FFFFFFF;
    *(_DWORD *)this = v2;
  }
  return (double)v2 / 2147483650.0;
}


// ===== 62fee4 glitch::collada::particle_system::CForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode *) =====
void glitch::collada::particle_system::CForceSceneNode::bind()
{
  ;
}


// ===== 62fee8 glitch::collada::particle_system::CForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode *) =====
void glitch::collada::particle_system::CForceSceneNode::bind()
{
  ;
}


// ===== 62feec glitch::collada::particle_system::CForceSceneNode::getType(void) =====
int __fastcall glitch::collada::particle_system::CForceSceneNode::getType(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  return 1717920100;
}


// ===== 62fef8 glitch::collada::particle_system::CForceSceneNode::render(void *) =====
void __fastcall glitch::collada::particle_system::CForceSceneNode::render(
        glitch::collada::particle_system::CForceSceneNode *this,
        void *a2)
{
  ;
}


// ===== 62fefc glitch::collada::CColladaFactory::~CColladaFactory() =====
void __fastcall glitch::collada::CColladaFactory::~CColladaFactory(glitch::collada::CColladaFactory *this)
{
  ;
}


// ===== 62ff00 glitch::collada::CColladaFactory::~CColladaFactory() =====
void __fastcall glitch::collada::CColladaFactory::~CColladaFactory(glitch::collada::CColladaFactory *this)
{
  ;
}


// ===== 62ff04 glitch::collada::CColladaFactory::getAdditionalEffects(glitch::collada::CColladaDatabase const&,glitch::collada::SEffect *,glitch::collada::SEffectList &) =====
void glitch::collada::CColladaFactory::getAdditionalEffects()
{
  ;
}


// ===== 62ff08 glitch::collada::CColladaFactory::getVertexBufferConfig(glitch::collada::CColladaDatabase const&,glitch::collada::SGeometry *) =====
int __fastcall glitch::collada::CColladaFactory::getVertexBufferConfig(int result)
{
  *(_BYTE *)(result + 5) = 0;
  *(_DWORD *)result = 4;
  *(_BYTE *)(result + 4) = 0;
  return result;
}


// ===== 62ff20 glitch::collada::CColladaFactory::getIndexBufferConfig(glitch::collada::CColladaDatabase const&,glitch::collada::SGeometry *) =====
int __fastcall glitch::collada::CColladaFactory::getIndexBufferConfig(int result)
{
  *(_BYTE *)(result + 5) = 0;
  *(_DWORD *)result = 4;
  *(_BYTE *)(result + 4) = 0;
  return result;
}


// ===== 62ff38 glitch::collada::CColladaFactory::isSharingMeshBuffers(glitch::collada::CColladaDatabase const&,glitch::collada::SGeometry *) =====
int glitch::collada::CColladaFactory::isSharingMeshBuffers()
{
  return 1;
}


// ===== 62ff40 glitch::ps::PForce<glitch::ps::SParticle>::~PForce() =====
void glitch::ps::PForce<glitch::ps::SParticle>::~PForce()
{
  ;
}


// ===== 62ff44 glitch::ps::PForce<glitch::ps::GNPSParticle>::~PForce() =====
void glitch::ps::PForce<glitch::ps::GNPSParticle>::~PForce()
{
  ;
}


// ===== 62ff48 glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PWind>::~PForceProxy() =====
void glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PWind>::~PForceProxy()
{
  ;
}


// ===== 62ff4c glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PWind>::~PForceProxy() =====
void glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PWind>::~PForceProxy()
{
  ;
}


// ===== 62ff50 glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PGravity>::~PForceProxy() =====
void glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PGravity>::~PForceProxy()
{
  ;
}


// ===== 62ff54 glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PGravity>::~PForceProxy() =====
void glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PGravity>::~PForceProxy()
{
  ;
}


// ===== 62ff58 glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PDeflector>::~PForceProxy() =====
void glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PDeflector>::~PForceProxy()
{
  ;
}


// ===== 62ff5c glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PDeflector>::~PForceProxy() =====
void glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PDeflector>::~PForceProxy()
{
  ;
}


// ===== 62ff60 `global constructor keyed to'.._source_glitch_collada_CColladaFactory.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaFactory.cpp()
{
  dword_9F6F30 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6F2C = 1056964608;
}


// ===== 62ff80 glitch::collada::`anonymous namespace'::getExternalLightSceneNodeDefault(char const*) =====
int __fastcall glitch::collada::`anonymous namespace'::getExternalLightSceneNodeDefault(
        glitch::collada::_anonymous_namespace_ *this,
        const char *a2)
{
  char *v3; // r0
  glitch::collada::_anonymous_namespace_ *v4; // r1
  int v5; // r0
  int v6; // r4

  v3 = strchr((const char *)this, 35);
  if ( v3 )
    v4 = (glitch::collada::_anonymous_namespace_ *)(v3 + 1);
  else
    v4 = this;
  v5 = (*(int (__fastcall **)(_DWORD, glitch::collada::_anonymous_namespace_ *, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 28)
                                                                                       + 20))(
         *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 28),
         v4,
         0);
  v6 = v5;
  if ( v5 && (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 188))(v5) == 1952999276 )
    return v6;
  else
    return 0;
}


// ===== 630008 glitch::collada::CColladaFactory::getExternalLightSceneNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::video::CMaterialRenderer const> const&,ushort,uint,char const*) =====
int __fastcall glitch::collada::CColladaFactory::getExternalLightSceneNode(
        int a1,
        const char *a2,
        int a3,
        int a4,
        int a5,
        glitch::collada::_anonymous_namespace_ *a6)
{
  return glitch::collada::`anonymous namespace'::getExternalLightSceneNodeDefault(a6, a2);
}


// ===== 630010 glitch::collada::CColladaFactory::getExternalLightSceneNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::video::CMaterial const> const&,ushort,uint,char const*) =====
int __fastcall glitch::collada::CColladaFactory::getExternalLightSceneNode(
        int a1,
        const char *a2,
        int a3,
        int a4,
        int a5,
        glitch::collada::_anonymous_namespace_ *a6)
{
  return glitch::collada::`anonymous namespace'::getExternalLightSceneNodeDefault(a6, a2);
}


// ===== 630018 glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PWind>(glitch::ps::PWind::parameters_type &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PWind>(_DWORD *a1, int a2)
{
  int v3; // r7
  int v4; // r2
  char *v5; // r7
  int (__fastcall *v6)(char *, _DWORD *); // r6
  _DWORD *v7; // r0

  v3 = *(_DWORD *)(*a1 - 12);
  v4 = *(_DWORD *)((char *)a1 + v3);
  v5 = (char *)a1 + v3;
  v6 = *(int (__fastcall **)(char *, _DWORD *))(v4 + 88);
  v7 = operator new(0x10u, 0);
  v7[2] = 0;
  v7[3] = a2;
  *v7 = off_97B378;
  v7[1] = a2;
  return v6(v5, v7);
}


// ===== 630080 glitch::collada::particle_system::CWindForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode *) =====
int __fastcall glitch::collada::particle_system::CWindForceSceneNode::bind(int a1, int a2)
{
  return glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PWind>(
           *(_DWORD **)(a2 + 376),
           a1 + 320);
}


// ===== 630090 glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PWind>(glitch::ps::PWind::parameters_type &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PWind>(_DWORD *a1, int a2)
{
  int v3; // r7
  int v4; // r2
  char *v5; // r7
  int (__fastcall *v6)(char *, _DWORD *); // r6
  _DWORD *v7; // r0

  v3 = *(_DWORD *)(*a1 - 12);
  v4 = *(_DWORD *)((char *)a1 + v3);
  v5 = (char *)a1 + v3;
  v6 = *(int (__fastcall **)(char *, _DWORD *))(v4 + 88);
  v7 = operator new(0x10u, 0);
  v7[2] = 0;
  v7[3] = a2;
  *v7 = off_97B390;
  v7[1] = a2;
  return v6(v5, v7);
}


// ===== 6300f8 glitch::collada::particle_system::CWindForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode *) =====
int __fastcall glitch::collada::particle_system::CWindForceSceneNode::bind(int a1, int a2)
{
  return glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PWind>(
           *(_DWORD **)(a2 + 376),
           a1 + 320);
}


// ===== 630108 glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PGravity>(glitch::ps::PGravity::parameters_type &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PGravity>(
        _DWORD *a1,
        int a2)
{
  int v3; // r7
  int v4; // r2
  char *v5; // r7
  int (__fastcall *v6)(char *, _DWORD *); // r6
  _DWORD *v7; // r0

  v3 = *(_DWORD *)(*a1 - 12);
  v4 = *(_DWORD *)((char *)a1 + v3);
  v5 = (char *)a1 + v3;
  v6 = *(int (__fastcall **)(char *, _DWORD *))(v4 + 88);
  v7 = operator new(0x10u, 0);
  v7[2] = 0;
  v7[3] = a2;
  *v7 = off_97B7B0;
  v7[1] = a2;
  return v6(v5, v7);
}


// ===== 630170 glitch::collada::particle_system::CGravityForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode *) =====
int __fastcall glitch::collada::particle_system::CGravityForceSceneNode::bind(int a1, int a2)
{
  return glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PGravity>(
           *(_DWORD **)(a2 + 376),
           a1 + 320);
}


// ===== 630180 glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PGravity>(glitch::ps::PGravity::parameters_type &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PGravity>(_DWORD *a1, int a2)
{
  int v3; // r7
  int v4; // r2
  char *v5; // r7
  int (__fastcall *v6)(char *, _DWORD *); // r6
  _DWORD *v7; // r0

  v3 = *(_DWORD *)(*a1 - 12);
  v4 = *(_DWORD *)((char *)a1 + v3);
  v5 = (char *)a1 + v3;
  v6 = *(int (__fastcall **)(char *, _DWORD *))(v4 + 88);
  v7 = operator new(0x10u, 0);
  v7[2] = 0;
  v7[3] = a2;
  *v7 = off_97B7C8;
  v7[1] = a2;
  return v6(v5, v7);
}


// ===== 6301e8 glitch::collada::particle_system::CGravityForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode *) =====
int __fastcall glitch::collada::particle_system::CGravityForceSceneNode::bind(int a1, int a2)
{
  return glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PGravity>(
           *(_DWORD **)(a2 + 376),
           a1 + 320);
}


// ===== 6301f8 glitch::collada::particle_system::CDeflectorForceSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::particle_system::CDeflectorForceSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  glitch::scene::ISceneNode::serializeAttributes((int)a1, a2, a3);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "bounce", a1[81], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "variation", a1[82], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "chaos", a1[83], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "friction", a1[84], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "inheritVelocity", a1[85], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "width", a1[86], 0);
  return (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "length", a1[87], 0);
}


// ===== 630308 `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  return glitch::collada::particle_system::CDeflectorForceSceneNode::serializeAttributes(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)),
           a2,
           a3);
}


// ===== 630318 glitch::collada::particle_system::CWindForceSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::particle_system::CWindForceSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  glitch::scene::ISceneNode::serializeAttributes((int)a1, a2, a3);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "strength", a1[81], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "decay", a1[82], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "turbulence", a1[83], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "frequency", a1[84], 0);
  return (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "scale", a1[85], 0);
}


// ===== 6303e0 `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  return glitch::collada::particle_system::CWindForceSceneNode::serializeAttributes(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)),
           a2,
           a3);
}


// ===== 6303f0 glitch::collada::particle_system::CGravityForceSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::particle_system::CGravityForceSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  glitch::scene::ISceneNode::serializeAttributes((int)a1, a2, a3);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "decay", a1[82], 0);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "strength", a1[81], 0);
  return (*(int (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 76))(a2, "type", a1[83], 0);
}


// ===== 630470 `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  return glitch::collada::particle_system::CGravityForceSceneNode::serializeAttributes(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)),
           a2,
           a3);
}


// ===== 630480 glitch::collada::particle_system::CDeflectorForceSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::particle_system::CDeflectorForceSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  int result; // r0

  glitch::scene::ISceneNode::deserializeAttributes((int)a1, a2, a3);
  a1[81] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "bounce");
  a1[82] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "variation");
  a1[83] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "chaos");
  a1[84] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "friction");
  a1[85] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "inheritVelocity");
  a1[86] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "width");
  result = (*(int (__fastcall **)(int *, char *))(*a2 + 112))(a2, "length");
  a1[87] = result;
  return result;
}


// ===== 630574 `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  return glitch::collada::particle_system::CDeflectorForceSceneNode::deserializeAttributes(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 20)),
           a2,
           a3);
}


// ===== 630584 glitch::collada::particle_system::CWindForceSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::particle_system::CWindForceSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  int result; // r0

  glitch::scene::ISceneNode::deserializeAttributes((int)a1, a2, a3);
  a1[81] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "strength");
  a1[82] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "decay");
  a1[83] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "turbulence");
  a1[84] = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "frequency");
  result = (*(int (__fastcall **)(int *, char *))(*a2 + 112))(a2, "scale");
  a1[85] = result;
  return result;
}


// ===== 630638 `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  return glitch::collada::particle_system::CWindForceSceneNode::deserializeAttributes(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 20)),
           a2,
           a3);
}


// ===== 630648 glitch::collada::particle_system::CGravityForceSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::particle_system::CGravityForceSceneNode::deserializeAttributes(
        int a1,
        int *a2,
        _DWORD *a3)
{
  int result; // r0

  glitch::scene::ISceneNode::deserializeAttributes(a1, a2, a3);
  *(_DWORD *)(a1 + 328) = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "decay");
  result = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "strength");
  *(_DWORD *)(a1 + 324) = result;
  return result;
}


// ===== 63069c `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  return glitch::collada::particle_system::CGravityForceSceneNode::deserializeAttributes(
           (int)a1 + *(_DWORD *)(*a1 - 20),
           a2,
           a3);
}


// ===== 6306ac glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PDeflector>::~PForceProxy() =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PDeflector>::~PForceProxy(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 6306c0 glitch::ps::PForce<glitch::ps::GNPSParticle>::~PForce() =====
void *__fastcall glitch::ps::PForce<glitch::ps::GNPSParticle>::~PForce(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 6306d4 glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PDeflector>::~PForceProxy() =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PDeflector>::~PForceProxy(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 6306e8 glitch::ps::PForce<glitch::ps::SParticle>::~PForce() =====
void *__fastcall glitch::ps::PForce<glitch::ps::SParticle>::~PForce(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 6306fc glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PWind>::~PForceProxy() =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PWind>::~PForceProxy(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 630710 glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PWind>::~PForceProxy() =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PWind>::~PForceProxy(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 630724 glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PGravity>::~PForceProxy() =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PGravity>::~PForceProxy(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 630738 glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PGravity>::~PForceProxy() =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PGravity>::~PForceProxy(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63074c glitch::collada::CColladaFactory::~CColladaFactory() =====
void __fastcall glitch::collada::CColladaFactory::~CColladaFactory(glitch::collada::CColladaFactory *this)
{
  glitch::collada::CColladaFactory::~CColladaFactory(this);
  LC_API_FREE_0(this);
}


// ===== 630768 glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  *(_DWORD *)this = off_97AC64;
  *((_DWORD *)this + 80) = off_97AD70;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 77);
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_97AD84);
}


// ===== 6307c0 `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::collada::particle_system::CForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6307d0 `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::collada::particle_system::CForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6307e0 glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6307fc `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::collada::particle_system::CForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 63080c `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::collada::particle_system::CForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 63081c glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode(
        glitch::IReferenceCounted **this,
        _DWORD *a2)
{
  glitch::IReferenceCounted *v2; // r3

  v2 = (glitch::IReferenceCounted *)*a2;
  *this = (glitch::IReferenceCounted *)*a2;
  *(glitch::IReferenceCounted **)((char *)this + *((_DWORD *)v2 - 7)) = (glitch::IReferenceCounted *)a2[4];
  *(glitch::IReferenceCounted **)((char *)this + *((_DWORD *)*this - 3)) = (glitch::IReferenceCounted *)a2[5];
  glitch::collada::CColladaDatabase::~CColladaDatabase(this + 77);
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ISceneNode *)this, a2 + 1);
}


// ===== 630868 glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode(
        glitch::collada::particle_system::CDeflectorForceSceneNode *this)
{
  *(_DWORD *)this = off_97A88C;
  *((_DWORD *)this + 88) = off_97A998;
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::IReferenceCounted **)this, off_97A844);
}


// ===== 6308b4 `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode(
        glitch::collada::particle_system::CDeflectorForceSceneNode *this)
{
  glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode((glitch::collada::particle_system::CDeflectorForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6308c4 `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode(
        glitch::collada::particle_system::CDeflectorForceSceneNode *this)
{
  glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode((glitch::collada::particle_system::CDeflectorForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6308d4 glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode(
        glitch::collada::particle_system::CWindForceSceneNode *this)
{
  *(_DWORD *)this = off_97AFB4;
  *((_DWORD *)this + 87) = off_97B0C0;
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::IReferenceCounted **)this, off_97AF6C);
}


// ===== 630920 `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode(
        glitch::collada::particle_system::CWindForceSceneNode *this)
{
  glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode((glitch::collada::particle_system::CWindForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 630930 `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode(
        glitch::collada::particle_system::CWindForceSceneNode *this)
{
  glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode((glitch::collada::particle_system::CWindForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 630940 glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode(
        glitch::collada::particle_system::CGravityForceSceneNode *this)
{
  *(_DWORD *)this = off_97B3EC;
  *((_DWORD *)this + 84) = off_97B4F8;
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::IReferenceCounted **)this, off_97B3A4);
}


// ===== 63098c `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode(
        glitch::collada::particle_system::CGravityForceSceneNode *this)
{
  glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode((glitch::collada::particle_system::CGravityForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 63099c `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode(
        glitch::collada::particle_system::CGravityForceSceneNode *this)
{
  glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode((glitch::collada::particle_system::CGravityForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6309ac glitch::ps::IParticleContext<glitch::ps::SParticle>::lockAxis(uint,glitch::core::vector3d<float>) =====
float __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::lockAxis(int a1, int a2, int *a3)
{
  int v4; // r3
  int v5; // r1
  float *v7; // r6
  float v8; // r7
  float *v9; // r4
  float result; // r0
  _DWORD v11[3]; // [sp+4h] [bp-Ch] BYREF

  *(_BYTE *)(a1 + a2 + 4) = 1;
  v4 = a3[2];
  v5 = *a3;
  v11[1] = a3[1];
  v11[2] = v4;
  v11[0] = v5;
  v7 = (float *)glitch::core::vector3d<float>::normalize(v11);
  v8 = v7[1] * 0.5;
  v9 = (float *)(a1 + 12 * a2);
  result = *v7 * 0.5;
  v9[4] = v7[2] * 0.5;
  v9[2] = result;
  v9[3] = v8;
  return result;
}


// ===== 630a34 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::lockAxis(uint,glitch::core::vector3d<float>) =====
float __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::lockAxis(int a1, int a2, int *a3)
{
  int v4; // r3
  int v5; // r1
  float *v7; // r6
  float v8; // r7
  float *v9; // r4
  float result; // r0
  _DWORD v11[3]; // [sp+4h] [bp-Ch] BYREF

  *(_BYTE *)(a1 + a2 + 4) = 1;
  v4 = a3[2];
  v5 = *a3;
  v11[1] = a3[1];
  v11[2] = v4;
  v11[0] = v5;
  v7 = (float *)glitch::core::vector3d<float>::normalize(v11);
  v8 = v7[1] * 0.5;
  v9 = (float *)(a1 + 12 * a2);
  result = *v7 * 0.5;
  v9[4] = v7[2] * 0.5;
  v9[2] = result;
  v9[3] = v8;
  return result;
}


// ===== 630abc glitch::ps::PDeflector::GetFrictionCoefficient(float,float,float,float) =====
float __fastcall glitch::ps::PDeflector::GetFrictionCoefficient(
        glitch::ps::PDeflector *this,
        float a2,
        float a3,
        float a4,
        float a5)
{
  float v5; // r5
  float v6; // r4
  float v7; // r0
  float v9; // r0

  if ( a2 == 0.0 )
    return 1.0;
  if ( a2 == 1.0 )
    return 0.0;
  if ( (float)(a4 * 0.07) <= a3 )
    return 1.0 - a2;
  if ( (float)(a4 * 0.035) > a3 )
  {
    v9 = a5 * logf(1.0 - a2);
    return expf(v9);
  }
  else
  {
    v5 = (float)((float)(a3 / a4) / 0.035) - 1.0;
    v6 = 1.0 - a2;
    v7 = a5 * logf(1.0 - a2);
    return (float)(v6 * v5) + (float)((float)(1.0 - v5) * expf(v7));
  }
}


// ===== 630bfc glitch::core::vector3d<float>::rotateXYBy(double,glitch::core::vector3d<float> const&) =====
float __fastcall glitch::core::vector3d<float>::rotateXYBy(float *a1, double a2, float *a3)
{
  double v5; // r6
  float v6; // r0
  float v7; // r10
  float v8; // r0
  float v9; // r9
  float v10; // r0
  float v11; // r0
  float v12; // r8
  float v13; // r0
  float result; // r0

  v5 = a2 * 0.0174532925;
  v6 = cos(a2 * 0.0174532925);
  v7 = v6;
  v8 = sin(v5);
  v9 = v8;
  v10 = *a1 - *a3;
  *a1 = v10;
  *((float *)&v5 + 1) = v10;
  v11 = a1[1] - a3[1];
  a1[1] = v11;
  v12 = (float)(v7 * *((float *)&v5 + 1)) - (float)(v9 * v11);
  v13 = (float)(v9 * *((float *)&v5 + 1)) + (float)(v7 * v11);
  *a1 = v12;
  a1[1] = v13;
  *a1 = v12 + *a3;
  result = v13 + a3[1];
  a1[1] = result;
  return result;
}


// ===== 630cf8 glitch::core::vector3d<float>::rotateYZBy(double,glitch::core::vector3d<float> const&) =====
float __fastcall glitch::core::vector3d<float>::rotateYZBy(int a1, double a2, int a3)
{
  double v5; // r6
  float v6; // r0
  float v7; // r8
  float v8; // r0
  float v9; // r9
  float v10; // r0
  float v11; // r10
  float v12; // r0
  float result; // r0

  v5 = a2 * 0.0174532925;
  v6 = cos(a2 * 0.0174532925);
  v7 = v6;
  v8 = sin(v5);
  v9 = v8;
  v10 = *(float *)(a1 + 8) - *(float *)(a3 + 8);
  *(float *)(a1 + 8) = v10;
  v11 = *(float *)(a1 + 4) - *(float *)(a3 + 4);
  *((float *)&v5 + 1) = (float)(v7 * v11) - (float)(v9 * v10);
  v12 = (float)(v9 * v11) + (float)(v7 * v10);
  *(_DWORD *)(a1 + 4) = HIDWORD(v5);
  *(float *)(a1 + 8) = v12;
  *(float *)(a1 + 8) = v12 + *(float *)(a3 + 8);
  result = *((float *)&v5 + 1) + *(float *)(a3 + 4);
  *(float *)(a1 + 4) = result;
  return result;
}


// ===== 630de8 glitch::core::vector3d<float>::rotateXZBy(double,glitch::core::vector3d<float> const&) =====
float __fastcall glitch::core::vector3d<float>::rotateXZBy(float *a1, double a2, float *a3)
{
  double v5; // r6
  float v6; // r0
  float v7; // r10
  float v8; // r0
  float v9; // r9
  float v10; // r0
  float v11; // r0
  float v12; // r8
  float v13; // r0
  float result; // r0

  v5 = a2 * 0.0174532925;
  v6 = cos(a2 * 0.0174532925);
  v7 = v6;
  v8 = sin(v5);
  v9 = v8;
  v10 = *a1 - *a3;
  *a1 = v10;
  *((float *)&v5 + 1) = v10;
  v11 = a1[2] - a3[2];
  a1[2] = v11;
  v12 = (float)(v7 * *((float *)&v5 + 1)) - (float)(v9 * v11);
  v13 = (float)(v9 * *((float *)&v5 + 1)) + (float)(v7 * v11);
  *a1 = v12;
  a1[2] = v13;
  *a1 = v12 + *a3;
  result = v13 + a3[2];
  a1[2] = result;
  return result;
}


// ===== 630ee8 glitch::collada::particle_system::CForceSceneNode::getBoundingBox(void) =====
int *__fastcall glitch::collada::particle_system::CForceSceneNode::getBoundingBox(
        glitch::collada::particle_system::CForceSceneNode *this)
{
  if ( (`guard variable for'glitch::collada::particle_system::CForceSceneNode::getBoundingBox(void)::empty & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::collada::particle_system::CForceSceneNode::getBoundingBox(void)::empty) )
  {
    return &glitch::collada::particle_system::CForceSceneNode::getBoundingBox(void)const::empty;
  }
  dword_9F6F48 = 1065353216;
  dword_9F6F3C = -1082130432;
  glitch::collada::particle_system::CForceSceneNode::getBoundingBox(void)const::empty = -1082130432;
  dword_9F6F38 = -1082130432;
  dword_9F6F40 = 1065353216;
  dword_9F6F44 = 1065353216;
  _cxa_guard_release(&`guard variable for'glitch::collada::particle_system::CForceSceneNode::getBoundingBox(void)::empty);
  return &glitch::collada::particle_system::CForceSceneNode::getBoundingBox(void)const::empty;
}


// ===== 630f6c glitch::collada::particle_system::CForceSceneNode::CForceSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SForce const&) =====
int *__fastcall glitch::collada::particle_system::CForceSceneNode::CForceSceneNode(int *a1, int *a2, int *a3, int a4)
{
  int v8; // r2
  int v9; // r1
  int v11; // r3
  _DWORD v12[4]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v13[3]; // [sp+18h] [bp-1Ch] BYREF
  _DWORD v14[4]; // [sp+24h] [bp-10h] BYREF

  v13[2] = 1065353216;
  memset(v14, 0, 12);
  memset(v12, 0, 12);
  v12[3] = 1065353216;
  v13[0] = 1065353216;
  v13[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode((int)a1, a2 + 1, -1, v14, v12, v13);
  v8 = *a3;
  a1[77] = *a3;
  a1[78] = a3[1];
  if ( v8 )
  {
    v9 = *(_DWORD *)(v8 + 4);
    if ( v9 )
      *(_DWORD *)(v8 + 4) = v9 + 1;
  }
  a1[76] = (int)&unk_9F6F08;
  v11 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v11 - 28)) = a2[4];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[5];
  a1[79] = a4;
  return a1;
}


// ===== 631050 glitch::collada::particle_system::CDeflectorForceSceneNode::CDeflectorForceSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SForce const&) =====
int *__fastcall glitch::collada::particle_system::CDeflectorForceSceneNode::CDeflectorForceSceneNode(
        int *a1,
        int *a2,
        int a3)
{
  int v4; // r3

  a1[88] = (int)off_95B720;
  *a1 = (int)off_97AC1C;
  a1[89] = 1;
  *(int *)((char *)&elf_hash_bucket[33] + (_DWORD)a1) = (int)off_97AC3C;
  glitch::collada::particle_system::CForceSceneNode::CForceSceneNode(a1, (int *)off_97A844, a2, a3);
  v4 = a1[79];
  a1[80] = (int)(a1 + 9);
  *a1 = (int)off_97A88C;
  a1[88] = (int)off_97A998;
  a1[81] = **(_DWORD **)(v4 + 12);
  a1[82] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 4);
  a1[83] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 8);
  a1[84] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 12);
  a1[85] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 16);
  a1[86] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 20);
  a1[87] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 24);
  return a1;
}


// ===== 631138 glitch::collada::CColladaFactory::createParticleSystemDeflectorForce(glitch::collada::CColladaDatabase const&,glitch::collada::SForce *) =====
int *__fastcall glitch::collada::CColladaFactory::createParticleSystemDeflectorForce(int a1, int *a2, int a3)
{
  int *v5; // r4

  v5 = (int *)operator new(0x168u, 0);
  glitch::collada::particle_system::CDeflectorForceSceneNode::CDeflectorForceSceneNode(v5, a2, a3);
  return v5;
}


// ===== 631168 glitch::collada::particle_system::CWindForceSceneNode::CWindForceSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SForce const&) =====
int *__fastcall glitch::collada::particle_system::CWindForceSceneNode::CWindForceSceneNode(int *a1, int *a2, int a3)
{
  int v4; // r3

  a1[87] = (int)off_95B720;
  *a1 = (int)off_97B344;
  a1[88] = 1;
  *(int *)((char *)&elf_hash_bucket[32] + (_DWORD)a1) = (int)off_97B364;
  glitch::collada::particle_system::CForceSceneNode::CForceSceneNode(a1, (int *)off_97AF6C, a2, a3);
  v4 = a1[79];
  a1[80] = (int)(a1 + 9);
  *a1 = (int)off_97AFB4;
  a1[87] = (int)off_97B0C0;
  a1[81] = **(_DWORD **)(v4 + 12);
  a1[82] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 4);
  a1[83] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 12);
  a1[84] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 16);
  a1[85] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 20);
  a1[86] = *(_DWORD *)(*(_DWORD *)(v4 + 12) + 8);
  return a1;
}


// ===== 631244 glitch::collada::CColladaFactory::createParticleSystemWindForce(glitch::collada::CColladaDatabase const&,glitch::collada::SForce *) =====
int *__fastcall glitch::collada::CColladaFactory::createParticleSystemWindForce(int a1, int *a2, int a3)
{
  int *v5; // r4

  v5 = (int *)operator new(0x164u, 0);
  glitch::collada::particle_system::CWindForceSceneNode::CWindForceSceneNode(v5, a2, a3);
  return v5;
}


// ===== 631274 glitch::collada::CColladaFactory::createParticleSystemGravityForce(glitch::collada::CColladaDatabase const&,glitch::collada::SForce *) =====
int *__fastcall glitch::collada::CColladaFactory::createParticleSystemGravityForce(int a1, int *a2, int a3)
{
  int *v5; // r0
  int *v6; // r4
  int v7; // r2

  v5 = (int *)operator new(0x158u, 0);
  v5[85] = 1;
  *v5 = (int)off_97B77C;
  v5[84] = (int)off_95B720;
  *(int *)((char *)&elf_hash_bucket[29] + (_DWORD)v5) = (int)off_97B79C;
  v6 = v5;
  glitch::collada::particle_system::CForceSceneNode::CForceSceneNode(v5, (int *)off_97B3A4, a2, a3);
  v7 = v6[79];
  v6[80] = (int)(v6 + 9);
  *v6 = (int)off_97B3EC;
  v6[84] = (int)off_97B4F8;
  v6[81] = **(_DWORD **)(v7 + 12);
  v6[82] = *(_DWORD *)(*(_DWORD *)(v7 + 12) + 4);
  v6[83] = *(_DWORD *)(*(_DWORD *)(v7 + 12) + 8);
  return v6;
}


// ===== 63133c glitch::collada::CColladaFactory::createGlitchNewParticleSystem(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SGNPSEmitter *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
_DWORD *__fastcall glitch::collada::CColladaFactory::createGlitchNewParticleSystem(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r4
  int v10; // r7
  int v11; // r3
  int v12; // r1
  _BYTE *v14; // r3
  _DWORD *v15; // r0
  int v16; // lr
  _DWORD *v17; // r0
  int v18; // lr
  _DWORD *v19; // r0
  int v20; // lr
  int v21[3]; // [sp+Ch] [bp-28h] BYREF
  int v22[3]; // [sp+18h] [bp-1Ch] BYREF
  int v23[4]; // [sp+24h] [bp-10h] BYREF

  v9 = operator new(0x198u, 0);
  glitch::collada::CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(v9, a2, a4, a5, a6);
  v10 = *(unsigned __int8 *)(a4 + 40);
  if ( *(_BYTE *)(a4 + 40) )
  {
    if ( v10 == 1 )
      (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*v9 + 244))(v9, a3, 0);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD *, int, int))(*v9 + 244))(v9, a3, 1);
    v11 = *(_DWORD *)(a4 + 44);
    if ( *(_BYTE *)v11 )
    {
      v12 = *(unsigned __int8 *)(v11 + 1);
      if ( *(_BYTE *)(v11 + 1) )
      {
        if ( v12 == 1 )
        {
          v19 = (_DWORD *)v9[94];
          v20 = *(_DWORD *)(*v19 - 12);
          v23[0] = *(_DWORD *)(v11 + 20);
          v23[1] = *(_DWORD *)(v11 + 24);
          v23[2] = *(_DWORD *)(v11 + 28);
          glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::lockAxis((int)v19 + v20, 1, v23);
        }
        else if ( v12 == 2 )
        {
          if ( *(_BYTE *)(v11 + 3) )
          {
            v15 = (_DWORD *)v9[94];
            v16 = *(_DWORD *)(*v15 - 12);
            v22[0] = *(_DWORD *)(v11 + 8);
            v22[1] = *(_DWORD *)(v11 + 12);
            v22[2] = *(_DWORD *)(v11 + 16);
            glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::lockAxis((int)v15 + v16, v10, v22);
            v11 = *(_DWORD *)(a4 + 44);
          }
          if ( *(_BYTE *)(v11 + 4) )
          {
            v17 = (_DWORD *)v9[94];
            v18 = *(_DWORD *)(*v17 - 12);
            v21[0] = *(_DWORD *)(v11 + 20);
            v21[1] = *(_DWORD *)(v11 + 24);
            v21[2] = *(_DWORD *)(v11 + 28);
            glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::lockAxis((int)v17 + v18, 1, v21);
            v11 = *(_DWORD *)(a4 + 44);
          }
          if ( *(_BYTE *)(v11 + 2) )
            *(_BYTE *)(v9[94] + *(_DWORD *)(*(_DWORD *)v9[94] - 12) + 33) = 1;
          else
            *(_BYTE *)(v9[94] + *(_DWORD *)(*(_DWORD *)v9[94] - 12) + 33) = 0;
        }
      }
      else
      {
        v14 = (_BYTE *)(v9[94] + *(_DWORD *)(*(_DWORD *)v9[94] - 12));
        v14[5] = 1;
        v14[4] = v12;
        v14[32] = 1;
      }
    }
  }
  return v9;
}


// ===== 631518 glitch::collada::CColladaFactory::createCoronas(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SCoronas *,glitch::collada::CRootSceneNode *) =====
void *__fastcall glitch::collada::CColladaFactory::createCoronas(int a1, int a2, int a3, int a4, int a5)
{
  void *v8; // r4

  v8 = operator new(0x20Cu, 0);
  glitch::collada::CCoronasSceneNode::CCoronasSceneNode(v8, a2, a3, a4, a5);
  return v8;
}


// ===== 631560 glitch::collada::CColladaFactory::createModularSkin(glitch::collada::CColladaDatabase const&,glitch::collada::SInstanceModularSkin *,glitch::collada::CRootSceneNode *) =====
glitch::collada::CModularSkinnedMesh **__fastcall glitch::collada::CColladaFactory::createModularSkin(
        glitch::collada::CModularSkinnedMesh **a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  glitch::collada::CModularSkinnedMesh *v8; // r4
  int v9; // r3
  glitch::collada::CModularSkinnedMesh **result; // r0

  v8 = (glitch::collada::CModularSkinnedMesh *)operator new(0x5Cu, 0);
  glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(v8, a3, a4, a5, -1, 1);
  *a1 = v8;
  if ( v8 )
    v9 = *((_DWORD *)v8 + 1);
  result = a1;
  if ( v8 )
    *((_DWORD *)v8 + 1) = v9 + 1;
  return result;
}


// ===== 6315cc glitch::collada::CColladaFactory::createSkin(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController *,glitch::collada::CRootSceneNode *) =====
glitch::collada::CSkinnedMesh **__fastcall glitch::collada::CColladaFactory::createSkin(
        glitch::collada::CSkinnedMesh **a1,
        int a2,
        int a3,
        glitch::video::IVideoDriver *a4,
        int a5,
        glitch::collada::CRootSceneNode *a6)
{
  glitch::collada::CSkinnedMesh *v9; // r4
  int v10; // r3
  glitch::collada::CSkinnedMesh **result; // r0

  v9 = (glitch::collada::CSkinnedMesh *)operator new(0x9Cu, 0);
  glitch::collada::CSkinnedMesh::CSkinnedMesh(v9, a3, a4, a5, a6);
  *a1 = v9;
  if ( v9 )
    v10 = *((_DWORD *)v9 + 1);
  result = a1;
  if ( v9 )
    *((_DWORD *)v9 + 1) = v10 + 1;
  return result;
}


// ===== 631628 glitch::collada::CColladaFactory::createScene(glitch::collada::CColladaDatabase const&) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CColladaFactory::createScene(
        glitch::collada::CColladaFactory *this,
        const glitch::collada::CColladaDatabase *a2)
{
  glitch::collada::CRootSceneNode *v3; // r4

  v3 = (glitch::collada::CRootSceneNode *)operator new(0x1C4u, 0);
  glitch::collada::CRootSceneNode::CRootSceneNode(v3, a2);
  return v3;
}


// ===== 631650 glitch::collada::CColladaFactory::createModularSkinNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::collada::IMesh> const&,void *) =====
void *__fastcall glitch::collada::CColladaFactory::createModularSkinNode(int a1, int a2, int a3)
{
  void *v4; // r4
  _DWORD v6[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v7[3]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD v8[4]; // [sp+2Ch] [bp-10h] BYREF

  v7[2] = 1065353216;
  memset(v8, 0, 12);
  memset(v6, 0, 12);
  v6[3] = 1065353216;
  v7[0] = 1065353216;
  v7[1] = 1065353216;
  v4 = operator new(0x184u, 0);
  ((void (__fastcall *)(void *, int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode)(
    v4,
    a3,
    0,
    -1,
    v8,
    v6,
    v7);
  return v4;
}


// ===== 6316d0 glitch::collada::CColladaFactory::createSkinNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::collada::IMesh> const&,void *) =====
void *__fastcall glitch::collada::CColladaFactory::createSkinNode(int a1, int a2, int a3)
{
  void *v4; // r4
  _DWORD v6[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v7[3]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD v8[4]; // [sp+2Ch] [bp-10h] BYREF

  v7[2] = 1065353216;
  memset(v8, 0, 12);
  memset(v6, 0, 12);
  v6[3] = 1065353216;
  v7[0] = 1065353216;
  v7[1] = 1065353216;
  v4 = operator new(0x184u, 0);
  ((void (__fastcall *)(void *, int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode)(
    v4,
    a3,
    0,
    -1,
    v8,
    v6,
    v7);
  return v4;
}


// ===== 631750 glitch::collada::CColladaFactory::createMeshNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::collada::IMesh> const&,void *) =====
int __fastcall glitch::collada::CColladaFactory::createMeshNode(int a1, int a2, int a3)
{
  int v4; // r4
  _DWORD v6[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v7[3]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD v8[4]; // [sp+2Ch] [bp-10h] BYREF

  v7[2] = 1065353216;
  memset(v8, 0, 12);
  memset(v6, 0, 12);
  v6[3] = 1065353216;
  v7[0] = 1065353216;
  v7[1] = 1065353216;
  v4 = operator new(320, 0);
  ((void (__fastcall *)(int, int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CMeshSceneNode::CMeshSceneNode)(
    v4,
    a3,
    0,
    -1,
    v8,
    v6,
    v7);
  return v4;
}


// ===== 6317d0 glitch::collada::CColladaFactory::createCameraNode(glitch::collada::CColladaDatabase const&,glitch::collada::SCamera *) =====
void *__fastcall glitch::collada::CColladaFactory::createCameraNode(int a1, int a2, int a3)
{
  void *v5; // r4

  v5 = operator new(0x3A0u, 0);
  glitch::collada::CCameraSceneNode::CCameraSceneNode(v5, a2, a3);
  return v5;
}


// ===== 631800 glitch::collada::CColladaFactory::createNode(glitch::collada::CColladaDatabase const&,glitch::collada::SNode *) =====
void *__fastcall glitch::collada::CColladaFactory::createNode(int a1, int a2, int a3)
{
  void *v5; // r4

  v5 = operator new(0x160u, 0);
  glitch::collada::CSceneNode::CSceneNode(v5, a2, a3);
  return v5;
}


// ===== 631830 glitch::collada::CColladaFactory::createBillboard(glitch::collada::CColladaDatabase const&,glitch::collada::SNode *) =====
_DWORD *glitch::collada::CColladaFactory::createBillboard()
{
  _DWORD *v0; // r0
  _DWORD *v1; // r4

  v0 = operator new(0x160u, 0);
  v0[87] = 1;
  *v0 = off_978A74;
  v0[86] = off_95B720;
  *(int *)((char *)&elf_hash_bucket[31] + (_DWORD)v0) = (int)off_978A94;
  v1 = v0;
  glitch::collada::CSceneNode::CSceneNode();
  *v1 = off_97858C;
  v1[86] = off_978694;
  return v1;
}


// ===== 6318c8 glitch::collada::CColladaFactory::createMorph(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController *,glitch::collada::CRootSceneNode *) =====
glitch::collada::CMorphingMesh **__fastcall glitch::collada::CColladaFactory::createMorph(
        glitch::collada::CMorphingMesh **a1,
        int a2,
        int a3,
        glitch::video::IVideoDriver *a4,
        int a5,
        glitch::collada::CRootSceneNode *a6)
{
  glitch::collada::CMorphingMesh *v9; // r4
  int v10; // r3
  glitch::collada::CMorphingMesh **result; // r0

  v9 = (glitch::collada::CMorphingMesh *)operator new(0x40u, 0);
  glitch::collada::CMorphingMesh::CMorphingMesh(v9, a3, a4, a5, a6);
  *a1 = v9;
  if ( v9 )
    v10 = *((_DWORD *)v9 + 1);
  result = a1;
  if ( v9 )
    *((_DWORD *)v9 + 1) = v10 + 1;
  return result;
}


// ===== 631924 glitch::collada::CColladaFactory::createGeometry(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SGeometry *) =====
int *__fastcall glitch::collada::CColladaFactory::createGeometry(int *a1, int a2, int a3, int a4, int a5)
{
  int v9; // r9
  int v10; // r4
  int v11; // r3
  int *result; // r0
  _BYTE v13[8]; // [sp+10h] [bp-8h] BYREF
  _BYTE v14[12]; // [sp+18h] [bp+0h] BYREF

  (*(void (__fastcall **)(_BYTE *, int, int, int))(*(_DWORD *)a2 + 40))(v14, a2, a3, a5);
  (*(void (__fastcall **)(_BYTE *, int, int, int))(*(_DWORD *)a2 + 44))(v13, a2, a3, a5);
  v9 = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)a2 + 48))(a2, a3, a5);
  v10 = operator new(60, 0);
  glitch::collada::CMesh::CMesh(v10, a3, a4, a5, v14, v13, v9);
  *a1 = v10;
  if ( v10 )
    v11 = *(_DWORD *)(v10 + 4);
  result = a1;
  if ( v10 )
    *(_DWORD *)(v10 + 4) = v11 + 1;
  return result;
}


// ===== 6319d8 glitch::collada::SEffectList::SEffectList(glitch::collada::CColladaDatabase const&,glitch::collada::SEffect *) =====
_DWORD *__fastcall glitch::collada::SEffectList::SEffectList(_DWORD *a1, int a2, int a3)
{
  glitch::IReferenceCounted *v4; // r3
  int v5; // r1
  _DWORD *v6; // r0
  glitch::IReferenceCounted *v7; // r2
  int v8; // r1
  _DWORD *v9; // r2
  glitch::IReferenceCounted *v11; // [sp+4h] [bp-Ch] BYREF
  int v12; // [sp+8h] [bp-8h]
  int v13; // [sp+Ch] [bp-4h]

  *a1 = a1;
  a1[1] = a1;
  v4 = *(glitch::IReferenceCounted **)a2;
  v5 = *(_DWORD *)(a2 + 4);
  v12 = v5;
  v11 = v4;
  if ( v4 )
  {
    v5 = *((_DWORD *)v4 + 1);
    if ( v5 )
      *((_DWORD *)v4 + 1) = ++v5;
  }
  v13 = a3;
  v6 = (_DWORD *)glitch::core::allocProcessBuffer((glitch::core *)&dword_14, v5);
  v7 = v11;
  v6[2] = v11;
  v6[3] = v12;
  if ( v7 )
  {
    v8 = *((_DWORD *)v7 + 1);
    if ( v8 )
      *((_DWORD *)v7 + 1) = v8 + 1;
  }
  v6[4] = v13;
  v9 = (_DWORD *)a1[1];
  *v6 = a1;
  v6[1] = v9;
  *v9 = v6;
  a1[1] = v6;
  glitch::collada::CColladaDatabase::~CColladaDatabase(&v11);
  return a1;
}


// ===== 631a7c std::priv::_List_base<glitch::collada::SEffectList::SEntry,glitch::core::SProcessBufferAllocator<glitch::collada::SEffectList::SEntry>>::clear(void) =====
void __fastcall std::priv::_List_base<glitch::collada::SEffectList::SEntry,glitch::core::SProcessBufferAllocator<glitch::collada::SEffectList::SEntry>>::clear(
        int a1)
{
  glitch::IReferenceCounted **v1; // r4
  glitch::IReferenceCounted **v3; // r5
  void *v4; // r1

  v1 = *(glitch::IReferenceCounted ***)a1;
  if ( *(_DWORD *)a1 != a1 )
  {
    while ( 1 )
    {
      v3 = (glitch::IReferenceCounted **)*v1;
      glitch::collada::CColladaDatabase::~CColladaDatabase(v1 + 2);
      glitch::core::releaseProcessBuffer((glitch::core *)v1, v4);
      if ( v3 == (glitch::IReferenceCounted **)a1 )
        break;
      v1 = v3;
    }
    v1 = (glitch::IReferenceCounted **)a1;
  }
  *(_DWORD *)(a1 + 4) = v1;
  *(_DWORD *)a1 = v1;
}


// ===== 631ac4 glitch::collada::CColladaFactory::getEffectName(glitch::collada::CColladaDatabase const&,char const*,char const*) =====
glitch::collada::CColladaFactory *__fastcall glitch::collada::CColladaFactory::getEffectName(
        glitch::collada::CColladaFactory *this,
        const glitch::collada::CColladaDatabase *a2,
        const char *a3,
        char *a4)
{
  size_t v6; // r0

  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  v6 = LC_API_STRLEN_0(a4);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    this,
    a4,
    &a4[v6]);
  return this;
}


// ===== 631af8 glitch::collada::CColladaFactory::createLight(glitch::collada::CColladaDatabase const&,glitch::collada::SLight *) =====
void *__fastcall glitch::collada::CColladaFactory::createLight(int a1, int a2, int a3)
{
  void *v5; // r4

  v5 = operator new(0x16Cu, 0);
  glitch::collada::CLightSceneNode::CLightSceneNode(v5, a2, a3);
  return v5;
}


// ===== 631b28 glitch::collada::CColladaFactory::createAnimator(glitch::collada::CColladaDatabase const&,glitch::collada::SLibraryAnimationClips *) =====
void *__fastcall glitch::collada::CColladaFactory::createAnimator(int a1, int a2, int a3)
{
  void *v5; // r4

  v5 = operator new(0x60u, 0);
  glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator(v5, a2, a3);
  return v5;
}


// ===== 631b58 glitch::video::CMaterialRendererManager::getParameterID(char const*) =====
_DWORD *__fastcall glitch::video::CMaterialRendererManager::getParameterID(
        glitch::video::CMaterialRendererManager *this,
        glitch::core::detail::SSharedStringHeapEntry::SData *a2,
        bool a3)
{
  _DWORD *v4; // r0
  _DWORD *ParameterIDInternal; // r4
  void *v6; // r0
  void *v9; // [sp+4h] [bp-4h] BYREF

  v4 = (_DWORD *)glitch::core::detail::SSharedStringHeapEntry::SData::get(a2, nullptr, a3);
  v9 = v4;
  if ( v4 )
    ++*v4;
  ParameterIDInternal = glitch::video::CMaterialRendererManager::getParameterIDInternal((int)this, &v9);
  v6 = v9;
  if ( v9 )
  {
    if ( (*(_DWORD *)v9)-- == 1 )
      glitch::core::detail::SSharedStringHeapEntry::SData::release(v6);
  }
  return ParameterIDInternal;
}


// ===== 631bc4 glitch::video::CMaterialRendererManager::bindParameter(glitch::video::CMaterialRendererManager::STemporaryID,glitch::video::CMaterialRendererManager::STemporaryID,uchar,ushort,glitch::video::E_SHADER_STAGE) =====
int __fastcall glitch::video::CMaterialRendererManager::bindParameter(
        int a1,
        int a2,
        int a3,
        unsigned __int8 a4,
        unsigned __int16 a5,
        int a6)
{
  int result; // r0

  result = glitch::video::CMaterialRendererManager::getParameterDef(a1, a2);
  if ( result )
    return glitch::video::CMaterialRendererManager::bindParameter(
             a1,
             a2,
             *(unsigned __int16 *)(result + 4),
             a3,
             a4,
             a5,
             a6);
  return result;
}


// ===== 631c14 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_DWORD *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_DWORD *a1)
{
  *((_BYTE *)a1 + 64) = 0;
  LC_API_MEMSET_0(a1, 0, 0x40u);
  *((_BYTE *)a1 + 64) = 1;
  a1[15] = 1065353216;
  *a1 = 1065353216;
  a1[5] = 1065353216;
  a1[10] = 1065353216;
  return a1;
}


// ===== 631c50 glitch::video::CMaterialRendererManager::addParameterInternal(char const*,glitch::video::E_SHADER_PARAMETER_TYPE,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,uint,bool) [clone] =====
glitch::core *__fastcall glitch::video::CMaterialRendererManager::addParameterInternal(
        int a1,
        glitch::core::detail::SSharedStringHeapEntry::SData *this,
        int a3,
        int a4)
{
  glitch::core *v7; // r4
  _DWORD *v8; // r0
  void *v9; // r0
  void *v12; // [sp+Ch] [bp-4h] BYREF

  if ( !*(_DWORD *)(a1 + 144) )
    return nullptr;
  v8 = (_DWORD *)glitch::core::detail::SSharedStringHeapEntry::SData::get(this, (const char *)&dword_0 + 1, a3);
  v12 = v8;
  if ( v8 )
    ++*v8;
  v7 = glitch::video::CMaterialRendererManager::addParameterInternal(a1, (char **)&v12, a3, 255, a4, 1);
  v9 = v12;
  if ( v12 )
  {
    if ( (*(_DWORD *)v12)-- == 1 )
      glitch::core::detail::SSharedStringHeapEntry::SData::release(v9);
  }
  return v7;
}


// ===== 631ce8 glitch::collada::createMaterial(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,glitch::collada::SMaterial &,glitch::collada::CRootSceneNode *) =====
glitch::video::CMaterial **__fastcall glitch::collada::createMaterial(
        glitch::video::CMaterial **a1,
        int a2,
        int a3,
        int *a4,
        int a5,
        int a6)
{
  glitch::video::CMaterial *v6; // r3
  glitch::video::CMaterial *v7; // r2
  int v8; // r4
  int v9; // r6
  glitch::video::CMaterial *v10; // r0
  int v11; // r3
  unsigned int v12; // r2
  int v13; // r9
  const char *v14; // r2
  const char *v15; // r3
  int v16; // r7
  char *ParameterID; // r0
  bool v18; // r2
  int v19; // r7
  unsigned int v20; // r5
  char *TechniqueID; // r0
  int v23; // r11
  int v24; // r3
  const char *v25; // r5
  const char *v26; // r10
  int v27; // r11
  int n; // r9
  glitch::IReferenceCounted *v29; // r3
  int v30; // r12
  int v31; // r9
  unsigned int v32; // r10
  unsigned int v33; // r6
  int v34; // r4
  int v35; // r5
  int v36; // lr
  glitch::IReferenceCounted **v37; // lr
  glitch::IReferenceCounted *v38; // r0
  glitch::IReferenceCounted *v39; // r1
  glitch::IReferenceCounted *v40; // r2
  glitch::IReferenceCounted *v41; // r3
  glitch::IReferenceCounted *v42; // r0
  glitch::IReferenceCounted *v43; // r1
  glitch::IReferenceCounted *v44; // r2
  glitch::IReferenceCounted *v45; // r3
  glitch::IReferenceCounted *v46; // r0
  glitch::IReferenceCounted *v47; // r1
  glitch::IReferenceCounted *v48; // r2
  glitch::IReferenceCounted *v49; // r3
  glitch::IReferenceCounted *v50; // r1
  glitch::IReferenceCounted *v51; // r2
  glitch::IReferenceCounted *v52; // r3
  int v53; // r3
  int v54; // r10
  int v55; // r9
  unsigned int i; // r7
  unsigned int v57; // r2
  int v58; // r0
  glitch::IReferenceCounted *v59; // r0
  int v60; // r3
  int v61; // r10
  int v62; // r9
  unsigned int j; // r7
  unsigned int v64; // r2
  int v65; // r0
  glitch::IReferenceCounted *v66; // r0
  int v67; // r3
  int v68; // r10
  int v69; // r9
  unsigned int k; // r7
  unsigned int v71; // r2
  int v72; // r0
  glitch::IReferenceCounted *v73; // r0
  int v74; // r3
  int v75; // r10
  int v76; // r9
  unsigned int m; // r7
  unsigned int v78; // r2
  int v79; // r0
  glitch::IReferenceCounted *v80; // r0
  unsigned int v81; // [sp+Ch] [bp-98h]
  int v84; // [sp+20h] [bp-84h]
  int v85; // [sp+24h] [bp-80h]
  int v86; // [sp+24h] [bp-80h]
  int v87; // [sp+30h] [bp-74h]
  int v88; // [sp+30h] [bp-74h]
  int v89; // [sp+30h] [bp-74h]
  glitch::IReferenceCounted *v90[22]; // [sp+40h] [bp-64h] BYREF
  glitch::video::CMaterial *v91; // [sp+98h] [bp-Ch] BYREF
  glitch::video::CMaterial *v92; // [sp+9Ch] [bp-8h] BYREF

  *a1 = nullptr;
  if ( *a4 )
  {
    glitch::video::CMaterial::allocate(&v92, a4, *(glitch::core::detail::SSharedStringHeapEntry::SData **)a5);
    v6 = v92;
    v91 = v92;
    if ( v92 )
    {
      ++*(_DWORD *)v92;
      v6 = v91;
    }
    v7 = *a1;
    *a1 = v6;
    v91 = v7;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v91);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v92);
    v84 = *(_DWORD *)(a5 + 16);
    if ( v84 > 0 )
    {
      v8 = 0;
      v9 = 0;
      while ( 1 )
      {
        v16 = *(_DWORD *)(a5 + 20);
        ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                        (glitch::video::CMaterialRenderer *)*a4,
                        *(glitch::core::detail::SSharedStringHeapEntry::SData **)(v16 + v8),
                        0);
        v19 = v16 + v8;
        v20 = (unsigned int)ParameterID;
        if ( ParameterID != (_BYTE *)&elf_hash_bucket[16328] + 3 )
          break;
        if ( *(_DWORD *)(v19 + 8) == 20 )
        {
          ++v9;
          v8 += 24;
          TechniqueID = glitch::video::CMaterialRenderer::getTechniqueID(
                          (glitch::video::CMaterialRenderer *)*a4,
                          *(glitch::core::detail::SSharedStringHeapEntry::SData **)(*(_DWORD *)(v19 + 20) + 4),
                          v18);
          if ( TechniqueID != (_BYTE *)&elf_hash_bucket[8] + 3 )
            *((_BYTE *)*a1 + 8) = (_BYTE)TechniqueID;
          if ( v9 == v84 )
            return a1;
        }
        else
        {
LABEL_17:
          ++v9;
          v8 += 24;
          if ( v9 == v84 )
            return a1;
        }
      }
      v10 = *a1;
      v11 = *((_DWORD *)*a1 + 1);
      v12 = *(unsigned __int16 *)(v11 + 14);
      if ( v20 >= v12 )
        v13 = 0;
      else
        v13 = *(_DWORD *)(v11 + 32);
      if ( v20 < v12 )
        v13 += 16 * v20;
      v81 = *(_DWORD *)(v13 + 8);
      if ( v81 <= **(_DWORD **)(v19 + 16) )
      {
        v23 = *(unsigned __int8 *)(v13 + 6);
        v87 = *(_DWORD *)(v19 + 8);
        v85 = v87;
        if ( (glitch::collada::`anonymous namespace'::isParameterTypeValidSourceFor(glitch::collada::SParam::E_TYPE,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE)::cvt[v23]
            & (1 << v87)) != 0 )
        {
          switch ( *(_BYTE *)(v13 + 6) )
          {
            case 9:
            case 0xA:
              goto LABEL_17;
            case 0xB:
              glitch::core::CMatrix4<float>::CMatrix4(v90);
              v30 = *(_DWORD *)(v13 + 8);
              if ( v30 )
              {
                v31 = 0;
                v86 = v8;
                v89 = v9;
                v32 = 0;
                v33 = v20;
                v34 = glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[*(_DWORD *)(v19 + 8) + 1]
                    * glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[*(_DWORD *)(v19 + 8) + 1]];
                v35 = v30;
                do
                {
                  v36 = *(_DWORD *)(v19 + 20);
                  LOBYTE(v90[16]) = 0;
                  v37 = (glitch::IReferenceCounted **)(v36 + v31);
                  v38 = *v37;
                  v39 = v37[1];
                  v40 = v37[2];
                  v41 = v37[3];
                  v37 += 4;
                  v90[0] = v38;
                  v90[1] = v39;
                  v90[2] = v40;
                  v90[3] = v41;
                  v42 = *v37;
                  v43 = v37[1];
                  v44 = v37[2];
                  v45 = v37[3];
                  v37 += 4;
                  v90[4] = v42;
                  v90[5] = v43;
                  v90[6] = v44;
                  v90[7] = v45;
                  v46 = *v37;
                  v47 = v37[1];
                  v48 = v37[2];
                  v49 = v37[3];
                  v37 += 4;
                  v90[8] = v46;
                  v90[9] = v47;
                  v90[10] = v48;
                  v90[11] = v49;
                  v50 = v37[1];
                  v51 = v37[2];
                  v52 = v37[3];
                  v90[12] = *v37;
                  v90[13] = v50;
                  v90[14] = v51;
                  v90[15] = v52;
                  if ( !glitch::core::CMatrix4<float>::isIdentity((int)v90) )
                    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
                      *a1,
                      v33,
                      v32,
                      v90);
                  ++v32;
                  v31 += v34;
                }
                while ( v32 != v35 );
                v8 = v86;
                v9 = v89;
              }
              break;
            case 0xC:
              if ( v20 >= v12 )
                v53 = 0;
              else
                v53 = *(_DWORD *)(v11 + 32);
              v54 = *(_DWORD *)(v19 + 20);
              if ( v20 < v12 )
                v53 += 16 * v20;
              v55 = *(_DWORD *)(v53 + 8);
              if ( v55 )
              {
                for ( i = 0; i != v55; ++i )
                {
                  v57 = i;
                  v58 = **(_DWORD **)(v54 + 4 * i);
                  if ( v58 )
                  {
                    v59 = *(glitch::IReferenceCounted **)(v58 + 16);
                    v90[0] = v59;
                    if ( v59 )
                      ++*((_DWORD *)v59 + 1);
                    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                      *a1,
                      v20,
                      v57,
                      (int *)v90);
                    if ( v90[0] )
                      glitch::IReferenceCounted::drop(v90[0]);
                  }
                }
              }
              break;
            case 0xD:
              if ( v20 >= v12 )
                v60 = 0;
              else
                v60 = *(_DWORD *)(v11 + 32);
              v61 = *(_DWORD *)(v19 + 20);
              if ( v20 < v12 )
                v60 += 16 * v20;
              v62 = *(_DWORD *)(v60 + 8);
              if ( v62 )
              {
                for ( j = 0; j != v62; ++j )
                {
                  v64 = j;
                  v65 = **(_DWORD **)(v61 + 4 * j);
                  if ( v65 )
                  {
                    v66 = *(glitch::IReferenceCounted **)(v65 + 16);
                    v90[0] = v66;
                    if ( v66 )
                      ++*((_DWORD *)v66 + 1);
                    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                      *a1,
                      v20,
                      v64,
                      (int *)v90);
                    if ( v90[0] )
                      glitch::IReferenceCounted::drop(v90[0]);
                  }
                }
              }
              break;
            case 0xE:
              if ( v20 >= v12 )
                v67 = 0;
              else
                v67 = *(_DWORD *)(v11 + 32);
              v68 = *(_DWORD *)(v19 + 20);
              if ( v20 < v12 )
                v67 += 16 * v20;
              v69 = *(_DWORD *)(v67 + 8);
              if ( v69 )
              {
                for ( k = 0; k != v69; ++k )
                {
                  v71 = k;
                  v72 = **(_DWORD **)(v68 + 4 * k);
                  if ( v72 )
                  {
                    v73 = *(glitch::IReferenceCounted **)(v72 + 16);
                    v90[0] = v73;
                    if ( v73 )
                      ++*((_DWORD *)v73 + 1);
                    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                      *a1,
                      v20,
                      v71,
                      (int *)v90);
                    if ( v90[0] )
                      glitch::IReferenceCounted::drop(v90[0]);
                  }
                }
              }
              break;
            case 0xF:
              if ( v20 >= v12 )
                v74 = 0;
              else
                v74 = *(_DWORD *)(v11 + 32);
              v75 = *(_DWORD *)(v19 + 20);
              if ( v20 < v12 )
                v74 += 16 * v20;
              v76 = *(_DWORD *)(v74 + 8);
              if ( v76 )
              {
                for ( m = 0; m != v76; ++m )
                {
                  v78 = m;
                  v79 = **(_DWORD **)(v75 + 4 * m);
                  if ( v79 )
                  {
                    v80 = *(glitch::IReferenceCounted **)(v79 + 16);
                    v90[0] = v80;
                    if ( v80 )
                      ++*((_DWORD *)v80 + 1);
                    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                      *a1,
                      v20,
                      v78,
                      (int *)v90);
                    if ( v90[0] )
                      glitch::IReferenceCounted::drop(v90[0]);
                  }
                }
              }
              break;
            case 0x12:
              if ( v81 )
              {
                v27 = 0;
                for ( n = 0; n != v81; ++n )
                {
                  v29 = *(glitch::IReferenceCounted **)(*(_DWORD *)(v19 + 20) + v27);
                  v90[0] = v29;
                  if ( !*((_DWORD *)v29 - 1) || *(_BYTE *)v29 == 35 && !*((_BYTE *)v29 + 1) )
                    break;
                  if ( a6 )
                    glitch::collada::CRootSceneNode::addURLToResolve(a6, a1, v20, n, v90);
                  v27 += 4;
                }
              }
              break;
            default:
              glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(
                v10,
                v20,
                glitch::collada::`anonymous namespace'::ShaderParameterValueTypeMap[v87],
                *(int **)(v19 + 20),
                glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v87 + 1]
              * glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v87 + 1]]);
              break;
          }
        }
        else
        {
          v24 = *((_DWORD *)v10 + 7);
          if ( v24 )
            v24 += 4;
          v88 = v24;
          v25 = *(const char **)v13;
          if ( *(_DWORD *)v13 )
            v25 += 4;
          if ( v23 == 255 )
          {
            v26 = "unknown";
          }
          else
          {
            v26 = glitch::video::getStringsInternal()[v23];
            v85 = *(_DWORD *)(v19 + 8);
          }
          memcpy(v90, &glitch::collada::`anonymous namespace'::getParameterString(int)::C.1790, sizeof(v90));
          glitch::os::Printer::logf(
            3,
            "parameter type mismatch when setting \"%s/%s\": want %s, got %s",
            v88,
            v25,
            v26,
            v90[v85]);
        }
      }
      else
      {
        v14 = *((const char **)v10 + 7);
        v15 = *(const char **)v13;
        if ( v14 )
          v14 += 4;
        if ( v15 )
          v15 += 4;
        glitch::os::Printer::logf(3, "Not enough elements in parameter array \"%s/%s\"", v14, v15);
      }
      goto LABEL_17;
    }
  }
  return a1;
}


// ===== 6323d0 glitch::collada::CColladaFactory::createMaterial(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SMaterial *,glitch::collada::CRootSceneNode *) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CColladaFactory::createMaterial(
        glitch::collada::CRootSceneNode *a1,
        int a2,
        int a3,
        int a4,
        _DWORD *a5,
        char *a6)
{
  glitch::video::CMaterial *v11; // r3
  glitch::video::CMaterial *v12; // r2
  glitch::video::CMaterial *v13; // [sp+14h] [bp-Ch] BYREF
  glitch::video::CMaterial *v14; // [sp+18h] [bp-8h] BYREF
  glitch::video::CMaterialRenderer *v15; // [sp+1Ch] [bp-4h] BYREF

  if ( a6 )
  {
    glitch::collada::CRootSceneNode::hasMaterial(a1, a6);
    if ( *(_DWORD *)a1 )
      return a1;
  }
  else
  {
    *(_DWORD *)a1 = 0;
  }
  (*(void (__fastcall **)(glitch::video::CMaterialRenderer **, int, int, int, _DWORD, int, _DWORD, char *))(*(_DWORD *)a2 + 28))(
    &v15,
    a2,
    a3,
    a4,
    a5[6],
    a5[3] + 1,
    a5[2],
    a6);
  if ( v15 )
  {
    glitch::collada::createMaterial(&v14, a3, a4, (int *)&v15, (int)a5, (int)a6);
    v11 = v14;
    v13 = v14;
    if ( v14 )
    {
      ++*(_DWORD *)v14;
      v11 = v13;
    }
    v12 = *(glitch::video::CMaterial **)a1;
    *(_DWORD *)a1 = v11;
    v13 = v12;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v14);
  }
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v15);
  return a1;
}


// ===== 6324c4 glitch::collada::`anonymous namespace'::setMaterialParameter<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,glitch::collada::SNewParam>(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,ushort,glitch::collada::SNewParam &,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::`anonymous namespace'::setMaterialParameter<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,glitch::collada::SNewParam>(
        int *a1,
        unsigned int a2,
        int a3,
        int a4)
{
  int v5; // r0
  unsigned int v7; // r1
  int v8; // r9
  unsigned int v9; // r8
  const char *v11; // r3
  int v13; // r11
  int v14; // r3
  int v15; // r10
  const char *v16; // r7
  const char *v17; // r5
  char **StringsInternal; // r0
  const char *v19; // r4
  int v20; // r10
  int v21; // r5
  glitch::IReferenceCounted *v22; // r3
  int v23; // r11
  int v24; // r8
  unsigned int v25; // r5
  unsigned int v26; // r7
  int v27; // r4
  int v28; // lr
  glitch::IReferenceCounted **v29; // lr
  glitch::IReferenceCounted *v30; // r0
  glitch::IReferenceCounted *v31; // r1
  glitch::IReferenceCounted *v32; // r2
  glitch::IReferenceCounted *v33; // r3
  glitch::IReferenceCounted *v34; // r0
  glitch::IReferenceCounted *v35; // r1
  glitch::IReferenceCounted *v36; // r2
  glitch::IReferenceCounted *v37; // r3
  glitch::IReferenceCounted *v38; // r0
  glitch::IReferenceCounted *v39; // r1
  glitch::IReferenceCounted *v40; // r2
  glitch::IReferenceCounted *v41; // r3
  glitch::IReferenceCounted *v42; // r1
  glitch::IReferenceCounted *v43; // r2
  glitch::IReferenceCounted *v44; // r3
  int v45; // r3
  int v46; // r5
  int v47; // r8
  unsigned int i; // r6
  unsigned int v49; // r2
  int v50; // r0
  glitch::IReferenceCounted *v51; // r0
  int v52; // r3
  int v53; // r5
  int v54; // r8
  unsigned int j; // r6
  unsigned int v56; // r2
  int v57; // r0
  glitch::IReferenceCounted *v58; // r0
  int v59; // r3
  int v60; // r5
  int v61; // r8
  unsigned int k; // r6
  unsigned int v63; // r2
  int v64; // r0
  glitch::IReferenceCounted *v65; // r0
  int v66; // r3
  int v67; // r5
  int v68; // r8
  unsigned int m; // r6
  unsigned int v70; // r2
  int v71; // r0
  glitch::IReferenceCounted *v72; // r0
  int *v74; // [sp+Ch] [bp-60h]
  glitch::IReferenceCounted *v75[23]; // [sp+10h] [bp-5Ch] BYREF

  v5 = *a1;
  v7 = *(unsigned __int16 *)(v5 + 14);
  if ( a2 >= v7 )
    v8 = 0;
  else
    v8 = *(_DWORD *)(v5 + 32);
  if ( a2 < v7 )
    v8 += 16 * a2;
  v9 = *(_DWORD *)(v8 + 8);
  if ( **(_DWORD **)(a3 + 16) >= v9 )
  {
    v13 = *(unsigned __int8 *)(v8 + 6);
    v14 = *(_DWORD *)(a3 + 4);
    v15 = v14;
    if ( (glitch::collada::`anonymous namespace'::isParameterTypeValidSourceFor(glitch::collada::SParam::E_TYPE,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE)::cvt[v13]
        & (1 << v14)) != 0 )
    {
      switch ( *(_BYTE *)(v8 + 6) )
      {
        case 9:
        case 0xA:
          return 1;
        case 0xB:
          glitch::core::CMatrix4<float>::CMatrix4(v75);
          v23 = *(_DWORD *)(v8 + 8);
          if ( v23 )
          {
            v24 = 0;
            v74 = a1;
            v25 = 0;
            v26 = a2;
            v27 = glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[*(_DWORD *)(a3 + 4) + 1]
                * glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[*(_DWORD *)(a3 + 4) + 1]];
            do
            {
              v28 = *(_DWORD *)(a3 + 20);
              LOBYTE(v75[16]) = 0;
              v29 = (glitch::IReferenceCounted **)(v28 + v24);
              v30 = *v29;
              v31 = v29[1];
              v32 = v29[2];
              v33 = v29[3];
              v29 += 4;
              v75[0] = v30;
              v75[1] = v31;
              v75[2] = v32;
              v75[3] = v33;
              v34 = *v29;
              v35 = v29[1];
              v36 = v29[2];
              v37 = v29[3];
              v29 += 4;
              v75[4] = v34;
              v75[5] = v35;
              v75[6] = v36;
              v75[7] = v37;
              v38 = *v29;
              v39 = v29[1];
              v40 = v29[2];
              v41 = v29[3];
              v29 += 4;
              v75[8] = v38;
              v75[9] = v39;
              v75[10] = v40;
              v75[11] = v41;
              v42 = v29[1];
              v43 = v29[2];
              v44 = v29[3];
              v75[12] = *v29;
              v75[13] = v42;
              v75[14] = v43;
              v75[15] = v44;
              if ( !glitch::core::CMatrix4<float>::isIdentity((int)v75) )
                glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
                  *v74,
                  v26,
                  v25,
                  v75);
              ++v25;
              v24 += v27;
            }
            while ( v25 != v23 );
          }
          return 1;
        case 0xC:
          if ( a2 >= v7 )
            v45 = 0;
          else
            v45 = *(_DWORD *)(v5 + 32);
          v46 = *(_DWORD *)(a3 + 20);
          if ( a2 < v7 )
            v45 += 16 * a2;
          v47 = *(_DWORD *)(v45 + 8);
          if ( !v47 )
            return 1;
          for ( i = 0; i != v47; ++i )
          {
            v49 = i;
            v50 = **(_DWORD **)(v46 + 4 * i);
            if ( v50 )
            {
              v51 = *(glitch::IReferenceCounted **)(v50 + 16);
              v75[0] = v51;
              if ( v51 )
                ++*((_DWORD *)v51 + 1);
              glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                *a1,
                a2,
                v49,
                (int *)v75);
              if ( v75[0] )
                glitch::IReferenceCounted::drop(v75[0]);
            }
          }
          return 1;
        case 0xD:
          if ( a2 >= v7 )
            v52 = 0;
          else
            v52 = *(_DWORD *)(v5 + 32);
          v53 = *(_DWORD *)(a3 + 20);
          if ( a2 < v7 )
            v52 += 16 * a2;
          v54 = *(_DWORD *)(v52 + 8);
          if ( !v54 )
            return 1;
          for ( j = 0; j != v54; ++j )
          {
            v56 = j;
            v57 = **(_DWORD **)(v53 + 4 * j);
            if ( v57 )
            {
              v58 = *(glitch::IReferenceCounted **)(v57 + 16);
              v75[0] = v58;
              if ( v58 )
                ++*((_DWORD *)v58 + 1);
              glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                *a1,
                a2,
                v56,
                (int *)v75);
              if ( v75[0] )
                glitch::IReferenceCounted::drop(v75[0]);
            }
          }
          return 1;
        case 0xE:
          if ( a2 >= v7 )
            v59 = 0;
          else
            v59 = *(_DWORD *)(v5 + 32);
          v60 = *(_DWORD *)(a3 + 20);
          if ( a2 < v7 )
            v59 += 16 * a2;
          v61 = *(_DWORD *)(v59 + 8);
          if ( !v61 )
            return 1;
          for ( k = 0; k != v61; ++k )
          {
            v63 = k;
            v64 = **(_DWORD **)(v60 + 4 * k);
            if ( v64 )
            {
              v65 = *(glitch::IReferenceCounted **)(v64 + 16);
              v75[0] = v65;
              if ( v65 )
                ++*((_DWORD *)v65 + 1);
              glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                *a1,
                a2,
                v63,
                (int *)v75);
              if ( v75[0] )
                glitch::IReferenceCounted::drop(v75[0]);
            }
          }
          return 1;
        case 0xF:
          if ( a2 >= v7 )
            v66 = 0;
          else
            v66 = *(_DWORD *)(v5 + 32);
          v67 = *(_DWORD *)(a3 + 20);
          if ( a2 < v7 )
            v66 += 16 * a2;
          v68 = *(_DWORD *)(v66 + 8);
          if ( !v68 )
            return 1;
          for ( m = 0; m != v68; ++m )
          {
            v70 = m;
            v71 = **(_DWORD **)(v67 + 4 * m);
            if ( v71 )
            {
              v72 = *(glitch::IReferenceCounted **)(v71 + 16);
              v75[0] = v72;
              if ( v72 )
                ++*((_DWORD *)v72 + 1);
              glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                *a1,
                a2,
                v70,
                (int *)v75);
              if ( v75[0] )
                glitch::IReferenceCounted::drop(v75[0]);
            }
          }
          return 1;
        case 0x12:
          if ( !v9 )
            return 1;
          v20 = 0;
          v21 = 0;
          break;
        default:
          glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(
            v5,
            a2,
            glitch::collada::`anonymous namespace'::ShaderParameterValueTypeMap[v14],
            *(int **)(a3 + 20),
            glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v14 + 1]
          * glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v14 + 1]]);
          return 1;
      }
      while ( 1 )
      {
        v22 = *(glitch::IReferenceCounted **)(*(_DWORD *)(a3 + 20) + v20);
        v75[0] = v22;
        if ( !*((_DWORD *)v22 - 1) )
          return 1;
        if ( *(_BYTE *)v22 == 35 && !*((_BYTE *)v22 + 1) )
          break;
        if ( a4 )
          glitch::collada::CRootSceneNode::addURLToResolve(a4, a1, a2, v21, v75);
        ++v21;
        v20 += 4;
        if ( v21 == v9 )
          return 1;
      }
      return 1;
    }
    else
    {
      v16 = *(const char **)v8;
      v17 = *(const char **)(v5 + 8);
      if ( *(_DWORD *)v8 )
        v16 += 4;
      if ( v13 == 255 )
      {
        v19 = "unknown";
      }
      else
      {
        StringsInternal = glitch::video::getStringsInternal();
        v15 = *(_DWORD *)(a3 + 4);
        v19 = StringsInternal[v13];
      }
      memcpy(v75, &glitch::collada::`anonymous namespace'::getParameterString(int)::C.1790, 0x58u);
      glitch::os::Printer::logf(
        3,
        "parameter type mismatch when setting \"%s/%s\": want %s, got %s",
        v17,
        v16,
        v19,
        (const char *)v75[v15]);
      return 0;
    }
  }
  else
  {
    v11 = *(const char **)v8;
    if ( *(_DWORD *)v8 )
      v11 += 4;
    glitch::os::Printer::logf(3, "Not enough elements in parameter array \"%s/%s\"", *(const char **)(v5 + 8), v11);
    return 0;
  }
}


// ===== 632a14 glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode(
        glitch::collada::particle_system::CWindForceSceneNode *this)
{
  *(_DWORD *)this = off_97AFB4;
  *((_DWORD *)this + 87) = off_97B0C0;
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::IReferenceCounted **)this, off_97AF6C);
  LC_API_FREE_0(this);
}


// ===== 632a68 `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode(
        glitch::collada::particle_system::CWindForceSceneNode *this)
{
  glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode((glitch::collada::particle_system::CWindForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 632a78 `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode(
        glitch::collada::particle_system::CWindForceSceneNode *this)
{
  glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode((glitch::collada::particle_system::CWindForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 632a88 glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode(
        glitch::collada::particle_system::CGravityForceSceneNode *this)
{
  *(_DWORD *)this = off_97B3EC;
  *((_DWORD *)this + 84) = off_97B4F8;
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::IReferenceCounted **)this, off_97B3A4);
  LC_API_FREE_0(this);
}


// ===== 632adc `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode(
        glitch::collada::particle_system::CGravityForceSceneNode *this)
{
  glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode((glitch::collada::particle_system::CGravityForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 632aec `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode(
        glitch::collada::particle_system::CGravityForceSceneNode *this)
{
  glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode((glitch::collada::particle_system::CGravityForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 632afc glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode() =====
void __fastcall glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode(
        glitch::collada::particle_system::CDeflectorForceSceneNode *this)
{
  *(_DWORD *)this = off_97A88C;
  *((_DWORD *)this + 88) = off_97A998;
  glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode((glitch::IReferenceCounted **)this, off_97A844);
  LC_API_FREE_0(this);
}


// ===== 632b50 `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode(
        glitch::collada::particle_system::CDeflectorForceSceneNode *this)
{
  glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode((glitch::collada::particle_system::CDeflectorForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 632b60 `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode(
        glitch::collada::particle_system::CDeflectorForceSceneNode *this)
{
  glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode((glitch::collada::particle_system::CDeflectorForceSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 632b70 glitch::ps::PWind::apply<glitch::ps::GNPSParticle>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::GNPSParticle>*) =====
float __fastcall glitch::ps::PWind::apply<glitch::ps::GNPSParticle>(float **a1, float *a2, float *a3, int a4)
{
  float *v4; // r4
  float result; // r0
  int v6; // r9
  float v7; // r6
  float v8; // r11
  float v9; // r5
  float *i; // r4
  float v11; // r3
  float v12; // r0
  float v13; // r8
  float v14; // r7
  float v15; // r10
  float v16; // r1
  float v17; // r0
  float v18; // r8
  float v19; // r0
  float v20; // r0
  float v21; // r8
  int v22; // r8
  int v23; // r7
  int v24; // [sp+0h] [bp-34h]
  float v26; // [sp+8h] [bp-2Ch]
  _BOOL4 v27; // [sp+Ch] [bp-28h]
  float v28; // [sp+10h] [bp-24h]
  float v29; // [sp+18h] [bp-1Ch]
  float v30; // [sp+24h] [bp-10h] BYREF
  float v31; // [sp+28h] [bp-Ch]
  float v32; // [sp+2Ch] [bp-8h]

  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v4 = *a1;
  result = (*a1)[1] * 1000.0;
  v26 = result;
  v6 = *((_DWORD *)v4 + 6);
  v7 = *v4;
  v8 = v4[2];
  v9 = *(float *)(a4 + 80);
  v28 = v4[3];
  v29 = v4[4];
  if ( a2 != a3 )
  {
    v27 = v4[3] > 0.0;
    for ( i = a2; a3 != i; i += 39 )
    {
      if ( v6 )
      {
        v18 = *(float *)(LODWORD(v7) + 52) - i[1];
        v19 = *(float *)(LODWORD(v7) + 56) - i[2];
        v30 = *(float *)(LODWORD(v7) + 48) - *i;
        v31 = v18;
        v32 = v19;
        v20 = sqrt((float)((float)((float)(v30 * v30) + (float)(v18 * v18)) + (float)(v19 * v19)));
        v21 = v20;
        if ( v20 != 0.0 )
        {
          v30 = v30 * (float)(1.0 / v20);
          v31 = v31 * (float)(1.0 / v20);
          v32 = v32 * (float)(1.0 / v20);
        }
        if ( v8 > 0.0 )
        {
          LODWORD(v17) = LODWORD(v8) + 0x80000000;
          v16 = v21;
          goto LABEL_11;
        }
      }
      else
      {
        v30 = *(float *)(LODWORD(v7) + 32);
        v31 = *(float *)(LODWORD(v7) + 36);
        v11 = *(float *)(LODWORD(v7) + 40);
        *(_BYTE *)(LODWORD(v7) + 64) = 0;
        v32 = v11;
        glitch::core::vector3d<float>::normalize(&v30);
        if ( v8 > 0.0 )
        {
          v16 = fabs(
                  (float)((float)((float)(*i - *(float *)(LODWORD(v7) + 48)) * v30)
                        + (float)((float)(i[1] - *(float *)(LODWORD(v7) + 52)) * v31))
                + (float)((float)(i[2] - *(float *)(LODWORD(v7) + 56)) * v32));
          LODWORD(v17) = LODWORD(v8) + 0x80000000;
LABEL_11:
          v12 = v26 * expf(v17 * v16);
          goto LABEL_6;
        }
      }
      v12 = v26;
LABEL_6:
      v13 = (float)(v12 * v9) * v30;
      v30 = v13;
      v14 = (float)(v12 * v9) * v31;
      v31 = v14;
      v15 = (float)(v12 * v9) * v32;
      v32 = v15;
      if ( v27 )
      {
        v22 = lrand48();
        v23 = lrand48();
        v24 = lrand48();
        v13 = (float)(v28 * (float)((float)(v29 * v9) * (float)((float)v22 * 4.6566e-10))) + v30;
        v30 = v13;
        v14 = (float)(v28 * (float)((float)(v29 * v9) * (float)((float)v23 * 4.6566e-10))) + v31;
        v31 = v14;
        v15 = (float)(v28 * (float)((float)(v29 * v9) * (float)((float)v24 * 4.6566e-10))) + v32;
        v32 = v15;
      }
      *i = *i + (float)(v9 * v13);
      i[1] = i[1] + (float)(v9 * v14);
      result = i[2] + (float)(v15 * v9);
      i[2] = result;
    }
  }
  return result;
}


// ===== 632f64 glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PWind>::apply(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*,glitch::ps::IParticleContext<glitch::ps::GNPSParticle> *) =====
float __fastcall glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PWind>::apply(
        int a1,
        float *a2,
        float *a3,
        int a4)
{
  return glitch::ps::PWind::apply<glitch::ps::GNPSParticle>((float **)(a1 + 12), a2, a3, a4);
}


// ===== 632f6c glitch::ps::PWind::apply<glitch::ps::SParticle>(glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::SParticle>*) =====
float __fastcall glitch::ps::PWind::apply<glitch::ps::SParticle>(float **a1, float *a2, float *a3, int a4)
{
  float *v4; // r4
  float result; // r0
  int v6; // r9
  float v7; // r6
  float v8; // r11
  float v9; // r5
  float *i; // r4
  float v11; // r3
  float v12; // r0
  float v13; // r8
  float v14; // r7
  float v15; // r10
  float v16; // r1
  float v17; // r0
  float v18; // r8
  float v19; // r0
  float v20; // r0
  float v21; // r8
  int v22; // r8
  int v23; // r7
  int v24; // [sp+0h] [bp-34h]
  float v26; // [sp+8h] [bp-2Ch]
  _BOOL4 v27; // [sp+Ch] [bp-28h]
  float v28; // [sp+10h] [bp-24h]
  float v29; // [sp+18h] [bp-1Ch]
  float v30; // [sp+24h] [bp-10h] BYREF
  float v31; // [sp+28h] [bp-Ch]
  float v32; // [sp+2Ch] [bp-8h]

  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v4 = *a1;
  result = (*a1)[1] * 1000.0;
  v26 = result;
  v6 = *((_DWORD *)v4 + 6);
  v7 = *v4;
  v8 = v4[2];
  v9 = *(float *)(a4 + 80);
  v28 = v4[3];
  v29 = v4[4];
  if ( a2 != a3 )
  {
    v27 = v4[3] > 0.0;
    for ( i = a2; a3 != i; i += 25 )
    {
      if ( v6 )
      {
        v18 = *(float *)(LODWORD(v7) + 52) - i[1];
        v19 = *(float *)(LODWORD(v7) + 56) - i[2];
        v30 = *(float *)(LODWORD(v7) + 48) - *i;
        v31 = v18;
        v32 = v19;
        v20 = sqrt((float)((float)((float)(v30 * v30) + (float)(v18 * v18)) + (float)(v19 * v19)));
        v21 = v20;
        if ( v20 != 0.0 )
        {
          v30 = v30 * (float)(1.0 / v20);
          v31 = v31 * (float)(1.0 / v20);
          v32 = v32 * (float)(1.0 / v20);
        }
        if ( v8 > 0.0 )
        {
          LODWORD(v17) = LODWORD(v8) + 0x80000000;
          v16 = v21;
          goto LABEL_11;
        }
      }
      else
      {
        v30 = *(float *)(LODWORD(v7) + 32);
        v31 = *(float *)(LODWORD(v7) + 36);
        v11 = *(float *)(LODWORD(v7) + 40);
        *(_BYTE *)(LODWORD(v7) + 64) = 0;
        v32 = v11;
        glitch::core::vector3d<float>::normalize(&v30);
        if ( v8 > 0.0 )
        {
          v16 = fabs(
                  (float)((float)((float)(*i - *(float *)(LODWORD(v7) + 48)) * v30)
                        + (float)((float)(i[1] - *(float *)(LODWORD(v7) + 52)) * v31))
                + (float)((float)(i[2] - *(float *)(LODWORD(v7) + 56)) * v32));
          LODWORD(v17) = LODWORD(v8) + 0x80000000;
LABEL_11:
          v12 = v26 * expf(v17 * v16);
          goto LABEL_6;
        }
      }
      v12 = v26;
LABEL_6:
      v13 = (float)(v12 * v9) * v30;
      v30 = v13;
      v14 = (float)(v12 * v9) * v31;
      v31 = v14;
      v15 = (float)(v12 * v9) * v32;
      v32 = v15;
      if ( v27 )
      {
        v22 = lrand48();
        v23 = lrand48();
        v24 = lrand48();
        v13 = (float)(v28 * (float)((float)(v29 * v9) * (float)((float)v22 * 4.6566e-10))) + v30;
        v30 = v13;
        v14 = (float)(v28 * (float)((float)(v29 * v9) * (float)((float)v23 * 4.6566e-10))) + v31;
        v31 = v14;
        v15 = (float)(v28 * (float)((float)(v29 * v9) * (float)((float)v24 * 4.6566e-10))) + v32;
        v32 = v15;
      }
      *i = *i + (float)(v9 * v13);
      i[1] = i[1] + (float)(v9 * v14);
      result = i[2] + (float)(v15 * v9);
      i[2] = result;
    }
  }
  return result;
}


// ===== 633360 glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PWind>::apply(glitch::ps::SParticle*,glitch::ps::SParticle*,glitch::ps::IParticleContext<glitch::ps::SParticle> *) =====
float __fastcall glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PWind>::apply(
        int a1,
        float *a2,
        float *a3,
        int a4)
{
  return glitch::ps::PWind::apply<glitch::ps::SParticle>((float **)(a1 + 12), a2, a3, a4);
}


// ===== 633368 glitch::ps::PGravity::apply<glitch::ps::GNPSParticle>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::GNPSParticle>*) =====
float __fastcall glitch::ps::PGravity::apply<glitch::ps::GNPSParticle>(float **a1, float *a2, float *a3, int a4)
{
  float *v4; // r5
  float result; // r0
  int v7; // r9
  float v8; // r6
  float v9; // r11
  float *i; // r5
  float v11; // r3
  float v12; // r0
  float v13; // r8
  float v14; // r7
  float v15; // r0
  float v16; // r1
  float v17; // r0
  float v18; // r8
  float v19; // r0
  float v20; // r0
  float v21; // r8
  float v22; // [sp+0h] [bp-24h]
  float v23; // [sp+4h] [bp-20h]
  float v24; // [sp+14h] [bp-10h] BYREF
  float v25; // [sp+18h] [bp-Ch]
  float v26; // [sp+1Ch] [bp-8h]

  v26 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v4 = *a1;
  result = (*a1)[1] * 1000.0;
  v23 = result;
  v7 = *((_DWORD *)v4 + 3);
  v22 = *(float *)(a4 + 80);
  v8 = *v4;
  v9 = v4[2];
  if ( a2 != a3 )
  {
    for ( i = a2; a3 != i; i += 39 )
    {
      if ( v7 )
      {
        v18 = *(float *)(LODWORD(v8) + 52) - i[1];
        v19 = *(float *)(LODWORD(v8) + 56) - i[2];
        v24 = *(float *)(LODWORD(v8) + 48) - *i;
        v25 = v18;
        v26 = v19;
        v20 = sqrt((float)((float)((float)(v24 * v24) + (float)(v18 * v18)) + (float)(v19 * v19)));
        v21 = v20;
        if ( v20 != 0.0 )
        {
          v24 = v24 * (float)(1.0 / v20);
          v25 = v25 * (float)(1.0 / v20);
          v26 = v26 * (float)(1.0 / v20);
        }
        if ( v9 > 0.0 )
        {
          LODWORD(v17) = LODWORD(v9) + 0x80000000;
          v16 = v21;
          goto LABEL_9;
        }
      }
      else
      {
        v24 = *(float *)(LODWORD(v8) + 32);
        v25 = *(float *)(LODWORD(v8) + 36);
        v11 = *(float *)(LODWORD(v8) + 40);
        *(_BYTE *)(LODWORD(v8) + 64) = 0;
        v26 = v11;
        glitch::core::vector3d<float>::normalize(&v24);
        if ( v9 > 0.0 )
        {
          v16 = fabs(
                  (float)((float)((float)(*i - *(float *)(LODWORD(v8) + 48)) * v24)
                        + (float)((float)(i[1] - *(float *)(LODWORD(v8) + 52)) * v25))
                + (float)((float)(i[2] - *(float *)(LODWORD(v8) + 56)) * v26));
          LODWORD(v17) = LODWORD(v9) + 0x80000000;
LABEL_9:
          v12 = v23 * expf(v17 * v16);
          goto LABEL_6;
        }
      }
      v12 = v23;
LABEL_6:
      v24 = (float)(v12 * v22) * v24;
      v25 = v25 * (float)(v12 * v22);
      v13 = v25;
      v14 = v26 * (float)(v12 * v22);
      v15 = i[3];
      v26 = v14;
      i[3] = v15 + v24;
      i[4] = i[4] + v13;
      result = i[5] + v14;
      i[5] = result;
    }
  }
  return result;
}


// ===== 63361c glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PGravity>::apply(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*,glitch::ps::IParticleContext<glitch::ps::GNPSParticle> *) =====
float __fastcall glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PGravity>::apply(
        int a1,
        float *a2,
        float *a3,
        int a4)
{
  return glitch::ps::PGravity::apply<glitch::ps::GNPSParticle>((float **)(a1 + 12), a2, a3, a4);
}


// ===== 633624 glitch::ps::PGravity::apply<glitch::ps::SParticle>(glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::SParticle>*) =====
float __fastcall glitch::ps::PGravity::apply<glitch::ps::SParticle>(float **a1, float *a2, float *a3, int a4)
{
  float *v4; // r5
  float result; // r0
  int v7; // r9
  float v8; // r6
  float v9; // r11
  float *i; // r5
  float v11; // r3
  float v12; // r0
  float v13; // r8
  float v14; // r7
  float v15; // r0
  float v16; // r1
  float v17; // r0
  float v18; // r8
  float v19; // r0
  float v20; // r0
  float v21; // r8
  float v22; // [sp+0h] [bp-24h]
  float v23; // [sp+4h] [bp-20h]
  float v24; // [sp+14h] [bp-10h] BYREF
  float v25; // [sp+18h] [bp-Ch]
  float v26; // [sp+1Ch] [bp-8h]

  v26 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v4 = *a1;
  result = (*a1)[1] * 1000.0;
  v23 = result;
  v7 = *((_DWORD *)v4 + 3);
  v22 = *(float *)(a4 + 80);
  v8 = *v4;
  v9 = v4[2];
  if ( a2 != a3 )
  {
    for ( i = a2; a3 != i; i += 25 )
    {
      if ( v7 )
      {
        v18 = *(float *)(LODWORD(v8) + 52) - i[1];
        v19 = *(float *)(LODWORD(v8) + 56) - i[2];
        v24 = *(float *)(LODWORD(v8) + 48) - *i;
        v25 = v18;
        v26 = v19;
        v20 = sqrt((float)((float)((float)(v24 * v24) + (float)(v18 * v18)) + (float)(v19 * v19)));
        v21 = v20;
        if ( v20 != 0.0 )
        {
          v24 = v24 * (float)(1.0 / v20);
          v25 = v25 * (float)(1.0 / v20);
          v26 = v26 * (float)(1.0 / v20);
        }
        if ( v9 > 0.0 )
        {
          LODWORD(v17) = LODWORD(v9) + 0x80000000;
          v16 = v21;
          goto LABEL_9;
        }
      }
      else
      {
        v24 = *(float *)(LODWORD(v8) + 32);
        v25 = *(float *)(LODWORD(v8) + 36);
        v11 = *(float *)(LODWORD(v8) + 40);
        *(_BYTE *)(LODWORD(v8) + 64) = 0;
        v26 = v11;
        glitch::core::vector3d<float>::normalize(&v24);
        if ( v9 > 0.0 )
        {
          v16 = fabs(
                  (float)((float)((float)(*i - *(float *)(LODWORD(v8) + 48)) * v24)
                        + (float)((float)(i[1] - *(float *)(LODWORD(v8) + 52)) * v25))
                + (float)((float)(i[2] - *(float *)(LODWORD(v8) + 56)) * v26));
          LODWORD(v17) = LODWORD(v9) + 0x80000000;
LABEL_9:
          v12 = v23 * expf(v17 * v16);
          goto LABEL_6;
        }
      }
      v12 = v23;
LABEL_6:
      v24 = (float)(v12 * v22) * v24;
      v25 = v25 * (float)(v12 * v22);
      v13 = v25;
      v14 = v26 * (float)(v12 * v22);
      v15 = i[3];
      v26 = v14;
      i[3] = v15 + v24;
      i[4] = i[4] + v13;
      result = i[5] + v14;
      i[5] = result;
    }
  }
  return result;
}


// ===== 6338d8 glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PGravity>::apply(glitch::ps::SParticle*,glitch::ps::SParticle*,glitch::ps::IParticleContext<glitch::ps::SParticle> *) =====
float __fastcall glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PGravity>::apply(
        int a1,
        float *a2,
        float *a3,
        int a4)
{
  return glitch::ps::PGravity::apply<glitch::ps::SParticle>((float **)(a1 + 12), a2, a3, a4);
}


// ===== 6338e0 glitch::ps::PDeflector::apply<glitch::ps::SParticle>(glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::SParticle>*) =====
void *__fastcall glitch::ps::PDeflector::apply<glitch::ps::SParticle>(int a1, float *a2, float *a3, float *a4)
{
  float v4; // r12
  int v5; // r8
  int v6; // r10
  float v7; // r9
  float v8; // lr
  float v9; // r7
  float v11; // r1
  float v12; // r0
  float v13; // r0
  int v14; // r3
  int v15; // r2
  int v16; // r12
  float v17; // r12
  float i; // r5
  float v19; // r7
  float v20; // r6
  float v21; // r10
  float v22; // r6
  float v23; // r11
  float v24; // r8
  float v25; // r7
  float v26; // r10
  float v28; // r9
  float v29; // r0
  float FrictionCoefficient; // r0
  float v31; // r11
  float v32; // r6
  float v33; // r7
  float v34; // r6
  float v35; // r7
  float v36; // r1
  float v37; // r2
  float v38; // r3
  float v39; // r0
  float v40; // r0
  float v41; // r0
  float v42; // r0
  float v43; // [sp+8h] [bp-F4h]
  float v44; // [sp+Ch] [bp-F0h]
  float v45; // [sp+14h] [bp-E8h]
  float v46; // [sp+14h] [bp-E8h]
  float v47; // [sp+14h] [bp-E8h]
  float v48; // [sp+14h] [bp-E8h]
  float *v50; // [sp+1Ch] [bp-E0h]
  float v52; // [sp+24h] [bp-D8h]
  float v53; // [sp+28h] [bp-D4h]
  float v54; // [sp+28h] [bp-D4h]
  float v55; // [sp+2Ch] [bp-D0h]
  float v56; // [sp+30h] [bp-CCh]
  float v57; // [sp+34h] [bp-C8h]
  float v58; // [sp+38h] [bp-C4h]
  float v59; // [sp+3Ch] [bp-C0h]
  float v60; // [sp+40h] [bp-BCh]
  float v61; // [sp+44h] [bp-B8h]
  float v62; // [sp+48h] [bp-B4h]
  float v63; // [sp+4Ch] [bp-B0h]
  float v64; // [sp+50h] [bp-ACh]
  float v66; // [sp+58h] [bp-A4h]
  float v67; // [sp+5Ch] [bp-A0h]
  float v68; // [sp+60h] [bp-9Ch]
  float v69; // [sp+64h] [bp-98h]
  float v70; // [sp+68h] [bp-94h]
  float v71; // [sp+6Ch] [bp-90h]
  float v72; // [sp+70h] [bp-8Ch]
  float v73; // [sp+74h] [bp-88h]
  float v74; // [sp+78h] [bp-84h]
  float v75; // [sp+7Ch] [bp-80h]
  float v76; // [sp+80h] [bp-7Ch]
  float v77; // [sp+84h] [bp-78h]
  float v78; // [sp+88h] [bp-74h]
  float v79; // [sp+8Ch] [bp-70h]
  float v80; // [sp+90h] [bp-6Ch]
  float v81; // [sp+A4h] [bp-58h]
  float v82; // [sp+A8h] [bp-54h]
  float v83; // [sp+ACh] [bp-50h]
  glitch::ps::PSRandom *v84; // [sp+B0h] [bp-4Ch]
  float v85; // [sp+B4h] [bp-48h]
  float v86[3]; // [sp+BCh] [bp-40h] BYREF
  _DWORD v87[3]; // [sp+C8h] [bp-34h] BYREF
  float v88[3]; // [sp+D4h] [bp-28h] BYREF
  float v89; // [sp+E0h] [bp-1Ch] BYREF
  float v90; // [sp+E4h] [bp-18h]
  float v91; // [sp+E8h] [bp-14h]
  float v92; // [sp+ECh] [bp-10h] BYREF
  float v93; // [sp+F0h] [bp-Ch]
  float v94; // [sp+F4h] [bp-8h]

  v50 = **(float ***)a1;
  v68 = *(float *)(*(_DWORD *)a1 + 20);
  v66 = *(float *)(*(_DWORD *)a1 + 4);
  v4 = v50[9];
  v5 = *((_DWORD *)v50 + 5);
  v6 = *((_DWORD *)v50 + 6);
  v7 = v50[8];
  v8 = v50[10];
  LODWORD(v60) = *((_DWORD *)v50 + 4) + 0x80000000;
  v9 = *(float *)(*(_DWORD *)a1 + 8);
  v70 = *(float *)(*(_DWORD *)a1 + 12);
  v71 = *(float *)(*(_DWORD *)a1 + 16);
  *((_BYTE *)v50 + 64) = 0;
  LODWORD(v59) = v5 + 0x80000000;
  LODWORD(v58) = v6 + 0x80000000;
  v63 = *v50;
  v62 = v50[1];
  v61 = v50[2];
  v55 = v50[12];
  v56 = v50[13];
  v11 = v50[14];
  v94 = v8;
  v93 = v4;
  v57 = v11;
  v92 = v7;
  glitch::core::vector3d<float>::normalize(&v92);
  v12 = sqrt((float)((float)((float)(v60 * v60) + (float)(v59 * v59)) + (float)(v58 * v58)));
  v64 = (float)(v12 * *(float *)(*(_DWORD *)a1 + 28)) * 0.5;
  v13 = sqrt((float)((float)((float)(v63 * v63) + (float)(v62 * v62)) + (float)(v61 * v61)));
  v67 = (float)(v13 * *(float *)(*(_DWORD *)a1 + 24)) * 0.5;
  v14 = *(_DWORD *)(a1 + 20);
  v15 = *(_DWORD *)(a1 + 24);
  v16 = *(_DWORD *)(a1 + 28);
  *(_BYTE *)(a1 + 68) = 0;
  LODWORD(v80) = v14 + 0x80000000;
  LODWORD(v79) = v15 + 0x80000000;
  LODWORD(v78) = v16 + 0x80000000;
  v69 = v66 * v9;
  v17 = *(float *)(a1 + 52);
  v89 = 0.0;
  v72 = v17;
  v90 = 0.0;
  v91 = 0.0;
  v73 = *(float *)(a1 + 56);
  v74 = *(float *)(a1 + 60);
  v77 = *(float *)(a1 + 4);
  v76 = *(float *)(a1 + 8);
  v75 = *(float *)(a1 + 12);
  for ( i = a4[20]; a3 != a2; a2 += 25 )
  {
    v19 = a2[4];
    v20 = a2[5];
    v89 = a2[3];
    v90 = v19;
    v91 = v20;
    v21 = i * v20;
    v45 = (float)((float)((float)(i * v89) * v92) + (float)((float)(i * v19) * v93)) + (float)((float)(i * v20) * v94);
    if ( v45 != 0.0 )
    {
      v53 = a2[1];
      v22 = (float)((float)((float)(v92 * (float)(v55 - *a2)) + (float)(v93 * (float)(v56 - v53)))
                  + (float)(v94 * (float)(v57 - a2[2])))
          / v45;
      if ( v22 > 0.0 && v22 <= 1.0 )
      {
        v23 = (float)(*a2 + (float)(v22 * (float)(i * v89))) - v55;
        v24 = (float)(v53 + (float)(v22 * (float)(i * v19))) - v56;
        v25 = (float)(a2[2] + (float)(v22 * v21)) - v57;
        v26 = (float)((float)((float)(v60 * v23) + (float)(v59 * v24)) + (float)(v58 * v25)) / v64;
        if ( v26 <= 1.0 && v26 >= -1.0 )
        {
          v28 = (float)((float)((float)(v63 * v23) + (float)(v62 * v24)) + (float)(v61 * v25)) / v67;
          if ( v28 <= 1.0 && v28 >= -1.0 )
          {
            v84 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(float *))(*(_DWORD *)a4 + 24))(a4);
            if ( v69 == 0.0 )
            {
              v85 = 0.0;
            }
            else
            {
              v42 = glitch::ps::PSRandom::Rand(v84);
              v85 = (float)(v69 * v42) + (float)(v69 * -0.5);
            }
            v52 = v93;
            v44 = v92;
            v54 = v94;
            LODWORD(v46) = COERCE_INT((float)((float)(v92 * v89) + (float)(v93 * v90)) + (float)(v94 * v91))
                         + 0x80000000;
            v83 = v89 + (float)(v46 * v92);
            v81 = v90 + (float)(v46 * v93);
            v82 = v91 + (float)(v46 * v94);
            v47 = v46 * (float)(v85 + v66);
            v29 = sqrt((float)((float)((float)(v83 * v83) + (float)(v81 * v81)) + (float)(v82 * v82)));
            FrictionCoefficient = glitch::ps::PDeflector::GetFrictionCoefficient(
                                    (glitch::ps::PDeflector *)a1,
                                    v71,
                                    v47,
                                    v29,
                                    (float)(1.0 - v22) * i);
            v89 = (float)(v47 * v44) + (float)(FrictionCoefficient * v83);
            v90 = (float)(v47 * v52) + (float)(FrictionCoefficient * v81);
            v91 = (float)(v47 * v54) + (float)(FrictionCoefficient * v82);
            if ( v70 > 0.0 )
            {
              v48 = (float)(v70 * 180.0) * -0.5;
              v39 = glitch::ps::PSRandom::Rand(v84);
              memset(v88, 0, sizeof(v88));
              glitch::core::vector3d<float>::rotateXYBy(&v89, (float)((float)((float)(v70 * 180.0) * v39) + v48), v88);
              v40 = glitch::ps::PSRandom::Rand(v84);
              memset(v87, 0, sizeof(v87));
              glitch::core::vector3d<float>::rotateYZBy(
                (int)&v89,
                (float)(v48 + (float)((float)(v70 * 180.0) * v40)),
                (int)v87);
              v41 = glitch::ps::PSRandom::Rand(v84);
              memset(v86, 0, sizeof(v86));
              glitch::core::vector3d<float>::rotateXZBy(&v89, (float)(v48 + (float)((float)(v70 * 180.0) * v41)), v86);
              v43 = (float)((float)(v92 * v89) + (float)(v93 * v90)) + (float)(v94 * v91);
              if ( v43 < 0.0 )
              {
                v89 = v89 + (float)((float)(v43 * -2.0) * v92);
                v90 = v90 + (float)((float)(v43 * -2.0) * v93);
                v91 = v91 + (float)((float)(v43 * -2.0) * v94);
              }
            }
            v31 = v55 + v23;
            v32 = v56 + v24;
            v33 = v57 + v25;
            if ( v68 > 0.0 )
            {
              v89 = v89
                  + (float)(v68
                          * (float)(v31
                                  - (float)((float)(v72 + (float)(v80 * (float)(v26 * v64)))
                                          + (float)(v77 * (float)(v28 * v67)))));
              v90 = v90
                  + (float)(v68
                          * (float)(v32
                                  - (float)((float)(v73 + (float)(v79 * (float)(v26 * v64)))
                                          + (float)(v76 * (float)(v28 * v67)))));
              v91 = v91
                  + (float)(v68
                          * (float)(v33
                                  - (float)((float)(v74 + (float)(v78 * (float)(v26 * v64)))
                                          + (float)(v75 * (float)(v28 * v67)))));
            }
            v34 = v32 + (float)(v93 * 0.3);
            v35 = v33 + (float)(v94 * 0.3);
            v36 = v89;
            v37 = v90;
            v38 = v91;
            *a2 = v31 + (float)(v92 * 0.3);
            a2[1] = v34;
            a2[2] = v35;
            a2[3] = v36;
            a2[4] = v37;
            a2[5] = v38;
          }
        }
      }
    }
  }
  return memcpy((void *)(a1 + 4), v50, 0x41u);
}


// ===== 634518 glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PDeflector>::apply(glitch::ps::SParticle*,glitch::ps::SParticle*,glitch::ps::IParticleContext<glitch::ps::SParticle> *) =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::SParticle,glitch::ps::PDeflector>::apply(
        int a1,
        float *a2,
        float *a3,
        float *a4)
{
  return glitch::ps::PDeflector::apply<glitch::ps::SParticle>(a1 + 12, a2, a3, a4);
}


// ===== 634520 glitch::collada::CColladaFactory::createMaterialVertexAttributeMap(glitch::collada::CColladaDatabase const&,glitch::collada::SInstanceMaterial *,boost::intrusive_ptr<glitch::collada::IMesh> const&,boost::intrusive_ptr<glitch::video::CMaterial> const&,uint,bool) =====
_DWORD *__fastcall glitch::collada::CColladaFactory::createMaterialVertexAttributeMap(
        _DWORD *a1,
        int a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6,
        int a7,
        unsigned __int8 a8)
{
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  int v11; // r2
  glitch::video::CMaterialRenderer *v12; // r3
  __int16 v13; // r0
  int *v14; // r7
  glitch::video::CMaterialVertexAttributeMap *v15; // r2
  glitch::video::CMaterialVertexAttributeMap *v16; // r3
  glitch::video::CMaterialVertexAttributeMap *v17; // r3
  glitch::IReferenceCounted *v18; // r0
  int v19; // r6
  _DWORD **v20; // r2
  char *TechniqueID; // r10
  int v22; // r9
  int v23; // r5
  int v24; // r4
  _DWORD *v25; // r11
  _DWORD *v26; // r0
  int v27; // r3
  _DWORD *v28; // r0
  bool v29; // zf
  glitch::video::CMaterialRenderer *v30; // r3
  int v31; // r6
  _DWORD *v32; // r1
  int v33; // r9
  int v34; // r8
  int v35; // r3
  int v36; // r7
  int v37; // r5
  int v38; // r4
  glitch::video::CMaterialVertexAttributeMap *v39; // r0
  int v40; // r2
  glitch::video::CMaterialVertexAttributeMap *v41; // r3
  _DWORD *v43; // r0
  glitch::video::CMaterialVertexAttributeMap *v44; // r2
  _DWORD *v45; // [sp+8h] [bp-44h]
  int v46; // [sp+10h] [bp-3Ch]
  int v47; // [sp+14h] [bp-38h]
  glitch::video::CMaterialVertexAttributeMap *v49; // [sp+24h] [bp-28h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v50; // [sp+28h] [bp-24h] BYREF
  _DWORD *v51; // [sp+2Ch] [bp-20h] BYREF
  _DWORD *v52; // [sp+30h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v53; // [sp+34h] [bp-18h] BYREF
  glitch::video::CVertexStreams *v54; // [sp+38h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v55; // [sp+3Ch] [bp-10h] BYREF
  glitch::video::CMaterialRenderer *v56; // [sp+40h] [bp-Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v57; // [sp+44h] [bp-8h] BYREF

  v9 = *(glitch::video::CMaterialVertexAttributeMap **)(a4 + 52);
  v57 = v9;
  if ( v9 )
    a2 = *(_DWORD *)v9;
  v11 = a8;
  if ( v9 )
  {
    *(_DWORD *)v9 = ++a2;
    v9 = *(glitch::video::CMaterialVertexAttributeMap **)(a4 + 52);
  }
  if ( !v9 || a8 )
  {
    v56 = *(glitch::video::CMaterialRenderer **)(*(_DWORD *)a6 + 4);
    v12 = v56;
    if ( v56 )
    {
      v11 = *(_DWORD *)v56 + 1;
      *(_DWORD *)v56 = v11;
      v12 = v56;
    }
    v13 = (*(int (__fastcall **)(_DWORD, int, int))(**((_DWORD **)v12 + 1) + 92))(*((_DWORD *)v12 + 1), a2, v11);
    if ( (v13 & 7) != 0 )
    {
      v14 = (int *)(a4 + 28);
    }
    else if ( (v13 & 0x18) != 0 )
    {
      v14 = (int *)(a4 + 36);
    }
    else if ( (v13 & 0x60) != 0 )
    {
      v14 = (int *)(a4 + 20);
    }
    else
    {
      if ( (v13 & 0x300) == 0 )
      {
        *a1 = 0;
        boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v56);
        goto LABEL_55;
      }
      v14 = (int *)(a4 + 44);
    }
    glitch::video::CMaterialVertexAttributeMap::allocate((int **)&v55, &v56);
    v15 = v55;
    v50 = v55;
    if ( v55 )
    {
      ++*(_DWORD *)v55;
      v15 = v50;
    }
    v16 = v57;
    v57 = v15;
    v50 = v16;
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v50);
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v55);
    v17 = *(glitch::video::CMaterialVertexAttributeMap **)(a4 + 52);
    if ( !v17 )
    {
      v49 = v57;
      if ( v57 )
      {
        ++*(_DWORD *)v57;
        v17 = *(glitch::video::CMaterialVertexAttributeMap **)(a4 + 52);
      }
      v44 = v49;
      v49 = v17;
      *(_DWORD *)(a4 + 52) = v44;
      boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v49);
      glitch::collada::CColladaDatabase::linkInstanceMaterial(a3, a4);
    }
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(*(_DWORD *)*a5 + 20))(&v53, *a5, a7);
    v18 = v53;
    v54 = *((glitch::video::CVertexStreams **)v53 + 5);
    if ( v54 )
    {
      ++*(_DWORD *)v54;
      v18 = v53;
    }
    if ( v18 )
      glitch::IReferenceCounted::drop(v18);
    v47 = *v14;
    if ( *v14 > 0 )
    {
      v19 = 0;
      v20 = &v52;
      v46 = 0;
      do
      {
        TechniqueID = glitch::video::CMaterialRenderer::getTechniqueID(
                        v56,
                        *(glitch::core::detail::SSharedStringHeapEntry::SData **)(v14[1] + v19),
                        (bool)v20);
        if ( TechniqueID != (_BYTE *)&elf_hash_bucket[8] + 3 )
        {
          v22 = *(_DWORD *)(v14[1] + v19 + 4);
          if ( v22 > 0 )
          {
            v23 = 0;
            v24 = 0;
            do
            {
              v25 = operator new(0x24u, 0);
              v26 = glitch::video::CVertexAttributeMap::CVertexAttributeMap(v25, (int *)&v54);
              v52 = v25;
              if ( v25 )
                v27 = *v25;
              else
                v26 = nullptr;
              if ( v25 )
              {
                *v25 = v27 + 1;
                v26 = v52;
              }
              glitch::video::CVertexAttributeMap::set(
                (int)v26,
                (int *)&v54,
                *(_DWORD *)(*(_DWORD *)(v14[1] + v19 + 8) + v23 + 4),
                *(unsigned __int8 **)(*(_DWORD *)(v14[1] + v19 + 8) + v23 + 8),
                0);
              glitch::video::CMaterialVertexAttributeMap::set((int)v57, (int)TechniqueID, (unsigned __int8)v24++, &v52);
              v23 += 12;
              v28 = v52;
              if ( v52 )
              {
                v29 = (*v52)-- == 1;
                if ( v29 )
                  LC_API_FREE_0(v28);
              }
            }
            while ( v24 != v22 );
          }
        }
        v19 += 12;
        LOBYTE(v20) = ++v46;
      }
      while ( v46 != v47 );
    }
    v30 = v56;
    v31 = 0;
    v51 = nullptr;
    if ( *((_BYTE *)v56 + 16) )
    {
      v32 = nullptr;
      v33 = 0;
      v34 = *((unsigned __int8 *)v56 + 16);
      while ( 1 )
      {
        v35 = *((_DWORD *)v30 + 6) + v31;
        v36 = *(unsigned __int8 *)(v35 + 4);
        if ( *(_BYTE *)(v35 + 4) )
        {
          v37 = 0;
          v38 = 0;
          while ( 1 )
          {
            v39 = v57;
            if ( *((_DWORD *)v57
                 + 82595525
                 * ((*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v57 + 1) + 24) + v31 + 8)
                   + v37
                   - *(_DWORD *)(*((_DWORD *)v57 + 1) + 28)) >> 2)
                 + 2) )
            {
              v38 = (unsigned __int8)(v38 + 1);
              v37 += 52;
              if ( v38 == v36 )
                break;
            }
            else
            {
              if ( !v32 )
              {
                v45 = operator new(0x24u, 0);
                glitch::video::CVertexAttributeMap::CVertexAttributeMap(v45, (int *)&v54);
                if ( v45 )
                  ++*v45;
                v43 = v51;
                v51 = v45;
                if ( v43 )
                {
                  v29 = (*v43)-- == 1;
                  if ( v29 )
                    LC_API_FREE_0(v43);
                }
                v39 = v57;
              }
              v40 = v38;
              v38 = (unsigned __int8)(v38 + 1);
              glitch::video::CMaterialVertexAttributeMap::set((int)v39, v33, v40, &v51);
              v32 = v51;
              v37 += 52;
              if ( v38 == v36 )
                break;
            }
            v32 = v51;
          }
        }
        v33 = (unsigned __int8)(v33 + 1);
        v31 += 12;
        if ( v33 == v34 )
          break;
        v30 = v56;
        v32 = v51;
      }
      if ( v32 )
      {
        v29 = (*v32)-- == 1;
        if ( v29 )
          LC_API_FREE_0(v32);
      }
    }
    boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v54);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v56);
  }
  v41 = v57;
  v29 = v57 == nullptr;
  *a1 = v57;
  if ( !v29 )
    ++*(_DWORD *)v41;
LABEL_55:
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v57);
  return a1;
}


// ===== 6349a0 glitch::ps::PDeflector::PDeflector(glitch::ps::PDeflector::Parameters &) =====
int __fastcall glitch::ps::PDeflector::PDeflector(int a1, int a2)
{
  void *v2; // r5
  const void **v4; // r3

  v2 = (void *)(a1 + 4);
  *(_DWORD *)a1 = a2;
  *(_BYTE *)(a1 + 68) = 0;
  LC_API_MEMSET_0((void *)(a1 + 4), 0, 0x40u);
  v4 = *(const void ***)a1;
  *(_DWORD *)(a1 + 64) = 1065353216;
  *(_DWORD *)(a1 + 4) = 1065353216;
  *(_DWORD *)(a1 + 24) = 1065353216;
  *(_DWORD *)(a1 + 44) = 1065353216;
  *(_BYTE *)(a1 + 68) = 1;
  memcpy(v2, *v4, 0x41u);
  return a1;
}


// ===== 634a00 glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PDeflector>(glitch::ps::PDeflector::parameters_type &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PDeflector>(
        _DWORD *a1,
        int a2)
{
  int v3; // r8
  int v4; // r2
  char *v5; // r8
  int (__fastcall *v6)(char *, _DWORD *); // r7
  _DWORD *v7; // r4

  v3 = *(_DWORD *)(*a1 - 12);
  v4 = *(_DWORD *)((char *)a1 + v3);
  v5 = (char *)a1 + v3;
  v6 = *(int (__fastcall **)(char *, _DWORD *))(v4 + 88);
  v7 = operator new(0x54u, 0);
  v7[2] = 1;
  *v7 = off_97AF28;
  v7[1] = a2;
  glitch::ps::PDeflector::PDeflector((int)(v7 + 3), a2);
  *v7 = off_97AF10;
  return v6(v5, v7);
}


// ===== 634a88 glitch::collada::particle_system::CDeflectorForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode *) =====
int __fastcall glitch::collada::particle_system::CDeflectorForceSceneNode::bind(int a1, int a2)
{
  return glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::bindForce<glitch::ps::PDeflector>(
           *(_DWORD **)(a2 + 376),
           a1 + 320);
}


// ===== 634a98 glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PDeflector>(glitch::ps::PDeflector::parameters_type &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PDeflector>(
        _DWORD *a1,
        int a2)
{
  int v3; // r8
  int v4; // r2
  char *v5; // r8
  int (__fastcall *v6)(char *, _DWORD *); // r7
  _DWORD *v7; // r4

  v3 = *(_DWORD *)(*a1 - 12);
  v4 = *(_DWORD *)((char *)a1 + v3);
  v5 = (char *)a1 + v3;
  v6 = *(int (__fastcall **)(char *, _DWORD *))(v4 + 88);
  v7 = operator new(0x54u, 0);
  v7[2] = 1;
  *v7 = off_97AF58;
  v7[1] = a2;
  glitch::ps::PDeflector::PDeflector((int)(v7 + 3), a2);
  *v7 = off_97AF40;
  return v6(v5, v7);
}


// ===== 634b20 glitch::collada::particle_system::CDeflectorForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode *) =====
int __fastcall glitch::collada::particle_system::CDeflectorForceSceneNode::bind(int a1, int a2)
{
  return glitch::ps::IParticleSystem<glitch::ps::SParticle>::bindForce<glitch::ps::PDeflector>(
           *(_DWORD **)(a2 + 376),
           a1 + 320);
}


// ===== 634b30 glitch::collada::SProfileGLES2Traits::createShader(glitch::video::IShaderManager *,glitch::collada::SPass<glitch::collada::SRenderStatesProgrammable> &) =====
glitch::video::CGLSLShaderManager *__fastcall glitch::collada::SProfileGLES2Traits::createShader(
        glitch::video::CGLSLShaderManager *a1,
        const char *a2,
        char **a3)
{
  char *v6; // r11
  size_t v7; // r0
  char *v8; // r11
  size_t v9; // r0
  char *v10; // r11
  size_t v11; // r0
  char *v12; // r11
  size_t v13; // r0
  _DWORD v15[4]; // [sp+1Ch] [bp-20h] BYREF
  _BYTE *v16; // [sp+2Ch] [bp-10h]
  void *p; // [sp+30h] [bp-Ch]

  v16 = v15;
  p = v15;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v15,
    0x10u);
  *v16 = 0;
  v6 = a3[1];
  v7 = LC_API_STRLEN_0(v6);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v15,
    v6,
    &v6[v7]);
  v8 = a3[3];
  v9 = LC_API_STRLEN_0(v8);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v15,
    v8,
    &v8[v9]);
  v10 = a3[4];
  v11 = LC_API_STRLEN_0(v10);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v15,
    v10,
    &v10[v11]);
  v12 = a3[6];
  v13 = LC_API_STRLEN_0(v12);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v15,
    v12,
    &v12[v13]);
  glitch::video::CGLSLShaderManager::createShader(
    a1,
    a2,
    (const char *)p,
    a3[1],
    a3[3],
    a3[4],
    (glitch::io::IReadFile *)a3[6],
    nullptr);
  if ( p != v15 && p )
    GlitchFree(p);
  return a1;
}


// ===== 634c64 glitch::collada::CColladaFactory::createParticleSystem(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SEmitter *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
_DWORD *__fastcall glitch::collada::CColladaFactory::createParticleSystem(
        int a1,
        glitch::video::IVideoDriver *a2,
        char *a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r4
  int v10; // r3
  _DWORD *v11; // r3
  int v12; // r5
  int v13; // r2
  _DWORD *v14; // r0
  int v15; // lr
  _DWORD *v16; // r3
  _DWORD *v17; // r0
  int v18; // lr
  glitch::IReferenceCounted *v20; // r5
  glitch::IReferenceCounted *v21; // r6
  void (__fastcall *v22)(_DWORD *, glitch::IReferenceCounted **); // r3
  void (__fastcall *v23)(_DWORD *, glitch::IReferenceCounted **); // r3
  glitch::IReferenceCounted *v24; // r0
  void (__fastcall *v25)(_DWORD *, glitch::IReferenceCounted **); // r3
  glitch::IReferenceCounted *v26; // r8
  int v27; // r2
  unsigned int v28; // r5
  glitch::IReferenceCounted *v29; // r10
  void *v30; // r0
  _DWORD *v31; // r3
  _DWORD *v32; // r1
  _DWORD *v33; // r1
  _DWORD *v34; // r1
  _DWORD *v35; // r1
  _DWORD *v36; // r1
  _DWORD *v37; // r1
  _DWORD *v38; // r0
  _DWORD *v39; // r0
  _DWORD *v40; // r0
  _DWORD *v41; // r0
  _DWORD *v42; // r0
  _DWORD *v43; // r0
  _DWORD *v44; // r0
  _DWORD *v45; // r0
  _DWORD *v46; // r0
  _DWORD *v47; // r0
  _DWORD *v48; // r0
  _DWORD *v49; // r0
  _DWORD *v50; // r0
  _DWORD *v51; // r0
  _DWORD *v52; // r0
  _DWORD *v53; // r0
  _DWORD *v54; // r0
  _DWORD *v55; // r3
  _DWORD *v56; // lr
  _DWORD *v57; // lr
  _DWORD *v58; // lr
  _DWORD *v59; // lr
  _DWORD *v60; // lr
  _DWORD *v61; // lr
  _DWORD *v62; // lr
  _DWORD *v63; // lr
  _DWORD *v64; // lr
  _DWORD *v65; // lr
  _DWORD *v66; // lr
  _DWORD *v67; // lr
  _DWORD *v68; // lr
  _DWORD *v69; // lr
  _DWORD *v70; // lr
  _DWORD *v71; // lr
  _DWORD *v72; // lr
  _DWORD *v73; // lr
  _DWORD *v74; // lr
  _DWORD *v75; // r12
  _DWORD *v76; // r12
  _DWORD *v77; // r12
  _DWORD *v78; // r12
  void (__fastcall *v79)(_DWORD *, glitch::IReferenceCounted **); // r3
  _BYTE *v80; // r3
  _DWORD *v81; // r0
  int v82; // lr
  int v83; // [sp+14h] [bp-58h]
  int v84; // [sp+1Ch] [bp-50h]
  _DWORD v85[3]; // [sp+24h] [bp-48h] BYREF
  _DWORD v86[3]; // [sp+30h] [bp-3Ch] BYREF
  _DWORD v87[3]; // [sp+3Ch] [bp-30h] BYREF
  glitch::IReferenceCounted *v88; // [sp+48h] [bp-24h] BYREF
  glitch::IReferenceCounted *v89; // [sp+4Ch] [bp-20h] BYREF
  glitch::IReferenceCounted *v90; // [sp+50h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v91; // [sp+54h] [bp-18h] BYREF
  glitch::IReferenceCounted *v92; // [sp+58h] [bp-14h] BYREF
  glitch::IReferenceCounted *v93; // [sp+5Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v94; // [sp+60h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v95; // [sp+64h] [bp-8h] BYREF

  v9 = (_DWORD *)operator new(408, 0);
  glitch::collada::CParticleSystemSceneNode::CParticleSystemSceneNode(v9, a2, a4, a5, a6);
  v10 = *(_DWORD *)(a4 + 80);
  if ( v10 )
  {
    if ( v10 == 2 )
    {
      glitch::collada::CColladaDatabase::constructGeometry((glitch::collada::CColladaDatabase *)&v90, a2, a3);
      v20 = v90;
      if ( v90 )
      {
        v21 = v90;
        ++*((_DWORD *)v90 + 1);
        if ( v90 )
          glitch::IReferenceCounted::drop(v90);
      }
      else
      {
        v21 = nullptr;
      }
      (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v20 + 20))(
        &v89,
        v20,
        0);
      (*(void (__fastcall **)(_DWORD *, char *, _DWORD))(*v9 + 244))(v9, a3, 0);
      v22 = *(void (__fastcall **)(_DWORD *, glitch::IReferenceCounted **))(*v9 + 256);
      v88 = v89;
      if ( v89 )
        ++*((_DWORD *)v89 + 1);
      v22(v9, &v88);
      if ( v88 )
        glitch::IReferenceCounted::drop(v88);
      if ( v89 )
        glitch::IReferenceCounted::drop(v89);
LABEL_23:
      glitch::IReferenceCounted::drop(v21);
    }
  }
  else
  {
    switch ( **(_DWORD **)(a4 + 84) )
    {
      case 1:
        glitch::scene::createCubeMesh((glitch::scene *)&v89, 0x60003u, (glitch::video::IVideoDriver *)a3, 1.0);
        (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v89 + 20))(
          &v92,
          v89,
          0);
        (*(void (__fastcall **)(_DWORD *, char *, _DWORD))(*v9 + 244))(v9, a3, 0);
        v25 = *(void (__fastcall **)(_DWORD *, glitch::IReferenceCounted **))(*v9 + 256);
        v95 = v92;
        if ( v92 )
          ++*((_DWORD *)v92 + 1);
        v25(v9, &v95);
        if ( v95 )
          glitch::IReferenceCounted::drop(v95);
        if ( v92 )
          glitch::IReferenceCounted::drop(v92);
        v24 = v89;
        if ( v89 )
          goto LABEL_31;
        return v9;
      case 2:
        (*(void (__fastcall **)(glitch::IReferenceCounted **, char *, int, int, int, void *, _DWORD))(*(_DWORD *)a3 + 120))(
          &v94,
          a3,
          1,
          4,
          72,
          &glitch::collada::CColladaFactory::createParticleSystem(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SEmitter *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *)::indices,
          0);
        v26 = v94;
        if ( v94 )
          ++*((_DWORD *)v94 + 1);
        v21 = (glitch::IReferenceCounted *)operator new(56, 0);
        *((_DWORD *)v21 + 4) = 0;
        *((_DWORD *)v21 + 1) = 0;
        *((_DWORD *)v21 + 2) = 0;
        *((_DWORD *)v21 + 3) = 0;
        *(_DWORD *)v21 = off_988098;
        glitch::video::CVertexStreams::allocate((glitch::IReferenceCounted *)((char *)v21 + 20), 0x60003u);
        *((_DWORD *)v21 + 6) = v26;
        if ( v26 )
          ++*((_DWORD *)v26 + 1);
        v27 = *((_DWORD *)v21 + 1);
        *((_DWORD *)v21 + 8) = 36;
        *((_DWORD *)v21 + 10) = 24;
        *((_BYTE *)v21 + 52) = 0;
        *((_DWORD *)v21 + 1) = v27 + 1;
        *((_DWORD *)v21 + 7) = 0;
        *((_DWORD *)v21 + 9) = 0;
        *((_WORD *)v21 + 22) = 1;
        *((_WORD *)v21 + 23) = 6;
        *((_DWORD *)v21 + 12) = 0;
        if ( v26 )
          glitch::IReferenceCounted::drop(v26);
        if ( v94 )
          glitch::IReferenceCounted::drop(v94);
        v83 = *((_DWORD *)v21 + 5);
        (*(void (__fastcall **)(glitch::IReferenceCounted **, char *, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)a3 + 120))(
          &v92,
          a3,
          0,
          4,
          0,
          0,
          1);
        v28 = 24 * glitch::video::CVertexStreams::setupStreams(v83, &v92, -1);
        v29 = v92;
        v30 = (void *)operator new[](v28, 0);
        glitch::video::IBuffer::reset(v29, v28, v30, 1);
        v84 = glitch::video::IBuffer::map(*(_DWORD *)(v83 + 36), 4) + *(_DWORD *)(v83 + 40);
        v31 = (_DWORD *)(glitch::video::IBuffer::map(*(_DWORD *)(v83 + 20), 4) + *(_DWORD *)(v83 + 24));
        *v31 = -1090519040;
        v31[1] = -1090519040;
        v31[2] = 0;
        v32 = (_DWORD *)((char *)v31 + *(unsigned __int16 *)(v83 + 34));
        *v32 = -1090519040;
        v32[1] = 1056964608;
        v32[2] = 0;
        v33 = (_DWORD *)((char *)v31 + 2 * *(unsigned __int16 *)(v83 + 34));
        *v33 = 1056964608;
        v33[1] = 1056964608;
        v33[2] = 0;
        v34 = (_DWORD *)((char *)v31 + 3 * *(unsigned __int16 *)(v83 + 34));
        *v34 = 1056964608;
        v34[1] = -1090519040;
        v34[2] = 0;
        v35 = &v31[*(unsigned __int16 *)(v83 + 34)];
        *v35 = -1090519040;
        v35[1] = -1090519040;
        v35[2] = 0;
        v36 = (_DWORD *)((char *)v31 + 5 * *(unsigned __int16 *)(v83 + 34));
        *v36 = -1090519040;
        v36[1] = 1056964608;
        v36[2] = 0;
        v37 = (_DWORD *)((char *)v31 + 6 * *(unsigned __int16 *)(v83 + 34));
        *v37 = 1056964608;
        v37[1] = 1056964608;
        v37[2] = 0;
        v38 = (_DWORD *)((char *)v31 + 7 * *(unsigned __int16 *)(v83 + 34));
        *v38 = 1056964608;
        v38[1] = -1090519040;
        v38[2] = 0;
        v39 = &v31[2 * *(unsigned __int16 *)(v83 + 34)];
        *v39 = -1090519040;
        v39[2] = -1090519040;
        v39[1] = 0;
        v40 = (_DWORD *)((char *)v31 + 9 * *(unsigned __int16 *)(v83 + 34));
        *v40 = -1090519040;
        v40[2] = 1056964608;
        v40[1] = 0;
        v41 = (_DWORD *)((char *)v31 + 10 * *(unsigned __int16 *)(v83 + 34));
        *v41 = 1056964608;
        v41[2] = 1056964608;
        v41[1] = 0;
        v42 = (_DWORD *)((char *)v31 + 11 * *(unsigned __int16 *)(v83 + 34));
        *v42 = 1056964608;
        v42[2] = -1090519040;
        v42[1] = 0;
        v43 = &v31[3 * *(unsigned __int16 *)(v83 + 34)];
        *v43 = -1090519040;
        v43[2] = -1090519040;
        v43[1] = 0;
        v44 = (_DWORD *)((char *)v31 + 13 * *(unsigned __int16 *)(v83 + 34));
        *v44 = -1090519040;
        v44[2] = 1056964608;
        v44[1] = 0;
        v45 = (_DWORD *)((char *)v31 + 14 * *(unsigned __int16 *)(v83 + 34));
        *v45 = 1056964608;
        v45[2] = 1056964608;
        v45[1] = 0;
        v46 = (_DWORD *)((char *)v31 + 15 * *(unsigned __int16 *)(v83 + 34));
        *v46 = 1056964608;
        v46[2] = -1090519040;
        v46[1] = 0;
        v47 = &v31[4 * *(unsigned __int16 *)(v83 + 34)];
        *v47 = 0;
        v47[1] = -1090519040;
        v47[2] = -1090519040;
        v48 = (_DWORD *)((char *)v31 + 17 * *(unsigned __int16 *)(v83 + 34));
        *v48 = 0;
        v48[1] = -1090519040;
        v48[2] = 1056964608;
        v49 = (_DWORD *)((char *)v31 + 18 * *(unsigned __int16 *)(v83 + 34));
        *v49 = 0;
        v49[2] = 1056964608;
        v49[1] = 1056964608;
        v50 = (_DWORD *)((char *)v31 + 19 * *(unsigned __int16 *)(v83 + 34));
        *v50 = 0;
        v50[2] = -1090519040;
        v50[1] = 1056964608;
        v51 = &v31[5 * *(unsigned __int16 *)(v83 + 34)];
        *v51 = 0;
        v51[2] = -1090519040;
        v51[1] = -1090519040;
        v52 = (_DWORD *)((char *)v31 + 21 * *(unsigned __int16 *)(v83 + 34));
        *v52 = 0;
        v52[1] = -1090519040;
        v52[2] = 1056964608;
        v53 = (_DWORD *)((char *)v31 + 22 * *(unsigned __int16 *)(v83 + 34));
        *v53 = 0;
        v53[2] = 1056964608;
        v53[1] = 1056964608;
        v54 = (_DWORD *)((char *)v31 + 23 * *(unsigned __int16 *)(v83 + 34));
        *v54 = 0;
        v54[2] = -1090519040;
        v54[1] = 1056964608;
        v55 = (_DWORD *)(glitch::video::IBuffer::map(*(_DWORD *)(v83 + 52), 4) + *(_DWORD *)(v83 + 56));
        *v55 = 0;
        v55[2] = 1065353216;
        v55[1] = 0;
        v56 = (_DWORD *)((char *)v55 + *(unsigned __int16 *)(v83 + 66));
        *v56 = 0;
        v56[2] = 1065353216;
        v56[1] = 0;
        v57 = (_DWORD *)((char *)v55 + 2 * *(unsigned __int16 *)(v83 + 66));
        *v57 = 0;
        v57[2] = 1065353216;
        v57[1] = 0;
        v58 = (_DWORD *)((char *)v55 + 3 * *(unsigned __int16 *)(v83 + 66));
        *v58 = 0;
        v58[2] = 1065353216;
        v58[1] = 0;
        v59 = &v55[*(unsigned __int16 *)(v83 + 66)];
        *v59 = 0;
        v59[2] = -1082130432;
        v59[1] = 0;
        v60 = (_DWORD *)((char *)v55 + 5 * *(unsigned __int16 *)(v83 + 66));
        *v60 = 0;
        v60[2] = -1082130432;
        v60[1] = 0;
        v61 = (_DWORD *)((char *)v55 + 6 * *(unsigned __int16 *)(v83 + 66));
        *v61 = 0;
        v61[2] = -1082130432;
        v61[1] = 0;
        v62 = (_DWORD *)((char *)v55 + 7 * *(unsigned __int16 *)(v83 + 66));
        *v62 = 0;
        v62[2] = -1082130432;
        v62[1] = 0;
        v63 = &v55[2 * *(unsigned __int16 *)(v83 + 66)];
        *v63 = 0;
        v63[1] = 1065353216;
        v63[2] = 0;
        v64 = (_DWORD *)((char *)v55 + 9 * *(unsigned __int16 *)(v83 + 66));
        *v64 = 0;
        v64[1] = 1065353216;
        v64[2] = 0;
        v65 = (_DWORD *)((char *)v55 + 10 * *(unsigned __int16 *)(v83 + 66));
        *v65 = 0;
        v65[1] = 1065353216;
        v65[2] = 0;
        v66 = (_DWORD *)((char *)v55 + 11 * *(unsigned __int16 *)(v83 + 66));
        *v66 = 0;
        v66[1] = 1065353216;
        v66[2] = 0;
        v67 = &v55[3 * *(unsigned __int16 *)(v83 + 66)];
        *v67 = 0;
        v67[1] = -1082130432;
        v67[2] = 0;
        v68 = (_DWORD *)((char *)v55 + 13 * *(unsigned __int16 *)(v83 + 66));
        *v68 = 0;
        v68[1] = -1082130432;
        v68[2] = 0;
        v69 = (_DWORD *)((char *)v55 + 14 * *(unsigned __int16 *)(v83 + 66));
        *v69 = 0;
        v69[1] = -1082130432;
        v69[2] = 0;
        v70 = (_DWORD *)((char *)v55 + 15 * *(unsigned __int16 *)(v83 + 66));
        *v70 = 0;
        v70[1] = -1082130432;
        v70[2] = 0;
        v71 = &v55[4 * *(unsigned __int16 *)(v83 + 66)];
        *v71 = 1065353216;
        v71[1] = 0;
        v71[2] = 0;
        v72 = (_DWORD *)((char *)v55 + 17 * *(unsigned __int16 *)(v83 + 66));
        *v72 = 1065353216;
        v72[2] = 0;
        v72[1] = 0;
        v73 = (_DWORD *)((char *)v55 + 18 * *(unsigned __int16 *)(v83 + 66));
        *v73 = 1065353216;
        v73[2] = 0;
        v73[1] = 0;
        v74 = (_DWORD *)((char *)v55 + 19 * *(unsigned __int16 *)(v83 + 66));
        *v74 = 1065353216;
        v74[2] = 0;
        v74[1] = 0;
        v75 = &v55[5 * *(unsigned __int16 *)(v83 + 66)];
        *v75 = -1082130432;
        v75[2] = 0;
        v75[1] = 0;
        v76 = (_DWORD *)((char *)v55 + 21 * *(unsigned __int16 *)(v83 + 66));
        *v76 = -1082130432;
        v76[2] = 0;
        v76[1] = 0;
        v77 = (_DWORD *)((char *)v55 + 22 * *(unsigned __int16 *)(v83 + 66));
        *v77 = -1082130432;
        v77[2] = 0;
        v77[1] = 0;
        v78 = (_DWORD *)((char *)v55 + 23 * *(unsigned __int16 *)(v83 + 66));
        *v78 = -1082130432;
        v78[2] = 0;
        v78[1] = 0;
        *(_DWORD *)(v83 + 8) = 24;
        (*(void (__fastcall **)(_DWORD *, char *, _DWORD))(*v9 + 244))(v9, a3, 0);
        v79 = *(void (__fastcall **)(_DWORD *, glitch::IReferenceCounted **))(*v9 + 256);
        v93 = v21;
        ++*((_DWORD *)v21 + 1);
        v79(v9, &v93);
        if ( v93 )
          glitch::IReferenceCounted::drop(v93);
        glitch::video::SVertexStream::unmapBuffer((glitch::video::SVertexStream *)(v83 + 52));
        glitch::video::SVertexStream::unmapBuffer((glitch::video::SVertexStream *)(v83 + 20));
        if ( v84 )
          glitch::video::SVertexStream::unmapBuffer((glitch::video::SVertexStream *)(v83 + 36));
        if ( v92 )
          glitch::IReferenceCounted::drop(v92);
        goto LABEL_23;
      case 3:
      case 4:
        (*(void (__fastcall **)(_DWORD *, char *, int))(*v9 + 244))(v9, a3, 1);
        v11 = *(_DWORD **)(a4 + 84);
        v12 = v11[1];
        v13 = v11[2];
        if ( v12 )
        {
          switch ( v13 )
          {
            case 2:
              v81 = (_DWORD *)v9[94];
              v82 = *(_DWORD *)(*v81 - 12);
              v85[0] = v11[6];
              v85[1] = v11[7];
              v85[2] = v11[8];
              glitch::ps::IParticleContext<glitch::ps::SParticle>::lockAxis((char *)v81 + v82, 1, v85);
              break;
            case 3:
              v80 = (_BYTE *)(v9[94] + *(_DWORD *)(*(_DWORD *)v9[94] - 12));
              v80[5] = 1;
              v80[4] = 0;
              v80[32] = 1;
              break;
            case 1:
              if ( (v12 & 2) != 0 )
              {
                v14 = (_DWORD *)v9[94];
                v15 = *(_DWORD *)(*v14 - 12);
                v87[0] = v11[3];
                v87[1] = v11[4];
                v87[2] = v11[5];
                glitch::ps::IParticleContext<glitch::ps::SParticle>::lockAxis((char *)v14 + v15, 0, v87);
              }
              if ( (v12 & 4) != 0 )
              {
                v16 = *(_DWORD **)(a4 + 84);
                v17 = (_DWORD *)v9[94];
                v18 = *(_DWORD *)(*v17 - 12);
                v86[0] = v16[6];
                v86[1] = v16[7];
                v86[2] = v16[8];
                glitch::ps::IParticleContext<glitch::ps::SParticle>::lockAxis((char *)v17 + v18, 1, v86);
              }
              break;
          }
        }
        return v9;
      case 7:
        glitch::scene::createSphereMesh(
          (glitch::scene *)&v92,
          0x60003u,
          (glitch::video::IVideoDriver *)a3,
          1.0,
          0xFu,
          0xFu);
        (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v92 + 20))(
          &v89,
          v92,
          0);
        (*(void (__fastcall **)(_DWORD *, char *, _DWORD))(*v9 + 244))(v9, a3, 0);
        v23 = *(void (__fastcall **)(_DWORD *, glitch::IReferenceCounted **))(*v9 + 256);
        v91 = v89;
        if ( v89 )
          ++*((_DWORD *)v89 + 1);
        v23(v9, &v91);
        if ( v91 )
          glitch::IReferenceCounted::drop(v91);
        if ( v89 )
          glitch::IReferenceCounted::drop(v89);
        v24 = v92;
        if ( v92 )
LABEL_31:
          glitch::IReferenceCounted::drop(v24);
        break;
      default:
        return v9;
    }
  }
  return v9;
}


// ===== 6357a0 glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileNullTraits>(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,char const*,glitch::collada::SEffectList const&,glitch::collada::CRootSceneNode *) =====
glitch::video::CMaterialRenderer **__fastcall glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileNullTraits>(
        glitch::video::CMaterialRenderer **a1,
        int a2,
        _DWORD *a3,
        char *a4,
        _DWORD *a5,
        int a6)
{
  _DWORD *v6; // r1
  glitch::core *v7; // r0
  bool v8; // r1
  unsigned int v9; // r1
  _DWORD *v10; // r3
  unsigned int v11; // r4
  unsigned int v12; // r0
  int v13; // r2
  unsigned int v14; // r2
  int v15; // r2
  int i; // r3
  int v17; // r8
  int v18; // r4
  bool v19; // zf
  int v20; // r3
  int n; // r5
  const char *v22; // r11
  int v23; // r6
  int v24; // r3
  int v25; // r6
  int v26; // r10
  int v27; // r2
  int j; // r3
  int v29; // r6
  int v30; // r5
  int k; // r8
  glitch::core **v32; // r7
  int v33; // r3
  int v34; // r4
  int v35; // r2
  unsigned int v36; // r0
  int v37; // r3
  glitch::video::CMaterialRenderer **v38; // r3
  glitch::video::CMaterialRenderer *v39; // r3
  glitch::video::CMaterialRenderer *v40; // r11
  unsigned int v41; // r6
  int v42; // r5
  int v43; // r4
  unsigned int v44; // r3
  bool v45; // cc
  _DWORD *v46; // r3
  int v47; // r10
  int v48; // r7
  int v49; // r8
  int v50; // r9
  const char *v51; // r1
  int v52; // r0
  int v53; // r2
  const char *v54; // r1
  int v55; // r0
  int v56; // r1
  int Technique; // r11
  int v58; // r4
  int m; // r7
  int v60; // r3
  int v61; // r6
  int v62; // r5
  int v63; // r9
  int v64; // r10
  unsigned int ParameterID; // r8
  int v66; // r6
  int v67; // r5
  const char *v68; // r12
  unsigned int Id; // r0
  int v70; // r3
  unsigned int v71; // r2
  _BYTE *v72; // r1
  int v73; // r0
  int v74; // lr
  glitch::core *v75; // r1
  int v77; // [sp+14h] [bp-C0h]
  int v78; // [sp+14h] [bp-C0h]
  int v79; // [sp+18h] [bp-BCh]
  unsigned int v80; // [sp+18h] [bp-BCh]
  int v81; // [sp+18h] [bp-BCh]
  int v82; // [sp+1Ch] [bp-B8h]
  _DWORD *v83; // [sp+20h] [bp-B4h]
  glitch::video::CMaterialRendererManager *v84; // [sp+24h] [bp-B0h]
  int *v85; // [sp+28h] [bp-ACh]
  _DWORD *v86; // [sp+2Ch] [bp-A8h]
  glitch::core *v87; // [sp+30h] [bp-A4h]
  int v88; // [sp+34h] [bp-A0h]
  int *v89; // [sp+34h] [bp-A0h]
  int v90; // [sp+38h] [bp-9Ch]
  int v91; // [sp+38h] [bp-9Ch]
  int v92; // [sp+3Ch] [bp-98h]
  int v93; // [sp+3Ch] [bp-98h]
  char *v94; // [sp+40h] [bp-94h]
  int *v96; // [sp+4Ch] [bp-88h]
  int v97; // [sp+4Ch] [bp-88h]
  int v98; // [sp+54h] [bp-80h]
  int v99; // [sp+54h] [bp-80h]
  int v100; // [sp+5Ch] [bp-78h]
  int v101; // [sp+5Ch] [bp-78h]
  glitch::core *v102; // [sp+60h] [bp-74h]
  bool v103[4]; // [sp+64h] [bp-70h]
  _DWORD *v104; // [sp+74h] [bp-60h]
  _BOOL4 v106; // [sp+7Ch] [bp-58h]
  char isProcessBufferHeapExcessEnabled; // [sp+84h] [bp-50h]
  int v108; // [sp+88h] [bp-4Ch]
  int v109[8]; // [sp+94h] [bp-40h] BYREF
  glitch::video::CMaterialRenderer *v110; // [sp+B4h] [bp-20h] BYREF
  glitch::IReferenceCounted *v111; // [sp+B8h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v112; // [sp+BCh] [bp-18h] BYREF
  char v113[8]; // [sp+C4h] [bp-10h] BYREF

  v6 = (_DWORD *)*a5;
  v7 = (glitch::core *)_stack_chk_guard;
  if ( (_DWORD *)*a5 == a5 )
    v7 = (glitch::core *)a1;
  v94 = a4;
  if ( v6 == a5 )
    a4 = nullptr;
  if ( v6 == a5 )
  {
    *(_DWORD *)v7 = a4;
    return a1;
  }
  v84 = (glitch::video::CMaterialRendererManager *)a3[55];
  isProcessBufferHeapExcessEnabled = glitch::core::isProcessBufferHeapExcessEnabled(v7);
  glitch::core::setProcessBufferHeapExcessEnabled((char)&dword_0 + 1, v8);
  v10 = (_DWORD *)*a5;
  if ( a5 == (_DWORD *)*a5 )
  {
    v11 = 0;
    v12 = 0;
  }
  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v10[4];
      v10 = (_DWORD *)*v10;
      v9 = *(_DWORD *)(v13 + 8);
      v14 = *(_DWORD *)(v13 + 16);
      if ( v11 < v9 )
        v11 = v9;
      if ( v12 < v14 )
        v12 = v14;
    }
    while ( a5 != v10 );
    if ( v12 )
      v12 = glitch::core::allocProcessBuffer((glitch::core *)(4 * v12), v9);
  }
  v87 = (glitch::core *)v12;
  if ( v11 )
    v102 = (glitch::core *)glitch::core::allocProcessBuffer((glitch::core *)(4 * v11), v9);
  else
    v102 = nullptr;
  v108 = glitch::video::CMaterialRendererManager::beginMaterialRenderer(v84, v94, 1);
  if ( v108 )
  {
    v104 = (_DWORD *)*a5;
    if ( a5 != (_DWORD *)*a5 )
    {
      v98 = 1;
      while ( 1 )
      {
        v86 = (_DWORD *)v104[4];
        v100 = v86[2];
        v15 = (4 * v100) >> 2;
        v106 = v86[4] > 0;
        if ( v15 > 0 )
        {
          for ( i = 0; i != v15; ++i )
            *((_DWORD *)v102 + i) = 0;
          v100 = v86[2];
        }
        if ( v100 > 0 )
          break;
        v17 = 0;
LABEL_47:
        if ( v106 || v17 )
        {
          v26 = v86[4];
          v27 = (4 * v26) >> 2;
          if ( v27 > 0 )
          {
            for ( j = 0; j != v27; ++j )
              *((_DWORD *)v87 + j) = 0;
            v26 = v86[4];
          }
          if ( v26 > 0 )
          {
            v29 = 0;
            v30 = 0;
            for ( k = 0; k != v26; ++k )
            {
              v33 = v86[5];
              v34 = v33 + v30;
              v35 = *(_DWORD *)(v33 + v30 + 12);
              if ( v35 > 1 )
                glitch::os::Printer::logf(
                  2,
                  "%s/%s: multidimensional parameters not supported yet",
                  v94,
                  *(const char **)(v33 + v30));
              if ( v98 )
              {
                v32 = (glitch::core **)((char *)v87 + v29);
                if ( !*(_DWORD *)((char *)v87 + v29) )
                  goto LABEL_61;
              }
              else
              {
                v32 = (glitch::core **)((char *)v87 + v29);
                *(_DWORD *)((char *)v87 + v29) = glitch::video::CMaterialRendererManager::getParameterID(
                                                   v84,
                                                   *(glitch::core::detail::SSharedStringHeapEntry::SData **)v34,
                                                   v35);
                if ( !*(_DWORD *)((char *)v87 + v29) )
LABEL_61:
                  *v32 = glitch::video::CMaterialRendererManager::addParameterInternal(
                           (int)v84,
                           *(glitch::core::detail::SSharedStringHeapEntry::SData **)v34,
                           *(_DWORD *)(v34 + 8),
                           **(_DWORD **)(v34 + 16));
              }
              v30 += 24;
              v29 += 4;
            }
          }
          *(_DWORD *)v103 = v86[2];
          if ( *(int *)v103 > 0 )
          {
            v101 = 0;
            v99 = 0;
            do
            {
              v56 = *((_DWORD *)v102 + v99);
              v85 = (int *)((char *)v102 + 4 * v99);
              if ( v56 )
              {
                Technique = glitch::video::CMaterialRendererManager::getTechnique((int)v84, v56);
                v89 = (int *)(v86[3] + v101);
                v97 = v89[1];
                if ( v97 > 0 )
                {
                  v93 = 0;
                  v91 = 0;
                  do
                  {
                    v81 = v89[2] + v93;
                    v78 = *(_DWORD *)(v81 + 216);
                    if ( v78 > 0 )
                    {
                      v58 = 0;
                      for ( m = 0; m != v78; ++m )
                      {
                        v61 = *(_DWORD *)(v81 + 220);
                        v62 = v61 + v58;
                        v63 = *(_DWORD *)(*(_DWORD *)(Technique + 8) + 52 * (unsigned __int8)v91 + 32);
                        v64 = *(unsigned __int8 *)(v61 + v58 + 3);
                        ParameterID = glitch::video::IShader::getParameterID(
                                        v63,
                                        *(unsigned __int16 *)(v61 + v58),
                                        v64,
                                        0);
                        if ( ParameterID == 0xFFFF )
                        {
                          v66 = *(unsigned __int16 *)(v61 + v58);
                          v67 = *v89;
                          if ( v66 == 255 )
                            v68 = "unknown";
                          else
                            v68 = glitch::video::getStringsInternal()[v66];
                          glitch::os::Printer::logf(3, "%s/%s: invalid bind symbol: %s", v94, v67, v68);
                        }
                        else if ( *(_BYTE *)(v62 + 2) == 1 )
                        {
                          Id = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
                                 a3[57],
                                 *(void **)(v62 + 8));
                          if ( Id == 0xFFFF )
                          {
                            v70 = *(_DWORD *)(v63 + 8 * (v64 + 5)) + 16 * ParameterID;
                            v71 = *(unsigned __int16 *)(v70 + 4);
                            if ( v71 > 0x12 && *(unsigned __int16 *)(v70 + 4) <= 0x1Bu || v71 == 18 )
                            {
                              v72 = *(_BYTE **)(v62 + 8);
                              v71 = 18;
                              v73 = a3[57];
                              v74 = 18;
                            }
                            else
                            {
                              v72 = *(_BYTE **)(v62 + 8);
                              v74 = *(unsigned __int8 *)(v70 + 6);
                              v73 = a3[57];
                            }
                            Id = glitch::video::CGlobalMaterialParameterManager::addParameter(
                                   v73,
                                   v72,
                                   v71,
                                   v74,
                                   *(_DWORD *)(v70 + 8),
                                   *(_BYTE *)(v70 + 7));
                          }
                          glitch::video::CMaterialRendererManager::bindGlobalParameter(
                            (int)v84,
                            Id,
                            *v85,
                            (unsigned __int8)v91,
                            ParameterID,
                            v64);
                        }
                        else
                        {
                          v60 = *(_DWORD *)(v62 + 8);
                          if ( *(_DWORD *)(v86[5] + 24 * v60 + 4) == 17 )
                            glitch::video::CMaterialRendererManager::bindParameter(
                              (int)v84,
                              *((_DWORD *)v87 + v60),
                              *(unsigned __int16 *)(*(_DWORD *)(v63 + 8 * (v64 + 5)) + 16 * ParameterID + 4),
                              *v85,
                              v91,
                              ParameterID,
                              v64);
                          else
                            glitch::video::CMaterialRendererManager::bindParameter(
                              (int)v84,
                              *((_DWORD *)v87 + v60),
                              *v85,
                              v91,
                              ParameterID,
                              v64);
                        }
                        v58 += 12;
                      }
                    }
                    v19 = ++v91 == v97;
                    v93 += 224;
                  }
                  while ( !v19 );
                }
              }
              v19 = ++v99 == *(_DWORD *)v103;
              v101 += 12;
            }
            while ( !v19 );
          }
        }
        v98 = 0;
        v104 = (_DWORD *)*v104;
        if ( a5 == v104 )
          goto LABEL_67;
      }
      v88 = 0;
      v90 = 0;
      v92 = 0;
      v17 = 0;
      while ( 1 )
      {
        v20 = v86[3];
        v77 = v20 + v90;
        if ( v98 )
        {
          v96 = (int *)((char *)v102 + v88);
          v18 = *(_DWORD *)((char *)v102 + v88);
          if ( !v18 )
            goto LABEL_34;
        }
        else
        {
          *(_DWORD *)((char *)v102 + v88) = glitch::video::CMaterialRendererManager::getTechniqueID(
                                              v84,
                                              *(glitch::core::detail::SSharedStringHeapEntry::SData **)(v20 + v90),
                                              v90);
          v96 = (int *)((char *)v102 + v88);
          v18 = *(_DWORD *)((char *)v102 + v88);
          if ( !v18 )
          {
LABEL_34:
            if ( glitch::video::CMaterialRendererManager::beginTechnique(
                   v84,
                   *(glitch::core::detail::SSharedStringHeapEntry::SData **)v77,
                   1) )
            {
              v79 = *(_DWORD *)(v77 + 4);
              if ( v79 > 0 )
              {
                for ( n = v18; n != v79; ++n )
                {
                  v22 = (const char *)a3[54];
                  v23 = *(_DWORD *)(v77 + 8);
                  v24 = glitch::collada::SProfileNullTraits::createShader(glitch::video::IShaderManager *,glitch::collada::SPass<glitch::collada::SRenderStatesGLES> &)::shaderName++;
                  snprintf(v113, 7u, "%d", v24);
                  glitch::video::CNullShaderManager::createShader((glitch::video::CNullShaderManager *)&v112, v22, v113);
                  v25 = v23 + v18;
                  v111 = v112;
                  if ( v112 )
                    ++*((_DWORD *)v112 + 1);
                  glitch::video::detail::renderpass::SRenderState::SRenderState(
                    (glitch::video::detail::renderpass::SRenderState *)v109,
                    (const glitch::video::SRenderState *)(v25 + 140));
                  glitch::video::CMaterialRendererManager::addRenderPass((int *)v84, &v111, v109);
                  if ( v111 )
                    glitch::IReferenceCounted::drop(v111);
                  if ( *(int *)(v25 + 216) > 0 )
                    v17 = 1;
                  if ( v112 )
                    glitch::IReferenceCounted::drop(v112);
                  v18 += 224;
                }
              }
              *v96 = glitch::video::CMaterialRendererManager::endTechnique(v84, !v106, 0);
            }
          }
        }
        v19 = ++v92 == v100;
        v90 += 12;
        v88 += 4;
        if ( v19 )
          goto LABEL_47;
      }
    }
  }
LABEL_67:
  v36 = glitch::video::CMaterialRendererManager::endMaterialRenderer(v84);
  v37 = *((_DWORD *)v84 + 6);
  if ( v36 >= (*((_DWORD *)v84 + 7) - v37) >> 3 )
    v38 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    v38 = (glitch::video::CMaterialRenderer **)(v37 + 8 * v36);
  v39 = *v38;
  v110 = v39;
  if ( v39 )
    ++*(_DWORD *)v39;
  if ( !v108 )
  {
    v40 = v110;
    if ( v110 )
    {
      *a1 = v110;
      goto LABEL_125;
    }
LABEL_132:
    glitch::os::Printer::logf(3, "failed to create material renderer %s", v94);
    v40 = v110;
    goto LABEL_133;
  }
  v40 = v110;
  if ( !v110 )
    goto LABEL_132;
  v83 = (_DWORD *)*a5;
  v80 = *((unsigned __int16 *)v110 + 7);
  if ( a5 != (_DWORD *)*a5 )
  {
    v41 = 0;
    do
    {
      v82 = v83[4];
      v42 = *(_DWORD *)(v82 + 16);
      if ( v80 > v41 )
      {
        v43 = 0;
        while ( 1 )
        {
          v44 = *((unsigned __int16 *)v40 + 7);
          v45 = v44 > v41;
          if ( v44 <= v41 )
            v46 = nullptr;
          else
            v46 = *((_DWORD **)v40 + 8);
          if ( v45 )
            v46 += 4 * v41;
          if ( v42 <= v43 )
            break;
          v47 = *v46;
          v48 = 24 * v43;
          v49 = *(_DWORD *)(v82 + 20);
          v50 = *v46 + 4;
          if ( *v46 )
            v51 = (const char *)(*v46 + 4);
          else
            v51 = nullptr;
          v52 = LC_API_STRCMP_0(*(const char **)(v49 + 24 * v43), v51);
          v53 = v49 + v48;
          if ( v52 )
          {
            do
            {
              ++v43;
              v48 += 24;
              if ( v43 == v42 )
                goto LABEL_76;
              if ( v47 )
                v54 = (const char *)v50;
              else
                v54 = nullptr;
              v55 = LC_API_STRCMP_0(*(const char **)(v49 + v48), v54);
              v53 = v49 + v48;
            }
            while ( v55 );
          }
          if ( v42 <= v43 )
            break;
          glitch::collada::`anonymous namespace'::setMaterialParameter<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,glitch::collada::SNewParam>(
            (int *)&v110,
            v41,
            v53,
            a6);
          v41 = (unsigned __int16)(v41 + 1);
          if ( v41 >= v80 )
          {
            v40 = v110;
            break;
          }
          v40 = v110;
        }
      }
LABEL_76:
      v19 = a5 == (_DWORD *)*v83;
      v83 = (_DWORD *)*v83;
    }
    while ( !v19 );
LABEL_133:
    *a1 = v40;
    if ( !v40 )
      goto LABEL_126;
    goto LABEL_125;
  }
  *a1 = v110;
LABEL_125:
  ++*(_DWORD *)v40;
LABEL_126:
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v110);
  v75 = v102;
  if ( v102 )
    glitch::core::releaseProcessBuffer(v102, v102);
  if ( v87 )
    glitch::core::releaseProcessBuffer(v87, v75);
  glitch::core::setProcessBufferHeapExcessEnabled(isProcessBufferHeapExcessEnabled, (bool)v75);
  return a1;
}


// ===== 6361e8 glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,char const*,glitch::collada::SEffectList const&,glitch::collada::CRootSceneNode *) =====
glitch::video::CMaterialRenderer **__fastcall glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(
        glitch::video::CMaterialRenderer **a1,
        int a2,
        int a3,
        char *a4,
        _DWORD **a5,
        int a6)
{
  _DWORD *v6; // r1
  bool v7; // r1
  unsigned int v8; // r1
  _DWORD *v9; // r3
  unsigned int v10; // r4
  unsigned int v11; // r0
  int v12; // r2
  unsigned int v13; // r2
  int v14; // r2
  int i; // r3
  int v16; // r8
  int v17; // r5
  bool v18; // zf
  int v19; // r3
  int v20; // r7
  int v21; // r6
  int v22; // r4
  int v23; // r2
  int v24; // r10
  int v25; // r2
  int j; // r3
  int v27; // r4
  int v28; // r6
  int v29; // r8
  bool v30; // r2
  int v31; // r3
  glitch::core **v32; // r7
  int v33; // r5
  unsigned int v34; // r0
  int v35; // r3
  glitch::video::CMaterialRenderer **v36; // r3
  glitch::video::CMaterialRenderer *v37; // r3
  glitch::video::CMaterialRenderer *v38; // r11
  unsigned int v39; // r6
  int v40; // r5
  int v41; // r4
  unsigned int v42; // r3
  bool v43; // cc
  int *v44; // r3
  int v45; // r10
  int v46; // r7
  int v47; // r8
  const char *v48; // r1
  int v49; // r0
  int v50; // r2
  const char *v51; // r1
  int v52; // r0
  int v53; // r1
  int Technique; // r11
  int v55; // r4
  int k; // r10
  int v57; // r7
  int v58; // r5
  int v59; // r9
  int v60; // r8
  unsigned int ParameterID; // r6
  int v62; // r3
  unsigned int Id; // r0
  int v64; // r3
  unsigned int v65; // r2
  _BYTE *v66; // r1
  int v67; // r0
  int v68; // lr
  void *v69; // r1
  bool v70; // r1
  int v72; // [sp+10h] [bp-9Ch]
  int v73; // [sp+10h] [bp-9Ch]
  unsigned int v74; // [sp+14h] [bp-98h]
  int v75; // [sp+14h] [bp-98h]
  int v76; // [sp+18h] [bp-94h]
  int v77; // [sp+18h] [bp-94h]
  int v78; // [sp+1Ch] [bp-90h]
  _DWORD *v79; // [sp+1Ch] [bp-90h]
  int v80; // [sp+20h] [bp-8Ch]
  int *v81; // [sp+20h] [bp-8Ch]
  glitch::video::CMaterialRendererManager *v82; // [sp+24h] [bp-88h]
  _DWORD *v83; // [sp+28h] [bp-84h]
  glitch::core *v84; // [sp+2Ch] [bp-80h]
  int *v85; // [sp+30h] [bp-7Ch]
  int v86; // [sp+30h] [bp-7Ch]
  int v87; // [sp+34h] [bp-78h]
  int v88; // [sp+34h] [bp-78h]
  int v89; // [sp+38h] [bp-74h]
  _DWORD *v90; // [sp+38h] [bp-74h]
  char *v92; // [sp+40h] [bp-6Ch]
  bool v93[4]; // [sp+48h] [bp-64h]
  _BOOL4 v94; // [sp+50h] [bp-5Ch]
  int v95; // [sp+50h] [bp-5Ch]
  glitch::core *v96; // [sp+54h] [bp-58h]
  int v97; // [sp+58h] [bp-54h]
  int v98; // [sp+5Ch] [bp-50h]
  _DWORD *v99; // [sp+60h] [bp-4Ch]
  char isProcessBufferHeapExcessEnabled; // [sp+6Ch] [bp-40h]
  int v102; // [sp+70h] [bp-3Ch]
  int v103[8]; // [sp+78h] [bp-34h] BYREF
  glitch::video::CMaterialRenderer *v104; // [sp+98h] [bp-14h] BYREF
  glitch::IReferenceCounted *v105; // [sp+9Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v106; // [sp+A0h] [bp-Ch] BYREF

  v6 = *a5;
  v92 = a4;
  if ( *a5 == a5 )
  {
    v6 = a1;
    a4 = nullptr;
  }
  if ( *a5 == a5 )
  {
    *v6 = a4;
    return a1;
  }
  v82 = *(glitch::video::CMaterialRendererManager **)(a3 + 220);
  isProcessBufferHeapExcessEnabled = glitch::core::isProcessBufferHeapExcessEnabled((glitch::core *)&__GLOBAL_OFFSET_TABLE_);
  glitch::core::setProcessBufferHeapExcessEnabled((char)&dword_0 + 1, v7);
  v9 = *a5;
  if ( a5 == *a5 )
  {
    v10 = 0;
    v11 = 0;
  }
  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v9[4];
      v9 = (_DWORD *)*v9;
      v8 = *(_DWORD *)(v12 + 32);
      v13 = *(_DWORD *)(v12 + 40);
      if ( v10 < v8 )
        v10 = v8;
      if ( v11 < v13 )
        v11 = v13;
    }
    while ( a5 != v9 );
    if ( v11 )
      v11 = glitch::core::allocProcessBuffer((glitch::core *)(4 * v11), v8);
  }
  v84 = (glitch::core *)v11;
  if ( v10 )
    v96 = (glitch::core *)glitch::core::allocProcessBuffer((glitch::core *)(4 * v10), v8);
  else
    v96 = nullptr;
  v102 = glitch::video::CMaterialRendererManager::beginMaterialRenderer(v82, v92, 1);
  if ( v102 )
  {
    v99 = *a5;
    if ( a5 != *a5 )
    {
      v87 = 1;
      while ( 1 )
      {
        v83 = (_DWORD *)v99[4];
        v89 = v83[8];
        v14 = (4 * v89) >> 2;
        v94 = v83[10] > 0;
        if ( v14 > 0 )
        {
          for ( i = 0; i != v14; ++i )
            *((_DWORD *)v96 + i) = 0;
          v89 = v83[8];
        }
        if ( v89 > 0 )
          break;
        v16 = 0;
LABEL_47:
        if ( v94 || v16 )
        {
          v24 = v83[10];
          v25 = (4 * v24) >> 2;
          if ( v25 > 0 )
          {
            for ( j = 0; j != v25; ++j )
              *((_DWORD *)v84 + j) = 0;
            v24 = v83[10];
          }
          if ( v24 > 0 )
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            do
            {
              v30 = (char)v92;
              v31 = v83[11];
              v32 = (glitch::core **)((char *)v84 + v27);
              v33 = v31 + v28;
              if ( *(int *)(v31 + v28 + 12) > 1 )
                glitch::os::Printer::logf(
                  2,
                  "%s/%s: multidimensional parameters not supported yet",
                  v92,
                  *(_DWORD *)(v31 + v28));
              if ( v87 )
              {
                ++v29;
                v28 += 24;
                if ( !*v32 )
                  goto LABEL_61;
              }
              else
              {
                v32 = (glitch::core **)((char *)v84 + v27);
                *(_DWORD *)((char *)v84 + v27) = glitch::video::CMaterialRendererManager::getParameterID(
                                                   v82,
                                                   *(glitch::core::detail::SSharedStringHeapEntry::SData **)v33,
                                                   v30);
                ++v29;
                v28 += 24;
                if ( !*(_DWORD *)((char *)v84 + v27) )
LABEL_61:
                  *v32 = glitch::video::CMaterialRendererManager::addParameterInternal(
                           (int)v82,
                           *(glitch::core::detail::SSharedStringHeapEntry::SData **)v33,
                           *(_DWORD *)(v33 + 8),
                           **(_DWORD **)(v33 + 16));
              }
              v27 += 4;
            }
            while ( v29 != v24 );
          }
          v98 = v83[8];
          if ( v98 > 0 )
          {
            v97 = 0;
            v95 = 0;
            do
            {
              v53 = *((_DWORD *)v96 + v95);
              v81 = (int *)((char *)v96 + 4 * v95);
              if ( v53 )
              {
                Technique = glitch::video::CMaterialRendererManager::getTechnique((int)v82, v53);
                v90 = (_DWORD *)(v83[9] + v97);
                *(_DWORD *)v93 = v90[1];
                if ( *(int *)v93 > 0 )
                {
                  v88 = 0;
                  v86 = 0;
                  do
                  {
                    v75 = v90[2] + v88;
                    v73 = *(_DWORD *)(v75 + 108);
                    if ( v73 > 0 )
                    {
                      v55 = 0;
                      for ( k = 0; k != v73; ++k )
                      {
                        v57 = *(_DWORD *)(v75 + 112);
                        v58 = v57 + v55;
                        v59 = *(_DWORD *)(*(_DWORD *)(Technique + 8) + 52 * (unsigned __int8)v86 + 32);
                        v60 = *(unsigned __int8 *)(v57 + v55 + 5);
                        ParameterID = glitch::video::IShader::getParameterID(
                                        v59,
                                        *(glitch::core::detail::SSharedStringHeapEntry::SData **)(v57 + v55),
                                        v60,
                                        0);
                        if ( ParameterID == 0xFFFF )
                        {
                          glitch::os::Printer::logf(
                            3,
                            "%s/%s: invalid bind symbol: %s",
                            v92,
                            *v90,
                            *(_DWORD *)(v57 + v55));
                        }
                        else if ( *(_BYTE *)(v58 + 4) == 1 )
                        {
                          Id = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::getId(
                                 *(_DWORD *)(a3 + 228),
                                 *(void **)(v58 + 8));
                          if ( Id == 0xFFFF )
                          {
                            v64 = *(_DWORD *)(v59 + 8 * (v60 + 5)) + 16 * ParameterID;
                            v65 = *(unsigned __int16 *)(v64 + 4);
                            if ( v65 > 0x12 && *(unsigned __int16 *)(v64 + 4) <= 0x1Bu || v65 == 18 )
                            {
                              v66 = *(_BYTE **)(v58 + 8);
                              v65 = 18;
                              v67 = *(_DWORD *)(a3 + 228);
                              v68 = 18;
                            }
                            else
                            {
                              v66 = *(_BYTE **)(v58 + 8);
                              v68 = *(unsigned __int8 *)(v64 + 6);
                              v67 = *(_DWORD *)(a3 + 228);
                            }
                            Id = glitch::video::CGlobalMaterialParameterManager::addParameter(
                                   v67,
                                   v66,
                                   v65,
                                   v68,
                                   *(_DWORD *)(v64 + 8),
                                   *(_BYTE *)(v64 + 7));
                          }
                          glitch::video::CMaterialRendererManager::bindGlobalParameter(
                            (int)v82,
                            Id,
                            *v81,
                            (unsigned __int8)v86,
                            ParameterID,
                            v60);
                        }
                        else
                        {
                          v62 = *(_DWORD *)(v58 + 8);
                          if ( *(_DWORD *)(v83[11] + 24 * v62 + 4) == 17 )
                            glitch::video::CMaterialRendererManager::bindParameter(
                              (int)v82,
                              *((_DWORD *)v84 + v62),
                              *(unsigned __int16 *)(*(_DWORD *)(v59 + 8 * (v60 + 5)) + 16 * ParameterID + 4),
                              *v81,
                              v86,
                              ParameterID,
                              v60);
                          else
                            glitch::video::CMaterialRendererManager::bindParameter(
                              (int)v82,
                              *((_DWORD *)v84 + v62),
                              *v81,
                              v86,
                              ParameterID,
                              v60);
                        }
                        v55 += 12;
                      }
                    }
                    v18 = ++v86 == *(_DWORD *)v93;
                    v88 += 116;
                  }
                  while ( !v18 );
                }
              }
              v18 = ++v95 == v98;
              v97 += 12;
            }
            while ( !v18 );
          }
        }
        v87 = 0;
        v99 = (_DWORD *)*v99;
        if ( a5 == v99 )
          goto LABEL_67;
      }
      v76 = 0;
      v78 = 0;
      v80 = 0;
      v16 = 0;
      while ( 1 )
      {
        v19 = v83[9];
        v20 = v19 + v78;
        if ( v87 )
        {
          v85 = (int *)((char *)v96 + v76);
          v17 = *(_DWORD *)((char *)v96 + v76);
          if ( !v17 )
            goto LABEL_32;
        }
        else
        {
          *(_DWORD *)((char *)v96 + v76) = glitch::video::CMaterialRendererManager::getTechniqueID(
                                             v82,
                                             *(glitch::core::detail::SSharedStringHeapEntry::SData **)(v19 + v78),
                                             v78);
          v85 = (int *)((char *)v96 + v76);
          v17 = *(_DWORD *)((char *)v96 + v76);
          if ( !v17 )
          {
LABEL_32:
            if ( glitch::video::CMaterialRendererManager::beginTechnique(
                   v82,
                   *(glitch::core::detail::SSharedStringHeapEntry::SData **)v20,
                   1) )
            {
              v72 = *(_DWORD *)(v20 + 4);
              if ( v72 > 0 )
              {
                v21 = v17;
                do
                {
                  v22 = *(_DWORD *)(v20 + 8) + v17;
                  glitch::collada::SProfileGLES2Traits::createShader(
                    (glitch::video::CGLSLShaderManager *)&v106,
                    *(const char **)(a3 + 216),
                    (char **)v22);
                  v105 = v106;
                  if ( v106 )
                    v23 = *((_DWORD *)v106 + 1);
                  ++v21;
                  v17 += 116;
                  if ( v106 )
                    *((_DWORD *)v106 + 1) = v23 + 1;
                  glitch::video::detail::renderpass::SRenderState::SRenderState(
                    (glitch::video::detail::renderpass::SRenderState *)v103,
                    (const glitch::video::SRenderState *)(v22 + 28));
                  glitch::video::CMaterialRendererManager::addRenderPass((int *)v82, &v105, v103);
                  if ( v105 )
                    glitch::IReferenceCounted::drop(v105);
                  if ( *(int *)(v22 + 108) > 0 )
                    v16 = 1;
                  if ( v106 )
                    glitch::IReferenceCounted::drop(v106);
                }
                while ( v21 != v72 );
              }
              *v85 = glitch::video::CMaterialRendererManager::endTechnique(v82, !v94, 0);
            }
          }
        }
        v18 = ++v80 == v89;
        v78 += 12;
        v76 += 4;
        if ( v18 )
          goto LABEL_47;
      }
    }
  }
LABEL_67:
  v34 = glitch::video::CMaterialRendererManager::endMaterialRenderer(v82);
  v35 = *((_DWORD *)v82 + 6);
  if ( v34 >= (*((_DWORD *)v82 + 7) - v35) >> 3 )
    v36 = (glitch::video::CMaterialRenderer **)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    v36 = (glitch::video::CMaterialRenderer **)(v35 + 8 * v34);
  v37 = *v36;
  v104 = v37;
  if ( v37 )
    ++*(_DWORD *)v37;
  if ( !v102 )
  {
    v38 = v104;
    if ( v104 )
    {
      *a1 = v104;
      goto LABEL_122;
    }
LABEL_129:
    glitch::os::Printer::logf(3, "failed to create material renderer %s", v92);
    v38 = v104;
    goto LABEL_130;
  }
  v38 = v104;
  if ( !v104 )
    goto LABEL_129;
  v79 = *a5;
  v74 = *((unsigned __int16 *)v104 + 7);
  if ( a5 != *a5 )
  {
    v39 = 0;
    do
    {
      v77 = v79[4];
      v40 = *(_DWORD *)(v77 + 40);
      if ( v39 < v74 )
      {
        v41 = 0;
        while ( 1 )
        {
          v42 = *((unsigned __int16 *)v38 + 7);
          v43 = v42 > v39;
          if ( v42 <= v39 )
            v44 = nullptr;
          else
            v44 = *((int **)v38 + 8);
          if ( v43 )
            v44 += 4 * v39;
          if ( v41 >= v40 )
            break;
          v45 = *v44;
          v46 = 24 * v41;
          v47 = *(_DWORD *)(v77 + 44);
          if ( *v44 )
            v48 = (const char *)(v45 + 4);
          else
            v48 = nullptr;
          v49 = LC_API_STRCMP_0(*(const char **)(v47 + 24 * v41), v48);
          v50 = v47 + v46;
          if ( v49 )
          {
            do
            {
              ++v41;
              v46 += 24;
              if ( v41 == v40 )
                goto LABEL_76;
              if ( v45 )
                v51 = (const char *)(v45 + 4);
              else
                v51 = nullptr;
              v52 = LC_API_STRCMP_0(*(const char **)(v47 + v46), v51);
              v50 = v47 + v46;
            }
            while ( v52 );
          }
          if ( v40 <= v41 )
            break;
          glitch::collada::`anonymous namespace'::setMaterialParameter<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,glitch::collada::SNewParam>(
            (int *)&v104,
            v39,
            v50,
            a6);
          v39 = (unsigned __int16)(v39 + 1);
          if ( v39 >= v74 )
          {
            v38 = v104;
            break;
          }
          v38 = v104;
        }
      }
LABEL_76:
      v18 = a5 == (_DWORD **)*v79;
      v79 = (_DWORD *)*v79;
    }
    while ( !v18 );
LABEL_130:
    *a1 = v38;
    if ( !v38 )
      goto LABEL_123;
    goto LABEL_122;
  }
  *a1 = v104;
LABEL_122:
  ++*(_DWORD *)v38;
LABEL_123:
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v104);
  if ( v96 )
    glitch::core::releaseProcessBuffer(v96, v69);
  v70 = (char)v84;
  if ( v84 )
    glitch::core::releaseProcessBuffer(v84, v84);
  glitch::core::setProcessBufferHeapExcessEnabled(isProcessBufferHeapExcessEnabled, v70);
  return a1;
}


// ===== 636b6c glitch::collada::createMaterialRenderer(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,char const*,glitch::collada::SEffectList const&,glitch::collada::CRootSceneNode *) =====
glitch::video::CMaterialRenderer **__fastcall glitch::collada::createMaterialRenderer(
        glitch::video::CMaterialRenderer **a1,
        int a2,
        _DWORD *a3,
        char *a4,
        _DWORD **a5,
        int a6)
{
  int v10; // r0
  glitch::video::CMaterialRenderer *v11; // r3
  glitch::video::CMaterialRenderer *v12; // r2
  glitch::video::CMaterialRenderer *v14; // r3
  glitch::video::CMaterialRenderer *v15; // r2
  glitch::video::CMaterialRenderer *v16; // [sp+8h] [bp-10h] BYREF
  glitch::video::CMaterialRenderer *v17; // [sp+Ch] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v18; // [sp+10h] [bp-8h] BYREF
  glitch::video::CMaterialRenderer *v19; // [sp+14h] [bp-4h] BYREF

  *a1 = nullptr;
  v10 = (*(int (__fastcall **)(_DWORD *))(*a3 + 92))(a3);
  if ( (v10 & 7) == 0 )
  {
    if ( (v10 & 0x18) != 0 )
    {
      glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(
        &v19,
        a2,
        (int)a3,
        a4,
        a5,
        a6);
      v14 = v19;
      v17 = v19;
      if ( v19 )
      {
        ++*(_DWORD *)v19;
        v14 = v17;
      }
      v15 = *a1;
      *a1 = v14;
      v17 = v15;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v17);
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
    }
    else if ( (v10 & 0x360) == 0 && !v10 )
    {
      glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileNullTraits>(&v18, a2, a3, a4, a5, a6);
      v11 = v18;
      v16 = v18;
      if ( v18 )
      {
        ++*(_DWORD *)v18;
        v11 = v16;
      }
      v12 = *a1;
      *a1 = v11;
      v16 = v12;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v16);
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v18);
    }
  }
  return a1;
}


// ===== 636c8c glitch::collada::CColladaFactory::createMaterialRenderer(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SEffect *,char const*,char const*,glitch::collada::CRootSceneNode *) =====
glitch::video::CMaterialRenderer **__fastcall glitch::collada::CColladaFactory::createMaterialRenderer(
        glitch::video::CMaterialRenderer **a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5,
        int a6,
        int a7,
        int a8)
{
  unsigned int Id; // r0
  int v13; // r3
  int v14; // r2
  int v15; // r3
  int *v16; // r0
  _DWORD *v17; // r3
  bool v18; // zf
  _DWORD *v20[2]; // [sp+14h] [bp-28h] BYREF
  _BYTE v21[20]; // [sp+1Ch] [bp-20h] BYREF
  void *p; // [sp+30h] [bp-Ch]

  if ( a5 )
  {
    (*(void (__fastcall **)(_BYTE *, int, int, int, int))(*(_DWORD *)a2 + 20))(v21, a2, a3, a6, a7);
    Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
           a4[55],
           p);
    if ( Id == 0xFFFF )
    {
      glitch::collada::SEffectList::SEffectList(v20, a3, a5);
      (*(void (__fastcall **)(int, int, int, _DWORD **))(*(_DWORD *)a2 + 16))(a2, a3, a5, v20);
      glitch::collada::createMaterialRenderer(a1, a3, a4, (char *)p, v20, a8);
      std::priv::_List_base<glitch::collada::SEffectList::SEntry,glitch::core::SProcessBufferAllocator<glitch::collada::SEffectList::SEntry>>::clear((int)v20);
    }
    else
    {
      v13 = a4[55];
      v14 = *(_DWORD *)(v13 + 28);
      v15 = *(_DWORD *)(v13 + 24);
      if ( Id >= (v14 - v15) >> 3 )
        v16 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
      else
        v16 = (int *)(v15 + 8 * Id);
      v17 = (_DWORD *)*v16;
      v18 = *v16 == 0;
      *a1 = (glitch::video::CMaterialRenderer *)*v16;
      if ( !v18 )
        ++*v17;
    }
    if ( p != v21 && p )
      GlitchFree(p);
  }
  else
  {
    glitch::os::Printer::logf(3, "Effect could not be loaded, using pink wireframe.", a3, a6);
    glitch::video::CMaterialRendererManager::createPinkWireFrameMaterialRenderer(
      (glitch::video::CMaterialRendererManager *)a1,
      (glitch::video::CMaterialRendererManager *)a4[55],
      "Material PinkWireFrame");
  }
  return a1;
}


// ===== 636e28 glitch::ps::PDeflector::apply<glitch::ps::GNPSParticle>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt,glitch::ps::IParticleContext<glitch::ps::GNPSParticle>*) =====
void *__fastcall glitch::ps::PDeflector::apply<glitch::ps::GNPSParticle>(int a1, float *a2, float *a3, float *a4)
{
  float v4; // r12
  int v5; // r8
  int v6; // r10
  float v7; // r9
  float v8; // lr
  float v9; // r7
  float v11; // r1
  float v12; // r0
  float v13; // r0
  int v14; // r3
  int v15; // r2
  int v16; // r12
  float v17; // r12
  float i; // r5
  float v19; // r7
  float v20; // r6
  float v21; // r10
  float v22; // r6
  float v23; // r11
  float v24; // r8
  float v25; // r7
  float v26; // r10
  float v28; // r9
  float v29; // r0
  float FrictionCoefficient; // r0
  float v31; // r11
  float v32; // r6
  float v33; // r7
  float v34; // r6
  float v35; // r7
  float v36; // r1
  float v37; // r2
  float v38; // r3
  float v39; // r0
  float v40; // r0
  float v41; // r0
  float v42; // r0
  float v43; // [sp+8h] [bp-F4h]
  float v44; // [sp+Ch] [bp-F0h]
  float v45; // [sp+14h] [bp-E8h]
  float v46; // [sp+14h] [bp-E8h]
  float v47; // [sp+14h] [bp-E8h]
  float v48; // [sp+14h] [bp-E8h]
  float *v50; // [sp+1Ch] [bp-E0h]
  float v52; // [sp+24h] [bp-D8h]
  float v53; // [sp+28h] [bp-D4h]
  float v54; // [sp+28h] [bp-D4h]
  float v55; // [sp+2Ch] [bp-D0h]
  float v56; // [sp+30h] [bp-CCh]
  float v57; // [sp+34h] [bp-C8h]
  float v58; // [sp+38h] [bp-C4h]
  float v59; // [sp+3Ch] [bp-C0h]
  float v60; // [sp+40h] [bp-BCh]
  float v61; // [sp+44h] [bp-B8h]
  float v62; // [sp+48h] [bp-B4h]
  float v63; // [sp+4Ch] [bp-B0h]
  float v64; // [sp+50h] [bp-ACh]
  float v66; // [sp+58h] [bp-A4h]
  float v67; // [sp+5Ch] [bp-A0h]
  float v68; // [sp+60h] [bp-9Ch]
  float v69; // [sp+64h] [bp-98h]
  float v70; // [sp+68h] [bp-94h]
  float v71; // [sp+6Ch] [bp-90h]
  float v72; // [sp+70h] [bp-8Ch]
  float v73; // [sp+74h] [bp-88h]
  float v74; // [sp+78h] [bp-84h]
  float v75; // [sp+7Ch] [bp-80h]
  float v76; // [sp+80h] [bp-7Ch]
  float v77; // [sp+84h] [bp-78h]
  float v78; // [sp+88h] [bp-74h]
  float v79; // [sp+8Ch] [bp-70h]
  float v80; // [sp+90h] [bp-6Ch]
  float v81; // [sp+A4h] [bp-58h]
  float v82; // [sp+A8h] [bp-54h]
  float v83; // [sp+ACh] [bp-50h]
  glitch::ps::PSRandom *v84; // [sp+B0h] [bp-4Ch]
  float v85; // [sp+B4h] [bp-48h]
  float v86[3]; // [sp+BCh] [bp-40h] BYREF
  _DWORD v87[3]; // [sp+C8h] [bp-34h] BYREF
  float v88[3]; // [sp+D4h] [bp-28h] BYREF
  float v89; // [sp+E0h] [bp-1Ch] BYREF
  float v90; // [sp+E4h] [bp-18h]
  float v91; // [sp+E8h] [bp-14h]
  float v92; // [sp+ECh] [bp-10h] BYREF
  float v93; // [sp+F0h] [bp-Ch]
  float v94; // [sp+F4h] [bp-8h]

  v50 = **(float ***)a1;
  v68 = *(float *)(*(_DWORD *)a1 + 20);
  v66 = *(float *)(*(_DWORD *)a1 + 4);
  v4 = v50[9];
  v5 = *((_DWORD *)v50 + 5);
  v6 = *((_DWORD *)v50 + 6);
  v7 = v50[8];
  v8 = v50[10];
  LODWORD(v60) = *((_DWORD *)v50 + 4) + 0x80000000;
  v9 = *(float *)(*(_DWORD *)a1 + 8);
  v70 = *(float *)(*(_DWORD *)a1 + 12);
  v71 = *(float *)(*(_DWORD *)a1 + 16);
  *((_BYTE *)v50 + 64) = 0;
  LODWORD(v59) = v5 + 0x80000000;
  LODWORD(v58) = v6 + 0x80000000;
  v63 = *v50;
  v62 = v50[1];
  v61 = v50[2];
  v55 = v50[12];
  v56 = v50[13];
  v11 = v50[14];
  v94 = v8;
  v93 = v4;
  v57 = v11;
  v92 = v7;
  glitch::core::vector3d<float>::normalize(&v92);
  v12 = sqrt((float)((float)((float)(v60 * v60) + (float)(v59 * v59)) + (float)(v58 * v58)));
  v64 = (float)(v12 * *(float *)(*(_DWORD *)a1 + 28)) * 0.5;
  v13 = sqrt((float)((float)((float)(v63 * v63) + (float)(v62 * v62)) + (float)(v61 * v61)));
  v67 = (float)(v13 * *(float *)(*(_DWORD *)a1 + 24)) * 0.5;
  v14 = *(_DWORD *)(a1 + 20);
  v15 = *(_DWORD *)(a1 + 24);
  v16 = *(_DWORD *)(a1 + 28);
  *(_BYTE *)(a1 + 68) = 0;
  LODWORD(v80) = v14 + 0x80000000;
  LODWORD(v79) = v15 + 0x80000000;
  LODWORD(v78) = v16 + 0x80000000;
  v69 = v66 * v9;
  v17 = *(float *)(a1 + 52);
  v89 = 0.0;
  v72 = v17;
  v90 = 0.0;
  v91 = 0.0;
  v73 = *(float *)(a1 + 56);
  v74 = *(float *)(a1 + 60);
  v77 = *(float *)(a1 + 4);
  v76 = *(float *)(a1 + 8);
  v75 = *(float *)(a1 + 12);
  for ( i = a4[20]; a3 != a2; a2 += 39 )
  {
    v19 = a2[4];
    v20 = a2[5];
    v89 = a2[3];
    v90 = v19;
    v91 = v20;
    v21 = i * v20;
    v45 = (float)((float)((float)(i * v89) * v92) + (float)((float)(i * v19) * v93)) + (float)((float)(i * v20) * v94);
    if ( v45 != 0.0 )
    {
      v53 = a2[1];
      v22 = (float)((float)((float)(v92 * (float)(v55 - *a2)) + (float)(v93 * (float)(v56 - v53)))
                  + (float)(v94 * (float)(v57 - a2[2])))
          / v45;
      if ( v22 > 0.0 && v22 <= 1.0 )
      {
        v23 = (float)(*a2 + (float)(v22 * (float)(i * v89))) - v55;
        v24 = (float)(v53 + (float)(v22 * (float)(i * v19))) - v56;
        v25 = (float)(a2[2] + (float)(v22 * v21)) - v57;
        v26 = (float)((float)((float)(v60 * v23) + (float)(v59 * v24)) + (float)(v58 * v25)) / v64;
        if ( v26 <= 1.0 && v26 >= -1.0 )
        {
          v28 = (float)((float)((float)(v63 * v23) + (float)(v62 * v24)) + (float)(v61 * v25)) / v67;
          if ( v28 <= 1.0 && v28 >= -1.0 )
          {
            v84 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(float *))(*(_DWORD *)a4 + 24))(a4);
            if ( v69 == 0.0 )
            {
              v85 = 0.0;
            }
            else
            {
              v42 = glitch::ps::PSRandom::Rand(v84);
              v85 = (float)(v69 * v42) + (float)(v69 * -0.5);
            }
            v52 = v93;
            v44 = v92;
            v54 = v94;
            LODWORD(v46) = COERCE_INT((float)((float)(v92 * v89) + (float)(v93 * v90)) + (float)(v94 * v91))
                         + 0x80000000;
            v83 = v89 + (float)(v46 * v92);
            v81 = v90 + (float)(v46 * v93);
            v82 = v91 + (float)(v46 * v94);
            v47 = v46 * (float)(v85 + v66);
            v29 = sqrt((float)((float)((float)(v83 * v83) + (float)(v81 * v81)) + (float)(v82 * v82)));
            FrictionCoefficient = glitch::ps::PDeflector::GetFrictionCoefficient(
                                    (glitch::ps::PDeflector *)a1,
                                    v71,
                                    v47,
                                    v29,
                                    (float)(1.0 - v22) * i);
            v89 = (float)(v47 * v44) + (float)(FrictionCoefficient * v83);
            v90 = (float)(v47 * v52) + (float)(FrictionCoefficient * v81);
            v91 = (float)(v47 * v54) + (float)(FrictionCoefficient * v82);
            if ( v70 > 0.0 )
            {
              v48 = (float)(v70 * 180.0) * -0.5;
              v39 = glitch::ps::PSRandom::Rand(v84);
              memset(v88, 0, sizeof(v88));
              glitch::core::vector3d<float>::rotateXYBy(&v89, (float)((float)((float)(v70 * 180.0) * v39) + v48), v88);
              v40 = glitch::ps::PSRandom::Rand(v84);
              memset(v87, 0, sizeof(v87));
              glitch::core::vector3d<float>::rotateYZBy(
                (int)&v89,
                (float)(v48 + (float)((float)(v70 * 180.0) * v40)),
                (int)v87);
              v41 = glitch::ps::PSRandom::Rand(v84);
              memset(v86, 0, sizeof(v86));
              glitch::core::vector3d<float>::rotateXZBy(&v89, (float)(v48 + (float)((float)(v70 * 180.0) * v41)), v86);
              v43 = (float)((float)(v92 * v89) + (float)(v93 * v90)) + (float)(v94 * v91);
              if ( v43 < 0.0 )
              {
                v89 = v89 + (float)((float)(v43 * -2.0) * v92);
                v90 = v90 + (float)((float)(v43 * -2.0) * v93);
                v91 = v91 + (float)((float)(v43 * -2.0) * v94);
              }
            }
            v31 = v55 + v23;
            v32 = v56 + v24;
            v33 = v57 + v25;
            if ( v68 > 0.0 )
            {
              v89 = v89
                  + (float)(v68
                          * (float)(v31
                                  - (float)((float)(v72 + (float)(v80 * (float)(v26 * v64)))
                                          + (float)(v77 * (float)(v28 * v67)))));
              v90 = v90
                  + (float)(v68
                          * (float)(v32
                                  - (float)((float)(v73 + (float)(v79 * (float)(v26 * v64)))
                                          + (float)(v76 * (float)(v28 * v67)))));
              v91 = v91
                  + (float)(v68
                          * (float)(v33
                                  - (float)((float)(v74 + (float)(v78 * (float)(v26 * v64)))
                                          + (float)(v75 * (float)(v28 * v67)))));
            }
            v34 = v32 + (float)(v93 * 0.3);
            v35 = v33 + (float)(v94 * 0.3);
            v36 = v89;
            v37 = v90;
            v38 = v91;
            *a2 = v31 + (float)(v92 * 0.3);
            a2[1] = v34;
            a2[2] = v35;
            a2[3] = v36;
            a2[4] = v37;
            a2[5] = v38;
          }
        }
      }
    }
  }
  return memcpy((void *)(a1 + 4), v50, 0x41u);
}


// ===== 637a60 glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PDeflector>::apply(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*,glitch::ps::IParticleContext<glitch::ps::GNPSParticle> *) =====
void *__fastcall glitch::ps::PForceProxy<glitch::ps::GNPSParticle,glitch::ps::PDeflector>::apply(
        int a1,
        float *a2,
        float *a3,
        float *a4)
{
  return glitch::ps::PDeflector::apply<glitch::ps::GNPSParticle>(a1 + 12, a2, a3, a4);
}


// ===== 637a68 glitch::video::IBuffer::unmap(void) =====
_BYTE *__fastcall glitch::video::IBuffer::unmap(_BYTE *this)
{
  char v1; // r3
  _BYTE *v2; // r4

  v1 = *(this + 19);
  v2 = this;
  if ( (v1 & 0x1Fu) <= 1 )
  {
    if ( (*(this + 18) & 0x20) != 0 )
    {
      this = (_BYTE *)(*(int (__fastcall **)(_BYTE *))(*(_DWORD *)this + 24))(this);
      v2[19] = 0;
    }
    else
    {
      *(this + 19) = 0;
    }
  }
  else
  {
    *(this + 19) = ((v1 & 0x1F) - 1) | v1 & 0xE0;
  }
  return this;
}


// ===== 637ac4 glitch::ps::PSRandom::RandVec(void) =====
glitch::ps::PSRandom *__fastcall glitch::ps::PSRandom::RandVec(glitch::ps::PSRandom *this, glitch::ps::PSRandom *a2)
{
  double v4; // r10
  double v5; // r8
  double v6; // r6
  float v7; // r0
  float v8; // r0
  float v9; // r0

  v4 = glitch::ps::PSRandom::Rand(a2);
  v5 = glitch::ps::PSRandom::Rand(a2);
  v6 = glitch::ps::PSRandom::Rand(a2);
  v7 = v4;
  *(float *)this = v7;
  v8 = v5;
  *((float *)this + 1) = v8;
  v9 = v6;
  *((float *)this + 2) = v9;
  return this;
}


// ===== 637b38 glitch::ps::PSManager::~PSManager() =====
void __fastcall glitch::ps::PSManager::~PSManager(glitch::ps::PSManager *this)
{
  ;
}


// ===== 637b3c glitch::collada::CGlitchNewParticleSystemSceneNode::getUID(void) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::getUID(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  return **((_DWORD **)this + 95);
}


// ===== 637b48 glitch::collada::CGlitchNewParticleSystemSceneNode::getParticleCount(void) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::getParticleCount(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
  return -1762037865 * ((*(_DWORD *)(v1 + 40) - *(_DWORD *)(v1 + 36)) >> 2);
}


// ===== 637b78 glitch::collada::CGlitchNewParticleSystemSceneNode::getType(void) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::getType(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  return 1734697316;
}


// ===== 637b84 glitch::collada::CGlitchNewParticleSystemSceneNode::getTransformedBoundingBox(void) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::getTransformedBoundingBox(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  return *((_DWORD *)this + 83);
}


// ===== 637b8c boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr() =====
glitch::IReferenceCounted **__fastcall boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(
        glitch::IReferenceCounted **a1)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *a1;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  return a1;
}


// ===== 637bac boost::intrusive_ptr<glitch::scene::CMeshBuffer>::~intrusive_ptr() =====
glitch::IReferenceCounted **__fastcall boost::intrusive_ptr<glitch::scene::CMeshBuffer>::~intrusive_ptr(
        glitch::IReferenceCounted **a1)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *a1;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  return a1;
}


// ===== 637bcc glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getWorldMatrixPtr(void) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getWorldMatrixPtr(int a1)
{
  return *(_DWORD *)(a1 + 12);
}


// ===== 637bd4 `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getWorldMatrixPtr(void) =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getWorldMatrixPtr(_DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getWorldMatrixPtr((int)a1 + *(_DWORD *)(*a1 - 40));
}


// ===== 637be4 glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::init(void) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::init(int *a1)
{
  int v1; // r2

  v1 = *a1;
  a1[1] = a1[2];
  *(int *)((char *)a1 + *(_DWORD *)(v1 - 12) + 76) = 0;
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 72) = 0;
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 36))((int)a1 + *(_DWORD *)(*a1 - 12));
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 44))((int)a1 + *(_DWORD *)(*a1 - 12));
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 56))((int)a1 + *(_DWORD *)(*a1 - 12));
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 68))((int)a1 + *(_DWORD *)(*a1 - 12));
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 76))((int)a1 + *(_DWORD *)(*a1 - 12));
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 100))((int)a1 + *(_DWORD *)(*a1 - 12));
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 112))((int)a1 + *(_DWORD *)(*a1 - 12));
  (*(void (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 124))((int)a1 + *(_DWORD *)(*a1 - 12));
  return (*(int (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 136))((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 637cf4 glitch::ps::GNPSParticle::GNPSParticle(glitch::ps::GNPSParticle const&) =====
_DWORD *__fastcall glitch::ps::GNPSParticle::GNPSParticle(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  result[12] = a2[12];
  result[13] = a2[13];
  result[14] = a2[14];
  result[15] = a2[15];
  result[16] = a2[16];
  result[17] = a2[17];
  result[18] = a2[18];
  result[19] = a2[19];
  result[20] = a2[20];
  result[21] = a2[21];
  result[22] = a2[22];
  result[23] = a2[23];
  result[24] = a2[24];
  result[25] = a2[25];
  result[26] = a2[26];
  result[27] = a2[27];
  result[28] = a2[28];
  result[29] = a2[29];
  result[30] = a2[30];
  result[31] = a2[31];
  result[32] = a2[32];
  result[33] = a2[33];
  result[34] = a2[34];
  result[35] = a2[35];
  result[36] = a2[36];
  result[37] = a2[37];
  result[38] = a2[38];
  return result;
}


// ===== 637e30 glitch::ps::GNPSParticle::operator=(glitch::ps::GNPSParticle const&) =====
_DWORD *__fastcall glitch::ps::GNPSParticle::operator=(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  result[12] = a2[12];
  result[13] = a2[13];
  result[14] = a2[14];
  result[15] = a2[15];
  result[16] = a2[16];
  result[17] = a2[17];
  result[18] = a2[18];
  result[19] = a2[19];
  result[20] = a2[20];
  result[21] = a2[21];
  result[22] = a2[22];
  result[23] = a2[23];
  result[24] = a2[24];
  result[25] = a2[25];
  result[26] = a2[26];
  result[27] = a2[27];
  result[28] = a2[28];
  result[29] = a2[29];
  result[30] = a2[30];
  result[31] = a2[31];
  result[32] = a2[32];
  result[33] = a2[33];
  result[34] = a2[34];
  result[35] = a2[35];
  result[36] = a2[36];
  result[37] = a2[37];
  result[38] = a2[38];
  return result;
}


// ===== 637f6c std::swap<glitch::ps::GNPSParticle>(glitch::ps::GNPSParticle &,glitch::ps::GNPSParticle &) =====
_DWORD *__fastcall std::swap<glitch::ps::GNPSParticle>(_DWORD *a1, _DWORD *a2)
{
  _DWORD v5[39]; // [sp+4h] [bp-9Ch] BYREF

  glitch::ps::GNPSParticle::GNPSParticle(v5, a1);
  glitch::ps::GNPSParticle::operator=(a1, a2);
  return glitch::ps::GNPSParticle::operator=(a2, v5);
}


// ===== 637fac std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*,std::__false_type const&) =====
int __fastcall std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v5; // r10
  int v8; // r10
  int v9; // r6
  int v10; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = -1762037865 * ((v3 - a3) >> 2);
  if ( v5 > 0 )
  {
    v9 = -1762037865 * ((v3 - a3) >> 2);
    v10 = 0;
    do
    {
      glitch::ps::GNPSParticle::operator=((_DWORD *)(a2 + v10), (_DWORD *)(a3 + v10));
      --v9;
      v10 += 156;
    }
    while ( v9 );
    v8 = a2 + 156 * v5;
  }
  else
  {
    v8 = a2;
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 638014 glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getPRand(void) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getPRand(int a1)
{
  return a1 + 4;
}


// ===== 63801c `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getPRand(void) =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getPRand(_DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::getPRand((int)a1 + *(_DWORD *)(*a1 - 32));
}


// ===== 63802c glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSizeModel(void) =====
void glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSizeModel()
{
  ;
}


// ===== 638030 `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSizeModel(void) =====
void `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSizeModel()
{
  glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSizeModel();
}


// ===== 638040 glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSize(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSize(int a1, int a2, int a3)
{
  float result; // r0
  glitch::ps::PSRandom *i; // r8
  float v8; // r0
  float v9; // r0

  result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)));
  for ( i = (glitch::ps::PSRandom *)LODWORD(result); a3 != a2; a2 += 156 )
  {
    v8 = glitch::ps::PSRandom::Rand(i);
    v9 = (float)((float)((float)(*(float *)(a1 + 8) * v8) + (float)(*(float *)(a1 + 8) * v8)) - *(float *)(a1 + 8))
       + *(float *)(a1 + 4);
    *(float *)(a2 + 100) = v9;
    result = v9 * *(float *)(a1 + 16);
    *(float *)(a2 + 96) = result;
  }
  return result;
}


// ===== 6380c8 `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSize(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSize(
        _DWORD *a1,
        int a2,
        int a3)
{
  return glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::initPSize((int)a1 + *(_DWORD *)(*a1 - 56), a2, a3);
}


// ===== 6380d8 glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColorModel(void) =====
void glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColorModel()
{
  ;
}


// ===== 6380dc `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColorModel(void) =====
void `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColorModel()
{
  glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColorModel();
}


// ===== 6380ec glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColor(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColor(float result, float *a2, float *a3)
{
  float *v3; // r4
  float v5; // r6
  float *i; // r7
  glitch::ps::PSRandom *v7; // r0
  double v8; // r0
  int v9; // r8
  int v10; // r11
  int v11; // r10
  int v12; // r9
  int v13; // r10
  int v14; // r3
  int v15; // r2
  glitch::ps::PSRandom *v16; // r9
  float v17; // r10
  float v18; // r8
  float v19; // r10
  float v20; // r8
  int v21; // r1
  float v22; // r0
  float v23; // r0
  glitch::ps::PSRandom *j; // r6
  double v25; // r10
  double v26; // r8
  double v27; // r0
  char v28; // r7
  unsigned int v29; // [sp+4h] [bp-8h]

  v3 = a2;
  v5 = result;
  if ( a2 != a3 )
  {
    for ( i = a2; a3 != i; i += 39 )
    {
      v21 = *(_DWORD *)(LODWORD(v5) + 56);
      if ( v21 > 1 || *(int *)(LODWORD(v5) + 60) > 1 )
      {
        if ( *(int *)(LODWORD(v5) + 64) > 0 )
        {
          v7 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(LODWORD(v5)
                                                                              + *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12))
                                                                  + 24))(LODWORD(v5) + *(_DWORD *)(*(_DWORD *)LODWORD(v5)
                                                                                                 - 12));
          v8 = glitch::ps::PSRandom::Rand(v7);
          v9 = *(_DWORD *)(LODWORD(v5) + 56);
          v10 = *(_DWORD *)(LODWORD(v5) + 60);
          *(float *)&v8 = v8;
          v11 = (int)(float)((float)(v9 * v10) * *(float *)&v8);
        }
        else
        {
          v10 = *(_DWORD *)(LODWORD(v5) + 60);
          v9 = *(_DWORD *)(LODWORD(v5) + 56);
          v11 = (*(_DWORD *)(LODWORD(v5) + 68))++ % (v10 * v21);
        }
        v12 = v11 % v9;
        v13 = v11 / v9;
        i[16] = (float)(1.0 / (float)v9) * (float)v12;
        i[17] = (float)(1.0 / (float)v10) * (float)v13;
        result = (float)(1.0 / (float)*(int *)(LODWORD(v5) + 60)) * (float)(v13 + 1);
        i[18] = (float)(1.0 / (float)*(int *)(LODWORD(v5) + 56)) * (float)(v12 + 1);
        i[19] = result;
      }
      if ( *(_DWORD *)(LODWORD(v5) + 72) )
      {
        v14 = *((_DWORD *)i + 16);
        i[16] = i[18];
        *((_DWORD *)i + 18) = v14;
      }
      if ( *(_DWORD *)(LODWORD(v5) + 76) )
      {
        v15 = *((_DWORD *)i + 19);
        i[19] = i[17];
        *((_DWORD *)i + 17) = v15;
      }
      if ( !*(_DWORD *)(LODWORD(v5) + 4) && !*(_DWORD *)(LODWORD(v5) + 8) )
        continue;
      v16 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(LODWORD(v5)
                                                                           + *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12))
                                                               + 24))(LODWORD(v5) + *(_DWORD *)(*(_DWORD *)LODWORD(v5)
                                                                                              - 12));
      v17 = *(float *)(LODWORD(v5) + 16) * *(float *)(LODWORD(v5) + 20);
      v18 = *(float *)(LODWORD(v5) + 24) * *(float *)(LODWORD(v5) + 28);
      if ( v17 == 0.0 )
      {
        v19 = 0.0;
        if ( (float)(*(float *)(LODWORD(v5) + 24) * *(float *)(LODWORD(v5) + 28)) != 0.0 )
          goto LABEL_25;
        v20 = 0.0;
      }
      else
      {
        v22 = glitch::ps::PSRandom::Rand(v16);
        v19 = (float)(v17 * v22) + (float)(v17 * -0.5);
        if ( v18 != 0.0 )
        {
LABEL_25:
          v23 = glitch::ps::PSRandom::Rand(v16);
          v20 = (float)(v18 * v23) + (float)(v18 * -0.5);
          goto LABEL_16;
        }
        v20 = 0.0;
      }
LABEL_16:
      i[20] = v19 + *(float *)(LODWORD(v5) + 16);
      result = v20 + *(float *)(LODWORD(v5) + 24);
      i[21] = result;
    }
  }
  if ( *(_DWORD *)(LODWORD(v5) + 52) )
  {
    result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)(LODWORD(v5) + *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12))
                                                     + 24))(LODWORD(v5) + *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12)));
    for ( j = (glitch::ps::PSRandom *)LODWORD(result); a3 != v3; v3 += 39 )
    {
      v25 = glitch::ps::PSRandom::Rand(j);
      v26 = glitch::ps::PSRandom::Rand(j);
      v27 = glitch::ps::PSRandom::Rand(j);
      v29 = LODWORD(v27);
      *(float *)&v27 = v25;
      v28 = (int)(float)(*(float *)&v27 * 255.0);
      *(float *)&v27 = v26;
      LOBYTE(v26) = (int)(float)(*(float *)&v27 * 255.0);
      *(float *)&v27 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v27), v29));
      LODWORD(result) = (int)(float)(*(float *)&v27 * 255.0);
      *((_BYTE *)v3 + 37) = LOBYTE(v26);
      *((_BYTE *)v3 + 38) = LOBYTE(result);
      *((_BYTE *)v3 + 36) = v28;
      *((_BYTE *)v3 + 39) = -1;
    }
  }
  return result;
}


// ===== 638514 `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColor(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColor(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::initPColor(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 68))),
           a2,
           a3);
}


// ===== 638524 glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::hasColorAnimationTrack(void) =====
bool __fastcall glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::hasColorAnimationTrack(int a1)
{
  return *(_DWORD *)(a1 + 8) != 0;
}


// ===== 638534 `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::hasColorAnimationTrack(void) =====
bool __fastcall `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::hasColorAnimationTrack(
        _DWORD *a1)
{
  return glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::hasColorAnimationTrack((int)a1 + *(_DWORD *)(*a1 - 36));
}


// ===== 638544 glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPPosition(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
int __fastcall glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPPosition(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  int v6; // r7
  int v7; // r3
  int result; // r0
  int v9; // r3
  int v10; // r1
  int v11; // r10
  int (__fastcall *v12)(int, int); // r8
  int v13; // r0
  _DWORD v14[4]; // [sp+4h] [bp-10h] BYREF

  v6 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 24))((int)a1 + *(_DWORD *)(*a1 - 12));
  v7 = *(_DWORD *)(*a1 - 12);
  result = (int)a1 + v7;
  if ( !*((_BYTE *)a1 + v7 + 84) )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)a1 + v7) + 32))(result);
    if ( result )
    {
      v11 = a1[1];
      v12 = *(int (__fastcall **)(int, int))(*(_DWORD *)v11 + 8);
      v13 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 32))((int)a1 + *(_DWORD *)(*a1 - 12));
      result = v12(v11, v13);
    }
  }
  for ( ; a3 != a2; a2 += 39 )
  {
    result = (*(int (__fastcall **)(_DWORD *, _DWORD, int))(*(_DWORD *)a1[1] + 4))(v14, a1[1], v6);
    v9 = v14[2];
    v10 = v14[0];
    a2[1] = v14[1];
    a2[2] = v9;
    *a2 = v10;
  }
  return result;
}


// ===== 638624 `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPPosition(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
int __fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPPosition(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3)
{
  return glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPPosition(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 80)),
           a2,
           a3);
}


// ===== 638634 glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotionModel(void) =====
void glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotionModel()
{
  ;
}


// ===== 638638 `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotionModel(void) =====
void `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotionModel()
{
  glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotionModel();
}


// ===== 638648 glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForces(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
void glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForces()
{
  ;
}


// ===== 63864c `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForces(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
void `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForces()
{
  glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForces();
}


// ===== 63865c glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpinModel(void) =====
void glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpinModel()
{
  ;
}


// ===== 638660 `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpinModel(void) =====
void `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpinModel()
{
  glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpinModel();
}


// ===== 638670 glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLifeModel(void) =====
void glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLifeModel()
{
  ;
}


// ===== 638674 `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLifeModel(void) =====
void `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLifeModel()
{
  glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLifeModel();
}


// ===== 638684 glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLife(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLife(int a1, int a2, int a3)
{
  float result; // r0
  glitch::ps::PSRandom *i; // r10
  double v8; // r0
  float v9; // r6

  result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)));
  for ( i = (glitch::ps::PSRandom *)LODWORD(result); a3 != a2; a2 += 156 )
  {
    v8 = glitch::ps::PSRandom::Rand(i);
    v9 = *(float *)(a1 + 8);
    *(_DWORD *)(a2 + 88) = 0;
    *(float *)&v8 = v8;
    result = *(float *)(a1 + 4) + (float)((float)(v9 * *(float *)&v8) + (float)(v9 * -0.5));
    *(float *)(a2 + 92) = result;
  }
  return result;
}


// ===== 638718 `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLife(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLife(
        _DWORD *a1,
        int a2,
        int a3)
{
  return glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::initPLife((int)a1 + *(_DWORD *)(*a1 - 136), a2, a3);
}


// ===== 638728 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(
        _DWORD *result,
        int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(a2 + 16);
  *result = v2;
  if ( v2 )
    ++*v2;
  return result;
}


// ===== 638744 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(
        _DWORD *a1,
        _DWORD *a2)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(
    a1,
    (int)a2 + *(_DWORD *)(*a2 - 20));
  return a1;
}


// ===== 638764 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(
        int a1)
{
  return *(_DWORD *)(a1 + 152);
}


// ===== 63876c `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded((int)a1 + *(_DWORD *)(*a1 - 24));
}


// ===== 63877c glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
void glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData()
{
  ;
}


// ===== 638780 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
void `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData()
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData();
}


// ===== 638790 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(
        _DWORD *result,
        int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(a2 + 16);
  *result = v2;
  if ( v2 )
    ++*v2;
  return result;
}


// ===== 6387ac `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(
        _DWORD *a1,
        _DWORD *a2)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderVertexStreams(
    a1,
    (int)a2 + *(_DWORD *)(*a2 - 20));
  return a1;
}


// ===== 6387cc glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(
        int a1)
{
  return *(_DWORD *)(a1 + 152);
}


// ===== 6387d4 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderBufferSizeNeeded((int)a1 + *(_DWORD *)(*a1 - 24));
}


// ===== 6387e4 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
void glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData()
{
  ;
}


// ===== 6387e8 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
void `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData()
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderData();
}


// ===== 6387f8 std::priv::__find_if<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::CompareForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::CompareForce<glitch::ps::GNPSParticle>,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find_if<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::CompareForce<glitch::ps::GNPSParticle>>(
        _DWORD *a1,
        int a2,
        int a3)
{
  _DWORD *v3; // r3
  int v4; // r0
  int v5; // r12
  int v6; // r4
  _DWORD *result; // r0
  int v8; // r4
  int v9; // r0
  int v10; // r3

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
        v10 = *(_DWORD *)(a3 + 4);
        break;
      case 3:
        v10 = *(_DWORD *)(a3 + 4);
        if ( v10 == *(_DWORD *)(*result + 4) )
          return result;
        ++result;
        break;
      case 1:
        v10 = *(_DWORD *)(a3 + 4);
LABEL_23:
        if ( *(_DWORD *)(*result + 4) != v10 )
          return (_DWORD *)a2;
        return result;
      default:
        return (_DWORD *)a2;
    }
    if ( *(_DWORD *)(*result + 4) == v10 )
      return result;
    ++result;
    goto LABEL_23;
  }
  v8 = *(_DWORD *)(a3 + 4);
  if ( v8 == *(_DWORD *)(*v3 + 4) )
    return v3;
  result = v3 + 1;
  if ( v8 != *(_DWORD *)(v3[1] + 4) )
  {
    result = v3 + 2;
    if ( v8 != *(_DWORD *)(v3[2] + 4) )
    {
      result = v3 + 3;
      if ( v8 != *(_DWORD *)(v3[3] + 4) )
      {
        do
        {
          if ( !--v5 )
          {
            result = v3 + 4;
            v6 = (a2 - (int)(v3 + 4)) >> 2;
            goto LABEL_15;
          }
          if ( *(_DWORD *)(v3[4] + 4) == v8 )
            return v3 + 4;
          if ( v8 == *(_DWORD *)(v3[5] + 4) )
            return v3 + 5;
          if ( v8 == *(_DWORD *)(v3[6] + 4) )
            return v3 + 6;
          v9 = v3[7];
          v3 += 4;
        }
        while ( v8 != *(_DWORD *)(v9 + 4) );
        return v3 + 3;
      }
    }
  }
  return result;
}


// ===== 638954 glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::convertVertexPosition(glitch::ps::GNPSParticle const*,uint,uint,glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>> const&) =====
float __fastcall glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::convertVertexPosition(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4)
{
  int v4; // r7
  int v5; // r6
  float v6; // r9
  int v7; // r4
  float v8; // r10
  float v9; // r0
  float v10; // r5
  float v11; // r0
  float v12; // r10
  float v13; // r0
  float v14; // r9
  float v15; // r0
  float v16; // r10
  float v17; // r0
  float v18; // r8
  float v19; // r0
  float v20; // r9
  float v21; // r0
  float result; // r0
  float v23; // [sp+4h] [bp-18h]
  float v24; // [sp+4h] [bp-18h]
  float v25; // [sp+Ch] [bp-10h]
  float v26; // [sp+10h] [bp-Ch]
  float v27; // [sp+10h] [bp-Ch]

  v4 = a4[1];
  v5 = *(unsigned __int16 *)(*a4 + 14) * a2;
  v6 = *(float *)(v4 + v5);
  v7 = v4 + v5;
  v8 = *(float *)(v4 + v5 + 4);
  v23 = (float)((float)((float)(v6
                              * *(float *)glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat)
                      + (float)(v8
                              * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat
                                         + 16)))
              + (float)(*(float *)(v4 + v5 + 8)
                      * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 32)))
      + *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 48);
  v26 = (float)((float)((float)(v6
                              * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat
                                         + 4))
                      + (float)(v8
                              * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat
                                         + 20)))
              + (float)(*(float *)(v4 + v5 + 8)
                      * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 36)))
      + *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 52);
  v9 = (float)((float)((float)(v6
                             * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat
                                        + 8))
                     + (float)(v8
                             * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat
                                        + 24)))
             + (float)(*(float *)(v4 + v5 + 8)
                     * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 40)))
     + *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 56);
  v10 = v9;
  *(float *)(v4 + v5) = v23;
  *(float *)(v7 + 8) = v9;
  v11 = v23;
  *(float *)(v7 + 4) = v26;
  v12 = *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 52);
  v24 = *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 56);
  v13 = v11 - *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat + 48);
  *(float *)(v4 + v5) = v13;
  v14 = v26 - v12;
  *(float *)(v7 + 4) = v26 - v12;
  *(float *)(v7 + 8) = v10 - v24;
  v25 = (float)((float)(v13 * *(float *)&glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SpinMat)
              + (float)((float)(v26 - v12) * *(float *)&dword_9F7D54))
      + (float)((float)(v10 - v24) * *(float *)&dword_9F7D64);
  *(float *)(v4 + v5) = v25;
  v27 = (float)((float)(v13 * *(float *)&dword_9F7D48) + (float)((float)(v26 - v12) * *(float *)&dword_9F7D58))
      + (float)((float)(v10 - v24) * *(float *)&dword_9F7D68);
  *(float *)(v7 + 4) = v27;
  v15 = (float)((float)(v13 * *(float *)&dword_9F7D4C) + (float)(v14 * *(float *)&dword_9F7D5C))
      + (float)((float)(v10 - v24) * *(float *)&dword_9F7D6C);
  *(float *)(v7 + 8) = v15;
  v16 = v15;
  v17 = (float)((float)(v25 * *(float *)&glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::RotMat)
              + (float)(v27 * *(float *)&dword_9F7DDC))
      + (float)(v15 * *(float *)&dword_9F7DEC);
  *(float *)(v4 + v5) = v17;
  v18 = v17;
  v19 = (float)((float)(v25 * *(float *)&dword_9F7DD0) + (float)(v27 * *(float *)&dword_9F7DE0))
      + (float)(v16 * *(float *)&dword_9F7DF0);
  *(float *)(v7 + 4) = v19;
  v20 = v19;
  v21 = (float)((float)(v25 * *(float *)&dword_9F7DD4) + (float)(v27 * *(float *)&dword_9F7DE4))
      + (float)(v16 * *(float *)&dword_9F7DF4);
  *(float *)(v7 + 8) = v21;
  *(float *)(v4 + v5) = v18 + *a1;
  *(float *)(v7 + 4) = v20 + a1[1];
  result = v21 + a1[2];
  *(float *)(v7 + 8) = result;
  return result;
}


// ===== 638d54 std::priv::__find_if<glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>,std::random_access_iterator_tag const&) =====
float *__fastcall std::priv::__find_if<glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>>(
        float *a1,
        int a2,
        float a3)
{
  int v4; // r3
  float *v5; // r4
  int v6; // r8
  float v7; // r0
  float v8; // r1
  float v9; // r0
  float v10; // r1
  float v11; // r0
  float v12; // r1
  float v13; // r0
  float v14; // r1
  float v15; // r0
  float v16; // r1
  float v18; // r0
  float v19; // r1
  float v20; // r0
  float v21; // r1
  float v22; // r0
  float v23; // r1

  v4 = -1762037865 * ((a2 - (int)a1) >> 2);
  v5 = a1;
  v6 = v4 >> 2;
  if ( v4 >> 2 <= 0 )
  {
LABEL_16:
    if ( v4 != 2 )
    {
      if ( v4 != 3 )
      {
        if ( v4 != 1 )
          return (float *)a2;
LABEL_30:
        v22 = a3 + v5[22];
        v23 = v5[23];
        v5[22] = v22;
        if ( v22 >= v23 || v22 < 0.0 )
          return v5;
        return (float *)a2;
      }
      v18 = a3 + v5[22];
      v19 = v5[23];
      v5[22] = v18;
      if ( v18 >= v19 || v18 < 0.0 )
        return v5;
      v5 += 39;
    }
    v20 = a3 + v5[22];
    v21 = v5[23];
    v5[22] = v20;
    if ( v20 >= v21 || v20 < 0.0 )
      return v5;
    v5 += 39;
    goto LABEL_30;
  }
  v7 = a3 + a1[22];
  v8 = v5[23];
  v5[22] = v7;
  if ( v7 < v8 && v7 >= 0.0 )
  {
    for ( v5 += 39; ; v5 += 156 )
    {
      v9 = a3 + v5[22];
      v10 = v5[23];
      v5[22] = v9;
      if ( v9 >= v10 || v9 < 0.0 )
        break;
      v11 = a3 + v5[61];
      v12 = v5[62];
      v5[61] = v11;
      if ( v11 >= v12 || v11 < 0.0 )
        return v5 + 39;
      v13 = a3 + v5[100];
      v14 = v5[101];
      v5[100] = v13;
      if ( v13 >= v14 || v13 < 0.0 )
      {
        v5 += 78;
        return v5;
      }
      if ( !--v6 )
      {
        v5 += 117;
        v4 = -1762037865 * ((a2 - (int)v5) >> 2);
        goto LABEL_16;
      }
      v15 = a3 + v5[139];
      v16 = v5[140];
      v5[139] = v15;
      if ( v15 >= v16 || v15 < 0.0 )
      {
        v5 += 117;
        return v5;
      }
    }
  }
  return v5;
}


// ===== 638fbc std::remove_if<glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>) =====
float *__fastcall std::remove_if<glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>>(
        float *a1,
        int a2,
        float a3)
{
  float *v5; // r0
  float *v6; // r8
  float *i; // r6
  float v8; // r0
  float v9; // r1

  v5 = std::priv::__find_if<glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>>(a1, a2, a3);
  v6 = v5;
  if ( (float *)a2 != v5 )
  {
    for ( i = v5 + 39; (float *)a2 != i; i += 39 )
    {
      v8 = a3 + i[22];
      v9 = i[23];
      i[22] = v8;
      if ( v8 < v9 && v8 >= 0.0 )
      {
        glitch::ps::GNPSParticle::operator=(v6, i);
        v6 += 39;
      }
    }
  }
  return v6;
}


// ===== 63904c glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::applyPLife(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float *__fastcall glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::applyPLife(_DWORD *a1, float *a2, int a3)
{
  float *v4; // r5
  float *result; // r0

  v4 = (float *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  result = std::remove_if<glitch::ps::GNPSParticle *,glitch::ps::AgeNKillCheck<glitch::ps::GNPSParticle>>(
             a2,
             a3,
             v4[20]);
  if ( (float *)a3 != result )
    return (float *)std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
                      (int)(v4 + 9),
                      (int)result,
                      a3);
  return result;
}


// ===== 63909c `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::applyPLife(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float *__fastcall `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::applyPLife(
        _DWORD *a1,
        float *a2,
        int a3)
{
  return glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::applyPLife(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 140)),
           a2,
           a3);
}


// ===== 6390ac std::priv::__unguarded_linear_insert<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::priv::__unguarded_linear_insert<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _DWORD *v3; // r6

  v2 = a1 - 39;
  v3 = a1;
  if ( *((float *)a1 - 1) < *(float *)(a2 + 152) )
  {
    while ( 1 )
    {
      glitch::ps::GNPSParticle::operator=(v3, v2);
      v3 = v2;
      if ( *((float *)v2 - 1) >= *(float *)(a2 + 152) )
        break;
      v2 -= 39;
    }
  }
  return glitch::ps::GNPSParticle::operator=(v3, (_DWORD *)a2);
}


// ===== 639110 std::priv::__unguarded_insertion_sort_aux<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::priv::__unguarded_insertion_sort_aux<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        _DWORD *result,
        _DWORD *a2)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r0
  _DWORD v5[39]; // [sp+0h] [bp-A4h] BYREF

  if ( result != a2 )
  {
    v3 = result;
    do
    {
      glitch::ps::GNPSParticle::GNPSParticle(v5, v3);
      v4 = v3;
      v3 += 39;
      result = std::priv::__unguarded_linear_insert<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
                 v4,
                 (int)v5);
    }
    while ( a2 != v3 );
  }
  return result;
}


// ===== 639160 std::priv::__linear_insert<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::priv::__linear_insert<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v4; // r5
  int v6; // r4
  _DWORD v8[39]; // [sp+0h] [bp-A0h] BYREF

  v4 = a2;
  if ( *(float *)(a1 + 152) >= *(float *)(a3 + 152) )
  {
    glitch::ps::GNPSParticle::GNPSParticle(v8, (_DWORD *)a3);
    return std::priv::__unguarded_linear_insert<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
             v4,
             (int)v8);
  }
  else
  {
    v6 = -1762037865 * (((int)a2 - a1) >> 2);
    if ( v6 > 0 )
    {
      while ( 1 )
      {
        glitch::ps::GNPSParticle::operator=(v4, v4 - 39);
        if ( !--v6 )
          break;
        v4 -= 39;
      }
    }
    return glitch::ps::GNPSParticle::operator=((_DWORD *)a1, (_DWORD *)a3);
  }
}


// ===== 6391fc std::priv::__insertion_sort<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::priv::__insertion_sort<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        _DWORD *result,
        _DWORD *a2)
{
  int v2; // r6
  _DWORD *i; // r4
  _DWORD *v5; // r1
  _DWORD v6[39]; // [sp+0h] [bp-A0h] BYREF

  v2 = (int)result;
  if ( result != a2 )
  {
    for ( i = result + 39;
          a2 != i;
          result = std::priv::__linear_insert<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
                     v2,
                     v5,
                     (int)v6) )
    {
      glitch::ps::GNPSParticle::GNPSParticle(v6, i);
      v5 = i;
      i += 39;
    }
  }
  return result;
}


// ===== 63925c std::priv::__final_insertion_sort<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::priv::__final_insertion_sort<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        _DWORD *a1,
        char *a2)
{
  _DWORD *v3; // r5

  if ( a2 - (char *)a1 <= 2651 )
    return std::priv::__insertion_sort<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
             a1,
             a2);
  v3 = a1 + 624;
  std::priv::__insertion_sort<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
    a1,
    a1 + 624);
  return std::priv::__unguarded_insertion_sort_aux<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
           v3,
           a2);
}


// ===== 6392bc std::__push_heap<glitch::ps::GNPSParticle *,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,int,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::__push_heap<glitch::ps::GNPSParticle *,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int v4; // r4
  _DWORD *v8; // r11
  int v10; // r7

  v4 = a2;
  if ( a2 > a3 )
  {
    v10 = (a2 - 1) / 2;
    if ( *(float *)(a4 + 152) < *(float *)(a1 + 156 * v10 + 152) )
    {
      while ( 1 )
      {
        v8 = (_DWORD *)(a1 + 156 * v10);
        glitch::ps::GNPSParticle::operator=((_DWORD *)(a1 + 156 * v4), v8);
        if ( a3 >= v10 )
          break;
        v4 = v10;
        if ( *(float *)(a4 + 152) >= *(float *)(a1 + 156 * ((v10 - 1) / 2) + 152) )
          break;
        v10 = (v10 - 1) / 2;
      }
    }
    else
    {
      v8 = (_DWORD *)(a1 + 156 * a2);
    }
  }
  else
  {
    v8 = (_DWORD *)(a1 + 156 * a2);
  }
  return glitch::ps::GNPSParticle::operator=(v8, (_DWORD *)a4);
}


// ===== 639370 std::__adjust_heap<glitch::ps::GNPSParticle *,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,int,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::__adjust_heap<glitch::ps::GNPSParticle *,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        int a1,
        int a2,
        int a3,
        _DWORD *a4)
{
  int v4; // r4
  int v7; // r8
  int v8; // r11
  int v9; // r7
  int v11; // r4
  _DWORD v14[39]; // [sp+10h] [bp-A4h] BYREF

  v4 = 2 * (a2 + 1);
  if ( v4 < a3 )
  {
    v8 = a2;
    do
    {
      v7 = v4 - 1;
      v9 = a1 + 156 * v4;
      if ( *(float *)(a1 + 156 * (v4 - 1) + 152) < *(float *)(v9 + 152) )
        v9 = a1 + 156 * (v4 - 1);
      else
        v7 = v4;
      v4 = 2 * (v7 + 1);
      glitch::ps::GNPSParticle::operator=((_DWORD *)(a1 + 156 * v8), (_DWORD *)v9);
      v8 = v7;
    }
    while ( a3 > v4 );
  }
  else
  {
    v7 = a2;
  }
  if ( v4 == a3 )
  {
    v11 = v4 - 1;
    glitch::ps::GNPSParticle::operator=((_DWORD *)(a1 + 156 * v7), (_DWORD *)(a1 + 156 * v11));
    v7 = v11;
  }
  glitch::ps::GNPSParticle::GNPSParticle(v14, a4);
  return std::__push_heap<glitch::ps::GNPSParticle *,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
           a1,
           v7,
           a2,
           (int)v14);
}


// ===== 639440 std::__make_heap<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,glitch::ps::GNPSParticle,int>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,glitch::ps::GNPSParticle *,int *) =====
_DWORD *__fastcall std::__make_heap<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,glitch::ps::GNPSParticle,int>(
        _DWORD *result,
        int a2)
{
  int v2; // r1
  int v3; // r7
  int v4; // r8
  int v5; // r4
  _DWORD *v6; // r5
  _DWORD v7[39]; // [sp+8h] [bp-A4h] BYREF

  v2 = a2 - (_DWORD)result;
  v3 = (int)result;
  if ( v2 >= 312 )
  {
    v4 = -1762037865 * (v2 >> 2);
    v5 = (v4 - 2) >> 1;
    v6 = &result[39 * v5];
    while ( 1 )
    {
      glitch::ps::GNPSParticle::GNPSParticle(v7, v6);
      result = std::__adjust_heap<glitch::ps::GNPSParticle *,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
                 v3,
                 v5,
                 v4,
                 v7);
      v6 -= 39;
      if ( !v5 )
        break;
      --v5;
    }
  }
  return result;
}


// ===== 6394c0 std::__pop_heap<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,int>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,int *) =====
_DWORD *__fastcall std::__pop_heap<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD v8[39]; // [sp+8h] [bp-A4h] BYREF

  glitch::ps::GNPSParticle::operator=(a3, a1);
  glitch::ps::GNPSParticle::GNPSParticle(v8, a4);
  return std::__adjust_heap<glitch::ps::GNPSParticle *,int,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
           (int)a1,
           0,
           -1762037865 * ((a2 - (int)a1) >> 2),
           v8);
}


// ===== 639524 std::__pop_heap_aux<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::__pop_heap_aux<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r5
  _DWORD v5[39]; // [sp+8h] [bp-A0h] BYREF

  v2 = (_DWORD *)(a2 - 156);
  glitch::ps::GNPSParticle::GNPSParticle(v5, (_DWORD *)(a2 - 156));
  return std::__pop_heap<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,int>(
           a1,
           (int)v2,
           v2,
           v5);
}


// ===== 639570 std::priv::__partial_sort<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::priv::__partial_sort<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        int a1,
        unsigned int a2,
        unsigned int a3)
{
  _DWORD *result; // r0
  unsigned int v7; // r4
  _DWORD *v8; // r2
  int v9; // r4
  int v10; // r1
  _DWORD v11[39]; // [sp+8h] [bp-A8h] BYREF

  result = std::__make_heap<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,glitch::ps::GNPSParticle,int>(
             (_DWORD *)a1,
             a2);
  if ( a2 < a3 )
  {
    v7 = a2;
    do
    {
      while ( 1 )
      {
        result = (_DWORD *)(*(float *)(a1 + 152) < *(float *)(v7 + 152));
        if ( *(float *)(a1 + 152) < *(float *)(v7 + 152) )
          break;
        v7 += 156;
        if ( a3 <= v7 )
          goto LABEL_6;
      }
      glitch::ps::GNPSParticle::GNPSParticle(v11, (_DWORD *)v7);
      v8 = (_DWORD *)v7;
      v7 += 156;
      result = std::__pop_heap<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>,int>(
                 (_DWORD *)a1,
                 a2,
                 v8,
                 v11);
    }
    while ( a3 > v7 );
  }
LABEL_6:
  if ( (int)(a2 - a1) > 311 )
  {
    v9 = 0;
    do
    {
      v10 = a2 + v9;
      v9 -= 156;
      result = std::__pop_heap_aux<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
                 (_DWORD *)a1,
                 v10);
    }
    while ( (int)(a2 - a1 + v9) > 311 );
  }
  return result;
}


// ===== 639644 std::priv::__introsort_loop<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,int,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,int,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
_DWORD *__fastcall std::priv::__introsort_loop<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,int,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        _DWORD *result,
        unsigned int a2,
        int a3,
        int a4)
{
  int v4; // r2
  unsigned int v5; // r7
  int v6; // r5
  int v7; // r6
  int v8; // r2
  float v9; // r10
  float v10; // r8
  _DWORD *v11; // r4
  unsigned int v12; // r8
  unsigned int i; // r4
  _DWORD v14[38]; // [sp+1Ch] [bp-A8h] BYREF
  float v15; // [sp+B4h] [bp-10h]
  _BYTE v16[8]; // [sp+BCh] [bp-8h] BYREF

  v4 = a2 - (_DWORD)result;
  v5 = a2;
  v6 = (int)result;
  v7 = a4;
  if ( (int)(a2 - (_DWORD)result) > 2651 )
  {
    if ( a4 )
    {
      do
      {
        v8 = v4 >> 2;
        v9 = *(float *)(v6 + 152);
        v10 = *(float *)(v6 + 156 * ((-1762037865 * v8) >> 1) + 152);
        --v7;
        v11 = (_DWORD *)(v5 - 156);
        if ( v10 >= v9 )
        {
          if ( v9 > *(float *)(v5 - 4) )
            goto LABEL_12;
          if ( v10 <= *(float *)(v5 - 4) )
LABEL_19:
            v11 = (_DWORD *)(v6 + 156 * ((-1762037865 * v8) >> 1));
        }
        else
        {
          if ( v10 > *(float *)(v5 - 4) )
            goto LABEL_19;
          if ( v9 <= *(float *)(v5 - 4) )
LABEL_12:
            v11 = (_DWORD *)v6;
        }
        glitch::ps::GNPSParticle::GNPSParticle(v14, v11);
        v12 = v5;
        for ( i = v6; ; i += 156 )
        {
          for ( ; *(float *)(i + 152) > v15; i += 156 )
            ;
          do
            v12 -= 156;
          while ( *(float *)(v12 + 152) < v15 );
          if ( v12 <= i )
            break;
          std::swap<glitch::ps::GNPSParticle>((_DWORD *)i, (_DWORD *)v12);
        }
        result = (_DWORD *)std::priv::__introsort_loop<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,int,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
                             i,
                             v5,
                             0,
                             v7,
                             v16);
        v4 = i - v6;
        if ( (int)(i - v6) <= 2651 )
          return result;
        v5 = i;
      }
      while ( v7 );
    }
    return std::priv::__partial_sort<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
             v6,
             v5,
             v5);
  }
  return result;
}


// ===== 639804 std::sort<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>) =====
char *__fastcall std::sort<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
        char *result,
        char *a2)
{
  char *v2; // r5
  int v4; // r2
  int v5; // r3
  int v6; // r3

  v2 = result;
  if ( result != a2 )
  {
    v4 = -1762037865 * ((a2 - result) >> 2);
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
    std::priv::__introsort_loop<glitch::ps::GNPSParticle *,glitch::ps::GNPSParticle,int,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
      result,
      (unsigned int)a2,
      0,
      v5);
    return (char *)std::priv::__final_insertion_sort<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(
                     v2,
                     a2);
  }
  return result;
}


// ===== 639884 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
char *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(
        int a1,
        char *a2,
        char *a3)
{
  bool v3; // zf
  float v5; // r2
  float v7; // r9
  float v8; // r11
  char *v9; // r5
  float *v10; // r5
  float v11; // r8
  float v12; // r7
  float v13; // r6
  float v14; // r1
  _BOOL4 v15; // r0
  float v16; // r1
  _BOOL4 v17; // r0
  float v18; // r1
  _BOOL4 v19; // r0
  float v20; // r1
  int v21; // r3
  float *v23; // r0
  float v24; // r8
  float v25; // r6
  float v26; // r7

  v3 = a2 == a3;
  v5 = *(float *)(a1 + 96);
  *(_DWORD *)(a1 + 136) = -8388609;
  *(_DWORD *)(a1 + 124) = 2139095039;
  *(_DWORD *)(a1 + 128) = -8388609;
  *(_DWORD *)(a1 + 132) = -8388609;
  *(_DWORD *)(a1 + 116) = 2139095039;
  *(_DWORD *)(a1 + 120) = 2139095039;
  v7 = *(float *)(a1 + 100);
  v8 = *(float *)(a1 + 104);
  if ( v3 )
  {
    v9 = a2;
  }
  else
  {
    v10 = (float *)a2;
    do
    {
      v11 = *v10;
      v10[38] = (float)((float)((float)(v5 - *v10) * (float)(v5 - *v10))
                      + (float)((float)(v7 - v10[1]) * (float)(v7 - v10[1])))
              + (float)((float)(v8 - v10[2]) * (float)(v8 - v10[2]));
      v12 = v10[1];
      v13 = v10[2];
      v14 = *(float *)(a1 + 132);
      if ( v11 > *(float *)(a1 + 128) )
        *(float *)(a1 + 128) = v11;
      v15 = v12 > v14;
      v16 = *(float *)(a1 + 136);
      if ( v15 )
        *(float *)(a1 + 132) = v12;
      v17 = v13 > v16;
      v18 = *(float *)(a1 + 116);
      if ( v17 )
        *(float *)(a1 + 136) = v13;
      v19 = v11 < v18;
      v20 = *(float *)(a1 + 120);
      if ( v19 )
        *(float *)(a1 + 116) = v11;
      if ( v12 < v20 )
        *(float *)(a1 + 120) = v12;
      v10 += 39;
      if ( v13 < *(float *)(a1 + 124) )
        *(float *)(a1 + 124) = v13;
    }
    while ( a3 != (char *)v10 );
    v9 = &a2[156 * ((385445783 * ((unsigned int)(a3 - (a2 + 156)) >> 2)) & 0x3FFFFFFF) + 156];
  }
  v21 = *(_DWORD *)(*(_DWORD *)a1 - 12);
  if ( *(_BYTE *)(a1 + v21 + 84) )
  {
    v23 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + v21) + 32))(a1 + v21);
    v24 = v23[12];
    v25 = v23[14];
    v26 = v23[13];
    *(float *)(a1 + 116) = *(float *)(a1 + 116) + v24;
    *(float *)(a1 + 120) = *(float *)(a1 + 120) + v26;
    *(float *)(a1 + 124) = *(float *)(a1 + 124) + v25;
    *(float *)(a1 + 128) = *(float *)(a1 + 128) + v24;
    *(float *)(a1 + 132) = *(float *)(a1 + 132) + v26;
    *(float *)(a1 + 136) = *(float *)(a1 + 136) + v25;
  }
  return std::sort<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(a2, v9);
}


// ===== 639ac0 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
char *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(
        _DWORD *a1,
        char *a2,
        char *a3)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(
           (int)a1 + *(_DWORD *)(*a1 - 152),
           a2,
           a3);
}


// ===== 639ad0 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
char *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(
        int a1,
        char *a2,
        char *a3)
{
  bool v3; // zf
  float v5; // r2
  float v7; // r9
  float v8; // r11
  char *v9; // r5
  float *v10; // r5
  float v11; // r8
  float v12; // r7
  float v13; // r6
  float v14; // r1
  _BOOL4 v15; // r0
  float v16; // r1
  _BOOL4 v17; // r0
  float v18; // r1
  _BOOL4 v19; // r0
  float v20; // r1
  int v21; // r3
  float *v23; // r0
  float v24; // r8
  float v25; // r6
  float v26; // r7

  v3 = a2 == a3;
  v5 = *(float *)(a1 + 96);
  *(_DWORD *)(a1 + 136) = -8388609;
  *(_DWORD *)(a1 + 124) = 2139095039;
  *(_DWORD *)(a1 + 128) = -8388609;
  *(_DWORD *)(a1 + 132) = -8388609;
  *(_DWORD *)(a1 + 116) = 2139095039;
  *(_DWORD *)(a1 + 120) = 2139095039;
  v7 = *(float *)(a1 + 100);
  v8 = *(float *)(a1 + 104);
  if ( v3 )
  {
    v9 = a2;
  }
  else
  {
    v10 = (float *)a2;
    do
    {
      v11 = *v10;
      v10[38] = (float)((float)((float)(v5 - *v10) * (float)(v5 - *v10))
                      + (float)((float)(v7 - v10[1]) * (float)(v7 - v10[1])))
              + (float)((float)(v8 - v10[2]) * (float)(v8 - v10[2]));
      v12 = v10[1];
      v13 = v10[2];
      v14 = *(float *)(a1 + 132);
      if ( v11 > *(float *)(a1 + 128) )
        *(float *)(a1 + 128) = v11;
      v15 = v12 > v14;
      v16 = *(float *)(a1 + 136);
      if ( v15 )
        *(float *)(a1 + 132) = v12;
      v17 = v13 > v16;
      v18 = *(float *)(a1 + 116);
      if ( v17 )
        *(float *)(a1 + 136) = v13;
      v19 = v11 < v18;
      v20 = *(float *)(a1 + 120);
      if ( v19 )
        *(float *)(a1 + 116) = v11;
      if ( v12 < v20 )
        *(float *)(a1 + 120) = v12;
      v10 += 39;
      if ( v13 < *(float *)(a1 + 124) )
        *(float *)(a1 + 124) = v13;
    }
    while ( a3 != (char *)v10 );
    v9 = &a2[156 * ((385445783 * ((unsigned int)(a3 - (a2 + 156)) >> 2)) & 0x3FFFFFFF) + 156];
  }
  v21 = *(_DWORD *)(*(_DWORD *)a1 - 12);
  if ( *(_BYTE *)(a1 + v21 + 84) )
  {
    v23 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + v21) + 32))(a1 + v21);
    v24 = v23[12];
    v25 = v23[14];
    v26 = v23[13];
    *(float *)(a1 + 116) = *(float *)(a1 + 116) + v24;
    *(float *)(a1 + 120) = *(float *)(a1 + 120) + v26;
    *(float *)(a1 + 124) = *(float *)(a1 + 124) + v25;
    *(float *)(a1 + 128) = *(float *)(a1 + 128) + v24;
    *(float *)(a1 + 132) = *(float *)(a1 + 132) + v26;
    *(float *)(a1 + 136) = *(float *)(a1 + 136) + v25;
  }
  return std::sort<glitch::ps::GNPSParticle *,glitch::ps::AlphaSort<glitch::ps::GNPSParticle>>(a2, v9);
}


// ===== 639d0c `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
char *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(
        _DWORD *a1,
        char *a2,
        char *a3)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::applyPRenderData(
           (int)a1 + *(_DWORD *)(*a1 - 152),
           a2,
           a3);
}


// ===== 639d1c std::__push_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
int __fastcall std::__push_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        int result,
        int a2,
        int a3,
        int a4)
{
  int v4; // r12
  int v5; // r4
  _DWORD *v6; // r7

  if ( a2 <= a3 || (v4 = (a2 - 1) / 2, v5 = *(_DWORD *)(result + 4 * v4), *(_DWORD *)(v5 + 8) >= *(_DWORD *)(a4 + 8)) )
  {
    v6 = (_DWORD *)(result + 4 * a2);
  }
  else
  {
    do
    {
      *(_DWORD *)(result + 4 * a2) = v5;
      a2 = v4;
      v6 = (_DWORD *)(result + 4 * v4);
      if ( a3 >= v4 )
        break;
      v5 = *(_DWORD *)(result + 4 * ((v4 - 1) / 2));
      v4 = (v4 - 1) / 2;
    }
    while ( *(_DWORD *)(v5 + 8) < *(_DWORD *)(a4 + 8) );
  }
  *v6 = a4;
  return result;
}


// ===== 639d98 std::__adjust_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
int __fastcall std::__adjust_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int v4; // r12
  int v5; // lr
  int v6; // r6
  int v7; // r4
  int v8; // r5
  int v9; // r8
  int v10; // r7
  int v11; // lr

  v4 = a2;
  v5 = 2 * (a2 + 1);
  if ( v5 < a3 )
  {
    v6 = a2;
    do
    {
      a2 = v5 - 1;
      v7 = *(_DWORD *)(a1 + 4 * v5);
      v8 = *(_DWORD *)(a1 + 4 * (v5 - 1));
      v9 = *(_DWORD *)(v7 + 8);
      v10 = *(_DWORD *)(v8 + 8);
      if ( v9 >= v10 )
        a2 = v5;
      v5 = 2 * (a2 + 1);
      if ( v9 < v10 )
        v7 = v8;
      *(_DWORD *)(a1 + 4 * v6) = v7;
      v6 = a2;
    }
    while ( a3 > v5 );
  }
  if ( v5 == a3 )
  {
    v11 = v5 - 1;
    *(_DWORD *)(a1 + 4 * a2) = *(_DWORD *)(a1 + 4 * v11);
    a2 = v11;
  }
  return std::__push_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
           a1,
           a2,
           v4,
           a4);
}


// ===== 639e20 std::__make_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>,glitch::ps::PForce<glitch::ps::GNPSParticle> *,int>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>,glitch::ps::PForce<glitch::ps::GNPSParticle> * *,int *) =====
int __fastcall std::__make_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>,glitch::ps::PForce<glitch::ps::GNPSParticle> *,int>(
        int result,
        int a2)
{
  int v2; // r1
  int v3; // r6
  int v4; // r8
  int v5; // r4
  int v6; // r5
  int v7; // r7

  v2 = a2 - result;
  v3 = result;
  if ( v2 > 7 )
  {
    v4 = v2 >> 2;
    v5 = ((v2 >> 2) - 2) >> 1;
    v6 = 0;
    v7 = result + 4 * v5;
    while ( 1 )
    {
      result = std::__adjust_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
                 v3,
                 v5,
                 v4,
                 *(_DWORD *)(v7 + v6));
      v6 -= 4;
      if ( !v5 )
        break;
      --v5;
    }
  }
  return result;
}


// ===== 639e84 std::sort_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
int __fastcall std::sort_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        int result,
        int a2)
{
  int v2; // r5
  _DWORD *v3; // r6
  int v4; // r4
  int v5; // r3

  v2 = a2 - result;
  v3 = (_DWORD *)result;
  if ( a2 - result > 7 )
  {
    v4 = a2;
    do
    {
      v2 -= 4;
      v5 = *(_DWORD *)(v4 - 4);
      *(_DWORD *)(v4 - 4) = *v3;
      v4 -= 4;
      result = std::__adjust_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
                 (int)v3,
                 0,
                 v2 >> 2,
                 v5);
    }
    while ( v2 > 7 );
  }
  return result;
}


// ===== 639ed8 std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> * *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
int __fastcall std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        int a1,
        unsigned int a2,
        unsigned int a3)
{
  int *v6; // r4
  int v7; // r3

  std::__make_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>,glitch::ps::PForce<glitch::ps::GNPSParticle> *,int>(
    a1,
    a2);
  if ( a2 < a3 )
  {
    v6 = (int *)a2;
    do
    {
      while ( 1 )
      {
        v7 = *v6;
        if ( *(_DWORD *)(*v6 + 8) < *(_DWORD *)(*(_DWORD *)a1 + 8) )
          break;
        if ( a3 <= (unsigned int)++v6 )
          return std::sort_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
                   a1,
                   a2);
      }
      *v6++ = *(_DWORD *)a1;
      std::__adjust_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,int,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        a1,
        0,
        (int)(a2 - a1) >> 2,
        v7);
    }
    while ( a3 > (unsigned int)v6 );
  }
  return std::sort_heap<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
           a1,
           a2);
}


// ===== 639f7c std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> * *,int,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
int __fastcall std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        int result,
        unsigned int a2,
        int a3,
        int a4)
{
  int v4; // r2
  int v5; // r5
  int v6; // r6
  int v7; // r4
  int v8; // r0
  int v9; // r3
  int v10; // lr
  int v11; // r10
  int v12; // r2
  int v13; // r9
  int v14; // r12
  _DWORD *v15; // r8
  _DWORD *v16; // r3
  _DWORD *v17; // r4
  int v18; // t1
  _DWORD *v19; // lr
  _BYTE v20[4]; // [sp+Ch] [bp-4h] BYREF

  v4 = a2 - result;
  v5 = result;
  v6 = a4;
  if ( (int)(a2 - result) > 67 )
  {
    if ( a4 )
    {
      do
      {
        v7 = *(_DWORD *)(v5 + 4 * (v4 >> 3));
        v8 = *(_DWORD *)v5;
        --v6;
        v9 = *(_DWORD *)(v7 + 8);
        v10 = *(_DWORD *)(*(_DWORD *)v5 + 8);
        if ( v10 >= v9 )
        {
          v11 = *(_DWORD *)(a2 - 4);
          v12 = *(_DWORD *)(v11 + 8);
          if ( v10 < v12 )
          {
LABEL_24:
            v13 = v12;
            v14 = v11;
            v12 = *(_DWORD *)(*(_DWORD *)v5 + 8);
            v11 = *(_DWORD *)v5;
            goto LABEL_7;
          }
          if ( v9 >= v12 )
          {
LABEL_23:
            v13 = v12;
            v14 = v11;
            v12 = *(_DWORD *)(v7 + 8);
            v11 = v7;
            goto LABEL_7;
          }
        }
        else
        {
          v11 = *(_DWORD *)(a2 - 4);
          v12 = *(_DWORD *)(v11 + 8);
          if ( v9 < v12 )
            goto LABEL_23;
          if ( v10 >= v12 )
            goto LABEL_24;
        }
        v13 = v12;
        v14 = v11;
LABEL_7:
        v15 = (_DWORD *)v5;
        v16 = (_DWORD *)a2;
        while ( 1 )
        {
          if ( v10 < v12 )
          {
            v17 = v15;
            do
            {
              v18 = v17[1];
              ++v17;
              v8 = v18;
            }
            while ( *(_DWORD *)(v18 + 8) < v12 );
          }
          else
          {
            v17 = v15;
          }
          v19 = v16 - 1;
          if ( v13 > v12 )
          {
            do
            {
              v14 = *(v16 - 2);
              --v16;
            }
            while ( *(_DWORD *)(v14 + 8) > v12 );
            v19 = v16 - 1;
          }
          if ( v19 <= v17 )
            break;
          *v17 = v14;
          v15 = v17 + 1;
          *v19 = v8;
          v14 = *(v19 - 1);
          v8 = v17[1];
          v16 = v19;
          v13 = *(_DWORD *)(v14 + 8);
          v10 = *(_DWORD *)(v8 + 8);
          v12 = *(_DWORD *)(v11 + 8);
        }
        result = std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
                   v17,
                   a2,
                   0,
                   v6,
                   v20);
        v4 = (int)v17 - v5;
        if ( (int)v17 - v5 <= 67 )
          return result;
        a2 = (unsigned int)v17;
      }
      while ( v6 );
    }
    return std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
             v5,
             a2,
             a2);
  }
  return result;
}


// ===== 63a0ec std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 63a14c std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = -1762037865 * ((a1[1] - *a1) >> 2);
  if ( 27531841 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x1A41A41 || result < v2 )
    return 27531841;
  return result;
}


// ===== 63a1c4 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,void *>,std::priv::_Select1st<std::pair<uint const,void *>>,std::priv::_MapTraitsT<std::pair<uint const,void *>>,glitch::core::SAllocator<std::pair<uint const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      GlitchFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 63a1f8 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext() =====
int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(int a1)
{
  int v1; // r1
  void *v3; // r0
  int v5; // r5

  v1 = *(_DWORD *)(a1 + 64);
  *(_DWORD *)a1 = off_97CA00;
  if ( v1 )
  {
    v5 = a1 + 48;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1 + 48,
      *(_DWORD **)(a1 + 52));
    *(_DWORD *)(a1 + 60) = v5;
    *(_DWORD *)(a1 + 64) = 0;
    *(_DWORD *)(a1 + 56) = v5;
    *(_DWORD *)(a1 + 52) = 0;
  }
  v3 = *(void **)(a1 + 36);
  if ( v3 )
    GlitchFree(v3);
  return a1;
}


// ===== 63a26c glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel() =====
_DWORD *__fastcall glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel(_DWORD *a1)
{
  *a1 = off_97CAA4;
  a1[3] = off_97CB50;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 3));
  return a1;
}


// ===== 63a2a8 `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel(_DWORD *a1)
{
  return glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a2b8 glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel() =====
_DWORD *__fastcall glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel(_DWORD *a1)
{
  *a1 = off_97CBFC;
  a1[36] = off_97CCA8;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 36));
  return a1;
}


// ===== 63a2f4 `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel(_DWORD *a1)
{
  return glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a304 glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel() =====
_DWORD *__fastcall glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel(_DWORD *a1)
{
  *a1 = off_97CEB4;
  a1[15] = off_97CF60;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 15));
  return a1;
}


// ===== 63a340 `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel(
        _DWORD *a1)
{
  return glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel((_DWORD *)((char *)a1
                                                                                          + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a350 glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel() =====
_DWORD *__fastcall glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel(_DWORD *a1)
{
  int v2; // r5
  int v3; // r2

  *a1 = off_97D00C;
  v2 = (int)(a1 + 6);
  v3 = a1[1];
  a1[6] = off_97D0B4;
  if ( v3 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 28))(v3);
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 63a3b0 `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel(_DWORD *a1)
{
  return glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a3c0 glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel() =====
_DWORD *__fastcall glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel(_DWORD *a1)
{
  glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63a3dc `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel(_DWORD *a1)
{
  return glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::~PEmitterModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a3ec glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel() =====
_DWORD *__fastcall glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel(_DWORD *a1)
{
  *a1 = off_97D15C;
  a1[20] = off_97D20C;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 20));
  return a1;
}


// ===== 63a428 `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel(_DWORD *a1)
{
  return glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel((_DWORD *)((char *)a1
                                                                                        + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a438 glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel() =====
_DWORD *__fastcall glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel(_DWORD *a1)
{
  *a1 = off_97D2B4;
  a1[5] = off_97D360;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 5));
  return a1;
}


// ===== 63a474 `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel(_DWORD *a1)
{
  return glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a484 glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel() =====
_DWORD *__fastcall glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel(_DWORD *a1)
{
  *a1 = off_97D40C;
  a1[7] = off_97D4B4;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 7));
  return a1;
}


// ===== 63a4c0 `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel(
        _DWORD *a1)
{
  return glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel((_DWORD *)((char *)a1
                                                                                                  + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a4d0 glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem() =====
_DWORD *__fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem(_DWORD *a1)
{
  *a1 = off_97D55C;
  a1[4] = off_97D60C;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 4));
  return a1;
}


// ===== 63a50c `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem(
        _DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem((_DWORD *)((char *)a1
                                                                                          + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a51c glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext() =====
int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(int a1)
{
  int v1; // r1
  void *v3; // r0
  int v5; // r5

  v1 = *(_DWORD *)(a1 + 64);
  *(_DWORD *)a1 = off_97CA00;
  if ( v1 )
  {
    v5 = a1 + 48;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1 + 48,
      *(_DWORD **)(a1 + 52));
    *(_DWORD *)(a1 + 60) = v5;
    *(_DWORD *)(a1 + 64) = 0;
    *(_DWORD *)(a1 + 56) = v5;
    *(_DWORD *)(a1 + 52) = 0;
  }
  v3 = *(void **)(a1 + 36);
  if ( v3 )
    GlitchFree(v3);
  return a1;
}


// ===== 63a590 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext() =====
void *__fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(void *a1)
{
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63a5ac glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel() =====
_DWORD *__fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel(_DWORD *a1)
{
  int v2; // r7
  int *v3; // r4
  int *v4; // r5
  int v5; // r3
  void *v6; // r0

  *a1 = off_97CD54;
  v2 = (int)(a1 + 5);
  v3 = (int *)a1[1];
  v4 = (int *)a1[2];
  a1[5] = off_97CE0C;
  while ( v4 != v3 )
  {
    v5 = *v3++;
    if ( v5 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
  }
  v6 = (void *)a1[1];
  if ( v6 )
    GlitchFree(v6);
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 63a634 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel(_DWORD *a1)
{
  return glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a644 glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel() =====
_DWORD *__fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel(_DWORD *a1)
{
  glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63a660 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel(_DWORD *a1)
{
  return glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 63a670 glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel() =====
int *__fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel(int *a1, int *a2)
{
  int v2; // r3
  int *v4; // r4
  int *v5; // r5
  int v6; // r3
  void *v7; // r0

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = (int *)a1[1];
  v5 = (int *)a1[2];
  while ( v5 != v4 )
  {
    v6 = *v4++;
    if ( v6 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 4))(v6);
  }
  v7 = (void *)a1[1];
  if ( v7 )
    GlitchFree(v7);
  return a1;
}


// ===== 63a6d8 std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::particle_system::CForceSceneNode **>(uint &,glitch::collada::particle_system::CForceSceneNode **,glitch::collada::particle_system::CForceSceneNode **) =====
void *__fastcall std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::particle_system::CForceSceneNode **>(
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


// ===== 63a714 std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
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
      v7 = (char *)std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::particle_system::CForceSceneNode **>(
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


// ===== 63a7bc std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,void *>,std::priv::_Select1st<std::pair<uint const,void *>>,std::priv::_MapTraitsT<std::pair<uint const,void *>>,glitch::core::SAllocator<std::pair<uint const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<uint const,void *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r7
  int v12; // r2
  _DWORD *v14; // r0
  int v15; // r2
  int v16; // r2

  if ( a2 == a3 )
  {
    v11 = GlitchAlloc(0x18u, 0);
    v11[4] = *a4;
    v16 = a4[1];
    v11[3] = 0;
    v11[2] = 0;
    v11[5] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = GlitchAlloc(0x18u, 0);
    v11 = v10;
    v10[4] = *a4;
    v12 = a4[1];
    v10[3] = 0;
    v10[2] = 0;
    v10[5] = v12;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v14 = GlitchAlloc(0x18u, 0);
    v11 = v14;
    v14[4] = *a4;
    v15 = a4[1];
    v14[3] = 0;
    v14[2] = 0;
    v14[5] = v15;
    a3[2] = v14;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v14;
  }
  v11[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 63a8ec std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,void *>,std::priv::_Select1st<std::pair<uint const,void *>>,std::priv::_MapTraitsT<std::pair<uint const,void *>>,glitch::core::SAllocator<std::pair<uint const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<uint const,void *> const&) =====
int __fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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


// ===== 63aa74 std::priv::_Rb_tree<uint,std::less<uint>,std::pair<uint const,void *>,std::priv::_Select1st<std::pair<uint const,void *>>,std::priv::_MapTraitsT<std::pair<uint const,void *>>,glitch::core::SAllocator<std::pair<uint const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<uint const,void *>,std::priv::_MapTraitsT<std::pair<uint const,void *>>>,std::pair<uint const,void *> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
              std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 63ade8 std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::particle_system::CForceSceneNode **,uint,glitch::collada::particle_system::CForceSceneNode * const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
      return (char *)std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 63af30 std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> * *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
char *__fastcall std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        char *result,
        char *a2)
{
  char *v2; // r7
  char *v4; // r5
  signed int v5; // r6
  int v6; // r4
  char *v7; // r1
  char *v8; // r2
  char *v9; // r8
  int v10; // r3
  char *v11; // r2
  int v12; // t1

  v2 = result;
  if ( result != a2 && a2 != result + 4 )
  {
    v4 = result + 8;
    v5 = 4;
    do
    {
      v6 = *((_DWORD *)v4 - 1);
      v7 = v4 - 4;
      v8 = *(char **)(v6 + 8);
      if ( (int)v8 >= *(_DWORD *)(*(_DWORD *)v2 + 8) )
      {
        v10 = *((_DWORD *)v4 - 2);
        result = *(char **)(v10 + 8);
        if ( (int)v8 < (int)result )
        {
          v11 = v4 - 8;
          do
          {
            *(_DWORD *)v7 = v10;
            result = v11;
            v12 = *((_DWORD *)v11 - 1);
            v11 -= 4;
            v10 = v12;
            v7 = result;
          }
          while ( *(_DWORD *)(v6 + 8) < *(_DWORD *)(v12 + 8) );
        }
        *(_DWORD *)v7 = v6;
        v9 = v4;
      }
      else
      {
        v9 = v4;
        if ( v5 > 0 )
          result = (char *)memmove(&v4[-v5], v2, v5);
        *(_DWORD *)v2 = v6;
      }
      v4 += 4;
      v5 += 4;
    }
    while ( a2 != v9 );
  }
  return result;
}


// ===== 63afe8 std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
char *__fastcall std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        char *a1,
        char *a2)
{
  char *v3; // r4
  char *result; // r0
  int v5; // r3
  int v6; // r7
  char *v7; // r1
  char *v8; // r2
  int v9; // t1

  if ( a2 - a1 <= 67 )
    return std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
             a1,
             a2);
  v3 = a1 + 64;
  for ( result = std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
                   a1,
                   a1 + 64); a2 != v3; *(_DWORD *)v7 = v6 )
  {
    v5 = *((_DWORD *)v3 - 1);
    v6 = *(_DWORD *)v3;
    if ( *(_DWORD *)(*(_DWORD *)v3 + 8) < *(_DWORD *)(v5 + 8) )
    {
      v8 = v3 - 4;
      result = v3;
      do
      {
        *(_DWORD *)result = v5;
        v7 = v8;
        v9 = *((_DWORD *)v8 - 1);
        v8 -= 4;
        v5 = v9;
        result = v7;
      }
      while ( *(_DWORD *)(v6 + 8) < *(_DWORD *)(v9 + 8) );
    }
    else
    {
      v7 = v3;
    }
    v3 += 4;
  }
  return result;
}


// ===== 63b088 std::sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>) =====
char *__fastcall std::sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
        char *result,
        char *a2)
{
  char *v2; // r5
  int v4; // r2
  int v5; // r3
  int v6; // r3

  v2 = result;
  if ( result != a2 )
  {
    v4 = (a2 - result) >> 2;
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
    std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::PForce<glitch::ps::GNPSParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
      (int)result,
      (unsigned int)a2,
      0,
      v5);
    return std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
             v2,
             a2);
  }
  return result;
}


// ===== 63b0fc glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::applyPForces(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
char *__fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::applyPForces(char *result, int a2, int a3)
{
  char *v3; // r5
  int *v6; // r4
  int *i; // r6
  int v8; // t1

  v3 = result;
  if ( result[16] )
  {
    result = std::sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
               *((char **)result + 1),
               *((char **)result + 2));
    v3[16] = 0;
  }
  v6 = *((int **)v3 + 1);
  for ( i = *((int **)v3 + 2);
        v6 != i;
        result = (char *)(*(int (__fastcall **)(int, int, int, char *))(*(_DWORD *)v8 + 8))(
                           v8,
                           a2,
                           a3,
                           &v3[*(_DWORD *)(*(_DWORD *)v3 - 12)]) )
  {
    v8 = *v6++;
  }
  return result;
}


// ===== 63b178 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::applyPForces(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
char *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::applyPForces(
        char *a1,
        int a2,
        int a3)
{
  return glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::applyPForces(&a1[*(_DWORD *)(*(_DWORD *)a1 - 116)], a2, a3);
}


// ===== 63b188 glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForcesModel(void) =====
char *__fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForcesModel(char *result)
{
  char *v1; // r4

  v1 = result;
  if ( result[16] )
  {
    result = std::sort<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>>(
               *((char **)result + 1),
               *((char **)result + 2));
    v1[16] = 0;
  }
  return result;
}


// ===== 63b1c0 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForcesModel(void) =====
char *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForcesModel(char *a1)
{
  return glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::initPForcesModel(&a1[*(_DWORD *)(*(_DWORD *)a1 - 108)]);
}


// ===== 63b1d0 glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void) =====
int *__fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  float v2; // r9
  float v3; // r8
  float v4; // r0
  int v5; // r3
  float v7; // [sp+4h] [bp-8h]

  if ( (`guard variable for'glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)::bbox & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)::bbox) )
  {
    dword_9F6F5C = -1082130432;
    dword_9F6F68 = 1065353216;
    glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)const::bbox = -1082130432;
    dword_9F6F58 = -1082130432;
    dword_9F6F60 = 1065353216;
    dword_9F6F64 = 1065353216;
    _cxa_guard_release(&`guard variable for'glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)::bbox);
  }
  v2 = (float)((float)((float)(*((float *)this + 9) * 0.0) + (float)(*((float *)this + 13) * 0.0))
             + (float)(*((float *)this + 17) * 0.0))
     + *((float *)this + 21);
  v3 = (float)((float)((float)(*((float *)this + 10) * 0.0) + (float)(*((float *)this + 14) * 0.0))
             + (float)(*((float *)this + 18) * 0.0))
     + *((float *)this + 22);
  v5 = *((_DWORD *)this + 83);
  v4 = (float)((float)((float)(*((float *)this + 11) * 0.0) + (float)(*((float *)this + 15) * 0.0))
             + (float)(*((float *)this + 19) * 0.0))
     + *((float *)this + 23);
  glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)const::bbox = *(_DWORD *)v5;
  dword_9F6F58 = *(_DWORD *)(v5 + 4);
  dword_9F6F5C = *(_DWORD *)(v5 + 8);
  dword_9F6F60 = *(_DWORD *)(v5 + 12);
  dword_9F6F64 = *(_DWORD *)(v5 + 16);
  v7 = *(float *)(v5 + 20);
  *(float *)&dword_9F6F60 = *(float *)&dword_9F6F60 - v2;
  *(float *)&dword_9F6F64 = *(float *)&dword_9F6F64 - v3;
  *(float *)&dword_9F6F68 = v7 - v4;
  *(float *)&glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)const::bbox = *(float *)&glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)const::bbox
                                                                                                 - v2;
  *(float *)&dword_9F6F58 = *(float *)&dword_9F6F58 - v3;
  *(float *)&dword_9F6F5C = *(float *)&dword_9F6F5C - v4;
  return &glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox(void)const::bbox;
}


// ===== 63b3d0 glitch::ps::PSManager::getInstance(void) =====
void *__fastcall glitch::ps::PSManager::getInstance(glitch::ps::PSManager *this)
{
  if ( (`guard variable for'glitch::ps::PSManager::getInstance(void)::s_Instance & 1) != 0
    || !_cxa_guard_acquire(&`guard variable for'glitch::ps::PSManager::getInstance(void)::s_Instance) )
  {
    return &glitch::ps::PSManager::getInstance(void)::s_Instance;
  }
  _cxa_guard_release(&`guard variable for'glitch::ps::PSManager::getInstance(void)::s_Instance);
  _aeabi_atexit(&glitch::ps::PSManager::getInstance(void)::s_Instance, glitch::ps::PSManager::~PSManager, &_dso_handle);
  return &glitch::ps::PSManager::getInstance(void)::s_Instance;
}


// ===== 63b44c glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(char const*) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(int a1, char *a2)
{
  size_t v3; // r0
  char *M_data; // r2
  unsigned int v5; // r6
  int v6; // t1
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+4h] [bp-20h] BYREF

  if ( (`guard variable for'glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(char const*)::sStringHash
      & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(char const*)::sStringHash) )
  {
    _cxa_guard_release(&`guard variable for'glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(char const*)::sStringHash);
    _aeabi_atexit(
      (int)&glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(char const*)::sStringHash,
      (int)boost::hash<std::string>::~hash,
      (int)&_dso_handle);
  }
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  v3 = LC_API_STRLEN_0(a2);
  std::string::_M_range_initialize((std::string *)&v8, a2, &a2[v3]);
  M_data = v8._M_start_of_storage._M_data;
  if ( v8._M_start_of_storage._M_data == v8._M_finish )
  {
    v5 = 0;
  }
  else
  {
    v5 = 0;
    do
    {
      v6 = *M_data++;
      v5 ^= v6 - 1640531527 + (v5 << 6) + (v5 >> 2);
    }
    while ( M_data != v8._M_finish );
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  return v5;
}


// ===== 63b560 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::IParticleContext(void) =====
int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::IParticleContext(int a1)
{
  _DWORD *v1; // r5
  unsigned int v4[2]; // [sp+0h] [bp-14h] BYREF
  _BYTE v5[12]; // [sp+8h] [bp-Ch] BYREF

  *(_DWORD *)a1 = off_97CA00;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_BYTE *)(a1 + 33) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 48) = 0;
  v1 = (_DWORD *)(a1 + 48);
  *(_DWORD *)(a1 + 80) = 0;
  *(_BYTE *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 56) = a1 + 48;
  *(_DWORD *)(a1 + 60) = a1 + 48;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  v4[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(a1, "AnimationDatabase");
  v4[1] = a1 + 88;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v5,
    v1,
    v4);
  return a1;
}


// ===== 63b620 glitch::collada::CGlitchNewParticleSystemSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::onRegisterSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  int v2; // r2
  int v3; // r7
  void (__fastcall *v4)(int, glitch::collada::CGlitchNewParticleSystemSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r5
  glitch::video::CMaterial *v6[2]; // [sp+14h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
  if ( -1762037865 * ((*(_DWORD *)(v2 + 40) - *(_DWORD *)(v2 + 36)) >> 2) )
  {
    v3 = *((_DWORD *)this + 68);
    v4 = *(void (__fastcall **)(int, glitch::collada::CGlitchNewParticleSystemSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v3 + 36);
    (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::CGlitchNewParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
      v6,
      this,
      0);
    v4(v3, this, v6, 0, 8, 0, 0x7FFFFFFF);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v6);
  }
  return 1;
}


// ===== 63b6c4 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(void) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(
        int a1)
{
  void *v2; // r0
  int v3; // r2

  v2 = *(void **)(a1 + 144);
  if ( v2 )
  {
    if ( *(_BYTE *)(a1 + 140) )
    {
      glitch::ps::PS_FREE(v2);
      v3 = *(_DWORD *)(a1 + 16);
      *(_DWORD *)(a1 + 144) = 0;
      glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v3 + 20), 0, nullptr, 0);
    }
  }
}


// ===== 63b70c glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(
        int a1,
        void *a2,
        unsigned int a3)
{
  int v6; // r2

  if ( a2 )
  {
    glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(a1);
    v6 = *(_DWORD *)(a1 + 16);
    *(_BYTE *)(a1 + 140) = 0;
    *(_DWORD *)(a1 + 144) = a2;
    *(_DWORD *)(a1 + 148) = a3;
    glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v6 + 20), a3, a2, 0);
  }
}


// ===== 63b750 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(
        _DWORD *a1,
        void *a2,
        unsigned int a3)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(
    (int)a1 + *(_DWORD *)(*a1 - 28),
    a2,
    a3);
}


// ===== 63b760 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(void) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(
        int a1)
{
  void *v2; // r0
  int v3; // r2

  v2 = *(void **)(a1 + 144);
  if ( v2 )
  {
    if ( *(_BYTE *)(a1 + 140) )
    {
      glitch::ps::PS_FREE(v2);
      v3 = *(_DWORD *)(a1 + 16);
      *(_DWORD *)(a1 + 144) = 0;
      glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v3 + 20), 0, nullptr, 0);
    }
  }
}


// ===== 63b7a8 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(
        int a1,
        void *a2,
        unsigned int a3)
{
  int v6; // r2

  if ( a2 )
  {
    glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(a1);
    v6 = *(_DWORD *)(a1 + 16);
    *(_BYTE *)(a1 + 140) = 0;
    *(_DWORD *)(a1 + 144) = a2;
    *(_DWORD *)(a1 + 148) = a3;
    glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v6 + 20), a3, a2, 0);
  }
}


// ===== 63b7ec `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(
        _DWORD *a1,
        void *a2,
        unsigned int a3)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::setRenderBuffer(
    (int)a1 + *(_DWORD *)(*a1 - 28),
    a2,
    a3);
}


// ===== 63b7fc glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticleSystemPosition(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*,glitch::core::CMatrix4<float> const*) =====
float __fastcall glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticleSystemPosition(
        int a1,
        _DWORD *a2)
{
  int v2; // r2
  int v3; // r3
  unsigned int v5; // r3
  unsigned int v6; // r2
  float *v7; // r0
  int v8; // r8
  float v9; // r12
  float result; // r0
  float v11; // r1
  float v12; // r2
  float v13; // r3
  float *v14; // r0
  int v15; // r9
  int v16; // r10
  int v17; // r0
  float *v18; // r0
  int v19; // r8
  int v20; // r10
  int v21; // r0
  float v22; // r11
  float v23; // r9
  float v24; // r8
  float *v25; // r10
  int v26; // r4
  int v27; // r0
  float *v28; // r4
  int v29; // r5
  float *v30; // r10
  int v31; // r0
  float *v32; // r10
  int v33; // [sp+0h] [bp-54h]
  int v34; // [sp+4h] [bp-50h]
  int v35; // [sp+Ch] [bp-48h]
  float v36[3]; // [sp+14h] [bp-40h] BYREF
  float v37[3]; // [sp+20h] [bp-34h] BYREF
  float v38[3]; // [sp+2Ch] [bp-28h] BYREF
  float v39[3]; // [sp+38h] [bp-1Ch] BYREF
  float v40[4]; // [sp+44h] [bp-10h] BYREF

  v2 = a2[5];
  v3 = a2[9];
  glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Position = a2[1];
  dword_9F7C50 = v2;
  dword_9F7C54 = v3;
  v5 = a2[10] + 0x80000000;
  v6 = a2[6] + 0x80000000;
  dword_9F7C58 = a2[2] + 0x80000000;
  dword_9F7C5C = v6;
  dword_9F7C60 = v5;
  v7 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 32))(a1);
  if ( *(_BYTE *)(a1 + 33) )
  {
    *(float *)&dword_9F7C64 = (float)((float)(*(float *)(a1 + 8) * *v7) + (float)(*(float *)(a1 + 12) * v7[4]))
                            + (float)(*(float *)(a1 + 16) * v7[8]);
    *(float *)&dword_9F7C68 = (float)((float)(*(float *)(a1 + 8) * v7[1]) + (float)(*(float *)(a1 + 12) * v7[5]))
                            + (float)(*(float *)(a1 + 16) * v7[9]);
    *(float *)&dword_9F7C6C = (float)((float)(*(float *)(a1 + 8) * v7[2]) + (float)(*(float *)(a1 + 12) * v7[6]))
                            + (float)(*(float *)(a1 + 16) * v7[10]);
    *(float *)&dword_9F7C70 = (float)((float)(*(float *)(a1 + 20) * *v7) + (float)(*(float *)(a1 + 24) * v7[4]))
                            + (float)(*(float *)(a1 + 28) * v7[8]);
    *(float *)&dword_9F7C74 = (float)((float)(*(float *)(a1 + 20) * v7[1]) + (float)(*(float *)(a1 + 24) * v7[5]))
                            + (float)(*(float *)(a1 + 28) * v7[9]);
    *(float *)&dword_9F7C78 = (float)((float)(*(float *)(a1 + 20) * v7[2]) + (float)(*(float *)(a1 + 24) * v7[6]))
                            + (float)(*(float *)(a1 + 28) * v7[10]);
  }
  else
  {
    dword_9F7C64 = *(_DWORD *)(a1 + 8);
    dword_9F7C68 = *(_DWORD *)(a1 + 12);
    dword_9F7C6C = *(_DWORD *)(a1 + 16);
    dword_9F7C70 = *(_DWORD *)(a1 + 20);
    dword_9F7C74 = *(_DWORD *)(a1 + 24);
    dword_9F7C78 = *(_DWORD *)(a1 + 28);
  }
  v8 = *(unsigned __int8 *)(a1 + 4);
  v9 = *(float *)(a1 + 12);
  result = *(float *)(a1 + 16);
  v11 = *(float *)(a1 + 20);
  v12 = *(float *)(a1 + 24);
  v13 = *(float *)(a1 + 28);
  v40[0] = *(float *)(a1 + 8);
  v40[1] = v9;
  v40[2] = result;
  v39[0] = v11;
  v39[1] = v12;
  v39[2] = v13;
  if ( !v8 || !*(_BYTE *)(a1 + 5) )
  {
    v38[0] = (float)(COERCE_FLOAT(dword_9F7C5C + 0x80000000) * *(float *)&dword_9F7C54)
           + (float)(*(float *)&dword_9F7C60 * *(float *)&dword_9F7C50);
    v38[1] = (float)(COERCE_FLOAT(dword_9F7C60 + 0x80000000)
                   * *(float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Position)
           + (float)(*(float *)&dword_9F7C54 * *(float *)&dword_9F7C58);
    v38[2] = (float)(*(float *)&dword_9F7C50 * COERCE_FLOAT(dword_9F7C58 + 0x80000000))
           + (float)(*(float *)&dword_9F7C5C
                   * *(float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Position);
    v14 = glitch::core::vector3d<float>::normalize(v38);
    *(float *)&v15 = v14[1] * 0.5;
    *(float *)&v16 = v14[2] * 0.5;
    *(float *)&v17 = *v14 * 0.5;
    dword_9F7C68 = v15;
    dword_9F7C64 = v17;
    dword_9F7C6C = v16;
    v18 = glitch::core::vector3d<float>::normalize((float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Position);
    *(float *)&v19 = *v18 * 0.5;
    *(float *)&v20 = v18[1] * 0.5;
    *(float *)&v21 = v18[2] * 0.5;
    dword_9F7C70 = v19;
    dword_9F7C74 = v20;
    dword_9F7C78 = v21;
    v22 = (float)(*(float *)&v21 * COERCE_FLOAT(dword_9F7C68 + 0x80000000))
        + (float)(*(float *)&v20 * *(float *)&dword_9F7C6C);
    v23 = (float)(*(float *)&v19 * COERCE_FLOAT(dword_9F7C6C + 0x80000000))
        + (float)(*(float *)&v21 * *(float *)&dword_9F7C64);
    result = (float)(*(float *)&v20 * COERCE_FLOAT(dword_9F7C64 + 0x80000000))
           + (float)(*(float *)&v19 * *(float *)&dword_9F7C68);
    v24 = result;
    if ( *(_BYTE *)(a1 + 4) )
    {
      v30 = glitch::core::vector3d<float>::normalize(v40);
      *(float *)&v35 = v30[1] * 0.5;
      *(float *)&v31 = v30[2] * 0.5;
      *(float *)&dword_9F7C64 = *v30 * 0.5;
      dword_9F7C6C = v31;
      dword_9F7C68 = v35;
      v37[0] = (float)(*(float *)&v31 * COERCE_FLOAT(LODWORD(v23) + 0x80000000)) + (float)(v24 * *(float *)&v35);
      v37[1] = (float)(*(float *)&dword_9F7C64 * COERCE_FLOAT(LODWORD(v24) + 0x80000000))
             + (float)(v22 * *(float *)&v31);
      v37[2] = (float)(*(float *)&v35 * COERCE_FLOAT(LODWORD(v22) + 0x80000000))
             + (float)(v23 * *(float *)&dword_9F7C64);
      v32 = glitch::core::vector3d<float>::normalize(v37);
      *(float *)&v33 = v32[1] * 0.5;
      *(float *)&v34 = v32[2] * 0.5;
      result = *v32 * 0.5;
      *(float *)&dword_9F7C70 = result;
      dword_9F7C78 = v34;
      dword_9F7C74 = v33;
    }
    if ( *(_BYTE *)(a1 + 5) )
    {
      v25 = glitch::core::vector3d<float>::normalize(v39);
      *(float *)&v26 = v25[1] * 0.5;
      *(float *)&v27 = v25[2] * 0.5;
      *(float *)&dword_9F7C70 = *v25 * 0.5;
      dword_9F7C74 = v26;
      dword_9F7C78 = v27;
      v36[0] = (float)(v24 * COERCE_FLOAT(v26 + 0x80000000)) + (float)(v23 * *(float *)&v27);
      v36[1] = (float)(v22 * COERCE_FLOAT(v27 + 0x80000000)) + (float)(v24 * *(float *)&dword_9F7C70);
      v36[2] = (float)(v23 * COERCE_FLOAT(dword_9F7C70 + 0x80000000)) + (float)(v22 * *(float *)&v26);
      v28 = glitch::core::vector3d<float>::normalize(v36);
      *(float *)&v29 = v28[1] * 0.5;
      result = *v28 * 0.5;
      *(float *)&dword_9F7C6C = v28[2] * 0.5;
      dword_9F7C64 = LODWORD(result);
      dword_9F7C68 = v29;
    }
  }
  return result;
}


// ===== 63beec glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::applyPMotion(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::applyPMotion(
        float result,
        float *a2,
        float *a3)
{
  int v3; // r7
  float v5; // r4
  float *v6; // r5
  int v7; // r9
  float v8; // r0
  float v9; // r11
  int v10; // r3
  int v11; // r3
  int Length; // r0
  float v13; // r9
  float v14; // r1
  int v15; // r3
  float *v16; // r6
  float v17; // r11
  float *v18; // r6
  int v19; // r9
  float v20; // r0
  float v21; // r11
  int v22; // r3
  int v23; // r3
  int v24; // r0
  float v25; // r11
  float v26; // r9
  float v27; // r1
  float v28; // r0
  float v29; // r11
  float v30; // [sp+Ch] [bp-68h]
  float v31; // [sp+10h] [bp-64h]
  float v32; // [sp+10h] [bp-64h]
  glitch::ps::PSRandom *v33; // [sp+14h] [bp-60h]
  _BYTE v35[16]; // [sp+34h] [bp-40h] BYREF
  float v36[3]; // [sp+44h] [bp-30h] BYREF
  float v37[3]; // [sp+50h] [bp-24h] BYREF
  int v38; // [sp+5Ch] [bp-18h] BYREF
  int v39; // [sp+60h] [bp-14h]
  _BYTE *v40; // [sp+64h] [bp-10h]
  float v41; // [sp+68h] [bp-Ch] BYREF
  int v42[2]; // [sp+6Ch] [bp-8h] BYREF

  v3 = 0;
  v5 = result;
  v35[13] = 0;
  if ( a2 != a3 )
  {
    v6 = a2;
    do
    {
      v33 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(LODWORD(v5)
                                                                           + *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12))
                                                               + 24))(LODWORD(v5) + *(_DWORD *)(*(_DWORD *)LODWORD(v5)
                                                                                              - 12));
      if ( *(int *)(LODWORD(v5) + 36) > 0 && (v7 = *(_DWORD *)(LODWORD(v5) + 44)) != 0 )
      {
        v8 = v6[22] / v6[23];
        v41 = 0.0;
        v9 = v8;
        v10 = *(_DWORD *)LODWORD(v5);
        v42[0] = (int)((float)(v8 * 1000.0) / 33.333332);
        v11 = *(_DWORD *)(LODWORD(v5) + *(_DWORD *)(v10 - 12) + 88);
        v40 = v35;
        v38 = v7;
        v39 = v11;
        Length = glitch::collada::SAnimationAccessor::getLength((glitch::collada::SAnimationAccessor *)&v38, 0);
        glitch::collada::SAnimationAccessor::getValue(
          (glitch::collada::SAnimationAccessor *)&v38,
          (int)(float)((float)Length * v9),
          &v41,
          v42,
          1);
        v13 = v41;
        v14 = v6[4];
        v15 = *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12);
        v16 = a2;
      }
      else
      {
        v13 = *(float *)(LODWORD(v5) + 44);
        v14 = v6[4];
        v15 = *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12);
        v16 = a2;
      }
      v17 = *(float *)(LODWORD(v5) + v15 + 80);
      v31 = v13 * (float)(v17 * v6[5]);
      v16[v3] = a2[v3] + (float)(v13 * (float)(v17 * v6[3]));
      v18 = &v16[v3];
      v18[1] = v18[1] + (float)(v13 * (float)(v17 * v14));
      v6[2] = v6[2] + v31;
      if ( *(int *)(LODWORD(v5) + 40) > 0 && (v19 = *(_DWORD *)(LODWORD(v5) + 48)) != 0 )
      {
        v20 = v6[22] / v6[23];
        v21 = v20;
        v42[0] = 0;
        v22 = *(_DWORD *)LODWORD(v5);
        LODWORD(v41) = (int)((float)(v20 * 1000.0) / 33.333332);
        v23 = *(_DWORD *)(LODWORD(v5) + *(_DWORD *)(v22 - 12) + 88);
        v40 = v35;
        v38 = v19;
        v39 = v23;
        v24 = glitch::collada::SAnimationAccessor::getLength((glitch::collada::SAnimationAccessor *)&v38, 0);
        glitch::collada::SAnimationAccessor::getValue(
          (glitch::collada::SAnimationAccessor *)&v38,
          (int)(float)((float)v24 * v21),
          v42,
          (int *)&v41,
          1);
        v25 = v6[37];
        glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)v37, v33);
        v26 = *(float *)(LODWORD(v5) + *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12) + 80);
        v30 = v26 * (float)(*(float *)v42 * (float)(v25 * (float)(v37[1] - *(float *)&dword_9F6F70)));
        v32 = v26 * (float)(*(float *)v42 * (float)(v25 * (float)(v37[2] - *(float *)&dword_9F6F74)));
        v27 = v25 * (float)(v37[0] - *(float *)&glitch::ps::vHalf);
        v28 = *(float *)v42;
      }
      else
      {
        v29 = v6[37];
        glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)v36, v33);
        v26 = *(float *)(LODWORD(v5) + *(_DWORD *)(*(_DWORD *)LODWORD(v5) - 12) + 80);
        v30 = v26 * (float)(*(float *)(LODWORD(v5) + 48) * (float)(v29 * (float)(v36[1] - *(float *)&dword_9F6F70)));
        v32 = v26 * (float)(*(float *)(LODWORD(v5) + 48) * (float)(v29 * (float)(v36[2] - *(float *)&dword_9F6F74)));
        v27 = v29 * (float)(v36[0] - *(float *)&glitch::ps::vHalf);
        v28 = *(float *)(LODWORD(v5) + 48);
      }
      a2[v3] = a2[v3] + (float)(v26 * (float)(v28 * v27));
      v3 += 39;
      v18[1] = v18[1] + v30;
      result = v6[2] + v32;
      v6[2] = result;
      v6 += 39;
    }
    while ( a3 != v6 );
  }
  return result;
}


// ===== 63c378 `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::applyPMotion(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::applyPMotion(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::applyPMotion(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 92))),
           a2,
           a3);
}


// ===== 63c388 glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::applyPSize(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::applyPSize(float result, float *a2, float *a3)
{
  float v4; // r5
  float *v5; // r4
  int v6; // r6
  float v7; // r0
  float v8; // r8
  float v9; // r3
  int v10; // r3
  int Length; // r0
  _BYTE v12[16]; // [sp+14h] [bp-28h] BYREF
  _DWORD v13[3]; // [sp+24h] [bp-18h] BYREF
  int v14; // [sp+30h] [bp-Ch] BYREF
  float v15[2]; // [sp+34h] [bp-8h] BYREF

  v4 = result;
  if ( a2 != a3 )
  {
    v12[13] = 0;
    v5 = a2;
    do
    {
      while ( *(int *)(LODWORD(v4) + 12) > 0 )
      {
        v6 = *(_DWORD *)(LODWORD(v4) + 16);
        if ( !v6 )
          break;
        v7 = v5[22] / v5[23];
        v8 = v7;
        v15[0] = 0.0;
        v9 = *(float *)LODWORD(v4);
        v14 = (int)((float)(v7 * 1000.0) / 33.333332);
        v10 = *(_DWORD *)(LODWORD(v4) + *(_DWORD *)(LODWORD(v9) - 12) + 88);
        v13[0] = v6;
        v13[2] = v12;
        v13[1] = v10;
        Length = glitch::collada::SAnimationAccessor::getLength((glitch::collada::SAnimationAccessor *)v13, 0);
        glitch::collada::SAnimationAccessor::getValue(
          (glitch::collada::SAnimationAccessor *)v13,
          (int)(float)((float)Length * v8),
          v15,
          &v14,
          1);
        result = v5[25] * v15[0];
        v5[24] = result;
        v5 += 39;
        if ( a3 == v5 )
          return result;
      }
      result = v5[25] * *(float *)(LODWORD(v4) + 16);
      v5[24] = result;
      v5 += 39;
    }
    while ( a3 != v5 );
  }
  return result;
}


// ===== 63c4b8 `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::applyPSize(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::applyPSize(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::applyPSize(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 60))),
           a2,
           a3);
}


// ===== 63c4c8 glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPEmitterModel(void) =====
glitch::ps::PDCylinder *__fastcall glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPEmitterModel(
        glitch::ps::PDCylinder *result)
{
  int v1; // r3
  glitch::ps::PDCylinder *v2; // r4
  int v3; // r1
  glitch::ps::PDBox *v4; // r5
  glitch::ps::PDCylinder *v5; // r5
  void *v6; // r5
  _DWORD v7[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = *((_DWORD *)result + 1);
  v2 = result;
  if ( v1 )
  {
    result = (glitch::ps::PDCylinder *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 28))(*((_DWORD *)result + 1));
    *((_DWORD *)v2 + 1) = 0;
  }
  v3 = *((_DWORD *)v2 + 2);
  switch ( v3 )
  {
    case 1:
      memset(v7, 0, sizeof(v7));
      v6 = operator new(0x2Cu, 0);
      result = (glitch::ps::PDCylinder *)glitch::ps::PDSphere::PDSphere(v6, v7, *((_DWORD *)v2 + 3), 0);
      *((_DWORD *)v2 + 1) = v6;
      break;
    case 2:
      v5 = (glitch::ps::PDCylinder *)operator new(0x58u, 0);
      result = glitch::ps::PDCylinder::PDCylinder(v5, *((float *)v2 + 5), *((float *)v2 + 3));
      *((_DWORD *)v2 + 1) = v5;
      break;
    case 0:
      v4 = (glitch::ps::PDBox *)operator new(0x5Cu, 0);
      result = (glitch::ps::PDCylinder *)glitch::ps::PDBox::PDBox(
                                           v4,
                                           *((float *)v2 + 4),
                                           *((float *)v2 + 5),
                                           *((float *)v2 + 3));
      *((_DWORD *)v2 + 1) = v4;
      break;
  }
  return result;
}


// ===== 63c598 `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPEmitterModel(void) =====
glitch::ps::PDCylinder *__fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPEmitterModel(
        _DWORD *a1)
{
  return glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::initPEmitterModel((glitch::ps::PDCylinder *)((char *)a1 + *(_DWORD *)(*a1 - 76)));
}


// ===== 63c5a8 glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::applyPColor(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*,glitch::video::SColor &) =====
float __fastcall glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::applyPColor(float result, int a2, int a3)
{
  float v3; // r5
  int v4; // r4
  int v5; // r2
  int Length; // r0
  float v7; // r11
  float v8; // r8
  float v9; // r0
  int v10; // r3
  int v11; // r3
  int v12; // r8
  int v13; // r3
  int v14; // r3
  int v15; // r0
  float v16; // r6
  int v18; // [sp+20h] [bp-3Ch] BYREF
  int v19; // [sp+24h] [bp-38h]
  float x; // [sp+28h] [bp-34h]
  float v21; // [sp+2Ch] [bp-30h]
  float v22; // [sp+30h] [bp-2Ch]
  _BYTE v23[16]; // [sp+34h] [bp-28h] BYREF
  int v24; // [sp+44h] [bp-18h] BYREF
  int v25; // [sp+48h] [bp-14h]
  _BYTE *v26; // [sp+4Ch] [bp-10h]
  int v27; // [sp+50h] [bp-Ch] BYREF
  int v28; // [sp+54h] [bp-8h] BYREF

  v3 = result;
  if ( (*(_DWORD *)(LODWORD(result) + 8) || *(_DWORD *)(LODWORD(result) + 4)) && a2 != a3 )
  {
    v23[13] = 0;
    v28 = 0;
    v4 = a2;
    do
    {
      if ( *(_DWORD *)(LODWORD(v3) + 12) == 1 )
        result = (float)(*(float *)(v4 + 88) / *(float *)(v4 + 92)) + *(float *)(v4 + 80);
      else
        result = *(float *)(v4 + 80) + *(float *)(v4 + 88);
      v16 = result;
      if ( *(_DWORD *)(LODWORD(v3) + 4) )
      {
        v5 = *(_DWORD *)(LODWORD(v3) + *(_DWORD *)(*(_DWORD *)LODWORD(v3) - 12) + 88);
        v24 = *(_DWORD *)(LODWORD(v3) + 4);
        v26 = v23;
        v25 = v5;
        Length = glitch::collada::SAnimationAccessor::getLength((glitch::collada::SAnimationAccessor *)&v24, 0);
        v18 = 0;
        v19 = 0;
        x = 0.0;
        v21 = 1.0;
        v22 = 1.0;
        glitch::collada::SAnimationAccessor::getValue(
          (glitch::collada::SAnimationAccessor *)&v24,
          (int)(float)(v16 * (float)Length),
          &v18,
          &v28,
          0);
        v7 = x;
        v8 = cosf(x);
        v9 = sinf(v7);
        *(float *)(v4 + 40) = v21 * v8;
        v10 = v18;
        *(float *)(v4 + 44) = COERCE_FLOAT(LODWORD(v9) + 0x80000000) * v21;
        *(_DWORD *)(v4 + 48) = v10;
        *(float *)(v4 + 52) = v22 * v9;
        result = v22 * v8;
        v11 = v19;
        *(float *)(v4 + 56) = v22 * v8;
        *(_DWORD *)(v4 + 60) = v11;
      }
      v12 = *(_DWORD *)(LODWORD(v3) + 8);
      if ( v12 )
      {
        v13 = *(_DWORD *)LODWORD(v3);
        v27 = (int)((float)(v16 * 1000.0) / 33.333332);
        v14 = *(_DWORD *)(LODWORD(v3) + *(_DWORD *)(v13 - 12) + 88);
        v26 = v23;
        v24 = v12;
        v25 = v14;
        v15 = glitch::collada::SAnimationAccessor::getLength((glitch::collada::SAnimationAccessor *)&v24, 0);
        result = COERCE_FLOAT(
                   glitch::collada::SAnimationAccessor::getValue(
                     (glitch::collada::SAnimationAccessor *)&v24,
                     (int)(float)(v16 * (float)v15),
                     (void *)(v4 + 36),
                     &v27,
                     1));
      }
      v4 += 156;
    }
    while ( a3 != v4 );
  }
  return result;
}


// ===== 63c7f0 `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::applyPColor(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*,glitch::video::SColor &) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::applyPColor(
        _DWORD *a1,
        int a2,
        int a3)
{
  return glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::applyPColor(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 72))),
           a2,
           a3);
}


// ===== 63c800 glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*,glitch::ps::GNPSParticle const*) =====
float __fastcall glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition(int a1, int a2)
{
  float v2; // r7
  float v3; // r6
  float v5; // r5
  float *v6; // r0
  float v7; // lr
  float v8; // r1
  float *v9; // r0
  float v10; // r0
  float v11; // r8
  float result; // r0
  unsigned int v13; // r2
  unsigned int v14; // r3
  unsigned int v15; // r3
  unsigned int v16; // r2
  int v17; // [sp+4h] [bp-60h]
  int v18; // [sp+8h] [bp-5Ch]
  int v19; // [sp+Ch] [bp-58h]
  float v20[4]; // [sp+10h] [bp-54h] BYREF
  float v21[4]; // [sp+20h] [bp-44h] BYREF
  unsigned int v22; // [sp+30h] [bp-34h] BYREF
  unsigned int v23; // [sp+34h] [bp-30h]
  unsigned int v24; // [sp+38h] [bp-2Ch]
  float v25[3]; // [sp+3Ch] [bp-28h] BYREF
  float v26; // [sp+48h] [bp-1Ch] BYREF
  float v27; // [sp+4Ch] [bp-18h]
  float v28; // [sp+50h] [bp-14h]
  float v29[4]; // [sp+54h] [bp-10h] BYREF

  v2 = *(float *)(a2 + 20);
  v3 = *(float *)(a2 + 16);
  v5 = *(float *)(a2 + 12);
  v29[0] = (float)(v2 * -0.0) + v3;
  v29[1] = COERCE_FLOAT(LODWORD(v5) + 0x80000000) + (float)(v2 * 0.0);
  v29[2] = (float)(v3 * -0.0) + (float)(v5 * 0.0);
  v6 = glitch::core::vector3d<float>::normalize(v29);
  v7 = *(float *)(a2 + 16);
  v8 = *(float *)(a2 + 20);
  v18 = *((_DWORD *)v6 + 1);
  v19 = *(_DWORD *)v6;
  v17 = *((_DWORD *)v6 + 2);
  v26 = *(float *)(a2 + 12);
  v27 = v7;
  v28 = v8;
  v9 = glitch::core::vector3d<float>::normalize(&v26);
  v26 = *v9;
  v27 = v9[1];
  v28 = v9[2];
  v10 = acosf(v28 + (float)((float)(v26 * 0.0) + (float)(v27 * 0.0)));
  LODWORD(v25[1]) = v18 + 0x80000000;
  LODWORD(v25[2]) = v17 + 0x80000000;
  LODWORD(v25[0]) = v19 + 0x80000000;
  memset(v21, 0, 12);
  v21[3] = 1.0;
  glitch::core::quaternion::fromAngleAxis(v21, v10, v25);
  glitch::core::quaternion::getMatrix(v21, (int)&glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::RotMat);
  v11 = *(float *)(a2 + 112);
  v20[3] = 1.0;
  memset(v20, 0, 12);
  LODWORD(result) = v11 > 0.0;
  if ( v11 > 0.0 )
  {
    if ( *(float *)(a2 + 116) > 0.0 )
    {
      v15 = *(_DWORD *)(a2 + 124) + 0x80000000;
      v16 = *(_DWORD *)(a2 + 120) + 0x80000000;
      v22 = *(_DWORD *)(a2 + 116) + 0x80000000;
      v23 = v16;
      v24 = v15;
    }
    else
    {
      v13 = *(_DWORD *)(a2 + 124);
      v14 = *(_DWORD *)(a2 + 120);
      v22 = *(_DWORD *)(a2 + 116);
      v24 = v13;
      v23 = v14;
    }
    glitch::core::quaternion::fromAngleAxis(v20, v11, (float *)&v22);
    return glitch::core::quaternion::getMatrix(
             v20,
             (int)&glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SpinMat);
  }
  return result;
}


// ===== 63ca28 glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() =====
void __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 94);
  *(_DWORD *)this = off_97E85C;
  *((_DWORD *)this + 100) = off_97E978;
  if ( v1 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 8))(v1);
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(this);
}


// ===== 63ca94 glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() =====
void __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 63cab0 glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() =====
void __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this,
        int *a2)
{
  int v2; // r3
  int v4; // r3

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  v4 = *((_DWORD *)this + 94);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 8))(*((_DWORD *)this + 94));
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(this);
}


// ===== 63cb10 glitch::collada::CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SGNPSEmitter &,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(
        int a1,
        int a2,
        int a3)
{
  glitch::collada::CRootSceneNode *v5; // r0
  char v6; // r3
  char v7; // r3
  char v8; // r3
  char v9; // r3

  *(_DWORD *)(a1 + 404) = 1;
  *(_DWORD *)(a1 + 400) = off_95B720;
  *(_DWORD *)a1 = off_97EC3C;
  *(int *)((char *)&elf_hash_bucket[45] + a1) = (int)off_97EC5C;
  glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(a1);
  *(_DWORD *)(a1 + 380) = a3;
  v5 = *(glitch::collada::CRootSceneNode **)(a1 + 340);
  *(_DWORD *)(a1 + 400) = off_97E978;
  *(_DWORD *)a1 = off_97E85C;
  v6 = *(_BYTE *)(a3 + 60);
  *(_BYTE *)(a1 + 316) = v6 != 0;
  v7 = *(_BYTE *)(a3 + 76);
  *(_BYTE *)(a1 + 317) = v7 != 0;
  v8 = *(_BYTE *)(a3 + 128);
  *(_BYTE *)(a1 + 318) = v8 != 0;
  v9 = *(_BYTE *)(a3 + 192);
  *(_BYTE *)(a1 + 319) = v9 != 0;
  *(_DWORD *)(a1 + 304) = *(_DWORD *)a3;
  glitch::collada::CRootSceneNode::addParticleSystem(v5, (glitch::collada::IParticleSystemSceneNode *)a1);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 63cc0c glitch::collada::CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SGNPSEmitter &,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(
        int a1,
        int *a2,
        int a3,
        int a4)
{
  int v7; // r3
  glitch::collada::CRootSceneNode *v8; // r0

  glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(a1);
  v7 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v7 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *(_DWORD *)(a1 + 380) = a4;
  LOBYTE(v7) = *(_BYTE *)(a4 + 60);
  v8 = *(glitch::collada::CRootSceneNode **)(a1 + 340);
  *(_BYTE *)(a1 + 316) = (_BYTE)v7 != 0;
  LOBYTE(v7) = *(_BYTE *)(a4 + 76);
  *(_BYTE *)(a1 + 317) = (_BYTE)v7 != 0;
  LOBYTE(v7) = *(_BYTE *)(a4 + 128);
  *(_BYTE *)(a1 + 318) = (_BYTE)v7 != 0;
  LOBYTE(v7) = *(_BYTE *)(a4 + 192);
  *(_BYTE *)(a1 + 319) = (_BYTE)v7 != 0;
  *(_DWORD *)(a1 + 304) = *(_DWORD *)a4;
  glitch::collada::CRootSceneNode::addParticleSystem(v8, (glitch::collada::IParticleSystemSceneNode *)a1);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 63ccc8 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 63cce8 glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpin(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
_DWORD *__fastcall glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpin(int a1, int a2, int a3)
{
  glitch::ps::PSRandom *v5; // r8
  float v6; // r11
  _DWORD *result; // r0
  float v8; // r0
  float v9; // r1
  float v10; // r0
  float v11; // r9
  float v12; // r10
  float v13; // r0
  float v14; // r7
  int v15; // r3
  float v16; // r0
  float *v17; // r7
  float v18; // r0
  float v19; // r7
  int v20; // r3
  float v21; // r2
  float v22; // r1
  double v23; // r0
  float v24; // r0
  float v25; // r0
  float v26; // r0
  float *v27; // r0
  float v28; // r0
  float v29; // r0
  float v30; // r0
  float v31; // r0
  float *v32; // r10
  float v33; // r10
  float v34; // r0
  float v35; // r2
  float v36; // r3
  unsigned int v37; // [sp+0h] [bp-ACh]
  unsigned int v38; // [sp+4h] [bp-A8h]
  float v39; // [sp+8h] [bp-A4h]
  float v41; // [sp+14h] [bp-98h]
  float v42; // [sp+18h] [bp-94h]
  float v43; // [sp+1Ch] [bp-90h]
  double v44; // [sp+20h] [bp-8Ch]
  double v45; // [sp+28h] [bp-84h]
  float v46; // [sp+40h] [bp-6Ch] BYREF
  float v47; // [sp+44h] [bp-68h]
  float v48; // [sp+50h] [bp-5Ch]
  float v49; // [sp+54h] [bp-58h]
  float v50; // [sp+60h] [bp-4Ch]
  float v51; // [sp+64h] [bp-48h]
  float v52; // [sp+70h] [bp-3Ch]
  float v53; // [sp+74h] [bp-38h]
  int v54; // [sp+78h] [bp-34h]
  char v55; // [sp+80h] [bp-2Ch]
  float v56; // [sp+84h] [bp-28h] BYREF
  float v57; // [sp+88h] [bp-24h]
  float v58; // [sp+8Ch] [bp-20h]
  float v59[3]; // [sp+90h] [bp-1Ch] BYREF
  float v60[4]; // [sp+9Ch] [bp-10h] BYREF

  v5 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  v6 = *(float *)(a1 + 8) + *(float *)(a1 + 8);
  v39 = *(float *)(a1 + 16) + *(float *)(a1 + 16);
  v41 = *(float *)(a1 + 32) + *(float *)(a1 + 32);
  v42 = *(float *)(a1 + 36) + *(float *)(a1 + 36);
  v43 = *(float *)(a1 + 40) + *(float *)(a1 + 40);
  *(_BYTE *)(a1 + 116) = 0;
  result = glitch::core::CMatrix4<float>::CMatrix4(&v46, (const void *)(a1 + 52));
  if ( a2 != a3 )
  {
    v55 = 0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0;
    do
    {
      if ( v6 == 0.0 )
      {
        v28 = 0.0;
      }
      else
      {
        v29 = glitch::ps::PSRandom::Rand(v5);
        v28 = (float)(v6 * v29) + (float)(v6 * -0.5);
      }
      v8 = v28 + *(float *)(a1 + 4);
      *(float *)(a2 + 132) = v8;
      v9 = *(float *)(a2 + 100);
      *(float *)(a2 + 108) = v8 * *(float *)(a1 + 136);
      v10 = *(float *)(a2 + 96) / v9;
      v11 = v10 * *(float *)(a1 + 124);
      v12 = v10 * *(float *)(a1 + 128);
      v13 = v10 * *(float *)(a1 + 120);
      *(float *)(a2 + 140) = v11;
      *(float *)(a2 + 136) = v13;
      *(float *)(a2 + 144) = v12;
      if ( v39 == 0.0 )
      {
        v14 = 0.0;
        v15 = *(_DWORD *)(a1 + 44);
        if ( v15 == 2 )
          goto LABEL_23;
      }
      else
      {
        v30 = glitch::ps::PSRandom::Rand(v5);
        v15 = *(_DWORD *)(a1 + 44);
        v14 = (float)(v39 * v30) + (float)(v39 * -0.5);
        if ( v15 == 2 )
        {
LABEL_23:
          v31 = *(float *)(a2 + 12);
          v58 = 0.0;
          v56 = (float)((float)((float)(v31 * v46) + (float)(*(float *)(a2 + 16) * v48))
                      + (float)(*(float *)(a2 + 20) * v50))
              + v52;
          v57 = (float)((float)((float)(*(float *)(a2 + 12) * v47) + (float)(*(float *)(a2 + 16) * v49))
                      + (float)(*(float *)(a2 + 20) * v51))
              + v53;
          v32 = glitch::core::vector3d<float>::normalize(&v56);
          v33 = acosf((float)((float)(*v32 * 0.0) + v32[1]) + (float)(v32[2] * 0.0));
          if ( v56 > 0.0 )
            LODWORD(v33) += 0x80000000;
          *(float *)(a2 + 112) = (float)((float)((float)(v14 + *(float *)(a1 + 12)) / 180.0) * 3.1416) + v33;
          *(float *)(a2 + 128) = (float)((float)(v14 + *(float *)(a1 + 12)) / 180.0) * 3.1416;
          goto LABEL_14;
        }
      }
      if ( v15 )
      {
        if ( v15 == 1 )
          *(float *)(a2 + 112) = (float)((float)(v14 + *(float *)(a1 + 12)) / 180.0) * 3.1416;
      }
      else
      {
        v34 = glitch::ps::PSRandom::Rand(v5);
        *(float *)(a2 + 112) = (float)(v34 + v34) * 3.1416;
      }
      if ( *(int *)(a1 + 48) > 0 )
      {
        v16 = *(float *)(a2 + 12);
        v58 = 0.0;
        v56 = (float)((float)((float)(v16 * v46) + (float)(*(float *)(a2 + 16) * v48))
                    + (float)(*(float *)(a2 + 20) * v50))
            + v52;
        v57 = (float)((float)((float)(*(float *)(a2 + 12) * v47) + (float)(*(float *)(a2 + 16) * v49))
                    + (float)(*(float *)(a2 + 20) * v51))
            + v53;
        v17 = glitch::core::vector3d<float>::normalize(&v56);
        v18 = acosf((float)((float)(*v17 * 0.0) + v17[1]) + (float)(v17[2] * 0.0));
        v19 = v18;
        if ( v56 > 0.0 )
          LODWORD(v19) = LODWORD(v18) + 0x80000000;
        *(float *)(a2 + 128) = *(float *)(a2 + 112) - v19;
      }
LABEL_14:
      v20 = *(_DWORD *)(a1 + 140);
      if ( v20 )
      {
        if ( v20 == 2 )
        {
          v35 = *(float *)(a2 + 16);
          v36 = *(float *)(a2 + 20);
          v27 = &v56;
          v56 = *(float *)(a2 + 12);
          v57 = v35;
          v58 = v36;
        }
        else
        {
          v21 = *(float *)(a1 + 24);
          v22 = *(float *)(a1 + 20);
          v58 = *(float *)(a1 + 28);
          v57 = v21;
          v56 = v22;
          v23 = glitch::ps::PSRandom::Rand(v5);
          v37 = HIDWORD(v23);
          v38 = LODWORD(v23);
          v45 = glitch::ps::PSRandom::Rand(v5);
          v44 = glitch::ps::PSRandom::Rand(v5);
          v24 = COERCE_DOUBLE(__PAIR64__(v37, v38));
          v56 = v56 + (float)((float)(v41 * v24) + (float)(v41 * -0.5));
          v25 = v45;
          v57 = v57 + (float)((float)(v42 * v25) + (float)(v42 * -0.5));
          v26 = v44;
          v58 = v58 + (float)((float)(v43 * v26) + (float)(v43 * -0.5));
          v27 = &v56;
        }
      }
      else
      {
        glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)v60, v5);
        v59[1] = v60[1] - *(float *)&dword_9F6F70;
        v59[0] = v60[0] - *(float *)&glitch::ps::vHalf;
        v59[2] = v60[2] - *(float *)&dword_9F6F74;
        v27 = v59;
      }
      result = glitch::core::vector3d<float>::normalize(v27);
      *(_DWORD *)(a2 + 116) = *result;
      *(_DWORD *)(a2 + 120) = result[1];
      *(_DWORD *)(a2 + 124) = result[2];
      a2 += 156;
    }
    while ( a3 != a2 );
  }
  return result;
}


// ===== 63d380 `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpin(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpin(
        _DWORD *a1,
        int a2,
        int a3)
{
  return glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::initPSpin((int)a1 + *(_DWORD *)(*a1 - 124), a2, a3);
}


// ===== 63d390 glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::applyPSpin(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::applyPSpin(int *a1, float *a2, float *a3)
{
  float result; // r0
  float v7; // r9
  float v8; // r10
  float v9; // r8
  float *v10; // r8
  float v11; // r0
  float v12; // r8
  float v13; // r0
  float v14; // r9
  float v15; // r10
  float v16; // r0
  float v17; // r8
  float v18; // r0
  float v19; // r10
  int v20; // r3
  float v21; // r3
  int Length; // r0
  float v23; // r8
  float v24; // r1
  float v25[16]; // [sp+18h] [bp-6Ch] BYREF
  char v26; // [sp+58h] [bp-2Ch]
  _BYTE v27[16]; // [sp+5Ch] [bp-28h] BYREF
  float v28; // [sp+6Ch] [bp-18h] BYREF
  float v29; // [sp+70h] [bp-14h]
  _BYTE *v30; // [sp+74h] [bp-10h]
  int v31; // [sp+78h] [bp-Ch] BYREF
  float v32[2]; // [sp+7Ch] [bp-8h] BYREF

  *((_BYTE *)a1 + 116) = 0;
  v27[13] = 0;
  result = COERCE_FLOAT(glitch::core::CMatrix4<float>::CMatrix4(v25, a1 + 13));
  if ( a2 != a3 )
  {
    v26 = 0;
    memset(&v25[12], 0, 12);
    do
    {
      while ( 1 )
      {
        v13 = a2[24] / a2[25];
        v14 = v13 * *((float *)a1 + 31);
        v15 = v13 * *((float *)a1 + 32);
        v16 = v13 * *((float *)a1 + 30);
        a2[35] = v14;
        a2[34] = v16;
        a2[36] = v15;
        if ( a1[12] > 0 )
          break;
        if ( a1[33] <= 0 || (v17 = *((float *)a1 + 34), v17 == 0.0) )
        {
          v23 = a2[33] * *((float *)a1 + 34);
          a2[27] = v23;
        }
        else
        {
          v18 = a2[22] / a2[23];
          v19 = v18;
          v32[0] = 0.0;
          v20 = *a1;
          v31 = (int)((float)(v18 * 1000.0) / 33.333332);
          v21 = *(float *)((char *)a1 + *(_DWORD *)(v20 - 12) + 88);
          v30 = v27;
          v28 = v17;
          v29 = v21;
          Length = glitch::collada::SAnimationAccessor::getLength((glitch::collada::SAnimationAccessor *)&v28, 0);
          glitch::collada::SAnimationAccessor::getValue(
            (glitch::collada::SAnimationAccessor *)&v28,
            (int)(float)((float)Length * v19),
            v32,
            &v31,
            1);
          v23 = a2[33] * v32[0];
          a2[27] = v23;
        }
        if ( v23 == 0.0 )
          v24 = 0.0;
        else
          v24 = (float)((float)(v23 / 180.0) * 3.1416) * *(float *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 80);
        result = a2[28] + v24;
        a2[28] = result;
        a2 += 39;
        if ( a3 == a2 )
          return result;
      }
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      v28 = (float)((float)(v7 * v25[0]) + (float)(v8 * v25[4])) + (float)(v9 * v25[8]);
      v29 = (float)((float)(v7 * v25[1]) + (float)(v8 * v25[5])) + (float)(v9 * v25[9]);
      v30 = nullptr;
      v10 = glitch::core::vector3d<float>::normalize(&v28);
      v11 = acosf((float)((float)(*v10 * 0.0) + v10[1]) + (float)(v10[2] * 0.0));
      v12 = v11;
      if ( v28 > 0.0 )
        LODWORD(v12) = LODWORD(v11) + 0x80000000;
      result = a2[32] + v12;
      a2[28] = result;
      a2 += 39;
    }
    while ( a3 != a2 );
  }
  return result;
}


// ===== 63d6ac `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::applyPSpin(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::applyPSpin(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::applyPSpin(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 128)),
           a2,
           a3);
}


// ===== 63d6bc `global constructor keyed to'.._source_glitch_collada_CColladaGNPSSceneNode.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaGNPSSceneNode.cpp()
{
  dword_9F6F74 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6F70 = 1056964608;
  glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer = 0;
  _aeabi_atexit(
    (int)&glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer,
    (int)boost::intrusive_ptr<glitch::scene::CMeshBuffer>::~intrusive_ptr,
    (int)&_dso_handle);
  glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer = 0;
  return _aeabi_atexit(
           (int)&glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer,
           (int)boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr,
           (int)&_dso_handle);
}


// ===== 63d74c glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem() =====
_DWORD *__fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem(_DWORD *a1)
{
  *a1 = off_97D55C;
  a1[4] = off_97D60C;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 4));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63d790 `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem(
        _DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::~IParticleSystem((_DWORD *)((char *)a1
                                                                                          + *(_DWORD *)(*a1 - 12)));
}


// ===== 63d7a0 glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel() =====
_DWORD *__fastcall glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel(_DWORD *a1)
{
  *a1 = off_97D40C;
  a1[7] = off_97D4B4;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 7));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63d7e4 `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel(
        _DWORD *a1)
{
  return glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::~GNPSGenerationModel((_DWORD *)((char *)a1
                                                                                                  + *(_DWORD *)(*a1 - 12)));
}


// ===== 63d7f4 glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel() =====
_DWORD *__fastcall glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel(_DWORD *a1)
{
  *a1 = off_97D2B4;
  a1[5] = off_97D360;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 5));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63d838 `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel(_DWORD *a1)
{
  return glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::~GNPSSizeModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63d848 glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel() =====
_DWORD *__fastcall glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel(_DWORD *a1)
{
  *a1 = off_97D15C;
  a1[20] = off_97D20C;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 20));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63d88c `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel(_DWORD *a1)
{
  return glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::~GNPSColorModel((_DWORD *)((char *)a1
                                                                                        + *(_DWORD *)(*a1 - 12)));
}


// ===== 63d89c glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel() =====
_DWORD *__fastcall glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel(_DWORD *a1)
{
  *a1 = off_97CEB4;
  a1[15] = off_97CF60;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 15));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63d8e0 `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel(
        _DWORD *a1)
{
  return glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::~GNPSMotionModel((_DWORD *)((char *)a1
                                                                                          + *(_DWORD *)(*a1 - 12)));
}


// ===== 63d8f0 glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel() =====
_DWORD *__fastcall glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel(_DWORD *a1)
{
  *a1 = off_97CBFC;
  a1[36] = off_97CCA8;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 36));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63d934 `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel(_DWORD *a1)
{
  return glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::~GNPSSpinModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63d944 glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel() =====
_DWORD *__fastcall glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel(_DWORD *a1)
{
  *a1 = off_97CAA4;
  a1[3] = off_97CB50;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext((int)(a1 + 3));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63d988 `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel(_DWORD *a1)
{
  return glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::~GNPSLifeModel((_DWORD *)((char *)a1
                                                                                      + *(_DWORD *)(*a1 - 12)));
}


// ===== 63d998 std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::particle_system::CForceSceneNode **,uint,glitch::collada::particle_system::CForceSceneNode * const&) =====
void __fastcall std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  size_t v8; // r9
  char *v9; // r0
  char *v10; // r8
  size_t v11; // r10
  unsigned int v12; // r2
  int v13; // r3
  char *v14; // r3
  char *v15; // r0
  char *v16; // r6

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 4
         * std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             (_DWORD *)a1,
             a3);
      v9 = (char *)GlitchAlloc(v8, 0);
      v10 = v9;
      if ( a2 != *(char **)a1 )
      {
        v11 = (size_t)&a2[-*(_DWORD *)a1];
        v9 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
      }
      v12 = a3;
      v13 = 0;
      do
      {
        --v12;
        *(_DWORD *)&v9[v13] = *(_DWORD *)a4;
        v13 += 4;
      }
      while ( v12 );
      v14 = *(char **)(a1 + 4);
      v15 = &v9[4 * a3];
      if ( v14 == a2 )
        v16 = v15;
      else
        v16 = (char *)memmove(v15, a2, v14 - a2) + v14 - a2;
      GlitchFree(*(void **)a1);
      *(_DWORD *)(a1 + 4) = v16;
      *(_DWORD *)(a1 + 8) = &v10[v8];
      *(_DWORD *)a1 = v10;
    }
  }
}


// ===== 63da68 glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(glitch::ps::PForce<glitch::ps::GNPSParticle> *) =====
char *__fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(int a1, int a2)
{
  char *v3; // r5
  char *result; // r0
  char *v5; // r1

  v3 = (char *)std::priv::__find_if<glitch::ps::PForce<glitch::ps::GNPSParticle> **,glitch::ps::CompareForce<glitch::ps::GNPSParticle>>(
                 *(_DWORD **)(a1 + 4),
                 *(_DWORD *)(a1 + 8),
                 a2);
  result = *(char **)(a1 + 8);
  if ( v3 != result )
  {
    if ( *(_DWORD *)v3 )
    {
      (*(void (__fastcall **)(_DWORD))(**(_DWORD **)v3 + 4))(*(_DWORD *)v3);
      result = *(char **)(a1 + 8);
    }
    v5 = v3 + 4;
    if ( v3 + 4 != result )
    {
      result = (char *)memmove(v3, v5, result - v5);
      v5 = *(char **)(a1 + 8);
    }
    *(_BYTE *)(a1 + 16) = 1;
    *(_DWORD *)(a1 + 8) = v5 - 4;
  }
  return result;
}


// ===== 63daf8 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(glitch::ps::PForce<glitch::ps::GNPSParticle> *) =====
char *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(_DWORD *a1, int a2)
{
  return glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce((int)a1 + *(_DWORD *)(*a1 - 100), a2);
}


// ===== 63db08 std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::collada::particle_system::CForceSceneNode * const&) =====
void __fastcall std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
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
    std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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


// ===== 63db4c glitch::collada::CGlitchNewParticleSystemSceneNode::attach(glitch::scene::ISceneNode *) =====
void __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::attach(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this,
        glitch::scene::ISceneNode *a2)
{
  char *v2; // r8
  signed int v3; // r5
  int v6; // r7
  glitch::scene::ISceneNode *SceneNodeFromUID; // r0
  _DWORD *v8; // r8
  _DWORD *v9; // r10
  int v10; // r3
  _DWORD *v11; // r3
  int v12; // [sp+4h] [bp-4h] BYREF

  v2 = (char *)this + 356;
  v3 = **((_DWORD **)this + 84);
  std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)this + 356,
    v3);
  v6 = 0;
  v12 = 0;
  std::vector<glitch::collada::particle_system::CForceSceneNode *,glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)v2,
    v3,
    (char *)&v12);
  if ( v3 > 0 )
  {
    do
    {
      SceneNodeFromUID = glitch::scene::ISceneNode::getSceneNodeFromUID(
                           a2,
                           (const char *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 84) + 4) + 4 * v6) + 1));
      if ( SceneNodeFromUID )
      {
        v9 = (_DWORD *)((char *)SceneNodeFromUID + 244);
        v8 = *((_DWORD **)SceneNodeFromUID + 61);
        if ( v8 != (_DWORD *)((char *)SceneNodeFromUID + 244) )
        {
          do
          {
            while ( 1 )
            {
              v10 = v8 ? (int)(v8 - 1) : 0;
              if ( (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 188))(v10) == 1717920100 )
                break;
              v8 = (_DWORD *)*v8;
              if ( v9 == v8 )
                goto LABEL_14;
            }
            if ( v8 )
              v11 = v8 - 1;
            else
              v11 = nullptr;
            (*(void (__fastcall **)(_DWORD *, glitch::collada::CGlitchNewParticleSystemSceneNode *))(*v11 + 248))(
              v11,
              this);
            v8 = (_DWORD *)*v8;
          }
          while ( v9 != v8 );
        }
      }
LABEL_14:
      ++v6;
    }
    while ( v6 != v3 );
  }
}


// ===== 63dc3c glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(int) =====
int __fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(int result, int a2)
{
  int v2; // r4
  int v3; // r5
  int v4; // r3
  int v5; // r5

  v2 = result;
  if ( a2 > 0 )
  {
    result = *(_DWORD *)(result + 8);
    v3 = *(_DWORD *)(v2 + 4);
    if ( a2 < (result - v3) >> 2 )
    {
      v4 = *(_DWORD *)(v3 + 4 * a2);
      v5 = v3 + 4 * a2;
      if ( v4 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v4 + 4))(v4);
        result = *(_DWORD *)(v2 + 8);
      }
      if ( result != v5 + 4 )
      {
        memmove((void *)v5, (const void *)(v5 + 4), result - (v5 + 4));
        result = *(_DWORD *)(v2 + 8);
      }
      result -= 4;
      *(_DWORD *)(v2 + 8) = result;
    }
  }
  return result;
}


// ===== 63dcb0 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(int) =====
int __fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce(_DWORD *a1, int a2)
{
  return glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::removePForce((int)a1 + *(_DWORD *)(*a1 - 104), a2);
}


// ===== 63dcc0 glitch::collada::CGlitchNewParticleSystemSceneNode::deleteSharedBuffer(void) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::deleteSharedBuffer(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  glitch::IReferenceCounted *v1; // r0
  glitch::IReferenceCounted *result; // r0

  v1 = (glitch::IReferenceCounted *)glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer;
  glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer = 0;
  if ( v1 )
    glitch::IReferenceCounted::drop(v1);
  result = (glitch::IReferenceCounted *)glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer;
  glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer = 0;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles = 0;
  return result;
}


// ===== 63dd30 std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::ps::GNPSParticle*>(uint &,glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
char *__fastcall std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::ps::GNPSParticle*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r6
  char *v6; // r7
  int v7; // r5

  v5 = -1762037865 * ((a4 - a3) >> 2);
  v6 = (char *)GlitchAlloc(156 * *a2, 0);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      glitch::ps::GNPSParticle::GNPSParticle(&v6[v7], (_DWORD *)(a3 + v7));
      --v5;
      v7 += 156;
    }
    while ( v5 );
  }
  return v6;
}


// ===== 63dd94 std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int *a1,
        unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  char *v8; // r0
  char *v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = (a1[2] - *a1) >> 2;
  v10 = a2;
  if ( a2 > -1762037865 * v4 )
  {
    if ( a2 > 0x1A41A41 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = a1[1];
    v6 = -1762037865 * ((v5 - v3) >> 2);
    if ( v3 )
    {
      v7 = std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::ps::GNPSParticle*>(
             (int)a1,
             &v10,
             v3,
             v5);
      v8 = (char *)a1[1];
      if ( v8 != (char *)*a1 )
        v8 += -156 * ((385445783 * ((unsigned int)&v8[-*a1 - 156] >> 2)) & 0x3FFFFFFF) - 156;
      GlitchFree(v8);
    }
    else
    {
      v7 = (char *)GlitchAlloc(156 * v10, 0);
    }
    v9 = &v7[156 * v10];
    a1[1] = (int)&v7[156 * v6];
    a1[2] = (int)v9;
    *a1 = (int)v7;
  }
}


// ===== 63dea0 glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::initGenerationModel(void) =====
void __fastcall glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::initGenerationModel(int *a1)
{
  int v1; // r3
  _DWORD *v3; // r3
  int v4; // r1
  int v5; // r2
  glitch::ps::PSRandom *v6; // r0
  int v7; // r5
  float v8; // r0
  int v9; // r0
  int v10; // r3

  v1 = *a1;
  a1[6] = 0;
  v3 = (int *)((char *)a1 + *(_DWORD *)(v1 - 12));
  v4 = v3[9];
  v5 = v3[10];
  if ( v4 != v5 )
  {
    std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)(v3 + 9),
      v4,
      v5);
    v3 = (int *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  }
  v6 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(_DWORD *))(*v3 + 24))(v3);
  v7 = a1[4];
  v8 = glitch::ps::PSRandom::Rand(v6);
  v9 = (int)(float)((float)((float)(v8 + v8) - 1.0) * (float)a1[3]);
  v10 = *a1;
  a1[4] = v9 + v7;
  std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int *)((char *)a1 + *(_DWORD *)(v10 - 12) + 36),
    v9 + v7);
}


// ===== 63df54 `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::initGenerationModel(void) =====
void __fastcall `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::initGenerationModel(
        _DWORD *a1)
{
  glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::initGenerationModel((_DWORD *)((char *)a1
                                                                                          + *(_DWORD *)(*a1 - 44)));
}


// ===== 63df64 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 404);
}


// ===== 63df6c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 392);
}


// ===== 63df74 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 248);
}


// ===== 63df7c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 228);
}


// ===== 63df84 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 63df8c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 144);
}


// ===== 63df94 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 64);
}


// ===== 63df9c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 44);
}


// ===== 63dfa4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 63dfac glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  int v2; // r6
  int v3; // r8
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::video::CVertexStreams *v6; // r10
  int v8; // r3

  *(_DWORD *)a1 = off_97D734;
  v2 = a1 + 568;
  *(_DWORD *)(a1 + 44) = off_97D774;
  *(_DWORD *)(a1 + 64) = off_97D794;
  *(_DWORD *)(a1 + 144) = off_97D7B8;
  *(_DWORD *)(a1 + 568) = off_97D91C;
  *(_DWORD *)(a1 + 16) = off_97D758;
  *(_DWORD *)(a1 + 168) = off_97D7D4;
  *(_DWORD *)(a1 + 228) = off_97D7F4;
  *(_DWORD *)(a1 + 248) = off_97D820;
  v3 = a1 + 404;
  *(_DWORD *)(a1 + 392) = off_97D840;
  *(_DWORD *)(a1 + 404) = off_97E584;
  *(int *)((char *)&dword_A4 + a1 + 404) = (int)off_97E640;
  LC_API_FREE_0(*(void **)(a1 + 560));
  *(_DWORD *)(v3 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(v3);
  v4 = *(glitch::IReferenceCounted **)(v3 + 160);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *(glitch::IReferenceCounted **)(v3 + 20);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *(glitch::video::CVertexStreams **)(v3 + 16);
  if ( v6 )
  {
    if ( (*(_DWORD *)v6)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v6);
      LC_API_FREE_0(v6);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(v3 + 8));
  *(_DWORD *)(a1 + 392) = off_97E434;
  *(int *)((char *)&dword_B0 + a1 + 392) = (int)off_97E4E0;
  *(_DWORD *)(a1 + 248) = off_97E2E4;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97E390;
  glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel((int *)(a1 + 228), (int *)off_97D6DC);
  *(_DWORD *)(a1 + 168) = off_97E03C;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97E0E8;
  *(_DWORD *)(a1 + 144) = off_97DEF4;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97DF9C;
  v8 = *(_DWORD *)(a1 + 148);
  if ( v8 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 28))(*(_DWORD *)(a1 + 148));
  *(_DWORD *)(a1 + 64) = off_97DDA4;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97DE54;
  *(_DWORD *)(a1 + 44) = off_97DC54;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97DD00;
  *(_DWORD *)(a1 + 16) = off_97DB0C;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97DBB4;
  *(_DWORD *)a1 = off_97D9BC;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97DA6C;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 63e1cc `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 63e1dc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 404);
}


// ===== 63e1e4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 392);
}


// ===== 63e1ec `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 248);
}


// ===== 63e1f4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 228);
}


// ===== 63e1fc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 63e204 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 144);
}


// ===== 63e20c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 64);
}


// ===== 63e214 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 44);
}


// ===== 63e21c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 63e224 glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        void *a1)
{
  glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63e240 `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 63e250 std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::ps::GNPSParticle*,uint,glitch::ps::GNPSParticle const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3,
        _DWORD *a4)
{
  _DWORD *result; // r0
  _DWORD *v7; // r5
  _DWORD *v8; // r7
  int v9; // r8
  int v10; // r9
  int v11; // r11
  _DWORD *v12; // r8
  _DWORD *v13; // r2
  int v14; // r10
  int v15; // r10
  int v16; // r4
  unsigned int v17; // r2
  _DWORD *v18; // r9
  int v19; // r10
  int v20; // r10
  int v21; // r7
  _DWORD v23[39]; // [sp+10h] [bp-A4h] BYREF
  char v24[8]; // [sp+ACh] [bp-8h] BYREF

  result = (_DWORD *)*a1;
  v7 = a2;
  if ( a4 >= result )
  {
    v8 = (_DWORD *)a1[1];
    if ( a4 < v8 )
    {
      glitch::ps::GNPSParticle::GNPSParticle(v23, a4);
      return (_DWORD *)std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
                         a1,
                         v7,
                         a3,
                         v23,
                         v24);
    }
  }
  else
  {
    v8 = (_DWORD *)a1[1];
  }
  v9 = -1762037865 * (v8 - a2);
  if ( a3 >= v9 )
  {
    v17 = a3 - v9;
    v18 = &v8[39 * v17];
    v19 = -1762037865 * ((int)(156 * v17) >> 2);
    if ( v19 > 0 )
    {
      do
      {
        result = glitch::ps::GNPSParticle::GNPSParticle(v8, a4);
        --v19;
        v8 += 39;
      }
      while ( v19 );
    }
    a1[1] = v18;
    if ( v9 <= 0 )
    {
      a1[1] = &v18[39 * v9];
    }
    else
    {
      v20 = v9;
      v21 = 0;
      do
      {
        glitch::ps::GNPSParticle::GNPSParticle(&v18[v21], &v7[v21]);
        --v20;
        v21 += 39;
      }
      while ( v20 );
      a1[1] += 156 * v9;
      do
      {
        result = glitch::ps::GNPSParticle::operator=(v7, a4);
        --v9;
        v7 += 39;
      }
      while ( v9 );
    }
  }
  else
  {
    v10 = 39 * a3;
    v11 = -1762037865 * ((int)(156 * a3) >> 2);
    v12 = &v8[-39 * a3];
    if ( v11 > 0 )
    {
      v14 = 0;
      do
      {
        result = glitch::ps::GNPSParticle::GNPSParticle(&v8[v14], &v12[v14]);
        --v11;
        v14 += 39;
      }
      while ( v11 );
      v13 = (_DWORD *)a1[1];
    }
    else
    {
      v13 = v8;
    }
    v15 = -1762037865 * (v12 - v7);
    a1[1] = &v13[v10];
    if ( v15 > 0 )
    {
      do
      {
        v8 -= 39;
        v12 -= 39;
        result = glitch::ps::GNPSParticle::operator=(v8, v12);
        --v15;
      }
      while ( v15 );
    }
    v16 = -1762037865 * ((v10 * 4) >> 2);
    if ( v16 > 0 )
    {
      do
      {
        result = glitch::ps::GNPSParticle::operator=(v7, a4);
        --v16;
        v7 += 39;
      }
      while ( v16 );
    }
  }
  return result;
}


// ===== 63e428 std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::ps::GNPSParticle*,uint,glitch::ps::GNPSParticle const&) =====
void __fastcall std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3,
        _DWORD *a4)
{
  _DWORD *v8; // r0
  char *v9; // r9
  _DWORD *v10; // r10
  _DWORD *v11; // r7
  int v12; // r11
  int v13; // r7
  _DWORD *v14; // r8
  int v15; // r9
  _BYTE *v16; // r0
  int v17; // r9
  int v18; // r7
  int v19; // r6
  int v20; // [sp+8h] [bp-14h]
  size_t v21; // [sp+Ch] [bp-10h]

  if ( a3 )
  {
    if ( a3 <= -1762037865 * ((a1[2] - a1[1]) >> 2) )
    {
      std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v21 = 39
          * std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
              a1,
              a3);
      v8 = GlitchAlloc(v21 * 4, 0);
      v9 = (char *)*a1;
      v10 = v8;
      v20 = -1762037865 * (((int)a2 - *a1) >> 2);
      if ( v20 > 0 )
      {
        v12 = -1762037865 * (((int)a2 - *a1) >> 2);
        v13 = 0;
        do
        {
          glitch::ps::GNPSParticle::GNPSParticle(&v10[v13], &v9[v13 * 4]);
          --v12;
          v13 += 39;
        }
        while ( v12 );
        v11 = &v10[39 * v20];
      }
      else
      {
        v11 = v8;
      }
      if ( a3 == 1 )
      {
        glitch::ps::GNPSParticle::GNPSParticle(v11, a4);
        v14 = v11 + 39;
      }
      else
      {
        v14 = &v11[39 * a3];
        v15 = -1762037865 * (v14 - v11);
        if ( v15 > 0 )
        {
          do
          {
            glitch::ps::GNPSParticle::GNPSParticle(v11, a4);
            --v15;
            v11 += 39;
          }
          while ( v15 );
        }
      }
      v16 = (_BYTE *)a1[1];
      v17 = -1762037865 * ((v16 - (_BYTE *)a2) >> 2);
      if ( v17 > 0 )
      {
        v18 = -1762037865 * ((v16 - (_BYTE *)a2) >> 2);
        v19 = 0;
        do
        {
          glitch::ps::GNPSParticle::GNPSParticle(&v14[v19], &a2[v19]);
          --v18;
          v19 += 39;
        }
        while ( v18 );
        v14 += 39 * v17;
        v16 = (_BYTE *)a1[1];
      }
      if ( v16 != (_BYTE *)*a1 )
        v16 += -156 * ((385445783 * ((unsigned int)&v16[-*a1 - 156] >> 2)) & 0x3FFFFFFF) - 156;
      GlitchFree(v16);
      a1[1] = v14;
      *a1 = v10;
      a1[2] = &v10[v21];
    }
  }
}


// ===== 63e5e4 std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::ps::GNPSParticle const&) =====
void __fastcall std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3)
{
  int v3; // r12
  unsigned int v4; // r5
  int v5; // r1

  v3 = a1[1];
  v4 = -1762037865 * ((v3 - *a1) >> 2);
  if ( a2 >= v4 )
  {
    std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      (_DWORD *)a1[1],
      a2 - v4,
      a3);
  }
  else
  {
    v5 = *a1 + 156 * a2;
    if ( v5 != v3 )
      std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)a1,
        v5,
        a1[1]);
  }
}


// ===== 63e644 glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::generateParticles(void) =====
int __fastcall glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::generateParticles(int a1)
{
  glitch::ps::PSRandom *v2; // r8
  int v3; // r3
  int v4; // r10
  int v5; // r5
  float v6; // r0
  float v7; // r1
  float v8; // r7
  float v9; // r0
  float v10; // r8
  int v11; // r6
  int v12; // r5
  signed int v13; // r1
  int v14; // r6
  _DWORD *v15; // r0
  _DWORD v17[9]; // [sp+4h] [bp-A0h] BYREF
  char v18; // [sp+28h] [bp-7Ch]
  char v19; // [sp+29h] [bp-7Bh]
  char v20; // [sp+2Ah] [bp-7Ah]
  char v21; // [sp+2Bh] [bp-79h]
  int v22; // [sp+2Ch] [bp-78h]
  int v23; // [sp+30h] [bp-74h]
  int v24; // [sp+34h] [bp-70h]
  int v25; // [sp+38h] [bp-6Ch]
  int v26; // [sp+3Ch] [bp-68h]
  int v27; // [sp+40h] [bp-64h]
  int v28; // [sp+44h] [bp-60h]
  int v29; // [sp+48h] [bp-5Ch]
  int v30; // [sp+4Ch] [bp-58h]
  int v31; // [sp+50h] [bp-54h]
  int v32; // [sp+54h] [bp-50h]
  int v33; // [sp+58h] [bp-4Ch]
  int v34; // [sp+78h] [bp-2Ch]
  int v35; // [sp+7Ch] [bp-28h]
  int v36; // [sp+80h] [bp-24h]
  int v37; // [sp+8Ch] [bp-18h]
  int v38; // [sp+90h] [bp-14h]
  int v39; // [sp+94h] [bp-10h]

  v2 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  v3 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v4 = *(_DWORD *)(v3 + 40);
  v5 = *(_DWORD *)(v3 + 36);
  v6 = *(float *)(v3 + 72) - *(float *)(v3 + 76);
  v7 = *(float *)(a1 + 4);
  *(float *)(a1 + 20) = v6;
  v8 = (float)(v6 * v7) + *(float *)(a1 + 24);
  v9 = glitch::ps::PSRandom::Rand(v2);
  v10 = (float)((float)((float)(v9 + v9) - 1.0) * *(float *)(a1 + 20)) * *(float *)(a1 + 8);
  v11 = (int)v10 + (int)v8;
  *(float *)(a1 + 24) = (float)(v8 + v10) - (float)v11;
  if ( v11 <= 0 )
    return *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12) + 40);
  v12 = -1762037865 * ((v4 - v5) >> 2);
  v13 = *(_DWORD *)(a1 + 16);
  v14 = v11 + v12;
  if ( v14 <= v13 || !v13 )
    v13 = v14;
  v15 = (_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12) + 36);
  v39 = 0;
  memset(v17, 0, sizeof(v17));
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v21 = -1;
  v31 = 1065353216;
  v18 = -1;
  v19 = -1;
  v20 = -1;
  v22 = 1065353216;
  v26 = 1065353216;
  v30 = 1065353216;
  std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    v15,
    v13,
    v17);
  return *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12) + 36) + 156 * v12;
}


// ===== 63e81c `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::generateParticles(void) =====
int __fastcall `virtual thunk to'glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::generateParticles(
        _DWORD *a1)
{
  return glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::generateParticles((int)a1 + *(_DWORD *)(*a1 - 48));
}


// ===== 63e82c glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::update(float,glitch::video::SColor &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::GNPSParticle>::update(int *a1, float a2, int a3)
{
  int v5; // r8
  float v6; // r10
  int v8; // r6
  _DWORD *v9; // r12
  int v10; // r5
  int v11; // r8
  int v12; // r2
  int v13; // r1
  unsigned int v14; // r10
  unsigned int v15; // r5
  int v16; // r8
  unsigned int v17; // r0
  int v18; // r0
  _DWORD *v19; // r0
  int v20; // r6
  int v21; // r5
  _DWORD v23[9]; // [sp+4h] [bp-A0h] BYREF
  char v24; // [sp+28h] [bp-7Ch]
  char v25; // [sp+29h] [bp-7Bh]
  char v26; // [sp+2Ah] [bp-7Ah]
  char v27; // [sp+2Bh] [bp-79h]
  int v28; // [sp+2Ch] [bp-78h]
  int v29; // [sp+30h] [bp-74h]
  int v30; // [sp+34h] [bp-70h]
  int v31; // [sp+38h] [bp-6Ch]
  int v32; // [sp+3Ch] [bp-68h]
  int v33; // [sp+40h] [bp-64h]
  int v34; // [sp+44h] [bp-60h]
  int v35; // [sp+48h] [bp-5Ch]
  int v36; // [sp+4Ch] [bp-58h]
  int v37; // [sp+50h] [bp-54h]
  int v38; // [sp+54h] [bp-50h]
  int v39; // [sp+58h] [bp-4Ch]
  int v40; // [sp+78h] [bp-2Ch]
  int v41; // [sp+7Ch] [bp-28h]
  int v42; // [sp+80h] [bp-24h]
  int v43; // [sp+8Ch] [bp-18h]
  int v44; // [sp+90h] [bp-14h]
  int v45; // [sp+94h] [bp-10h]

  v5 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v6 = *(float *)(v5 + 72);
  if ( (float)(a2 - v6) < 0.0 )
  {
    (*(void (__fastcall **)(int *))(*a1 + 12))(a1);
    v5 = (int)a1 + *(_DWORD *)(*a1 - 12);
    v6 = *(float *)(v5 + 72);
  }
  *(float *)(v5 + 76) = v6;
  *(float *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 72) = a2;
  *(float *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 80) = *(float *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 72)
                                                      - *(float *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 76);
  v8 = (*(int (__fastcall **)(int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 40))((int)a1 + *(_DWORD *)(*a1 - 12));
  v9 = (int *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v10 = v9[10];
  v11 = v9[9];
  (*(void (__fastcall **)(_DWORD *, int, int))(*v9 + 128))(v9, v8, v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 60))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v8,
    v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 48))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v8,
    v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 72))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v8,
    v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 104))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v8,
    v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 80))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v8,
    v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 116))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v8,
    v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 140))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v8,
    v10);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 132))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v11,
    v10);
  v12 = *a1;
  v13 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v14 = *(_DWORD *)(v13 + 36);
  v15 = *(_DWORD *)(v13 + 40);
  v16 = -1762037865 * ((int)(v15 - v14) >> 2);
  if ( v15 != v14 )
  {
    do
    {
      while ( *(float *)(v14 + 88) < *(float *)(v14 + 92) && *(float *)(v14 + 88) >= 0.0 )
      {
        v14 += 156;
        if ( v15 == v14 )
          goto LABEL_13;
      }
      do
      {
        v15 -= 156;
        --v16;
      }
      while ( v15 > v14 && (*(float *)(v15 + 88) >= *(float *)(v15 + 92) || *(float *)(v15 + 88) < 0.0) );
      if ( v14 == v15 )
        break;
      v17 = v14;
      v14 += 156;
      std::swap<glitch::ps::GNPSParticle>(v17, v15);
    }
    while ( v15 != v14 );
LABEL_13:
    v12 = *a1;
  }
  v18 = (int)a1 + *(_DWORD *)(v12 - 12);
  v27 = -1;
  v24 = -1;
  v25 = -1;
  v26 = -1;
  v37 = 1065353216;
  v45 = 0;
  memset(v23, 0, sizeof(v23));
  v28 = 1065353216;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1065353216;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1065353216;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  std::vector<glitch::ps::GNPSParticle,glitch::core::SAllocator<glitch::ps::GNPSParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    v18 + 36,
    v16,
    v23);
  v19 = (int *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v20 = v19[9];
  v21 = v19[10];
  (*(void (__fastcall **)(_DWORD *, int, int, int))(*v19 + 64))(v19, v20, v21, a3);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 52))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v20,
    v21);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 108))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v20,
    v21);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 84))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v20,
    v21);
  (*(void (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 120))(
    (int)a1 + *(_DWORD *)(*a1 - 12),
    v20,
    v21);
  return (*(int (__fastcall **)(int, int, int))(*(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) + 144))(
           (int)a1 + *(_DWORD *)(*a1 - 12),
           v20,
           v21);
}


// ===== 63ec44 glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::addPForce(glitch::ps::PForce<glitch::ps::GNPSParticle> *) =====
int __fastcall glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::addPForce(int a1, int a2)
{
  char *v2; // r8
  int v5; // r8
  int v6; // r3
  unsigned int v8; // r3
  unsigned int v9; // r7
  size_t v10; // r7
  char *v11; // r0
  _BYTE *v12; // r1
  char *v13; // r6
  size_t v14; // r8
  char *v15; // r8
  _DWORD *v16; // r8
  int v17; // r3

  v2 = *(char **)(a1 + 8);
  if ( v2 == *(char **)(a1 + 12) )
  {
    v8 = (int)&v2[-*(_DWORD *)(a1 + 4)] >> 2;
    if ( v8 )
      v9 = 2 * v8;
    else
      v9 = 1;
    if ( v9 > 0x3FFFFFFF || v8 > v9 )
      v10 = -4;
    else
      v10 = 4 * v9;
    v11 = (char *)GlitchAlloc(v10, 0);
    v12 = *(_BYTE **)(a1 + 4);
    v13 = v11;
    v14 = v2 - v12;
    if ( v14 )
      v15 = (char *)memmove(v11, v12, v14) + v14;
    else
      v15 = v11;
    *(_DWORD *)v15 = a2;
    v16 = v15 + 4;
    GlitchFree(*(void **)(a1 + 4));
    *(_DWORD *)(a1 + 4) = v13;
    v17 = *(_DWORD *)(a1 + 4);
    *(_DWORD *)(a1 + 8) = v16;
    *(_DWORD *)(a1 + 12) = &v13[v10];
    *(_BYTE *)(a1 + 16) = 1;
    return ((int)v16 - v17) >> 2;
  }
  else
  {
    *(_DWORD *)v2 = a2;
    v5 = *(_DWORD *)(a1 + 8) + 4;
    *(_DWORD *)(a1 + 8) = v5;
    v6 = *(_DWORD *)(a1 + 4);
    *(_BYTE *)(a1 + 16) = 1;
    return (v5 - v6) >> 2;
  }
}


// ===== 63ed1c `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::addPForce(glitch::ps::PForce<glitch::ps::GNPSParticle> *) =====
int __fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::addPForce(_DWORD *a1, int a2)
{
  return glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::addPForce((int)a1 + *(_DWORD *)(*a1 - 96), a2);
}


// ===== 63ed2c glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(char const*,glitch::collada::SAnimation *) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(
        int a1,
        char *a2,
        int a3)
{
  unsigned int result; // r0
  _DWORD *v6; // r12
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  unsigned int v9; // r3
  bool v10; // cc
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  _DWORD *v13; // r3
  unsigned int v14[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v15; // [sp+8h] [bp-8h] BYREF
  _DWORD *v16; // [sp+Ch] [bp-4h] BYREF

  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(a1, a2);
  v6 = *(_DWORD **)(a1 + 52);
  v7 = (_DWORD *)(a1 + 48);
  if ( v6 )
  {
    v8 = (_DWORD *)(a1 + 48);
    while ( 1 )
    {
      v9 = v6[4];
      v10 = result > v9;
      if ( result <= v9 )
        v11 = (_DWORD *)v6[2];
      else
        v11 = (_DWORD *)v6[3];
      if ( v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
  }
  else
  {
    v6 = (_DWORD *)(a1 + 48);
  }
  if ( v7 == v6 || (v12 = v6, result < v6[4]) )
  {
    v14[0] = result;
    v14[1] = 0;
    v16 = v6;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v15,
                             v7,
                             &v16,
                             v14);
    v12 = v15;
  }
  v13 = (_DWORD *)v12[5];
  if ( v13 )
    *v13 = a3;
  return result;
}


// ===== 63edd0 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<int>(char const*,int) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<int>(
        int a1,
        char *a2,
        int a3)
{
  unsigned int result; // r0
  _DWORD *v6; // r12
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  unsigned int v9; // r3
  bool v10; // cc
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  _DWORD *v13; // r3
  unsigned int v14[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v15; // [sp+8h] [bp-8h] BYREF
  _DWORD *v16; // [sp+Ch] [bp-4h] BYREF

  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(a1, a2);
  v6 = *(_DWORD **)(a1 + 52);
  v7 = (_DWORD *)(a1 + 48);
  if ( v6 )
  {
    v8 = (_DWORD *)(a1 + 48);
    while ( 1 )
    {
      v9 = v6[4];
      v10 = result > v9;
      if ( result <= v9 )
        v11 = (_DWORD *)v6[2];
      else
        v11 = (_DWORD *)v6[3];
      if ( v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
  }
  else
  {
    v6 = (_DWORD *)(a1 + 48);
  }
  if ( v7 == v6 || (v12 = v6, result < v6[4]) )
  {
    v14[0] = result;
    v14[1] = 0;
    v16 = v6;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v15,
                             v7,
                             &v16,
                             v14);
    v12 = v15;
  }
  v13 = (_DWORD *)v12[5];
  if ( v13 )
    *v13 = a3;
  return result;
}


// ===== 63ee74 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float>>(char const*,glitch::core::vector3d<float>) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float>>(
        int a1,
        char *a2,
        _DWORD *a3)
{
  unsigned int result; // r0
  _DWORD *v6; // r12
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  unsigned int v9; // r3
  bool v10; // cc
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  _DWORD *v13; // r3
  unsigned int v14[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v15; // [sp+8h] [bp-8h] BYREF
  _DWORD *v16; // [sp+Ch] [bp-4h] BYREF

  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(a1, a2);
  v6 = *(_DWORD **)(a1 + 52);
  v7 = (_DWORD *)(a1 + 48);
  if ( v6 )
  {
    v8 = (_DWORD *)(a1 + 48);
    while ( 1 )
    {
      v9 = v6[4];
      v10 = result > v9;
      if ( result <= v9 )
        v11 = (_DWORD *)v6[2];
      else
        v11 = (_DWORD *)v6[3];
      if ( v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
  }
  else
  {
    v6 = (_DWORD *)(a1 + 48);
  }
  if ( v7 == v6 || (v12 = v6, result < v6[4]) )
  {
    v14[0] = result;
    v14[1] = 0;
    v16 = v6;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v15,
                             v7,
                             &v16,
                             v14);
    v12 = v15;
  }
  v13 = (_DWORD *)v12[5];
  if ( v13 )
  {
    *v13 = *a3;
    v13[1] = a3[1];
    v13[2] = a3[2];
  }
  return result;
}


// ===== 63ef34 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(char const*,float) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
        int a1,
        char *a2,
        int a3)
{
  unsigned int result; // r0
  _DWORD *v6; // r12
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  unsigned int v9; // r3
  bool v10; // cc
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  _DWORD *v13; // r3
  unsigned int v14[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v15; // [sp+8h] [bp-8h] BYREF
  _DWORD *v16; // [sp+Ch] [bp-4h] BYREF

  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(a1, a2);
  v6 = *(_DWORD **)(a1 + 52);
  v7 = (_DWORD *)(a1 + 48);
  if ( v6 )
  {
    v8 = (_DWORD *)(a1 + 48);
    while ( 1 )
    {
      v9 = v6[4];
      v10 = result > v9;
      if ( result <= v9 )
        v11 = (_DWORD *)v6[2];
      else
        v11 = (_DWORD *)v6[3];
      if ( v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
  }
  else
  {
    v6 = (_DWORD *)(a1 + 48);
  }
  if ( v7 == v6 || (v12 = v6, result < v6[4]) )
  {
    v14[0] = result;
    v14[1] = 0;
    v16 = v6;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v15,
                             v7,
                             &v16,
                             v14);
    v12 = v15;
  }
  v13 = (_DWORD *)v12[5];
  if ( v13 )
    *v13 = a3;
  return result;
}


// ===== 63efd8 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<uchar>(char const*,uchar) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
        int a1,
        char *a2,
        char a3)
{
  unsigned int result; // r0
  _DWORD *v6; // r12
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  unsigned int v9; // r3
  bool v10; // cc
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  _BYTE *v13; // r3
  unsigned int v14[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v15; // [sp+8h] [bp-8h] BYREF
  _DWORD *v16; // [sp+Ch] [bp-4h] BYREF

  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(a1, a2);
  v6 = *(_DWORD **)(a1 + 52);
  v7 = (_DWORD *)(a1 + 48);
  if ( v6 )
  {
    v8 = (_DWORD *)(a1 + 48);
    while ( 1 )
    {
      v9 = v6[4];
      v10 = result > v9;
      if ( result <= v9 )
        v11 = (_DWORD *)v6[2];
      else
        v11 = (_DWORD *)v6[3];
      if ( v10 )
        v6 = v8;
      v8 = v6;
      if ( !v11 )
        break;
      v6 = v11;
    }
  }
  else
  {
    v6 = (_DWORD *)(a1 + 48);
  }
  if ( v7 == v6 || (v12 = v6, result < v6[4]) )
  {
    v14[0] = result;
    v14[1] = 0;
    v16 = v6;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v15,
                             v7,
                             &v16,
                             v14);
    v12 = v15;
  }
  v13 = (_BYTE *)v12[5];
  if ( v13 )
    *v13 = a3;
  return result;
}


// ===== 63f07c glitch::collada::CGlitchNewParticleSystemSceneNode::getParticleSystemParameter(char const*) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::getParticleSystemParameter(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this,
        char *a2)
{
  int v2; // r5
  unsigned int v3; // r0
  _DWORD *v4; // r12
  _DWORD *v5; // r1
  _DWORD *v6; // r2
  unsigned int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  unsigned int v12[2]; // [sp+0h] [bp-14h] BYREF
  _DWORD *v13; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v14; // [sp+Ch] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
  v3 = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v2, a2);
  v4 = *(_DWORD **)(v2 + 52);
  v5 = (_DWORD *)(v2 + 48);
  if ( v4 )
  {
    v6 = (_DWORD *)(v2 + 48);
    while ( 1 )
    {
      v7 = v4[4];
      v8 = v3 > v7;
      if ( v3 <= v7 )
        v9 = (_DWORD *)v4[2];
      else
        v9 = (_DWORD *)v4[3];
      if ( v8 )
        v4 = v6;
      v6 = v4;
      if ( !v9 )
        break;
      v4 = v9;
    }
  }
  else
  {
    v4 = (_DWORD *)(v2 + 48);
  }
  if ( v5 == v4 || (v10 = v4, v3 < v4[4]) )
  {
    v12[0] = v3;
    v12[1] = 0;
    v14 = v4;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v13,
      v5,
      &v14,
      v12);
    v10 = v13;
  }
  return v10[5];
}


// ===== 63f124 glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::scene::CMeshBuffer *>(char const*,glitch::scene::CMeshBuffer *) [clone] =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::scene::CMeshBuffer *>(
        int a1,
        int a2)
{
  unsigned int result; // r0
  _DWORD *v5; // r3
  _DWORD *v6; // r1
  _DWORD *v7; // r12
  unsigned int v8; // r2
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  unsigned int v11[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v12; // [sp+8h] [bp-8h] BYREF
  _DWORD *v13; // [sp+Ch] [bp-4h] BYREF

  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(a1, "RenderMesh");
  v5 = *(_DWORD **)(a1 + 52);
  v6 = (_DWORD *)(a1 + 48);
  if ( v5 )
  {
    v7 = (_DWORD *)(a1 + 48);
    do
    {
      v8 = v5[4];
      if ( result > v8 )
        v5 = (_DWORD *)v5[3];
      else
        v7 = v5;
      if ( result <= v8 )
        v5 = (_DWORD *)v5[2];
    }
    while ( v5 );
  }
  else
  {
    v7 = (_DWORD *)(a1 + 48);
  }
  if ( v6 == v7 || (v9 = v7, result < v7[4]) )
  {
    v11[0] = result;
    v11[1] = 0;
    v13 = v7;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v12,
                             v6,
                             &v13,
                             v11);
    v9 = v12;
  }
  v10 = (_DWORD *)v9[5];
  if ( v10 )
    *v10 = a2;
  return result;
}


// ===== 63f1c8 glitch::collada::CGlitchNewParticleSystemSceneNode::setParticleMesh(boost::intrusive_ptr<glitch::scene::CMeshBuffer>) =====
unsigned int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::setParticleMesh(int a1, int *a2)
{
  int v2; // r1
  glitch::IReferenceCounted *v4; // r0

  v2 = *a2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  v4 = *(glitch::IReferenceCounted **)(a1 + 320);
  *(_DWORD *)(a1 + 320) = v2;
  if ( v4 )
  {
    glitch::IReferenceCounted::drop(v4);
    v2 = *(_DWORD *)(a1 + 320);
  }
  return glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::scene::CMeshBuffer *>(
           *(_DWORD *)(a1 + 376) + *(_DWORD *)(**(_DWORD **)(a1 + 376) - 12),
           v2);
}


// ===== 63f214 glitch::collada::CGlitchNewParticleSystemSceneNode::init(void) =====
void *__fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::init(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  const char **v1; // r10
  int v2; // r4
  int v3; // r7
  glitch::collada::CColladaDatabase *v5; // r9
  const char *v6; // r8
  unsigned int ParameterID; // r0
  unsigned int v8; // r6
  int v9; // r3
  unsigned int v10; // r2
  int v11; // r3
  char *v12; // r7
  size_t v13; // r0
  _DWORD *v14; // r0
  const char **v15; // r2
  _DWORD *v16; // r0
  const char **v17; // r2
  _DWORD *v18; // r0
  const char **v19; // r2
  _DWORD *v20; // r0
  const char **v21; // r2
  int v22; // r7
  unsigned int v23; // r0
  _DWORD *v24; // r12
  _DWORD *v25; // r1
  _DWORD *v26; // r2
  unsigned int v27; // r3
  bool v28; // cc
  _DWORD *v29; // r3
  _DWORD *v30; // r3
  glitch::video::CMaterial **v31; // r2
  glitch::video::CMaterial *v32; // r3
  void *result; // r0
  glitch::IReferenceCounted *v34; // r2
  int v35; // r2
  int v36; // r0
  int AnimationClip; // r0
  unsigned int v38; // lr
  _DWORD *v39; // r12
  _DWORD *v40; // r1
  _DWORD *v41; // r0
  unsigned int v42; // r3
  bool v43; // cc
  _DWORD *v44; // r3
  _DWORD *v45; // r3
  _DWORD *v46; // r3
  const char *v47; // r3
  int Animation; // r2
  int v49; // r0
  _DWORD *v50; // r3
  char v51; // r1
  glitch::collada::CAnimationBlock *v52; // r1
  int v53; // [sp+4h] [bp-A0h]
  int v54; // [sp+24h] [bp-80h]
  glitch::IReferenceCounted *v55[2]; // [sp+2Ch] [bp-78h] BYREF
  int v56; // [sp+34h] [bp-70h]
  int v57; // [sp+38h] [bp-6Ch]
  unsigned int v58[2]; // [sp+3Ch] [bp-68h] BYREF
  unsigned int v59[2]; // [sp+44h] [bp-60h] BYREF
  _DWORD *v60; // [sp+4Ch] [bp-58h] BYREF
  _DWORD *v61; // [sp+50h] [bp-54h] BYREF
  glitch::video::CMaterial *v62; // [sp+54h] [bp-50h] BYREF
  _DWORD *v63; // [sp+58h] [bp-4Ch] BYREF
  _DWORD *v64; // [sp+5Ch] [bp-48h] BYREF
  glitch::video::CMaterial *v65; // [sp+60h] [bp-44h] BYREF
  glitch::video::CMaterial *v66; // [sp+64h] [bp-40h] BYREF
  glitch::collada *v67; // [sp+68h] [bp-3Ch] BYREF
  void *v68[5]; // [sp+6Ch] [bp-38h] BYREF
  void *p; // [sp+80h] [bp-24h]
  _DWORD v70[4]; // [sp+84h] [bp-20h] BYREF
  _BYTE *v71; // [sp+94h] [bp-10h]
  void *v72; // [sp+98h] [bp-Ch]

  v2 = *((_DWORD *)this + 86);
  v3 = *((_DWORD *)this + 87);
  if ( v2 == v3 )
  {
    v5 = (glitch::collada::CGlitchNewParticleSystemSceneNode *)((char *)this + 308);
  }
  else
  {
    v5 = (glitch::collada::CGlitchNewParticleSystemSceneNode *)((char *)this + 308);
    do
    {
      v6 = *(const char **)(*(_DWORD *)v2 + 28);
      if ( v6 )
        v6 += 4;
      ParameterID = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)v2 + 4), 6, 0);
      v8 = ParameterID;
      v9 = *(_DWORD *)(*(_DWORD *)v2 + 4);
      v10 = *(unsigned __int16 *)(v9 + 14);
      if ( v10 > ParameterID )
        v1 = *(const char ***)(v9 + 32);
      v11 = *((_DWORD *)this + 77);
      if ( v10 > ParameterID )
        v1 += 4 * ParameterID;
      else
        v1 = nullptr;
      if ( !*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v11 + 36) + 32) + 4) )
      {
        v34 = *((glitch::IReferenceCounted **)this + 78);
        v55[0] = *((glitch::IReferenceCounted **)this + 77);
        v55[1] = v34;
        if ( v11 )
        {
          v35 = *(_DWORD *)(v11 + 4);
          if ( v35 )
          {
            *(_DWORD *)(v11 + 4) = v35 + 1;
            v11 = *((_DWORD *)this + 77);
          }
        }
        v56 = 0;
        v36 = *(_DWORD *)(*(_DWORD *)(v11 + 36) + 32);
        if ( *(_DWORD *)(v36 + 52) )
          AnimationClip = glitch::collada::CColladaDatabase::getAnimationClip(v5, 0);
        else
          AnimationClip = v36 + 24;
        v56 = AnimationClip;
        if ( (*(_DWORD *)(AnimationClip + 4) & ~(*(int *)(AnimationClip + 4) >> 31)) > *(_DWORD *)(AnimationClip + 8) )
          v57 = *(_DWORD *)(AnimationClip + 8);
        else
          v57 = *(_DWORD *)(AnimationClip + 4) & ~(*(int *)(AnimationClip + 4) >> 31);
        v67 = nullptr;
        glitch::collada::CAnimationStreamingManager::getAnimationBlock(
          (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
          (glitch::collada::SAnimationBlockSearchKey *)v55,
          &v67);
        if ( v67 )
        {
          v54 = *(_DWORD *)(*(int *)((char *)&dword_14 + (_DWORD)v67) + 12);
          v53 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
          v38 = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v53, "AnimationDatabase");
          v39 = *(_DWORD **)(v53 + 52);
          v40 = (_DWORD *)(v53 + 48);
          if ( v39 )
          {
            v41 = (_DWORD *)(v53 + 48);
            while ( 1 )
            {
              v42 = v39[4];
              v43 = v38 > v42;
              if ( v38 <= v42 )
                v44 = (_DWORD *)v39[2];
              else
                v44 = (_DWORD *)v39[3];
              if ( v43 )
                v39 = v41;
              if ( !v44 )
                break;
              v41 = v39;
              v39 = v44;
            }
          }
          else
          {
            v39 = (_DWORD *)(v53 + 48);
          }
          if ( v40 == v39 || (v45 = v39, v38 < v39[4]) )
          {
            v59[0] = v38;
            v59[1] = 0;
            v64 = v39;
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
              &v63,
              v40,
              &v64,
              v59);
            v45 = v63;
          }
          v46 = (_DWORD *)v45[5];
          if ( v46 )
            *v46 = v54;
        }
        if ( v8 == 0xFFFF )
          goto LABEL_79;
        v47 = *v1;
        if ( *v1 )
          v47 += 4;
        Animation = glitch::collada::CColladaDatabase::getAnimation(v5, v6, 86, v47);
        if ( !Animation )
        {
LABEL_79:
          Animation = glitch::collada::CColladaDatabase::getAnimation(v5, v6, 0x19u, 255);
          if ( !Animation )
            Animation = glitch::collada::CColladaDatabase::getAnimation(v5, v6, 86, "__irrlicht_Diffuse_color");
        }
        glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(
          *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12),
          "DiffuseColorTrack",
          Animation);
        v49 = glitch::collada::CColladaDatabase::getAnimation(v5, v6, 0x100u, 255);
        v50 = *((_DWORD **)this + 94);
        v51 = v49;
        if ( v49 )
          v51 = 1;
        *((_BYTE *)this + 368) = v51;
        glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(
          (int)v50 + *(_DWORD *)(*v50 - 12),
          "TextureTransformTrack",
          v49);
        if ( v67 )
          glitch::collada::intrusive_ptr_release(v67, v52);
        glitch::collada::CColladaDatabase::~CColladaDatabase(v55);
      }
      v2 += 4;
    }
    while ( v2 != v3 );
  }
  v12 = **((char ***)this + 95);
  v71 = v70;
  v72 = v70;
  v13 = LC_API_STRLEN_0(v12);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v70,
    v12,
    &v12[v13]);
  v68[4] = v68;
  p = v68;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v68,
    v72,
    v71);
  v14 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          v68,
          "_particle_size_scale",
          "");
  v15 = glitch::collada::CColladaDatabase::getAnimation(v5, (const char *)v14[5]);
  if ( v15 )
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(
      *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12),
      "SizeScale",
      (int)v15);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v68,
    v72,
    v71);
  v16 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          v68,
          "_particle_speed_scale",
          "");
  v17 = glitch::collada::CColladaDatabase::getAnimation(v5, (const char *)v16[5]);
  if ( v17 )
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(
      *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12),
      "SpeedScale",
      (int)v17);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v68,
    v72,
    v71);
  v18 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          v68,
          "_spin_scale",
          "");
  v19 = glitch::collada::CColladaDatabase::getAnimation(v5, (const char *)v18[5]);
  if ( v19 )
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(
      *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12),
      "SpinScale",
      (int)v19);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v68,
    v72,
    v71);
  v20 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
          v68,
          "_motion_random_scale",
          "");
  v21 = glitch::collada::CColladaDatabase::getAnimation(v5, (const char *)v20[5]);
  if ( v21 )
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::collada::SAnimation *>(
      *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12),
      "MotionRandomScale",
      (int)v21);
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::CGlitchNewParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
    &v66,
    this,
    0);
  *((_DWORD *)this + 93) = glitch::video::CMaterialRenderer::getParameterID(*((_DWORD *)v66 + 1), 6, 0);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v66);
  v22 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::CGlitchNewParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
    &v65,
    this,
    0);
  v23 = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v22, "RenderMaterial");
  v24 = *(_DWORD **)(v22 + 52);
  v25 = (_DWORD *)(v22 + 48);
  if ( v24 )
  {
    v26 = (_DWORD *)(v22 + 48);
    while ( 1 )
    {
      v27 = v24[4];
      v28 = v23 > v27;
      if ( v23 <= v27 )
        v29 = (_DWORD *)v24[2];
      else
        v29 = (_DWORD *)v24[3];
      if ( v28 )
        v24 = v26;
      if ( !v29 )
        break;
      v26 = v24;
      v24 = v29;
    }
  }
  else
  {
    v24 = (_DWORD *)(v22 + 48);
  }
  if ( v25 == v24 || (v30 = v24, v23 < v24[4]) )
  {
    v58[0] = v23;
    v58[1] = 0;
    v61 = v24;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v60,
      v25,
      &v61,
      v58);
    v30 = v60;
  }
  v31 = (glitch::video::CMaterial **)v30[5];
  if ( v31 )
  {
    v32 = v65;
    v62 = v65;
    if ( v65 )
    {
      ++*(_DWORD *)v65;
      v32 = v62;
    }
    v62 = *v31;
    *v31 = v32;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v62);
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v65);
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 12))(*((_DWORD *)this + 94));
  if ( p != v68 && p )
    GlitchFree(p);
  result = v72;
  if ( v72 != v70 )
  {
    if ( v72 )
      GlitchFree(v72);
  }
  return result;
}


// ===== 63f898 glitch::ps::PRenderData::setRenderDataInfo(glitch::scene::CMeshBuffer *,glitch::video::IVideoDriver *) =====
glitch::IReferenceCounted *__fastcall glitch::ps::PRenderData::setRenderDataInfo(
        glitch::ps::PRenderData *this,
        glitch::video::CVertexStreams **a2,
        glitch::video::IVideoDriver *a3)
{
  int v3; // r3
  bool v4; // zf
  glitch::IReferenceCounted *v7; // r3
  glitch::IReferenceCounted *v8; // r0
  int ActiveAttributeMask; // r6
  int v10; // r0
  int v11; // r0
  int v12; // r3
  glitch::video::CVertexStreams *v13; // r5
  int v14; // r6
  int v15; // r7
  glitch::IReferenceCounted *result; // r0
  glitch::video::CVertexStreams *v17; // r3
  glitch::video::CVertexStreams *v18; // r7
  glitch::video::CVertexStreams *v19; // r7
  glitch::video::CVertexStreams *v20; // [sp+0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v21; // [sp+4h] [bp-8h] BYREF

  v3 = *(_DWORD *)this;
  v4 = *(_DWORD *)this == 0;
  v21 = nullptr;
  if ( !v4 )
  {
    v7 = *(glitch::IReferenceCounted **)(v3 + 20);
    if ( v7 )
    {
      ++*((_DWORD *)v7 + 1);
      v8 = v21;
      v21 = v7;
      if ( v8 )
        glitch::IReferenceCounted::drop(v8);
    }
    else
    {
      v21 = nullptr;
    }
  }
  ActiveAttributeMask = glitch::video::CVertexStreams::getActiveAttributeMask(a2[5]);
  v10 = *(_DWORD *)this;
  if ( !*(_DWORD *)this || (ActiveAttributeMask & ~*(_DWORD *)(v10 + 4)) != 0 )
  {
    glitch::video::CVertexStreams::allocate(&v20, ActiveAttributeMask);
    v17 = v20;
    if ( v20 )
      ++*(_DWORD *)v20;
    v18 = *(glitch::video::CVertexStreams **)this;
    *(_DWORD *)this = v17;
    if ( v18 )
    {
      v4 = (*(_DWORD *)v18)-- == 1;
      if ( v4 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v18);
        LC_API_FREE_0(v18);
      }
    }
    v19 = v20;
    if ( v20 && (v4 = *(_DWORD *)v20 == 1, --*(_DWORD *)v20, v4) )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v19);
      LC_API_FREE_0(v19);
      v10 = *(_DWORD *)this;
    }
    else
    {
      v10 = *(_DWORD *)this;
    }
  }
  v11 = glitch::video::CVertexStreams::setupStreams(v10, &v21, ActiveAttributeMask);
  v13 = a2[5];
  v14 = v11;
  if ( v13 )
    v12 = *(_DWORD *)v13;
  v15 = *((_DWORD *)v13 + 2);
  if ( v13 )
    *(_DWORD *)v13 = v12 + 1;
  v4 = (*(_DWORD *)v13)-- == 1;
  if ( v4 )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v13);
    LC_API_FREE_0(v13);
  }
  result = v21;
  v4 = v21 == nullptr;
  *((_DWORD *)this + 7) = v15 * v14;
  if ( !v4 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  return result;
}


// ===== 63fa14 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(
        int a1)
{
  int v2; // r6
  unsigned int result; // r0
  _DWORD *v4; // r12
  _DWORD *v5; // r1
  _DWORD *v6; // r2
  unsigned int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  glitch::video::CVertexStreams **v11; // r1
  int v12; // r4
  int v13; // r3
  int v14; // r2
  int v15; // r4
  glitch::IReferenceCounted *v16; // r0
  unsigned int v17[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v18; // [sp+8h] [bp-8h] BYREF
  _DWORD *v19; // [sp+Ch] [bp-4h] BYREF

  v2 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v2, "MaxParticles");
  v4 = *(_DWORD **)(v2 + 52);
  v5 = (_DWORD *)(v2 + 48);
  if ( v4 )
  {
    v6 = (_DWORD *)(v2 + 48);
    while ( 1 )
    {
      v7 = v4[4];
      v8 = result > v7;
      if ( result <= v7 )
        v9 = (_DWORD *)v4[2];
      else
        v9 = (_DWORD *)v4[3];
      if ( v8 )
        v4 = v6;
      v6 = v4;
      if ( !v9 )
        break;
      v4 = v9;
    }
  }
  else
  {
    v4 = (_DWORD *)(v2 + 48);
  }
  if ( v5 == v4 || (v10 = v4, result < v4[4]) )
  {
    v17[0] = result;
    v17[1] = 0;
    v19 = v4;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v18,
                             v5,
                             &v19,
                             v17);
    v10 = v18;
  }
  v11 = *(glitch::video::CVertexStreams ***)(a1 + 4);
  v12 = *(_DWORD *)v10[5];
  if ( v11 )
  {
    v13 = *(_DWORD *)(a1 + 8);
    if ( v13 )
    {
      glitch::ps::PRenderData::setRenderDataInfo(
        (glitch::ps::PRenderData *)(a1 + 16),
        v11,
        *(glitch::video::IVideoDriver **)(*(_DWORD *)(v13 + 4) + 4));
      v14 = *(_DWORD *)(a1 + 160);
      v15 = *(_DWORD *)(a1 + 44) * v12;
      *(_DWORD *)(a1 + 36) = 0;
      *(_DWORD *)(a1 + 28) = 0;
      *(_DWORD *)(a1 + 32) = 0;
      *(_DWORD *)(a1 + 152) = v15;
      *(_WORD *)(a1 + 40) = 1;
      if ( v14 )
        ++*(_DWORD *)(v14 + 4);
      v16 = *(glitch::IReferenceCounted **)(a1 + 20);
      *(_DWORD *)(a1 + 20) = v14;
      if ( v16 )
        glitch::IReferenceCounted::drop(v16);
      result = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(a1 + 8) + 4), 6, 0);
      *(_WORD *)(a1 + 12) = result;
    }
  }
  return result;
}


// ===== 63fb5c `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel((int)a1 + *(_DWORD *)(*a1 - 144));
}


// ===== 63fb6c glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(
        int a1)
{
  int v2; // r6
  unsigned int result; // r0
  _DWORD *v4; // r12
  _DWORD *v5; // r1
  _DWORD *v6; // r2
  unsigned int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  glitch::video::CVertexStreams **v11; // r1
  int v12; // r4
  int v13; // r3
  int v14; // r2
  int v15; // r4
  glitch::IReferenceCounted *v16; // r0
  unsigned int v17[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v18; // [sp+8h] [bp-8h] BYREF
  _DWORD *v19; // [sp+Ch] [bp-4h] BYREF

  v2 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v2, "MaxParticles");
  v4 = *(_DWORD **)(v2 + 52);
  v5 = (_DWORD *)(v2 + 48);
  if ( v4 )
  {
    v6 = (_DWORD *)(v2 + 48);
    while ( 1 )
    {
      v7 = v4[4];
      v8 = result > v7;
      if ( result <= v7 )
        v9 = (_DWORD *)v4[2];
      else
        v9 = (_DWORD *)v4[3];
      if ( v8 )
        v4 = v6;
      v6 = v4;
      if ( !v9 )
        break;
      v4 = v9;
    }
  }
  else
  {
    v4 = (_DWORD *)(v2 + 48);
  }
  if ( v5 == v4 || (v10 = v4, result < v4[4]) )
  {
    v17[0] = result;
    v17[1] = 0;
    v19 = v4;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v18,
                             v5,
                             &v19,
                             v17);
    v10 = v18;
  }
  v11 = *(glitch::video::CVertexStreams ***)(a1 + 4);
  v12 = *(_DWORD *)v10[5];
  if ( v11 )
  {
    v13 = *(_DWORD *)(a1 + 8);
    if ( v13 )
    {
      glitch::ps::PRenderData::setRenderDataInfo(
        (glitch::ps::PRenderData *)(a1 + 16),
        v11,
        *(glitch::video::IVideoDriver **)(*(_DWORD *)(v13 + 4) + 4));
      v14 = *(_DWORD *)(a1 + 160);
      v15 = *(_DWORD *)(a1 + 44) * v12;
      *(_DWORD *)(a1 + 36) = 0;
      *(_DWORD *)(a1 + 28) = 0;
      *(_DWORD *)(a1 + 32) = 0;
      *(_DWORD *)(a1 + 152) = v15;
      *(_WORD *)(a1 + 40) = 1;
      if ( v14 )
        ++*(_DWORD *)(v14 + 4);
      v16 = *(glitch::IReferenceCounted **)(a1 + 20);
      *(_DWORD *)(a1 + 20) = v14;
      if ( v16 )
        glitch::IReferenceCounted::drop(v16);
      result = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)(a1 + 8) + 4), 6, 0);
      *(_WORD *)(a1 + 12) = result;
    }
  }
  return result;
}


// ===== 63fcb4 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::initPRenderDataModel((int)a1 + *(_DWORD *)(*a1 - 144));
}


// ===== 63fcc4 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        int a1)
{
  int v2; // r6
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  glitch::video::CVertexStreams *v5; // r5
  bool v6; // zf

  *(_DWORD *)a1 = off_97C89C;
  v2 = a1 + 164;
  *(_DWORD *)(a1 + 164) = off_97C958;
  LC_API_FREE_0(*(void **)(a1 + 156));
  *(_DWORD *)(a1 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(a1);
  v3 = *(glitch::IReferenceCounted **)(a1 + 160);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *(glitch::IReferenceCounted **)(a1 + 20);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *(glitch::video::CVertexStreams **)(a1 + 16);
  if ( v5 && (v6 = *(_DWORD *)v5 == 1, --*(_DWORD *)v5, v6) )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v5);
    LC_API_FREE_0(v5);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(a1 + 8));
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
    return a1;
  }
  else
  {
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(a1 + 8));
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
    return a1;
  }
}


// ===== 63fd90 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 63fda0 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        void *a1)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63fdbc `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 63fdcc glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        int a1)
{
  int v2; // r6
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  glitch::video::CVertexStreams *v5; // r5
  bool v6; // zf

  *(_DWORD *)a1 = off_97E6E4;
  v2 = a1 + 164;
  *(_DWORD *)(a1 + 164) = off_97E7A0;
  LC_API_FREE_0(*(void **)(a1 + 156));
  *(_DWORD *)(a1 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(a1);
  v3 = *(glitch::IReferenceCounted **)(a1 + 160);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *(glitch::IReferenceCounted **)(a1 + 20);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *(glitch::video::CVertexStreams **)(a1 + 16);
  if ( v5 && (v6 = *(_DWORD *)v5 == 1, --*(_DWORD *)v5, v6) )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v5);
    LC_API_FREE_0(v5);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(a1 + 8));
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
    return a1;
  }
  else
  {
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(a1 + 8));
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
    return a1;
  }
}


// ===== 63fe98 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 63fea8 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        void *a1)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 63fec4 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::~PRenderDataBillboardModel((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 63fed4 glitch::collada::CGlitchNewParticleSystemSceneNode::onAnimate(uint) =====
int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::onAnimate(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this,
        unsigned int a2)
{
  int v4; // r3
  int v5; // r1
  void *v6; // r5
  int v7; // r0
  void *v9; // r6
  _DWORD v10[17]; // [sp+4h] [bp-4Ch] BYREF
  int v11; // [sp+48h] [bp-8h] BYREF
  _BYTE v12[4]; // [sp+4Ch] [bp-4h] BYREF

  glitch::scene::ISceneNode::onAnimate((int)this, a2);
  v4 = *((_DWORD *)this + 68);
  *((_DWORD *)this + 81) = a2;
  v5 = *(_DWORD *)(v4 + 228);
  if ( v5 )
  {
    v6 = *((void **)this + 96);
    v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 324))(*(_DWORD *)(v4 + 228));
    memcpy(v6, (const void *)(v7 + 132), 0x41u);
  }
  else
  {
    v9 = *((void **)this + 96);
    LC_API_MEMSET_0(v10, 0, 0x40u);
    v10[15] = 1065353216;
    LOBYTE(v10[16]) = 1;
    v10[0] = 1065353216;
    v10[5] = 1065353216;
    v10[10] = 1065353216;
    memcpy(v9, v10, 0x41u);
  }
  (*(void (__fastcall **)(int *, glitch::collada::CGlitchNewParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
    &v11,
    this,
    0);
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
    v11,
    (unsigned __int16)*((_DWORD *)this + 93),
    0,
    v12);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)&v11);
  return (*(int (__fastcall **)(_DWORD, _DWORD, _BYTE *))(**((_DWORD **)this + 94) + 16))(
           *((_DWORD *)this + 94),
           (float)*((unsigned int *)this + 81) / 1000.0,
           v12);
}


// ===== 63ffdc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 404);
}


// ===== 63ffe4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 392);
}


// ===== 63ffec `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 248);
}


// ===== 63fff4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 228);
}


// ===== 63fffc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 640004 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 144);
}


// ===== 64000c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 64);
}


// ===== 640014 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 44);
}


// ===== 64001c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 640024 glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  int v2; // r6
  int v3; // r8
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::video::CVertexStreams *v6; // r10
  int v8; // r3

  *(_DWORD *)a1 = off_97B8EC;
  v2 = a1 + 568;
  *(_DWORD *)(a1 + 44) = off_97B92C;
  *(_DWORD *)(a1 + 64) = off_97B94C;
  *(_DWORD *)(a1 + 144) = off_97B970;
  *(_DWORD *)(a1 + 568) = off_97BAD4;
  *(_DWORD *)(a1 + 16) = off_97B910;
  *(_DWORD *)(a1 + 168) = off_97B98C;
  *(_DWORD *)(a1 + 228) = off_97B9AC;
  *(_DWORD *)(a1 + 248) = off_97B9D8;
  v3 = a1 + 404;
  *(_DWORD *)(a1 + 392) = off_97B9F8;
  *(_DWORD *)(a1 + 404) = off_97C73C;
  *(int *)((char *)&dword_A4 + a1 + 404) = (int)off_97C7F8;
  LC_API_FREE_0(*(void **)(a1 + 560));
  *(_DWORD *)(v3 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::deallocateBuffer(v3);
  v4 = *(glitch::IReferenceCounted **)(v3 + 160);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *(glitch::IReferenceCounted **)(v3 + 20);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = *(glitch::video::CVertexStreams **)(v3 + 16);
  if ( v6 )
  {
    if ( (*(_DWORD *)v6)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v6);
      LC_API_FREE_0(v6);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(v3 + 8));
  *(_DWORD *)(a1 + 392) = off_97C5EC;
  *(int *)((char *)&dword_B0 + a1 + 392) = (int)off_97C698;
  *(_DWORD *)(a1 + 248) = off_97C49C;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97C548;
  glitch::ps::PForcesModel<glitch::ps::GNPSParticle>::~PForcesModel((int *)(a1 + 228), (int *)off_97B894);
  *(_DWORD *)(a1 + 168) = off_97C1F4;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97C2A0;
  *(_DWORD *)(a1 + 144) = off_97C0AC;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97C154;
  v8 = *(_DWORD *)(a1 + 148);
  if ( v8 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 28))(*(_DWORD *)(a1 + 148));
  *(_DWORD *)(a1 + 64) = off_97BF5C;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97C00C;
  *(_DWORD *)(a1 + 44) = off_97BE0C;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97BEB8;
  *(_DWORD *)(a1 + 16) = off_97BCC4;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97BD6C;
  *(_DWORD *)a1 = off_97BB74;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97BC24;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 640244 `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 640254 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 404);
}


// ===== 64025c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 392);
}


// ===== 640264 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 248);
}


// ===== 64026c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 228);
}


// ===== 640274 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 64027c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 144);
}


// ===== 640284 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 64);
}


// ===== 64028c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 44);
}


// ===== 640294 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 64029c glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        void *a1)
{
  glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 6402b8 `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::GNPSParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::~Mixin((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 6402c8 glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(int **a1, int *a2)
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
  result = glitch::video::IBuffer::map(*a2, 5);
  a1[1] = (int *)(result + a2[1]);
  return result;
}


// ===== 640360 glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
int __fastcall glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(int **a1, int *a2)
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
  result = glitch::video::IBuffer::map(*a2, 5);
  a1[1] = (int *)(result + a2[1]);
  return result;
}


// ===== 6403f8 glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>,glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*,glitch::video::CVertexStreams const*,glitch::video::CVertexStreams*,glitch::core::CMatrix4<float> const*,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
int __fastcall glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>,glitch::ps::PSNullShaderParametersBaker>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        glitch::video::CMaterial **a6)
{
  _DWORD *v7; // r10
  int v8; // r9
  Elf32_Dyn **v9; // r3
  int v10; // r4
  int v11; // r2
  char *v12; // r5
  const void *v13; // r8
  size_t v14; // r6
  int v15; // r4
  char v16; // r3
  char v17; // r3
  char v18; // r1
  glitch::video::CMaterial *v19; // r3
  float *v20; // r6
  float *v21; // r11
  int v22; // r9
  int v23; // r7
  int v24; // r5
  int i; // r4
  int v26; // r2
  _BYTE *v27; // r4
  char v28; // r3
  _BYTE *v29; // r4
  char v30; // r3
  _BYTE *v31; // r4
  char v32; // r3
  glitch::IReferenceCounted *v35; // [sp+4h] [bp-30h]
  glitch::IReferenceCounted *v36; // [sp+8h] [bp-2Ch]
  int *v37; // [sp+14h] [bp-20h] BYREF
  int v38; // [sp+18h] [bp-1Ch]
  int *v39; // [sp+1Ch] [bp-18h] BYREF
  int v40; // [sp+20h] [bp-14h]
  int *v41; // [sp+24h] [bp-10h] BYREF
  int v42; // [sp+28h] [bp-Ch]
  glitch::video::CMaterial *v43; // [sp+2Ch] [bp-8h] BYREF

  v7 = (_DWORD *)a2;
  v36 = *(glitch::IReferenceCounted **)(a4 + 20);
  v8 = a4 + 20;
  if ( v36 )
    a2 = *(_DWORD *)(a4 + 20);
  v9 = &__GLOBAL_OFFSET_TABLE_;
  if ( v36 )
    v9 = *(Elf32_Dyn ***)(a2 + 4);
  v10 = *(unsigned __int16 *)(v8 + 14);
  if ( v36 )
    *(_DWORD *)(a2 + 4) = (char *)v9 + 1;
  v11 = *(_DWORD *)(a3 + 20);
  if ( v11 )
    a2 = *(_DWORD *)(a3 + 20);
  v35 = *(glitch::IReferenceCounted **)(a3 + 20);
  if ( v11 )
    ++*(_DWORD *)(a2 + 4);
  v12 = (char *)glitch::video::IBuffer::map((int)v36, 2);
  v13 = (const void *)glitch::video::IBuffer::map((int)v35, 0);
  v14 = *(_DWORD *)(a3 + 8) * v10;
  if ( v7[10] - v7[9] > 155 )
  {
    v15 = 0;
    do
    {
      memcpy(v12, v13, v14);
      ++v15;
      v12 += v14;
    }
    while ( v15 < -1762037865 * ((v7[10] - v7[9]) >> 2) );
  }
  v16 = *((_BYTE *)v36 + 19);
  if ( (v16 & 0x1Fu) <= 1 )
  {
    if ( (*((_BYTE *)v36 + 18) & 0x20) != 0 )
      (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v36 + 24))(v36);
    *((_BYTE *)v36 + 19) = 0;
  }
  else
  {
    *((_BYTE *)v36 + 19) = ((v16 & 0x1F) - 1) | v16 & 0xE0;
  }
  v17 = *((_BYTE *)v35 + 19);
  if ( (v17 & 0x1Fu) <= 1 )
  {
    if ( (*((_BYTE *)v35 + 18) & 0x20) != 0 )
      (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v35 + 24))(v35);
    *((_BYTE *)v35 + 19) = 0;
  }
  else
  {
    *((_BYTE *)v35 + 19) = ((v17 & 0x1F) - 1) | v17 & 0xE0;
  }
  v41 = nullptr;
  v42 = 0;
  glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(&v41, (int *)v8);
  v18 = *(_BYTE *)(a4 + 12);
  v39 = nullptr;
  v40 = 0;
  glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(
    &v39,
    (int *)(v8 + 16 * (unsigned __int8)(v18 + 1)));
  v38 = 0;
  v37 = nullptr;
  glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(&v37, (int *)(v8 + 16));
  v19 = *a6;
  v43 = *a6;
  if ( v43 )
    ++*(_DWORD *)v19;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v43);
  glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::SceneNodeWorldMat = (*(int (__fastcall **)(_DWORD *))(*v7 + 32))(v7);
  v20 = (float *)v7[9];
  v21 = (float *)v7[10];
  if ( v20 != v21 )
  {
    v22 = 0;
    do
    {
      glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition((int)v7, (int)v20);
      v23 = *(_DWORD *)(a3 + 8);
      if ( v23 )
      {
        v24 = v22;
        for ( i = 0; i != v23; ++i )
        {
          v26 = i;
          glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::convertVertexPosition(v20, v24++, v26, &v41);
        }
        v22 += i;
      }
      v20 += 39;
    }
    while ( v20 != v21 );
  }
  if ( v38 )
  {
    v27 = (_BYTE *)*v37;
    v28 = *(_BYTE *)(*v37 + 19);
    if ( (v28 & 0x1Fu) <= 1 )
    {
      if ( (v27[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v27 + 24))(*v37);
      v27[19] = 0;
    }
    else
    {
      v27[19] = ((v28 & 0x1F) - 1) | v28 & 0xE0;
    }
    v38 = 0;
    v37 = nullptr;
  }
  if ( v40 )
  {
    v29 = (_BYTE *)*v39;
    v30 = *(_BYTE *)(*v39 + 19);
    if ( (v30 & 0x1Fu) <= 1 )
    {
      if ( (v29[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v29 + 24))(*v39);
      v29[19] = 0;
    }
    else
    {
      v29[19] = ((v30 & 0x1F) - 1) | v30 & 0xE0;
    }
    v40 = 0;
    v39 = nullptr;
  }
  if ( v42 )
  {
    v31 = (_BYTE *)*v41;
    v32 = *(_BYTE *)(*v41 + 19);
    if ( (v32 & 0x1Fu) <= 1 )
    {
      if ( (v31[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v31 + 24))(*v41);
      v31[19] = 0;
    }
    else
    {
      v31[19] = ((v32 & 0x1F) - 1) | v32 & 0xE0;
    }
    v42 = 0;
    v41 = nullptr;
  }
  glitch::IReferenceCounted::drop(v35);
  return glitch::IReferenceCounted::drop(v36);
}


// ===== 640804 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(int) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(
        int a1)
{
  int v2; // r3
  glitch::video::CVertexStreams *v3; // r5
  int v4; // r6
  int v6; // r0
  int v7; // r12
  int v8; // r2
  int v10; // r2
  int v11; // r12
  int v12; // r1
  int v13; // r5
  int v14; // r1

  glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>,glitch::ps::PSNullShaderParametersBaker>(
    *(_DWORD *)(a1 + 156),
    a1 + *(_DWORD *)(*(_DWORD *)a1 - 12),
    *(_DWORD *)(*(_DWORD *)(a1 + 4) + 20),
    *(_DWORD *)(a1 + 16),
    a1 + 48,
    (glitch::video::CMaterial **)(a1 + 8));
  v2 = *(_DWORD *)(a1 + 4);
  v3 = *(glitch::video::CVertexStreams **)(v2 + 20);
  if ( v3 )
    v2 = *(_DWORD *)v3;
  v4 = *((_DWORD *)v3 + 2);
  if ( v3 )
    *(_DWORD *)v3 = v2 + 1;
  if ( (*(_DWORD *)v3)-- == 1 )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v3);
    LC_API_FREE_0(v3);
  }
  v6 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v7 = *(_DWORD *)(v6 + 40);
  v8 = *(_DWORD *)(v6 + 36);
  v10 = v4 * -1762037865 * ((v7 - v8) >> 2);
  *(_DWORD *)(*(_DWORD *)(a1 + 16) + 8) = v10;
  v11 = *(_DWORD *)(*(_DWORD *)(a1 + 4) + 32);
  v12 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v13 = *(_DWORD *)(v12 + 36);
  v14 = *(_DWORD *)(v12 + 40);
  *(_DWORD *)(a1 + 36) = v10;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 28) = v11 * -1762037865 * ((v14 - v13) >> 2);
  return a1 + 16;
}


// ===== 6408f4 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(int) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData((int)a1 + *(_DWORD *)(*a1 - 16));
}


// ===== 640904 glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>,glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*,glitch::video::CVertexStreams const*,glitch::video::CVertexStreams*,glitch::core::CMatrix4<float> const*,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
int __fastcall glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>,glitch::ps::PSNullShaderParametersBaker>(
        int a1,
        int a2,
        int a3,
        int a4,
        _DWORD *a5,
        glitch::video::CMaterial **a6)
{
  int v7; // r0
  Elf32_Dyn **v8; // r3
  int *v9; // r10
  int v10; // r4
  int v11; // r1
  char *v12; // r5
  const void *v13; // r8
  size_t v14; // r6
  int v15; // r4
  char v16; // r3
  glitch::IReferenceCounted *v17; // r1
  char v18; // r3
  char v19; // r2
  char v20; // r1
  int v21; // r0
  glitch::video::CMaterial *v22; // r3
  bool v23; // zf
  unsigned int v24; // lr
  unsigned int v25; // r12
  float *v26; // r5
  int v27; // r4
  int v28; // r3
  float *v29; // r6
  int v30; // r8
  float v31; // r9
  float v32; // r11
  float v33; // r0
  int v34; // r2
  int *v35; // r12
  int v36; // r3
  int v37; // r3
  int v38; // r0
  int v39; // r3
  int v40; // r3
  int v41; // r0
  int v42; // lr
  int v43; // r3
  _BYTE *v44; // r4
  char v45; // r3
  _BYTE *v46; // r4
  char v47; // r3
  _BYTE *v48; // r4
  char v49; // r3
  _BYTE *v50; // r4
  char v51; // r3
  int v53; // [sp+4h] [bp-70h]
  int v54; // [sp+14h] [bp-60h]
  int *Stream; // [sp+20h] [bp-54h]
  int v56; // [sp+24h] [bp-50h]
  int v58; // [sp+2Ch] [bp-48h]
  float *v59; // [sp+30h] [bp-44h]
  glitch::IReferenceCounted *v60; // [sp+48h] [bp-2Ch]
  glitch::IReferenceCounted *v61; // [sp+4Ch] [bp-28h]
  int *v62; // [sp+54h] [bp-20h] BYREF
  int v63; // [sp+58h] [bp-1Ch]
  int *v64; // [sp+5Ch] [bp-18h] BYREF
  int v65; // [sp+60h] [bp-14h]
  int *v66; // [sp+64h] [bp-10h] BYREF
  int v67; // [sp+68h] [bp-Ch]
  glitch::video::CMaterial *v68; // [sp+6Ch] [bp-8h] BYREF

  v7 = *(_DWORD *)(a4 + 20);
  v58 = a3;
  v8 = &__GLOBAL_OFFSET_TABLE_;
  v61 = (glitch::IReferenceCounted *)v7;
  if ( v7 )
    v8 = *(Elf32_Dyn ***)(v7 + 4);
  v9 = (int *)(a4 + 20);
  v10 = *(unsigned __int16 *)(a4 + 34);
  if ( v7 )
    *(_DWORD *)(v7 + 4) = (char *)v8 + 1;
  v11 = *(_DWORD *)(a3 + 20);
  if ( v11 )
    a3 = *(_DWORD *)(a3 + 20);
  v60 = *(glitch::IReferenceCounted **)(v58 + 20);
  if ( v11 )
    ++*(_DWORD *)(a3 + 4);
  v12 = (char *)glitch::video::IBuffer::map(v7, 2);
  v13 = (const void *)glitch::video::IBuffer::map((int)v60, 0);
  v14 = *(_DWORD *)(v58 + 8) * v10;
  if ( *(_DWORD *)(a2 + 40) - *(_DWORD *)(a2 + 36) > 155 )
  {
    v15 = 0;
    do
    {
      memcpy(v12, v13, v14);
      ++v15;
      v12 += v14;
    }
    while ( v15 < -1762037865 * ((*(_DWORD *)(a2 + 40) - *(_DWORD *)(a2 + 36)) >> 2) );
    v9 = (int *)(a4 + 20);
  }
  v16 = *((_BYTE *)v61 + 19);
  if ( (v16 & 0x1Fu) <= 1 )
  {
    if ( (*((_BYTE *)v61 + 18) & 0x20) != 0 )
      (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v61 + 24))(v61);
    *((_BYTE *)v61 + 19) = 0;
    v17 = v60;
    v18 = *((_BYTE *)v60 + 19);
    v19 = v18 & 0x1F;
    if ( (v18 & 0x1Fu) > 1 )
      goto LABEL_15;
  }
  else
  {
    *((_BYTE *)v61 + 19) = ((v16 & 0x1F) - 1) | v16 & 0xE0;
    v17 = v60;
    v18 = *((_BYTE *)v60 + 19);
    v19 = v18 & 0x1F;
    if ( (v18 & 0x1Fu) > 1 )
    {
LABEL_15:
      *((_BYTE *)v17 + 19) = (v19 - 1) | v18 & 0xE0;
      goto LABEL_16;
    }
  }
  if ( (*((_BYTE *)v60 + 18) & 0x20) != 0 )
    (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v60 + 24))(v60);
  *((_BYTE *)v60 + 19) = 0;
LABEL_16:
  v66 = nullptr;
  v67 = 0;
  glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(&v66, v9);
  v20 = *(_BYTE *)(a4 + 12);
  v64 = nullptr;
  v65 = 0;
  glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(
    &v64,
    &v9[4 * (unsigned __int8)(v20 + 1)]);
  v63 = 0;
  v62 = nullptr;
  glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(&v62, v9 + 4);
  Stream = (int *)glitch::video::CVertexStreams::getStream(a4, 18, (int)v9, *(_DWORD *)(a4 + 16));
  v21 = glitch::video::IBuffer::map(*Stream, 5);
  v22 = *a6;
  v23 = *a6 == nullptr;
  v56 = v21 + Stream[1];
  v68 = *a6;
  if ( !v23 )
    ++*(_DWORD *)v22;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v68);
  v24 = a5[6] + 0x80000000;
  v25 = a5[10] + 0x80000000;
  glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>::Normal = a5[2] + 0x80000000;
  dword_9F7BDC = v25;
  dword_9F7BD8 = v24;
  glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticleSystemPosition(a2, a5);
  v26 = *(float **)(a2 + 36);
  v59 = *(float **)(a2 + 40);
  if ( v26 != v59 )
  {
    v27 = 0;
    do
    {
      glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::getPerParticleTexCoords(a2, v26);
      memcpy(&glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>::Color, v26 + 9, 4u);
      glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition(a2, v26);
      v28 = *(_DWORD *)(v58 + 8);
      if ( v28 )
      {
        v29 = (float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Position;
        v54 = v27 + v28;
        v30 = 0;
        do
        {
          v31 = v26[24];
          v32 = (float)(*v26 + *(float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>::Pivot)
              + (float)(v31 * v29[12]);
          *(float *)&v53 = (float)(v26[1] + *(float *)&dword_9F7CC8) + (float)(v31 * v29[13]);
          v33 = v31 * v29[14];
          v29 += 3;
          *(float *)&dword_9F7CB4 = (float)(v26[2] + *(float *)&dword_9F7CCC) + v33;
          dword_9F7CAC = LODWORD(v32);
          dword_9F7CB0 = v53;
          v34 = v67;
          v35 = &glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::TexCoords[v30];
          v36 = *(unsigned __int16 *)&byte_9[(_DWORD)v66 + 5] * v27;
          *(float *)(v67 + v36) = v32;
          v37 = v34 + v36;
          *(_DWORD *)(v37 + 4) = dword_9F7CB0;
          *(_DWORD *)(v37 + 8) = dword_9F7CB4;
          v38 = v65;
          v39 = *(unsigned __int16 *)&byte_9[(_DWORD)v64 + 5] * v27;
          *(_DWORD *)(v65 + v39) = glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>::Normal;
          v40 = v38 + v39;
          *(_DWORD *)(v40 + 4) = dword_9F7BD8;
          *(_DWORD *)(v40 + 8) = dword_9F7BDC;
          v41 = v63;
          v42 = glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::TexCoords[v30];
          v30 += 2;
          v43 = *(unsigned __int16 *)&byte_9[(_DWORD)v62 + 5] * v27;
          *(_DWORD *)(v63 + v43) = v42;
          *(_DWORD *)(v41 + v43 + 4) = v35[1];
          memcpy(
            (void *)(v56 + *((unsigned __int16 *)Stream + 7) * v27++),
            &glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>::Color,
            4u);
        }
        while ( v27 != v54 );
      }
      v26 += 39;
    }
    while ( v26 != v59 );
  }
  if ( v56 )
  {
    v44 = (_BYTE *)*Stream;
    v45 = *(_BYTE *)(*Stream + 19);
    if ( (v45 & 0x1Fu) <= 1 )
    {
      if ( (v44[18] & 0x20) != 0 )
        (*(void (__fastcall **)(int))(*(_DWORD *)v44 + 24))(*Stream);
      v44[19] = 0;
    }
    else
    {
      v44[19] = ((v45 & 0x1F) - 1) | v45 & 0xE0;
    }
  }
  if ( v63 )
  {
    v46 = (_BYTE *)*v62;
    v47 = *(_BYTE *)(*v62 + 19);
    if ( (v47 & 0x1Fu) <= 1 )
    {
      if ( (v46[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v46 + 24))(*v62);
      v46[19] = 0;
    }
    else
    {
      v46[19] = ((v47 & 0x1F) - 1) | v47 & 0xE0;
    }
    v63 = 0;
    v62 = nullptr;
  }
  if ( v65 )
  {
    v48 = (_BYTE *)*v64;
    v49 = *(_BYTE *)(*v64 + 19);
    if ( (v49 & 0x1Fu) <= 1 )
    {
      if ( (v48[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v48 + 24))(*v64);
      v48[19] = 0;
    }
    else
    {
      v48[19] = ((v49 & 0x1F) - 1) | v49 & 0xE0;
    }
    v65 = 0;
    v64 = nullptr;
  }
  if ( v67 )
  {
    v50 = (_BYTE *)*v66;
    v51 = *(_BYTE *)(*v66 + 19);
    if ( (v51 & 0x1Fu) <= 1 )
    {
      if ( (v50[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v50 + 24))(*v66);
      v50[19] = 0;
    }
    else
    {
      v50[19] = ((v51 & 0x1F) - 1) | v51 & 0xE0;
    }
    v67 = 0;
    v66 = nullptr;
  }
  glitch::IReferenceCounted::drop(v60);
  return glitch::IReferenceCounted::drop(v61);
}


// ===== 640fb0 glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(int) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(
        int a1)
{
  int v2; // r3
  glitch::video::CVertexStreams *v3; // r5
  int v4; // r6
  int v6; // r0
  int v7; // r12
  int v8; // r2
  int v10; // r2
  int v11; // r12
  int v12; // r1
  int v13; // r5
  int v14; // r1

  glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>,glitch::ps::PSNullShaderParametersBaker>(
    *(_DWORD *)(a1 + 156),
    a1 + *(_DWORD *)(*(_DWORD *)a1 - 12),
    *(_DWORD *)(*(_DWORD *)(a1 + 4) + 20),
    *(_DWORD *)(a1 + 16),
    (_DWORD *)(a1 + 48),
    (glitch::video::CMaterial **)(a1 + 8));
  v2 = *(_DWORD *)(a1 + 4);
  v3 = *(glitch::video::CVertexStreams **)(v2 + 20);
  if ( v3 )
    v2 = *(_DWORD *)v3;
  v4 = *((_DWORD *)v3 + 2);
  if ( v3 )
    *(_DWORD *)v3 = v2 + 1;
  if ( (*(_DWORD *)v3)-- == 1 )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v3);
    LC_API_FREE_0(v3);
  }
  v6 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v7 = *(_DWORD *)(v6 + 40);
  v8 = *(_DWORD *)(v6 + 36);
  v10 = v4 * -1762037865 * ((v7 - v8) >> 2);
  *(_DWORD *)(*(_DWORD *)(a1 + 16) + 8) = v10;
  v11 = *(_DWORD *)(*(_DWORD *)(a1 + 4) + 32);
  v12 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v13 = *(_DWORD *)(v12 + 36);
  v14 = *(_DWORD *)(v12 + 40);
  *(_DWORD *)(a1 + 36) = v10;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 28) = v11 * -1762037865 * ((v14 - v13) >> 2);
  return a1 + 16;
}


// ===== 6410a0 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(int) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>::getRenderData((int)a1 + *(_DWORD *)(*a1 - 16));
}


// ===== 6410b0 glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotion(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotion(int a1, float *a2, float *a3)
{
  glitch::ps::PSRandom *v5; // r5
  int v6; // r1
  const void *v7; // r0
  float v8; // r7
  float v9; // r0
  float result; // r0
  float *v11; // r0
  float v12; // r11
  float v13; // r7
  float v14; // r8
  float v15; // r0
  float v16; // r9
  float v17; // r0
  float v18; // r10
  float v19; // r0
  float v20; // r8
  float v21; // r0
  float v22; // r10
  float v23; // r8
  float v24; // r7
  float *v25; // r0
  float *v26; // r7
  float v27; // r0
  float v28; // r9
  float v29; // r10
  float v30; // r0
  float v31; // r0
  float v32; // [sp+4h] [bp-88h]
  float v34; // [sp+10h] [bp-7Ch]
  float v35[5]; // [sp+20h] [bp-6Ch] BYREF
  float v36; // [sp+34h] [bp-58h]
  float v37; // [sp+38h] [bp-54h]
  float v38; // [sp+40h] [bp-4Ch]
  float v39; // [sp+44h] [bp-48h]
  float v40; // [sp+48h] [bp-44h]
  int v41; // [sp+5Ch] [bp-30h]
  char v42; // [sp+60h] [bp-2Ch]
  float v43[3]; // [sp+64h] [bp-28h] BYREF
  float v44[3]; // [sp+70h] [bp-1Ch] BYREF
  float v45; // [sp+7Ch] [bp-10h] BYREF
  float v46; // [sp+80h] [bp-Ch]
  float v47; // [sp+84h] [bp-8h]

  v5 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  v6 = (*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 32))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  if ( v6 )
  {
    v7 = (const void *)(*(int (__fastcall **)(int, int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 32))(
                         a1 + *(_DWORD *)(*(_DWORD *)a1 - 12),
                         v6);
    glitch::core::CMatrix4<float>::CMatrix4(v35, v7);
  }
  else
  {
    LC_API_MEMSET_0(v35, 0, 0x40u);
    v42 = 1;
    v41 = 1065353216;
    v35[0] = 1.0;
    v36 = 1.0;
    v40 = 1.0;
  }
  v32 = *(float *)(a1 + 56) + *(float *)(a1 + 56);
  v8 = *(float *)(a1 + 32) + *(float *)(a1 + 32);
  v9 = glitch::ps::PSRandom::Rand(v5);
  result = (float)(v8 * v9) + (float)(v8 * -0.5);
  v34 = result;
  if ( a2 != a3 )
  {
    v46 = 0.0;
    v45 = 0.0;
    v47 = 1.0;
    do
    {
      while ( 1 )
      {
        if ( v32 == 0.0 )
        {
          v16 = 0.0;
        }
        else
        {
          v31 = glitch::ps::PSRandom::Rand(v5);
          v16 = (float)(v32 * v31) + (float)(v32 * -0.5);
        }
        if ( *(float *)(a1 + 4) != 0.0
          || *(float *)(a1 + 8) != 0.0
          || *(float *)(a1 + 12) != 0.0
          || *(float *)(a1 + 16) != 0.0
          || *(float *)(a1 + 20) != 0.0
          || *(float *)(a1 + 24) != 0.0 )
        {
          break;
        }
        glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)v44, v5);
        v43[0] = v44[0] - *(float *)&glitch::ps::vHalf;
        v43[1] = v44[1] - *(float *)&dword_9F6F70;
        v43[2] = v44[2] - *(float *)&dword_9F6F74;
        v11 = glitch::core::vector3d<float>::normalize(v43);
        v12 = *v11;
        a2[3] = *v11;
        v13 = v11[1];
        a2[4] = v13;
        v14 = v11[2];
        a2[5] = v14;
        v15 = v16 + *(float *)(a1 + 52);
        a2[3] = v15 * v12;
        a2[4] = v15 * v13;
        result = v15 * v14;
        a2[5] = result;
        a2 += 39;
        if ( a3 == a2 )
          return result;
      }
      v17 = glitch::ps::PSRandom::Rand(v5);
      v18 = (float)((float)(v17 + v17) - 1.0) * *(float *)(a1 + 16);
      v19 = glitch::ps::PSRandom::Rand(v5);
      v20 = (float)((float)(v19 + v19) - 1.0) * *(float *)(a1 + 20);
      v21 = glitch::ps::PSRandom::Rand(v5);
      v22 = v18 + *(float *)(a1 + 4);
      v23 = v20 + *(float *)(a1 + 8);
      v24 = (float)((float)((float)(v21 + v21) - 1.0) * *(float *)(a1 + 24)) + *(float *)(a1 + 12);
      v45 = (float)((float)(v22 * v35[0]) + (float)(v23 * v35[4])) + (float)(v24 * v38);
      v46 = (float)((float)(v22 * v35[1]) + (float)(v23 * v36)) + (float)(v24 * v39);
      v47 = (float)((float)(v22 * v35[2]) + (float)(v23 * v37)) + (float)(v24 * v40);
      v25 = glitch::core::vector3d<float>::normalize(&v45);
      a2[6] = *v25;
      a2[7] = v25[1];
      a2[8] = v25[2];
      v26 = glitch::core::vector3d<float>::normalize(&v45);
      v27 = v16 + *(float *)(a1 + 52);
      v28 = v27 * v26[1];
      v29 = v27 * v26[2];
      v30 = v27 * *v26;
      a2[4] = v28;
      a2[3] = v30;
      a2[5] = v29;
      result = *(float *)(a1 + 28) + v34;
      a2[37] = result;
      a2 += 39;
    }
    while ( a3 != a2 );
  }
  return result;
}


// ===== 64159c `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotion(glitch::ps::GNPSParticle*,glitch::ps::GNPSParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotion(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::initPMotion((int)a1 + *(_DWORD *)(*a1 - 88), a2, a3);
}


// ===== 6415ac glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::PEmitterModel(void) =====
int *__fastcall glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::PEmitterModel(int *a1, int *a2)
{
  int v2; // r3
  void *v4; // r5
  int v5; // r2
  int v6; // r5
  int v7; // r5
  int v8; // r5
  int v9; // r5
  _DWORD v11[3]; // [sp+0h] [bp-5Ch] BYREF
  _DWORD v12[3]; // [sp+Ch] [bp-50h] BYREF
  unsigned int v13[2]; // [sp+18h] [bp-44h] BYREF
  _BYTE v14[8]; // [sp+20h] [bp-3Ch] BYREF
  unsigned int v15[2]; // [sp+28h] [bp-34h] BYREF
  _BYTE v16[8]; // [sp+30h] [bp-2Ch] BYREF
  unsigned int v17[2]; // [sp+38h] [bp-24h] BYREF
  _BYTE v18[8]; // [sp+40h] [bp-1Ch] BYREF
  unsigned int v19[2]; // [sp+48h] [bp-14h] BYREF
  _BYTE v20[12]; // [sp+50h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v11[2] = 1065353216;
  v11[0] = 1065353216;
  v11[1] = 1065353216;
  v12[2] = -1082130432;
  v12[0] = -1082130432;
  v12[1] = -1082130432;
  v4 = operator new(0x5Cu, 0);
  ((void (__fastcall *)(void *, _DWORD *, _DWORD *))glitch::ps::PDBox::PDBox)(v4, v12, v11);
  v5 = *a1;
  a1[2] = 0;
  a1[5] = 0x40000000;
  a1[3] = 0x40000000;
  a1[4] = 0x40000000;
  a1[1] = (int)v4;
  v6 = (int)a1 + *(_DWORD *)(v5 - 12);
  v19[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "EmitterType");
  v19[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v20,
    (_DWORD *)(v6 + 48),
    v19);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v17[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "RadiusLength");
  v17[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v18,
    (_DWORD *)(v7 + 48),
    v17);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v15[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "Width");
  v15[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v16,
    (_DWORD *)(v8 + 48),
    v15);
  v9 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v13[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v9, "Height");
  v13[1] = (unsigned int)(a1 + 5);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v14,
    (_DWORD *)(v9 + 48),
    v13);
  return a1;
}


// ===== 641724 glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::GNPSMotionModel(void) =====
int *__fastcall glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::GNPSMotionModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r1
  int v5; // r5
  int v6; // r5
  int v7; // r5
  int v8; // r5
  int v9; // r5
  int v10; // r5
  int v11; // r5
  int v12; // r5
  int v13; // r5
  int v14; // r5
  unsigned int v16[2]; // [sp+0h] [bp-A4h] BYREF
  _BYTE v17[8]; // [sp+8h] [bp-9Ch] BYREF
  unsigned int v18[2]; // [sp+10h] [bp-94h] BYREF
  _BYTE v19[8]; // [sp+18h] [bp-8Ch] BYREF
  unsigned int v20[2]; // [sp+20h] [bp-84h] BYREF
  _BYTE v21[8]; // [sp+28h] [bp-7Ch] BYREF
  unsigned int v22[2]; // [sp+30h] [bp-74h] BYREF
  _BYTE v23[8]; // [sp+38h] [bp-6Ch] BYREF
  unsigned int v24[2]; // [sp+40h] [bp-64h] BYREF
  _BYTE v25[8]; // [sp+48h] [bp-5Ch] BYREF
  unsigned int v26[2]; // [sp+50h] [bp-54h] BYREF
  _BYTE v27[8]; // [sp+58h] [bp-4Ch] BYREF
  unsigned int v28[2]; // [sp+60h] [bp-44h] BYREF
  _BYTE v29[8]; // [sp+68h] [bp-3Ch] BYREF
  unsigned int v30[2]; // [sp+70h] [bp-34h] BYREF
  _BYTE v31[8]; // [sp+78h] [bp-2Ch] BYREF
  unsigned int v32[2]; // [sp+80h] [bp-24h] BYREF
  _BYTE v33[8]; // [sp+88h] [bp-1Ch] BYREF
  unsigned int v34[2]; // [sp+90h] [bp-14h] BYREF
  _BYTE v35[12]; // [sp+98h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[10] = 0;
  a1[14] = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[9] = 0;
  a1[11] = 0;
  a1[13] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v34[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v5, "Direction");
  v34[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v35,
    (_DWORD *)(v5 + 48),
    v34);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v32[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "DirectionVariation");
  v32[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v33,
    (_DWORD *)(v6 + 48),
    v32);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v30[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "SpeedScale");
  v30[1] = (unsigned int)(a1 + 11);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v31,
    (_DWORD *)(v7 + 48),
    v30);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v28[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "MotionRandom");
  v28[1] = (unsigned int)(a1 + 7);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v29,
    (_DWORD *)(v8 + 48),
    v28);
  v9 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v26[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v9, "MotionRandomVariation");
  v26[1] = (unsigned int)(a1 + 8);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v27,
    (_DWORD *)(v9 + 48),
    v26);
  v10 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v24[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v10, "MotionRandomScale");
  v24[1] = (unsigned int)(a1 + 12);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v25,
    (_DWORD *)(v10 + 48),
    v24);
  v11 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v22[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v11, "SpeedScaleOverLife");
  v22[1] = (unsigned int)(a1 + 9);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v23,
    (_DWORD *)(v11 + 48),
    v22);
  v12 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v20[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v12, "MotionRandomScaleOverLife");
  v20[1] = (unsigned int)(a1 + 10);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v21,
    (_DWORD *)(v12 + 48),
    v20);
  v13 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v18[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v13, "Speed");
  v18[1] = (unsigned int)(a1 + 13);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v19,
    (_DWORD *)(v13 + 48),
    v18);
  v14 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v16[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v14, "SpeedVariation");
  v16[1] = (unsigned int)(a1 + 14);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v17,
    (_DWORD *)(v14 + 48),
    v16);
  return a1;
}


// ===== 6419dc glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::GNPSSpinModel(void) =====
int *__fastcall glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::GNPSSpinModel(int *a1, int *a2)
{
  int v2; // r3
  unsigned int v3; // r7
  int v5; // r2
  int v6; // r5
  int v7; // r5
  int v8; // r5
  int v9; // r5
  int v10; // r5
  int v11; // r5
  int v12; // r5
  int v13; // r5
  int v14; // r5
  int v15; // r5
  int v16; // r5
  int v17; // r5
  int v18; // r5
  unsigned int v20[2]; // [sp+0h] [bp-D4h] BYREF
  _BYTE v21[8]; // [sp+8h] [bp-CCh] BYREF
  unsigned int v22[2]; // [sp+10h] [bp-C4h] BYREF
  _BYTE v23[8]; // [sp+18h] [bp-BCh] BYREF
  unsigned int v24[2]; // [sp+20h] [bp-B4h] BYREF
  _BYTE v25[8]; // [sp+28h] [bp-ACh] BYREF
  unsigned int v26[2]; // [sp+30h] [bp-A4h] BYREF
  _BYTE v27[8]; // [sp+38h] [bp-9Ch] BYREF
  unsigned int v28[2]; // [sp+40h] [bp-94h] BYREF
  _BYTE v29[8]; // [sp+48h] [bp-8Ch] BYREF
  unsigned int v30[2]; // [sp+50h] [bp-84h] BYREF
  _BYTE v31[8]; // [sp+58h] [bp-7Ch] BYREF
  unsigned int v32[2]; // [sp+60h] [bp-74h] BYREF
  _BYTE v33[8]; // [sp+68h] [bp-6Ch] BYREF
  unsigned int v34[2]; // [sp+70h] [bp-64h] BYREF
  _BYTE v35[8]; // [sp+78h] [bp-5Ch] BYREF
  unsigned int v36[2]; // [sp+80h] [bp-54h] BYREF
  _BYTE v37[8]; // [sp+88h] [bp-4Ch] BYREF
  unsigned int v38[2]; // [sp+90h] [bp-44h] BYREF
  _BYTE v39[8]; // [sp+98h] [bp-3Ch] BYREF
  unsigned int v40[2]; // [sp+A0h] [bp-34h] BYREF
  _BYTE v41[8]; // [sp+A8h] [bp-2Ch] BYREF
  unsigned int v42[2]; // [sp+B0h] [bp-24h] BYREF
  _BYTE v43[8]; // [sp+B8h] [bp-1Ch] BYREF
  unsigned int v44[2]; // [sp+C0h] [bp-14h] BYREF
  _BYTE v45[12]; // [sp+C8h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  v3 = (unsigned int)(a1 + 13);
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  *((_BYTE *)a1 + 116) = 0;
  LC_API_MEMSET_0(a1 + 13, 0, 0x40u);
  v5 = *a1;
  a1[28] = 1065353216;
  *((_BYTE *)a1 + 116) = 1;
  a1[13] = 1065353216;
  a1[18] = 1065353216;
  a1[23] = 1065353216;
  a1[34] = 0;
  a1[12] = 0;
  a1[30] = 0;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = 0;
  v6 = (int)a1 + *(_DWORD *)(v5 - 12);
  v40[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "SpinTime");
  v40[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v41,
    (_DWORD *)(v6 + 48),
    v40);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v38[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "SpinVariation");
  v38[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v39,
    (_DWORD *)(v7 + 48),
    v38);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v36[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "SpinPhase");
  v36[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v37,
    (_DWORD *)(v8 + 48),
    v36);
  v9 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v34[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v9, "SpinPhaseVariation");
  v34[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v35,
    (_DWORD *)(v9 + 48),
    v34);
  v10 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v32[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v10, "SpinAxis");
  v32[1] = (unsigned int)(a1 + 5);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v33,
    (_DWORD *)(v10 + 48),
    v32);
  v11 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v30[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v11, "SpinAxisVariation");
  v30[1] = (unsigned int)(a1 + 8);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v31,
    (_DWORD *)(v11 + 48),
    v30);
  v12 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v44[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v12, "SpinAxisType");
  v44[1] = (unsigned int)(a1 + 35);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v45,
    (_DWORD *)(v12 + 48),
    v44);
  v13 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v42[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v13, "StartAngleType");
  v42[1] = (unsigned int)(a1 + 11);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v43,
    (_DWORD *)(v13 + 48),
    v42);
  v14 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v28[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v14, "SpinKeepAlignedToMotion");
  v28[1] = (unsigned int)(a1 + 12);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v29,
    (_DWORD *)(v14 + 48),
    v28);
  v15 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v26[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v15, "ViewRotMatrix");
  v26[1] = v3;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v27,
    (_DWORD *)(v15 + 48),
    v26);
  v16 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v24[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v16, "SpinPivotPoint");
  v24[1] = (unsigned int)(a1 + 30);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v25,
    (_DWORD *)(v16 + 48),
    v24);
  v17 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v22[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v17, "SpinScale");
  v22[1] = (unsigned int)(a1 + 34);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v23,
    (_DWORD *)(v17 + 48),
    v22);
  v18 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v20[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v18, "SpinScaleOverLife");
  v20[1] = (unsigned int)(a1 + 33);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v21,
    (_DWORD *)(v18 + 48),
    v20);
  return a1;
}


// ===== 641d7c glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::GNPSLifeModel(void) =====
int *__fastcall glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::GNPSLifeModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r5
  int v6; // r5
  unsigned int v8[2]; // [sp+0h] [bp-24h] BYREF
  _BYTE v9[8]; // [sp+8h] [bp-1Ch] BYREF
  unsigned int v10[2]; // [sp+10h] [bp-14h] BYREF
  _BYTE v11[12]; // [sp+18h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[2] = 0;
  a1[1] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v10[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v5, "Life");
  v10[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v11,
    (_DWORD *)(v5 + 48),
    v10);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v8[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "LifeVariation");
  v8[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v9,
    (_DWORD *)(v6 + 48),
    v8);
  return a1;
}


// ===== 641e2c glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::GNPSGenerationModel(void) =====
int *__fastcall glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::GNPSGenerationModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r5
  int v6; // r5
  int v7; // r5
  int v8; // r5
  unsigned int v10[2]; // [sp+0h] [bp-44h] BYREF
  _BYTE v11[8]; // [sp+8h] [bp-3Ch] BYREF
  unsigned int v12[2]; // [sp+10h] [bp-34h] BYREF
  _BYTE v13[8]; // [sp+18h] [bp-2Ch] BYREF
  unsigned int v14[2]; // [sp+20h] [bp-24h] BYREF
  _BYTE v15[8]; // [sp+28h] [bp-1Ch] BYREF
  unsigned int v16[2]; // [sp+30h] [bp-14h] BYREF
  _BYTE v17[12]; // [sp+38h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[1] = 1065353216;
  a1[3] = 0;
  a1[4] = 1;
  a1[6] = 0;
  a1[2] = 0;
  a1[5] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v16[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v5, "BirthRate");
  v16[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v17,
    (_DWORD *)(v5 + 48),
    v16);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v14[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "BirthRateVariation");
  v14[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v15,
    (_DWORD *)(v6 + 48),
    v14);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v12[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "MaxParticlesVariation");
  v12[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v13,
    (_DWORD *)(v7 + 48),
    v12);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v10[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "MaxParticles");
  v10[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v11,
    (_DWORD *)(v8 + 48),
    v10);
  return a1;
}


// ===== 641f70 glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::GNPSSizeModel(void) =====
int *__fastcall glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::GNPSSizeModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r2
  int v5; // r5
  int v6; // r5
  int v7; // r5
  int v8; // r5
  unsigned int v10[2]; // [sp+0h] [bp-44h] BYREF
  _BYTE v11[8]; // [sp+8h] [bp-3Ch] BYREF
  unsigned int v12[2]; // [sp+10h] [bp-34h] BYREF
  _BYTE v13[8]; // [sp+18h] [bp-2Ch] BYREF
  unsigned int v14[2]; // [sp+20h] [bp-24h] BYREF
  _BYTE v15[8]; // [sp+28h] [bp-1Ch] BYREF
  unsigned int v16[2]; // [sp+30h] [bp-14h] BYREF
  _BYTE v17[12]; // [sp+38h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[1] = 1065353216;
  a1[2] = 0;
  a1[4] = 0;
  a1[3] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v16[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v5, "TargetSize");
  v16[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v17,
    (_DWORD *)(v5 + 48),
    v16);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v14[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "SizeVariation");
  v14[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v15,
    (_DWORD *)(v6 + 48),
    v14);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v12[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "SizeScale");
  v12[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v13,
    (_DWORD *)(v7 + 48),
    v12);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v10[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "SizeScaleOverLife");
  v10[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v11,
    (_DWORD *)(v8 + 48),
    v10);
  return a1;
}


// ===== 6420a8 glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::GNPSColorModel(void) =====
int *__fastcall glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::GNPSColorModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r0
  int v5; // r5
  int v6; // r5
  int v7; // r5
  int v8; // r5
  int v9; // r5
  int v10; // r5
  int v11; // r5
  int v12; // r5
  int v13; // r5
  int v14; // r5
  int v15; // r5
  int v16; // r5
  int v17; // r5
  int v18; // r5
  int v19; // r5
  int v20; // r5
  int v21; // r5
  int v22; // r5
  unsigned int v24[2]; // [sp+0h] [bp-124h] BYREF
  _BYTE v25[8]; // [sp+8h] [bp-11Ch] BYREF
  unsigned int v26[2]; // [sp+10h] [bp-114h] BYREF
  _BYTE v27[8]; // [sp+18h] [bp-10Ch] BYREF
  unsigned int v28[2]; // [sp+20h] [bp-104h] BYREF
  _BYTE v29[8]; // [sp+28h] [bp-FCh] BYREF
  unsigned int v30[2]; // [sp+30h] [bp-F4h] BYREF
  _BYTE v31[8]; // [sp+38h] [bp-ECh] BYREF
  unsigned int v32[2]; // [sp+40h] [bp-E4h] BYREF
  _BYTE v33[8]; // [sp+48h] [bp-DCh] BYREF
  unsigned int v34[2]; // [sp+50h] [bp-D4h] BYREF
  _BYTE v35[8]; // [sp+58h] [bp-CCh] BYREF
  unsigned int v36[2]; // [sp+60h] [bp-C4h] BYREF
  _BYTE v37[8]; // [sp+68h] [bp-BCh] BYREF
  unsigned int v38[2]; // [sp+70h] [bp-B4h] BYREF
  _BYTE v39[8]; // [sp+78h] [bp-ACh] BYREF
  unsigned int v40[2]; // [sp+80h] [bp-A4h] BYREF
  _BYTE v41[8]; // [sp+88h] [bp-9Ch] BYREF
  unsigned int v42[2]; // [sp+90h] [bp-94h] BYREF
  _BYTE v43[8]; // [sp+98h] [bp-8Ch] BYREF
  unsigned int v44[2]; // [sp+A0h] [bp-84h] BYREF
  _BYTE v45[8]; // [sp+A8h] [bp-7Ch] BYREF
  unsigned int v46[2]; // [sp+B0h] [bp-74h] BYREF
  _BYTE v47[8]; // [sp+B8h] [bp-6Ch] BYREF
  unsigned int v48[2]; // [sp+C0h] [bp-64h] BYREF
  _BYTE v49[8]; // [sp+C8h] [bp-5Ch] BYREF
  unsigned int v50[2]; // [sp+D0h] [bp-54h] BYREF
  _BYTE v51[8]; // [sp+D8h] [bp-4Ch] BYREF
  unsigned int v52[2]; // [sp+E0h] [bp-44h] BYREF
  _BYTE v53[8]; // [sp+E8h] [bp-3Ch] BYREF
  unsigned int v54[2]; // [sp+F0h] [bp-34h] BYREF
  _BYTE v55[8]; // [sp+F8h] [bp-2Ch] BYREF
  unsigned int v56[2]; // [sp+100h] [bp-24h] BYREF
  _BYTE v57[8]; // [sp+108h] [bp-1Ch] BYREF
  unsigned int v58[2]; // [sp+110h] [bp-14h] BYREF
  _BYTE v59[12]; // [sp+118h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[8] = 1065353216;
  a1[7] = 0;
  a1[15] = 1;
  a1[19] = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[13] = 0;
  a1[14] = 1;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v58[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v5, "TextureTransformTrack");
  v58[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v59,
    (_DWORD *)(v5 + 48),
    v58);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v56[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "DiffuseColorTrack");
  v56[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v57,
    (_DWORD *)(v6 + 48),
    v56);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v54[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "AnimKeyMappingType");
  v54[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v55,
    (_DWORD *)(v7 + 48),
    v54);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v50[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "AnimOffset");
  v50[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v51,
    (_DWORD *)(v8 + 48),
    v50);
  v9 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v48[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v9, "AnimOffsetVariation");
  v48[1] = (unsigned int)(a1 + 5);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v49,
    (_DWORD *)(v9 + 48),
    v48);
  v10 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v46[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v10, "AnimLength");
  v46[1] = (unsigned int)(a1 + 6);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v47,
    (_DWORD *)(v10 + 48),
    v46);
  v11 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v44[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v11, "AnimLengthVariation");
  v44[1] = (unsigned int)(a1 + 7);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v45,
    (_DWORD *)(v11 + 48),
    v44);
  v12 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v42[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v12, "AnimScaleMultiplier");
  v42[1] = (unsigned int)(a1 + 8);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v43,
    (_DWORD *)(v12 + 48),
    v42);
  v13 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v40[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v13, "AnimScaleMultiplierVariation");
  v40[1] = (unsigned int)(a1 + 9);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v41,
    (_DWORD *)(v13 + 48),
    v40);
  v14 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v38[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v14, "TintStrength");
  v38[1] = (unsigned int)(a1 + 10);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v39,
    (_DWORD *)(v14 + 48),
    v38);
  v15 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v52[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v15, "TintColor");
  v52[1] = (unsigned int)(a1 + 11);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v53,
    (_DWORD *)(v15 + 48),
    v52);
  v16 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v36[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v16, "Visibility");
  v36[1] = (unsigned int)(a1 + 12);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v37,
    (_DWORD *)(v16 + 48),
    v36);
  v17 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v34[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v17, "RandomColor");
  v34[1] = (unsigned int)(a1 + 13);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v35,
    (_DWORD *)(v17 + 48),
    v34);
  v18 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v32[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v18, "TextureSubDiviseH");
  v32[1] = (unsigned int)(a1 + 14);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v33,
    (_DWORD *)(v18 + 48),
    v32);
  v19 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v30[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v19, "TextureSubDiviseV");
  v30[1] = (unsigned int)(a1 + 15);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v31,
    (_DWORD *)(v19 + 48),
    v30);
  v20 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v28[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v20, "TextureSubDiviseRandomPick");
  v28[1] = (unsigned int)(a1 + 16);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v29,
    (_DWORD *)(v20 + 48),
    v28);
  v21 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v26[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v21, "FlipU");
  v26[1] = (unsigned int)(a1 + 18);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v27,
    (_DWORD *)(v21 + 48),
    v26);
  v22 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v24[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v22, "FlipV");
  v24[1] = (unsigned int)(a1 + 19);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v25,
    (_DWORD *)(v22 + 48),
    v24);
  return a1;
}


// ===== 642558 glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::Mixin(void) =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::Mixin(
        int a1)
{
  int v2; // r6
  int v3; // r1
  int v4; // r9
  int v5; // r9
  int v6; // r9
  int v7; // r9
  int v8; // r9
  int v9; // r9
  int v10; // r9
  int v11; // r10
  _DWORD *v12; // r2
  _DWORD *v13; // r2
  unsigned int v15[2]; // [sp+0h] [bp-84h] BYREF
  _BYTE v16[8]; // [sp+8h] [bp-7Ch] BYREF
  unsigned int v17[2]; // [sp+10h] [bp-74h] BYREF
  _BYTE v18[8]; // [sp+18h] [bp-6Ch] BYREF
  unsigned int v19[2]; // [sp+20h] [bp-64h] BYREF
  _BYTE v20[8]; // [sp+28h] [bp-5Ch] BYREF
  unsigned int v21[2]; // [sp+30h] [bp-54h] BYREF
  _BYTE v22[8]; // [sp+38h] [bp-4Ch] BYREF
  unsigned int v23[2]; // [sp+40h] [bp-44h] BYREF
  _BYTE v24[8]; // [sp+48h] [bp-3Ch] BYREF
  unsigned int v25[2]; // [sp+50h] [bp-34h] BYREF
  _BYTE v26[8]; // [sp+58h] [bp-2Ch] BYREF
  unsigned int v27[2]; // [sp+60h] [bp-24h] BYREF
  _BYTE v28[8]; // [sp+68h] [bp-1Ch] BYREF
  unsigned int v29[2]; // [sp+70h] [bp-14h] BYREF
  _BYTE v30[12]; // [sp+78h] [bp-Ch] BYREF

  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::IParticleContext(a1 + 568);
  *(_DWORD *)a1 = off_97BB74;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97BC24;
  *(_DWORD *)(a1 + 8) = 123456789;
  *(_DWORD *)(a1 + 4) = 123456789;
  *(_DWORD *)(a1 + 12) = 0;
  glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::GNPSGenerationModel((int *)(a1 + 16), (int *)off_97B86C);
  glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::GNPSSizeModel((int *)(a1 + 44), (int *)off_97B874);
  glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::GNPSColorModel((int *)(a1 + 64), (int *)off_97B87C);
  glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::PEmitterModel((int *)(a1 + 144), (int *)off_97B884);
  glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::GNPSMotionModel((int *)(a1 + 168), (int *)off_97B88C);
  *(_DWORD *)(a1 + 228) = off_97C344;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97C3FC;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_BYTE *)(a1 + 244) = 0;
  glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::GNPSSpinModel((int *)(a1 + 248), (int *)off_97B89C);
  glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::GNPSLifeModel((int *)(a1 + 392), (int *)off_97B8A4);
  *(_DWORD *)(a1 + 404) = off_97C73C;
  v2 = a1 + 404;
  *(int *)((char *)&dword_A4 + a1 + 404) = (int)off_97C7F8;
  *(_WORD *)(a1 + 444) = 255;
  *(_WORD *)(a1 + 446) = 6;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_DWORD *)(a1 + 448) = 0;
  *(_BYTE *)(a1 + 516) = 0;
  LC_API_MEMSET_0((void *)(a1 + 452), 0, 0x40u);
  v3 = *(_DWORD *)(a1 + 404);
  *(_DWORD *)(a1 + 528) = -1082130432;
  *(_DWORD *)(a1 + 540) = 1065353216;
  *(_DWORD *)(a1 + 452) = 1065353216;
  *(_DWORD *)(a1 + 472) = 1065353216;
  *(_DWORD *)(a1 + 492) = 1065353216;
  *(_DWORD *)(a1 + 512) = 1065353216;
  *(_BYTE *)(a1 + 516) = 1;
  *(_DWORD *)(a1 + 520) = -1082130432;
  *(_DWORD *)(a1 + 524) = -1082130432;
  *(_DWORD *)(a1 + 532) = 1065353216;
  *(_DWORD *)(a1 + 536) = 1065353216;
  *(_BYTE *)(a1 + 544) = 1;
  *(_DWORD *)(a1 + 548) = 0;
  *(_DWORD *)(a1 + 552) = 0;
  *(_DWORD *)(a1 + 560) = 0;
  *(_DWORD *)(a1 + 564) = 0;
  v4 = a1 + 404 + *(_DWORD *)(v3 - 12);
  v29[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v4, "AllocateBuffer");
  v29[1] = a1 + 544;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v30,
    (_DWORD *)(v4 + 48),
    v29);
  v5 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v27[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v5, "RenderMesh");
  v27[1] = a1 + 408;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v28,
    (_DWORD *)(v5 + 48),
    v27);
  v6 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v25[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "OutIndexBuffer");
  v25[1] = a1 + 564;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v26,
    (_DWORD *)(v6 + 48),
    v25);
  v7 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v23[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "RenderMaterial");
  v23[1] = a1 + 412;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v24,
    (_DWORD *)(v7 + 48),
    v23);
  v8 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v21[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "RenderBuffer");
  v21[1] = a1 + 548;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v22,
    (_DWORD *)(v8 + 48),
    v21);
  v9 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v19[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v9, "RBufferSizeNeeded");
  v19[1] = a1 + 556;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v20,
    (_DWORD *)(v9 + 48),
    v19);
  v10 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v15[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v10, "ViewMatrix");
  v15[1] = a1 + 452;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v16,
    (_DWORD *)(v10 + 48),
    v15);
  v11 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v17[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v11, "BBox");
  v17[1] = a1 + 520;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v18,
    (_DWORD *)(v11 + 48),
    v17);
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12) + 4) = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12) + 5) = 0;
  v12 = (_DWORD *)(a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12));
  v12[2] = 1056964608;
  v12[4] = 0;
  v12[3] = 0;
  v13 = (_DWORD *)(a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12));
  v13[6] = 1056964608;
  v13[7] = 0;
  v13[5] = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12) + 32) = 0;
  *(_DWORD *)(a1 + 560) = operator new(1u, 0);
  *(_DWORD *)a1 = off_97B8EC;
  *(_DWORD *)(a1 + 568) = off_97BAD4;
  *(_DWORD *)(a1 + 16) = off_97B910;
  *(_DWORD *)(a1 + 44) = off_97B92C;
  *(_DWORD *)(a1 + 64) = off_97B94C;
  *(_DWORD *)(a1 + 144) = off_97B970;
  *(_DWORD *)(a1 + 168) = off_97B98C;
  *(_DWORD *)(a1 + 228) = off_97B9AC;
  *(_DWORD *)(a1 + 248) = off_97B9D8;
  *(_DWORD *)(a1 + 392) = off_97B9F8;
  *(_DWORD *)(a1 + 404) = off_97BA18;
  return a1;
}


// ===== 6429a8 glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::Mixin(void) =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::Mixin(
        int a1)
{
  int v2; // r6
  int v3; // r1
  int v4; // r9
  int v5; // r9
  int v6; // r9
  int v7; // r9
  int v8; // r9
  int v9; // r9
  int v10; // r9
  int v11; // r10
  _DWORD *v12; // r2
  _DWORD *v13; // r2
  _DWORD v15[2]; // [sp+0h] [bp-84h] BYREF
  _BYTE v16[8]; // [sp+8h] [bp-7Ch] BYREF
  _DWORD v17[2]; // [sp+10h] [bp-74h] BYREF
  _BYTE v18[8]; // [sp+18h] [bp-6Ch] BYREF
  _DWORD v19[2]; // [sp+20h] [bp-64h] BYREF
  _BYTE v20[8]; // [sp+28h] [bp-5Ch] BYREF
  _DWORD v21[2]; // [sp+30h] [bp-54h] BYREF
  _BYTE v22[8]; // [sp+38h] [bp-4Ch] BYREF
  _DWORD v23[2]; // [sp+40h] [bp-44h] BYREF
  _BYTE v24[8]; // [sp+48h] [bp-3Ch] BYREF
  _DWORD v25[2]; // [sp+50h] [bp-34h] BYREF
  _BYTE v26[8]; // [sp+58h] [bp-2Ch] BYREF
  _DWORD v27[2]; // [sp+60h] [bp-24h] BYREF
  _BYTE v28[8]; // [sp+68h] [bp-1Ch] BYREF
  _DWORD v29[2]; // [sp+70h] [bp-14h] BYREF
  _BYTE v30[12]; // [sp+78h] [bp-Ch] BYREF

  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::IParticleContext(a1 + 568);
  *(_DWORD *)a1 = off_97D9BC;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97DA6C;
  *(_DWORD *)(a1 + 8) = 123456789;
  *(_DWORD *)(a1 + 4) = 123456789;
  *(_DWORD *)(a1 + 12) = 0;
  glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>::GNPSGenerationModel(a1 + 16, off_97D6B4);
  glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>::GNPSSizeModel(a1 + 44, off_97D6BC);
  glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>::GNPSColorModel(a1 + 64, off_97D6C4);
  glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>::PEmitterModel(a1 + 144, off_97D6CC);
  glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>::GNPSMotionModel(a1 + 168, off_97D6D4);
  *(_DWORD *)(a1 + 228) = off_97E18C;
  *(int *)((char *)&elf_hash_bucket[87] + a1) = (int)off_97E244;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_BYTE *)(a1 + 244) = 0;
  glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>::GNPSSpinModel(a1 + 248, off_97D6E4);
  glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>::GNPSLifeModel(a1 + 392, off_97D6EC);
  *(_DWORD *)(a1 + 404) = off_97E584;
  v2 = a1 + 404;
  *(int *)((char *)&dword_A4 + a1 + 404) = (int)off_97E640;
  *(_WORD *)(a1 + 444) = 255;
  *(_WORD *)(a1 + 446) = 6;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 420) = 0;
  *(_DWORD *)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 428) = 0;
  *(_DWORD *)(a1 + 432) = 0;
  *(_DWORD *)(a1 + 436) = 0;
  *(_DWORD *)(a1 + 440) = 0;
  *(_DWORD *)(a1 + 448) = 0;
  *(_BYTE *)(a1 + 516) = 0;
  LC_API_MEMSET_0((void *)(a1 + 452), 0, 0x40u);
  v3 = *(_DWORD *)(a1 + 404);
  *(_DWORD *)(a1 + 528) = -1082130432;
  *(_DWORD *)(a1 + 540) = 1065353216;
  *(_DWORD *)(a1 + 452) = 1065353216;
  *(_DWORD *)(a1 + 472) = 1065353216;
  *(_DWORD *)(a1 + 492) = 1065353216;
  *(_DWORD *)(a1 + 512) = 1065353216;
  *(_BYTE *)(a1 + 516) = 1;
  *(_DWORD *)(a1 + 520) = -1082130432;
  *(_DWORD *)(a1 + 524) = -1082130432;
  *(_DWORD *)(a1 + 532) = 1065353216;
  *(_DWORD *)(a1 + 536) = 1065353216;
  *(_BYTE *)(a1 + 544) = 1;
  *(_DWORD *)(a1 + 548) = 0;
  *(_DWORD *)(a1 + 552) = 0;
  *(_DWORD *)(a1 + 560) = 0;
  *(_DWORD *)(a1 + 564) = 0;
  v4 = a1 + 404 + *(_DWORD *)(v3 - 12);
  v29[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v4, "AllocateBuffer");
  v29[1] = a1 + 544;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v30,
    v4 + 48,
    v29);
  v5 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v27[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v5, "RenderMesh");
  v27[1] = a1 + 408;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v28,
    v5 + 48,
    v27);
  v6 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v25[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v6, "OutIndexBuffer");
  v25[1] = a1 + 564;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v26,
    v6 + 48,
    v25);
  v7 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v23[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v7, "RenderMaterial");
  v23[1] = a1 + 412;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v24,
    v7 + 48,
    v23);
  v8 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v21[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v8, "RenderBuffer");
  v21[1] = a1 + 548;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v22,
    v8 + 48,
    v21);
  v9 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v19[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v9, "RBufferSizeNeeded");
  v19[1] = a1 + 556;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v20,
    v9 + 48,
    v19);
  v10 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v15[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v10, "ViewMatrix");
  v15[1] = a1 + 452;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v16,
    v10 + 48,
    v15);
  v11 = a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12);
  v17[0] = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v11, "BBox");
  v17[1] = a1 + 520;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v18,
    v11 + 48,
    v17);
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12) + 4) = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12) + 5) = 0;
  v12 = (_DWORD *)(a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12));
  v12[2] = 1056964608;
  v12[4] = 0;
  v12[3] = 0;
  v13 = (_DWORD *)(a1 + 404 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12));
  v13[6] = 1056964608;
  v13[7] = 0;
  v13[5] = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 404) - 12) + 32) = 0;
  *(_DWORD *)(a1 + 560) = operator new(1, 0);
  *(_DWORD *)a1 = off_97D734;
  *(_DWORD *)(a1 + 568) = off_97D91C;
  *(_DWORD *)(a1 + 16) = off_97D758;
  *(_DWORD *)(a1 + 44) = off_97D774;
  *(_DWORD *)(a1 + 64) = off_97D794;
  *(_DWORD *)(a1 + 144) = off_97D7B8;
  *(_DWORD *)(a1 + 168) = off_97D7D4;
  *(_DWORD *)(a1 + 228) = off_97D7F4;
  *(_DWORD *)(a1 + 248) = off_97D820;
  *(_DWORD *)(a1 + 392) = off_97D840;
  *(_DWORD *)(a1 + 404) = off_97D860;
  return a1;
}


// ===== 642df8 glitch::ps::PSManager::createGNPSSystem(bool) =====
void *__fastcall glitch::ps::PSManager::createGNPSSystem(glitch::ps::PSManager *this, int a2)
{
  void *v2; // r4

  if ( a2 )
  {
    v2 = operator new(0x294u, 0);
    LC_API_MEMSET_0(v2, 0, 0x238u);
    glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::Mixin((int)v2);
  }
  else
  {
    v2 = operator new(0x294u, 0);
    LC_API_MEMSET_0(v2, 0, 0x238u);
    glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle,glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>,glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>,glitch::ps::PForcesModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>,glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>>>(void)::Mixin::Mixin((int)v2);
  }
  return v2;
}


// ===== 642e58 glitch::collada::CGlitchNewParticleSystemSceneNode::initParticleSystem(glitch::video::IVideoDriver *,bool) =====
unsigned int __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::initParticleSystem(
        glitch::IReferenceCounted **this,
        glitch::video::IVideoDriver *a2,
        int a3)
{
  glitch::ps::PSManager *Instance; // r0
  glitch::IReferenceCounted *GNPSSystem; // r0
  int v8; // r2
  int v9; // r3
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // r0
  int v13; // lr
  _DWORD *v14; // r3
  _DWORD *v15; // r0
  int v16; // lr
  int v17; // r3
  _DWORD *v18; // r0
  int v19; // lr
  _DWORD *v20; // r3
  _DWORD *v21; // r0
  int v22; // lr
  _DWORD *v23; // r3
  _DWORD *v24; // r0
  int v25; // lr
  int v26; // r2
  int v27; // r3
  glitch::IReferenceCounted *v28; // r0
  int v29; // r2
  int v30; // r0
  unsigned int v31; // r1
  int v32; // r8
  int v33; // r2
  _WORD *v34; // r6
  int v35; // r3
  unsigned int v36; // r8
  int v37; // r0
  int v38; // lr
  int v39; // r12
  int v40; // r1
  __int16 v41; // r2
  _WORD *v42; // r3
  char v43; // r3
  _BYTE *v44; // r6
  char v45; // r3
  _DWORD *v46; // r12
  _DWORD *v47; // r3
  glitch::IReferenceCounted **v48; // r3
  glitch::IReferenceCounted *v49; // r0
  int v50; // r5
  unsigned int v51; // r0
  _DWORD *v52; // r12
  _DWORD *v53; // r1
  _DWORD *v54; // r2
  unsigned int v55; // r3
  bool v56; // cc
  _DWORD *v57; // r3
  _DWORD *v58; // r3
  glitch::IReferenceCounted *v59; // r2
  _DWORD *v60; // r3
  int v61; // r5
  unsigned int v62; // r0
  _DWORD *v63; // r12
  _DWORD *v64; // r1
  _DWORD *v65; // r2
  unsigned int v66; // r3
  bool v67; // cc
  _DWORD *v68; // r3
  _DWORD *v69; // r3
  glitch::IReferenceCounted *v70; // r2
  _DWORD *v71; // r3
  int v72; // r6
  unsigned int result; // r0
  _DWORD *v74; // r12
  _DWORD *v75; // r1
  _DWORD *v76; // r2
  unsigned int v77; // r3
  bool v78; // cc
  _DWORD *v79; // r3
  _DWORD *v80; // r3
  glitch::IReferenceCounted *v81; // r1
  int v82; // r3
  glitch::IReferenceCounted *v83; // r5
  int v84; // r6
  unsigned int v85; // r0
  _DWORD *v86; // r1
  _DWORD *v87; // r2
  unsigned int v88; // r3
  bool v89; // cc
  _DWORD *v90; // r3
  void *v91; // r0
  void *v92; // r10
  glitch::IReferenceCounted *v93; // r3
  bool v94; // zf
  __int16 v95; // r1
  glitch::IReferenceCounted *v96; // r3
  int v97; // r10
  size_t v98; // r6
  glitch::video::IBuffer *v99; // r8
  void *v100; // r0
  _DWORD *v101; // r3
  _DWORD *v102; // r12
  int v103; // r0
  _DWORD *v104; // r12
  glitch::IReferenceCounted *v105; // r3
  glitch::IReferenceCounted *v106; // r0
  glitch::IReferenceCounted *v107; // [sp+14h] [bp-C0h]
  unsigned int v108; // [sp+1Ch] [bp-B8h]
  glitch::IReferenceCounted *v109; // [sp+2Ch] [bp-A8h] BYREF
  int v110; // [sp+30h] [bp-A4h]
  int v111; // [sp+34h] [bp-A0h]
  int v112; // [sp+38h] [bp-9Ch]
  int v113; // [sp+3Ch] [bp-98h]
  __int16 v114; // [sp+40h] [bp-94h]
  __int16 v115; // [sp+42h] [bp-92h]
  _DWORD v116[3]; // [sp+44h] [bp-90h] BYREF
  _DWORD v117[3]; // [sp+50h] [bp-84h] BYREF
  _DWORD v118[3]; // [sp+5Ch] [bp-78h] BYREF
  _DWORD v119[3]; // [sp+68h] [bp-6Ch] BYREF
  _DWORD v120[3]; // [sp+74h] [bp-60h] BYREF
  unsigned int v121[2]; // [sp+80h] [bp-54h] BYREF
  unsigned int v122[2]; // [sp+88h] [bp-4Ch] BYREF
  unsigned int v123[2]; // [sp+90h] [bp-44h] BYREF
  unsigned int v124[2]; // [sp+98h] [bp-3Ch] BYREF
  _DWORD *v125; // [sp+A0h] [bp-34h] BYREF
  _DWORD *v126; // [sp+A4h] [bp-30h] BYREF
  _DWORD *v127; // [sp+A8h] [bp-2Ch] BYREF
  _DWORD *v128; // [sp+ACh] [bp-28h] BYREF
  _DWORD *v129; // [sp+B0h] [bp-24h] BYREF
  _DWORD *v130; // [sp+B4h] [bp-20h] BYREF
  _DWORD *v131; // [sp+B8h] [bp-1Ch] BYREF
  _DWORD *v132; // [sp+BCh] [bp-18h] BYREF
  glitch::IReferenceCounted *v133; // [sp+C0h] [bp-14h] BYREF
  glitch::IReferenceCounted *v134; // [sp+C4h] [bp-10h] BYREF
  glitch::IReferenceCounted *v135; // [sp+C8h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v136; // [sp+CCh] [bp-8h] BYREF

  Instance = (glitch::ps::PSManager *)glitch::ps::PSManager::getInstance((glitch::ps::PSManager *)this);
  GNPSSystem = (glitch::IReferenceCounted *)glitch::ps::PSManager::createGNPSSystem(Instance, a3);
  *(this + 94) = GNPSSystem;
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<int>(
    (int)GNPSSystem + *(_DWORD *)(*(_DWORD *)GNPSSystem - 12),
    "EmitterType",
    *((_DWORD *)*(this + 95) + 2));
  v8 = (int)*(this + 95);
  v9 = *(_DWORD *)(v8 + 8);
  switch ( v9 )
  {
    case 1:
      glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
        (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "RadiusLength",
        **(_DWORD **)(v8 + 12));
      v8 = (int)*(this + 95);
      break;
    case 2:
      glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
        (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "RadiusLength",
        **(_DWORD **)(v8 + 12));
      glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
        (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "Height",
        *(_DWORD *)(*((_DWORD *)*(this + 95) + 3) + 4));
      v8 = (int)*(this + 95);
      break;
    case 0:
      glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
        (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "RadiusLength",
        **(_DWORD **)(v8 + 12));
      glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
        (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "Width",
        *(_DWORD *)(*((_DWORD *)*(this + 95) + 3) + 4));
      glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
        (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "Height",
        *(_DWORD *)(*((_DWORD *)*(this + 95) + 3) + 8));
      v8 = (int)*(this + 95);
      break;
  }
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "BirthRate",
    *(_DWORD *)(v8 + 16));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "BirthRateVariation",
    *((_DWORD *)*(this + 95) + 5));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<int>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "MaxParticles",
    *((_DWORD *)*(this + 95) + 6));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<int>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "MaxParticlesVariation",
    *((_DWORD *)*(this + 95) + 7));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "Life",
    *((_DWORD *)*(this + 95) + 8));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "LifeVariation",
    *((_DWORD *)*(this + 95) + 9));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "TargetSize",
    *((_DWORD *)*(this + 95) + 12));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SizeVariation",
    *((_DWORD *)*(this + 95) + 13));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SizeScaleOverLife",
    *((_BYTE *)*(this + 95) + 60));
  v10 = (int)*(this + 95);
  if ( !*(_BYTE *)(v10 + 60) )
  {
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
      (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
      "SizeScale",
      *(_DWORD *)(v10 + 56));
    v10 = (int)*(this + 95);
  }
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "Speed",
    *(_DWORD *)(v10 + 64));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpeedVariation",
    *((_DWORD *)*(this + 95) + 17));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpeedScaleOverLife",
    *((_BYTE *)*(this + 95) + 76));
  v11 = (int)*(this + 95);
  if ( !*(_BYTE *)(v11 + 76) )
  {
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
      (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
      "SpeedScale",
      *(_DWORD *)(v11 + 72));
    v11 = (int)*(this + 95);
  }
  v12 = *(this + 94);
  v13 = *(_DWORD *)(*v12 - 12);
  v120[0] = *(_DWORD *)(v11 + 80);
  v120[1] = *(_DWORD *)(v11 + 84);
  v120[2] = *(_DWORD *)(v11 + 88);
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float>>(
    (int)v12 + v13,
    "Direction",
    v120);
  v14 = *(this + 95);
  v15 = *(this + 94);
  v16 = *(_DWORD *)(*v15 - 12);
  v119[0] = v14[23];
  v119[1] = v14[24];
  v119[2] = v14[25];
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float>>(
    (int)v15 + v16,
    "DirectionVariation",
    v119);
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "StartAngleType",
    *((_BYTE *)*(this + 95) + 104));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinPhase",
    *((_DWORD *)*(this + 95) + 27));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinPhaseVariation",
    *((_DWORD *)*(this + 95) + 28));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinKeepAlignedToMotion",
    *((_BYTE *)*(this + 95) + 105));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinTime",
    *((_DWORD *)*(this + 95) + 29));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinVariation",
    *((_DWORD *)*(this + 95) + 30));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinScaleOverLife",
    *((_BYTE *)*(this + 95) + 128));
  v17 = (int)*(this + 95);
  if ( !*(_BYTE *)(v17 + 128) )
  {
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
      (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
      "SpinScale",
      *(_DWORD *)(v17 + 124));
    v17 = (int)*(this + 95);
  }
  v18 = *(this + 94);
  v19 = *(_DWORD *)(*v18 - 12);
  v118[0] = *(_DWORD *)(v17 + 164);
  v118[1] = *(_DWORD *)(v17 + 168);
  v118[2] = *(_DWORD *)(v17 + 172);
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float>>(
    (int)v18 + v19,
    "SpinPivotPoint",
    v118);
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinAxisType",
    *((_BYTE *)*(this + 95) + 132));
  v20 = *(this + 95);
  v21 = *(this + 94);
  v22 = *(_DWORD *)(*v21 - 12);
  v117[0] = v20[34];
  v117[1] = v20[35];
  v117[2] = v20[36];
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float>>(
    (int)v21 + v22,
    "SpinAxis",
    v117);
  v23 = *(this + 95);
  v24 = *(this + 94);
  v25 = *(_DWORD *)(*v24 - 12);
  v116[0] = v23[37];
  v116[1] = v23[38];
  v116[2] = v23[39];
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::core::vector3d<float>>(
    (int)v24 + v25,
    "SpinAxisVariation",
    v116);
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "MotionRandom",
    *((_DWORD *)*(this + 95) + 45));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "MotionRandomVariation",
    *((_DWORD *)*(this + 95) + 46));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "MotionRandomScaleOverLife",
    *((_BYTE *)*(this + 95) + 192));
  v26 = (int)*(this + 95);
  if ( !*(_BYTE *)(v26 + 192) )
  {
    glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<float>(
      (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
      "MotionRandomScale",
      *(_DWORD *)(v26 + 188));
    v26 = (int)*(this + 95);
  }
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "TextureSubDiviseH",
    *(_BYTE *)(v26 + 196));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "TextureSubDiviseV",
    *((_BYTE *)*(this + 95) + 196));
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<unsigned char>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "TextureSubDiviseRandomPick",
    *((_BYTE *)*(this + 95) + 198));
  *((_BYTE *)this + 388) = a3;
  *(this + 98) = a2;
  if ( a3 )
  {
    v27 = glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer;
    if ( glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer )
      goto LABEL_15;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, int, int, int, void *, _DWORD))(*(_DWORD *)a2 + 120))(
      &v136,
      a2,
      1,
      4,
      12,
      &glitch::collada::CGlitchNewParticleSystemSceneNode::initParticleSystem(glitch::video::IVideoDriver *,bool)::indices,
      0);
    v109 = v136;
    if ( v136 )
      ++*((_DWORD *)v136 + 1);
    v113 = 4;
    v114 = 1;
    v115 = 6;
    v110 = 0;
    v111 = 6;
    v112 = 0;
    v92 = operator new(0x38u, 0);
    *((_DWORD *)v92 + 4) = 0;
    *((_DWORD *)v92 + 1) = 0;
    *((_DWORD *)v92 + 2) = 0;
    *(_DWORD *)v92 = off_988098;
    *((_DWORD *)v92 + 3) = 0;
    glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)v92 + 5, 0x60003u);
    v93 = v109;
    v94 = v109 == nullptr;
    *((_DWORD *)v92 + 6) = v109;
    if ( !v94 )
      ++*((_DWORD *)v93 + 1);
    *((_DWORD *)v92 + 7) = v110;
    *((_DWORD *)v92 + 8) = v111;
    *((_DWORD *)v92 + 9) = v112;
    *((_DWORD *)v92 + 10) = v113;
    *((_WORD *)v92 + 22) = v114;
    v95 = v115;
    *((_DWORD *)v92 + 12) = 0;
    *((_BYTE *)v92 + 52) = 0;
    *((_WORD *)v92 + 23) = v95;
    v133 = (glitch::IReferenceCounted *)v92;
    ++*((_DWORD *)v92 + 1);
    v96 = v133;
    v133 = (glitch::IReferenceCounted *)glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer;
    glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer = (int)v96;
    boost::intrusive_ptr<glitch::scene::CMeshBuffer>::~intrusive_ptr(&v133);
    boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v109);
    boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v136);
    v97 = *(_DWORD *)(glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer + 20);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)a2 + 120))(
      &v135,
      a2,
      0,
      4,
      0,
      0,
      1);
    v98 = 4 * glitch::video::CVertexStreams::setupStreams(v97, &v135, -1);
    v99 = v135;
    v100 = operator new[](v98, 0);
    glitch::video::IBuffer::reset(v99, v98, v100, 1);
    v101 = (_DWORD *)(glitch::video::IBuffer::map(*(_DWORD *)(v97 + 36), 4) + *(_DWORD *)(v97 + 40));
    *v101 = 0;
    v101[1] = 0;
    v102 = (_DWORD *)((char *)v101 + *(unsigned __int16 *)(v97 + 50));
    *v102 = 0;
    v102[1] = 1065353216;
    v103 = *(unsigned __int16 *)(v97 + 50);
    *(_DWORD *)((char *)v101 + 2 * v103) = 1065353216;
    *(_DWORD *)((char *)v101 + 2 * v103 + 4) = 1065353216;
    v104 = (_DWORD *)((char *)v101 + 3 * *(unsigned __int16 *)(v97 + 50));
    *v104 = 1065353216;
    v104[1] = 0;
    *(_DWORD *)(v97 + 8) = 4;
    glitch::video::IBuffer::unmap(*(_BYTE **)(v97 + 36));
    boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v135);
    v27 = glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer;
    if ( glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer )
LABEL_15:
      ++*(_DWORD *)(v27 + 4);
    v28 = *(this + 80);
    *(this + 80) = (glitch::IReferenceCounted *)v27;
    if ( v28 )
      glitch::IReferenceCounted::drop(v28);
    v29 = *((_DWORD *)*(this + 95) + 6);
    if ( v29 > glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles )
    {
      if ( !glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer )
      {
        (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, _DWORD, _DWORD, int))(*(_DWORD *)*(this + 98) + 120))(
          &v134,
          *(this + 98),
          1,
          4,
          0,
          0,
          1);
        v105 = v134;
        if ( v134 )
          ++*((_DWORD *)v134 + 1);
        v106 = (glitch::IReferenceCounted *)glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer;
        glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer = (int)v105;
        if ( v106 )
          glitch::IReferenceCounted::drop(v106);
        boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v134);
        v29 = *((_DWORD *)*(this + 95) + 6);
      }
      glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles = v29;
      v108 = (unsigned int)*(this + 80);
      v30 = glitch::video::IBuffer::map(*(_DWORD *)(v108 + 24), 1);
      v31 = v108;
      v32 = glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles;
      v33 = glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer;
      v34 = (_WORD *)(v30 + *(_DWORD *)(v108 + 28));
      v107 = (glitch::IReferenceCounted *)glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer;
      if ( glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer )
      {
        v31 = glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer;
        v33 = *(_DWORD *)(glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer + 4);
      }
      v35 = *((_DWORD *)*(this + 80) + 8);
      if ( glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer )
        *(_DWORD *)(v31 + 4) = v33 + 1;
      v36 = v32 * 2 * v35;
      if ( v36 > *((_DWORD *)v107 + 3) )
      {
        v91 = (void *)glitch::ps::PS_NEW((glitch::ps *)v36, v31);
        glitch::video::IBuffer::reset(v107, v36, v91, 1);
      }
      v37 = glitch::video::IBuffer::map((int)v107, 4);
      if ( glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles > 0 )
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = v40;
          *(_WORD *)(v37 + v38) = v40 + *v34;
          v42 = (_WORD *)(v37 + v38);
          ++v39;
          v40 += 4;
          v42[1] = v41 + v34[1];
          v38 += 12;
          v42[2] = v41 + v34[2];
          v42[3] = v41 + v34[3];
          v42[4] = v41 + v34[4];
          v42[5] = v41 + v34[5];
        }
        while ( glitch::collada::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles > v39 );
      }
      if ( v37 )
      {
        v43 = *((_BYTE *)v107 + 19);
        if ( (v43 & 0x1Fu) <= 1 )
        {
          if ( (*((_BYTE *)v107 + 18) & 0x20) != 0 )
            (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v107 + 24))(v107);
          *((_BYTE *)v107 + 19) = 0;
        }
        else
        {
          *((_BYTE *)v107 + 19) = ((v43 & 0x1F) - 1) | v43 & 0xE0;
        }
      }
      if ( v34 )
      {
        v44 = *(_BYTE **)(v108 + 24);
        v45 = v44[19];
        if ( (v45 & 0x1Fu) <= 1 )
        {
          if ( (v44[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v44 + 24))(*(_DWORD *)(v108 + 24));
          v44[19] = 0;
        }
        else
        {
          v44[19] = ((v45 & 0x1F) - 1) | v45 & 0xE0;
        }
      }
      glitch::IReferenceCounted::drop(v107);
    }
    v83 = (glitch::IReferenceCounted *)glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer;
    v84 = (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12);
    if ( glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer )
      ++*(_DWORD *)(glitch::collada::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer + 4);
    v85 = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v84, "OutIndexBuffer");
    v46 = *(_DWORD **)(v84 + 52);
    v86 = (_DWORD *)(v84 + 48);
    if ( v46 )
    {
      v87 = (_DWORD *)(v84 + 48);
      while ( 1 )
      {
        v88 = v46[4];
        v89 = v85 > v88;
        if ( v85 <= v88 )
          v90 = (_DWORD *)v46[2];
        else
          v90 = (_DWORD *)v46[3];
        if ( v89 )
          v46 = v87;
        v87 = v46;
        if ( !v90 )
          break;
        v46 = v90;
      }
    }
    else
    {
      v46 = (_DWORD *)(v84 + 48);
    }
    if ( v86 == v46 || (v47 = v46, v85 < v46[4]) )
    {
      v124[0] = v85;
      v124[1] = 0;
      v132 = v46;
      std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
        &v131,
        v86,
        &v132,
        v124);
      v47 = v131;
    }
    v48 = (glitch::IReferenceCounted **)v47[5];
    if ( v48 )
    {
      if ( v83 )
        ++*((_DWORD *)v83 + 1);
      v49 = *v48;
      *v48 = v83;
      if ( v49 )
        glitch::IReferenceCounted::drop(v49);
    }
    if ( v83 )
      glitch::IReferenceCounted::drop(v83);
    *(this + 99) = (glitch::IReferenceCounted *)(&stru_5FFF8 + 11);
  }
  glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::setParameter<glitch::scene::CMeshBuffer *>(
    (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    (int)*(this + 80));
  v50 = (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12);
  v51 = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v50, "ViewMatrix");
  v52 = *(_DWORD **)(v50 + 52);
  v53 = (_DWORD *)(v50 + 48);
  if ( v52 )
  {
    v54 = (_DWORD *)(v50 + 48);
    while ( 1 )
    {
      v55 = v52[4];
      v56 = v51 > v55;
      if ( v51 <= v55 )
        v57 = (_DWORD *)v52[2];
      else
        v57 = (_DWORD *)v52[3];
      if ( v56 )
        v52 = v54;
      v54 = v52;
      if ( !v57 )
        break;
      v52 = v57;
    }
  }
  else
  {
    v52 = (_DWORD *)(v50 + 48);
  }
  if ( v53 == v52 || (v58 = v52, v51 < v52[4]) )
  {
    v123[0] = v51;
    v123[1] = 0;
    v130 = v52;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v129,
      v53,
      &v130,
      v123);
    v58 = v129;
  }
  v59 = (glitch::IReferenceCounted *)v58[5];
  v60 = *(this + 94);
  *(this + 82) = v59;
  v61 = (int)v60 + *(_DWORD *)(*v60 - 12);
  v62 = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v61, "ViewRotMatrix");
  v63 = *(_DWORD **)(v61 + 52);
  v64 = (_DWORD *)(v61 + 48);
  if ( v63 )
  {
    v65 = (_DWORD *)(v61 + 48);
    while ( 1 )
    {
      v66 = v63[4];
      v67 = v62 > v66;
      if ( v62 <= v66 )
        v68 = (_DWORD *)v63[2];
      else
        v68 = (_DWORD *)v63[3];
      if ( v67 )
        v63 = v65;
      v65 = v63;
      if ( !v68 )
        break;
      v63 = v68;
    }
  }
  else
  {
    v63 = (_DWORD *)(v61 + 48);
  }
  if ( v64 == v63 || (v69 = v63, v62 < v63[4]) )
  {
    v122[0] = v62;
    v122[1] = 0;
    v128 = v63;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v127,
      v64,
      &v128,
      v122);
    v69 = v127;
  }
  v70 = (glitch::IReferenceCounted *)v69[5];
  v71 = *(this + 94);
  *(this + 96) = v70;
  v72 = (int)v71 + *(_DWORD *)(*v71 - 12);
  result = glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::hashString(v72, "BBox");
  v74 = *(_DWORD **)(v72 + 52);
  v75 = (_DWORD *)(v72 + 48);
  if ( v74 )
  {
    v76 = (_DWORD *)(v72 + 48);
    while ( 1 )
    {
      v77 = v74[4];
      v78 = result > v77;
      if ( result <= v77 )
        v79 = (_DWORD *)v74[2];
      else
        v79 = (_DWORD *)v74[3];
      if ( v78 )
        v74 = v76;
      v76 = v74;
      if ( !v79 )
        break;
      v74 = v79;
    }
  }
  else
  {
    v74 = (_DWORD *)(v72 + 48);
  }
  if ( v75 == v74 || (v80 = v74, result < v74[4]) )
  {
    v121[0] = result;
    v121[1] = 0;
    v126 = v74;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v125,
                             v75,
                             &v126,
                             v121);
    v80 = v125;
  }
  v81 = (glitch::IReferenceCounted *)v80[5];
  v82 = (int)*(this + 94);
  *(this + 83) = v81;
  *(_DWORD *)(v82 + 12) = this + 9;
  return result;
}


// ===== 643ea8 glitch::collada::CGlitchNewParticleSystemSceneNode::render(void *) =====
void __fastcall glitch::collada::CGlitchNewParticleSystemSceneNode::render(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this,
        void *a2)
{
  int v2; // r3
  int v3; // r5
  int v5; // r1
  void *v6; // r7
  int v7; // r0
  int v8; // r3
  glitch::video::CVertexStreams *v9; // r6
  int v10; // r10
  bool v11; // zf
  int (__fastcall *v12)(int, _DWORD, _DWORD, int, int, glitch::video::CVertexStreams **, _DWORD, _DWORD); // r6
  int v13; // r8
  _DWORD *v14; // r1
  int v15; // r7
  int v16; // r7
  int v17; // r0
  glitch::video::CVertexStreams *v18; // r6
  int v19; // r7
  glitch::video::CVertexStreams *v20; // r6
  int v21; // r3
  _DWORD *v22; // r0
  int v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r1
  glitch::video::CVertexStreams *v27; // r6
  int v28; // r0
  glitch::video::CVertexStreams **v29; // r7
  int v30; // r0
  int Technique; // r2
  glitch::video::CVertexStreams *v32; // r3
  void (__fastcall *v33)(int, glitch::video::CVertexStreams **, glitch::video::CVertexStreams **); // r12
  glitch::video::CVertexStreams *v34; // r6
  void (__fastcall *v35)(int, _DWORD, glitch::video::CVertexStreams **, _DWORD, _DWORD, _DWORD); // r6
  int v36; // r1
  glitch::video::CVertexStreams *v37; // r4
  glitch::video::CVertexStreams *v38; // r4
  void *v39; // r8
  unsigned int v40; // r1
  _DWORD v41[16]; // [sp+10h] [bp-B4h] BYREF
  char v42; // [sp+50h] [bp-74h]
  _DWORD v43[17]; // [sp+54h] [bp-70h] BYREF
  glitch::IReferenceCounted *v44; // [sp+98h] [bp-2Ch]
  glitch::video::CVertexStreams *v45; // [sp+9Ch] [bp-28h] BYREF
  glitch::video::CVertexStreams *v46; // [sp+A0h] [bp-24h] BYREF
  glitch::video::CVertexStreams *v47; // [sp+A4h] [bp-20h] BYREF
  glitch::video::CMaterial *v48; // [sp+A8h] [bp-1Ch] BYREF
  unsigned __int8 v49[4]; // [sp+ACh] [bp-18h] BYREF
  int v50; // [sp+B0h] [bp-14h] BYREF
  glitch::video::CVertexStreams *v51; // [sp+B4h] [bp-10h] BYREF
  glitch::video::CVertexStreams *v52; // [sp+B8h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v53; // [sp+BCh] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 68);
  v3 = *(_DWORD *)(v2 + 20);
  if ( v3 )
  {
    v5 = *(_DWORD *)(v2 + 228);
    if ( v5 )
    {
      v6 = *((void **)this + 82);
      v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 324))(*(_DWORD *)(v2 + 228));
      memcpy(v6, (const void *)(v7 + 132), 0x41u);
    }
    else
    {
      v39 = *((void **)this + 82);
      LC_API_MEMSET_0(v43, 0, 0x40u);
      v43[15] = 1065353216;
      LOBYTE(v43[16]) = 1;
      v43[0] = 1065353216;
      v43[5] = 1065353216;
      v43[10] = 1065353216;
      memcpy(v39, v43, 0x41u);
    }
    if ( *(_BYTE *)(*((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12) + 84) )
    {
      LC_API_MEMSET_0(v41, 0, 0x40u);
      v21 = *((_DWORD *)this + 94);
      v41[15] = 1065353216;
      v41[0] = 1065353216;
      v41[5] = 1065353216;
      v41[10] = 1065353216;
      v42 = 1;
      v22 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v21 + 20))(v21);
      v23 = v22[14];
      v24 = v22[12];
      v25 = v22[13];
      v42 = 0;
      v41[12] = v24;
      v41[13] = v25;
      v41[14] = v23;
      (*(void (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)v3 + 108))(v3, 1, v41);
    }
    else
    {
      (*(void (__fastcall **)(int, int, int *))(*(_DWORD *)v3 + 108))(v3, 1, glitch::core::IdentityMatrix);
    }
    v8 = *((_DWORD *)this + 80);
    v9 = *(glitch::video::CVertexStreams **)(v8 + 20);
    if ( v9 )
      v8 = *(_DWORD *)v9;
    v10 = *((_DWORD *)v9 + 2);
    if ( v9 )
      *(_DWORD *)v9 = v8 + 1;
    v11 = (*(_DWORD *)v9)-- == 1;
    if ( v11 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v9);
      LC_API_FREE_0(v9);
    }
    v12 = *(int (__fastcall **)(int, _DWORD, _DWORD, int, int, glitch::video::CVertexStreams **, _DWORD, _DWORD))(*(_DWORD *)v3 + 496);
    v13 = *((_DWORD *)this + 99);
    v14 = (_DWORD *)(*((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12));
    v15 = -1762037865 * ((v14[10] - v14[9]) >> 2);
    (*(void (__fastcall **)(glitch::video::CVertexStreams **))(*v14 + 12))(&v53);
    v16 = v10 * v15;
    v52 = v53;
    if ( v53 )
      ++*(_DWORD *)v53;
    v17 = v12(v3, 0, 0, v16, v13, &v52, 0, 0);
    v18 = v52;
    v19 = v17;
    if ( v52 )
    {
      v11 = (*(_DWORD *)v52)-- == 1;
      if ( v11 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v18);
        LC_API_FREE_0(v18);
      }
    }
    v20 = v53;
    if ( v53 )
    {
      v11 = (*(_DWORD *)v53)-- == 1;
      if ( v11 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v20);
        LC_API_FREE_0(v20);
      }
    }
    if ( v19 == 4 )
    {
      v26 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
      (*(void (__fastcall **)(glitch::video::CVertexStreams **, int))(*(_DWORD *)v26 + 12))(&v51, v26);
      glitch::video::CVertexStreams::updateStates((int)v51, 0);
      v27 = v51;
      if ( v51 )
      {
        v11 = (*(_DWORD *)v51)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v27);
          LC_API_FREE_0(v27);
        }
      }
      v28 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
      v29 = (glitch::video::CVertexStreams **)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v28 + 8))(v28, 0);
      v30 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v30 + 28))(v30) )
      {
        (*(void (__fastcall **)(int *, glitch::collada::CGlitchNewParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
          &v50,
          this,
          0);
        v40 = (unsigned __int16)*((_DWORD *)this + 93);
        v49[3] = -1;
        v49[0] = -1;
        v49[1] = -1;
        v49[2] = -1;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
          (_DWORD *)v50,
          v40,
          0,
          v49);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)&v50);
      }
      (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::CGlitchNewParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
        &v48,
        this,
        0);
      if ( v48 )
        Technique = glitch::video::CMaterial::getTechnique(v48);
      else
        Technique = 255;
      glitch::video::IVideoDriver::setMaterial(v3, &v48, Technique, 0);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v48);
      v32 = *v29;
      v47 = *v29;
      if ( v47 )
        ++*(_DWORD *)v32;
      v33 = *(void (__fastcall **)(int, glitch::video::CVertexStreams **, glitch::video::CVertexStreams **))(*(_DWORD *)v3 + 88);
      v44 = nullptr;
      v33(v3, &v47, v29 + 1);
      if ( v44 )
        glitch::IReferenceCounted::drop(v44);
      v34 = v47;
      if ( v47 )
      {
        v11 = (*(_DWORD *)v47)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v34);
          LC_API_FREE_0(v34);
        }
      }
      v35 = *(void (__fastcall **)(int, _DWORD, glitch::video::CVertexStreams **, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v3 + 500);
      v36 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
      (*(void (__fastcall **)(glitch::video::CVertexStreams **, int))(*(_DWORD *)v36 + 12))(&v46, v36);
      v45 = v46;
      if ( v46 )
        ++*(_DWORD *)v46;
      v35(v3, 0, &v45, 0, *((_DWORD *)this + 99), 0);
      v37 = v45;
      if ( v45 )
      {
        v11 = (*(_DWORD *)v45)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v37);
          LC_API_FREE_0(v37);
        }
      }
      v38 = v46;
      if ( v46 )
      {
        v11 = (*(_DWORD *)v46)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v38);
          LC_API_FREE_0(v38);
        }
      }
    }
  }
}


// ===== 6443c4 `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode((glitch::collada::CGlitchNewParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6443d4 `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode((glitch::collada::CGlitchNewParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6443e4 `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode((glitch::collada::CGlitchNewParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6443f4 `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode(
        glitch::collada::CGlitchNewParticleSystemSceneNode *this)
{
  glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode((glitch::collada::CGlitchNewParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 644404 glitch::collada::CLightSceneNode::getLightID(void) =====
int __fastcall glitch::collada::CLightSceneNode::getLightID(glitch::collada::CLightSceneNode *this)
{
  return *((_DWORD *)this + 88);
}


// ===== 64440c glitch::collada::CLightSceneNode::getUID(void) =====
int __fastcall glitch::collada::CLightSceneNode::getUID(glitch::collada::CLightSceneNode *this)
{
  return **((_DWORD **)this + 88);
}


// ===== 644418 `global constructor keyed to'.._source_glitch_collada_CColladaLightSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaLightSceneNode.cpp()
{
  dword_9F6F94 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6F90 = 1056964608;
}


// ===== 644438 glitch::collada::CLightSceneNode::~CLightSceneNode() =====
void __fastcall glitch::collada::CLightSceneNode::~CLightSceneNode(glitch::collada::CLightSceneNode *this)
{
  *(_DWORD *)this = off_97EC84;
  *((_DWORD *)this + 89) = off_97ED88;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 86);
  glitch::scene::CLightSceneNode::~CLightSceneNode(this, (int *)off_97ED9C);
}

