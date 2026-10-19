// ===== 61ee40 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float a6,
        int a7)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61ee64 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3)
{
  int v6; // r7
  _DWORD *result; // r0

  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result && (result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1)) != nullptr )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *a3 = *(_DWORD *)(v6 + 4 * a2);
    a3[1] = result[1];
    a3[2] = result[2];
    a3[3] = result[3];
  }
  else
  {
    *a3 = *(_DWORD *)(v6 + 4 * a2);
  }
  return result;
}


// ===== 61eedc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 61eeec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  float v7[5]; // [sp+0h] [bp-14h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
    a2,
    a3,
    v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           v7);
}


// ===== 61ef2c glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v9; // r9
  float v10; // r10
  int v11; // r4
  float result; // r0

  v9 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    v10 = *(float *)(v9 + 4 * a2);
    v11 = 1;
    *a5 = v10 + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - v10));
    do
    {
      result = COERCE_FLOAT(glitch::collada::SAnimationAccessor::getDefaultValue(a1));
      a5[v11] = *(float *)(LODWORD(result) + 4 * v11);
      ++v11;
    }
    while ( v11 != 4 );
  }
  else
  {
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *a5 = result;
  }
  return result;
}


// ===== 61efe0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 61effc glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  float v7[4]; // [sp+8h] [bp-10h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           v7);
}


// ===== 61f030 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61f054 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4)
{
  int Output; // r0
  float v9; // r4
  _DWORD *result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(a1, 0);
  v9 = *(float *)(*(_DWORD *)(Output + 4) + 4 * a3) - *(float *)(*(_DWORD *)(Output + 4) + 4 * a2);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(float *)a4 = v9;
    *(_DWORD *)(a4 + 4) = result[1];
    *(_DWORD *)(a4 + 8) = result[2];
    *(_DWORD *)(a4 + 12) = result[3];
  }
  else
  {
    *(float *)a4 = v9;
  }
  return result;
}


// ===== 61f0c8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 61f0dc glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  int v10; // r6
  float v11; // r11
  float v12; // r4
  float v13; // r6
  float result; // r0
  _DWORD *DefaultValue; // r5

  v10 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v11 = *(float *)(v10 + 4 * a2);
  v12 = *(float *)(v10 + 4 * a3) - v11;
  v13 = *(float *)(v10 + 4 * a4) - v11;
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    DefaultValue = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    result = v12 + (float)(a5 * (float)(v13 - v12));
    *(float *)a6 = result;
    *(_DWORD *)(a6 + 4) = DefaultValue[1];
    *(_DWORD *)(a6 + 8) = DefaultValue[2];
    *(_DWORD *)(a6 + 12) = DefaultValue[3];
  }
  else
  {
    result = v12 + (float)(a5 * (float)(v13 - v12));
    *(float *)a6 = result;
  }
  return result;
}


// ===== 61f1b8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float a6,
        int a7)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61f1dc glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3)
{
  int v6; // r7
  _DWORD *result; // r0

  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result && (result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1)) != nullptr )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *a3 = *result;
    a3[1] = *(_DWORD *)(v6 + 4 * a2);
    a3[2] = result[2];
    a3[3] = result[3];
  }
  else
  {
    *a3 = *(_DWORD *)(v6 + 4 * a2);
  }
  return result;
}


// ===== 61f254 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 61f264 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  float v7[5]; // [sp+0h] [bp-14h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
    a2,
    a3,
    v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           v7);
}


// ===== 61f2a4 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  int v9; // r9
  float result; // r0

  v9 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    *(_DWORD *)a5 = *(_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(float *)(a5 + 4) = *(float *)(v9 + 4 * a2)
                       + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *(_DWORD *)(a5 + 8) = *(_DWORD *)(glitch::collada::SAnimationAccessor::getDefaultValue(a1) + 8);
    result = COERCE_FLOAT(glitch::collada::SAnimationAccessor::getDefaultValue(a1));
    *(_DWORD *)(a5 + 12) = *(_DWORD *)(LODWORD(result) + 12);
  }
  else
  {
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *(float *)a5 = result;
  }
  return result;
}


// ===== 61f370 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 61f38c glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  float v7[4]; // [sp+8h] [bp-10h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           v7);
}


// ===== 61f3c0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61f3e4 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4)
{
  int Output; // r0
  float v9; // r4
  _DWORD *result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(a1, 0);
  v9 = *(float *)(*(_DWORD *)(Output + 4) + 4 * a3) - *(float *)(*(_DWORD *)(Output + 4) + 4 * a2);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(_DWORD *)a4 = *result;
    *(float *)(a4 + 4) = v9;
    *(_DWORD *)(a4 + 8) = result[2];
    *(_DWORD *)(a4 + 12) = result[3];
  }
  else
  {
    *(float *)a4 = v9;
  }
  return result;
}


// ===== 61f458 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>,float,4,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 61f46c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *this,
        int a3,
        int a4,
        float *a5)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, 0);
  result = *(float *)(*(_DWORD *)(Output + 4) + 4 * a4) - *(float *)(*(_DWORD *)(Output + 4) + 4 * a3);
  *a5 = result;
  return result;
}


// ===== 61f4a0 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>,float,1,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>,float,1,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(a1, 0);
  result = (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a3)
                 + (float)(a5
                         * (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a4)
                                 - *(float *)(*(_DWORD *)(Output + 4) + 4 * a3))))
         - *(float *)(*(_DWORD *)(Output + 4) + 4 * a2);
  *a6 = result;
  return result;
}


// ===== 61f4f8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float a6,
        float *a7)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>,float,1,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61f51c glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3)
{
  int v6; // r7
  _DWORD *result; // r0

  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result && (result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1)) != nullptr )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *a3 = *result;
    a3[1] = result[1];
    a3[2] = result[2];
    a3[3] = *(_DWORD *)(v6 + 4 * a2);
  }
  else
  {
    *a3 = *(_DWORD *)(v6 + 4 * a2);
  }
  return result;
}


// ===== 61f594 glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
float *__fastcall glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        float *a3)
{
  float v5[5]; // [sp+0h] [bp-14h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return glitch::core::quaternion::fromAngleAxis(a3, v5[3], v5);
}


// ===== 61f5d4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        float *a4)
{
  return glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 61f5e4 glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float *a4)
{
  float v7; // r3
  float v8; // r2
  float result; // r0
  float v10[4]; // [sp+0h] [bp-54h] BYREF
  int v11; // [sp+10h] [bp-44h] BYREF
  int v12; // [sp+14h] [bp-40h]
  int v13; // [sp+18h] [bp-3Ch]
  int v14; // [sp+1Ch] [bp-38h]
  float v15[4]; // [sp+20h] [bp-34h] BYREF
  float v16[4]; // [sp+30h] [bp-24h] BYREF
  float v17[5]; // [sp+40h] [bp-14h] BYREF

  memset(v17, 0, 12);
  memset(v16, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
    a1,
    a3,
    v17);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v16);
  v14 = 1065353216;
  v15[3] = 1.0;
  v13 = 0;
  memset(v15, 0, 12);
  v11 = 0;
  v12 = 0;
  glitch::core::quaternion::fromAngleAxis(v15, v17[3], v17);
  glitch::core::quaternion::fromAngleAxis((float *)&v11, v16[3], v16);
  v13 += 0x80000000;
  v11 += 0x80000000;
  v12 += 0x80000000;
  glitch::core::quaternion::operator*(v10, (float *)&v11, v15);
  v7 = v10[2];
  v8 = v10[3];
  result = v10[0];
  a4[1] = v10[1];
  a4[3] = v8;
  *a4 = result;
  a4[2] = v7;
  return result;
}


// ===== 61f6e0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float *a5)
{
  return glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 61f6f4 glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  float v9; // r3
  float v10; // r2
  float result; // r0
  float v12[4]; // [sp+18h] [bp-70h] BYREF
  int v13; // [sp+28h] [bp-60h] BYREF
  int v14; // [sp+2Ch] [bp-5Ch]
  int v15; // [sp+30h] [bp-58h]
  int v16; // [sp+34h] [bp-54h]
  float v17[4]; // [sp+38h] [bp-50h] BYREF
  float v18; // [sp+48h] [bp-40h] BYREF
  float v19; // [sp+4Ch] [bp-3Ch]
  float v20; // [sp+50h] [bp-38h]
  float v21; // [sp+54h] [bp-34h]
  float v22; // [sp+58h] [bp-30h] BYREF
  float v23; // [sp+5Ch] [bp-2Ch]
  float v24; // [sp+60h] [bp-28h]
  float v25; // [sp+64h] [bp-24h]
  float v26[4]; // [sp+68h] [bp-20h] BYREF
  float v27[4]; // [sp+78h] [bp-10h] BYREF
  float v28[4]; // [sp+88h] [bp+0h] BYREF

  memset(v28, 0, 12);
  memset(v27, 0, 12);
  memset(v26, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
    a1,
    a3,
    v28);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
    a1,
    a4,
    v27);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v26);
  v16 = 1065353216;
  v25 = 1.0;
  v21 = 1.0;
  v17[3] = 1.0;
  v15 = 0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  memset(v17, 0, 12);
  v13 = 0;
  v14 = 0;
  glitch::core::quaternion::fromAngleAxis(&v22, v28[3], v28);
  glitch::core::quaternion::fromAngleAxis(&v18, v27[3], v27);
  glitch::core::quaternion::slerp(v17, v22, v23, v24, v25, v18, v19, v20, v21, a5);
  glitch::core::quaternion::fromAngleAxis((float *)&v13, v26[3], v26);
  v15 += 0x80000000;
  v13 += 0x80000000;
  v14 += 0x80000000;
  glitch::core::quaternion::operator*(v12, (float *)&v13, v17);
  v9 = v12[2];
  v10 = v12[3];
  result = v12[0];
  a6[1] = v12[1];
  a6[3] = v10;
  *a6 = result;
  a6[2] = v9;
  return result;
}


// ===== 61f874 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float a6,
        float *a7)
{
  return glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61f898 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v9; // r9
  int i; // r10
  float result; // r0

  v9 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    for ( i = 0; i != 3; ++i )
      a5[i] = *(float *)(glitch::collada::SAnimationAccessor::getDefaultValue(a1) + i * 4);
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    a5[3] = result;
  }
  else
  {
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *a5 = result;
  }
  return result;
}


// ===== 61f94c glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float *__fastcall glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  float v6[4]; // [sp+8h] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultValues<3,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return glitch::core::quaternion::fromAngleAxis(a5, v6[3], v6);
}


// ===== 61f988 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 61f9a4 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
int __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3)
{
  int v6; // r7
  int result; // r0

  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  result = glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result && (result = glitch::collada::SAnimationAccessor::getDefaultValue(a1)) != 0 )
  {
    result = glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *a3 = *(_DWORD *)(v6 + 4 * a2);
    a3[1] = *(_DWORD *)(result + 4);
    a3[2] = *(_DWORD *)(result + 8);
  }
  else
  {
    *a3 = *(_DWORD *)(v6 + 4 * a2);
  }
  return result;
}


