// ===== 5611b4 glitch::io::CAttributes::setAttribute(int,char const*,char const* const*) =====
int __fastcall glitch::io::CAttributes::setAttribute(
        glitch::io::CAttributes *this,
        unsigned int a2,
        const char *a3,
        const char *const *a4)
{
  int result; // r0
  int *v5; // t0

  v5 = *((int **)this + 18);
  result = *v5;
  if ( a2 < (v5[1] - *v5) >> 2 )
    return (*(int (__fastcall **)(_DWORD, const char *, const char *const *))(**(_DWORD **)(result + 4 * a2) + 248))(
             *(_DWORD *)(result + 4 * a2),
             a3,
             a4);
  return result;
}


// ===== 5611ec glitch::io::CAttributes::setAttribute(int,boost::intrusive_ptr<glitch::video::ITexture>) =====
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
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v5 + 4 * a2) + 252))(*(_DWORD *)(v5 + 4 * a2), a3);
  return result;
}


// ===== 561224 glitch::io::CAttributes::getQuaternion(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getQuaternion(
        glitch::io::CAttributes *this,
        int a2,
        int a3)
{
  int *v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r0
  _DWORD v11[4]; // [sp+0h] [bp-10h] BYREF

  *((_DWORD *)this + 1) = 1065353216;
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 2) = 0;
  if ( a3 >= 0 )
  {
    v4 = *(int **)(a2 + 72);
    v5 = v4[1];
    v6 = *v4;
    if ( a3 < (v5 - v6) >> 2 )
    {
      (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 64))(v11, *(_DWORD *)(v6 + 4 * a3));
      v7 = v11[2];
      v8 = v11[3];
      v9 = v11[0];
      *((_DWORD *)this + 1) = v11[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v9;
      *((_DWORD *)this + 3) = v8;
    }
  }
  return this;
}


// ===== 5612ac glitch::io::CAttributes::setAttribute(int,glitch::core::quaternion) =====
int __fastcall glitch::io::CAttributes::setAttribute(int result, int a2, int a3, int a4, int a5, int a6)
{
  int *v6; // r3
  int v7; // r2
  int v8; // r3
  int varg_r2; // [sp+10h] [bp+4h]
  int varg_r3; // [sp+14h] [bp+8h]

  if ( a2 >= 0 )
  {
    v6 = *(int **)(result + 72);
    v7 = v6[1];
    v8 = *v6;
    if ( a2 < (v7 - v8) >> 2 )
      return (*(int (__fastcall **)(_DWORD, int, int, int, int))(**(_DWORD **)(v8 + 4 * a2) + 192))(
               *(_DWORD *)(v8 + 4 * a2),
               varg_r2,
               varg_r3,
               a5,
               a6);
  }
  return result;
}


// ===== 561314 glitch::io::CAttributes::getBox3d(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getBox3d(glitch::io::CAttributes *this, int a2, int a3)
{
  int *v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r5
  _DWORD v13[7]; // [sp+0h] [bp-1Ch] BYREF

  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  if ( a3 >= 0 )
  {
    v4 = *(int **)(a2 + 72);
    v5 = v4[1];
    v6 = *v4;
    if ( a3 < (v5 - v6) >> 2 )
    {
      (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 112))(v13, *(_DWORD *)(v6 + 4 * a3));
      v7 = v13[2];
      v8 = v13[3];
      v9 = v13[4];
      v10 = v13[5];
      v11 = v13[0];
      *((_DWORD *)this + 1) = v13[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v11;
      *((_DWORD *)this + 3) = v8;
      *((_DWORD *)this + 4) = v9;
      *((_DWORD *)this + 5) = v10;
    }
  }
  return this;
}


// ===== 5613b0 glitch::io::CAttributes::setAttribute(int,glitch::core::aabbox3d<float>) =====
int __fastcall glitch::io::CAttributes::setAttribute(int result, int a2, int *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // r5
  int v8; // r1
  int v9; // r4
  int v10; // lr
  int v11; // r12
  int v12; // r2
  int (__fastcall *v13)(int, _DWORD *); // r3
  _DWORD v14[7]; // [sp+0h] [bp-1Ch] BYREF

  if ( a2 >= 0 )
  {
    v3 = *(int **)(result + 72);
    v4 = v3[1];
    v5 = *v3;
    result = v4 - v5;
    if ( a2 < result >> 2 )
    {
      v6 = *(_DWORD *)(v5 + 4 * a2);
      v7 = *a3;
      v8 = a3[5];
      v9 = a3[1];
      v10 = a3[2];
      v11 = a3[3];
      v12 = a3[4];
      v13 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 236);
      v14[5] = v8;
      v14[0] = v7;
      v14[1] = v9;
      v14[2] = v10;
      v14[3] = v11;
      v14[4] = v12;
      return v13(v6, v14);
    }
  }
  return result;
}


// ===== 561424 glitch::io::CAttributes::getPlane3d(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getPlane3d(glitch::io::CAttributes *this, int a2, int a3)
{
  int *v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r0
  _DWORD v11[4]; // [sp+0h] [bp-10h] BYREF

  *((_DWORD *)this + 1) = 1065353216;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0x80000000;
  *(_DWORD *)this = 0;
  if ( a3 >= 0 )
  {
    v4 = *(int **)(a2 + 72);
    v5 = v4[1];
    v6 = *v4;
    if ( a3 < (v5 - v6) >> 2 )
    {
      (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 116))(v11, *(_DWORD *)(v6 + 4 * a3));
      v7 = v11[2];
      v8 = v11[3];
      v9 = v11[0];
      *((_DWORD *)this + 1) = v11[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v9;
      *((_DWORD *)this + 3) = v8;
    }
  }
  return this;
}


// ===== 5614b0 glitch::io::CAttributes::setAttribute(int,glitch::core::plane3d<float>) =====
int __fastcall glitch::io::CAttributes::setAttribute(int result, int a2, int *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // lr
  int v8; // r1
  int v9; // r12
  int v10; // r2
  int (__fastcall *v11)(int, _DWORD *); // r3
  _DWORD v12[5]; // [sp+0h] [bp-14h] BYREF

  if ( a2 >= 0 )
  {
    v3 = *(int **)(result + 72);
    v4 = v3[1];
    v5 = *v3;
    result = v4 - v5;
    if ( a2 < result >> 2 )
    {
      v6 = *(_DWORD *)(v5 + 4 * a2);
      v7 = *a3;
      v8 = a3[3];
      v9 = a3[1];
      v10 = a3[2];
      v11 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 240);
      v12[3] = v8;
      v12[0] = v7;
      v12[1] = v9;
      v12[2] = v10;
      return v11(v6, v12);
    }
  }
  return result;
}


// ===== 561514 glitch::io::CAttributes::getTriangle3d(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getTriangle3d(
        glitch::io::CAttributes *this,
        int a2,
        int a3)
{
  int *v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r6
  int v8; // r5
  int v9; // r12
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r8
  _DWORD v16[9]; // [sp+4h] [bp-24h] BYREF

  *((_DWORD *)this + 8) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  if ( a3 >= 0 )
  {
    v4 = *(int **)(a2 + 72);
    v5 = v4[1];
    v6 = *v4;
    if ( a3 < (v5 - v6) >> 2 )
    {
      (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 72))(v16, *(_DWORD *)(v6 + 4 * a3));
      v7 = v16[2];
      v8 = v16[3];
      v9 = v16[4];
      v10 = v16[5];
      v11 = v16[6];
      v12 = v16[7];
      v13 = v16[8];
      v14 = v16[0];
      *((_DWORD *)this + 1) = v16[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v14;
      *((_DWORD *)this + 3) = v8;
      *((_DWORD *)this + 4) = v9;
      *((_DWORD *)this + 5) = v10;
      *((_DWORD *)this + 6) = v11;
      *((_DWORD *)this + 7) = v12;
      *((_DWORD *)this + 8) = v13;
    }
  }
  return this;
}


// ===== 5615d4 glitch::io::CAttributes::setAttribute(int,glitch::core::triangle3d<float>) =====
int __fastcall glitch::io::CAttributes::setAttribute(int result, int a2, int *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // r8
  int v8; // r1
  int v9; // r7
  int v10; // r6
  int v11; // r5
  int v12; // r4
  int v13; // lr
  int v14; // r12
  int v15; // r2
  int (__fastcall *v16)(int, _DWORD *); // r3
  _DWORD v17[9]; // [sp+4h] [bp-24h] BYREF

  if ( a2 >= 0 )
  {
    v3 = *(int **)(result + 72);
    v4 = v3[1];
    v5 = *v3;
    result = v4 - v5;
    if ( a2 < result >> 2 )
    {
      v6 = *(_DWORD *)(v5 + 4 * a2);
      v7 = *a3;
      v8 = a3[8];
      v9 = a3[1];
      v10 = a3[2];
      v11 = a3[3];
      v12 = a3[4];
      v13 = a3[5];
      v14 = a3[6];
      v15 = a3[7];
      v16 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 200);
      v17[8] = v8;
      v17[0] = v7;
      v17[1] = v9;
      v17[2] = v10;
      v17[3] = v11;
      v17[4] = v12;
      v17[5] = v13;
      v17[6] = v14;
      v17[7] = v15;
      return v16(v6, v17);
    }
  }
  return result;
}


// ===== 561660 glitch::io::CAttributes::getLine2d(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getLine2d(glitch::io::CAttributes *this, int a2, int a3)
{
  int *v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r0
  _DWORD v11[4]; // [sp+0h] [bp-10h] BYREF

  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  if ( a3 >= 0 )
  {
    v4 = *(int **)(a2 + 72);
    v5 = v4[1];
    v6 = *v4;
    if ( a3 < (v5 - v6) >> 2 )
    {
      (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 92))(v11, *(_DWORD *)(v6 + 4 * a3));
      v7 = v11[2];
      v8 = v11[3];
      v9 = v11[0];
      *((_DWORD *)this + 1) = v11[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v9;
      *((_DWORD *)this + 3) = v8;
    }
  }
  return this;
}


// ===== 5616e4 glitch::io::CAttributes::setAttribute(int,glitch::core::line2d<float>) =====
int __fastcall glitch::io::CAttributes::setAttribute(int result, int a2, int *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // lr
  int v8; // r1
  int v9; // r12
  int v10; // r2
  int (__fastcall *v11)(int, _DWORD *); // r3
  _DWORD v12[5]; // [sp+0h] [bp-14h] BYREF

  if ( a2 >= 0 )
  {
    v3 = *(int **)(result + 72);
    v4 = v3[1];
    v5 = *v3;
    result = v4 - v5;
    if ( a2 < result >> 2 )
    {
      v6 = *(_DWORD *)(v5 + 4 * a2);
      v7 = *a3;
      v8 = a3[3];
      v9 = a3[1];
      v10 = a3[2];
      v11 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 216);
      v12[3] = v8;
      v12[0] = v7;
      v12[1] = v9;
      v12[2] = v10;
      return v11(v6, v12);
    }
  }
  return result;
}


// ===== 561748 glitch::io::CAttributes::getLine3d(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getLine3d(glitch::io::CAttributes *this, int a2, int a3)
{
  int *v4; // r3
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r5
  _DWORD v13[7]; // [sp+0h] [bp-1Ch] BYREF

  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  if ( a3 >= 0 )
  {
    v4 = *(int **)(a2 + 72);
    v5 = v4[1];
    v6 = *v4;
    if ( a3 < (v5 - v6) >> 2 )
    {
      (*(void (__fastcall **)(_DWORD *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 100))(v13, *(_DWORD *)(v6 + 4 * a3));
      v7 = v13[2];
      v8 = v13[3];
      v9 = v13[4];
      v10 = v13[5];
      v11 = v13[0];
      *((_DWORD *)this + 1) = v13[1];
      *((_DWORD *)this + 2) = v7;
      *(_DWORD *)this = v11;
      *((_DWORD *)this + 3) = v8;
      *((_DWORD *)this + 4) = v9;
      *((_DWORD *)this + 5) = v10;
    }
  }
  return this;
}


// ===== 5617e4 glitch::io::CAttributes::setAttribute(int,glitch::core::line3d<float>) =====
int __fastcall glitch::io::CAttributes::setAttribute(int result, int a2, int *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // r5
  int v8; // r1
  int v9; // r4
  int v10; // lr
  int v11; // r12
  int v12; // r2
  int (__fastcall *v13)(int, _DWORD *); // r3
  _DWORD v14[7]; // [sp+0h] [bp-1Ch] BYREF

  if ( a2 >= 0 )
  {
    v3 = *(int **)(result + 72);
    v4 = v3[1];
    v5 = *v3;
    result = v4 - v5;
    if ( a2 < result >> 2 )
    {
      v6 = *(_DWORD *)(v5 + 4 * a2);
      v7 = *a3;
      v8 = a3[5];
      v9 = a3[1];
      v10 = a3[2];
      v11 = a3[3];
      v12 = a3[4];
      v13 = *(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v6 + 224);
      v14[5] = v8;
      v14[0] = v7;
      v14[1] = v9;
      v14[2] = v10;
      v14[3] = v11;
      v14[4] = v12;
      return v13(v6, v14);
    }
  }
  return result;
}


// ===== 561858 glitch::io::CAttributes::getUserPointer(int) =====
int __fastcall glitch::io::CAttributes::getUserPointer(glitch::io::CAttributes *this, int a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r3

  if ( a2 < 0 )
    return 0;
  v2 = *((int **)this + 18);
  v3 = v2[1];
  v4 = *v2;
  if ( a2 >= (v3 - v4) >> 2 )
    return 0;
  else
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 4 * a2) + 132))(*(_DWORD *)(v4 + 4 * a2));
}


// ===== 56189c glitch::io::CAttributes::setAttribute(int,void *) =====
int __fastcall glitch::io::CAttributes::setAttribute(int this, int a2, void *a3)
{
  int *v3; // t0

  if ( a2 >= 0 )
  {
    v3 = *(int **)(this + 72);
    this = *v3;
    if ( a2 < (v3[1] - *v3) >> 2 )
      return (*(int (__fastcall **)(_DWORD, void *))(**(_DWORD **)(this + 4 * a2) + 244))(
               *(_DWORD *)(this + 4 * a2),
               a3);
  }
  return this;
}


// ===== 5618d8 glitch::io::CAttributes::pop(void) =====
int __fastcall glitch::io::CAttributes::pop(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(*(_DWORD *)(this + 68) + 56);
  *(_DWORD *)(this + 72) = v1 + 32;
  *(_DWORD *)(this + 68) = v1;
  return this;
}


// ===== 5618f0 glitch::io::CAttributes::getGroupsCount(void) =====
int __fastcall glitch::io::CAttributes::getGroupsCount(glitch::io::CAttributes *this)
{
  return (*(_DWORD *)(*((_DWORD *)this + 17) + 48) - *(_DWORD *)(*((_DWORD *)this + 17) + 44)) >> 2;
}


// ===== 561908 glitch::io::CAttributes::setGroup(uint) =====
int __fastcall glitch::io::CAttributes::setGroup(int this, unsigned int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(this + 68) + 44) + 4 * a2);
  *(_DWORD *)(this + 72) = v2 + 32;
  *(_DWORD *)(this + 68) = v2;
  return this;
}


// ===== 561924 glitch::io::CAttributes::getGroupName(void) =====
int __fastcall glitch::io::CAttributes::getGroupName(glitch::io::CAttributes *this)
{
  return *((_DWORD *)this + 17) + 8;
}


// ===== 561930 `global constructor keyed to'.._source_glitch_io_CAttributes.cpp =====
void `global constructor keyed to'.._source_glitch_io_CAttributes.cpp()
{
  dword_9F66D4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F66D0 = 1056964608;
}


// ===== 561950 glitch::io::CAttributes::getStringW(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getStringW(
        glitch::io::CAttributes *this,
        int a2,
        unsigned int a3)
{
  int *v3; // r3
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 32))(
      this,
      *(_DWORD *)(v6 + 4 * a3));
    return this;
  }
  else
  {
    *((_DWORD *)this + 16) = this;
    *((_DWORD *)this + 17) = this;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      this,
      0x10u);
    **((_DWORD **)this + 16) = 0;
    return this;
  }
}


// ===== 5619b0 std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 561a10 std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 561a70 glitch::io::CUserPointerAttribute::getString(char *) =====
int __fastcall glitch::io::CUserPointerAttribute::getString(glitch::io::CUserPointerAttribute *this, char *s)
{
  return sprintf(s, "0x%x", *((_DWORD *)this + 9));
}


// ===== 561a88 glitch::io::CUserPointerAttribute::setString(char const*) =====
int __fastcall glitch::io::CUserPointerAttribute::setString(glitch::io::CUserPointerAttribute *this, const char *s)
{
  return sscanf(s, "0x%x", (char *)this + 36);
}


// ===== 561aa0 glitch::io::CAttributes::setAttribute(int,boost::intrusive_ptr<glitch::video::CLight>) =====
void __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, _DWORD **a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  _DWORD *v6; // r2
  void (*v7)(void); // r3
  _DWORD *v8; // r0
  _DWORD *v10; // r2
  _DWORD *v11; // [sp+4h] [bp-4h]

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  if ( a2 < (v4 - v5) >> 2 )
  {
    v6 = *a3;
    v7 = *(void (**)(void))(**(_DWORD **)(v5 + 4 * a2) + 256);
    v11 = v6;
    if ( v6 )
      ++*v6;
    v7();
    v8 = v11;
    if ( v11 )
    {
      if ( (*v11)-- == 1 )
      {
        if ( !*((_BYTE *)v8 + 84) )
        {
          v10 = (_DWORD *)v8[20];
          *v10 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v10;
        }
        v8[20] = 0;
        LC_API_FREE_0(v8);
      }
    }
  }
}


// ===== 561b54 glitch::io::IAttributes::~IAttributes() =====
void __fastcall glitch::io::IAttributes::~IAttributes(glitch::io::IAttributes *this)
{
  LC_API_FREE_0(this);
}


// ===== 561b68 std::priv::__copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,int>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v4; // r4
  _DWORD *v5; // r7
  int v6; // r8
  int v7; // r6
  _DWORD *v8; // r5

  v3 = (a2 - a1) >> 3;
  v4 = a1;
  v5 = a3;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 > 0 )
  {
    v7 = -1431655765 * v3;
    v8 = a3;
    while ( 1 )
    {
      if ( (_DWORD *)v4 != v8 )
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v8,
          *(_BYTE **)(v4 + 20),
          *(_BYTE **)(v4 + 16));
      --v7;
      v8 += 6;
      if ( !v7 )
        break;
      v4 += 24;
    }
    v5 += 6 * v6;
  }
  return v5;
}


// ===== 561bdc glitch::core::plane3d<float>::setPlane(glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&,glitch::core::vector3d<float> const&) =====
unsigned int __fastcall glitch::core::plane3d<float>::setPlane(int a1, float *a2, float *a3, float *a4)
{
  float v6; // r10
  float v7; // r8
  float v8; // r11
  float v9; // r6
  float v10; // r9
  unsigned int result; // r0
  float v12; // [sp+0h] [bp-Ch]
  float v13; // [sp+0h] [bp-Ch]

  v6 = *a3 - *a2;
  v7 = a3[1] - a2[1];
  v12 = a2[2];
  v8 = a3[2] - v12;
  v9 = *a4 - *a2;
  v10 = a4[1] - a2[1];
  v13 = a4[2] - v12;
  *(float *)a1 = (float)(v13 * COERCE_FLOAT(LODWORD(v7) + 0x80000000)) + (float)(v8 * v10);
  *(float *)(a1 + 4) = (float)(v9 * COERCE_FLOAT(LODWORD(v8) + 0x80000000)) + (float)(v6 * v13);
  *(float *)(a1 + 8) = (float)(v10 * COERCE_FLOAT(LODWORD(v6) + 0x80000000)) + (float)(v7 * v9);
  glitch::core::vector3d<float>::normalize(a1);
  result = COERCE_INT(
             (float)((float)(*a2 * *(float *)a1) + (float)(a2[1] * *(float *)(a1 + 4)))
           + (float)(a2[2] * *(float *)(a1 + 8)))
         + 0x80000000;
  *(_DWORD *)(a1 + 12) = result;
  return result;
}


// ===== 561d50 glitch::io::CTriangleAttribute::getPlane(void) =====
glitch::io::CTriangleAttribute *__fastcall glitch::io::CTriangleAttribute::getPlane(
        glitch::io::CTriangleAttribute *this,
        int a2)
{
  float v4[3]; // [sp+4h] [bp-28h] BYREF
  float v5; // [sp+10h] [bp-1Ch] BYREF
  float v6; // [sp+1Ch] [bp-10h] BYREF

  (*(void (__fastcall **)(float *))(*(_DWORD *)a2 + 72))(v4);
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  glitch::core::plane3d<float>::setPlane((int)this, v4, &v5, &v6);
  return this;
}


// ===== 561da0 glitch::io::CMatrixAttribute::getQuaternion(void) =====
glitch::io::CMatrixAttribute *__fastcall glitch::io::CMatrixAttribute::getQuaternion(
        glitch::io::CMatrixAttribute *this,
        int a2)
{
  float v4[18]; // [sp+4h] [bp-48h] BYREF

  (*(void (__fastcall **)(float *))(*(_DWORD *)a2 + 68))(v4);
  glitch::core::quaternion::operator=((float *)this, v4);
  return this;
}


// ===== 561dd8 glitch::io::CLightAttribute::getString(char *) =====
_DWORD *__fastcall glitch::io::CLightAttribute::getString(_DWORD *this, char *a2)
{
  if ( *(this + 9) )
    return memcpy(a2, "light", 6u);
  *a2 = 0;
  return this;
}


// ===== 561e00 glitch::io::CTextureAttribute::getString(void) =====
glitch::io::CTextureAttribute *__fastcall glitch::io::CTextureAttribute::getString(
        glitch::io::CTextureAttribute *this,
        int a2)
{
  glitch::io::toString(this, a2 + 36, *(_DWORD *)(a2 + 40));
  return this;
}


// ===== 561e1c std::priv::__copy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v4; // r7
  int v5; // r4
  int v6; // r8
  int v7; // r5
  int v8; // r6

  v3 = (a2 - a1) >> 3;
  v4 = a3;
  v5 = a1;
  v6 = 954437177 * v3;
  if ( 954437177 * v3 > 0 )
  {
    v7 = a3;
    v8 = 954437177 * v3;
    while ( 1 )
    {
      if ( v7 != v5 )
        std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v7,
          *(const wchar_t **)(v5 + 68),
          *(_DWORD **)(v5 + 64));
      --v8;
      v7 += 72;
      if ( !v8 )
        break;
      v5 += 72;
    }
    v4 += 72 * v6;
  }
  return v4;
}


// ===== 561e98 glitch::io::CEnumAttribute::getInt(void) =====
int __fastcall glitch::io::CEnumAttribute::getInt(glitch::io::CEnumAttribute *this)
{
  int v1; // r6
  int i; // r5
  int v3; // r4
  const char *v4; // r7
  int v5; // r0

  v1 = *((_DWORD *)this + 15);
  if ( !(-1431655765 * ((*((_DWORD *)this + 16) - v1) >> 3)) )
    return -1;
  v3 = 0;
  v4 = *((const char **)this + 14);
  for ( i = 0; ; ++i )
  {
    v5 = LC_API_STRCASECMP_0(v4, *(const char **)(v1 + v3 + 20));
    v3 += 24;
    if ( !v5 )
      break;
  }
  return i;
}


// ===== 561f04 glitch::io::CAttributes::getEnum(int,char const* const*) =====
int __fastcall glitch::io::CAttributes::getEnum(glitch::io::CAttributes *this, unsigned int a2, const char **a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int v6; // r4
  int v8; // r3
  bool v9; // zf
  const char *v10; // r5
  const char **v11; // r2
  const char *v12; // r1
  int v13; // r0
  const char **v15; // [sp+4h] [bp-8h]

  v3 = *((int **)this + 18);
  v4 = v3[1];
  v5 = *v3;
  if ( a2 >= (v4 - v5) >> 2 )
    return -1;
  v8 = *(_DWORD *)(v5 + 4 * a2);
  v9 = v8 == 0;
  if ( v8 )
    v9 = a3 == nullptr;
  if ( v9 )
    return -1;
  v10 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 128))(v8);
  v11 = a3;
  if ( !v10 )
    return -1;
  v12 = *a3;
  if ( !*a3 )
    return -1;
  v6 = 0;
  while ( 1 )
  {
    v15 = v11;
    v13 = LC_API_STRCMP_0(v10, v12);
    v11 = v15;
    if ( !v13 )
      break;
    v12 = v15[++v6];
    if ( !v12 )
      return -1;
  }
  return v6;
}


// ===== 561fa0 glitch::io::CAttributes::getAttributeP(char const*) =====
int __fastcall glitch::io::CAttributes::getAttributeP(glitch::io::CAttributes *this, char *a2)
{
  int *v2; // r3
  int v5; // r2
  int v6; // r3
  unsigned int v7; // r4
  int *v8; // r3
  int v9; // r2
  int v10; // r7

  v2 = *((int **)this + 18);
  v5 = v2[1];
  v6 = *v2;
  if ( !((unsigned int)(v5 - v6) >> 2) )
    return 0;
  v7 = 0;
  while ( 1 )
  {
    v10 = 4 * v7;
    if ( std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
           *(_DWORD *)(v6 + 4 * v7++) + 8,
           a2) )
    {
      break;
    }
    v8 = *((int **)this + 18);
    v9 = v8[1];
    v6 = *v8;
    if ( v7 >= (v9 - v6) >> 2 )
      return 0;
  }
  return *(_DWORD *)(**((_DWORD **)this + 18) + v10);
}


// ===== 56201c glitch::io::CAttributes::getUserPointer(char const*) =====
int __fastcall glitch::io::CAttributes::getUserPointer(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
    return (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 132))(AttributeP);
  else
    return 0;
}


// ===== 562044 glitch::io::CAttributes::getLine3d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getLine3d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r5
  _DWORD v11[7]; // [sp+0h] [bp-1Ch] BYREF

  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)AttributeP + 100))(v11, AttributeP);
    v5 = v11[2];
    v6 = v11[3];
    v7 = v11[4];
    v8 = v11[5];
    v9 = v11[0];
    *((_DWORD *)this + 1) = v11[1];
    *((_DWORD *)this + 2) = v5;
    *(_DWORD *)this = v9;
    *((_DWORD *)this + 3) = v6;
    *((_DWORD *)this + 4) = v7;
    *((_DWORD *)this + 5) = v8;
  }
  return this;
}


// ===== 5620d0 glitch::io::CAttributes::getLine2d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getLine2d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r0
  _DWORD v9[4]; // [sp+0h] [bp-10h] BYREF

  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)AttributeP + 92))(v9, AttributeP);
    v5 = v9[2];
    v6 = v9[3];
    v7 = v9[0];
    *((_DWORD *)this + 1) = v9[1];
    *((_DWORD *)this + 2) = v5;
    *(_DWORD *)this = v7;
    *((_DWORD *)this + 3) = v6;
  }
  return this;
}


// ===== 562144 glitch::io::CAttributes::getTriangle3d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getTriangle3d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  int v5; // r6
  int v6; // r5
  int v7; // r12
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r8
  _DWORD v14[9]; // [sp+4h] [bp-24h] BYREF

  *((_DWORD *)this + 8) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)AttributeP + 72))(v14, AttributeP);
    v5 = v14[2];
    v6 = v14[3];
    v7 = v14[4];
    v8 = v14[5];
    v9 = v14[6];
    v10 = v14[7];
    v11 = v14[8];
    v12 = v14[0];
    *((_DWORD *)this + 1) = v14[1];
    *((_DWORD *)this + 2) = v5;
    *(_DWORD *)this = v12;
    *((_DWORD *)this + 3) = v6;
    *((_DWORD *)this + 4) = v7;
    *((_DWORD *)this + 5) = v8;
    *((_DWORD *)this + 6) = v9;
    *((_DWORD *)this + 7) = v10;
    *((_DWORD *)this + 8) = v11;
  }
  return this;
}


// ===== 5621f4 glitch::io::CAttributes::getPlane3d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getPlane3d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r0
  _DWORD v9[4]; // [sp+0h] [bp-10h] BYREF

  *((_DWORD *)this + 1) = 1065353216;
  *((_DWORD *)this + 3) = 0x80000000;
  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)AttributeP + 116))(v9, AttributeP);
    v5 = v9[2];
    v6 = v9[3];
    v7 = v9[0];
    *((_DWORD *)this + 1) = v9[1];
    *((_DWORD *)this + 2) = v5;
    *(_DWORD *)this = v7;
    *((_DWORD *)this + 3) = v6;
  }
  return this;
}


// ===== 562270 glitch::io::CAttributes::getBox3d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getBox3d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r5
  _DWORD v11[7]; // [sp+0h] [bp-1Ch] BYREF

  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)AttributeP + 112))(v11, AttributeP);
    v5 = v11[2];
    v6 = v11[3];
    v7 = v11[4];
    v8 = v11[5];
    v9 = v11[0];
    *((_DWORD *)this + 1) = v11[1];
    *((_DWORD *)this + 2) = v5;
    *(_DWORD *)this = v9;
    *((_DWORD *)this + 3) = v6;
    *((_DWORD *)this + 4) = v7;
    *((_DWORD *)this + 5) = v8;
  }
  return this;
}


// ===== 5622fc glitch::io::CAttributes::getQuaternion(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getQuaternion(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r0
  _DWORD v9[4]; // [sp+0h] [bp-10h] BYREF

  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = 1065353216;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 2) = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_DWORD *, int))(*(_DWORD *)AttributeP + 64))(v9, AttributeP);
    v5 = v9[2];
    v6 = v9[3];
    v7 = v9[0];
    *((_DWORD *)this + 1) = v9[1];
    *((_DWORD *)this + 2) = v5;
    *(_DWORD *)this = v7;
    *((_DWORD *)this + 3) = v6;
  }
  return this;
}


// ===== 562374 glitch::io::CAttributes::existsAttribute(char const*) =====
bool __fastcall glitch::io::CAttributes::existsAttribute(glitch::io::CAttributes *this, char *a2)
{
  return glitch::io::CAttributes::getAttributeP(this, a2) != 0;
}


// ===== 562388 glitch::io::CAttributes::getAttributeTypeString(char const*) =====
void *__fastcall glitch::io::CAttributes::getAttributeTypeString(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
    return (void *)(*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 264))(AttributeP);
  else
    return &unk_8DEF78;
}


// ===== 5623b8 glitch::io::CAttributes::getAttributeType(char const*) =====
int __fastcall glitch::io::CAttributes::getAttributeType(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
    return (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 260))(AttributeP);
  else
    return 30;
}


// ===== 5623e0 glitch::io::CAttributes::getLight(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getLight(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 124))(this, AttributeP);
  else
    *(_DWORD *)this = 0;
  return this;
}


// ===== 56241c glitch::io::CAttributes::getTexture(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getTexture(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 120))(this, AttributeP);
  else
    *(_DWORD *)this = 0;
  return this;
}


// ===== 562458 glitch::io::CAttributes::getEnum(char const*,char const* const*) =====
int __fastcall glitch::io::CAttributes::getEnum(glitch::io::CAttributes *this, char *a2, const char **a3)
{
  int AttributeP; // r0
  bool v5; // zf
  int v6; // r4
  int v8; // r0
  const char *v9; // r6
  const char *v10; // r1

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  v5 = AttributeP == 0;
  if ( AttributeP )
    v5 = a3 == nullptr;
  if ( v5 )
    return -1;
  v8 = (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 128))(AttributeP);
  v9 = (const char *)v8;
  if ( !v8 )
    return -1;
  v10 = *a3;
  if ( !*a3 )
    return -1;
  v6 = 0;
  while ( LC_API_STRCMP_0(v9, v10) )
  {
    v10 = a3[++v6];
    if ( !v10 )
      return -1;
  }
  return v6;
}


// ===== 5624c4 glitch::io::CAttributes::getEnum(char const*) =====
int __fastcall glitch::io::CAttributes::getEnum(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
    return (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 128))(AttributeP);
  else
    return 0;
}


// ===== 5624ec glitch::io::CAttributes::getBinaryData(char const*,void *,int) =====
int __fastcall glitch::io::CAttributes::getBinaryData(glitch::io::CAttributes *this, char *a2, void *a3, int a4)
{
  int result; // r0

  result = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( result )
    return (*(int (__fastcall **)(int, void *, int))(*(_DWORD *)result + 44))(result, a3, a4);
  return result;
}


// ===== 56251c glitch::io::CAttributes::getVector4di(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getVector4di(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 88))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 3) = 0;
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
  }
  return this;
}


// ===== 56256c glitch::io::CAttributes::getVector3di(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getVector3di(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 84))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 2) = 0;
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 1) = 0;
  }
  return this;
}


// ===== 5625b0 glitch::io::CAttributes::getVector2di(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getVector2di(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 80))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 1) = 0;
    *(_DWORD *)this = 0;
  }
  return this;
}


// ===== 5625f0 glitch::io::CAttributes::getVector4d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getVector4d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 52))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 3) = 0;
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
  }
  return this;
}


// ===== 562644 glitch::io::CAttributes::getVector3d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getVector3d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 48))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 2) = 0;
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 1) = 0;
  }
  return this;
}


// ===== 562694 glitch::io::CAttributes::getVector2d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getVector2d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 76))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 1) = 0;
    *(_DWORD *)this = 0;
  }
  return this;
}


// ===== 5626d8 glitch::io::CAttributes::getRect(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getRect(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 60))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 3) = 0;
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
  }
  return this;
}


// ===== 562728 glitch::io::CAttributes::getPosition2d(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getPosition2d(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 56))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 1) = 0;
    *(_DWORD *)this = 0;
  }
  return this;
}


// ===== 562768 glitch::io::CAttributes::getColorf(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getColorf(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 20))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 1065353216;
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 1) = 0;
  }
  return this;
}


// ===== 5627c0 glitch::io::CAttributes::getColor(char const*) =====
int __fastcall glitch::io::CAttributes::getColor(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0
  unsigned __int8 v3; // r3
  unsigned __int8 v4; // r2
  unsigned __int8 v5; // r12
  unsigned int v6; // r1
  unsigned int v8; // [sp+0h] [bp-14h]

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  v3 = AttributeP;
  if ( AttributeP )
  {
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 24))(AttributeP);
    v3 = v8;
    v6 = HIBYTE(v8);
    v5 = BYTE2(v8);
    v4 = BYTE1(v8);
  }
  else
  {
    v4 = 0;
    v5 = 0;
    LOBYTE(v6) = 0;
  }
  return v3 | (unsigned __int16)(v4 << 8) | (v5 << 16) & 0xFFFFFF | ((unsigned __int8)v6 << 24);
}


// ===== 562838 glitch::io::CAttributes::getFloat(char const*) =====
int __fastcall glitch::io::CAttributes::getFloat(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
    return (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 16))(AttributeP);
  else
    return 0;
}


// ===== 562860 glitch::io::CAttributes::getInt(char const*) =====
int __fastcall glitch::io::CAttributes::getInt(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
    return (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 12))(AttributeP);
  else
    return 0;
}


// ===== 562888 glitch::io::CAttributes::getBool(char const*) =====
int __fastcall glitch::io::CAttributes::getBool(glitch::io::CAttributes *this, char *a2)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
    return (*(int (__fastcall **)(int))(*(_DWORD *)AttributeP + 40))(AttributeP);
  else
    return 0;
}


// ===== 5628b0 glitch::io::CAttributes::getArray(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getArray(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 36))(this, AttributeP);
  }
  else
  {
    *((_DWORD *)this + 2) = 0;
    *(_DWORD *)this = 0;
    *((_DWORD *)this + 1) = 0;
  }
  return this;
}


// ===== 5628f4 glitch::io::CAttributes::findAttribute(char const*) =====
int __fastcall glitch::io::CAttributes::findAttribute(glitch::io::CAttributes *this, char *a2)
{
  int *v2; // r3
  int v5; // r2
  int v6; // r3
  unsigned int v7; // r4
  int *v8; // r3
  int v9; // r2

  v2 = *((int **)this + 18);
  v5 = v2[1];
  v6 = *v2;
  if ( !((unsigned int)(v5 - v6) >> 2) )
    return -1;
  v7 = 0;
  while ( !std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
             *(_DWORD *)(v6 + 4 * v7) + 8,
             a2) )
  {
    v8 = *((int **)this + 18);
    ++v7;
    v9 = v8[1];
    v6 = *v8;
    if ( v7 >= (v9 - v6) >> 2 )
      return -1;
  }
  return v7;
}


// ===== 562964 glitch::io::CAttributes::SContext::hasContext(char const*) =====
int __fastcall glitch::io::CAttributes::SContext::hasContext(glitch::io::CAttributes::SContext *this, char *a2)
{
  int v2; // r3
  unsigned int v5; // r4
  int v6; // r7

  v2 = *((_DWORD *)this + 11);
  if ( !((unsigned int)(*((_DWORD *)this + 12) - v2) >> 2) )
    return 0;
  v5 = 0;
  while ( 1 )
  {
    v6 = 4 * v5;
    if ( std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
           *(_DWORD *)(v2 + 4 * v5++) + 8,
           a2) )
    {
      break;
    }
    v2 = *((_DWORD *)this + 11);
    if ( v5 >= (*((_DWORD *)this + 12) - v2) >> 2 )
      return 0;
  }
  return *(_DWORD *)(*((_DWORD *)this + 11) + v6);
}


// ===== 5629d4 std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::basic_ostringstream(int) [clone] =====
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


// ===== 562a84 glitch::io::CEnumAttribute::getStringW(void) =====
glitch::io::CEnumAttribute *__fastcall glitch::io::CEnumAttribute::getStringW(glitch::io::CEnumAttribute *this, int a2)
{
  int v2; // r4
  int v3; // r5
  int v5; // r4
  _DWORD *v6; // r1
  int i; // r3

  v2 = *(_DWORD *)(a2 + 52);
  v3 = *(_DWORD *)(a2 + 56);
  *((_DWORD *)this + 16) = this;
  v5 = v2 - v3;
  *((_DWORD *)this + 17) = this;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    v5 + 1);
  v6 = *((_DWORD **)this + 17);
  if ( v5 > 0 )
  {
    for ( i = 0; i != v5; ++i )
      v6[i] = *(char *)(v3 + i);
    v6 += i;
  }
  *((_DWORD *)this + 16) = v6;
  *v6 = 0;
  return this;
}


// ===== 562ae4 glitch::io::CLightAttribute::getString(void) =====
glitch::io::CLightAttribute *__fastcall glitch::io::CLightAttribute::getString(glitch::io::CLightAttribute *this)
{
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    this,
    "light");
  return this;
}


// ===== 562b10 glitch::io::CAttributes::SContext::SContext(char const*) =====
glitch::io::CAttributes::SContext *__fastcall glitch::io::CAttributes::SContext::SContext(
        glitch::io::CAttributes::SContext *this,
        char *a2)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9742B8;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 2,
    a2);
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  return this;
}


// ===== 562b78 glitch::io::CAttributes::CAttributes(glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::io::CAttributes::CAttributes(_DWORD *a1, int a2)
{
  _DWORD *v4; // r5
  int v5; // r3
  _DWORD *result; // r0

  a1[1] = 1;
  *a1 = off_973FB8;
  v4 = a1 + 2;
  glitch::io::CAttributes::SContext::SContext((glitch::io::CAttributes::SContext *)(a1 + 2), "");
  v5 = 0;
  a1[21] = 0;
  a1[19] = 0;
  a1[20] = 0;
  a1[17] = v4;
  a1[18] = a1 + 10;
  a1[22] = a2;
  if ( a2 )
    v5 = *(_DWORD *)(a2 + 4);
  result = a1;
  if ( a2 )
    *(_DWORD *)(a2 + 4) = v5 + 1;
  return result;
}


// ===== 562bfc glitch::io::CAttributes::CAttributes(glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::io::CAttributes::CAttributes(_DWORD *a1, int a2)
{
  _DWORD *v4; // r5
  int v5; // r3
  _DWORD *result; // r0

  a1[1] = 1;
  *a1 = off_973FB8;
  v4 = a1 + 2;
  glitch::io::CAttributes::SContext::SContext((glitch::io::CAttributes::SContext *)(a1 + 2), "");
  v5 = 0;
  a1[21] = 0;
  a1[19] = 0;
  a1[20] = 0;
  a1[17] = v4;
  a1[18] = a1 + 10;
  a1[22] = a2;
  if ( a2 )
    v5 = *(_DWORD *)(a2 + 4);
  result = a1;
  if ( a2 )
    *(_DWORD *)(a2 + 4) = v5 + 1;
  return result;
}


// ===== 562c80 glitch::io::CAttributes::SContext::SContext(char const*) =====
glitch::io::CAttributes::SContext *__fastcall glitch::io::CAttributes::SContext::SContext(
        glitch::io::CAttributes::SContext *this,
        char *a2)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9742B8;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 2,
    a2);
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  return this;
}


// ===== 562ce8 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1,
        int a2)
{
  a1[4] = a1;
  a1[5] = a1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  return a1;
}


// ===== 562d0c glitch::io::CEnumAttribute::getString(void) =====
glitch::io::CEnumAttribute *__fastcall glitch::io::CEnumAttribute::getString(glitch::io::CEnumAttribute *this, int a2)
{
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    this,
    a2 + 36);
  return this;
}


// ===== 562d24 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*>(uint &,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*) =====
char *__fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)GlitchAlloc(24 * *a2, 0);
  v7 = -1431655765 * ((a4 - a3) >> 3);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        &v6[v8],
        a3 + v8);
      --v7;
      v8 += 24;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 562d90 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*>(uint &,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*) =====
char *__fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)GlitchAlloc(24 * *a2, 0);
  v7 = -1431655765 * ((a4 - a3) >> 3);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        &v6[v8],
        a3 + v8);
      --v7;
      v8 += 24;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 562dfc std::priv::__ucopy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
        int a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  int v5; // r5
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r4

  v3 = (a2 - a1) >> 3;
  v5 = a1;
  v6 = 954437177 * v3;
  if ( 954437177 * v3 <= 0 )
    return a3;
  v7 = 954437177 * v3;
  v8 = a3;
  while ( 1 )
  {
    v8[16] = v8;
    v8[17] = v8;
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v8,
      *(_BYTE **)(v5 + 68),
      *(_BYTE **)(v5 + 64));
    --v7;
    v8 += 18;
    if ( !v7 )
      break;
    v5 += 72;
  }
  return &a3[18 * v6];
}


// ===== 562e7c std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int *a2)
{
  int v3; // r3
  int v5; // r7
  _DWORD *v6; // r0

  v3 = (a2[1] - *a2) >> 3;
  *a1 = 0;
  v5 = 2 * v3;
  a1[1] = 0;
  a1[2] = 0;
  v6 = GlitchAlloc(8 * v3, 0);
  *a1 = v6;
  a1[1] = v6;
  a1[2] = &v6[v5];
  a1[1] = std::priv::__ucopy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
            *a2,
            a2[1],
            v6);
  return a1;
}


// ===== 562f10 glitch::io::CStringWArrayAttribute::getArray(void) =====
glitch::io::CStringWArrayAttribute *__fastcall glitch::io::CStringWArrayAttribute::getArray(
        glitch::io::CStringWArrayAttribute *this,
        int a2)
{
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    this,
    (int *)(a2 + 36));
  return this;
}


// ===== 562f28 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*>(uint &,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*) =====
_DWORD *__fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  _DWORD *v6; // r4

  v6 = GlitchAlloc(72 * *a2, 0);
  std::priv::__ucopy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
    a3,
    a4,
    v6);
  return v6;
}


// ===== 562f78 std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::io::IAttribute **,uint,glitch::io::IAttribute * const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
  unsigned int v12; // r3
  int v13; // r10
  char *v14; // r0
  int j; // r1
  int k; // r3
  int v17; // r8
  char *v18; // r3
  char *v19; // r10
  int v20; // r8
  int i; // r2

  v5 = (unsigned int)a4 >= *(_DWORD *)result;
  v6 = result;
  if ( v5 )
  {
    v9 = *((char **)result + 1);
    if ( a4 < v9 )
      return (char *)std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
  }
  else
  {
    v9 = *((char **)result + 1);
  }
  v10 = v9 - a2;
  v11 = (v9 - a2) >> 2;
  if ( a3 < v11 )
  {
    v17 = 4 * a3;
    v18 = &v9[-4 * a3];
    if ( v18 == v9 )
    {
      v19 = v9;
    }
    else
    {
      v19 = v18;
      result = (char *)memcpy(v9, v18, v9 - v18);
      v18 = *((char **)v6 + 1);
    }
    *((_DWORD *)v6 + 1) = &v18[v17];
    if ( v19 - a2 > 0 )
      result = (char *)memmove(&v9[-(v19 - a2)], a2, v19 - a2);
    v20 = v17 >> 2;
    if ( v20 > 0 )
    {
      for ( i = 0; i != v20; ++i )
        *(_DWORD *)&a2[4 * i] = *(_DWORD *)a4;
    }
  }
  else
  {
    v12 = a3 - v11;
    v13 = (int)(4 * v12) >> 2;
    v14 = &v9[4 * v12];
    if ( v13 > 0 )
    {
      for ( j = 0; j != v13; ++j )
        *(_DWORD *)&v9[4 * j] = *(_DWORD *)a4;
    }
    *((_DWORD *)v6 + 1) = v14;
    if ( a2 != v9 )
    {
      memcpy(v14, a2, v10);
      v14 = *((char **)v6 + 1);
    }
    result = &v14[4 * v11];
    *((_DWORD *)v6 + 1) = result;
    if ( v11 > 0 )
    {
      for ( k = 0; k != v11; ++k )
        *(_DWORD *)&a2[4 * k] = *(_DWORD *)a4;
    }
  }
  return result;
}


// ===== 5630c0 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int *__fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        int *a1,
        int *a2)
{
  int v4; // r3
  int v5; // r12
  int v6; // r2
  int v7; // lr
  unsigned int v8; // r6
  int v9; // r0
  int v10; // r0
  int v11; // r7
  _DWORD *i; // r5
  _DWORD *v13; // r3
  bool v14; // zf
  _DWORD *v15; // r8
  _DWORD *v17; // r0
  void **v18; // r5
  void **v19; // r7
  void **v20; // r3
  int v21; // r3
  int v22; // [sp+8h] [bp-14h] BYREF

  if ( a2 != a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = (v4 - *a2) >> 3;
    v8 = 954437177 * v7;
    if ( 954437177 * v7 > (unsigned int)(954437177 * ((a1[2] - *a1) >> 3)) )
    {
      v22 = 954437177 * v7;
      v17 = std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*>(
              (int)a1,
              &v22,
              v5,
              v4);
      v18 = (void **)a1[1];
      v19 = (void **)*a1;
      v15 = v17;
      if ( v18 != (void **)*a1 )
      {
        do
        {
          v18 -= 18;
          v20 = (void **)v18[17];
          if ( v20 != v18 && v20 )
            GlitchFree(v18[17]);
        }
        while ( v19 != v18 );
        v18 = (void **)*a1;
      }
      GlitchFree(v18);
      v21 = v22;
      *a1 = (int)v15;
      a1[2] = (int)&v15[18 * v21];
    }
    else
    {
      v9 = (a1[1] - v6) >> 3;
      if ( v8 > 954437177 * v9 )
      {
        std::priv::__copy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
          v5,
          v5 + 8 * v9,
          v6);
        std::priv::__ucopy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
          *a2 + 8 * ((a1[1] - *a1) >> 3),
          a2[1],
          (_DWORD *)a1[1]);
      }
      else
      {
        v10 = std::priv::__copy<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
                v5,
                v4,
                v6);
        v11 = a1[1];
        for ( i = (_DWORD *)v10; (_DWORD *)v11 != i; i += 18 )
        {
          v13 = (_DWORD *)i[17];
          v14 = v13 == i;
          if ( !v14 && v13 )
            GlitchFree(v13);
        }
      }
      v15 = (_DWORD *)*a1;
    }
    a1[1] = (int)&v15[18 * v8];
  }
  return a1;
}


// ===== 5632a4 glitch::io::CStringWArrayAttribute::setArray(std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>) =====
int *__fastcall glitch::io::CStringWArrayAttribute::setArray(int a1, int *a2)
{
  return std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
           (int *)(a1 + 36),
           a2);
}


// ===== 5632ac glitch::io::CAttributes::setAttribute(int,std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>) =====
void ***__fastcall glitch::io::CAttributes::setAttribute(void ***result, int a2, int *a3)
{
  void ****v3; // t0
  void **v4; // r5
  void (__fastcall *v5)(void **, void ***); // r6
  void **v6[3]; // [sp+4h] [bp-Ch] BYREF

  if ( a2 >= 0 )
  {
    v3 = (void ****)result[18];
    result = *v3;
    if ( a2 < v3[1] - *v3 )
    {
      v4 = result[a2];
      v5 = *((void (__fastcall **)(void **, void ***))*v4 + 38);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        v6,
        a3);
      v5(v4, v6);
      return std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v6);
    }
  }
  return result;
}


// ===== 563308 glitch::io::CAttributes::getArray(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getArray(glitch::io::CAttributes *this, int a2, int a3)
{
  int *v4; // r3
  int v5; // r1
  int v6; // r3
  void **v8[4]; // [sp+4h] [bp-10h] BYREF

  *((_DWORD *)this + 2) = 0;
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  if ( a3 >= 0 )
  {
    v4 = *(int **)(a2 + 72);
    v5 = v4[1];
    v6 = *v4;
    if ( a3 < (v5 - v6) >> 2 )
    {
      (*(void (__fastcall **)(void ***, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 36))(v8, *(_DWORD *)(v6 + 4 * a3));
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        (int *)this,
        (int *)v8);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v8);
    }
  }
  return this;
}


// ===== 563380 glitch::io::CStringWArrayAttribute::~CStringWArrayAttribute() =====
void __fastcall glitch::io::CStringWArrayAttribute::~CStringWArrayAttribute(void ***this)
{
  void ***v2; // r0

  *this = (void **)off_973BA0;
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 9);
  *this = (void **)off_95B608;
  v2 = (void ***)*(this + 7);
  if ( v2 != this + 2 && v2 )
    GlitchFree(v2);
  LC_API_FREE_0(this);
}


// ===== 5633ec glitch::io::CLightAttribute::setLight(boost::intrusive_ptr<glitch::video::CLight> const&) =====
void __fastcall glitch::io::CLightAttribute::setLight(int a1, _DWORD **a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r1
  _DWORD *v5; // r0

  v2 = *a2;
  if ( *a2 )
    ++*v2;
  v3 = *(_DWORD **)(a1 + 36);
  *(_DWORD *)(a1 + 36) = v2;
  if ( v3 )
  {
    if ( (*v3)-- == 1 )
    {
      if ( !*((_BYTE *)v3 + 84) )
      {
        v5 = (_DWORD *)v3[20];
        *v5 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v5;
      }
      v3[20] = 0;
      LC_API_FREE_0(v3);
    }
  }
}


// ===== 563468 std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::io::IAttribute **,glitch::io::IAttribute * const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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
     * std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 563528 std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::io::IAttribute * const&) =====
void __fastcall std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r12
  _BYTE v3[4]; // [sp+Ch] [bp-4h] BYREF

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)a1,
      *(_BYTE **)(a1 + 4),
      a2,
      (int)v3,
      1u,
      1);
  }
  else
  {
    *v2 = *a2;
    *(_DWORD *)(a1 + 4) += 4;
  }
}


// ===== 56357c std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::io::IAttribute **,uint,glitch::io::IAttribute * const&) =====
void __fastcall std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 5635d0 std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::io::CAttributes::SContext **,glitch::io::CAttributes::SContext * const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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
     * std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 563690 glitch::io::CAttributes::SContext::getContext(char const*,bool) =====
glitch::io::CAttributes::SContext *__fastcall glitch::io::CAttributes::SContext::getContext(
        glitch::io::CAttributes::SContext *this,
        char *a2,
        int a3)
{
  int v3; // r3
  unsigned int v7; // r6
  int v8; // r7
  glitch::io::CAttributes::SContext *v11; // r6
  _BYTE *v12; // r1
  _BYTE *v13; // r3
  glitch::io::CAttributes::SContext *v14; // [sp+8h] [bp-8h] BYREF
  char v15[4]; // [sp+Ch] [bp-4h] BYREF

  v3 = *((_DWORD *)this + 11);
  if ( (unsigned int)(*((_DWORD *)this + 12) - v3) >> 2 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = 4 * v7;
      if ( std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
             *(_DWORD *)(v3 + 4 * v7++) + 8,
             a2) )
      {
        return *(glitch::io::CAttributes::SContext **)(*((_DWORD *)this + 11) + v8);
      }
      v3 = *((_DWORD *)this + 11);
      if ( v7 >= (*((_DWORD *)this + 12) - v3) >> 2 )
        goto LABEL_7;
    }
  }
  else
  {
LABEL_7:
    if ( a3 )
    {
      v11 = (glitch::io::CAttributes::SContext *)operator new(0x3Cu, 0);
      glitch::io::CAttributes::SContext::SContext(v11, a2);
      v12 = *((_BYTE **)this + 12);
      v13 = *((_BYTE **)this + 13);
      v14 = v11;
      if ( v12 == v13 )
      {
        std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (const void **)this + 11,
          v12,
          &v14,
          (int)v15,
          1u,
          1);
      }
      else
      {
        *(_DWORD *)v12 = v11;
        *((_DWORD *)this + 12) += 4;
      }
      *((_DWORD *)v14 + 14) = this;
      return v14;
    }
    else
    {
      return nullptr;
    }
  }
}


// ===== 56377c glitch::io::CLightAttribute::getStringW(void) =====
glitch::io::CLightAttribute *__fastcall glitch::io::CLightAttribute::getStringW(
        glitch::io::CLightAttribute *this,
        int a2)
{
  if ( *(_DWORD *)(a2 + 36) )
    glitch::core::stringc2stringw(this, "light");
  else
    glitch::core::stringc2stringw(this, "");
  return this;
}


// ===== 5637c0 glitch::io::CAttributes::getStringW(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getStringW(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  _DWORD *v8[17]; // [sp+0h] [bp-48h] BYREF
  void *p; // [sp+44h] [bp-4h]

  *((_DWORD *)this + 16) = this;
  *((_DWORD *)this + 17) = this;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    this,
    0x10u);
  **((_DWORD **)this + 16) = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_DWORD **, int))(*(_DWORD *)AttributeP + 32))(v8, AttributeP);
    if ( this != (glitch::io::CAttributes *)v8 )
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        (int)this,
        (const wchar_t *)p,
        v8[16]);
    if ( p != v8 && p )
      GlitchFree(p);
  }
  return this;
}


// ===== 563858 glitch::io::CAttributes::getStringW(char const*,wchar_t *) =====
void __fastcall glitch::io::CAttributes::getStringW(glitch::io::CAttributes *this, char *a2, wchar_t *a3)
{
  int AttributeP; // r0
  _BYTE v5[68]; // [sp+0h] [bp-4Ch] BYREF
  wchar_t *src; // [sp+44h] [bp-8h]

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_BYTE *, int))(*(_DWORD *)AttributeP + 32))(v5, AttributeP);
    wcscpy(a3, src);
    if ( src != (wchar_t *)v5 )
    {
      if ( src )
        GlitchFree(src);
    }
  }
  else
  {
    *a3 = 0;
  }
}


// ===== 5638b8 std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::io::CAttributes::SContext **,uint,glitch::io::CAttributes::SContext * const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
  unsigned int v12; // r3
  int v13; // r10
  char *v14; // r0
  int j; // r1
  int k; // r3
  int v17; // r8
  char *v18; // r3
  char *v19; // r10
  int v20; // r8
  int i; // r2

  v5 = (unsigned int)a4 >= *(_DWORD *)result;
  v6 = result;
  if ( v5 )
  {
    v9 = *((char **)result + 1);
    if ( a4 < v9 )
      return (char *)std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
  }
  else
  {
    v9 = *((char **)result + 1);
  }
  v10 = v9 - a2;
  v11 = (v9 - a2) >> 2;
  if ( a3 < v11 )
  {
    v17 = 4 * a3;
    v18 = &v9[-4 * a3];
    if ( v18 == v9 )
    {
      v19 = v9;
    }
    else
    {
      v19 = v18;
      result = (char *)memcpy(v9, v18, v9 - v18);
      v18 = *((char **)v6 + 1);
    }
    *((_DWORD *)v6 + 1) = &v18[v17];
    if ( v19 - a2 > 0 )
      result = (char *)memmove(&v9[-(v19 - a2)], a2, v19 - a2);
    v20 = v17 >> 2;
    if ( v20 > 0 )
    {
      for ( i = 0; i != v20; ++i )
        *(_DWORD *)&a2[4 * i] = *(_DWORD *)a4;
    }
  }
  else
  {
    v12 = a3 - v11;
    v13 = (int)(4 * v12) >> 2;
    v14 = &v9[4 * v12];
    if ( v13 > 0 )
    {
      for ( j = 0; j != v13; ++j )
        *(_DWORD *)&v9[4 * j] = *(_DWORD *)a4;
    }
    *((_DWORD *)v6 + 1) = v14;
    if ( a2 != v9 )
    {
      memcpy(v14, a2, v10);
      v14 = *((char **)v6 + 1);
    }
    result = &v14[4 * v11];
    *((_DWORD *)v6 + 1) = result;
    if ( v11 > 0 )
    {
      for ( k = 0; k != v11; ++k )
        *(_DWORD *)&a2[4 * k] = *(_DWORD *)a4;
    }
  }
  return result;
}


// ===== 563a00 std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::io::CAttributes::SContext **,uint,glitch::io::CAttributes::SContext * const&) =====
void __fastcall std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
      std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 563a54 glitch::io::CAttributes::SContext::clear(void) =====
void __fastcall glitch::io::CAttributes::SContext::clear(glitch::io::CAttributes::SContext *this)
{
  char *v1; // r3
  char *v2; // r1
  unsigned int v4; // r5
  char *v5; // r3
  char *v6; // r1
  unsigned int v7; // r5
  int v8; // [sp+0h] [bp-Ch] BYREF
  char v9[8]; // [sp+4h] [bp-8h] BYREF

  v1 = *((char **)this + 11);
  v2 = *((char **)this + 12);
  if ( (unsigned int)(v2 - v1) >> 2 )
  {
    v4 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)&v1[4 * v4]);
      v1 = *((char **)this + 11);
      v2 = *((char **)this + 12);
      ++v4;
    }
    while ( v4 < (v2 - v1) >> 2 );
  }
  *(_DWORD *)v9 = 0;
  if ( (v2 - v1) >> 2 )
  {
    if ( v2 != v1 )
      *((_DWORD *)this + 12) = v1;
  }
  else
  {
    std::vector<glitch::io::CAttributes::SContext *,glitch::core::SAllocator<glitch::io::CAttributes::SContext *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (int)this + 44,
      v2,
      0,
      v9);
  }
  v5 = *((char **)this + 8);
  v6 = *((char **)this + 9);
  if ( (unsigned int)(v6 - v5) >> 2 )
  {
    v7 = 0;
    do
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)&v5[4 * v7]);
      v5 = *((char **)this + 8);
      v6 = *((char **)this + 9);
      ++v7;
    }
    while ( v7 < (v6 - v5) >> 2 );
  }
  v8 = 0;
  if ( (v6 - v5) >> 2 )
  {
    if ( v6 != v5 )
      *((_DWORD *)this + 9) = v5;
  }
  else
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (int)this + 32,
      v6,
      0,
      (char *)&v8);
  }
}


// ===== 563b30 glitch::io::CAttributes::clear(void) =====
void __fastcall glitch::io::CAttributes::clear(glitch::io::CAttributes *this)
{
  char *v1; // r5

  v1 = (char *)this + 8;
  glitch::io::CAttributes::SContext::clear((glitch::io::CAttributes *)((char *)this + 8));
  *((_DWORD *)this + 18) = (char *)this + 40;
  *((_DWORD *)this + 17) = v1;
}


// ===== 563b54 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 563b74 glitch::io::CAttributes::setAttribute(int,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::io::CAttributes::setAttribute(int a1, unsigned int a2, const void *a3)
{
  int *v3; // r3
  int v4; // r0
  int v5; // r3
  int result; // r0
  int v7; // r5
  int (__fastcall *v8)(int, _BYTE *); // r6
  _BYTE v9[68]; // [sp+4h] [bp-44h] BYREF

  v3 = *(int **)(a1 + 72);
  v4 = v3[1];
  v5 = *v3;
  result = v4 - v5;
  if ( a2 < result >> 2 )
  {
    v7 = *(_DWORD *)(v5 + 4 * a2);
    v8 = *(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)v7 + 196);
    glitch::core::CMatrix4<float>::CMatrix4(v9, a3);
    return v8(v7, v9);
  }
  return result;
}


// ===== 563bc4 glitch::io::CQuaternionAttribute::getMatrix(void) =====
glitch::io::CQuaternionAttribute *__fastcall glitch::io::CQuaternionAttribute::getMatrix(
        glitch::io::CQuaternionAttribute *this,
        int a2)
{
  float v4[5]; // [sp+0h] [bp-14h] BYREF

  (*(void (__fastcall **)(float *))(*(_DWORD *)a2 + 64))(v4);
  *((_BYTE *)this + 64) = 0;
  glitch::core::quaternion::getMatrix_transposed(v4, (int)this);
  return this;
}


// ===== 563c04 glitch::io::CVector4DIAttribute::getMatrix(void) =====
glitch::io::CVector4DIAttribute *__fastcall glitch::io::CVector4DIAttribute::getMatrix(
        glitch::io::CVector4DIAttribute *this)
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


// ===== 563c40 glitch::io::CVector2DIAttribute::getMatrix(void) =====
glitch::io::CVector2DIAttribute *__fastcall glitch::io::CVector2DIAttribute::getMatrix(
        glitch::io::CVector2DIAttribute *this)
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


// ===== 563c7c std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
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


// ===== 563d0c std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(float *,float const&,std::__true_type const&,uint,bool) [clone] =====
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


// ===== 563d9c glitch::io::CVector3DIAttribute::getMatrix(void) =====
glitch::io::CVector3DIAttribute *__fastcall glitch::io::CVector3DIAttribute::getMatrix(
        glitch::io::CVector3DIAttribute *this)
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


// ===== 563dd8 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
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


// ===== 563f58 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
void ***__fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        void ***a1,
        int *a2)
{
  int v4; // r3
  int v5; // r12
  void **v6; // r2
  int v7; // lr
  unsigned int v8; // r6
  void **v9; // r0
  void **v10; // r7
  void **i; // r5
  void **v12; // r3
  bool v13; // zf
  void **v14; // r9
  int v16; // r8
  void **v17; // r10
  int v18; // r7
  int v19; // r5
  char *v20; // r0
  void **v21; // r5
  void **v22; // r7
  void **v23; // r3
  int v24; // r3
  int v25; // [sp+Ch] [bp-Ch] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = (v4 - *a2) >> 3;
    v8 = -1431655765 * v7;
    if ( -1431655765 * v7 > (unsigned int)(-1431655765 * (((char *)a1[2] - (char *)*a1) >> 3)) )
    {
      v25 = -1431655765 * v7;
      v20 = std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*>(
              (int)a1,
              &v25,
              v5,
              v4);
      v21 = a1[1];
      v22 = *a1;
      v14 = (void **)v20;
      if ( v21 != *a1 )
      {
        do
        {
          v21 -= 6;
          v23 = (void **)v21[5];
          if ( v23 != v21 && v23 )
            GlitchFree(v21[5]);
        }
        while ( v22 != v21 );
        v21 = *a1;
      }
      GlitchFree(v21);
      v24 = v25;
      *a1 = v14;
      a1[2] = &v14[6 * v24];
      goto LABEL_10;
    }
    if ( v8 > -1431655765 * (((char *)a1[1] - (char *)v6) >> 3) )
    {
      v16 = 0;
      std::priv::__copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
        v5,
        v5 + 8 * (((char *)a1[1] - (char *)v6) >> 3),
        v6);
      v14 = *a1;
      v17 = a1[1];
      v18 = *a2 + 8 * (((char *)v17 - (char *)*a1) >> 3);
      v19 = -1431655765 * ((a2[1] - v18) >> 3);
      if ( v19 <= 0 )
        goto LABEL_10;
      do
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          &v17[v16],
          v18 + v16 * 4);
        --v19;
        v16 += 6;
      }
      while ( v19 );
    }
    else
    {
      v9 = (void **)std::priv::__copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const*,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*,int>(
                      v5,
                      v4,
                      v6);
      v10 = a1[1];
      for ( i = v9; v10 != i; i += 6 )
      {
        v12 = (void **)i[5];
        v13 = v12 == i;
        if ( !v13 && v12 )
          GlitchFree(v12);
      }
    }
    v14 = *a1;
LABEL_10:
    a1[1] = &v14[6 * v8];
  }
  return a1;
}


// ===== 564148 glitch::io::CAttributes::getAttributeEnumerationLiteralsOfEnumeration(int,std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void ***__fastcall glitch::io::CAttributes::getAttributeEnumerationLiteralsOfEnumeration(
        void ***result,
        unsigned int a2,
        void ***a3)
{
  void **v3; // r3
  void ***v5; // r4
  _BYTE *v6; // r2
  _DWORD **v7; // r3

  v3 = result[18];
  v5 = result;
  v6 = v3[1];
  v7 = (_DWORD **)*v3;
  if ( a2 < (v6 - (_BYTE *)v7) >> 2 )
  {
    result = (void ***)(*(int (__fastcall **)(_DWORD *))(*v7[a2] + 260))(v7[a2]);
    if ( result == (void ***)byte_4 )
      return std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
               a3,
               (int *)(*((_DWORD *)*v5[18] + a2) + 60));
  }
  return result;
}


// ===== 5641ac glitch::io::CAttributes::getAttributeEnumerationLiteralsOfEnumeration(char const*,std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void ***__fastcall glitch::io::CAttributes::getAttributeEnumerationLiteralsOfEnumeration(
        glitch::io::CAttributes *a1,
        char *a2,
        void ***a3)
{
  void ***result; // r0
  void ***v5; // r5

  result = (void ***)glitch::io::CAttributes::getAttributeP(a1, a2);
  v5 = result;
  if ( result )
  {
    result = (void ***)((int (__fastcall *)(void ***))(*result)[65])(result);
    if ( result == (void ***)byte_4 )
      return std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
               a3,
               (int *)v5 + 15);
  }
  return result;
}


// ===== 5641e8 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
void ***__fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 6;
    v4 = (void **)v1[5];
    if ( v4 != v1 && v4 )
      GlitchFree(v1[5]);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 564240 glitch::io::CAttributes::getString(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getString(
        glitch::io::CAttributes *this,
        int a2,
        unsigned int a3)
{
  int *v6; // r3
  int v7; // r2
  int v8; // r3
  _DWORD v10[4]; // [sp+4h] [bp-20h] BYREF
  _BYTE *v11; // [sp+14h] [bp-10h]
  void *p; // [sp+18h] [bp-Ch]

  v11 = v10;
  p = v10;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v10,
    0x10u);
  *v11 = 0;
  v6 = *(int **)(a2 + 72);
  v7 = v6[1];
  v8 = *v6;
  if ( a3 < (v7 - v8) >> 2 )
    (*(void (__fastcall **)(glitch::io::CAttributes *, _DWORD))(**(_DWORD **)(v8 + 4 * a3) + 28))(
      this,
      *(_DWORD *)(v8 + 4 * a3));
  else
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      this,
      (int)v10);
  if ( p != v10 && p )
    GlitchFree(p);
  return this;
}


// ===== 564314 glitch::io::CAttributes::push(char const*) =====
void __fastcall glitch::io::CAttributes::push(glitch::io::CAttributes::SContext **this, char *a2)
{
  glitch::io::CAttributes::SContext *Context; // r0
  void **v4; // r3
  void *v5[5]; // [sp+4h] [bp+0h] BYREF
  void *p; // [sp+18h] [bp+14h]

  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v5,
    a2);
  Context = glitch::io::CAttributes::SContext::getContext(*(this + 17), (char *)p, 1);
  v4 = (void **)p;
  *(this + 18) = (glitch::io::CAttributes::SContext *)((char *)Context + 32);
  *(this + 17) = Context;
  if ( v4 != v5 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 5643a8 glitch::io::CAttributes::SContext::~SContext() =====
void __fastcall glitch::io::CAttributes::SContext::~SContext(glitch::io::CAttributes::SContext *this)
{
  void *v2; // r0
  void *v3; // r0
  char *v4; // r0

  *(_DWORD *)this = off_9742B8;
  glitch::io::CAttributes::SContext::clear(this);
  v2 = *((void **)this + 11);
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 8);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((char **)this + 7);
  if ( v4 != (char *)this + 8 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 564418 glitch::io::CAttributes::~CAttributes() =====
void __fastcall glitch::io::CAttributes::~CAttributes(void ***this)
{
  glitch::IReferenceCounted *v2; // r0

  *this = (void **)off_973FB8;
  glitch::io::CAttributes::clear((glitch::io::CAttributes *)this);
  v2 = (glitch::IReferenceCounted *)*(this + 22);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 19);
  glitch::io::CAttributes::SContext::~SContext((glitch::io::CAttributes::SContext *)(this + 2));
}


// ===== 56446c glitch::io::CAttributes::~CAttributes() =====
void __fastcall glitch::io::CAttributes::~CAttributes(void ***this)
{
  glitch::io::CAttributes::~CAttributes(this);
  LC_API_FREE_0(this);
}


// ===== 564488 glitch::io::CAttributes::~CAttributes() =====
void __fastcall glitch::io::CAttributes::~CAttributes(void ***this)
{
  glitch::IReferenceCounted *v2; // r0

  *this = (void **)off_973FB8;
  glitch::io::CAttributes::clear((glitch::io::CAttributes *)this);
  v2 = (glitch::IReferenceCounted *)*(this + 22);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 19);
  glitch::io::CAttributes::SContext::~SContext((glitch::io::CAttributes::SContext *)(this + 2));
}


// ===== 5644dc glitch::io::CAttributes::SContext::~SContext() =====
void __fastcall glitch::io::CAttributes::SContext::~SContext(glitch::io::CAttributes::SContext *this)
{
  glitch::io::CAttributes::SContext::~SContext(this);
  LC_API_FREE_0(this);
}


// ===== 5644f8 glitch::io::CAttributes::SContext::~SContext() =====
void __fastcall glitch::io::CAttributes::SContext::~SContext(glitch::io::CAttributes::SContext *this)
{
  void *v2; // r0
  void *v3; // r0
  char *v4; // r0

  *(_DWORD *)this = off_9742B8;
  glitch::io::CAttributes::SContext::clear(this);
  v2 = *((void **)this + 11);
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 8);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((char **)this + 7);
  if ( v4 != (char *)this + 8 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 564568 glitch::io::CAttributes::push(int) =====
void __fastcall glitch::io::CAttributes::push(glitch::io::CAttributes::SContext **this, int a2)
{
  glitch::io::CAttributes::SContext *Context; // r0
  char *v5; // r3
  _BYTE v6[16]; // [sp+4h] [bp-38h] BYREF
  _BYTE *v7; // [sp+14h] [bp-28h]
  void *p; // [sp+18h] [bp-24h]
  _DWORD v9[5]; // [sp+1Ch] [bp-20h] BYREF
  char *v10; // [sp+30h] [bp-Ch]

  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v9,
    "group");
  glitch::core::int2stringc((glitch::core *)v6, a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v9,
    p,
    v7);
  if ( p != v6 && p )
    GlitchFree(p);
  Context = glitch::io::CAttributes::SContext::getContext(*(this + 17), v10, 1);
  v5 = v10;
  *(this + 18) = (glitch::io::CAttributes::SContext *)((char *)Context + 32);
  *(this + 17) = Context;
  if ( v5 != (char *)v9 )
  {
    if ( v5 )
      GlitchFree(v5);
  }
}


// ===== 564644 glitch::io::CAttributes::push(char const*,int) =====
void __fastcall glitch::io::CAttributes::push(glitch::io::CAttributes::SContext **this, char *a2, int a3)
{
  glitch::io::CAttributes::SContext *Context; // r0
  char *v6; // r3
  _BYTE v7[16]; // [sp+4h] [bp-38h] BYREF
  _BYTE *v8; // [sp+14h] [bp-28h]
  void *p; // [sp+18h] [bp-24h]
  _DWORD v10[5]; // [sp+1Ch] [bp-20h] BYREF
  char *v11; // [sp+30h] [bp-Ch]

  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v10,
    a2);
  glitch::core::int2stringc((glitch::core *)v7, a3);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    v10,
    p,
    v8);
  if ( p != v7 && p )
    GlitchFree(p);
  Context = glitch::io::CAttributes::SContext::getContext(*(this + 17), v11, 1);
  v6 = v11;
  *(this + 18) = (glitch::io::CAttributes::SContext *)((char *)Context + 32);
  *(this + 17) = Context;
  if ( v6 != (char *)v10 )
  {
    if ( v6 )
      GlitchFree(v6);
  }
}


// ===== 564714 glitch::io::CUserPointerAttribute::~CUserPointerAttribute() =====
void __fastcall glitch::io::CUserPointerAttribute::~CUserPointerAttribute(glitch::io::CUserPointerAttribute *this)
{
  char *v2; // r1
  char *v3; // r0

  *(_DWORD *)this = off_95B608;
  v2 = (char *)this + 8;
  v3 = *((char **)this + 7);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  LC_API_FREE_0(this);
}


// ===== 564768 glitch::io::CAttributes::getString(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getString(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0
  _DWORD v8[4]; // [sp+4h] [bp-20h] BYREF
  _BYTE *v9; // [sp+14h] [bp-10h]
  void *p; // [sp+18h] [bp-Ch]

  v9 = v8;
  p = v8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8,
    0x10u);
  *v9 = 0;
  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 28))(this, AttributeP);
  else
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      this,
      (int)v8);
  if ( p != v8 && p )
    GlitchFree(p);
  return this;
}


// ===== 564834 glitch::io::CTextureAttribute::getStringW(void) =====
glitch::io::CTextureAttribute *__fastcall glitch::io::CTextureAttribute::getStringW(
        glitch::io::CTextureAttribute *this,
        _DWORD *a2)
{
  char *v3; // r5
  int v4; // r4
  int v5; // r4
  _DWORD *v6; // r1
  int i; // r3
  _BYTE v9[16]; // [sp+4h] [bp-20h] BYREF
  int v10; // [sp+14h] [bp-10h]
  void *p; // [sp+18h] [bp-Ch]

  if ( a2[9] )
  {
    (*(void (__fastcall **)(_BYTE *))(*a2 + 28))(v9);
    v3 = (char *)p;
    v4 = v10;
    *((_DWORD *)this + 16) = this;
    v5 = v4 - (_DWORD)v3;
    *((_DWORD *)this + 17) = this;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      this,
      v5 + 1);
    v6 = *((_DWORD **)this + 17);
    if ( v5 > 0 )
    {
      for ( i = 0; i != v5; ++i )
        v6[i] = v3[i];
      v6 += i;
    }
    *((_DWORD *)this + 16) = v6;
    *v6 = 0;
    if ( p != v9 && p )
      GlitchFree(p);
  }
  else
  {
    glitch::core::stringc2stringw(this, "");
  }
  return this;
}


// ===== 564924 glitch::io::CAttributes::getString(char const*,char *) =====
void __fastcall glitch::io::CAttributes::getString(glitch::io::CAttributes *this, char *a2, char *a3)
{
  int AttributeP; // r0
  _BYTE v5[20]; // [sp+4h] [bp-20h] BYREF
  char *v6; // [sp+18h] [bp-Ch]

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(_BYTE *, int))(*(_DWORD *)AttributeP + 28))(v5, AttributeP);
    LC_API_STRCPY_0(a3, v6);
    if ( v6 != v5 )
    {
      if ( v6 )
        GlitchFree(v6);
    }
  }
  else
  {
    *a3 = 0;
  }
}


// ===== 5649bc glitch::io::CStringWArrayAttribute::~CStringWArrayAttribute() =====
void __fastcall glitch::io::CStringWArrayAttribute::~CStringWArrayAttribute(void ***this)
{
  void ***v2; // r0

  *this = (void **)off_973BA0;
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 9);
  *this = (void **)off_95B608;
  v2 = (void ***)*(this + 7);
  if ( v2 != this + 2 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 564a20 glitch::io::CTextureAttribute::getString(char *) =====
void __fastcall glitch::io::CTextureAttribute::getString(glitch::io::CTextureAttribute *this, char *a2)
{
  _BYTE v3[20]; // [sp+4h] [bp-20h] BYREF
  char *v4; // [sp+18h] [bp-Ch]

  if ( *((_DWORD *)this + 9) )
  {
    (*(void (__fastcall **)(_BYTE *, glitch::io::CTextureAttribute *))(*(_DWORD *)this + 28))(v3, this);
    LC_API_STRCPY_0(a2, v4);
    if ( v4 != v3 )
    {
      if ( v4 )
        GlitchFree(v4);
    }
  }
  else
  {
    *a2 = 0;
  }
}


// ===== 564ab8 glitch::io::CUserPointerAttribute::~CUserPointerAttribute() =====
void __fastcall glitch::io::CUserPointerAttribute::~CUserPointerAttribute(glitch::io::CUserPointerAttribute *this)
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


// ===== 564b04 glitch::io::CLine3dAttribute::~CLine3dAttribute() =====
void __fastcall glitch::io::CLine3dAttribute::~CLine3dAttribute(glitch::io::CLine3dAttribute *this)
{
  *(_DWORD *)this = off_972898;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564b38 glitch::io::CLine2dAttribute::~CLine2dAttribute() =====
void __fastcall glitch::io::CLine2dAttribute::~CLine2dAttribute(glitch::io::CLine2dAttribute *this)
{
  *(_DWORD *)this = off_9729D0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564b6c glitch::io::CTriangleAttribute::~CTriangleAttribute() =====
void __fastcall glitch::io::CTriangleAttribute::~CTriangleAttribute(glitch::io::CTriangleAttribute *this)
{
  *(_DWORD *)this = off_972B08;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564ba0 glitch::io::CPlaneAttribute::~CPlaneAttribute() =====
void __fastcall glitch::io::CPlaneAttribute::~CPlaneAttribute(glitch::io::CPlaneAttribute *this)
{
  *(_DWORD *)this = off_972C40;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564bd4 glitch::io::CBBoxAttribute::~CBBoxAttribute() =====
void __fastcall glitch::io::CBBoxAttribute::~CBBoxAttribute(glitch::io::CBBoxAttribute *this)
{
  *(_DWORD *)this = off_972D78;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564c08 glitch::io::CQuaternionAttribute::~CQuaternionAttribute() =====
void __fastcall glitch::io::CQuaternionAttribute::~CQuaternionAttribute(glitch::io::CQuaternionAttribute *this)
{
  *(_DWORD *)this = off_972EB0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564c3c glitch::io::CMatrixAttribute::~CMatrixAttribute() =====
void __fastcall glitch::io::CMatrixAttribute::~CMatrixAttribute(glitch::io::CMatrixAttribute *this)
{
  *(_DWORD *)this = off_972FE8;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564c70 glitch::io::CRectAttribute::~CRectAttribute() =====
void __fastcall glitch::io::CRectAttribute::~CRectAttribute(glitch::io::CRectAttribute *this)
{
  *(_DWORD *)this = off_973470;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564ca4 glitch::io::CPosition2DAttribute::~CPosition2DAttribute() =====
void __fastcall glitch::io::CPosition2DAttribute::~CPosition2DAttribute(glitch::io::CPosition2DAttribute *this)
{
  *(_DWORD *)this = off_9735A8;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564cd8 glitch::io::CVector4DIAttribute::~CVector4DIAttribute() =====
void __fastcall glitch::io::CVector4DIAttribute::~CVector4DIAttribute(glitch::io::CVector4DIAttribute *this)
{
  *(_DWORD *)this = off_9736E0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564d0c glitch::io::CVector3DIAttribute::~CVector3DIAttribute() =====
void __fastcall glitch::io::CVector3DIAttribute::~CVector3DIAttribute(glitch::io::CVector3DIAttribute *this)
{
  *(_DWORD *)this = off_973818;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564d40 glitch::io::CVector2DIAttribute::~CVector2DIAttribute() =====
void __fastcall glitch::io::CVector2DIAttribute::~CVector2DIAttribute(glitch::io::CVector2DIAttribute *this)
{
  *(_DWORD *)this = off_973950;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
}


// ===== 564d74 glitch::io::CPlaneAttribute::~CPlaneAttribute() =====
void __fastcall glitch::io::CPlaneAttribute::~CPlaneAttribute(glitch::io::CPlaneAttribute *this)
{
  *(_DWORD *)this = off_972C40;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564db0 glitch::io::CBBoxAttribute::~CBBoxAttribute() =====
void __fastcall glitch::io::CBBoxAttribute::~CBBoxAttribute(glitch::io::CBBoxAttribute *this)
{
  *(_DWORD *)this = off_972D78;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564dec glitch::io::CQuaternionAttribute::~CQuaternionAttribute() =====
void __fastcall glitch::io::CQuaternionAttribute::~CQuaternionAttribute(glitch::io::CQuaternionAttribute *this)
{
  *(_DWORD *)this = off_972EB0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564e28 glitch::io::CMatrixAttribute::~CMatrixAttribute() =====
void __fastcall glitch::io::CMatrixAttribute::~CMatrixAttribute(glitch::io::CMatrixAttribute *this)
{
  *(_DWORD *)this = off_972FE8;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564e64 glitch::io::CRectAttribute::~CRectAttribute() =====
void __fastcall glitch::io::CRectAttribute::~CRectAttribute(glitch::io::CRectAttribute *this)
{
  *(_DWORD *)this = off_973470;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564ea0 glitch::io::CPosition2DAttribute::~CPosition2DAttribute() =====
void __fastcall glitch::io::CPosition2DAttribute::~CPosition2DAttribute(glitch::io::CPosition2DAttribute *this)
{
  *(_DWORD *)this = off_9735A8;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564edc glitch::io::CVector4DIAttribute::~CVector4DIAttribute() =====
void __fastcall glitch::io::CVector4DIAttribute::~CVector4DIAttribute(glitch::io::CVector4DIAttribute *this)
{
  *(_DWORD *)this = off_9736E0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564f18 glitch::io::CVector3DIAttribute::~CVector3DIAttribute() =====
void __fastcall glitch::io::CVector3DIAttribute::~CVector3DIAttribute(glitch::io::CVector3DIAttribute *this)
{
  *(_DWORD *)this = off_973818;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564f54 glitch::io::CVector2DIAttribute::~CVector2DIAttribute() =====
void __fastcall glitch::io::CVector2DIAttribute::~CVector2DIAttribute(glitch::io::CVector2DIAttribute *this)
{
  *(_DWORD *)this = off_973950;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564f90 glitch::io::CLine3dAttribute::~CLine3dAttribute() =====
void __fastcall glitch::io::CLine3dAttribute::~CLine3dAttribute(glitch::io::CLine3dAttribute *this)
{
  *(_DWORD *)this = off_972898;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 564fcc glitch::io::CLine2dAttribute::~CLine2dAttribute() =====
void __fastcall glitch::io::CLine2dAttribute::~CLine2dAttribute(glitch::io::CLine2dAttribute *this)
{
  *(_DWORD *)this = off_9729D0;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 565008 glitch::io::CTriangleAttribute::~CTriangleAttribute() =====
void __fastcall glitch::io::CTriangleAttribute::~CTriangleAttribute(glitch::io::CTriangleAttribute *this)
{
  *(_DWORD *)this = off_972B08;
  glitch::io::CNumbersAttribute::~CNumbersAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 565044 glitch::io::CStringAttribute::~CStringAttribute() =====
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


// ===== 5650dc glitch::io::CBinaryAttribute::~CBinaryAttribute() =====
void __fastcall glitch::io::CBinaryAttribute::~CBinaryAttribute(glitch::io::CBinaryAttribute *this)
{
  *(_DWORD *)this = off_973358;
  glitch::io::CStringAttribute::~CStringAttribute(this);
}


// ===== 565110 glitch::io::CBinaryAttribute::~CBinaryAttribute() =====
void __fastcall glitch::io::CBinaryAttribute::~CBinaryAttribute(glitch::io::CBinaryAttribute *this)
{
  *(_DWORD *)this = off_973358;
  glitch::io::CStringAttribute::~CStringAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 56514c glitch::io::CLightAttribute::~CLightAttribute() =====
void __fastcall glitch::io::CLightAttribute::~CLightAttribute(glitch::io::CLightAttribute *this)
{
  glitch::IReferenceCounted *v2; // r0
  _DWORD *v3; // r0
  _DWORD *v5; // r2
  char *v6; // r0

  v2 = *((glitch::IReferenceCounted **)this + 10);
  *(_DWORD *)this = off_973120;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((_DWORD **)this + 9);
  if ( v3 )
  {
    if ( (*v3)-- == 1 )
    {
      if ( !*((_BYTE *)v3 + 84) )
      {
        v5 = (_DWORD *)v3[20];
        *v5 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v5;
      }
      v3[20] = 0;
      LC_API_FREE_0(v3);
    }
  }
  *(_DWORD *)this = off_95B608;
  v6 = *((char **)this + 7);
  if ( v6 != (char *)this + 8 )
  {
    if ( v6 )
      GlitchFree(v6);
  }
}


// ===== 565210 glitch::io::CLightAttribute::~CLightAttribute() =====
void __fastcall glitch::io::CLightAttribute::~CLightAttribute(glitch::io::CLightAttribute *this)
{
  glitch::io::CLightAttribute::~CLightAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 56522c glitch::io::CTextureAttribute::setString(char const*) =====
glitch::IReferenceCounted *__fastcall glitch::io::CTextureAttribute::setString(
        glitch::io::CTextureAttribute *this,
        char *a2)
{
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v4; // r3
  glitch::IReferenceCounted *v5; // r0
  glitch::IReferenceCounted *v6; // [sp+0h] [bp-2Ch] BYREF
  glitch::IReferenceCounted *v7; // [sp+4h] [bp-28h] BYREF
  _DWORD v8[5]; // [sp+Ch] [bp-20h] BYREF
  void *p; // [sp+20h] [bp-Ch]

  v7 = nullptr;
  if ( a2 && *a2 )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v8,
      a2);
    glitch::io::fromString(&v6, v8, *((_DWORD *)this + 10));
    v4 = v6;
    if ( v6 )
      ++*((_DWORD *)v6 + 1);
    v5 = v7;
    v7 = v4;
    if ( v5 )
      glitch::IReferenceCounted::drop(v5);
    if ( v6 )
      glitch::IReferenceCounted::drop(v6);
    if ( p != v8 && p )
      GlitchFree(p);
  }
  (*(void (__fastcall **)(glitch::io::CTextureAttribute *, glitch::IReferenceCounted **))(*(_DWORD *)this + 252))(
    this,
    &v7);
  result = v7;
  if ( v7 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v7);
  return result;
}


// ===== 56532c glitch::io::CEnumAttribute::~CEnumAttribute() =====
void __fastcall glitch::io::CEnumAttribute::~CEnumAttribute(void ***this)
{
  void ***v2; // r0
  void ***v3; // r0

  *this = (void **)off_973A88;
  std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(this + 15);
  v2 = (void ***)*(this + 14);
  if ( v2 != this + 9 && v2 )
    GlitchFree(v2);
  *this = (void **)off_95B608;
  v3 = (void ***)*(this + 7);
  if ( v3 != this + 2 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 5653ac glitch::io::CEnumAttribute::~CEnumAttribute() =====
void __fastcall glitch::io::CEnumAttribute::~CEnumAttribute(void ***this)
{
  glitch::io::CEnumAttribute::~CEnumAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 5653c8 glitch::io::CTextureAttribute::~CTextureAttribute() =====
void __fastcall glitch::io::CTextureAttribute::~CTextureAttribute(glitch::io::CTextureAttribute *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  char *v4; // r0

  v2 = *((glitch::IReferenceCounted **)this + 10);
  *(_DWORD *)this = off_973240;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((glitch::IReferenceCounted **)this + 9);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  *(_DWORD *)this = off_95B608;
  v4 = *((char **)this + 7);
  if ( v4 != (char *)this + 8 )
  {
    if ( v4 )
      GlitchFree(v4);
  }
}


// ===== 565448 glitch::io::CTextureAttribute::~CTextureAttribute() =====
void __fastcall glitch::io::CTextureAttribute::~CTextureAttribute(glitch::io::CTextureAttribute *this)
{
  glitch::io::CTextureAttribute::~CTextureAttribute(this);
  LC_API_FREE_0(this);
}


// ===== 565464 glitch::io::CAttributes::getMatrix(int) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getMatrix(
        glitch::io::CAttributes *this,
        int a2,
        unsigned int a3)
{
  int *v3; // r3
  int v5; // r1
  int v6; // r3

  v3 = *(int **)(a2 + 72);
  v5 = v3[1];
  v6 = *v3;
  if ( a3 < (v5 - v6) >> 2 )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, _DWORD))(**(_DWORD **)(v6 + 4 * a3) + 68))(
      this,
      *(_DWORD *)(v6 + 4 * a3));
  }
  else
  {
    *((_BYTE *)this + 64) = 0;
    LC_API_MEMSET_0(this, 0, 0x40u);
    *((_BYTE *)this + 64) = 1;
    *((_DWORD *)this + 15) = 1065353216;
    *(_DWORD *)this = 1065353216;
    *((_DWORD *)this + 5) = 1065353216;
    *((_DWORD *)this + 10) = 1065353216;
  }
  return this;
}


// ===== 5654d4 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
void __fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        unsigned int a2)
{
  _DWORD *v2; // r8
  _DWORD v4[5]; // [sp+4h] [bp-1Ch] BYREF
  void *p; // [sp+18h] [bp-8h]

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    if ( a2 < *(_DWORD *)a1 || (unsigned int)v2 <= a2 )
    {
      std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void ***)a1,
        (int)v2,
        a2);
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v4,
        a2);
      std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void ***)a1,
        (int)v2,
        (int)v4);
      if ( p != v4 )
      {
        if ( p )
          GlitchFree(p);
      }
    }
  }
  else
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v2,
      a2);
    *(_DWORD *)(a1 + 4) += 24;
  }
}


// ===== 5655a4 std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int *a1,
        unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r0
  void **v8; // r6
  void **v9; // r7
  char *v10; // r8
  void **v11; // r3
  char *v12; // r3
  unsigned int v13; // [sp+4h] [bp-4h] BYREF

  v3 = *a1;
  v4 = (a1[2] - *a1) >> 3;
  v13 = a2;
  if ( a2 > -1431655765 * v4 )
  {
    if ( a2 > 0xAAAAAAA )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = a1[1];
    v6 = -1431655765 * ((v5 - v3) >> 3);
    if ( v3 )
    {
      v7 = std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>*>(
             (int)a1,
             &v13,
             v3,
             v5);
      v8 = (void **)a1[1];
      v9 = (void **)*a1;
      v10 = v7;
      if ( v8 != (void **)*a1 )
      {
        do
        {
          v8 -= 6;
          v11 = (void **)v8[5];
          if ( v11 != v8 )
          {
            if ( v11 )
              GlitchFree(v8[5]);
          }
        }
        while ( v9 != v8 );
        v8 = (void **)*a1;
      }
      GlitchFree(v8);
    }
    else
    {
      v10 = (char *)GlitchAlloc(24 * v13, 0);
    }
    v12 = &v10[24 * v13];
    a1[1] = (int)&v10[24 * v6];
    a1[2] = (int)v12;
    *a1 = (int)v10;
  }
}


// ===== 5656c8 glitch::io::CEnumAttribute::setEnum(char const*,char const* const*) =====
int __fastcall glitch::io::CEnumAttribute::setEnum(
        glitch::io::CEnumAttribute *this,
        const char *a2,
        const char *const *a3)
{
  const char *const *v3; // r5
  unsigned int v6; // r1
  char *v7; // r1
  char *v8; // t1
  _DWORD v10[5]; // [sp+4h] [bp-20h] BYREF
  void *p; // [sp+18h] [bp-Ch]

  v3 = a3;
  if ( a3 )
  {
    v6 = (unsigned int)*a3;
    if ( *a3 )
    {
      v6 = 0;
      do
        ++v6;
      while ( a3[v6] );
    }
    std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
      (int *)this + 15,
      v6);
    v7 = (char *)*v3;
    if ( *v3 )
    {
      do
      {
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v10,
          v7);
        std::vector<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          (int)this + 60,
          (unsigned int)v10);
        if ( p != v10 && p )
          GlitchFree(p);
        v8 = *((char **)v3++ + 1);
        v7 = v8;
      }
      while ( v8 );
    }
  }
  return (*(int (__fastcall **)(glitch::io::CEnumAttribute *, const char *))(*(_DWORD *)this + 144))(this, a2);
}


// ===== 5657b0 glitch::io::CStringWArrayAttribute::CStringWArrayAttribute(char const*,std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>,bool) =====
int __fastcall glitch::io::CStringWArrayAttribute::CStringWArrayAttribute(int a1, char *a2, int *a3, char a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0
  void **v11[4]; // [sp+4h] [bp-10h] BYREF

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v5 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)a1 = off_973BA0;
  *(_BYTE *)(a1 + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    v11,
    a3);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
    (int *)(a1 + 36),
    (int *)v11);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v11);
  return a1;
}


// ===== 565880 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::vector2d<float> const&,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 2;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v12 )
      goto LABEL_3;
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      *(_DWORD *)(a1 + 52) += 4;
      return a1;
    }
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v12,
    a3 + 1);
  return a1;
}


// ===== 5659b4 glitch::io::CAttributes::setAttribute(char const*,glitch::core::vector2d<float> const&) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  void (__fastcall *v8)(int, _DWORD *); // r3
  int v9; // r6
  _DWORD *v10; // r5
  _DWORD v11[2]; // [sp+4h] [bp-10h] BYREF
  _DWORD *v12; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = *a3;
    v8 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 172);
    v11[1] = a3[1];
    v11[0] = v7;
    v8(AttributeP, v11);
  }
  else
  {
    v9 = *((_DWORD *)a1 + 18);
    v10 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v10, a2, a3, 0);
    *v10 = off_95BF58;
    v12 = v10;
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v9,
      &v12);
  }
}


// ===== 565a54 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::video::SColorf const&,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1
  _DWORD *v15; // r3
  _DWORD *v16; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      v13 = *(_DWORD **)(a1 + 56);
      v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v14;
      if ( v13 != v14 )
        goto LABEL_4;
LABEL_8:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v14,
        a3 + 2);
      v16 = *(_DWORD **)(a1 + 52);
      if ( *(_DWORD **)(a1 + 56) != v16 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v12,
    a3 + 1);
  v14 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v14 )
    goto LABEL_8;
LABEL_4:
  *v14 = a3[2];
  v15 = *(_DWORD **)(a1 + 56);
  v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v16;
  if ( v15 != v16 )
  {
LABEL_5:
    *v16 = a3[3];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_9:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v16,
    a3 + 3);
  return a1;
}


// ===== 565c00 glitch::io::CStringAttribute::CStringAttribute(char const*,wchar_t const*,bool) =====
glitch::io::CStringAttribute *__fastcall glitch::io::CStringAttribute::CStringAttribute(
        glitch::io::CStringAttribute *this,
        char *a2,
        const wchar_t *a3,
        bool a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v4 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_BYTE *)this + 32) = a4;
  *(_DWORD *)this = off_95B980;
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 31) = (char *)this + 60;
  *((_DWORD *)this + 32) = (char *)this + 60;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 15,
    0x10u);
  **((_DWORD **)this + 31) = 0;
  *((_BYTE *)this + 33) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  glitch::io::CStringAttribute::setString(this, a3);
  return this;
}


// ===== 565ce8 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::line2d<float>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1
  _DWORD *v15; // r3
  _DWORD *v16; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      v13 = *(_DWORD **)(a1 + 56);
      v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v14;
      if ( v13 != v14 )
        goto LABEL_4;
LABEL_8:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v14,
        a3 + 2);
      v16 = *(_DWORD **)(a1 + 52);
      if ( *(_DWORD **)(a1 + 56) != v16 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v12,
    a3 + 1);
  v14 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v14 )
    goto LABEL_8;
LABEL_4:
  *v14 = a3[2];
  v15 = *(_DWORD **)(a1 + 56);
  v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v16;
  if ( v15 != v16 )
  {
LABEL_5:
    *v16 = a3[3];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_9:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v16,
    a3 + 3);
  return a1;
}


// ===== 565e94 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::triangle3d<float>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1
  _DWORD *v15; // r3
  _DWORD *v16; // r1
  _DWORD *v17; // r3
  _DWORD *v18; // r1
  _DWORD *v19; // r3
  _DWORD *v20; // r1
  _DWORD *v21; // r3
  _DWORD *v22; // r1
  _DWORD *v23; // r3
  _DWORD *v24; // r1
  _DWORD *v25; // r3
  _DWORD *v26; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 9;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      v13 = *(_DWORD **)(a1 + 56);
      v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v14;
      if ( v13 != v14 )
        goto LABEL_4;
      goto LABEL_13;
    }
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v12,
    a3 + 1);
  v14 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v14 )
  {
LABEL_4:
    *v14 = a3[2];
    v15 = *(_DWORD **)(a1 + 56);
    v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v16;
    if ( v15 != v16 )
      goto LABEL_5;
    goto LABEL_14;
  }
LABEL_13:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v14,
    a3 + 2);
  v16 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v16 )
  {
LABEL_5:
    *v16 = a3[3];
    v17 = *(_DWORD **)(a1 + 56);
    v18 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v18;
    if ( v17 != v18 )
      goto LABEL_6;
    goto LABEL_15;
  }
LABEL_14:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v16,
    a3 + 3);
  v18 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v18 )
  {
LABEL_6:
    *v18 = a3[4];
    v19 = *(_DWORD **)(a1 + 56);
    v20 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v20;
    if ( v19 != v20 )
      goto LABEL_7;
    goto LABEL_16;
  }
LABEL_15:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v18,
    a3 + 4);
  v20 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v20 )
  {
LABEL_7:
    *v20 = a3[5];
    v21 = *(_DWORD **)(a1 + 56);
    v22 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v22;
    if ( v22 != v21 )
      goto LABEL_8;
    goto LABEL_17;
  }
LABEL_16:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v20,
    a3 + 5);
  v22 = *(_DWORD **)(a1 + 52);
  if ( v22 != *(_DWORD **)(a1 + 56) )
  {
LABEL_8:
    *v22 = a3[6];
    v23 = *(_DWORD **)(a1 + 56);
    v24 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v24;
    if ( v23 != v24 )
      goto LABEL_9;
LABEL_18:
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v24,
      a3 + 7);
    v26 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v26 )
      goto LABEL_10;
    goto LABEL_19;
  }
LABEL_17:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v22,
    a3 + 6);
  v24 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v24 )
    goto LABEL_18;
LABEL_9:
  *v24 = a3[7];
  v25 = *(_DWORD **)(a1 + 56);
  v26 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v26;
  if ( v25 != v26 )
  {
LABEL_10:
    *v26 = a3[8];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_19:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v26,
    a3 + 8);
  return a1;
}


// ===== 56616c glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::plane3d<float>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1
  _DWORD *v15; // r3
  _DWORD *v16; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      v13 = *(_DWORD **)(a1 + 56);
      v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v14;
      if ( v13 != v14 )
        goto LABEL_4;
LABEL_8:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v14,
        a3 + 2);
      v16 = *(_DWORD **)(a1 + 52);
      if ( *(_DWORD **)(a1 + 56) != v16 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v12,
    a3 + 1);
  v14 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v14 )
    goto LABEL_8;
LABEL_4:
  *v14 = a3[2];
  v15 = *(_DWORD **)(a1 + 56);
  v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v16;
  if ( v15 != v16 )
  {
LABEL_5:
    *v16 = a3[3];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_9:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v16,
    a3 + 3);
  return a1;
}


// ===== 566318 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::aabbox3d<float>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1
  _DWORD *v15; // r3
  _DWORD *v16; // r1
  _DWORD *v17; // r3
  _DWORD *v18; // r1
  _DWORD *v19; // r3
  _DWORD *v20; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 6;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      v13 = *(_DWORD **)(a1 + 56);
      v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v14;
      if ( v13 != v14 )
        goto LABEL_4;
      goto LABEL_10;
    }
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v12,
    a3 + 1);
  v14 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v14 )
  {
LABEL_4:
    *v14 = a3[2];
    v15 = *(_DWORD **)(a1 + 56);
    v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v16;
    if ( v15 != v16 )
      goto LABEL_5;
    goto LABEL_11;
  }
LABEL_10:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v14,
    a3 + 2);
  v16 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v16 )
  {
LABEL_5:
    *v16 = a3[3];
    v17 = *(_DWORD **)(a1 + 56);
    v18 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v18;
    if ( v17 != v18 )
      goto LABEL_6;
LABEL_12:
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v18,
      a3 + 4);
    v20 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v20 )
      goto LABEL_7;
    goto LABEL_13;
  }
LABEL_11:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v16,
    a3 + 3);
  v18 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v18 )
    goto LABEL_12;
LABEL_6:
  *v18 = a3[4];
  v19 = *(_DWORD **)(a1 + 56);
  v20 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v20;
  if ( v19 != v20 )
  {
LABEL_7:
    *v20 = a3[5];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_13:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v20,
    a3 + 5);
  return a1;
}


// ===== 56653c glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::quaternion,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(
        int a1,
        char *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        char a7)
{
  _DWORD *v7; // r5
  int v10; // r10
  int v11; // r8
  size_t v12; // r0
  _DWORD *v13; // r1
  _DWORD *v14; // r3
  _DWORD *v15; // r3
  _DWORD *v16; // r1
  _DWORD *v17; // r3
  _DWORD *v18; // r1
  _DWORD *v19; // r3
  _DWORD *v20; // r1
  _DWORD *v22; // r3
  _DWORD *v23; // r3
  _DWORD *v24; // r3
  int v25; // [sp+8h] [bp-14h] BYREF
  int v26; // [sp+Ch] [bp-10h] BYREF
  int v27; // [sp+10h] [bp-Ch] BYREF
  _DWORD var8[13]; // [sp+14h] [bp-8h] BYREF

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v7 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  v10 = var8[11];
  v11 = var8[12];
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_BYTE *)(a1 + 32) = a7;
  *(_DWORD *)(a1 + 60) = 4;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 64) = 1;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  v12 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v7,
    a2,
    &a2[v12]);
  v13 = *(_DWORD **)(a1 + 52);
  v14 = *(_DWORD **)(a1 + 56);
  var8[0] = v10;
  if ( v13 == v14 )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v13,
      var8);
    v16 = *(_DWORD **)(a1 + 52);
    v22 = *(_DWORD **)(a1 + 56);
    v27 = v11;
    if ( v16 != v22 )
    {
LABEL_3:
      *v16 = v11;
      v17 = *(_DWORD **)(a1 + 56);
      v18 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v18;
      v26 = a5;
      if ( v18 != v17 )
        goto LABEL_4;
LABEL_9:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v18,
        &v26);
      v20 = *(_DWORD **)(a1 + 52);
      v24 = *(_DWORD **)(a1 + 56);
      v25 = a6;
      if ( v20 != v24 )
        goto LABEL_5;
LABEL_10:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v20,
        &v25);
      return a1;
    }
  }
  else
  {
    *v13 = v10;
    v15 = *(_DWORD **)(a1 + 56);
    v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v16;
    v27 = v11;
    if ( v16 != v15 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v16,
    &v27);
  v18 = *(_DWORD **)(a1 + 52);
  v23 = *(_DWORD **)(a1 + 56);
  v26 = a5;
  if ( v18 == v23 )
    goto LABEL_9;
LABEL_4:
  *v18 = a5;
  v19 = *(_DWORD **)(a1 + 56);
  v20 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v20;
  v25 = a6;
  if ( v20 == v19 )
    goto LABEL_10;
LABEL_5:
  *v20 = a6;
  *(_DWORD *)(a1 + 52) += 4;
  return a1;
}


// ===== 566728 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::CMatrix4<float>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, int a3, char a4)
{
  _DWORD *v4; // r5
  int v9; // r10
  size_t v10; // r0
  int i; // r5
  _DWORD *v12; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  v9 = 0;
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 60) = 16;
  *(_BYTE *)(a1 + 64) = 1;
  *(_BYTE *)(a1 + 32) = a4;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v10]);
  do
  {
    for ( i = 0; i != 4; ++i )
    {
      *(_BYTE *)(a3 + 64) = 0;
      v12 = *(_DWORD **)(a1 + 52);
      if ( v12 == *(_DWORD **)(a1 + 56) )
      {
        std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          a1 + 48,
          (int)v12,
          (_DWORD *)(a3 + 4 * (v9 + i)));
      }
      else
      {
        *v12 = *(_DWORD *)(a3 + 4 * v9 + 4 * i);
        *(_DWORD *)(a1 + 52) += 4;
      }
    }
    v9 += 4;
  }
  while ( v9 != 16 );
  return a1;
}


// ===== 566848 glitch::io::CMatrixAttribute::CMatrixAttribute(char const*,glitch::core::CMatrix4<float>,bool) =====
_DWORD *__fastcall glitch::io::CMatrixAttribute::CMatrixAttribute(_DWORD *a1, char *a2, const void *a3, char a4)
{
  _BYTE v8[72]; // [sp+4h] [bp-48h] BYREF

  glitch::core::CMatrix4<float>::CMatrix4(v8, a3);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)a1, a2, (int)v8, a4);
  *a1 = off_972FE8;
  return a1;
}


// ===== 5668ac glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::vector4d<float> const&,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, int *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r2
  int v12; // r3
  _DWORD *v13; // r2
  _DWORD *v14; // r1
  int v15; // r3
  _DWORD *v16; // r2
  _DWORD *v17; // r1
  int v18; // r3
  _DWORD *v19; // r2
  _DWORD *v20; // r1
  int v21; // r3
  _DWORD *v23; // r2
  _DWORD *v24; // r2
  _DWORD *v25; // r2
  int v26; // [sp+0h] [bp-10h] BYREF
  int v27; // [sp+4h] [bp-Ch] BYREF
  int v28; // [sp+8h] [bp-8h] BYREF
  int v29; // [sp+Ch] [bp-4h] BYREF

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  v11 = *(_DWORD **)(a1 + 56);
  v12 = *a3;
  v29 = *a3;
  if ( v10 == v11 )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      &v29);
    v14 = *(_DWORD **)(a1 + 52);
    v23 = *(_DWORD **)(a1 + 56);
    v15 = a3[1];
    v28 = v15;
    if ( v14 != v23 )
    {
LABEL_3:
      *v14 = v15;
      v16 = *(_DWORD **)(a1 + 56);
      v17 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v17;
      v18 = a3[2];
      v27 = v18;
      if ( v17 != v16 )
        goto LABEL_4;
LABEL_9:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v17,
        &v27);
      v20 = *(_DWORD **)(a1 + 52);
      v25 = *(_DWORD **)(a1 + 56);
      v21 = a3[3];
      v26 = v21;
      if ( v20 != v25 )
        goto LABEL_5;
LABEL_10:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v20,
        &v26);
      return a1;
    }
  }
  else
  {
    *v10 = v12;
    v13 = *(_DWORD **)(a1 + 56);
    v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v14;
    v15 = a3[1];
    v28 = v15;
    if ( v14 != v13 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v14,
    &v28);
  v17 = *(_DWORD **)(a1 + 52);
  v24 = *(_DWORD **)(a1 + 56);
  v18 = a3[2];
  v27 = v18;
  if ( v17 == v24 )
    goto LABEL_9;
LABEL_4:
  *v17 = v18;
  v19 = *(_DWORD **)(a1 + 56);
  v20 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v20;
  v21 = a3[3];
  v26 = v21;
  if ( v20 == v19 )
    goto LABEL_10;
LABEL_5:
  *v20 = v21;
  *(_DWORD *)(a1 + 52) += 4;
  return a1;
}


// ===== 566a84 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::vector3d<float> const&,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 3;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 != *(_DWORD **)(a1 + 56) )
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
LABEL_6:
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v12,
      a3 + 1);
    v14 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v14 )
      goto LABEL_4;
    goto LABEL_7;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v10,
    a3);
  v12 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v12 )
    goto LABEL_6;
LABEL_3:
  *v12 = a3[1];
  v13 = *(_DWORD **)(a1 + 56);
  v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v14;
  if ( v13 != v14 )
  {
LABEL_4:
    *v14 = a3[2];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_7:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v14,
    a3 + 2);
  return a1;
}


// ===== 566bf4 glitch::io::CUserPointerAttribute::CUserPointerAttribute(char const*,void *,bool) =====
glitch::io::CUserPointerAttribute *__fastcall glitch::io::CUserPointerAttribute::CUserPointerAttribute(
        glitch::io::CUserPointerAttribute *this,
        char *a2,
        void *a3,
        bool a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v5 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *(_DWORD *)this = off_972780;
  *((_BYTE *)this + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  *((_DWORD *)this + 9) = a3;
  return this;
}


// ===== 566c90 glitch::io::CLightAttribute::CLightAttribute(char const*,boost::intrusive_ptr<glitch::video::CLight> const&,glitch::video::IVideoDriver *,bool) =====
int __fastcall glitch::io::CLightAttribute::CLightAttribute(int a1, char *a2, _DWORD **a3, int a4, char a5)
{
  _DWORD *v6; // r5
  size_t v10; // r0
  _DWORD *v11; // r3
  _DWORD *v12; // r0
  _DWORD *v14; // r2

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v6 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_973120;
  *(_DWORD *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 32) = a5;
  *(_DWORD *)(a1 + 40) = a4;
  if ( a4 )
    ++*(_DWORD *)(a4 + 4);
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v6,
    a2,
    &a2[v10]);
  v11 = *a3;
  if ( *a3 )
    ++*v11;
  v12 = *(_DWORD **)(a1 + 36);
  *(_DWORD *)(a1 + 36) = v11;
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
  return a1;
}


// ===== 566db0 glitch::io::CAttributes::setAttribute(char const*,boost::intrusive_ptr<glitch::video::CLight>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, _DWORD **a3)
{
  int AttributeP; // r0
  _DWORD *v7; // r2
  bool v8; // zf
  void (*v9)(void); // r3
  _DWORD *v10; // r0
  _DWORD *v11; // r2
  int v12; // r5
  void *v13; // r6
  void *v14; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v15; // [sp+Ch] [bp-8h]

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = *a3;
    v8 = *a3 == nullptr;
    v9 = *(void (**)(void))(*(_DWORD *)AttributeP + 256);
    v15 = *a3;
    if ( !v8 )
      ++*v7;
    v9();
    v10 = v15;
    if ( v15 )
    {
      v8 = (*v15)-- == 1;
      if ( v8 )
      {
        if ( !*((_BYTE *)v10 + 84) )
        {
          v11 = (_DWORD *)v10[20];
          *v11 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v11;
        }
        v10[20] = 0;
        LC_API_FREE_0(v10);
      }
    }
  }
  else
  {
    v12 = *((_DWORD *)a1 + 18);
    v13 = operator new(0x2Cu, 0);
    glitch::io::CLightAttribute::CLightAttribute((int)v13, a2, a3, *((_DWORD *)a1 + 22), 0);
    v14 = v13;
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v12,
      &v14);
  }
}


// ===== 566ea0 glitch::io::CTextureAttribute::CTextureAttribute(char const*,boost::intrusive_ptr<glitch::video::ITexture> const&,glitch::video::IVideoDriver *,bool) =====
int __fastcall glitch::io::CTextureAttribute::CTextureAttribute(int a1, char *a2, int *a3, int a4, char a5)
{
  _DWORD *v6; // r5
  size_t v10; // r0
  int v11; // r3
  glitch::IReferenceCounted *v12; // r0

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v6 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_973240;
  *(_DWORD *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 32) = a5;
  *(_DWORD *)(a1 + 40) = a4;
  if ( a4 )
    ++*(_DWORD *)(a4 + 4);
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v6,
    a2,
    &a2[v10]);
  v11 = *a3;
  if ( *a3 )
    ++*(_DWORD *)(v11 + 4);
  v12 = *(glitch::IReferenceCounted **)(a1 + 36);
  *(_DWORD *)(a1 + 36) = v11;
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  return a1;
}


// ===== 566f7c glitch::io::CStringAttribute::CStringAttribute(char const*,void *,int,bool) =====
glitch::io::CStringAttribute *__fastcall glitch::io::CStringAttribute::CStringAttribute(
        glitch::io::CStringAttribute *this,
        char *a2,
        unsigned __int8 *a3,
        int a4,
        bool a5)
{
  _DWORD *v6; // r5
  size_t v10; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v6 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_BYTE *)this + 32) = a5;
  *(_DWORD *)this = off_95B980;
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 31) = (char *)this + 60;
  *((_DWORD *)this + 32) = (char *)this + 60;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 15,
    0x10u);
  **((_DWORD **)this + 31) = 0;
  *((_BYTE *)this + 33) = 0;
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v6,
    a2,
    &a2[v10]);
  glitch::io::CStringAttribute::setBinary(this, a3, a4);
  return this;
}


// ===== 56706c glitch::io::CEnumAttribute::CEnumAttribute(char const*,char const*,char const* const*,bool) =====
glitch::io::CEnumAttribute *__fastcall glitch::io::CEnumAttribute::CEnumAttribute(
        glitch::io::CEnumAttribute *this,
        char *a2,
        const char *a3,
        const char *const *a4,
        bool a5)
{
  _DWORD *v6; // r5
  size_t v10; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v6 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_BYTE *)this + 32) = a5;
  *(_DWORD *)this = off_973A88;
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v6,
    a2,
    &a2[v10]);
  glitch::io::CEnumAttribute::setEnum(this, a3, a4);
  return this;
}


// ===== 567144 glitch::io::CEnumAttribute::setString(char const*) =====
_DWORD *__fastcall glitch::io::CEnumAttribute::setString(glitch::io::CEnumAttribute *this, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           (_DWORD *)this + 9,
           a2,
           &a2[v4]);
}


// ===== 56716c glitch::io::CBoolAttribute::CBoolAttribute(char const*,bool,bool) =====
glitch::io::CBoolAttribute *__fastcall glitch::io::CBoolAttribute::CBoolAttribute(
        glitch::io::CBoolAttribute *this,
        char *a2,
        bool a3,
        bool a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v5 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *(_DWORD *)this = off_95BA98;
  *((_BYTE *)this + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  *((_BYTE *)this + 33) = a3;
  return this;
}


// ===== 567208 glitch::io::CFloatAttribute::CFloatAttribute(char const*,float,bool) =====
glitch::io::CFloatAttribute *__fastcall glitch::io::CFloatAttribute::CFloatAttribute(
        glitch::io::CFloatAttribute *this,
        char *a2,
        float a3,
        bool a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v5 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *(_DWORD *)this = off_95B738;
  *((_BYTE *)this + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  *((float *)this + 9) = a3;
  return this;
}


// ===== 5672a4 glitch::io::CIntAttribute::CIntAttribute(char const*,int,bool) =====
glitch::io::CIntAttribute *__fastcall glitch::io::CIntAttribute::CIntAttribute(
        glitch::io::CIntAttribute *this,
        char *a2,
        int a3,
        bool a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v5 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *(_DWORD *)this = off_95B4F0;
  *((_BYTE *)this + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  *((_DWORD *)this + 9) = a3;
  return this;
}


// ===== 567340 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::rect<int>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1
  _DWORD *v15; // r3
  _DWORD *v16; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v5 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 40);
  if ( v10 == *(_DWORD **)(a1 + 44) )
  {
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 36,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 40);
    if ( *(_DWORD **)(a1 + 44) != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      v13 = *(_DWORD **)(a1 + 44);
      v14 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
      *(_DWORD *)(a1 + 40) = v14;
      if ( v13 != v14 )
        goto LABEL_4;
LABEL_8:
      std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 36,
        (int)v14,
        a3 + 2);
      v16 = *(_DWORD **)(a1 + 40);
      if ( *(_DWORD **)(a1 + 44) != v16 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 44);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
    *(_DWORD *)(a1 + 40) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
  }
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 36,
    (int)v12,
    a3 + 1);
  v14 = *(_DWORD **)(a1 + 40);
  if ( *(_DWORD **)(a1 + 44) == v14 )
    goto LABEL_8;
LABEL_4:
  *v14 = a3[2];
  v15 = *(_DWORD **)(a1 + 44);
  v16 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
  *(_DWORD *)(a1 + 40) = v16;
  if ( v15 != v16 )
  {
LABEL_5:
    *v16 = a3[3];
    *(_DWORD *)(a1 + 40) += 4;
    return a1;
  }
LABEL_9:
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 36,
    (int)v16,
    a3 + 3);
  return a1;
}


// ===== 5674ec glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::position2d<int>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v5 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 2;
  *(_BYTE *)(a1 + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 40);
  if ( v10 == *(_DWORD **)(a1 + 44) )
  {
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 36,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 40);
    if ( *(_DWORD **)(a1 + 44) != v12 )
      goto LABEL_3;
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 44);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
    *(_DWORD *)(a1 + 40) = v12;
    if ( v11 != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      *(_DWORD *)(a1 + 40) += 4;
      return a1;
    }
  }
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 36,
    (int)v12,
    a3 + 1);
  return a1;
}


// ===== 567620 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::vector4d<int> const&,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, int *a3, char a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r2
  int v12; // r3
  _DWORD *v13; // r2
  _DWORD *v14; // r1
  int v15; // r3
  _DWORD *v16; // r2
  _DWORD *v17; // r1
  int v18; // r3
  _DWORD *v19; // r2
  _DWORD *v20; // r1
  int v21; // r3
  _DWORD *v23; // r2
  _DWORD *v24; // r2
  _DWORD *v25; // r2
  int v26; // [sp+0h] [bp-14h] BYREF
  int v27; // [sp+4h] [bp-10h] BYREF
  int v28; // [sp+8h] [bp-Ch] BYREF
  int v29; // [sp+Ch] [bp-8h] BYREF

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v5 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 40);
  v11 = *(_DWORD **)(a1 + 44);
  v12 = *a3;
  v29 = *a3;
  if ( v10 == v11 )
  {
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 36,
      (int)v10,
      &v29);
    v14 = *(_DWORD **)(a1 + 40);
    v23 = *(_DWORD **)(a1 + 44);
    v15 = a3[1];
    v28 = v15;
    if ( v14 != v23 )
    {
LABEL_3:
      *v14 = v15;
      v16 = *(_DWORD **)(a1 + 44);
      v17 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
      *(_DWORD *)(a1 + 40) = v17;
      v18 = a3[2];
      v27 = v18;
      if ( v17 != v16 )
        goto LABEL_4;
LABEL_9:
      std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 36,
        (int)v17,
        &v27);
      v20 = *(_DWORD **)(a1 + 40);
      v25 = *(_DWORD **)(a1 + 44);
      v21 = a3[3];
      v26 = v21;
      if ( v20 != v25 )
        goto LABEL_5;
LABEL_10:
      std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 36,
        (int)v20,
        &v26);
      return a1;
    }
  }
  else
  {
    *v10 = v12;
    v13 = *(_DWORD **)(a1 + 44);
    v14 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
    *(_DWORD *)(a1 + 40) = v14;
    v15 = a3[1];
    v28 = v15;
    if ( v14 != v13 )
      goto LABEL_3;
  }
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 36,
    (int)v14,
    &v28);
  v17 = *(_DWORD **)(a1 + 40);
  v24 = *(_DWORD **)(a1 + 44);
  v18 = a3[2];
  v27 = v18;
  if ( v17 == v24 )
    goto LABEL_9;
LABEL_4:
  *v17 = v18;
  v19 = *(_DWORD **)(a1 + 44);
  v20 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
  *(_DWORD *)(a1 + 40) = v20;
  v21 = a3[3];
  v26 = v21;
  if ( v20 == v19 )
    goto LABEL_10;
LABEL_5:
  *v20 = v21;
  *(_DWORD *)(a1 + 40) += 4;
  return a1;
}


// ===== 5677f8 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::vector3d<int> const&,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v5 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 3;
  *(_BYTE *)(a1 + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 40);
  if ( v10 != *(_DWORD **)(a1 + 44) )
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 44);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
    *(_DWORD *)(a1 + 40) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
LABEL_6:
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 36,
      (int)v12,
      a3 + 1);
    v14 = *(_DWORD **)(a1 + 40);
    if ( *(_DWORD **)(a1 + 44) != v14 )
      goto LABEL_4;
    goto LABEL_7;
  }
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 36,
    (int)v10,
    a3);
  v12 = *(_DWORD **)(a1 + 40);
  if ( *(_DWORD **)(a1 + 44) == v12 )
    goto LABEL_6;
LABEL_3:
  *v12 = a3[1];
  v13 = *(_DWORD **)(a1 + 44);
  v14 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
  *(_DWORD *)(a1 + 40) = v14;
  if ( v13 != v14 )
  {
LABEL_4:
    *v14 = a3[2];
    *(_DWORD *)(a1 + 40) += 4;
    return a1;
  }
LABEL_7:
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 36,
    (int)v14,
    a3 + 2);
  return a1;
}


// ===== 567968 glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::vector2d<int> const&,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v5 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 2;
  *(_BYTE *)(a1 + 32) = a4;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 40);
  if ( v10 == *(_DWORD **)(a1 + 44) )
  {
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 36,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 40);
    if ( *(_DWORD **)(a1 + 44) != v12 )
      goto LABEL_3;
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 44);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 40) + 4);
    *(_DWORD *)(a1 + 40) = v12;
    if ( v11 != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      *(_DWORD *)(a1 + 40) += 4;
      return a1;
    }
  }
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 36,
    (int)v12,
    a3 + 1);
  return a1;
}


// ===== 567a9c glitch::io::CAttributes::setAttribute(char const*,glitch::core::vector2d<int> const&) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  void (__fastcall *v8)(int, _DWORD *); // r3
  int v9; // r6
  _DWORD *v10; // r5
  _DWORD v11[2]; // [sp+4h] [bp-10h] BYREF
  _DWORD *v12; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = *a3;
    v8 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 204);
    v11[1] = a3[1];
    v11[0] = v7;
    v8(AttributeP, v11);
  }
  else
  {
    v9 = *((_DWORD *)a1 + 18);
    v10 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v10, a2, a3, 0);
    *v10 = off_973950;
    v12 = v10;
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
      v9,
      &v12);
  }
}


// ===== 567b3c glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::core::line3d<float>,bool) =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, char *a2, _DWORD *a3, char a4)
{
  _DWORD *v4; // r5
  size_t v9; // r0
  _DWORD *v10; // r1
  _DWORD *v11; // r3
  _DWORD *v12; // r1
  _DWORD *v13; // r3
  _DWORD *v14; // r1
  _DWORD *v15; // r3
  _DWORD *v16; // r1
  _DWORD *v17; // r3
  _DWORD *v18; // r1
  _DWORD *v19; // r3
  _DWORD *v20; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v4 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 60) = 6;
  *(_BYTE *)(a1 + 32) = a4;
  *(_BYTE *)(a1 + 64) = 1;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v9]);
  v10 = *(_DWORD **)(a1 + 52);
  if ( v10 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v10,
      a3);
    v12 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v12 )
    {
LABEL_3:
      *v12 = a3[1];
      v13 = *(_DWORD **)(a1 + 56);
      v14 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v14;
      if ( v13 != v14 )
        goto LABEL_4;
      goto LABEL_10;
    }
  }
  else
  {
    *v10 = *a3;
    v11 = *(_DWORD **)(a1 + 56);
    v12 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v12;
    if ( v11 != v12 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v12,
    a3 + 1);
  v14 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v14 )
  {
LABEL_4:
    *v14 = a3[2];
    v15 = *(_DWORD **)(a1 + 56);
    v16 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v16;
    if ( v15 != v16 )
      goto LABEL_5;
    goto LABEL_11;
  }
LABEL_10:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v14,
    a3 + 2);
  v16 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) != v16 )
  {
LABEL_5:
    *v16 = a3[3];
    v17 = *(_DWORD **)(a1 + 56);
    v18 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v18;
    if ( v17 != v18 )
      goto LABEL_6;
LABEL_12:
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v18,
      a3 + 4);
    v20 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v20 )
      goto LABEL_7;
    goto LABEL_13;
  }
LABEL_11:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v16,
    a3 + 3);
  v18 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v18 )
    goto LABEL_12;
LABEL_6:
  *v18 = a3[4];
  v19 = *(_DWORD **)(a1 + 56);
  v20 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v20;
  if ( v19 != v20 )
  {
LABEL_7:
    *v20 = a3[5];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_13:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v20,
    a3 + 5);
  return a1;
}


// ===== 567d60 glitch::io::CStringAttribute::CStringAttribute(char const*,char const*,bool) =====
glitch::io::CStringAttribute *__fastcall glitch::io::CStringAttribute::CStringAttribute(
        glitch::io::CStringAttribute *this,
        char *a2,
        char *a3,
        bool a4)
{
  _DWORD *v5; // r5
  size_t v9; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_95B608;
  v5 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 2,
    0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_BYTE *)this + 32) = a4;
  *(_DWORD *)this = off_95B980;
  *((_DWORD *)this + 13) = (char *)this + 36;
  *((_DWORD *)this + 14) = (char *)this + 36;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 9,
    0x10u);
  **((_BYTE **)this + 13) = 0;
  *((_DWORD *)this + 31) = (char *)this + 60;
  *((_DWORD *)this + 32) = (char *)this + 60;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)this + 15,
    0x10u);
  **((_DWORD **)this + 31) = 0;
  *((_BYTE *)this + 33) = 0;
  v9 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v5,
    a2,
    &a2[v9]);
  glitch::io::CStringAttribute::setString(this, a3);
  return this;
}


// ===== 567e48 glitch::io::CAttributes::getMatrix(char const*) =====
glitch::io::CAttributes *__fastcall glitch::io::CAttributes::getMatrix(
        glitch::io::CAttributes *this,
        glitch::io::CAttributes *a2,
        char *a3)
{
  int AttributeP; // r0

  AttributeP = glitch::io::CAttributes::getAttributeP(a2, a3);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(glitch::io::CAttributes *, int))(*(_DWORD *)AttributeP + 68))(this, AttributeP);
  }
  else
  {
    *((_BYTE *)this + 64) = 0;
    LC_API_MEMSET_0(this, 0, 0x40u);
    *((_BYTE *)this + 64) = 1;
    *((_DWORD *)this + 15) = 1065353216;
    *(_DWORD *)this = 1065353216;
    *((_DWORD *)this + 5) = 1065353216;
    *((_DWORD *)this + 10) = 1065353216;
  }
  return this;
}


// ===== 567eb8 glitch::io::CEnumAttribute::setInt(int) =====
_DWORD *__fastcall glitch::io::CEnumAttribute::setInt(glitch::io::CEnumAttribute *this, int a2)
{
  int v2; // r12
  int v3; // r1
  _DWORD *result; // r0

  if ( a2 < 0 )
    return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             (_DWORD *)this + 9,
             "",
             "");
  v2 = *((_DWORD *)this + 15);
  if ( a2 >= -1431655765 * ((*((_DWORD *)this + 16) - v2) >> 3) )
    return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             (_DWORD *)this + 9,
             "",
             "");
  v3 = v2 + 24 * a2;
  result = (_DWORD *)((char *)this + 36);
  if ( result != (_DWORD *)v3 )
    return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             result,
             *(_BYTE **)(v3 + 20),
             *(_BYTE **)(v3 + 16));
  return result;
}


// ===== 567f24 glitch::io::CAttributes::addStringAsUserPointer(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsUserPointer(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        bool a4)
{
  int v6; // r8
  _DWORD *v7; // r0
  _DWORD *v8; // r11
  _DWORD *v9; // r7
  size_t v10; // r0
  _BYTE *v11; // r1
  int v12; // r0
  _DWORD *v16; // [sp+10h] [bp-Ch] BYREF
  char v17[8]; // [sp+14h] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v7 = operator new(0x28u, 0);
  v7[1] = 1;
  *v7 = off_95B608;
  v8 = v7 + 2;
  v9 = v7;
  v7[6] = v7 + 2;
  v7[7] = v7 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v7 + 2,
    0x10u);
  *(_BYTE *)v9[6] = 0;
  *((_BYTE *)v9 + 32) = a4;
  *v9 = off_972780;
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v8,
    a2,
    &a2[v10]);
  v9[9] = 0;
  v16 = v9;
  v11 = *(_BYTE **)(v6 + 4);
  if ( v11 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v11,
      &v16,
      (int)v17,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v11 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v12 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v12 + 148))(v12, a3);
}


// ===== 568038 glitch::io::CAttributes::addUserPointer(char const*,void *,bool) =====
void __fastcall glitch::io::CAttributes::addUserPointer(glitch::io::CAttributes *this, char *a2, void *a3, bool a4)
{
  int v5; // r5
  _DWORD *v8; // r0
  _DWORD *v9; // r9
  _DWORD *v10; // r10
  size_t v11; // r0
  _BYTE *v12; // r1
  _DWORD *v13; // [sp+8h] [bp-Ch] BYREF
  char v14[8]; // [sp+Ch] [bp-8h] BYREF

  v5 = *((_DWORD *)this + 18);
  v8 = operator new(0x28u, 0);
  v8[1] = 1;
  *v8 = off_95B608;
  v9 = v8 + 2;
  v10 = v8;
  v8[6] = v8 + 2;
  v8[7] = v8 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8 + 2,
    0x10u);
  *(_BYTE *)v10[6] = 0;
  *v10 = off_972780;
  *((_BYTE *)v10 + 32) = a4;
  v11 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v9,
    a2,
    &a2[v11]);
  v10[9] = a3;
  v13 = v10;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v13,
      (int)v14,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v10;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 568124 glitch::io::CAttributes::addStringAsLight(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsLight(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v7; // r4
  void *v9; // r7
  _BYTE *v10; // r1
  _DWORD *v11; // r0
  _DWORD *v13; // r2
  int v14; // r0
  void *v16; // [sp+Ch] [bp-Ch] BYREF
  _DWORD *v17; // [sp+10h] [bp-8h] BYREF
  _BYTE v18[4]; // [sp+14h] [bp-4h] BYREF

  v17 = nullptr;
  v7 = *((_DWORD *)this + 18);
  v9 = operator new(0x2Cu, 0);
  glitch::io::CLightAttribute::CLightAttribute((int)v9, a2, &v17, *((_DWORD *)this + 22), a4);
  v16 = v9;
  v10 = *(_BYTE **)(v7 + 4);
  if ( v10 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v10,
      &v16,
      (int)v18,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v7 + 4) += 4;
  }
  v11 = v17;
  if ( v17 )
  {
    if ( (*v17)-- == 1 )
    {
      if ( !*((_BYTE *)v11 + 84) )
      {
        v13 = (_DWORD *)v11[20];
        *v13 = glitch::memory::Matrix4Pool;
        glitch::memory::Matrix4Pool = (int)v13;
      }
      v11[20] = 0;
      LC_API_FREE_0(v11);
    }
  }
  v14 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v14 + 148))(v14, a3);
}


// ===== 568238 glitch::io::CAttributes::addLight(char const*,boost::intrusive_ptr<glitch::video::CLight>,bool) =====
void __fastcall glitch::io::CAttributes::addLight(int a1, char *a2, _DWORD **a3, char a4)
{
  int v7; // r4
  void *v9; // r6
  _BYTE *v10; // r1
  void *v11; // [sp+8h] [bp-Ch] BYREF
  _BYTE v12[8]; // [sp+Ch] [bp-8h] BYREF

  v7 = *(_DWORD *)(a1 + 72);
  v9 = operator new(0x2Cu, 0);
  glitch::io::CLightAttribute::CLightAttribute((int)v9, a2, a3, *(_DWORD *)(a1 + 88), a4);
  v11 = v9;
  v10 = *(_BYTE **)(v7 + 4);
  if ( v10 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v10,
      &v11,
      (int)v12,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v7 + 4) += 4;
  }
}


// ===== 5682c0 glitch::io::CAttributes::addStringAsTexture(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsTexture(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v7; // r4
  void *v9; // r7
  _BYTE *v10; // r1
  int v11; // r0
  void *v13; // [sp+Ch] [bp-Ch] BYREF
  glitch::IReferenceCounted *v14; // [sp+10h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-4h] BYREF

  v14 = nullptr;
  v7 = *((_DWORD *)this + 18);
  v9 = operator new(0x2Cu, 0);
  glitch::io::CTextureAttribute::CTextureAttribute((int)v9, a2, (int *)&v14, *((_DWORD *)this + 22), a4);
  v13 = v9;
  v10 = *(_BYTE **)(v7 + 4);
  if ( v10 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v10,
      &v13,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v7 + 4) += 4;
  }
  if ( v14 )
    glitch::IReferenceCounted::drop(v14);
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 568384 glitch::io::CAttributes::addTexture(char const*,boost::intrusive_ptr<glitch::video::ITexture>,bool) =====
void __fastcall glitch::io::CAttributes::addTexture(int a1, char *a2, int *a3, char a4)
{
  int v7; // r4
  void *v9; // r6
  _BYTE *v10; // r1
  void *v11; // [sp+8h] [bp-Ch] BYREF
  _BYTE v12[8]; // [sp+Ch] [bp-8h] BYREF

  v7 = *(_DWORD *)(a1 + 72);
  v9 = operator new(0x2Cu, 0);
  glitch::io::CTextureAttribute::CTextureAttribute((int)v9, a2, a3, *(_DWORD *)(a1 + 88), a4);
  v11 = v9;
  v10 = *(_BYTE **)(v7 + 4);
  if ( v10 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v10,
      &v11,
      (int)v12,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v7 + 4) += 4;
  }
}


// ===== 56840c glitch::io::CAttributes::addStringAsBinary(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsBinary(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        int a4)
{
  int v6; // r5
  glitch::io::CStringAttribute *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  glitch::io::CStringAttribute *v13; // [sp+8h] [bp-Ch] BYREF
  _BYTE v14[8]; // [sp+Ch] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = (glitch::io::CStringAttribute *)operator new(0x84u, 0);
  glitch::io::CStringAttribute::CStringAttribute(v9, a2, nullptr, a4, 0);
  *(_DWORD *)v9 = off_973358;
  v13 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v13,
      (int)v14,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 5684d8 glitch::io::CAttributes::addBinary(char const*,void *,int,bool) =====
void __fastcall glitch::io::CAttributes::addBinary(
        glitch::io::CAttributes *this,
        char *a2,
        unsigned __int8 *a3,
        int a4,
        bool a5)
{
  int v6; // r5
  glitch::io::CStringAttribute *v9; // r6
  _BYTE *v10; // r1
  glitch::io::CStringAttribute *v11; // [sp+8h] [bp-Ch] BYREF
  _BYTE v12[8]; // [sp+Ch] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = (glitch::io::CStringAttribute *)operator new(0x84u, 0);
  glitch::io::CStringAttribute::CStringAttribute(v9, a2, a3, a4, a5);
  *(_DWORD *)v9 = off_973358;
  v11 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v11,
      (int)v12,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
}


// ===== 568580 glitch::io::CAttributes::addEnum(char const*,char const*,char const* const*,bool) =====
void __fastcall glitch::io::CAttributes::addEnum(
        glitch::io::CAttributes *this,
        char *a2,
        const char *a3,
        const char *const *a4,
        bool a5)
{
  int v6; // r4
  glitch::io::CEnumAttribute *v9; // r5
  _BYTE *v10; // r1
  glitch::io::CEnumAttribute *v11; // [sp+8h] [bp-Ch] BYREF
  _BYTE v12[8]; // [sp+Ch] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = (glitch::io::CEnumAttribute *)operator new(0x48u, 0);
  glitch::io::CEnumAttribute::CEnumAttribute(v9, a2, a3, a4, a5);
  v11 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v11,
      (int)v12,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
}


// ===== 568608 glitch::io::CAttributes::addStringAsBool(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsBool(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        bool a4)
{
  int v6; // r8
  _DWORD *v7; // r0
  _DWORD *v8; // r11
  _DWORD *v9; // r7
  size_t v10; // r0
  _BYTE *v11; // r1
  int v12; // r0
  _DWORD *v16; // [sp+10h] [bp-Ch] BYREF
  char v17[8]; // [sp+14h] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v7 = operator new(0x24u, 0);
  v7[1] = 1;
  *v7 = off_95B608;
  v8 = v7 + 2;
  v9 = v7;
  v7[6] = v7 + 2;
  v7[7] = v7 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v7 + 2,
    0x10u);
  *(_BYTE *)v9[6] = 0;
  *((_BYTE *)v9 + 32) = a4;
  *v9 = off_95BA98;
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v8,
    a2,
    &a2[v10]);
  *((_BYTE *)v9 + 33) = 0;
  v16 = v9;
  v11 = *(_BYTE **)(v6 + 4);
  if ( v11 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v11,
      &v16,
      (int)v17,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v11 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v12 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v12 + 148))(v12, a3);
}


// ===== 56871c glitch::io::CAttributes::addBool(char const*,bool,bool) =====
void __fastcall glitch::io::CAttributes::addBool(glitch::io::CAttributes *this, char *a2, bool a3, bool a4)
{
  int v5; // r5
  _DWORD *v8; // r0
  _DWORD *v9; // r9
  _DWORD *v10; // r10
  size_t v11; // r0
  _BYTE *v12; // r1
  _DWORD *v13; // [sp+8h] [bp-Ch] BYREF
  char v14[8]; // [sp+Ch] [bp-8h] BYREF

  v5 = *((_DWORD *)this + 18);
  v8 = operator new(0x24u, 0);
  v8[1] = 1;
  *v8 = off_95B608;
  v9 = v8 + 2;
  v10 = v8;
  v8[6] = v8 + 2;
  v8[7] = v8 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8 + 2,
    0x10u);
  *(_BYTE *)v10[6] = 0;
  *v10 = off_95BA98;
  *((_BYTE *)v10 + 32) = a4;
  v11 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v9,
    a2,
    &a2[v11]);
  *((_BYTE *)v10 + 33) = a3;
  v13 = v10;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v13,
      (int)v14,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v10;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 568808 glitch::io::CAttributes::addStringAsFloat(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsFloat(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        bool a4)
{
  int v7; // r10
  _DWORD *v8; // r0
  _DWORD *v9; // r11
  _DWORD *v10; // r8
  size_t v11; // r0
  _BYTE *v12; // r1
  int v13; // r0
  _DWORD *v16; // [sp+10h] [bp-Ch] BYREF
  char v17[8]; // [sp+14h] [bp-8h] BYREF

  v7 = *((_DWORD *)this + 18);
  v8 = operator new(0x28u, 0);
  v8[1] = 1;
  *v8 = off_95B608;
  v9 = v8 + 2;
  v10 = v8;
  v8[6] = v8 + 2;
  v8[7] = v8 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8 + 2,
    0x10u);
  *(_BYTE *)v10[6] = 0;
  *v10 = off_95B738;
  *((_BYTE *)v10 + 32) = a4;
  v11 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v9,
    a2,
    &a2[v11]);
  v10[9] = 0;
  v16 = v10;
  v12 = *(_BYTE **)(v7 + 4);
  if ( v12 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v12,
      &v16,
      (int)v17,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v10;
    *(_DWORD *)(v7 + 4) += 4;
  }
  v13 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v13 + 148))(v13, a3);
}


// ===== 56891c glitch::io::CAttributes::addFloat(char const*,float,bool) =====
void __fastcall glitch::io::CAttributes::addFloat(glitch::io::CAttributes *this, char *a2, float a3, bool a4)
{
  int v5; // r5
  _DWORD *v8; // r0
  _DWORD *v9; // r9
  _DWORD *v10; // r10
  size_t v11; // r0
  _BYTE *v12; // r1
  _DWORD *v13; // [sp+8h] [bp-Ch] BYREF
  char v14[8]; // [sp+Ch] [bp-8h] BYREF

  v5 = *((_DWORD *)this + 18);
  v8 = operator new(0x28u, 0);
  v8[1] = 1;
  *v8 = off_95B608;
  v9 = v8 + 2;
  v10 = v8;
  v8[6] = v8 + 2;
  v8[7] = v8 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8 + 2,
    0x10u);
  *(_BYTE *)v10[6] = 0;
  *v10 = off_95B738;
  *((_BYTE *)v10 + 32) = a4;
  v11 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v9,
    a2,
    &a2[v11]);
  *((float *)v10 + 9) = a3;
  v13 = v10;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v13,
      (int)v14,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v10;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 568a08 glitch::io::CAttributes::addStringAsInt(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsInt(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        bool a4)
{
  int v6; // r8
  _DWORD *v7; // r0
  _DWORD *v8; // r11
  _DWORD *v9; // r7
  size_t v10; // r0
  _BYTE *v11; // r1
  int v12; // r0
  _DWORD *v16; // [sp+10h] [bp-Ch] BYREF
  char v17[8]; // [sp+14h] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v7 = operator new(0x28u, 0);
  v7[1] = 1;
  *v7 = off_95B608;
  v8 = v7 + 2;
  v9 = v7;
  v7[6] = v7 + 2;
  v7[7] = v7 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v7 + 2,
    0x10u);
  *(_BYTE *)v9[6] = 0;
  *((_BYTE *)v9 + 32) = a4;
  *v9 = off_95B4F0;
  v10 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v8,
    a2,
    &a2[v10]);
  v9[9] = 0;
  v16 = v9;
  v11 = *(_BYTE **)(v6 + 4);
  if ( v11 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v11,
      &v16,
      (int)v17,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v11 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v12 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v12 + 148))(v12, a3);
}


// ===== 568b1c glitch::io::CAttributes::addInt(char const*,int,bool) =====
void __fastcall glitch::io::CAttributes::addInt(glitch::io::CAttributes *this, char *a2, int a3, bool a4)
{
  int v5; // r5
  _DWORD *v8; // r0
  _DWORD *v9; // r9
  _DWORD *v10; // r10
  size_t v11; // r0
  _BYTE *v12; // r1
  _DWORD *v13; // [sp+8h] [bp-Ch] BYREF
  char v14[8]; // [sp+Ch] [bp-8h] BYREF

  v5 = *((_DWORD *)this + 18);
  v8 = operator new(0x28u, 0);
  v8[1] = 1;
  *v8 = off_95B608;
  v9 = v8 + 2;
  v10 = v8;
  v8[6] = v8 + 2;
  v8[7] = v8 + 2;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v8 + 2,
    0x10u);
  *(_BYTE *)v10[6] = 0;
  *v10 = off_95B4F0;
  *((_BYTE *)v10 + 32) = a4;
  v11 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v9,
    a2,
    &a2[v11]);
  v10[9] = a3;
  v13 = v10;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v13,
      (int)v14,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v10;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 568c08 glitch::io::CAttributes::addStringAsRect(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsRect(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[4]; // [sp+8h] [bp-18h] BYREF
  _DWORD *v14; // [sp+18h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+1Ch] [bp-4h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  memset(v13, 0, sizeof(v13));
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_973470;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 568ce0 glitch::io::CAttributes::addRect(char const*,glitch::core::rect<int>,bool) =====
void __fastcall glitch::io::CAttributes::addRect(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  int v6; // r9
  int v7; // r7
  int v8; // r8
  int v9; // r10
  _DWORD *v11; // r6
  _BYTE *v12; // r1
  _DWORD v13[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+18h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+1Ch] [bp-8h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v6 = a3[3];
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v11 = operator new(0x44u, 0);
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v6;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, v13, a4);
  *v11 = off_973470;
  v14 = v11;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v11;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 568d94 glitch::io::CAttributes::addStringAsPosition2d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsPosition2d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[2]; // [sp+8h] [bp-10h] BYREF
  _DWORD *v14; // [sp+10h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-4h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  v13[1] = 0;
  v13[0] = 0;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_9735A8;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 568e64 glitch::io::CAttributes::addPosition2d(char const*,glitch::core::position2d<int>,bool) =====
void __fastcall glitch::io::CAttributes::addPosition2d(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  int v6; // r7
  int v7; // r8
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  _DWORD v11[2]; // [sp+8h] [bp-14h] BYREF
  _DWORD *v12; // [sp+10h] [bp-Ch] BYREF
  _BYTE v13[8]; // [sp+14h] [bp-8h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v6 = *a3;
  v7 = a3[1];
  v9 = operator new(0x44u, 0);
  v11[0] = v6;
  v11[1] = v7;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v11, a4);
  *v9 = off_9735A8;
  v12 = v9;
  v10 = *(_BYTE **)(v5 + 4);
  if ( v10 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v10,
      &v12,
      (int)v13,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 568f0c glitch::io::CAttributes::addStringAsVector4di(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsVector4di(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  int v13[4]; // [sp+8h] [bp-18h] BYREF
  _DWORD *v14; // [sp+18h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+1Ch] [bp-4h] BYREF

  memset(v13, 0, sizeof(v13));
  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_9736E0;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 568fe4 glitch::io::CAttributes::addVector4di(char const*,glitch::core::vector4d<int> const&,bool) =====
void __fastcall glitch::io::CAttributes::addVector4di(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v8 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, a4);
  *v8 = off_9736E0;
  v10 = v8;
  v9 = *(_BYTE **)(v5 + 4);
  if ( v9 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v9,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 569084 glitch::io::CAttributes::addStringAsVector3di(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsVector3di(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[3]; // [sp+Ch] [bp-14h] BYREF
  _DWORD *v14; // [sp+18h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+1Ch] [bp-4h] BYREF

  memset(v13, 0, sizeof(v13));
  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_973818;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 569158 glitch::io::CAttributes::addVector3di(char const*,glitch::core::vector3d<int> const&,bool) =====
void __fastcall glitch::io::CAttributes::addVector3di(int a1, char *a2, _DWORD *a3, char a4)
{
  int v5; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v8 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, a4);
  *v8 = off_973818;
  v10 = v8;
  v9 = *(_BYTE **)(v5 + 4);
  if ( v9 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v9,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 5691f8 glitch::io::CAttributes::addStringAsVector2di(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsVector2di(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[2]; // [sp+8h] [bp-10h] BYREF
  _DWORD *v14; // [sp+10h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-4h] BYREF

  v13[0] = 0;
  v13[1] = 0;
  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_973950;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 5692c8 glitch::io::CAttributes::addVector2di(char const*,glitch::core::vector2d<int> const&,bool) =====
void __fastcall glitch::io::CAttributes::addVector2di(int a1, char *a2, _DWORD *a3, char a4)
{
  int v5; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v8 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, a4);
  *v8 = off_973950;
  v10 = v8;
  v9 = *(_BYTE **)(v5 + 4);
  if ( v9 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v9,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 569368 glitch::io::CAttributes::addStringAsLine3d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsLine3d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[6]; // [sp+8h] [bp-24h] BYREF
  _DWORD *v14; // [sp+20h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+24h] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  v13[5] = 1065353216;
  memset(v13, 0, 12);
  v13[3] = 1065353216;
  v13[4] = 1065353216;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_972898;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 56944c glitch::io::CAttributes::addLine3d(char const*,glitch::core::line3d<float>,bool) =====
void __fastcall glitch::io::CAttributes::addLine3d(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  int v6; // r7
  int v7; // r8
  int v8; // r10
  int v9; // r9
  _DWORD *v11; // r6
  _BYTE *v12; // r1
  int v13; // [sp+Ch] [bp-28h]
  _DWORD v14[6]; // [sp+10h] [bp-24h] BYREF
  _DWORD *v15; // [sp+28h] [bp-Ch] BYREF
  _BYTE v16[8]; // [sp+2Ch] [bp-8h] BYREF

  v13 = a3[5];
  v5 = *(_DWORD *)(a1 + 72);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v14[4] = a3[4];
  v11 = operator new(0x44u, 0);
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v14[5] = v13;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, v14, a4);
  *v11 = off_972898;
  v15 = v11;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v15,
      (int)v16,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v11;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 569528 glitch::io::CAttributes::addStringAsLine2d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsLine2d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+18h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+1Ch] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  v13[1] = 0;
  v13[3] = 1065353216;
  v13[0] = 0;
  v13[2] = 1065353216;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_9729D0;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 569604 glitch::io::CAttributes::addLine2d(char const*,glitch::core::line2d<float>,bool) =====
void __fastcall glitch::io::CAttributes::addLine2d(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  int v6; // r9
  int v7; // r7
  int v8; // r8
  int v9; // r10
  _DWORD *v11; // r6
  _BYTE *v12; // r1
  _DWORD v13[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+18h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+1Ch] [bp-8h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v6 = a3[3];
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v11 = operator new(0x44u, 0);
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v6;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, v13, a4);
  *v11 = off_9729D0;
  v14 = v11;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v11;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 5696c0 glitch::io::CAttributes::addStringAsTriangle3d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsTriangle3d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[9]; // [sp+Ch] [bp-30h] BYREF
  _DWORD *v14; // [sp+30h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+34h] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  memset(v13, 0, sizeof(v13));
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_972B08;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 5697ac glitch::io::CAttributes::addTriangle3d(char const*,glitch::core::triangle3d<float>,bool) =====
void __fastcall glitch::io::CAttributes::addTriangle3d(int a1, char *a2, int *a3, char a4)
{
  int v5; // r7
  int v6; // r8
  int v7; // r10
  int v8; // r9
  int v10; // r5
  _DWORD *v11; // r6
  _BYTE *v12; // r1
  int v13; // [sp+10h] [bp-44h]
  int v14; // [sp+14h] [bp-40h]
  int v15; // [sp+18h] [bp-3Ch]
  int v16; // [sp+1Ch] [bp-38h]
  _DWORD v17[9]; // [sp+24h] [bp-30h] BYREF
  _DWORD *v18; // [sp+48h] [bp-Ch] BYREF
  _BYTE v19[8]; // [sp+4Ch] [bp-8h] BYREF

  v14 = a3[8];
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v13 = a3[5];
  v16 = a3[6];
  v15 = a3[7];
  v10 = *(_DWORD *)(a1 + 72);
  v17[4] = a3[4];
  v17[6] = v16;
  v17[5] = v13;
  v11 = operator new(0x44u, 0);
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v17[7] = v15;
  v17[8] = v14;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, v17, a4);
  *v11 = off_972B08;
  v18 = v11;
  v12 = *(_BYTE **)(v10 + 4);
  if ( v12 == *(_BYTE **)(v10 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v10,
      v12,
      &v18,
      (int)v19,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v11;
    *(_DWORD *)(v10 + 4) += 4;
  }
}


// ===== 5698b8 glitch::io::CAttributes::addStringAsPlane3d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsPlane3d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+18h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+1Ch] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v13[1] = 1065353216;
  v9 = operator new(0x44u, 0);
  v13[2] = 0;
  v13[3] = 0x80000000;
  v13[0] = 0;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_972C40;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 569998 glitch::io::CAttributes::addPlane3d(char const*,glitch::core::plane3d<float>,bool) =====
void __fastcall glitch::io::CAttributes::addPlane3d(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  int v6; // r9
  int v7; // r7
  int v8; // r8
  int v9; // r10
  _DWORD *v11; // r6
  _BYTE *v12; // r1
  _DWORD v13[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+18h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+1Ch] [bp-8h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v6 = a3[3];
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v11 = operator new(0x44u, 0);
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v6;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, v13, a4);
  *v11 = off_972C40;
  v14 = v11;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v11;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 569a54 glitch::io::CAttributes::addStringAsBox3d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsBox3d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[6]; // [sp+8h] [bp-24h] BYREF
  _DWORD *v14; // [sp+20h] [bp-Ch] BYREF
  _BYTE v15[8]; // [sp+24h] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  v13[2] = -1082130432;
  v13[5] = 1065353216;
  v13[0] = -1082130432;
  v13[1] = -1082130432;
  v13[3] = 1065353216;
  v13[4] = 1065353216;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_972D78;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 569b3c glitch::io::CAttributes::addBox3d(char const*,glitch::core::aabbox3d<float>,bool) =====
void __fastcall glitch::io::CAttributes::addBox3d(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  int v6; // r7
  int v7; // r8
  int v8; // r10
  int v9; // r9
  _DWORD *v11; // r6
  _BYTE *v12; // r1
  int v13; // [sp+Ch] [bp-28h]
  _DWORD v14[6]; // [sp+10h] [bp-24h] BYREF
  _DWORD *v15; // [sp+28h] [bp-Ch] BYREF
  _BYTE v16[8]; // [sp+2Ch] [bp-8h] BYREF

  v13 = a3[5];
  v5 = *(_DWORD *)(a1 + 72);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v14[4] = a3[4];
  v11 = operator new(0x44u, 0);
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v14[5] = v13;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, v14, a4);
  *v11 = off_972D78;
  v15 = v11;
  v12 = *(_BYTE **)(v5 + 4);
  if ( v12 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v12,
      &v15,
      (int)v16,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v12 = v11;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 569c18 glitch::io::CAttributes::addStringAsQuaternion(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsQuaternion(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v7; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD *v13; // [sp+20h] [bp-Ch] BYREF
  _BYTE v14[8]; // [sp+24h] [bp-8h] BYREF

  v7 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, 0, 0, 0, 1065353216, a4);
  *v9 = off_972EB0;
  v13 = v9;
  v10 = *(_BYTE **)(v7 + 4);
  if ( v10 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v10,
      &v13,
      (int)v14,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v7 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 569d00 glitch::io::CAttributes::addQuaternion(char const*,glitch::core::quaternion,bool) =====
void __fastcall glitch::io::CAttributes::addQuaternion(int a1, char *a2, int a3, int a4, int a5, int a6, char a7)
{
  int v7; // r4
  _DWORD *v9; // r5
  _BYTE *v10; // r1
  _DWORD *v11; // [sp+20h] [bp-Ch] BYREF
  _BYTE v12[8]; // [sp+24h] [bp-8h] BYREF
  int varg_r2; // [sp+50h] [bp+24h]
  int varg_r3; // [sp+54h] [bp+28h]

  v7 = *(_DWORD *)(a1 + 72);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, varg_r2, varg_r3, a5, a6, a7);
  *v9 = off_972EB0;
  v11 = v9;
  v10 = *(_BYTE **)(v7 + 4);
  if ( v10 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v10,
      &v11,
      (int)v12,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v7 + 4) += 4;
  }
}


// ===== 569de4 glitch::io::CAttributes::addStringAsVector4d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsVector4d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  int v13[4]; // [sp+8h] [bp-18h] BYREF
  _DWORD *v14; // [sp+18h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+1Ch] [bp-4h] BYREF

  memset(v13, 0, sizeof(v13));
  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_95C1C8;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 569ebc glitch::io::CAttributes::addVector4d(char const*,glitch::core::vector4d<float> const&,bool) =====
void __fastcall glitch::io::CAttributes::addVector4d(int a1, char *a2, int *a3, char a4)
{
  int v5; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v8 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, a4);
  *v8 = off_95C1C8;
  v10 = v8;
  v9 = *(_BYTE **)(v5 + 4);
  if ( v9 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v9,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 569f5c glitch::io::CAttributes::addStringAsVector3d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsVector3d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[3]; // [sp+Ch] [bp-14h] BYREF
  _DWORD *v14; // [sp+18h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+1Ch] [bp-4h] BYREF

  memset(v13, 0, sizeof(v13));
  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_95C090;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 56a030 glitch::io::CAttributes::addVector3d(char const*,glitch::core::vector3d<float> const&,bool) =====
void __fastcall glitch::io::CAttributes::addVector3d(int a1, char *a2, _DWORD *a3, char a4)
{
  int v5; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v8 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, a4);
  *v8 = off_95C090;
  v10 = v8;
  v9 = *(_BYTE **)(v5 + 4);
  if ( v9 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v9,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 56a0d0 glitch::io::CAttributes::addStringAsVector2d(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsVector2d(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[2]; // [sp+8h] [bp-10h] BYREF
  _DWORD *v14; // [sp+10h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-4h] BYREF

  v13[1] = 0;
  v13[0] = 0;
  v6 = *((_DWORD *)this + 18);
  v9 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_95BF58;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 56a1a0 glitch::io::CAttributes::addVector2d(char const*,glitch::core::vector2d<float> const&,bool) =====
void __fastcall glitch::io::CAttributes::addVector2d(int a1, char *a2, _DWORD *a3, char a4)
{
  int v5; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *(_DWORD *)(a1 + 72);
  v8 = operator new(0x44u, 0);
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, a4);
  *v8 = off_95BF58;
  v10 = v8;
  v9 = *(_BYTE **)(v5 + 4);
  if ( v9 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v9,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 56a240 glitch::io::CAttributes::addStringAsColorf(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsColorf(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v6; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+18h] [bp-Ch] BYREF
  _BYTE v15[4]; // [sp+1Ch] [bp-8h] BYREF

  v6 = *((_DWORD *)this + 18);
  memset(v13, 0, 12);
  v9 = operator new(0x44u, 0);
  v13[3] = 1065353216;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v13, a4);
  *v9 = off_95BE20;
  v14 = v9;
  v10 = *(_BYTE **)(v6 + 4);
  if ( v10 == *(_BYTE **)(v6 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v6,
      v10,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v6 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 56a31c glitch::io::CAttributes::addColorf(char const*,glitch::video::SColorf,bool) =====
void __fastcall glitch::io::CAttributes::addColorf(int a1, char *a2, int a3, int a4, int a5, int a6, char a7)
{
  int v7; // r5
  _DWORD *v9; // r6
  _BYTE *v10; // r1
  _DWORD v11[4]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD *v12; // [sp+18h] [bp-Ch] BYREF
  _BYTE v13[4]; // [sp+1Ch] [bp-8h] BYREF
  int varg_r2; // [sp+48h] [bp+24h]
  int varg_r3; // [sp+4Ch] [bp+28h]

  v7 = *(_DWORD *)(a1 + 72);
  v11[0] = varg_r2;
  v9 = operator new(0x44u, 0);
  v11[3] = a6;
  v11[2] = a5;
  v11[1] = varg_r3;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v9, a2, v11, a7);
  *v9 = off_95BE20;
  v12 = v9;
  v10 = *(_BYTE **)(v7 + 4);
  if ( v10 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v10,
      &v12,
      (int)v13,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v7 + 4) += 4;
  }
}


// ===== 56a3ec glitch::io::CAttributes::addStringAsColor(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsColor(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v7; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  int v10; // r0
  float v13[4]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD *v14; // [sp+20h] [bp-Ch] BYREF
  _BYTE v15[4]; // [sp+24h] [bp-8h] BYREF

  v7 = *((_DWORD *)this + 18);
  v13[0] = (float)0 * 0.0039216;
  v8 = operator new(0x44u, 0);
  v13[3] = v13[0];
  v13[2] = v13[0];
  v13[1] = v13[0];
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, v13, a4);
  *v8 = off_95BBB0;
  v14 = v8;
  v9 = *(_BYTE **)(v7 + 4);
  if ( v9 == *(_BYTE **)(v7 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v7,
      v9,
      &v14,
      (int)v15,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v7 + 4) += 4;
  }
  v10 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v10 + 148))(v10, a3);
}


// ===== 56a528 glitch::io::CAttributes::addColor(char const*,glitch::video::SColor,bool) =====
void __fastcall glitch::io::CAttributes::addColor(int a1, char *a2, int a3, char a4)
{
  int v4; // r5
  float v7; // r10
  float v8; // r8
  float v9; // r7
  _DWORD *v10; // r6
  _BYTE *v11; // r1
  float v12[4]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD *v13; // [sp+20h] [bp-Ch] BYREF
  _BYTE v14[4]; // [sp+24h] [bp-8h] BYREF

  v4 = *(_DWORD *)(a1 + 72);
  v7 = (float)BYTE1(a3) * 0.0039216;
  v8 = (float)BYTE2(a3) * 0.0039216;
  v9 = (float)HIBYTE(a3) * 0.0039216;
  v12[0] = (float)(unsigned __int8)a3 * 0.0039216;
  v10 = operator new(0x44u, 0);
  v12[3] = v9;
  v12[2] = v8;
  v12[1] = v7;
  glitch::io::CNumbersAttribute::CNumbersAttribute((int)v10, a2, v12, a4);
  *v10 = off_95BBB0;
  v13 = v10;
  v11 = *(_BYTE **)(v4 + 4);
  if ( v11 == *(_BYTE **)(v4 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v4,
      v11,
      &v13,
      (int)v14,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v11 = v10;
    *(_DWORD *)(v4 + 4) += 4;
  }
}


// ===== 56a638 glitch::io::CAttributes::addStringAsMatrix(char const*,wchar_t const*,bool) =====
int __fastcall glitch::io::CAttributes::addStringAsMatrix(
        glitch::io::CAttributes *this,
        char *a2,
        const wchar_t *a3,
        char a4)
{
  int v8; // r4
  _DWORD *v9; // r7
  _BYTE *v10; // r1
  int v11; // r0
  _DWORD v13[16]; // [sp+Ch] [bp-50h] BYREF
  char v14; // [sp+4Ch] [bp-10h]
  _DWORD *v15; // [sp+50h] [bp-Ch] BYREF
  _BYTE v16[8]; // [sp+54h] [bp-8h] BYREF

  v8 = *((_DWORD *)this + 18);
  LC_API_MEMSET_0(v13, 0, 0x40u);
  v13[15] = 1065353216;
  v13[0] = 1065353216;
  v13[5] = 1065353216;
  v13[10] = 1065353216;
  v14 = 1;
  v9 = operator new(0x44u, 0);
  glitch::io::CMatrixAttribute::CMatrixAttribute(v9, a2, v13, a4);
  v15 = v9;
  v10 = *(_BYTE **)(v8 + 4);
  if ( v10 == *(_BYTE **)(v8 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v8,
      v10,
      &v15,
      (int)v16,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v8 + 4) += 4;
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 18) + 4) - 4);
  return (*(int (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
}


// ===== 56a70c glitch::io::CAttributes::addMatrix(char const*,glitch::core::CMatrix4<float> const&,bool) =====
void __fastcall glitch::io::CAttributes::addMatrix(int a1, char *a2, const void *a3, char a4)
{
  int v4; // r4
  _DWORD *v7; // r6
  _BYTE *v8; // r1
  _BYTE v9[68]; // [sp+Ch] [bp-4Ch] BYREF
  _DWORD *v10; // [sp+50h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+54h] [bp-4h] BYREF

  v4 = *(_DWORD *)(a1 + 72);
  glitch::core::CMatrix4<float>::CMatrix4(v9, a3);
  v7 = operator new(0x44u, 0);
  glitch::io::CMatrixAttribute::CMatrixAttribute(v7, a2, v9, a4);
  v10 = v7;
  v8 = *(_BYTE **)(v4 + 4);
  if ( v8 == *(_BYTE **)(v4 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v4,
      v8,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v8 = v7;
    *(_DWORD *)(v4 + 4) += 4;
  }
}


// ===== 56a798 glitch::io::CAttributes::addString(char const*,wchar_t const*,bool) =====
void __fastcall glitch::io::CAttributes::addString(glitch::io::CAttributes *this, char *a2, const wchar_t *a3, bool a4)
{
  int v5; // r4
  glitch::io::CStringAttribute *v8; // r5
  _BYTE *v9; // r1
  glitch::io::CStringAttribute *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *((_DWORD *)this + 18);
  v8 = (glitch::io::CStringAttribute *)operator new(0x84u, 0);
  glitch::io::CStringAttribute::CStringAttribute(v8, a2, a3, a4);
  v10 = v8;
  v9 = *(_BYTE **)(v5 + 4);
  if ( v9 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v9,
      &v10,
      (int)v11,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v9 = v8;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 56a818 glitch::io::CAttributes::addString(char const*,char const*,bool) =====
void __fastcall glitch::io::CAttributes::addString(glitch::io::CAttributes *this, char *a2, char *a3, bool a4)
{
  int v5; // r4
  glitch::io::CStringAttribute *v8; // r0
  glitch::io::CStringAttribute *v9; // r5
  _BYTE *v10; // r1
  glitch::io::CStringAttribute *v11; // [sp+8h] [bp-8h] BYREF
  char v12[4]; // [sp+Ch] [bp-4h] BYREF

  v5 = *((_DWORD *)this + 18);
  v8 = (glitch::io::CStringAttribute *)operator new(0x84u, 0);
  v9 = v8;
  if ( !a3 )
    a3 = "";
  glitch::io::CStringAttribute::CStringAttribute(v8, a2, a3, a4);
  v11 = v9;
  v10 = *(_BYTE **)(v5 + 4);
  if ( v10 == *(_BYTE **)(v5 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v5,
      v10,
      &v11,
      (int)v12,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v10 = v9;
    *(_DWORD *)(v5 + 4) += 4;
  }
}


// ===== 56a8b4 glitch::io::CAttributes::addArray(char const*,std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>,bool) =====
void ***__fastcall glitch::io::CAttributes::addArray(int a1, char *a2, int *a3, char a4)
{
  int v4; // r4
  void *v7; // r6
  _BYTE *v8; // r1
  void **v10[3]; // [sp+Ch] [bp-14h] BYREF
  void *v11; // [sp+18h] [bp-8h] BYREF
  _BYTE v12[4]; // [sp+1Ch] [bp-4h] BYREF

  v4 = *(_DWORD *)(a1 + 72);
  std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    v10,
    a3);
  v7 = operator new(0x30u, 0);
  glitch::io::CStringWArrayAttribute::CStringWArrayAttribute((int)v7, a2, (int *)v10, a4);
  v11 = v7;
  v8 = *(_BYTE **)(v4 + 4);
  if ( v8 == *(_BYTE **)(v4 + 8) )
  {
    std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      (const void **)v4,
      v8,
      &v11,
      (int)v12,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v8 = v7;
    *(_DWORD *)(v4 + 4) += 4;
  }
  return std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v10);
}


// ===== 56a948 glitch::io::CAttributes::setAttribute(char const*,char const*) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, char *a2, char *a3)
{
  int v3; // r4
  _DWORD *v5; // r3
  unsigned int v8; // r7
  int v9; // r8
  int v11; // r0
  glitch::io::CStringAttribute *v12; // r5
  _BYTE *v13; // r1
  _DWORD *v14; // r4
  char *v15; // r3
  char *v16; // r0
  char *v17; // r1
  glitch::io::CStringAttribute *v18; // [sp+8h] [bp-Ch] BYREF
  char v19[8]; // [sp+Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 18);
  v5 = *(_DWORD **)v3;
  if ( (unsigned int)(*(_DWORD *)(v3 + 4) - *(_DWORD *)v3) >> 2 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = 4 * v8;
      if ( std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
             v5[v8++] + 8,
             a2) )
      {
        break;
      }
      v3 = *((_DWORD *)this + 18);
      v5 = *(_DWORD **)v3;
      if ( v8 >= (*(_DWORD *)(v3 + 4) - *(_DWORD *)v3) >> 2 )
        goto LABEL_8;
    }
    if ( a3 )
    {
      v11 = *(_DWORD *)(**((_DWORD **)this + 18) + v9);
      (*(void (__fastcall **)(int, char *))(*(_DWORD *)v11 + 144))(v11, a3);
    }
    else
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(**((_DWORD **)this + 18) + v9));
      v14 = *((_DWORD **)this + 18);
      v15 = (char *)v14[1];
      v16 = (char *)(*v14 + v9);
      v17 = v16 + 4;
      if ( v16 + 4 != v15 )
      {
        memmove(v16, v17, v15 - v17);
        v17 = (char *)v14[1];
      }
      v14[1] = v17 - 4;
    }
  }
  else
  {
LABEL_8:
    if ( a3 )
    {
      v12 = (glitch::io::CStringAttribute *)operator new(0x84u, 0);
      glitch::io::CStringAttribute::CStringAttribute(v12, a2, a3, 0);
      v18 = v12;
      v13 = *(_BYTE **)(v3 + 4);
      if ( v13 == *(_BYTE **)(v3 + 8) )
      {
        std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (const void **)v3,
          v13,
          &v18,
          (int)v19,
          1u,
          1);
      }
      else
      {
        *(_DWORD *)v13 = v12;
        *(_DWORD *)(v3 + 4) += 4;
      }
    }
  }
}


// ===== 56aa98 glitch::io::CAttributes::setAttribute(char const*,wchar_t const*) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, char *a2, const wchar_t *a3)
{
  int v3; // r4
  _DWORD *v5; // r3
  unsigned int v8; // r7
  int v9; // r8
  int v11; // r0
  glitch::io::CStringAttribute *v12; // r5
  _BYTE *v13; // r1
  _DWORD *v14; // r4
  char *v15; // r3
  char *v16; // r0
  char *v17; // r1
  glitch::io::CStringAttribute *v18; // [sp+8h] [bp-Ch] BYREF
  char v19[8]; // [sp+Ch] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 18);
  v5 = *(_DWORD **)v3;
  if ( (unsigned int)(*(_DWORD *)(v3 + 4) - *(_DWORD *)v3) >> 2 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = 4 * v8;
      if ( std::operator==<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
             v5[v8++] + 8,
             a2) )
      {
        break;
      }
      v3 = *((_DWORD *)this + 18);
      v5 = *(_DWORD **)v3;
      if ( v8 >= (*(_DWORD *)(v3 + 4) - *(_DWORD *)v3) >> 2 )
        goto LABEL_8;
    }
    if ( a3 )
    {
      v11 = *(_DWORD *)(**((_DWORD **)this + 18) + v9);
      (*(void (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v11 + 148))(v11, a3);
    }
    else
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(**((_DWORD **)this + 18) + v9));
      v14 = *((_DWORD **)this + 18);
      v15 = (char *)v14[1];
      v16 = (char *)(*v14 + v9);
      v17 = v16 + 4;
      if ( v16 + 4 != v15 )
      {
        memmove(v16, v17, v15 - v17);
        v17 = (char *)v14[1];
      }
      v14[1] = v17 - 4;
    }
  }
  else
  {
LABEL_8:
    if ( a3 )
    {
      v12 = (glitch::io::CStringAttribute *)operator new(0x84u, 0);
      glitch::io::CStringAttribute::CStringAttribute(v12, a2, a3, 0);
      v18 = v12;
      v13 = *(_BYTE **)(v3 + 4);
      if ( v13 == *(_BYTE **)(v3 + 8) )
      {
        std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (const void **)v3,
          v13,
          &v18,
          (int)v19,
          1u,
          1);
      }
      else
      {
        *(_DWORD *)v13 = v12;
        *(_DWORD *)(v3 + 4) += 4;
      }
    }
  }
}


// ===== 56abe8 glitch::io::CAttributes::setAttribute(char const*,glitch::video::SColor) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, unsigned int a3)
{
  int v3; // r6
  int v6; // r10
  int v7; // r8
  int v8; // r11
  int AttributeP; // r0
  float v10; // r8
  int v11; // r5
  _DWORD *v12; // r6
  _BYTE *v13; // r1
  float v14; // [sp+8h] [bp-24h]
  float v16[4]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD *v17; // [sp+20h] [bp-Ch] BYREF
  _BYTE v18[4]; // [sp+24h] [bp-8h] BYREF

  v3 = HIBYTE(a3);
  v6 = (unsigned __int8)a3;
  v7 = BYTE1(a3);
  v8 = BYTE2(a3);
  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)AttributeP + 160))(AttributeP, a3);
  }
  else
  {
    v14 = (float)v7 * 0.0039216;
    v10 = (float)v3 * 0.0039216;
    v11 = *((_DWORD *)a1 + 18);
    v16[0] = (float)v6 * 0.0039216;
    v12 = operator new(0x44u, 0);
    v16[3] = v10;
    v16[2] = (float)v8 * 0.0039216;
    v16[1] = v14;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v12, a2, v16, 0);
    *v12 = off_95BBB0;
    v17 = v12;
    v13 = *(_BYTE **)(v11 + 4);
    if ( v13 == *(_BYTE **)(v11 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v11,
        v13,
        &v17,
        (int)v18,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v13 = v12;
      *(_DWORD *)(v11 + 4) += 4;
    }
  }
}


// ===== 56ad30 glitch::io::CAttributes::setAttribute(char const*,void *) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, char *a2, void *a3)
{
  int AttributeP; // r0
  int v7; // r4
  glitch::io::CUserPointerAttribute *v8; // r5
  _BYTE *v9; // r1
  glitch::io::CUserPointerAttribute *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, void *))(*(_DWORD *)AttributeP + 244))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)this + 18);
    v8 = (glitch::io::CUserPointerAttribute *)operator new(0x28u, 0);
    glitch::io::CUserPointerAttribute::CUserPointerAttribute(v8, a2, a3, 0);
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56add0 glitch::io::CAttributes::setAttribute(char const*,glitch::core::quaternion) =====
void __fastcall glitch::io::CAttributes::setAttribute(
        glitch::io::CAttributes *a1,
        char *a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  int AttributeP; // r0
  int v9; // r6
  _BYTE *v10; // r1
  _DWORD *v11; // [sp+14h] [bp-20h]
  _DWORD *v12; // [sp+28h] [bp-Ch] BYREF
  _BYTE v13[8]; // [sp+2Ch] [bp-8h] BYREF
  int varg_r2; // [sp+58h] [bp+24h]
  int varg_r3; // [sp+5Ch] [bp+28h]

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, int, int, int, int))(*(_DWORD *)AttributeP + 192))(
      AttributeP,
      varg_r2,
      varg_r3,
      a5,
      a6);
  }
  else
  {
    v9 = *((_DWORD *)a1 + 18);
    v11 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, varg_r2, varg_r3, a5, a6, 0);
    *v11 = off_972EB0;
    v12 = v11;
    v10 = *(_BYTE **)(v9 + 4);
    if ( v10 == *(_BYTE **)(v9 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v9,
        v10,
        &v12,
        (int)v13,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v10 = v11;
      *(_DWORD *)(v9 + 4) += 4;
    }
  }
}


// ===== 56aee4 glitch::io::CAttributes::setAttribute(char const*,glitch::core::CMatrix4<float> const&) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, const void *a3)
{
  int AttributeP; // r6
  const void *v7; // r1
  void (__fastcall *v8)(int, _BYTE *); // r5
  int v9; // r4
  _DWORD *v10; // r5
  _BYTE *v11; // r1
  _BYTE v12[68]; // [sp+8h] [bp-90h] BYREF
  _BYTE v13[68]; // [sp+4Ch] [bp-4Ch] BYREF
  _DWORD *v14; // [sp+90h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+94h] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = a3;
    v8 = *(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)AttributeP + 196);
    glitch::core::CMatrix4<float>::CMatrix4(v13, v7);
    v8(AttributeP, v13);
  }
  else
  {
    v9 = *((_DWORD *)a1 + 18);
    glitch::core::CMatrix4<float>::CMatrix4(v12, a3);
    v10 = operator new(0x44u, 0);
    glitch::io::CMatrixAttribute::CMatrixAttribute(v10, a2, v12, 0);
    v14 = v10;
    v11 = *(_BYTE **)(v9 + 4);
    if ( v11 == *(_BYTE **)(v9 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v9,
        v11,
        &v14,
        (int)v15,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v11 = v10;
      *(_DWORD *)(v9 + 4) += 4;
    }
  }
}


// ===== 56afa8 glitch::io::CAttributes::setAttribute(char const*,std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>) =====
void ***__fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r7
  void (__fastcall *v7)(int, void ***); // r5
  int v9; // r4
  void *v10; // r6
  _BYTE *v11; // r1
  void **v12[3]; // [sp+8h] [bp-20h] BYREF
  void **v13[3]; // [sp+14h] [bp-14h] BYREF
  void *v14; // [sp+20h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+24h] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = *(void (__fastcall **)(int, void ***))(*(_DWORD *)AttributeP + 152);
    std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v13,
      a3);
    v7(AttributeP, v13);
    return std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v13);
  }
  else
  {
    v9 = *((_DWORD *)a1 + 18);
    std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v12,
      a3);
    v10 = operator new(0x30u, 0);
    glitch::io::CStringWArrayAttribute::CStringWArrayAttribute((int)v10, a2, (int *)v12, 0);
    v14 = v10;
    v11 = *(_BYTE **)(v9 + 4);
    if ( v11 == *(_BYTE **)(v9 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v9,
        v11,
        &v14,
        (int)v15,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v11 = v10;
      *(_DWORD *)(v9 + 4) += 4;
    }
    return std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v12);
  }
}


// ===== 56b07c glitch::io::CAttributes::setAttribute(char const*,float) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, char *a2, float a3)
{
  int AttributeP; // r0
  int v7; // r4
  glitch::io::CFloatAttribute *v8; // r5
  _BYTE *v9; // r1
  glitch::io::CFloatAttribute *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)AttributeP + 140))(AttributeP, LODWORD(a3));
  }
  else
  {
    v7 = *((_DWORD *)this + 18);
    v8 = (glitch::io::CFloatAttribute *)operator new(0x28u, 0);
    glitch::io::CFloatAttribute::CFloatAttribute(v8, a2, a3, 0);
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b11c glitch::io::CAttributes::setAttribute(char const*,int) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, char *a2, int a3)
{
  int AttributeP; // r0
  int v7; // r4
  glitch::io::CIntAttribute *v8; // r5
  _BYTE *v9; // r1
  glitch::io::CIntAttribute *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)AttributeP + 136))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)this + 18);
    v8 = (glitch::io::CIntAttribute *)operator new(0x28u, 0);
    glitch::io::CIntAttribute::CIntAttribute(v8, a2, a3, 0);
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b1bc glitch::io::CAttributes::setAttribute(char const*,bool) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *this, char *a2, _BOOL4 a3)
{
  int AttributeP; // r0
  int v7; // r4
  glitch::io::CBoolAttribute *v8; // r5
  _BYTE *v9; // r1
  glitch::io::CBoolAttribute *v10; // [sp+8h] [bp-8h] BYREF
  _BYTE v11[4]; // [sp+Ch] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, _BOOL4))(*(_DWORD *)AttributeP + 164))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)this + 18);
    v8 = (glitch::io::CBoolAttribute *)operator new(0x24u, 0);
    glitch::io::CBoolAttribute::CBoolAttribute(v8, a2, a3, 0);
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b25c glitch::io::CAttributes::setAttribute(char const*,glitch::video::SColorf) =====
void __fastcall glitch::io::CAttributes::setAttribute(
        glitch::io::CAttributes *a1,
        char *a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  int AttributeP; // r0
  int v9; // r7
  _BYTE *v10; // r1
  _DWORD *v11; // [sp+Ch] [bp-20h]
  _DWORD v12[4]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD *v13; // [sp+20h] [bp-Ch] BYREF
  _BYTE v14[4]; // [sp+24h] [bp-8h] BYREF
  int varg_r2; // [sp+50h] [bp+24h]
  int varg_r3; // [sp+54h] [bp+28h]

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, int, int, int, int))(*(_DWORD *)AttributeP + 156))(
      AttributeP,
      varg_r2,
      varg_r3,
      a5,
      a6);
  }
  else
  {
    v9 = *((_DWORD *)a1 + 18);
    v12[0] = varg_r2;
    v12[3] = a6;
    v12[2] = a5;
    v12[1] = varg_r3;
    v11 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v11, a2, v12, 0);
    *v11 = off_95BE20;
    v13 = v11;
    v10 = *(_BYTE **)(v9 + 4);
    if ( v10 == *(_BYTE **)(v9 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v9,
        v10,
        &v13,
        (int)v14,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v10 = v11;
      *(_DWORD *)(v9 + 4) += 4;
    }
  }
}


// ===== 56b35c glitch::io::CAttributes::setAttribute(char const*,boost::intrusive_ptr<glitch::video::ITexture>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r5
  void *v8; // r6
  _BYTE *v9; // r1
  void *v10; // [sp+8h] [bp-Ch] BYREF
  _BYTE v11[8]; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, int *))(*(_DWORD *)AttributeP + 252))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)a1 + 18);
    v8 = operator new(0x2Cu, 0);
    glitch::io::CTextureAttribute::CTextureAttribute((int)v8, a2, a3, *((_DWORD *)a1 + 22), 0);
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b400 glitch::io::CAttributes::setAttribute(char const*,char const*,char const* const*) =====
void __fastcall glitch::io::CAttributes::setAttribute(
        glitch::io::CAttributes *this,
        char *a2,
        const char *a3,
        const char *const *a4)
{
  int AttributeP; // r0
  int v9; // r5
  glitch::io::CEnumAttribute *v10; // r6
  _BYTE *v11; // r1
  glitch::io::CEnumAttribute *v12; // [sp+8h] [bp-Ch] BYREF
  _BYTE v13[8]; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, const char *, const char *const *))(*(_DWORD *)AttributeP + 248))(AttributeP, a3, a4);
  }
  else
  {
    v9 = *((_DWORD *)this + 18);
    v10 = (glitch::io::CEnumAttribute *)operator new(0x48u, 0);
    glitch::io::CEnumAttribute::CEnumAttribute(v10, a2, a3, a4, 0);
    v12 = v10;
    v11 = *(_BYTE **)(v9 + 4);
    if ( v11 == *(_BYTE **)(v9 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v9,
        v11,
        &v12,
        (int)v13,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v11 = v10;
      *(_DWORD *)(v9 + 4) += 4;
    }
  }
}


// ===== 56b4ac glitch::io::CAttributes::setAttribute(char const*,void *,int) =====
void __fastcall glitch::io::CAttributes::setAttribute(
        glitch::io::CAttributes *this,
        char *a2,
        unsigned __int8 *a3,
        int a4)
{
  int AttributeP; // r0
  int v9; // r6
  glitch::io::CStringAttribute *v10; // r7
  _BYTE *v11; // r1
  glitch::io::CStringAttribute *v12; // [sp+8h] [bp-8h] BYREF
  _BYTE v13[4]; // [sp+Ch] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(this, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, unsigned __int8 *, int))(*(_DWORD *)AttributeP + 168))(AttributeP, a3, a4);
  }
  else
  {
    v9 = *((_DWORD *)this + 18);
    v10 = (glitch::io::CStringAttribute *)operator new(0x84u, 0);
    glitch::io::CStringAttribute::CStringAttribute(v10, a2, a3, a4, 0);
    *(_DWORD *)v10 = off_973358;
    v12 = v10;
    v11 = *(_BYTE **)(v9 + 4);
    if ( v11 == *(_BYTE **)(v9 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v9,
        v11,
        &v12,
        (int)v13,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v11 = v10;
      *(_DWORD *)(v9 + 4) += 4;
    }
  }
}


// ===== 56b578 glitch::io::CAttributes::setAttribute(char const*,glitch::core::vector4d<int> const&) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-Ch] BYREF
  _BYTE v11[8]; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, int *))(*(_DWORD *)AttributeP + 212))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)a1 + 18);
    v8 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, 0);
    *v8 = off_9736E0;
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b638 glitch::io::CAttributes::setAttribute(char const*,glitch::core::vector3d<int> const&) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, _DWORD *a3)
{
  int AttributeP; // r0
  int v7; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-Ch] BYREF
  _BYTE v11[8]; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 208))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)a1 + 18);
    v8 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, 0);
    *v8 = off_973818;
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b6f8 glitch::io::CAttributes::setAttribute(char const*,glitch::core::vector4d<float> const&) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-Ch] BYREF
  _BYTE v11[8]; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, int *))(*(_DWORD *)AttributeP + 180))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)a1 + 18);
    v8 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, 0);
    *v8 = off_95C1C8;
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b7b8 glitch::io::CAttributes::setAttribute(char const*,glitch::core::vector3d<float> const&) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, _DWORD *a3)
{
  int AttributeP; // r0
  int v7; // r5
  _DWORD *v8; // r6
  _BYTE *v9; // r1
  _DWORD *v10; // [sp+8h] [bp-Ch] BYREF
  _BYTE v11[8]; // [sp+Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 176))(AttributeP, a3);
  }
  else
  {
    v7 = *((_DWORD *)a1 + 18);
    v8 = operator new(0x44u, 0);
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v8, a2, a3, 0);
    *v8 = off_95C090;
    v10 = v8;
    v9 = *(_BYTE **)(v7 + 4);
    if ( v9 == *(_BYTE **)(v7 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v7,
        v9,
        &v10,
        (int)v11,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(_DWORD *)(v7 + 4) += 4;
    }
  }
}


// ===== 56b878 glitch::io::CAttributes::setAttribute(char const*,glitch::core::rect<int>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  int v8; // lr
  int v9; // r12
  void (__fastcall *v10)(int, _DWORD *); // r3
  int v11; // r7
  int v12; // r8
  int v13; // r10
  int v14; // r5
  _DWORD *v15; // r6
  _BYTE *v16; // r1
  int v17; // [sp+Ch] [bp-30h]
  _DWORD v18[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v19[4]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD *v20; // [sp+30h] [bp-Ch] BYREF
  _BYTE v21[8]; // [sp+34h] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = a3[3];
    v8 = *a3;
    v9 = a3[1];
    v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 188);
    v19[2] = a3[2];
    v19[0] = v8;
    v19[1] = v9;
    v19[3] = v7;
    v10(AttributeP, v19);
  }
  else
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = *((_DWORD *)a1 + 18);
    v17 = a3[3];
    v15 = operator new(0x44u, 0);
    v18[0] = v11;
    v18[1] = v12;
    v18[2] = v13;
    v18[3] = v17;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v15, a2, v18, 0);
    *v15 = off_973470;
    v20 = v15;
    v16 = *(_BYTE **)(v14 + 4);
    if ( v16 == *(_BYTE **)(v14 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v14,
        v16,
        &v20,
        (int)v21,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v16 = v15;
      *(_DWORD *)(v14 + 4) += 4;
    }
  }
}


// ===== 56b978 glitch::io::CAttributes::setAttribute(char const*,glitch::core::position2d<int>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  void (__fastcall *v8)(int, _DWORD *); // r3
  int v9; // r7
  int v10; // r8
  int v11; // r5
  _DWORD *v12; // r6
  _BYTE *v13; // r1
  _DWORD v14[2]; // [sp+8h] [bp-18h] BYREF
  _DWORD v15[2]; // [sp+10h] [bp-10h] BYREF
  _DWORD *v16; // [sp+18h] [bp-8h] BYREF
  _BYTE v17[4]; // [sp+1Ch] [bp-4h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = *a3;
    v8 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 184);
    v15[1] = a3[1];
    v15[0] = v7;
    v8(AttributeP, v15);
  }
  else
  {
    v9 = *a3;
    v10 = a3[1];
    v11 = *((_DWORD *)a1 + 18);
    v12 = operator new(0x44u, 0);
    v14[0] = v9;
    v14[1] = v10;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v12, a2, v14, 0);
    *v12 = off_9735A8;
    v16 = v12;
    v13 = *(_BYTE **)(v11 + 4);
    if ( v13 == *(_BYTE **)(v11 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v11,
        v13,
        &v16,
        (int)v17,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v13 = v12;
      *(_DWORD *)(v11 + 4) += 4;
    }
  }
}


// ===== 56ba54 glitch::io::CAttributes::setAttribute(char const*,glitch::core::aabbox3d<float>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  int v8; // r5
  int v9; // r4
  int v10; // lr
  int v11; // r12
  void (__fastcall *v12)(int, _DWORD *); // r3
  int v13; // r7
  int v14; // r8
  int v15; // r10
  int v16; // r5
  _DWORD *v17; // r6
  _BYTE *v18; // r1
  int v19; // [sp+10h] [bp-44h]
  int v20; // [sp+14h] [bp-40h]
  _DWORD v21[6]; // [sp+18h] [bp-3Ch] BYREF
  _DWORD v22[6]; // [sp+30h] [bp-24h] BYREF
  _DWORD *v23; // [sp+48h] [bp-Ch] BYREF
  _BYTE v24[8]; // [sp+4Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = a3[5];
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    v12 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 236);
    v22[4] = a3[4];
    v22[0] = v8;
    v22[1] = v9;
    v22[2] = v10;
    v22[3] = v11;
    v22[5] = v7;
    v12(AttributeP, v22);
  }
  else
  {
    v19 = a3[5];
    v13 = *a3;
    v14 = a3[1];
    v15 = a3[2];
    v20 = a3[3];
    v16 = *((_DWORD *)a1 + 18);
    v21[4] = a3[4];
    v17 = operator new(0x44u, 0);
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = v15;
    v21[3] = v20;
    v21[5] = v19;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v17, a2, v21, 0);
    *v17 = off_972D78;
    v23 = v17;
    v18 = *(_BYTE **)(v16 + 4);
    if ( v18 == *(_BYTE **)(v16 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v16,
        v18,
        &v23,
        (int)v24,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v18 = v17;
      *(_DWORD *)(v16 + 4) += 4;
    }
  }
}


// ===== 56bb8c glitch::io::CAttributes::setAttribute(char const*,glitch::core::line3d<float>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  int v8; // r5
  int v9; // r4
  int v10; // lr
  int v11; // r12
  void (__fastcall *v12)(int, _DWORD *); // r3
  int v13; // r7
  int v14; // r8
  int v15; // r10
  int v16; // r5
  _DWORD *v17; // r6
  _BYTE *v18; // r1
  int v19; // [sp+10h] [bp-44h]
  int v20; // [sp+14h] [bp-40h]
  _DWORD v21[6]; // [sp+18h] [bp-3Ch] BYREF
  _DWORD v22[6]; // [sp+30h] [bp-24h] BYREF
  _DWORD *v23; // [sp+48h] [bp-Ch] BYREF
  _BYTE v24[8]; // [sp+4Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = a3[5];
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    v12 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 224);
    v22[4] = a3[4];
    v22[0] = v8;
    v22[1] = v9;
    v22[2] = v10;
    v22[3] = v11;
    v22[5] = v7;
    v12(AttributeP, v22);
  }
  else
  {
    v19 = a3[5];
    v13 = *a3;
    v14 = a3[1];
    v15 = a3[2];
    v20 = a3[3];
    v16 = *((_DWORD *)a1 + 18);
    v21[4] = a3[4];
    v17 = operator new(0x44u, 0);
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = v15;
    v21[3] = v20;
    v21[5] = v19;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v17, a2, v21, 0);
    *v17 = off_972898;
    v23 = v17;
    v18 = *(_BYTE **)(v16 + 4);
    if ( v18 == *(_BYTE **)(v16 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v16,
        v18,
        &v23,
        (int)v24,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v18 = v17;
      *(_DWORD *)(v16 + 4) += 4;
    }
  }
}


// ===== 56bcc4 glitch::io::CAttributes::setAttribute(char const*,glitch::core::line2d<float>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  int v8; // lr
  int v9; // r12
  void (__fastcall *v10)(int, _DWORD *); // r3
  int v11; // r7
  int v12; // r8
  int v13; // r10
  int v14; // r5
  _DWORD *v15; // r6
  _BYTE *v16; // r1
  int v17; // [sp+Ch] [bp-30h]
  _DWORD v18[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v19[4]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD *v20; // [sp+30h] [bp-Ch] BYREF
  _BYTE v21[8]; // [sp+34h] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = a3[3];
    v8 = *a3;
    v9 = a3[1];
    v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 216);
    v19[2] = a3[2];
    v19[0] = v8;
    v19[1] = v9;
    v19[3] = v7;
    v10(AttributeP, v19);
  }
  else
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = *((_DWORD *)a1 + 18);
    v17 = a3[3];
    v15 = operator new(0x44u, 0);
    v18[0] = v11;
    v18[1] = v12;
    v18[2] = v13;
    v18[3] = v17;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v15, a2, v18, 0);
    *v15 = off_9729D0;
    v20 = v15;
    v16 = *(_BYTE **)(v14 + 4);
    if ( v16 == *(_BYTE **)(v14 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v14,
        v16,
        &v20,
        (int)v21,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v16 = v15;
      *(_DWORD *)(v14 + 4) += 4;
    }
  }
}


// ===== 56bdcc glitch::io::CAttributes::setAttribute(char const*,glitch::core::triangle3d<float>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  int v8; // r10
  int v9; // r8
  int v10; // r7
  int v11; // r5
  int v12; // r4
  int v13; // lr
  int v14; // r12
  void (__fastcall *v15)(int, _DWORD *); // r3
  int v16; // r7
  int v17; // r8
  int v18; // r10
  int v19; // r5
  _DWORD *v20; // r6
  _BYTE *v21; // r1
  int v22; // [sp+8h] [bp-6Ch]
  int v23; // [sp+Ch] [bp-68h]
  int v24; // [sp+10h] [bp-64h]
  int v25; // [sp+18h] [bp-5Ch]
  int v26; // [sp+1Ch] [bp-58h]
  _DWORD v27[9]; // [sp+20h] [bp-54h] BYREF
  _DWORD v28[9]; // [sp+44h] [bp-30h] BYREF
  _DWORD *v29; // [sp+68h] [bp-Ch] BYREF
  _BYTE v30[8]; // [sp+6Ch] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = a3[8];
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    v14 = a3[6];
    v15 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 200);
    v28[7] = a3[7];
    v28[0] = v8;
    v28[1] = v9;
    v28[2] = v10;
    v28[3] = v11;
    v28[4] = v12;
    v28[5] = v13;
    v28[6] = v14;
    v28[8] = v7;
    v15(AttributeP, v28);
  }
  else
  {
    v25 = a3[8];
    v16 = *a3;
    v17 = a3[1];
    v18 = a3[2];
    v24 = a3[4];
    v23 = a3[5];
    v26 = a3[6];
    v19 = *((_DWORD *)a1 + 18);
    v22 = a3[7];
    v27[3] = a3[3];
    v27[7] = v22;
    v27[4] = v24;
    v27[5] = v23;
    v20 = operator new(0x44u, 0);
    v27[0] = v16;
    v27[1] = v17;
    v27[2] = v18;
    v27[6] = v26;
    v27[8] = v25;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v20, a2, v27, 0);
    *v20 = off_972B08;
    v29 = v20;
    v21 = *(_BYTE **)(v19 + 4);
    if ( v21 == *(_BYTE **)(v19 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v19,
        v21,
        &v29,
        (int)v30,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v21 = v20;
      *(_DWORD *)(v19 + 4) += 4;
    }
  }
}


// ===== 56bf4c glitch::io::CAttributes::setAttribute(char const*,glitch::core::plane3d<float>) =====
void __fastcall glitch::io::CAttributes::setAttribute(glitch::io::CAttributes *a1, char *a2, int *a3)
{
  int AttributeP; // r0
  int v7; // r2
  int v8; // lr
  int v9; // r12
  void (__fastcall *v10)(int, _DWORD *); // r3
  int v11; // r7
  int v12; // r8
  int v13; // r10
  int v14; // r5
  _DWORD *v15; // r6
  _BYTE *v16; // r1
  int v17; // [sp+Ch] [bp-30h]
  _DWORD v18[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v19[4]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD *v20; // [sp+30h] [bp-Ch] BYREF
  _BYTE v21[8]; // [sp+34h] [bp-8h] BYREF

  AttributeP = glitch::io::CAttributes::getAttributeP(a1, a2);
  if ( AttributeP )
  {
    v7 = a3[3];
    v8 = *a3;
    v9 = a3[1];
    v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)AttributeP + 240);
    v19[2] = a3[2];
    v19[0] = v8;
    v19[1] = v9;
    v19[3] = v7;
    v10(AttributeP, v19);
  }
  else
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = *((_DWORD *)a1 + 18);
    v17 = a3[3];
    v15 = operator new(0x44u, 0);
    v18[0] = v11;
    v18[1] = v12;
    v18[2] = v13;
    v18[3] = v17;
    glitch::io::CNumbersAttribute::CNumbersAttribute((int)v15, a2, v18, 0);
    *v15 = off_972C40;
    v20 = v15;
    v16 = *(_BYTE **)(v14 + 4);
    if ( v16 == *(_BYTE **)(v14 + 8) )
    {
      std::vector<glitch::io::IAttribute *,glitch::core::SAllocator<glitch::io::IAttribute *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (const void **)v14,
        v16,
        &v20,
        (int)v21,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v16 = v15;
      *(_DWORD *)(v14 + 4) += 4;
    }
  }
}


// ===== 56c054 glitch::io::IFileSystem::~IFileSystem() =====
void __fastcall glitch::io::IFileSystem::~IFileSystem(glitch::io::IFileSystem *this)
{
  ;
}


// ===== 56c058 glitch::io::CFileSystem::CFileSystem(void) =====
_DWORD *__fastcall glitch::io::CFileSystem::CFileSystem(_DWORD *this)
{
  *(this + 10) = 0;
  *(this + 1) = 0;
  *this = off_974348;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return this;
}


// ===== 56c0a8 glitch::io::CFileSystem::CFileSystem(void) =====
_DWORD *__fastcall glitch::io::CFileSystem::CFileSystem(_DWORD *this)
{
  *(this + 10) = 0;
  *(this + 1) = 0;
  *this = off_974348;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return this;
}


// ===== 56c0f8 glitch::io::CFileSystem::createAndOpenFileFromArchives(char const*) =====
int __fastcall glitch::io::CFileSystem::createAndOpenFileFromArchives(glitch::io::CFileSystem *this, const char *a2)
{
  int v2; // r3
  unsigned int v5; // r4
  int v6; // r3
  int result; // r0
  int v8; // r3
  unsigned int v9; // r4
  int v10; // r3
  int v11; // r3
  unsigned int v12; // r4
  int v13; // r3

  v2 = *((_DWORD *)this + 2);
  if ( (unsigned int)(*((_DWORD *)this + 3) - v2) >> 2 )
  {
    v5 = 0;
    while ( 1 )
    {
      v6 = *(_DWORD *)(v2 + 4 * v5++);
      result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v6 + 12))(v6, a2);
      if ( result )
        break;
      v2 = *((_DWORD *)this + 2);
      if ( v5 >= (*((_DWORD *)this + 3) - v2) >> 2 )
        goto LABEL_6;
    }
  }
  else
  {
LABEL_6:
    v8 = *((_DWORD *)this + 5);
    if ( (unsigned int)(*((_DWORD *)this + 6) - v8) >> 2 )
    {
      v9 = 0;
      while ( 1 )
      {
        v10 = *(_DWORD *)(v8 + 4 * v9++);
        result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v10 + 12))(v10, a2);
        if ( result )
          break;
        v8 = *((_DWORD *)this + 5);
        if ( v9 >= (*((_DWORD *)this + 6) - v8) >> 2 )
          goto LABEL_11;
      }
    }
    else
    {
LABEL_11:
      v11 = *((_DWORD *)this + 8);
      if ( (unsigned int)(*((_DWORD *)this + 9) - v11) >> 2 )
      {
        v12 = 0;
        while ( 1 )
        {
          v13 = *(_DWORD *)(v11 + 4 * v12++);
          result = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v13 + 12))(v13, a2);
          if ( result )
            break;
          v11 = *((_DWORD *)this + 8);
          if ( v12 >= (*((_DWORD *)this + 9) - v11) >> 2 )
            return 0;
        }
      }
      else
      {
        return 0;
      }
    }
  }
  return result;
}


// ===== 56c214 glitch::io::CFileSystem::getWorkingDirectory(void) =====
char *__fastcall glitch::io::CFileSystem::getWorkingDirectory(glitch::io::CFileSystem *this)
{
  return &glitch::io::CFileSystem::WorkingDirectory;
}


// ===== 56c230 glitch::io::CFileSystem::createXMLReader(char const*) =====
int __fastcall glitch::io::CFileSystem::createXMLReader(glitch::io::CFileSystem *this, const char *a2)
{
  glitch::IReferenceCounted *v3; // r5
  int v4; // r4

  v3 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::io::CFileSystem *, const char *))(*(_DWORD *)this + 12))(
                                      this,
                                      a2);
  if ( !v3 )
    return 0;
  v4 = (*(int (__fastcall **)(glitch::io::CFileSystem *, glitch::IReferenceCounted *))(*(_DWORD *)this + 80))(this, v3);
  glitch::IReferenceCounted::drop(v3);
  return v4;
}


// ===== 56c278 glitch::io::CFileSystem::createXMLWriter(char const*) =====
int __fastcall glitch::io::CFileSystem::createXMLWriter(glitch::io::CFileSystem *this, const char *a2)
{
  glitch::IReferenceCounted *v3; // r5
  int v4; // r4

  v3 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::io::CFileSystem *, const char *, _DWORD))(*(_DWORD *)this + 20))(
                                      this,
                                      a2,
                                      0);
  v4 = (*(int (__fastcall **)(glitch::io::CFileSystem *, glitch::IReferenceCounted *))(*(_DWORD *)this + 96))(this, v3);
  glitch::IReferenceCounted::drop(v3);
  return v4;
}


// ===== 56c2bc std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block(void) =====
void __fastcall std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block(
        int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 20);
  if ( v1 != a1 )
  {
    if ( v1 )
      GlitchFree(*(void **)(a1 + 20));
  }
}


// ===== 56c2d8 glitch::io::createFileSystem(void) =====
_DWORD *__fastcall glitch::io::createFileSystem(glitch::io *this)
{
  _DWORD *v1; // r4

  v1 = operator new(0x2Cu, 0);
  glitch::io::CFileSystem::CFileSystem(v1);
  return v1;
}


// ===== 56c2f8 std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
unsigned int __fastcall std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(
        int a1,
        int a2,
        int a3)
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


// ===== 56c348 glitch::io::CFileSystem::getAbsolutePath(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall glitch::io::CFileSystem::getAbsolutePath(_DWORD *a1, int a2, int a3)
{
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    a1,
    *(char **)(a3 + 20));
  return a1;
}


// ===== 56c36c std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(
        _DWORD *a1,
        int a2,
        int a3)
{
  a1[4] = a1;
  a1[5] = a1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  a1[10] = a1 + 6;
  a1[11] = a1 + 6;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1 + 6,
    *(_BYTE **)(a3 + 20),
    *(_BYTE **)(a3 + 16));
  return a1;
}


// ===== 56c3ac std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>> const&) =====
_DWORD *__fastcall std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(
        _DWORD *a1,
        _BYTE **a2)
{
  a1[4] = a1;
  a1[5] = a1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    a2[5],
    a2[4]);
  a1[10] = a1 + 6;
  a1[11] = a1 + 6;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1 + 6,
    a2[11],
    a2[10]);
  return a1;
}


// ===== 56c3ec glitch::io::CFileSystem::createEmptyAttributes(glitch::video::IVideoDriver *) =====
_DWORD *__fastcall glitch::io::CFileSystem::createEmptyAttributes(int a1, int a2)
{
  _DWORD *v3; // r4

  v3 = operator new(0x5Cu, 0);
  glitch::io::CAttributes::CAttributes(v3, a2);
  return v3;
}


// ===== 56c414 glitch::io::CFileSystem::createXMLWriter(glitch::io::IWriteFile *) =====
glitch::io::CXMLWriter *__fastcall glitch::io::CFileSystem::createXMLWriter(
        glitch::io::CFileSystem *this,
        glitch::io::IWriteFile *a2)
{
  glitch::io::CXMLWriter *v3; // r4

  v3 = (glitch::io::CXMLWriter *)operator new(0x14u, 0);
  glitch::io::CXMLWriter::CXMLWriter(v3, a2);
  return v3;
}


// ===== 56c43c glitch::io::CFileSystem::createXMLReaderUTF8(glitch::io::IReadFile *) =====
glitch::io::IReadFile *__fastcall glitch::io::CFileSystem::createXMLReaderUTF8(
        glitch::io::CFileSystem *this,
        glitch::io::IReadFile *a2)
{
  glitch::io::IReadFile *result; // r0

  result = a2;
  if ( a2 )
    return (glitch::io::IReadFile *)glitch::io::createIXMLReaderUTF8(a2, a2);
  return result;
}


// ===== 56c44c glitch::io::CFileSystem::createXMLReaderUTF8(char const*) =====
int __fastcall glitch::io::CFileSystem::createXMLReaderUTF8(glitch::io::CFileSystem *this, const char *a2)
{
  glitch::io *v2; // r0
  glitch::io::IReadFile *v3; // r1
  glitch::IReferenceCounted *v4; // r5
  int IXMLReaderUTF8; // r4

  v2 = (glitch::io *)(*(int (__fastcall **)(glitch::io::CFileSystem *, const char *))(*(_DWORD *)this + 12))(this, a2);
  v4 = v2;
  if ( !v2 )
    return 0;
  IXMLReaderUTF8 = glitch::io::createIXMLReaderUTF8(v2, v3);
  glitch::IReferenceCounted::drop(v4);
  return IXMLReaderUTF8;
}


// ===== 56c480 glitch::io::CFileSystem::createXMLReader(glitch::io::IReadFile *) =====
glitch::io::IReadFile *__fastcall glitch::io::CFileSystem::createXMLReader(
        glitch::io::CFileSystem *this,
        glitch::io::IReadFile *a2)
{
  glitch::io::IReadFile *result; // r0

  result = a2;
  if ( a2 )
    return (glitch::io::IReadFile *)glitch::io::createIXMLReader(a2, a2);
  return result;
}


// ===== 56c490 glitch::io::IFileSystem::~IFileSystem() =====
void __fastcall glitch::io::IFileSystem::~IFileSystem(glitch::io::IFileSystem *this)
{
  LC_API_FREE_0(this);
}


// ===== 56c4a4 glitch::io::CFileSystem::createFileList(void) =====
glitch::io::CFileList *__fastcall glitch::io::CFileSystem::createFileList(glitch::io::CFileSystem *this)
{
  glitch::io::CFileList *v1; // r4

  v1 = (glitch::io::CFileList *)operator new(0x2Cu, 0);
  glitch::io::CFileList::CFileList(v1);
  return v1;
}


// ===== 56c4c4 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,uint,uint,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0> const&) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  int v5; // r12
  unsigned int v6; // lr
  unsigned int v7; // lr
  unsigned int v8; // r3

  a1[4] = a1;
  a1[5] = a1;
  v5 = *(_DWORD *)(a2 + 20);
  v6 = *(_DWORD *)(a2 + 16) - v5;
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
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      a1,
      (_BYTE *)(v5 + a3),
      (_BYTE *)(v5 + v8));
    return a1;
  }
}


// ===== 56c528 glitch::io::CFileSystem::changeWorkingDirectoryTo(char const*) =====
bool __fastcall glitch::io::CFileSystem::changeWorkingDirectoryTo(glitch::io::CFileSystem *this, const char *path)
{
  int v3; // r0
  _BOOL4 v4; // r4

  v3 = chdir(path);
  v4 = v3 == 0;
  if ( !v3 )
    LC_API_STRCPY_0(&glitch::io::CFileSystem::WorkingDirectory, path);
  return v4;
}


// ===== 56c570 glitch::io::CFileSystem::createAndWriteFile(char const*,bool) =====
int __fastcall glitch::io::CFileSystem::createAndWriteFile(glitch::io::CFileSystem *this, glitch::io *a2, char *a3)
{
  return glitch::io::createWriteFile(a2, a3, (bool)a3);
}


// ===== 56c57c glitch::io::CFileSystem::createMemoryReadFile(void *,int,char const*,bool) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CFileSystem::createMemoryReadFile(
        glitch::io::CFileSystem *this,
        void *a2,
        int a3,
        const char *a4,
        bool a5)
{
  glitch::io::CMemoryReadFile *v9; // r6

  if ( !a2 )
    return nullptr;
  v9 = (glitch::io::CMemoryReadFile *)operator new(0x38u, 0);
  glitch::io::CMemoryReadFile::CMemoryReadFile(v9, a2, a3, a4, a5);
  return v9;
}


// ===== 56c5cc `global constructor keyed to'.._source_glitch_io_CFileSystem.cpp =====
int `global constructor keyed to'.._source_glitch_io_CFileSystem.cpp()
{
  dword_9F66E0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F66DC = 1056964608;
  dword_9F66F4 = 0;
  dword_9F66E8 = 0;
  glitch::io::CFileSystem::ObfuscationMap = 0;
  dword_9F66EC = (int)&glitch::io::CFileSystem::ObfuscationMap;
  dword_9F66F0 = (int)&glitch::io::CFileSystem::ObfuscationMap;
  return _aeabi_atexit(
           (int)&glitch::io::CFileSystem::ObfuscationMap,
           (int)std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::~map,
           (int)&_dso_handle);
}


// ===== 56c640 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::rfind(char,uint) [clone] =====
int __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::rfind(
        int a1,
        char a2)
{
  int v2; // r12
  int v4; // r3
  int v5; // r3
  int v7; // [sp+Ch] [bp-18h] BYREF
  int v8; // [sp+10h] [bp-14h] BYREF
  int v9; // [sp+14h] [bp-10h] BYREF
  char v10[8]; // [sp+1Ch] [bp-8h] BYREF

  v2 = *(_DWORD *)(a1 + 20);
  v4 = *(_DWORD *)(a1 + 16) - v2;
  if ( !v4 )
    return -1;
  v7 = *(_DWORD *)(a1 + 20);
  v8 = v2 + v4;
  v10[0] = a2;
  std::priv::__find_if<std::reverse_iterator<char const*>,std::priv::_Eq_char_bound<std::char_traits<char>>>(
    &v9,
    &v8,
    &v7,
    v10);
  v5 = *(_DWORD *)(a1 + 20);
  if ( v5 == v9 )
    return -1;
  else
    return v9 - 1 - v5;
}


// ===== 56c6b4 glitch::io::CFileSystem::getFileDir(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall glitch::io::CFileSystem::getFileDir(_DWORD *a1, int a2, int a3)
{
  int v5; // r6
  int v6; // r0
  unsigned int v7; // r3

  v5 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::rfind(
         a3,
         47);
  v6 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::rfind(
         a3,
         92);
  if ( v6 < v5 )
    v7 = v5;
  else
    v7 = v6;
  if ( v7 < *(_DWORD *)(a3 + 16) - *(_DWORD *)(a3 + 20) )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      a1,
      a3,
      0,
      v7);
  else
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      a1,
      ".");
  return a1;
}


// ===== 56c740 glitch::io::CFileSystem::getFileBasename(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,bool) =====
_DWORD *__fastcall glitch::io::CFileSystem::getFileBasename(_DWORD *a1, int a2, int a3, unsigned int a4)
{
  unsigned int v7; // r6
  int v8; // r0
  unsigned int v9; // r2
  int v11; // r0
  int v12; // r3

  v7 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::rfind(
         a3,
         47);
  v8 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::rfind(
         a3,
         92);
  if ( v8 >= (int)v7 )
    v7 = v8;
  if ( !a4 )
  {
    v11 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::rfind(
            a3,
            46);
    if ( v11 == -1 )
      v12 = *(_DWORD *)(a3 + 20);
    v9 = *(_DWORD *)(a3 + 16);
    if ( v11 == -1 )
      v9 -= v12;
    else
      v12 = *(_DWORD *)(a3 + 20);
    if ( v11 != -1 )
    {
      v9 -= v12;
      a4 = v9 - v11;
    }
    if ( v7 >= v9 )
      goto LABEL_5;
LABEL_16:
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      a1,
      a3,
      v7 + 1,
      ~v7 + v9 - a4);
    return a1;
  }
  a4 = 0;
  v9 = *(_DWORD *)(a3 + 16) - *(_DWORD *)(a3 + 20);
  if ( v7 < v9 )
    goto LABEL_16;
LABEL_5:
  if ( a4 )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      a1,
      a3,
      0,
      v9 - a4);
  }
  else
  {
    a1[4] = a1;
    a1[5] = a1;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      a1,
      *(_BYTE **)(a3 + 20),
      *(_BYTE **)(a3 + 16));
  }
  return a1;
}


// ===== 56c844 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find_last_of(char const*,uint,uint) [clone] =====
int __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find_last_of(
        int a1)
{
  int v1; // r1
  int v2; // r12
  int v3; // r6
  int v4; // r5
  int v5; // r0
  unsigned int v6; // t1
  int v8; // [sp+0h] [bp-2Ch]
  _DWORD v9[8]; // [sp+4h] [bp-28h] BYREF

  v1 = *(_DWORD *)(a1 + 20);
  v2 = *(_DWORD *)(a1 + 16) - v1;
  v3 = v1;
  if ( !v2 )
    return -1;
  v4 = *(_DWORD *)(a1 + 16);
  v9[2] = 0x10000000;
  memset(&v9[3], 0, 20);
  v9[1] = 0x8000;
  v9[0] = 0;
  if ( v1 != v1 + v2 )
  {
    v5 = v4 - 1;
    if ( (((int)*((unsigned __int8 *)v9 + (*(unsigned __int8 *)(v4 - 1) >> 3)) >> (*(_BYTE *)(v4 - 1) & 7)) & 1) != 0 )
    {
      v3 = v1 + v2;
    }
    else
    {
      do
      {
        v8 = v5;
        if ( v5 == v1 )
          break;
        v6 = *(unsigned __int8 *)--v5;
      }
      while ( (((int)*((unsigned __int8 *)v9 + (v6 >> 3)) >> (v6 & 7)) & 1) == 0 );
      v3 = v8;
    }
  }
  if ( v1 == v3 )
    return -1;
  else
    return v3 - 1 - v1;
}


// ===== 56c960 glitch::io::CFile::CFile(__sFILE *,char const*,bool) =====
glitch::io::CFile *__fastcall glitch::io::CFile::CFile(glitch::io::CFile *this, __sFILE *a2, char *a3, bool a4)
{
  char *v4; // r5
  int last_of; // r0
  int v8; // r3
  int v9; // r5

  *((_DWORD *)this + 1) = a2;
  v4 = (char *)this + 8;
  *(_DWORD *)this = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 2,
    a3);
  *((_BYTE *)this + 36) = a4;
  last_of = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find_last_of((int)v4);
  if ( last_of != -1 )
  {
    v8 = *((_DWORD *)this + 7);
    v9 = last_of + 1;
    if ( last_of + 1 >= (unsigned int)(*((_DWORD *)this + 6) - v8) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
      v8 = *((_DWORD *)this + 7);
    }
    *((_DWORD *)this + 8) = v8 + v9;
  }
  return this;
}


// ===== 56c9e8 glitch::io::CFile::CFile(__sFILE *,char const*,bool) =====
glitch::io::CFile *__fastcall glitch::io::CFile::CFile(glitch::io::CFile *this, __sFILE *a2, char *a3, bool a4)
{
  char *v4; // r5
  int last_of; // r0
  int v8; // r3
  int v9; // r5

  *((_DWORD *)this + 1) = a2;
  v4 = (char *)this + 8;
  *(_DWORD *)this = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 2,
    a3);
  *((_BYTE *)this + 36) = a4;
  last_of = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find_last_of((int)v4);
  if ( last_of != -1 )
  {
    v8 = *((_DWORD *)this + 7);
    v9 = last_of + 1;
    if ( last_of + 1 >= (unsigned int)(*((_DWORD *)this + 6) - v8) )
    {
      __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
      v8 = *((_DWORD *)this + 7);
    }
    *((_DWORD *)this + 8) = v8 + v9;
  }
  return this;
}


// ===== 56ca70 glitch::io::CFileSystem::addPakFileArchive(char const*,bool,bool) =====
int __fastcall glitch::io::CFileSystem::addPakFileArchive(char **this, const char *a2, bool a3, bool a4)
{
  glitch::io::IReadFile *v7; // r6
  glitch::io::CPakReader *v8; // r5
  char *v9; // r10
  int result; // r0
  unsigned int v11; // r3
  unsigned int v12; // r8
  size_t v13; // r8
  char *v14; // r0
  _BYTE *v15; // r1
  char *v16; // r7
  size_t v17; // r10
  glitch::io::CPakReader **v18; // r10

  v7 = (glitch::io::IReadFile *)(*((int (__fastcall **)(char **, const char *))*this + 3))(this, a2);
  if ( !v7 )
    return 0;
  v8 = (glitch::io::CPakReader *)operator new(0x28u, 0);
  glitch::io::CPakReader::CPakReader(v8, v7, a3, a4);
  if ( v8 )
  {
    v9 = *(this + 6);
    if ( v9 == *(this + 7) )
    {
      v11 = (v9 - *(this + 5)) >> 2;
      if ( v11 )
        v12 = 2 * v11;
      else
        v12 = 1;
      if ( v12 > 0x3FFFFFFF || v11 > v12 )
        v13 = -4;
      else
        v13 = 4 * v12;
      v14 = (char *)GlitchAlloc(v13, 0);
      v15 = *(this + 5);
      v16 = v14;
      v17 = v9 - v15;
      if ( v17 )
        v18 = (glitch::io::CPakReader **)((char *)memmove(v14, v15, v17) + v17);
      else
        v18 = (glitch::io::CPakReader **)v14;
      *v18 = v8;
      GlitchFree(*(this + 5));
      *(this + 7) = &v16[v13];
      *(this + 6) = (char *)(v18 + 1);
      *(this + 5) = v16;
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(this + 6) += 4;
    }
  }
  glitch::IReferenceCounted::drop(v7);
  result = (int)v8;
  if ( v8 )
    return 1;
  return result;
}


// ===== 56cb78 glitch::io::CFileSystem::clear(void) =====
int __fastcall glitch::io::CFileSystem::clear(int this)
{
  int v1; // r2
  int v2; // r3
  _DWORD *v3; // r4
  unsigned int v4; // r5
  int v5; // r2
  int v6; // r3
  unsigned int v7; // r5
  int v8; // r2
  int v9; // r3
  unsigned int v10; // r5

  v1 = *(_DWORD *)(this + 12);
  v2 = *(_DWORD *)(this + 8);
  v3 = (_DWORD *)this;
  if ( (unsigned int)(v1 - v2) >> 2 )
  {
    v4 = 0;
    do
    {
      this = glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v2 + 4 * v4));
      v1 = v3[3];
      v2 = v3[2];
      ++v4;
    }
    while ( v4 < (v1 - v2) >> 2 );
  }
  if ( v1 != v2 )
    v3[3] = v2;
  v5 = v3[6];
  v6 = v3[5];
  if ( (unsigned int)(v5 - v6) >> 2 )
  {
    v7 = 0;
    do
    {
      this = glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v6 + 4 * v7));
      v5 = v3[6];
      v6 = v3[5];
      ++v7;
    }
    while ( v7 < (v5 - v6) >> 2 );
  }
  if ( v5 != v6 )
    v3[6] = v6;
  v8 = v3[9];
  v9 = v3[8];
  if ( (unsigned int)(v8 - v9) >> 2 )
  {
    v10 = 0;
    do
    {
      this = glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v9 + 4 * v10));
      v8 = v3[9];
      v9 = v3[8];
      ++v10;
    }
    while ( v10 < (v8 - v9) >> 2 );
  }
  if ( v8 != v9 )
    v3[9] = v9;
  return this;
}


// ===== 56cc44 glitch::io::CFileSystem::~CFileSystem() =====
void __fastcall glitch::io::CFileSystem::~CFileSystem(glitch::io::CFileSystem *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  *(_DWORD *)this = off_974348;
  glitch::io::CFileSystem::clear((int)this);
  v2 = *((void **)this + 8);
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 5);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((void **)this + 2);
  if ( v4 )
    GlitchFree(v4);
}


// ===== 56cca8 glitch::io::CFileSystem::~CFileSystem() =====
void __fastcall glitch::io::CFileSystem::~CFileSystem(glitch::io::CFileSystem *this)
{
  glitch::io::CFileSystem::~CFileSystem(this);
  LC_API_FREE_0(this);
}


// ===== 56ccc4 glitch::io::CFileSystem::~CFileSystem() =====
void __fastcall glitch::io::CFileSystem::~CFileSystem(glitch::io::CFileSystem *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0

  *(_DWORD *)this = off_974348;
  glitch::io::CFileSystem::clear((int)this);
  v2 = *((void **)this + 8);
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 5);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((void **)this + 2);
  if ( v4 )
    GlitchFree(v4);
}


// ===== 56cd28 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
int *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        int *a1,
        _DWORD *a2,
        _DWORD *a3,
        _BYTE **a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r8
  int v11; // r7
  _DWORD *v13; // r8
  _DWORD *v14; // r8

  if ( a2 == a3 )
  {
    v14 = GlitchAlloc(0x40u, 0);
    std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(
      v14 + 4,
      a4);
    v14[3] = 0;
    v14[2] = 0;
    v11 = (int)v14;
    a2[2] = v14;
    a2[1] = v14;
    a2[3] = v14;
  }
  else if ( !a6
         && (a5
          || std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(
               (int)(a2 + 5),
               (int)a4,
               (int)(a3 + 4))) )
  {
    v13 = GlitchAlloc(0x40u, 0);
    std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(
      v13 + 4,
      a4);
    v13[3] = 0;
    v13[2] = 0;
    a3[2] = v13;
    v11 = (int)v13;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v13;
  }
  else
  {
    v10 = GlitchAlloc(0x40u, 0);
    std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(
      v10 + 4,
      a4);
    v10[3] = 0;
    v10[2] = 0;
    a3[3] = v10;
    v11 = (int)v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  *(_DWORD *)(v11 + 4) = a3;
  std::priv::_Rb_global<bool>::_Rebalance(v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 56ce60 glitch::io::CFileSystem::removeFileArchive(char const*) =====
int __fastcall glitch::io::CFileSystem::removeFileArchive(glitch::io::CFileSystem *this, const char *a2)
{
  int v2; // r3
  int v5; // r2
  int v6; // r6
  int v7; // r5
  int v8; // r3
  const char *v9; // r1
  char *v10; // r3
  char *v11; // r0
  char *v12; // r1
  int v14; // r3
  int v15; // r5
  int v16; // r6
  int v17; // r5
  int v18; // r3
  const char *v19; // r1
  char *v20; // r3
  char *v21; // r0
  char *v22; // r1
  int v23; // r10
  int v24; // r5
  int v25; // r6
  int i; // r5
  const char **v27; // r8
  char *v28; // r3
  char *v29; // r0
  char *v30; // r1

  v2 = *((_DWORD *)this + 2);
  v5 = (*((_DWORD *)this + 3) - v2) >> 2;
  v6 = v5 - 1;
  if ( v5 - 1 < 0 )
  {
LABEL_11:
    v14 = *((_DWORD *)this + 5);
    v15 = (*((_DWORD *)this + 6) - v14) >> 2;
    v16 = v15 - 1;
    if ( v15 - 1 < 0 )
    {
LABEL_21:
      v23 = *((_DWORD *)this + 8);
      v24 = (*((_DWORD *)this + 9) - v23) >> 2;
      v25 = v24 - 1;
      if ( v24 - 1 < 0 )
      {
        return 0;
      }
      else
      {
        for ( i = 4 * (v24 + 0x3FFFFFFF); ; i -= 4 )
        {
          v27 = *(const char ***)(v23 + i);
          if ( !LC_API_STRCMP_0(a2, v27[14]) )
            break;
          if ( --v25 < 0 )
            return 0;
        }
        glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v27);
        v28 = *((char **)this + 9);
        v29 = (char *)(*((_DWORD *)this + 8) + i);
        v30 = v29 + 4;
        if ( v29 + 4 != v28 )
        {
          memmove(v29, v30, v28 - v30);
          v30 = *((char **)this + 9);
        }
        *((_DWORD *)this + 9) = v30 - 4;
        return 1;
      }
    }
    else
    {
      v17 = 4 * (v15 + 0x3FFFFFFF);
      while ( 1 )
      {
        v18 = *(_DWORD *)(v14 + v17);
        v19 = *(const char **)(v18 + 8);
        if ( v19 )
          v19 = (const char *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v19 + 40))(*(_DWORD *)(v18 + 8));
        if ( !LC_API_STRCMP_0(a2, v19) )
          break;
        --v16;
        v17 -= 4;
        if ( v16 < 0 )
          goto LABEL_21;
        v14 = *((_DWORD *)this + 5);
      }
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(*((_DWORD *)this + 5) + v17));
      v20 = *((char **)this + 6);
      v21 = (char *)(*((_DWORD *)this + 5) + v17);
      v22 = v21 + 4;
      if ( v21 + 4 != v20 )
      {
        memmove(v21, v22, v20 - v22);
        v22 = *((char **)this + 6);
      }
      *((_DWORD *)this + 6) = v22 - 4;
      return 1;
    }
  }
  else
  {
    v7 = 4 * (v5 + 0x3FFFFFFF);
    while ( 1 )
    {
      v8 = *(_DWORD *)(v2 + v7);
      v9 = *(const char **)(v8 + 8);
      if ( v9 )
        v9 = (const char *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 40))(*(_DWORD *)(v8 + 8));
      if ( !LC_API_STRCMP_0(a2, v9) )
        break;
      --v6;
      v7 -= 4;
      if ( v6 < 0 )
        goto LABEL_11;
      v2 = *((_DWORD *)this + 2);
    }
    glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(*((_DWORD *)this + 2) + v7));
    v10 = *((char **)this + 3);
    v11 = (char *)(*((_DWORD *)this + 2) + v7);
    v12 = v11 + 4;
    if ( v11 + 4 != v10 )
    {
      memmove(v11, v12, v10 - v12);
      v12 = *((char **)this + 3);
    }
    *((_DWORD *)this + 3) = v12 - 4;
    return 1;
  }
}


// ===== 56d060 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r3
  int v5; // r6
  int v6; // r3

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 60);
      v5 = *(_DWORD *)(v2 + 8);
      if ( v4 != v2 + 40 && v4 )
        GlitchFree(*(void **)(v2 + 60));
      v6 = *(_DWORD *)(v2 + 36);
      if ( v6 != v2 + 16 )
      {
        if ( v6 )
          GlitchFree(*(void **)(v2 + 36));
      }
      GlitchFree((void *)v2);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 56d0d4 std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::~map() =====
int *__fastcall std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::~map(
        int *a1)
{
  if ( a1[4] )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)a1,
      a1[1]);
    a1[4] = 0;
    a1[1] = 0;
    a1[2] = (int)a1;
    a1[3] = (int)a1;
  }
  return a1;
}


// ===== 56d108 glitch::io::CFile::~CFile() =====
void __fastcall glitch::io::CFile::~CFile(glitch::io::CFile *this)
{
  FILE *v2; // r0
  char *v3; // r0

  v2 = *((FILE **)this + 1);
  if ( v2 )
    fclose(v2);
  v3 = *((char **)this + 7);
  if ( v3 != (char *)this + 8 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 56d144 glitch::io::CFile::~CFile() =====
void __fastcall glitch::io::CFile::~CFile(glitch::io::CFile *this)
{
  FILE *v2; // r0
  char *v3; // r0

  v2 = *((FILE **)this + 1);
  if ( v2 )
    fclose(v2);
  v3 = *((char **)this + 7);
  if ( v3 != (char *)this + 8 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 56d180 glitch::io::CFileSystem::addFolderFileArchive(char const*,bool,bool) =====
int __fastcall glitch::io::CFileSystem::addFolderFileArchive(
        glitch::io::CFileSystem *this,
        const char *a2,
        bool a3,
        bool a4)
{
  int v5; // r4
  int v7; // r0
  int v8; // r10
  int v11; // r9
  int v12; // r3
  int result; // r0
  glitch::io::CUnZipReader *v14; // r4
  char *v15; // r8
  unsigned int v16; // r3
  unsigned int v17; // r5
  size_t v18; // r5
  char *v19; // r0
  _BYTE *v20; // r1
  char *v21; // r7
  size_t v22; // r8
  glitch::io::CUnZipReader **v23; // r8

  v5 = *((_DWORD *)this + 8);
  v7 = (*((_DWORD *)this + 9) - v5) >> 2;
  v8 = v7 - 1;
  if ( v7 - 1 < 0 )
  {
LABEL_6:
    v14 = (glitch::io::CUnZipReader *)operator new(0x3Cu, 0);
    glitch::io::CUnZipReader::CUnZipReader(v14, this, a2, a3, a4);
    if ( v14 )
    {
      v15 = *((char **)this + 9);
      if ( v15 == *((char **)this + 10) )
      {
        v16 = (int)&v15[-*((_DWORD *)this + 8)] >> 2;
        if ( v16 )
          v17 = 2 * v16;
        else
          v17 = 1;
        if ( v17 > 0x3FFFFFFF || v16 > v17 )
          v18 = -4;
        else
          v18 = 4 * v17;
        v19 = (char *)GlitchAlloc(v18, 0);
        v20 = *((_BYTE **)this + 8);
        v21 = v19;
        v22 = v15 - v20;
        if ( v22 )
          v23 = (glitch::io::CUnZipReader **)((char *)memmove(v19, v20, v22) + v22);
        else
          v23 = (glitch::io::CUnZipReader **)v19;
        *v23 = v14;
        GlitchFree(*((void **)this + 8));
        *((_DWORD *)this + 10) = &v21[v18];
        *((_DWORD *)this + 9) = v23 + 1;
        *((_DWORD *)this + 8) = v21;
      }
      else
      {
        *(_DWORD *)v15 = v14;
        *((_DWORD *)this + 9) += 4;
      }
    }
    result = (int)v14;
    if ( v14 )
      return 1;
  }
  else
  {
    v11 = 4 * (v7 + 0x3FFFFFFF);
    while ( 1 )
    {
      v12 = *(_DWORD *)(v5 + v11);
      v11 -= 4;
      result = LC_API_STRCMP_0(a2, *(const char **)(v12 + 56));
      if ( !result )
        break;
      if ( --v8 < 0 )
        goto LABEL_6;
    }
  }
  return result;
}


// ===== 56d2c0 glitch::io::CFileSystem::addZipFileArchive(char const*,bool,bool) =====
int __fastcall glitch::io::CFileSystem::addZipFileArchive(char **this, const char *a2, bool a3, bool a4)
{
  glitch::io::IReadFile *v7; // r6
  glitch::io::CZipReader *v8; // r5
  char *v9; // r10
  int result; // r0
  unsigned int v11; // r3
  unsigned int v12; // r8
  size_t v13; // r8
  char *v14; // r0
  _BYTE *v15; // r1
  char *v16; // r7
  size_t v17; // r10
  glitch::io::CZipReader **v18; // r10

  v7 = (glitch::io::IReadFile *)(*((int (__fastcall **)(char **, const char *))*this + 3))(this, a2);
  if ( !v7 )
    return 0;
  v8 = (glitch::io::CZipReader *)operator new(0x20u, 0);
  glitch::io::CZipReader::CZipReader(v8, v7, a3, a4);
  if ( v8 )
  {
    *((_DWORD *)v8 + 4) |= 1u;
    v9 = *(this + 3);
    if ( v9 == *(this + 4) )
    {
      v11 = (v9 - *(this + 2)) >> 2;
      if ( v11 )
        v12 = 2 * v11;
      else
        v12 = 1;
      if ( v12 > 0x3FFFFFFF || v11 > v12 )
        v13 = -4;
      else
        v13 = 4 * v12;
      v14 = (char *)GlitchAlloc(v13, 0);
      v15 = *(this + 2);
      v16 = v14;
      v17 = v9 - v15;
      if ( v17 )
        v18 = (glitch::io::CZipReader **)((char *)memmove(v14, v15, v17) + v17);
      else
        v18 = (glitch::io::CZipReader **)v14;
      *v18 = v8;
      GlitchFree(*(this + 2));
      *(this + 4) = &v16[v13];
      *(this + 3) = (char *)(v18 + 1);
      *(this + 2) = v16;
    }
    else
    {
      *(_DWORD *)v9 = v8;
      *(this + 3) += 4;
    }
  }
  glitch::IReferenceCounted::drop(v7);
  result = (int)v8;
  if ( v8 )
    return 1;
  return result;
}


// ===== 56d3d4 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_lower_bound<char *>(char * const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_lower_bound<char *>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r11
  _DWORD *v4; // r5
  const void *v5; // r3
  _DWORD *v6; // r4
  int v7; // r7
  int v8; // r6
  size_t v9; // r2
  int v10; // r3
  int v12; // [sp+4h] [bp-30h]
  _DWORD v13[4]; // [sp+14h] [bp-20h] BYREF
  int v14; // [sp+24h] [bp-10h]
  void *v15; // [sp+28h] [bp-Ch]

  v2 = a1;
  v4 = (_DWORD *)a1[1];
  while ( v4 )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v13,
      *a2);
    v5 = (const void *)v4[9];
    v6 = v15;
    v7 = v4[8] - (_DWORD)v5;
    v8 = v14 - (_DWORD)v15;
    if ( v14 - (int)v15 >= v7 )
      v9 = v4[8] - (_DWORD)v5;
    else
      v9 = v14 - (_DWORD)v15;
    v10 = memcmp(v5, v15, v9);
    if ( !v10 )
    {
      if ( v7 >= v8 )
        v10 = v7 > v8;
      else
        v10 = -1;
    }
    if ( v6 != v13 && v6 )
    {
      v12 = v10;
      GlitchFree(v6);
      v10 = v12;
    }
    if ( v10 < 0 )
      v4 = (_DWORD *)v4[3];
    else
      v2 = v4;
    if ( v10 >= 0 )
      v4 = (_DWORD *)v4[2];
  }
  return v2;
}


// ===== 56d4e0 glitch::io::CFileSystem::createAndOpenFile(char const*) =====
int __fastcall glitch::io::CFileSystem::createAndOpenFile(glitch::io::CFileSystem *this, char *a2)
{
  const char *v4; // r1
  int File; // r6
  unsigned int v7; // r9
  unsigned int v8; // r3
  char *v9; // r6
  char *v10; // r9
  int v11; // r0
  char *v12; // r1
  glitch::io::IReadFile *v13; // r0
  _BOOL4 v14; // r3
  glitch::io *v15; // r4
  glitch::io::IReadFile *v16; // r10
  unsigned int v17; // r9
  unsigned int v18; // r5
  int v19; // r4
  glitch::io::IReadFile *v20; // r0
  bool v21; // zf
  char *v22; // r4
  _DWORD v23[8]; // [sp+38h] [bp-ACh] BYREF
  char *v24; // [sp+58h] [bp-8Ch] BYREF
  char *v25; // [sp+5Ch] [bp-88h] BYREF
  glitch::io *v26; // [sp+60h] [bp-84h] BYREF
  char *v27; // [sp+64h] [bp-80h] BYREF
  _DWORD v28[6]; // [sp+7Ch] [bp-68h] BYREF
  _DWORD v29[4]; // [sp+94h] [bp-50h] BYREF
  char *v30; // [sp+A4h] [bp-40h]
  char *v31; // [sp+A8h] [bp-3Ch]
  _DWORD v32[6]; // [sp+ACh] [bp-38h] BYREF
  _DWORD v33[4]; // [sp+C4h] [bp-20h] BYREF
  glitch::io *v34; // [sp+D4h] [bp-10h]
  glitch::io *v35; // [sp+D8h] [bp-Ch]

  File = glitch::io::CFileSystem::createAndOpenFileFromArchives(this, a2);
  if ( !File )
  {
    File = glitch::io::createReadFile((glitch::io *)a2, v4);
    if ( !File )
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v33,
        a2);
      v7 = -1;
      while ( 1 )
      {
        v15 = v35;
        if ( v34 == v35 )
          goto LABEL_17;
        v8 = v34 - v35 - 1;
        if ( v7 < v8 )
          v8 = v7;
        v25 = "";
        v9 = (char *)v35 + v8 + 1;
        v24 = "/";
        v27 = v9;
        v26 = v35;
        std::search<std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::priv::_Eq_traits<std::char_traits<char>>>(
          v23,
          (int *)&v27,
          (int *)&v26,
          &v25,
          &v24);
        v10 = v15 == (glitch::io *)v23[0] ? v9 : (char *)(v23[0] - 1);
        if ( v9 == v10 )
LABEL_17:
          v7 = -1;
        else
          v7 = v10 - (char *)v35;
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v32,
          (int)v33,
          0,
          v7);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v33,
          (_BYTE *)v32[5],
          (_BYTE *)v32[4]);
        std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v32);
        v11 = glitch::io::CFileSystem::createAndOpenFileFromArchives(this, (const char *)v35);
        if ( v11 )
          break;
        v13 = (glitch::io::IReadFile *)glitch::io::createReadFile(v35, v12);
        v14 = v13 == nullptr;
        if ( v7 == -1 )
          v14 = 0;
        if ( !v14 )
        {
          File = 0;
          v16 = v13;
          if ( v13 )
            goto LABEL_19;
          goto LABEL_39;
        }
      }
      File = 0;
      v16 = (glitch::io::IReadFile *)v11;
LABEL_19:
      if ( v7 == -1 )
      {
LABEL_39:
        File = (int)v16;
        goto LABEL_40;
      }
      if ( glitch::io::CZipReader::isValid(v16, (glitch::io::IReadFile *)v12) )
      {
        v17 = v7 + 1;
        if ( v17 == -1 )
          goto LABEL_39;
        while ( 1 )
        {
          glitch::io::CZipReader::CZipReader((glitch::io::CZipReader *)v23, v16, 1, 1);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v29,
            a2);
          if ( v30 - v31 <= v17 || v30 - v31 < v17 + 1 )
            goto LABEL_23;
          v22 = &v31[v17];
          if ( v30 == &v31[v17] )
          {
            v22 = v30;
          }
          else if ( v31[v17] != 47 )
          {
            do
              ++v22;
            while ( v22 != v30 && *v22 != 47 );
          }
          if ( v30 == v22 )
          {
LABEL_23:
            v18 = 0;
            v19 = -1;
          }
          else
          {
            v19 = v22 - v31;
            v18 = v19 + 1;
          }
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
            v28,
            (int)v29,
            v17,
            v19 - v17);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
            v29,
            (_BYTE *)v28[5],
            (_BYTE *)v28[4]);
          std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v28);
          glitch::IReferenceCounted::drop(v16);
          v20 = (glitch::io::IReadFile *)glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v23, v31);
          v16 = v20;
          if ( v19 == -1 )
            break;
          std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v29);
          glitch::io::CZipReader::~CZipReader((glitch::io::CZipReader *)v23);
          v21 = v16 == nullptr;
          if ( v16 )
            v21 = v18 == -1;
          if ( v21 )
          {
            File = (int)v16;
            goto LABEL_40;
          }
          v17 = v18;
        }
        File = (int)v20;
        std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v29);
        glitch::io::CZipReader::~CZipReader((glitch::io::CZipReader *)v23);
      }
      else
      {
        glitch::IReferenceCounted::drop(v16);
      }
LABEL_40:
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v33);
    }
  }
  return File;
}


// ===== 56d8b0 std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,char const*) =====
_DWORD *__fastcall std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
        _DWORD *a1,
        int a2,
        char *a3)
{
  size_t v6; // r0
  int v7; // r3
  int v8; // r1
  size_t v9; // r6

  v6 = LC_API_STRLEN_0(a3);
  v7 = *(_DWORD *)(a2 + 20);
  v8 = *(_DWORD *)(a2 + 16);
  v9 = v6;
  a1[4] = a1;
  a1[5] = a1;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    v8 - v7 + 1 + v6);
  *(_BYTE *)a1[4] = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_appendT<char const*>(
    (int)a1,
    a3,
    &a3[v9]);
  return a1;
}


// ===== 56d930 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>> const&) =====
int __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      &v28,
      a2,
      v3,
      (_BYTE **)a3,
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        &v27,
        a2,
        v3,
        (_BYTE **)a3,
        0,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 56db48 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) [clone] =====
char *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(
        int a1)
{
  char *v1; // r7
  int v2; // r4
  const void *v3; // r8
  signed int v4; // r6
  const void *v5; // r3
  int v6; // r5
  size_t v7; // r2
  int v8; // r0
  int v9; // r3
  char *result; // r0
  const void *v11; // r3
  int v12; // r5
  size_t v13; // r2
  int v14; // r0

  v1 = &glitch::io::CFileSystem::ObfuscationMap;
  v2 = dword_9F66E8;
  if ( !dword_9F66E8 )
    return &glitch::io::CFileSystem::ObfuscationMap;
  v3 = *(const void **)(a1 + 20);
  v4 = *(_DWORD *)(a1 + 16) - (_DWORD)v3;
  while ( 1 )
  {
    v5 = *(const void **)(v2 + 36);
    v6 = *(_DWORD *)(v2 + 32) - (_DWORD)v5;
    v7 = v4 >= v6 ? *(_DWORD *)(v2 + 32) - (_DWORD)v5 : v4;
    v8 = memcmp(v5, v3, v7);
    if ( v8 )
      break;
    if ( v6 < v4 )
      goto LABEL_11;
LABEL_8:
    v9 = *(_DWORD *)(v2 + 8);
    v1 = (char *)v2;
    if ( !v9 )
      goto LABEL_12;
LABEL_9:
    v2 = v9;
  }
  if ( v8 >= 0 )
    goto LABEL_8;
LABEL_11:
  v9 = *(_DWORD *)(v2 + 12);
  v2 = (int)v1;
  if ( v9 )
    goto LABEL_9;
LABEL_12:
  result = (char *)v2;
  if ( (char *)v2 != &glitch::io::CFileSystem::ObfuscationMap )
  {
    v11 = *(const void **)(v2 + 36);
    v12 = *(_DWORD *)(v2 + 32) - (_DWORD)v11;
    if ( v12 >= v4 )
      v13 = v4;
    else
      v13 = *(_DWORD *)(v2 + 32) - (_DWORD)v11;
    v14 = memcmp(v3, v11, v13);
    if ( v14 )
    {
      if ( v14 < 0 )
        return &glitch::io::CFileSystem::ObfuscationMap;
      return (char *)v2;
    }
    else
    {
      if ( v4 >= v12 )
        return (char *)v2;
      return &glitch::io::CFileSystem::ObfuscationMap;
    }
  }
  return result;
}


// ===== 56dc40 glitch::io::CFileSystem::open(char const*,char const*) =====
glitch::io::CFileSystem *__fastcall glitch::io::CFileSystem::open(
        glitch::io::CFileSystem *this,
        char *a2,
        const char *a3)
{
  char v3; // r11
  char *v5; // r5
  char *v7; // r11
  size_t v8; // r3
  int v9; // r2
  bool v10; // zf
  int v11; // r2
  _BYTE *v12; // r3
  _BYTE *v13; // r1
  char *v14; // r0
  char *v15; // r3
  char *v16; // r0
  FILE *v17; // r10
  char *v18; // r9
  glitch::io::CFile *v19; // r5
  int v21; // r3
  bool v22; // zf
  int v23; // r2
  int v24; // r3
  bool v25; // zf
  _DWORD *v26; // r1
  size_t size; // r0
  size_t v28; // [sp+4h] [bp-80h]
  char v29[4]; // [sp+8h] [bp-7Ch] BYREF
  _DWORD v30[6]; // [sp+1Ch] [bp-68h] BYREF
  _DWORD v31[4]; // [sp+34h] [bp-50h] BYREF
  _DWORD v32[2]; // [sp+44h] [bp-40h] BYREF
  _DWORD v33[4]; // [sp+4Ch] [bp-38h] BYREF
  char *v34; // [sp+5Ch] [bp-28h]
  char *filename; // [sp+60h] [bp-24h]
  _DWORD v36[4]; // [sp+64h] [bp-20h] BYREF
  _BYTE *v37; // [sp+74h] [bp-10h]
  void *p; // [sp+78h] [bp-Ch]

  v3 = dword_9F66F4;
  v5 = a2;
  if ( dword_9F66F4 )
  {
    if ( *a2 != 46 )
      goto LABEL_3;
    v21 = a2[1];
    v22 = v21 == 47;
    if ( v21 != 47 )
      v22 = v21 == 92;
    if ( v22 )
      v7 = a2 + 2;
    else
LABEL_3:
      v7 = a2;
    v8 = LC_API_STRLEN_0(glitch::io::CFileSystem::WorkingDirectory);
    if ( v8 )
    {
      v28 = v8;
      if ( LC_API_STRSTR_0(v7, glitch::io::CFileSystem::WorkingDirectory) )
      {
        v9 = glitch::io::CFileSystem::WorkingDirectory[v28 - 1];
        v10 = v9 == 92;
        if ( v9 != 92 )
          v10 = v9 == 47;
        v11 = !v10;
        v7 += v11 + v28;
      }
    }
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v36,
      v7);
    v12 = p;
    v13 = v37;
    if ( p != v37 )
    {
      do
      {
        if ( *v12 == 92 )
          *v12 = 47;
        ++v12;
      }
      while ( v12 != v13 );
    }
    v14 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>((int)v36);
    if ( v14 == &glitch::io::CFileSystem::ObfuscationMap )
    {
      v3 = 0;
    }
    else
    {
      v5 = *((char **)v14 + 15);
      v3 = 1;
    }
    if ( p != v36 && p )
      GlitchFree(p);
  }
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v33,
    v5);
  if ( v34 == filename
    || (v29[0] = 58,
        v15 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(
                filename,
                (int)v34,
                v29),
        v15 == v34)
    || (v16 = filename, v15 - filename == -1) )
  {
    if ( glitch::io::CFileSystem::WorkingDirectory[0] )
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v31,
        glitch::io::CFileSystem::WorkingDirectory);
      v23 = v32[0];
      v24 = *(char *)(v32[0] - 1);
      v25 = v24 == 92;
      if ( v24 != 92 )
        v25 = v24 == 47;
      if ( !v25 )
      {
        if ( (_DWORD *)v32[1] == v31 )
          v26 = v32;
        else
          v26 = (_DWORD *)v31[0];
        if ( (char *)v26 - v32[0] == (char *)&dword_0 + 1 )
        {
          size = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
                   (int)v31,
                   1u);
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
            v31,
            size);
          v23 = v32[0];
        }
        *(_BYTE *)(v23 + 1) = 0;
        *(_BYTE *)v32[0]++ = 47;
      }
      std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
        v30,
        (int)v31,
        (int)v33);
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v33,
        (_BYTE *)v30[5],
        (_BYTE *)v30[4]);
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v30);
      std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v31);
      v16 = filename;
    }
    else
    {
      v16 = filename;
    }
  }
  v17 = fopen(v16, a3);
  if ( v17 )
  {
    v18 = filename;
    v19 = (glitch::io::CFile *)operator new(0x28u, 0);
    glitch::io::CFile::CFile(v19, v17, v18, v3);
    *(_DWORD *)this = v19;
    if ( v19 )
      ++*(_DWORD *)v19;
  }
  else
  {
    *(_DWORD *)this = 0;
  }
  if ( filename != (char *)v33 && filename )
    GlitchFree(filename);
  return this;
}


// ===== 56df38 glitch::io::CFileSystem::existFile(char const*) =====
glitch::io::CFile *__fastcall glitch::io::CFileSystem::existFile(glitch::io::CFileSystem *this, char *a2)
{
  int v2; // r3
  unsigned int v5; // r4
  int File; // r0
  glitch::io::CFile *result; // r0
  int v8; // r3
  unsigned int v9; // r4
  int v10; // r0
  int v11; // r3
  unsigned int v12; // r4
  int v13; // r0
  glitch::io::CFile *v14; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 2);
  if ( (unsigned int)(*((_DWORD *)this + 3) - v2) >> 2 )
  {
    v5 = 0;
    do
    {
      File = glitch::io::CZipReader::findFile(*(glitch::io::CZipReader **)(v2 + 4 * v5++), a2);
      if ( File != -1 )
        return (glitch::io::CFile *)(&dword_0 + 1);
      v2 = *((_DWORD *)this + 2);
    }
    while ( v5 < (*((_DWORD *)this + 3) - v2) >> 2 );
  }
  v8 = *((_DWORD *)this + 5);
  if ( (unsigned int)(*((_DWORD *)this + 6) - v8) >> 2 )
  {
    v9 = 0;
    do
    {
      v10 = glitch::io::CPakReader::findFile(*(glitch::io::CPakReader **)(v8 + 4 * v9++), a2);
      if ( v10 != -1 )
        return (glitch::io::CFile *)(&dword_0 + 1);
      v8 = *((_DWORD *)this + 5);
    }
    while ( v9 < (*((_DWORD *)this + 6) - v8) >> 2 );
  }
  v11 = *((_DWORD *)this + 8);
  if ( (unsigned int)(*((_DWORD *)this + 9) - v11) >> 2 )
  {
    v12 = 0;
    do
    {
      v13 = glitch::io::CUnZipReader::findFile(*(glitch::io::CUnZipReader **)(v11 + 4 * v12++), a2);
      if ( v13 != -1 )
        return (glitch::io::CFile *)(&dword_0 + 1);
      v11 = *((_DWORD *)this + 8);
    }
    while ( v12 < (*((_DWORD *)this + 9) - v11) >> 2 );
  }
  glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v14, a2, "rb");
  result = v14;
  if ( v14 )
  {
    glitch::ISharedObject<glitch::io::CFile>::drop(v14);
    return (glitch::io::CFile *)(&dword_0 + 1);
  }
  return result;
}


// ===== 56e064 glitch::io::CFileSystem::getObfuscatedFileName(char const*) =====
glitch::io::CFileSystem *__fastcall glitch::io::CFileSystem::getObfuscatedFileName(
        glitch::io::CFileSystem *this,
        const char *a2)
{
  glitch::io::CFileSystem *v2; // r5
  char *v3; // r10
  size_t v4; // r9
  _BYTE *v5; // r3
  _BYTE *v6; // r1
  char *v7; // r0
  int v9; // r3
  bool v10; // zf
  int v11; // r3
  int v12; // r3
  bool v13; // zf
  _DWORD v14[4]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE *v15; // [sp+14h] [bp-Ch]
  void *p; // [sp+18h] [bp-8h]

  v2 = this;
  if ( dword_9F66F4 )
  {
    if ( *(_BYTE *)this != 46 )
      goto LABEL_3;
    v12 = *((char *)this + 1);
    v13 = v12 == 47;
    if ( v12 != 47 )
      v13 = v12 == 92;
    if ( v13 )
      v3 = (char *)this + 2;
    else
LABEL_3:
      v3 = (char *)this;
    v4 = LC_API_STRLEN_0(glitch::io::CFileSystem::WorkingDirectory);
    if ( v4 && LC_API_STRSTR_0(v3, glitch::io::CFileSystem::WorkingDirectory) )
    {
      v9 = glitch::io::CFileSystem::WorkingDirectory[v4 - 1];
      v10 = v9 == 92;
      if ( v9 != 92 )
        v10 = v9 == 47;
      v11 = !v10;
      v3 += v11 + v4;
    }
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v14,
      v3);
    v5 = p;
    v6 = v15;
    if ( p != v15 )
    {
      do
      {
        if ( *v5 == 92 )
          *v5 = 47;
        ++v5;
      }
      while ( v5 != v6 );
    }
    v7 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>((int)v14);
    if ( v7 == &glitch::io::CFileSystem::ObfuscationMap )
    {
      if ( p != v14 && p )
        goto LABEL_12;
    }
    else
    {
      v2 = *((glitch::io::CFileSystem **)v7 + 15);
      if ( p != v14 && p )
LABEL_12:
        GlitchFree(p);
    }
  }
  return v2;
}


// ===== 56e1d8 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>> const&) =====
int *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      if ( !std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(
              (int)(a2 + 5),
              (int)(v4 + 4),
              a4) )
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
      if ( !std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(
              (int)(a2 + 5),
              a4,
              (int)(v16 + 4)) )
      {
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
          a1,
          a2,
          (_DWORD *)*a3,
          (_BYTE **)a4,
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          (_BYTE **)a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        a1,
        a2,
        v8,
        (_BYTE **)a4,
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      a1,
      a2,
      v4,
      (_BYTE **)a4,
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
      if ( !std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(
              (int)(a2 + 5),
              a4,
              (int)(v16 + 4)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        a1,
        a2,
        v4,
        (_BYTE **)a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      a1,
      a2,
      v16,
      (_BYTE **)a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = (int)v4;
  return a1;
}


// ===== 56e6dc glitch::io::CFileSystem::addObfuscationFileMap(char const*,uchar,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>) =====
int __fastcall glitch::io::CFileSystem::addObfuscationFileMap(int a1, int a2, int a3, int a4)
{
  glitch::IReferenceCounted *v4; // r5
  int v5; // r4
  char *v6; // r7
  unsigned int v7; // r5
  int i; // r8
  int v9; // r10
  int v10; // r3
  int v11; // r10
  unsigned int v12; // r6
  int v13; // r3
  int v14; // r8
  int v15; // r3
  char *v16; // r4
  char *v17; // r5
  char *v18; // r3
  void **v19; // r10
  char *v20; // r0
  size_t v21; // r2
  char *v22; // r0
  char *v23; // r7
  char *v24; // r6
  const void *v25; // r1
  int v26; // r11
  int v27; // r9
  size_t v28; // r2
  int v29; // r0
  int v30; // r10
  char *v34; // [sp+34h] [bp-B8h]
  char *v35; // [sp+3Ch] [bp-B0h] BYREF
  int v36; // [sp+40h] [bp-ACh] BYREF
  char *v37; // [sp+44h] [bp-A8h] BYREF
  char v38; // [sp+48h] [bp-A4h]
  char v39; // [sp+49h] [bp-A3h]
  char v40; // [sp+4Ah] [bp-A2h]
  _DWORD v41[5]; // [sp+54h] [bp-98h] BYREF
  void *v42; // [sp+68h] [bp-84h]
  int v43; // [sp+6Ch] [bp-80h] BYREF
  void *v44; // [sp+80h] [bp-6Ch]
  _DWORD v45[4]; // [sp+84h] [bp-68h] BYREF
  _BYTE *v46; // [sp+94h] [bp-58h]
  void *v47; // [sp+98h] [bp-54h]
  _DWORD v48[5]; // [sp+9Ch] [bp-50h] BYREF
  void *v49; // [sp+B0h] [bp-3Ch]
  _DWORD v50[4]; // [sp+B4h] [bp-38h] BYREF
  int v51; // [sp+C4h] [bp-28h]
  void *v52; // [sp+C8h] [bp-24h]
  void *v53[5]; // [sp+CCh] [bp-20h] BYREF
  void *p; // [sp+E0h] [bp-Ch]

  v4 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 12))(a1);
  v5 = (*(int (**)(void))(*(_DWORD *)v4 + 32))();
  v6 = (char *)operator new[](v5 + 1, 0);
  (*(void (__fastcall **)(glitch::IReferenceCounted *, char *, int))(*(_DWORD *)v4 + 12))(v4, v6, v5);
  glitch::IReferenceCounted::drop(v4);
  v7 = 0;
  v6[v5] = 0;
  if ( v5 )
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    for ( i = a3; ; i = v15 + v14 )
    {
      v9 = v6[v7] - i;
      v10 = v9 >= 0 ? 0 : 256;
      v11 = v10 + v9;
      v12 = v7 % 3;
      *(&v38 + v12) = v11;
      v13 = v39 + v38 + v40;
      v6[v7++] = v11;
      v14 = (int)(v13 / 3 + (v12 - 1) * (v11 / 2 * (v11 % 2) % a3) + i) % 256;
      v15 = v14 >= 0 ? 0 : 256;
      if ( v5 == v7 )
        break;
    }
  }
  v16 = &v6[v5 - 6];
  if ( LC_API_STRCMP_0(v16, "c|-|3k") )
  {
    LC_API_FREE_0(v6);
    return 0;
  }
  if ( v6 >= v16 )
    goto LABEL_48;
  v17 = v6;
  v34 = v6;
  do
  {
    v20 = (char *)memchr(v17, 58, v16 - v17);
    if ( !v20 )
    {
      v6 = v34;
      v37 = v16;
      goto LABEL_48;
    }
    v37 = v20;
    if ( v16 == v20 )
      break;
    *v20 = 0;
    v21 = v16 - ++v37;
    v22 = (char *)memchr(v37, 10, v21);
    if ( v22 )
      v23 = v22;
    else
      v23 = v16;
    *v23 = 0;
    v24 = (char *)std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_lower_bound<char *>(
                    &glitch::io::CFileSystem::ObfuscationMap,
                    &v37);
    if ( v24 == &glitch::io::CFileSystem::ObfuscationMap )
      goto LABEL_34;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v50,
      v37);
    v25 = *((const void **)v24 + 9);
    v26 = *((_DWORD *)v24 + 8) - (_DWORD)v25;
    v27 = v51 - (_DWORD)v52;
    if ( v26 >= v51 - (int)v52 )
      v28 = v51 - (_DWORD)v52;
    else
      v28 = *((_DWORD *)v24 + 8) - (_DWORD)v25;
    v29 = memcmp(v52, v25, v28);
    if ( v29 )
    {
      if ( v29 < 0 )
      {
LABEL_33:
        std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v50);
LABEL_34:
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
          v48,
          v37);
        v46 = v45;
        v47 = v45;
        std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
          v45,
          0x10u);
        *v46 = 0;
        std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::pair(
          v41,
          (int)v48,
          (int)v45);
        v35 = v24;
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
          &v36,
          &glitch::io::CFileSystem::ObfuscationMap,
          (int *)&v35,
          (int)v41);
        v30 = v36;
        if ( v44 != &v43 && v44 )
          GlitchFree(v44);
        if ( v42 != v41 && v42 )
          GlitchFree(v42);
        if ( v47 != v45 && v47 )
          GlitchFree(v47);
        if ( v49 != v48 && v49 )
          GlitchFree(v49);
        v18 = (char *)v30;
        goto LABEL_16;
      }
    }
    else if ( v27 < v26 )
    {
      goto LABEL_33;
    }
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_deallocate_block((int)v50);
    v18 = v24;
LABEL_16:
    v19 = (void **)(v18 + 40);
    std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
      v53,
      a4,
      v17);
    if ( v19 != v53 )
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
        v19,
        p,
        (_BYTE *)v53[4]);
    if ( p != v53 )
    {
      if ( p )
        GlitchFree(p);
    }
    v17 = v23 + 1;
  }
  while ( v16 > v23 + 1 );
  v6 = v34;
LABEL_48:
  LC_API_FREE_0(v6);
  return 1;
}


// ===== 56eb30 glitch::io::IReadFile::getBuffer(long *) =====
int __fastcall glitch::io::IReadFile::getBuffer(glitch::io::IReadFile *this, int *a2)
{
  return 0;
}


// ===== 56eb38 glitch::io::IReadFile::getExternalBuffer(char const*,long *) =====
int __fastcall glitch::io::IReadFile::getExternalBuffer(glitch::io::IReadFile *this, const char *a2, int *a3)
{
  return 0;
}


// ===== 56eb40 glitch::io::IReadFile::isAllInMemory(void) =====
int __fastcall glitch::io::IReadFile::isAllInMemory(glitch::io::IReadFile *this)
{
  return 0;
}


// ===== 56eb48 boost::detail::sp_counted_base::~sp_counted_base() =====
void __fastcall boost::detail::sp_counted_base::~sp_counted_base(boost::detail::sp_counted_base *this)
{
  ;
}


// ===== 56eb4c boost::detail::sp_counted_base::destroy(void) =====
int __fastcall boost::detail::sp_counted_base::destroy(int this)
{
  if ( this )
    return (*(int (__fastcall **)(int))(*(_DWORD *)this + 4))(this);
  return this;
}


// ===== 56eb68 boost::detail::sp_enable_shared_from_this(...) =====
void boost::detail::sp_enable_shared_from_this()
{
  ;
}


// ===== 56eb6c glitch::io::CMemoryReadFile::getBuffer(long *) =====
int __fastcall glitch::io::CMemoryReadFile::getBuffer(glitch::io::CMemoryReadFile *this, int *a2)
{
  if ( a2 )
    *a2 = *((_DWORD *)this + 7);
  return *((_DWORD *)this + 3);
}


// ===== 56eb80 glitch::io::CMemoryReadFile::isAllInMemory(void) =====
int __fastcall glitch::io::CMemoryReadFile::isAllInMemory(glitch::io::CMemoryReadFile *this)
{
  return 1;
}


// ===== 56eb88 glitch::io::IReadFile::~IReadFile() =====
void __fastcall glitch::io::IReadFile::~IReadFile(glitch::io::IReadFile *this)
{
  ;
}


// ===== 56eb8c glitch::io::CMemoryReadFile::isValid(void) =====
bool __fastcall glitch::io::CMemoryReadFile::isValid(glitch::io::CMemoryReadFile *this)
{
  return *((_DWORD *)this + 3) && *((_DWORD *)this + 6) >= 0;
}


// ===== 56ebac glitch::io::CMemoryReadFile::readAsync(void *,uint,void (*)(int,int,glitch::io::IReadFile *,void *),void *) =====
int __fastcall glitch::io::CMemoryReadFile::readAsync(
        glitch::io::CMemoryReadFile *this,
        void *a2,
        unsigned int a3,
        void (*a4)(int, int, glitch::io::IReadFile *, void *),
        void *a5)
{
  int v7; // r0

  v7 = (*(int (__fastcall **)(glitch::io::CMemoryReadFile *, void *, unsigned int))(*(_DWORD *)this + 12))(this, a2, a3);
  a4(v7, v7 == 0, this, a5);
  return 1;
}


// ===== 56ebe0 glitch::io::CMemoryReadFile::readAsync(void *,uint,long,void (*)(int,int,glitch::io::IReadFile *,void *),void *) =====
int __fastcall glitch::io::CMemoryReadFile::readAsync(
        glitch::io::CMemoryReadFile *this,
        void *a2,
        unsigned int a3,
        int a4,
        void (*a5)(int, int, glitch::io::IReadFile *, void *),
        void *a6)
{
  int v9; // r0

  (*(void (__fastcall **)(glitch::io::CMemoryReadFile *, int, _DWORD))(*(_DWORD *)this + 24))(this, a4, 0);
  v9 = (*(int (__fastcall **)(glitch::io::CMemoryReadFile *, void *, unsigned int))(*(_DWORD *)this + 12))(this, a2, a3);
  a5(v9, v9 == 0, this, a6);
  return 1;
}


// ===== 56ec3c glitch::io::CMemoryReadFile::seek(long,bool) =====
int __fastcall glitch::io::CMemoryReadFile::seek(glitch::io::CMemoryReadFile *this, int a2, int a3)
{
  if ( a3 )
  {
    a2 += *((_DWORD *)this + 7);
    if ( a2 > *((_DWORD *)this + 6) )
      return 0;
  }
  else if ( a2 > *((_DWORD *)this + 6) )
  {
    return 0;
  }
  *((_DWORD *)this + 7) = a2;
  return 1;
}


// ===== 56ec78 glitch::io::CMemoryReadFile::getSize(void) =====
int __fastcall glitch::io::CMemoryReadFile::getSize(glitch::io::CMemoryReadFile *this)
{
  return *((_DWORD *)this + 6);
}


// ===== 56ec80 glitch::io::CMemoryReadFile::getPos(void) =====
int __fastcall glitch::io::CMemoryReadFile::getPos(glitch::io::CMemoryReadFile *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 56ec88 glitch::io::CMemoryReadFile::getFileName(void) =====
int __fastcall glitch::io::CMemoryReadFile::getFileName(glitch::io::CMemoryReadFile *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 56ec90 glitch::io::CMemoryReadFile::getFullPath(void) =====
int __fastcall glitch::io::CMemoryReadFile::getFullPath(glitch::io::CMemoryReadFile *this)
{
  return *((_DWORD *)this + 13);
}


// ===== 56ec98 boost::detail::sp_counted_impl_p<char>::~sp_counted_impl_p() =====
void boost::detail::sp_counted_impl_p<char>::~sp_counted_impl_p()
{
  ;
}


// ===== 56ec9c boost::detail::sp_counted_impl_p<char>::get_deleter(void * const&) =====
int boost::detail::sp_counted_impl_p<char>::get_deleter()
{
  return 0;
}


// ===== 56eca4 `global constructor keyed to'.._source_glitch_io_CMemoryReadFile.cpp =====
void `global constructor keyed to'.._source_glitch_io_CMemoryReadFile.cpp()
{
  dword_9F6704 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6700 = 1056964608;
}


// ===== 56ecc4 glitch::io::CMemoryReadFile::read(void *,uint) =====
signed int __fastcall glitch::io::CMemoryReadFile::read(glitch::io::CMemoryReadFile *this, void *a2, signed int a3)
{
  int v3; // r3
  int v4; // r12
  signed int v5; // r4
  int v6; // r2

  v3 = *((_DWORD *)this + 7);
  v4 = *((_DWORD *)this + 6);
  v5 = a3;
  v6 = a3 + v3;
  if ( v6 > v4 )
    v5 = v5 + v4 - v6;
  if ( v5 <= 0 )
    return 0;
  memcpy(a2, (const void *)(*((_DWORD *)this + 3) + v3), v5);
  *((_DWORD *)this + 7) += v5;
  return v5;
}


// ===== 56ed1c glitch::io::CMemoryReadFile::CMemoryReadFile(void) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CMemoryReadFile::CMemoryReadFile(glitch::io::CMemoryReadFile *this)
{
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_974448;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 8,
    "");
  return this;
}


// ===== 56ed8c glitch::io::CMemoryReadFile::CMemoryReadFile(void) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CMemoryReadFile::CMemoryReadFile(glitch::io::CMemoryReadFile *this)
{
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_974448;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 8,
    "");
  return this;
}


// ===== 56edfc glitch::io::CMemoryReadFile::set(void *,long,char const*) =====
_DWORD *__fastcall glitch::io::CMemoryReadFile::set(glitch::io::CMemoryReadFile *this, void *a2, int a3, char *a4)
{
  size_t v6; // r0

  *((_DWORD *)this + 3) = a2;
  *((_DWORD *)this + 6) = a3;
  *((_DWORD *)this + 7) = 0;
  v6 = LC_API_STRLEN_0(a4);
  return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
           (_DWORD *)this + 8,
           a4,
           &a4[v6]);
}


// ===== 56ee34 boost::detail::yield(uint) =====
unsigned int __fastcall boost::detail::yield(unsigned int this, unsigned int a2)
{
  _DWORD v2[3]; // [sp+0h] [bp-Ch] BYREF

  if ( this > 3 )
  {
    if ( this <= 0x1F || (this & 1) != 0 )
    {
      return sched_yield();
    }
    else
    {
      v2[1] = 1000;
      v2[0] = 0;
      return nanosleep((const struct timespec *)v2, nullptr);
    }
  }
  return this;
}


// ===== 56ee7c boost::detail::shared_count::shared_count(boost::detail::shared_count const&) =====
int *__fastcall boost::detail::shared_count::shared_count(int *a1, int *a2)
{
  int v2; // r7
  bool v4; // zf
  unsigned int v5; // r1
  unsigned int v6; // r9
  unsigned int v7; // r4

  v2 = *a2;
  v4 = *a2 == 0;
  *a1 = *a2;
  if ( !v4 )
  {
    v5 = v2 + 4;
    v6 = (v2 + 4) % 0x29u;
    if ( __swp(1u, &boost::detail::spinlock_pool<1>::pool_[v6]) )
    {
      v7 = 0;
      do
        boost::detail::yield(v7++, v5);
      while ( __swp(1u, &boost::detail::spinlock_pool<1>::pool_[v6]) );
    }
    ++*(_DWORD *)(v2 + 4);
    boost::detail::spinlock_pool<1>::pool_[v6] = 0;
  }
  return a1;
}


// ===== 56ef14 glitch::io::IReadFile::~IReadFile() =====
void __fastcall glitch::io::IReadFile::~IReadFile(glitch::io::IReadFile *this)
{
  LC_API_FREE_0(this);
}


// ===== 56ef28 boost::detail::sp_counted_impl_p<char>::~sp_counted_impl_p() =====
void *__fastcall boost::detail::sp_counted_impl_p<char>::~sp_counted_impl_p(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 56ef3c boost::detail::sp_counted_base::~sp_counted_base() =====
void __fastcall boost::detail::sp_counted_base::~sp_counted_base(boost::detail::sp_counted_base *this)
{
  LC_API_FREE_0(this);
}


// ===== 56ef50 boost::detail::sp_counted_impl_p<char>::dispose(void) =====
void __fastcall boost::detail::sp_counted_impl_p<char>::dispose(int a1)
{
  LC_API_FREE_0(*(void **)(a1 + 12));
}


// ===== 56ef58 boost::detail::shared_count::shared_count<char>(char *) =====
_DWORD *__fastcall boost::detail::shared_count::shared_count<char>(_DWORD *a1, int a2)
{
  _DWORD *v4; // r0

  *a1 = 0;
  v4 = (_DWORD *)operator new(0x10u);
  v4[2] = 1;
  v4[3] = a2;
  *v4 = off_974408;
  v4[1] = 1;
  *a1 = v4;
  return a1;
}


// ===== 56efb0 boost::detail::sp_counted_base::weak_release(void) =====
unsigned int __fastcall boost::detail::sp_counted_base::weak_release(unsigned int this)
{
  unsigned int v1; // r1
  unsigned int v2; // r10
  _DWORD *v3; // r7
  unsigned int v4; // r4
  int v5; // r3

  v1 = 41;
  v2 = (this + 8) % 0x29;
  v3 = (_DWORD *)this;
  if ( __swp(1u, &boost::detail::spinlock_pool<1>::pool_[v2]) )
  {
    v4 = 0;
    do
      this = boost::detail::yield(v4++, v1);
    while ( __swp(1u, &boost::detail::spinlock_pool<1>::pool_[v2]) );
  }
  v5 = v3[2];
  v3[2] = v5 - 1;
  boost::detail::spinlock_pool<1>::pool_[v2] = 0;
  if ( v5 == 1 )
    return (*(int (__fastcall **)(_DWORD *))(*v3 + 12))(v3);
  return this;
}


// ===== 56f050 boost::detail::sp_counted_base::release(void) =====
unsigned int __fastcall boost::detail::sp_counted_base::release(unsigned int this)
{
  unsigned int v1; // r1
  unsigned int v2; // r10
  _DWORD *v3; // r7
  unsigned int v4; // r4
  int v5; // r3

  v1 = 41;
  v2 = (this + 4) % 0x29;
  v3 = (_DWORD *)this;
  if ( __swp(1u, &boost::detail::spinlock_pool<1>::pool_[v2]) )
  {
    v4 = 0;
    do
      this = boost::detail::yield(v4++, v1);
    while ( __swp(1u, &boost::detail::spinlock_pool<1>::pool_[v2]) );
  }
  v5 = v3[1];
  v3[1] = v5 - 1;
  boost::detail::spinlock_pool<1>::pool_[v2] = 0;
  if ( v5 == 1 )
  {
    (*(void (__fastcall **)(_DWORD *))(*v3 + 8))(v3);
    return boost::detail::sp_counted_base::weak_release((unsigned int)v3);
  }
  return this;
}


// ===== 56f0f8 boost::shared_ptr<char>::operator=(boost::shared_ptr<char> const&) =====
_DWORD *__fastcall boost::shared_ptr<char>::operator=(_DWORD *a1, int *a2)
{
  unsigned int v3; // r3
  int v4; // r2
  int v6; // [sp+0h] [bp-8h]
  unsigned int v7; // [sp+4h] [bp-4h] BYREF

  v6 = *a2;
  boost::detail::shared_count::shared_count((int *)&v7, a2 + 1);
  v3 = a1[1];
  v4 = v7;
  *a1 = v6;
  a1[1] = v4;
  if ( v3 )
  {
    v7 = v3;
    boost::detail::sp_counted_base::release(v3);
  }
  return a1;
}


// ===== 56f150 glitch::io::CMemoryReadFile::clone(void) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CMemoryReadFile::clone(glitch::io::CMemoryReadFile *this)
{
  glitch::io::CMemoryReadFile *v2; // r5

  v2 = (glitch::io::CMemoryReadFile *)operator new(0x38u, 0);
  glitch::io::CMemoryReadFile::CMemoryReadFile(v2);
  *((_DWORD *)v2 + 3) = *((_DWORD *)this + 3);
  boost::shared_ptr<char>::operator=((_DWORD *)v2 + 4, (int *)this + 4);
  *((_DWORD *)v2 + 6) = *((_DWORD *)this + 6);
  *((_DWORD *)v2 + 7) = *((_DWORD *)this + 7);
  if ( (char *)v2 + 32 != (char *)this + 32 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)v2 + 8,
      *((_BYTE **)this + 13),
      *((_BYTE **)this + 12));
  return v2;
}


// ===== 56f1b4 glitch::io::CMemoryReadFile::~CMemoryReadFile() =====
void __fastcall glitch::io::CMemoryReadFile::~CMemoryReadFile(glitch::io::CMemoryReadFile *this)
{
  char *v2; // r1
  char *v3; // r0
  unsigned int v4; // r0

  *(_DWORD *)this = off_974448;
  v2 = (char *)this + 32;
  v3 = *((char **)this + 13);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  v4 = *((_DWORD *)this + 5);
  if ( v4 )
    boost::detail::sp_counted_base::release(v4);
}


// ===== 56f210 glitch::io::CMemoryReadFile::~CMemoryReadFile() =====
void __fastcall glitch::io::CMemoryReadFile::~CMemoryReadFile(glitch::io::CMemoryReadFile *this)
{
  glitch::io::CMemoryReadFile::~CMemoryReadFile(this);
  LC_API_FREE_0(this);
}


// ===== 56f22c glitch::io::CMemoryReadFile::~CMemoryReadFile() =====
void __fastcall glitch::io::CMemoryReadFile::~CMemoryReadFile(glitch::io::CMemoryReadFile *this)
{
  char *v2; // r1
  char *v3; // r0
  unsigned int v4; // r0

  *(_DWORD *)this = off_974448;
  v2 = (char *)this + 32;
  v3 = *((char **)this + 13);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  v4 = *((_DWORD *)this + 5);
  if ( v4 )
    boost::detail::sp_counted_base::release(v4);
}


// ===== 56f288 boost::shared_ptr<char>::reset<char>(char *) =====
void __fastcall boost::shared_ptr<char>::reset<char>(int *a1, int a2)
{
  unsigned int v3; // r3
  unsigned int v4; // r1
  unsigned int v6; // [sp+4h] [bp-4h] BYREF

  boost::detail::shared_count::shared_count<char>(&v6, a2);
  boost::detail::sp_enable_shared_from_this();
  v3 = a1[1];
  v4 = v6;
  *a1 = a2;
  a1[1] = v4;
  if ( v3 )
  {
    v6 = v3;
    boost::detail::sp_counted_base::release(v3);
  }
}


// ===== 56f2ec glitch::io::CMemoryReadFile::CMemoryReadFile(void *,long,char const*,bool) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CMemoryReadFile::CMemoryReadFile(
        glitch::io::CMemoryReadFile *this,
        int a2,
        int a3,
        char *a4,
        bool a5)
{
  *((_DWORD *)this + 6) = a3;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_974448;
  *((_DWORD *)this + 3) = a2;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 8,
    a4);
  if ( a5 )
    boost::shared_ptr<char>::reset<char>((int *)this + 4, a2);
  return this;
}


// ===== 56f370 glitch::io::createMemoryReadFile(void *,long,char const*,bool) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::createMemoryReadFile(
        glitch::io *this,
        int a2,
        char *a3,
        const char *a4,
        bool a5)
{
  char v8; // r5
  glitch::io::CMemoryReadFile *v9; // r4

  v8 = (char)a4;
  v9 = (glitch::io::CMemoryReadFile *)operator new(0x38u, 0);
  glitch::io::CMemoryReadFile::CMemoryReadFile(v9, (int)this, a2, a3, v8);
  return v9;
}


// ===== 56f3b8 glitch::io::CMemoryReadFile::CMemoryReadFile(void *,long,char const*,bool) =====
glitch::io::CMemoryReadFile *__fastcall glitch::io::CMemoryReadFile::CMemoryReadFile(
        glitch::io::CMemoryReadFile *this,
        int a2,
        int a3,
        char *a4,
        bool a5)
{
  *((_DWORD *)this + 6) = a3;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_974448;
  *((_DWORD *)this + 3) = a2;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 8,
    a4);
  if ( a5 )
    boost::shared_ptr<char>::reset<char>((int *)this + 4, a2);
  return this;
}


// ===== 56f43c glitch::io::CPakReader::getFileCount(void) =====
int __fastcall glitch::io::CPakReader::getFileCount(glitch::io::CPakReader *this)
{
  return -858993459 * ((*((_DWORD *)this + 7) - *((_DWORD *)this + 6)) >> 4);
}


// ===== 56f464 glitch::io::CPakReader::getFileInfo(int) =====
int __fastcall glitch::io::CPakReader::getFileInfo(glitch::io::CPakReader *this, int a2)
{
  return *((_DWORD *)this + 6) + 80 * a2;
}


// ===== 56f474 `global constructor keyed to'.._source_glitch_io_CPakReader.cpp =====
void `global constructor keyed to'.._source_glitch_io_CPakReader.cpp()
{
  dword_9F67B4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F67B0 = 1056964608;
}


// ===== 56f494 glitch::io::SPakFileEntry::SPakFileEntry(void) =====
glitch::io::SPakFileEntry *__fastcall glitch::io::SPakFileEntry::SPakFileEntry(glitch::io::SPakFileEntry *this)
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


// ===== 56f500 glitch::io::SPakFileEntry::SPakFileEntry(glitch::io::SPakFileEntry const&) =====
glitch::io::SPakFileEntry *__fastcall glitch::io::SPakFileEntry::SPakFileEntry(
        glitch::io::SPakFileEntry *this,
        const glitch::io::SPakFileEntry *a2)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    this,
    *((_BYTE **)a2 + 5),
    *((_BYTE **)a2 + 4));
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    (_DWORD *)this + 6,
    *((_BYTE **)a2 + 11),
    *((_BYTE **)a2 + 10));
  *((_DWORD *)this + 16) = (char *)this + 48;
  *((_DWORD *)this + 17) = (char *)this + 48;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    (_DWORD *)this + 12,
    *((_BYTE **)a2 + 17),
    *((_BYTE **)a2 + 16));
  *((_DWORD *)this + 18) = *((_DWORD *)a2 + 18);
  *((_DWORD *)this + 19) = *((_DWORD *)a2 + 19);
  return this;
}


// ===== 56f568 glitch::io::CPakReader::deletePathFromFilename(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall glitch::io::CPakReader::deletePathFromFilename(int a1, int a2)
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


// ===== 56f5e0 glitch::io::SPakFileEntry::operator=(glitch::io::SPakFileEntry const&) =====
_DWORD *__fastcall glitch::io::SPakFileEntry::operator=(_DWORD *a1, int a2)
{
  if ( a1 != (_DWORD *)a2 )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1,
      *(_BYTE **)(a2 + 20),
      *(_BYTE **)(a2 + 16));
  if ( a1 + 6 != (_DWORD *)(a2 + 24) )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 6,
      *(_BYTE **)(a2 + 44),
      *(_BYTE **)(a2 + 40));
  if ( a1 + 12 != (_DWORD *)(a2 + 48) )
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      a1 + 12,
      *(_BYTE **)(a2 + 68),
      *(_BYTE **)(a2 + 64));
  a1[18] = *(_DWORD *)(a2 + 72);
  a1[19] = *(_DWORD *)(a2 + 76);
  return a1;
}


// ===== 56f650 glitch::io::SPakFileEntry::~SPakFileEntry() =====
void __fastcall glitch::io::SPakFileEntry::~SPakFileEntry(glitch::io::SPakFileEntry *this)
{
  char *v1; // r3
  char *v3; // r0
  char *v4; // r0
  glitch::io::SPakFileEntry *v5; // r0

  v1 = (char *)this + 48;
  v3 = *((char **)this + 17);
  if ( v3 != v1 && v3 )
    GlitchFree(v3);
  v4 = *((char **)this + 11);
  if ( v4 != (char *)this + 24 && v4 )
    GlitchFree(v4);
  v5 = *((glitch::io::SPakFileEntry **)this + 5);
  if ( v5 != this )
  {
    if ( v5 )
      GlitchFree(v5);
  }
}


// ===== 56f6b0 std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::io::SPakFileEntry **__fastcall std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::io::SPakFileEntry **a1)
{
  glitch::io::SPakFileEntry *v1; // r4
  glitch::io::SPakFileEntry *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (glitch::io::SPakFileEntry *)((char *)v1 - 80);
    glitch::io::SPakFileEntry::~SPakFileEntry(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 56f6f4 glitch::io::CPakReader::~CPakReader() =====
void __fastcall glitch::io::CPakReader::~CPakReader(glitch::io::CPakReader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_974490;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::io::SPakFileEntry **)this + 6);
}


// ===== 56f73c glitch::io::CPakReader::~CPakReader() =====
void __fastcall glitch::io::CPakReader::~CPakReader(glitch::io::CPakReader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 2);
  *(_DWORD *)this = off_974490;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::io::SPakFileEntry **)this + 6);
}


// ===== 56f784 glitch::io::CPakReader::openFile(int) =====
int __fastcall glitch::io::CPakReader::openFile(glitch::io::CPakReader *this, int a2)
{
  int v2; // r5

  v2 = 80 * a2;
  (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 2) + 24))(
    *((_DWORD *)this + 2),
    *(_DWORD *)(*((_DWORD *)this + 6) + 80 * a2 + 72),
    0);
  return glitch::io::createLimitReadFile(
           *(glitch::io **)(*((_DWORD *)this + 6) + v2 + 44),
           *((const char **)this + 2),
           *(glitch::io::IReadFile **)(*((_DWORD *)this + 6) + v2 + 76),
           *((_DWORD *)this + 6));
}


// ===== 56f7d4 glitch::io::CPakReader::~CPakReader() =====
void __fastcall glitch::io::CPakReader::~CPakReader(glitch::io::CPakReader *this)
{
  glitch::io::CPakReader::~CPakReader(this);
  LC_API_FREE_0(this);
}


// ===== 56f7f0 std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::io::SPakFileEntry const&) =====
void __fastcall std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::io::SPakFileEntry **a1,
        const glitch::io::SPakFileEntry *a2)
{
  glitch::io::SPakFileEntry *v3; // r4
  glitch::io::SPakFileEntry *v4; // r0
  unsigned int v6; // r2
  unsigned int v7; // r1
  size_t v8; // r9
  glitch::io::SPakFileEntry *v9; // r0
  glitch::io::SPakFileEntry *v10; // r8
  glitch::io::SPakFileEntry *v11; // r7
  int v12; // r4
  int v13; // r11
  glitch::io::SPakFileEntry *v14; // r11
  int v15; // r5
  int v16; // r4
  glitch::io::SPakFileEntry *v17; // r4
  glitch::io::SPakFileEntry *v18; // r5
  glitch::io::SPakFileEntry *v19; // r11

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
      v8 = -16;
    else
      v8 = 80 * v7;
    v9 = (glitch::io::SPakFileEntry *)GlitchAlloc(v8, 0);
    v10 = *a1;
    v11 = v9;
    v12 = (v3 - *a1) >> 4;
    v13 = -858993459 * v12;
    if ( -858993459 * v12 > 0 )
    {
      v15 = -858993459 * v12;
      v16 = 0;
      do
      {
        glitch::io::SPakFileEntry::SPakFileEntry(
          (glitch::io::SPakFileEntry *)((char *)v11 + v16),
          (glitch::io::SPakFileEntry *)((char *)v10 + v16));
        --v15;
        v16 += 80;
      }
      while ( v15 );
      v14 = (glitch::io::SPakFileEntry *)((char *)v11 + 80 * v13);
    }
    else
    {
      v14 = v9;
    }
    glitch::io::SPakFileEntry::SPakFileEntry(v14, a2);
    v17 = a1[1];
    v18 = *a1;
    v19 = (glitch::io::SPakFileEntry *)((char *)v14 + 80);
    if ( v17 != *a1 )
    {
      do
      {
        v17 = (glitch::io::SPakFileEntry *)((char *)v17 - 80);
        glitch::io::SPakFileEntry::~SPakFileEntry(v17);
      }
      while ( v18 != v17 );
      v18 = *a1;
    }
    GlitchFree(v18);
    a1[2] = (glitch::io::SPakFileEntry *)((char *)v11 + v8);
    *a1 = v11;
    a1[1] = v19;
  }
  else
  {
    glitch::io::SPakFileEntry::SPakFileEntry(v4, a2);
    a1[1] = (glitch::io::SPakFileEntry *)((char *)a1[1] + 80);
  }
}


// ===== 56f928 std::priv::__lower_bound<glitch::io::SPakFileEntry const*,glitch::io::SPakFileEntry,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,int>(glitch::io::SPakFileEntry const*,glitch::io::SPakFileEntry const*,glitch::io::SPakFileEntry const&,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,int *) =====
int __fastcall std::priv::__lower_bound<glitch::io::SPakFileEntry const*,glitch::io::SPakFileEntry,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,int>(
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

  v4 = -858993459 * ((a2 - result) >> 4);
  while ( v4 > 0 )
  {
    v5 = *(char **)(a3 + 44);
    v6 = *(_DWORD *)(a3 + 40) - (_DWORD)v5;
    while ( 1 )
    {
      v7 = v4 >> 1;
      v8 = result + 80 * (v4 >> 1);
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
    result = v8 + 80;
  }
  return result;
}


// ===== 56fa04 glitch::core::heapsink<glitch::io::SPakFileEntry>(glitch::io::SPakFileEntry *,int,int) =====
unsigned int __fastcall glitch::core::heapsink<glitch::io::SPakFileEntry>(unsigned int result, int a2, int a3)
{
  int v3; // r3
  unsigned int v4; // r9
  int v5; // r6
  int v6; // r5
  const glitch::io::SPakFileEntry *v7; // r4
  char *v8; // r8
  _DWORD *v9; // r6
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
  char *v23; // [sp+Ch] [bp-68h]
  _BYTE v24[80]; // [sp+1Ch] [bp-58h] BYREF

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
        v7 = (const glitch::io::SPakFileEntry *)(v4 + 80 * v3);
        v8 = *((char **)v7 + 11);
        result = *((_DWORD *)v7 + 10) - (_DWORD)v8;
        goto LABEL_5;
      }
      v7 = (const glitch::io::SPakFileEntry *)(v4 + 80 * v3);
      v15 = v4 + 80 * v6;
      v8 = *((char **)v7 + 11);
      result = *((_DWORD *)v7 + 10) - (_DWORD)v8;
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
        v7 = (const glitch::io::SPakFileEntry *)(v4 + 80 * v6);
        v8 = *((char **)v7 + 11);
        result = *((_DWORD *)v7 + 10) - (_DWORD)v8;
        goto LABEL_6;
      }
LABEL_5:
      v6 = v3;
LABEL_6:
      v9 = (_DWORD *)(v4 + 80 * v5);
      v10 = (char *)v9[11];
      v11 = v9[10] - (_DWORD)v10;
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
        glitch::io::SPakFileEntry::SPakFileEntry((glitch::io::SPakFileEntry *)v24, v7);
        glitch::io::SPakFileEntry::operator=(v7, (int)v9);
        glitch::io::SPakFileEntry::operator=(v9, (int)v24);
        glitch::io::SPakFileEntry::~SPakFileEntry((glitch::io::SPakFileEntry *)v24);
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


// ===== 56fc0c glitch::core::heapsort<glitch::io::SPakFileEntry>(glitch::io::SPakFileEntry *,int) =====
void __fastcall glitch::core::heapsort<glitch::io::SPakFileEntry>(glitch::io::SPakFileEntry *a1, int a2)
{
  int v2; // r10
  int v3; // r9
  char *v5; // r6
  int v6; // r4
  int v7; // r7
  _DWORD *v8; // r10
  _BYTE v9[80]; // [sp+4h] [bp-58h] BYREF

  v2 = a2 - 1;
  v3 = a2;
  v5 = (char *)a1 - 80;
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      glitch::core::heapsink<glitch::io::SPakFileEntry>((unsigned int)v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = (_DWORD *)((char *)a1 + 80 * v2);
    do
    {
      glitch::io::SPakFileEntry::SPakFileEntry((glitch::io::SPakFileEntry *)v9, a1);
      glitch::io::SPakFileEntry::operator=(a1, (int)v8);
      glitch::io::SPakFileEntry::operator=(v8, (int)v9);
      glitch::core::heapsink<glitch::io::SPakFileEntry>((unsigned int)v5, 1, v3);
      glitch::io::SPakFileEntry::~SPakFileEntry((glitch::io::SPakFileEntry *)v9);
      --v3;
      v8 -= 20;
    }
    while ( v3 );
  }
}


// ===== 56fcec glitch::io::CPakReader::extractFilename(glitch::io::SPakFileEntry *) =====
_DWORD *__fastcall glitch::io::CPakReader::extractFilename(glitch::io::CPakReader *this, glitch::io::SPakFileEntry *a2)
{
  char *v4; // r3
  unsigned int v5; // r2
  char v6; // r1
  char *v7; // r3
  char *v8; // r6
  char *v9; // r6
  char *v11; // r6
  size_t v12; // r0
  _DWORD *v13; // r7
  _DWORD *result; // r0
  size_t v15; // r0

  if ( *((_BYTE *)this + 36) )
  {
    v4 = *((char **)a2 + 5);
    if ( v4 != *((char **)a2 + 4) )
    {
      v5 = 0;
      do
      {
        v6 = v4[v5];
        v7 = &v4[v5++];
        if ( (unsigned __int8)(v6 - 65) <= 0x19u )
          v6 += 32;
        *v7 = v6;
        v4 = *((char **)a2 + 5);
      }
      while ( v5 < *((_DWORD *)a2 + 4) - (int)v4 );
    }
  }
  else
  {
    v4 = *((char **)a2 + 5);
  }
  v8 = v4 + 56;
  if ( v4[56] != 47 )
  {
    v9 = (char *)&dword_34 + 3;
    while ( v9[(_DWORD)v4] != 47 )
    {
      if ( v9-- == nullptr )
      {
        v8 = v4;
        goto LABEL_18;
      }
    }
    v8 = &v9[(_DWORD)v4];
  }
  if ( v8 != v4 )
  {
    v11 = v8 + 1;
    v12 = LC_API_STRLEN_0(v11);
    v13 = (_DWORD *)((char *)a2 + 24);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a2 + 6,
      v11,
      &v11[v12]);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (_DWORD *)a2 + 12,
      "",
      "");
    result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
               (_DWORD *)a2 + 12,
               *((_BYTE **)a2 + 5),
               v11);
    if ( *((_BYTE *)this + 37) )
      return result;
    return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             v13,
             *((_BYTE **)a2 + 5),
             *((_BYTE **)a2 + 4));
  }
LABEL_18:
  v15 = LC_API_STRLEN_0(v8);
  v13 = (_DWORD *)((char *)a2 + 24);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    (_DWORD *)a2 + 6,
    v8,
    &v8[v15]);
  result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             (_DWORD *)a2 + 12,
             "",
             "");
  if ( !*((_BYTE *)this + 37) )
    return std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
             v13,
             *((_BYTE **)a2 + 5),
             *((_BYTE **)a2 + 4));
  return result;
}


// ===== 56fe44 glitch::io::CPakReader::scanLocalHeader(void) =====
int __fastcall glitch::io::CPakReader::scanLocalHeader(glitch::io::CPakReader *this)
{
  int v2; // r3
  int v3; // r6
  int v5; // r2
  int v6; // r8
  int i; // r7
  int v8; // r1
  size_t v9; // r1
  unsigned int v10; // r3
  size_t v11; // r0
  char v12[1020]; // [sp+14h] [bp-458h] BYREF
  _DWORD v13[4]; // [sp+414h] [bp-58h] BYREF
  int v14; // [sp+424h] [bp-48h]
  _DWORD *v15; // [sp+428h] [bp-44h]
  int v16; // [sp+45Ch] [bp-10h] BYREF
  int v17; // [sp+460h] [bp-Ch] BYREF

  glitch::io::SPakFileEntry::SPakFileEntry((glitch::io::SPakFileEntry *)v13);
  v2 = *((_DWORD *)this + 2);
  v3 = 0;
  v16 = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)v2 + 12))(v2, (char *)this + 12, 12);
  if ( *((_BYTE *)this + 12) == 80 || *((_BYTE *)this + 13) == 65 )
  {
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 2) + 24))(
      *((_DWORD *)this + 2),
      *((_DWORD *)this + 4),
      0);
    v6 = *((_DWORD *)this + 5) >> 6;
    if ( v6 )
    {
      for ( i = 0; i != v6; ++i )
      {
        v8 = v14 - (_DWORD)v15;
        if ( (unsigned int)(v14 - (_DWORD)v15) < 0x3A )
          v8 = 58;
        if ( v15 != v13 )
          v5 = v13[0];
        v9 = v8 + 1;
        if ( v15 == v13 )
          v10 = 16;
        else
          v10 = v5 - (_DWORD)v15;
        if ( v9 >= v10 )
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_reserve(
            v13,
            v9);
        (*(void (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 2) + 12))(*((_DWORD *)this + 2), v12, 56);
        v12[56] = 0;
        v11 = LC_API_STRLEN_0(v12);
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
          v13,
          v12,
          &v12[v11]);
        glitch::io::CPakReader::extractFilename(this, (glitch::io::SPakFileEntry *)v13);
        (*(void (__fastcall **)(_DWORD, int *, int))(**((_DWORD **)this + 2) + 12))(*((_DWORD *)this + 2), &v16, 4);
        (*(void (__fastcall **)(_DWORD, int *, int))(**((_DWORD **)this + 2) + 12))(*((_DWORD *)this + 2), &v17, 4);
        std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          (glitch::io::SPakFileEntry **)this + 6,
          (const glitch::io::SPakFileEntry *)v13);
      }
    }
    v3 = 1;
  }
  glitch::io::SPakFileEntry::~SPakFileEntry((glitch::io::SPakFileEntry *)v13);
  return v3;
}


// ===== 57002c glitch::io::CPakReader::CPakReader(glitch::io::IReadFile *,bool,bool) =====
glitch::io::CPakReader *__fastcall glitch::io::CPakReader::CPakReader(
        glitch::io::CPakReader *this,
        glitch::io::IReadFile *a2,
        bool a3,
        bool a4)
{
  glitch::io::SPakFileEntry *v5; // r0
  unsigned int v6; // r1

  *(_DWORD *)this = off_974490;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 36) = a3;
  *((_BYTE *)this + 37) = a4;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  if ( a2 )
  {
    ++*((_DWORD *)a2 + 1);
    glitch::io::CPakReader::scanLocalHeader(this);
    v5 = *((glitch::io::SPakFileEntry **)this + 6);
    v6 = -858993459 * ((*((_DWORD *)this + 7) - (int)v5) >> 4);
    if ( v6 > 1 )
      glitch::core::heapsort<glitch::io::SPakFileEntry>(v5, v6);
  }
  return this;
}


// ===== 5700c4 glitch::io::CPakReader::CPakReader(glitch::io::IReadFile *,bool,bool) =====
glitch::io::CPakReader *__fastcall glitch::io::CPakReader::CPakReader(
        glitch::io::CPakReader *this,
        glitch::io::IReadFile *a2,
        bool a3,
        bool a4)
{
  glitch::io::SPakFileEntry *v5; // r0
  unsigned int v6; // r1

  *(_DWORD *)this = off_974490;
  *((_DWORD *)this + 1) = 1;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 36) = a3;
  *((_BYTE *)this + 37) = a4;
  *((_DWORD *)this + 2) = a2;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  if ( a2 )
  {
    ++*((_DWORD *)a2 + 1);
    glitch::io::CPakReader::scanLocalHeader(this);
    v5 = *((glitch::io::SPakFileEntry **)this + 6);
    v6 = -858993459 * ((*((_DWORD *)this + 7) - (int)v5) >> 4);
    if ( v6 > 1 )
      glitch::core::heapsort<glitch::io::SPakFileEntry>(v5, v6);
  }
  return this;
}


// ===== 57015c glitch::core::binary_search<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>(std::vector<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::io::SPakFileEntry const&) =====
int __fastcall glitch::core::binary_search<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>(
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
  v7 = std::priv::__lower_bound<glitch::io::SPakFileEntry const*,glitch::io::SPakFileEntry,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,std::priv::__less_2<glitch::io::SPakFileEntry,glitch::io::SPakFileEntry>,int>(
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
  return -858993459 * ((v7 - *a1) >> 4);
}


// ===== 5702b4 glitch::io::CPakReader::findFile(char const*) =====
int __fastcall glitch::io::CPakReader::findFile(glitch::io::CPakReader *this, char *a2)
{
  size_t v4; // r0
  int v5; // r2
  unsigned int v6; // r3
  char v7; // r1
  _BYTE *v8; // r2
  int v9; // r6
  _BYTE v11[24]; // [sp+4h] [bp-54h] BYREF
  _DWORD v12[4]; // [sp+1Ch] [bp-3Ch] BYREF
  int v13; // [sp+2Ch] [bp-2Ch]
  int v14; // [sp+30h] [bp-28h]

  glitch::io::SPakFileEntry::SPakFileEntry((glitch::io::SPakFileEntry *)v11);
  v4 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v12,
    a2,
    &a2[v4]);
  if ( *((_BYTE *)this + 36) )
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
  if ( *((_BYTE *)this + 37) )
    glitch::io::CPakReader::deletePathFromFilename((int)this, (int)v12);
  v9 = glitch::core::binary_search<glitch::io::SPakFileEntry,glitch::core::SAllocator<glitch::io::SPakFileEntry,(glitch::memory::E_MEMORY_HINT)0>>(
         (int *)this + 6,
         (int)v11);
  glitch::io::SPakFileEntry::~SPakFileEntry((glitch::io::SPakFileEntry *)v11);
  return v9;
}


// ===== 5703b8 glitch::io::CPakReader::openFile(char const*) =====
int __fastcall glitch::io::CPakReader::openFile(glitch::io::CPakReader *this, char *a2)
{
  int File; // r1

  File = glitch::io::CPakReader::findFile(this, a2);
  if ( File == -1 )
    return 0;
  else
    return glitch::io::CPakReader::openFile(this, File);
}


// ===== 5703e4 glitch::io::CReadFile::isOpen(void) =====
bool __fastcall glitch::io::CReadFile::isOpen(glitch::io::CReadFile *this)
{
  return *((_DWORD *)this + 3) != 0;
}


// ===== 5703f4 glitch::io::CReadFile::readAsync(void *,uint,void (*)(int,int,glitch::io::IReadFile *,void *),void *) =====
int __fastcall glitch::io::CReadFile::readAsync(
        glitch::io::CReadFile *this,
        void *a2,
        unsigned int a3,
        void (*a4)(int, int, glitch::io::IReadFile *, void *),
        void *a5)
{
  int (__fastcall *v9)(glitch::io::CReadFile *, void *, unsigned int, int, void (*)(int, int, glitch::io::IReadFile *, void *), void *); // r5
  int v10; // r0

  v9 = *(int (__fastcall **)(glitch::io::CReadFile *, void *, unsigned int, int, void (*)(int, int, glitch::io::IReadFile *, void *), void *))(*(_DWORD *)this + 20);
  v10 = (*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)this + 36))(this);
  return v9(this, a2, a3, v10, a4, a5);
}


// ===== 570444 glitch::io::CReadFile::readAsync(void *,uint,long,void (*)(int,int,glitch::io::IReadFile *,void *),void *) =====
int __fastcall glitch::io::CReadFile::readAsync(
        glitch::io::CReadFile *this,
        void *a2,
        unsigned int a3,
        int a4,
        void (*a5)(int, int, glitch::io::IReadFile *, void *),
        void *a6)
{
  return 1;
}


// ===== 57044c glitch::io::CReadFile::getSize(void) =====
int __fastcall glitch::io::CReadFile::getSize(glitch::io::CReadFile *this)
{
  return *((_DWORD *)this + 4);
}


// ===== 570454 glitch::io::CReadFile::getFileName(void) =====
int __fastcall glitch::io::CReadFile::getFileName(glitch::io::CReadFile *this)
{
  return *((_DWORD *)this + 10);
}


// ===== 57045c glitch::io::CReadFile::getFullPath(void) =====
int __fastcall glitch::io::CReadFile::getFullPath(glitch::io::CReadFile *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 28);
}


// ===== 570468 `global constructor keyed to'.._source_glitch_io_CReadFile.cpp =====
void `global constructor keyed to'.._source_glitch_io_CReadFile.cpp()
{
  dword_9F67C0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F67BC = 1056964608;
}


// ===== 570488 glitch::io::CReadFile::seek(long,bool) =====
int __fastcall glitch::io::CReadFile::seek(glitch::io::CReadFile *this, int a2, int a3)
{
  int result; // r0

  result = (*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)this + 60))(this);
  if ( result )
    return fseek(*(FILE **)(*((_DWORD *)this + 3) + 4), a2, a3) == 0;
  return result;
}


// ===== 5704cc glitch::io::CReadFile::openFile(void) =====
void __fastcall glitch::io::CReadFile::openFile(glitch::io::CReadFile *this)
{
  char *v1; // r1
  glitch::io::CFile *v3; // r3
  glitch::io::CFile *v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // r3
  glitch::io::CFile *v8; // r0
  glitch::io::CFile *v9; // [sp+4h] [bp-4h] BYREF

  v1 = *((char **)this + 10);
  if ( *((char **)this + 9) == v1 )
  {
    v8 = *((glitch::io::CFile **)this + 3);
    *((_DWORD *)this + 3) = 0;
    if ( v8 )
      glitch::ISharedObject<glitch::io::CFile>::drop(v8);
  }
  else
  {
    glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v9, v1, "rb");
    v3 = v9;
    if ( v9 )
      ++*(_DWORD *)v9;
    v4 = *((glitch::io::CFile **)this + 3);
    *((_DWORD *)this + 3) = v3;
    if ( v4 )
      glitch::ISharedObject<glitch::io::CFile>::drop(v4);
    if ( v9 )
      glitch::ISharedObject<glitch::io::CFile>::drop(v9);
    v5 = *((_DWORD *)this + 3);
    if ( v5 )
    {
      fseek(*(FILE **)(v5 + 4), 0, 2);
      v6 = (*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)this + 36))(this);
      v7 = *((_DWORD *)this + 3);
      *((_DWORD *)this + 4) = v6;
      fseek(*(FILE **)(v7 + 4), 0, 0);
      *((_BYTE *)this + 44) = *(_BYTE *)(*((_DWORD *)this + 3) + 36);
    }
  }
}


// ===== 5705a8 glitch::io::CReadFile::getPos(void) =====
int __fastcall glitch::io::CReadFile::getPos(glitch::io::CReadFile *this)
{
  return ftell(*(FILE **)(*((_DWORD *)this + 3) + 4));
}


// ===== 5705b4 glitch::io::CReadFile::read(void *,uint) =====
size_t __fastcall glitch::io::CReadFile::read(glitch::io::CReadFile *this, void *a2, size_t a3)
{
  size_t result; // r0
  int v7; // r7
  int v8; // r12
  char v9; // r7
  int i; // r3

  result = (*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)this + 60))(this);
  if ( result )
  {
    v7 = (*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)this + 36))(this);
    result = fread(a2, 1u, a3, *(FILE **)(*((_DWORD *)this + 3) + 4));
    if ( *((_BYTE *)this + 44) )
    {
      if ( v7 <= 3 )
      {
        v8 = 4 - v7;
        if ( 4 - v7 >= a3 )
          v8 = a3;
        if ( v8 > 0 )
        {
          v9 = ~(_BYTE)v7;
          for ( i = 0; i != v8; ++i )
            *((_BYTE *)a2 + i) += v9--;
        }
      }
    }
  }
  return result;
}


// ===== 570660 glitch::io::CReadFile::~CReadFile() =====
void __fastcall glitch::io::CReadFile::~CReadFile(glitch::io::CReadFile *this)
{
  char *v2; // r1
  char *v3; // r0
  glitch::io::CFile *v4; // r0

  *(_DWORD *)this = off_9744A8;
  v2 = (char *)this + 20;
  v3 = *((char **)this + 10);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  v4 = *((glitch::io::CFile **)this + 3);
  if ( v4 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v4);
}


// ===== 5706bc glitch::io::CReadFile::~CReadFile() =====
void __fastcall glitch::io::CReadFile::~CReadFile(glitch::io::CReadFile *this)
{
  glitch::io::CReadFile::~CReadFile(this);
  LC_API_FREE_0(this);
}


// ===== 5706d8 glitch::io::CReadFile::~CReadFile() =====
void __fastcall glitch::io::CReadFile::~CReadFile(glitch::io::CReadFile *this)
{
  char *v2; // r1
  char *v3; // r0
  glitch::io::CFile *v4; // r0

  *(_DWORD *)this = off_9744A8;
  v2 = (char *)this + 20;
  v3 = *((char **)this + 10);
  if ( v3 != v2 && v3 )
    GlitchFree(v3);
  v4 = *((glitch::io::CFile **)this + 3);
  if ( v4 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v4);
}


// ===== 570734 glitch::io::CReadFile::CReadFile(char const*,bool) =====
glitch::io::CReadFile *__fastcall glitch::io::CReadFile::CReadFile(glitch::io::CReadFile *this, char *a2, bool a3)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9744A8;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 5,
    a2);
  *((_BYTE *)this + 44) = a3;
  glitch::io::CReadFile::openFile(this);
  if ( *((_BYTE *)this + 44) && *((int *)this + 4) <= 3 )
    *((_BYTE *)this + 44) = 0;
  return this;
}


// ===== 5707b4 glitch::io::createReadFile(char const*) =====
glitch::io::CReadFile *__fastcall glitch::io::createReadFile(glitch::io *this, const char *a2)
{
  glitch::io::CReadFile *v3; // r4

  v3 = (glitch::io::CReadFile *)operator new(0x30u, 0);
  glitch::io::CReadFile::CReadFile(v3, (char *)this, 0);
  if ( (*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)v3 + 60))(v3) )
    return v3;
  glitch::IReferenceCounted::drop(v3);
  return nullptr;
}


// ===== 570808 glitch::io::CReadFile::clone(void) =====
glitch::io::CReadFile *__fastcall glitch::io::CReadFile::clone(glitch::io::CReadFile *this)
{
  char *v2; // r6
  glitch::io::CReadFile *v3; // r4
  int v4; // r2
  glitch::io::CReadFile *v5; // r0
  int v6; // r3
  void (__fastcall *v7)(glitch::io::CReadFile *, int, _DWORD); // r5
  int v8; // r0

  v2 = (char *)(*(int (__fastcall **)(glitch::io::CReadFile *))(*(_DWORD *)this + 44))(this);
  v3 = (glitch::io::CReadFile *)operator new(0x30u, 0);
  glitch::io::CReadFile::CReadFile(v3, v2, 0);
  v4 = *(_DWORD *)v3;
  v5 = this;
  *((_BYTE *)v3 + 44) = *((_BYTE *)this + 44);
  v6 = *(_DWORD *)this;
  v7 = *(void (__fastcall **)(glitch::io::CReadFile *, int, _DWORD))(v4 + 24);
  v8 = (*(int (__fastcall **)(glitch::io::CReadFile *))(v6 + 36))(v5);
  v7(v3, v8, 0);
  return v3;
}


// ===== 570874 glitch::io::CReadFile::CReadFile(char const*,bool) =====
glitch::io::CReadFile *__fastcall glitch::io::CReadFile::CReadFile(glitch::io::CReadFile *this, char *a2, bool a3)
{
  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_9744A8;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 5,
    a2);
  *((_BYTE *)this + 44) = a3;
  glitch::io::CReadFile::openFile(this);
  if ( *((_BYTE *)this + 44) && *((int *)this + 4) <= 3 )
    *((_BYTE *)this + 44) = 0;
  return this;
}


// ===== 5708f4 glitch::io::IWriteFile::~IWriteFile() =====
void __fastcall glitch::io::IWriteFile::~IWriteFile(glitch::io::IWriteFile *this)
{
  ;
}


// ===== 5708f8 glitch::io::CWriteFile::getFileName(void) =====
int __fastcall glitch::io::CWriteFile::getFileName(glitch::io::CWriteFile *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 570900 glitch::io::CWriteFile::getFullPath(void) =====
int __fastcall glitch::io::CWriteFile::getFullPath(glitch::io::CWriteFile *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 8) + 28);
}


// ===== 57090c `global constructor keyed to'.._source_glitch_io_CWriteFile.cpp =====
void `global constructor keyed to'.._source_glitch_io_CWriteFile.cpp()
{
  dword_9F67CC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F67C8 = 1056964608;
}


// ===== 57092c glitch::io::CWriteFile::seek(long,bool) =====
int __fastcall glitch::io::CWriteFile::seek(glitch::io::CWriteFile *this, int a2, bool a3)
{
  int result; // r0

  result = *((_DWORD *)this + 8);
  if ( result )
    return fseek(*(FILE **)(result + 4), a2, a3) == 0;
  return result;
}


// ===== 570950 glitch::io::CWriteFile::getPos(void) =====
int __fastcall glitch::io::CWriteFile::getPos(glitch::io::CWriteFile *this)
{
  return ftell(*(FILE **)(*((_DWORD *)this + 8) + 4));
}


// ===== 57095c glitch::io::CWriteFile::openFile(bool) =====
void __fastcall glitch::io::CWriteFile::openFile(glitch::io::CWriteFile *this, int a2)
{
  const char *v3; // r2
  glitch::io::CFile *v4; // r3
  glitch::io::CFile *v5; // r0
  int v6; // r3
  int v7; // r0
  int v8; // r3
  glitch::io::CFile *v9; // r0
  glitch::io::CFile *v10; // [sp+4h] [bp-4h] BYREF

  if ( *((_DWORD *)this + 6) == *((_DWORD *)this + 7) )
  {
    v9 = *((glitch::io::CFile **)this + 8);
    *((_DWORD *)this + 8) = 0;
    if ( v9 )
      glitch::ISharedObject<glitch::io::CFile>::drop(v9);
  }
  else
  {
    if ( a2 )
      v3 = "ab";
    else
      v3 = "wb";
    glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v10, *((char **)this + 7), v3);
    v4 = v10;
    if ( v10 )
      ++*(_DWORD *)v10;
    v5 = *((glitch::io::CFile **)this + 8);
    *((_DWORD *)this + 8) = v4;
    if ( v5 )
      glitch::ISharedObject<glitch::io::CFile>::drop(v5);
    if ( v10 )
      glitch::ISharedObject<glitch::io::CFile>::drop(v10);
    v6 = *((_DWORD *)this + 8);
    if ( v6 )
    {
      fseek(*(FILE **)(v6 + 4), 0, 2);
      v7 = ftell(*(FILE **)(*((_DWORD *)this + 8) + 4));
      v8 = *((_DWORD *)this + 8);
      *((_DWORD *)this + 9) = v7;
      fseek(*(FILE **)(v8 + 4), 0, 0);
    }
  }
}


// ===== 570a44 glitch::io::IWriteFile::~IWriteFile() =====
void __fastcall glitch::io::IWriteFile::~IWriteFile(glitch::io::IWriteFile *this)
{
  LC_API_FREE_0(this);
}


// ===== 570a58 glitch::io::CWriteFile::flush(void) =====
int __fastcall glitch::io::CWriteFile::flush(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 32);
  if ( v1 )
    return fflush(*(FILE **)(v1 + 4));
  return this;
}


// ===== 570a6c glitch::io::CWriteFile::write(void const*,uint) =====
size_t __fastcall glitch::io::CWriteFile::write(glitch::io::CWriteFile *this, const void *ptr, size_t a3)
{
  int v3; // r3

  v3 = *((_DWORD *)this + 8);
  if ( v3 )
    return fwrite(ptr, 1u, a3, *(FILE **)(v3 + 4));
  else
    return 0;
}


// ===== 570a90 glitch::io::CWriteFile::~CWriteFile() =====
void __fastcall glitch::io::CWriteFile::~CWriteFile(glitch::io::CWriteFile *this)
{
  glitch::io::CFile *v2; // r0
  char *v3; // r0

  v2 = *((glitch::io::CFile **)this + 8);
  *(_DWORD *)this = off_974520;
  if ( v2 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v2);
  v3 = *((char **)this + 7);
  if ( v3 != (char *)this + 8 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 570aec glitch::io::CWriteFile::~CWriteFile() =====
void __fastcall glitch::io::CWriteFile::~CWriteFile(glitch::io::CWriteFile *this)
{
  glitch::io::CWriteFile::~CWriteFile(this);
  LC_API_FREE_0(this);
}


// ===== 570b08 glitch::io::CWriteFile::~CWriteFile() =====
void __fastcall glitch::io::CWriteFile::~CWriteFile(glitch::io::CWriteFile *this)
{
  glitch::io::CFile *v2; // r0
  char *v3; // r0

  v2 = *((glitch::io::CFile **)this + 8);
  *(_DWORD *)this = off_974520;
  if ( v2 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v2);
  v3 = *((char **)this + 7);
  if ( v3 != (char *)this + 8 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 570b64 std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block()
{
  ;
}


// ===== 570b68 glitch::io::CWriteFile::CWriteFile(char const*,bool) =====
glitch::io::CWriteFile *__fastcall glitch::io::CWriteFile::CWriteFile(glitch::io::CWriteFile *this, char *a2, int a3)
{
  _DWORD *v4; // r5
  size_t v7; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_974520;
  v4 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 8) = 0;
  v7 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v7]);
  glitch::io::CWriteFile::openFile(this, a3);
  return this;
}


// ===== 570bf4 glitch::io::createWriteFile(char const*,bool) =====
glitch::io::CWriteFile *__fastcall glitch::io::createWriteFile(glitch::io *this, const char *a2, bool a3)
{
  glitch::io::CWriteFile *v5; // r4

  v5 = (glitch::io::CWriteFile *)operator new(0x28u, 0);
  glitch::io::CWriteFile::CWriteFile(v5, (char *)this, (int)a2);
  if ( *((_DWORD *)v5 + 8) )
    return v5;
  glitch::IReferenceCounted::drop(v5);
  return nullptr;
}


// ===== 570c40 glitch::io::CWriteFile::CWriteFile(char const*,bool) =====
glitch::io::CWriteFile *__fastcall glitch::io::CWriteFile::CWriteFile(glitch::io::CWriteFile *this, char *a2, int a3)
{
  _DWORD *v4; // r5
  size_t v7; // r0

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_974520;
  v4 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 8) = 0;
  v7 = LC_API_STRLEN_0(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v4,
    a2,
    &a2[v7]);
  glitch::io::CWriteFile::openFile(this, a3);
  return this;
}


// ===== 570ccc glitch::io::IAttributesReader::~IAttributesReader() =====
void __fastcall glitch::io::IAttributesReader::~IAttributesReader(glitch::io::IAttributesReader *this)
{
  ;
}


// ===== 570cd0 glitch::io::CXMLAttributesReader::CXMLAttributesReader(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *,bool,wchar_t const*) =====
int __fastcall glitch::io::CXMLAttributesReader::CXMLAttributesReader(int result, int a2, char a3, int a4)
{
  *(_DWORD *)(result + 12) = a4;
  *(_BYTE *)(result + 8) = a3;
  *(_DWORD *)(result + 4) = a2;
  *(_DWORD *)result = off_974568;
  ++*(_DWORD *)(a2 + 4);
  return result;
}


// ===== 570d18 glitch::io::CXMLAttributesReader::CXMLAttributesReader(glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted> *,bool,wchar_t const*) =====
int __fastcall glitch::io::CXMLAttributesReader::CXMLAttributesReader(int result, int a2, char a3, int a4)
{
  *(_DWORD *)(result + 12) = a4;
  *(_BYTE *)(result + 8) = a3;
  *(_DWORD *)(result + 4) = a2;
  *(_DWORD *)result = off_974568;
  ++*(_DWORD *)(a2 + 4);
  return result;
}


// ===== 570d60 glitch::io::CXMLAttributesReader::~CXMLAttributesReader() =====
void __fastcall glitch::io::CXMLAttributesReader::~CXMLAttributesReader(glitch::io::CXMLAttributesReader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 1);
  *(_DWORD *)this = off_974568;
  glitch::IReferenceCounted::drop(v2);
}


// ===== 570d98 glitch::io::CXMLAttributesReader::~CXMLAttributesReader() =====
void __fastcall glitch::io::CXMLAttributesReader::~CXMLAttributesReader(glitch::io::CXMLAttributesReader *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 1);
  *(_DWORD *)this = off_974568;
  glitch::IReferenceCounted::drop(v2);
}


// ===== 570dd0 std::priv::__uninitialized_move<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::__false_type>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::__false_type,std::__true_type const&) =====
_DWORD *__fastcall std::priv::__uninitialized_move<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> *,std::__false_type>(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  int v3; // r3
  _DWORD *v4; // r10
  _DWORD *v5; // r12
  int v6; // r9
  _DWORD *v7; // r4
  int v8; // r5
  _DWORD *v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r1
  int v17; // r2
  int v18; // r3
  int v19; // r1
  int v20; // r2
  int v21; // r3
  int v22; // r2
  int v23; // r3

  v3 = (a2 - (int)a1) >> 3;
  v4 = a3;
  v5 = a1;
  v6 = 954437177 * v3;
  if ( 954437177 * v3 > 0 )
  {
    v7 = a3;
    v8 = 954437177 * v3;
    while ( 1 )
    {
      v7[17] = v5[17];
      v9 = (_DWORD *)v5[17];
      if ( v9 == v5 )
      {
        v10 = v5[1];
        v11 = v5[2];
        v12 = v5[3];
        *v7 = *v5;
        v7[1] = v10;
        v7[2] = v11;
        v7[3] = v12;
        v13 = v5[5];
        v14 = v5[6];
        v15 = v5[7];
        v7[4] = v5[4];
        v7[5] = v13;
        v7[6] = v14;
        v7[7] = v15;
        v16 = v5[9];
        v17 = v5[10];
        v18 = v5[11];
        v7[8] = v5[8];
        v7[9] = v16;
        v7[10] = v17;
        v7[11] = v18;
        v19 = v5[13];
        v20 = v5[14];
        v21 = v5[15];
        v7[12] = v5[12];
        v7[13] = v19;
        v7[14] = v20;
        v7[15] = v21;
        v22 = v5[16];
        v23 = v5[17];
        --v8;
        v7[17] = v7;
        v7[16] = (char *)v7 + ((v22 - v23) & 0xFFFFFFFC);
        v7 += 18;
        if ( !v8 )
        {
LABEL_7:
          v4 += 18 * v6;
          return v4;
        }
      }
      else
      {
        v7[17] = v9;
        --v8;
        v7[16] = v5[16];
        *v7 = *v5;
        v5[17] = 0;
        v7 += 18;
        if ( !v8 )
          goto LABEL_7;
      }
      v5 += 18;
    }
  }
  return v4;
}


// ===== 570eb8 `global constructor keyed to'.._source_glitch_io_CXMLAttributesReader.cpp =====
void `global constructor keyed to'.._source_glitch_io_CXMLAttributesReader.cpp()
{
  dword_9F67D8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F67D4 = 1056964608;
}


// ===== 570ed8 std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
        _DWORD *a1,
        int a2,
        int a3)
{
  int v6; // r1

  v6 = ((*(_DWORD *)(a3 + 64) - *(_DWORD *)(a3 + 68)) >> 2) + ((*(_DWORD *)(a2 + 64) - *(_DWORD *)(a2 + 68)) >> 2);
  a1[16] = a1;
  a1[17] = a1;
  std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    a1,
    v6 + 1);
  *(_DWORD *)a1[16] = 0;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    *(_DWORD **)(a2 + 68),
    *(_DWORD **)(a2 + 64));
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
    a1,
    *(_DWORD **)(a3 + 68),
    *(_DWORD **)(a3 + 64));
  return a1;
}


// ===== 570f4c glitch::io::CXMLAttributesReader::~CXMLAttributesReader() =====
void __fastcall glitch::io::CXMLAttributesReader::~CXMLAttributesReader(glitch::io::CXMLAttributesReader *this)
{
  glitch::io::CXMLAttributesReader::~CXMLAttributesReader(this);
  LC_API_FREE_0(this);
}


// ===== 570f68 glitch::io::IAttributesReader::~IAttributesReader() =====
void __fastcall glitch::io::IAttributesReader::~IAttributesReader(glitch::io::IAttributesReader *this)
{
  LC_API_FREE_0(this);
}


// ===== 570f7c std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        int a1,
        int a2,
        int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r7
  _DWORD *v9; // r5
  _DWORD *v10; // r8
  void **v11; // r6
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
  v10[16] = v10;
  v10[17] = v10;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v10,
    *(_BYTE **)(a3 + 68),
    *(_BYTE **)(a3 + 64));
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


// ===== 57108c glitch::io::CXMLAttributesReader::readAttributeFromXML(glitch::io::IAttributes *) =====
void __fastcall glitch::io::CXMLAttributesReader::readAttributeFromXML(
        glitch::io::CXMLAttributesReader *this,
        glitch::io::IAttributes *a2)
{
  wchar_t *v4; // r0
  const wchar_t *v5; // r0
  int v6; // r3
  int v7; // r11
  glitch::io::IAttributes *v8; // r12
  int v9; // r4
  int (__fastcall *v10)(int, _DWORD); // r6
  wchar_t *v11; // r0
  void *v12; // r11
  glitch::io::IAttributes *v13; // r8
  void (__fastcall *v14)(glitch::io::IAttributes *, void *, void ***, _DWORD); // r7
  void *v15; // r11
  const wchar_t *v16; // r0
  void *v17; // r0
  int *v18; // r0
  void *v19; // r7
  int v20; // r3
  void (__fastcall *v21)(glitch::io::IAttributes *, void *, int, _DWORD); // r11
  int v22; // r0
  int *v23; // r0
  void *v24; // r7
  int v25; // r3
  void (__fastcall *v26)(glitch::io::IAttributes *, void *, int, _DWORD); // r10
  int v27; // r0
  int *v28; // r0
  int *v29; // r0
  int *v30; // r0
  void *v31; // r11
  const wchar_t *v32; // r0
  int *v33; // r0
  void *v34; // r10
  int v35; // r3
  void (__fastcall *v36)(glitch::io::IAttributes *, void *, int, _DWORD); // r7
  int v37; // r0
  int *v38; // r0
  int *v39; // r0
  int *v40; // r0
  int *v41; // r0
  int *v42; // r0
  int *v43; // r0
  int *v44; // r0
  int *v45; // r0
  glitch::io::IAttributes *v46; // [sp+8h] [bp-1FCh]
  void (__fastcall *v47)(glitch::io::IAttributes *, void *, void *, _DWORD, _DWORD); // [sp+8h] [bp-1FCh]
  void (__fastcall *v48)(glitch::io::IAttributes *, void *, _BYTE *, _DWORD); // [sp+8h] [bp-1FCh]
  int v49; // [sp+20h] [bp-1E4h]
  _DWORD v50[18]; // [sp+28h] [bp-1DCh] BYREF
  _DWORD v51[18]; // [sp+70h] [bp-194h] BYREF
  _DWORD v52[18]; // [sp+B8h] [bp-14Ch] BYREF
  _DWORD v53[18]; // [sp+100h] [bp-104h] BYREF
  _DWORD v54[17]; // [sp+148h] [bp-BCh] BYREF
  void *v55; // [sp+18Ch] [bp-78h]
  void **v56[3]; // [sp+190h] [bp-74h] BYREF
  void **v57[3]; // [sp+19Ch] [bp-68h] BYREF
  _BYTE v58[20]; // [sp+1B4h] [bp-50h] BYREF
  _BYTE *v59; // [sp+1C8h] [bp-3Ch]
  _BYTE v60[20]; // [sp+1CCh] [bp-38h] BYREF
  void *v61; // [sp+1E0h] [bp-24h]
  _BYTE v62[20]; // [sp+1E4h] [bp-20h] BYREF
  void *p; // [sp+1F8h] [bp-Ch]

  v4 = (wchar_t *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 60))(*((_DWORD *)this + 1));
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v54,
    v4);
  v5 = (const wchar_t *)(*(int (__fastcall **)(_DWORD, const char *))(**((_DWORD **)this + 1) + 36))(
                          *((_DWORD *)this + 1),
                          "n");
  glitch::core::stringw2stringc((glitch::core *)v62, v5);
  if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
         (int)v54,
         U"group") )
  {
    (*(void (__fastcall **)(glitch::io::IAttributes *, void *))(*(_DWORD *)a2 + 48))(a2, p);
    goto LABEL_26;
  }
  if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
         (int)v54,
         U"enum") )
  {
    v47 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, void *, _DWORD, _DWORD))(*(_DWORD *)a2 + 240);
    v15 = p;
    v16 = (const wchar_t *)(*(int (__fastcall **)(_DWORD, const wchar_t *))(**((_DWORD **)this + 1) + 36))(
                             *((_DWORD *)this + 1),
                             U"value");
    glitch::core::stringw2stringc((glitch::core *)v60, v16);
    v47(a2, v15, v61, 0, 0);
    v17 = v61;
    if ( v61 == v60 )
      goto LABEL_26;
  }
  else
  {
    if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
           (int)v54,
           U"color") )
    {
      v23 = *((int **)this + 1);
      v24 = p;
      v25 = *v23;
      v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 284);
      goto LABEL_40;
    }
    if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
           (int)v54,
           U"colorf") )
    {
      v18 = *((int **)this + 1);
      v19 = p;
      v20 = *v18;
      v21 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 308);
      goto LABEL_38;
    }
    if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
           (int)v54,
           U"float") )
    {
      v28 = *((int **)this + 1);
      v24 = p;
      v25 = *v28;
      v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 104);
      goto LABEL_40;
    }
    if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
           (int)v54,
           U"int") )
    {
      v30 = *((int **)this + 1);
      v19 = p;
      v20 = *v30;
      v21 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 80);
      goto LABEL_38;
    }
    if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
           (int)v54,
           U"bool") )
    {
      v29 = *((int **)this + 1);
      v24 = p;
      v25 = *v29;
      v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 220);
      goto LABEL_40;
    }
    if ( !std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
            (int)v54,
            U"string") )
    {
      if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v54,
             U"texture") )
      {
        v33 = *((int **)this + 1);
        v24 = p;
        v25 = *v33;
        v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 692);
        goto LABEL_40;
      }
      if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v54,
             U"vector3d") )
      {
        v34 = p;
        v35 = **((_DWORD **)this + 1);
        v36 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 428);
        goto LABEL_48;
      }
      if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v54,
             U"vector4d") )
      {
        v34 = p;
        v35 = **((_DWORD **)this + 1);
        v36 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 452);
        goto LABEL_48;
      }
      if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v54,
             U"position") )
      {
        v38 = *((int **)this + 1);
        v19 = p;
        v20 = *v38;
        v21 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 476);
      }
      else
      {
        if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
               (int)v54,
               U"rect") )
        {
          v39 = *((int **)this + 1);
          v24 = p;
          v25 = *v39;
          v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 500);
          goto LABEL_40;
        }
        if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
               (int)v54,
               U"matrix") )
        {
          v40 = *((int **)this + 1);
          v19 = p;
          v20 = *v40;
          v21 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 524);
        }
        else
        {
          if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                 (int)v54,
                 U"quaternion") )
          {
            v41 = *((int **)this + 1);
            v24 = p;
            v25 = *v41;
            v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 548);
            goto LABEL_40;
          }
          if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                 (int)v54,
                 U"box3d") )
          {
            v42 = *((int **)this + 1);
            v19 = p;
            v20 = *v42;
            v21 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 572);
          }
          else
          {
            if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                   (int)v54,
                   U"plane") )
            {
              v43 = *((int **)this + 1);
              v24 = p;
              v25 = *v43;
              v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 596);
              goto LABEL_40;
            }
            if ( !std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                    (int)v54,
                    U"triangle") )
            {
              if ( !std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                      (int)v54,
                      U"line2d") )
              {
                if ( !std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                        (int)v54,
                        U"line3d") )
                {
                  if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                         (int)v54,
                         U"stringwarray") )
                  {
                    v6 = *((_DWORD *)this + 1);
                    memset(v57, 0, sizeof(v57));
                    v49 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v6 + 44))(v6, "c");
                    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
                      v53,
                      U"value");
                    v7 = 0;
                    v8 = a2;
                    while ( v7 < v49 )
                    {
                      v46 = v8;
                      glitch::core::int2stringw((glitch::core *)v52, v7);
                      v9 = *((_DWORD *)this + 1);
                      ++v7;
                      v10 = *(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v9 + 36);
                      std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                        v51,
                        (int)v53,
                        (int)v52);
                      v11 = (wchar_t *)v10(v9, v51[17]);
                      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
                        v50,
                        v11);
                      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
                        (int)v57,
                        (unsigned int)v50);
                      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v50);
                      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v51);
                      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v52);
                      v8 = v46;
                    }
                    v12 = p;
                    v13 = v8;
                    v14 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, void ***, _DWORD))(*(_DWORD *)v8 + 196);
                    std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::vector(
                      v56,
                      (int *)v57);
                    v14(v13, v12, v56, 0);
                    std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v56);
                    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::~basic_string(v53);
                    std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v57);
                  }
                  else
                  {
                    std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
                      (int)v54,
                      U"binary");
                  }
                  goto LABEL_26;
                }
                v34 = p;
                v35 = **((_DWORD **)this + 1);
                v36 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 668);
LABEL_48:
                v37 = (*(int (**)(void))(v35 + 36))();
                v36(a2, v34, v37, 0);
                goto LABEL_26;
              }
              v44 = *((int **)this + 1);
              v24 = p;
              v25 = *v44;
              v26 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 644);
LABEL_40:
              v27 = (*(int (**)(void))(v25 + 36))();
              v26(a2, v24, v27, 0);
              goto LABEL_26;
            }
            v45 = *((int **)this + 1);
            v19 = p;
            v20 = *v45;
            v21 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, int, _DWORD))(*(_DWORD *)a2 + 620);
          }
        }
      }
LABEL_38:
      v22 = (*(int (**)(void))(v20 + 36))();
      v21(a2, v19, v22, 0);
      goto LABEL_26;
    }
    v48 = *(void (__fastcall **)(glitch::io::IAttributes *, void *, _BYTE *, _DWORD))(*(_DWORD *)a2 + 124);
    v31 = p;
    v32 = (const wchar_t *)(*(int (__fastcall **)(_DWORD, const wchar_t *))(**((_DWORD **)this + 1) + 36))(
                             *((_DWORD *)this + 1),
                             U"value");
    glitch::core::stringw2stringc((glitch::core *)v58, v32);
    v48(a2, v31, v59, 0);
    v17 = v59;
    if ( v59 == v58 )
      goto LABEL_26;
  }
  if ( v17 )
    GlitchFree(v17);
LABEL_26:
  if ( p != v62 && p )
    GlitchFree(p);
  if ( v55 != v54 )
  {
    if ( v55 )
      GlitchFree(v55);
  }
}


// ===== 571920 glitch::io::CXMLAttributesReader::read(glitch::io::IAttributes *) =====
int __fastcall glitch::io::CXMLAttributesReader::read(
        glitch::io::CXMLAttributesReader *this,
        glitch::io::IAttributes *a2)
{
  const wchar_t *v4; // r5
  size_t v5; // r0
  int v6; // r0
  wchar_t *v7; // r0
  int v8; // r4
  wchar_t *v10; // r0
  void *v11[17]; // [sp+0h] [bp-9Ch] BYREF
  void *p; // [sp+44h] [bp-58h]
  _DWORD v13[17]; // [sp+48h] [bp-54h] BYREF
  void *v14; // [sp+8Ch] [bp-10h]

  (*(void (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)a2 + 44))(a2);
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v13,
    U"attributes");
  v4 = *((const wchar_t **)this + 3);
  if ( v4 )
  {
    v5 = wcslen(*((const wchar_t **)this + 3));
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)v13,
      v4,
      &v4[v5]);
  }
  if ( !*((_BYTE *)this + 8)
    || (v10 = (wchar_t *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 60))(*((_DWORD *)this + 1)),
        std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
          (int)v13,
          v10)) )
  {
LABEL_4:
    if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1)) )
      goto LABEL_13;
    while ( 1 )
    {
      v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 20))(*((_DWORD *)this + 1));
      if ( v6 == 1 )
      {
        glitch::io::CXMLAttributesReader::readAttributeFromXML(this, a2);
        goto LABEL_4;
      }
      if ( v6 != 2 )
        goto LABEL_4;
      v7 = (wchar_t *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 60))(*((_DWORD *)this + 1));
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v11,
        v7);
      if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v13,
             (int)v11) )
      {
        break;
      }
      if ( std::operator==<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
             (int)v11,
             U"group") )
      {
        (*(void (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)a2 + 60))(a2);
      }
      if ( p == v11 || !p )
        goto LABEL_4;
      GlitchFree(p);
      if ( !(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1)) )
        goto LABEL_13;
    }
    if ( p != v11 && p )
    {
      GlitchFree(p);
      v8 = 1;
    }
    else
    {
LABEL_13:
      v8 = 1;
    }
  }
  else
  {
    v8 = 0;
  }
  if ( v14 != v13 && v14 )
    GlitchFree(v14);
  return v8;
}


// ===== 571afc glitch::io::IAttributesWriter::~IAttributesWriter() =====
void __fastcall glitch::io::IAttributesWriter::~IAttributesWriter(glitch::io::IAttributesWriter *this)
{
  ;
}


// ===== 571b00 glitch::io::CXMLAttributesWriter::CXMLAttributesWriter(glitch::io::IXMLWriter *,bool,wchar_t const*) =====
int __fastcall glitch::io::CXMLAttributesWriter::CXMLAttributesWriter(int result, int a2, char a3, int a4)
{
  *(_DWORD *)(result + 12) = a4;
  *(_BYTE *)(result + 8) = a3;
  *(_DWORD *)(result + 4) = a2;
  *(_DWORD *)result = off_974598;
  ++*(_DWORD *)(a2 + 4);
  return result;
}


// ===== 571b48 glitch::io::CXMLAttributesWriter::CXMLAttributesWriter(glitch::io::IXMLWriter *,bool,wchar_t const*) =====
int __fastcall glitch::io::CXMLAttributesWriter::CXMLAttributesWriter(int result, int a2, char a3, int a4)
{
  *(_DWORD *)(result + 12) = a4;
  *(_BYTE *)(result + 8) = a3;
  *(_DWORD *)(result + 4) = a2;
  *(_DWORD *)result = off_974598;
  ++*(_DWORD *)(a2 + 4);
  return result;
}


// ===== 571b90 glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter() =====
void __fastcall glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter(glitch::io::CXMLAttributesWriter *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 1);
  *(_DWORD *)this = off_974598;
  glitch::IReferenceCounted::drop(v2);
}


// ===== 571bc8 glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter() =====
void __fastcall glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter(glitch::io::CXMLAttributesWriter *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 1);
  *(_DWORD *)this = off_974598;
  glitch::IReferenceCounted::drop(v2);
}


// ===== 571c00 `global constructor keyed to'.._source_glitch_io_CXMLAttributesWriter.cpp =====
void `global constructor keyed to'.._source_glitch_io_CXMLAttributesWriter.cpp()
{
  dword_9F67E4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F67E0 = 1056964608;
}


// ===== 571c20 glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter() =====
void __fastcall glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter(glitch::io::CXMLAttributesWriter *this)
{
  glitch::io::CXMLAttributesWriter::~CXMLAttributesWriter(this);
  LC_API_FREE_0(this);
}


// ===== 571c3c glitch::io::IAttributesWriter::~IAttributesWriter() =====
void __fastcall glitch::io::IAttributesWriter::~IAttributesWriter(glitch::io::IAttributesWriter *this)
{
  LC_API_FREE_0(this);
}


// ===== 571c50 std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>*,std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        int a1,
        int a2,
        int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r2
  size_t v8; // r7
  _DWORD *v9; // r5
  _DWORD *v10; // r8
  void **v11; // r6
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
  v10[16] = v10;
  v10[17] = v10;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v10,
    *(_BYTE **)(a3 + 68),
    *(_BYTE **)(a3 + 64));
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


// ===== 571d60 glitch::io::CXMLAttributesWriter::writeGroup(glitch::io::IAttributes *) =====
int __fastcall glitch::io::CXMLAttributesWriter::writeGroup(
        glitch::io::CXMLAttributesWriter *this,
        glitch::io::IAttributes *a2)
{
  int v3; // r0
  int v4; // r10
  void (__fastcall *v5)(int, const wchar_t *); // r6
  int v6; // r0
  int v7; // r7
  int v8; // r8
  int v9; // r7
  _DWORD *v10; // r1
  int i; // r3
  int j; // r11
  const char *v13; // r0
  int v14; // r7
  unsigned int v15; // r6
  int v16; // r6
  void (__fastcall *v17)(int, int, int, void ***, void ***); // r7
  int v18; // r0
  unsigned int k; // r5
  int result; // r0
  int v21; // r7
  void (__fastcall *v22)(int, int, int, const char *, void *, const wchar_t *, void *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD); // r9
  int v23; // r10
  const char *v24; // r0
  void *v25; // r8
  _BYTE v27[68]; // [sp+50h] [bp-34Ch] BYREF
  void *v28; // [sp+94h] [bp-308h]
  _BYTE v29[68]; // [sp+98h] [bp-304h] BYREF
  void *v30; // [sp+DCh] [bp-2C0h]
  _DWORD v31[17]; // [sp+E0h] [bp-2BCh] BYREF
  void *v32; // [sp+124h] [bp-278h]
  _BYTE v33[68]; // [sp+128h] [bp-274h] BYREF
  wchar_t *v34; // [sp+16Ch] [bp-230h]
  _DWORD v35[17]; // [sp+170h] [bp-22Ch] BYREF
  void *v36; // [sp+1B4h] [bp-1E8h]
  void *v37[17]; // [sp+1B8h] [bp-1E4h] BYREF
  void *v38; // [sp+1FCh] [bp-1A0h]
  _BYTE v39[64]; // [sp+200h] [bp-19Ch] BYREF
  _BYTE *v40; // [sp+240h] [bp-15Ch]
  void *v41; // [sp+244h] [bp-158h]
  _DWORD v42[17]; // [sp+248h] [bp-154h] BYREF
  void *v43; // [sp+28Ch] [bp-110h]
  _BYTE v44[68]; // [sp+290h] [bp-10Ch] BYREF
  void *v45; // [sp+2D4h] [bp-C8h]
  _DWORD v46[17]; // [sp+2D8h] [bp-C4h] BYREF
  void *v47; // [sp+31Ch] [bp-80h]
  _DWORD v48[16]; // [sp+320h] [bp-7Ch] BYREF
  _DWORD *v49; // [sp+360h] [bp-3Ch]
  void *p; // [sp+364h] [bp-38h]
  void **v51; // [sp+368h] [bp-34h] BYREF
  int v52; // [sp+36Ch] [bp-30h]
  void **v53[3]; // [sp+374h] [bp-28h] BYREF
  void **v54[3]; // [sp+380h] [bp-1Ch] BYREF

  v3 = (*(int (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)a2 + 72))(a2);
  if ( *(_DWORD *)(v3 + 16) != *(_DWORD *)(v3 + 20) )
  {
    v4 = *((_DWORD *)this + 1);
    v5 = *(void (__fastcall **)(int, const wchar_t *))(*(_DWORD *)v4 + 16);
    v6 = (*(int (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)a2 + 72))(a2);
    v7 = *(_DWORD *)(v6 + 16);
    v8 = *(_DWORD *)(v6 + 20);
    v49 = v48;
    v9 = v7 - v8;
    p = v48;
    std::priv::_String_base<wchar_t,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v48,
      v9 + 1);
    v10 = p;
    if ( v9 > 0 )
    {
      for ( i = 0; i != v9; ++i )
        v10[i] = *(char *)(v8 + i);
      v10 += i;
    }
    v49 = v10;
    *v10 = 0;
    v5(v4, U"group");
    if ( p != v48 && p )
      GlitchFree(p);
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 36))(*((_DWORD *)this + 1));
  }
  for ( j = 0; j < (*(int (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)a2 + 12))(a2); ++j )
  {
    if ( (*(int (__fastcall **)(glitch::io::IAttributes *, int))(*(_DWORD *)a2 + 24))(a2, j) == 22 )
    {
      memset(v54, 0, sizeof(v54));
      memset(v53, 0, sizeof(v53));
      (*(void (__fastcall **)(void ***, glitch::io::IAttributes *, int))(*(_DWORD *)a2 + 208))(&v51, a2, j);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v46,
        (wchar_t *)"n");
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int)v54,
        (unsigned int)v46);
      if ( v47 != v46 && v47 )
        GlitchFree(v47);
      v13 = (const char *)(*(int (__fastcall **)(glitch::io::IAttributes *, int))(*(_DWORD *)a2 + 16))(a2, j);
      glitch::core::stringc2stringw((glitch::core *)v44, v13);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int)v53,
        (unsigned int)v44);
      if ( v45 != v44 && v45 )
        GlitchFree(v45);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v42,
        (wchar_t *)"c");
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int)v54,
        (unsigned int)v42);
      if ( v43 != v42 && v43 )
        GlitchFree(v43);
      glitch::core::int2stringw((glitch::core *)v39, 954437177 * ((v52 - (int)v51) >> 3));
      v37[16] = v37;
      v38 = v37;
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v37,
        v41,
        v40);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        (int)v53,
        (unsigned int)v37);
      if ( v38 != v37 && v38 )
        GlitchFree(v38);
      std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v35,
        U"value");
      if ( 954437177 * ((v52 - (int)v51) >> 3) )
      {
        v14 = 0;
        v15 = 0;
        do
        {
          glitch::core::int2stringw((glitch::core *)v33, v15);
          std::operator+<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>(
            v31,
            (int)v35,
            v34);
          std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            (int)v54,
            (unsigned int)v31);
          ++v15;
          if ( v32 != v31 && v32 )
            GlitchFree(v32);
          std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
            (int)v53,
            (unsigned int)&v51[v14]);
          v14 += 18;
          if ( v34 != (wchar_t *)v33 && v34 )
            GlitchFree(v34);
        }
        while ( v15 < 954437177 * ((v52 - (int)v51) >> 3) );
      }
      v16 = *((_DWORD *)this + 1);
      v17 = *(void (__fastcall **)(int, int, int, void ***, void ***))(*(_DWORD *)v16 + 20);
      v18 = (*(int (__fastcall **)(glitch::io::IAttributes *, int))(*(_DWORD *)a2 + 32))(a2, j);
      v17(v16, v18, 1, v54, v53);
      if ( v36 != v35 && v36 )
        GlitchFree(v36);
      if ( v41 != v39 && v41 )
        GlitchFree(v41);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(&v51);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v53);
      std::vector<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v54);
    }
    else
    {
      v21 = *((_DWORD *)this + 1);
      v22 = *(void (__fastcall **)(int, int, int, const char *, void *, const wchar_t *, void *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v21 + 16);
      v23 = (*(int (__fastcall **)(glitch::io::IAttributes *, int))(*(_DWORD *)a2 + 32))(a2, j);
      v24 = (const char *)(*(int (__fastcall **)(glitch::io::IAttributes *, int))(*(_DWORD *)a2 + 16))(a2, j);
      glitch::core::stringc2stringw((glitch::core *)v29, v24);
      v25 = v30;
      (*(void (__fastcall **)(_BYTE *, glitch::io::IAttributes *, int))(*(_DWORD *)a2 + 164))(v27, a2, j);
      v22(v21, v23, 1, "n", v25, U"value", v28, 0, 0, 0, 0, 0, 0);
      if ( v28 != v27 && v28 )
        GlitchFree(v28);
      if ( v30 != v29 && v30 )
        GlitchFree(v30);
    }
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 36))(*((_DWORD *)this + 1));
  }
  for ( k = 0; k < (*(int (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)a2 + 64))(a2); ++k )
  {
    (*(void (**)(void))(*(_DWORD *)a2 + 68))();
    glitch::io::CXMLAttributesWriter::writeGroup(this, a2);
    (*(void (__fastcall **)(glitch::io::IAttributes *))(*(_DWORD *)a2 + 60))(a2);
  }
  result = (*(int (__fastcall **)(glitch::io::IAttributes *, unsigned int))(*(_DWORD *)a2 + 72))(a2, k);
  if ( *(_DWORD *)(result + 16) != *(_DWORD *)(result + 20) )
  {
    (*(void (__fastcall **)(_DWORD, const wchar_t *))(**((_DWORD **)this + 1) + 28))(*((_DWORD *)this + 1), U"group");
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 36))(*((_DWORD *)this + 1));
  }
  return result;
}


// ===== 5723f8 glitch::io::CXMLAttributesWriter::write(glitch::io::IAttributes *) =====
int __fastcall glitch::io::CXMLAttributesWriter::write(
        glitch::io::CXMLAttributesWriter *this,
        glitch::io::IAttributes *a2)
{
  const wchar_t *v4; // r7
  size_t v5; // r0
  _DWORD v7[17]; // [sp+2Ch] [bp-50h] BYREF
  void *p; // [sp+70h] [bp-Ch]

  if ( *((_BYTE *)this + 8) )
    (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1));
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v7,
    U"attributes");
  v4 = *((const wchar_t **)this + 3);
  if ( v4 )
  {
    v5 = wcslen(*((const wchar_t **)this + 3));
    std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      (int)v7,
      v4,
      &v4[v5]);
  }
  (*(void (__fastcall **)(_DWORD, void *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 1) + 16))(
    *((_DWORD *)this + 1),
    p,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0);
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 36))(*((_DWORD *)this + 1));
  glitch::io::CXMLAttributesWriter::writeGroup(this, a2);
  (*(void (__fastcall **)(_DWORD, void *))(**((_DWORD **)this + 1) + 28))(*((_DWORD *)this + 1), p);
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 36))(*((_DWORD *)this + 1));
  if ( p != v7 && p )
    GlitchFree(p);
  return 1;
}


// ===== 572520 glitch::io::IFileReadCallBack::~IFileReadCallBack() =====
void __fastcall glitch::io::IFileReadCallBack::~IFileReadCallBack(glitch::io::IFileReadCallBack *this)
{
  ;
}


// ===== 572524 glitch::io::CIrrXMLFileReadCallBack::~CIrrXMLFileReadCallBack() =====
void __fastcall glitch::io::CIrrXMLFileReadCallBack::~CIrrXMLFileReadCallBack(
        glitch::io::CIrrXMLFileReadCallBack *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 1);
  *(_DWORD *)this = off_9745B0;
  glitch::IReferenceCounted::drop(v2);
}


// ===== 57255c glitch::io::CIrrXMLFileReadCallBack::read(void *,int) =====
int __fastcall glitch::io::CIrrXMLFileReadCallBack::read(glitch::io::CIrrXMLFileReadCallBack *this, void *a2, int a3)
{
  return (*(int (__fastcall **)(_DWORD, void *, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), a2, a3);
}


// ===== 572578 glitch::io::CIrrXMLFileReadCallBack::getSize(void) =====
int __fastcall glitch::io::CIrrXMLFileReadCallBack::getSize(glitch::io::CIrrXMLFileReadCallBack *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 32))(*((_DWORD *)this + 1));
}


// ===== 572594 glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted>::~IIrrXMLReader() =====
void glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted>::~IIrrXMLReader()
{
  ;
}


// ===== 572598 glitch::io::IIrrXMLReader<char,glitch::IReferenceCounted>::~IIrrXMLReader() =====
void glitch::io::IIrrXMLReader<char,glitch::IReferenceCounted>::~IIrrXMLReader()
{
  ;
}


// ===== 57259c glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<ulong>(ulong *,char *,int) =====
_DWORD *__fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::convertTextData<unsigned long>(
        _DWORD *result,
        unsigned int *a2,
        int a3,
        int a4)
{
  unsigned int v4; // r12
  bool v5; // cc
  int v6; // r12
  unsigned int v7; // r4
  bool v8; // cc
  int v9; // r4
  unsigned int v10; // r12
  unsigned int *v11; // r4
  unsigned int v12; // t1

  v4 = result[8];
  v5 = v4 > 3;
  if ( v4 != 3 )
    v5 = v4 > 1;
  v6 = !v5 || v4 == 5;
  v7 = result[7];
  v8 = v7 > 3;
  if ( v7 != 3 )
    v8 = v7 > 1;
  v9 = !v8 || v7 == 5;
  if ( v6 != v9 )
  {
    v10 = *a2;
    if ( *a2 )
    {
      v11 = a2;
      do
      {
        *v11 = HIBYTE(v10) | (v10 << 24) | ((v10 & 0xFF0000) >> 8) | ((v10 & 0xFF00) << 8);
        v12 = v11[1];
        ++v11;
        v10 = v12;
      }
      while ( v12 );
    }
  }
  result[5] = a4;
  result[4] = a2;
  result[2] = a3;
  return result;
}


// ===== 572634 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::readToNextElement(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::readToNextElement(int a1)
{
  int result; // r0

  while ( (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 12))(a1) )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 20))(a1);
    if ( result == 1 )
      return result;
  }
  return 0;
}


// ===== 572678 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getNodeType(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getNodeType(int a1)
{
  return *(_DWORD *)(a1 + 24);
}


// ===== 572680 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeCount(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeCount(int a1)
{
  return -1431655765 * ((*(_DWORD *)(a1 + 104) - *(_DWORD *)(a1 + 100)) >> 4);
}


// ===== 5726a8 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeName(int) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeName(int a1, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *(_DWORD *)(a1 + 100);
  v3 = (*(_DWORD *)(a1 + 104) - v2) >> 4;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 48 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 20);
  return result;
}


// ===== 5726e4 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValue(int) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValue(int a1, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *(_DWORD *)(a1 + 100);
  v3 = (*(_DWORD *)(a1 + 104) - v2) >> 4;
  result = 1431655765 * v3;
  v5 = -1431655765 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 48 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 44);
  return result;
}


// ===== 572720 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsInt(char const*) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsInt(int a1)
{
  return (int)(*(float (__fastcall **)(int))(*(_DWORD *)a1 + 52))(a1);
}


// ===== 572738 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsInt(int) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getAttributeValueAsInt(int a1)
{
  return (int)(*(float (__fastcall **)(int))(*(_DWORD *)a1 + 56))(a1);
}


// ===== 572750 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getNodeName(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getNodeName(int a1)
{
  return *(_DWORD *)(a1 + 56);
}


// ===== 572758 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getNodeData(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getNodeData(int a1)
{
  return *(_DWORD *)(a1 + 56);
}


// ===== 572760 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::isEmptyElement(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::isEmptyElement(int a1)
{
  return *(unsigned __int8 *)(a1 + 84);
}


// ===== 572768 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getSourceFormat(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getSourceFormat(int a1)
{
  return *(_DWORD *)(a1 + 28);
}


// ===== 572770 glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getParserFormat(void) =====
int __fastcall glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::getParserFormat(int a1)
{
  return *(_DWORD *)(a1 + 32);
}


// ===== 572778 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::readToNextElement(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::readToNextElement(int a1)
{
  int result; // r0

  while ( (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 12))(a1) )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 20))(a1);
    if ( result == 1 )
      return result;
  }
  return 0;
}


// ===== 5727bc glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getNodeType(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getNodeType(int a1)
{
  return *(_DWORD *)(a1 + 24);
}


// ===== 5727c4 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeCount(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeCount(int a1)
{
  return 954437177 * ((*(_DWORD *)(a1 + 200) - *(_DWORD *)(a1 + 196)) >> 4);
}


// ===== 5727f4 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeName(int) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeName(int a1, unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *(_DWORD *)(a1 + 196);
  v3 = (*(_DWORD *)(a1 + 200) - v2) >> 4;
  result = 119304647 * v3;
  v5 = 954437177 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 144 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 68);
  return result;
}


// ===== 572838 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValue(int) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValue(
        int a1,
        unsigned int a2)
{
  int v2; // r3
  int v3; // r2
  int result; // r0
  unsigned int v5; // r2

  v2 = *(_DWORD *)(a1 + 196);
  v3 = (*(_DWORD *)(a1 + 200) - v2) >> 4;
  result = 119304647 * v3;
  v5 = 954437177 * v3;
  if ( a2 >= v5 )
    result = 0;
  else
    v2 += 144 * a2;
  if ( a2 < v5 )
    return *(_DWORD *)(v2 + 140);
  return result;
}


// ===== 57287c glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsInt(wchar_t const*) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsInt(int a1)
{
  return (int)(*(float (__fastcall **)(int))(*(_DWORD *)a1 + 52))(a1);
}


// ===== 572894 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsInt(int) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getAttributeValueAsInt(int a1)
{
  return (int)(*(float (__fastcall **)(int))(*(_DWORD *)a1 + 56))(a1);
}


// ===== 5728ac glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getNodeName(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getNodeName(int a1)
{
  return *(_DWORD *)(a1 + 104);
}


// ===== 5728b4 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getNodeData(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getNodeData(int a1)
{
  return *(_DWORD *)(a1 + 104);
}


// ===== 5728bc glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::isEmptyElement(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::isEmptyElement(int a1)
{
  return *(unsigned __int8 *)(a1 + 180);
}


// ===== 5728c4 glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getSourceFormat(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getSourceFormat(int a1)
{
  return *(_DWORD *)(a1 + 28);
}


// ===== 5728cc glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getParserFormat(void) =====
int __fastcall glitch::io::CXMLReaderImpl<wchar_t,glitch::IReferenceCounted>::getParserFormat(int a1)
{
  return *(_DWORD *)(a1 + 32);
}


// ===== 5728d4 std::priv::__find_if<wchar_t const*,std::priv::_Eq_char_bound<std::char_traits<wchar_t>>>(wchar_t const*,wchar_t const*,std::priv::_Eq_char_bound<std::char_traits<wchar_t>>,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find_if<wchar_t const*,std::priv::_Eq_char_bound<std::char_traits<wchar_t>>>(
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


// ===== 572a04 `global constructor keyed to'.._source_glitch_io_CXMLReader.cpp =====
void `global constructor keyed to'.._source_glitch_io_CXMLReader.cpp()
{
  dword_9F67F0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F67EC = 1056964608;
}


// ===== 572a24 glitch::io::IFileReadCallBack::~IFileReadCallBack() =====
void __fastcall glitch::io::IFileReadCallBack::~IFileReadCallBack(glitch::io::IFileReadCallBack *this)
{
  LC_API_FREE_0(this);
}


// ===== 572a38 glitch::io::IIrrXMLReader<char,glitch::IReferenceCounted>::~IIrrXMLReader() =====
void *__fastcall glitch::io::IIrrXMLReader<char,glitch::IReferenceCounted>::~IIrrXMLReader(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 572a4c glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted>::~IIrrXMLReader() =====
void *__fastcall glitch::io::IIrrXMLReader<wchar_t,glitch::IReferenceCounted>::~IIrrXMLReader(void *a1)
{
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 572a60 std::priv::__ufill<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,int>(glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute const&,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ufill<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute,int>(
        _DWORD *result,
        int a2,
        int a3)
{
  int v4; // r5
  _DWORD *v5; // r4
  int v6; // r7

  v4 = -1431655765 * ((a2 - (int)result) >> 4);
  if ( v4 > 0 )
  {
    v5 = result;
    v6 = a3 + 24;
    do
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        v5,
        a3);
      result = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
                 v5 + 6,
                 v6);
      --v4;
      v5 += 12;
    }
    while ( v4 );
  }
  return result;
}


// ===== 572abc std::priv::__ucopy<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,int>(glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,glitch::io::CXMLReaderImpl<char,glitch::IReferenceCounted>::SAttribute *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v6; // r9
  int v7; // r6
  int v8; // r5

  v3 = (a2 - a1) >> 4;
  v6 = -1431655765 * v3;
  if ( -1431655765 * v3 <= 0 )
    return a3;
  v7 = -1431655765 * v3;
  v8 = 0;
  do
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)(a3 + v8),
      a1 + v8);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      (_DWORD *)(a3 + v8 + 24),
      a1 + v8 + 24);
    --v7;
    v8 += 48;
  }
  while ( v7 );
  return a3 + 48 * v6;
}


// ===== 572b34 std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
        _DWORD *a1,
        int a2)
{
  a1[16] = a1;
  a1[17] = a1;
  std::basic_string<wchar_t,std::char_traits<wchar_t>,glitch::core::SAllocator<wchar_t,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    a1,
    *(_BYTE **)(a2 + 68),
    *(_BYTE **)(a2 + 64));
  return a1;
}

