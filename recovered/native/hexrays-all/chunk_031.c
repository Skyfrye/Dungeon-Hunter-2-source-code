// ===== 5beed8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(ushort,uint,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  int v4; // r4
  int *v5; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 11 || a3 >= v5[2] )
    return 0;
  glitch::video::detail::setMatrixParameter((_BYTE **)(a1[11] + v5[3] + 4 * a3), a4);
  return 1;
}


// ===== 5bef7c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(ushort,uint,glitch::core::CMatrix4<float> const&) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5bef80 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(ushort,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5bef8c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(ushort,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5bef98 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  int v7; // r0
  int v8; // r2
  int v9; // r4
  float v11; // r7
  float v12; // r5
  float v13; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x100) == 0 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3];
  v9 = v7 + v8;
  if ( v6 == 16 )
  {
    v11 = (float)*(unsigned __int8 *)(v7 + v8) * 0.0039216;
    v12 = (float)*(unsigned __int8 *)(v9 + 1) * 0.0039216;
    v13 = (float)*(unsigned __int8 *)(v9 + 2) * 0.0039216;
    a4[3] = (float)*(unsigned __int8 *)(v9 + 3) * 0.0039216;
    *a4 = v11;
    a4[2] = v13;
    a4[1] = v12;
    return 1;
  }
  else if ( v6 == 17 || v6 == 8 )
  {
    *a4 = *(float *)(v7 + v8);
    a4[1] = *(float *)(v9 + 4);
    a4[2] = *(float *)(v9 + 8);
    a4[3] = *(float *)(v9 + 12);
    return 1;
  }
  else
  {
    return 1;
  }
}


// ===== 5bf100 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v9; // r1
  int result; // r0
  int v11; // r12
  int v12; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x80) == 0 || a3 >= v5[2] )
    return 0;
  v7 = v6 == 7;
  v8 = v5[3];
  v9 = a1[11];
  result = 1;
  if ( v7 )
  {
    v11 = *(_DWORD *)(v9 + v8);
    v12 = v9 + v8;
    *a4 = v11;
    a4[1] = *(_DWORD *)(v12 + 4);
    a4[2] = *(_DWORD *)(v12 + 8);
  }
  return result;
}


// ===== 5bf1c8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v9; // r1
  int result; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40) == 0 || a3 >= v5[2] )
    return 0;
  v7 = v6 == 6;
  v8 = v5[3];
  v9 = a1[11];
  result = 1;
  if ( v7 )
  {
    *a4 = *(_DWORD *)(v9 + v8);
    a4[1] = *(_DWORD *)(v9 + v8 + 4);
  }
  return result;
}


// ===== 5bf288 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(ushort,uint,float&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r4
  int *v6; // r4
  int v7; // r5
  int v8; // r2
  int v9; // r3
  int result; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20) == 0 || a3 >= v6[2] )
    return 0;
  v8 = a1[11];
  v9 = v6[3];
  if ( v7 == 1 )
  {
    *a4 = (float)*(int *)(v8 + v9);
    return 1;
  }
  else
  {
    result = 1;
    if ( v7 == 5 )
      *a4 = *(float *)(v8 + v9);
  }
  return result;
}


// ===== 5bf360 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v9; // r1
  int v11; // r12
  _DWORD *v12; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10) == 0 || a3 >= v5[2] )
    return 0;
  v7 = v6 == 4;
  v8 = v5[3];
  v9 = a1[11];
  if ( !v7 )
    return 1;
  v11 = *(_DWORD *)(v9 + v8);
  v12 = (_DWORD *)(v9 + v8);
  *a4 = v11;
  a4[1] = v12[1];
  a4[2] = v12[2];
  a4[3] = v12[3];
  return 1;
}


// ===== 5bf434 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v9; // r1
  int result; // r0
  int v11; // r12
  int v12; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 8) == 0 || a3 >= v5[2] )
    return 0;
  v7 = v6 == 3;
  v8 = v5[3];
  v9 = a1[11];
  result = 1;
  if ( v7 )
  {
    v11 = *(_DWORD *)(v9 + v8);
    v12 = v9 + v8;
    *a4 = v11;
    a4[1] = *(_DWORD *)(v12 + 4);
    a4[2] = *(_DWORD *)(v12 + 8);
  }
  return result;
}


// ===== 5bf4fc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v9; // r1
  int result; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 4) == 0 || a3 >= v5[2] )
    return 0;
  v7 = v6 == 2;
  v8 = v5[3];
  v9 = a1[11];
  result = 1;
  if ( v7 )
  {
    *a4 = *(_DWORD *)(v9 + v8);
    a4[1] = *(_DWORD *)(v9 + v8 + 4);
  }
  return result;
}


// ===== 5bf5bc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(ushort,uint,int&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v6; // r4
  int v7; // r3
  int v8; // r1
  int v9; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 2) == 0 || a3 >= v6[2] )
    return 0;
  v8 = a1[11];
  v9 = v6[3];
  if ( v7 == 1 )
  {
    *a4 = *(_DWORD *)(v8 + v9);
    return 1;
  }
  else
  {
    if ( v7 == 5 )
      *a4 = (int)*(float *)(v8 + v9);
    return 1;
  }
}


// ===== 5bf68c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r5
  int *v6; // r5
  int v7; // r12
  int *v9; // r2
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  _DWORD *v14; // t0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 17 || a3 >= v6[2] )
    return 0;
  v7 = 1;
  v9 = (int *)(a1[11] + v6[3] + 16 * a3);
  v10 = *v9;
  v11 = v9[1];
  v14 = v9 + 2;
  v12 = v9[2];
  v13 = v14[1];
  *a4 = v10;
  a4[1] = v11;
  a4[2] = v12;
  a4[3] = v13;
  return v7;
}


// ===== 5bf738 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(ushort,uint,glitch::video::SColor&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r4
  int *v5; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 16 || a3 >= v5[2] )
    return 0;
  memcpy(a4, (const void *)(a1[11] + v5[3] + 4 * a3), 4u);
  return 1;
}


// ===== 5bf7dc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        glitch::IReferenceCounted **a4)
{
  int v4; // r4
  int *v5; // r4
  glitch::IReferenceCounted *v6; // r2
  glitch::IReferenceCounted *v7; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || (unsigned int)*((unsigned __int8 *)v5 + 6) - 12 > 3 || a3 >= v5[2] )
    return 0;
  v6 = *(glitch::IReferenceCounted **)(a1[11] + v5[3] + 4 * a3);
  if ( v6 )
    ++*((_DWORD *)v6 + 1);
  v7 = *a4;
  *a4 = v6;
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  return 1;
}


// ===== 5bf89c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1
  int v8; // r2
  int v9; // r12
  _DWORD *v10; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 8 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3] + 16 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = (_DWORD *)(v7 + v8);
  *a4 = v9;
  a4[1] = v10[1];
  a4[2] = v10[2];
  a4[3] = v10[3];
  return 1;
}


// ===== 5bf958 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1
  int v8; // r2
  int v9; // r12
  int v10; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 7 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3] + 12 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = v7 + v8;
  *a4 = v9;
  a4[1] = *(_DWORD *)(v10 + 4);
  a4[2] = *(_DWORD *)(v10 + 8);
  return 1;
}


// ===== 5bfa10 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1
  int v8; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 6 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3] + 8 * a3;
  *a4 = *(_DWORD *)(v7 + v8);
  a4[1] = *(_DWORD *)(v7 + v8 + 4);
  return 1;
}


// ===== 5bfabc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(ushort,uint,float&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 5 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  *a4 = *(_DWORD *)(v7 + v5[3] + 4 * a3);
  return 1;
}


// ===== 5bfb5c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1
  int v8; // r2
  int v9; // r12
  _DWORD *v10; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 4 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3] + 16 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = (_DWORD *)(v7 + v8);
  *a4 = v9;
  a4[1] = v10[1];
  a4[2] = v10[2];
  a4[3] = v10[3];
  return 1;
}


// ===== 5bfc18 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int *v6; // r5
  int v7; // r2
  bool v8; // zf
  int v10; // r0
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 8) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    if ( v7 == 3 )
    {
      memcpy((void *)(a1[11] + v6[3]), a3, 12 * v6[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v10 = a1[11];
  if ( v7 != 3 )
    return 1;
  v11 = v6[2];
  if ( !v11 )
    return 1;
  v12 = (_DWORD *)(v10 + v6[3]);
  do
  {
    --v11;
    *v12 = *(_DWORD *)a3;
    v12[1] = *((_DWORD *)a3 + 1);
    v13 = *((_DWORD *)a3 + 2);
    a3 += a4;
    v12[2] = v13;
    v12 += 3;
  }
  while ( v11 );
  return 1;
}


// ===== 5bfd44 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v9; // r5
  int v10; // r0
  int v11; // r5
  int v12; // r12
  int v13; // r1
  int v14; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 4) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    if ( v6 == 2 )
    {
      memcpy((void *)(a1[11] + v5[3]), a3, 8 * v5[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v9 = a1[11];
  if ( v6 != 2 )
    return 1;
  v10 = v5[2];
  if ( !v10 )
    return 1;
  v11 = v9 + v5[3];
  v12 = 0;
  do
  {
    --v10;
    *(_DWORD *)(v11 + v12) = *(_DWORD *)a3;
    v13 = v11 + v12;
    v14 = *((_DWORD *)a3 + 1);
    v12 += 8;
    a3 += a4;
    *(_DWORD *)(v13 + 4) = v14;
  }
  while ( v10 );
  return 1;
}


// ===== 5bfe68 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(ushort,int const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(
        _DWORD *a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r6
  int *v7; // r4
  int v8; // r5
  bool v9; // zf
  int v11; // r7
  int v12; // r5
  int j; // r4
  int v14; // t1
  int v15; // r1
  int i; // r3
  int v17; // t1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 2) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 1 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = a1[11] + v7[3];
    if ( v8 == 1 )
    {
      v15 = v7[2];
      if ( v15 )
      {
        for ( i = 0; i != v15; ++i )
        {
          v17 = *v5;
          v5 = (int *)((char *)v5 + a4);
          *(_DWORD *)(v11 + 4 * i) = v17;
        }
      }
    }
    else if ( v8 == 5 )
    {
      v12 = v7[2];
      if ( v12 )
      {
        for ( j = 0; j != v12; ++j )
        {
          v14 = *v5;
          v5 = (int *)((char *)v5 + a4);
          *(float *)(v11 + 4 * j) = (float)v14;
        }
      }
    }
    return 1;
  }
  memcpy((void *)(a1[11] + v7[3]), a3, 4 * v7[2]);
  return 1;
}


// ===== 5bffb4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(ushort,glitch::video::SColorf const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v7; // r4
  bool v9; // zf
  int v10; // r5
  int v11; // r8
  int v12; // r10
  int v13; // r4
  _DWORD *v14; // r12
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 || *((_BYTE *)v7 + 6) != 17 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( v9 )
  {
    memcpy((void *)(a1[11] + v7[3]), a3, 16 * v7[2]);
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = v7[2];
    if ( v11 )
    {
      v12 = a1[11] + v7[3];
      v13 = 0;
      do
      {
        v14 = (_DWORD *)(v12 + 16 * v13++);
        v15 = *(_DWORD *)&a3[v10];
        v16 = *(_DWORD *)&a3[v10 + 4];
        v17 = *(_DWORD *)&a3[v10 + 8];
        v18 = *(_DWORD *)&a3[v10 + 12];
        v10 += a4;
        *v14 = v15;
        v14[1] = v16;
        v14[2] = v17;
        v14[3] = v18;
      }
      while ( v11 != v13 );
    }
    return 1;
  }
}


// ===== 5c00ac glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(ushort,glitch::video::SColor const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int *v7; // r5
  bool v9; // zf
  int v10; // r6
  int v11; // r8
  int v12; // r10
  int i; // r5
  void *v14; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 || *((_BYTE *)v7 + 6) != 16 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( v9 )
  {
    memcpy((void *)(a1[11] + v7[3]), a3, 4 * v7[2]);
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = v7[2];
    if ( v11 )
    {
      v12 = a1[11] + v7[3];
      for ( i = 0; i != v11; ++i )
      {
        v14 = (void *)(v12 + 4 * i);
        memcpy(v14, &a3[v10], 4u);
        v10 += a4;
      }
    }
    return 1;
  }
}


// ===== 5c01a4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r0
  _DWORD *v10; // r1
  int v11; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 8 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    memcpy((void *)(a1[11] + v5[3]), a3, 16 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    v9 = a1[11];
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + v5[3]);
      do
      {
        --v8;
        *v10 = *(_DWORD *)a3;
        v10[1] = *((_DWORD *)a3 + 1);
        v10[2] = *((_DWORD *)a3 + 2);
        v11 = *((_DWORD *)a3 + 3);
        a3 += a4;
        v10[3] = v11;
        v10 += 4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c0298 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r5
  _DWORD *v5; // r12
  int *v6; // r5
  bool v8; // zf
  int v9; // r4
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 7 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    memcpy((void *)(a1[11] + v6[3]), a3, 12 * v6[2]);
    return 1;
  }
  else
  {
    v9 = v6[2];
    if ( v9 )
    {
      v10 = (_DWORD *)(a1[11] + v6[3]);
      do
      {
        --v9;
        *v10 = *v5;
        v10[1] = v5[1];
        v11 = v5[2];
        v5 = (_DWORD *)((char *)v5 + a4);
        v10[2] = v11;
        v10 += 3;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c038c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 6 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    memcpy((void *)(a1[11] + v5[3]), a3, 8 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    if ( v8 )
    {
      v9 = a1[11] + v5[3];
      v10 = 0;
      do
      {
        --v8;
        *(_DWORD *)(v9 + v10) = *(_DWORD *)a3;
        v11 = v9 + v10;
        v12 = *((_DWORD *)a3 + 1);
        v10 += 8;
        a3 += a4;
        *(_DWORD *)(v11 + 4) = v12;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c0480 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(ushort,float const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r1
  int v9; // r12
  int v10; // r4
  int v11; // t1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 5 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    memcpy((void *)(a1[11] + v5[3]), a3, 4 * v5[2]);
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = v5[2];
    if ( v9 )
    {
      v10 = a1[11] + v5[3];
      do
      {
        v11 = *(_DWORD *)a3;
        a3 += a4;
        *(_DWORD *)(v10 + 4 * v8++) = v11;
      }
      while ( v9 != v8 );
    }
    return 1;
  }
}


// ===== 5c0560 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r0
  _DWORD *v10; // r1
  int v11; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 4 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    memcpy((void *)(a1[11] + v5[3]), a3, 16 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    v9 = a1[11];
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + v5[3]);
      do
      {
        --v8;
        *v10 = *(_DWORD *)a3;
        v10[1] = *((_DWORD *)a3 + 1);
        v10[2] = *((_DWORD *)a3 + 2);
        v11 = *((_DWORD *)a3 + 3);
        a3 += a4;
        v10[3] = v11;
        v10 += 4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c0654 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r5
  _DWORD *v5; // r12
  int *v6; // r5
  bool v8; // zf
  int v9; // r4
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 3 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    memcpy((void *)(a1[11] + v6[3]), a3, 12 * v6[2]);
    return 1;
  }
  else
  {
    v9 = v6[2];
    if ( v9 )
    {
      v10 = (_DWORD *)(a1[11] + v6[3]);
      do
      {
        --v9;
        *v10 = *v5;
        v10[1] = v5[1];
        v11 = v5[2];
        v5 = (_DWORD *)((char *)v5 + a4);
        v10[2] = v11;
        v10 += 3;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c0748 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 2 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    memcpy((void *)(a1[11] + v5[3]), a3, 8 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    if ( v8 )
    {
      v9 = a1[11] + v5[3];
      v10 = 0;
      do
      {
        --v8;
        *(_DWORD *)(v9 + v10) = *(_DWORD *)a3;
        v11 = v9 + v10;
        v12 = *((_DWORD *)a3 + 1);
        v10 += 8;
        a3 += a4;
        *(_DWORD *)(v11 + 4) = v12;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c083c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(ushort,int const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r1
  int v9; // r12
  int v10; // r4
  int v11; // t1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 1 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    memcpy((void *)(a1[11] + v5[3]), a3, 4 * v5[2]);
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = v5[2];
    if ( v9 )
    {
      v10 = a1[11] + v5[3];
      do
      {
        v11 = *(_DWORD *)a3;
        a3 += a4;
        *(_DWORD *)(v10 + 4 * v8++) = v11;
      }
      while ( v9 != v8 );
    }
    return 1;
  }
}


// ===== 5c091c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(ushort,glitch::core::CMatrix4<float> *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int *v6; // r5
  int v8; // r7
  char *v9; // r8
  const void **v10; // r6
  int v11; // r5
  char *v12; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 11 )
    return 0;
  if ( a4 )
    v8 = a4;
  else
    v8 = 68;
  v9 = &a3[v6[2] * v8];
  if ( a3 != v9 )
  {
    v10 = (const void **)(a1[11] + v6[3]);
    v11 = 0;
    v12 = a3;
    do
    {
      v11 += v8;
      glitch::video::detail::getMatrixParameter(v10, v12);
      v12 = &a3[v11];
      ++v10;
    }
    while ( v9 != &a3[v11] );
  }
  return 1;
}


// ===== 5c09e8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(ushort,glitch::core::CMatrix4<float> *,int) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5c09ec glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(ushort,uint,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r4
  int *v5; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 11 || a3 >= v5[2] )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(a1[11] + v5[3] + 4 * a3), a4);
  return 1;
}


// ===== 5c0a8c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(ushort,uint,glitch::core::CMatrix4<float> &) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5c0a90 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(ushort,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
        _DWORD *a1,
        unsigned int a2,
        void *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5c0a9c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(ushort,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        void *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5c0aa8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<float>(ushort,uint,uchar,float) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        int a5)
{
  int v5; // r12
  int *v6; // r12
  int v7; // r1
  int v9; // r6
  int v10; // r5
  int v11; // r1
  _BYTE *v12; // r0
  unsigned int v13; // [sp+4h] [bp-8h]

  v5 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v5) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v5 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v7] != 5
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v7]
    || a3 >= v6[2] )
  {
    return 0;
  }
  if ( v7 == 11 )
  {
    v9 = a1[11];
    v10 = v6[3];
    v11 = *(_DWORD *)(v9 + v10);
    if ( !v11 )
    {
      v13 = a4;
      v12 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)(v9 + v10) = v12;
      glitch::core::CMatrix4<float>::CMatrix4(v12, &glitch::core::IdentityMatrix);
      v11 = *(_DWORD *)(v9 + v10);
      a4 = v13;
    }
    *(_BYTE *)(v11 + 64) = 0;
    *(_DWORD *)(v11 + 4 * a4) = a5;
    return 1;
  }
  else
  {
    *(_DWORD *)(a1[11] + v6[3] + 4 * (a4 + a3)) = a5;
    return 1;
  }
}


// ===== 5c0bd4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int result; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || (unsigned int)*((unsigned __int8 *)v5 + 6) - 12 > 3 )
    return 0;
  if ( !a4 )
    return 1;
  switch ( *((_BYTE *)v5 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      glitch::video::detail::setArrayParameter((glitch::IReferenceCounted *)v5, a1[11] + v5[3], a3, a4);
      result = 1;
      break;
    default:
      return 1;
  }
  return result;
}


// ===== 5c0c94 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || (unsigned int)*((unsigned __int8 *)v5 + 6) - 12 > 3 )
    return 0;
  if ( !a4 )
    a4 = 4;
  glitch::video::detail::setArrayParameter((glitch::IReferenceCounted *)v5, a1[11] + v5[3], a3, a4);
  return 1;
}


// ===== 5c0d30 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameter(ushort) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameter(
        _DWORD *a1,
        unsigned int a2)
{
  int v2; // r3
  int *v3; // r3
  _DWORD **v4; // r5
  _DWORD **v5; // r7
  _DWORD *v6; // r3
  _DWORD *v8; // r1
  glitch::IReferenceCounted **v9; // r4
  glitch::IReferenceCounted **v10; // r5
  glitch::IReferenceCounted *v11; // r0
  int v12; // r12
  _DWORD **v13; // r3
  _DWORD **i; // r12
  _DWORD *v15; // r2

  v2 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v2) >> 2) )
    v3 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v3 = (int *)(v2 + 20 * a2);
  if ( !*v3 )
    v3 = nullptr;
  switch ( *((_BYTE *)v3 + 6) )
  {
    case 0xB:
      v12 = v3[2];
      v13 = (_DWORD **)(a1[11] + v3[3]);
      for ( i = &v13[v12]; i != v13; ++v13 )
      {
        v15 = *v13;
        if ( *v13 )
        {
          *v15 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v15;
          *v13 = nullptr;
        }
      }
      break;
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v9 = (glitch::IReferenceCounted **)(a1[11] + v3[3]);
      v10 = &v9[v3[2]];
      while ( v10 != v9 )
      {
        v11 = *v9;
        *v9++ = nullptr;
        if ( v11 )
          glitch::IReferenceCounted::drop(v11);
      }
      break;
    case 0x12:
      v4 = (_DWORD **)(a1[11] + v3[3]);
      v5 = &v4[v3[2]];
      while ( v5 != v4 )
      {
        v6 = *v4;
        *v4++ = nullptr;
        if ( v6 )
        {
          if ( (*v6)-- == 1 )
          {
            if ( !*((_BYTE *)v6 + 84) )
            {
              v8 = (_DWORD *)v6[20];
              *v8 = glitch::memory::Matrix4Pool;
              glitch::memory::Matrix4Pool = (int)v8;
            }
            v6[20] = 0;
            LC_API_FREE_0(v6);
          }
        }
      }
      break;
    default:
      return;
  }
}


// ===== 5c0edc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameters(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameters(
        _DWORD *a1)
{
  int v1; // r4
  int v3; // r2
  int v4; // r3

  v1 = a1[2];
  if ( (_DWORD *)v1 != a1 )
  {
    do
    {
      glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameter(
        a1,
        *(unsigned __int16 *)(v1 + 28));
      v3 = *(_DWORD *)(v1 + 12);
      if ( v3 )
      {
        while ( *(_DWORD *)(v3 + 8) )
          v3 = *(_DWORD *)(v3 + 8);
        v1 = v3;
      }
      else
      {
        v4 = *(_DWORD *)(v1 + 4);
        if ( *(_DWORD *)(v4 + 12) == v1 )
        {
          do
          {
            v1 = v4;
            v4 = *(_DWORD *)(v4 + 4);
          }
          while ( *(_DWORD *)(v4 + 12) == v1 );
          v3 = *(_DWORD *)(v1 + 12);
        }
        if ( v3 != v4 )
          v1 = v4;
      }
    }
    while ( a1 != (_DWORD *)v1 );
  }
}


// ===== 5c0f60 glitch::video::CGlobalMaterialParameterManager::clearParameters(void) =====
// attributes: thunk
void __fastcall glitch::video::CGlobalMaterialParameterManager::clearParameters(_DWORD *this)
{
  glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameters(this);
}


// ===== 5c0f64 glitch::video::detail::globalmaterialparametermanager::SPropeties::onRemove(void *,ushort) =====
void __fastcall glitch::video::detail::globalmaterialparametermanager::SPropeties::onRemove(
        glitch::video::detail::globalmaterialparametermanager::SPropeties *this,
        _DWORD *a2,
        unsigned __int16 a3)
{
  glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::dropParameter(
    a2,
    a3);
}


// ===== 5c0f70 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(ushort,bool) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(
        _DWORD *a1,
        unsigned int a2,
        int a3)
{
  int v4; // r3
  _DWORD *v6; // r6
  int v7; // r0
  int v8; // r0
  int v9; // r1
  __int16 v10; // r3
  int v11; // r3
  void *v12; // r0
  void *v15; // [sp+0h] [bp-18h] BYREF
  __int16 v16; // [sp+4h] [bp-14h]
  char v17; // [sp+6h] [bp-12h]
  char v18; // [sp+7h] [bp-11h]
  int v19; // [sp+8h] [bp-10h]
  int v20; // [sp+Ch] [bp-Ch]
  int v21; // [sp+10h] [bp-8h]
  unsigned __int8 *v22; // [sp+14h] [bp-4h] BYREF

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    return 0;
  v6 = (_DWORD *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = v6[4];
  if ( *(_DWORD *)(v7 + 24) != 1 && !a3 )
    return 0;
  glitch::video::detail::globalmaterialparametermanager::SPropeties::onRemove(
    (glitch::video::detail::globalmaterialparametermanager::SPropeties *)(v7 + 24),
    a1,
    a2);
  v22 = (unsigned __int8 *)v6[4];
  std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
    (int)a1,
    &v22);
  glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::reset((int)v6);
  v8 = a1[7];
  v9 = a1[6];
  v10 = *((_WORD *)a1 + 19) - 1;
  if ( *((unsigned __int16 *)a1 + 18) > a2 )
    *((_WORD *)a1 + 18) = a2;
  *((_WORD *)a1 + 19) = v10;
  if ( v8 == v9 )
    return 1;
  v11 = v8;
  while ( !*(_DWORD *)(v11 - 20) )
  {
    v11 -= 20;
    if ( v9 == v11 )
      return 1;
  }
  v21 = 0;
  v15 = nullptr;
  v20 = -1;
  v16 = 255;
  v17 = -1;
  v18 = -1;
  v19 = -1;
  std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 6),
    -858993459 * ((v8 - v9) >> 2) - -858993459 * ((v8 - v11) >> 2),
    (unsigned int)&v15);
  v12 = v15;
  if ( !v15 )
    return 1;
  if ( (*(_DWORD *)v15)-- != 1 )
    return 1;
  glitch::core::detail::SSharedStringHeapEntry::SData::release(v12);
  return 1;
}


// ===== 5c1104 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(bool) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(
        _DWORD *a1,
        int a2)
{
  int v2; // r3
  int v5; // r6
  int v6; // r4
  int v8; // r2
  int v9; // r4
  int v10; // r1

  v2 = a1[2];
  v5 = 0;
  while ( a1 != (_DWORD *)v2 )
  {
    v6 = *(_DWORD *)(v2 + 12);
    if ( v6 )
    {
      while ( *(_DWORD *)(v6 + 8) )
        v6 = *(_DWORD *)(v6 + 8);
      if ( glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(
             a1,
             *(unsigned __int16 *)(v2 + 28),
             a2) )
      {
        v5 = (unsigned __int16)(v5 + 1);
      }
      v2 = v6;
    }
    else
    {
      v8 = *(_DWORD *)(v2 + 4);
      if ( v2 == *(_DWORD *)(v8 + 12) )
      {
        do
        {
          v9 = v8;
          v8 = *(_DWORD *)(v8 + 4);
        }
        while ( *(_DWORD *)(v8 + 12) == v9 );
        v10 = *(_DWORD *)(v9 + 12);
      }
      else
      {
        v9 = v2;
        v10 = 0;
      }
      if ( v10 != v8 )
        v9 = v8;
      if ( glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(
             a1,
             *(unsigned __int16 *)(v2 + 28),
             a2) )
      {
        v5 = (unsigned __int16)(v5 + 1);
      }
      v2 = v9;
    }
  }
  return v5;
}


// ===== 5c11cc glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(
        _DWORD *a1)
{
  return glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(
           a1,
           0);
}


// ===== 5c11d4 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeUnused(void) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeUnused(
        _DWORD *a1)
{
  return glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(
           a1,
           0);
}


// ===== 5c11dc glitch::video::CGlobalMaterialParameterManager::removeUnused(void) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::removeUnused(
        glitch::video::CGlobalMaterialParameterManager *this)
{
  int result; // r0
  int v3; // r5
  int v4; // r3

  result = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(
             this,
             0);
  v3 = result;
  if ( result )
  {
    v4 = *((unsigned __int8 *)this + 58);
    *((_BYTE *)this + 56) = 0;
    if ( v4 )
    {
      glitch::video::CGlobalMaterialParameterManager::pack(this);
      return v3;
    }
  }
  return result;
}


// ===== 5c1220 glitch::video::CGlobalMaterialParameterManager::removeAll(void) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::removeAll(
        glitch::video::CGlobalMaterialParameterManager *this)
{
  int result; // r0
  int v3; // r5
  int v4; // r3

  result = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::removeAll(
             this,
             0);
  v3 = result;
  if ( result )
  {
    v4 = *((unsigned __int8 *)this + 58);
    *((_BYTE *)this + 56) = 0;
    if ( v4 )
    {
      glitch::video::CGlobalMaterialParameterManager::pack(this);
      return v3;
    }
  }
  return result;
}


// ===== 5c1264 glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,ushort,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(
        _DWORD *a1,
        unsigned int a2)
{
  return glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(
           a1,
           a2,
           0);
}


// ===== 5c126c glitch::video::CGlobalMaterialParameterManager::remove(ushort) =====
int __fastcall glitch::video::CGlobalMaterialParameterManager::remove(
        glitch::video::CGlobalMaterialParameterManager *this,
        unsigned __int16 a2)
{
  int result; // r0
  int v4; // r5
  int v5; // r3

  result = glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::remove(
             this,
             a2,
             0);
  v4 = result;
  if ( result )
  {
    v5 = *((unsigned __int8 *)this + 58);
    *((_BYTE *)this + 56) = 0;
    if ( v5 )
    {
      glitch::video::CGlobalMaterialParameterManager::pack(this);
      return v4;
    }
  }
  return result;
}


// ===== 5c12b0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(ushort,glitch::video::SColorf*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r6
  float *v5; // r4
  int *v7; // r6
  int v8; // r3
  bool v9; // zf
  int v11; // r8
  int *v12; // r12
  int *v13; // r8
  int v14; // r7
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v19; // r6
  int v20; // r10
  int v21; // r7
  int v22; // r6
  int *v23; // r3
  _DWORD *v24; // r12
  int v25; // r0
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r9
  int i; // r8
  float v31; // r6
  float v32; // r7
  float v33; // r0

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20000) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 17 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = a1[11] + v7[3];
    switch ( v8 )
    {
      case 16:
        v29 = v11 + 4 * v7[2];
        if ( v11 != v29 )
        {
          for ( i = v11 + 4; ; i += 4 )
          {
            v31 = (float)*(unsigned __int8 *)(i - 4) * 0.0039216;
            v32 = (float)*(unsigned __int8 *)(i - 3) * 0.0039216;
            v33 = (float)*(unsigned __int8 *)(i - 2) * 0.0039216;
            v5[3] = (float)*(unsigned __int8 *)(i - 1) * 0.0039216;
            v5[2] = v33;
            v5[1] = v32;
            *v5 = v31;
            if ( v29 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v20 = v7[2];
        if ( v20 )
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = (int *)(v11 + 16 * v22++);
            v24 = (_DWORD *)((char *)v5 + v21);
            v25 = *v23;
            v26 = v23[1];
            v27 = v23[2];
            v28 = v23[3];
            v21 += a4;
            *v24 = v25;
            v24[1] = v26;
            v24[2] = v27;
            v24[3] = v28;
          }
          while ( v22 != v20 );
        }
        break;
      case 8:
        v12 = (int *)(a1[11] + v7[3]);
        v13 = (int *)(v11 + 16 * v7[2]);
        if ( v12 != v13 )
        {
          v14 = 0;
          do
          {
            v15 = *v12;
            v16 = v12[1];
            v17 = v12[2];
            v18 = v12[3];
            v12 += 4;
            v19 = (_DWORD *)((char *)v5 + v14);
            *v19 = v15;
            v19[1] = v16;
            v19[2] = v17;
            v19[3] = v18;
            v14 += a4;
          }
          while ( v13 != v12 );
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1[11] + v7[3]), 16 * v7[2]);
  return 1;
}


// ===== 5c14b8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(ushort,glitch::video::SColor*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  int v4; // r6
  _BYTE *v5; // r4
  int *v7; // r6
  int v8; // r3
  bool v9; // zf
  float *v11; // r8
  float *v12; // r9
  char v13; // r10
  char v14; // r6
  char v15; // r7
  unsigned int v16; // r0
  float *v17; // r9
  char v18; // r10
  char v19; // r6
  char v20; // r7
  unsigned int v21; // r0
  int v22; // r10
  int v23; // r7
  int i; // r6
  float *v25; // r1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x10000) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 16 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = (float *)(a1[11] + v7[3]);
    switch ( v8 )
    {
      case 16:
        v22 = v7[2];
        if ( v22 )
        {
          v23 = 0;
          for ( i = 0; i != v22; ++i )
          {
            v25 = &v11[i];
            memcpy(&v5[v23], v25, 4u);
            v23 += a4;
          }
        }
        break;
      case 17:
        v17 = &v11[4 * v7[2]];
        if ( v11 != v17 )
        {
          while ( 1 )
          {
            v18 = (unsigned int)(float)(v11[3] * 255.0);
            v19 = (unsigned int)(float)(*v11 * 255.0);
            v20 = (unsigned int)(float)(v11[1] * 255.0);
            v21 = (unsigned int)(float)(v11[2] * 255.0);
            v11 += 4;
            v5[3] = v18;
            v5[2] = v21;
            v5[1] = v20;
            *v5 = v19;
            if ( v17 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
      case 8:
        v12 = &v11[4 * v7[2]];
        if ( v11 != v12 )
        {
          while ( 1 )
          {
            v13 = (unsigned int)(float)(v11[3] * 255.0);
            v14 = (unsigned int)(float)(*v11 * 255.0);
            v15 = (unsigned int)(float)(v11[1] * 255.0);
            v16 = (unsigned int)(float)(v11[2] * 255.0);
            v11 += 4;
            v5[3] = v13;
            v5[2] = v16;
            v5[1] = v15;
            *v5 = v14;
            if ( v12 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1[11] + v7[3]), 4 * v7[2]);
  return 1;
}


// ===== 5c1718 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r5
  float *v5; // r4
  int *v7; // r1
  int v8; // r3
  bool v9; // zf
  float *v11; // r5
  int v12; // r3
  int v13; // r2
  float *v14; // r2
  int v15; // r3
  float *v16; // r11
  float *v17; // r5
  int v18; // r10
  float v19; // [sp+4h] [bp-10h]
  float v20; // [sp+8h] [bp-Ch]

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x100) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( v9 )
  {
    if ( v8 == 8 )
    {
      memcpy(a3, (const void *)(a1[11] + v7[3]), 16 * v7[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v11 = (float *)(a1[11] + v7[3]);
  switch ( v8 )
  {
    case 16:
      v16 = &v11[v7[2]];
      if ( v11 == v16 )
        return 1;
      v17 = v11 + 1;
      while ( 1 )
      {
        v18 = *((unsigned __int8 *)v17 - 1);
        v19 = (float)*((unsigned __int8 *)v17 - 3) * 0.0039216;
        v20 = (float)*((unsigned __int8 *)v17 - 2) * 0.0039216;
        *v5 = (float)*((unsigned __int8 *)v17 - 4) * 0.0039216;
        v9 = v16 == v17++;
        v5[1] = v19;
        v5[2] = v20;
        v5[3] = (float)v18 * 0.0039216;
        if ( v9 )
          break;
        v5 = (float *)((char *)v5 + a4);
      }
      return 1;
    case 17:
      v14 = &v11[4 * v7[2]];
      if ( v11 == v14 )
        return 1;
      do
      {
        *v5 = *v11;
        v5[1] = v11[1];
        v5[2] = v11[2];
        v15 = *((_DWORD *)v11 + 3);
        v11 += 4;
        *((_DWORD *)v5 + 3) = v15;
        v5 = (float *)((char *)v5 + a4);
      }
      while ( v14 != v11 );
      return 1;
    case 8:
      v12 = v7[2];
      if ( !v12 )
        return 1;
      do
      {
        --v12;
        *v5 = *v11;
        v5[1] = v11[1];
        v5[2] = v11[2];
        v13 = *((_DWORD *)v11 + 3);
        v11 += 4;
        *((_DWORD *)v5 + 3) = v13;
        v5 = (float *)((char *)v5 + a4);
      }
      while ( v12 );
      return 1;
    default:
      return 1;
  }
}


// ===== 5c196c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int *v6; // r5
  int v7; // r2
  bool v8; // zf
  int v10; // r0
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x80) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    if ( v7 == 7 )
    {
      memcpy(a3, (const void *)(a1[11] + v6[3]), 12 * v6[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v10 = a1[11];
  if ( v7 != 7 )
    return 1;
  v11 = v6[2];
  if ( !v11 )
    return 1;
  v12 = (_DWORD *)(v10 + v6[3]);
  do
  {
    --v11;
    *(_DWORD *)a3 = *v12;
    *((_DWORD *)a3 + 1) = v12[1];
    v13 = v12[2];
    v12 += 3;
    *((_DWORD *)a3 + 2) = v13;
    a3 += a4;
  }
  while ( v11 );
  return 1;
}


// ===== 5c1a98 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v9; // r5
  int v10; // r0
  int v11; // r5
  int v12; // r12
  int v13; // r1
  int v14; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    if ( v6 == 6 )
    {
      memcpy(a3, (const void *)(a1[11] + v5[3]), 8 * v5[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v9 = a1[11];
  if ( v6 != 6 )
    return 1;
  v10 = v5[2];
  if ( !v10 )
    return 1;
  v11 = v9 + v5[3];
  v12 = 0;
  do
  {
    v13 = v11 + v12;
    v14 = *(_DWORD *)(v11 + v12);
    --v10;
    v12 += 8;
    *(_DWORD *)a3 = v14;
    *((_DWORD *)a3 + 1) = *(_DWORD *)(v13 + 4);
    a3 += a4;
  }
  while ( v10 );
  return 1;
}


// ===== 5c1bbc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(ushort,float*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r4
  float *v5; // r6
  int *v7; // r4
  int v8; // r3
  bool v9; // zf
  int v11; // r5
  int v12; // r1
  int j; // r3
  int v14; // r2
  int v15; // r7
  int i; // r4
  float v17; // r0

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 5 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = a1[11] + v7[3];
    if ( v8 == 1 )
    {
      v15 = v7[2];
      if ( v15 )
      {
        for ( i = 0; i != v15; ++i )
        {
          v17 = (float)*(int *)(v11 + 4 * i);
          *v5 = v17;
          v5 = (float *)((char *)v5 + a4);
        }
      }
    }
    else if ( v8 == 5 )
    {
      v12 = v7[2];
      if ( v12 )
      {
        for ( j = 0; j != v12; ++j )
        {
          v14 = *(_DWORD *)(v11 + 4 * j);
          *(_DWORD *)v5 = v14;
          v5 = (float *)((char *)v5 + a4);
        }
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1[11] + v7[3]), 4 * v7[2]);
  return 1;
}


// ===== 5c1d08 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v9; // r12
  int v10; // r0
  _DWORD *v11; // r1
  int v12; // r12

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    if ( v6 == 4 )
    {
      memcpy(a3, (const void *)(a1[11] + v5[3]), 16 * v5[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v9 = a1[11];
  if ( v6 != 4 )
    return 1;
  v10 = v5[2];
  if ( !v10 )
    return 1;
  v11 = (_DWORD *)(v9 + v5[3]);
  do
  {
    --v10;
    *(_DWORD *)a3 = *v11;
    *((_DWORD *)a3 + 1) = v11[1];
    *((_DWORD *)a3 + 2) = v11[2];
    v12 = v11[3];
    v11 += 4;
    *((_DWORD *)a3 + 3) = v12;
    a3 += a4;
  }
  while ( v10 );
  return 1;
}


// ===== 5c1e34 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int *v6; // r5
  int v7; // r2
  bool v8; // zf
  int v10; // r0
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 8) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    if ( v7 == 3 )
    {
      memcpy(a3, (const void *)(a1[11] + v6[3]), 12 * v6[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v10 = a1[11];
  if ( v7 != 3 )
    return 1;
  v11 = v6[2];
  if ( !v11 )
    return 1;
  v12 = (_DWORD *)(v10 + v6[3]);
  do
  {
    --v11;
    *(_DWORD *)a3 = *v12;
    *((_DWORD *)a3 + 1) = v12[1];
    v13 = v12[2];
    v12 += 3;
    *((_DWORD *)a3 + 2) = v13;
    a3 += a4;
  }
  while ( v11 );
  return 1;
}


// ===== 5c1f60 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v9; // r5
  int v10; // r0
  int v11; // r5
  int v12; // r12
  int v13; // r1
  int v14; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 4) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    if ( v6 == 2 )
    {
      memcpy(a3, (const void *)(a1[11] + v5[3]), 8 * v5[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v9 = a1[11];
  if ( v6 != 2 )
    return 1;
  v10 = v5[2];
  if ( !v10 )
    return 1;
  v11 = v9 + v5[3];
  v12 = 0;
  do
  {
    v13 = v11 + v12;
    v14 = *(_DWORD *)(v11 + v12);
    --v10;
    v12 += 8;
    *(_DWORD *)a3 = v14;
    *((_DWORD *)a3 + 1) = *(_DWORD *)(v13 + 4);
    a3 += a4;
  }
  while ( v10 );
  return 1;
}


// ===== 5c2084 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(ushort,int*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r5
  bool v7; // zf
  int v9; // r0
  int v10; // r12
  int v11; // r4
  int i; // r1
  int v13; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 2) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    if ( v6 == 1 )
    {
      memcpy(a3, (const void *)(a1[11] + v5[3]), 4 * v5[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v9 = a1[11];
  if ( v6 != 1 )
    return 1;
  v10 = v5[2];
  if ( !v10 )
    return 1;
  v11 = v9 + v5[3];
  for ( i = 0; i != v10; ++i )
  {
    v13 = *(_DWORD *)(v11 + 4 * i);
    *(_DWORD *)a3 = v13;
    a3 += a4;
  }
  return 1;
}


// ===== 5c2198 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        void **a3,
        int a4)
{
  int v4; // r12
  void **v5; // r6
  int *v7; // r12
  bool v9; // zf
  int v10; // r7
  int v11; // r5
  int v12; // r10
  _DWORD *v13; // r3
  _DWORD *v14; // r2
  _DWORD *v15; // r1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 || *((_BYTE *)v7 + 6) != 18 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( v9 )
  {
    memcpy(a3, (const void *)(a1[11] + v7[3]), 4 * v7[2]);
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = v7[2];
    if ( v11 )
    {
      v12 = a1[11] + v7[3];
      do
      {
        v13 = *(_DWORD **)(v12 + v10);
        v10 += 4;
        if ( v13 )
          ++*v13;
        v14 = *v5;
        *v5 = v13;
        v5 = (void **)((char *)v5 + a4);
        if ( v14 )
        {
          v9 = (*v14)-- == 1;
          if ( v9 )
          {
            if ( !*((_BYTE *)v14 + 84) )
            {
              v15 = (_DWORD *)v14[20];
              *v15 = glitch::memory::Matrix4Pool;
              glitch::memory::Matrix4Pool = (int)v15;
            }
            v14[20] = 0;
            LC_API_FREE_0(v14);
          }
        }
        --v11;
      }
      while ( v11 );
    }
    return 1;
  }
}


// ===== 5c22e8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(ushort,glitch::video::SColorf*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v7; // r4
  bool v9; // zf
  int v10; // r5
  int v11; // r8
  int v12; // r10
  int v13; // r4
  int *v14; // r3
  char *v15; // r12
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 || *((_BYTE *)v7 + 6) != 17 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( v9 )
  {
    memcpy(a3, (const void *)(a1[11] + v7[3]), 16 * v7[2]);
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = v7[2];
    if ( v11 )
    {
      v12 = a1[11] + v7[3];
      v13 = 0;
      do
      {
        v14 = (int *)(v12 + 16 * v13++);
        v15 = &a3[v10];
        v16 = *v14;
        v17 = v14[1];
        v18 = v14[2];
        v19 = v14[3];
        v10 += a4;
        *(_DWORD *)v15 = v16;
        *((_DWORD *)v15 + 1) = v17;
        *((_DWORD *)v15 + 2) = v18;
        *((_DWORD *)v15 + 3) = v19;
      }
      while ( v11 != v13 );
    }
    return 1;
  }
}


// ===== 5c23e0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(ushort,glitch::video::SColor*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int *v7; // r5
  bool v9; // zf
  int v10; // r6
  int v11; // r8
  int v12; // r10
  int i; // r5
  const void *v14; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 || *((_BYTE *)v7 + 6) != 16 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( v9 )
  {
    memcpy(a3, (const void *)(a1[11] + v7[3]), 4 * v7[2]);
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = v7[2];
    if ( v11 )
    {
      v12 = a1[11] + v7[3];
      for ( i = 0; i != v11; ++i )
      {
        v14 = (const void *)(v12 + 4 * i);
        memcpy(&a3[v10], v14, 4u);
        v10 += a4;
      }
    }
    return 1;
  }
}


// ===== 5c24d8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        glitch::IReferenceCounted **a3,
        int a4)
{
  int v4; // r4
  glitch::IReferenceCounted **v5; // r6
  int *v7; // r1
  bool v8; // zf
  int v9; // r4
  int v10; // r5
  int v11; // r7
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 || (unsigned int)*((unsigned __int8 *)v7 + 6) - 12 > 3 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( v8 )
  {
    memcpy(a3, (const void *)(a1[11] + v7[3]), 4 * v7[2]);
    return 1;
  }
  else
  {
    v9 = 0;
    v10 = v7[2];
    if ( v10 )
    {
      v11 = a1[11] + v7[3];
      do
      {
        v12 = *(glitch::IReferenceCounted **)(v11 + v9);
        v9 += 4;
        if ( v12 )
          ++*((_DWORD *)v12 + 1);
        v13 = *v5;
        *v5 = v12;
        v5 = (glitch::IReferenceCounted **)((char *)v5 + a4);
        if ( v13 )
          glitch::IReferenceCounted::drop(v13);
        --v10;
      }
      while ( v10 );
    }
    return 1;
  }
}


// ===== 5c25e8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r0
  _DWORD *v10; // r1
  int v11; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 8 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1[11] + v5[3]), 16 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    v9 = a1[11];
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + v5[3]);
      do
      {
        --v8;
        *(_DWORD *)a3 = *v10;
        *((_DWORD *)a3 + 1) = v10[1];
        *((_DWORD *)a3 + 2) = v10[2];
        v11 = v10[3];
        v10 += 4;
        *((_DWORD *)a3 + 3) = v11;
        a3 += a4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c26dc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r5
  _DWORD *v5; // r12
  int *v6; // r5
  bool v8; // zf
  int v9; // r4
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 7 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    memcpy(a3, (const void *)(a1[11] + v6[3]), 12 * v6[2]);
    return 1;
  }
  else
  {
    v9 = v6[2];
    if ( v9 )
    {
      v10 = (_DWORD *)(a1[11] + v6[3]);
      do
      {
        --v9;
        *v5 = *v10;
        v5[1] = v10[1];
        v11 = v10[2];
        v10 += 3;
        v5[2] = v11;
        v5 = (_DWORD *)((char *)v5 + a4);
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c27d0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 6 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1[11] + v5[3]), 8 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    if ( v8 )
    {
      v9 = a1[11] + v5[3];
      v10 = 0;
      do
      {
        v11 = v9 + v10;
        v12 = *(_DWORD *)(v9 + v10);
        --v8;
        v10 += 8;
        *(_DWORD *)a3 = v12;
        *((_DWORD *)a3 + 1) = *(_DWORD *)(v11 + 4);
        a3 += a4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c28c4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(ushort,float*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r1
  int v9; // r12
  int v10; // r4
  int v11; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 5 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1[11] + v5[3]), 4 * v5[2]);
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = v5[2];
    if ( v9 )
    {
      v10 = a1[11] + v5[3];
      do
      {
        v11 = *(_DWORD *)(v10 + 4 * v8++);
        *(_DWORD *)a3 = v11;
        a3 += a4;
      }
      while ( v9 != v8 );
    }
    return 1;
  }
}


// ===== 5c29a4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r0
  _DWORD *v10; // r1
  int v11; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 4 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1[11] + v5[3]), 16 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    v9 = a1[11];
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + v5[3]);
      do
      {
        --v8;
        *(_DWORD *)a3 = *v10;
        *((_DWORD *)a3 + 1) = v10[1];
        *((_DWORD *)a3 + 2) = v10[2];
        v11 = v10[3];
        v10 += 4;
        *((_DWORD *)a3 + 3) = v11;
        a3 += a4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c2a98 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r5
  _DWORD *v5; // r12
  int *v6; // r5
  bool v8; // zf
  int v9; // r4
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 3 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    memcpy(a3, (const void *)(a1[11] + v6[3]), 12 * v6[2]);
    return 1;
  }
  else
  {
    v9 = v6[2];
    if ( v9 )
    {
      v10 = (_DWORD *)(a1[11] + v6[3]);
      do
      {
        --v9;
        *v5 = *v10;
        v5[1] = v10[1];
        v11 = v10[2];
        v10 += 3;
        v5[2] = v11;
        v5 = (_DWORD *)((char *)v5 + a4);
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c2b8c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r12
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 2 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1[11] + v5[3]), 8 * v5[2]);
    return 1;
  }
  else
  {
    v8 = v5[2];
    if ( v8 )
    {
      v9 = a1[11] + v5[3];
      v10 = 0;
      do
      {
        v11 = v9 + v10;
        v12 = *(_DWORD *)(v9 + v10);
        --v8;
        v10 += 8;
        *(_DWORD *)a3 = v12;
        *((_DWORD *)a3 + 1) = *(_DWORD *)(v11 + 4);
        a3 += a4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c2c80 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(ushort,int*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  bool v7; // zf
  int v8; // r1
  int v9; // r12
  int v10; // r4
  int v11; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 1 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1[11] + v5[3]), 4 * v5[2]);
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = v5[2];
    if ( v9 )
    {
      v10 = a1[11] + v5[3];
      do
      {
        v11 = *(_DWORD *)(v10 + 4 * v8++);
        *(_DWORD *)a3 = v11;
        a3 += a4;
      }
      while ( v9 != v8 );
    }
    return 1;
  }
}


// ===== 5c2d60 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
        _DWORD *a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (glitch::IReferenceCounted **)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (void **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5c2e9c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(ushort,glitch::video::SColorf const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r6
  float *v5; // r4
  int *v7; // r6
  int v8; // r3
  bool v9; // zf
  _DWORD *v11; // r8
  _DWORD *j; // r2
  int v13; // r3
  int v14; // r10
  int v15; // r6
  int v16; // r12
  _DWORD *v17; // r7
  int v18; // r0
  int v19; // r1
  int v20; // r2
  int v21; // r3
  _DWORD *v22; // r9
  _DWORD *i; // r8
  char v24; // r6
  char v25; // r7
  unsigned int v26; // r0

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20000) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 17 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = (_DWORD *)(a1[11] + v7[3]);
    switch ( v8 )
    {
      case 16:
        v22 = &v11[v7[2]];
        if ( v11 != v22 )
        {
          for ( i = v11 + 1; ; ++i )
          {
            v24 = (unsigned int)(float)(*v5 * 255.0);
            v25 = (unsigned int)(float)(v5[1] * 255.0);
            v26 = (unsigned int)(float)(v5[2] * 255.0);
            *((_BYTE *)i - 1) = (unsigned int)(float)(v5[3] * 255.0);
            *((_BYTE *)i - 2) = v26;
            *((_BYTE *)i - 3) = v25;
            *((_BYTE *)i - 4) = v24;
            if ( v22 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v14 = v7[2];
        if ( v14 )
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = &v11[4 * v16++];
            v18 = *(_DWORD *)((char *)v5 + v15);
            v19 = *(_DWORD *)((char *)v5 + v15 + 4);
            v20 = *(_DWORD *)((char *)v5 + v15 + 8);
            v21 = *(_DWORD *)((char *)v5 + v15 + 12);
            v15 += a4;
            *v17 = v18;
            v17[1] = v19;
            v17[2] = v20;
            v17[3] = v21;
          }
          while ( v14 != v16 );
        }
        break;
      case 8:
        for ( j = &v11[4 * v7[2]]; j != v11; v11 += 4 )
        {
          *v11 = *(_DWORD *)v5;
          v11[1] = *((_DWORD *)v5 + 1);
          v11[2] = *((_DWORD *)v5 + 2);
          v13 = *((_DWORD *)v5 + 3);
          v5 = (float *)((char *)v5 + a4);
          v11[3] = v13;
        }
        break;
    }
    return 1;
  }
  memcpy((void *)(a1[11] + v7[3]), a3, 16 * v7[2]);
  return 1;
}


// ===== 5c30b0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(ushort,glitch::video::SColor const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned __int8 *a3,
        int a4)
{
  int v4; // r6
  unsigned __int8 *v5; // r4
  int *v7; // r6
  int v8; // r3
  bool v9; // zf
  float *v11; // r8
  float *v12; // r9
  float v13; // r6
  float v14; // r7
  float v15; // r0
  float *v16; // r9
  float v17; // r6
  float v18; // r7
  float v19; // r0
  int v20; // r10
  int v21; // r7
  int i; // r6
  float *v23; // r0

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x10000) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 16 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = (float *)(a1[11] + v7[3]);
    switch ( v8 )
    {
      case 16:
        v20 = v7[2];
        if ( v20 )
        {
          v21 = 0;
          for ( i = 0; i != v20; ++i )
          {
            v23 = &v11[i];
            memcpy(v23, &v5[v21], sizeof(float));
            v21 += a4;
          }
        }
        break;
      case 17:
        v16 = &v11[4 * v7[2]];
        if ( v11 != v16 )
        {
          while ( 1 )
          {
            v17 = (float)*v5 * 0.0039216;
            v18 = (float)v5[1] * 0.0039216;
            v19 = (float)v5[3];
            v11[2] = (float)v5[2] * 0.0039216;
            v11[3] = v19 * 0.0039216;
            v11[1] = v18;
            *v11 = v17;
            v11 += 4;
            if ( v16 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
      case 8:
        v12 = &v11[4 * v7[2]];
        if ( v11 != v12 )
        {
          while ( 1 )
          {
            v13 = (float)*v5 * 0.0039216;
            v14 = (float)v5[1] * 0.0039216;
            v15 = (float)v5[3];
            v11[2] = (float)v5[2] * 0.0039216;
            v11[3] = v15 * 0.0039216;
            v11[1] = v14;
            *v11 = v13;
            v11 += 4;
            if ( v12 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
    }
    return 1;
  }
  memcpy((void *)(a1[11] + v7[3]), a3, 4 * v7[2]);
  return 1;
}


// ===== 5c3308 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r6
  float *v5; // r4
  int *v7; // r1
  int v8; // r3
  bool v9; // zf
  _DWORD *v11; // r12
  int j; // r3
  int v13; // r2
  _DWORD *v14; // r7
  int v15; // r6
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v19; // r9
  _DWORD *i; // r6
  char v21; // r7
  char v22; // r8
  unsigned int v23; // r0

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x100) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 8 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = (_DWORD *)(a1[11] + v7[3]);
    switch ( v8 )
    {
      case 16:
        v19 = &v11[v7[2]];
        if ( v11 != v19 )
        {
          for ( i = v11 + 1; ; ++i )
          {
            v21 = (unsigned int)(float)(*v5 * 255.0);
            v22 = (unsigned int)(float)(v5[1] * 255.0);
            v23 = (unsigned int)(float)(v5[2] * 255.0);
            *((_BYTE *)i - 1) = (unsigned int)(float)(v5[3] * 255.0);
            *((_BYTE *)i - 2) = v23;
            *((_BYTE *)i - 3) = v22;
            *((_BYTE *)i - 4) = v21;
            if ( v19 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v14 = &v11[4 * v7[2]];
        if ( v11 != v14 )
        {
          v15 = 0;
          do
          {
            v16 = *(_DWORD *)((char *)v5 + v15 + 4);
            v17 = *(_DWORD *)((char *)v5 + v15 + 8);
            v18 = *(_DWORD *)((char *)v5 + v15 + 12);
            *v11 = *(_DWORD *)((char *)v5 + v15);
            v11[1] = v16;
            v11[2] = v17;
            v11[3] = v18;
            v11 += 4;
            v15 += a4;
          }
          while ( v14 != v11 );
        }
        break;
      case 8:
        for ( j = v7[2]; j; v11 += 4 )
        {
          --j;
          *v11 = *(_DWORD *)v5;
          v11[1] = *((_DWORD *)v5 + 1);
          v11[2] = *((_DWORD *)v5 + 2);
          v13 = *((_DWORD *)v5 + 3);
          v5 = (float *)((char *)v5 + a4);
          v11[3] = v13;
        }
        break;
    }
    return 1;
  }
  memcpy((void *)(a1[11] + v7[3]), a3, 16 * v7[2]);
  return 1;
}


// ===== 5c3514 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int *v6; // r5
  int v7; // r2
  bool v8; // zf
  int v10; // r0
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x80) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    if ( v7 == 7 )
    {
      memcpy((void *)(a1[11] + v6[3]), a3, 12 * v6[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v10 = a1[11];
  if ( v7 != 7 )
    return 1;
  v11 = v6[2];
  if ( !v11 )
    return 1;
  v12 = (_DWORD *)(v10 + v6[3]);
  do
  {
    --v11;
    *v12 = *(_DWORD *)a3;
    v12[1] = *((_DWORD *)a3 + 1);
    v13 = *((_DWORD *)a3 + 2);
    a3 += a4;
    v12[2] = v13;
    v12 += 3;
  }
  while ( v11 );
  return 1;
}


// ===== 5c3640 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v9; // r5
  int v10; // r0
  int v11; // r5
  int v12; // r12
  int v13; // r1
  int v14; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    if ( v6 == 6 )
    {
      memcpy((void *)(a1[11] + v5[3]), a3, 8 * v5[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v9 = a1[11];
  if ( v6 != 6 )
    return 1;
  v10 = v5[2];
  if ( !v10 )
    return 1;
  v11 = v9 + v5[3];
  v12 = 0;
  do
  {
    --v10;
    *(_DWORD *)(v11 + v12) = *(_DWORD *)a3;
    v13 = v11 + v12;
    v14 = *((_DWORD *)a3 + 1);
    v12 += 8;
    a3 += a4;
    *(_DWORD *)(v13 + 4) = v14;
  }
  while ( v10 );
  return 1;
}


// ===== 5c3764 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(ushort,float const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r4
  float *v5; // r6
  int *v7; // r4
  int v8; // r3
  bool v9; // zf
  int v11; // r5
  int v12; // r1
  int j; // r3
  float v14; // t1
  int v15; // r7
  int i; // r4
  float v17; // t1

  v4 = a1[6];
  v5 = a3;
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( !v9 )
    goto LABEL_14;
  if ( v8 != 5 )
  {
    if ( !a4 )
      return 1;
LABEL_14:
    v11 = a1[11] + v7[3];
    if ( v8 == 1 )
    {
      v15 = v7[2];
      if ( v15 )
      {
        for ( i = 0; i != v15; ++i )
        {
          v17 = *v5;
          v5 = (float *)((char *)v5 + a4);
          *(_DWORD *)(v11 + 4 * i) = (int)v17;
        }
      }
    }
    else if ( v8 == 5 )
    {
      v12 = v7[2];
      if ( v12 )
      {
        for ( j = 0; j != v12; ++j )
        {
          v14 = *v5;
          v5 = (float *)((char *)v5 + a4);
          *(float *)(v11 + 4 * j) = v14;
        }
      }
    }
    return 1;
  }
  memcpy((void *)(a1[11] + v7[3]), a3, 4 * v7[2]);
  return 1;
}


// ===== 5c38b0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v9; // r12
  int v10; // r0
  _DWORD *v11; // r1
  int v12; // r12

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    if ( v6 == 4 )
    {
      memcpy((void *)(a1[11] + v5[3]), a3, 16 * v5[2]);
      return 1;
    }
    if ( !a4 )
      return 1;
  }
  v9 = a1[11];
  if ( v6 != 4 )
    return 1;
  v10 = v5[2];
  if ( !v10 )
    return 1;
  v11 = (_DWORD *)(v9 + v5[3]);
  do
  {
    --v10;
    *v11 = *(_DWORD *)a3;
    v11[1] = *((_DWORD *)a3 + 1);
    v11[2] = *((_DWORD *)a3 + 2);
    v12 = *((_DWORD *)a3 + 3);
    a3 += a4;
    v11[3] = v12;
    v11 += 4;
  }
  while ( v10 );
  return 1;
}


// ===== 5c39dc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1
  int v8; // r2
  int v9; // r12
  int v10; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 3 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3] + 12 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = v7 + v8;
  *a4 = v9;
  a4[1] = *(_DWORD *)(v10 + 4);
  a4[2] = *(_DWORD *)(v10 + 8);
  return 1;
}


// ===== 5c3a94 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1
  int v8; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 2 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3] + 8 * a3;
  *a4 = *(_DWORD *)(v7 + v8);
  a4[1] = *(_DWORD *)(v7 + v8 + 4);
  return 1;
}


// ===== 5c3b40 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(ushort,uint,int&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r12

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 1 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  *a4 = *(_DWORD *)(v7 + v5[3] + 4 * a3);
  return 1;
}


// ===== 5c3be0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r4
  int *v6; // r4
  int v7; // r3
  int v8; // r6
  int v9; // r5
  int v10; // r4
  char v12; // r10
  char v13; // r8
  unsigned int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20000) == 0 || a3 >= v6[2] )
    return 0;
  v8 = a1[11];
  v9 = v6[3];
  v10 = v8 + v9;
  switch ( v7 )
  {
    case 16:
      v12 = (unsigned int)(float)(a4[3] * 255.0);
      v13 = (unsigned int)(float)(*a4 * 255.0);
      v14 = (unsigned int)(float)(a4[2] * 255.0);
      *(_BYTE *)(v10 + 1) = (unsigned int)(float)(a4[1] * 255.0);
      *(_BYTE *)(v10 + 3) = v12;
      *(_BYTE *)(v10 + 2) = v14;
      *(_BYTE *)(v8 + v9) = v13;
      return 1;
    case 17:
      v15 = *((_DWORD *)a4 + 1);
      v16 = *((_DWORD *)a4 + 2);
      v17 = *((_DWORD *)a4 + 3);
      *(float *)v10 = *a4;
      *(_DWORD *)(v10 + 4) = v15;
      *(_DWORD *)(v10 + 8) = v16;
      *(_DWORD *)(v10 + 12) = v17;
      return 1;
    case 8:
      *(float *)(v8 + v9) = *a4;
      *(float *)(v10 + 4) = a4[1];
      *(float *)(v10 + 8) = a4[2];
      *(float *)(v10 + 12) = a4[3];
      return 1;
    default:
      return 1;
  }
}


// ===== 5c3d5c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(ushort,uint,glitch::video::SColor const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned __int8 *a4)
{
  int v4; // r4
  int *v6; // r4
  int v7; // r3
  int v8; // r6
  int v9; // r5
  float *v10; // r4
  float v12; // r0
  int v13; // r3
  int v14; // r7
  float v15; // r8
  float v16; // r10
  float v17; // r0
  float v18; // [sp+4h] [bp-Ch]

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x10000) == 0 || a3 >= v6[2] )
    return 0;
  v8 = a1[11];
  v9 = v6[3];
  v10 = (float *)(v8 + v9);
  if ( v7 == 16 )
  {
    memcpy((void *)(v8 + v9), a4, 4u);
    return 1;
  }
  else if ( v7 == 17 )
  {
    v15 = (float)*a4 * 0.0039216;
    v16 = (float)a4[2] * 0.0039216;
    v17 = (float)a4[3];
    v10[1] = (float)a4[1] * 0.0039216;
    v10[3] = v17 * 0.0039216;
    v10[2] = v16;
    *(float *)(v8 + v9) = v15;
    return 1;
  }
  else
  {
    if ( v7 == 8 )
    {
      v12 = (float)*a4 * 0.0039216;
      v13 = a4[2];
      v18 = (float)a4[1] * 0.0039216;
      v14 = a4[3];
      *(float *)(v8 + v9) = v12;
      v10[1] = v18;
      v10[2] = (float)v13 * 0.0039216;
      v10[3] = (float)v14 * 0.0039216;
    }
    return 1;
  }
}


// ===== 5c3f40 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r3
  int v7; // r1
  _BOOL4 v8; // r12
  int v9; // r12
  int v10; // r2
  int result; // r0
  glitch::IReferenceCounted *v12; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *a4;
  v7 = *((unsigned __int8 *)v5 + 6);
  v8 = v6 ? v7 == (*(_DWORD *)(v6 + 56) & 3) + 12 : (unsigned int)(v7 - 12) <= 3;
  if ( !v8 || a3 >= v5[2] )
    return 0;
  v9 = a1[11];
  v10 = v5[3];
  switch ( *((_BYTE *)v5 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      if ( v6 )
        ++*(_DWORD *)(v6 + 4);
      v12 = *(glitch::IReferenceCounted **)(v9 + v10);
      *(_DWORD *)(v9 + v10) = v6;
      if ( !v12 )
        goto LABEL_15;
      glitch::IReferenceCounted::drop(v12);
      result = 1;
      break;
    default:
LABEL_15:
      result = 1;
      break;
  }
  return result;
}


// ===== 5c4054 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r4
  int *v6; // r4
  int v7; // r3
  int v8; // r6
  int v9; // r5
  int v10; // r4
  char v12; // r10
  char v13; // r8
  unsigned int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 )
    return 0;
  v7 = *((unsigned __int8 *)v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x100) == 0 || a3 >= v6[2] )
    return 0;
  v8 = a1[11];
  v9 = v6[3];
  v10 = v8 + v9;
  switch ( v7 )
  {
    case 16:
      v12 = (unsigned int)(float)(a4[3] * 255.0);
      v13 = (unsigned int)(float)(*a4 * 255.0);
      v14 = (unsigned int)(float)(a4[2] * 255.0);
      *(_BYTE *)(v10 + 1) = (unsigned int)(float)(a4[1] * 255.0);
      *(_BYTE *)(v10 + 3) = v12;
      *(_BYTE *)(v10 + 2) = v14;
      *(_BYTE *)(v8 + v9) = v13;
      return 1;
    case 17:
      v15 = *((_DWORD *)a4 + 1);
      v16 = *((_DWORD *)a4 + 2);
      v17 = *((_DWORD *)a4 + 3);
      *(float *)v10 = *a4;
      *(_DWORD *)(v10 + 4) = v15;
      *(_DWORD *)(v10 + 8) = v16;
      *(_DWORD *)(v10 + 12) = v17;
      return 1;
    case 8:
      *(float *)(v8 + v9) = *a4;
      *(float *)(v10 + 4) = a4[1];
      *(float *)(v10 + 8) = a4[2];
      *(float *)(v10 + 12) = a4[3];
      return 1;
    default:
      return 1;
  }
}


// ===== 5c41d0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float>>(
        _DWORD *result,
        unsigned int a2,
        unsigned int a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r12
  int v9; // r1
  int v10; // r2

  v4 = result[6];
  if ( a2 >= -858993459 * ((result[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return nullptr;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x80) == 0 || a3 >= v5[2] )
    return nullptr;
  v7 = v6 == 7;
  v8 = result[11];
  v9 = v5[3];
  if ( v7 )
    v5 = *(int **)a4;
  else
    result = &dword_0 + 1;
  if ( v7 )
  {
    v10 = v8 + v9;
    *(_DWORD *)(v8 + v9) = v5;
    result = &dword_0 + 1;
    *(_DWORD *)(v10 + 4) = *(_DWORD *)(a4 + 4);
    *(_DWORD *)(v10 + 8) = *(_DWORD *)(a4 + 8);
  }
  return result;
}


// ===== 5c4298 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float> const&) =====
_DWORD *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float>>(
        _DWORD *result,
        unsigned int a2,
        unsigned int a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v9; // r1

  v4 = result[6];
  if ( a2 >= -858993459 * ((result[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return nullptr;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40) == 0 || a3 >= v5[2] )
    return nullptr;
  v7 = v6 == 6;
  v8 = v5[3];
  v9 = result[11];
  if ( v7 )
    v5 = *(int **)a4;
  else
    result = &dword_0 + 1;
  if ( v7 )
  {
    *(_DWORD *)(v9 + v8) = v5;
    result = &dword_0 + 1;
    *(_DWORD *)(v9 + v8 + 4) = *(_DWORD *)(a4 + 4);
  }
  return result;
}


// ===== 5c4358 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(ushort,uint,float const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r5
  int v7; // r6
  int v8; // r4
  int result; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x20) == 0 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3];
  if ( v6 == 1 )
  {
    *(_DWORD *)(v7 + v8) = (int)*a4;
    return 1;
  }
  else
  {
    result = 1;
    if ( v6 == 5 )
      *(float *)(v7 + v8) = *a4;
  }
  return result;
}


// ===== 5c442c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r12
  int v9; // r1
  _DWORD *v11; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10) == 0 || a3 >= v5[2] )
    return 0;
  v7 = v6 == 4;
  v8 = a1[11];
  v9 = v5[3];
  if ( !v7 )
    return 1;
  v11 = (_DWORD *)(v8 + v9);
  *(_DWORD *)(v8 + v9) = *a4;
  v11[1] = a4[1];
  v11[2] = a4[2];
  v11[3] = a4[3];
  return 1;
}


// ===== 5c4500 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int> const&) =====
_DWORD *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int>>(
        _DWORD *result,
        unsigned int a2,
        unsigned int a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r12
  int v9; // r1
  int v10; // r2

  v4 = result[6];
  if ( a2 >= -858993459 * ((result[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return nullptr;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 8) == 0 || a3 >= v5[2] )
    return nullptr;
  v7 = v6 == 3;
  v8 = result[11];
  v9 = v5[3];
  if ( v7 )
    v5 = *(int **)a4;
  else
    result = &dword_0 + 1;
  if ( v7 )
  {
    v10 = v8 + v9;
    *(_DWORD *)(v8 + v9) = v5;
    result = &dword_0 + 1;
    *(_DWORD *)(v10 + 4) = *(_DWORD *)(a4 + 4);
    *(_DWORD *)(v10 + 8) = *(_DWORD *)(a4 + 8);
  }
  return result;
}


// ===== 5c45c8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int> const&) =====
_DWORD *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int>>(
        _DWORD *result,
        unsigned int a2,
        unsigned int a3,
        int a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v9; // r1

  v4 = result[6];
  if ( a2 >= -858993459 * ((result[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return nullptr;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 4) == 0 || a3 >= v5[2] )
    return nullptr;
  v7 = v6 == 2;
  v8 = v5[3];
  v9 = result[11];
  if ( v7 )
    v5 = *(int **)a4;
  else
    result = &dword_0 + 1;
  if ( v7 )
  {
    *(_DWORD *)(v9 + v8) = v5;
    result = &dword_0 + 1;
    *(_DWORD *)(v9 + v8 + 4) = *(_DWORD *)(a4 + 4);
  }
  return result;
}


// ===== 5c4688 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(ushort,uint,int const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  int v7; // r5
  int v8; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 2) == 0 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  v8 = v5[3];
  if ( v6 == 1 )
  {
    *(_DWORD *)(v7 + v8) = *a4;
    return 1;
  }
  else
  {
    if ( v6 == 5 )
      *(float *)(v7 + v8) = (float)(int)*a4;
    return 1;
  }
}


// ===== 5c4754 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r5
  int *v5; // r5
  int v6; // r12
  _DWORD *v8; // r4
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 17 || a3 >= v5[2] )
    return 0;
  v6 = 1;
  v8 = (_DWORD *)(a1[11] + v5[3] + 16 * a3);
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  return v6;
}


// ===== 5c47fc glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(ushort,uint,glitch::video::SColor const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r4
  int *v5; // r4

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 16 || a3 >= v5[2] )
    return 0;
  memcpy((void *)(a1[11] + v5[3] + 4 * a3), a4, 4u);
  return 1;
}


// ===== 5c48a0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r3
  int v7; // r12
  _BOOL4 v8; // r1
  int v9; // r1
  int v10; // r12
  unsigned int v11; // r2
  glitch::IReferenceCounted *v12; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *a4;
  v7 = *((unsigned __int8 *)v5 + 6);
  v8 = v6 ? v7 == (*(_DWORD *)(v6 + 56) & 3) + 12 : (unsigned int)(v7 - 12) <= 3;
  if ( !v8 || a3 >= v5[2] )
    return 0;
  v9 = a1[11];
  if ( v6 )
    a1 = *(_DWORD **)(v6 + 4);
  v10 = v5[3];
  if ( v6 )
    *(_DWORD *)(v6 + 4) = (char *)a1 + 1;
  v11 = v10 + 4 * a3;
  v12 = *(glitch::IReferenceCounted **)(v9 + v11);
  *(_DWORD *)(v9 + v11) = v6;
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  return 1;
}


// ===== 5c4990 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 8 || a3 >= v5[2] )
    return 0;
  v7 = (_DWORD *)(a1[11] + v5[3] + 16 * a3);
  *v7 = *a4;
  v7[1] = a4[1];
  v7[2] = a4[2];
  v7[3] = a4[3];
  return 1;
}


// ===== 5c4a4c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 7 || a3 >= v5[2] )
    return 0;
  v7 = (_DWORD *)(a1[11] + v5[3] + 12 * a3);
  *v7 = *a4;
  v7[1] = a4[1];
  v7[2] = a4[2];
  return 1;
}


// ===== 5c4b04 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r12

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 6 || a3 >= v5[2] )
    return 0;
  v7 = (_DWORD *)(a1[11] + v5[3] + 8 * a3);
  *v7 = *a4;
  v7[1] = a4[1];
  return 1;
}


// ===== 5c4bb0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(ushort,uint,float const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 5 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  *(_DWORD *)(v7 + v5[3] + 4 * a3) = *a4;
  return 1;
}


// ===== 5c4c50 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 4 || a3 >= v5[2] )
    return 0;
  v7 = (_DWORD *)(a1[11] + v5[3] + 16 * a3);
  *v7 = *a4;
  v7[1] = a4[1];
  v7[2] = a4[2];
  v7[3] = a4[3];
  return 1;
}


// ===== 5c4d0c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 3 || a3 >= v5[2] )
    return 0;
  v7 = (_DWORD *)(a1[11] + v5[3] + 12 * a3);
  *v7 = *a4;
  v7[1] = a4[1];
  v7[2] = a4[2];
  return 1;
}


// ===== 5c4dc4 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r12

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 2 || a3 >= v5[2] )
    return 0;
  v7 = (_DWORD *)(a1[11] + v5[3] + 8 * a3);
  *v7 = *a4;
  v7[1] = a4[1];
  return 1;
}


// ===== 5c4e70 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(ushort,uint,int const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int *v5; // r4
  int v7; // r12

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 1 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  *(_DWORD *)(v7 + v5[3] + 4 * a3) = *a4;
  return 1;
}


// ===== 5c4f10 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5c4fa8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        glitch::IReferenceCounted **a3,
        int a4)
{
  int v4; // r4
  int *v7; // r4
  int v8; // r5
  int v10; // r4
  int v11; // r7
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0
  int v14; // r4
  int v15; // r7
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted *v17; // r0
  int v18; // r4
  int v19; // r7
  glitch::IReferenceCounted *v20; // r3
  glitch::IReferenceCounted *v21; // r0
  int v22; // r4
  int v23; // r7
  glitch::IReferenceCounted *v24; // r3
  glitch::IReferenceCounted *v25; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 || (unsigned int)*((unsigned __int8 *)v7 + 6) - 12 > 3 )
    return 0;
  if ( a4 )
  {
    v8 = a1[11] + v7[3];
    switch ( *((_BYTE *)v7 + 6) )
    {
      case 0xC:
        v18 = v7[2];
        if ( v18 )
        {
          v19 = 0;
          do
          {
            v20 = *(glitch::IReferenceCounted **)(v8 + v19);
            v19 += 4;
            if ( v20 )
              ++*((_DWORD *)v20 + 1);
            v21 = *a3;
            *a3 = v20;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v21 )
              glitch::IReferenceCounted::drop(v21);
            --v18;
          }
          while ( v18 );
        }
        break;
      case 0xD:
        v22 = v7[2];
        if ( v22 )
        {
          v23 = 0;
          do
          {
            v24 = *(glitch::IReferenceCounted **)(v8 + v23);
            v23 += 4;
            if ( v24 )
              ++*((_DWORD *)v24 + 1);
            v25 = *a3;
            *a3 = v24;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v25 )
              glitch::IReferenceCounted::drop(v25);
            --v22;
          }
          while ( v22 );
        }
        break;
      case 0xE:
        v10 = v7[2];
        if ( v10 )
        {
          v11 = 0;
          do
          {
            v12 = *(glitch::IReferenceCounted **)(v8 + v11);
            v11 += 4;
            if ( v12 )
              ++*((_DWORD *)v12 + 1);
            v13 = *a3;
            *a3 = v12;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v13 )
              glitch::IReferenceCounted::drop(v13);
            --v10;
          }
          while ( v10 );
        }
        break;
      case 0xF:
        v14 = v7[2];
        if ( v14 )
        {
          v15 = 0;
          do
          {
            v16 = *(glitch::IReferenceCounted **)(v8 + v15);
            v15 += 4;
            if ( v16 )
              ++*((_DWORD *)v16 + 1);
            v17 = *a3;
            *a3 = v16;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v17 )
              glitch::IReferenceCounted::drop(v17);
            --v14;
          }
          while ( v14 );
        }
        break;
      default:
        return 1;
    }
  }
  return 1;
}


// ===== 5c518c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v4; // r12
  int *v7; // r12
  int v8; // r3
  int v10; // r5
  int v11; // r7
  int v12; // r10
  _DWORD *v13; // r3
  _DWORD *v14; // r2
  _DWORD *v16; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x40000) == 0 )
    return 0;
  if ( a4 )
  {
    if ( v8 == 18 )
    {
      v10 = v7[2];
      if ( v10 )
      {
        v11 = 0;
        v12 = a1[11] + v7[3];
        do
        {
          v13 = *(_DWORD **)(v12 + v11);
          v11 += 4;
          if ( v13 )
            ++*v13;
          v14 = *a3;
          *a3 = v13;
          a3 = (_DWORD **)((char *)a3 + a4);
          if ( v14 )
          {
            if ( (*v14)-- == 1 )
            {
              if ( !*((_BYTE *)v14 + 84) )
              {
                v16 = (_DWORD *)v14[20];
                *v16 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v16;
              }
              v14[20] = 0;
              LC_API_FREE_0(v14);
            }
          }
          --v10;
        }
        while ( v10 );
      }
    }
  }
  return 1;
}


// ===== 5c52d0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (glitch::IReferenceCounted **)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5c540c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v4; // r12
  int *v7; // r12
  int v8; // r3
  int v10; // r7
  int v11; // r5
  int v12; // r10
  _DWORD *v13; // r3
  _DWORD *v14; // r2
  _DWORD *v16; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v7 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v7 = (int *)(v4 + 20 * a2);
  if ( !*v7 )
    return 0;
  v8 = *((unsigned __int8 *)v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x40000) == 0 )
    return 0;
  if ( a4 )
  {
    if ( v8 == 18 )
    {
      v10 = v7[2];
      if ( v10 )
      {
        v11 = 0;
        v12 = a1[11] + v7[3];
        do
        {
          v13 = *a3;
          a3 = (_DWORD **)((char *)a3 + a4);
          if ( v13 )
            ++*v13;
          v14 = *(_DWORD **)(v12 + v11);
          *(_DWORD *)(v12 + v11) = v13;
          v11 += 4;
          if ( v14 )
          {
            if ( (*v14)-- == 1 )
            {
              if ( !*((_BYTE *)v14 + 84) )
              {
                v16 = (_DWORD *)v14[20];
                *v16 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v16;
              }
              v14[20] = 0;
              LC_API_FREE_0(v14);
            }
          }
          --v10;
        }
        while ( v10 );
      }
    }
  }
  return 1;
}


// ===== 5c5550 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        int a3,
        int *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 (unsigned __int8 *)a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5c568c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v4; // r12
  int *v6; // r12
  int v8; // r7
  int v9; // r10
  int v10; // r5
  int v11; // r8
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  _DWORD *v15; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v6 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v6 = (int *)(v4 + 20 * a2);
  if ( !*v6 || *((_BYTE *)v6 + 6) != 18 )
    return 0;
  v8 = v6[2];
  if ( a4 )
    v9 = a4;
  else
    v9 = 4;
  if ( v8 )
  {
    v10 = 0;
    v11 = a1[11] + v6[3];
    do
    {
      v12 = *a3;
      a3 = (_DWORD **)((char *)a3 + v9);
      if ( v12 )
        ++*v12;
      v13 = *(_DWORD **)(v11 + v10);
      *(_DWORD *)(v11 + v10) = v12;
      v10 += 4;
      if ( v13 )
      {
        if ( (*v13)-- == 1 )
        {
          if ( !*((_BYTE *)v13 + 84) )
          {
            v15 = (_DWORD *)v13[20];
            *v15 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v15;
          }
          v13[20] = 0;
          LC_API_FREE_0(v13);
        }
      }
      --v8;
    }
    while ( v8 );
  }
  return 1;
}


// ===== 5c57b0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<float>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (int *)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5c58ec glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD **a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40000) == 0 || a3 >= v5[2] )
    return 0;
  if ( v6 == 18 )
    boost::intrusive_ptr<glitch::video::CLight>::operator=(a4, (_DWORD **)(a1[11] + v5[3]));
  return 1;
}


// ===== 5c59a8 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        float *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<float>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 (glitch::IReferenceCounted **)a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (_DWORD **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5c5a40 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        void **a4)
{
  int v4; // r4
  int *v5; // r4
  _DWORD *v7; // r2
  _DWORD *v8; // r0
  _DWORD *v10; // r2

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 || *((_BYTE *)v5 + 6) != 18 || a3 >= v5[2] )
    return 0;
  v7 = *(_DWORD **)(a1[11] + v5[3] + 4 * a3);
  if ( v7 )
    ++*v7;
  v8 = *a4;
  *a4 = v7;
  if ( !v8 )
    return 1;
  if ( (*v8)-- != 1 )
    return 1;
  if ( !*((_BYTE *)v8 + 84) )
  {
    v10 = (_DWORD *)v8[20];
    *v10 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v10;
  }
  v8[20] = 0;
  LC_API_FREE_0(v8);
  return 1;
}


// ===== 5c5b48 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        _DWORD *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<float>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 (glitch::IReferenceCounted **)a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (void **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5c5be0 glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD **a4)
{
  int v4; // r4
  int *v5; // r4
  int v6; // r1
  int v7; // r0

  v4 = a1[6];
  if ( a2 >= -858993459 * ((a1[7] - v4) >> 2) )
    v5 = &glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid;
  else
    v5 = (int *)(v4 + 20 * a2);
  if ( !*v5 )
    return 0;
  v6 = *((unsigned __int8 *)v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40000) == 0 || a3 >= v5[2] )
    return 0;
  v7 = a1[11];
  if ( v6 == 18 )
    boost::intrusive_ptr<glitch::video::CLight>::operator=((_DWORD **)(v7 + v5[3]), a4);
  return 1;
}


// ===== 5c5c9c glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*) =====
_DWORD *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        float *a5)
{
  _DWORD *result; // r0

  switch ( a4 )
  {
    case 1:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 (int)a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 (int)a5);
      break;
    case 4:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int>>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 5:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<float>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 (int)a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 (int)a5);
      break;
    case 8:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float>>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 11:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                           a1,
                           a2,
                           a3,
                           (int *)a5);
      break;
    case 16:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(
                           a1,
                           a2,
                           a3,
                           (unsigned __int8 *)a5);
      break;
    case 17:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 18:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                           a1,
                           a2,
                           a3,
                           (_DWORD **)a5);
      break;
    default:
      result = nullptr;
      break;
  }
  return result;
}


// ===== 5c5d34 glitch::video::CMaterial::getTechnique(void) =====
int __fastcall glitch::video::CMaterial::getTechnique(glitch::video::CMaterial *this)
{
  int v1; // r2
  int v2; // r12
  int result; // r0
  int v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r3

  v1 = *((_DWORD *)this + 1);
  v2 = *((unsigned __int8 *)this + 20);
  result = *((unsigned __int8 *)this + 8);
  v4 = *(_DWORD *)(v1 + 4);
  v5 = *(unsigned __int16 *)(v1 + 12);
  v6 = *(_DWORD *)(v4 + 264);
  v7 = *(_DWORD *)(v4 + 260);
  if ( v6 )
  {
    v8 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v7 + 24) + 8 * v5 + 4) + 28);
    if ( v8 != -1 )
      return *(unsigned __int8 *)(*(_DWORD *)(v6 + 4 * v2) + result + v8);
  }
  return result;
}


// ===== 5c5d7c glitch::video::CMaterial::getRenderStateBlockSize(glitch::video::CMaterialRenderer const&) =====
int glitch::video::CMaterial::getRenderStateBlockSize()
{
  return 0;
}


// ===== 5c5d84 glitch::video::CMaterial::setRenderStateInternal(uchar,uchar,glitch::video::detail::material::SRenderState const&) =====
void glitch::video::CMaterial::setRenderStateInternal()
{
  ;
}


// ===== 5c5d88 glitch::video::CMaterial::updateParametersHashCode(uchar) =====
glitch::video::CMaterial *__fastcall glitch::video::CMaterial::updateParametersHashCode(
        glitch::video::CMaterial *this,
        int a2)
{
  int v2; // r3
  char *v3; // r11
  int v4; // r1
  unsigned __int16 *v5; // r6
  unsigned __int16 *v6; // r8
  int v7; // r1
  __int16 v8; // r5
  unsigned int v9; // r2
  unsigned int v10; // r0
  bool v11; // cc
  int v12; // r0
  int v13; // r10
  int v14; // r0
  unsigned __int8 *v15; // r2
  unsigned __int8 *i; // r0
  int v17; // t1
  unsigned __int8 *v19; // r2
  unsigned __int8 *v20; // r10
  __int16 v21; // t1
  char *v22; // r7
  char *v23; // r10
  int v24; // r4
  int v25; // r0
  int j; // r3
  int v27; // r2
  int v28; // r2

  v2 = *((_DWORD *)this + 1);
  v3 = (char *)this + 32;
  v4 = *(_DWORD *)(*(_DWORD *)(v2 + 24) + 12 * a2 + 8);
  v5 = *(unsigned __int16 **)(v4 + 36);
  v6 = &v5[(unsigned __int16)(*(_WORD *)(*(_DWORD *)(v4 + 32) + 54)
                            + *(_WORD *)(*(_DWORD *)(v4 + 32) + 46)
                            - *(_WORD *)(*(_DWORD *)(v4 + 32) + 44)
                            - *(_WORD *)(*(_DWORD *)(v4 + 32) + 52))];
  if ( v6 != v5 )
  {
    v7 = 0;
    v8 = 0;
    while ( 1 )
    {
      v9 = *v5;
      if ( (v9 & 0x8000) != 0 )
        goto LABEL_16;
      v10 = *(unsigned __int16 *)(v2 + 14);
      v11 = v10 > v9;
      if ( v10 <= v9 )
        v9 = 0;
      else
        v10 = *(_DWORD *)(v2 + 32);
      if ( v11 )
        v9 = v10 + 16 * v9;
      v12 = *(unsigned __int16 *)(v9 + 4);
      v13 = *(_DWORD *)(v9 + 8);
      if ( v12 == 2 )
      {
        v19 = (unsigned __int8 *)&v3[*(_DWORD *)(v9 + 12)];
        v20 = &v19[4 * v13];
        if ( v19 == v20 )
          goto LABEL_16;
        do
        {
          v21 = *v19++;
          v8 = v21 + 13 * v8;
        }
        while ( v19 != v20 );
        if ( v6 == ++v5 )
          goto LABEL_17;
      }
      else
      {
        if ( v12 == 11 || v12 == 15 )
          goto LABEL_16;
        v14 = *(unsigned __int8 *)(v9 + 6);
        if ( v14 != 11 )
        {
          v15 = (unsigned __int8 *)&v3[*(_DWORD *)(v9 + 12)];
          for ( i = &v15[v13 * glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[v14]];
                v15 != i;
                v7 = v17 + 13 * v7 )
          {
            v17 = *v15++;
          }
          goto LABEL_16;
        }
        v22 = &v3[*(_DWORD *)(v9 + 12)];
        v23 = &v22[4 * v13];
        if ( v22 == v23 )
        {
LABEL_16:
          if ( v6 == ++v5 )
            goto LABEL_17;
        }
        else
        {
          v24 = v2;
          do
          {
            while ( 1 )
            {
              v25 = *(_DWORD *)v22;
              if ( !*(_DWORD *)v22 )
                break;
              for ( j = 0; j != 68; ++j )
              {
                v27 = *(unsigned __int8 *)(v25 + j);
                v7 = v27 + 13 * v7;
              }
              v22 += 4;
              if ( v23 == v22 )
                goto LABEL_28;
            }
            do
            {
              v28 = *((unsigned __int8 *)&glitch::core::IdentityMatrix + v25++);
              v7 = v28 + 13 * v7;
            }
            while ( v25 != 68 );
            v22 += 4;
          }
          while ( v23 != v22 );
LABEL_28:
          ++v5;
          v2 = v24;
          if ( v6 == v5 )
            goto LABEL_17;
        }
      }
    }
  }
  LOBYTE(v7) = 0;
  v8 = 0;
LABEL_17:
  *(_DWORD *)(*((_DWORD *)this + 6) + 4 * a2) = (unsigned __int8)v7
                                              | *(_DWORD *)(*((_DWORD *)this + 6) + 4 * a2) & 0xFF000F00
                                              | ((v8 & 0xFFF) << 12);
  return this;
}


// ===== 5c5fa4 glitch::video::CMaterial::updateRenderStateHashCode(uchar) =====
unsigned int __fastcall glitch::video::CMaterial::updateRenderStateHashCode(glitch::video::CMaterial *this, int a2)
{
  int v2; // r3
  _BYTE *v3; // r12
  unsigned int result; // r0

  v2 = *((_DWORD *)this + 6);
  v3 = *(_BYTE **)(*(_DWORD *)(*((_DWORD *)this + 1) + 24) + 12 * a2 + 8);
  result = *(_DWORD *)(v2 + 4 * a2) & 0xFFFFF0FF;
  *(_DWORD *)(v2 + 4 * a2) = result | ((*v3 & 0xF) << 8);
  return result;
}


// ===== 5c5fd8 glitch::video::CMaterial::updateHashCode(uchar) =====
glitch::video::CMaterial *__fastcall glitch::video::CMaterial::updateHashCode(glitch::video::CMaterial *this, int a2)
{
  glitch::video::CMaterial *result; // r0
  int v5; // r3
  int v6; // r3

  result = (glitch::video::CMaterial *)glitch::video::CMaterial::getTechnique(this);
  v5 = *(_DWORD *)(*((_DWORD *)this + 1) + 24);
  if ( *(unsigned __int8 *)(v5 + 12 * (_DWORD)result + 4) > 1u )
  {
    *(_DWORD *)(*((_DWORD *)this + 6) + 4 * a2) = -1;
LABEL_3:
    *((_DWORD *)this + 4) &= ~(1 << a2);
    return result;
  }
  if ( ((*((_DWORD *)this + 3) >> a2) & 1) != 0 )
  {
    result = glitch::video::CMaterial::updateParametersHashCode(this, a2);
    v5 = *(_DWORD *)(*((_DWORD *)this + 1) + 24);
  }
  v6 = v5 + 12 * a2;
  if ( *(unsigned __int8 *)(v6 + 4) <= 1u && !*(_BYTE *)(*(_DWORD *)(v6 + 8) + 48) )
    goto LABEL_3;
  result = (glitch::video::CMaterial *)glitch::video::CMaterial::updateRenderStateHashCode(this, a2);
  *((_DWORD *)this + 4) &= ~(1 << a2);
  return result;
}


// ===== 5c6094 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getThis(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getThis()
{
  ;
}


// ===== 5c6098 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getThis(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getThis()
{
  ;
}


// ===== 5c609c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterBlock(void) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterBlock(
        int a1)
{
  return a1 + 32;
}


// ===== 5c60a4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterBlock(void) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterBlock(
        int a1)
{
  return a1 + 32;
}


// ===== 5c60ac glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterDef(ushort) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterDef(
        int a1,
        unsigned int a2)
{
  int v2; // r3
  unsigned int v3; // r2
  int result; // r0

  v2 = *(_DWORD *)(a1 + 4);
  v3 = *(unsigned __int16 *)(v2 + 14);
  if ( v3 <= a2 )
    result = 0;
  else
    result = *(_DWORD *)(v2 + 32);
  if ( v3 > a2 )
    result += 16 * a2;
  return result;
}


// ===== 5c60c8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setDirty(void) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setDirty(
        int result)
{
  *(_DWORD *)(result + 12) = -1;
  *(_DWORD *)(result + 16) = -1;
  return result;
}


// ===== 5c60d8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(int *,float) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(
        int a1,
        int *a2,
        float a3)
{
  int result; // r0

  result = (int)a3;
  if ( (int)a3 != *a2 )
  {
    *(_DWORD *)(a1 + 12) = -1;
    *(_DWORD *)(a1 + 16) = -1;
  }
  *a2 = result;
  return result;
}


// ===== 5c6108 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(float *,int) =====
bool __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(
        int a1,
        float *a2,
        int a3)
{
  _BOOL4 result; // r0

  result = (float)a3 == *a2;
  if ( (float)a3 != *a2 )
  {
    *(_DWORD *)(a1 + 12) = -1;
    *(_DWORD *)(a1 + 16) = -1;
  }
  *a2 = (float)a3;
  return result;
}


// ===== 5c6140 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(glitch::core::vector4d<float> *,glitch::video::SColorf const&) =====
bool __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(
        int a1,
        float *a2,
        float *a3)
{
  float v3; // r6
  _BOOL4 result; // r0

  v3 = *a3;
  result = *a2 == *a3;
  if ( *a2 != *a3
    || (result = a2[1] == a3[1], a2[1] != a3[1])
    || (result = a2[2] == a3[2], a2[2] != a3[2])
    || (result = a2[3] == a3[3], a2[3] != a3[3]) )
  {
    *(_DWORD *)(a1 + 12) = -1;
    *(_DWORD *)(a1 + 16) = -1;
    v3 = *a3;
  }
  *a2 = v3;
  a2[1] = a3[1];
  a2[2] = a3[2];
  a2[3] = a3[3];
  return result;
}


// ===== 5c61d8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(int const*,float &) =====
float __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(
        int a1,
        int *a2,
        float *a3)
{
  float result; // r0

  result = (float)*a2;
  *a3 = result;
  return result;
}


// ===== 5c61f0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(float const*,int &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(
        int a1,
        float *a2,
        int *a3)
{
  int result; // r0

  result = (int)*a2;
  *a3 = result;
  return result;
}


// ===== 5c6208 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(glitch::video::SColorf const*,glitch::core::vector4d<float> &) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  a3[3] = a2[3];
}


// ===== 5c622c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(glitch::core::vector4d<float> const*,glitch::video::SColorf &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterAt(
        int a1,
        int *a2,
        _DWORD *a3)
{
  int result; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // t0

  result = *a2;
  v8 = a2 + 1;
  v5 = a2[1];
  v6 = *++v8;
  v7 = v8[1];
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}


// ===== 5c623c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<int>(ushort,uint,int const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r12
  int v5; // r1
  _DWORD *v7; // r12
  int v8; // r2
  int v9; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 1 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = a1 + 8;
  v8 = *(_DWORD *)(v5 + 12) + 4 * a3;
  v9 = *(_DWORD *)((char *)a1 + v8 + 32);
  if ( v9 != *a4 )
  {
    a1[3] = -1;
    a1[4] = -1;
    v9 = *a4;
  }
  *(_DWORD *)((char *)v7 + v8) = v9;
  return 1;
}


// ===== 5c62b4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r4
  int v8; // r1
  int v9; // r2
  _DWORD *v10; // r4

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 2 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  v8 = *a4;
  v9 = v7 + 8 * a3;
  v10 = (_DWORD *)((char *)a1 + v9 + 32);
  if ( *a4 != *v10 || a4[1] != v10[1] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v8 = *a4;
  }
  *(_DWORD *)((char *)a1 + v9 + 32) = v8;
  v10[1] = a4[1];
  return 1;
}


// ===== 5c6350 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r2
  int v8; // r12
  char *v9; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 3 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12) + 12 * a3;
  v8 = *(_DWORD *)((char *)a1 + v7 + 32);
  v9 = (char *)a1 + v7 + 32;
  if ( v8 != *a4 || *((_DWORD *)v9 + 1) != a4[1] || *((_DWORD *)v9 + 2) != a4[2] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v8 = *a4;
  }
  *(_DWORD *)((char *)a1 + v7 + 32) = v8;
  *((_DWORD *)v9 + 1) = a4[1];
  *((_DWORD *)v9 + 2) = a4[2];
  return 1;
}


// ===== 5c6408 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r2
  int v8; // r12
  _DWORD *v9; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 4 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12) + 16 * a3;
  v8 = *(_DWORD *)((char *)a1 + v7 + 32);
  v9 = (_DWORD *)((char *)a1 + v7 + 32);
  if ( v8 != *a4 || v9[1] != a4[1] || v9[2] != a4[2] || v9[3] != a4[3] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v8 = *a4;
  }
  *(_DWORD *)((char *)a1 + v7 + 32) = v8;
  v9[1] = a4[1];
  v9[2] = a4[2];
  v9[3] = a4[3];
  return 1;
}


// ===== 5c64d4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(ushort,uint,float const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r0
  int v6; // r1
  float v8; // r5
  int v9; // r6

  v5 = a1[1];
  if ( *(unsigned __int16 *)(v5 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v5 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 5 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v8 = *a4;
  v9 = *(_DWORD *)(v6 + 12) + 4 * a3;
  if ( *(float *)((char *)a1 + v9 + 32) != *a4 )
  {
    a1[3] = -1;
    a1[4] = -1;
    v8 = *a4;
  }
  *(float *)((char *)a1 + v9 + 32) = v8;
  return 1;
}


// ===== 5c6564 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r0
  int v7; // r1
  float v8; // r6
  int v9; // r8
  float *v10; // r7

  v5 = a1[1];
  if ( *(unsigned __int16 *)(v5 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v5 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 6 || a3 >= *(_DWORD *)(v7 + 8) )
    return 0;
  v8 = *a4;
  v9 = *(_DWORD *)(v7 + 12) + 8 * a3;
  v10 = (float *)((char *)a1 + v9 + 32);
  if ( *a4 != *v10 || a4[1] != v10[1] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v8 = *a4;
  }
  *(float *)((char *)a1 + v9 + 32) = v8;
  v10[1] = a4[1];
  return 1;
}


// ===== 5c660c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r0
  int v7; // r1
  float v8; // r7
  int v9; // r8
  float *v10; // r6

  v5 = a1[1];
  if ( *(unsigned __int16 *)(v5 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v5 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 7 || a3 >= *(_DWORD *)(v7 + 8) )
    return 0;
  v8 = *a4;
  v9 = *(_DWORD *)(v7 + 12) + 12 * a3;
  v10 = (float *)((char *)a1 + v9 + 32);
  if ( *v10 != *a4 || v10[1] != a4[1] || v10[2] != a4[2] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v8 = *a4;
  }
  *(float *)((char *)a1 + v9 + 32) = v8;
  v10[1] = a4[1];
  v10[2] = a4[2];
  return 1;
}


// ===== 5c66d4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r0
  int v7; // r1
  float v8; // r7
  int v9; // r8
  float *v10; // r6

  v5 = a1[1];
  if ( *(unsigned __int16 *)(v5 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v5 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 8 || a3 >= *(_DWORD *)(v7 + 8) )
    return 0;
  v8 = *a4;
  v9 = *(_DWORD *)(v7 + 12) + 16 * a3;
  v10 = (float *)((char *)a1 + v9 + 32);
  if ( *v10 != *a4 || v10[1] != a4[1] || v10[2] != a4[2] || v10[3] != a4[3] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v8 = *a4;
  }
  *(float *)((char *)a1 + v9 + 32) = v8;
  v10[1] = a4[1];
  v10[2] = a4[2];
  v10[3] = a4[3];
  return 1;
}


// ===== 5c67b4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColor>(ushort,uint,glitch::video::SColor const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v6; // r1
  int v7; // r2
  int v8; // lr
  char *v9; // r2

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 16 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v7 = *(_DWORD *)(v6 + 12) + 4 * a3;
  v8 = *(_DWORD *)((char *)a1 + v7 + 32);
  v9 = (char *)a1 + v7 + 32;
  if ( v8 != *a4 )
  {
    a1[3] = -1;
    a1[4] = -1;
  }
  memcpy(v9, a4, 4u);
  return 1;
}


// ===== 5c6834 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<int>(ushort,uint,int const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r12
  int v6; // r1
  int v7; // r12
  int v8; // r5
  _DWORD *v9; // r6
  float v10; // r7
  int result; // r0
  int v12; // r2

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 2) == 0 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v8 = *(_DWORD *)(v6 + 12);
  v9 = a1 + 8;
  if ( v7 == 1 )
  {
    v12 = *(_DWORD *)((char *)v9 + v8);
    result = 1;
    if ( v12 != *a4 )
    {
      a1[3] = -1;
      a1[4] = -1;
      v12 = *a4;
    }
    *(_DWORD *)((char *)v9 + v8) = v12;
  }
  else
  {
    if ( v7 == 5 )
    {
      v10 = (float)*a4;
      if ( v10 != *(float *)((char *)v9 + v8) )
      {
        a1[3] = -1;
        a1[4] = -1;
      }
      *(float *)((char *)v9 + v8) = v10;
    }
    return 1;
  }
  return result;
}


// ===== 5c6904 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r12
  int v9; // r1
  _DWORD *v10; // r4

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 4) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  if ( v6 != 2 )
    return 1;
  v9 = *a4;
  v10 = (_DWORD *)((char *)a1 + v7 + 32);
  if ( *a4 != *v10 || a4[1] != v10[1] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v9 = *a4;
  }
  *(_DWORD *)((char *)a1 + v7 + 32) = v9;
  v10[1] = a4[1];
  return 1;
}


// ===== 5c69c4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r12
  int v9; // r1
  char *v10; // r4

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 8) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  if ( v6 != 3 )
    return 1;
  v9 = *(_DWORD *)((char *)a1 + v7 + 32);
  v10 = (char *)a1 + v7 + 32;
  if ( v9 != *a4 || *((_DWORD *)v10 + 1) != a4[1] || *((_DWORD *)v10 + 2) != a4[2] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v9 = *a4;
  }
  *(_DWORD *)((char *)a1 + v7 + 32) = v9;
  *((_DWORD *)v10 + 1) = a4[1];
  *((_DWORD *)v10 + 2) = a4[2];
  return 1;
}


// ===== 5c6a9c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int> const&) =====
_DWORD *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<int>>(
        _DWORD *result,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  bool v7; // zf
  int v8; // r4
  int v9; // r12
  _DWORD *v10; // r2

  v4 = result[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return nullptr;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return nullptr;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return nullptr;
  v7 = v6 == 4;
  if ( v6 != 4 )
    result = &dword_0 + 1;
  v8 = *(_DWORD *)(v5 + 12);
  if ( v7 )
  {
    v9 = *(_DWORD *)((char *)result + v8 + 32);
    v10 = (_DWORD *)((char *)result + v8 + 32);
    if ( v9 != *a4 || v10[1] != a4[1] || v10[2] != a4[2] || v10[3] != a4[3] )
    {
      result[3] = -1;
      result[4] = -1;
      v9 = *a4;
    }
    *(_DWORD *)((char *)result + v8 + 32) = v9;
    v10[1] = a4[1];
    v10[2] = a4[2];
    v10[3] = a4[3];
    return &dword_0 + 1;
  }
  return result;
}


// ===== 5c6b8c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(ushort,uint,float const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r12
  int v7; // r1
  int v8; // r3
  int v9; // r6
  _DWORD *v10; // r7
  float v11; // r8
  int v13; // r0

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20) == 0 || a3 >= *(_DWORD *)(v7 + 8) )
    return 0;
  v9 = *(_DWORD *)(v7 + 12);
  v10 = a1 + 8;
  if ( v8 == 1 )
  {
    v13 = (int)*a4;
    if ( v13 != *(_DWORD *)((char *)v10 + v9) )
    {
      a1[3] = -1;
      a1[4] = -1;
    }
    *(_DWORD *)((char *)v10 + v9) = v13;
    return 1;
  }
  else
  {
    if ( v8 == 5 )
    {
      v11 = *a4;
      if ( *(float *)((char *)v10 + v9) != *a4 )
      {
        a1[3] = -1;
        a1[4] = -1;
        v11 = *a4;
      }
      *(float *)((char *)v10 + v9) = v11;
    }
    return 1;
  }
}


// ===== 5c6c60 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r12
  int v6; // r1
  int v7; // r3
  int v8; // r7
  float v10; // r8
  float *v11; // r10

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x40) == 0 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v8 = *(_DWORD *)(v6 + 12);
  if ( v7 != 6 )
    return 1;
  v10 = *a4;
  v11 = (float *)((char *)a1 + v8 + 32);
  if ( *a4 != *v11 || a4[1] != v11[1] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v10 = *a4;
  }
  *(float *)((char *)a1 + v8 + 32) = v10;
  v11[1] = a4[1];
  return 1;
}


// ===== 5c6d34 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r12
  int v6; // r1
  int v7; // r3
  int v8; // r8
  float v10; // r10
  float *v11; // r7

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x80) == 0 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v8 = *(_DWORD *)(v6 + 12);
  if ( v7 != 7 )
    return 1;
  v10 = *a4;
  v11 = (float *)((char *)a1 + v8 + 32);
  if ( *v11 != *a4 || v11[1] != a4[1] || v11[2] != a4[2] )
  {
    a1[3] = -1;
    a1[4] = -1;
    v10 = *a4;
  }
  *(float *)((char *)a1 + v8 + 32) = v10;
  v11[1] = a4[1];
  v11[2] = a4[2];
  return 1;
}


// ===== 5c6e24 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(ushort,uint,int&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 1 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = a1 + 4 * a3;
  *a4 = *(_DWORD *)(v7 + *(_DWORD *)(v5 + 12) + 32);
  return 1;
}


// ===== 5c6e84 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r12
  int v8; // r1
  int v9; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 2 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 32;
  v9 = v7 + 8 * a3;
  *a4 = *(_DWORD *)(v8 + v9);
  a4[1] = *(_DWORD *)(v8 + v9 + 4);
  return 1;
}


// ===== 5c6ef0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r12
  int v11; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 3 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 32;
  v9 = v7 + 12 * a3;
  v10 = *(_DWORD *)(v8 + v9);
  v11 = v8 + v9;
  *a4 = v10;
  a4[1] = *(_DWORD *)(v11 + 4);
  a4[2] = *(_DWORD *)(v11 + 8);
  return 1;
}


// ===== 5c6f68 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r12
  _DWORD *v11; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 4 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 32;
  v9 = v7 + 16 * a3;
  v10 = *(_DWORD *)(v8 + v9);
  v11 = (_DWORD *)(v8 + v9);
  *a4 = v10;
  a4[1] = v11[1];
  a4[2] = v11[2];
  a4[3] = v11[3];
  return 1;
}


// ===== 5c6fe4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<float>(ushort,uint,float&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<float>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 5 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = a1 + 4 * a3;
  *a4 = *(_DWORD *)(v7 + *(_DWORD *)(v5 + 12) + 32);
  return 1;
}


// ===== 5c7044 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r12
  int v8; // r1
  int v9; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 6 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 32;
  v9 = v7 + 8 * a3;
  *a4 = *(_DWORD *)(v8 + v9);
  a4[1] = *(_DWORD *)(v8 + v9 + 4);
  return 1;
}


// ===== 5c70b0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r12
  int v11; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 7 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 32;
  v9 = v7 + 12 * a3;
  v10 = *(_DWORD *)(v8 + v9);
  v11 = v8 + v9;
  *a4 = v10;
  a4[1] = *(_DWORD *)(v11 + 4);
  a4[2] = *(_DWORD *)(v11 + 8);
  return 1;
}


// ===== 5c7128 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v5; // r1
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r12
  _DWORD *v11; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 8 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 32;
  v9 = v7 + 16 * a3;
  v10 = *(_DWORD *)(v8 + v9);
  v11 = (_DWORD *)(v8 + v9);
  *a4 = v10;
  a4[1] = v11[1];
  a4[2] = v11[2];
  a4[3] = v11[3];
  return 1;
}


// ===== 5c71a4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(ushort,uint,glitch::video::SColor&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12
  int v5; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 16 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  memcpy(a4, (const void *)(a1 + 4 * a3 + *(_DWORD *)(v5 + 12) + 32), 4u);
  return 1;
}


// ===== 5c7208 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r12
  int v6; // r1
  int v7; // r12
  int *v9; // r2
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  _DWORD *v14; // t0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 17 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v7 = 1;
  v9 = (int *)(a1 + 16 * a3 + *(_DWORD *)(v6 + 12) + 32);
  v10 = *v9;
  v11 = v9[1];
  v14 = v9 + 2;
  v12 = v9[2];
  v13 = v14[1];
  *a4 = v10;
  a4[1] = v11;
  a4[2] = v12;
  a4[3] = v13;
  return v7;
}


// ===== 5c7274 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<int>(ushort,uint,int&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<int>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int v6; // r1
  int v7; // r3
  int v8; // r0
  int v9; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 2) == 0 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v8 = a1 + 32;
  v9 = *(_DWORD *)(v6 + 12);
  if ( v7 == 1 )
  {
    *a4 = *(_DWORD *)(v8 + v9);
    return 1;
  }
  else
  {
    if ( v7 == 5 )
      *a4 = (int)*(float *)(v8 + v9);
    return 1;
  }
}


// ===== 5c7310 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r2
  int result; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 4) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  if ( v6 == 2 )
  {
    result = a1 + 32;
    v5 = *(_DWORD *)(result + v7);
    v7 += result;
  }
  else
  {
    result = 1;
  }
  if ( v6 == 2 )
  {
    *a4 = v5;
    result = 1;
    a4[1] = *(_DWORD *)(v7 + 4);
  }
  return result;
}


// ===== 5c739c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r2
  int result; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 8) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  if ( v6 == 3 )
  {
    result = a1 + 32;
    v5 = *(_DWORD *)(result + v7);
    v7 += result;
  }
  else
  {
    result = 1;
  }
  if ( v6 == 3 )
  {
    *a4 = v5;
    result = 1;
    a4[1] = *(_DWORD *)(v7 + 4);
    a4[2] = *(_DWORD *)(v7 + 8);
  }
  return result;
}


// ===== 5c7430 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r2
  int v9; // r0
  int v10; // r1
  _DWORD *v11; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  if ( v6 == 4 )
  {
    v9 = a1 + 32;
    v10 = *(_DWORD *)(v9 + v7);
    v11 = (_DWORD *)(v9 + v7);
    *a4 = v10;
    a4[1] = v11[1];
    a4[2] = v11[2];
    a4[3] = v11[3];
  }
  return 1;
}


// ===== 5c74d0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<float>(ushort,uint,float&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<float>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r4
  int v6; // r1
  int v7; // r4
  int v8; // r0
  int v9; // r3

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20) == 0 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v8 = a1 + 32;
  v9 = *(_DWORD *)(v6 + 12);
  if ( v7 == 1 )
  {
    *a4 = (float)*(int *)(v8 + v9);
    return 1;
  }
  else
  {
    if ( v7 == 5 )
      *a4 = *(float *)(v8 + v9);
    return 1;
  }
}


// ===== 5c7574 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r2
  int result; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  if ( v6 == 6 )
  {
    result = a1 + 32;
    v5 = *(_DWORD *)(result + v7);
    v7 += result;
  }
  else
  {
    result = 1;
  }
  if ( v6 == 6 )
  {
    *a4 = v5;
    result = 1;
    a4[1] = *(_DWORD *)(v7 + 4);
  }
  return result;
}


// ===== 5c7600 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  int v7; // r2
  int result; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x80) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(v5 + 12);
  if ( v6 == 7 )
  {
    result = a1 + 32;
    v5 = *(_DWORD *)(result + v7);
    v7 += result;
  }
  else
  {
    result = 1;
  }
  if ( v6 == 7 )
  {
    *a4 = v5;
    result = 1;
    a4[1] = *(_DWORD *)(v7 + 4);
    a4[2] = *(_DWORD *)(v7 + 8);
  }
  return result;
}


// ===== 5c7694 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r5
  int v7; // r2
  int v8; // r0
  int v9; // r4
  float v11; // r7
  float v12; // r5
  float v13; // r0
  int v14; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x100) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 32;
  v9 = v8 + v7;
  if ( v6 == 16 )
  {
    v11 = (float)*(unsigned __int8 *)(v8 + v7) * 0.0039216;
    v12 = (float)*(unsigned __int8 *)(v9 + 1) * 0.0039216;
    v13 = (float)*(unsigned __int8 *)(v9 + 2) * 0.0039216;
    a4[3] = (float)*(unsigned __int8 *)(v9 + 3) * 0.0039216;
    *a4 = v11;
    a4[2] = v13;
    a4[1] = v12;
    return 1;
  }
  else if ( v6 == 17 || v6 == 8 )
  {
    v14 = *(_DWORD *)(v8 + v7);
    *(_DWORD *)a4 = v14;
    a4[1] = *(float *)(v9 + 4);
    a4[2] = *(float *)(v9 + 8);
    a4[3] = *(float *)(v9 + 12);
    return 1;
  }
  else
  {
    return 1;
  }
}


// ===== 5c77c8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColor>(ushort,uint,glitch::video::SColor&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  int v4; // r4
  int v6; // r1
  int v7; // r3
  int v8; // r6
  int v9; // r7
  float *v10; // r4
  char v12; // r8
  char v13; // r7
  char v14; // r6
  unsigned int v15; // r0
  char v16; // r8
  char v17; // r7
  char v18; // r6
  unsigned int v19; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x10000) == 0
    || a3 >= *(_DWORD *)(v6 + 8) )
  {
    return 0;
  }
  v8 = *(_DWORD *)(v6 + 12);
  v9 = a1 + 32;
  v10 = (float *)(a1 + 32 + v8);
  if ( v7 == 16 )
  {
    memcpy(a4, v10, 4u);
    return 1;
  }
  else if ( v7 == 17 )
  {
    v16 = (unsigned int)(float)(v10[3] * 255.0);
    v17 = (unsigned int)(float)(*(float *)(v9 + v8) * 255.0);
    v18 = (unsigned int)(float)(v10[1] * 255.0);
    v19 = (unsigned int)(float)(v10[2] * 255.0);
    *a4 = v17;
    a4[2] = v19;
    a4[3] = v16;
    a4[1] = v18;
    return 1;
  }
  else
  {
    if ( v7 == 8 )
    {
      v12 = (unsigned int)(float)(v10[3] * 255.0);
      v13 = (unsigned int)(float)(*(float *)(v9 + v8) * 255.0);
      v14 = (unsigned int)(float)(v10[1] * 255.0);
      v15 = (unsigned int)(float)(v10[2] * 255.0);
      *a4 = v13;
      a4[2] = v15;
      a4[3] = v12;
      a4[1] = v14;
    }
    return 1;
  }
}


// ===== 5c7954 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r5
  int v6; // r1
  int v7; // r3
  int v8; // r2
  int v9; // r0
  int v10; // r5
  float v12; // r8
  float v13; // r6
  float v14; // r7
  float v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20000) == 0
    || a3 >= *(_DWORD *)(v6 + 8) )
  {
    return 0;
  }
  v8 = *(_DWORD *)(v6 + 12);
  v9 = a1 + 32;
  v10 = v9 + v8;
  if ( v7 == 16 )
  {
    v12 = (float)*(unsigned __int8 *)(v9 + v8) * 0.0039216;
    v13 = (float)*(unsigned __int8 *)(v10 + 1) * 0.0039216;
    v14 = (float)*(unsigned __int8 *)(v10 + 2) * 0.0039216;
    v15 = (float)*(unsigned __int8 *)(v10 + 3);
    *a4 = v12;
    a4[3] = v15 * 0.0039216;
    a4[2] = v14;
    a4[1] = v13;
    return 1;
  }
  if ( v7 != 17 && v7 != 8 )
    return 1;
  v16 = *(_DWORD *)(v10 + 4);
  v17 = *(_DWORD *)(v10 + 8);
  v18 = *(_DWORD *)(v10 + 12);
  *a4 = *(float *)v10;
  *((_DWORD *)a4 + 1) = v16;
  *((_DWORD *)a4 + 2) = v17;
  *((_DWORD *)a4 + 3) = v18;
  return 1;
}


// ===== 5c7a70 `global constructor keyed to'.._source_glitch_video_CMaterial.cpp =====
void `global constructor keyed to'.._source_glitch_video_CMaterial.cpp()
{
  dword_9F6A2C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6A28 = 1056964608;
}


// ===== 5c7a90 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColorf>(ushort,glitch::video::SColorf*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r7
  float *v5; // r4
  int v7; // r1
  int v8; // r3
  bool v9; // zf
  int v11; // r8
  int *v12; // r12
  int *v13; // r8
  int v14; // r7
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v19; // r6
  int v20; // r10
  int v21; // r7
  int v22; // r6
  int *v23; // r3
  _DWORD *v24; // r12
  int v25; // r0
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r9
  int i; // r8
  float v31; // r6
  float v32; // r7
  float v33; // r0

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20000) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( !v9 )
    goto LABEL_12;
  if ( v8 != 17 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = a1 + 32 + *(_DWORD *)(v7 + 12);
    switch ( v8 )
    {
      case 16:
        v29 = v11 + 4 * *(_DWORD *)(v7 + 8);
        if ( v11 != v29 )
        {
          for ( i = v11 + 4; ; i += 4 )
          {
            v31 = (float)*(unsigned __int8 *)(i - 4) * 0.0039216;
            v32 = (float)*(unsigned __int8 *)(i - 3) * 0.0039216;
            v33 = (float)*(unsigned __int8 *)(i - 2) * 0.0039216;
            v5[3] = (float)*(unsigned __int8 *)(i - 1) * 0.0039216;
            v5[2] = v33;
            v5[1] = v32;
            *v5 = v31;
            if ( v29 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v20 = *(_DWORD *)(v7 + 8);
        if ( v20 )
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = (int *)(v11 + 16 * v22++);
            v24 = (_DWORD *)((char *)v5 + v21);
            v25 = *v23;
            v26 = v23[1];
            v27 = v23[2];
            v28 = v23[3];
            v21 += a4;
            *v24 = v25;
            v24[1] = v26;
            v24[2] = v27;
            v24[3] = v28;
          }
          while ( v22 != v20 );
        }
        break;
      case 8:
        v12 = (int *)(a1 + 32 + *(_DWORD *)(v7 + 12));
        v13 = (int *)(v11 + 16 * *(_DWORD *)(v7 + 8));
        if ( v12 != v13 )
        {
          v14 = 0;
          do
          {
            v15 = *v12;
            v16 = v12[1];
            v17 = v12[2];
            v18 = v12[3];
            v12 += 4;
            v19 = (_DWORD *)((char *)v5 + v14);
            *v19 = v15;
            v19[1] = v16;
            v19[2] = v17;
            v19[3] = v18;
            v14 += a4;
          }
          while ( v13 != v12 );
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 16 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c7c64 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColor>(ushort,glitch::video::SColor*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  int v4; // r6
  _BYTE *v5; // r4
  int v7; // r1
  int v8; // r3
  bool v9; // zf
  float *v11; // r8
  float *v12; // r9
  char v13; // r10
  char v14; // r6
  char v15; // r7
  unsigned int v16; // r0
  float *v17; // r9
  char v18; // r10
  char v19; // r6
  char v20; // r7
  unsigned int v21; // r0
  int v22; // r10
  int v23; // r7
  int i; // r6
  float *v25; // r1

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x10000) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( !v9 )
    goto LABEL_12;
  if ( v8 != 16 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = (float *)(a1 + 32 + *(_DWORD *)(v7 + 12));
    switch ( v8 )
    {
      case 16:
        v22 = *(_DWORD *)(v7 + 8);
        if ( v22 )
        {
          v23 = 0;
          for ( i = 0; i != v22; ++i )
          {
            v25 = &v11[i];
            memcpy(&v5[v23], v25, 4u);
            v23 += a4;
          }
        }
        break;
      case 17:
        v17 = &v11[4 * *(_DWORD *)(v7 + 8)];
        if ( v11 != v17 )
        {
          while ( 1 )
          {
            v18 = (unsigned int)(float)(v11[3] * 255.0);
            v19 = (unsigned int)(float)(*v11 * 255.0);
            v20 = (unsigned int)(float)(v11[1] * 255.0);
            v21 = (unsigned int)(float)(v11[2] * 255.0);
            v11 += 4;
            v5[3] = v18;
            v5[2] = v21;
            v5[1] = v20;
            *v5 = v19;
            if ( v17 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
      case 8:
        v12 = &v11[4 * *(_DWORD *)(v7 + 8)];
        if ( v11 != v12 )
        {
          while ( 1 )
          {
            v13 = (unsigned int)(float)(v11[3] * 255.0);
            v14 = (unsigned int)(float)(*v11 * 255.0);
            v15 = (unsigned int)(float)(v11[1] * 255.0);
            v16 = (unsigned int)(float)(v11[2] * 255.0);
            v11 += 4;
            v5[3] = v13;
            v5[2] = v16;
            v5[1] = v15;
            *v5 = v14;
            if ( v12 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 4 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c7e90 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r5
  float *v5; // r4
  int v7; // r1
  int v8; // r3
  bool v9; // zf
  float *v11; // r5
  int j; // r3
  int v13; // r2
  float *i; // r2
  int v15; // r3
  float *v16; // r11
  float *v17; // r5
  int v18; // r10
  float v19; // [sp+4h] [bp-10h]
  float v20; // [sp+8h] [bp-Ch]

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x100) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( !v9 )
    goto LABEL_12;
  if ( v8 != 8 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = (float *)(a1 + 32 + *(_DWORD *)(v7 + 12));
    switch ( v8 )
    {
      case 16:
        v16 = &v11[*(_DWORD *)(v7 + 8)];
        if ( v11 != v16 )
        {
          v17 = v11 + 1;
          while ( 1 )
          {
            v18 = *((unsigned __int8 *)v17 - 1);
            v19 = (float)*((unsigned __int8 *)v17 - 3) * 0.0039216;
            v20 = (float)*((unsigned __int8 *)v17 - 2) * 0.0039216;
            *v5 = (float)*((unsigned __int8 *)v17 - 4) * 0.0039216;
            v9 = v16 == v17++;
            v5[1] = v19;
            v5[2] = v20;
            v5[3] = (float)v18 * 0.0039216;
            if ( v9 )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        for ( i = &v11[4 * *(_DWORD *)(v7 + 8)]; i != v11; v5 = (float *)((char *)v5 + a4) )
        {
          *v5 = *v11;
          v5[1] = v11[1];
          v5[2] = v11[2];
          v15 = *((_DWORD *)v11 + 3);
          v11 += 4;
          *((_DWORD *)v5 + 3) = v15;
        }
        break;
      case 8:
        for ( j = *(_DWORD *)(v7 + 8); j; v5 = (float *)((char *)v5 + a4) )
        {
          --j;
          *v5 = *v11;
          v5[1] = v11[1];
          v5[2] = v11[2];
          v13 = *((_DWORD *)v11 + 3);
          v11 += 4;
          *((_DWORD *)v5 + 3) = v13;
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 16 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c80a4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int v6; // r1
  int v7; // r2
  bool v8; // zf
  int v10; // r2
  _DWORD *v11; // r0
  int v12; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x80) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 7 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v7 == 7 )
    {
      v10 = *(_DWORD *)(v6 + 8);
      if ( v10 )
      {
        v11 = (_DWORD *)(a1 + 32 + *(_DWORD *)(v6 + 12));
        do
        {
          --v10;
          *(_DWORD *)a3 = *v11;
          *((_DWORD *)a3 + 1) = v11[1];
          v12 = v11[2];
          v11 += 3;
          *((_DWORD *)a3 + 2) = v12;
          a3 += a4;
        }
        while ( v10 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v6 + 12)), 12 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5c8198 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  bool v7; // zf
  int v9; // r12
  int v10; // r0
  int v11; // r4
  int v12; // r1
  int v13; // r5

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 6 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v6 == 6 )
    {
      v9 = *(_DWORD *)(v5 + 8);
      if ( v9 )
      {
        v10 = a1 + 32 + *(_DWORD *)(v5 + 12);
        v11 = 0;
        do
        {
          v12 = v10 + v11;
          v13 = *(_DWORD *)(v10 + v11);
          --v9;
          v11 += 8;
          *(_DWORD *)a3 = v13;
          *((_DWORD *)a3 + 1) = *(_DWORD *)(v12 + 4);
          a3 += a4;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 8 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5c8284 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<float>(ushort,float*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<float>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r5
  float *v5; // r4
  int v7; // r1
  int v8; // r3
  bool v9; // zf
  int v11; // r6
  int v12; // r1
  int j; // r3
  int v14; // r2
  int v15; // r8
  int i; // r5
  float v17; // r0

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20) == 0 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( !v9 )
    goto LABEL_12;
  if ( v8 != 5 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = a1 + 32 + *(_DWORD *)(v7 + 12);
    if ( v8 == 1 )
    {
      v15 = *(_DWORD *)(v7 + 8);
      if ( v15 )
      {
        for ( i = 0; i != v15; ++i )
        {
          v17 = (float)*(int *)(v11 + 4 * i);
          *v5 = v17;
          v5 = (float *)((char *)v5 + a4);
        }
      }
    }
    else if ( v8 == 5 )
    {
      v12 = *(_DWORD *)(v7 + 8);
      if ( v12 )
      {
        for ( j = 0; j != v12; ++j )
        {
          v14 = *(_DWORD *)(v11 + 4 * j);
          *(_DWORD *)v5 = v14;
          v5 = (float *)((char *)v5 + a4);
        }
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 4 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c839c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  bool v7; // zf
  int v9; // r12
  int v10; // r1
  _DWORD *v11; // r0
  int v12; // r12

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 4 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v9 = *(_DWORD *)(v5 + 12);
    if ( v6 == 4 )
    {
      v10 = *(_DWORD *)(v5 + 8);
      if ( v10 )
      {
        v11 = (_DWORD *)(a1 + 32 + v9);
        do
        {
          --v10;
          *(_DWORD *)a3 = *v11;
          *((_DWORD *)a3 + 1) = v11[1];
          *((_DWORD *)a3 + 2) = v11[2];
          v12 = v11[3];
          v11 += 4;
          *((_DWORD *)a3 + 3) = v12;
          a3 += a4;
        }
        while ( v10 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 16 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5c8490 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int v6; // r1
  int v7; // r2
  bool v8; // zf
  int v10; // r2
  _DWORD *v11; // r0
  int v12; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 8) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 3 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v7 == 3 )
    {
      v10 = *(_DWORD *)(v6 + 8);
      if ( v10 )
      {
        v11 = (_DWORD *)(a1 + 32 + *(_DWORD *)(v6 + 12));
        do
        {
          --v10;
          *(_DWORD *)a3 = *v11;
          *((_DWORD *)a3 + 1) = v11[1];
          v12 = v11[2];
          v11 += 3;
          *((_DWORD *)a3 + 2) = v12;
          a3 += a4;
        }
        while ( v10 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v6 + 12)), 12 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5c8584 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  bool v7; // zf
  int v9; // r12
  int v10; // r0
  int v11; // r4
  int v12; // r1
  int v13; // r5

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 4) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 2 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v6 == 2 )
    {
      v9 = *(_DWORD *)(v5 + 8);
      if ( v9 )
      {
        v10 = a1 + 32 + *(_DWORD *)(v5 + 12);
        v11 = 0;
        do
        {
          v12 = v10 + v11;
          v13 = *(_DWORD *)(v10 + v11);
          --v9;
          v11 += 8;
          *(_DWORD *)a3 = v13;
          *((_DWORD *)a3 + 1) = *(_DWORD *)(v12 + 4);
          a3 += a4;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 8 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5c8670 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<int>(ushort,int*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<int>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  bool v7; // zf
  int v9; // r4
  int v10; // r0
  int i; // r1
  int v12; // r12

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 2) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 1 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v6 == 1 )
    {
      v9 = *(_DWORD *)(v5 + 8);
      if ( v9 )
      {
        v10 = a1 + 32 + *(_DWORD *)(v5 + 12);
        for ( i = 0; i != v9; ++i )
        {
          v12 = *(_DWORD *)(v10 + 4 * i);
          *(_DWORD *)a3 = v12;
          a3 += a4;
        }
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 4 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5c874c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(ushort,glitch::video::SColorf*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v7; // r1
  bool v9; // zf
  int v10; // r5
  int v11; // r8
  int v12; // r10
  int v13; // r4
  int *v14; // r3
  char *v15; // r12
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 17 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  if ( v9 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 16 * *(_DWORD *)(v7 + 8));
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = *(_DWORD *)(v7 + 8);
    if ( v11 )
    {
      v12 = a1 + 32 + *(_DWORD *)(v7 + 12);
      v13 = 0;
      do
      {
        v14 = (int *)(v12 + 16 * v13++);
        v15 = &a3[v10];
        v16 = *v14;
        v17 = v14[1];
        v18 = v14[2];
        v19 = v14[3];
        v10 += a4;
        *(_DWORD *)v15 = v16;
        *((_DWORD *)v15 + 1) = v17;
        *((_DWORD *)v15 + 2) = v18;
        *((_DWORD *)v15 + 3) = v19;
      }
      while ( v11 != v13 );
    }
    return 1;
  }
}


// ===== 5c8804 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(ushort,glitch::video::SColor*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v7; // r1
  bool v9; // zf
  int v10; // r6
  int v11; // r8
  int v12; // r10
  int i; // r5
  const void *v14; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 16 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( v9 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 4 * *(_DWORD *)(v7 + 8));
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = *(_DWORD *)(v7 + 8);
    if ( v11 )
    {
      v12 = a1 + 32 + *(_DWORD *)(v7 + 12);
      for ( i = 0; i != v11; ++i )
      {
        v14 = (const void *)(v12 + 4 * i);
        memcpy(&a3[v10], v14, 4u);
        v10 += a4;
      }
    }
    return 1;
  }
}


// ===== 5c88bc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r12
  int v9; // r1
  _DWORD *v10; // r0
  int v11; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 8 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 16 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(v5 + 12);
    if ( v8 )
    {
      v10 = (_DWORD *)(a1 + 32 + v9);
      do
      {
        --v8;
        *(_DWORD *)a3 = *v10;
        *((_DWORD *)a3 + 1) = v10[1];
        *((_DWORD *)a3 + 2) = v10[2];
        v11 = v10[3];
        v10 += 4;
        *((_DWORD *)a3 + 3) = v11;
        a3 += a4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c8970 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r4
  _DWORD *v5; // r12
  int v6; // r1
  bool v8; // zf
  int v9; // r2
  int v10; // r1
  _DWORD *v11; // r0
  int v12; // r1

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 7 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v6 + 12)), 12 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v6 + 8);
    v10 = *(_DWORD *)(v6 + 12);
    if ( v9 )
    {
      v11 = (_DWORD *)(a1 + 32 + v10);
      do
      {
        --v9;
        *v5 = *v11;
        v5[1] = v11[1];
        v12 = v11[2];
        v11 += 3;
        v5[2] = v12;
        v5 = (_DWORD *)((char *)v5 + a4);
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c8a24 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r12
  int v10; // r1
  int v11; // r0
  int v12; // r1
  int v13; // r5

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 6 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 8 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = a1 + 32 + v10;
      do
      {
        v12 = v11 + v8;
        v13 = *(_DWORD *)(v11 + v8);
        --v9;
        v8 += 8;
        *(_DWORD *)a3 = v13;
        *((_DWORD *)a3 + 1) = *(_DWORD *)(v12 + 4);
        a3 += a4;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c8ad4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<float>(ushort,float*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<float>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r12
  bool v7; // zf
  int v8; // r1
  int v9; // r4
  int v10; // r12
  int v11; // r0
  int v12; // r12

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 5 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 4 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = a1 + 32 + v10;
      do
      {
        v12 = *(_DWORD *)(v11 + 4 * v8++);
        *(_DWORD *)a3 = v12;
        a3 += a4;
      }
      while ( v9 != v8 );
    }
    return 1;
  }
}


// ===== 5c8b74 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r12
  int v9; // r1
  _DWORD *v10; // r0
  int v11; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 4 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 16 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(v5 + 12);
    if ( v8 )
    {
      v10 = (_DWORD *)(a1 + 32 + v9);
      do
      {
        --v8;
        *(_DWORD *)a3 = *v10;
        *((_DWORD *)a3 + 1) = v10[1];
        *((_DWORD *)a3 + 2) = v10[2];
        v11 = v10[3];
        v10 += 4;
        *((_DWORD *)a3 + 3) = v11;
        a3 += a4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c8c28 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r4
  _DWORD *v5; // r12
  int v6; // r1
  bool v8; // zf
  int v9; // r2
  int v10; // r1
  _DWORD *v11; // r0
  int v12; // r1

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 3 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  if ( v8 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v6 + 12)), 12 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v6 + 8);
    v10 = *(_DWORD *)(v6 + 12);
    if ( v9 )
    {
      v11 = (_DWORD *)(a1 + 32 + v10);
      do
      {
        --v9;
        *v5 = *v11;
        v5[1] = v11[1];
        v12 = v11[2];
        v11 += 3;
        v5[2] = v12;
        v5 = (_DWORD *)((char *)v5 + a4);
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c8cdc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r12
  int v10; // r1
  int v11; // r0
  int v12; // r1
  int v13; // r5

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 2 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 8 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = a1 + 32 + v10;
      do
      {
        v12 = v11 + v8;
        v13 = *(_DWORD *)(v11 + v8);
        --v9;
        v8 += 8;
        *(_DWORD *)a3 = v13;
        *((_DWORD *)a3 + 1) = *(_DWORD *)(v12 + 4);
        a3 += a4;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c8d8c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(ushort,int*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r12
  bool v7; // zf
  int v8; // r1
  int v9; // r4
  int v10; // r12
  int v11; // r0
  int v12; // r12

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 1 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v5 + 12)), 4 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = a1 + 32 + v10;
      do
      {
        v12 = *(_DWORD *)(v11 + 4 * v8++);
        *(_DWORD *)a3 = v12;
        a3 += a4;
      }
      while ( v9 != v8 );
    }
    return 1;
  }
}


// ===== 5c8e2c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColorf>(ushort,glitch::video::SColorf const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r6
  float *v5; // r4
  int v7; // r1
  bool v8; // zf
  int v9; // r3
  _DWORD *v11; // r8
  _DWORD *j; // r2
  int v13; // r3
  int v14; // r10
  int v15; // r6
  int v16; // r12
  _DWORD *v17; // r7
  int v18; // r0
  int v19; // r1
  int v20; // r2
  int v21; // r3
  _DWORD *v22; // r9
  _DWORD *i; // r8
  char v24; // r6
  char v25; // r7
  unsigned int v26; // r0

  v4 = a1[1];
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v7 + 6)] & 0x20000) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  a1[4] = -1;
  if ( !v8 )
  {
    v9 = *(unsigned __int8 *)(v7 + 6);
    goto LABEL_12;
  }
  v9 = *(unsigned __int8 *)(v7 + 6);
  if ( v9 != 17 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = (_DWORD *)((char *)a1 + *(_DWORD *)(v7 + 12) + 32);
    switch ( v9 )
    {
      case 16:
        v22 = &v11[*(_DWORD *)(v7 + 8)];
        if ( v11 != v22 )
        {
          for ( i = v11 + 1; ; ++i )
          {
            v24 = (unsigned int)(float)(*v5 * 255.0);
            v25 = (unsigned int)(float)(v5[1] * 255.0);
            v26 = (unsigned int)(float)(v5[2] * 255.0);
            *((_BYTE *)i - 1) = (unsigned int)(float)(v5[3] * 255.0);
            *((_BYTE *)i - 2) = v26;
            *((_BYTE *)i - 3) = v25;
            *((_BYTE *)i - 4) = v24;
            if ( v22 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v14 = *(_DWORD *)(v7 + 8);
        if ( v14 )
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = &v11[4 * v16++];
            v18 = *(_DWORD *)((char *)v5 + v15);
            v19 = *(_DWORD *)((char *)v5 + v15 + 4);
            v20 = *(_DWORD *)((char *)v5 + v15 + 8);
            v21 = *(_DWORD *)((char *)v5 + v15 + 12);
            v15 += a4;
            *v17 = v18;
            v17[1] = v19;
            v17[2] = v20;
            v17[3] = v21;
          }
          while ( v14 != v16 );
        }
        break;
      case 8:
        for ( j = &v11[4 * *(_DWORD *)(v7 + 8)]; j != v11; v11 += 4 )
        {
          *v11 = *(_DWORD *)v5;
          v11[1] = *((_DWORD *)v5 + 1);
          v11[2] = *((_DWORD *)v5 + 2);
          v13 = *((_DWORD *)v5 + 3);
          v5 = (float *)((char *)v5 + a4);
          v11[3] = v13;
        }
        break;
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v7 + 12) + 32, a3, 16 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c9020 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(ushort,glitch::video::SColor const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned __int8 *a3,
        int a4)
{
  int v4; // r6
  unsigned __int8 *v5; // r4
  int v7; // r1
  bool v8; // zf
  int v9; // r3
  float *v11; // r8
  float *v12; // r9
  float v13; // r6
  float v14; // r7
  float v15; // r0
  float *v16; // r9
  float v17; // r6
  float v18; // r7
  float v19; // r0
  int v20; // r10
  int v21; // r7
  int i; // r6
  float *v23; // r0

  v4 = a1[1];
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v7 + 6)] & 0x10000) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  a1[4] = -1;
  if ( !v8 )
  {
    v9 = *(unsigned __int8 *)(v7 + 6);
    goto LABEL_12;
  }
  v9 = *(unsigned __int8 *)(v7 + 6);
  if ( v9 != 16 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = (float *)((char *)a1 + *(_DWORD *)(v7 + 12) + 32);
    switch ( v9 )
    {
      case 16:
        v20 = *(_DWORD *)(v7 + 8);
        if ( v20 )
        {
          v21 = 0;
          for ( i = 0; i != v20; ++i )
          {
            v23 = &v11[i];
            memcpy(v23, &v5[v21], sizeof(float));
            v21 += a4;
          }
        }
        break;
      case 17:
        v16 = &v11[4 * *(_DWORD *)(v7 + 8)];
        if ( v11 != v16 )
        {
          while ( 1 )
          {
            v17 = (float)*v5 * 0.0039216;
            v18 = (float)v5[1] * 0.0039216;
            v19 = (float)v5[3];
            v11[2] = (float)v5[2] * 0.0039216;
            v11[3] = v19 * 0.0039216;
            v11[1] = v18;
            *v11 = v17;
            v11 += 4;
            if ( v16 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
      case 8:
        v12 = &v11[4 * *(_DWORD *)(v7 + 8)];
        if ( v11 != v12 )
        {
          while ( 1 )
          {
            v13 = (float)*v5 * 0.0039216;
            v14 = (float)v5[1] * 0.0039216;
            v15 = (float)v5[3];
            v11[2] = (float)v5[2] * 0.0039216;
            v11[3] = v15 * 0.0039216;
            v11[1] = v14;
            *v11 = v13;
            v11 += 4;
            if ( v12 == v11 )
              break;
            v5 += a4;
          }
        }
        break;
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v7 + 12) + 32, a3, 4 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c9258 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r12
  float *v5; // r4
  int v7; // r1
  bool v8; // zf
  int v9; // r3
  _DWORD *v11; // r12
  int j; // r3
  int v13; // r2
  _DWORD *v14; // r7
  int v15; // r6
  int v16; // r1
  int v17; // r2
  int v18; // r3
  _DWORD *v19; // r9
  _DWORD *i; // r6
  char v21; // r7
  char v22; // r8
  unsigned int v23; // r0

  v4 = a1[1];
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v7 + 6)] & 0x100) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  a1[4] = -1;
  if ( !v8 )
  {
    v9 = *(unsigned __int8 *)(v7 + 6);
    goto LABEL_12;
  }
  v9 = *(unsigned __int8 *)(v7 + 6);
  if ( v9 != 8 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = (_DWORD *)((char *)a1 + *(_DWORD *)(v7 + 12) + 32);
    switch ( v9 )
    {
      case 16:
        v19 = &v11[*(_DWORD *)(v7 + 8)];
        if ( v11 != v19 )
        {
          for ( i = v11 + 1; ; ++i )
          {
            v21 = (unsigned int)(float)(*v5 * 255.0);
            v22 = (unsigned int)(float)(v5[1] * 255.0);
            v23 = (unsigned int)(float)(v5[2] * 255.0);
            *((_BYTE *)i - 1) = (unsigned int)(float)(v5[3] * 255.0);
            *((_BYTE *)i - 2) = v23;
            *((_BYTE *)i - 3) = v22;
            *((_BYTE *)i - 4) = v21;
            if ( v19 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v14 = &v11[4 * *(_DWORD *)(v7 + 8)];
        if ( v11 != v14 )
        {
          v15 = 0;
          do
          {
            v16 = *(_DWORD *)((char *)v5 + v15 + 4);
            v17 = *(_DWORD *)((char *)v5 + v15 + 8);
            v18 = *(_DWORD *)((char *)v5 + v15 + 12);
            *v11 = *(_DWORD *)((char *)v5 + v15);
            v11[1] = v16;
            v11[2] = v17;
            v11[3] = v18;
            v11 += 4;
            v15 += a4;
          }
          while ( v14 != v11 );
        }
        break;
      case 8:
        for ( j = *(_DWORD *)(v7 + 8); j; v11 += 4 )
        {
          --j;
          *v11 = *(_DWORD *)v5;
          v11[1] = *((_DWORD *)v5 + 1);
          v11[2] = *((_DWORD *)v5 + 2);
          v13 = *((_DWORD *)v5 + 3);
          v5 = (float *)((char *)v5 + a4);
          v11[3] = v13;
        }
        break;
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v7 + 12) + 32, a3, 16 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c9444 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v10; // r2
  _DWORD *v11; // r0
  int v12; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v6 + 6)] & 0x80) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  a1[4] = -1;
  if ( !v7 )
  {
    v8 = *(unsigned __int8 *)(v6 + 6);
    goto LABEL_12;
  }
  v8 = *(unsigned __int8 *)(v6 + 6);
  if ( v8 != 7 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v8 == 7 )
    {
      v10 = *(_DWORD *)(v6 + 8);
      if ( v10 )
      {
        v11 = (_DWORD *)((char *)a1 + *(_DWORD *)(v6 + 12) + 32);
        do
        {
          --v10;
          *v11 = *(_DWORD *)a3;
          v11[1] = *((_DWORD *)a3 + 1);
          v12 = *((_DWORD *)a3 + 2);
          a3 += a4;
          v11[2] = v12;
          v11 += 3;
        }
        while ( v10 );
      }
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v6 + 12) + 32, a3, 12 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5c954c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int v5; // r1
  bool v6; // zf
  int v7; // r12
  int v9; // r12
  int v10; // r0
  int v11; // r4
  int v12; // r1
  int v13; // r5

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v5 + 6)] & 0x40) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  a1[4] = -1;
  if ( !v6 )
  {
    v7 = *(unsigned __int8 *)(v5 + 6);
    goto LABEL_12;
  }
  v7 = *(unsigned __int8 *)(v5 + 6);
  if ( v7 != 6 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v7 == 6 )
    {
      v9 = *(_DWORD *)(v5 + 8);
      if ( v9 )
      {
        v10 = (int)a1 + *(_DWORD *)(v5 + 12) + 32;
        v11 = 0;
        do
        {
          --v9;
          *(_DWORD *)(v10 + v11) = *(_DWORD *)a3;
          v12 = v10 + v11;
          v13 = *((_DWORD *)a3 + 1);
          v11 += 8;
          a3 += a4;
          *(_DWORD *)(v12 + 4) = v13;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 8 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5c964c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(ushort,float const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(
        _DWORD *a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  int v4; // r4
  float *v5; // r5
  int v7; // r1
  bool v8; // zf
  int v9; // r3
  int v11; // r6
  int v12; // r1
  int j; // r3
  float v14; // t1
  int v15; // r8
  int i; // r4
  float v17; // t1

  v4 = a1[1];
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v7 + 6)] & 0x20) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  a1[4] = -1;
  if ( !v8 )
  {
    v9 = *(unsigned __int8 *)(v7 + 6);
    goto LABEL_12;
  }
  v9 = *(unsigned __int8 *)(v7 + 6);
  if ( v9 != 5 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = (int)a1 + *(_DWORD *)(v7 + 12) + 32;
    if ( v9 == 1 )
    {
      v15 = *(_DWORD *)(v7 + 8);
      if ( v15 )
      {
        for ( i = 0; i != v15; ++i )
        {
          v17 = *v5;
          v5 = (float *)((char *)v5 + a4);
          *(_DWORD *)(v11 + 4 * i) = (int)v17;
        }
      }
    }
    else if ( v9 == 5 )
    {
      v12 = *(_DWORD *)(v7 + 8);
      if ( v12 )
      {
        for ( j = 0; j != v12; ++j )
        {
          v14 = *v5;
          v5 = (float *)((char *)v5 + a4);
          *(float *)(v11 + 4 * j) = v14;
        }
      }
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v7 + 12) + 32, a3, 4 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c9778 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int v5; // r1
  bool v6; // zf
  int v7; // r12
  int v9; // r12
  int v10; // r1
  _DWORD *v11; // r0
  int v12; // r12

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v5 + 6)] & 0x10) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 16;
  a1[4] = -1;
  if ( !v6 )
  {
    v7 = *(unsigned __int8 *)(v5 + 6);
    goto LABEL_12;
  }
  v7 = *(unsigned __int8 *)(v5 + 6);
  if ( v7 != 4 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v6 = v7 == 4;
    v9 = *(_DWORD *)(v5 + 12);
    if ( v6 )
    {
      v10 = *(_DWORD *)(v5 + 8);
      if ( v10 )
      {
        v11 = (_DWORD *)((char *)a1 + v9 + 32);
        do
        {
          --v10;
          *v11 = *(_DWORD *)a3;
          v11[1] = *((_DWORD *)a3 + 1);
          v11[2] = *((_DWORD *)a3 + 2);
          v12 = *((_DWORD *)a3 + 3);
          a3 += a4;
          v11[3] = v12;
          v11 += 4;
        }
        while ( v10 );
      }
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 16 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5c9880 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  int v6; // r1
  bool v7; // zf
  int v8; // r2
  int v10; // r2
  _DWORD *v11; // r0
  int v12; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v6 + 6)] & 8) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  a1[4] = -1;
  if ( !v7 )
  {
    v8 = *(unsigned __int8 *)(v6 + 6);
    goto LABEL_12;
  }
  v8 = *(unsigned __int8 *)(v6 + 6);
  if ( v8 != 3 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v8 == 3 )
    {
      v10 = *(_DWORD *)(v6 + 8);
      if ( v10 )
      {
        v11 = (_DWORD *)((char *)a1 + *(_DWORD *)(v6 + 12) + 32);
        do
        {
          --v10;
          *v11 = *(_DWORD *)a3;
          v11[1] = *((_DWORD *)a3 + 1);
          v12 = *((_DWORD *)a3 + 2);
          a3 += a4;
          v11[2] = v12;
          v11 += 3;
        }
        while ( v10 );
      }
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v6 + 12) + 32, a3, 12 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5c9988 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  int v5; // r1
  bool v6; // zf
  int v7; // r12
  int v9; // r12
  int v10; // r0
  int v11; // r4
  int v12; // r1
  int v13; // r5

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v5 + 6)] & 4) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  a1[4] = -1;
  if ( !v6 )
  {
    v7 = *(unsigned __int8 *)(v5 + 6);
    goto LABEL_12;
  }
  v7 = *(unsigned __int8 *)(v5 + 6);
  if ( v7 != 2 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v7 == 2 )
    {
      v9 = *(_DWORD *)(v5 + 8);
      if ( v9 )
      {
        v10 = (int)a1 + *(_DWORD *)(v5 + 12) + 32;
        v11 = 0;
        do
        {
          --v9;
          *(_DWORD *)(v10 + v11) = *(_DWORD *)a3;
          v12 = v10 + v11;
          v13 = *((_DWORD *)a3 + 1);
          v11 += 8;
          a3 += a4;
          *(_DWORD *)(v12 + 4) = v13;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 8 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5c9a88 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<int>(ushort,int const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<int>(
        _DWORD *a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v4; // r4
  int *v5; // r5
  int v7; // r1
  bool v8; // zf
  int v9; // r4
  int v11; // r6
  int v12; // r8
  int j; // r4
  int v14; // t1
  int v15; // r1
  int i; // r3
  int v17; // t1

  v4 = a1[1];
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v7 + 6)] & 2) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  a1[4] = -1;
  if ( !v8 )
  {
    v9 = *(unsigned __int8 *)(v7 + 6);
    goto LABEL_12;
  }
  v9 = *(unsigned __int8 *)(v7 + 6);
  if ( v9 != 1 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v11 = (int)a1 + *(_DWORD *)(v7 + 12) + 32;
    if ( v9 == 1 )
    {
      v15 = *(_DWORD *)(v7 + 8);
      if ( v15 )
      {
        for ( i = 0; i != v15; ++i )
        {
          v17 = *v5;
          v5 = (int *)((char *)v5 + a4);
          *(_DWORD *)(v11 + 4 * i) = v17;
        }
      }
    }
    else if ( v9 == 5 )
    {
      v12 = *(_DWORD *)(v7 + 8);
      if ( v12 )
      {
        for ( j = 0; j != v12; ++j )
        {
          v14 = *v5;
          v5 = (int *)((char *)v5 + a4);
          *(float *)(v11 + 4 * j) = (float)v14;
        }
      }
    }
    return 1;
  }
  memcpy((char *)a1 + *(_DWORD *)(v7 + 12) + 32, a3, 4 * *(_DWORD *)(v7 + 8));
  return 1;
}


// ===== 5c9bb4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColorf>(ushort,glitch::video::SColorf const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v7; // r1
  bool v9; // zf
  int v10; // r5
  int v11; // r8
  int v12; // r10
  int v13; // r4
  _DWORD *v14; // r12
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 17 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 16;
  v10 = v9;
  a1[3] = -1;
  a1[4] = -1;
  if ( v9 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v7 + 12) + 32, a3, 16 * *(_DWORD *)(v7 + 8));
    return 1;
  }
  else
  {
    v11 = *(_DWORD *)(v7 + 8);
    if ( v11 )
    {
      v12 = (int)a1 + *(_DWORD *)(v7 + 12) + 32;
      v13 = v10;
      do
      {
        v14 = (_DWORD *)(v12 + 16 * v13++);
        v15 = *(_DWORD *)&a3[v10];
        v16 = *(_DWORD *)&a3[v10 + 4];
        v17 = *(_DWORD *)&a3[v10 + 8];
        v18 = *(_DWORD *)&a3[v10 + 12];
        v10 += a4;
        *v14 = v15;
        v14[1] = v16;
        v14[2] = v17;
        v14[3] = v18;
      }
      while ( v13 != v11 );
    }
    return 1;
  }
}


// ===== 5c9c78 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColor>(ushort,glitch::video::SColor const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v7; // r1
  bool v9; // zf
  int v10; // r6
  int v11; // r8
  int v12; // r10
  int v13; // r5
  void *v14; // r0

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 16 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  v10 = v9;
  a1[3] = -1;
  a1[4] = -1;
  if ( v9 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v7 + 12) + 32, a3, 4 * *(_DWORD *)(v7 + 8));
    return 1;
  }
  else
  {
    v11 = *(_DWORD *)(v7 + 8);
    if ( v11 )
    {
      v12 = (int)a1 + *(_DWORD *)(v7 + 12) + 32;
      v13 = v10;
      do
      {
        v14 = (void *)(v12 + 4 * v13++);
        memcpy(v14, &a3[v10], 4u);
        v10 += a4;
      }
      while ( v13 != v11 );
    }
    return 1;
  }
}


// ===== 5c9d3c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r12
  int v9; // r1
  _DWORD *v10; // r0
  int v11; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 8 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  a1[3] = -1;
  a1[4] = -1;
  if ( v7 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 16 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(v5 + 12);
    if ( v8 )
    {
      v10 = (_DWORD *)((char *)a1 + v9 + 32);
      do
      {
        --v8;
        *v10 = *(_DWORD *)a3;
        v10[1] = *((_DWORD *)a3 + 1);
        v10[2] = *((_DWORD *)a3 + 2);
        v11 = *((_DWORD *)a3 + 3);
        a3 += a4;
        v10[3] = v11;
        v10 += 4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5c9dfc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r4
  _DWORD *v5; // r12
  int v6; // r1
  bool v8; // zf
  int v9; // r2
  int v10; // r1
  _DWORD *v11; // r0
  int v12; // r1

  v4 = a1[1];
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 7 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  a1[3] = -1;
  a1[4] = -1;
  if ( v8 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v6 + 12) + 32, a3, 12 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v6 + 8);
    v10 = *(_DWORD *)(v6 + 12);
    if ( v9 )
    {
      v11 = (_DWORD *)((char *)a1 + v10 + 32);
      do
      {
        --v9;
        *v11 = *v5;
        v11[1] = v5[1];
        v12 = v5[2];
        v5 = (_DWORD *)((char *)v5 + a4);
        v11[2] = v12;
        v11 += 3;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c9ebc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<float>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r12
  int v10; // r1
  char *v11; // r0
  char *v12; // r1
  int v13; // r5

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 6 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  v8 = v7;
  a1[3] = -1;
  a1[4] = -1;
  if ( v7 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 8 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = (char *)a1 + v10 + 32;
      do
      {
        --v9;
        *(_DWORD *)&v11[v8] = *(_DWORD *)a3;
        v12 = &v11[v8];
        v13 = *((_DWORD *)a3 + 1);
        v8 += 8;
        a3 += a4;
        *((_DWORD *)v12 + 1) = v13;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5c9f78 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(ushort,float const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r12
  bool v7; // zf
  int v8; // r1
  int v9; // r4
  int v10; // r12
  char *v11; // r0
  int v12; // t1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 5 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  v8 = v7;
  a1[3] = -1;
  a1[4] = -1;
  if ( v7 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 4 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = (char *)a1 + v10 + 32;
      do
      {
        v12 = *(_DWORD *)a3;
        a3 += a4;
        *(_DWORD *)&v11[4 * v8++] = v12;
      }
      while ( v8 != v9 );
    }
    return 1;
  }
}


// ===== 5ca024 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r12
  int v9; // r1
  _DWORD *v10; // r0
  int v11; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 4 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 16;
  a1[3] = -1;
  a1[4] = -1;
  if ( v7 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 16 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(v5 + 12);
    if ( v8 )
    {
      v10 = (_DWORD *)((char *)a1 + v9 + 32);
      do
      {
        --v8;
        *v10 = *(_DWORD *)a3;
        v10[1] = *((_DWORD *)a3 + 1);
        v10[2] = *((_DWORD *)a3 + 2);
        v11 = *((_DWORD *)a3 + 3);
        a3 += a4;
        v10[3] = v11;
        v10 += 4;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5ca0e4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<int>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  int v4; // r4
  _DWORD *v5; // r12
  int v6; // r1
  bool v8; // zf
  int v9; // r2
  int v10; // r1
  _DWORD *v11; // r0
  int v12; // r1

  v4 = a1[1];
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 3 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 12;
  a1[3] = -1;
  a1[4] = -1;
  if ( v8 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v6 + 12) + 32, a3, 12 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v6 + 8);
    v10 = *(_DWORD *)(v6 + 12);
    if ( v9 )
    {
      v11 = (_DWORD *)((char *)a1 + v10 + 32);
      do
      {
        --v9;
        *v11 = *v5;
        v11[1] = v5[1];
        v12 = v5[2];
        v5 = (_DWORD *)((char *)v5 + a4);
        v11[2] = v12;
        v11 += 3;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5ca1a4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<int>>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r12
  int v10; // r1
  char *v11; // r0
  char *v12; // r1
  int v13; // r5

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 2 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 8;
  v8 = v7;
  a1[3] = -1;
  a1[4] = -1;
  if ( v7 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 8 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = (char *)a1 + v10 + 32;
      do
      {
        --v9;
        *(_DWORD *)&v11[v8] = *(_DWORD *)a3;
        v12 = &v11[v8];
        v13 = *((_DWORD *)a3 + 1);
        v8 += 8;
        a3 += a4;
        *((_DWORD *)v12 + 1) = v13;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5ca260 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<int>(ushort,int const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<int>(
        _DWORD *a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v5; // r12
  bool v7; // zf
  int v8; // r1
  int v9; // r4
  int v10; // r12
  char *v11; // r0
  int v12; // t1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 1 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  v8 = v7;
  a1[3] = -1;
  a1[4] = -1;
  if ( v7 )
  {
    memcpy((char *)a1 + *(_DWORD *)(v5 + 12) + 32, a3, 4 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v9 = *(_DWORD *)(v5 + 8);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v9 )
    {
      v11 = (char *)a1 + v10 + 32;
      do
      {
        v12 = *(_DWORD *)a3;
        a3 += a4;
        *(_DWORD *)&v11[4 * v8++] = v12;
      }
      while ( v8 != v9 );
    }
    return 1;
  }
}


// ===== 5ca30c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(ushort,glitch::core::CMatrix4<float> *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r12
  int v6; // r1
  int v8; // r7
  char *v9; // r8
  const void **v10; // r6
  int v11; // r5
  char *v12; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 11 )
    return 0;
  if ( a4 )
    v8 = a4;
  else
    v8 = 68;
  v9 = &a3[*(_DWORD *)(v6 + 8) * v8];
  if ( a3 != v9 )
  {
    v10 = (const void **)(a1 + 32 + *(_DWORD *)(v6 + 12));
    v11 = 0;
    v12 = a3;
    do
    {
      v11 += v8;
      glitch::video::detail::getMatrixParameter(v10, v12);
      v12 = &a3[v11];
      ++v10;
    }
    while ( v9 != &a3[v11] );
  }
  return 1;
}


// ===== 5ca398 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(ushort,glitch::core::CMatrix4<float> *,int) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5ca39c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(ushort,uint,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12
  int v5; // r12

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 11 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(a1 + 32 + *(_DWORD *)(v5 + 12) + 4 * a3), a4);
  return 1;
}


// ===== 5ca3fc glitch::video::CMaterial::compare(uchar,uchar,glitch::video::CMaterial const&,uchar) =====
int __fastcall glitch::video::CMaterial::compare(
        glitch::video::CMaterial *this,
        int a2,
        int a3,
        const glitch::video::CMaterial *a4,
        unsigned __int8 a5)
{
  int v5; // r10
  int v6; // r8
  _WORD *v7; // r1
  unsigned int v8; // r4
  unsigned int v9; // r12
  int v10; // r6
  int v11; // r7
  int v12; // r9
  int v13; // r0
  int v14; // r4
  int v15; // r12
  unsigned int v16; // r3
  unsigned int v17; // r1
  unsigned int v18; // r2
  bool v19; // cc
  int v20; // r2
  unsigned int v21; // r3
  bool v22; // cc
  int v23; // r3
  int v24; // r12
  int v25; // r1
  char *v26; // r2
  int v27; // r3
  unsigned int v28; // r5
  unsigned int v29; // r12
  char *v30; // r1
  bool v31; // cc
  unsigned int v32; // r12
  int v34; // r2
  unsigned int v35; // r2
  unsigned int v36; // r3
  Elf32_Dyn **v37; // r12
  char *v38; // r11
  char *v39; // r3
  unsigned int v40; // r3
  int v41; // r5
  int v42; // r7
  unsigned int v43; // r4
  char *v44; // r6
  const void *v45; // r0
  int *v46; // r1
  Elf32_Dyn **v47; // [sp+8h] [bp-34h]
  char *v48; // [sp+Ch] [bp-30h]
  int v49; // [sp+10h] [bp-2Ch]
  unsigned __int8 *v50; // [sp+14h] [bp-28h]
  unsigned __int8 *v51; // [sp+18h] [bp-24h]
  unsigned __int8 *v52; // [sp+1Ch] [bp-20h]
  int v53; // [sp+24h] [bp-18h]
  int v54; // [sp+2Ch] [bp-10h]
  int v55; // [sp+30h] [bp-Ch]
  int v56; // [sp+34h] [bp-8h]

  v5 = *((_DWORD *)this + 1);
  v6 = *((_DWORD *)a4 + 1);
  if ( !a3 )
    return 0;
  v50 = *(unsigned __int8 **)(*(_DWORD *)(v5 + 24) + 12 * a2 + 8);
  v49 = *(_DWORD *)(*(_DWORD *)(v6 + 24) + 12 * a5 + 8);
  v7 = *((_WORD **)v50 + 8);
  v8 = *(unsigned __int16 *)(*(_DWORD *)(v49 + 32) + 64);
  v9 = (unsigned __int16)v7[32];
  if ( v8 > v9 )
    return 1;
  if ( v8 < v9 )
    return 0;
  v47 = (Elf32_Dyn **)((char *)this + 32);
  v54 = 52 * (unsigned __int8)(a3 - 1) + 52;
  v53 = 52;
  v48 = (char *)a4 + 32;
  v51 = *(unsigned __int8 **)(*(_DWORD *)(v6 + 24) + 12 * a5 + 8);
  v52 = v50;
  while ( 1 )
  {
    v10 = *((_DWORD *)v52 + 9);
    v11 = v10 + 2 * (unsigned __int16)(v7[27] + v7[23] - v7[26] - v7[22]);
    v12 = *((_DWORD *)v51 + 9);
    if ( v11 != v10 )
      break;
    v13 = 0;
LABEL_31:
    v34 = *v51;
    if ( *v52 - v34 < 0 )
      return 1;
    if ( *v52 != v34 )
      return 0;
    if ( v13 < 0 )
      return 1;
    if ( v13 || v53 == v54 )
      return 0;
    v52 = &v50[v53];
    v51 = (unsigned __int8 *)(v49 + v53);
    v7 = *(_WORD **)&v50[v53 + 32];
    v35 = (unsigned __int16)v7[32];
    v36 = *(unsigned __int16 *)(*(_DWORD *)(v49 + v53 + 32) + 64);
    if ( v35 < v36 )
      return 1;
    v53 += 52;
    if ( v35 > v36 )
      return 0;
  }
  v14 = 0;
  v13 = 0;
  while ( 1 )
  {
    v16 = *(unsigned __int16 *)(v10 + v14);
    if ( (v16 & 0x8000) == 0 )
    {
      v17 = *(unsigned __int16 *)(v12 + v14);
      if ( (v17 & 0x8000) == 0 )
      {
        v18 = *(unsigned __int16 *)(v5 + 14);
        v19 = v18 > v16;
        if ( v18 <= v16 )
          v20 = 0;
        else
          v20 = *(_DWORD *)(v5 + 32);
        if ( v19 )
          v20 += 16 * v16;
        v21 = *(unsigned __int16 *)(v6 + 14);
        v22 = v21 > v17;
        if ( v21 <= v17 )
          v17 = 0;
        else
          v21 = *(_DWORD *)(v6 + 32);
        if ( v22 )
          v17 = v21 + 16 * v17;
        v23 = *(_DWORD *)(v20 + 8);
        if ( *(_WORD *)(v20 + 4) != 2 )
        {
          if ( !v13 )
          {
            v15 = *(unsigned __int8 *)(v20 + 6);
            if ( v15 == 11 )
            {
              v37 = v47;
              v38 = (char *)v47 + *(_DWORD *)(v20 + 12);
              v39 = &v38[4 * v23];
              if ( v38 != v39 )
              {
                v40 = ((v39 - (v38 + 4)) & 0xFFFFFFFC) + 4;
                v55 = v14;
                v56 = v11;
                v41 = 0;
                v42 = v10;
                v43 = v40;
                v44 = &v48[*(_DWORD *)(v17 + 12)];
                do
                {
                  v45 = *(const void **)&v38[v41];
                  v46 = *(int **)&v44[v41];
                  if ( !v45 )
                  {
                    v37 = &__GLOBAL_OFFSET_TABLE_;
                    v40 = 10288;
                  }
                  v41 += 4;
                  if ( !v45 )
                    v45 = *(Elf32_Dyn **)((char *)v37 + v40);
                  if ( !v46 )
                    v46 = &glitch::core::IdentityMatrix;
                  v13 = memcmp(v45, v46, 0x44u);
                }
                while ( v41 != v43 );
                v10 = v42;
                v14 = v55;
                v11 = v56;
              }
            }
            else
            {
              v13 = memcmp(
                      (char *)v47 + *(_DWORD *)(v20 + 12),
                      &v48[*(_DWORD *)(v17 + 12)],
                      v23 * glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[v15]);
            }
          }
          goto LABEL_11;
        }
        v24 = *(_DWORD *)(v20 + 12);
        v25 = *(_DWORD *)(v17 + 12);
        v26 = (char *)v47 + v24;
        v27 = (int)&v47[v23] + v24;
        if ( (Elf32_Dyn **)((char *)v47 + v24) != (Elf32_Dyn **)v27 )
          break;
      }
    }
LABEL_11:
    v14 += 2;
    if ( v11 == v10 + v14 )
      goto LABEL_31;
  }
  v28 = *(unsigned int *)((char *)v47 + v24);
  v29 = *(_DWORD *)&v48[v25];
  v30 = &v48[v25];
  v31 = v28 > v29;
  if ( v28 < v29 )
    return 1;
  while ( !v31 )
  {
    v26 += 4;
    if ( (char *)v27 == v26 )
      goto LABEL_11;
    v32 = *((_DWORD *)v30 + 1);
    v30 += 4;
    v31 = *(_DWORD *)v26 > v32;
    if ( *(_DWORD *)v26 < v32 )
      return 1;
  }
  return 0;
}


// ===== 5ca72c glitch::video::CMaterial::areParametersEqual(uchar,uchar,glitch::video::CMaterial const&,uchar) =====
int __fastcall glitch::video::CMaterial::areParametersEqual(
        glitch::video::CMaterial *this,
        int a2,
        int a3,
        const glitch::video::CMaterial *a4,
        unsigned __int8 a5)
{
  Elf32_Dyn **v5; // r7
  int v6; // r4
  int v7; // r0
  unsigned int v8; // r3
  unsigned int v9; // r2
  unsigned int v10; // r1
  bool v11; // cc
  unsigned int v12; // r1
  bool v13; // cc
  int v14; // r2
  int v15; // r10
  char *v16; // r8
  char *v17; // r10
  char *v18; // r9
  int i; // r6
  int v20; // r11
  int v21; // r5
  _BOOL4 v22; // r0
  int v23; // r6
  int v24; // r5
  _BOOL4 v25; // r0
  int j; // r5
  int v29; // [sp+4h] [bp-40h]
  int v30; // [sp+Ch] [bp-38h]
  int v31; // [sp+10h] [bp-34h]
  int v32; // [sp+14h] [bp-30h]
  Elf32_Dyn *v33; // [sp+18h] [bp-2Ch]
  char *v34; // [sp+20h] [bp-24h]
  char *v35; // [sp+24h] [bp-20h]
  unsigned int v36; // [sp+30h] [bp-14h]
  Elf32_Dyn **v37; // [sp+34h] [bp-10h]
  int v38; // [sp+38h] [bp-Ch]
  int v39; // [sp+3Ch] [bp-8h]

  if ( !a3 )
    return 1;
  v32 = *((_DWORD *)this + 1);
  v31 = *((_DWORD *)a4 + 1);
  v39 = 52 * (unsigned __int8)(a3 - 1) + 52;
  v38 = *(_DWORD *)(*(_DWORD *)(v32 + 24) + 12 * a2 + 8);
  v35 = (char *)this + 32;
  v37 = *(Elf32_Dyn ***)(*(_DWORD *)(v31 + 24) + 12 * a5 + 8);
  v34 = (char *)a4 + 32;
  v36 = 0;
  while ( 1 )
  {
    v5 = v37;
    v29 = *(_DWORD *)(v38 + v36 + 36);
    v33 = v37[v36 / 4 + 9];
    v30 = v29
        + 2
        * (unsigned __int16)(*(_WORD *)(*(_DWORD *)(v38 + v36 + 32) + 54)
                           + *(_WORD *)(*(_DWORD *)(v38 + v36 + 32) + 46)
                           - *(_WORD *)(*(_DWORD *)(v38 + v36 + 32) + 44)
                           - *(_WORD *)(*(_DWORD *)(v38 + v36 + 32) + 52));
    if ( v30 != v29 )
      break;
LABEL_45:
    v36 += 52;
    if ( v36 == v39 )
      return 1;
  }
  v6 = 0;
  while ( 1 )
  {
    v7 = v29;
    v8 = *(unsigned __int16 *)(v29 + v6);
    if ( (v8 & 0x8000) == 0 )
    {
      v9 = *(unsigned __int16 *)((char *)&v33->d_tag + v6);
      if ( (v9 & 0x8000) == 0 )
      {
        v10 = *(unsigned __int16 *)(v32 + 14);
        v11 = v10 > v8;
        if ( v10 <= v8 )
          v8 = 0;
        else
          v5 = (Elf32_Dyn **)v32;
        if ( v11 )
          v8 = (unsigned int)&v5[8][2 * v8];
        v12 = *(unsigned __int16 *)(v31 + 14);
        v13 = v12 > v9;
        if ( v12 <= v9 )
          v12 = 0;
        else
          v7 = v31;
        if ( v13 )
          v12 = *(_DWORD *)(v7 + 32) + 16 * v9;
        v14 = *(unsigned __int8 *)(v8 + 6);
        if ( v14 != *(unsigned __int8 *)(v12 + 6) )
          return 0;
        v15 = *(_DWORD *)(v8 + 8);
        if ( v14 != 11 )
        {
          v5 = &__GLOBAL_OFFSET_TABLE_;
          if ( memcmp(
                 &v35[*(_DWORD *)(v8 + 12)],
                 &v34[*(_DWORD *)(v12 + 12)],
                 v15 * glitch::video::detail::SShaderParameterTypeInspection::ValueTypeSize[v14]) )
          {
            return 0;
          }
          goto LABEL_6;
        }
        v16 = &v35[*(_DWORD *)(v8 + 12)];
        v17 = &v16[4 * v15];
        if ( v16 != v17 )
          break;
      }
    }
LABEL_6:
    v6 += 2;
    if ( v30 == v29 + v6 )
      goto LABEL_45;
  }
  v18 = &v34[*(_DWORD *)(v12 + 12)];
  v5 = nullptr;
  for ( i = *(_DWORD *)v16; !i; i = *(int *)((char *)v5 + (_DWORD)v16) )
  {
    v23 = *(int *)((char *)v5 + (_DWORD)v18);
    if ( v23 && (!*(_BYTE *)(v23 + 64) || !byte_9F65B0) )
    {
      v24 = 1;
      if ( *(float *)v23 != *(float *)glitch::core::IdentityMatrix )
        return 0;
      while ( v24 != 16 )
      {
        v25 = *(float *)(v23 + v24 * 4) == *(float *)&glitch::core::IdentityMatrix[v24];
        ++v24;
        if ( !v25 )
          return 0;
      }
    }
LABEL_29:
    if ( v17 == (char *)++v5 + (_DWORD)v16 )
      goto LABEL_6;
LABEL_30:
    ;
  }
  v20 = *(int *)((char *)v5 + (_DWORD)v18);
  if ( !v20 )
  {
    if ( !*(_BYTE *)(i + 64) || !byte_9F65B0 )
    {
      for ( j = 0; j != 16; ++j )
      {
        if ( *(float *)(i + j * 4) != *(float *)&glitch::core::IdentityMatrix[j] )
          return 0;
      }
      if ( v17 == (char *)++v5 + (_DWORD)v16 )
        goto LABEL_6;
      goto LABEL_30;
    }
    goto LABEL_29;
  }
  if ( *(_BYTE *)(i + 64) && *(_BYTE *)(v20 + 64) )
    goto LABEL_29;
  v21 = 0;
  while ( 1 )
  {
    v22 = *(float *)(i + v21) == *(float *)(v20 + v21);
    v21 += 4;
    if ( !v22 )
      return 0;
    if ( v21 == 64 )
      goto LABEL_29;
  }
}


// ===== 5caa98 glitch::video::SColorf::equals(glitch::video::SColorf const&,float) [clone] =====
bool __fastcall glitch::video::SColorf::equals(float *a1, float *a2)
{
  return *a2 <= (float)(*a1 + 0.000001)
      && *a2 >= (float)(*a1 - 0.000001)
      && a2[1] <= (float)(a1[1] + 0.000001)
      && a2[1] >= (float)(a1[1] - 0.000001)
      && a2[2] <= (float)(a1[2] + 0.000001)
      && a2[2] >= (float)(a1[2] - 0.000001)
      && a2[3] <= (float)(a1[3] + 0.000001)
      && a2[3] >= (float)(a1[3] - 0.000001);
}


// ===== 5cabf8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int a4)
{
  int v5; // r0
  int v6; // r1
  int v7; // r12
  int v9; // r5
  int v10; // r1
  int v11; // r2
  int v12; // r3

  v5 = a1[1];
  if ( *(unsigned __int16 *)(v5 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v5 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 17 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v9 = (int)&a1[4 * a3 + 8] + *(_DWORD *)(v6 + 12);
  if ( !glitch::video::SColorf::equals((float *)v9, (float *)a4) )
  {
    a1[3] = -1;
    a1[4] = -1;
  }
  v10 = *(_DWORD *)(a4 + 4);
  v11 = *(_DWORD *)(a4 + 8);
  v12 = *(_DWORD *)(a4 + 12);
  v7 = 1;
  *(_DWORD *)v9 = *(_DWORD *)a4;
  *(_DWORD *)(v9 + 4) = v10;
  *(_DWORD *)(v9 + 8) = v11;
  *(_DWORD *)(v9 + 12) = v12;
  return v7;
}


// ===== 5cac8c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt<glitch::video::SColorf>(glitch::video::SColorf*,glitch::video::SColor const&) =====
float __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt<glitch::video::SColorf>(
        int a1,
        float *a2,
        unsigned __int8 *a3)
{
  int v4; // r5
  int v5; // r8
  int v6; // r7
  float result; // r0
  float v9; // r1
  float v10; // r2
  float v11; // r3
  float v12; // [sp+0h] [bp-10h] BYREF
  float v13; // [sp+4h] [bp-Ch]
  float v14; // [sp+8h] [bp-8h]
  float v15; // [sp+Ch] [bp-4h]

  v4 = a3[3];
  v5 = a3[1];
  v6 = a3[2];
  v12 = (float)*a3 * 0.0039216;
  v13 = (float)v5 * 0.0039216;
  v14 = (float)v6 * 0.0039216;
  v15 = (float)v4 * 0.0039216;
  if ( !glitch::video::SColorf::equals(a2, &v12) )
  {
    *(_DWORD *)(a1 + 12) = -1;
    *(_DWORD *)(a1 + 16) = -1;
  }
  result = v12;
  v9 = v13;
  v10 = v14;
  v11 = v15;
  *a2 = v12;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}


// ===== 5cad38 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(ushort,uint,glitch::video::SColor const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned __int8 *a4)
{
  int v4; // r5
  int v5; // r1
  int v6; // r8
  int v7; // r6
  _DWORD *v8; // r7
  float *v9; // r5
  float v11; // r8
  float v12; // [sp+4h] [bp-10h]
  float v13; // [sp+8h] [bp-Ch]
  float v14; // [sp+Ch] [bp-8h]

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10000) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = *(_DWORD *)(v5 + 12);
  v8 = a1 + 8;
  v9 = (float *)((char *)a1 + v7 + 32);
  switch ( v6 )
  {
    case 16:
      if ( *(_DWORD *)((char *)v8 + v7) != *(_DWORD *)a4 )
      {
        a1[3] = -1;
        a1[4] = -1;
      }
      memcpy((char *)a1 + v7 + 32, a4, sizeof(_DWORD));
      return 1;
    case 17:
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt<glitch::video::SColorf>(
        (int)a1,
        (float *)((char *)a1 + v7 + 32),
        a4);
      return 1;
    case 8:
      v11 = (float)*a4 * 0.0039216;
      v12 = (float)a4[1] * 0.0039216;
      v13 = (float)a4[2] * 0.0039216;
      v14 = (float)a4[3] * 0.0039216;
      if ( *(float *)((char *)v8 + v7) != v11
        || v9[1] != (float)((float)a4[1] * 0.0039216)
        || v9[2] != v13
        || v9[3] != v14 )
      {
        v11 = (float)*a4 * 0.0039216;
        a1[3] = -1;
        a1[4] = -1;
      }
      *(float *)((char *)v8 + v7) = v11;
      v9[3] = v14;
      v9[1] = v12;
      v9[2] = v13;
      return 1;
    default:
      return 1;
  }
}


// ===== 5caf10 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(glitch::video::SColorf *,glitch::core::vector4d<float> const&) =====
float __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterAt(
        int a1,
        int a2,
        int a3)
{
  float result; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3

  if ( !glitch::video::SColorf::equals((float *)a2, (float *)a3) )
  {
    *(_DWORD *)(a1 + 12) = -1;
    *(_DWORD *)(a1 + 16) = -1;
  }
  result = *(float *)a3;
  v7 = *(_DWORD *)(a3 + 4);
  v8 = *(_DWORD *)(a3 + 8);
  v9 = *(_DWORD *)(a3 + 12);
  *(_DWORD *)a2 = *(_DWORD *)a3;
  *(_DWORD *)(a2 + 4) = v7;
  *(_DWORD *)(a2 + 8) = v8;
  *(_DWORD *)(a2 + 12) = v9;
  return result;
}


// ===== 5caf48 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 5caf68 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterElement<uchar>(ushort,uint,uchar,uchar) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterElement<unsigned char>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        float a5)
{
  int v6; // r0
  int v9; // r1
  int v10; // r3
  unsigned int v11; // r6
  int v12; // r3
  int v13; // r8
  _DWORD *v14; // r10
  int v15; // r7
  _BYTE *v16; // r0

  v6 = a1[1];
  if ( *(unsigned __int16 *)(v6 + 14) <= a2 )
    return 0;
  v9 = *(_DWORD *)(v6 + 32) + 16 * a2;
  if ( !v9 )
    return 0;
  v10 = *(unsigned __int8 *)(v9 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v10]
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v10]
    || a3 >= *(_DWORD *)(v9 + 8) )
  {
    return 0;
  }
  if ( v10 == 11 )
  {
    v13 = *(_DWORD *)(v9 + 12);
    v14 = a1 + 8;
    v15 = *(_DWORD *)((char *)a1 + v13 + 32);
    if ( !v15 )
    {
      v16 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)((char *)v14 + v13) = v16;
      glitch::core::CMatrix4<float>::CMatrix4(v16, glitch::core::IdentityMatrix);
      v15 = *(_DWORD *)((char *)v14 + v13);
    }
    *(_BYTE *)(v15 + 64) = 0;
    if ( *(float *)(v15 + 4 * a4) != a5 )
    {
      a1[3] = -1;
      a1[4] = -1;
    }
    *(float *)(v15 + 4 * a4) = (float)LOBYTE(a5);
    return 1;
  }
  else
  {
    v11 = a3 + *(_DWORD *)(v9 + 12) + a4;
    v12 = *((unsigned __int8 *)a1 + v11 + 32);
    if ( LOBYTE(a5) != v12 )
    {
      a1[3] = -1;
      a1[4] = -1;
      LOBYTE(v12) = LOBYTE(a5);
    }
    *((_BYTE *)a1 + v11 + 32) = v12;
    return 1;
  }
}


// ===== 5cb098 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterElement<int>(ushort,uint,uchar,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterElement<int>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        float a5)
{
  int v5; // r12
  int result; // r0
  int v9; // r1
  int v10; // r3
  int v11; // r2
  int v12; // r10
  _DWORD *v13; // r9
  int v14; // r8
  _BYTE *v15; // r0

  v5 = a1[1];
  if ( *(unsigned __int16 *)(v5 + 14) <= a2 )
    return 0;
  v9 = *(_DWORD *)(v5 + 32) + 16 * a2;
  if ( !v9 )
    return 0;
  v10 = *(unsigned __int8 *)(v9 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v10] != 1
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v10]
    || a3 >= *(_DWORD *)(v9 + 8) )
  {
    return 0;
  }
  if ( v10 == 11 )
  {
    v12 = *(_DWORD *)(v9 + 12);
    v13 = a1 + 8;
    v14 = *(_DWORD *)((char *)a1 + v12 + 32);
    if ( !v14 )
    {
      v15 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)((char *)v13 + v12) = v15;
      glitch::core::CMatrix4<float>::CMatrix4(v15, glitch::core::IdentityMatrix);
      v14 = *(_DWORD *)((char *)v13 + v12);
    }
    *(_BYTE *)(v14 + 64) = 0;
    if ( *(float *)(v14 + 4 * a4) != a5 )
    {
      a1[3] = -1;
      a1[4] = -1;
    }
    *(float *)(v14 + 4 * a4) = (float)SLODWORD(a5);
    return 1;
  }
  else
  {
    v11 = *(_DWORD *)(v9 + 12) + 4 * (a4 + a3);
    result = 1;
    if ( LODWORD(a5) != *(_DWORD *)((char *)a1 + v11 + 32) )
    {
      a1[3] = -1;
      a1[4] = -1;
    }
    *(float *)((char *)a1 + v11 + 32) = a5;
  }
  return result;
}


// ===== 5cb1c4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterElement<float>(ushort,uint,uchar,float) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterElement<float>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        float a5)
{
  int v5; // r12
  int v7; // r1
  int v8; // r0
  int v10; // r4
  int v11; // r8
  _DWORD *v12; // r10
  int v13; // r7
  _BYTE *v14; // r0
  unsigned int v15; // [sp+4h] [bp-8h]

  v5 = a1[1];
  if ( *(unsigned __int16 *)(v5 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v5 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v8] != 5
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v8]
    || a3 >= *(_DWORD *)(v7 + 8) )
  {
    return 0;
  }
  if ( v8 == 11 )
  {
    v11 = *(_DWORD *)(v7 + 12);
    v12 = a1 + 8;
    v13 = *(_DWORD *)((char *)a1 + v11 + 32);
    if ( !v13 )
    {
      v15 = a4;
      v14 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)((char *)v12 + v11) = v14;
      glitch::core::CMatrix4<float>::CMatrix4(v14, glitch::core::IdentityMatrix);
      v13 = *(_DWORD *)((char *)v12 + v11);
      a4 = v15;
    }
    *(_BYTE *)(v13 + 64) = 0;
    if ( a5 != *(float *)(v13 + 4 * a4) )
    {
      a1[3] = -1;
      a1[4] = -1;
    }
    *(float *)(v13 + 4 * a4) = a5;
    return 1;
  }
  else
  {
    v10 = *(_DWORD *)(v7 + 12) + 4 * (a4 + a3);
    if ( a5 != *(float *)((char *)a1 + v10 + 32) )
    {
      a1[3] = -1;
      a1[4] = -1;
    }
    *(float *)((char *)a1 + v10 + 32) = a5;
    return 1;
  }
}


// ===== 5cb304 boost::pool<glitch::core::SAlignedMalloc<(uchar)4>>::malloc_need_resize(void) [clone] =====
int boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize()
{
  unsigned int v0; // r4
  unsigned int v1; // r0
  unsigned int v2; // r3
  unsigned int v3; // r7
  int v4; // r9
  void *v5; // r0
  unsigned int v6; // r5
  unsigned int v7; // r0
  _DWORD *v8; // r12
  int v9; // r7
  _DWORD *v10; // r2
  _DWORD *v11; // r0
  _DWORD *v12; // r3
  char *v13; // r1
  int result; // r0

  v0 = 4;
  v1 = dword_9F75A4;
  do
  {
    v2 = v0;
    v0 = v1 % v0;
    v1 = v2;
  }
  while ( v0 );
  v3 = 4 * (dword_9F75A4 / v2);
  v4 = dword_9F75A8 * v3;
  v5 = GlitchAlloc(dword_9F75A8 * v3 + 15, 0);
  v6 = ((unsigned int)v5 + 7) & 0xFFFFFFFC;
  *(_DWORD *)(v6 - 4) = v5;
  if ( !v6 )
    return 0;
  dword_9F75A8 *= 2;
  v7 = v3 * ((v4 - v3) / v3);
  v8 = (_DWORD *)(v6 + v7);
  *(_DWORD *)(v6 + v7) = glitch::memory::Matrix4Pool;
  if ( v6 != v6 + v7 )
  {
    v9 = -v3;
    v10 = (_DWORD *)((char *)v8 + v9);
    if ( (_DWORD *)v6 == (_DWORD *)((char *)v8 + v9) )
    {
      v11 = (_DWORD *)v6;
    }
    else
    {
      v12 = (_DWORD *)((char *)v10 + v9);
      v13 = (char *)v10 + v9;
      while ( 1 )
      {
        v13 += v9;
        *v10 = v8;
        v11 = v12;
        if ( (char *)v6 == &v13[-v9] )
          break;
        v8 = v10;
        v10 = v12;
        v12 = (_DWORD *)((char *)v12 + v9);
      }
      v8 = v10;
    }
    *v11 = v8;
  }
  glitch::memory::Matrix4Pool = v6;
  *(_DWORD *)(v6 + v4) = dword_9F759C;
  *(_DWORD *)(v6 + v4 + 4) = dword_9F75A0;
  result = glitch::memory::Matrix4Pool;
  dword_9F759C = v6;
  dword_9F75A0 = v4 + 8;
  glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
  return result;
}


// ===== 5cb43c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(ushort,glitch::core::CMatrix4<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  int v4; // r12
  int v6; // r1
  int v8; // r7
  _BYTE *v9; // r8
  _BYTE **v10; // r6
  int v11; // r5
  _BYTE *v12; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 11 )
    return 0;
  a1[3] = -1;
  a1[4] = -1;
  if ( a4 )
    v8 = a4;
  else
    v8 = 68;
  v9 = &a3[*(_DWORD *)(v6 + 8) * v8];
  if ( a3 != v9 )
  {
    v10 = (_BYTE **)((char *)a1 + *(_DWORD *)(v6 + 12) + 32);
    v11 = 0;
    v12 = a3;
    do
    {
      v11 += v8;
      glitch::video::detail::setMatrixParameter(v10, v12);
      v12 = &a3[v11];
      ++v10;
    }
    while ( v9 != &a3[v11] );
  }
  return 1;
}


// ===== 5cb4d8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(ushort,glitch::core::CMatrix4<float> const*,int) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5cb4dc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(ushort,uint,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  int v4; // r12
  int v5; // r12

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 11 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  a1[3] = -1;
  a1[4] = -1;
  glitch::video::detail::setMatrixParameter((_BYTE **)((char *)&a1[a3 + 8] + *(_DWORD *)(v5 + 12)), a4);
  return 1;
}


// ===== 5cb54c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(ushort,uint,glitch::core::CMatrix4<float> const&) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5cb550 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(ushort,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5cb55c std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream(int) [clone] =====
int __fastcall std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream(
        int a1)
{
  int v1; // r8
  int v3; // r3
  int v4; // r3
  _BYTE *v5; // r3
  int v6; // r2

  v1 = a1 + 72;
  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)(a1 + 72));
  *(_DWORD *)(a1 + 72) = off_95B8E0;
  *(_BYTE *)(v1 + 68) = 0;
  *(_DWORD *)(v1 + 72) = 0;
  *(_DWORD *)(v1 + 76) = 0;
  *(_DWORD *)a1 = off_9780CC;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780E0;
  v3 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 4) = 0;
  std::ios::init(a1 + *(_DWORD *)(v3 - 12), 0, (int)off_9780E0, v3);
  *(_DWORD *)(a1 + 8) = off_9780F4;
  *(int *)((char *)&dword_40 + a1 + 8) = (int)off_978108;
  std::ios::init(a1 + 8 + *(_DWORD *)(*(_DWORD *)(a1 + 8) - 12), 0, *(_DWORD *)(a1 + 8), a1 + 8);
  *(_DWORD *)a1 = off_97808C;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780B4;
  v4 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 8) = off_9780A0;
  std::ios::init(a1 + *(_DWORD *)(v4 - 12), 0, (int)off_9780A0, v4);
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)a1 = off_97804C;
  *(_DWORD *)(a1 + 72) = off_978074;
  *(_DWORD *)(a1 + 8) = off_978060;
  *(_DWORD *)(a1 + 12) = off_95B938;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  __ZNSt6localeC1Ev_veneer((std::locale *const)(a1 + 40));
  *(_DWORD *)(a1 + 44) = 24;
  *(_DWORD *)(a1 + 12) = off_978118;
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 48),
    0x10u);
  v5 = *(_BYTE **)(a1 + 64);
  *v5 = 0;
  std::ios::init(v1, a1 + 12, v6, (int)v5);
  return a1;
}


// ===== 5cb6dc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(ushort,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        _BYTE *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5cb6e8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColorf>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r12
  int v7; // r1
  int v8; // r3
  int v9; // r7
  _DWORD *v10; // r8
  char *v11; // r5
  int v12; // r12
  char v14; // r9
  char v15; // r10
  char v16; // r11
  unsigned int v17; // r0
  float v18; // r10
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // [sp+4h] [bp-8h]

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x20000) == 0
    || a3 >= *(_DWORD *)(v7 + 8) )
  {
    return 0;
  }
  v9 = *(_DWORD *)(v7 + 12);
  v10 = a1 + 8;
  v11 = (char *)a1 + v9 + 32;
  switch ( v8 )
  {
    case 16:
      v14 = (unsigned int)(float)(a4[3] * 255.0);
      v15 = (unsigned int)(float)(*a4 * 255.0);
      v16 = (unsigned int)(float)(a4[1] * 255.0);
      v17 = (unsigned int)(float)(a4[2] * 255.0);
      HIBYTE(v22) = v14;
      BYTE2(v22) = v17;
      BYTE1(v22) = v16;
      LOBYTE(v22) = v15;
      v12 = 1;
      if ( *(_DWORD *)((char *)v10 + v9) != v22 )
      {
        a1[3] = -1;
        a1[4] = -1;
      }
      v11[1] = v16;
      v11[3] = v14;
      v11[2] = v17;
      *((_BYTE *)v10 + v9) = v15;
      break;
    case 17:
      if ( !glitch::video::SColorf::equals((float *)((char *)a1 + v9 + 32), a4) )
      {
        a1[3] = -1;
        a1[4] = -1;
      }
      v19 = *((_DWORD *)a4 + 1);
      v20 = *((_DWORD *)a4 + 2);
      v21 = *((_DWORD *)a4 + 3);
      v12 = 1;
      *(float *)v11 = *a4;
      *((_DWORD *)v11 + 1) = v19;
      *((_DWORD *)v11 + 2) = v20;
      *((_DWORD *)v11 + 3) = v21;
      break;
    case 8:
      v18 = *a4;
      if ( *(float *)((char *)v10 + v9) != *a4
        || *((float *)v11 + 1) != a4[1]
        || *((float *)v11 + 2) != a4[2]
        || *((float *)v11 + 3) != a4[3] )
      {
        a1[3] = -1;
        a1[4] = -1;
        v18 = *a4;
      }
      *(float *)((char *)v10 + v9) = v18;
      v12 = 1;
      *((float *)v11 + 1) = a4[1];
      *((float *)v11 + 2) = a4[2];
      *((float *)v11 + 3) = a4[3];
      break;
    default:
      return 1;
  }
  return v12;
}


// ===== 5cb8dc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::grabParameters(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::grabParameters(
        int a1)
{
  int v1; // r2
  int v2; // r9
  int v4; // r6
  unsigned int v5; // r1
  unsigned int v6; // r3
  bool v7; // cf
  const void **v8; // r4
  const void **i; // r7
  const void *v10; // r1
  _BYTE *v11; // r5
  int v12; // r0
  const void *v13; // [sp+0h] [bp-Ch]
  int v14; // [sp+4h] [bp-8h]

  v1 = *(_DWORD *)(a1 + 4);
  v2 = *(unsigned __int16 *)(v1 + 14);
  if ( *(_WORD *)(v1 + 14) )
  {
    v4 = 0;
    v5 = *(unsigned __int16 *)(v1 + 14);
    v6 = 0;
    v14 = a1 + 32;
    while ( 1 )
    {
      v7 = v6 >= v5;
      if ( v6 >= v5 )
        v6 = 0;
      else
        v1 = *(_DWORD *)(v1 + 32);
      if ( !v7 )
        v6 = v1 + 16 * v6;
      switch ( *(_BYTE *)(v6 + 6) )
      {
        case 0xB:
          v8 = (const void **)(v14 + *(_DWORD *)(v6 + 12));
          for ( i = &v8[*(_DWORD *)(v6 + 8)]; i != v8; ++v8 )
          {
            v10 = *v8;
            if ( *v8 )
            {
              v11 = (_BYTE *)glitch::memory::Matrix4Pool;
              if ( glitch::memory::Matrix4Pool )
              {
                glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
              }
              else
              {
                v13 = *v8;
                v12 = boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize();
                v10 = v13;
                v11 = (_BYTE *)v12;
              }
              glitch::core::CMatrix4<float>::CMatrix4(v11, v10);
              *v8 = v11;
            }
          }
          goto LABEL_10;
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
            (glitch::IReferenceCounted *)(v14 + *(_DWORD *)(v6 + 12)),
            *(_DWORD *)(v6 + 8));
          goto LABEL_10;
        case 0x12:
          ++v4;
          glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::CLight>>(
            (_DWORD **)(v14 + *(_DWORD *)(v6 + 12)),
            *(_DWORD *)(v6 + 8));
          v6 = (unsigned __int16)v4;
          if ( v2 == (unsigned __int16)v4 )
            return;
          goto LABEL_11;
        default:
LABEL_10:
          v6 = (unsigned __int16)++v4;
          if ( v2 == (unsigned __int16)v4 )
            return;
LABEL_11:
          v1 = *(_DWORD *)(a1 + 4);
          v5 = *(unsigned __int16 *)(v1 + 14);
          break;
      }
    }
  }
}


// ===== 5cba30 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameter(ushort) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameter(
        int a1,
        unsigned int a2)
{
  int v2; // r3
  unsigned int v3; // r2
  bool v4; // cc
  _DWORD **v5; // r5
  _DWORD **v6; // r7
  _DWORD *v7; // r3
  _DWORD *v9; // r1
  glitch::IReferenceCounted **v10; // r4
  glitch::IReferenceCounted **v11; // r5
  glitch::IReferenceCounted *v12; // r0
  _DWORD **v13; // r0
  _DWORD **i; // r12
  _DWORD *v15; // r3

  v2 = *(_DWORD *)(a1 + 4);
  v3 = *(unsigned __int16 *)(v2 + 14);
  v4 = v3 > a2;
  if ( v3 <= a2 )
    a2 = 0;
  else
    v2 = *(_DWORD *)(v2 + 32);
  if ( v4 )
    a2 = v2 + 16 * a2;
  switch ( *(_BYTE *)(a2 + 6) )
  {
    case 0xB:
      v13 = (_DWORD **)(a1 + 32 + *(_DWORD *)(a2 + 12));
      for ( i = &v13[*(_DWORD *)(a2 + 8)]; i != v13; ++v13 )
      {
        v15 = *v13;
        if ( *v13 )
        {
          *v15 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v15;
          *v13 = nullptr;
        }
      }
      break;
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v10 = (glitch::IReferenceCounted **)(a1 + 32 + *(_DWORD *)(a2 + 12));
      v11 = &v10[*(_DWORD *)(a2 + 8)];
      while ( v11 != v10 )
      {
        v12 = *v10;
        *v10++ = nullptr;
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
      }
      break;
    case 0x12:
      v5 = (_DWORD **)(a1 + 32 + *(_DWORD *)(a2 + 12));
      v6 = &v5[*(_DWORD *)(a2 + 8)];
      while ( v6 != v5 )
      {
        v7 = *v5;
        *v5++ = nullptr;
        if ( v7 )
        {
          if ( (*v7)-- == 1 )
          {
            if ( !*((_BYTE *)v7 + 84) )
            {
              v9 = (_DWORD *)v7[20];
              *v9 = glitch::memory::Matrix4Pool;
              glitch::memory::Matrix4Pool = (int)v9;
            }
            v7[20] = 0;
            LC_API_FREE_0(v7);
          }
        }
      }
      break;
    default:
      return;
  }
}


// ===== 5cbba4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameters(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameters(
        int a1)
{
  int v1; // r3
  int v3; // r5
  unsigned __int16 v4; // r4
  unsigned int v5; // r1

  v1 = *(_DWORD *)(a1 + 4);
  v3 = *(unsigned __int16 *)(v1 + 14);
  if ( *(_WORD *)(v1 + 14) )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ++v4;
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameter(
        a1,
        v5);
      v5 = v4;
    }
    while ( v3 != v4 );
  }
}


// ===== 5cbbe0 glitch::video::CMaterial::init(uchar const*,glitch::video::detail::material::SRenderState const*,bool) =====
void __fastcall glitch::video::CMaterial::init(int a1, const void *a2, int a3, int a4)
{
  int v4; // r2
  const void *v6; // [sp+4h] [bp-4h]

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(_WORD *)(v4 + 14) )
  {
    if ( a4 )
    {
      v6 = a2;
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameters(a1);
      v4 = *(_DWORD *)(a1 + 4);
      a2 = v6;
    }
    memcpy((void *)(a1 + 32), a2, *(_DWORD *)(v4 + 20));
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::grabParameters(a1);
  }
}


// ===== 5cbc3c glitch::video::CMaterial::reset(glitch::video::detail::material::SRenderState const*) =====
void __fastcall glitch::video::CMaterial::reset(int a1, int a2)
{
  int v2; // r5

  v2 = *(_DWORD *)(a1 + 4);
  *(_BYTE *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 12) = -1;
  *(_BYTE *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 16) = -1;
  glitch::video::CMaterial::init(a1, *(const void **)(v2 + 36), a2, 1);
}


// ===== 5cbc70 glitch::video::CMaterial::CMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,char const*,glitch::video::CMaterial::SStateWithoutRenderState const&,uchar const*,glitch::video::detail::material::SRenderState const*) =====
int __fastcall glitch::video::CMaterial::CMaterial(
        int a1,
        int a2,
        glitch::core::detail::SSharedStringHeapEntry::SData *this,
        int a4,
        const void *a5,
        int a6)
{
  _DWORD *v8; // r1
  char v9; // r3
  _DWORD *v10; // r0
  int v11; // r5
  int v12; // r1
  int v13; // r6
  int v14; // r3
  int v15; // r2
  int v16; // r0
  unsigned int v17; // r0

  *(_DWORD *)a1 = 0;
  v8 = *(_DWORD **)a2;
  *(_DWORD *)(a1 + 4) = v8;
  if ( v8 )
    ++*v8;
  *(_BYTE *)(a1 + 8) = *(_BYTE *)a4;
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(a4 + 4);
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a4 + 8);
  v9 = *(_BYTE *)(a4 + 12);
  *(_DWORD *)(a1 + 24) = 0;
  *(_BYTE *)(a1 + 20) = v9;
  v10 = (_DWORD *)glitch::core::detail::SSharedStringHeapEntry::SData::get(this, (const char *)&dword_0 + 1, 0);
  *(_DWORD *)(a1 + 28) = v10;
  if ( v10 )
    ++*v10;
  v11 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  *(_DWORD *)(a1 + 24) = a1 + v11 + 32 + glitch::video::CMaterial::getRenderStateBlockSize();
  glitch::video::CMaterial::init(a1, a5, a6, 0);
  v12 = *(_DWORD *)(a1 + 4);
  if ( *(_BYTE *)(v12 + 16) )
  {
    v13 = 12 * (unsigned __int8)(*(_BYTE *)(v12 + 16) - 1) + 12;
    v14 = 0;
    v15 = 0;
    while ( 1 )
    {
      v16 = *(_DWORD *)(*(_DWORD *)(v12 + 24) + v15 + 8);
      v15 += 12;
      v17 = *(unsigned __int16 *)(*(_DWORD *)(v16 + 32) + 64);
      *(_DWORD *)(*(_DWORD *)(a1 + 24) + v14) = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v14) & 0xFFFFFF
                                              | (((unsigned __int8)v17 ^ (v17 >> 8)) << 24);
      v14 += 4;
      if ( v15 == v13 )
        break;
      v12 = *(_DWORD *)(a1 + 4);
    }
  }
  return a1;
}


// ===== 5cbd90 glitch::video::CMaterial::allocateProcessBufferHeap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,char const*,glitch::video::CMaterial::SStateWithoutRenderState const&,uchar const*,glitch::video::detail::material::SRenderState const*) =====
int __fastcall glitch::video::CMaterial::allocateProcessBufferHeap(
        int a1,
        glitch::core::detail::SSharedStringHeapEntry::SData *a2,
        int a3,
        const void *a4,
        int a5)
{
  int v6; // r6
  int RenderStateBlockSize; // r0
  int v11; // r1
  int v12; // r0
  int v13; // r6

  v6 = *(_DWORD *)(*(_DWORD *)a1 + 20);
  RenderStateBlockSize = glitch::video::CMaterial::getRenderStateBlockSize();
  v12 = glitch::core::allocProcessBuffer(
          (glitch::core *)(v6 + 36 + 4 * *(unsigned __int8 *)(*(_DWORD *)a1 + 16) + RenderStateBlockSize),
          v11);
  v13 = v12;
  if ( v12 )
  {
    if ( !a4 )
      a4 = *(const void **)(*(_DWORD *)a1 + 36);
    glitch::video::CMaterial::CMaterial(v12, a1, a2, a3, a4, a5);
  }
  return v13;
}


// ===== 5cbe0c glitch::video::CMaterial::cloneHeap(char const*) =====
int __fastcall glitch::video::CMaterial::cloneHeap(
        glitch::video::CMaterial *this,
        glitch::core::detail::SSharedStringHeapEntry::SData *a2)
{
  char *v3; // r0
  int v5; // r3

  v3 = (char *)this + 4;
  if ( !a2 )
  {
    v5 = *((_DWORD *)this + 7);
    if ( v5 )
      a2 = (glitch::core::detail::SSharedStringHeapEntry::SData *)(v5 + 4);
  }
  return glitch::video::CMaterial::allocateProcessBufferHeap(
           (int)v3,
           a2,
           (int)this + 8,
           (char *)this + 32,
           (int)this + *(_DWORD *)(*((_DWORD *)this + 1) + 20) + 32);
}


// ===== 5cbe58 glitch::video::CMaterial::CMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,char const*,glitch::video::CMaterial::SStateWithoutRenderState const&,uchar const*,glitch::video::detail::material::SRenderState const*) =====
int __fastcall glitch::video::CMaterial::CMaterial(
        int a1,
        int a2,
        glitch::core::detail::SSharedStringHeapEntry::SData *this,
        int a4,
        const void *a5,
        int a6)
{
  _DWORD *v8; // r1
  char v9; // r3
  _DWORD *v10; // r0
  int v11; // r5
  int v12; // r1
  int v13; // r6
  int v14; // r3
  int v15; // r2
  int v16; // r0
  unsigned int v17; // r0

  *(_DWORD *)a1 = 0;
  v8 = *(_DWORD **)a2;
  *(_DWORD *)(a1 + 4) = v8;
  if ( v8 )
    ++*v8;
  *(_BYTE *)(a1 + 8) = *(_BYTE *)a4;
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(a4 + 4);
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a4 + 8);
  v9 = *(_BYTE *)(a4 + 12);
  *(_DWORD *)(a1 + 24) = 0;
  *(_BYTE *)(a1 + 20) = v9;
  v10 = (_DWORD *)glitch::core::detail::SSharedStringHeapEntry::SData::get(this, (const char *)&dword_0 + 1, 0);
  *(_DWORD *)(a1 + 28) = v10;
  if ( v10 )
    ++*v10;
  v11 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  *(_DWORD *)(a1 + 24) = a1 + v11 + 32 + glitch::video::CMaterial::getRenderStateBlockSize();
  glitch::video::CMaterial::init(a1, a5, a6, 0);
  v12 = *(_DWORD *)(a1 + 4);
  if ( *(_BYTE *)(v12 + 16) )
  {
    v13 = 12 * (unsigned __int8)(*(_BYTE *)(v12 + 16) - 1) + 12;
    v14 = 0;
    v15 = 0;
    while ( 1 )
    {
      v16 = *(_DWORD *)(*(_DWORD *)(v12 + 24) + v15 + 8);
      v15 += 12;
      v17 = *(unsigned __int16 *)(*(_DWORD *)(v16 + 32) + 64);
      *(_DWORD *)(*(_DWORD *)(a1 + 24) + v14) = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v14) & 0xFFFFFF
                                              | (((unsigned __int8)v17 ^ (v17 >> 8)) << 24);
      v14 += 4;
      if ( v15 == v13 )
        break;
      v12 = *(_DWORD *)(a1 + 4);
    }
  }
  return a1;
}


// ===== 5cbf78 glitch::video::CMaterial::~CMaterial() =====
void __fastcall glitch::video::CMaterial::~CMaterial(glitch::video::CMaterial *this)
{
  int v2; // r3
  _DWORD *v3; // r0
  bool v4; // zf

  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameters((int)this);
  v2 = *(_DWORD *)(*((_DWORD *)this + 1) + 4);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD, glitch::video::CMaterial *))(*(_DWORD *)v2 + 528))(
      *(_DWORD *)(*((_DWORD *)this + 1) + 4),
      this);
  v3 = *((_DWORD **)this + 7);
  if ( v3 && (v4 = *v3 == 1, --*v3, v4) )
  {
    glitch::core::detail::SSharedStringHeapEntry::SData::release(v3);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr((glitch::video::CMaterialRenderer **)this + 1);
  }
  else
  {
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr((glitch::video::CMaterialRenderer **)this + 1);
  }
}


// ===== 5cbfec glitch::video::CMaterial::allocate(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,char const*,glitch::video::CMaterial::SStateWithoutRenderState const&,uchar const*,glitch::video::detail::material::SRenderState const*) =====
glitch::video::CMaterial **__fastcall glitch::video::CMaterial::allocate(
        glitch::video::CMaterial **a1,
        int a2,
        glitch::core::detail::SSharedStringHeapEntry::SData *a3,
        int a4,
        const void *a5,
        int a6)
{
  int v8; // r9
  const void *v11; // r10
  int RenderStateBlockSize; // r0
  glitch::video::CMaterial *v13; // r0
  glitch::video::CMaterial *v14; // r5
  glitch::video::CMaterial *v15; // r3
  glitch::video::CMaterial *v17; // [sp+Ch] [bp-4h] BYREF

  *a1 = nullptr;
  v8 = *(_DWORD *)(*(_DWORD *)a2 + 20);
  v11 = a5;
  RenderStateBlockSize = glitch::video::CMaterial::getRenderStateBlockSize();
  v13 = (glitch::video::CMaterial *)operator new[](
                                      v8 + 36 + 4 * *(unsigned __int8 *)(*(_DWORD *)a2 + 16) + RenderStateBlockSize,
                                      0);
  v14 = v13;
  if ( v13 )
  {
    if ( !a5 )
      v11 = *(const void **)(*(_DWORD *)a2 + 36);
    glitch::video::CMaterial::CMaterial((int)v13, a2, a3, a4, v11, a6);
    v17 = v14;
    ++*(_DWORD *)v14;
    v15 = v17;
    v17 = *a1;
    *a1 = v15;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v17);
  }
  return a1;
}


// ===== 5cc0a0 glitch::video::CMaterial::allocate(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,char const*,uchar) =====
glitch::video::CMaterial **__fastcall glitch::video::CMaterial::allocate(
        glitch::video::CMaterial **a1,
        int *a2,
        glitch::core::detail::SSharedStringHeapEntry::SData *a3)
{
  int v3; // lr
  _BYTE v6[4]; // [sp+8h] [bp-10h] BYREF
  int v7; // [sp+Ch] [bp-Ch]
  int v8; // [sp+10h] [bp-8h]
  char v9; // [sp+14h] [bp-4h]

  v3 = *a2;
  v8 = -1;
  v7 = -1;
  v6[0] = 0;
  v9 = 0;
  glitch::video::CMaterial::allocate(a1, (int)a2, a3, (int)v6, *(const void **)(v3 + 36), 0);
  return a1;
}


// ===== 5cc0e8 glitch::video::CMaterial::clone(char const*) =====
glitch::video::CMaterial **__fastcall glitch::video::CMaterial::clone(
        glitch::video::CMaterial **this,
        const char *a2,
        glitch::core::detail::SSharedStringHeapEntry::SData *a3)
{
  const char *v5; // r1
  int v7; // r0

  v5 = a2 + 4;
  if ( !a3 )
  {
    v7 = *((_DWORD *)a2 + 7);
    if ( v7 )
      a3 = (glitch::core::detail::SSharedStringHeapEntry::SData *)(v7 + 4);
  }
  glitch::video::CMaterial::allocate(
    this,
    (int)v5,
    a3,
    (int)(a2 + 8),
    a2 + 32,
    (int)&a2[*(_DWORD *)(*((_DWORD *)a2 + 1) + 20) + 32]);
  return this;
}


// ===== 5cc144 glitch::video::CMaterial::~CMaterial() =====
void __fastcall glitch::video::CMaterial::~CMaterial(glitch::video::CMaterial *this)
{
  int v2; // r3
  _DWORD *v3; // r0
  bool v4; // zf

  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::dropParameters((int)this);
  v2 = *(_DWORD *)(*((_DWORD *)this + 1) + 4);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD, glitch::video::CMaterial *))(*(_DWORD *)v2 + 528))(
      *(_DWORD *)(*((_DWORD *)this + 1) + 4),
      this);
  v3 = *((_DWORD **)this + 7);
  if ( v3 && (v4 = *v3 == 1, --*v3, v4) )
  {
    glitch::core::detail::SSharedStringHeapEntry::SData::release(v3);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr((glitch::video::CMaterialRenderer **)this + 1);
  }
  else
  {
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr((glitch::video::CMaterialRenderer **)this + 1);
  }
}


// ===== 5cc1b8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD **a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4
  bool v7; // zf
  int v8; // r4
  _DWORD *v10; // r1
  _DWORD *v11; // r2
  _DWORD *v12; // r0
  _DWORD *v13; // r2

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40000) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = v6 == 18;
  v8 = *(_DWORD *)(v5 + 12);
  if ( !v7 )
    return 1;
  v10 = a1 + 8;
  v11 = *(_DWORD **)((char *)a1 + v8 + 32);
  if ( v11 != *a4 )
  {
    a1[3] = -1;
    a1[4] = -1;
    v11 = *a4;
  }
  if ( v11 )
    ++*v11;
  v12 = *(_DWORD **)((char *)v10 + v8);
  *(_DWORD *)((char *)v10 + v8) = v11;
  if ( !v12 )
    return 1;
  v7 = (*v12)-- == 1;
  if ( !v7 )
    return 1;
  if ( !*((_BYTE *)v12 + 84) )
  {
    v13 = (_DWORD *)v12[20];
    *v13 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v13;
  }
  v12[20] = 0;
  LC_API_FREE_0(v12);
  return 1;
}


// ===== 5cc2b8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v4; // r12
  int v6; // r1
  int v8; // r7
  int v9; // r10
  int v10; // r6
  int v11; // r8
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  _DWORD *v15; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 18 )
    return 0;
  a1[3] = -1;
  a1[4] = -1;
  v8 = *(_DWORD *)(v6 + 8);
  if ( a4 )
    v9 = a4;
  else
    v9 = 4;
  if ( v8 )
  {
    v10 = 0;
    v11 = (int)a1 + *(_DWORD *)(v6 + 12) + 32;
    do
    {
      v12 = *a3;
      a3 = (_DWORD **)((char *)a3 + v9);
      if ( v12 )
        ++*v12;
      v13 = *(_DWORD **)(v11 + v10);
      *(_DWORD *)(v11 + v10) = v12;
      v10 += 4;
      if ( v13 )
      {
        if ( (*v13)-- == 1 )
        {
          if ( !*((_BYTE *)v13 + 84) )
          {
            v15 = (_DWORD *)v13[20];
            *v15 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v15;
          }
          v13[20] = 0;
          LC_API_FREE_0(v13);
        }
      }
      --v8;
    }
    while ( v8 );
  }
  return 1;
}


// ===== 5cc3b4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD **a4)
{
  int v4; // r4
  int v5; // r1
  int v6; // r4

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x40000) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  if ( v6 == 18 )
    boost::intrusive_ptr<glitch::video::CLight>::operator=(a4, (_DWORD **)(a1 + 32 + *(_DWORD *)(v5 + 12)));
  return 1;
}


// ===== 5cc43c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        glitch::IReferenceCounted **a3,
        int a4)
{
  int v4; // r12
  glitch::IReferenceCounted **v5; // r4
  int v7; // r1
  bool v8; // zf
  int v9; // r6
  int v10; // r5
  int v11; // r8
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 || (unsigned int)*(unsigned __int8 *)(v7 + 6) - 12 > 3 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( v8 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 4 * *(_DWORD *)(v7 + 8));
    return 1;
  }
  else
  {
    v9 = 0;
    v10 = *(_DWORD *)(v7 + 8);
    if ( v10 )
    {
      v11 = a1 + 32 + *(_DWORD *)(v7 + 12);
      do
      {
        v12 = *(glitch::IReferenceCounted **)(v11 + v9);
        v9 += 4;
        if ( v12 )
          ++*((_DWORD *)v12 + 1);
        v13 = *v5;
        *v5 = v12;
        v5 = (glitch::IReferenceCounted **)((char *)v5 + a4);
        if ( v13 )
          glitch::IReferenceCounted::drop(v13);
        --v10;
      }
      while ( v10 );
    }
    return 1;
  }
}


// ===== 5cc50c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        void **a3,
        int a4)
{
  int v4; // r12
  void **v5; // r5
  int v7; // r1
  bool v9; // zf
  int v10; // r7
  int v11; // r6
  int v12; // r10
  _DWORD *v13; // r3
  _DWORD *v14; // r2
  _DWORD *v15; // r1

  v4 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 || *(_BYTE *)(v7 + 6) != 18 )
    return 0;
  v9 = a4 == 0;
  if ( a4 )
    v9 = a4 == 4;
  if ( v9 )
  {
    memcpy(a3, (const void *)(a1 + 32 + *(_DWORD *)(v7 + 12)), 4 * *(_DWORD *)(v7 + 8));
    return 1;
  }
  else
  {
    v10 = 0;
    v11 = *(_DWORD *)(v7 + 8);
    if ( v11 )
    {
      v12 = a1 + 32 + *(_DWORD *)(v7 + 12);
      do
      {
        v13 = *(_DWORD **)(v12 + v10);
        v10 += 4;
        if ( v13 )
          ++*v13;
        v14 = *v5;
        *v5 = v13;
        v5 = (void **)((char *)v5 + a4);
        if ( v14 )
        {
          v9 = (*v14)-- == 1;
          if ( v9 )
          {
            if ( !*((_BYTE *)v14 + 84) )
            {
              v15 = (_DWORD *)v14[20];
              *v15 = glitch::memory::Matrix4Pool;
              glitch::memory::Matrix4Pool = (int)v15;
            }
            v14[20] = 0;
            LC_API_FREE_0(v14);
          }
        }
        --v11;
      }
      while ( v11 );
    }
    return 1;
  }
}


// ===== 5cc628 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
        int a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<float>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (glitch::IReferenceCounted **)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (void **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5cc764 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(ushort,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
        int a1,
        unsigned int a2,
        void *a3)
{
  int v3; // r3
  int v4; // r3

  v3 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v3 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(v3 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 11 || !*(_DWORD *)(v4 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(a1 + 32 + *(_DWORD *)(v4 + 12)), a3);
  return 1;
}


// ===== 5cc7c0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(ushort,uint,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12
  int v5; // r12

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 11 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(a1 + 32 + *(_DWORD *)(v5 + 12) + 4 * a3), a4);
  return 1;
}


// ===== 5cc820 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v4; // r12
  int v5; // r12
  int result; // r0

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || (unsigned int)*(unsigned __int8 *)(v5 + 6) - 12 > 3 )
    return 0;
  a1[3] = -1;
  a1[4] = -1;
  if ( !a4 )
    return 1;
  switch ( *(_BYTE *)(v5 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      glitch::video::detail::setArrayParameter(
        (glitch::IReferenceCounted *)v5,
        (int)a1 + *(_DWORD *)(v5 + 12) + 32,
        a3,
        a4);
      result = 1;
      break;
    default:
      return 1;
  }
  return result;
}


// ===== 5cc8b4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v4; // r12
  int v6; // r12

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 || (unsigned int)*(unsigned __int8 *)(v6 + 6) - 12 > 3 )
    return 0;
  a1[3] = -1;
  a1[4] = -1;
  if ( !a4 )
    a4 = 4;
  glitch::video::detail::setArrayParameter((glitch::IReferenceCounted *)v6, (int)a1 + *(_DWORD *)(v6 + 12) + 32, a3, a4);
  return 1;
}


// ===== 5cc91c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (int *)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5cca58 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::initParametersToIdentity(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::initParametersToIdentity(
        int a1)
{
  int v1; // r1
  int v2; // r6
  int v4; // r12
  int v5; // r4
  int v6; // r5
  unsigned int v7; // r0
  unsigned int v8; // r2
  int v9; // r3
  bool v10; // cf
  int v11; // r1
  int v12; // r2
  int v13; // r0
  _DWORD *v14; // r2
  _DWORD *v15; // r1
  glitch::IReferenceCounted *v16; // r0
  _DWORD *v17; // r0
  _DWORD *v19; // r2
  _DWORD *v20; // r1
  int v21; // [sp+0h] [bp-Ch]
  int v22; // [sp+0h] [bp-Ch]
  int v23; // [sp+4h] [bp-8h]
  int v24; // [sp+4h] [bp-8h]

  v1 = *(_DWORD *)(a1 + 4);
  v2 = *(unsigned __int16 *)(v1 + 14);
  if ( *(_WORD *)(v1 + 14) )
  {
    v4 = 15552;
    v5 = 0;
    v6 = a1 + 32;
    v7 = *(unsigned __int16 *)(v1 + 14);
    v8 = 0;
    v9 = -1;
    while ( 1 )
    {
      v10 = v8 >= v7;
      if ( v8 >= v7 )
        v8 = 0;
      else
        v1 = *(_DWORD *)(v1 + 32);
      if ( !v10 )
        v8 = v1 + 16 * v8;
      v11 = *(unsigned __int8 *)(v8 + 6);
      v12 = *(_DWORD *)(v8 + 12);
      v13 = v6 + v12;
      switch ( v11 )
      {
        case 0:
          *(_BYTE *)(v6 + v12) = 0;
          goto LABEL_11;
        case 1:
          *(_DWORD *)(v6 + v12) = 0;
          goto LABEL_11;
        case 2:
          *(_DWORD *)(v6 + v12) = 0;
          *(_DWORD *)(v13 + 4) = 0;
          goto LABEL_11;
        case 3:
          *(_DWORD *)(v6 + v12) = 0;
          *(_DWORD *)(v13 + 8) = 0;
          *(_DWORD *)(v13 + 4) = 0;
          goto LABEL_11;
        case 4:
          *(_DWORD *)(v6 + v12) = 0;
          *(_DWORD *)(v13 + 12) = 0;
          *(_DWORD *)(v13 + 4) = 0;
          *(_DWORD *)(v13 + 8) = 0;
          goto LABEL_11;
        case 5:
          *(_DWORD *)(v6 + v12) = 0;
          goto LABEL_11;
        case 6:
          *(_DWORD *)(v6 + v12) = 0;
          *(_DWORD *)(v13 + 4) = 0;
          goto LABEL_11;
        case 7:
          *(_DWORD *)(v6 + v12) = 0;
          *(_DWORD *)(v13 + 8) = 0;
          *(_DWORD *)(v13 + 4) = 0;
          goto LABEL_11;
        case 8:
          *(_DWORD *)(v6 + v12) = 1065353216;
          *(_DWORD *)(v13 + 12) = 1065353216;
          *(_DWORD *)(v13 + 4) = 1065353216;
          *(_DWORD *)(v13 + 8) = 1065353216;
          goto LABEL_11;
        case 11:
          v14 = *(_DWORD **)(v6 + v12);
          if ( v14 )
          {
            v15 = *(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v4);
            *v14 = *v15;
            *v15 = v14;
          }
          goto LABEL_11;
        case 12:
        case 13:
        case 14:
        case 15:
          v16 = *(glitch::IReferenceCounted **)(v6 + v12);
          *(_DWORD *)(v6 + v12) = 0;
          if ( v16 )
          {
            v21 = v9;
            v23 = v4;
            glitch::IReferenceCounted::drop(v16);
            v9 = v21;
            v4 = v23;
          }
          goto LABEL_11;
        case 16:
          ++v5;
          *(_BYTE *)(v13 + 1) = v9;
          *(_BYTE *)(v13 + 3) = v9;
          *(_BYTE *)(v13 + 2) = v9;
          *(_BYTE *)(v6 + v12) = v9;
          v8 = (unsigned __int16)v5;
          if ( v2 == (unsigned __int16)v5 )
            return;
          goto LABEL_12;
        case 17:
          *(_DWORD *)(v13 + 4) = 1065353216;
          *(_DWORD *)(v13 + 12) = 1065353216;
          *(_DWORD *)(v13 + 8) = 1065353216;
          *(_DWORD *)(v6 + v12) = 1065353216;
          goto LABEL_11;
        case 18:
          v17 = *(_DWORD **)(v6 + v12);
          *(_DWORD *)(v6 + v12) = 0;
          if ( v17 )
          {
            if ( (*v17)-- == 1 )
            {
              if ( !*((_BYTE *)v17 + 84) )
              {
                v19 = *(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v4);
                v20 = (_DWORD *)v17[20];
                *v20 = *v19;
                *v19 = v20;
              }
              v17[20] = 0;
              v22 = v9;
              v24 = v4;
              LC_API_FREE_0(v17);
              v9 = v22;
              v4 = v24;
            }
          }
          goto LABEL_11;
        default:
LABEL_11:
          v8 = (unsigned __int16)++v5;
          if ( v2 == (unsigned __int16)v5 )
            return;
LABEL_12:
          v1 = *(_DWORD *)(a1 + 4);
          v7 = *(unsigned __int16 *)(v1 + 14);
          break;
      }
    }
  }
}


// ===== 5ccc7c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        glitch::IReferenceCounted **a3,
        int a4)
{
  int v4; // r12
  int v7; // r1
  int v8; // r6
  int v10; // r7
  int v11; // r8
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0
  int v14; // r7
  int v15; // r8
  glitch::IReferenceCounted *v16; // r3
  glitch::IReferenceCounted *v17; // r0
  int v18; // r7
  int v19; // r8
  glitch::IReferenceCounted *v20; // r3
  glitch::IReferenceCounted *v21; // r0
  int v22; // r7
  int v23; // r8
  glitch::IReferenceCounted *v24; // r3
  glitch::IReferenceCounted *v25; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 || (unsigned int)*(unsigned __int8 *)(v7 + 6) - 12 > 3 )
    return 0;
  if ( a4 )
  {
    v8 = a1 + 32 + *(_DWORD *)(v7 + 12);
    switch ( *(_BYTE *)(v7 + 6) )
    {
      case 0xC:
        v18 = *(_DWORD *)(v7 + 8);
        if ( v18 )
        {
          v19 = 0;
          do
          {
            v20 = *(glitch::IReferenceCounted **)(v8 + v19);
            v19 += 4;
            if ( v20 )
              ++*((_DWORD *)v20 + 1);
            v21 = *a3;
            *a3 = v20;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v21 )
              glitch::IReferenceCounted::drop(v21);
            --v18;
          }
          while ( v18 );
        }
        break;
      case 0xD:
        v22 = *(_DWORD *)(v7 + 8);
        if ( v22 )
        {
          v23 = 0;
          do
          {
            v24 = *(glitch::IReferenceCounted **)(v8 + v23);
            v23 += 4;
            if ( v24 )
              ++*((_DWORD *)v24 + 1);
            v25 = *a3;
            *a3 = v24;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v25 )
              glitch::IReferenceCounted::drop(v25);
            --v22;
          }
          while ( v22 );
        }
        break;
      case 0xE:
        v10 = *(_DWORD *)(v7 + 8);
        if ( v10 )
        {
          v11 = 0;
          do
          {
            v12 = *(glitch::IReferenceCounted **)(v8 + v11);
            v11 += 4;
            if ( v12 )
              ++*((_DWORD *)v12 + 1);
            v13 = *a3;
            *a3 = v12;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v13 )
              glitch::IReferenceCounted::drop(v13);
            --v10;
          }
          while ( v10 );
        }
        break;
      case 0xF:
        v14 = *(_DWORD *)(v7 + 8);
        if ( v14 )
        {
          v15 = 0;
          do
          {
            v16 = *(glitch::IReferenceCounted **)(v8 + v15);
            v15 += 4;
            if ( v16 )
              ++*((_DWORD *)v16 + 1);
            v17 = *a3;
            *a3 = v16;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v17 )
              glitch::IReferenceCounted::drop(v17);
            --v14;
          }
          while ( v14 );
        }
        break;
      default:
        return 1;
    }
  }
  return 1;
}


// ===== 5cce20 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v4; // r12
  int v7; // r1
  int v9; // r7
  int v10; // r6
  int v11; // r10
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  _DWORD *v15; // r1

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7
    || (glitch::video::detail::SShaderParameterTypeInspection::Convertions[*(unsigned __int8 *)(v7 + 6)] & 0x40000) == 0 )
  {
    return 0;
  }
  a1[3] = -1;
  a1[4] = -1;
  if ( a4 )
  {
    if ( *(_BYTE *)(v7 + 6) == 18 )
    {
      v9 = *(_DWORD *)(v7 + 8);
      if ( v9 )
      {
        v10 = 0;
        v11 = (int)a1 + *(_DWORD *)(v7 + 12) + 32;
        do
        {
          v12 = *a3;
          a3 = (_DWORD **)((char *)a3 + a4);
          if ( v12 )
            ++*v12;
          v13 = *(_DWORD **)(v11 + v10);
          *(_DWORD *)(v11 + v10) = v12;
          v10 += 4;
          if ( v13 )
          {
            if ( (*v13)-- == 1 )
            {
              if ( !*((_BYTE *)v13 + 84) )
              {
                v15 = (_DWORD *)v13[20];
                *v15 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v15;
              }
              v13[20] = 0;
              LC_API_FREE_0(v13);
            }
          }
          --v9;
        }
        while ( v9 );
      }
    }
  }
  return 1;
}


// ===== 5ccf40 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        int a3,
        int *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 (unsigned __int8 *)a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5cd07c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(ushort,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(
        int a1,
        unsigned int a2,
        void *a3)
{
  int v3; // r3
  int v4; // r3

  v3 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v3 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(v3 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 11 || !*(_DWORD *)(v4 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(a1 + 32 + *(_DWORD *)(v4 + 12)), a3);
  return 1;
}


// ===== 5cd0d8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v4; // r12
  int v7; // r1
  int v8; // r3
  int v10; // r6
  int v11; // r7
  int v12; // r10
  _DWORD *v13; // r3
  _DWORD *v14; // r2
  _DWORD *v16; // r1

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x40000) == 0 )
    return 0;
  if ( a4 )
  {
    if ( v8 == 18 )
    {
      v10 = *(_DWORD *)(v7 + 8);
      if ( v10 )
      {
        v11 = 0;
        v12 = a1 + 32 + *(_DWORD *)(v7 + 12);
        do
        {
          v13 = *(_DWORD **)(v12 + v11);
          v11 += 4;
          if ( v13 )
            ++*v13;
          v14 = *a3;
          *a3 = v13;
          a3 = (_DWORD **)((char *)a3 + a4);
          if ( v14 )
          {
            if ( (*v14)-- == 1 )
            {
              if ( !*((_BYTE *)v14 + 84) )
              {
                v16 = (_DWORD *)v14[20];
                *v16 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v16;
              }
              v14[20] = 0;
              LC_API_FREE_0(v14);
            }
          }
          --v10;
        }
        while ( v10 );
      }
    }
  }
  return 1;
}


// ===== 5cd1e8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(
        int a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<float>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (glitch::IReferenceCounted **)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5cd324 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r12
  int v6; // r1
  int v7; // r12
  int v8; // r5
  _BOOL4 v9; // r4
  _DWORD *v10; // r4
  int v11; // r2
  int v12; // r1
  glitch::IReferenceCounted *v13; // r0

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *a4;
  v8 = *(unsigned __int8 *)(v6 + 6);
  v9 = *a4 ? v8 == (*(_DWORD *)(v7 + 56) & 3) + 12 : (unsigned int)(v8 - 12) <= 3;
  if ( !v9 || a3 >= *(_DWORD *)(v6 + 8) )
    return 0;
  v10 = a1 + 8;
  v11 = *(_DWORD *)(v6 + 12) + 4 * a3;
  v12 = *(_DWORD *)((char *)a1 + v11 + 32);
  if ( v7 != v12 )
  {
    a1[3] = -1;
    a1[4] = -1;
    v12 = *a4;
  }
  if ( v12 )
    ++*(_DWORD *)(v12 + 4);
  v13 = *(glitch::IReferenceCounted **)((char *)v10 + v11);
  *(_DWORD *)((char *)v10 + v11) = v12;
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  return 1;
}


// ===== 5cd3ec glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::deserializeAttributes(glitch::io::IAttributes *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::deserializeAttributes(
        int a1,
        int a2)
{
  int v2; // r3
  int v4; // r9
  unsigned int v5; // r1
  unsigned int v6; // r2
  int *v7; // r7
  int v8; // r1
  int v9; // r6
  glitch::IReferenceCounted **v10; // r6
  int v11; // r4
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0
  bool v14; // zf
  _DWORD *v15; // r2
  glitch::IReferenceCounted *v16; // r0
  _DWORD *v17; // r2
  unsigned int v18; // r3
  glitch::IReferenceCounted *v19; // r1
  glitch::IReferenceCounted *v20; // r2
  glitch::IReferenceCounted *v21; // r3
  bool v22; // cc
  glitch::IReferenceCounted *v23; // r3
  glitch::IReferenceCounted *v24; // r0
  glitch::IReferenceCounted *v25; // r11
  glitch::IReferenceCounted *v26; // r2
  glitch::IReferenceCounted *v27; // r1
  glitch::IReferenceCounted *v28; // r0
  glitch::IReferenceCounted *v29; // r3
  glitch::IReferenceCounted *v30; // r1
  glitch::IReferenceCounted *v31; // r2
  unsigned int v32; // r3
  glitch::IReferenceCounted *v33; // r1
  glitch::IReferenceCounted *v34; // r2
  glitch::IReferenceCounted *v35; // r3
  glitch::IReferenceCounted *v36; // r2
  glitch::IReferenceCounted *v37; // r3
  glitch::IReferenceCounted *v38; // r3
  unsigned int v39; // r3
  int v41; // [sp+20h] [bp-1ACh]
  int v43; // [sp+28h] [bp-1A4h]
  _DWORD v44[4]; // [sp+38h] [bp-194h] BYREF
  _DWORD v45[3]; // [sp+48h] [bp-184h] BYREF
  _BYTE v46[68]; // [sp+54h] [bp-178h] BYREF
  _DWORD v47[17]; // [sp+98h] [bp-134h] BYREF
  _DWORD v48[4]; // [sp+DCh] [bp-F0h] BYREF
  _DWORD v49[4]; // [sp+ECh] [bp-E0h] BYREF
  _DWORD v50[3]; // [sp+FCh] [bp-D0h] BYREF
  _DWORD v51[3]; // [sp+108h] [bp-C4h] BYREF
  _DWORD v52[2]; // [sp+114h] [bp-B8h] BYREF
  _DWORD v53[2]; // [sp+11Ch] [bp-B0h] BYREF
  glitch::IReferenceCounted *v54; // [sp+124h] [bp-A8h] BYREF
  glitch::IReferenceCounted *v55; // [sp+128h] [bp-A4h] BYREF
  _BYTE v56[152]; // [sp+12Ch] [bp-A0h] BYREF

  v2 = *(_DWORD *)(a1 + 4);
  v41 = *(unsigned __int16 *)(v2 + 14);
  if ( *(_WORD *)(v2 + 14) )
  {
    v4 = 0;
    v43 = a1 + 32;
    v5 = *(unsigned __int16 *)(v2 + 14);
    v6 = 0;
    while ( 1 )
    {
      if ( v6 >= v5 )
        v7 = nullptr;
      else
        v7 = *(int **)(v2 + 32);
      if ( v6 < v5 )
        v7 += 4 * v6;
      v8 = *v7;
      if ( *v7 )
        v8 += 4;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 48))(a2, v8);
      v9 = v7[3];
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream((int)v56);
      if ( v7[2] )
      {
        v10 = (glitch::IReferenceCounted **)(v43 + v9);
        v11 = 3;
        do
        {
          while ( 2 )
          {
            LC_API_MEMSET_0(v47, 0, 0x40u);
            LOBYTE(v47[16]) = 1;
            v47[0] = 1065353216;
            v47[5] = 1065353216;
            v47[10] = 1065353216;
            v47[15] = 1065353216;
            switch ( *((_BYTE *)v7 + 6) )
            {
              case 1:
                *v10++ = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 92))(a2, v11);
                v39 = v11 - 2;
                ++v11;
                if ( v7[2] > v39 )
                  continue;
                goto LABEL_29;
              case 2:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 344))(v53, a2, v11);
                v38 = (glitch::IReferenceCounted *)v53[1];
                *v10 = (glitch::IReferenceCounted *)v53[0];
                v10[1] = v38;
                v10 += 2;
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 3:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 368))(v51, a2, v11);
                v36 = (glitch::IReferenceCounted *)v51[1];
                v37 = (glitch::IReferenceCounted *)v51[2];
                *v10 = (glitch::IReferenceCounted *)v51[0];
                v10[1] = v36;
                v10[2] = v37;
                v10 += 3;
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 4:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 392))(v49, a2, v11);
                v33 = (glitch::IReferenceCounted *)v49[1];
                v34 = (glitch::IReferenceCounted *)v49[2];
                v35 = (glitch::IReferenceCounted *)v49[3];
                *v10 = (glitch::IReferenceCounted *)v49[0];
                v10[1] = v33;
                v10[2] = v34;
                v10[3] = v35;
                v10 += 4;
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 5:
                *v10++ = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 116))(a2, v11);
                v32 = v11 - 2;
                ++v11;
                if ( v7[2] > v32 )
                  continue;
                goto LABEL_29;
              case 6:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 416))(v52, a2, v11);
                v31 = (glitch::IReferenceCounted *)v52[0];
                v10[1] = (glitch::IReferenceCounted *)v52[1];
                *v10 = v31;
                v10 += 2;
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 7:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 440))(v50, a2, v11);
                v29 = (glitch::IReferenceCounted *)v50[2];
                v30 = (glitch::IReferenceCounted *)v50[0];
                v10[1] = (glitch::IReferenceCounted *)v50[1];
                v10[2] = v29;
                *v10 = v30;
                v10 += 3;
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 8:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 464))(v48, a2, v11);
                v26 = (glitch::IReferenceCounted *)v48[2];
                v27 = (glitch::IReferenceCounted *)v48[1];
                v28 = (glitch::IReferenceCounted *)v48[0];
                v10[3] = (glitch::IReferenceCounted *)v48[3];
                v10[1] = v27;
                *v10 = v28;
                v10[2] = v26;
                v10 += 4;
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 0xB:
                (*(void (__fastcall **)(_BYTE *, int, int))(*(_DWORD *)a2 + 536))(v46, a2, v11);
                memcpy(v47, v46, 0x41u);
                if ( glitch::core::CMatrix4<float>::isIdentity((int)v47) )
                {
                  *v10 = nullptr;
                  goto LABEL_27;
                }
                v25 = (glitch::IReferenceCounted *)glitch::memory::Matrix4Pool;
                if ( glitch::memory::Matrix4Pool )
                  glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
                else
                  v25 = (glitch::IReferenceCounted *)boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize();
                glitch::core::CMatrix4<float>::CMatrix4(v25, v47);
                *v10++ = v25;
                goto LABEL_28;
              case 0xC:
              case 0xD:
              case 0xE:
              case 0xF:
                (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)a2 + 704))(&v55, a2, v11);
                v23 = v55;
                if ( v55 )
                  ++*((_DWORD *)v55 + 1);
                v24 = *v10;
                *v10 = v23;
                if ( v24 )
                  glitch::IReferenceCounted::drop(v24);
                if ( !v55 )
                  goto LABEL_27;
                glitch::IReferenceCounted::drop(v55);
                ++v10;
                break;
              case 0x10:
                v45[0] = (*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 296))(a2, v11);
                memcpy(v10++, v45, sizeof(glitch::IReferenceCounted *));
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 0x11:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 320))(v44, a2, v11);
                v19 = (glitch::IReferenceCounted *)v44[1];
                v20 = (glitch::IReferenceCounted *)v44[2];
                v21 = (glitch::IReferenceCounted *)v44[3];
                *v10 = (glitch::IReferenceCounted *)v44[0];
                v10[1] = v19;
                v10[2] = v20;
                v10[3] = v21;
                v10 += 4;
                v22 = v7[2] > (unsigned int)(v11 - 2);
                ++v11;
                if ( v22 )
                  continue;
                goto LABEL_29;
              case 0x12:
                (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)a2 + 728))(&v54, a2, v11);
                v12 = v54;
                if ( v54 )
                  ++*(_DWORD *)v54;
                v13 = *v10;
                *v10 = v12;
                if ( v13 )
                {
                  v14 = (*(_DWORD *)v13)-- == 1;
                  if ( v14 )
                  {
                    if ( !*((_BYTE *)v13 + 84) )
                    {
                      v15 = *((_DWORD **)v13 + 20);
                      *v15 = glitch::memory::Matrix4Pool;
                      glitch::memory::Matrix4Pool = (int)v15;
                    }
                    *((_DWORD *)v13 + 20) = 0;
                    LC_API_FREE_0(v13);
                  }
                }
                v16 = v54;
                if ( v54 )
                {
                  v14 = (*(_DWORD *)v54)-- == 1;
                  if ( v14 )
                  {
                    if ( !*((_BYTE *)v16 + 84) )
                    {
                      v17 = *((_DWORD **)v16 + 20);
                      *v17 = glitch::memory::Matrix4Pool;
                      glitch::memory::Matrix4Pool = (int)v17;
                    }
                    *((_DWORD *)v16 + 20) = 0;
                    LC_API_FREE_0(v16);
                  }
                }
LABEL_27:
                ++v10;
                break;
              default:
                goto LABEL_28;
            }
            break;
          }
LABEL_28:
          v18 = v11 - 2;
          ++v11;
        }
        while ( v7[2] > v18 );
      }
LABEL_29:
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)v56);
      v6 = (unsigned __int16)++v4;
      if ( v41 == (unsigned __int16)v4 )
        break;
      v2 = *(_DWORD *)(a1 + 4);
      v5 = *(unsigned __int16 *)(v2 + 14);
    }
  }
  return 16556;
}


// ===== 5cda48 glitch::video::CMaterial::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CMaterial::deserializeAttributes(int a1, int a2)
{
  glitch::core::detail::SSharedStringHeapEntry::SData *v4; // r0

  v4 = (glitch::core::detail::SSharedStringHeapEntry::SData *)(*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 252))(
                                                                a2,
                                                                "BaseTechnique");
  *(_BYTE *)(a1 + 8) = glitch::video::CMaterialRenderer::getTechniqueID(
                         *(glitch::video::CMaterialRenderer **)(a1 + 4),
                         v4);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Parameters");
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::deserializeAttributes(
    a1,
    a2);
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
}


// ===== 5cdabc glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        glitch::IReferenceCounted **a4)
{
  int v4; // r12
  int v5; // r1
  glitch::IReferenceCounted *v6; // r2
  glitch::IReferenceCounted *v7; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || (unsigned int)*(unsigned __int8 *)(v5 + 6) - 12 > 3 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v6 = *(glitch::IReferenceCounted **)(a1 + 4 * a3 + *(_DWORD *)(v5 + 12) + 32);
  if ( v6 )
    ++*((_DWORD *)v6 + 1);
  v7 = *a4;
  *a4 = v6;
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  return 1;
}


// ===== 5cdb3c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::serializeAttributes(glitch::io::IAttributes *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::serializeAttributes(
        int a1,
        int a2)
{
  int v2; // r3
  unsigned int v4; // r1
  unsigned int v5; // r2
  int *v6; // r9
  int v7; // r1
  int v8; // r5
  int StringsInternal; // r0
  int v10; // r5
  int v11; // r0
  int v12; // r8
  glitch::IReferenceCounted **v13; // r8
  unsigned int v14; // r3
  int v15; // r5
  int v16; // r7
  std::ostream *v17; // r0
  int v18; // r2
  glitch::IReferenceCounted *v19; // r3
  void *v20; // r1
  bool v21; // zf
  glitch::IReferenceCounted *v22; // r0
  _DWORD *v23; // r2
  void *v24; // r0
  void (__fastcall *v25)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v26; // r0
  void (__fastcall *v27)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v28; // r0
  void (__fastcall *v29)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v30; // r0
  void (__fastcall *v31)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  void (__fastcall *v32)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v33)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v34)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v35)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  int v36; // r2
  glitch::IReferenceCounted *v37; // r3
  _DWORD *v38; // r1
  bool v39; // zf
  glitch::IReferenceCounted *v40; // r3
  void (__fastcall *v41)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  void (__fastcall *v42)(int, _DWORD *, _DWORD *, _DWORD); // r6
  void (__fastcall *v44)(int, void *, glitch::IReferenceCounted **, _DWORD); // [sp+14h] [bp-298h]
  void (__fastcall *v45)(int, _DWORD *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, _DWORD); // [sp+14h] [bp-298h]
  void (__fastcall *v46)(int, _DWORD *, int, _DWORD); // [sp+14h] [bp-298h]
  void (__fastcall *v47)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // [sp+14h] [bp-298h]
  glitch::IReferenceCounted *v48; // [sp+18h] [bp-294h]
  unsigned int v49; // [sp+1Ch] [bp-290h]
  int v50; // [sp+30h] [bp-27Ch]
  int v51; // [sp+34h] [bp-278h]
  _DWORD v53[16]; // [sp+58h] [bp-254h] BYREF
  char v54; // [sp+98h] [bp-214h]
  glitch::IReferenceCounted *v55; // [sp+9Ch] [bp-210h] BYREF
  glitch::IReferenceCounted *v56; // [sp+A0h] [bp-20Ch] BYREF
  _BYTE v57[8]; // [sp+A4h] [bp-208h] BYREF
  std::ostream v58; // [sp+ACh] [bp-200h] BYREF
  void *v59[5]; // [sp+13Ch] [bp-170h] BYREF
  void *v60; // [sp+150h] [bp-15Ch]
  _DWORD v61[5]; // [sp+154h] [bp-158h] BYREF
  _DWORD *v62; // [sp+168h] [bp-144h]
  _DWORD v63[5]; // [sp+16Ch] [bp-140h] BYREF
  _DWORD *v64; // [sp+180h] [bp-12Ch]
  _DWORD v65[5]; // [sp+184h] [bp-128h] BYREF
  _DWORD *v66; // [sp+198h] [bp-114h]
  _DWORD v67[5]; // [sp+19Ch] [bp-110h] BYREF
  _DWORD *v68; // [sp+1B0h] [bp-FCh]
  _DWORD v69[5]; // [sp+1B4h] [bp-F8h] BYREF
  _DWORD *v70; // [sp+1C8h] [bp-E4h]
  void *v71[5]; // [sp+1CCh] [bp-E0h] BYREF
  void *v72; // [sp+1E0h] [bp-CCh]
  void *v73[5]; // [sp+1E4h] [bp-C8h] BYREF
  void *v74; // [sp+1F8h] [bp-B4h]
  void *v75[5]; // [sp+1FCh] [bp-B0h] BYREF
  void *v76; // [sp+210h] [bp-9Ch]
  _DWORD v77[5]; // [sp+214h] [bp-98h] BYREF
  _DWORD *v78; // [sp+228h] [bp-84h]
  _DWORD v79[5]; // [sp+22Ch] [bp-80h] BYREF
  _DWORD *v80; // [sp+240h] [bp-6Ch]
  _DWORD v81[5]; // [sp+244h] [bp-68h] BYREF
  _DWORD *v82; // [sp+258h] [bp-54h]
  _DWORD v83[5]; // [sp+25Ch] [bp-50h] BYREF
  _DWORD *v84; // [sp+270h] [bp-3Ch]
  _DWORD v85[5]; // [sp+274h] [bp-38h] BYREF
  _DWORD *v86; // [sp+288h] [bp-24h]
  void *v87[5]; // [sp+28Ch] [bp-20h] BYREF
  void *p; // [sp+2A0h] [bp-Ch]

  v2 = *(_DWORD *)(a1 + 4);
  v51 = *(unsigned __int16 *)(v2 + 14);
  if ( *(_WORD *)(v2 + 14) )
  {
    v4 = *(unsigned __int16 *)(v2 + 14);
    v50 = 0;
    v5 = 0;
    while ( 1 )
    {
      if ( v5 >= v4 )
        v6 = nullptr;
      else
        v6 = *(int **)(v2 + 32);
      if ( v5 < v4 )
        v6 += 4 * v5;
      v7 = *v6;
      if ( *v6 )
        v7 += 4;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 48))(a2, v7);
      v8 = *((unsigned __int16 *)v6 + 2);
      StringsInternal = glitch::video::getStringsInternal(0);
      (*(void (__fastcall **)(int, char *, int, int, int))(*(_DWORD *)a2 + 244))(a2, "Type", v8, StringsInternal, 1);
      v10 = *((unsigned __int8 *)v6 + 6);
      v11 = glitch::video::getStringsInternal(0);
      (*(void (__fastcall **)(int, const char *, int, int, int))(*(_DWORD *)a2 + 244))(a2, "Value Type", v10, v11, 1);
      (*(void (__fastcall **)(int, const char *, int, int))(*(_DWORD *)a2 + 76))(a2, "Array Size", v6[2], 1);
      v12 = v6[3];
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream((int)v57);
      v49 = v6[2];
      if ( v49 == 1 )
      {
        std::ostream::_M_put_nowiden(&v58, "value");
        v49 = v6[2];
      }
      if ( v49 )
      {
        v13 = (glitch::IReferenceCounted **)(a1 + 32 + v12);
        v14 = v49;
        v15 = 0;
        v16 = a2;
        while ( 1 )
        {
          if ( v14 > 1 )
          {
            v87[4] = v87;
            p = v87;
            std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
              v87,
              "",
              "");
            std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::str(
              (int)v58.gap4,
              (int)v87);
            if ( p != v87 && p )
              GlitchFree(p);
            std::ostream::_M_put_nowiden(&v58, "[");
            v17 = std::priv::__put_num<char,std::char_traits<char>,unsigned long>(&v58);
            std::ostream::_M_put_nowiden(v17, "]");
          }
          LC_API_MEMSET_0(v53, 0, 0x40u);
          LC_API_MEMSET_0(v53, 0, 0x40u);
          v54 = 1;
          v53[0] = 1065353216;
          v53[5] = 1065353216;
          v53[10] = 1065353216;
          v53[15] = 1065353216;
          switch ( *((_BYTE *)v6 + 6) )
          {
            case 1:
              v35 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v16 + 76);
              v85[4] = v85;
              v86 = v85;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v85,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v35(v16, v86, *v13, 0);
              v24 = v86;
              if ( v86 != v85 )
                goto LABEL_31;
              ++v13;
              goto LABEL_34;
            case 2:
              v34 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 328);
              v83[4] = v83;
              v84 = v83;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v83,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v34(v16, v84, v13, 0);
              v30 = v84;
              if ( v84 != v83 )
                goto LABEL_49;
              v13 += 2;
              goto LABEL_34;
            case 3:
              v33 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 352);
              v81[4] = v81;
              v82 = v81;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v81,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v33(v16, v82, v13, 0);
              v28 = v82;
              if ( v82 != v81 )
                goto LABEL_45;
              v13 += 3;
              goto LABEL_34;
            case 4:
              v32 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 376);
              v79[4] = v79;
              v80 = v79;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v79,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v32(v16, v80, v13, 0);
              v26 = v80;
              if ( v80 != v79 )
                goto LABEL_37;
              v13 += 4;
              goto LABEL_40;
            case 5:
              v31 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v16 + 100);
              v77[4] = v77;
              v78 = v77;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v77,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v31(v16, v78, *v13, 0);
              v24 = v78;
              if ( v78 != v77 )
                goto LABEL_31;
              ++v13;
              goto LABEL_34;
            case 6:
              v29 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 400);
              v75[4] = v75;
              v76 = v75;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v75,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v29(v16, v76, v13, 0);
              v30 = v76;
              if ( v76 != v75 )
              {
LABEL_49:
                if ( v30 )
                  GlitchFree(v30);
              }
              v13 += 2;
              goto LABEL_34;
            case 7:
              v27 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 424);
              v73[4] = v73;
              v74 = v73;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v73,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v27(v16, v74, v13, 0);
              v28 = v74;
              if ( v74 != v73 )
              {
LABEL_45:
                if ( v28 )
                  GlitchFree(v28);
              }
              v13 += 3;
              goto LABEL_34;
            case 8:
              v25 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 448);
              v71[4] = v71;
              v72 = v71;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v71,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v25(v16, v72, v13, 0);
              v26 = v72;
              if ( v72 != v71 )
                goto LABEL_37;
              goto LABEL_39;
            case 0xB:
              v40 = *v13;
              if ( *v13 )
              {
                v41 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v16 + 520);
                v69[4] = v69;
                v70 = v69;
                v48 = v40;
                std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                  v69,
                  *(_BYTE **)&v58.gap4[56],
                  *(_BYTE **)&v58.gap4[52]);
                v41(v16, v70, v48, 0);
                v24 = v70;
                if ( v70 == v69 )
                {
                  ++v13;
                  goto LABEL_34;
                }
              }
              else
              {
                v42 = *(void (__fastcall **)(int, _DWORD *, _DWORD *, _DWORD))(*(_DWORD *)v16 + 520);
                v67[4] = v67;
                v68 = v67;
                std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                  v67,
                  *(_BYTE **)&v58.gap4[56],
                  *(_BYTE **)&v58.gap4[52]);
                v42(v16, v68, v53, 0);
                v24 = v68;
                if ( v68 == v67 )
                {
                  ++v13;
                  goto LABEL_34;
                }
              }
LABEL_31:
              if ( v24 )
                GlitchFree(v24);
LABEL_33:
              ++v13;
LABEL_34:
              if ( ++v15 == v49 )
              {
LABEL_41:
                a2 = v16;
                goto LABEL_42;
              }
LABEL_35:
              v14 = v6[2];
              break;
            case 0xC:
            case 0xD:
            case 0xE:
            case 0xF:
              v47 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 688);
              v65[4] = v65;
              v66 = v65;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v65,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v37 = *v13;
              v38 = v66;
              v39 = *v13 == nullptr;
              v56 = *v13;
              if ( v56 )
                v36 = *((_DWORD *)v37 + 1);
              if ( !v39 )
                *((_DWORD *)v37 + 1) = v36 + 1;
              v47(v16, v38, &v56, 0);
              if ( v56 )
                glitch::IReferenceCounted::drop(v56);
              v24 = v66;
              if ( v66 != v65 )
                goto LABEL_31;
              ++v13;
              goto LABEL_34;
            case 0x10:
              v46 = *(void (__fastcall **)(int, _DWORD *, int, _DWORD))(*(_DWORD *)v16 + 280);
              v63[4] = v63;
              v64 = v63;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v63,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v46(
                v16,
                v64,
                *(unsigned __int8 *)v13
              | (*((unsigned __int8 *)v13 + 1) << 8)
              | (*((unsigned __int8 *)v13 + 2) << 16)
              | (*((unsigned __int8 *)v13 + 3) << 24),
                0);
              v24 = v64;
              if ( v64 != v63 )
                goto LABEL_31;
              ++v13;
              goto LABEL_34;
            case 0x11:
              v45 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v16 + 304);
              v61[4] = v61;
              v62 = v61;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v61,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v45(v16, v62, *v13, v13[1], v13[2], v13[3], 0);
              v26 = v62;
              if ( v62 == v61 )
              {
                v13 += 4;
              }
              else
              {
LABEL_37:
                if ( v26 )
                  GlitchFree(v26);
LABEL_39:
                v13 += 4;
              }
LABEL_40:
              if ( ++v15 == v49 )
                goto LABEL_41;
              goto LABEL_35;
            case 0x12:
              v44 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v16 + 712);
              v59[4] = v59;
              v60 = v59;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v59,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v19 = *v13;
              v20 = v60;
              v21 = *v13 == nullptr;
              v55 = *v13;
              if ( v55 )
                v18 = *(_DWORD *)v19;
              if ( !v21 )
                *(_DWORD *)v19 = v18 + 1;
              v44(v16, v20, &v55, 0);
              v22 = v55;
              if ( v55 )
              {
                v21 = (*(_DWORD *)v55)-- == 1;
                if ( v21 )
                {
                  if ( !*((_BYTE *)v22 + 84) )
                  {
                    v23 = *((_DWORD **)v22 + 20);
                    *v23 = glitch::memory::Matrix4Pool;
                    glitch::memory::Matrix4Pool = (int)v23;
                  }
                  *((_DWORD *)v22 + 20) = 0;
                  LC_API_FREE_0(v22);
                }
              }
              v24 = v60;
              if ( v60 != v59 )
                goto LABEL_31;
              goto LABEL_33;
            default:
              goto LABEL_34;
          }
        }
      }
LABEL_42:
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      ++v50;
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)v57);
      v5 = (unsigned __int16)v50;
      if ( v51 == (unsigned __int16)v50 )
        break;
      v2 = *(_DWORD *)(a1 + 4);
      v4 = *(unsigned __int16 *)(v2 + 14);
    }
  }
  return 16556;
}


// ===== 5ce460 glitch::video::CMaterial::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::video::CMaterial::serializeAttributes(int a1, int a2)
{
  int v3; // r2
  const char *v5; // r5
  int v6; // r8
  int v7; // r9
  int v8; // r3
  int v9; // r2
  int v10; // r2
  int v11; // r1
  int v12; // r0
  int v13; // r1
  glitch::core *v14; // r5
  int v15; // r3
  int v16; // r2
  int v17; // r12
  int v18; // r3
  _DWORD *v19; // r0
  int v20; // r1
  void *v21; // r1
  int v22; // r3
  _DWORD v23[2]; // [sp+14h] [bp-28h] BYREF
  void *v24[5]; // [sp+1Ch] [bp-20h] BYREF
  void *p; // [sp+30h] [bp-Ch]

  v3 = *(_DWORD *)(a1 + 28);
  if ( v3 )
    v3 += 4;
  (*(void (__fastcall **)(int, const char *, int, int))(*(_DWORD *)a2 + 124))(a2, "Name", v3, 1);
  v5 = *(const char **)(*(_DWORD *)(a1 + 4) + 8);
  (*(void (__fastcall **)(int, const char *, const char *, int))(*(_DWORD *)a2 + 124))(a2, "Material Renderer", v5, 1);
  v24[4] = v24;
  p = v24;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v24,
    "",
    "");
  v6 = *(_DWORD *)(glitch::collada::CResFileManager::Inst + 16);
  v7 = glitch::collada::CResFileManager::Inst + 8;
  if ( v6 != glitch::collada::CResFileManager::Inst + 8 )
  {
    while ( 1 )
    {
      v8 = *(_DWORD *)(v6 + 40);
      v23[1] = &glitch::collada::CColladaDatabase::DefaultFactory;
      v23[0] = v8;
      if ( v8 )
      {
        v9 = *(_DWORD *)(v8 + 4);
        if ( v9 )
          *(_DWORD *)(v8 + 4) = v9 + 1;
      }
      if ( glitch::collada::CColladaDatabase::getEffect((glitch::collada::CColladaDatabase *)v23, v5) )
        break;
      v10 = *(_DWORD *)(v6 + 12);
      if ( v10 )
      {
        while ( *(_DWORD *)(v10 + 8) )
          v10 = *(_DWORD *)(v10 + 8);
        v6 = v10;
      }
      else
      {
        v22 = *(_DWORD *)(v6 + 4);
        if ( *(_DWORD *)(v22 + 12) == v6 )
        {
          do
          {
            v6 = v22;
            v22 = *(_DWORD *)(v22 + 4);
          }
          while ( *(_DWORD *)(v22 + 12) == v6 );
          v10 = *(_DWORD *)(v6 + 12);
        }
        if ( v10 != v22 )
          v6 = v22;
      }
      glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v23);
      if ( v7 == v6 )
        goto LABEL_14;
    }
    if ( v24 != (void **)(v6 + 16) )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v24,
        *(_BYTE **)(v6 + 36),
        *(_BYTE **)(v6 + 32));
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v23);
  }
LABEL_14:
  (*(void (__fastcall **)(int, const char *, void *, int))(*(_DWORD *)a2 + 124))(a2, "BDAE File", p, 1);
  v12 = glitch::core::allocProcessBuffer(
          (glitch::core *)(4 * (*(unsigned __int8 *)(*(_DWORD *)(a1 + 4) + 16) + 1)),
          v11);
  v13 = *(_DWORD *)(a1 + 4);
  v14 = (glitch::core *)v12;
  v15 = v13;
  if ( *(_BYTE *)(v13 + 16) )
  {
    v16 = 0;
    v17 = 4 * ((unsigned __int8)(*(_BYTE *)(v13 + 16) - 1) + 1);
    v18 = 0;
    while ( 1 )
    {
      v19 = (_DWORD *)((char *)v14 + v18);
      v18 += 4;
      v20 = *(_DWORD *)(*(_DWORD *)(v13 + 24) + v16);
      v16 += 12;
      if ( v20 )
        v20 += 4;
      *v19 = v20;
      if ( v18 == v17 )
        break;
      v13 = *(_DWORD *)(a1 + 4);
    }
    v15 = *(_DWORD *)(a1 + 4);
  }
  *((_DWORD *)v14 + *(unsigned __int8 *)(v15 + 16)) = 0;
  (*(void (__fastcall **)(int, const char *, _DWORD, glitch::core *, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "BaseTechnique",
    *(unsigned __int8 *)(a1 + 8),
    v14,
    0);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Parameters");
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::serializeAttributes(
    a1,
    a2);
  (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
  if ( v14 )
    glitch::core::releaseProcessBuffer(v14, v21);
  if ( p != v24 )
  {
    if ( p )
      GlitchFree(p);
  }
}


// ===== 5ce768 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r12
  int v7; // r1
  int v8; // r3
  int v9; // r7
  _DWORD *v10; // r8
  char *v11; // r5
  int v12; // r12
  char v14; // r9
  char v15; // r10
  char v16; // r11
  unsigned int v17; // r0
  float v18; // r10
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // [sp+4h] [bp-8h]

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v7 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v7 )
    return 0;
  v8 = *(unsigned __int8 *)(v7 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v8] & 0x100) == 0
    || a3 >= *(_DWORD *)(v7 + 8) )
  {
    return 0;
  }
  v9 = *(_DWORD *)(v7 + 12);
  v10 = a1 + 8;
  v11 = (char *)a1 + v9 + 32;
  switch ( v8 )
  {
    case 16:
      v14 = (unsigned int)(float)(a4[3] * 255.0);
      v15 = (unsigned int)(float)(*a4 * 255.0);
      v16 = (unsigned int)(float)(a4[1] * 255.0);
      v17 = (unsigned int)(float)(a4[2] * 255.0);
      HIBYTE(v22) = v14;
      BYTE2(v22) = v17;
      BYTE1(v22) = v16;
      LOBYTE(v22) = v15;
      v12 = 1;
      if ( *(_DWORD *)((char *)v10 + v9) != v22 )
      {
        a1[3] = -1;
        a1[4] = -1;
      }
      v11[1] = v16;
      v11[3] = v14;
      v11[2] = v17;
      *((_BYTE *)v10 + v9) = v15;
      break;
    case 17:
      if ( !glitch::video::SColorf::equals((float *)((char *)a1 + v9 + 32), a4) )
      {
        a1[3] = -1;
        a1[4] = -1;
      }
      v19 = *((_DWORD *)a4 + 1);
      v20 = *((_DWORD *)a4 + 2);
      v21 = *((_DWORD *)a4 + 3);
      v12 = 1;
      *(float *)v11 = *a4;
      *((_DWORD *)v11 + 1) = v19;
      *((_DWORD *)v11 + 2) = v20;
      *((_DWORD *)v11 + 3) = v21;
      break;
    case 8:
      v18 = *a4;
      if ( *(float *)((char *)v10 + v9) != *a4
        || *((float *)v11 + 1) != a4[1]
        || *((float *)v11 + 2) != a4[2]
        || *((float *)v11 + 3) != a4[3] )
      {
        a1[3] = -1;
        a1[4] = -1;
        v18 = *a4;
      }
      *(float *)((char *)v10 + v9) = v18;
      v12 = 1;
      *((float *)v11 + 1) = a4[1];
      *((float *)v11 + 2) = a4[2];
      *((float *)v11 + 3) = a4[3];
      break;
    default:
      return 1;
  }
  return v12;
}


// ===== 5ce95c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD **a4)
{
  int v4; // r4
  int v5; // r1
  _DWORD *v7; // r4
  int v8; // r2
  _DWORD *v9; // r1
  _DWORD *v10; // r0
  _DWORD *v12; // r2

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 18 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = a1 + 8;
  v8 = *(_DWORD *)(v5 + 12) + 4 * a3;
  v9 = *(_DWORD **)((char *)a1 + v8 + 32);
  if ( v9 != *a4 )
  {
    a1[3] = -1;
    a1[4] = -1;
    v9 = *a4;
  }
  if ( v9 )
    ++*v9;
  v10 = *(_DWORD **)((char *)v7 + v8);
  *(_DWORD *)((char *)v7 + v8) = v9;
  if ( !v10 )
    return 1;
  if ( (*v10)-- != 1 )
    return 1;
  if ( !*((_BYTE *)v10 + 84) )
  {
    v12 = (_DWORD *)v10[20];
    *v12 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v12;
  }
  v10[20] = 0;
  LC_API_FREE_0(v10);
  return 1;
}


// ===== 5cea48 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 (int)a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (_DWORD **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5ceae0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void **a4)
{
  int v4; // r4
  int v5; // r1
  _DWORD *v7; // r2
  _DWORD *v8; // r0
  _DWORD *v10; // r2

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 18 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD **)(a1 + 4 * a3 + *(_DWORD *)(v5 + 12) + 32);
  if ( v7 )
    ++*v7;
  v8 = *a4;
  *a4 = v7;
  if ( !v8 )
    return 1;
  if ( (*v8)-- != 1 )
    return 1;
  if ( !*((_BYTE *)v8 + 84) )
  {
    v10 = (_DWORD *)v8[20];
    *v10 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v10;
  }
  v8[20] = 0;
  LC_API_FREE_0(v8);
  return 1;
}


// ===== 5cebb4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        _DWORD *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<float>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 (glitch::IReferenceCounted **)a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (void **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5cec4c glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r12
  int v5; // r1
  int v6; // r12
  int v7; // r4
  _BOOL4 v8; // r5
  int v9; // r2
  _DWORD *v10; // r1
  int result; // r0
  int v12; // r4
  glitch::IReferenceCounted *v13; // r0

  v4 = a1[1];
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *a4;
  v7 = *(unsigned __int8 *)(v5 + 6);
  v8 = *a4 ? v7 == (*(_DWORD *)(v6 + 56) & 3) + 12 : (unsigned int)(v7 - 12) <= 3;
  if ( !v8 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v9 = *(_DWORD *)(v5 + 12);
  v10 = a1 + 8;
  switch ( v7 )
  {
    case 12:
    case 13:
    case 14:
    case 15:
      v12 = *(_DWORD *)((char *)v10 + v9);
      if ( v6 != v12 )
      {
        a1[3] = -1;
        a1[4] = -1;
        v12 = *a4;
      }
      if ( v12 )
        ++*(_DWORD *)(v12 + 4);
      v13 = *(glitch::IReferenceCounted **)((char *)v10 + v9);
      *(_DWORD *)((char *)v10 + v9) = v12;
      if ( !v13 )
        goto LABEL_15;
      glitch::IReferenceCounted::drop(v13);
      result = 1;
      break;
    default:
LABEL_15:
      result = 1;
      break;
  }
  return result;
}


// ===== 5ced38 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*) =====
_DWORD *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt(
        _DWORD *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int *a5)
{
  _DWORD *result; // r0

  switch ( a4 )
  {
    case 1:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<int>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 2:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<int>>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 3:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<int>>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<float>(
                           a1,
                           a2,
                           a3,
                           (float *)a5);
      break;
    case 6:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector2d<float>>(
                           a1,
                           a2,
                           a3,
                           (float *)a5);
      break;
    case 7:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector3d<float>>(
                           a1,
                           a2,
                           a3,
                           (float *)a5);
      break;
    case 8:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::core::vector4d<float>>(
                           a1,
                           a2,
                           a3,
                           (float *)a5);
      break;
    case 11:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                           a1,
                           a2,
                           a3,
                           a5);
      break;
    case 16:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
                           a1,
                           a2,
                           a3,
                           (unsigned __int8 *)a5);
      break;
    case 17:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColorf>(
                           a1,
                           a2,
                           a3,
                           (float *)a5);
      break;
    case 18:
      result = (_DWORD *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                           a1,
                           a2,
                           a3,
                           (_DWORD **)a5);
      break;
    default:
      result = nullptr;
      break;
  }
  return result;
}


// ===== 5cedd0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        glitch::IReferenceCounted **a4)
{
  int v4; // r12
  int v5; // r1
  int v6; // r0
  int result; // r0
  glitch::IReferenceCounted *v8; // r2
  glitch::IReferenceCounted *v9; // r0

  v4 = *(_DWORD *)(a1 + 4);
  if ( *(unsigned __int16 *)(v4 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(v4 + 32) + 16 * a2;
  if ( !v5 || (unsigned int)*(unsigned __int8 *)(v5 + 6) - 12 > 3 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v6 = a1 + 32;
  switch ( *(_BYTE *)(v5 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v8 = *(glitch::IReferenceCounted **)(v6 + *(_DWORD *)(v5 + 12));
      if ( v8 )
        ++*((_DWORD *)v8 + 1);
      v9 = *a4;
      *a4 = v8;
      if ( !v9 )
        goto LABEL_11;
      glitch::IReferenceCounted::drop(v9);
      result = 1;
      break;
    default:
LABEL_11:
      result = 1;
      break;
  }
  return result;
}


// ===== 5cee70 glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<float>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 (glitch::IReferenceCounted **)a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (_DWORD **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5cef08 glitch::video::CMaterialRenderer::getParameterID(glitch::video::E_SHADER_PARAMETER_TYPE,ushort) =====
unsigned int __fastcall glitch::video::CMaterialRenderer::getParameterID(int a1, int a2, unsigned int a3)
{
  unsigned int v3; // r3
  unsigned int result; // r0
  int v6; // r2
  unsigned __int16 v7; // r4

  v3 = *(unsigned __int16 *)(a1 + 14);
  if ( a3 >= v3 )
    return 0xFFFF;
  result = a3;
  while ( 1 )
  {
    v6 = v3 <= result ? 0 : *(_DWORD *)(a1 + 32);
    v7 = result + 1;
    if ( v3 > result )
      v6 += 16 * result;
    if ( a2 == *(unsigned __int16 *)(v6 + 4) )
      break;
    result = v7;
    if ( v7 >= v3 )
      return 0xFFFF;
  }
  return result;
}


// ===== 5cef60 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getThis(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getThis()
{
  ;
}


// ===== 5cef64 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getThis(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getThis()
{
  ;
}


// ===== 5cef68 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterBlock(void) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterBlock(
        int a1)
{
  return *(_DWORD *)(a1 + 36);
}


// ===== 5cef70 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterBlock(void) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterBlock(
        int a1)
{
  return *(_DWORD *)(a1 + 36);
}


// ===== 5cef78 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterDef(ushort) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterDef(
        int a1,
        unsigned int a2)
{
  unsigned int v2; // r3
  int result; // r0

  v2 = *(unsigned __int16 *)(a1 + 14);
  if ( v2 <= a2 )
    result = 0;
  else
    result = *(_DWORD *)(a1 + 32);
  if ( v2 > a2 )
    result += 16 * a2;
  return result;
}


// ===== 5cef90 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setDirty(void) =====
void glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setDirty()
{
  ;
}


// ===== 5cef94 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(int *,float) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(
        int a1,
        _DWORD *a2,
        float a3)
{
  *a2 = (int)a3;
  return (int)a3;
}


// ===== 5cefac glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(float *,int) =====
float __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(
        int a1,
        float *a2,
        int a3)
{
  *a2 = (float)a3;
  return (float)a3;
}


// ===== 5cefc4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(glitch::video::SColorf *,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(
        int a1,
        _DWORD *a2,
        int *a3)
{
  int result; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // t0

  result = *a3;
  v5 = a3[1];
  v8 = a3 + 2;
  v6 = a3[2];
  v7 = v8[1];
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}


// ===== 5cefd4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(glitch::core::vector4d<float> *,glitch::video::SColorf const&) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterAt(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  *a2 = *a3;
  a2[1] = a3[1];
  a2[2] = a3[2];
  a2[3] = a3[3];
}


// ===== 5ceff8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(int const*,float &) =====
float __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(
        int a1,
        int *a2,
        float *a3)
{
  float result; // r0

  result = (float)*a2;
  *a3 = result;
  return result;
}


// ===== 5cf010 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(float const*,int &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(
        int a1,
        float *a2,
        int *a3)
{
  int result; // r0

  result = (int)*a2;
  *a3 = result;
  return result;
}


// ===== 5cf028 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(glitch::video::SColorf const*,glitch::core::vector4d<float> &) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  a3[3] = a2[3];
}


// ===== 5cf04c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(glitch::core::vector4d<float> const*,glitch::video::SColorf &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterAt(
        int a1,
        int *a2,
        _DWORD *a3)
{
  int result; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  _DWORD *v8; // t0

  result = *a2;
  v8 = a2 + 1;
  v5 = a2[1];
  v6 = *++v8;
  v7 = v8[1];
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}


// ===== 5cf05c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<int>(ushort,uint,int const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<int>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r4
  int v7; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 1 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  *(_DWORD *)(v7 + v6 + 4 * a3) = *a4;
  return 1;
}


// ===== 5cf0b8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  _DWORD *v6; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 2 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 8 * a3);
  *v6 = *a4;
  v6[1] = a4[1];
  return 1;
}


// ===== 5cf118 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  _DWORD *v6; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 3 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 12 * a3);
  *v6 = *a4;
  v6[1] = a4[1];
  v6[2] = a4[2];
  return 1;
}


// ===== 5cf18c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  _DWORD *v6; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 4 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 16 * a3);
  *v6 = *a4;
  v6[1] = a4[1];
  v6[2] = a4[2];
  v6[3] = a4[3];
  return 1;
}


// ===== 5cf1fc glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<float>(ushort,uint,float const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<float>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 5 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  *(_DWORD *)(v7 + v6 + 4 * a3) = *a4;
  return 1;
}


// ===== 5cf250 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  _DWORD *v6; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 6 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 8 * a3);
  *v6 = *a4;
  v6[1] = a4[1];
  return 1;
}


// ===== 5cf2b0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  _DWORD *v6; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 7 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 12 * a3);
  *v6 = *a4;
  v6[1] = a4[1];
  v6[2] = a4[2];
  return 1;
}


// ===== 5cf324 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  _DWORD *v6; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 8 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 16 * a3);
  *v6 = *a4;
  v6[1] = a4[1];
  v6[2] = a4[2];
  v6[3] = a4[3];
  return 1;
}


// ===== 5cf394 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColor>(ushort,uint,glitch::video::SColor const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 16 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 4 * a3), a4, 4u);
  return 1;
}


// ===== 5cf3f4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r1
  int v5; // r12
  _DWORD *v7; // r4
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 17 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v5 = 1;
  v7 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 16 * a3);
  v8 = *a4;
  v9 = a4[1];
  v10 = a4[2];
  v11 = a4[3];
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  return v5;
}


// ===== 5cf458 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<int>(ushort,uint,int const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<int>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v5; // r6
  int v6; // r5
  int v7; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 2) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 1 )
  {
    *(_DWORD *)(v6 + v7) = *a4;
    return 1;
  }
  else
  {
    if ( v5 == 5 )
      *(float *)(v6 + v7) = (float)(int)*a4;
    return 1;
  }
}


// ===== 5cf4ec glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v7; // r12
  int v8; // r2
  int result; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 4) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = v5 == 2;
  v7 = *(_DWORD *)(a1 + 36);
  if ( v5 == 2 )
    v5 = *a4;
  v8 = *(_DWORD *)(v4 + 12);
  result = 1;
  if ( v6 )
  {
    *(_DWORD *)(v7 + v8) = v5;
    *(_DWORD *)(v7 + v8 + 4) = a4[1];
  }
  return result;
}


// ===== 5cf574 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<int>>(
        int result,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v7; // r12
  int v8; // r1
  int v9; // r2

  if ( *(unsigned __int16 *)(result + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(result + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 8) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = v5 == 3;
  v7 = *(_DWORD *)(result + 36);
  v8 = *(_DWORD *)(v4 + 12);
  if ( v5 == 3 )
    v5 = *a4;
  else
    result = 1;
  if ( v6 )
  {
    v9 = v7 + v8;
    *(_DWORD *)(v7 + v8) = v5;
    result = 1;
    *(_DWORD *)(v9 + 4) = a4[1];
    *(_DWORD *)(v9 + 8) = a4[2];
  }
  return result;
}


// ===== 5cf604 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r12
  int v7; // r1
  _DWORD *v9; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x10) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 4 )
  {
    v9 = (_DWORD *)(v6 + v7);
    *(_DWORD *)(v6 + v7) = *a4;
    v9[1] = a4[1];
    v9[2] = a4[2];
    v9[3] = a4[3];
  }
  return 1;
}


// ===== 5cf6a0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<float>(ushort,uint,float const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<float>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r6
  int v7; // r5
  int result; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x20) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 1 )
  {
    *(_DWORD *)(v6 + v7) = (int)*a4;
    return 1;
  }
  else
  {
    result = 1;
    if ( v5 == 5 )
      *(float *)(v6 + v7) = *a4;
  }
  return result;
}


// ===== 5cf73c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v7; // r12
  int v8; // r2
  int result; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x40) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = v5 == 6;
  v7 = *(_DWORD *)(a1 + 36);
  if ( v5 == 6 )
    v5 = *a4;
  v8 = *(_DWORD *)(v4 + 12);
  result = 1;
  if ( v6 )
  {
    *(_DWORD *)(v7 + v8) = v5;
    *(_DWORD *)(v7 + v8 + 4) = a4[1];
  }
  return result;
}


// ===== 5cf7c4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<float>>(
        int result,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v7; // r12
  int v8; // r1
  int v9; // r2

  if ( *(unsigned __int16 *)(result + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(result + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x80) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = v5 == 7;
  v7 = *(_DWORD *)(result + 36);
  v8 = *(_DWORD *)(v4 + 12);
  if ( v5 == 7 )
    v5 = *a4;
  else
    result = 1;
  if ( v6 )
  {
    v9 = v7 + v8;
    *(_DWORD *)(v7 + v8) = v5;
    result = 1;
    *(_DWORD *)(v9 + 4) = a4[1];
    *(_DWORD *)(v9 + 8) = a4[2];
  }
  return result;
}


// ===== 5cf854 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r1
  int v6; // r3
  int v7; // r7
  int v8; // r6
  int v9; // r4
  char v11; // r10
  char v12; // r8
  unsigned int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x100) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = *(_DWORD *)(a1 + 36);
  v8 = *(_DWORD *)(v5 + 12);
  v9 = v7 + v8;
  switch ( v6 )
  {
    case 16:
      v11 = (unsigned int)(float)(a4[3] * 255.0);
      v12 = (unsigned int)(float)(*a4 * 255.0);
      v13 = (unsigned int)(float)(a4[2] * 255.0);
      *(_BYTE *)(v9 + 1) = (unsigned int)(float)(a4[1] * 255.0);
      *(_BYTE *)(v9 + 3) = v11;
      *(_BYTE *)(v9 + 2) = v13;
      *(_BYTE *)(v7 + v8) = v12;
      return 1;
    case 17:
      v14 = *((_DWORD *)a4 + 1);
      v15 = *((_DWORD *)a4 + 2);
      v16 = *((_DWORD *)a4 + 3);
      *(float *)v9 = *a4;
      *(_DWORD *)(v9 + 4) = v14;
      *(_DWORD *)(v9 + 8) = v15;
      *(_DWORD *)(v9 + 12) = v16;
      return 1;
    case 8:
      *(float *)(v7 + v8) = *a4;
      *(float *)(v9 + 4) = a4[1];
      *(float *)(v9 + 8) = a4[2];
      *(float *)(v9 + 12) = a4[3];
      return 1;
    default:
      return 1;
  }
}


// ===== 5cf998 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColor>(ushort,uint,glitch::video::SColor const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        unsigned __int8 *a4)
{
  int v5; // r1
  int v6; // r3
  int v7; // r7
  int v8; // r6
  float *v9; // r5
  float v11; // r0
  int v12; // r3
  int v13; // r4
  float v14; // r8
  float v15; // r10
  float v16; // r0
  float v17; // [sp+4h] [bp-Ch]

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10000) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = *(_DWORD *)(a1 + 36);
  v8 = *(_DWORD *)(v5 + 12);
  v9 = (float *)(v7 + v8);
  if ( v6 == 16 )
  {
    memcpy((void *)(v7 + v8), a4, 4u);
    return 1;
  }
  else if ( v6 == 17 )
  {
    v14 = (float)*a4 * 0.0039216;
    v15 = (float)a4[2] * 0.0039216;
    v16 = (float)a4[3];
    v9[1] = (float)a4[1] * 0.0039216;
    v9[3] = v16 * 0.0039216;
    v9[2] = v15;
    *(float *)(v7 + v8) = v14;
    return 1;
  }
  else
  {
    if ( v6 == 8 )
    {
      v11 = (float)*a4 * 0.0039216;
      v12 = a4[2];
      v17 = (float)a4[1] * 0.0039216;
      v13 = a4[3];
      *(float *)(v7 + v8) = v11;
      v9[1] = v17;
      v9[2] = (float)v12 * 0.0039216;
      v9[3] = (float)v13 * 0.0039216;
    }
    return 1;
  }
}


// ===== 5cfb44 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r1
  int v6; // r3
  int v7; // r7
  int v8; // r6
  int v9; // r4
  char v11; // r10
  char v12; // r8
  unsigned int v13; // r0
  int v14; // r1
  int v15; // r2
  int v16; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x20000) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = *(_DWORD *)(a1 + 36);
  v8 = *(_DWORD *)(v5 + 12);
  v9 = v7 + v8;
  switch ( v6 )
  {
    case 16:
      v11 = (unsigned int)(float)(a4[3] * 255.0);
      v12 = (unsigned int)(float)(*a4 * 255.0);
      v13 = (unsigned int)(float)(a4[2] * 255.0);
      *(_BYTE *)(v9 + 1) = (unsigned int)(float)(a4[1] * 255.0);
      *(_BYTE *)(v9 + 3) = v11;
      *(_BYTE *)(v9 + 2) = v13;
      *(_BYTE *)(v7 + v8) = v12;
      return 1;
    case 17:
      v14 = *((_DWORD *)a4 + 1);
      v15 = *((_DWORD *)a4 + 2);
      v16 = *((_DWORD *)a4 + 3);
      *(float *)v9 = *a4;
      *(_DWORD *)(v9 + 4) = v14;
      *(_DWORD *)(v9 + 8) = v15;
      *(_DWORD *)(v9 + 12) = v16;
      return 1;
    case 8:
      *(float *)(v7 + v8) = *a4;
      *(float *)(v9 + 4) = a4[1];
      *(float *)(v9 + 8) = a4[2];
      *(float *)(v9 + 12) = a4[3];
      return 1;
    default:
      return 1;
  }
}


// ===== 5cfc88 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<int>(ushort,uint,int&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<int>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r4
  int v7; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 1 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  *a4 = *(_DWORD *)(v7 + v6 + 4 * a3);
  return 1;
}


// ===== 5cfce4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1
  int v8; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 2 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  v8 = v6 + 8 * a3;
  *a4 = *(_DWORD *)(v7 + v8);
  a4[1] = *(_DWORD *)(v7 + v8 + 4);
  return 1;
}


// ===== 5cfd44 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1
  int v8; // r2
  int v9; // r12
  int v10; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 3 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  v8 = v6 + 12 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = v7 + v8;
  *a4 = v9;
  a4[1] = *(_DWORD *)(v10 + 4);
  a4[2] = *(_DWORD *)(v10 + 8);
  return 1;
}


// ===== 5cfdb0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1
  int v8; // r2
  int v9; // r12
  _DWORD *v10; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 4 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  v8 = v6 + 16 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = (_DWORD *)(v7 + v8);
  *a4 = v9;
  a4[1] = v10[1];
  a4[2] = v10[2];
  a4[3] = v10[3];
  return 1;
}


// ===== 5cfe20 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<float>(ushort,uint,float&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<float>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 5 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  *a4 = *(_DWORD *)(v7 + v6 + 4 * a3);
  return 1;
}


// ===== 5cfe74 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1
  int v8; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 6 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  v8 = v6 + 8 * a3;
  *a4 = *(_DWORD *)(v7 + v8);
  a4[1] = *(_DWORD *)(v7 + v8 + 4);
  return 1;
}


// ===== 5cfed4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1
  int v8; // r2
  int v9; // r12
  int v10; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 7 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  v8 = v6 + 12 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = v7 + v8;
  *a4 = v9;
  a4[1] = *(_DWORD *)(v10 + 4);
  a4[2] = *(_DWORD *)(v10 + 8);
  return 1;
}


// ===== 5cff40 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v6; // r12
  int v7; // r1
  int v8; // r2
  int v9; // r12
  _DWORD *v10; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 8 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(v4 + 12);
  v7 = *(_DWORD *)(a1 + 36);
  v8 = v6 + 16 * a3;
  v9 = *(_DWORD *)(v7 + v8);
  v10 = (_DWORD *)(v7 + v8);
  *a4 = v9;
  a4[1] = v10[1];
  a4[2] = v10[2];
  a4[3] = v10[3];
  return 1;
}


// ===== 5cffb0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColor>(ushort,uint,glitch::video::SColor&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 16 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  memcpy(a4, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 4 * a3), 4u);
  return 1;
}


// ===== 5d0010 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v5; // r1
  int v6; // r12
  int *v8; // r2
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  _DWORD *v13; // t0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 17 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v6 = 1;
  v8 = (int *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12) + 16 * a3);
  v9 = *v8;
  v10 = v8[1];
  v13 = v8 + 2;
  v11 = v8[2];
  v12 = v13[1];
  *a4 = v9;
  a4[1] = v10;
  a4[2] = v11;
  a4[3] = v12;
  return v6;
}


// ===== 5d0078 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<int>(ushort,uint,int&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<int>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int v8; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 2) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(a1 + 36);
  v8 = *(_DWORD *)(v5 + 12);
  if ( v6 == 1 )
  {
    *a4 = *(_DWORD *)(v7 + v8);
    return 1;
  }
  else
  {
    if ( v6 == 5 )
      *a4 = (int)*(float *)(v7 + v8);
    return 1;
  }
}


// ===== 5d0110 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<int>>(ushort,uint,glitch::core::vector2d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r0
  int v7; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 4) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 2 )
  {
    *a4 = *(_DWORD *)(v6 + v7);
    a4[1] = *(_DWORD *)(v6 + v7 + 4);
  }
  return 1;
}


// ===== 5d0198 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<int>>(ushort,uint,glitch::core::vector3d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r0
  int v7; // r2
  int v9; // r1
  int v10; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 8) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 3 )
  {
    v9 = *(_DWORD *)(v6 + v7);
    v10 = v6 + v7;
    *a4 = v9;
    a4[1] = *(_DWORD *)(v10 + 4);
    a4[2] = *(_DWORD *)(v10 + 8);
  }
  return 1;
}


// ===== 5d0228 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<int>>(ushort,uint,glitch::core::vector4d<int>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r0
  int v7; // r2
  int v9; // r1
  _DWORD *v10; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x10) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 4 )
  {
    v9 = *(_DWORD *)(v6 + v7);
    v10 = (_DWORD *)(v6 + v7);
    *a4 = v9;
    a4[1] = v10[1];
    a4[2] = v10[2];
    a4[3] = v10[3];
  }
  return 1;
}


// ===== 5d02c4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<float>(ushort,uint,float&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<float>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r1
  int v6; // r4
  int v7; // r2
  int v8; // r3
  int result; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x20) == 0 || a3 >= *(_DWORD *)(v5 + 8) )
    return 0;
  v7 = *(_DWORD *)(a1 + 36);
  v8 = *(_DWORD *)(v5 + 12);
  if ( v6 == 1 )
  {
    *a4 = (float)*(int *)(v7 + v8);
    return 1;
  }
  else
  {
    result = 1;
    if ( v6 == 5 )
      *a4 = *(float *)(v7 + v8);
  }
  return result;
}


// ===== 5d0364 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<float>>(ushort,uint,glitch::core::vector2d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r0
  int v7; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x40) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 6 )
  {
    *a4 = *(_DWORD *)(v6 + v7);
    a4[1] = *(_DWORD *)(v6 + v7 + 4);
  }
  return 1;
}


// ===== 5d03ec glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<float>>(ushort,uint,glitch::core::vector3d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD *a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r0
  int v7; // r2
  int v9; // r1
  int v10; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x80) == 0 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  if ( v5 == 7 )
  {
    v9 = *(_DWORD *)(v6 + v7);
    v10 = v6 + v7;
    *a4 = v9;
    a4[1] = *(_DWORD *)(v10 + 4);
    a4[2] = *(_DWORD *)(v10 + 8);
  }
  return 1;
}


// ===== 5d047c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<float>>(ushort,uint,glitch::core::vector4d<float>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v4; // r1
  int v5; // r5
  int v6; // r0
  int v7; // r2
  int v8; // r4
  float v10; // r7
  float v11; // r5
  float v12; // r0
  int v13; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x100) == 0
    || a3 >= *(_DWORD *)(v4 + 8) )
  {
    return 0;
  }
  v6 = *(_DWORD *)(a1 + 36);
  v7 = *(_DWORD *)(v4 + 12);
  v8 = v6 + v7;
  if ( v5 == 16 )
  {
    v10 = (float)*(unsigned __int8 *)(v6 + v7) * 0.0039216;
    v11 = (float)*(unsigned __int8 *)(v8 + 1) * 0.0039216;
    v12 = (float)*(unsigned __int8 *)(v8 + 2) * 0.0039216;
    a4[3] = (float)*(unsigned __int8 *)(v8 + 3) * 0.0039216;
    *a4 = v10;
    a4[2] = v12;
    a4[1] = v11;
    return 1;
  }
  else if ( v5 == 17 || v5 == 8 )
  {
    v13 = *(_DWORD *)(v6 + v7);
    *(_DWORD *)a4 = v13;
    a4[1] = *(float *)(v8 + 4);
    a4[2] = *(float *)(v8 + 8);
    a4[3] = *(float *)(v8 + 12);
    return 1;
  }
  else
  {
    return 1;
  }
}


// ===== 5d05ac glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColor>(ushort,uint,glitch::video::SColor&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  int v5; // r1
  int v6; // r3
  int v7; // r7
  int v8; // r6
  float *v9; // r5
  char v11; // r8
  char v12; // r7
  char v13; // r6
  unsigned int v14; // r0
  char v15; // r8
  char v16; // r7
  char v17; // r6
  unsigned int v18; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x10000) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = *(_DWORD *)(a1 + 36);
  v8 = *(_DWORD *)(v5 + 12);
  v9 = (float *)(v7 + v8);
  if ( v6 == 16 )
  {
    memcpy(a4, (const void *)(v7 + v8), 4u);
    return 1;
  }
  else if ( v6 == 17 )
  {
    v15 = (unsigned int)(float)(v9[3] * 255.0);
    v16 = (unsigned int)(float)(*(float *)(v7 + v8) * 255.0);
    v17 = (unsigned int)(float)(v9[1] * 255.0);
    v18 = (unsigned int)(float)(v9[2] * 255.0);
    *a4 = v16;
    a4[2] = v18;
    a4[3] = v15;
    a4[1] = v17;
    return 1;
  }
  else
  {
    if ( v6 == 8 )
    {
      v11 = (unsigned int)(float)(v9[3] * 255.0);
      v12 = (unsigned int)(float)(*(float *)(v7 + v8) * 255.0);
      v13 = (unsigned int)(float)(v9[1] * 255.0);
      v14 = (unsigned int)(float)(v9[2] * 255.0);
      *a4 = v12;
      a4[2] = v14;
      a4[3] = v11;
      a4[1] = v13;
    }
    return 1;
  }
}


// ===== 5d0734 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColorf>(ushort,uint,glitch::video::SColorf&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        float *a4)
{
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int v8; // r2
  int v9; // r5
  float v11; // r8
  float v12; // r6
  float v13; // r7
  float v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x20000) == 0
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  v7 = *(_DWORD *)(a1 + 36);
  v8 = *(_DWORD *)(v5 + 12);
  v9 = v7 + v8;
  if ( v6 == 16 )
  {
    v11 = (float)*(unsigned __int8 *)(v7 + v8) * 0.0039216;
    v12 = (float)*(unsigned __int8 *)(v9 + 1) * 0.0039216;
    v13 = (float)*(unsigned __int8 *)(v9 + 2) * 0.0039216;
    v14 = (float)*(unsigned __int8 *)(v9 + 3);
    *a4 = v11;
    a4[3] = v14 * 0.0039216;
    a4[2] = v13;
    a4[1] = v12;
    return 1;
  }
  if ( v6 != 17 && v6 != 8 )
    return 1;
  v15 = *(_DWORD *)(v9 + 4);
  v16 = *(_DWORD *)(v9 + 8);
  v17 = *(_DWORD *)(v9 + 12);
  *a4 = *(float *)v9;
  *((_DWORD *)a4 + 1) = v15;
  *((_DWORD *)a4 + 2) = v16;
  *((_DWORD *)a4 + 3) = v17;
  return 1;
}


// ===== 5d084c `global constructor keyed to'.._source_glitch_video_CMaterialRenderer.cpp =====
void `global constructor keyed to'.._source_glitch_video_CMaterialRenderer.cpp()
{
  dword_9F6A38 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6A34 = 1056964608;
}


// ===== 5d086c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColorf>(ushort,glitch::video::SColorf*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  float *v5; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  int v10; // r8
  int *v11; // r12
  int *v12; // r8
  int v13; // r7
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // r6
  int v19; // r10
  int v20; // r7
  int v21; // r6
  int *v22; // r3
  _DWORD *v23; // r12
  int v24; // r0
  int v25; // r1
  int v26; // r2
  int v27; // r3
  int v28; // r9
  int i; // r8
  float v30; // r6
  float v31; // r7
  float v32; // r0

  v5 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20000) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 17 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
    switch ( v7 )
    {
      case 16:
        v28 = v10 + 4 * *(_DWORD *)(v6 + 8);
        if ( v10 != v28 )
        {
          for ( i = v10 + 4; ; i += 4 )
          {
            v30 = (float)*(unsigned __int8 *)(i - 4) * 0.0039216;
            v31 = (float)*(unsigned __int8 *)(i - 3) * 0.0039216;
            v32 = (float)*(unsigned __int8 *)(i - 2) * 0.0039216;
            v5[3] = (float)*(unsigned __int8 *)(i - 1) * 0.0039216;
            v5[2] = v32;
            v5[1] = v31;
            *v5 = v30;
            if ( v28 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v19 = *(_DWORD *)(v6 + 8);
        if ( v19 )
        {
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = (int *)(v10 + 16 * v21++);
            v23 = (_DWORD *)((char *)v5 + v20);
            v24 = *v22;
            v25 = v22[1];
            v26 = v22[2];
            v27 = v22[3];
            v20 += a4;
            *v23 = v24;
            v23[1] = v25;
            v23[2] = v26;
            v23[3] = v27;
          }
          while ( v21 != v19 );
        }
        break;
      case 8:
        v11 = (int *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12));
        v12 = (int *)(v10 + 16 * *(_DWORD *)(v6 + 8));
        if ( v11 != v12 )
        {
          v13 = 0;
          do
          {
            v14 = *v11;
            v15 = v11[1];
            v16 = v11[2];
            v17 = v11[3];
            v11 += 4;
            v18 = (_DWORD *)((char *)v5 + v13);
            *v18 = v14;
            v18[1] = v15;
            v18[2] = v16;
            v18[3] = v17;
            v13 += a4;
          }
          while ( v12 != v11 );
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 16 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d0a3c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColor>(ushort,glitch::video::SColor*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  _BYTE *v5; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  float *v10; // r8
  float *v11; // r9
  char v12; // r10
  char v13; // r6
  char v14; // r7
  unsigned int v15; // r0
  float *v16; // r9
  char v17; // r10
  char v18; // r6
  char v19; // r7
  unsigned int v20; // r0
  int v21; // r10
  int v22; // r7
  int i; // r6
  float *v24; // r1

  v5 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x10000) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 16 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = (float *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12));
    switch ( v7 )
    {
      case 16:
        v21 = *(_DWORD *)(v6 + 8);
        if ( v21 )
        {
          v22 = 0;
          for ( i = 0; i != v21; ++i )
          {
            v24 = &v10[i];
            memcpy(&v5[v22], v24, 4u);
            v22 += a4;
          }
        }
        break;
      case 17:
        v16 = &v10[4 * *(_DWORD *)(v6 + 8)];
        if ( v10 != v16 )
        {
          while ( 1 )
          {
            v17 = (unsigned int)(float)(v10[3] * 255.0);
            v18 = (unsigned int)(float)(*v10 * 255.0);
            v19 = (unsigned int)(float)(v10[1] * 255.0);
            v20 = (unsigned int)(float)(v10[2] * 255.0);
            v10 += 4;
            v5[3] = v17;
            v5[2] = v20;
            v5[1] = v19;
            *v5 = v18;
            if ( v16 == v10 )
              break;
            v5 += a4;
          }
        }
        break;
      case 8:
        v11 = &v10[4 * *(_DWORD *)(v6 + 8)];
        if ( v10 != v11 )
        {
          while ( 1 )
          {
            v12 = (unsigned int)(float)(v10[3] * 255.0);
            v13 = (unsigned int)(float)(*v10 * 255.0);
            v14 = (unsigned int)(float)(v10[1] * 255.0);
            v15 = (unsigned int)(float)(v10[2] * 255.0);
            v10 += 4;
            v5[3] = v12;
            v5[2] = v15;
            v5[1] = v14;
            *v5 = v13;
            if ( v11 == v10 )
              break;
            v5 += a4;
          }
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 4 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d0c64 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  float *v4; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  float *v10; // r5
  int j; // r3
  int v12; // r2
  float *i; // r2
  int v14; // r3
  float *v15; // r11
  float *v16; // r5
  int v17; // r10
  float v18; // [sp+4h] [bp-10h]
  float v19; // [sp+8h] [bp-Ch]

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x100) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 8 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = (float *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12));
    switch ( v7 )
    {
      case 16:
        v15 = &v10[*(_DWORD *)(v6 + 8)];
        if ( v10 != v15 )
        {
          v16 = v10 + 1;
          while ( 1 )
          {
            v17 = *((unsigned __int8 *)v16 - 1);
            v18 = (float)*((unsigned __int8 *)v16 - 3) * 0.0039216;
            v19 = (float)*((unsigned __int8 *)v16 - 2) * 0.0039216;
            *v4 = (float)*((unsigned __int8 *)v16 - 4) * 0.0039216;
            v8 = v15 == v16++;
            v4[1] = v18;
            v4[2] = v19;
            v4[3] = (float)v17 * 0.0039216;
            if ( v8 )
              break;
            v4 = (float *)((char *)v4 + a4);
          }
        }
        break;
      case 17:
        for ( i = &v10[4 * *(_DWORD *)(v6 + 8)]; i != v10; v4 = (float *)((char *)v4 + a4) )
        {
          *v4 = *v10;
          v4[1] = v10[1];
          v4[2] = v10[2];
          v14 = *((_DWORD *)v10 + 3);
          v10 += 4;
          *((_DWORD *)v4 + 3) = v14;
        }
        break;
      case 8:
        for ( j = *(_DWORD *)(v6 + 8); j; v4 = (float *)((char *)v4 + a4) )
        {
          --j;
          *v4 = *v10;
          v4[1] = v10[1];
          v4[2] = v10[2];
          v12 = *((_DWORD *)v10 + 3);
          v10 += 4;
          *((_DWORD *)v4 + 3) = v12;
        }
        break;
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 16 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d0e74 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v5; // r1
  int v6; // r2
  bool v7; // zf
  int v9; // r0
  int v10; // r2
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x80) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 7 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v7 = v6 == 7;
    v9 = *(_DWORD *)(a1 + 36);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v7 )
    {
      v11 = *(_DWORD *)(v5 + 8);
      if ( v11 )
      {
        v12 = (_DWORD *)(v9 + v10);
        do
        {
          --v11;
          *(_DWORD *)a3 = *v12;
          *((_DWORD *)a3 + 1) = v12[1];
          v13 = v12[2];
          v12 += 3;
          *((_DWORD *)a3 + 2) = v13;
          a3 += a4;
        }
        while ( v11 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), 12 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5d0f64 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v8; // r5
  int v9; // r0
  int v10; // r5
  int v11; // r12
  int v12; // r1
  int v13; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x40) == 0 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( !v6 )
    goto LABEL_12;
  if ( v5 != 6 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v8 = *(_DWORD *)(a1 + 36);
    if ( v5 == 6 )
    {
      v9 = *(_DWORD *)(v4 + 8);
      if ( v9 )
      {
        v10 = v8 + *(_DWORD *)(v4 + 12);
        v11 = 0;
        do
        {
          v12 = v10 + v11;
          v13 = *(_DWORD *)(v10 + v11);
          --v9;
          v11 += 8;
          *(_DWORD *)a3 = v13;
          *((_DWORD *)a3 + 1) = *(_DWORD *)(v12 + 4);
          a3 += a4;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 8 * *(_DWORD *)(v4 + 8));
  return 1;
}


// ===== 5d104c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<float>(ushort,float*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<float>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  float *v5; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  int v10; // r6
  int v11; // r1
  int j; // r3
  int v13; // r2
  int v14; // r8
  int i; // r5
  float v16; // r0

  v5 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 5 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
    if ( v7 == 1 )
    {
      v14 = *(_DWORD *)(v6 + 8);
      if ( v14 )
      {
        for ( i = 0; i != v14; ++i )
        {
          v16 = (float)*(int *)(v10 + 4 * i);
          *v5 = v16;
          v5 = (float *)((char *)v5 + a4);
        }
      }
    }
    else if ( v7 == 5 )
    {
      v11 = *(_DWORD *)(v6 + 8);
      if ( v11 )
      {
        for ( j = 0; j != v11; ++j )
        {
          v13 = *(_DWORD *)(v10 + 4 * j);
          *(_DWORD *)v5 = v13;
          v5 = (float *)((char *)v5 + a4);
        }
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 4 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d1160 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v8; // r4
  int v9; // r0
  _DWORD *v10; // r1
  int v11; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x10) == 0 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 16;
  if ( !v6 )
    goto LABEL_12;
  if ( v5 != 4 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v6 = v5 == 4;
    v8 = *(_DWORD *)(a1 + 36);
    if ( v6 )
    {
      v9 = *(_DWORD *)(v4 + 8);
      if ( v9 )
      {
        v10 = (_DWORD *)(v8 + *(_DWORD *)(v4 + 12));
        do
        {
          --v9;
          *(_DWORD *)a3 = *v10;
          *((_DWORD *)a3 + 1) = v10[1];
          *((_DWORD *)a3 + 2) = v10[2];
          v11 = v10[3];
          v10 += 4;
          *((_DWORD *)a3 + 3) = v11;
          a3 += a4;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 16 * *(_DWORD *)(v4 + 8));
  return 1;
}


// ===== 5d1250 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v5; // r1
  int v6; // r2
  bool v7; // zf
  int v9; // r0
  int v10; // r2
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 8) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 3 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v7 = v6 == 3;
    v9 = *(_DWORD *)(a1 + 36);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v7 )
    {
      v11 = *(_DWORD *)(v5 + 8);
      if ( v11 )
      {
        v12 = (_DWORD *)(v9 + v10);
        do
        {
          --v11;
          *(_DWORD *)a3 = *v12;
          *((_DWORD *)a3 + 1) = v12[1];
          v13 = v12[2];
          v12 += 3;
          *((_DWORD *)a3 + 2) = v13;
          a3 += a4;
        }
        while ( v11 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), 12 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5d1340 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v8; // r5
  int v9; // r0
  int v10; // r5
  int v11; // r12
  int v12; // r1
  int v13; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 4) == 0 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( !v6 )
    goto LABEL_12;
  if ( v5 != 2 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v8 = *(_DWORD *)(a1 + 36);
    if ( v5 == 2 )
    {
      v9 = *(_DWORD *)(v4 + 8);
      if ( v9 )
      {
        v10 = v8 + *(_DWORD *)(v4 + 12);
        v11 = 0;
        do
        {
          v12 = v10 + v11;
          v13 = *(_DWORD *)(v10 + v11);
          --v9;
          v11 += 8;
          *(_DWORD *)a3 = v13;
          *((_DWORD *)a3 + 1) = *(_DWORD *)(v12 + 4);
          a3 += a4;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 8 * *(_DWORD *)(v4 + 8));
  return 1;
}


// ===== 5d1428 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<int>(ushort,int*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<int>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v8; // r12
  int v9; // r4
  int i; // r1
  int v11; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 2) == 0 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 4;
  if ( !v6 )
    goto LABEL_12;
  if ( v5 != 1 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    if ( v5 == 1 )
    {
      v8 = *(_DWORD *)(v4 + 8);
      if ( v8 )
      {
        v9 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12);
        for ( i = 0; i != v8; ++i )
        {
          v11 = *(_DWORD *)(v9 + 4 * i);
          *(_DWORD *)a3 = v11;
          a3 += a4;
        }
      }
    }
    return 1;
  }
  memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 4 * *(_DWORD *)(v4 + 8));
  return 1;
}


// ===== 5d1500 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColorf>(ushort,glitch::video::SColorf*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v6; // r1
  bool v8; // zf
  int v9; // r5
  int v10; // r8
  int v11; // r10
  int v12; // r4
  int *v13; // r3
  char *v14; // r12
  int v15; // r0
  int v16; // r1
  int v17; // r2
  int v18; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 17 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  if ( v8 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 16 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = 0;
    v10 = *(_DWORD *)(v6 + 8);
    if ( v10 )
    {
      v11 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
      v12 = 0;
      do
      {
        v13 = (int *)(v11 + 16 * v12++);
        v14 = &a3[v9];
        v15 = *v13;
        v16 = v13[1];
        v17 = v13[2];
        v18 = v13[3];
        v9 += a4;
        *(_DWORD *)v14 = v15;
        *((_DWORD *)v14 + 1) = v16;
        *((_DWORD *)v14 + 2) = v17;
        *((_DWORD *)v14 + 3) = v18;
      }
      while ( v10 != v12 );
    }
    return 1;
  }
}


// ===== 5d15b4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColor>(ushort,glitch::video::SColor*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v6; // r1
  bool v8; // zf
  int v9; // r6
  int v10; // r8
  int v11; // r10
  int i; // r5
  const void *v13; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 16 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( v8 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 4 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = 0;
    v10 = *(_DWORD *)(v6 + 8);
    if ( v10 )
    {
      v11 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
      for ( i = 0; i != v10; ++i )
      {
        v13 = (const void *)(v11 + 4 * i);
        memcpy(&a3[v9], v13, 4u);
        v9 += a4;
      }
    }
    return 1;
  }
}


// ===== 5d1668 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  bool v6; // zf
  int v7; // r12
  int v8; // r0
  _DWORD *v9; // r1
  int v10; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 8 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 16;
  if ( v6 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 16 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(a1 + 36);
    if ( v7 )
    {
      v9 = (_DWORD *)(v8 + *(_DWORD *)(v4 + 12));
      do
      {
        --v7;
        *(_DWORD *)a3 = *v9;
        *((_DWORD *)a3 + 1) = v9[1];
        *((_DWORD *)a3 + 2) = v9[2];
        v10 = v9[3];
        v9 += 4;
        *((_DWORD *)a3 + 3) = v10;
        a3 += a4;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d1718 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r0
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 7 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( v7 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), 12 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(a1 + 36);
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + *(_DWORD *)(v5 + 12));
      do
      {
        --v8;
        *v4 = *v10;
        v4[1] = v10[1];
        v11 = v10[2];
        v10 += 3;
        v4[2] = v11;
        v4 = (_DWORD *)((char *)v4 + a4);
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5d17c8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  bool v6; // zf
  int v7; // r12
  int v8; // r1
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 6 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( v6 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 8 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(v4 + 12);
    if ( v7 )
    {
      v9 = *(_DWORD *)(a1 + 36) + v8;
      v10 = 0;
      do
      {
        v11 = v9 + v10;
        v12 = *(_DWORD *)(v9 + v10);
        --v7;
        v10 += 8;
        *(_DWORD *)a3 = v12;
        *((_DWORD *)a3 + 1) = *(_DWORD *)(v11 + 4);
        a3 += a4;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d1878 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<float>(ushort,float*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<float>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  bool v6; // zf
  int v7; // r1
  int v8; // r12
  int v9; // r4
  int v10; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 5 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 4;
  if ( v6 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 4 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = 0;
    v8 = *(_DWORD *)(v4 + 8);
    if ( v8 )
    {
      v9 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12);
      do
      {
        v10 = *(_DWORD *)(v9 + 4 * v7++);
        *(_DWORD *)a3 = v10;
        a3 += a4;
      }
      while ( v8 != v7 );
    }
    return 1;
  }
}


// ===== 5d1914 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r4
  bool v6; // zf
  int v7; // r12
  int v8; // r0
  _DWORD *v9; // r1
  int v10; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 4 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 16;
  if ( v6 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 16 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(a1 + 36);
    if ( v7 )
    {
      v9 = (_DWORD *)(v8 + *(_DWORD *)(v4 + 12));
      do
      {
        --v7;
        *(_DWORD *)a3 = *v9;
        *((_DWORD *)a3 + 1) = v9[1];
        *((_DWORD *)a3 + 2) = v9[2];
        v10 = v9[3];
        v9 += 4;
        *((_DWORD *)a3 + 3) = v10;
        a3 += a4;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d19c4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r0
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 3 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( v7 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), 12 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(a1 + 36);
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + *(_DWORD *)(v5 + 12));
      do
      {
        --v8;
        *v4 = *v10;
        v4[1] = v10[1];
        v11 = v10[2];
        v10 += 3;
        v4[2] = v11;
        v4 = (_DWORD *)((char *)v4 + a4);
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5d1a74 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  bool v6; // zf
  int v7; // r12
  int v8; // r1
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 2 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( v6 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 8 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(v4 + 12);
    if ( v7 )
    {
      v9 = *(_DWORD *)(a1 + 36) + v8;
      v10 = 0;
      do
      {
        v11 = v9 + v10;
        v12 = *(_DWORD *)(v9 + v10);
        --v7;
        v10 += 8;
        *(_DWORD *)a3 = v12;
        *((_DWORD *)a3 + 1) = *(_DWORD *)(v11 + 4);
        a3 += a4;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d1b24 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<int>(ushort,int*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<int>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  bool v6; // zf
  int v7; // r1
  int v8; // r12
  int v9; // r4
  int v10; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 1 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 4;
  if ( v6 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), 4 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = 0;
    v8 = *(_DWORD *)(v4 + 8);
    if ( v8 )
    {
      v9 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12);
      do
      {
        v10 = *(_DWORD *)(v9 + 4 * v7++);
        *(_DWORD *)a3 = v10;
        a3 += a4;
      }
      while ( v8 != v7 );
    }
    return 1;
  }
}


// ===== 5d1bc0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColorf>(ushort,glitch::video::SColorf const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  float *v5; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  _DWORD *v10; // r8
  _DWORD *j; // r2
  int v12; // r3
  int v13; // r10
  int v14; // r6
  int v15; // r12
  _DWORD *v16; // r7
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3
  _DWORD *v21; // r9
  _DWORD *i; // r8
  char v23; // r6
  char v24; // r7
  unsigned int v25; // r0

  v5 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20000) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 17 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12));
    switch ( v7 )
    {
      case 16:
        v21 = &v10[*(_DWORD *)(v6 + 8)];
        if ( v10 != v21 )
        {
          for ( i = v10 + 1; ; ++i )
          {
            v23 = (unsigned int)(float)(*v5 * 255.0);
            v24 = (unsigned int)(float)(v5[1] * 255.0);
            v25 = (unsigned int)(float)(v5[2] * 255.0);
            *((_BYTE *)i - 1) = (unsigned int)(float)(v5[3] * 255.0);
            *((_BYTE *)i - 2) = v25;
            *((_BYTE *)i - 3) = v24;
            *((_BYTE *)i - 4) = v23;
            if ( v21 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v13 = *(_DWORD *)(v6 + 8);
        if ( v13 )
        {
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = &v10[4 * v15++];
            v17 = *(_DWORD *)((char *)v5 + v14);
            v18 = *(_DWORD *)((char *)v5 + v14 + 4);
            v19 = *(_DWORD *)((char *)v5 + v14 + 8);
            v20 = *(_DWORD *)((char *)v5 + v14 + 12);
            v14 += a4;
            *v16 = v17;
            v16[1] = v18;
            v16[2] = v19;
            v16[3] = v20;
          }
          while ( v13 != v15 );
        }
        break;
      case 8:
        for ( j = &v10[4 * *(_DWORD *)(v6 + 8)]; j != v10; v10 += 4 )
        {
          *v10 = *(_DWORD *)v5;
          v10[1] = *((_DWORD *)v5 + 1);
          v10[2] = *((_DWORD *)v5 + 2);
          v12 = *((_DWORD *)v5 + 3);
          v5 = (float *)((char *)v5 + a4);
          v10[3] = v12;
        }
        break;
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), a3, 16 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d1d9c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColor>(ushort,glitch::video::SColor const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        unsigned __int8 *a3,
        int a4)
{
  unsigned __int8 *v5; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  float *v10; // r8
  float *v11; // r9
  float v12; // r6
  float v13; // r7
  float v14; // r0
  float *v15; // r9
  float v16; // r6
  float v17; // r7
  float v18; // r0
  int v19; // r10
  int v20; // r7
  int i; // r6
  float *v22; // r0

  v5 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x10000) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 16 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = (float *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12));
    switch ( v7 )
    {
      case 16:
        v19 = *(_DWORD *)(v6 + 8);
        if ( v19 )
        {
          v20 = 0;
          for ( i = 0; i != v19; ++i )
          {
            v22 = &v10[i];
            memcpy(v22, &v5[v20], sizeof(float));
            v20 += a4;
          }
        }
        break;
      case 17:
        v15 = &v10[4 * *(_DWORD *)(v6 + 8)];
        if ( v10 != v15 )
        {
          while ( 1 )
          {
            v16 = (float)*v5 * 0.0039216;
            v17 = (float)v5[1] * 0.0039216;
            v18 = (float)v5[3];
            v10[2] = (float)v5[2] * 0.0039216;
            v10[3] = v18 * 0.0039216;
            v10[1] = v17;
            *v10 = v16;
            v10 += 4;
            if ( v15 == v10 )
              break;
            v5 += a4;
          }
        }
        break;
      case 8:
        v11 = &v10[4 * *(_DWORD *)(v6 + 8)];
        if ( v10 != v11 )
        {
          while ( 1 )
          {
            v12 = (float)*v5 * 0.0039216;
            v13 = (float)v5[1] * 0.0039216;
            v14 = (float)v5[3];
            v10[2] = (float)v5[2] * 0.0039216;
            v10[3] = v14 * 0.0039216;
            v10[1] = v13;
            *v10 = v12;
            v10 += 4;
            if ( v11 == v10 )
              break;
            v5 += a4;
          }
        }
        break;
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), a3, 4 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d1fbc glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  float *v5; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  _DWORD *v10; // r12
  int j; // r3
  int v12; // r2
  _DWORD *v13; // r7
  int v14; // r6
  int v15; // r1
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // r9
  _DWORD *i; // r6
  char v20; // r7
  char v21; // r8
  unsigned int v22; // r0

  v5 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x100) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 8 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = (_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12));
    switch ( v7 )
    {
      case 16:
        v18 = &v10[*(_DWORD *)(v6 + 8)];
        if ( v10 != v18 )
        {
          for ( i = v10 + 1; ; ++i )
          {
            v20 = (unsigned int)(float)(*v5 * 255.0);
            v21 = (unsigned int)(float)(v5[1] * 255.0);
            v22 = (unsigned int)(float)(v5[2] * 255.0);
            *((_BYTE *)i - 1) = (unsigned int)(float)(v5[3] * 255.0);
            *((_BYTE *)i - 2) = v22;
            *((_BYTE *)i - 3) = v21;
            *((_BYTE *)i - 4) = v20;
            if ( v18 == i )
              break;
            v5 = (float *)((char *)v5 + a4);
          }
        }
        break;
      case 17:
        v13 = &v10[4 * *(_DWORD *)(v6 + 8)];
        if ( v10 != v13 )
        {
          v14 = 0;
          do
          {
            v15 = *(_DWORD *)((char *)v5 + v14 + 4);
            v16 = *(_DWORD *)((char *)v5 + v14 + 8);
            v17 = *(_DWORD *)((char *)v5 + v14 + 12);
            *v10 = *(_DWORD *)((char *)v5 + v14);
            v10[1] = v15;
            v10[2] = v16;
            v10[3] = v17;
            v10 += 4;
            v14 += a4;
          }
          while ( v13 != v10 );
        }
        break;
      case 8:
        for ( j = *(_DWORD *)(v6 + 8); j; v10 += 4 )
        {
          --j;
          *v10 = *(_DWORD *)v5;
          v10[1] = *((_DWORD *)v5 + 1);
          v10[2] = *((_DWORD *)v5 + 2);
          v12 = *((_DWORD *)v5 + 3);
          v5 = (float *)((char *)v5 + a4);
          v10[3] = v12;
        }
        break;
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), a3, 16 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d2190 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v5; // r1
  int v6; // r2
  bool v7; // zf
  int v9; // r0
  int v10; // r2
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 0x80) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 7 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v7 = v6 == 7;
    v9 = *(_DWORD *)(a1 + 36);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v7 )
    {
      v11 = *(_DWORD *)(v5 + 8);
      if ( v11 )
      {
        v12 = (_DWORD *)(v9 + v10);
        do
        {
          --v11;
          *v12 = *(_DWORD *)a3;
          v12[1] = *((_DWORD *)a3 + 1);
          v13 = *((_DWORD *)a3 + 2);
          a3 += a4;
          v12[2] = v13;
          v12 += 3;
        }
        while ( v11 );
      }
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), a3, 12 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5d2280 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v8; // r5
  int v9; // r0
  int v10; // r5
  int v11; // r12
  int v12; // r1
  int v13; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x40) == 0 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( !v6 )
    goto LABEL_12;
  if ( v5 != 6 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v8 = *(_DWORD *)(a1 + 36);
    if ( v5 == 6 )
    {
      v9 = *(_DWORD *)(v4 + 8);
      if ( v9 )
      {
        v10 = v8 + *(_DWORD *)(v4 + 12);
        v11 = 0;
        do
        {
          --v9;
          *(_DWORD *)(v10 + v11) = *(_DWORD *)a3;
          v12 = v10 + v11;
          v13 = *((_DWORD *)a3 + 1);
          v11 += 8;
          a3 += a4;
          *(_DWORD *)(v12 + 4) = v13;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 8 * *(_DWORD *)(v4 + 8));
  return 1;
}


// ===== 5d2368 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<float>(ushort,float const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<float>(
        int a1,
        unsigned int a2,
        float *a3,
        int a4)
{
  float *v5; // r4
  int v6; // r1
  int v7; // r3
  bool v8; // zf
  int v10; // r6
  int v11; // r1
  int j; // r3
  float v13; // t1
  int v14; // r8
  int i; // r5
  float v16; // t1

  v5 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x20) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 5 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
    if ( v7 == 1 )
    {
      v14 = *(_DWORD *)(v6 + 8);
      if ( v14 )
      {
        for ( i = 0; i != v14; ++i )
        {
          v16 = *v5;
          v5 = (float *)((char *)v5 + a4);
          *(_DWORD *)(v10 + 4 * i) = (int)v16;
        }
      }
    }
    else if ( v7 == 5 )
    {
      v11 = *(_DWORD *)(v6 + 8);
      if ( v11 )
      {
        for ( j = 0; j != v11; ++j )
        {
          v13 = *v5;
          v5 = (float *)((char *)v5 + a4);
          *(float *)(v10 + 4 * j) = v13;
        }
      }
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), a3, 4 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d247c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v8; // r4
  int v9; // r0
  _DWORD *v10; // r1
  int v11; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x10) == 0 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 16;
  if ( !v6 )
    goto LABEL_12;
  if ( v5 != 4 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v6 = v5 == 4;
    v8 = *(_DWORD *)(a1 + 36);
    if ( v6 )
    {
      v9 = *(_DWORD *)(v4 + 8);
      if ( v9 )
      {
        v10 = (_DWORD *)(v8 + *(_DWORD *)(v4 + 12));
        do
        {
          --v9;
          *v10 = *(_DWORD *)a3;
          v10[1] = *((_DWORD *)a3 + 1);
          v10[2] = *((_DWORD *)a3 + 2);
          v11 = *((_DWORD *)a3 + 3);
          a3 += a4;
          v10[3] = v11;
          v10 += 4;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 16 * *(_DWORD *)(v4 + 8));
  return 1;
}


// ===== 5d256c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v5; // r1
  int v6; // r2
  bool v7; // zf
  int v9; // r0
  int v10; // r2
  int v11; // r1
  _DWORD *v12; // r2
  int v13; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v6] & 8) == 0 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( !v7 )
    goto LABEL_12;
  if ( v6 != 3 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v7 = v6 == 3;
    v9 = *(_DWORD *)(a1 + 36);
    v10 = *(_DWORD *)(v5 + 12);
    if ( v7 )
    {
      v11 = *(_DWORD *)(v5 + 8);
      if ( v11 )
      {
        v12 = (_DWORD *)(v9 + v10);
        do
        {
          --v11;
          *v12 = *(_DWORD *)a3;
          v12[1] = *((_DWORD *)a3 + 1);
          v13 = *((_DWORD *)a3 + 2);
          a3 += a4;
          v12[2] = v13;
          v12 += 3;
        }
        while ( v11 );
      }
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), a3, 12 * *(_DWORD *)(v5 + 8));
  return 1;
}


// ===== 5d265c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  int v5; // r4
  bool v6; // zf
  int v8; // r5
  int v9; // r0
  int v10; // r5
  int v11; // r12
  int v12; // r1
  int v13; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 4) == 0 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( !v6 )
    goto LABEL_12;
  if ( v5 != 2 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v8 = *(_DWORD *)(a1 + 36);
    if ( v5 == 2 )
    {
      v9 = *(_DWORD *)(v4 + 8);
      if ( v9 )
      {
        v10 = v8 + *(_DWORD *)(v4 + 12);
        v11 = 0;
        do
        {
          --v9;
          *(_DWORD *)(v10 + v11) = *(_DWORD *)a3;
          v12 = v10 + v11;
          v13 = *((_DWORD *)a3 + 1);
          v11 += 8;
          a3 += a4;
          *(_DWORD *)(v12 + 4) = v13;
        }
        while ( v9 );
      }
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 8 * *(_DWORD *)(v4 + 8));
  return 1;
}


// ===== 5d2744 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<int>(ushort,int const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<int>(
        int a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int *v4; // r5
  int v6; // r1
  int v7; // r4
  bool v8; // zf
  int v10; // r6
  int v11; // r8
  int j; // r4
  int v13; // t1
  int v14; // r1
  int i; // r3
  int v16; // t1

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 2) == 0 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( !v8 )
    goto LABEL_12;
  if ( v7 != 1 )
  {
    if ( !a4 )
      return 1;
LABEL_12:
    v10 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
    if ( v7 == 1 )
    {
      v14 = *(_DWORD *)(v6 + 8);
      if ( v14 )
      {
        for ( i = 0; i != v14; ++i )
        {
          v16 = *v4;
          v4 = (int *)((char *)v4 + a4);
          *(_DWORD *)(v10 + 4 * i) = v16;
        }
      }
    }
    else if ( v7 == 5 )
    {
      v11 = *(_DWORD *)(v6 + 8);
      if ( v11 )
      {
        for ( j = 0; j != v11; ++j )
        {
          v13 = *v4;
          v4 = (int *)((char *)v4 + a4);
          *(float *)(v10 + 4 * j) = (float)v13;
        }
      }
    }
    return 1;
  }
  memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), a3, 4 * *(_DWORD *)(v6 + 8));
  return 1;
}


// ===== 5d2858 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColorf>(ushort,glitch::video::SColorf const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColorf>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v6; // r1
  bool v8; // zf
  int v9; // r5
  int v10; // r8
  int v11; // r10
  int v12; // r4
  _DWORD *v13; // r12
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 17 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 16;
  if ( v8 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), a3, 16 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = 0;
    v10 = *(_DWORD *)(v6 + 8);
    if ( v10 )
    {
      v11 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
      v12 = 0;
      do
      {
        v13 = (_DWORD *)(v11 + 16 * v12++);
        v14 = *(_DWORD *)&a3[v9];
        v15 = *(_DWORD *)&a3[v9 + 4];
        v16 = *(_DWORD *)&a3[v9 + 8];
        v17 = *(_DWORD *)&a3[v9 + 12];
        v9 += a4;
        *v13 = v14;
        v13[1] = v15;
        v13[2] = v16;
        v13[3] = v17;
      }
      while ( v12 != v10 );
    }
    return 1;
  }
}


// ===== 5d290c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColor>(ushort,glitch::video::SColor const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColor>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v6; // r1
  bool v8; // zf
  int v9; // r6
  int v10; // r8
  int v11; // r10
  int i; // r5
  void *v13; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 16 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( v8 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), a3, 4 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = 0;
    v10 = *(_DWORD *)(v6 + 8);
    if ( v10 )
    {
      v11 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
      for ( i = 0; i != v10; ++i )
      {
        v13 = (void *)(v11 + 4 * i);
        memcpy(v13, &a3[v9], 4u);
        v9 += a4;
      }
    }
    return 1;
  }
}


// ===== 5d29c0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<float>>(ushort,glitch::core::vector4d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  bool v6; // zf
  int v7; // r12
  int v8; // r0
  int v9; // r1
  _DWORD *v10; // r1
  int v11; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 8 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 16;
  if ( v6 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 16 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(a1 + 36);
    v9 = *(_DWORD *)(v4 + 12);
    if ( v7 )
    {
      v10 = (_DWORD *)(v8 + v9);
      do
      {
        --v7;
        *v10 = *(_DWORD *)a3;
        v10[1] = *((_DWORD *)a3 + 1);
        v10[2] = *((_DWORD *)a3 + 2);
        v11 = *((_DWORD *)a3 + 3);
        a3 += a4;
        v10[3] = v11;
        v10 += 4;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d2a70 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<float>>(ushort,glitch::core::vector3d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<float>>(
        int a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r0
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 7 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( v7 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), a3, 12 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(a1 + 36);
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + *(_DWORD *)(v5 + 12));
      do
      {
        --v8;
        *v10 = *v4;
        v10[1] = v4[1];
        v11 = v4[2];
        v4 = (_DWORD *)((char *)v4 + a4);
        v10[2] = v11;
        v10 += 3;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5d2b20 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<float>>(ushort,glitch::core::vector2d<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<float>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  bool v6; // zf
  int v7; // r12
  int v8; // r1
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 6 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( v6 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 8 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(v4 + 12);
    if ( v7 )
    {
      v9 = *(_DWORD *)(a1 + 36) + v8;
      v10 = 0;
      do
      {
        --v7;
        *(_DWORD *)(v9 + v10) = *(_DWORD *)a3;
        v11 = v9 + v10;
        v12 = *((_DWORD *)a3 + 1);
        v10 += 8;
        a3 += a4;
        *(_DWORD *)(v11 + 4) = v12;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d2bd0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<float>(ushort,float const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<float>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  bool v6; // zf
  int v7; // r1
  int v8; // r12
  int v9; // r4
  int v10; // t1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 5 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 4;
  if ( v6 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 4 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = 0;
    v8 = *(_DWORD *)(v4 + 8);
    if ( v8 )
    {
      v9 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12);
      do
      {
        v10 = *(_DWORD *)a3;
        a3 += a4;
        *(_DWORD *)(v9 + 4 * v7++) = v10;
      }
      while ( v7 != v8 );
    }
    return 1;
  }
}


// ===== 5d2c6c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<int>>(ushort,glitch::core::vector4d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  bool v6; // zf
  int v7; // r12
  int v8; // r0
  int v9; // r1
  _DWORD *v10; // r1
  int v11; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 4 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 16;
  if ( v6 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 16 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(a1 + 36);
    v9 = *(_DWORD *)(v4 + 12);
    if ( v7 )
    {
      v10 = (_DWORD *)(v8 + v9);
      do
      {
        --v7;
        *v10 = *(_DWORD *)a3;
        v10[1] = *((_DWORD *)a3 + 1);
        v10[2] = *((_DWORD *)a3 + 2);
        v11 = *((_DWORD *)a3 + 3);
        a3 += a4;
        v10[3] = v11;
        v10 += 4;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d2d1c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<int>>(ushort,glitch::core::vector3d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<int>>(
        int a1,
        unsigned int a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r12
  int v5; // r1
  bool v7; // zf
  int v8; // r4
  int v9; // r0
  _DWORD *v10; // r2
  int v11; // r1

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 3 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 12;
  if ( v7 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)), a3, 12 * *(_DWORD *)(v5 + 8));
    return 1;
  }
  else
  {
    v8 = *(_DWORD *)(v5 + 8);
    v9 = *(_DWORD *)(a1 + 36);
    if ( v8 )
    {
      v10 = (_DWORD *)(v9 + *(_DWORD *)(v5 + 12));
      do
      {
        --v8;
        *v10 = *v4;
        v10[1] = v4[1];
        v11 = v4[2];
        v4 = (_DWORD *)((char *)v4 + a4);
        v10[2] = v11;
        v10 += 3;
      }
      while ( v8 );
    }
    return 1;
  }
}


// ===== 5d2dcc glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<int>>(ushort,glitch::core::vector2d<int> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<int>>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r1
  bool v6; // zf
  int v7; // r12
  int v8; // r1
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r4

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 2 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 8;
  if ( v6 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 8 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = *(_DWORD *)(v4 + 8);
    v8 = *(_DWORD *)(v4 + 12);
    if ( v7 )
    {
      v9 = *(_DWORD *)(a1 + 36) + v8;
      v10 = 0;
      do
      {
        --v7;
        *(_DWORD *)(v9 + v10) = *(_DWORD *)a3;
        v11 = v9 + v10;
        v12 = *((_DWORD *)a3 + 1);
        v10 += 8;
        a3 += a4;
        *(_DWORD *)(v11 + 4) = v12;
      }
      while ( v7 );
    }
    return 1;
  }
}


// ===== 5d2e7c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<int>(ushort,int const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<int>(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v4; // r5
  bool v6; // zf
  int v7; // r1
  int v8; // r12
  int v9; // r4
  int v10; // t1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 1 )
    return 0;
  v6 = a4 == 0;
  if ( a4 )
    v6 = a4 == 4;
  if ( v6 )
  {
    memcpy((void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12)), a3, 4 * *(_DWORD *)(v4 + 8));
    return 1;
  }
  else
  {
    v7 = 0;
    v8 = *(_DWORD *)(v4 + 8);
    if ( v8 )
    {
      v9 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12);
      do
      {
        v10 = *(_DWORD *)a3;
        a3 += a4;
        *(_DWORD *)(v9 + 4 * v7++) = v10;
      }
      while ( v7 != v8 );
    }
    return 1;
  }
}


// ===== 5d2f18 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(ushort,glitch::core::CMatrix4<float> *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  int v5; // r1
  int v7; // r7
  char *v8; // r8
  const void **v9; // r6
  int v10; // r5
  char *v11; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 11 )
    return 0;
  if ( a4 )
    v7 = a4;
  else
    v7 = 68;
  v8 = &a3[*(_DWORD *)(v5 + 8) * v7];
  if ( a3 != v8 )
  {
    v9 = (const void **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12));
    v10 = 0;
    v11 = a3;
    do
    {
      v10 += v7;
      glitch::video::detail::getMatrixParameter(v9, v11);
      v11 = &a3[v10];
      ++v9;
    }
    while ( v8 != &a3[v10] );
  }
  return 1;
}


// ===== 5d2fa0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(ushort,glitch::core::CMatrix4<float> *,int) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(
        int a1,
        unsigned int a2,
        char *a3,
        int a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5d2fa4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(ushort,uint,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 11 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 4 * a3), a4);
  return 1;
}


// ===== 5d3000 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,glitch::core::SProcessBufferAllocator<ushort>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::_M_erase(
        int a1,
        glitch::core *a2)
{
  glitch::core *v2; // r4
  glitch::core *v4; // r6
  void *v5; // r1

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::_M_erase(
        a1,
        *((_DWORD *)v2 + 3));
      v4 = *((glitch::core **)v2 + 2);
      glitch::core::releaseProcessBuffer(v2, v5);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 5d3034 glitch::video::CMaterialRenderer::setRenderState(uchar,uchar,glitch::video::detail::renderpass::SRenderState const&) =====
int __fastcall glitch::video::CMaterialRenderer::setRenderState(
        glitch::video::CMaterialRenderer *this,
        int a2,
        int a3,
        const glitch::video::detail::renderpass::SRenderState *a4)
{
  _DWORD *v5; // r4
  int result; // r0
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int *v11; // r5
  int v12; // r1
  int v13; // r2
  int v14; // r3

  v5 = (_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 6) + 12 * a2 + 8) + 52 * a3);
  result = memcmp(v5, a4, 0x20u);
  if ( result )
  {
    v7 = *(_DWORD *)a4;
    v8 = *((_DWORD *)a4 + 1);
    v9 = *((_DWORD *)a4 + 2);
    v10 = *((_DWORD *)a4 + 3);
    v11 = (int *)((char *)a4 + 16);
    *v5 = v7;
    v5[1] = v8;
    v5[2] = v9;
    v5[3] = v10;
    result = *v11;
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v5[4] = *v11;
    v5[5] = v12;
    v5[6] = v13;
    v5[7] = v14;
    *((_BYTE *)v5 + 48) = 1;
  }
  return result;
}


// ===== 5d308c glitch::video::CMaterialRenderer::getParameterID(char const*,ushort) =====
char *__fastcall glitch::video::CMaterialRenderer::getParameterID(
        glitch::video::CMaterialRenderer *this,
        glitch::core::detail::SSharedStringHeapEntry::SData *a2,
        _BOOL4 a3)
{
  unsigned int v4; // r5
  int *v5; // r0
  int v6; // r6
  unsigned int v7; // r12
  int v8; // r4
  int *v9; // r3
  unsigned __int16 v10; // r2
  int v11; // r6

  v4 = a3;
  v5 = (int *)glitch::core::detail::SSharedStringHeapEntry::SData::get(a2, nullptr, a3);
  if ( !v5 )
    return (char *)&elf_hash_bucket[16328] + 3;
  v6 = *v5 + 1;
  *v5 = v6;
  v7 = *((unsigned __int16 *)this + 7);
  if ( v4 >= v7 )
  {
LABEL_12:
    v4 = 0xFFFF;
  }
  else
  {
    v8 = *((_DWORD *)this + 8);
    while ( 1 )
    {
      v9 = *(int **)(v8 + 16 * v4);
      v10 = v4 + 1;
      if ( v9 )
        ++v9;
      if ( v5 + 1 == v9 )
        break;
      v4 = v10;
      if ( v10 >= v7 )
        goto LABEL_12;
    }
  }
  v11 = v6 - 1;
  *v5 = v11;
  if ( v11 )
    return (char *)v4;
  glitch::core::detail::SSharedStringHeapEntry::SData::release(v5);
  return (char *)v4;
}


// ===== 5d3124 glitch::video::CMaterialRenderer::CMaterialRenderer(glitch::video::IVideoDriver *,ushort,char const*,glitch::video::detail::material_renderer_manager::STechniqueList const&,ushort,ushort,glitch::video::SShaderParameterDef const* const*,uint,ushort,ushort const*) =====
int __fastcall glitch::video::CMaterialRenderer::CMaterialRenderer(
        int a1,
        int a2,
        __int16 a3,
        const char *a4,
        _DWORD *a5,
        unsigned __int16 a6,
        unsigned __int16 a7,
        int a8,
        int a9,
        unsigned __int16 a10,
        char *a11)
{
  unsigned __int8 v11; // r1
  int v12; // r0
  _DWORD *v13; // r3
  int v14; // lr
  int v15; // r1
  int v16; // r2
  int v17; // r3
  char v18; // r3
  int v19; // r6
  _DWORD *v20; // r4
  int v21; // r10
  _WORD *v22; // r3
  __int16 v23; // r2
  __int16 v24; // r0
  __int16 v25; // r1
  __int16 v26; // r3
  char *v27; // r9
  char *v28; // r5
  int v29; // r11
  _DWORD *v30; // r3
  int v31; // r1
  unsigned int v32; // r8
  int v33; // r7
  unsigned int v34; // r6
  int v35; // r4
  int v36; // r2
  char *v37; // r8
  char *v38; // r1
  char *v39; // r11
  char *v40; // r7
  char *v41; // r2
  char *v42; // r10
  char *v43; // r3
  int v44; // r0
  int v45; // r0
  bool v46; // zf
  __int16 v47; // lr
  int v48; // r6
  size_t v49; // r9
  char *v50; // r7
  __int16 v51; // r0
  char *v52; // r1
  _DWORD *v53; // r12
  int v54; // r1
  int v55; // r2
  int v56; // r3
  _DWORD *v57; // r12
  int v58; // r1
  int v59; // r2
  int v60; // r3
  int v61; // r3
  _DWORD *v62; // r2
  int v63; // r3
  int v64; // r12
  int v65; // r3
  int v66; // r0
  int v67; // r2
  _DWORD *v68; // r1
  size_t v69; // r2
  char *v70; // r0
  __int16 v72; // lr
  int v73; // [sp+0h] [bp-4Ch]
  char *v74; // [sp+4h] [bp-48h]
  int v75; // [sp+8h] [bp-44h]
  int v76; // [sp+Ch] [bp-40h]
  __int16 v77; // [sp+Ch] [bp-40h]
  char *v78; // [sp+10h] [bp-3Ch]
  int v79; // [sp+14h] [bp-38h]
  _DWORD *v80; // [sp+18h] [bp-34h]
  int v81; // [sp+1Ch] [bp-30h]
  _DWORD *v83; // [sp+24h] [bp-28h]
  int v84; // [sp+28h] [bp-24h]
  int v85; // [sp+2Ch] [bp-20h]
  int v86; // [sp+30h] [bp-1Ch]
  _DWORD *v88; // [sp+38h] [bp-14h]

  v11 = 0;
  *(_WORD *)(a1 + 12) = a3;
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_WORD *)(a1 + 14) = a7;
  *(_DWORD *)(a1 + 4) = a2;
  v88 = (_DWORD *)*a5;
  v12 = a9;
  if ( (_DWORD *)*a5 != a5 )
  {
    v13 = (_DWORD *)*a5;
    do
    {
      v13 = (_DWORD *)*v13;
      ++v11;
    }
    while ( a5 != v13 );
    v88 = v13;
  }
  v14 = v11;
  v15 = a1 + 40;
  v16 = a1 + 40 + 12 * v14;
  v17 = v16 + 16 * a7;
  v84 = v17 + a9;
  *(_DWORD *)(a1 + 36) = v17;
  *(_BYTE *)(a1 + 17) = 1;
  *(_BYTE *)(a1 + 16) = v14;
  *(_DWORD *)(a1 + 20) = a9;
  *(_DWORD *)(a1 + 24) = a1 + 40;
  *(_DWORD *)(a1 + 32) = v16;
  if ( a10 )
    v17 = 52;
  *(_DWORD *)(a1 + 28) = v84;
  if ( a10 )
    v15 = v84;
  else
    v12 = 0;
  if ( a10 )
    v17 = v15 + v17 * a6;
  else
    v78 = (char *)v12;
  if ( a10 )
    v78 = (char *)v17;
  v83 = (_DWORD *)*a5;
  if ( (_DWORD *)*a5 != v88 )
  {
    v86 = a1;
    while ( 1 )
    {
      v18 = *((_BYTE *)v83 + 12);
      if ( v18 )
        break;
LABEL_55:
      v62 = (_DWORD *)v83[2];
      *(_DWORD *)(v86 + 40) = v62;
      if ( v62 )
        ++*v62;
      *(_BYTE *)(v86 + 44) = v18;
      *(_DWORD *)(v86 + 48) = v84;
      v63 = *((unsigned __int8 *)v83 + 12);
      v86 += 12;
      v83 = (_DWORD *)*v83;
      v84 += 52 * v63;
      if ( v83 == v88 )
        goto LABEL_58;
    }
    v19 = 52;
    v85 = 52 * (unsigned __int8)(v18 - 1) + 52;
    v73 = v84;
    v75 = 0;
    while ( 1 )
    {
      v20 = (_DWORD *)(v83[4] + v75);
      v21 = v20[9];
      v22 = (_WORD *)v20[8];
      v23 = v22[26];
      v24 = v22[23];
      v25 = v22[22];
      if ( !v21 )
        v19 = 0;
      v26 = v22[27];
      if ( v21 )
        break;
      v76 = v20[9];
      v74 = nullptr;
LABEL_51:
      v53 = (_DWORD *)(v84 + v75);
      v54 = v20[1];
      v55 = v20[2];
      v56 = v20[3];
      *v53 = *v20;
      v53[1] = v54;
      v53[2] = v55;
      v53[3] = v56;
      v57 = (_DWORD *)(v84 + v75 + 16);
      v58 = v20[5];
      v59 = v20[6];
      v60 = v20[7];
      *v57 = v20[4];
      v57[1] = v58;
      v57[2] = v59;
      v57[3] = v60;
      v61 = v20[8];
      *(_DWORD *)(v73 + 32) = v61;
      if ( v61 )
        ++*(_DWORD *)(v61 + 4);
      v75 += 52;
      *(_DWORD *)(v73 + 36) = v19;
      *(_DWORD *)(v73 + 40) = v74;
      *(_WORD *)(v73 + 46) = v21;
      *(_WORD *)(v73 + 44) = v76;
      *(_BYTE *)(v73 + 48) = 1;
      v73 += 52;
      if ( v75 == v85 )
      {
        v18 = *((_BYTE *)v83 + 12);
        goto LABEL_55;
      }
    }
    v81 = (unsigned __int16)(v26 + v24 - v25 - v23);
    v79 = 2 * v81;
    memcpy(v78, a11, 2 * v81);
    v27 = v78;
    v74 = &v78[2 * v81];
    v28 = v74;
    v29 = 0;
    v30 = v20;
    do
    {
      v31 = v30[8] + 8 * (v29 + 5);
      v32 = *(unsigned __int16 *)(v31 + 6);
      if ( v32 > *(unsigned __int16 *)(v31 + 4) )
      {
        v33 = 0;
        LOWORD(v34) = *(_WORD *)(v31 + 4);
        v35 = 0;
        v77 = v34;
        v80 = v30;
        do
        {
          while ( 1 )
          {
            v31 = *(unsigned __int16 *)&v27[v33];
            *(_WORD *)&v28[v35 + 2] = v31;
            *(_WORD *)&v28[v35] = ((_WORD)v29 << 15) | v34;
            if ( (v31 & 0x8000) != 0 )
              break;
            v34 = (unsigned __int16)(v34 + 1);
            v35 += 4;
            v33 += 2;
            if ( v34 >= v32 )
              goto LABEL_29;
          }
          v34 = (unsigned __int16)(v34 + 1);
          glitch::video::CGlobalMaterialParameterManager::grabInternal(*(_DWORD *)(a2 + 228), v31 & 0x7FFF);
          v35 += 4;
          v33 += 2;
        }
        while ( v34 < v32 );
LABEL_29:
        v30 = v80;
        v36 = (unsigned __int16)(v32 + ~v77) + 1;
        v27 += 2 * v36;
        v28 += 4 * v36;
      }
      ++v29;
    }
    while ( v29 != 2 );
    v20 = v30;
    v37 = (char *)glitch::core::allocProcessBuffer((glitch::core *)(4 * v81), v31);
    v38 = &v74[4 * v81];
    v39 = &v37[4 * v81];
    if ( v74 == v38 )
    {
      v48 = 0;
      v40 = &v78[2 * v81];
      v49 = 0;
      LOWORD(v21) = 0;
      LOWORD(v76) = 0;
LABEL_43:
      memcpy(v40, v37, v49);
      if ( v48 > 0 )
      {
        v50 = &v40[v49];
        do
        {
          --v48;
          *(_WORD *)v50 = *((_WORD *)v39 - 2);
          v51 = *((_WORD *)v39 - 1);
          v39 -= 4;
          *((_WORD *)v50 + 1) = v51;
          v50 += 4;
        }
        while ( v48 );
      }
      v52 = &a11[v79];
      a11 += v79;
      if ( v37 )
        glitch::core::releaseProcessBuffer((glitch::core *)v37, v52);
      v19 = v20[9];
      if ( v19 )
        v19 = (int)v78;
      v78 = v28;
      goto LABEL_51;
    }
    v40 = &v78[2 * v81];
    v41 = &v37[4 * v81];
    v42 = v37;
    v43 = v40;
    while ( 1 )
    {
      v44 = *((unsigned __int16 *)v43 + 1);
      if ( (v44 & 0x8000) != 0 )
        break;
      v45 = *(unsigned __int16 *)(*(_DWORD *)(a8 + 4 * v44) + 4);
      v46 = v45 == 2;
      if ( v45 != 2 )
        v46 = v45 == 33;
      if ( v46 || v45 == 18 )
      {
        *(_WORD *)v42 = *(_WORD *)v43;
        v47 = *((_WORD *)v43 + 1);
        v43 += 4;
        *((_WORD *)v42 + 1) = v47;
        v42 += 4;
        if ( v38 == v43 )
        {
LABEL_42:
          v21 = (unsigned __int16)((unsigned int)(v42 - v37) >> 2);
          LOWORD(v76) = (unsigned int)(v40 - v74) >> 2;
          v48 = -((v41 - v39) >> 2);
          v49 = 4 * v21;
          goto LABEL_43;
        }
      }
      else
      {
        *(_WORD *)v40 = *(_WORD *)v43;
        *((_WORD *)v40 + 1) = *((_WORD *)v43 + 1);
        v40 += 4;
LABEL_35:
        v43 += 4;
        if ( v38 == v43 )
          goto LABEL_42;
      }
    }
    v72 = *(_WORD *)v43;
    v41 -= 4;
    *((_WORD *)v41 + 1) = v44 & 0x7FFF;
    *(_WORD *)v41 = v72;
    goto LABEL_35;
  }
LABEL_58:
  v64 = a7;
  if ( a7 )
  {
    v65 = *(_DWORD *)(a1 + 32) + 16;
    v66 = 0;
    do
    {
      v67 = *(_DWORD *)(a8 + v66);
      v66 += 4;
      v68 = *(_DWORD **)v67;
      *(_DWORD *)(v65 - 16) = *(_DWORD *)v67;
      if ( v68 )
        ++*v68;
      --v64;
      *(_WORD *)(v65 - 12) = *(_WORD *)(v67 + 4);
      *(_BYTE *)(v65 - 10) = *(_BYTE *)(v67 + 6);
      *(_BYTE *)(v65 - 9) = *(_BYTE *)(v67 + 7);
      *(_DWORD *)(v65 - 8) = *(_DWORD *)(v67 + 8);
      *(_DWORD *)(v65 - 4) = *(_DWORD *)(v67 + 12);
      v65 += 16;
    }
    while ( v64 );
  }
  v69 = *(_DWORD *)(a1 + 20);
  if ( v69 )
    LC_API_MEMSET_0(*(void **)(a1 + 36), 0, v69);
  v70 = (char *)(v84 + 4 * ((3 * a10 + 1) >> 1));
  *(_DWORD *)(a1 + 8) = v70;
  LC_API_STRCPY_0(v70, a4);
  return a1;
}


// ===== 5d36cc glitch::video::CMaterialRenderer::CMaterialRenderer(glitch::video::IVideoDriver *,ushort,char const*,glitch::video::detail::material_renderer_manager::STechniqueList const&,ushort,ushort,glitch::video::SShaderParameterDef const* const*,uint,ushort,ushort const*) =====
int __fastcall glitch::video::CMaterialRenderer::CMaterialRenderer(
        int a1,
        int a2,
        __int16 a3,
        const char *a4,
        _DWORD *a5,
        unsigned __int16 a6,
        unsigned __int16 a7,
        int a8,
        int a9,
        unsigned __int16 a10,
        char *a11)
{
  unsigned __int8 v11; // r1
  int v12; // r0
  _DWORD *v13; // r3
  int v14; // lr
  int v15; // r1
  int v16; // r2
  int v17; // r3
  char v18; // r3
  int v19; // r6
  _DWORD *v20; // r4
  int v21; // r10
  _WORD *v22; // r3
  __int16 v23; // r2
  __int16 v24; // r0
  __int16 v25; // r1
  __int16 v26; // r3
  char *v27; // r9
  char *v28; // r5
  int v29; // r11
  _DWORD *v30; // r3
  int v31; // r1
  unsigned int v32; // r8
  int v33; // r7
  unsigned int v34; // r6
  int v35; // r4
  int v36; // r2
  char *v37; // r8
  char *v38; // r1
  char *v39; // r11
  char *v40; // r7
  char *v41; // r2
  char *v42; // r10
  char *v43; // r3
  int v44; // r0
  int v45; // r0
  bool v46; // zf
  __int16 v47; // lr
  int v48; // r6
  size_t v49; // r9
  char *v50; // r7
  __int16 v51; // r0
  char *v52; // r1
  _DWORD *v53; // r12
  int v54; // r1
  int v55; // r2
  int v56; // r3
  _DWORD *v57; // r12
  int v58; // r1
  int v59; // r2
  int v60; // r3
  int v61; // r3
  _DWORD *v62; // r2
  int v63; // r3
  int v64; // r12
  int v65; // r3
  int v66; // r0
  int v67; // r2
  _DWORD *v68; // r1
  size_t v69; // r2
  char *v70; // r0
  __int16 v72; // lr
  int v73; // [sp+0h] [bp-4Ch]
  char *v74; // [sp+4h] [bp-48h]
  int v75; // [sp+8h] [bp-44h]
  int v76; // [sp+Ch] [bp-40h]
  __int16 v77; // [sp+Ch] [bp-40h]
  char *v78; // [sp+10h] [bp-3Ch]
  int v79; // [sp+14h] [bp-38h]
  _DWORD *v80; // [sp+18h] [bp-34h]
  int v81; // [sp+1Ch] [bp-30h]
  _DWORD *v83; // [sp+24h] [bp-28h]
  int v84; // [sp+28h] [bp-24h]
  int v85; // [sp+2Ch] [bp-20h]
  int v86; // [sp+30h] [bp-1Ch]
  _DWORD *v88; // [sp+38h] [bp-14h]

  v11 = 0;
  *(_WORD *)(a1 + 12) = a3;
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_WORD *)(a1 + 14) = a7;
  *(_DWORD *)(a1 + 4) = a2;
  v88 = (_DWORD *)*a5;
  v12 = a9;
  if ( (_DWORD *)*a5 != a5 )
  {
    v13 = (_DWORD *)*a5;
    do
    {
      v13 = (_DWORD *)*v13;
      ++v11;
    }
    while ( a5 != v13 );
    v88 = v13;
  }
  v14 = v11;
  v15 = a1 + 40;
  v16 = a1 + 40 + 12 * v14;
  v17 = v16 + 16 * a7;
  v84 = v17 + a9;
  *(_DWORD *)(a1 + 36) = v17;
  *(_BYTE *)(a1 + 17) = 1;
  *(_BYTE *)(a1 + 16) = v14;
  *(_DWORD *)(a1 + 20) = a9;
  *(_DWORD *)(a1 + 24) = a1 + 40;
  *(_DWORD *)(a1 + 32) = v16;
  if ( a10 )
    v17 = 52;
  *(_DWORD *)(a1 + 28) = v84;
  if ( a10 )
    v15 = v84;
  else
    v12 = 0;
  if ( a10 )
    v17 = v15 + v17 * a6;
  else
    v78 = (char *)v12;
  if ( a10 )
    v78 = (char *)v17;
  v83 = (_DWORD *)*a5;
  if ( (_DWORD *)*a5 != v88 )
  {
    v86 = a1;
    while ( 1 )
    {
      v18 = *((_BYTE *)v83 + 12);
      if ( v18 )
        break;
LABEL_55:
      v62 = (_DWORD *)v83[2];
      *(_DWORD *)(v86 + 40) = v62;
      if ( v62 )
        ++*v62;
      *(_BYTE *)(v86 + 44) = v18;
      *(_DWORD *)(v86 + 48) = v84;
      v63 = *((unsigned __int8 *)v83 + 12);
      v86 += 12;
      v83 = (_DWORD *)*v83;
      v84 += 52 * v63;
      if ( v83 == v88 )
        goto LABEL_58;
    }
    v19 = 52;
    v85 = 52 * (unsigned __int8)(v18 - 1) + 52;
    v73 = v84;
    v75 = 0;
    while ( 1 )
    {
      v20 = (_DWORD *)(v83[4] + v75);
      v21 = v20[9];
      v22 = (_WORD *)v20[8];
      v23 = v22[26];
      v24 = v22[23];
      v25 = v22[22];
      if ( !v21 )
        v19 = 0;
      v26 = v22[27];
      if ( v21 )
        break;
      v76 = v20[9];
      v74 = nullptr;
LABEL_51:
      v53 = (_DWORD *)(v84 + v75);
      v54 = v20[1];
      v55 = v20[2];
      v56 = v20[3];
      *v53 = *v20;
      v53[1] = v54;
      v53[2] = v55;
      v53[3] = v56;
      v57 = (_DWORD *)(v84 + v75 + 16);
      v58 = v20[5];
      v59 = v20[6];
      v60 = v20[7];
      *v57 = v20[4];
      v57[1] = v58;
      v57[2] = v59;
      v57[3] = v60;
      v61 = v20[8];
      *(_DWORD *)(v73 + 32) = v61;
      if ( v61 )
        ++*(_DWORD *)(v61 + 4);
      v75 += 52;
      *(_DWORD *)(v73 + 36) = v19;
      *(_DWORD *)(v73 + 40) = v74;
      *(_WORD *)(v73 + 46) = v21;
      *(_WORD *)(v73 + 44) = v76;
      *(_BYTE *)(v73 + 48) = 1;
      v73 += 52;
      if ( v75 == v85 )
      {
        v18 = *((_BYTE *)v83 + 12);
        goto LABEL_55;
      }
    }
    v81 = (unsigned __int16)(v26 + v24 - v25 - v23);
    v79 = 2 * v81;
    memcpy(v78, a11, 2 * v81);
    v27 = v78;
    v74 = &v78[2 * v81];
    v28 = v74;
    v29 = 0;
    v30 = v20;
    do
    {
      v31 = v30[8] + 8 * (v29 + 5);
      v32 = *(unsigned __int16 *)(v31 + 6);
      if ( v32 > *(unsigned __int16 *)(v31 + 4) )
      {
        v33 = 0;
        LOWORD(v34) = *(_WORD *)(v31 + 4);
        v35 = 0;
        v77 = v34;
        v80 = v30;
        do
        {
          while ( 1 )
          {
            v31 = *(unsigned __int16 *)&v27[v33];
            *(_WORD *)&v28[v35 + 2] = v31;
            *(_WORD *)&v28[v35] = ((_WORD)v29 << 15) | v34;
            if ( (v31 & 0x8000) != 0 )
              break;
            v34 = (unsigned __int16)(v34 + 1);
            v35 += 4;
            v33 += 2;
            if ( v34 >= v32 )
              goto LABEL_29;
          }
          v34 = (unsigned __int16)(v34 + 1);
          glitch::video::CGlobalMaterialParameterManager::grabInternal(*(_DWORD *)(a2 + 228), v31 & 0x7FFF);
          v35 += 4;
          v33 += 2;
        }
        while ( v34 < v32 );
LABEL_29:
        v30 = v80;
        v36 = (unsigned __int16)(v32 + ~v77) + 1;
        v27 += 2 * v36;
        v28 += 4 * v36;
      }
      ++v29;
    }
    while ( v29 != 2 );
    v20 = v30;
    v37 = (char *)glitch::core::allocProcessBuffer((glitch::core *)(4 * v81), v31);
    v38 = &v74[4 * v81];
    v39 = &v37[4 * v81];
    if ( v74 == v38 )
    {
      v48 = 0;
      v40 = &v78[2 * v81];
      v49 = 0;
      LOWORD(v21) = 0;
      LOWORD(v76) = 0;
LABEL_43:
      memcpy(v40, v37, v49);
      if ( v48 > 0 )
      {
        v50 = &v40[v49];
        do
        {
          --v48;
          *(_WORD *)v50 = *((_WORD *)v39 - 2);
          v51 = *((_WORD *)v39 - 1);
          v39 -= 4;
          *((_WORD *)v50 + 1) = v51;
          v50 += 4;
        }
        while ( v48 );
      }
      v52 = &a11[v79];
      a11 += v79;
      if ( v37 )
        glitch::core::releaseProcessBuffer((glitch::core *)v37, v52);
      v19 = v20[9];
      if ( v19 )
        v19 = (int)v78;
      v78 = v28;
      goto LABEL_51;
    }
    v40 = &v78[2 * v81];
    v41 = &v37[4 * v81];
    v42 = v37;
    v43 = v40;
    while ( 1 )
    {
      v44 = *((unsigned __int16 *)v43 + 1);
      if ( (v44 & 0x8000) != 0 )
        break;
      v45 = *(unsigned __int16 *)(*(_DWORD *)(a8 + 4 * v44) + 4);
      v46 = v45 == 2;
      if ( v45 != 2 )
        v46 = v45 == 33;
      if ( v46 || v45 == 18 )
      {
        *(_WORD *)v42 = *(_WORD *)v43;
        v47 = *((_WORD *)v43 + 1);
        v43 += 4;
        *((_WORD *)v42 + 1) = v47;
        v42 += 4;
        if ( v38 == v43 )
        {
LABEL_42:
          v21 = (unsigned __int16)((unsigned int)(v42 - v37) >> 2);
          LOWORD(v76) = (unsigned int)(v40 - v74) >> 2;
          v48 = -((v41 - v39) >> 2);
          v49 = 4 * v21;
          goto LABEL_43;
        }
      }
      else
      {
        *(_WORD *)v40 = *(_WORD *)v43;
        *((_WORD *)v40 + 1) = *((_WORD *)v43 + 1);
        v40 += 4;
LABEL_35:
        v43 += 4;
        if ( v38 == v43 )
          goto LABEL_42;
      }
    }
    v72 = *(_WORD *)v43;
    v41 -= 4;
    *((_WORD *)v41 + 1) = v44 & 0x7FFF;
    *(_WORD *)v41 = v72;
    goto LABEL_35;
  }
LABEL_58:
  v64 = a7;
  if ( a7 )
  {
    v65 = *(_DWORD *)(a1 + 32) + 16;
    v66 = 0;
    do
    {
      v67 = *(_DWORD *)(a8 + v66);
      v66 += 4;
      v68 = *(_DWORD **)v67;
      *(_DWORD *)(v65 - 16) = *(_DWORD *)v67;
      if ( v68 )
        ++*v68;
      --v64;
      *(_WORD *)(v65 - 12) = *(_WORD *)(v67 + 4);
      *(_BYTE *)(v65 - 10) = *(_BYTE *)(v67 + 6);
      *(_BYTE *)(v65 - 9) = *(_BYTE *)(v67 + 7);
      *(_DWORD *)(v65 - 8) = *(_DWORD *)(v67 + 8);
      *(_DWORD *)(v65 - 4) = *(_DWORD *)(v67 + 12);
      v65 += 16;
    }
    while ( v64 );
  }
  v69 = *(_DWORD *)(a1 + 20);
  if ( v69 )
    LC_API_MEMSET_0(*(void **)(a1 + 36), 0, v69);
  v70 = (char *)(v84 + 4 * ((3 * a10 + 1) >> 1));
  *(_DWORD *)(a1 + 8) = v70;
  LC_API_STRCPY_0(v70, a4);
  return a1;
}


// ===== 5d3c74 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,glitch::core::SProcessBufferAllocator<ushort>>::_M_insert(std::priv::_Rb_tree_node_base *,ushort const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
int *__fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::_M_insert(
        int *a1,
        unsigned int a2,
        int a3,
        unsigned __int16 *a4,
        int a5)
{
  _DWORD *v5; // r4
  int v7; // r0
  int v8; // r6
  __int16 v9; // r3
  int v10; // r2
  __int16 v11; // r3
  int v13; // r0
  __int16 v14; // r3

  v5 = (_DWORD *)a2;
  if ( a2 == a3 )
  {
    v8 = glitch::core::allocProcessBuffer((glitch::core *)&dword_14, a2);
    v11 = *a4;
    *(_DWORD *)(v8 + 12) = 0;
    *(_DWORD *)(v8 + 8) = 0;
    *(_WORD *)(v8 + 16) = v11;
    v5[2] = v8;
    v5[1] = v8;
    v5[3] = v8;
    v10 = a3;
  }
  else if ( a5 || (a2 = *(unsigned __int16 *)(a3 + 16), *a4 < a2) )
  {
    v7 = glitch::core::allocProcessBuffer((glitch::core *)&dword_14, a2);
    v8 = v7;
    v9 = *a4;
    *(_DWORD *)(v7 + 12) = 0;
    *(_DWORD *)(v7 + 8) = 0;
    *(_WORD *)(v7 + 16) = v9;
    v10 = a3;
    *(_DWORD *)(a3 + 8) = v7;
    if ( a3 == v5[2] )
      v5[2] = v7;
  }
  else
  {
    v13 = glitch::core::allocProcessBuffer((glitch::core *)&dword_14, a2);
    v8 = v13;
    v14 = *a4;
    *(_DWORD *)(v13 + 12) = 0;
    *(_DWORD *)(v13 + 8) = 0;
    *(_WORD *)(v13 + 16) = v14;
    v10 = a3;
    *(_DWORD *)(a3 + 12) = v13;
    if ( a3 == v5[3] )
      v5[3] = v13;
  }
  *(_DWORD *)(v8 + 4) = v10;
  std::priv::_Rb_global<bool>::_Rebalance(v8, v5 + 1);
  ++v5[4];
  *a1 = v8;
  return a1;
}


// ===== 5d3d94 std::priv::_Rb_tree<ushort,std::less<ushort>,ushort,std::priv::_Identity<ushort>,std::priv::_SetTraitsT<ushort>,glitch::core::SProcessBufferAllocator<ushort>>::insert_unique(ushort const&) =====
int __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::insert_unique(
        int a1,
        unsigned int a2,
        unsigned __int16 *a3)
{
  int v3; // r12
  unsigned int v6; // r6
  unsigned int v7; // r0
  int v8; // r5
  int v9; // r2
  int v10; // r5
  int v12; // r0
  int v13; // r3
  int v14; // r2
  int v15; // r3
  int v16; // [sp+8h] [bp-8h] BYREF
  int v17; // [sp+Ch] [bp-4h] BYREF

  v3 = *(_DWORD *)(a2 + 4);
  if ( v3 )
  {
    v6 = *a3;
    while ( 1 )
    {
      v7 = *(unsigned __int16 *)(v3 + 16);
      v8 = 1;
      if ( v7 <= v6 )
      {
        v9 = *(_DWORD *)(v3 + 12);
        v8 = 0;
      }
      else
      {
        v9 = *(_DWORD *)(v3 + 8);
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
  if ( v3 == *(_DWORD *)(a2 + 8) )
  {
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      v3);
    v15 = v17;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v6 = *a3;
    v10 = *(_DWORD *)(v3 + 12);
    v7 = *(unsigned __int16 *)(v10 + 16);
  }
  else
  {
    v12 = *(_DWORD *)(v3 + 8);
    if ( v12 )
    {
      while ( *(_DWORD *)(v12 + 12) )
        v12 = *(_DWORD *)(v12 + 12);
      if ( *a3 <= (unsigned int)*(unsigned __int16 *)(v12 + 16) )
      {
        *(_DWORD *)a1 = v12;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::_M_insert(
        &v16,
        a2,
        v3,
        a3,
        0);
      v13 = v16;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v13;
      return a1;
    }
    v14 = *(_DWORD *)(v3 + 4);
    if ( v3 == *(_DWORD *)(v14 + 8) )
    {
      while ( 1 )
      {
        v10 = *(_DWORD *)(v14 + 4);
        if ( *(_DWORD *)(v10 + 8) != v14 )
          break;
        v14 = *(_DWORD *)(v14 + 4);
      }
      v6 = *a3;
      v7 = *(unsigned __int16 *)(v10 + 16);
    }
    else
    {
      v10 = *(_DWORD *)(v3 + 4);
      v6 = *a3;
      v7 = *(unsigned __int16 *)(v14 + 16);
    }
  }
LABEL_12:
  if ( v6 > v7 )
    goto LABEL_25;
  *(_DWORD *)a1 = v10;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 5d3f14 glitch::video::CMaterialRenderer::getBindedLightCount(uchar,uchar) =====
unsigned __int16 *__fastcall glitch::video::CMaterialRenderer::getBindedLightCount(
        glitch::video::CMaterialRenderer *this,
        int a2,
        int a3)
{
  int v4; // r10
  unsigned __int16 *v5; // r11
  int v6; // r8
  int v7; // r3
  __int16 v8; // r6
  unsigned __int16 *v9; // r4
  int v10; // r6
  unsigned int v11; // r3
  int v12; // r3
  unsigned __int16 *v13; // r2
  char v15[4]; // [sp+8h] [bp-24h] BYREF
  glitch::core *v16; // [sp+Ch] [bp-20h]
  char *v17; // [sp+10h] [bp-1Ch]
  char *v18; // [sp+14h] [bp-18h]
  int v19; // [sp+18h] [bp-14h]
  char v20[8]; // [sp+20h] [bp-Ch] BYREF

  v4 = *(_DWORD *)(*((_DWORD *)this + 6) + 12 * a2 + 8) + 52 * a3;
  v5 = *(unsigned __int16 **)(v4 + 36);
  if ( v5 )
  {
    v6 = 0;
    v15[0] = 0;
    v16 = nullptr;
    v17 = v15;
    v18 = v15;
    v19 = 0;
    do
    {
      v7 = *(_DWORD *)(v4 + 32) + 8 * (v6 + 5);
      v8 = *(_WORD *)(v7 + 6) - *(_WORD *)(v7 + 4);
      if ( v8 )
      {
        v9 = v5;
        v10 = (int)&v5[(unsigned __int16)(v8 - 1) + 1];
        do
        {
          while ( 1 )
          {
            v11 = *v9;
            if ( *((unsigned __int16 *)this + 7) > v11 )
            {
              v12 = *((_DWORD *)this + 8) + 16 * v11;
              if ( v12 )
              {
                if ( *(_WORD *)(v12 + 4) == 18 )
                  break;
              }
            }
            if ( ++v9 == (unsigned __int16 *)v10 )
              goto LABEL_10;
          }
          v13 = v9++;
          std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::insert_unique(
            (int)v20,
            (unsigned int)v15,
            v13);
        }
        while ( v9 != (unsigned __int16 *)v10 );
      }
LABEL_10:
      ++v6;
    }
    while ( v6 != 2 );
    v5 = (unsigned __int16 *)(unsigned __int16)v19;
    if ( v19 )
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,unsigned short,std::priv::_Identity<unsigned short>,std::priv::_SetTraitsT<unsigned short>,glitch::core::SProcessBufferAllocator<unsigned short>>::_M_erase(
        (int)v15,
        v16);
  }
  return v5;
}


// ===== 5d402c glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 5d404c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterElement<uchar>(ushort,uint,uchar,uchar) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterElement<unsigned char>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        unsigned __int8 a5)
{
  int v5; // r1
  int v6; // r12
  int v8; // r7
  int v9; // r6
  int v10; // r8
  _BYTE *v11; // r0
  unsigned int v12; // [sp+4h] [bp-4h]

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v6]
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v6]
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  if ( v6 == 11 )
  {
    v8 = *(_DWORD *)(a1 + 36);
    v9 = *(_DWORD *)(v5 + 12);
    v10 = *(_DWORD *)(v8 + v9);
    if ( !v10 )
    {
      v12 = a4;
      v11 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)(v8 + v9) = v11;
      glitch::core::CMatrix4<float>::CMatrix4(v11, glitch::core::IdentityMatrix);
      v10 = *(_DWORD *)(v8 + v9);
      a4 = v12;
    }
    *(_BYTE *)(v10 + 64) = 0;
    *(float *)(v10 + 4 * a4) = (float)a5;
    return 1;
  }
  else
  {
    *(_BYTE *)(*(_DWORD *)(a1 + 36) + a4 + a3 + *(_DWORD *)(v5 + 12)) = a5;
    return 1;
  }
}


// ===== 5d4154 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterElement<int>(ushort,uint,uchar,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterElement<int>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        int a5)
{
  int v5; // r1
  int v6; // r6
  int v8; // r7
  int v9; // r6
  int v10; // r8
  _BYTE *v11; // r0
  unsigned int v12; // [sp+4h] [bp-4h]

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v6] != 1
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v6]
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  if ( v6 == 11 )
  {
    v8 = *(_DWORD *)(a1 + 36);
    v9 = *(_DWORD *)(v5 + 12);
    v10 = *(_DWORD *)(v8 + v9);
    if ( !v10 )
    {
      v12 = a4;
      v11 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)(v8 + v9) = v11;
      glitch::core::CMatrix4<float>::CMatrix4(v11, glitch::core::IdentityMatrix);
      v10 = *(_DWORD *)(v8 + v9);
      a4 = v12;
    }
    *(_BYTE *)(v10 + 64) = 0;
    *(float *)(v10 + 4 * a4) = (float)a5;
    return 1;
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12) + 4 * (a4 + a3)) = a5;
    return 1;
  }
}


// ===== 5d425c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterElement<float>(ushort,uint,uchar,float) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterElement<float>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        unsigned int a4,
        int a5)
{
  int v5; // r1
  int v6; // r12
  int v8; // r7
  int v9; // r6
  int v10; // r1
  _BYTE *v11; // r0
  unsigned int v12; // [sp+4h] [bp-8h]

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 )
    return 0;
  v6 = *(unsigned __int8 *)(v5 + 6);
  if ( glitch::video::detail::SShaderParameterTypeInspection::ValueTypeBaseType[v6] != 5
    || a4 >= glitch::video::detail::SShaderParameterTypeInspection::ValueTypeArraySize[v6]
    || a3 >= *(_DWORD *)(v5 + 8) )
  {
    return 0;
  }
  if ( v6 == 11 )
  {
    v8 = *(_DWORD *)(a1 + 36);
    v9 = *(_DWORD *)(v5 + 12);
    v10 = *(_DWORD *)(v8 + v9);
    if ( !v10 )
    {
      v12 = a4;
      v11 = GlitchAlloc(0x44u, 0);
      *(_DWORD *)(v8 + v9) = v11;
      glitch::core::CMatrix4<float>::CMatrix4(v11, glitch::core::IdentityMatrix);
      v10 = *(_DWORD *)(v8 + v9);
      a4 = v12;
    }
    *(_BYTE *)(v10 + 64) = 0;
    *(_DWORD *)(v10 + 4 * a4) = a5;
    return 1;
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12) + 4 * (a4 + a3)) = a5;
    return 1;
  }
}


// ===== 5d4350 boost::pool<glitch::core::SAlignedMalloc<(uchar)4>>::malloc_need_resize(void) [clone] =====
int boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize()
{
  unsigned int v0; // r4
  unsigned int v1; // r0
  unsigned int v2; // r3
  unsigned int v3; // r7
  int v4; // r9
  void *v5; // r0
  unsigned int v6; // r5
  unsigned int v7; // r0
  _DWORD *v8; // r12
  int v9; // r7
  _DWORD *v10; // r2
  _DWORD *v11; // r0
  _DWORD *v12; // r3
  char *v13; // r1
  int result; // r0

  v0 = 4;
  v1 = dword_9F75A4;
  do
  {
    v2 = v0;
    v0 = v1 % v0;
    v1 = v2;
  }
  while ( v0 );
  v3 = 4 * (dword_9F75A4 / v2);
  v4 = dword_9F75A8 * v3;
  v5 = GlitchAlloc(dword_9F75A8 * v3 + 15, 0);
  v6 = ((unsigned int)v5 + 7) & 0xFFFFFFFC;
  *(_DWORD *)(v6 - 4) = v5;
  if ( !v6 )
    return 0;
  dword_9F75A8 *= 2;
  v7 = v3 * ((v4 - v3) / v3);
  v8 = (_DWORD *)(v6 + v7);
  *(_DWORD *)(v6 + v7) = glitch::memory::Matrix4Pool;
  if ( v6 != v6 + v7 )
  {
    v9 = -v3;
    v10 = (_DWORD *)((char *)v8 + v9);
    if ( (_DWORD *)v6 == (_DWORD *)((char *)v8 + v9) )
    {
      v11 = (_DWORD *)v6;
    }
    else
    {
      v12 = (_DWORD *)((char *)v10 + v9);
      v13 = (char *)v10 + v9;
      while ( 1 )
      {
        v13 += v9;
        *v10 = v8;
        v11 = v12;
        if ( (char *)v6 == &v13[-v9] )
          break;
        v8 = v10;
        v10 = v12;
        v12 = (_DWORD *)((char *)v12 + v9);
      }
      v8 = v10;
    }
    *v11 = v8;
  }
  glitch::memory::Matrix4Pool = v6;
  *(_DWORD *)(v6 + v4) = dword_9F759C;
  *(_DWORD *)(v6 + v4 + 4) = dword_9F75A0;
  result = glitch::memory::Matrix4Pool;
  dword_9F759C = v6;
  dword_9F75A0 = v4 + 8;
  glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
  return result;
}


// ===== 5d4488 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(ushort,glitch::core::CMatrix4<float> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
        int a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  int v5; // r1
  int v7; // r7
  _BYTE *v8; // r8
  _BYTE **v9; // r6
  int v10; // r5
  _BYTE *v11; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 11 )
    return 0;
  if ( a4 )
    v7 = a4;
  else
    v7 = 68;
  v8 = &a3[*(_DWORD *)(v5 + 8) * v7];
  if ( a3 != v8 )
  {
    v9 = (_BYTE **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12));
    v10 = 0;
    v11 = a3;
    do
    {
      v10 += v7;
      glitch::video::detail::setMatrixParameter(v9, v11);
      v11 = &a3[v10];
      ++v9;
    }
    while ( v8 != &a3[v10] );
  }
  return 1;
}


// ===== 5d4514 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(ushort,glitch::core::CMatrix4<float> const*,int) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(
        int a1,
        unsigned int a2,
        _BYTE *a3,
        int a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5d4518 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(ushort,uint,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  int v4; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 11 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  glitch::video::detail::setMatrixParameter((_BYTE **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 4 * a3), a4);
  return 1;
}


// ===== 5d4578 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(ushort,uint,glitch::core::CMatrix4<float> const&) =====
// attributes: thunk
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _BYTE *a4)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
           a1,
           a2,
           a3,
           a4);
}


// ===== 5d457c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(ushort,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
        int a1,
        unsigned int a2,
        _BYTE *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5d4588 std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream(int) [clone] =====
int __fastcall std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream(
        int a1)
{
  int v1; // r8
  int v3; // r3
  int v4; // r3
  _BYTE *v5; // r3
  int v6; // r2

  v1 = a1 + 72;
  __ZNSt8ios_baseC2Ev_veneer((std::ios_base *const)(a1 + 72));
  *(_DWORD *)(a1 + 72) = off_95B8E0;
  *(_BYTE *)(v1 + 68) = 0;
  *(_DWORD *)(v1 + 72) = 0;
  *(_DWORD *)(v1 + 76) = 0;
  *(_DWORD *)a1 = off_9780CC;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780E0;
  v3 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 4) = 0;
  std::ios::init(a1 + *(_DWORD *)(v3 - 12), 0, (int)off_9780E0, v3);
  *(_DWORD *)(a1 + 8) = off_9780F4;
  *(int *)((char *)&dword_40 + a1 + 8) = (int)off_978108;
  std::ios::init(a1 + 8 + *(_DWORD *)(*(_DWORD *)(a1 + 8) - 12), 0, *(_DWORD *)(a1 + 8), a1 + 8);
  *(_DWORD *)a1 = off_97808C;
  *(int *)((char *)&dword_48 + a1) = (int)off_9780B4;
  v4 = *(_DWORD *)a1;
  *(_DWORD *)(a1 + 8) = off_9780A0;
  std::ios::init(a1 + *(_DWORD *)(v4 - 12), 0, (int)off_9780A0, v4);
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)a1 = off_97804C;
  *(_DWORD *)(a1 + 72) = off_978074;
  *(_DWORD *)(a1 + 8) = off_978060;
  *(_DWORD *)(a1 + 12) = off_95B938;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  __ZNSt6localeC1Ev_veneer((std::locale *const)(a1 + 40));
  *(_DWORD *)(a1 + 44) = 24;
  *(_DWORD *)(a1 + 12) = off_978118;
  *(_DWORD *)(a1 + 64) = a1 + 48;
  *(_DWORD *)(a1 + 68) = a1 + 48;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 48),
    0x10u);
  v5 = *(_BYTE **)(a1 + 64);
  *v5 = 0;
  std::ios::init(v1, a1 + 12, v6, (int)v5);
  return a1;
}


// ===== 5d4708 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(ushort,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(
        int a1,
        unsigned int a2,
        _BYTE *a3)
{
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
           a1,
           a2,
           0,
           a3);
}


// ===== 5d4714 glitch::video::CMaterialRenderer::getTechniqueID(char const*) =====
char *__fastcall glitch::video::CMaterialRenderer::getTechniqueID(
        glitch::video::CMaterialRenderer *this,
        glitch::core::detail::SSharedStringHeapEntry::SData *a2,
        bool a3)
{
  int *v4; // r0
  int v5; // r4
  int v6; // r7
  int v7; // r5
  int v8; // r3
  int v9; // r6
  int *v10; // r2
  unsigned __int8 v11; // r1
  int v12; // r7

  v4 = (int *)glitch::core::detail::SSharedStringHeapEntry::SData::get(a2, nullptr, a3);
  if ( !v4 )
    return (char *)&elf_hash_bucket[8] + 3;
  v6 = *v4 + 1;
  *v4 = v6;
  v7 = *((unsigned __int8 *)this + 16);
  if ( *((_BYTE *)this + 16) )
  {
    v8 = 0;
    v9 = *((_DWORD *)this + 6);
    v5 = 0;
    while ( 1 )
    {
      v10 = *(int **)(v9 + v8);
      v11 = v5 + 1;
      if ( v10 )
        ++v10;
      if ( v4 + 1 == v10 )
        break;
      v5 = v11;
      v8 += 12;
      if ( v11 == v7 )
        goto LABEL_12;
    }
  }
  else
  {
LABEL_12:
    v5 = 255;
  }
  v12 = v6 - 1;
  *v4 = v12;
  if ( v12 )
    return (char *)v5;
  glitch::core::detail::SSharedStringHeapEntry::SData::release(v4);
  return (char *)v5;
}


// ===== 5d47b4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::grabParameters(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::grabParameters(
        int a1)
{
  int v1; // r11
  int v3; // r6
  unsigned int v4; // r2
  unsigned int v5; // r3
  bool v6; // cc
  const void **v7; // r4
  const void **i; // r7
  const void *v9; // r1
  _BYTE *v10; // r5
  int v11; // r0
  const void *v12; // [sp+4h] [bp-8h]

  v1 = *(unsigned __int16 *)(a1 + 14);
  if ( *(_WORD *)(a1 + 14) )
  {
    v3 = 0;
    v4 = *(unsigned __int16 *)(a1 + 14);
    v5 = 0;
    while ( 1 )
    {
      v6 = v4 > v5;
      if ( v4 <= v5 )
        v5 = 0;
      else
        v4 = *(_DWORD *)(a1 + 32);
      if ( v6 )
        v5 = v4 + 16 * v5;
      switch ( *(_BYTE *)(v5 + 6) )
      {
        case 0xB:
          v7 = (const void **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12));
          for ( i = &v7[*(_DWORD *)(v5 + 8)]; i != v7; ++v7 )
          {
            v9 = *v7;
            if ( *v7 )
            {
              v10 = (_BYTE *)glitch::memory::Matrix4Pool;
              if ( glitch::memory::Matrix4Pool )
              {
                glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
              }
              else
              {
                v12 = *v7;
                v11 = boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize();
                v9 = v12;
                v10 = (_BYTE *)v11;
              }
              glitch::core::CMatrix4<float>::CMatrix4(v10, v9);
              *v7 = v10;
            }
          }
          goto LABEL_10;
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
            (glitch::IReferenceCounted *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)),
            *(_DWORD *)(v5 + 8));
          goto LABEL_10;
        case 0x12:
          ++v3;
          glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::CLight>>(
            (_DWORD **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12)),
            *(_DWORD *)(v5 + 8));
          v5 = (unsigned __int16)v3;
          if ( v1 == (unsigned __int16)v3 )
            return;
          goto LABEL_11;
        default:
LABEL_10:
          v5 = (unsigned __int16)++v3;
          if ( v1 == (unsigned __int16)v3 )
            return;
LABEL_11:
          v4 = *(unsigned __int16 *)(a1 + 14);
          break;
      }
    }
  }
}


// ===== 5d48f8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::dropParameter(ushort) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::dropParameter(
        int a1,
        unsigned int a2)
{
  unsigned int v2; // r3
  bool v3; // cc
  _DWORD **v4; // r5
  _DWORD **v5; // r7
  _DWORD *v6; // r3
  _DWORD *v8; // r1
  glitch::IReferenceCounted **v9; // r4
  glitch::IReferenceCounted **v10; // r5
  glitch::IReferenceCounted *v11; // r0
  _DWORD **v12; // r3
  _DWORD **i; // r12
  _DWORD *v14; // r2

  v2 = *(unsigned __int16 *)(a1 + 14);
  v3 = v2 > a2;
  if ( v2 <= a2 )
    a2 = 0;
  else
    v2 = *(_DWORD *)(a1 + 32);
  if ( v3 )
    a2 = v2 + 16 * a2;
  switch ( *(_BYTE *)(a2 + 6) )
  {
    case 0xB:
      v12 = (_DWORD **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(a2 + 12));
      for ( i = &v12[*(_DWORD *)(a2 + 8)]; i != v12; ++v12 )
      {
        v14 = *v12;
        if ( *v12 )
        {
          *v14 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v14;
          *v12 = nullptr;
        }
      }
      break;
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v9 = (glitch::IReferenceCounted **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(a2 + 12));
      v10 = &v9[*(_DWORD *)(a2 + 8)];
      while ( v10 != v9 )
      {
        v11 = *v9;
        *v9++ = nullptr;
        if ( v11 )
          glitch::IReferenceCounted::drop(v11);
      }
      break;
    case 0x12:
      v4 = (_DWORD **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(a2 + 12));
      v5 = &v4[*(_DWORD *)(a2 + 8)];
      while ( v5 != v4 )
      {
        v6 = *v4;
        *v4++ = nullptr;
        if ( v6 )
        {
          if ( (*v6)-- == 1 )
          {
            if ( !*((_BYTE *)v6 + 84) )
            {
              v8 = (_DWORD *)v6[20];
              *v8 = glitch::memory::Matrix4Pool;
              glitch::memory::Matrix4Pool = (int)v8;
            }
            v6[20] = 0;
            LC_API_FREE_0(v6);
          }
        }
      }
      break;
    default:
      return;
  }
}


// ===== 5d4a68 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::dropParameters(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::dropParameters(
        int a1)
{
  int v1; // r5
  unsigned __int16 v3; // r4
  unsigned int v4; // r1

  v1 = *(unsigned __int16 *)(a1 + 14);
  if ( *(_WORD *)(a1 + 14) )
  {
    v3 = 0;
    v4 = 0;
    do
    {
      ++v3;
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::dropParameter(
        a1,
        v4);
      v4 = v3;
    }
    while ( v1 != v3 );
  }
}


// ===== 5d4aa0 glitch::video::CMaterialRenderer::~CMaterialRenderer() =====
void __fastcall glitch::video::CMaterialRenderer::~CMaterialRenderer(glitch::video::CMaterialRenderer *this)
{
  unsigned int v2; // r11
  _DWORD **v3; // r4
  _DWORD **v4; // r10
  int v5; // r9
  unsigned int v6; // r6
  _DWORD *v7; // r7
  glitch::IReferenceCounted *v8; // r0
  __int16 *v9; // r4
  __int16 *v10; // r5
  __int16 v11; // r1
  _DWORD **v12; // r5
  _DWORD *v13; // r0
  bool v14; // zf
  _DWORD **v15; // r4
  _DWORD **v16; // r5
  _DWORD *v17; // r0
  int v18; // [sp+4h] [bp-8h]

  glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::dropParameters((int)this);
  if ( !*((_BYTE *)this + 16) )
    goto LABEL_23;
  v2 = 0;
  v18 = 12 * ((unsigned __int8)(*((_BYTE *)this + 16) - 1) + 1);
  v3 = *((_DWORD ***)this + 6);
  do
  {
    v4 = &v3[v2 / 4];
    if ( !LOBYTE(v3[v2 / 4 + 1]) )
      goto LABEL_16;
    v5 = 52 * (unsigned __int8)(LOBYTE(v3[v2 / 4 + 1]) - 1) + 52;
    v6 = 0;
    do
    {
      v7 = &v4[2][v6 / 4];
      if ( !*((_DWORD *)this + 1) )
        goto LABEL_11;
      v8 = (glitch::IReferenceCounted *)v7[8];
      v9 = (__int16 *)v7[9];
      v10 = &v9[(unsigned __int16)(*((_WORD *)v8 + 27) + *((_WORD *)v8 + 23) - *((_WORD *)v8 + 22) - *((_WORD *)v8 + 26))];
      if ( v10 != v9 )
      {
        do
        {
          while ( 1 )
          {
            v11 = *v9++;
            if ( v11 < 0 )
              break;
            if ( v10 == v9 )
              goto LABEL_11;
          }
          glitch::video::CGlobalMaterialParameterManager::dropInternal(
            *(_DWORD *)(*((_DWORD *)this + 1) + 228),
            v11 & 0x7FFF);
        }
        while ( v10 != v9 );
LABEL_11:
        v8 = (glitch::IReferenceCounted *)v7[8];
      }
      if ( v8 )
        glitch::IReferenceCounted::drop(v8);
      v6 += 52;
    }
    while ( v6 != v5 );
    v3 = *((_DWORD ***)this + 6);
LABEL_16:
    v2 += 12;
  }
  while ( v2 != v18 );
  v12 = &v3[3 * *((unsigned __int8 *)this + 16)];
  while ( v12 != v3 )
  {
    v13 = *v3;
    v3 += 3;
    if ( v13 )
    {
      v14 = (*v13)-- == 1;
      if ( v14 )
        glitch::core::detail::SSharedStringHeapEntry::SData::release(v13);
    }
  }
LABEL_23:
  v15 = *((_DWORD ***)this + 8);
  v16 = &v15[4 * *((unsigned __int16 *)this + 7)];
  while ( v16 != v15 )
  {
    v17 = *v15;
    v15 += 4;
    if ( v17 )
    {
      v14 = (*v17)-- == 1;
      if ( v14 )
        glitch::core::detail::SSharedStringHeapEntry::SData::release(v17);
    }
  }
}


// ===== 5d4c48 glitch::video::CMaterialRenderer::allocate(glitch::video::IVideoDriver *,ushort,char const*,glitch::video::detail::material_renderer_manager::STechniqueList const&,ushort,glitch::video::SShaderParameterDef const* const*,uint,ushort,ushort const*) =====
glitch::video::CMaterialRenderer **__fastcall glitch::video::CMaterialRenderer::allocate(
        glitch::video::CMaterialRenderer **a1,
        int a2,
        __int16 a3,
        char *a4,
        _DWORD *a5,
        unsigned __int16 a6,
        int a7,
        int a8,
        unsigned __int16 a9,
        char *a10)
{
  int v10; // r5
  size_t v14; // r0
  _DWORD *v15; // r3
  _DWORD *v16; // r2
  int v17; // r0
  __int16 v18; // r2
  int v19; // r3
  glitch::video::CMaterialRenderer *v20; // r0
  glitch::video::CMaterialRenderer *v21; // r7
  glitch::video::CMaterialRenderer *v22; // r3
  glitch::video::CMaterialRenderer *v25; // [sp+2Ch] [bp-8h] BYREF

  v10 = 0;
  *a1 = nullptr;
  v14 = LC_API_STRLEN_0(a4);
  v15 = (_DWORD *)*a5;
  if ( (_DWORD *)*a5 == a5 )
  {
    v17 = a8 + 16 * a6 + 41 + 4 * ((3 * a9 + 1) >> 1) + v14;
    v19 = 0;
  }
  else
  {
    v16 = (_DWORD *)*a5;
    do
    {
      v16 = (_DWORD *)*v16;
      ++v10;
    }
    while ( a5 != v16 );
    v17 = a8 + 16 * a6 + 41 + 4 * ((3 * a9 + 1) >> 1) + v14 + 12 * v10;
    LOWORD(v10) = 0;
    do
    {
      v18 = *((unsigned __int8 *)v15 + 12);
      v15 = (_DWORD *)*v15;
      v10 = (unsigned __int16)(v10 + v18);
    }
    while ( a5 != v15 );
    v19 = 52 * v10;
  }
  v20 = (glitch::video::CMaterialRenderer *)operator new[](v17 + v19, 0);
  v21 = v20;
  if ( v20 )
  {
    glitch::video::CMaterialRenderer::CMaterialRenderer((int)v20, a2, a3, a4, a5, v10, a6, a7, a8, a9, a10);
    v25 = v21;
    ++*(_DWORD *)v21;
    v22 = v25;
    v25 = *a1;
    *a1 = v22;
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v25);
  }
  return a1;
}


// ===== 5d4d8c glitch::video::CMaterialRenderer::~CMaterialRenderer() =====
void __fastcall glitch::video::CMaterialRenderer::~CMaterialRenderer(glitch::video::CMaterialRenderer *this)
{
  unsigned int v2; // r11
  _DWORD **v3; // r4
  _DWORD **v4; // r10
  int v5; // r9
  unsigned int v6; // r6
  _DWORD *v7; // r7
  glitch::IReferenceCounted *v8; // r0
  __int16 *v9; // r4
  __int16 *v10; // r5
  __int16 v11; // r1
  _DWORD **v12; // r5
  _DWORD *v13; // r0
  bool v14; // zf
  _DWORD **v15; // r4
  _DWORD **v16; // r5
  _DWORD *v17; // r0
  int v18; // [sp+4h] [bp-8h]

  glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::dropParameters((int)this);
  if ( !*((_BYTE *)this + 16) )
    goto LABEL_23;
  v2 = 0;
  v18 = 12 * ((unsigned __int8)(*((_BYTE *)this + 16) - 1) + 1);
  v3 = *((_DWORD ***)this + 6);
  do
  {
    v4 = &v3[v2 / 4];
    if ( !LOBYTE(v3[v2 / 4 + 1]) )
      goto LABEL_16;
    v5 = 52 * (unsigned __int8)(LOBYTE(v3[v2 / 4 + 1]) - 1) + 52;
    v6 = 0;
    do
    {
      v7 = &v4[2][v6 / 4];
      if ( !*((_DWORD *)this + 1) )
        goto LABEL_11;
      v8 = (glitch::IReferenceCounted *)v7[8];
      v9 = (__int16 *)v7[9];
      v10 = &v9[(unsigned __int16)(*((_WORD *)v8 + 27) + *((_WORD *)v8 + 23) - *((_WORD *)v8 + 22) - *((_WORD *)v8 + 26))];
      if ( v10 != v9 )
      {
        do
        {
          while ( 1 )
          {
            v11 = *v9++;
            if ( v11 < 0 )
              break;
            if ( v10 == v9 )
              goto LABEL_11;
          }
          glitch::video::CGlobalMaterialParameterManager::dropInternal(
            *(_DWORD *)(*((_DWORD *)this + 1) + 228),
            v11 & 0x7FFF);
        }
        while ( v10 != v9 );
LABEL_11:
        v8 = (glitch::IReferenceCounted *)v7[8];
      }
      if ( v8 )
        glitch::IReferenceCounted::drop(v8);
      v6 += 52;
    }
    while ( v6 != v5 );
    v3 = *((_DWORD ***)this + 6);
LABEL_16:
    v2 += 12;
  }
  while ( v2 != v18 );
  v12 = &v3[3 * *((unsigned __int8 *)this + 16)];
  while ( v12 != v3 )
  {
    v13 = *v3;
    v3 += 3;
    if ( v13 )
    {
      v14 = (*v13)-- == 1;
      if ( v14 )
        glitch::core::detail::SSharedStringHeapEntry::SData::release(v13);
    }
  }
LABEL_23:
  v15 = *((_DWORD ***)this + 8);
  v16 = &v15[4 * *((unsigned __int16 *)this + 7)];
  while ( v16 != v15 )
  {
    v17 = *v15;
    v15 += 4;
    if ( v17 )
    {
      v14 = (*v17)-- == 1;
      if ( v14 )
        glitch::core::detail::SSharedStringHeapEntry::SData::release(v17);
    }
  }
}


// ===== 5d4f34 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int **a4)
{
  int v4; // r1
  int *v6; // r3
  int v7; // r4
  int v8; // r1
  int v9; // r2
  _DWORD *v10; // r0
  _DWORD *v12; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 18 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *a4;
  v7 = *(_DWORD *)(v4 + 12);
  v8 = *(_DWORD *)(a1 + 36);
  if ( v6 )
    a1 = *v6;
  v9 = v7 + 4 * a3;
  if ( v6 )
    *v6 = a1 + 1;
  v10 = *(_DWORD **)(v8 + v9);
  *(_DWORD *)(v8 + v9) = v6;
  if ( !v10 )
    return 1;
  if ( (*v10)-- != 1 )
    return 1;
  if ( !*((_BYTE *)v10 + 84) )
  {
    v12 = (_DWORD *)v10[20];
    *v12 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v12;
  }
  v10[20] = 0;
  LC_API_FREE_0(v10);
  return 1;
}


// ===== 5d5004 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v5; // r1
  int v7; // r7
  int v8; // r10
  int v9; // r6
  int v10; // r8
  _DWORD *v11; // r3
  _DWORD *v12; // r2
  _DWORD *v14; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || *(_BYTE *)(v5 + 6) != 18 )
    return 0;
  v7 = *(_DWORD *)(v5 + 8);
  if ( a4 )
    v8 = a4;
  else
    v8 = 4;
  if ( v7 )
  {
    v9 = 0;
    v10 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12);
    do
    {
      v11 = *a3;
      a3 = (_DWORD **)((char *)a3 + v8);
      if ( v11 )
        ++*v11;
      v12 = *(_DWORD **)(v10 + v9);
      *(_DWORD *)(v10 + v9) = v11;
      v9 += 4;
      if ( v12 )
      {
        if ( (*v12)-- == 1 )
        {
          if ( !*((_BYTE *)v12 + 84) )
          {
            v14 = (_DWORD *)v12[20];
            *v14 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v14;
          }
          v12[20] = 0;
          LC_API_FREE_0(v12);
        }
      }
      --v7;
    }
    while ( v7 );
  }
  return 1;
}


// ===== 5d50f0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD **a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x40000) == 0
    || a3 >= *(_DWORD *)(v4 + 8) )
  {
    return 0;
  }
  v6 = *(_DWORD *)(a1 + 36);
  if ( v5 == 18 )
    boost::intrusive_ptr<glitch::video::CLight>::operator=(a4, (_DWORD **)(v6 + *(_DWORD *)(v4 + 12)));
  return 1;
}


// ===== 5d5174 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        _DWORD **a4)
{
  int v4; // r1
  int v5; // r4
  int v6; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *(unsigned __int8 *)(v4 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v5] & 0x40000) == 0
    || a3 >= *(_DWORD *)(v4 + 8) )
  {
    return 0;
  }
  v6 = *(_DWORD *)(a1 + 36);
  if ( v5 == 18 )
    boost::intrusive_ptr<glitch::video::CLight>::operator=((_DWORD **)(v6 + *(_DWORD *)(v4 + 12)), a4);
  return 1;
}


// ===== 5d51f8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(ushort,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
        int a1,
        unsigned int a2,
        void *a3)
{
  int v3; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v3 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v3 || *(_BYTE *)(v3 + 6) != 11 || !*(_DWORD *)(v3 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v3 + 12)), a3);
  return 1;
}


// ===== 5d5250 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(ushort,uint,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void *a4)
{
  int v4; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 11 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 4 * a3), a4);
  return 1;
}


// ===== 5d52ac glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        glitch::IReferenceCounted **a3,
        int a4)
{
  glitch::IReferenceCounted **v4; // r4
  int v6; // r1
  bool v7; // zf
  int v8; // r6
  int v9; // r5
  int v10; // r8
  glitch::IReferenceCounted *v11; // r3
  glitch::IReferenceCounted *v12; // r0

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 || (unsigned int)*(unsigned __int8 *)(v6 + 6) - 12 > 3 )
    return 0;
  v7 = a4 == 0;
  if ( a4 )
    v7 = a4 == 4;
  if ( v7 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 4 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v8 = 0;
    v9 = *(_DWORD *)(v6 + 8);
    if ( v9 )
    {
      v10 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
      do
      {
        v11 = *(glitch::IReferenceCounted **)(v10 + v8);
        v8 += 4;
        if ( v11 )
          ++*((_DWORD *)v11 + 1);
        v12 = *v4;
        *v4 = v11;
        v4 = (glitch::IReferenceCounted **)((char *)v4 + a4);
        if ( v12 )
          glitch::IReferenceCounted::drop(v12);
        --v9;
      }
      while ( v9 );
    }
    return 1;
  }
}


// ===== 5d5378 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        void **a3,
        int a4)
{
  void **v4; // r5
  int v6; // r1
  bool v8; // zf
  int v9; // r7
  int v10; // r6
  int v11; // r10
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  _DWORD *v14; // r1

  v4 = a3;
  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 || *(_BYTE *)(v6 + 6) != 18 )
    return 0;
  v8 = a4 == 0;
  if ( a4 )
    v8 = a4 == 4;
  if ( v8 )
  {
    memcpy(a3, (const void *)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12)), 4 * *(_DWORD *)(v6 + 8));
    return 1;
  }
  else
  {
    v9 = 0;
    v10 = *(_DWORD *)(v6 + 8);
    if ( v10 )
    {
      v11 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
      do
      {
        v12 = *(_DWORD **)(v11 + v9);
        v9 += 4;
        if ( v12 )
          ++*v12;
        v13 = *v4;
        *v4 = v12;
        v4 = (void **)((char *)v4 + a4);
        if ( v13 )
        {
          v8 = (*v13)-- == 1;
          if ( v8 )
          {
            if ( !*((_BYTE *)v13 + 84) )
            {
              v14 = (_DWORD *)v13[20];
              *v14 = glitch::memory::Matrix4Pool;
              glitch::memory::Matrix4Pool = (int)v14;
            }
            v13[20] = 0;
            LC_API_FREE_0(v13);
          }
        }
        --v10;
      }
      while ( v10 );
    }
    return 1;
  }
}


// ===== 5d5490 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
        int a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<float>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (glitch::IReferenceCounted **)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (void **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d55cc glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v6; // r1
  int v7; // r3
  int v9; // r6
  int v10; // r7
  int v11; // r10
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  _DWORD *v15; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x40000) == 0 )
    return 0;
  if ( a4 )
  {
    if ( v7 == 18 )
    {
      v9 = *(_DWORD *)(v6 + 8);
      if ( v9 )
      {
        v10 = 0;
        v11 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
        do
        {
          v12 = *(_DWORD **)(v11 + v10);
          v10 += 4;
          if ( v12 )
            ++*v12;
          v13 = *a3;
          *a3 = v12;
          a3 = (_DWORD **)((char *)a3 + a4);
          if ( v13 )
          {
            if ( (*v13)-- == 1 )
            {
              if ( !*((_BYTE *)v13 + 84) )
              {
                v15 = (_DWORD *)v13[20];
                *v15 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v15;
              }
              v13[20] = 0;
              LC_API_FREE_0(v13);
            }
          }
          --v9;
        }
        while ( v9 );
      }
    }
  }
  return 1;
}


// ===== 5d56d8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(ushort,boost::intrusive_ptr<glitch::video::CLight> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        _DWORD **a3,
        int a4)
{
  int v6; // r1
  int v7; // r3
  int v9; // r7
  int v10; // r6
  int v11; // r8
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  _DWORD *v15; // r1

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 )
    return 0;
  v7 = *(unsigned __int8 *)(v6 + 6);
  if ( (glitch::video::detail::SShaderParameterTypeInspection::Convertions[v7] & 0x40000) == 0 )
    return 0;
  if ( a4 )
  {
    if ( v7 == 18 )
    {
      v9 = *(_DWORD *)(v6 + 8);
      if ( v9 )
      {
        v10 = 0;
        v11 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
        do
        {
          v12 = *a3;
          a3 = (_DWORD **)((char *)a3 + a4);
          if ( v12 )
            ++*v12;
          v13 = *(_DWORD **)(v11 + v10);
          *(_DWORD *)(v11 + v10) = v12;
          v10 += 4;
          if ( v13 )
          {
            if ( (*v13)-- == 1 )
            {
              if ( !*((_BYTE *)v13 + 84) )
              {
                v15 = (_DWORD *)v13[20];
                *v15 = glitch::memory::Matrix4Pool;
                glitch::memory::Matrix4Pool = (int)v15;
              }
              v13[20] = 0;
              LC_API_FREE_0(v13);
            }
          }
          --v9;
        }
        while ( v9 );
      }
    }
  }
  return 1;
}


// ===== 5d57e4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v4; // r4
  int result; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || (unsigned int)*(unsigned __int8 *)(v4 + 6) - 12 > 3 )
    return 0;
  if ( !a4 )
    return 1;
  switch ( *(_BYTE *)(v4 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      glitch::video::detail::setArrayParameter(
        (glitch::IReferenceCounted *)v4,
        *(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12),
        a3,
        a4);
      result = 1;
      break;
    default:
      return 1;
  }
  return result;
}


// ===== 5d5860 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(
        int a1,
        unsigned int a2,
        int a3,
        int *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<float>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 (char *)a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 (unsigned __int8 *)a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d599c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture> const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        int *a3,
        int a4)
{
  int v5; // r12

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v5 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v5 || (unsigned int)*(unsigned __int8 *)(v5 + 6) - 12 > 3 )
    return 0;
  if ( !a4 )
    a4 = 4;
  glitch::video::detail::setArrayParameter(
    (glitch::IReferenceCounted *)v5,
    *(_DWORD *)(a1 + 36) + *(_DWORD *)(v5 + 12),
    a3,
    a4);
  return 1;
}


// ===== 5d59f4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
        int a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<float>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (int *)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d5b30 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(ushort,glitch::core::CMatrix4<float> &) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(
        int a1,
        unsigned int a2,
        void *a3)
{
  int v3; // r3

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v3 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v3 || *(_BYTE *)(v3 + 6) != 11 || !*(_DWORD *)(v3 + 8) )
    return 0;
  glitch::video::detail::getMatrixParameter((const void **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v3 + 12)), a3);
  return 1;
}


// ===== 5d5b88 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::initParametersToIdentity(void) =====
void __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::initParametersToIdentity(
        int a1)
{
  int v1; // r6
  int v3; // r12
  int v4; // r4
  unsigned int v5; // r2
  unsigned int v6; // r3
  bool v7; // cc
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r0
  _DWORD *v12; // r3
  _DWORD *v13; // r2
  glitch::IReferenceCounted *v14; // r0
  _DWORD *v15; // r0
  _DWORD *v17; // r3
  _DWORD *v18; // r2
  int v19; // [sp+4h] [bp-8h]
  int v20; // [sp+4h] [bp-8h]

  v1 = *(unsigned __int16 *)(a1 + 14);
  if ( *(_WORD *)(a1 + 14) )
  {
    v3 = 15552;
    v4 = 0;
    v5 = *(unsigned __int16 *)(a1 + 14);
    v6 = 0;
    while ( 1 )
    {
      v7 = v5 > v6;
      if ( v5 <= v6 )
        v6 = 0;
      else
        v5 = *(_DWORD *)(a1 + 32);
      if ( v7 )
        v6 = v5 + 16 * v6;
      v8 = *(unsigned __int8 *)(v6 + 6);
      v9 = *(_DWORD *)(a1 + 36);
      v10 = *(_DWORD *)(v6 + 12);
      v11 = v9 + v10;
      switch ( v8 )
      {
        case 0:
          *(_BYTE *)(v9 + v10) = 0;
          goto LABEL_11;
        case 1:
          *(_DWORD *)(v9 + v10) = 0;
          goto LABEL_11;
        case 2:
          *(_DWORD *)(v9 + v10) = 0;
          *(_DWORD *)(v11 + 4) = 0;
          goto LABEL_11;
        case 3:
          *(_DWORD *)(v9 + v10) = 0;
          *(_DWORD *)(v11 + 8) = 0;
          *(_DWORD *)(v11 + 4) = 0;
          goto LABEL_11;
        case 4:
          *(_DWORD *)(v9 + v10) = 0;
          *(_DWORD *)(v11 + 12) = 0;
          *(_DWORD *)(v11 + 4) = 0;
          *(_DWORD *)(v11 + 8) = 0;
          goto LABEL_11;
        case 5:
          *(_DWORD *)(v9 + v10) = 0;
          goto LABEL_11;
        case 6:
          *(_DWORD *)(v9 + v10) = 0;
          *(_DWORD *)(v11 + 4) = 0;
          goto LABEL_11;
        case 7:
          *(_DWORD *)(v9 + v10) = 0;
          *(_DWORD *)(v11 + 8) = 0;
          *(_DWORD *)(v11 + 4) = 0;
          goto LABEL_11;
        case 8:
          *(_DWORD *)(v9 + v10) = 1065353216;
          *(_DWORD *)(v11 + 12) = 1065353216;
          *(_DWORD *)(v11 + 4) = 1065353216;
          *(_DWORD *)(v11 + 8) = 1065353216;
          goto LABEL_11;
        case 11:
          v12 = *(_DWORD **)(v9 + v10);
          if ( v12 )
          {
            v13 = *(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v3);
            *v12 = *v13;
            *v13 = v12;
          }
          goto LABEL_11;
        case 12:
        case 13:
        case 14:
        case 15:
          v14 = *(glitch::IReferenceCounted **)(v9 + v10);
          *(_DWORD *)(v9 + v10) = 0;
          if ( v14 )
          {
            v19 = v3;
            glitch::IReferenceCounted::drop(v14);
            v3 = v19;
          }
          goto LABEL_11;
        case 16:
          ++v4;
          *(_BYTE *)(v11 + 1) = -1;
          *(_BYTE *)(v11 + 3) = -1;
          *(_BYTE *)(v11 + 2) = -1;
          *(_BYTE *)(v9 + v10) = -1;
          v6 = (unsigned __int16)v4;
          if ( v1 == (unsigned __int16)v4 )
            return;
          goto LABEL_12;
        case 17:
          *(_DWORD *)(v11 + 4) = 1065353216;
          *(_DWORD *)(v11 + 12) = 1065353216;
          *(_DWORD *)(v11 + 8) = 1065353216;
          *(_DWORD *)(v9 + v10) = 1065353216;
          goto LABEL_11;
        case 18:
          v15 = *(_DWORD **)(v9 + v10);
          *(_DWORD *)(v9 + v10) = 0;
          if ( v15 )
          {
            if ( (*v15)-- == 1 )
            {
              if ( !*((_BYTE *)v15 + 84) )
              {
                v17 = *(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v3);
                v18 = (_DWORD *)v15[20];
                *v18 = *v17;
                *v17 = v18;
              }
              v15[20] = 0;
              v20 = v3;
              LC_API_FREE_0(v15);
              v3 = v20;
            }
          }
          goto LABEL_11;
        default:
LABEL_11:
          v6 = (unsigned __int16)++v4;
          if ( v1 == (unsigned __int16)v4 )
            return;
LABEL_12:
          v5 = *(unsigned __int16 *)(a1 + 14);
          break;
      }
    }
  }
}


// ===== 5d5da4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,boost::intrusive_ptr<glitch::video::ITexture>*,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        glitch::IReferenceCounted **a3,
        int a4)
{
  int v6; // r1
  int v7; // r6
  int v9; // r7
  int v10; // r8
  glitch::IReferenceCounted *v11; // r3
  glitch::IReferenceCounted *v12; // r0
  int v13; // r7
  int v14; // r8
  glitch::IReferenceCounted *v15; // r3
  glitch::IReferenceCounted *v16; // r0
  int v17; // r7
  int v18; // r8
  glitch::IReferenceCounted *v19; // r3
  glitch::IReferenceCounted *v20; // r0
  int v21; // r7
  int v22; // r8
  glitch::IReferenceCounted *v23; // r3
  glitch::IReferenceCounted *v24; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v6 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v6 || (unsigned int)*(unsigned __int8 *)(v6 + 6) - 12 > 3 )
    return 0;
  if ( a4 )
  {
    v7 = *(_DWORD *)(a1 + 36) + *(_DWORD *)(v6 + 12);
    switch ( *(_BYTE *)(v6 + 6) )
    {
      case 0xC:
        v17 = *(_DWORD *)(v6 + 8);
        if ( v17 )
        {
          v18 = 0;
          do
          {
            v19 = *(glitch::IReferenceCounted **)(v7 + v18);
            v18 += 4;
            if ( v19 )
              ++*((_DWORD *)v19 + 1);
            v20 = *a3;
            *a3 = v19;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v20 )
              glitch::IReferenceCounted::drop(v20);
            --v17;
          }
          while ( v17 );
        }
        break;
      case 0xD:
        v21 = *(_DWORD *)(v6 + 8);
        if ( v21 )
        {
          v22 = 0;
          do
          {
            v23 = *(glitch::IReferenceCounted **)(v7 + v22);
            v22 += 4;
            if ( v23 )
              ++*((_DWORD *)v23 + 1);
            v24 = *a3;
            *a3 = v23;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v24 )
              glitch::IReferenceCounted::drop(v24);
            --v21;
          }
          while ( v21 );
        }
        break;
      case 0xE:
        v9 = *(_DWORD *)(v6 + 8);
        if ( v9 )
        {
          v10 = 0;
          do
          {
            v11 = *(glitch::IReferenceCounted **)(v7 + v10);
            v10 += 4;
            if ( v11 )
              ++*((_DWORD *)v11 + 1);
            v12 = *a3;
            *a3 = v11;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v12 )
              glitch::IReferenceCounted::drop(v12);
            --v9;
          }
          while ( v9 );
        }
        break;
      case 0xF:
        v13 = *(_DWORD *)(v6 + 8);
        if ( v13 )
        {
          v14 = 0;
          do
          {
            v15 = *(glitch::IReferenceCounted **)(v7 + v14);
            v14 += 4;
            if ( v15 )
              ++*((_DWORD *)v15 + 1);
            v16 = *a3;
            *a3 = v15;
            a3 = (glitch::IReferenceCounted **)((char *)a3 + a4);
            if ( v16 )
              glitch::IReferenceCounted::drop(v16);
            --v13;
          }
          while ( v13 );
        }
        break;
      default:
        return 1;
    }
  }
  return 1;
}


// ===== 5d5f44 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(ushort,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *,int) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(
        int a1,
        unsigned int a2,
        int a3,
        char *a4,
        int a5)
{
  int result; // r0

  switch ( a3 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<int>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<float>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 (glitch::IReferenceCounted **)a4,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 a4,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 (float *)a4,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 (_DWORD **)a4,
                 a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d6080 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::deserializeAttributes(glitch::io::IAttributes *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::deserializeAttributes(
        int a1,
        int a2)
{
  int v2; // r7
  int v4; // r9
  unsigned int v5; // r2
  _BYTE *v6; // r1
  unsigned int v7; // r3
  int v8; // r1
  int v9; // r4
  int v10; // r6
  glitch::IReferenceCounted **v11; // r6
  int v12; // r4
  glitch::IReferenceCounted *v13; // r3
  glitch::IReferenceCounted *v14; // r0
  bool v15; // zf
  _DWORD *v16; // r2
  glitch::IReferenceCounted *v17; // r0
  _DWORD *v18; // r2
  unsigned int v19; // r3
  glitch::IReferenceCounted *v20; // r1
  glitch::IReferenceCounted *v21; // r2
  glitch::IReferenceCounted *v22; // r3
  bool v23; // cc
  glitch::IReferenceCounted *v24; // r3
  glitch::IReferenceCounted *v25; // r0
  glitch::IReferenceCounted *v26; // r11
  unsigned int v27; // r3
  unsigned int v28; // r3
  int v31; // [sp+28h] [bp-1A4h]
  _DWORD v32[4]; // [sp+38h] [bp-194h] BYREF
  _DWORD v33[3]; // [sp+48h] [bp-184h] BYREF
  _BYTE v34[68]; // [sp+54h] [bp-178h] BYREF
  _DWORD v35[17]; // [sp+98h] [bp-134h] BYREF
  _DWORD v36[4]; // [sp+DCh] [bp-F0h] BYREF
  _DWORD v37[4]; // [sp+ECh] [bp-E0h] BYREF
  _DWORD v38[3]; // [sp+FCh] [bp-D0h] BYREF
  _DWORD v39[3]; // [sp+108h] [bp-C4h] BYREF
  _DWORD v40[2]; // [sp+114h] [bp-B8h] BYREF
  _DWORD v41[2]; // [sp+11Ch] [bp-B0h] BYREF
  glitch::IReferenceCounted *v42; // [sp+124h] [bp-A8h] BYREF
  glitch::IReferenceCounted *v43; // [sp+128h] [bp-A4h] BYREF
  _BYTE v44[152]; // [sp+12Ch] [bp-A0h] BYREF

  v31 = *(unsigned __int16 *)(a1 + 14);
  if ( *(_WORD *)(a1 + 14) )
  {
    v4 = 0;
    v5 = *(unsigned __int16 *)(a1 + 14);
    v6 = v44;
    v7 = 0;
    while ( 1 )
    {
      if ( v7 >= v5 )
        v2 = 0;
      else
        v6 = (_BYTE *)a1;
      if ( v7 < v5 )
        v2 = *((_DWORD *)v6 + 8) + 16 * v7;
      v8 = *(_DWORD *)v2;
      if ( *(_DWORD *)v2 )
        v8 += 4;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 48))(a2, v8);
      v9 = *(_DWORD *)(v2 + 12);
      v10 = *(_DWORD *)(a1 + 36);
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream((int)v44);
      if ( *(_DWORD *)(v2 + 8) )
      {
        v11 = (glitch::IReferenceCounted **)(v10 + v9);
        v12 = 3;
        do
        {
          while ( 2 )
          {
            LC_API_MEMSET_0(v35, 0, 0x40u);
            LOBYTE(v35[16]) = 1;
            v35[0] = 1065353216;
            v35[5] = 1065353216;
            v35[10] = 1065353216;
            v35[15] = 1065353216;
            switch ( *(_BYTE *)(v2 + 6) )
            {
              case 1:
                *v11++ = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 92))(a2, v12);
                v28 = v12 - 2;
                ++v12;
                if ( *(_DWORD *)(v2 + 8) > v28 )
                  continue;
                goto LABEL_29;
              case 2:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 344))(v41, a2, v12);
                *v11 = (glitch::IReferenceCounted *)v41[0];
                v11[1] = (glitch::IReferenceCounted *)v41[1];
                v11 += 2;
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 3:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 368))(v39, a2, v12);
                *v11 = (glitch::IReferenceCounted *)v39[0];
                v11[1] = (glitch::IReferenceCounted *)v39[1];
                v11[2] = (glitch::IReferenceCounted *)v39[2];
                v11 += 3;
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 4:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 392))(v37, a2, v12);
                *v11 = (glitch::IReferenceCounted *)v37[0];
                v11[1] = (glitch::IReferenceCounted *)v37[1];
                v11[2] = (glitch::IReferenceCounted *)v37[2];
                v11[3] = (glitch::IReferenceCounted *)v37[3];
                v11 += 4;
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 5:
                *v11++ = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 116))(a2, v12);
                v27 = v12 - 2;
                ++v12;
                if ( *(_DWORD *)(v2 + 8) > v27 )
                  continue;
                goto LABEL_29;
              case 6:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 416))(v40, a2, v12);
                *v11 = (glitch::IReferenceCounted *)v40[0];
                v11[1] = (glitch::IReferenceCounted *)v40[1];
                v11 += 2;
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 7:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 440))(v38, a2, v12);
                *v11 = (glitch::IReferenceCounted *)v38[0];
                v11[1] = (glitch::IReferenceCounted *)v38[1];
                v11[2] = (glitch::IReferenceCounted *)v38[2];
                v11 += 3;
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 8:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 464))(v36, a2, v12);
                *v11 = (glitch::IReferenceCounted *)v36[0];
                v11[1] = (glitch::IReferenceCounted *)v36[1];
                v11[2] = (glitch::IReferenceCounted *)v36[2];
                v11[3] = (glitch::IReferenceCounted *)v36[3];
                v11 += 4;
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 0xB:
                (*(void (__fastcall **)(_BYTE *, int, int))(*(_DWORD *)a2 + 536))(v34, a2, v12);
                memcpy(v35, v34, 0x41u);
                if ( glitch::core::CMatrix4<float>::isIdentity((int)v35) )
                {
                  *v11 = nullptr;
                  goto LABEL_27;
                }
                v26 = (glitch::IReferenceCounted *)glitch::memory::Matrix4Pool;
                if ( glitch::memory::Matrix4Pool )
                  glitch::memory::Matrix4Pool = *(_DWORD *)glitch::memory::Matrix4Pool;
                else
                  v26 = (glitch::IReferenceCounted *)boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4>>::malloc_need_resize();
                glitch::core::CMatrix4<float>::CMatrix4(v26, v35);
                *v11++ = v26;
                goto LABEL_28;
              case 0xC:
              case 0xD:
              case 0xE:
              case 0xF:
                (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)a2 + 704))(&v43, a2, v12);
                v24 = v43;
                if ( v43 )
                  ++*((_DWORD *)v43 + 1);
                v25 = *v11;
                *v11 = v24;
                if ( v25 )
                  glitch::IReferenceCounted::drop(v25);
                if ( !v43 )
                  goto LABEL_27;
                glitch::IReferenceCounted::drop(v43);
                ++v11;
                break;
              case 0x10:
                v33[0] = (*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 296))(a2, v12);
                memcpy(v11++, v33, sizeof(glitch::IReferenceCounted *));
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 0x11:
                (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)a2 + 320))(v32, a2, v12);
                v20 = (glitch::IReferenceCounted *)v32[1];
                v21 = (glitch::IReferenceCounted *)v32[2];
                v22 = (glitch::IReferenceCounted *)v32[3];
                *v11 = (glitch::IReferenceCounted *)v32[0];
                v11[1] = v20;
                v11[2] = v21;
                v11[3] = v22;
                v11 += 4;
                v23 = *(_DWORD *)(v2 + 8) > (unsigned int)(v12 - 2);
                ++v12;
                if ( v23 )
                  continue;
                goto LABEL_29;
              case 0x12:
                (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)a2 + 728))(&v42, a2, v12);
                v13 = v42;
                if ( v42 )
                  ++*(_DWORD *)v42;
                v14 = *v11;
                *v11 = v13;
                if ( v14 )
                {
                  v15 = (*(_DWORD *)v14)-- == 1;
                  if ( v15 )
                  {
                    if ( !*((_BYTE *)v14 + 84) )
                    {
                      v16 = *((_DWORD **)v14 + 20);
                      *v16 = glitch::memory::Matrix4Pool;
                      glitch::memory::Matrix4Pool = (int)v16;
                    }
                    *((_DWORD *)v14 + 20) = 0;
                    LC_API_FREE_0(v14);
                  }
                }
                v17 = v42;
                if ( v42 )
                {
                  v15 = (*(_DWORD *)v42)-- == 1;
                  if ( v15 )
                  {
                    if ( !*((_BYTE *)v17 + 84) )
                    {
                      v18 = *((_DWORD **)v17 + 20);
                      *v18 = glitch::memory::Matrix4Pool;
                      glitch::memory::Matrix4Pool = (int)v18;
                    }
                    *((_DWORD *)v17 + 20) = 0;
                    LC_API_FREE_0(v17);
                  }
                }
LABEL_27:
                ++v11;
                break;
              default:
                goto LABEL_28;
            }
            break;
          }
LABEL_28:
          v19 = v12 - 2;
          ++v12;
        }
        while ( *(_DWORD *)(v2 + 8) > v19 );
      }
LABEL_29:
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)v44);
      v7 = (unsigned __int16)++v4;
      if ( v31 == (unsigned __int16)v4 )
        break;
      v5 = *(unsigned __int16 *)(a1 + 14);
    }
  }
  return 16556;
}


// ===== 5d66f4 glitch::video::CMaterialRenderer::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CMaterialRenderer::deserializeAttributes(int a1, int a2, int a3)
{
  int v5; // r10
  int v6; // r1
  int v7; // r10
  int v8; // r9
  int v9; // r5
  int v10; // r6
  int v11; // r8
  int v13; // [sp+4h] [bp-30h]
  int v15; // [sp+Ch] [bp-28h]
  char v16[16]; // [sp+1Ch] [bp-18h] BYREF

  glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::deserializeAttributes(
    a1,
    a2);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Techniques");
  if ( *(_BYTE *)(a1 + 16) )
  {
    v15 = 12 * (unsigned __int8)(*(_BYTE *)(a1 + 16) - 1) + 12;
    v13 = 0;
    do
    {
      v5 = *(_DWORD *)(a1 + 24);
      v6 = *(_DWORD *)(v5 + v13);
      v7 = v5 + v13;
      if ( v6 )
        v6 += 4;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 48))(a2, v6);
      if ( *(_BYTE *)(v7 + 4) )
      {
        v8 = 52 * (unsigned __int8)(*(_BYTE *)(v7 + 4) - 1) + 52;
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(_DWORD *)(v7 + 8);
          sprintf(v16, "Pass %u", v10);
          (*(void (__fastcall **)(int, char *))(*(_DWORD *)a2 + 48))(a2, v16);
          glitch::video::SRenderPass::deserializeAttributes(v11 + v9, a2, a3);
          v9 += 52;
          (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
          ++v10;
        }
        while ( v9 != v8 );
      }
      v13 += 12;
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
    }
    while ( v13 != v15 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
}


// ===== 5d68a0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        glitch::IReferenceCounted **a4)
{
  int v4; // r1
  glitch::IReferenceCounted *v5; // r2
  glitch::IReferenceCounted *v6; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || (unsigned int)*(unsigned __int8 *)(v4 + 6) - 12 > 3 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v5 = *(glitch::IReferenceCounted **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 4 * a3);
  if ( v5 )
    ++*((_DWORD *)v5 + 1);
  v6 = *a4;
  *a4 = v5;
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  return 1;
}


// ===== 5d691c glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r1
  int v5; // r3
  int v6; // r4
  _BOOL4 v7; // r12
  int v8; // r12
  int v9; // r1
  int v10; // r2
  glitch::IReferenceCounted *v11; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *a4;
  v6 = *(unsigned __int8 *)(v4 + 6);
  v7 = v5 ? v6 == (*(_DWORD *)(v5 + 56) & 3) + 12 : (unsigned int)(v6 - 12) <= 3;
  if ( !v7 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v8 = *(_DWORD *)(v4 + 12);
  v9 = *(_DWORD *)(a1 + 36);
  if ( v5 )
    a1 = *(_DWORD *)(v5 + 4);
  v10 = v8 + 4 * a3;
  if ( v5 )
    *(_DWORD *)(v5 + 4) = a1 + 1;
  v11 = *(glitch::IReferenceCounted **)(v9 + v10);
  *(_DWORD *)(v9 + v10) = v5;
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  return 1;
}


// ===== 5d69c8 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<float>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (int **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d6a60 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::serializeAttributes(glitch::io::IAttributes *) =====
Elf32_Rel *__fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::serializeAttributes(
        Elf32_Rel *result,
        int a2)
{
  int v2; // r9
  Elf32_Rel *r_info_high; // r12
  Elf32_Rel *v5; // r2
  unsigned int v6; // r3
  int v7; // r1
  int v8; // r5
  int StringsInternal; // r0
  int v10; // r5
  int v11; // r0
  int v12; // r5
  unsigned __int32 r_info; // r10
  unsigned int v14; // r3
  glitch::IReferenceCounted **v15; // r10
  int v16; // r5
  int v17; // r7
  std::ostream *v18; // r0
  int v19; // r2
  glitch::IReferenceCounted *v20; // r3
  void *v21; // r1
  bool v22; // zf
  glitch::IReferenceCounted *v23; // r0
  _DWORD *v24; // r2
  void *v25; // r0
  void (__fastcall *v26)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v27; // r0
  void (__fastcall *v28)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v29; // r0
  void (__fastcall *v30)(int, void *, glitch::IReferenceCounted **, _DWORD); // r6
  void *v31; // r0
  void (__fastcall *v32)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  void (__fastcall *v33)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v34)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v35)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // r6
  void (__fastcall *v36)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  int v37; // r2
  glitch::IReferenceCounted *v38; // r3
  _DWORD *v39; // r1
  bool v40; // zf
  glitch::IReferenceCounted *v41; // r3
  void (__fastcall *v42)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD); // r6
  void (__fastcall *v43)(int, _DWORD *, _DWORD *, _DWORD); // r6
  void (__fastcall *v44)(int, void *, glitch::IReferenceCounted **, _DWORD); // [sp+10h] [bp-294h]
  void (__fastcall *v45)(int, _DWORD *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, _DWORD); // [sp+10h] [bp-294h]
  void (__fastcall *v46)(int, _DWORD *, int, _DWORD); // [sp+10h] [bp-294h]
  void (__fastcall *v47)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD); // [sp+10h] [bp-294h]
  glitch::IReferenceCounted *v48; // [sp+14h] [bp-290h]
  unsigned int v49; // [sp+20h] [bp-284h]
  int v50; // [sp+2Ch] [bp-278h]
  Elf32_Rel *v51; // [sp+30h] [bp-274h]
  Elf32_Rel *v52; // [sp+34h] [bp-270h]
  _DWORD v53[16]; // [sp+50h] [bp-254h] BYREF
  char v54; // [sp+90h] [bp-214h]
  glitch::IReferenceCounted *v55; // [sp+94h] [bp-210h] BYREF
  glitch::IReferenceCounted *v56; // [sp+98h] [bp-20Ch] BYREF
  _BYTE v57[8]; // [sp+9Ch] [bp-208h] BYREF
  std::ostream v58; // [sp+A4h] [bp-200h] BYREF
  void *v59[5]; // [sp+134h] [bp-170h] BYREF
  void *v60; // [sp+148h] [bp-15Ch]
  _DWORD v61[5]; // [sp+14Ch] [bp-158h] BYREF
  _DWORD *v62; // [sp+160h] [bp-144h]
  _DWORD v63[5]; // [sp+164h] [bp-140h] BYREF
  _DWORD *v64; // [sp+178h] [bp-12Ch]
  _DWORD v65[5]; // [sp+17Ch] [bp-128h] BYREF
  _DWORD *v66; // [sp+190h] [bp-114h]
  _DWORD v67[5]; // [sp+194h] [bp-110h] BYREF
  _DWORD *v68; // [sp+1A8h] [bp-FCh]
  _DWORD v69[5]; // [sp+1ACh] [bp-F8h] BYREF
  _DWORD *v70; // [sp+1C0h] [bp-E4h]
  void *v71[5]; // [sp+1C4h] [bp-E0h] BYREF
  void *v72; // [sp+1D8h] [bp-CCh]
  void *v73[5]; // [sp+1DCh] [bp-C8h] BYREF
  void *v74; // [sp+1F0h] [bp-B4h]
  void *v75[5]; // [sp+1F4h] [bp-B0h] BYREF
  void *v76; // [sp+208h] [bp-9Ch]
  _DWORD v77[5]; // [sp+20Ch] [bp-98h] BYREF
  _DWORD *v78; // [sp+220h] [bp-84h]
  _DWORD v79[5]; // [sp+224h] [bp-80h] BYREF
  _DWORD *v80; // [sp+238h] [bp-6Ch]
  _DWORD v81[5]; // [sp+23Ch] [bp-68h] BYREF
  _DWORD *v82; // [sp+250h] [bp-54h]
  _DWORD v83[5]; // [sp+254h] [bp-50h] BYREF
  _DWORD *v84; // [sp+268h] [bp-3Ch]
  _DWORD v85[5]; // [sp+26Ch] [bp-38h] BYREF
  _DWORD *v86; // [sp+280h] [bp-24h]
  void *v87[5]; // [sp+284h] [bp-20h] BYREF
  void *p; // [sp+298h] [bp-Ch]

  v51 = result;
  r_info_high = (Elf32_Rel *)HIWORD(result[1].r_info);
  v52 = r_info_high;
  if ( HIWORD(result[1].r_info) )
  {
    v50 = 0;
    result = &stru_2EBE34;
    v5 = r_info_high;
    v6 = 0;
    while ( 1 )
    {
      if ( (unsigned int)v5 <= v6 )
        v2 = 0;
      else
        result = v51;
      if ( (unsigned int)v5 > v6 )
        v2 = result[4].r_offset + 16 * v6;
      v7 = *(_DWORD *)v2;
      if ( *(_DWORD *)v2 )
        v7 += 4;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 48))(a2, v7);
      v8 = *(unsigned __int16 *)(v2 + 4);
      StringsInternal = glitch::video::getStringsInternal(0);
      (*(void (__fastcall **)(int, char *, int, int, int))(*(_DWORD *)a2 + 244))(a2, "Type", v8, StringsInternal, 1);
      v10 = *(unsigned __int8 *)(v2 + 6);
      v11 = glitch::video::getStringsInternal(0);
      (*(void (__fastcall **)(int, const char *, int, int, int))(*(_DWORD *)a2 + 244))(a2, "Value Type", v10, v11, 1);
      (*(void (__fastcall **)(int, const char *, _DWORD, int))(*(_DWORD *)a2 + 76))(
        a2,
        "Array Size",
        *(_DWORD *)(v2 + 8),
        1);
      v12 = *(_DWORD *)(v2 + 12);
      r_info = v51[4].r_info;
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_stringstream((int)v57);
      v49 = *(_DWORD *)(v2 + 8);
      if ( v49 == 1 )
      {
        std::ostream::_M_put_nowiden(&v58, "value");
        v49 = *(_DWORD *)(v2 + 8);
      }
      v14 = v49;
      if ( v49 )
      {
        v15 = (glitch::IReferenceCounted **)(r_info + v12);
        v16 = 0;
        v17 = a2;
        while ( 1 )
        {
          if ( v14 > 1 )
          {
            v87[4] = v87;
            p = v87;
            std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
              v87,
              "",
              "");
            std::basic_stringbuf<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::str(
              (int)v58.gap4,
              (int)v87);
            if ( p != v87 && p )
              GlitchFree(p);
            std::ostream::_M_put_nowiden(&v58, "[");
            v18 = std::priv::__put_num<char,std::char_traits<char>,unsigned long>(&v58);
            std::ostream::_M_put_nowiden(v18, "]");
          }
          LC_API_MEMSET_0(v53, 0, 0x40u);
          LC_API_MEMSET_0(v53, 0, 0x40u);
          v54 = 1;
          v53[0] = 1065353216;
          v53[5] = 1065353216;
          v53[10] = 1065353216;
          v53[15] = 1065353216;
          switch ( *(_BYTE *)(v2 + 6) )
          {
            case 1:
              v36 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v17 + 76);
              v85[4] = v85;
              v86 = v85;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v85,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v36(v17, v86, *v15, 0);
              v25 = v86;
              if ( v86 != v85 )
                goto LABEL_31;
              ++v15;
              goto LABEL_34;
            case 2:
              v35 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 328);
              v83[4] = v83;
              v84 = v83;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v83,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v35(v17, v84, v15, 0);
              v31 = v84;
              if ( v84 != v83 )
                goto LABEL_49;
              v15 += 2;
              goto LABEL_34;
            case 3:
              v34 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 352);
              v81[4] = v81;
              v82 = v81;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v81,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v34(v17, v82, v15, 0);
              v29 = v82;
              if ( v82 != v81 )
                goto LABEL_45;
              v15 += 3;
              goto LABEL_34;
            case 4:
              v33 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 376);
              v79[4] = v79;
              v80 = v79;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v79,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v33(v17, v80, v15, 0);
              v27 = v80;
              if ( v80 != v79 )
                goto LABEL_37;
              v15 += 4;
              goto LABEL_40;
            case 5:
              v32 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v17 + 100);
              v77[4] = v77;
              v78 = v77;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v77,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v32(v17, v78, *v15, 0);
              v25 = v78;
              if ( v78 != v77 )
                goto LABEL_31;
              ++v15;
              goto LABEL_34;
            case 6:
              v30 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 400);
              v75[4] = v75;
              v76 = v75;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v75,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v30(v17, v76, v15, 0);
              v31 = v76;
              if ( v76 != v75 )
              {
LABEL_49:
                if ( v31 )
                  GlitchFree(v31);
              }
              v15 += 2;
              goto LABEL_34;
            case 7:
              v28 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 424);
              v73[4] = v73;
              v74 = v73;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v73,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v28(v17, v74, v15, 0);
              v29 = v74;
              if ( v74 != v73 )
              {
LABEL_45:
                if ( v29 )
                  GlitchFree(v29);
              }
              v15 += 3;
              goto LABEL_34;
            case 8:
              v26 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 448);
              v71[4] = v71;
              v72 = v71;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v71,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v26(v17, v72, v15, 0);
              v27 = v72;
              if ( v72 != v71 )
                goto LABEL_37;
              goto LABEL_39;
            case 0xB:
              v41 = *v15;
              if ( *v15 )
              {
                v42 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v17 + 520);
                v69[4] = v69;
                v70 = v69;
                v48 = v41;
                std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                  v69,
                  *(_BYTE **)&v58.gap4[56],
                  *(_BYTE **)&v58.gap4[52]);
                v42(v17, v70, v48, 0);
                v25 = v70;
                if ( v70 == v69 )
                {
                  ++v15;
                  goto LABEL_34;
                }
              }
              else
              {
                v43 = *(void (__fastcall **)(int, _DWORD *, _DWORD *, _DWORD))(*(_DWORD *)v17 + 520);
                v67[4] = v67;
                v68 = v67;
                std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                  v67,
                  *(_BYTE **)&v58.gap4[56],
                  *(_BYTE **)&v58.gap4[52]);
                v43(v17, v68, v53, 0);
                v25 = v68;
                if ( v68 == v67 )
                {
                  ++v15;
                  goto LABEL_34;
                }
              }
LABEL_31:
              if ( v25 )
                GlitchFree(v25);
LABEL_33:
              ++v15;
LABEL_34:
              if ( ++v16 == v49 )
              {
LABEL_41:
                a2 = v17;
                goto LABEL_42;
              }
LABEL_35:
              v14 = *(_DWORD *)(v2 + 8);
              break;
            case 0xC:
            case 0xD:
            case 0xE:
            case 0xF:
              v47 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 688);
              v65[4] = v65;
              v66 = v65;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v65,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v38 = *v15;
              v39 = v66;
              v40 = *v15 == nullptr;
              v56 = *v15;
              if ( v56 )
                v37 = *((_DWORD *)v38 + 1);
              if ( !v40 )
                *((_DWORD *)v38 + 1) = v37 + 1;
              v47(v17, v39, &v56, 0);
              if ( v56 )
                glitch::IReferenceCounted::drop(v56);
              v25 = v66;
              if ( v66 != v65 )
                goto LABEL_31;
              ++v15;
              goto LABEL_34;
            case 0x10:
              v46 = *(void (__fastcall **)(int, _DWORD *, int, _DWORD))(*(_DWORD *)v17 + 280);
              v63[4] = v63;
              v64 = v63;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v63,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v46(
                v17,
                v64,
                *(unsigned __int8 *)v15
              | (*((unsigned __int8 *)v15 + 1) << 8)
              | (*((unsigned __int8 *)v15 + 2) << 16)
              | (*((unsigned __int8 *)v15 + 3) << 24),
                0);
              v25 = v64;
              if ( v64 != v63 )
                goto LABEL_31;
              ++v15;
              goto LABEL_34;
            case 0x11:
              v45 = *(void (__fastcall **)(int, _DWORD *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v17 + 304);
              v61[4] = v61;
              v62 = v61;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v61,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v45(v17, v62, *v15, v15[1], v15[2], v15[3], 0);
              v27 = v62;
              if ( v62 == v61 )
              {
                v15 += 4;
              }
              else
              {
LABEL_37:
                if ( v27 )
                  GlitchFree(v27);
LABEL_39:
                v15 += 4;
              }
LABEL_40:
              if ( ++v16 == v49 )
                goto LABEL_41;
              goto LABEL_35;
            case 0x12:
              v44 = *(void (__fastcall **)(int, void *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v17 + 712);
              v59[4] = v59;
              v60 = v59;
              std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
                v59,
                *(_BYTE **)&v58.gap4[56],
                *(_BYTE **)&v58.gap4[52]);
              v20 = *v15;
              v21 = v60;
              v22 = *v15 == nullptr;
              v55 = *v15;
              if ( v55 )
                v19 = *(_DWORD *)v20;
              if ( !v22 )
                *(_DWORD *)v20 = v19 + 1;
              v44(v17, v21, &v55, 0);
              v23 = v55;
              if ( v55 )
              {
                v22 = (*(_DWORD *)v55)-- == 1;
                if ( v22 )
                {
                  if ( !*((_BYTE *)v23 + 84) )
                  {
                    v24 = *((_DWORD **)v23 + 20);
                    *v24 = glitch::memory::Matrix4Pool;
                    glitch::memory::Matrix4Pool = (int)v24;
                  }
                  *((_DWORD *)v23 + 20) = 0;
                  LC_API_FREE_0(v23);
                }
              }
              v25 = v60;
              if ( v60 != v59 )
                goto LABEL_31;
              goto LABEL_33;
            default:
              goto LABEL_34;
          }
        }
      }
LABEL_42:
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
      ++v50;
      std::basic_stringstream<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::~basic_stringstream((int)v57);
      result = v52;
      v6 = (unsigned __int16)v50;
      if ( v52 == (Elf32_Rel *)(unsigned __int16)v50 )
        break;
      v5 = (Elf32_Rel *)HIWORD(v51[1].r_info);
    }
  }
  return result;
}


// ===== 5d7378 glitch::video::CMaterialRenderer::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::video::CMaterialRenderer::serializeAttributes(int a1, int a2, int a3)
{
  int v4; // r10
  int v5; // r1
  int v6; // r10
  int v7; // r9
  int v8; // r5
  int v9; // r6
  int v10; // r8
  int v13; // [sp+4h] [bp-30h]
  int v15; // [sp+Ch] [bp-28h]
  char v16[16]; // [sp+1Ch] [bp-18h] BYREF

  (*(void (__fastcall **)(int, const char *, _DWORD, int))(*(_DWORD *)a2 + 124))(a2, "Name", *(_DWORD *)(a1 + 8), 1);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Parameter Defaults");
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::serializeAttributes(
    (Elf32_Rel *)a1,
    a2);
  (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
  (*(void (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 48))(a2, "Techniques");
  if ( *(_BYTE *)(a1 + 16) )
  {
    v15 = 12 * (unsigned __int8)(*(_BYTE *)(a1 + 16) - 1) + 12;
    v13 = 0;
    do
    {
      v4 = *(_DWORD *)(a1 + 24);
      v5 = *(_DWORD *)(v4 + v13);
      v6 = v4 + v13;
      if ( v5 )
        v5 += 4;
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a2 + 48))(a2, v5);
      if ( *(_BYTE *)(v6 + 4) )
      {
        v7 = 52 * (unsigned __int8)(*(_BYTE *)(v6 + 4) - 1) + 52;
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = *(_DWORD *)(v6 + 8);
          sprintf(v16, "Pass %u", v9);
          (*(void (__fastcall **)(int, char *))(*(_DWORD *)a2 + 48))(a2, v16);
          glitch::video::SRenderPass::serializeAttributes(v10 + v8, a2, a3);
          v8 += 52;
          (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
          ++v9;
        }
        while ( v8 != v7 );
      }
      v13 += 12;
      (*(void (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
    }
    while ( v13 != v15 );
  }
  return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
}


// ===== 5d7578 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(ushort,uint,boost::intrusive_ptr<glitch::video::CLight>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        void **a4)
{
  int v4; // r1
  _DWORD *v6; // r2
  _DWORD *v7; // r0
  _DWORD *v9; // r2

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || *(_BYTE *)(v4 + 6) != 18 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v6 = *(_DWORD **)(*(_DWORD *)(a1 + 36) + *(_DWORD *)(v4 + 12) + 4 * a3);
  if ( v6 )
    ++*v6;
  v7 = *a4;
  *a4 = v6;
  if ( !v7 )
    return 1;
  if ( (*v7)-- != 1 )
    return 1;
  if ( !*((_BYTE *)v7 + 84) )
  {
    v9 = (_DWORD *)v7[20];
    *v9 = glitch::memory::Matrix4Pool;
    glitch::memory::Matrix4Pool = (int)v9;
  }
  v7[20] = 0;
  LC_API_FREE_0(v7);
  return 1;
}


// ===== 5d7648 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        _DWORD *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<float>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 (glitch::IReferenceCounted **)a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (void **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d76e0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture> const&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r1
  int v5; // r3
  int v6; // r12
  _BOOL4 v7; // r4
  int v8; // r4
  int v9; // r2
  int result; // r0
  glitch::IReferenceCounted *v11; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 )
    return 0;
  v5 = *a4;
  v6 = *(unsigned __int8 *)(v4 + 6);
  v7 = v5 ? v6 == (*(_DWORD *)(v5 + 56) & 3) + 12 : (unsigned int)(v6 - 12) <= 3;
  if ( !v7 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v8 = *(_DWORD *)(a1 + 36);
  v9 = *(_DWORD *)(v4 + 12);
  switch ( *(_BYTE *)(v4 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      if ( v5 )
        ++*(_DWORD *)(v5 + 4);
      v11 = *(glitch::IReferenceCounted **)(v8 + v9);
      *(_DWORD *)(v8 + v9) = v5;
      if ( !v11 )
        goto LABEL_13;
      glitch::IReferenceCounted::drop(v11);
      result = 1;
      break;
    default:
LABEL_13:
      result = 1;
      break;
  }
  return result;
}


// ===== 5d77b0 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void const*) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<float>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 (unsigned __int8 *)a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 (float *)a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (_DWORD **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d7848 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(ushort,uint,boost::intrusive_ptr<glitch::video::ITexture>&) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        glitch::IReferenceCounted **a4)
{
  int v4; // r1
  int v5; // r0
  int result; // r0
  glitch::IReferenceCounted *v7; // r2
  glitch::IReferenceCounted *v8; // r0

  if ( *(unsigned __int16 *)(a1 + 14) <= a2 )
    return 0;
  v4 = *(_DWORD *)(a1 + 32) + 16 * a2;
  if ( !v4 || (unsigned int)*(unsigned __int8 *)(v4 + 6) - 12 > 3 || a3 >= *(_DWORD *)(v4 + 8) )
    return 0;
  v5 = *(_DWORD *)(a1 + 36);
  switch ( *(_BYTE *)(v4 + 6) )
  {
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v7 = *(glitch::IReferenceCounted **)(v5 + *(_DWORD *)(v4 + 12));
      if ( v7 )
        ++*((_DWORD *)v7 + 1);
      v8 = *a4;
      *a4 = v7;
      if ( !v8 )
        goto LABEL_11;
      glitch::IReferenceCounted::drop(v8);
      result = 1;
      break;
    default:
LABEL_11:
      result = 1;
      break;
  }
  return result;
}


// ===== 5d78e4 glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(ushort,uint,glitch::video::E_SHADER_PARAMETER_VALUE_TYPE,void *) =====
int __fastcall glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        float *a5)
{
  int result; // r0

  switch ( a4 )
  {
    case 1:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<int>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 2:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 3:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 4:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<int>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 5:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<float>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 6:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector2d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 7:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector3d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 8:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::core::vector4d<float>>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 11:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameter(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(
                 a1,
                 a2,
                 a3,
                 (glitch::IReferenceCounted **)a5);
      break;
    case 16:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColor>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 17:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<glitch::video::SColorf>(
                 a1,
                 a2,
                 a3,
                 a5);
      break;
    case 18:
      result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(
                 a1,
                 a2,
                 a3,
                 (_DWORD **)a5);
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 5d797c glitch::video::SRenderState::SRenderState(void) =====
int __fastcall glitch::video::SRenderState::SRenderState(int this)
{
  *(_DWORD *)(this + 8) = 1838848;
  *(_DWORD *)(this + 12) = 29372423;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 56) = 1065353216;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)this = -16776959;
  *(_DWORD *)(this + 4) = -65281;
  *(_BYTE *)(this + 20) = 0;
  *(_BYTE *)(this + 21) = 0;
  *(_BYTE *)(this + 22) = 0;
  *(_BYTE *)(this + 23) = 0;
  *(_BYTE *)(this + 24) = 0;
  *(_BYTE *)(this + 25) = 0;
  *(_BYTE *)(this + 26) = 0;
  *(_BYTE *)(this + 27) = 0;
  *(_DWORD *)(this + 28) = 1065353216;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 1065353216;
  *(_DWORD *)(this + 40) = 1065353216;
  *(_DWORD *)(this + 44) = 1065353216;
  *(_DWORD *)(this + 52) = 1065353216;
  *(_DWORD *)(this + 60) = 0;
  *(_DWORD *)(this + 64) = 0;
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 72) = 0;
  return this;
}


// ===== 5d7a10 glitch::video::detail::renderpass::SRenderState::SRenderState(glitch::video::SRenderState const&) =====
glitch::video::detail::renderpass::SRenderState *__fastcall glitch::video::detail::renderpass::SRenderState::SRenderState(
        glitch::video::detail::renderpass::SRenderState *this,
        const glitch::video::SRenderState *a2)
{
  char v2; // r12
  char v3; // r4
  char v4; // r5
  int v6; // r0
  int v7; // r12
  int v8; // r12
  int v9; // r2
  unsigned int v10; // r2
  unsigned int v11; // r0
  unsigned int v12; // r2
  unsigned int v13; // r2
  int v14; // r2
  unsigned int v15; // r2
  unsigned int v16; // r2
  unsigned int v17; // r2
  unsigned int v18; // r12
  unsigned int v19; // r12
  unsigned int v20; // r12
  unsigned int v21; // r12
  unsigned int v22; // r12
  unsigned int v23; // r12
  unsigned int v24; // r12
  int v25; // r2
  unsigned int v26; // r12
  unsigned int v27; // r2
  unsigned int v29; // r2
  unsigned int v30; // r2
  int v31; // r2

  v2 = *((_BYTE *)a2 + 21);
  v3 = *((_BYTE *)a2 + 23);
  v4 = *((_BYTE *)a2 + 22);
  *((_BYTE *)this + 8) = *((_BYTE *)a2 + 20);
  *((_BYTE *)this + 11) = v3;
  *((_BYTE *)this + 10) = v4;
  *((_BYTE *)this + 9) = v2;
  *((_DWORD *)this + 3) = *((_DWORD *)a2 + 10);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 11);
  v6 = *((_DWORD *)a2 + 14);
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 7) = v6;
  if ( (*((_DWORD *)a2 + 3) & 0x80000) != 0 )
    *((_DWORD *)this + 1) = 0x10000;
  v7 = ((*((_DWORD *)a2 + 2) >> 12) & 7) << 24;
  *(_DWORD *)this = v7;
  v8 = v7 | *(unsigned __int8 *)a2;
  *(_DWORD *)this = v8;
  v9 = *((_DWORD *)this + 1);
  if ( (*((_DWORD *)a2 + 3) & 0x100000) != 0 )
    v10 = v9 | 0x20000;
  else
    v10 = v9 & 0xFFFDFFFF;
  *((_DWORD *)this + 1) = v10;
  v11 = v8 | *((_DWORD *)a2 + 2) & 0xC0000000;
  *(_DWORD *)this = v11;
  v12 = v10 & 0xFFFBFFFF | (((*((_DWORD *)a2 + 3) >> 21) & 1) << 18);
  *((_DWORD *)this + 1) = v12;
  if ( (*((_DWORD *)a2 + 3) & 0x400000) != 0 )
    v13 = v12 | 0x80000;
  else
    v13 = v12 & 0xFFF7FFFF;
  *((_DWORD *)this + 1) = v13;
  *(_DWORD *)this = v11 | (((*((_DWORD *)a2 + 3) >> 12) & 7) << 27);
  v14 = *((_DWORD *)this + 1);
  if ( (*((_DWORD *)a2 + 3) & 0x800000) != 0 )
    v15 = v14 | 0x100000;
  else
    v15 = v14 & 0xFFEFFFFF;
  *((_DWORD *)this + 1) = v15;
  v16 = v15 & 0xFFFFCFFF | (((*((_DWORD *)a2 + 3) >> 15) & 3) << 12);
  *((_DWORD *)this + 1) = v16;
  v17 = v16 & 0xFFFF3FFF | (((*((_DWORD *)a2 + 3) >> 17) & 3) << 14);
  *((_DWORD *)this + 1) = v17;
  if ( (*((_DWORD *)a2 + 3) & 0x2000000) != 0 )
    v18 = v17 | 0x200000;
  else
    v18 = v17 & 0xFFDFFFFF;
  *((_DWORD *)this + 1) = v18;
  if ( (*((_DWORD *)a2 + 3) & 0x4000000) != 0 )
    v19 = v18 | 0x400000;
  else
    v19 = v18 & 0xFFBFFFFF;
  *((_DWORD *)this + 1) = v19;
  if ( (*((_DWORD *)a2 + 3) & 0x8000000) != 0 )
    v20 = v19 | 0x800000;
  else
    v20 = v19 & 0xFF7FFFFF;
  *((_DWORD *)this + 1) = v20;
  if ( (*((_DWORD *)a2 + 3) & 0x10000000) != 0 )
    v21 = v20 | 0x1000000;
  else
    v21 = v20 & 0xFEFFFFFF;
  *((_DWORD *)this + 1) = v21;
  if ( (*((_DWORD *)a2 + 3) & 0x20000000) != 0 )
    v22 = v21 | 0x2000000;
  else
    v22 = v21 & 0xFDFFFFFF;
  *((_DWORD *)this + 1) = v22;
  if ( (*((_DWORD *)a2 + 3) & 0x40000000) != 0 )
    v23 = v22 | 0x4000000;
  else
    v23 = v22 & 0xFBFFFFFF;
  *((_DWORD *)this + 1) = v23;
  if ( (*((_DWORD *)a2 + 4) & 1) != 0 )
    v24 = v23 | 0x8000000;
  else
    v24 = v23 & 0xF7FFFFFF;
  *((_DWORD *)this + 1) = v24;
  v25 = *(_DWORD *)this;
  v26 = v24 & 0xFFFFFFF8 | (*((_DWORD *)a2 + 2) >> 18) & 7;
  *((_DWORD *)this + 1) = v26;
  v27 = v25 & 0xFFFF00FF | (*((unsigned __int8 *)a2 + 2) << 8);
  *(_DWORD *)this = v27;
  *(_DWORD *)this = v27 & 0xFF00FFFF | (*((unsigned __int8 *)a2 + 3) << 16);
  v29 = v26 & 0xFFFFFFC7 | (8 * ((*((_DWORD *)a2 + 2) >> 21) & 7));
  *((_DWORD *)this + 1) = v29;
  v30 = v29 & 0xFFFFFE3F | ((HIBYTE(*((_DWORD *)a2 + 2)) & 7) << 6);
  *((_DWORD *)this + 1) = v30;
  *((_DWORD *)this + 1) = v30 & 0xFFFFF1FF | (((*((_DWORD *)a2 + 2) >> 27) & 7) << 9);
  v31 = *((_DWORD *)a2 + 13);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 12);
  *((_DWORD *)this + 6) = v31;
  return this;
}


// ===== 5d7c44 glitch::video::detail::materialrenderermanager::SProperties::onRemove(void *,ushort) =====
int __fastcall glitch::video::detail::materialrenderermanager::SProperties::onRemove(
        int this,
        _WORD *a2,
        unsigned __int16 a3)
{
  unsigned int v3; // r3

  v3 = *(unsigned __int16 *)(this + 8);
  if ( v3 <= 0x10 )
    a2[v3 + 22] = -1;
  return this;
}


// ===== 5d7c5c glitch::video::CMaterialRendererManager::SCreationState::SCreationState(char *) =====
int __fastcall glitch::video::CMaterialRendererManager::SCreationState::SCreationState(int this, char *a2)
{
  *(_DWORD *)this = a2;
  *(_DWORD *)(this + 12) = this + 8;
  *(_DWORD *)(this + 20) = this + 16;
  *(_DWORD *)(this + 32) = this + 28;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = this + 8;
  *(_DWORD *)(this + 16) = this + 16;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = this + 28;
  *(_BYTE *)(this + 36) = 0;
  *(_BYTE *)(this + 37) = 0;
  *(_DWORD *)(this + 40) = this + 40;
  *(_DWORD *)(this + 44) = this + 40;
  *(_DWORD *)(this + 56) = 0;
  *(_BYTE *)(this + 52) = 0;
  *(_DWORD *)(this + 64) = this + 52;
  *(_DWORD *)(this + 48) = this + 40;
  *(_DWORD *)(this + 84) = 0;
  *(_DWORD *)(this + 60) = this + 52;
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 76) = 0;
  *(_DWORD *)(this + 80) = 0;
  return this;
}


// ===== 5d7cd4 glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::getIDCount(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP) =====
int __fastcall glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::getIDCount(int a1, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 4) + 24 * a2 + 96);
}


// ===== 5d7ce8 glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::endMapGroup(glitch::video::IMaterialTechniqueMapsReader::E_MAP_GROUP) =====
int __fastcall glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::endMapGroup(int result)
{
  *(_DWORD *)(result + 52) = result + 28;
  return result;
}


// ===== 5d7cf4 glitch::video::CMaterialRendererManager::getTechnique(glitch::video::CMaterialRendererManager::STemporaryID) =====
int __fastcall glitch::video::CMaterialRendererManager::getTechnique(int a1, int a2)
{
  if ( *(_DWORD *)(a1 + 144) && a2 )
    return a2;
  else
    return 0;
}


// ===== 5d7d14 glitch::video::CMaterialRendererManager::getParameterDef(glitch::video::CMaterialRendererManager::STemporaryID) =====
int __fastcall glitch::video::CMaterialRendererManager::getParameterDef(int a1, int a2)
{
  if ( *(_DWORD *)(a1 + 144) && a2 )
    return a2;
  else
    return 0;
}


// ===== 5d7d34 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::idBegin(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::idBegin(
        int a1)
{
  return *(_DWORD *)(a1 + 8);
}


// ===== 5d7d3c glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::idEnd(void) =====
void glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::idEnd()
{
  ;
}


// ===== 5d7d40 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::get(ushort) =====
int *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::get(
        int a1,
        unsigned int a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(a1 + 24);
  if ( a2 >= (*(_DWORD *)(a1 + 28) - v2) >> 3 )
    return &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    return (int *)(v2 + 8 * a2);
}


// ===== 5d7d78 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::size(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::size(
        int a1)
{
  return *(unsigned __int16 *)(a1 + 38);
}


// ===== 5d7d80 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getMaxID(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getMaxID(
        int a1)
{
  return (unsigned __int16)(((*(_DWORD *)(a1 + 28) - *(_DWORD *)(a1 + 24)) >> 3) - 1);
}


// ===== 5d7d9c glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(
        int a1,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 24) + 8 * a2 + 4) + 24;
}


// ===== 5d7db0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(
        int result)
{
  *(_WORD *)(result + 38) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_BYTE *)result = 0;
  *(_DWORD *)(result + 8) = result;
  *(_DWORD *)(result + 12) = result;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_WORD *)(result + 36) = 0;
  return result;
}


// ===== 5d7de4 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(
        int result)
{
  *(_WORD *)(result + 38) = 0;
  *(_DWORD *)(result + 4) = 0;
  *(_BYTE *)result = 0;
  *(_DWORD *)(result + 8) = result;
  *(_DWORD *)(result + 12) = result;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_WORD *)(result + 36) = 0;
  return result;
}


// ===== 5d7e18 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getNextId(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getNextId(
        int a1)
{
  return *(unsigned __int16 *)(a1 + 36);
}


// ===== 5d7e20 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(
        int a1,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 24) + 8 * a2 + 4) + 24;
}


// ===== 5d7e34 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(
        int result,
        __int16 a2)
{
  *(_DWORD *)result = 0;
  *(_DWORD *)(result + 4) = -1;
  *(_WORD *)(result + 10) = a2;
  *(_WORD *)(result + 8) = 17;
  return result;
}


// ===== 5d7e54 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(
        int result,
        __int16 a2)
{
  *(_DWORD *)result = 0;
  *(_DWORD *)(result + 4) = -1;
  *(_WORD *)(result + 10) = a2;
  *(_WORD *)(result + 8) = 17;
  return result;
}


// ===== 5d7e74 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(
        int result,
        int a2)
{
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = a2;
  return result;
}


// ===== 5d7e84 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(
        int result,
        int a2)
{
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = a2;
  return result;
}


// ===== 5d7e94 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged(
        int result)
{
  *(_BYTE *)(result + 4) = 1;
  return result;
}


// ===== 5d7ea0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::get(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::get(
        int a1)
{
  return *(_DWORD *)a1;
}


// ===== 5d7ea8 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(void) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        _DWORD *result)
{
  result[1] = 0;
  *result = 0;
  return result;
}


// ===== 5d7eb8 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(void) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        _DWORD *result)
{
  result[1] = 0;
  *result = 0;
  return result;
}


// ===== 5d7ec8 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        _DWORD *result,
        _DWORD **a2,
        _DWORD *a3)
{
  _DWORD *v3; // r3

  v3 = *a2;
  *result = *a2;
  if ( v3 )
    ++*v3;
  result[1] = *a3;
  return result;
}


// ===== 5d7ef4 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        _DWORD *result,
        _DWORD **a2,
        _DWORD *a3)
{
  _DWORD *v3; // r3

  v3 = *a2;
  *result = *a2;
  if ( v3 )
    ++*v3;
  result[1] = *a3;
  return result;
}


// ===== 5d7f20 std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey,std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>,std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<uchar>>,std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<uchar>>>,std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<uchar>>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<uchar>>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey,std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>,std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>,std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>,std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  void *v4; // r1
  int v5; // r3
  _DWORD *v6; // r7
  _DWORD *v7; // r8

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey,std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>,std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>,std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>,std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>>::_M_erase(
        a1,
        v2[3]);
      v5 = v2[6];
      v6 = (_DWORD *)v2[2];
      v7 = v2 + 6;
      if ( v5 )
      {
        if ( (*(_DWORD *)(v5 - 4))-- == 1 )
          glitch::core::releaseProcessBuffer((glitch::core *)(*v7 - 4), v4);
        *v7 = 0;
      }
      glitch::core::releaseProcessBuffer((glitch::core *)v2, v4);
      v2 = v6;
    }
    while ( v6 );
  }
}


// ===== 5d7f90 glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::~CMaterialTechniqueMapLoadState() =====
void __fastcall glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::~CMaterialTechniqueMapLoadState(
        glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 11);
  *(_DWORD *)this = off_978160;
  if ( v1 )
  {
    v3 = (char *)this + 28;
    std::priv::_Rb_tree<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey,std::less<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey>,std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>,std::priv::_Select1st<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>,std::priv::_MapTraitsT<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::video::IMaterialTechniqueMapsReader::SMapGroupKey const,glitch::core::SSharedProcessArray<unsigned char>>>>::_M_erase(
      (int)this + 28,
      *((_DWORD **)this + 8));
    *((_DWORD *)this + 10) = v3;
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 9) = v3;
    *((_DWORD *)this + 8) = 0;
  }
  glitch::video::IMaterialTechniqueMapsReader::~IMaterialTechniqueMapsReader(this);
}


// ===== 5d7ff8 glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::~CMaterialTechniqueMapLoadState() =====
void __fastcall glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::~CMaterialTechniqueMapLoadState(
        glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState *this)
{
  glitch::video::CMaterialRendererManager::CMaterialTechniqueMapLoadState::~CMaterialTechniqueMapLoadState(this);
  LC_API_FREE_0(this);
}


// ===== 5d8014 std::priv::_Rb_tree<glitch::video::`anonymous namespace'::SPassIdentifier,std::less<glitch::video::`anonymous namespace'::SPassIdentifier const>,std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,ushort>,std::priv::_Select1st<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,ushort>>,std::priv::_MapTraitsT<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,ushort>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,ushort>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<glitch::video::`anonymous namespace'::SPassIdentifier,std::less<glitch::video::`anonymous namespace'::SPassIdentifier const>,std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>,std::priv::_Select1st<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>>,std::priv::_MapTraitsT<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>>>::_M_erase(
        int a1,
        glitch::core *a2)
{
  glitch::core *v2; // r4
  glitch::core *v4; // r6
  void *v5; // r1

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<glitch::video::`anonymous namespace'::SPassIdentifier,std::less<glitch::video::`anonymous namespace'::SPassIdentifier const>,std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>,std::priv::_Select1st<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>>,std::priv::_MapTraitsT<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::video::`anonymous namespace'::SPassIdentifier const,unsigned short>>>::_M_erase(
        a1,
        *((_DWORD *)v2 + 3));
      v4 = *((glitch::core **)v2 + 2);
      glitch::core::releaseProcessBuffer(v2, v5);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 5d8048 std::priv::_List_base<glitch::video::SRenderPass,glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass>>::clear(void) =====
void __fastcall std::priv::_List_base<glitch::video::SRenderPass,glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass>>::clear(
        glitch::core **a1,
        void *a2)
{
  glitch::core *v2; // r4
  glitch::IReferenceCounted *v4; // r0
  glitch::core *v5; // r5

  v2 = *a1;
  if ( *a1 != (glitch::core *)a1 )
  {
    while ( 1 )
    {
      v4 = *((glitch::IReferenceCounted **)v2 + 10);
      v5 = *(glitch::core **)v2;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
      glitch::core::releaseProcessBuffer(v2, a2);
      if ( v5 == (glitch::core *)a1 )
        break;
      v2 = v5;
    }
    v2 = (glitch::core *)a1;
  }
  a1[1] = v2;
  *a1 = v2;
}


// ===== 5d8098 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset(void) =====
glitch::video::CMaterialRenderer **__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset(
        int a1)
{
  glitch::video::CMaterialRenderer **result; // r0
  glitch::video::CMaterialRenderer *v3; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v4; // [sp+4h] [bp-8h] BYREF

  v3 = *(glitch::video::CMaterialRenderer **)a1;
  *(_DWORD *)a1 = 0;
  v4 = nullptr;
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v3);
  result = boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v4);
  *(_DWORD *)(a1 + 4) = 0;
  return result;
}


// ===== 5d80d8 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>) =====
glitch::video::CMaterialRenderer **__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(
        int a1,
        glitch::video::CMaterialRenderer **a2,
        _DWORD *a3)
{
  glitch::video::CMaterialRenderer *v3; // r3
  _DWORD *v4; // r5
  glitch::video::CMaterialRenderer *v6; // r2
  glitch::video::CMaterialRenderer **result; // r0
  glitch::video::CMaterialRenderer *v8; // [sp+4h] [bp-8h] BYREF

  v3 = *a2;
  v4 = a3;
  v8 = v3;
  if ( v3 )
    a3 = *(_DWORD **)v3;
  if ( v3 )
  {
    *(_DWORD *)v3 = (char *)a3 + 1;
    v3 = v8;
  }
  v6 = *(glitch::video::CMaterialRenderer **)a1;
  *(_DWORD *)a1 = v3;
  v8 = v6;
  result = boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v8);
  *(_DWORD *)(a1 + 4) = *v4;
  return result;
}


// ===== 5d8128 std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r5
  int v7; // r8
  int v8; // r6
  glitch::video::CMaterialRenderer *v9; // r2
  glitch::video::CMaterialRenderer *v10; // r3
  int v11; // r7
  int v12; // r3
  glitch::video::CMaterialRenderer **v14; // [sp+4h] [bp-4h] BYREF

  v3 = a2 - a1;
  v4 = v3 >> 3;
  if ( v3 >> 3 > 0 )
  {
    v7 = v3 >> 3;
    v8 = 0;
    do
    {
      v14 = *(glitch::video::CMaterialRenderer ***)(a1 + v8);
      if ( v14 )
        v9 = *v14;
      else
        v9 = nullptr;
      if ( v14 )
      {
        *v14 = (glitch::video::CMaterialRenderer *)((char *)v9 + 1);
        v9 = (glitch::video::CMaterialRenderer *)v14;
      }
      v10 = *(glitch::video::CMaterialRenderer **)(a3 + v8);
      *(_DWORD *)(a3 + v8) = v9;
      v11 = a3 + v8;
      v14 = (glitch::video::CMaterialRenderer **)v10;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr((glitch::video::CMaterialRenderer **)&v14);
      v12 = *(_DWORD *)(a1 + v8 + 4);
      --v7;
      v8 += 8;
      *(_DWORD *)(v11 + 4) = v12;
    }
    while ( v7 );
    a3 += 8 * v4;
  }
  return a3;
}


// ===== 5d81b4 std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r4
  int v4; // r10
  int v5; // r6
  int v6; // r5
  int v7; // r7
  glitch::video::CMaterialRenderer *v8; // r2
  int v9; // r3
  glitch::video::CMaterialRenderer *v11; // [sp+4h] [bp-8h] BYREF

  v3 = (a2 - a1) >> 3;
  v4 = a3;
  if ( v3 > 0 )
  {
    v5 = a2;
    v6 = a3;
    v7 = (a2 - a1) >> 3;
    do
    {
      v8 = *(glitch::video::CMaterialRenderer **)(v5 - 8);
      v11 = v8;
      if ( v8 )
      {
        ++*(_DWORD *)v8;
        v8 = v11;
      }
      v11 = *(glitch::video::CMaterialRenderer **)(v6 - 8);
      *(_DWORD *)(v6 - 8) = v8;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v11);
      v9 = *(_DWORD *)(v5 - 4);
      --v7;
      v5 -= 8;
      *(_DWORD *)(v6 - 4) = v9;
      v6 -= 8;
    }
    while ( v7 );
    v4 -= 8 * v3;
  }
  return v4;
}


// ===== 5d823c std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&,std::random_access_iterator_tag const&,int *) =====
glitch::video::CMaterialRenderer **__fastcall std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(
        glitch::video::CMaterialRenderer **result,
        int a2,
        int a3)
{
  int v3; // r5
  glitch::video::CMaterialRenderer **v4; // r4
  int v6; // r7
  glitch::video::CMaterialRenderer *v7; // r3
  bool v8; // zf
  glitch::video::CMaterialRenderer *v9; // r2
  glitch::video::CMaterialRenderer *v10; // r3
  glitch::video::CMaterialRenderer **v11; // r6
  glitch::video::CMaterialRenderer *v12; // [sp+4h] [bp-8h] BYREF

  v3 = (a2 - (int)result) >> 3;
  v4 = result;
  if ( v3 > 0 )
  {
    v6 = 0;
    do
    {
      v7 = *(glitch::video::CMaterialRenderer **)a3;
      v8 = *(_DWORD *)a3 == 0;
      v12 = *(glitch::video::CMaterialRenderer **)a3;
      if ( v12 )
        v9 = *(glitch::video::CMaterialRenderer **)v7;
      else
        v9 = v7;
      if ( !v8 )
      {
        *(_DWORD *)v7 = (char *)v9 + 1;
        v9 = v12;
      }
      v10 = v4[v6];
      v4[v6] = v9;
      v11 = &v4[v6];
      v12 = v10;
      result = boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v12);
      --v3;
      v6 += 2;
      v11[1] = *(glitch::video::CMaterialRenderer **)(a3 + 4);
    }
    while ( v3 );
  }
  return result;
}


// ===== 5d82b8 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,std::__false_type const&) =====
int __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v5; // r0
  glitch::video::CMaterialRenderer **v6; // r7
  int v7; // r8
  glitch::video::CMaterialRenderer **v8; // r6
  glitch::video::CMaterialRenderer **v9; // r0

  v5 = std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(glitch::video::CMaterialRenderer ***)(a1 + 4);
  v7 = v5;
  if ( v6 != (glitch::video::CMaterialRenderer **)v5 )
  {
    v8 = (glitch::video::CMaterialRenderer **)v5;
    do
    {
      v9 = v8;
      v8 += 2;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 5d8320 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,uint,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&,std::__false_type const&) =====
glitch::video::CMaterialRenderer **__fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        glitch::video::CMaterialRenderer **a2,
        unsigned int a3,
        glitch::video::CMaterialRenderer **a4)
{
  int v4; // r10
  unsigned int v7; // r3
  glitch::video::CMaterialRenderer *v8; // r3
  int v10; // lr
  int v11; // r6
  int v12; // r1
  int v13; // lr
  unsigned int v14; // r2
  int v15; // r2
  int *v16; // r12
  int v17; // r8
  int v18; // r7
  unsigned int v19; // r2
  int v20; // r7
  unsigned int v21; // r2
  int v22; // r12
  glitch::video::CMaterialRenderer *v23; // r1
  int v24; // r6
  bool v25; // zf
  int v26; // r1
  glitch::video::CMaterialRenderer *v27; // r12
  glitch::video::CMaterialRenderer **v28; // r7
  unsigned int v29; // r6
  glitch::video::CMaterialRenderer *v30[2]; // [sp+8h] [bp-1Ch] BYREF
  char v31[8]; // [sp+1Ch] [bp-8h] BYREF

  if ( (unsigned int)a4 < *a1 )
  {
    v7 = a1[1];
    goto LABEL_7;
  }
  v7 = a1[1];
  if ( (unsigned int)a4 >= v7 )
  {
LABEL_7:
    v10 = (int)(v7 - (_DWORD)a2) >> 3;
    if ( a3 >= v10 )
    {
      v19 = a3 - v10;
      v20 = (int)(8 * v19) >> 3;
      v21 = v7 + 8 * v19;
      if ( v20 > 0 )
      {
        v22 = 0;
        do
        {
          v23 = *a4;
          v24 = v7 + v22;
          v25 = *a4 == nullptr;
          *(_DWORD *)(v7 + v22) = *a4;
          if ( !v25 )
            v4 = *(_DWORD *)v23;
          v22 += 8;
          if ( !v25 )
            *(_DWORD *)v23 = ++v4;
          --v20;
          *(_DWORD *)(v24 + 4) = a4[1];
        }
        while ( v20 );
      }
      a1[1] = v21;
      if ( v10 > 0 )
      {
        v26 = 0;
        do
        {
          v27 = a2[v26];
          v28 = &a2[v26];
          v29 = v21 + v26 * 4;
          *(_DWORD *)(v21 + v26 * 4) = v27;
          if ( v27 )
            v4 = *(_DWORD *)v27;
          v26 += 2;
          if ( v27 )
            *(_DWORD *)v27 = ++v4;
          --v10;
          *(_DWORD *)(v29 + 4) = v28[1];
        }
        while ( v10 );
        v21 = a1[1];
      }
      a1[1] = v21 + 8 * ((int)(v7 - (_DWORD)a2) >> 3);
      return std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(
               a2,
               v7,
               (int)a4);
    }
    else
    {
      v11 = 2 * a3;
      v12 = v7 - 8 * a3;
      v13 = (int)(8 * a3) >> 3;
      if ( v13 > 0 )
      {
        v15 = 0;
        do
        {
          v16 = *(int **)(v12 + v15);
          v17 = v12 + v15;
          v18 = v7 + v15;
          *(_DWORD *)(v7 + v15) = v16;
          if ( v16 )
            v4 = *v16;
          v15 += 8;
          if ( v16 )
            *v16 = ++v4;
          --v13;
          *(_DWORD *)(v18 + 4) = *(_DWORD *)(v17 + 4);
        }
        while ( v13 );
        v14 = a1[1];
      }
      else
      {
        v14 = v7;
      }
      a1[1] = v14 + v11 * 4;
      std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
        (int)a2,
        v12,
        v7);
      return std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(
               a2,
               (int)&a2[v11],
               (int)a4);
    }
  }
  v8 = *a4;
  v30[0] = *a4;
  if ( v30[0] )
    ++*(_DWORD *)v8;
  v30[1] = a4[1];
  std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    a1,
    a2,
    a3,
    v30,
    v31);
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(v30);
}


// ===== 5d84f0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const&) =====
unsigned int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(
        const char **a1,
        const char **a2)
{
  return (unsigned int)LC_API_STRCMP_0(*a1, *a2) >> 31;
}


// ===== 5d8508 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const&) =====
int __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>(
        int a1,
        const char **a2)
{
  int v2; // r4
  const char *v4; // r5
  int v5; // r6
  int v6; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return a1;
  v4 = *a2;
  v5 = a1;
  do
  {
    v6 = LC_API_STRCMP_0(*(const char **)(v2 + 16), v4);
    if ( v6 < 0 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v5 = v2;
    if ( v6 >= 0 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v5 == a1 || LC_API_STRCMP_0(v4, *(const char **)(v5 + 16)) >= 0 )
    return v5;
  else
    return a1;
}


// ===== 5d8578 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName() =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName(
        int a1)
{
  void *v2; // r0

  if ( *(_BYTE *)(a1 + 4) )
  {
    v2 = *(void **)a1;
    if ( v2 )
      operator delete[](v2);
  }
  return a1;
}


// ===== 5d85a4 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName() =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName(
        int a1)
{
  void *v2; // r0

  if ( *(_BYTE *)(a1 + 4) )
  {
    v2 = *(void **)a1;
    if ( v2 )
      operator delete[](v2);
  }
  return a1;
}


// ===== 5d85d0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,ushort,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
        int a1,
        void *a2)
{
  int v3; // r5
  void *v5; // [sp+0h] [bp-Ch] BYREF
  char v6; // [sp+4h] [bp-8h]

  v5 = a2;
  v6 = 0;
  v3 = std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>(
         a1,
         (const char **)&v5);
  if ( v6 && v5 )
    operator delete[](v5);
  if ( v3 == a1 )
    return 0xFFFF;
  else
    return *(unsigned __int16 *)(v3 + 28);
}


// ===== 5d8624 glitch::video::IVideoDriver::removeBatchBaker(void) =====
void __fastcall glitch::video::IVideoDriver::removeBatchBaker(glitch::video::IVideoDriver *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::video::CMaterial *v3; // r0
  void *v4; // r1
  glitch::video::CMaterial *v5; // [sp+4h] [bp-8h] BYREF

  v2 = *((glitch::IReferenceCounted **)this + 74);
  *((_DWORD *)this + 74) = 0;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v5 = *((glitch::video::CMaterial **)this + 73);
  *((_DWORD *)this + 73) = 0;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
  v3 = *((glitch::video::CMaterial **)this + 75);
  if ( v3 )
  {
    glitch::video::CMaterial::~CMaterial(v3);
    glitch::core::releaseProcessBuffer(*((glitch::core **)this + 75), v4);
    *((_DWORD *)this + 76) = 0;
    *((_DWORD *)this + 75) = 0;
  }
}


// ===== 5d8688 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterialRenderer ***__fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterialRenderer ***a1)
{
  glitch::video::CMaterialRenderer **v1; // r4
  glitch::video::CMaterialRenderer **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 2;
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 5d86cc std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 5d872c std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        glitch::video::CMaterialRenderer ***a1,
        int a2,
        int a3,
        int a4,
        unsigned int a5,
        char a6)
{
  int v6; // r9
  size_t v10; // r8
  _DWORD *v11; // r10
  char *v12; // r12
  glitch::video::CMaterialRenderer **v13; // r0
  int v14; // r11
  _DWORD *v15; // r11
  int v16; // r1
  int v17; // r3
  glitch::video::CMaterialRenderer *v18; // r2
  glitch::video::CMaterialRenderer **v19; // lr
  int v20; // r1
  glitch::video::CMaterialRenderer **v21; // r5
  int v22; // r2
  char **v23; // r3
  _DWORD *v24; // r0
  bool v25; // zf
  glitch::video::CMaterialRenderer **v26; // r6
  int v27; // lr
  int v28; // r3
  int v29; // r1
  glitch::video::CMaterialRenderer ***v30; // r2
  int v31; // r12
  glitch::video::CMaterialRenderer **v32; // r0
  glitch::video::CMaterialRenderer **v33; // r4
  glitch::video::CMaterialRenderer **v34; // r0
  char **v35; // r3

  v10 = 2
      * std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
          a1,
          a5);
  v11 = GlitchAlloc(v10 * 4, 0);
  v13 = *a1;
  v14 = (a2 - (int)*a1) >> 3;
  if ( v14 > 0 )
  {
    v16 = (a2 - (int)*a1) >> 3;
    v17 = 0;
    do
    {
      v18 = v13[v17];
      v19 = &v13[v17];
      v12 = (char *)&v11[v17];
      v11[v17] = v18;
      if ( v18 )
        v6 = *(_DWORD *)v18;
      v17 += 2;
      if ( v18 )
        *(_DWORD *)v18 = ++v6;
      --v16;
      *((_DWORD *)v12 + 1) = v19[1];
    }
    while ( v16 );
    v15 = &v11[2 * v14];
  }
  else
  {
    v15 = v11;
  }
  if ( a5 == 1 )
  {
    v35 = *(char ***)a3;
    v21 = (glitch::video::CMaterialRenderer **)(v15 + 2);
    v25 = *(_DWORD *)a3 == 0;
    *v15 = *(_DWORD *)a3;
    if ( !v25 )
      ++*v35;
    v15[1] = *(_DWORD *)(a3 + 4);
  }
  else
  {
    v20 = (int)(8 * a5) >> 3;
    v21 = (glitch::video::CMaterialRenderer **)&v15[2 * a5];
    if ( v20 > 0 )
    {
      v22 = 0;
      do
      {
        v23 = *(char ***)a3;
        v24 = &v15[v22];
        v25 = *(_DWORD *)a3 == 0;
        v15[v22] = *(_DWORD *)a3;
        if ( !v25 )
          v12 = *v23;
        v22 += 2;
        if ( !v25 )
          *v23 = ++v12;
        --v20;
        v24[1] = *(_DWORD *)(a3 + 4);
      }
      while ( v20 );
    }
  }
  if ( a6 )
  {
    v26 = a1[1];
  }
  else
  {
    v26 = a1[1];
    v27 = ((int)v26 - a2) >> 3;
    if ( v27 > 0 )
    {
      v28 = 0;
      v29 = ((int)v26 - a2) >> 3;
      do
      {
        v30 = *(glitch::video::CMaterialRenderer ****)(a2 + v28 * 4);
        v31 = a2 + v28 * 4;
        v32 = &v21[v28];
        v21[v28] = (glitch::video::CMaterialRenderer *)v30;
        if ( v30 )
          v26 = *v30;
        v28 += 2;
        if ( v30 )
        {
          v26 = (glitch::video::CMaterialRenderer **)((char *)v26 + 1);
          *v30 = v26;
        }
        --v29;
        v32[1] = *(glitch::video::CMaterialRenderer **)(v31 + 4);
      }
      while ( v29 );
      v26 = a1[1];
      v21 += 2 * v27;
    }
  }
  v33 = *a1;
  if ( *a1 == v26 )
  {
    v34 = v26;
  }
  else
  {
    do
    {
      v26 -= 2;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(v26);
    }
    while ( v33 != v26 );
    v34 = *a1;
  }
  GlitchFree(v34);
  a1[1] = v21;
  a1[2] = (glitch::video::CMaterialRenderer **)&v11[v10];
  *a1 = (glitch::video::CMaterialRenderer **)v11;
}


// ===== 5d88dc std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,uint,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        glitch::video::CMaterialRenderer ***a1,
        glitch::video::CMaterialRenderer **a2,
        unsigned int a3,
        glitch::video::CMaterialRenderer **a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= ((char *)a1[2] - (char *)a1[1]) >> 3 )
      std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        (int)a2,
        (int)a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 5d8930 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,ushort,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        glitch::video::CMaterialRenderer ***a1,
        unsigned int a2,
        glitch::video::CMaterialRenderer **a3)
{
  glitch::video::CMaterialRenderer **v3; // r12
  unsigned int v5; // r2
  int v6; // r1

  v3 = a1[1];
  v5 = ((char *)v3 - (char *)*a1) >> 3;
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (int)&(*a1)[2 * a2];
    if ( (glitch::video::CMaterialRenderer **)v6 != v3 )
      std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)a1,
        v6,
        (int)a1[1]);
  }
}


// ===== 5d8980 std::priv::_Rb_tree<glitch::core::SSharedString,std::less<glitch::core::SSharedString>,std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>,std::priv::_Select1st<std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>>,std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>>>::_M_create_node(std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef> const&) =====
int __fastcall std::priv::_Rb_tree<glitch::core::SSharedString,std::less<glitch::core::SSharedString>,std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>,std::priv::_Select1st<std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>>,std::priv::_MapTraitsT<std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>>,glitch::core::SProcessBufferAllocator<std::pair<glitch::core::SSharedString const,glitch::video::CMaterialRendererManager::SCreationState::SParameterDef>>>::_M_create_node(
        int a1,
        int a2)
{
  int result; // r0
  _DWORD *v4; // r2
  _DWORD *v5; // r2
  char v6; // r1

  result = glitch::core::allocProcessBuffer((glitch::core *)&dword_34, a2);
  v4 = *(_DWORD **)a2;
  *(_DWORD *)(result + 16) = *(_DWORD *)a2;
  if ( v4 )
    ++*v4;
  v5 = *(_DWORD **)(a2 + 4);
  *(_DWORD *)(result + 20) = v5;
  if ( v5 )
    ++*v5;
  *(_WORD *)(result + 24) = *(_WORD *)(a2 + 8);
  *(_BYTE *)(result + 26) = *(_BYTE *)(a2 + 10);
  *(_BYTE *)(result + 27) = *(_BYTE *)(a2 + 11);
  *(_DWORD *)(result + 28) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(result + 32) = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(result + 36) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(result + 40) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(result + 44) = *(_DWORD *)(a2 + 28);
  *(_BYTE *)(result + 48) = *(_BYTE *)(a2 + 32);
  *(_BYTE *)(result + 49) = *(_BYTE *)(a2 + 33);
  v6 = *(_BYTE *)(a2 + 34);
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_BYTE *)(result + 50) = v6;
  return result;
}


// ===== 5d8a2c std::list<glitch::video::SRenderPass,glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass>>::insert(std::priv::_List_iterator<glitch::video::SRenderPass,std::_Nonconst_traits<glitch::video::SRenderPass>>,glitch::video::SRenderPass const&) =====
int *__fastcall std::list<glitch::video::SRenderPass,glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass>>::insert(
        int *a1,
        int a2,
        int *a3,
        int a4)
{
  int v7; // r12
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r3
  int *result; // r0
  int v16; // r3
  int *v17; // r2

  v7 = glitch::core::allocProcessBuffer((glitch::core *)&off_3C, a2);
  v8 = *(_DWORD *)(a4 + 4);
  v9 = *(_DWORD *)(a4 + 8);
  v10 = *(_DWORD *)(a4 + 12);
  *(_DWORD *)(v7 + 8) = *(_DWORD *)a4;
  *(_DWORD *)(v7 + 12) = v8;
  *(_DWORD *)(v7 + 16) = v9;
  *(_DWORD *)(v7 + 20) = v10;
  v11 = *(_DWORD *)(a4 + 20);
  v12 = *(_DWORD *)(a4 + 24);
  v13 = *(_DWORD *)(a4 + 28);
  *(_DWORD *)(v7 + 24) = *(_DWORD *)(a4 + 16);
  *(_DWORD *)(v7 + 28) = v11;
  *(_DWORD *)(v7 + 32) = v12;
  *(_DWORD *)(v7 + 36) = v13;
  v14 = *(_DWORD *)(a4 + 32);
  result = a1;
  *(_DWORD *)(v7 + 40) = v14;
  if ( v14 )
    ++*(_DWORD *)(v14 + 4);
  *(_DWORD *)(v7 + 44) = *(_DWORD *)(a4 + 36);
  *(_DWORD *)(v7 + 48) = *(_DWORD *)(a4 + 40);
  *(_WORD *)(v7 + 52) = *(_WORD *)(a4 + 44);
  *(_WORD *)(v7 + 54) = *(_WORD *)(a4 + 46);
  *(_BYTE *)(v7 + 56) = *(_BYTE *)(a4 + 48);
  v16 = *a3;
  v17 = *(int **)(*a3 + 4);
  *(_DWORD *)v7 = *a3;
  *(_DWORD *)(v7 + 4) = v17;
  *v17 = v7;
  *(_DWORD *)(v16 + 4) = v7;
  *a1 = v7;
  return result;
}