// ===== 61fa14 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 61fa24 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  int v9; // r9
  float result; // r0

  v9 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    *(float *)a5 = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *(_DWORD *)(a5 + 4) = *(_DWORD *)(glitch::collada::SAnimationAccessor::getDefaultValue(a1) + 4);
    result = COERCE_FLOAT(glitch::collada::SAnimationAccessor::getDefaultValue(a1));
    *(_DWORD *)(a5 + 8) = *(_DWORD *)(LODWORD(result) + 8);
  }
  else
  {
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *(float *)a5 = result;
  }
  return result;
}


// ===== 61fadc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 61faf8 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
int __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4)
{
  int Output; // r0
  float v9; // r4
  int result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(a1, 0);
  v9 = *(float *)(*(_DWORD *)(Output + 4) + 4 * a3) - *(float *)(*(_DWORD *)(Output + 4) + 4 * a2);
  result = glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result )
  {
    result = glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(float *)a4 = v9;
    *(_DWORD *)(a4 + 4) = *(_DWORD *)(result + 4);
    *(_DWORD *)(a4 + 8) = *(_DWORD *)(result + 8);
  }
  else
  {
    *(float *)a4 = v9;
  }
  return result;
}


// ===== 61fb64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 61fb78 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  int v10; // r6
  float v11; // r11
  float v12; // r4
  float v13; // r6
  float result; // r0
  int DefaultValue; // r5

  v10 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v11 = *(float *)(v10 + 4 * a2);
  v12 = *(float *)(v10 + 4 * a3) - v11;
  v13 = *(float *)(v10 + 4 * a4) - v11;
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    DefaultValue = glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    result = v12 + (float)(a5 * (float)(v13 - v12));
    *(float *)a6 = result;
    *(_DWORD *)(a6 + 4) = *(_DWORD *)(DefaultValue + 4);
    *(_DWORD *)(a6 + 8) = *(_DWORD *)(DefaultValue + 8);
  }
  else
  {
    result = v12 + (float)(a5 * (float)(v13 - v12));
    *(float *)a6 = result;
  }
  return result;
}


// ===== 61fc4c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float a6,
        int a7)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61fc70 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3)
{
  int v6; // r7
  _DWORD *result; // r0

  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result && (result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1)) != nullptr )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *a3 = *result;
    a3[1] = *(_DWORD *)(v6 + 4 * a2);
    a3[2] = result[2];
  }
  else
  {
    *a3 = *(_DWORD *)(v6 + 4 * a2);
  }
  return result;
}


// ===== 61fce0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 61fcf0 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  int v9; // r9
  float result; // r0

  v9 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    *(_DWORD *)a5 = *(_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(float *)(a5 + 4) = *(float *)(v9 + 4 * a2)
                       + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    result = COERCE_FLOAT(glitch::collada::SAnimationAccessor::getDefaultValue(a1));
    *(_DWORD *)(a5 + 8) = *(_DWORD *)(LODWORD(result) + 8);
  }
  else
  {
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *(float *)a5 = result;
  }
  return result;
}


// ===== 61fda8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 61fdc4 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4)
{
  int Output; // r0
  float v9; // r4
  _DWORD *result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(a1, 0);
  v9 = *(float *)(*(_DWORD *)(Output + 4) + 4 * a3) - *(float *)(*(_DWORD *)(Output + 4) + 4 * a2);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(_DWORD *)a4 = *result;
    *(float *)(a4 + 4) = v9;
    *(_DWORD *)(a4 + 8) = result[2];
  }
  else
  {
    *(float *)a4 = v9;
  }
  return result;
}


// ===== 61fe30 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 61fe44 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  int v10; // r6
  float v11; // r11
  float v12; // r4
  float v13; // r9
  float result; // r0
  _DWORD *DefaultValue; // r6

  v10 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v11 = *(float *)(v10 + 4 * a2);
  v12 = *(float *)(v10 + 4 * a3) - v11;
  v13 = *(float *)(v10 + 4 * a4) - v11;
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    DefaultValue = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(_DWORD *)a6 = *DefaultValue;
    result = v12 + (float)(a5 * (float)(v13 - v12));
    *(float *)(a6 + 4) = result;
    *(_DWORD *)(a6 + 8) = DefaultValue[2];
  }
  else
  {
    result = v12 + (float)(a5 * (float)(v13 - v12));
    *(float *)a6 = result;
  }
  return result;
}


// ===== 61ff18 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float a6,
        int a7)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 61ff3c glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3)
{
  int v6; // r7
  _DWORD *result; // r0

  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  result = (_DWORD *)glitch::collada::SAnimationAccessor::hasDefaultValue(a1);
  if ( result && (result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1)) != nullptr )
  {
    result = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *a3 = *result;
    a3[1] = result[1];
    a3[2] = *(_DWORD *)(v6 + 4 * a2);
  }
  else
  {
    *a3 = *(_DWORD *)(v6 + 4 * a2);
  }
  return result;
}


// ===== 61ffac glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 61ffbc glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  int v9; // r10
  float result; // r0

  v9 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  if ( glitch::collada::SAnimationAccessor::hasDefaultValue(a1) )
  {
    *(_DWORD *)a5 = *(_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(a1);
    *(_DWORD *)(a5 + 4) = *(_DWORD *)(glitch::collada::SAnimationAccessor::getDefaultValue(a1) + 4);
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *(float *)(a5 + 8) = result;
  }
  else
  {
    result = *(float *)(v9 + 4 * a2) + (float)(a4 * (float)(*(float *)(v9 + 4 * a3) - *(float *)(v9 + 4 * a2)));
    *(float *)a5 = result;
  }
  return result;
}


// ===== 620070 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62008c glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float v6; // r8
  int v7; // r7
  float v9[2]; // [sp+4h] [bp-8h] BYREF

  v5 = a3;
  if ( a3 == 1 )
  {
    v9[0] = *a1;
  }
  else
  {
    if ( a3 )
    {
      v6 = 0.0;
      v7 = 0;
      do
      {
        --v5;
        v6 = v6 + (float)(a1[v7] * *(float *)(a2 + v7 * 4));
        ++v7;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
    }
    v9[0] = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           v9);
}


// ===== 620118 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 620134 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v7 = 0;
      do
      {
        --v5;
        v6 = v6 + (float)(a2[v7] * *(float *)(a3 + v7 * 4));
        ++v7;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
    }
    *a5 = v6;
  }
}


// ===== 6201a0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v7 = 0;
      do
      {
        --v5;
        v6 = v6 + (float)(a2[v7] * *(float *)(a3 + v7 * 4));
        ++v7;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
    }
    *a5 = v6;
  }
}


// ===== 62020c glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>,float,1,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>,float,1,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int Output; // r6
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(a1, 0);
  result = (float)((float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a2) * (float)(1.0 - a4)) + 0.0)
         + (float)(a4 * *(float *)(*(_DWORD *)(Output + 4) + 4 * a2 + 4));
  *a5 = result;
  return result;
}


// ===== 620284 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>,float,1,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6202a0 glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  float v7; // [sp+Ch] [bp-4h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>,float,1,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    &v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v7);
}


// ===== 6202d4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<float,glitch::collada::animation_track::CMixin<float,1,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float,float>>,-1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 6202f8 glitch::collada::CImage::~CImage() =====
void __fastcall glitch::collada::CImage::~CImage(glitch::collada::CImage *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 5);
  *(_DWORD *)this = off_97A7E8;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  *(_DWORD *)this = off_95B720;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
  LC_API_FREE_0(this);
}


// ===== 62035c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::retrieveValue(
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


// ===== 620390 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::retrieveValue(
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


// ===== 6203c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::retrieveValue(
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


// ===== 6203f8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::retrieveValue(
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


// ===== 62042c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::retrieveValue(
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


// ===== 620460 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::retrieveValue(
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


// ===== 620494 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::retrieveValue(
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


// ===== 6204c8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::retrieveValue(
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


// ===== 6204fc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::retrieveValue(
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


// ===== 620530 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::retrieveValue(
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


// ===== 620564 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::retrieveValue(
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


// ===== 620598 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::retrieveValue(
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


// ===== 6205cc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::retrieveValue(
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


// ===== 620600 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::retrieveValue(
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


// ===== 620634 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::retrieveValue(
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


// ===== 620668 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::retrieveValue(
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


// ===== 62069c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::retrieveValue(
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


// ===== 6206d0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::retrieveValue(
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


// ===== 620704 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::retrieveValue(
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


// ===== 620738 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::retrieveValue(
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


// ===== 62076c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::retrieveValue(
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


// ===== 6207a0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::retrieveValue(void *,void *) =====
_DWORD *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::retrieveValue(
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


// ===== 6207d4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 156))(a3);
}


// ===== 6207ec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 156))(a3);
}


// ===== 620804 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 156))(a3);
}


// ===== 62081c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 156))(a3);
}


// ===== 620834 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 156))(a3);
}


// ===== 62084c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 156))(a3);
}


// ===== 620864 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int *a3)
{
  int v5; // r3
  int v6; // r2
  _DWORD *v7; // r4
  int v8; // r3
  int v10; // [sp+0h] [bp-14h] BYREF
  int v11; // [sp+4h] [bp-10h]
  int v12; // [sp+8h] [bp-Ch]
  int v13; // [sp+Ch] [bp-8h]

  v12 = 0;
  v13 = 1065353216;
  v10 = 0;
  v11 = 0;
  v5 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v6 = *(_DWORD *)(v5 + 16 * a2);
  v7 = (_DWORD *)(v5 + 16 * a2);
  v10 = v6;
  v11 = v7[1];
  v8 = *a3;
  v12 = v7[2];
  v13 = v7[3];
  return (*(int (__fastcall **)(int *, int *))(v8 + 156))(a3, &v10);
}


// ===== 6208e4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int *a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6208f8 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[5]; // [sp+8h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>,float,4,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 156))(a5, v6);
}


// ===== 620944 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 620968 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyBlendedValueEx(
        int a1,
        float *a2,
        int a3,
        int a4)
{
  float v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getBlendedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 6209b4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyBlendedValue(
        int a1,
        int a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6209d0 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyBlendedValueEx(
        int a1,
        float *a2,
        int a3,
        int a4)
{
  float v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getBlendedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620a1c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyBlendedValue(
        int a1,
        int a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620a38 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyBlendedValueEx(
        int a1,
        float *a2,
        int a3,
        int a4)
{
  float v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getBlendedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620a84 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyBlendedValue(
        int a1,
        int a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620aa0 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyBlendedValueEx(
        int a1,
        float *a2,
        int a3,
        int a4)
{
  float v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getBlendedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620aec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyBlendedValue(
        int a1,
        int a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620b08 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyBlendedValueEx(
        int a1,
        float *a2,
        int a3,
        int a4)
{
  float v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getBlendedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620b54 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyBlendedValue(
        int a1,
        int a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620b70 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyBlendedValueEx(
        int a1,
        float *a2,
        int a3,
        int a4)
{
  float v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getBlendedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620bbc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyBlendedValue(
        int a1,
        int a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620bd8 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        int a4)
{
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1065353216;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getAddedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620c24 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620c40 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        int a4)
{
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1065353216;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getAddedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620c8c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620ca8 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        int a4)
{
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1065353216;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getAddedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620cf4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620d10 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        int a4)
{
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1065353216;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getAddedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620d5c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620d78 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        int a4)
{
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1065353216;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getAddedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620dc4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620de0 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        int a4)
{
  _DWORD v6[5]; // [sp+0h] [bp-14h] BYREF

  v6[3] = 1065353216;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CBlender<glitch::core::quaternion,1,glitch::core::quaternion>::getAddedValueEx(
    a1,
    a2,
    a3,
    v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a4 + 156))(a4, v6);
}


// ===== 620e2c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 620e48 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[5]; // [sp+0h] [bp-14h] BYREF

  memset(v5, 0, 12);
  v5[3] = 1065353216;
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>,float,4,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 156))(a3, v5);
}


// ===== 620e94 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 620ea8 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[5]; // [sp+8h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>,float,4,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 156))(a5, v6);
}


// ===== 620ef4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 620f18 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[5]; // [sp+0h] [bp-14h] BYREF

  memset(v5, 0, 12);
  v5[3] = 1065353216;
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>,float,4,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 156))(a3, v5);
}


// ===== 620f64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 620f78 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[5]; // [sp+8h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>,float,4,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 156))(a5, v6);
}


// ===== 620fc4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 620fe8 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  float v5[5]; // [sp+0h] [bp-14h] BYREF

  memset(v5, 0, 12);
  v5[3] = 1.0;
  glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a3 + 156))(a3, v5);
}


// ===== 621034 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 621048 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[5]; // [sp+8h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>,float>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 156))(a5, v6);
}


// ===== 621094 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6210b8 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  float v5[5]; // [sp+0h] [bp-14h] BYREF

  memset(v5, 0, 12);
  v5[3] = 1.0;
  glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>,short>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a3 + 156))(a3, v5);
}


// ===== 621104 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 621118 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[5]; // [sp+8h] [bp-14h] BYREF

  v6[3] = 1.0;
  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>,short>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 156))(a5, v6);
}


// ===== 621164 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 621188 glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  float v5[5]; // [sp+0h] [bp-14h] BYREF

  memset(v5, 0, 12);
  v5[3] = 1.0;
  glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>,char>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a3 + 156))(a3, v5);
}


// ===== 6211d4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6211e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::getBlendedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getBlendedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        _BYTE *a5)
{
  float v6; // r7
  float v7; // r0
  _BYTE *v8; // r6
  float v9; // r10
  int v10; // r4
  int v11; // r5
  unsigned int result; // r0
  float v13; // [sp+4h] [bp-10h]
  float v14; // [sp+8h] [bp-Ch]
  float v15; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if ( a4 )
    {
      v8 = a2;
      while ( 1 )
      {
        v9 = *a3;
        v10 = 0;
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v10) = (float)((float)(unsigned __int8)v8[v11] * v9) + v6;
          v10 += 4;
          ++v11;
          if ( v10 == 12 )
            break;
          v6 = *(float *)((char *)&v13 + v10);
        }
        v8 += 3;
        if ( v8 == &a2[3 * a4] )
          break;
        v6 = v13;
        ++a3;
      }
      v7 = v13;
    }
    else
    {
      v7 = 0.0;
    }
    *a5 = (unsigned int)v7;
    a5[1] = (unsigned int)v14;
    result = (unsigned int)v15;
    a5[2] = (unsigned int)v15;
  }
  return result;
}


// ===== 6212d8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::getBlendedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::getBlendedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        _BYTE *a5)
{
  float v6; // r7
  float v7; // r0
  _BYTE *v8; // r6
  float v9; // r10
  int v10; // r4
  int v11; // r5
  unsigned int result; // r0
  float v13; // [sp+4h] [bp-10h]
  float v14; // [sp+8h] [bp-Ch]
  float v15; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if ( a4 )
    {
      v8 = a2;
      while ( 1 )
      {
        v9 = *a3;
        v10 = 0;
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v10) = (float)((float)(unsigned __int8)v8[v11] * v9) + v6;
          v10 += 4;
          ++v11;
          if ( v10 == 12 )
            break;
          v6 = *(float *)((char *)&v13 + v10);
        }
        v8 += 3;
        if ( v8 == &a2[3 * a4] )
          break;
        v6 = v13;
        ++a3;
      }
      v7 = v13;
    }
    else
    {
      v7 = 0.0;
    }
    *a5 = (unsigned int)v7;
    a5[1] = (unsigned int)v14;
    result = (unsigned int)v15;
    a5[2] = (unsigned int)v15;
  }
  return result;
}


// ===== 6213c8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::getAddedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::getAddedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        _BYTE *a5)
{
  float v6; // r7
  float v7; // r0
  _BYTE *v8; // r6
  float v9; // r10
  int v10; // r4
  int v11; // r5
  unsigned int result; // r0
  float v13; // [sp+4h] [bp-10h]
  float v14; // [sp+8h] [bp-Ch]
  float v15; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if ( a4 )
    {
      v8 = a2;
      while ( 1 )
      {
        v9 = *a3;
        v10 = 0;
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v10) = (float)((float)(unsigned __int8)v8[v11] * v9) + v6;
          v10 += 4;
          ++v11;
          if ( v10 == 12 )
            break;
          v6 = *(float *)((char *)&v13 + v10);
        }
        v8 += 3;
        if ( v8 == &a2[3 * a4] )
          break;
        v6 = v13;
        ++a3;
      }
      v7 = v13;
    }
    else
    {
      v7 = 0.0;
    }
    *a5 = (unsigned int)v7;
    a5[1] = (unsigned int)v14;
    result = (unsigned int)v15;
    a5[2] = (unsigned int)v15;
  }
  return result;
}


// ===== 6214b8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::applyBlendedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v7; // r7
  float v8; // r0
  _BYTE *v9; // r6
  float v10; // r10
  int v11; // r4
  int v12; // r5
  unsigned int v13; // r1
  char v15; // r2
  char v16; // r3
  float v17; // [sp+0h] [bp-14h] BYREF
  float v18; // [sp+4h] [bp-10h]
  float v19; // [sp+8h] [bp-Ch]
  __int16 v20; // [sp+Ch] [bp-8h]
  char v21; // [sp+Eh] [bp-6h]

  if ( a4 == 1 )
  {
    v15 = a2[1];
    v16 = a2[2];
    LOBYTE(v20) = *a2;
    HIBYTE(v20) = v15;
    v21 = v16;
  }
  else
  {
    v7 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    if ( a4 )
    {
      v9 = a2;
      while ( 1 )
      {
        v10 = *a3;
        v11 = 0;
        v12 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v17 + v11) = (float)((float)(unsigned __int8)v9[v12] * v10) + v7;
          v11 += 4;
          ++v12;
          if ( v11 == 12 )
            break;
          v7 = *(float *)((char *)&v17 + v11);
        }
        v9 += 3;
        if ( v9 == &a2[3 * a4] )
          break;
        v7 = v17;
        ++a3;
      }
      v8 = v17;
    }
    else
    {
      v8 = 0.0;
    }
    LOBYTE(v20) = (unsigned int)v8;
    HIBYTE(v20) = (unsigned int)v18;
    v21 = (unsigned int)v19;
  }
  v13 = *(unsigned __int16 *)(a6 + 8);
  HIBYTE(v17) = -1;
  LOWORD(v17) = v20;
  BYTE2(v17) = v21;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v13,
           0,
           (unsigned __int8 *)&v17);
}


// ===== 6215d8 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>,uchar,3,glitch::collada::animation_track::SUseDefaultLerp<uchar>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>,unsigned char,3,glitch::collada::animation_track::SUseDefaultLerp<unsigned char>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _BYTE *a5)
{
  float v5; // r6
  int v6; // r8
  int v7; // r10
  float v8; // r9
  int v9; // r4
  int v10; // r5
  unsigned int result; // r0
  float v12; // [sp+4h] [bp-18h]
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15[3]; // [sp+10h] [bp-Ch]

  v15[1] = a4;
  v15[0] = 1.0 - a4;
  v5 = 0.0;
  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4) + 3 * a2;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v7 = 0;
  while ( 1 )
  {
    v8 = v15[v7];
    v9 = 0;
    v10 = 0;
    while ( 1 )
    {
      *(float *)((char *)&v12 + v9) = (float)((float)*(unsigned __int8 *)(v6 + v10) * v8) + v5;
      v9 += 4;
      ++v10;
      if ( v9 == 12 )
        break;
      v5 = *(float *)((char *)&v12 + v9);
    }
    ++v7;
    v6 += 3;
    if ( v7 == 2 )
      break;
    v5 = v12;
  }
  *a5 = (unsigned int)v12;
  a5[1] = (unsigned int)v13;
  result = (unsigned int)v14;
  a5[2] = (unsigned int)v14;
  return result;
}


// ===== 6216b4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _BYTE *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>,unsigned char,3,glitch::collada::animation_track::SUseDefaultLerp<unsigned char>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6216d0 glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  unsigned int v6; // r1
  unsigned __int8 v8[4]; // [sp+8h] [bp-Ch] BYREF
  _BYTE v9[8]; // [sp+Ch] [bp-8h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>,unsigned char,3,glitch::collada::animation_track::SUseDefaultLerp<unsigned char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v9);
  v6 = *(unsigned __int16 *)(a6 + 8);
  v8[3] = -1;
  v8[0] = v9[0];
  v8[1] = v9[1];
  v8[2] = v9[2];
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v6,
           0,
           v8);
}


// ===== 621724 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 621748 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::applyAddedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v7; // r7
  float v8; // r0
  _BYTE *v9; // r6
  float v10; // r10
  int v11; // r4
  int v12; // r5
  unsigned int v13; // r1
  char v15; // r2
  char v16; // r3
  float v17; // [sp+0h] [bp-14h] BYREF
  float v18; // [sp+4h] [bp-10h]
  float v19; // [sp+8h] [bp-Ch]
  __int16 v20; // [sp+Ch] [bp-8h]
  char v21; // [sp+Eh] [bp-6h]

  if ( a4 == 1 )
  {
    v15 = a2[1];
    v16 = a2[2];
    LOBYTE(v20) = *a2;
    HIBYTE(v20) = v15;
    v21 = v16;
  }
  else
  {
    v7 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    if ( a4 )
    {
      v9 = a2;
      while ( 1 )
      {
        v10 = *a3;
        v11 = 0;
        v12 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v17 + v11) = (float)((float)(unsigned __int8)v9[v12] * v10) + v7;
          v11 += 4;
          ++v12;
          if ( v11 == 12 )
            break;
          v7 = *(float *)((char *)&v17 + v11);
        }
        v9 += 3;
        if ( v9 == &a2[3 * a4] )
          break;
        v7 = v17;
        ++a3;
      }
      v8 = v17;
    }
    else
    {
      v8 = 0.0;
    }
    LOBYTE(v20) = (unsigned int)v8;
    HIBYTE(v20) = (unsigned int)v18;
    v21 = (unsigned int)v19;
  }
  v13 = *(unsigned __int16 *)(a6 + 8);
  HIBYTE(v17) = -1;
  LOWORD(v17) = v20;
  BYTE2(v17) = v21;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v13,
           0,
           (unsigned __int8 *)&v17);
}


// ===== 621868 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [3],glitch::collada::animation_track::CMixin<uchar,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [3],glitch::video::SColor>>,-1,uchar>>>::getAddedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3],glitch::collada::animation_track::CMixin<unsigned char,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3],glitch::video::SColor>>,-1,unsigned char>>>::getAddedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        _BYTE *a5)
{
  float v6; // r7
  float v7; // r0
  _BYTE *v8; // r6
  float v9; // r10
  int v10; // r4
  int v11; // r5
  unsigned int result; // r0
  float v13; // [sp+4h] [bp-10h]
  float v14; // [sp+8h] [bp-Ch]
  float v15; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if ( a4 )
    {
      v8 = a2;
      while ( 1 )
      {
        v9 = *a3;
        v10 = 0;
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v10) = (float)((float)(unsigned __int8)v8[v11] * v9) + v6;
          v10 += 4;
          ++v11;
          if ( v10 == 12 )
            break;
          v6 = *(float *)((char *)&v13 + v10);
        }
        v8 += 3;
        if ( v8 == &a2[3 * a4] )
          break;
        v6 = v13;
        ++a3;
      }
      v7 = v13;
    }
    else
    {
      v7 = 0.0;
    }
    *a5 = (unsigned int)v7;
    a5[1] = (unsigned int)v14;
    result = (unsigned int)v15;
    a5[2] = (unsigned int)v15;
  }
  return result;
}


// ===== 621958 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>::applyBlendedValueEx(
        _BYTE *a1,
        float *a2,
        int a3,
        int a4)
{
  float v4; // r8
  float v6; // r0
  _BYTE *v7; // r7
  float v8; // r9
  int v9; // r5
  int v10; // r6
  char v12; // r2
  char v13; // r3
  float v15; // [sp+8h] [bp-1Ch]
  float v16; // [sp+Ch] [bp-18h]
  float v17; // [sp+10h] [bp-14h]
  _DWORD v18[4]; // [sp+14h] [bp-10h] BYREF

  v4 = 0.0;
  memset(v18, 0, 12);
  if ( a3 == 1 )
  {
    v12 = a1[1];
    v13 = a1[2];
    LOBYTE(v18[0]) = *a1;
    BYTE1(v18[0]) = v12;
    BYTE2(v18[0]) = v13;
  }
  else
  {
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if ( a3 )
    {
      v7 = a1;
      while ( 1 )
      {
        v8 = *a2;
        v9 = 0;
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v15 + v9) = (float)((float)(unsigned __int8)v7[v10] * v8) + v4;
          v9 += 4;
          ++v10;
          if ( v9 == 12 )
            break;
          v4 = *(float *)((char *)&v15 + v9);
        }
        v7 += 3;
        if ( v7 == &a1[3 * a3] )
          break;
        v4 = v15;
        ++a2;
      }
      v6 = v15;
    }
    else
    {
      v6 = 0.0;
    }
    LOBYTE(v18[0]) = (unsigned int)v6;
    BYTE1(v18[0]) = (unsigned int)v16;
    BYTE2(v18[0]) = (unsigned int)v17;
  }
  return glitch::collada::animation_track::CApplicator<glitch::collada::animation_track::SLightColor>::applyValueEx(
           a4,
           (unsigned __int8 *)v18);
}


// ===== 621a60 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::applyBlendedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 621a7c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>::applyAddedValueEx(
        _BYTE *a1,
        float *a2,
        int a3,
        int a4)
{
  float v4; // r8
  float v6; // r0
  _BYTE *v7; // r7
  float v8; // r9
  int v9; // r5
  int v10; // r6
  char v12; // r2
  char v13; // r3
  float v15; // [sp+8h] [bp-1Ch]
  float v16; // [sp+Ch] [bp-18h]
  float v17; // [sp+10h] [bp-14h]
  _DWORD v18[4]; // [sp+14h] [bp-10h] BYREF

  v4 = 0.0;
  memset(v18, 0, 12);
  if ( a3 == 1 )
  {
    v12 = a1[1];
    v13 = a1[2];
    LOBYTE(v18[0]) = *a1;
    BYTE1(v18[0]) = v12;
    BYTE2(v18[0]) = v13;
  }
  else
  {
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if ( a3 )
    {
      v7 = a1;
      while ( 1 )
      {
        v8 = *a2;
        v9 = 0;
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v15 + v9) = (float)((float)(unsigned __int8)v7[v10] * v8) + v4;
          v9 += 4;
          ++v10;
          if ( v9 == 12 )
            break;
          v4 = *(float *)((char *)&v15 + v9);
        }
        v7 += 3;
        if ( v7 == &a1[3 * a3] )
          break;
        v4 = v15;
        ++a2;
      }
      v6 = v15;
    }
    else
    {
      v6 = 0.0;
    }
    LOBYTE(v18[0]) = (unsigned int)v6;
    BYTE1(v18[0]) = (unsigned int)v16;
    BYTE2(v18[0]) = (unsigned int)v17;
  }
  return glitch::collada::animation_track::CApplicator<glitch::collada::animation_track::SLightColor>::applyValueEx(
           a4,
           (unsigned __int8 *)v18);
}


// ===== 621b84 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<uchar>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>>::applyAddedValue(
        int a1,
        _BYTE *a2,
        float *a3,
        int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CLightColorMixin<unsigned char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 621ba0 glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float *v7; // r6
  float v8; // r10
  float v9; // r9
  int v10; // r7
  float v11; // r8
  float v13; // r3
  float v14; // [sp+0h] [bp-Ch] BYREF
  float v15; // [sp+4h] [bp-8h]

  v5 = a3;
  v7 = a1;
  if ( a3 == 1 )
  {
    v13 = *a1;
    v15 = a1[1];
    v14 = v13;
  }
  else
  {
    if ( a3 )
    {
      v8 = 0.0;
      v10 = 0;
      v9 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v8 = v8 + (float)(v11 * *v7);
        --v5;
        v9 = v9 + (float)(v11 * v7[1]);
        v7 += 2;
      }
      while ( v5 );
    }
    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }
    v14 = v8;
    v15 = v9;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v14);
}


// ===== 621c64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 621c80 glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float *v7; // r6
  float v8; // r10
  float v9; // r9
  int v10; // r7
  float v11; // r8
  float v13; // r3
  float v14; // [sp+0h] [bp-Ch] BYREF
  float v15; // [sp+4h] [bp-8h]

  v5 = a3;
  v7 = a1;
  if ( a3 == 1 )
  {
    v13 = *a1;
    v15 = a1[1];
    v14 = v13;
  }
  else
  {
    if ( a3 )
    {
      v8 = 0.0;
      v10 = 0;
      v9 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v8 = v8 + (float)(v11 * *v7);
        --v5;
        v9 = v9 + (float)(v11 * v7[1]);
        v7 += 2;
      }
      while ( v5 );
    }
    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }
    v14 = v8;
    v15 = v9;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v14);
}


// ===== 621d44 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 621d60 glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float *v7; // r6
  float v8; // r10
  float v9; // r9
  int v10; // r7
  float v11; // r8
  float v13; // r3
  float v14; // [sp+0h] [bp-Ch] BYREF
  float v15; // [sp+4h] [bp-8h]

  v5 = a3;
  v7 = a1;
  if ( a3 == 1 )
  {
    v13 = *a1;
    v15 = a1[1];
    v14 = v13;
  }
  else
  {
    if ( a3 )
    {
      v8 = 0.0;
      v10 = 0;
      v9 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v8 = v8 + (float)(v11 * *v7);
        --v5;
        v9 = v9 + (float)(v11 * v7[1]);
        v7 += 2;
      }
      while ( v5 );
    }
    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }
    v14 = v8;
    v15 = v9;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v14);
}


// ===== 621e24 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 621e40 glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float *v7; // r6
  float v8; // r10
  float v9; // r9
  int v10; // r7
  float v11; // r8
  float v13; // r3
  float v14; // [sp+0h] [bp-Ch] BYREF
  float v15; // [sp+4h] [bp-8h]

  v5 = a3;
  v7 = a1;
  if ( a3 == 1 )
  {
    v13 = *a1;
    v15 = a1[1];
    v14 = v13;
  }
  else
  {
    if ( a3 )
    {
      v8 = 0.0;
      v10 = 0;
      v9 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v8 = v8 + (float)(v11 * *v7);
        --v5;
        v9 = v9 + (float)(v11 * v7[1]);
        v7 += 2;
      }
      while ( v5 );
    }
    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }
    v14 = v8;
    v15 = v9;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v14);
}


// ===== 621f04 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 621f20 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getBlendedValue(
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


// ===== 621fc4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getBlendedValue(
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


// ===== 622068 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::getAddedValue(
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


// ===== 62210c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,1,float>>>::getAddedValue(
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


// ===== 6221b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getAddedValue(
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


// ===== 622254 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>,float,2,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>,float,2,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v6; // r3
  float v7; // r1
  int v8; // r6
  float v9; // r0
  float v10; // r7
  float result; // r0
  float v12; // [sp+0h] [bp-8h]

  v12 = 1.0 - a4;
  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v7 = *(float *)(v6 + 8 * a2);
  v8 = v6 + 8 * a2;
  v9 = v12 * *(float *)(v8 + 4);
  v8 += 4;
  v10 = v9 + 0.0;
  result = (float)((float)((float)(1.0 - a4) * v7) + 0.0) + (float)(a4 * *(float *)(v8 + 4));
  a5[1] = v10 + (float)(a4 * *(float *)(v8 + 8));
  *a5 = result;
  return result;
}


// ===== 622308 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>,float,2,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 622324 glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  float v7[2]; // [sp+8h] [bp-8h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>,float,2,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           v7);
}


// ===== 622358 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,-1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 62237c glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float *v7; // r6
  float v8; // r10
  float v9; // r9
  int v10; // r7
  float v11; // r8
  float v13; // r3
  float v14; // [sp+0h] [bp-Ch] BYREF
  float v15; // [sp+4h] [bp-8h]

  v5 = a3;
  v7 = a1;
  if ( a3 == 1 )
  {
    v13 = *a1;
    v15 = a1[1];
    v14 = v13;
  }
  else
  {
    if ( a3 )
    {
      v8 = 0.0;
      v10 = 0;
      v9 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v8 = v8 + (float)(v11 * *v7);
        --v5;
        v9 = v9 + (float)(v11 * v7[1]);
        v7 += 2;
      }
      while ( v5 );
    }
    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }
    v14 = v8;
    v15 = v9;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v14);
}


// ===== 622440 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62245c glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float *v7; // r6
  float v8; // r10
  float v9; // r9
  int v10; // r7
  float v11; // r8
  float v13; // r3
  float v14; // [sp+0h] [bp-Ch] BYREF
  float v15; // [sp+4h] [bp-8h]

  v5 = a3;
  v7 = a1;
  if ( a3 == 1 )
  {
    v13 = *a1;
    v15 = a1[1];
    v14 = v13;
  }
  else
  {
    if ( a3 )
    {
      v8 = 0.0;
      v10 = 0;
      v9 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v8 = v8 + (float)(v11 * *v7);
        --v5;
        v9 = v9 + (float)(v11 * v7[1]);
        v7 += 2;
      }
      while ( v5 );
    }
    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }
    v14 = v8;
    v15 = v9;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v14);
}


// ===== 622520 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [2],glitch::collada::animation_track::CMixin<float,2,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2],float [2]>>,0,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62253c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::applyValue(
        int a1,
        unsigned __int8 *a2,
        _DWORD *a3)
{
  unsigned __int8 v3; // r3
  unsigned __int8 v4; // r12
  unsigned __int8 v5; // r0
  unsigned __int8 v6; // r1
  unsigned __int8 v8[8]; // [sp+4h] [bp-8h] BYREF

  v3 = a2[2];
  v4 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  v8[0] = v5;
  v8[2] = v3;
  v8[3] = v4;
  v8[1] = v6;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a3,
           0,
           0,
           v8);
}


// ===== 622584 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+0h] [bp-8h] BYREF
  __int16 v9; // [sp+2h] [bp-6h]
  _BYTE v10[2]; // [sp+4h] [bp-4h] BYREF
  __int16 v11; // [sp+6h] [bp-2h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<0,unsigned char>>::getKeyBasedValueEx(
    a2,
    a3,
    v10);
  v6 = *(unsigned __int16 *)(a5 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a4,
           v6,
           0,
           v8);
}


// ===== 6225e0 glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+8h] [bp-Ch] BYREF
  __int16 v9; // [sp+Ah] [bp-Ah]
  _BYTE v10[2]; // [sp+Ch] [bp-8h] BYREF
  __int16 v11; // [sp+Eh] [bp-6h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<0,unsigned char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v10);
  v6 = *(unsigned __int16 *)(a6 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v6,
           0,
           v8);
}


// ===== 622634 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 622658 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::applyAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 622798 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::applyValue(
        int a1,
        unsigned __int8 *a2,
        _DWORD *a3)
{
  unsigned __int8 v3; // r3
  unsigned __int8 v4; // r12
  unsigned __int8 v5; // r0
  unsigned __int8 v6; // r1
  unsigned __int8 v8[8]; // [sp+4h] [bp-8h] BYREF

  v3 = a2[2];
  v4 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  v8[0] = v5;
  v8[2] = v3;
  v8[3] = v4;
  v8[1] = v6;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a3,
           0,
           0,
           v8);
}


// ===== 6227e0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+0h] [bp-8h] BYREF
  __int16 v9; // [sp+2h] [bp-6h]
  _BYTE v10[2]; // [sp+4h] [bp-4h] BYREF
  __int16 v11; // [sp+6h] [bp-2h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<1,unsigned char>>::getKeyBasedValueEx(
    a2,
    a3,
    v10);
  v6 = *(unsigned __int16 *)(a5 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a4,
           v6,
           0,
           v8);
}


// ===== 62283c glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+8h] [bp-Ch] BYREF
  __int16 v9; // [sp+Ah] [bp-Ah]
  _BYTE v10[2]; // [sp+Ch] [bp-8h] BYREF
  __int16 v11; // [sp+Eh] [bp-6h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<1,unsigned char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v10);
  v6 = *(unsigned __int16 *)(a6 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v6,
           0,
           v8);
}


// ===== 622890 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 6228b4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::applyValue(
        int a1,
        unsigned __int8 *a2,
        _DWORD *a3)
{
  unsigned __int8 v3; // r3
  unsigned __int8 v4; // r12
  unsigned __int8 v5; // r0
  unsigned __int8 v6; // r1
  unsigned __int8 v8[8]; // [sp+4h] [bp-8h] BYREF

  v3 = a2[2];
  v4 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  v8[0] = v5;
  v8[2] = v3;
  v8[3] = v4;
  v8[1] = v6;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a3,
           0,
           0,
           v8);
}


// ===== 6228fc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+0h] [bp-8h] BYREF
  __int16 v9; // [sp+2h] [bp-6h]
  _BYTE v10[2]; // [sp+4h] [bp-4h] BYREF
  __int16 v11; // [sp+6h] [bp-2h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<2,unsigned char>>::getKeyBasedValueEx(
    a2,
    a3,
    v10);
  v6 = *(unsigned __int16 *)(a5 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a4,
           v6,
           0,
           v8);
}


// ===== 622958 glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+8h] [bp-Ch] BYREF
  __int16 v9; // [sp+Ah] [bp-Ah]
  _BYTE v10[2]; // [sp+Ch] [bp-8h] BYREF
  __int16 v11; // [sp+Eh] [bp-6h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<2,unsigned char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v10);
  v6 = *(unsigned __int16 *)(a6 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v6,
           0,
           v8);
}


// ===== 6229ac glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 6229d0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::applyValue(
        int a1,
        unsigned __int8 *a2,
        _DWORD *a3)
{
  unsigned __int8 v3; // r3
  unsigned __int8 v4; // r12
  unsigned __int8 v5; // r0
  unsigned __int8 v6; // r1
  unsigned __int8 v8[8]; // [sp+4h] [bp-8h] BYREF

  v3 = a2[2];
  v4 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  v8[0] = v5;
  v8[2] = v3;
  v8[3] = v4;
  v8[1] = v6;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a3,
           0,
           0,
           v8);
}


// ===== 622a18 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+0h] [bp-8h] BYREF
  __int16 v9; // [sp+2h] [bp-6h]
  _BYTE v10[2]; // [sp+4h] [bp-4h] BYREF
  __int16 v11; // [sp+6h] [bp-2h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<3,unsigned char>>::getKeyBasedValueEx(
    a2,
    a3,
    v10);
  v6 = *(unsigned __int16 *)(a5 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a4,
           v6,
           0,
           v8);
}


// ===== 622a74 glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+8h] [bp-Ch] BYREF
  __int16 v9; // [sp+Ah] [bp-Ah]
  _BYTE v10[2]; // [sp+Ch] [bp-8h] BYREF
  __int16 v11; // [sp+Eh] [bp-6h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultValues<3,unsigned char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v10);
  v6 = *(unsigned __int16 *)(a6 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v6,
           0,
           v8);
}


// ===== 622ac8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 622aec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::applyValue(
        int a1,
        unsigned __int8 *a2,
        _DWORD *a3)
{
  unsigned __int8 v3; // r3
  unsigned __int8 v4; // r12
  unsigned __int8 v5; // r0
  unsigned __int8 v6; // r1
  unsigned __int8 v8[8]; // [sp+4h] [bp-8h] BYREF

  v3 = a2[2];
  v4 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  v8[0] = v5;
  v8[2] = v3;
  v8[3] = v4;
  v8[1] = v6;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a3,
           0,
           0,
           v8);
}


// ===== 622b34 glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4)
{
  int v7; // r3
  unsigned int v8; // r1
  unsigned __int8 v9; // r12
  unsigned __int8 v11[4]; // [sp+0h] [bp-8h] BYREF
  unsigned __int8 v12; // [sp+4h] [bp-4h]
  unsigned __int8 v13; // [sp+5h] [bp-3h]
  unsigned __int8 v14; // [sp+6h] [bp-2h]
  unsigned __int8 v15; // [sp+7h] [bp-1h]

  v7 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v8 = *(unsigned __int16 *)(a4 + 8);
  v12 = *(_BYTE *)(v7 + 4 * a2);
  v13 = *(_BYTE *)(v7 + 4 * a2 + 1);
  v14 = *(_BYTE *)(v7 + 4 * a2 + 2);
  v9 = *(_BYTE *)(v7 + 4 * a2 + 3);
  v11[0] = v12;
  v11[3] = v9;
  v11[1] = v13;
  v11[2] = v14;
  v15 = v9;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a3,
           v8,
           0,
           v11);
}


// ===== 622bb4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 622bc8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622be0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622bf8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622c10 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622c28 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622c40 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622c58 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622c70 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 622c88 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 622ca0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 622cb8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 622cd0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 622ce8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int *a3)
{
  int v4; // r4
  int v5; // r3
  int v6; // r1
  int v7; // r4
  int v8; // r3
  int v10; // [sp+4h] [bp-10h] BYREF
  int v11; // [sp+8h] [bp-Ch]
  int v12; // [sp+Ch] [bp-8h]

  v12 = 0;
  v10 = 0;
  v11 = 0;
  v4 = 12 * a2;
  v5 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v6 = *(_DWORD *)(v5 + v4);
  v7 = v5 + v4;
  v8 = *a3;
  v10 = v6;
  v11 = *(_DWORD *)(v7 + 4);
  v12 = *(_DWORD *)(v7 + 8);
  return (*(int (__fastcall **)(int *, int *))(v8 + 164))(a3, &v10);
}


// ===== 622d58 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int *a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 622d6c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 622db0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 622dc4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 622e08 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 622e1c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 622e60 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 622e74 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 622eb8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 622edc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,short>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 622f20 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 622f34 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 622f78 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 622f9c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,char>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 622fe0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 622ff4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 623038 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62305c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 6230a0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6230b4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 6230f8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62311c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,short>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 623160 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 623174 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 6231b8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6231dc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,short>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 623220 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 623234 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 623278 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62329c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,char>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 6232e0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6232f4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 623338 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62335c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 6233a0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6233b4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 6233f8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 62340c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 623450 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623474 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,short>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 6234b8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6234cc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 623510 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623534 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,char>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 623578 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 62358c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<0,char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 6235d0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6235f4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 623638 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 62364c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 623690 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6236b4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,short>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 6236f8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 62370c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 623750 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623774 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,char>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 6237b8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6237cc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 623810 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623834 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 623878 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 62388c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 6238d0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6238f4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 62390c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 623924 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 62393c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 148))(a3);
}


// ===== 623954 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int *a3)
{
  int v4; // r4
  int v5; // r3
  int v6; // r1
  int v7; // r4
  int v8; // r3
  int v10; // [sp+4h] [bp-10h] BYREF
  int v11; // [sp+8h] [bp-Ch]
  int v12; // [sp+Ch] [bp-8h]

  v12 = 0;
  v10 = 0;
  v11 = 0;
  v4 = 12 * a2;
  v5 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v6 = *(_DWORD *)(v5 + v4);
  v7 = v5 + v4;
  v8 = *a3;
  v10 = v6;
  v11 = *(_DWORD *)(v7 + 4);
  v12 = *(_DWORD *)(v7 + 8);
  return (*(int (__fastcall **)(int *, int *))(v8 + 148))(a3, &v10);
}


// ===== 6239c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int *a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 6239d8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 148))(a3, v5);
}


// ===== 623a1c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 623a30 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,char>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 623a74 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 623a88 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<1,char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 623acc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623af0 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
    a1,
    a2,
    v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 623b34 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 623b48 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 623b8c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623bb0 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,short>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 623bf4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 623c08 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 623c4c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623c70 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3)
{
  _DWORD v5[4]; // [sp+4h] [bp-10h] BYREF

  memset(v5, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,char>>::getKeyBasedValueEx(
    a1,
    a2,
    (int)v5);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a3 + 164))(a3, v5);
}


// ===== 623cb4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4);
}


// ===== 623cc8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  _DWORD v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>,float,3,glitch::collada::animation_track::SUseDefaultValues<2,char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    (int)v6);
  return (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 623d0c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 623d30 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623d48 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623d60 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623d78 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623d90 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623da8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623dc0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623dd8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyValue(
        int a1,
        int a2,
        int a3)
{
  return (*(int (__fastcall **)(int))(*(_DWORD *)a3 + 164))(a3);
}


// ===== 623df0 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyAddedValueEx(
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


// ===== 623ee8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 623f04 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getBlendedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 623ff8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getBlendedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 6240ec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::applyBlendedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6241e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::applyAddedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6242e4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyBlendedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6243e0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::applyAddedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6244dc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::applyBlendedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6245d8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::applyAddedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6246d4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::getBlendedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 6247c8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::getBlendedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 6248bc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getBlendedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 6249b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getAddedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 624aa4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getAddedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 624b98 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::getAddedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,2,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 624c8c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::getAddedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,3,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 624d80 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getAddedValue(void *,float *,int,void *) =====
float *__fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  float v5; // r6
  float *v6; // r8
  int v7; // r9
  float v8; // r10
  int i; // r5
  float *result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // r0
  float v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  int v16; // [sp+8h] [bp-Ch]
  float v17; // [sp+Ch] [bp-8h]

  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return a5;
  }
  else
  {
    v5 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v16 = 0;
    v17 = 0.0;
    if ( a4 )
    {
      v6 = a2;
      v7 = 0;
      while ( 1 )
      {
        v8 = *(float *)(a3 + 4 * v7);
        for ( i = 0; ; v5 = *(float *)((char *)&v14 + i * 4) )
        {
          *(float *)((char *)&v14 + i * 4) = (float)(v8 * v6[i]) + v5;
          if ( ++i == 4 )
            break;
        }
        ++v7;
        v6 += 4;
        if ( v7 == a4 )
          break;
        v5 = v14;
      }
      v13 = v14;
      v12 = v15;
      v11 = v16;
      v5 = v17;
    }
    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
    }
    *a5 = v13;
    result = a5;
    *((_DWORD *)a5 + 1) = v12;
    a5[3] = v5;
    *((_DWORD *)a5 + 2) = v11;
  }
  return result;
}


// ===== 624e74 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>,float,4,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
int __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>,float,4,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  float v5; // r5
  int v6; // r10
  int v7; // r7
  float v8; // r8
  int i; // r4
  int result; // r0
  int v11; // r2
  int v12; // r1
  float v13; // [sp+0h] [bp-1Ch]
  int v14; // [sp+4h] [bp-18h]
  int v15; // [sp+8h] [bp-14h]
  int v16; // [sp+Ch] [bp-10h]
  float v17[3]; // [sp+10h] [bp-Ch]

  v17[1] = a4;
  v17[0] = 1.0 - a4;
  v5 = 0.0;
  v6 = 0;
  v7 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4) + 16 * a2;
  v13 = 0.0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while ( 1 )
  {
    v8 = v17[v6];
    for ( i = 0; ; v5 = *(float *)((char *)&v13 + i) )
    {
      *(float *)((char *)&v13 + i) = (float)(v8 * *(float *)(v7 + i)) + v5;
      i += 4;
      if ( i == 16 )
        break;
    }
    ++v6;
    v7 += 16;
    if ( v6 == 2 )
      break;
    v5 = v13;
  }
  result = v14;
  v11 = v15;
  v12 = v16;
  *a5 = v13;
  *((_DWORD *)a5 + 1) = result;
  *((_DWORD *)a5 + 3) = v12;
  *((_DWORD *)a5 + 2) = v11;
  return result;
}


// ===== 624f40 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>,float,4,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 624f5c glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  float v7[4]; // [sp+8h] [bp-10h] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>,float,4,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           v7);
}


// ===== 624f90 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,-1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 624fb4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyAddedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6250b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,0,float>>>::applyBlendedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6251ac glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4],glitch::collada::animation_track::CMixin<float,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4],float [4]>>,1,float>>>::applyAddedValue(
        int a1,
        _DWORD *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  float v6; // r6
  _DWORD *v7; // r8
  int v8; // r9
  float v9; // r10
  int i; // r5
  float v12; // r0
  float *v13; // r3
  int v14; // r1
  float v15; // r2
  int v16; // r3
  int v17; // r3
  int v18; // r2
  float v19; // r1
  float v20; // [sp+0h] [bp-24h]
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  float v23; // [sp+Ch] [bp-18h]
  float v24; // [sp+10h] [bp-14h] BYREF
  int v25; // [sp+14h] [bp-10h]
  int v26; // [sp+18h] [bp-Ch]
  float v27; // [sp+1Ch] [bp-8h]

  if ( a4 == 1 )
  {
    v13 = (float *)(a2 + 1);
    v12 = *(float *)a2;
    v14 = a2[1];
    v15 = v13[2];
    v16 = *((_DWORD *)v13 + 1);
    v24 = v12;
    v25 = v14;
    v26 = v16;
    v27 = v15;
  }
  else
  {
    v6 = 0.0;
    v20 = 0.0;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    if ( a4 )
    {
      v7 = a2;
      v8 = 0;
      while ( 1 )
      {
        v9 = *(float *)(a3 + 4 * v8);
        for ( i = 0; ; v6 = *(float *)((char *)&v20 + i * 4) )
        {
          *(float *)((char *)&v20 + i * 4) = (float)(v9 * *(float *)&v7[i]) + v6;
          if ( ++i == 4 )
            break;
        }
        ++v8;
        v7 += 4;
        if ( v8 == a4 )
          break;
        v6 = v20;
      }
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v6 = v23;
    }
    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
    }
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v6;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           &v24);
}


// ===== 6252a8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::applyBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 6253e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::applyAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 625528 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::applyBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 625668 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::applyAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 6257a8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::applyBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 6258e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::applyAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 625a28 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::applyBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 625b68 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::applyAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 625ca8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::applyBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  int v6; // r4
  float v7; // r7
  int v8; // r11
  int v9; // r5
  float v10; // r10
  int v11; // r6
  unsigned int v12; // r1
  char v14; // r1
  char v15; // r2
  char v16; // r3
  float v17; // r0
  float v19; // [sp+Ch] [bp-18h] BYREF
  float v20; // [sp+10h] [bp-14h]
  float v21; // [sp+14h] [bp-10h]
  float v22; // [sp+18h] [bp-Ch]
  float v23; // [sp+1Ch] [bp-8h]

  v6 = a4;
  if ( a4 == 1 )
  {
    v14 = a2[1];
    v15 = a2[3];
    v16 = a2[2];
    LOBYTE(v23) = *a2;
    BYTE1(v23) = v14;
    BYTE2(v23) = v16;
    HIBYTE(v23) = v15;
  }
  else
  {
    v7 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if ( a4 )
    {
      v8 = 0;
      while ( 1 )
      {
        v9 = 0;
        v10 = *(float *)(a3 + v8);
        v11 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v19 + v9) = (float)((float)(unsigned __int8)a2[v8 + v11] * v10) + v7;
          v9 += 4;
          ++v11;
          if ( v9 == 16 )
            break;
          v7 = *(float *)((char *)&v19 + v9);
        }
        --v6;
        v8 += 4;
        if ( !v6 )
          break;
        v7 = v19;
      }
      v17 = v19;
    }
    else
    {
      v17 = 0.0;
    }
    LOBYTE(v23) = (unsigned int)v17;
    BYTE1(v23) = (unsigned int)v20;
    BYTE2(v23) = (unsigned int)v21;
    HIBYTE(v23) = (unsigned int)v22;
  }
  v12 = *(unsigned __int16 *)(a6 + 8);
  v19 = v23;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v12,
           0,
           (unsigned __int8 *)&v19);
}


// ===== 625de8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::getBlendedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::getBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 625efc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::getBlendedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::getBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 626010 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::getBlendedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::getBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 626124 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::getBlendedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::getBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 626238 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::getBlendedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::getBlendedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 62634c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,0,uchar>>>::getAddedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,0,unsigned char>>>::getAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 626460 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,1,uchar>>>::getAddedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,1,unsigned char>>>::getAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 626574 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,2,uchar>>>::getAddedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,2,unsigned char>>>::getAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 626688 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,3,uchar>>>::getAddedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,3,unsigned char>>>::getAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 62679c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::getAddedValue(void *,float *,int,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::getAddedValue(
        int a1,
        _BYTE *a2,
        int a3,
        int a4,
        _BYTE *a5)
{
  int v5; // r4
  float v6; // r7
  int v7; // r11
  int v8; // r5
  float v9; // r10
  int v10; // r6
  unsigned int result; // r0
  float v12; // r0
  float v13; // [sp+8h] [bp-14h]
  float v14; // [sp+Ch] [bp-10h]
  float v15; // [sp+10h] [bp-Ch]
  float v16; // [sp+14h] [bp-8h]

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
    a5[3] = a2[3];
    return (unsigned int)a5;
  }
  else
  {
    v6 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if ( a4 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = 0;
        v9 = *(float *)(a3 + v7);
        v10 = 0;
        while ( 1 )
        {
          *(float *)((char *)&v13 + v8) = (float)((float)(unsigned __int8)a2[v7 + v10] * v9) + v6;
          v8 += 4;
          ++v10;
          if ( v8 == 16 )
            break;
          v6 = *(float *)((char *)&v13 + v8);
        }
        --v5;
        v7 += 4;
        if ( !v5 )
          break;
        v6 = v13;
      }
      v12 = v13;
    }
    else
    {
      v12 = 0.0;
    }
    *a5 = (unsigned int)v12;
    a5[1] = (unsigned int)v14;
    a5[2] = (unsigned int)v15;
    result = (unsigned int)v16;
    a5[3] = (unsigned int)v16;
  }
  return result;
}


// ===== 6268b0 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>,uchar,4,glitch::collada::animation_track::SUseDefaultLerp<uchar>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultLerp<unsigned char>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _BYTE *a5)
{
  float v5; // r6
  int v6; // r8
  int v7; // r11
  int v8; // r4
  float v9; // r10
  int v10; // r5
  unsigned int result; // r0
  float v12; // [sp+8h] [bp-1Ch]
  float v13; // [sp+Ch] [bp-18h]
  float v14; // [sp+10h] [bp-14h]
  float v15; // [sp+14h] [bp-10h]
  float v16[3]; // [sp+18h] [bp-Ch]

  v16[1] = a4;
  v16[0] = 1.0 - a4;
  v5 = 0.0;
  v6 = 0;
  v7 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4) + 4 * a2;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  while ( 1 )
  {
    v8 = 0;
    v9 = v16[v6];
    v10 = 0;
    while ( 1 )
    {
      *(float *)((char *)&v12 + v8) = (float)((float)*(unsigned __int8 *)(v7 + v6 * 4 + v10) * v9) + v5;
      v8 += 4;
      ++v10;
      if ( v8 == 16 )
        break;
      v5 = *(float *)((char *)&v12 + v8);
    }
    if ( ++v6 == 2 )
      break;
    v5 = v12;
  }
  *a5 = (unsigned int)v12;
  a5[1] = (unsigned int)v13;
  a5[2] = (unsigned int)v14;
  result = (unsigned int)v15;
  a5[3] = (unsigned int)v15;
  return result;
}


// ===== 6269a4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
unsigned int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _BYTE *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultLerp<unsigned char>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6269c0 glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  unsigned int v6; // r1
  unsigned __int8 v8[2]; // [sp+8h] [bp-Ch] BYREF
  __int16 v9; // [sp+Ah] [bp-Ah]
  _BYTE v10[2]; // [sp+Ch] [bp-8h] BYREF
  __int16 v11; // [sp+Eh] [bp-6h]

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>,unsigned char,4,glitch::collada::animation_track::SUseDefaultLerp<unsigned char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v10);
  v6 = *(unsigned __int16 *)(a6 + 8);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
           a5,
           v6,
           0,
           v8);
}


// ===== 626a14 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<uchar [4],glitch::collada::animation_track::CMixin<uchar,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<uchar [4],glitch::video::SColor>>,-1,uchar>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<unsigned char [4],glitch::collada::animation_track::CMixin<unsigned char,4,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4],glitch::video::SColor>>,-1,unsigned char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 626a38 glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float v6; // r10
  float v7; // r11
  float v8; // r9
  float *v9; // r6
  int v10; // r8
  float v11; // r7
  float v13; // r2
  float v14; // r3
  float v16; // [sp+Ch] [bp-10h] BYREF
  float v17; // [sp+10h] [bp-Ch]
  float v18; // [sp+14h] [bp-8h]

  v5 = a3;
  if ( a3 == 1 )
  {
    v13 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    v17 = v13;
    v18 = v14;
  }
  else
  {
    if ( a3 )
    {
      v6 = 0.0;
      v9 = a1;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    v16 = v6;
    v17 = v7;
    v18 = v8;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v16);
}


// ===== 626b30 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 626b4c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 626c30 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 626d14 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 626df8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 626edc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 626fc0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 6270a4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 627188 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62726c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 627350 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 627434 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 627518 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 6275fc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 6276e0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 6277c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 6278a8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62798c glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>::applyBlendedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float v6; // r10
  float v7; // r11
  float v8; // r9
  float *v9; // r6
  int v10; // r8
  float v11; // r7
  float v13; // r2
  float v14; // r3
  float v16; // [sp+Ch] [bp-10h] BYREF
  float v17; // [sp+10h] [bp-Ch]
  float v18; // [sp+14h] [bp-8h]

  v5 = a3;
  if ( a3 == 1 )
  {
    v13 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    v17 = v13;
    v18 = v14;
  }
  else
  {
    if ( a3 )
    {
      v6 = 0.0;
      v9 = a1;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    v16 = v6;
    v17 = v7;
    v18 = v8;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v16);
}


// ===== 627a84 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 627aa0 glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float v6; // r10
  float v7; // r11
  float v8; // r9
  float *v9; // r6
  int v10; // r8
  float v11; // r7
  float v13; // r2
  float v14; // r3
  float v16; // [sp+Ch] [bp-10h] BYREF
  float v17; // [sp+10h] [bp-Ch]
  float v18; // [sp+14h] [bp-8h]

  v5 = a3;
  if ( a3 == 1 )
  {
    v13 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    v17 = v13;
    v18 = v14;
  }
  else
  {
    if ( a3 )
    {
      v6 = 0.0;
      v9 = a1;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    v16 = v6;
    v17 = v7;
    v18 = v8;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v16);
}


// ===== 627b98 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 627bb4 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v8; // r3
  int v9; // r10
  int v10; // r11
  int v11; // r2
  int v12; // r8
  unsigned int v13; // r5
  float *v14; // r7
  int v15; // r6
  float v16; // r0
  float v17; // r6
  float v18; // r5
  float result; // r0
  float v20[6]; // [sp+Ch] [bp-30h] BYREF
  _DWORD v21[3]; // [sp+24h] [bp-18h] BYREF
  float v22; // [sp+30h] [bp-Ch]
  float v23; // [sp+34h] [bp-8h]

  glitch::collada::animation_track::CInputReader<short,float,3>::CInputReader(v21, this);
  v22 = 1.0 - a4;
  v23 = a4;
  v8 = *(_DWORD *)(v21[0] + 4);
  v9 = v21[1];
  v10 = v8 + 6 * a3;
  v11 = v8 + 6 * a2;
  v12 = v21[2];
  v13 = 0;
  v14 = v20;
  v15 = 0;
  do
  {
    v20[v13 / 4] = (float)((float)*(__int16 *)(v11 + v15) * *(float *)(v9 + v13)) + *(float *)(v12 + v13);
    v16 = (float)*(__int16 *)(v10 + v15);
    v15 += 2;
    v14[3] = (float)(v16 * *(float *)(v9 + v13)) + *(float *)(v12 + v13);
    v13 += 4;
    ++v14;
  }
  while ( v15 != 6 );
  v17 = (float)(a4 * v20[4]) + (float)((float)(v22 * v20[1]) + 0.0);
  v18 = (float)(a4 * v20[5]) + (float)((float)(v22 * v20[2]) + 0.0);
  result = (float)(a4 * v20[3]) + (float)((float)(v22 * v20[0]) + 0.0);
  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}


// ===== 627d14 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 627d58 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 627d7c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *this,
        int a3,
        int a4,
        int a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
           this,
           a3,
           a4,
           *(float *)&a5,
           a6);
}


// ===== 627d98 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v8; // r3
  int v9; // r2
  int v10; // r10
  int v11; // r8
  unsigned int v12; // r5
  int v13; // r11
  float *v14; // r7
  int v15; // r6
  float v16; // r0
  float v17; // r6
  float v18; // r5
  float result; // r0
  float v20[6]; // [sp+Ch] [bp-30h] BYREF
  _DWORD v21[3]; // [sp+24h] [bp-18h] BYREF
  float v22; // [sp+30h] [bp-Ch]
  float v23; // [sp+34h] [bp-8h]

  glitch::collada::animation_track::CInputReader<char,float,3>::CInputReader(v21, this);
  v22 = 1.0 - a4;
  v23 = a4;
  v8 = *(_DWORD *)(v21[0] + 4);
  v9 = 3 * a2;
  v10 = v21[1];
  v11 = v21[2];
  v12 = 0;
  v13 = v8 + 3 * a3;
  v14 = v20;
  v15 = 0;
  do
  {
    v20[v12 / 4] = (float)((float)*(char *)(v8 + v9 + v15) * *(float *)(v10 + v12)) + *(float *)(v11 + v12);
    v16 = (float)*(char *)(v13 + v15++);
    v14[3] = (float)(v16 * *(float *)(v10 + v12)) + *(float *)(v11 + v12);
    v12 += 4;
    ++v14;
  }
  while ( v15 != 3 );
  v17 = (float)(a4 * v20[4]) + (float)((float)(v22 * v20[1]) + 0.0);
  v18 = (float)(a4 * v20[5]) + (float)((float)(v22 * v20[2]) + 0.0);
  result = (float)(a4 * v20[3]) + (float)((float)(v22 * v20[0]) + 0.0);
  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}


// ===== 627efc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 627f40 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 627f64 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *this,
        int a3,
        int a4,
        int a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
           this,
           a3,
           a4,
           *(float *)&a5,
           a6);
}


// ===== 627f80 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v8; // r3
  int v9; // r2
  int v10; // r10
  int v11; // r8
  unsigned int v12; // r5
  int v13; // r11
  float *v14; // r7
  int v15; // r6
  float v16; // r0
  float v17; // r6
  float v18; // r5
  float result; // r0
  float v20[6]; // [sp+Ch] [bp-30h] BYREF
  _DWORD v21[3]; // [sp+24h] [bp-18h] BYREF
  float v22; // [sp+30h] [bp-Ch]
  float v23; // [sp+34h] [bp-8h]

  glitch::collada::animation_track::CInputReader<char,float,3>::CInputReader(v21, this);
  v22 = 1.0 - a4;
  v23 = a4;
  v8 = *(_DWORD *)(v21[0] + 4);
  v9 = 3 * a2;
  v10 = v21[1];
  v11 = v21[2];
  v12 = 0;
  v13 = v8 + 3 * a3;
  v14 = v20;
  v15 = 0;
  do
  {
    v20[v12 / 4] = (float)((float)*(char *)(v8 + v9 + v15) * *(float *)(v10 + v12)) + *(float *)(v11 + v12);
    v16 = (float)*(char *)(v13 + v15++);
    v14[3] = (float)(v16 * *(float *)(v10 + v12)) + *(float *)(v11 + v12);
    v12 += 4;
    ++v14;
  }
  while ( v15 != 3 );
  v17 = (float)(a4 * v20[4]) + (float)((float)(v22 * v20[1]) + 0.0);
  v18 = (float)(a4 * v20[5]) + (float)((float)(v22 * v20[2]) + 0.0);
  result = (float)(a4 * v20[3]) + (float)((float)(v22 * v20[0]) + 0.0);
  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}


// ===== 6280e4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 628128 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62814c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *this,
        int a3,
        int a4,
        int a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>,float,3,glitch::collada::animation_track::SUseDefaultLerp<char>>::getKeyBasedValueEx(
           this,
           a3,
           a4,
           *(float *)&a5,
           a6);
}


// ===== 628168 glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>::applyAddedValueEx(
        float *a1,
        int a2,
        int a3,
        _DWORD *a4,
        int a5)
{
  int v5; // r4
  float v6; // r10
  float v7; // r11
  float v8; // r9
  float *v9; // r6
  int v10; // r8
  float v11; // r7
  float v13; // r2
  float v14; // r3
  float v16; // [sp+Ch] [bp-10h] BYREF
  float v17; // [sp+10h] [bp-Ch]
  float v18; // [sp+14h] [bp-8h]

  v5 = a3;
  if ( a3 == 1 )
  {
    v13 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    v17 = v13;
    v18 = v14;
  }
  else
  {
    if ( a3 )
    {
      v6 = 0.0;
      v9 = a1;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a2 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    v16 = v6;
    v17 = v7;
    v18 = v8;
  }
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
           a4,
           *(unsigned __int16 *)(a5 + 8),
           0,
           &v16);
}


// ===== 628260 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        _DWORD *a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 62827c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyBlendedValueEx(
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


// ===== 628374 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 628390 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyAddedValueEx(
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


// ===== 628488 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6284a4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyBlendedValueEx(
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


// ===== 62859c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6285b8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyAddedValueEx(
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


// ===== 6286b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6286cc glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v5; // r7
  int v6; // r3
  float v7; // r1
  float *v8; // r7
  float v9; // r0
  float *v10; // r5
  float v11; // r10
  float v12; // r7
  float result; // r0
  float v14; // [sp+0h] [bp-8h]

  v14 = 1.0 - a4;
  v5 = 12 * a2;
  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v7 = *(float *)(v6 + v5);
  v8 = (float *)(v6 + v5);
  v9 = v14 * v8[1];
  v10 = ++v8 + 1;
  v11 = (float)(v9 + 0.0) + (float)(a4 * v8[3]);
  v12 = (float)(a4 * v8[4]) + (float)((float)((float)(1.0 - a4) * v8[1]) + 0.0);
  result = (float)((float)(v14 * v7) + 0.0) + (float)(a4 * v10[1]);
  *a5 = result;
  a5[1] = v11;
  a5[2] = v12;
  return result;
}


// ===== 6287cc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 628810 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 628834 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 628850 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v5; // r7
  int v6; // r3
  float v7; // r1
  float *v8; // r7
  float v9; // r0
  float *v10; // r5
  float v11; // r10
  float v12; // r7
  float result; // r0
  float v14; // [sp+0h] [bp-8h]

  v14 = 1.0 - a4;
  v5 = 12 * a2;
  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v7 = *(float *)(v6 + v5);
  v8 = (float *)(v6 + v5);
  v9 = v14 * v8[1];
  v10 = ++v8 + 1;
  v11 = (float)(v9 + 0.0) + (float)(a4 * v8[3]);
  v12 = (float)(a4 * v8[4]) + (float)((float)((float)(1.0 - a4) * v8[1]) + 0.0);
  result = (float)((float)(v14 * v7) + 0.0) + (float)(a4 * v10[1]);
  *a5 = result;
  a5[1] = v11;
  a5[2] = v12;
  return result;
}


// ===== 628950 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 148))(a5, v6);
}


// ===== 628994 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6289b8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 6289d4 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v5; // r7
  int v6; // r3
  float v7; // r1
  float *v8; // r7
  float v9; // r0
  float *v10; // r5
  float v11; // r10
  float v12; // r7
  float result; // r0
  float v14; // [sp+0h] [bp-8h]

  v14 = 1.0 - a4;
  v5 = 12 * a2;
  v6 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(a1, 0) + 4);
  v7 = *(float *)(v6 + v5);
  v8 = (float *)(v6 + v5);
  v9 = v14 * v8[1];
  v10 = ++v8 + 1;
  v11 = (float)(v9 + 0.0) + (float)(a4 * v8[3]);
  v12 = (float)(a4 * v8[4]) + (float)((float)((float)(1.0 - a4) * v8[1]) + 0.0);
  result = (float)((float)(v14 * v7) + 0.0) + (float)(a4 * v10[1]);
  *a5 = result;
  a5[1] = v11;
  a5[2] = v12;
  return result;
}


// ===== 628ad4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 628af0 glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        _DWORD *a5,
        int a6)
{
  float v7[3]; // [sp+Ch] [bp-Ch] BYREF

  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v7);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
           a5,
           *(unsigned __int16 *)(a6 + 8),
           0,
           v7);
}


// ===== 628b24 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        _DWORD *a6,
        int a7)
{
  return glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 628b48 glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        float a4,
        float *a5)
{
  int v8; // r3
  int v9; // r10
  int v10; // r11
  int v11; // r2
  int v12; // r8
  unsigned int v13; // r5
  float *v14; // r7
  int v15; // r6
  float v16; // r0
  float v17; // r6
  float v18; // r5
  float result; // r0
  float v20[6]; // [sp+Ch] [bp-30h] BYREF
  _DWORD v21[3]; // [sp+24h] [bp-18h] BYREF
  float v22; // [sp+30h] [bp-Ch]
  float v23; // [sp+34h] [bp-8h]

  glitch::collada::animation_track::CInputReader<short,float,3>::CInputReader(v21, this);
  v22 = 1.0 - a4;
  v23 = a4;
  v8 = *(_DWORD *)(v21[0] + 4);
  v9 = v21[1];
  v10 = v8 + 6 * a3;
  v11 = v8 + 6 * a2;
  v12 = v21[2];
  v13 = 0;
  v14 = v20;
  v15 = 0;
  do
  {
    v20[v13 / 4] = (float)((float)*(__int16 *)(v11 + v15) * *(float *)(v9 + v13)) + *(float *)(v12 + v13);
    v16 = (float)*(__int16 *)(v10 + v15);
    v15 += 2;
    v14[3] = (float)(v16 * *(float *)(v9 + v13)) + *(float *)(v12 + v13);
    v13 += 4;
    ++v14;
  }
  while ( v15 != 6 );
  v17 = (float)(a4 * v20[4]) + (float)((float)(v22 * v20[1]) + 0.0);
  v18 = (float)(a4 * v20[5]) + (float)((float)(v22 * v20[2]) + 0.0);
  result = (float)(a4 * v20[3]) + (float)((float)(v22 * v20[0]) + 0.0);
  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}


// ===== 628ca8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyKeyBasedValueEx(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        int a3,
        float a4,
        int a5)
{
  float v6[4]; // [sp+Ch] [bp-10h] BYREF

  memset(v6, 0, 12);
  glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
    a1,
    a2,
    a3,
    a4,
    v6);
  return (*(int (__fastcall **)(int, float *))(*(_DWORD *)a5 + 164))(a5, v6);
}


// ===== 628cec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::applyKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        int a6)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>::applyKeyBasedValueEx(
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 628d10 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getKeyBasedValue(
        int a1,
        glitch::collada::SAnimationAccessor *this,
        int a3,
        int a4,
        int a5,
        float *a6)
{
  return glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SSceneNodePosition,-1,float>,float,3,glitch::collada::animation_track::SUseDefaultLerp<short>>::getKeyBasedValueEx(
           this,
           a3,
           a4,
           *(float *)&a5,
           a6);
}


// ===== 628d2c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyBlendedValueEx(
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


// ===== 628e24 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 628e40 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyAddedValueEx(
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


// ===== 628f38 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 628f54 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyBlendedValueEx(
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


// ===== 62904c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629068 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyAddedValueEx(
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


// ===== 629160 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62917c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyBlendedValueEx(
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


// ===== 629274 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629290 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyAddedValueEx(
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


// ===== 629388 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6293a4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyBlendedValueEx(
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


// ===== 62949c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6294b8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyAddedValueEx(
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


// ===== 6295b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6295cc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyBlendedValueEx(
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


// ===== 6296c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6296e0 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyAddedValueEx(
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


// ===== 6297d8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 6297f4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyBlendedValueEx(
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


// ===== 6298ec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629908 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyAddedValueEx(
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


// ===== 629a00 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629a1c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyBlendedValueEx(
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


// ===== 629b14 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629b30 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyAddedValueEx(
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


// ===== 629c28 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629c44 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyBlendedValueEx(
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


// ===== 629d3c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629d58 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyAddedValueEx(
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


// ===== 629e50 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 629e6c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 629f50 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a034 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a118 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a1fc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a2e0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a3c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a4a8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a58c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a670 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getBlendedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a754 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a838 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62a91c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62aa00 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62aae4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>,0,short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62abc8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>,0,char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62acac glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62ad90 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>,1,short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62ae74 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>,1,char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62af58 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b03c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>,2,short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b120 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>,2,char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b204 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b2e8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b3cc glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b4b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b594 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>,0,short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b678 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>,0,char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b75c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b840 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62b924 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62ba08 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62baec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62bbd0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62bcb4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,0,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62bd98 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3],glitch::collada::animation_track::CMixin<float,3,glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3],float [3]>>,-1,float>>>::getAddedValue(
        int a1,
        float *a2,
        int a3,
        int a4,
        float *a5)
{
  int v5; // r4
  float v6; // r8
  float v7; // r9
  float v8; // r10
  float *v9; // r5
  int v10; // r7
  float v11; // r6

  v5 = a4;
  if ( a4 == 1 )
  {
    *a5 = *a2;
    a5[1] = a2[1];
    a5[2] = a2[2];
  }
  else
  {
    if ( a4 )
    {
      v6 = 0.0;
      v9 = a2;
      v10 = 0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v11 = *(float *)(a3 + v10);
        v10 += 4;
        v6 = v6 + (float)(v11 * *v9);
        v7 = v7 + (float)(v11 * v9[1]);
        --v5;
        v8 = v8 + (float)(v11 * v9[2]);
        v9 += 3;
      }
      while ( v5 );
    }
    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
    *a5 = v6;
    a5[1] = v7;
    a5[2] = v8;
  }
}


// ===== 62be7c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyBlendedValueEx(
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


// ===== 62bf74 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62bf90 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyAddedValueEx(
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


// ===== 62c088 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>,2,char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c0a4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyBlendedValueEx(
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


// ===== 62c19c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c1b8 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyAddedValueEx(
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


// ===== 62c2b0 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>,2,short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c2cc glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyBlendedValueEx(
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


// ===== 62c3c4 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c3e0 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyAddedValueEx(
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


// ===== 62c4d8 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c4f4 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyBlendedValueEx(
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


// ===== 62c5ec glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c608 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyAddedValueEx(
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


// ===== 62c700 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>,1,char>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c71c glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyBlendedValueEx(
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


// ===== 62c814 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c830 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyAddedValueEx(
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


// ===== 62c928 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>,1,short>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62c944 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyBlendedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyBlendedValueEx(
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


// ===== 62ca3c glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyBlendedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyBlendedValueEx(
           a2,
           a3,
           a4,
           a5);
}


// ===== 62ca58 glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyAddedValueEx(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyAddedValueEx(
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


// ===== 62cb50 glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::applyAddedValue(
        int a1,
        float *a2,
        int a3,
        unsigned int a4,
        int a5)
{
  return glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>::applyAddedValueEx(
           a2,
           a3,
           a4,
           a5);
}

