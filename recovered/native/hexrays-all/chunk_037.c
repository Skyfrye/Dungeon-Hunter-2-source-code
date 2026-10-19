// ===== 644490 `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode(
        glitch::collada::CLightSceneNode *this)
{
  glitch::collada::CLightSceneNode::~CLightSceneNode((glitch::collada::CLightSceneNode *)((char *)this
                                                                                        + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6444a0 `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode(
        glitch::collada::CLightSceneNode *this)
{
  glitch::collada::CLightSceneNode::~CLightSceneNode((glitch::collada::CLightSceneNode *)((char *)this
                                                                                        + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6444b0 glitch::collada::CLightSceneNode::~CLightSceneNode() =====
void __fastcall glitch::collada::CLightSceneNode::~CLightSceneNode(glitch::collada::CLightSceneNode *this)
{
  glitch::collada::CLightSceneNode::~CLightSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6444cc `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode(
        glitch::collada::CLightSceneNode *this)
{
  glitch::collada::CLightSceneNode::~CLightSceneNode((glitch::collada::CLightSceneNode *)((char *)this
                                                                                        + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6444dc `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CLightSceneNode::~CLightSceneNode(
        glitch::collada::CLightSceneNode *this)
{
  glitch::collada::CLightSceneNode::~CLightSceneNode((glitch::collada::CLightSceneNode *)((char *)this
                                                                                        + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6444ec glitch::collada::CLightSceneNode::CLightSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SLight &) =====
int __fastcall glitch::collada::CLightSceneNode::CLightSceneNode(int a1, int *a2, int a3)
{
  int v6; // r3
  int v7; // r2
  float v8; // r0
  float v9; // r10
  float v10; // r7
  float v11; // r8
  float v12; // r0
  float *v13; // r3
  float *v14; // r2
  _DWORD *v15; // r2
  _DWORD *v16; // r2
  int result; // r0
  float *v18; // r3
  float *v19; // r3
  float *v20; // r3

  *(_DWORD *)(a1 + 356) = off_95B720;
  *(_DWORD *)a1 = off_97F034;
  *(_DWORD *)(a1 + 360) = 1;
  *(int *)((char *)&elf_hash_bucket[34] + a1) = (int)off_97F054;
  glitch::scene::CLightSceneNode::CLightSceneNode(
    (glitch::video::STransformationSource **)a1,
    (glitch::video::STransformationSource **)off_97ED9C);
  v6 = *a2;
  *(_DWORD *)(a1 + 344) = *a2;
  *(_DWORD *)(a1 + 348) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *(_DWORD *)(a1 + 352) = a3;
  *(_DWORD *)a1 = off_97EC84;
  *(_DWORD *)(a1 + 340) = &unk_9F6F08;
  *(_DWORD *)(a1 + 356) = off_97ED88;
  v8 = *(float *)(a3 + 16) / 255.0;
  v9 = (float)*(unsigned __int8 *)(a3 + 12) * v8;
  v10 = (float)*(unsigned __int8 *)(a3 + 13) * v8;
  v11 = (float)*(unsigned __int8 *)(a3 + 14) * v8;
  v12 = (float)*(unsigned __int8 *)(a3 + 15) * v8;
  v13 = *(float **)(a1 + 308);
  v13[9] = v9;
  v13[12] = v12;
  v13[11] = v11;
  v13[10] = v10;
  switch ( *(_DWORD *)(a3 + 8) )
  {
    case 0:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 3;
      v14 = *(float **)(a1 + 308);
      v14[1] = v9;
      v14[4] = v12;
      v14[3] = v11;
      v14[2] = v10;
      v15 = *(_DWORD **)(a1 + 308);
      v15[5] = 0;
      v15[8] = 0;
      v15[7] = 0;
      v15[6] = 0;
      v16 = *(_DWORD **)(a1 + 308);
      v16[9] = 0;
      v16[12] = 0;
      v16[11] = 0;
      v16[10] = 0;
      goto LABEL_6;
    case 1:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 0;
      v20 = *(float **)(a1 + 308);
      v20[5] = v9;
      v20[8] = v12;
      v20[7] = v11;
      v20[6] = v10;
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 52) = **(_DWORD **)(a3 + 20);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 56) = *(_DWORD *)(*(_DWORD *)(a3 + 20) + 4);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 60) = *(_DWORD *)(*(_DWORD *)(a3 + 20) + 8);
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
    case 2:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 1;
      v19 = *(float **)(a1 + 308);
      v19[5] = v9;
      v19[8] = v12;
      v19[7] = v11;
      v19[6] = v10;
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 52) = **(_DWORD **)(a3 + 20);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 56) = *(_DWORD *)(*(_DWORD *)(a3 + 20) + 4);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 60) = *(_DWORD *)(*(_DWORD *)(a3 + 20) + 8);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 72) = *(_DWORD *)(*(_DWORD *)(a3 + 20) + 12);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 76) = *(_DWORD *)(*(_DWORD *)(a3 + 20) + 16);
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
    case 3:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 2;
      v18 = *(float **)(a1 + 308);
      v18[8] = v12;
      v18[5] = v9;
      v18[7] = v11;
      v18[6] = v10;
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
    default:
LABEL_6:
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
  }
  return result;
}


// ===== 6447ac glitch::collada::CLightSceneNode::CLightSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SLight &) =====
int __fastcall glitch::collada::CLightSceneNode::CLightSceneNode(
        int a1,
        glitch::video::STransformationSource **a2,
        int *a3,
        int a4)
{
  int v8; // r2
  int v9; // r1
  glitch::video::STransformationSource *v10; // r3
  float v11; // r0
  float v12; // r10
  float v13; // r5
  float v14; // r8
  float v15; // r0
  float *v16; // r3
  float *v17; // r2
  _DWORD *v18; // r2
  _DWORD *v19; // r2
  int result; // r0
  float *v21; // r3
  float *v22; // r3
  float *v23; // r3

  glitch::scene::CLightSceneNode::CLightSceneNode((glitch::video::STransformationSource **)a1, a2 + 1);
  v8 = *a3;
  *(_DWORD *)(a1 + 344) = *a3;
  *(_DWORD *)(a1 + 348) = a3[1];
  if ( v8 )
  {
    v9 = *(_DWORD *)(v8 + 4);
    if ( v9 )
      *(_DWORD *)(v8 + 4) = v9 + 1;
  }
  *(_DWORD *)(a1 + 340) = &unk_9F6F08;
  v10 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *((_DWORD *)v10 - 7)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *(_DWORD *)(a1 + 352) = a4;
  v11 = *(float *)(a4 + 16) / 255.0;
  v12 = (float)*(unsigned __int8 *)(a4 + 12) * v11;
  v13 = (float)*(unsigned __int8 *)(a4 + 13) * v11;
  v14 = (float)*(unsigned __int8 *)(a4 + 14) * v11;
  v15 = (float)*(unsigned __int8 *)(a4 + 15) * v11;
  v16 = *(float **)(a1 + 308);
  v16[9] = v12;
  v16[12] = v15;
  v16[11] = v14;
  v16[10] = v13;
  switch ( *(_DWORD *)(a4 + 8) )
  {
    case 0:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 3;
      v17 = *(float **)(a1 + 308);
      v17[1] = v12;
      v17[4] = v15;
      v17[3] = v14;
      v17[2] = v13;
      v18 = *(_DWORD **)(a1 + 308);
      v18[5] = 0;
      v18[8] = 0;
      v18[7] = 0;
      v18[6] = 0;
      v19 = *(_DWORD **)(a1 + 308);
      v19[9] = 0;
      v19[12] = 0;
      v19[11] = 0;
      v19[10] = 0;
      goto LABEL_6;
    case 1:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 0;
      v23 = *(float **)(a1 + 308);
      v23[5] = v12;
      v23[8] = v15;
      v23[7] = v14;
      v23[6] = v13;
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 52) = **(_DWORD **)(a4 + 20);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 56) = *(_DWORD *)(*(_DWORD *)(a4 + 20) + 4);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 60) = *(_DWORD *)(*(_DWORD *)(a4 + 20) + 8);
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
    case 2:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 1;
      v22 = *(float **)(a1 + 308);
      v22[5] = v12;
      v22[8] = v15;
      v22[7] = v14;
      v22[6] = v13;
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 52) = **(_DWORD **)(a4 + 20);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 56) = *(_DWORD *)(*(_DWORD *)(a4 + 20) + 4);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 60) = *(_DWORD *)(*(_DWORD *)(a4 + 20) + 8);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 72) = *(_DWORD *)(*(_DWORD *)(a4 + 20) + 12);
      *(_DWORD *)(*(_DWORD *)(a1 + 308) + 76) = *(_DWORD *)(*(_DWORD *)(a4 + 20) + 16);
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
    case 3:
      *(_WORD *)(*(_DWORD *)(a1 + 308) + 88) = 2;
      v21 = *(float **)(a1 + 308);
      v21[8] = v15;
      v21[5] = v12;
      v21[7] = v14;
      v21[6] = v13;
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
    default:
LABEL_6:
      glitch::scene::CLightSceneNode::doLightRecalc((float *)a1);
      result = a1;
      break;
  }
  return result;
}


// ===== 644a3c glitch::collada::CMesh::getType(void) =====
int __fastcall glitch::collada::CMesh::getType(glitch::collada::CMesh *this)
{
  return 0;
}


// ===== 644a44 glitch::collada::CMesh::getMeshBufferCount(void) =====
int __fastcall glitch::collada::CMesh::getMeshBufferCount(glitch::collada::CMesh *this)
{
  return -1431655765 * ((*((_DWORD *)this + 7) - *((_DWORD *)this + 6)) >> 2);
}


// ===== 644a6c glitch::collada::CMesh::getMeshBuffer(uint) =====
_DWORD *__fastcall glitch::collada::CMesh::getMeshBuffer(_DWORD *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3
  int v4; // r3

  v3 = *(_DWORD *)(a2 + 24);
  if ( a3 >= -1431655765 * ((*(_DWORD *)(a2 + 28) - v3) >> 2) )
  {
    *this = 0;
  }
  else
  {
    v4 = *(_DWORD *)(v3 + 12 * a3);
    *this = v4;
    if ( v4 )
      ++*(_DWORD *)(v4 + 4);
  }
  return this;
}


// ===== 644ac8 glitch::collada::CMesh::getMaterial(uint) =====
_DWORD *__fastcall glitch::collada::CMesh::getMaterial(_DWORD *this, unsigned int a2, unsigned int a3)
{
  int v3; // r3
  _DWORD *v4; // r3

  v3 = *(_DWORD *)(a2 + 24);
  if ( a3 >= -1431655765 * ((*(_DWORD *)(a2 + 28) - v3) >> 2) )
  {
    *this = 0;
  }
  else
  {
    v4 = *(_DWORD **)(v3 + 12 * a3 + 4);
    *this = v4;
    if ( v4 )
      ++*v4;
  }
  return this;
}


// ===== 644b24 glitch::collada::CMesh::getMaterialVertexAttributeMap(uint) =====
_DWORD *__fastcall glitch::collada::CMesh::getMaterialVertexAttributeMap(
        _DWORD *this,
        unsigned int a2,
        unsigned int a3)
{
  int v3; // r3
  _DWORD *v4; // r3

  v3 = *(_DWORD *)(a2 + 24);
  if ( a3 >= -1431655765 * ((*(_DWORD *)(a2 + 28) - v3) >> 2) )
  {
    *this = 0;
  }
  else
  {
    v4 = *(_DWORD **)(v3 + 12 * a3 + 8);
    *this = v4;
    if ( v4 )
      ++*v4;
  }
  return this;
}


// ===== 644b80 glitch::collada::CMesh::getBoundingBox(void) =====
char *__fastcall glitch::collada::CMesh::getBoundingBox(glitch::collada::CMesh *this)
{
  return (char *)this + 36;
}


// ===== 644b88 glitch::collada::CMesh::setBoundingBox(glitch::core::aabbox3d<float> const&) =====
_DWORD *__fastcall glitch::collada::CMesh::setBoundingBox(_DWORD *result, _DWORD *a2)
{
  result[9] = *a2;
  result[10] = a2[1];
  result[11] = a2[2];
  result[12] = a2[3];
  result[13] = a2[4];
  result[14] = a2[5];
  return result;
}


// ===== 644bbc `global constructor keyed to'.._source_glitch_collada_CColladaMesh.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaMesh.cpp()
{
  dword_9F6FA0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6F9C = 1056964608;
}


// ===== 644bdc glitch::collada::CMesh::setMaterial(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
glitch::video::CMaterialVertexAttributeMap **__fastcall glitch::collada::CMesh::setMaterial(
        int a1,
        unsigned int a2,
        glitch::video::CMaterial **a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  int v4; // r12
  glitch::video::CMaterialVertexAttributeMap **result; // r0
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterialVertexAttributeMap **v8; // r4
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v11; // [sp+4h] [bp-8h] BYREF

  v4 = *(_DWORD *)(a1 + 28);
  result = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 24);
  if ( a2 < -1431655765 * ((v4 - (int)result) >> 2) )
  {
    v7 = *a3;
    v8 = &result[3 * a2];
    v11 = v7;
    if ( v7 )
    {
      ++*(_DWORD *)v7;
      v7 = v11;
    }
    v11 = v8[1];
    v8[1] = v7;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v11);
    v9 = *a4;
    v10 = v9;
    if ( v9 )
    {
      ++*(_DWORD *)v9;
      v9 = v10;
    }
    v10 = v8[2];
    v8[2] = v9;
    return boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v10);
  }
  return result;
}


// ===== 644c88 glitch::collada::CMesh::SBuffer::~SBuffer() =====
void __fastcall glitch::collada::CMesh::SBuffer::~SBuffer(glitch::video::CMaterialVertexAttributeMap **this)
{
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 1);
  if ( *this )
    glitch::IReferenceCounted::drop(*this);
}


// ===== 644cb8 std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterialVertexAttributeMap ***__fastcall std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterialVertexAttributeMap ***a1)
{
  glitch::video::CMaterialVertexAttributeMap **v1; // r4
  glitch::video::CMaterialVertexAttributeMap **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 3;
    glitch::collada::CMesh::SBuffer::~SBuffer(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 644cfc glitch::collada::CMesh::~CMesh() =====
void __fastcall glitch::collada::CMesh::~CMesh(glitch::collada::CMesh *this)
{
  *(_DWORD *)this = off_97F068;
  std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 6);
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 644d4c glitch::collada::CMesh::~CMesh() =====
void __fastcall glitch::collada::CMesh::~CMesh(glitch::collada::CMesh *this)
{
  glitch::collada::CMesh::~CMesh(this);
  LC_API_FREE_0(this);
}


// ===== 644d68 glitch::collada::CMesh::~CMesh() =====
void __fastcall glitch::collada::CMesh::~CMesh(glitch::collada::CMesh *this)
{
  *(_DWORD *)this = off_97F068;
  std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 6);
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 644db8 std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int *a2)
{
  int v2; // r2
  int v3; // r3
  int v4; // r5
  size_t v6; // r6
  char *v7; // r0
  int *v8; // r3
  int v9; // r6
  int v10; // r12
  int *v11; // r2
  int v12; // r1
  int *v13; // r1
  int *v14; // r1

  v2 = a2[1];
  v3 = *a2;
  v4 = (int)a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = 4 * ((v2 - v3) >> 2);
  v7 = (char *)GlitchAlloc(v6, 0);
  a1[2] = &v7[v6];
  *a1 = v7;
  a1[1] = v7;
  v8 = *(int **)v4;
  v9 = -1431655765 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 2);
  if ( v9 > 0 )
  {
    v10 = -1431655765 * ((*(_DWORD *)(v4 + 4) - *(_DWORD *)v4) >> 2);
    v11 = (int *)v7;
    do
    {
      v12 = *v8;
      *v11 = *v8;
      if ( v12 )
      {
        v4 = *(_DWORD *)(v12 + 4) + 1;
        *(_DWORD *)(v12 + 4) = v4;
      }
      v13 = (int *)v8[1];
      v11[1] = (int)v13;
      if ( v13 )
      {
        v4 = *v13 + 1;
        *v13 = v4;
      }
      v14 = (int *)v8[2];
      v8 += 3;
      v11[2] = (int)v14;
      if ( v14 )
        v4 = *v14;
      v11 += 3;
      if ( v14 )
        *v14 = ++v4;
      --v10;
    }
    while ( v10 );
    v7 += 12 * v9;
  }
  a1[1] = v7;
  return a1;
}


// ===== 644eb8 glitch::collada::CMesh::CMesh(glitch::collada::CMesh const&) =====
glitch::collada::CMesh *__fastcall glitch::collada::CMesh::CMesh(
        glitch::collada::CMesh *this,
        const glitch::collada::CMesh *a2)
{
  int v3; // r2
  int v5; // r1

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v3 = *((_DWORD *)a2 + 3);
  *((_DWORD *)this + 3) = v3;
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  if ( v3 )
  {
    v5 = *(_DWORD *)(v3 + 4);
    if ( v5 )
      *(_DWORD *)(v3 + 4) = v5 + 1;
  }
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_97F068;
  std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    (_DWORD *)this + 6,
    (int *)a2 + 6);
  *((_DWORD *)this + 9) = *((_DWORD *)a2 + 9);
  *((_DWORD *)this + 10) = *((_DWORD *)a2 + 10);
  *((_DWORD *)this + 11) = *((_DWORD *)a2 + 11);
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 12);
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 13);
  *((_DWORD *)this + 14) = *((_DWORD *)a2 + 14);
  return this;
}


// ===== 644f88 glitch::collada::CMesh::clone(void) =====
glitch::collada::CMesh *__fastcall glitch::collada::CMesh::clone(
        glitch::collada::CMesh *this,
        const glitch::collada::CMesh *a2)
{
  glitch::collada::CMesh *v4; // r4
  int v5; // r3
  glitch::collada::CMesh *result; // r0

  v4 = (glitch::collada::CMesh *)operator new(0x3Cu, 0);
  glitch::collada::CMesh::CMesh(v4, a2);
  *(_DWORD *)this = v4;
  if ( v4 )
    v5 = *((_DWORD *)v4 + 1);
  result = this;
  if ( v4 )
    *((_DWORD *)v4 + 1) = v5 + 1;
  return result;
}


// ===== 644fc8 glitch::collada::CMesh::CMesh(glitch::collada::CMesh const&) =====
glitch::collada::CMesh *__fastcall glitch::collada::CMesh::CMesh(
        glitch::collada::CMesh *this,
        const glitch::collada::CMesh *a2)
{
  int v3; // r2
  int v5; // r1

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v3 = *((_DWORD *)a2 + 3);
  *((_DWORD *)this + 3) = v3;
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  if ( v3 )
  {
    v5 = *(_DWORD *)(v3 + 4);
    if ( v5 )
      *(_DWORD *)(v3 + 4) = v5 + 1;
  }
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_97F068;
  std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    (_DWORD *)this + 6,
    (int *)a2 + 6);
  *((_DWORD *)this + 9) = *((_DWORD *)a2 + 9);
  *((_DWORD *)this + 10) = *((_DWORD *)a2 + 10);
  *((_DWORD *)this + 11) = *((_DWORD *)a2 + 11);
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 12);
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 13);
  *((_DWORD *)this + 14) = *((_DWORD *)a2 + 14);
  return this;
}


// ===== 645098 std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CMesh::SBuffer*>(uint &,glitch::collada::CMesh::SBuffer*,glitch::collada::CMesh::SBuffer*) =====
int *__fastcall std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CMesh::SBuffer*>(
        int a1,
        _DWORD *a2,
        int *a3,
        int a4)
{
  int *v4; // r4
  int v5; // r5
  int *result; // r0
  int v7; // r5
  int *i; // r3
  int v9; // r2
  _DWORD *v10; // r2
  _DWORD *v11; // r2

  v4 = a3;
  v5 = a4 - (_DWORD)a3;
  result = (int *)GlitchAlloc(12 * *a2, 0);
  v7 = -1431655765 * (v5 >> 2);
  if ( v7 > 0 )
  {
    for ( i = result; ; i += 3 )
    {
      v9 = *v4;
      *i = *v4;
      if ( v9 )
        ++*(_DWORD *)(v9 + 4);
      v10 = (_DWORD *)v4[1];
      i[1] = (int)v10;
      if ( v10 )
        ++*v10;
      v11 = (_DWORD *)v4[2];
      v4 += 3;
      i[2] = (int)v11;
      if ( v11 )
        ++*v11;
      if ( !--v7 )
        break;
    }
  }
  return result;
}


// ===== 645140 std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
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
  if ( a2 > -1431655765 * v4 )
  {
    if ( a2 > 0x15555555 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *a1;
    }
    v5 = (int)a1[1];
    v6 = -1431655765 * ((v5 - (int)v3) >> 2);
    if ( v3 )
    {
      v7 = std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CMesh::SBuffer*>(
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
          v8 -= 3;
          glitch::collada::CMesh::SBuffer::~SBuffer(v8);
        }
        while ( v9 != (int *)v8 );
        v8 = (glitch::video::CMaterialVertexAttributeMap **)*a1;
      }
      GlitchFree(v8);
    }
    else
    {
      v10 = (int *)GlitchAlloc(12 * v12, 0);
    }
    v11 = &v10[3 * v12];
    a1[1] = &v10[3 * v6];
    a1[2] = v11;
    *a1 = v10;
  }
}


// ===== 645250 glitch::res::onDemand<char>::get(glitch::res::onDemandReader &) =====
int **__fastcall glitch::res::onDemand<char>::get(int **result, int *a2, int a3, int a4)
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


// ===== 6452bc glitch::res::onDemand<uint>::get(glitch::res::onDemandReader &) =====
int **__fastcall glitch::res::onDemand<unsigned int>::get(int **result, int *a2, int a3, int a4)
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


// ===== 645328 glitch::res::onDemand<ushort>::get(glitch::res::onDemandReader &) =====
int **__fastcall glitch::res::onDemand<unsigned short>::get(int **result, int *a2, int a3, int a4)
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


// ===== 645394 std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::collada::CMesh::SBuffer const&) =====
void __fastcall std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::video::CMaterialVertexAttributeMap ***a1,
        glitch::video::CMaterialVertexAttributeMap **a2)
{
  glitch::video::CMaterialVertexAttributeMap **v2; // r3
  glitch::video::CMaterialVertexAttributeMap **v3; // r6
  glitch::video::CMaterialVertexAttributeMap *v6; // r2
  glitch::video::CMaterialVertexAttributeMap *v7; // r2
  glitch::video::CMaterialVertexAttributeMap *v8; // r2
  unsigned int v9; // r2
  unsigned int v10; // r1
  size_t v11; // r7
  glitch::video::CMaterialVertexAttributeMap **v12; // r0
  int v13; // r12
  glitch::video::CMaterialVertexAttributeMap **v14; // r3
  glitch::video::CMaterialVertexAttributeMap **v15; // r8
  int v16; // r2
  int v17; // r6
  glitch::video::CMaterialVertexAttributeMap **v18; // r10
  int v19; // r0
  glitch::video::CMaterialVertexAttributeMap *v20; // r1
  int *v21; // r1
  int *v22; // r1
  glitch::video::CMaterialVertexAttributeMap *v23; // r3
  int *v24; // r3
  int *v25; // r3
  glitch::video::CMaterialVertexAttributeMap **v26; // r10
  glitch::video::CMaterialVertexAttributeMap **v27; // r5
  glitch::video::CMaterialVertexAttributeMap **v28; // r6

  v2 = a1[1];
  v3 = a1[2];
  if ( v2 == v3 )
  {
    v9 = -1431655765 * (v3 - *a1);
    if ( v9 )
      v10 = 1431655766 * (v3 - *a1);
    else
      v10 = 1;
    if ( v10 > 0x15555555 || v9 > v10 )
      v11 = -1;
    else
      v11 = 3 * v10;
    v12 = (glitch::video::CMaterialVertexAttributeMap **)GlitchAlloc(v11 * 4, 0);
    v14 = *a1;
    v15 = v12;
    v16 = v3 - *a1;
    v17 = -1431655765 * v16;
    if ( -1431655765 * v16 > 0 )
    {
      v19 = -1431655765 * v16;
      v16 = (int)v15;
      do
      {
        v20 = *v14;
        *(_DWORD *)v16 = *v14;
        if ( v20 )
        {
          v13 = *((_DWORD *)v20 + 1) + 1;
          *((_DWORD *)v20 + 1) = v13;
        }
        v21 = (int *)v14[1];
        *(_DWORD *)(v16 + 4) = v21;
        if ( v21 )
        {
          v13 = *v21 + 1;
          *v21 = v13;
        }
        v22 = (int *)v14[2];
        v14 += 3;
        *(_DWORD *)(v16 + 8) = v22;
        if ( v22 )
          v13 = *v22;
        v16 += 12;
        if ( v22 )
          *v22 = ++v13;
        --v19;
      }
      while ( v19 );
      v18 = &v15[3 * v17];
    }
    else
    {
      v18 = v12;
    }
    v23 = *a2;
    *v18 = *a2;
    if ( v23 )
    {
      v16 = *((_DWORD *)v23 + 1) + 1;
      *((_DWORD *)v23 + 1) = v16;
    }
    v24 = (int *)a2[1];
    v18[1] = (glitch::video::CMaterialVertexAttributeMap *)v24;
    if ( v24 )
    {
      v16 = *v24 + 1;
      *v24 = v16;
    }
    v25 = (int *)a2[2];
    v18[2] = (glitch::video::CMaterialVertexAttributeMap *)v25;
    if ( v25 )
      v16 = *v25;
    v26 = v18 + 3;
    if ( v25 )
      *v25 = v16 + 1;
    v27 = a1[1];
    v28 = *a1;
    if ( v27 != *a1 )
    {
      do
      {
        v27 -= 3;
        glitch::collada::CMesh::SBuffer::~SBuffer(v27);
      }
      while ( v28 != v27 );
      v28 = *a1;
    }
    GlitchFree(v28);
    a1[2] = &v15[v11];
    *a1 = v15;
    a1[1] = v26;
  }
  else
  {
    v6 = *a2;
    *v2 = *a2;
    if ( v6 )
      ++*((_DWORD *)v6 + 1);
    v7 = a2[1];
    v2[1] = v7;
    if ( v7 )
      ++*(_DWORD *)v7;
    v8 = a2[2];
    v2[2] = v8;
    if ( v8 )
      ++*(_DWORD *)v8;
    a1[1] += 3;
  }
}


// ===== 645588 glitch::collada::CMesh::CMesh(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SGeometry const&,glitch::collada::SBufferConfig const&,glitch::collada::SBufferConfig const&,bool) =====
_DWORD *__fastcall glitch::collada::CMesh::CMesh(_DWORD *a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int a6, char a7)
{
  int v9; // r1
  int v10; // r3
  _DWORD *v11; // r7
  int v12; // r2
  int v13; // r3
  int v14; // r8
  int v15; // r10
  int v16; // r3
  _DWORD *v17; // r5
  bool v18; // zf
  void *v19; // r0
  _DWORD *v20; // r6
  glitch::IReferenceCounted *v21; // r4
  int v22; // r3
  void *v23; // r0
  void *v24; // r0
  glitch::IReferenceCounted *v25; // r0
  void *v26; // r0
  _DWORD *v27; // r3
  int v28; // r4
  int v29; // r12
  int v30; // r5
  int v31; // r0
  int v32; // r1
  int v33; // r3
  void *v34; // r0
  _DWORD *v36; // r2
  void *v37; // r0
  _BOOL4 v38; // [sp+14h] [bp-60h]
  int v39; // [sp+18h] [bp-5Ch]
  _DWORD *v40; // [sp+1Ch] [bp-58h]
  _DWORD *v42; // [sp+30h] [bp-44h]
  glitch::IReferenceCounted *v44; // [sp+38h] [bp-3Ch]
  glitch::IReferenceCounted *v45; // [sp+48h] [bp-2Ch] BYREF
  _DWORD *v46; // [sp+4Ch] [bp-28h]
  _DWORD *v47; // [sp+50h] [bp-24h]
  _DWORD v48[2]; // [sp+54h] [bp-20h] BYREF
  _DWORD *v49; // [sp+5Ch] [bp-18h] BYREF
  _DWORD *v50; // [sp+60h] [bp-14h] BYREF
  _DWORD *v51; // [sp+64h] [bp-10h] BYREF
  _DWORD *v52; // [sp+68h] [bp-Ch] BYREF
  _DWORD *v53; // [sp+6Ch] [bp-8h] BYREF

  a1[1] = 0;
  *a1 = off_976818;
  v9 = *a2;
  a1[3] = v9;
  a1[4] = a2[1];
  if ( v9 )
  {
    v10 = *(_DWORD *)(v9 + 4);
    if ( v10 )
      *(_DWORD *)(v9 + 4) = v10 + 1;
  }
  a1[2] = &unk_9F6F08;
  a1[11] = -1082130432;
  a1[14] = 1065353216;
  a1[9] = -1082130432;
  a1[10] = -1082130432;
  a1[12] = 1065353216;
  a1[13] = 1065353216;
  *a1 = off_97F068;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v40 = a1 + 6;
  a1[2] = *a4;
  v39 = *(_DWORD *)(a4[3] + 12);
  std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    a1 + 6,
    v39);
  v11 = (_DWORD *)a4[3];
  v12 = *(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32);
  v13 = *(_DWORD *)(v12 + 4);
  v38 = *(_DWORD *)(v12 + 100) > 0;
  if ( v13 )
    v44 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                           + 52)
                                                                             + 12))(
                                         *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                         *(_DWORD *)(v13 + 20));
  else
    v44 = nullptr;
  v48[1] = v44;
  v48[0] = off_978560;
  if ( v38 && *v11 && (glitch::res::onDemand<char>::get(&v53, *(_DWORD *)(v11[2] + 36), v48), v53) )
  {
    ++*v53;
    v36 = v53;
    v42 = v53;
    if ( v53 )
    {
      v18 = (*v53)-- == 1;
      if ( v18 )
      {
        v37 = (void *)v36[3];
        if ( v37 )
          operator delete[](v37);
        v42[3] = 0;
      }
      v53 = nullptr;
    }
  }
  else
  {
    v42 = nullptr;
  }
  if ( v39 )
  {
    v14 = 0;
    v15 = 0;
    while ( v38 )
    {
      v16 = v11[4] + v14;
      if ( *(int *)(v16 + 36) <= 0xFFFF )
      {
        glitch::res::onDemand<unsigned short>::get(&v51, *(_DWORD *)(v16 + 44), v48);
        if ( !v51 )
          break;
        ++*v51;
        v20 = v51;
        if ( v51 )
        {
          v18 = (*v51)-- == 1;
          if ( v18 )
          {
            v26 = (void *)v20[3];
            if ( v26 )
              operator delete[](v26);
            v20[3] = 0;
          }
          v51 = nullptr;
          v17 = nullptr;
        }
        else
        {
          v17 = nullptr;
        }
      }
      else
      {
        glitch::res::onDemand<unsigned int>::get(&v52, *(_DWORD *)(v16 + 44), v48);
        if ( !v52 )
          break;
        ++*v52;
        v17 = v52;
        if ( !v52 )
          goto LABEL_48;
        v18 = (*v52)-- == 1;
        if ( v18 )
        {
          v19 = (void *)v17[3];
          if ( v19 )
            operator delete[](v19);
          v17[3] = 0;
        }
        v52 = nullptr;
        v20 = nullptr;
      }
      if ( !a7 )
        goto LABEL_49;
LABEL_22:
      v21 = *(glitch::IReferenceCounted **)(v11[4] + v14 + 52);
      if ( v21 )
        goto LABEL_23;
LABEL_49:
      v21 = (glitch::IReferenceCounted *)operator new(56, 0);
      glitch::scene::CMeshBuffer::CMeshBuffer(v21, a3, v11, v15, a5, a6, v38);
      if ( v21 )
LABEL_23:
        ++*((_DWORD *)v21 + 1);
      v50 = nullptr;
      v49 = nullptr;
      v45 = v21;
      if ( v21 )
      {
        ++*((_DWORD *)v21 + 1);
        v46 = v50;
        if ( v50 )
          ++*v50;
      }
      else
      {
        v46 = nullptr;
      }
      v47 = v49;
      if ( v49 )
        ++*v49;
      std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v40,
        &v45);
      glitch::collada::CMesh::SBuffer::~SBuffer((glitch::collada::CMesh::SBuffer *)&v45);
      boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v49);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v50);
      if ( a7 && (v22 = v11[4] + v14, !*(_DWORD *)(v22 + 52)) )
      {
        if ( !v21 )
        {
          *(_DWORD *)(v22 + 52) = 0;
          goto LABEL_33;
        }
        ++*((_DWORD *)v21 + 1);
        v25 = *(glitch::IReferenceCounted **)(v22 + 52);
        *(_DWORD *)(v22 + 52) = v21;
        if ( v25 )
          glitch::IReferenceCounted::drop(v25);
      }
      else if ( !v21 )
      {
        goto LABEL_33;
      }
      glitch::IReferenceCounted::drop(v21);
LABEL_33:
      if ( v17 )
      {
        v18 = (*v17)-- == 1;
        if ( v18 )
        {
          v23 = (void *)v17[3];
          if ( v23 )
            operator delete[](v23);
          v17[3] = 0;
        }
      }
      if ( v20 )
      {
        v18 = (*v20)-- == 1;
        if ( v18 )
        {
          v24 = (void *)v20[3];
          if ( v24 )
            operator delete[](v24);
          v20[3] = 0;
        }
      }
      ++v15;
      v14 += 56;
      if ( v39 == v15 )
        goto LABEL_65;
    }
    v17 = nullptr;
LABEL_48:
    v20 = v17;
    if ( !a7 )
      goto LABEL_49;
    goto LABEL_22;
  }
LABEL_65:
  if ( v44 )
    glitch::IReferenceCounted::drop(v44);
  v27 = (_DWORD *)a4[3];
  v28 = v27[7];
  v29 = v27[8];
  v30 = v27[5];
  v31 = v27[10];
  v32 = v27[6];
  v33 = v27[9];
  a1[9] = v30;
  a1[10] = v32;
  a1[11] = v28;
  a1[12] = v29;
  a1[13] = v33;
  a1[14] = v31;
  if ( v42 )
  {
    v18 = (*v42)-- == 1;
    if ( v18 )
    {
      v34 = (void *)v42[3];
      if ( v34 )
        operator delete[](v34);
      v42[3] = 0;
    }
  }
  return a1;
}


// ===== 645b68 glitch::collada::CMesh::CMesh(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SGeometry const&,glitch::collada::SBufferConfig const&,glitch::collada::SBufferConfig const&,bool) =====
int __fastcall glitch::collada::CMesh::CMesh(int a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int a6, char a7)
{
  int v9; // r1
  int v10; // r3
  _DWORD *v11; // r7
  int v12; // r2
  int v13; // r3
  int v14; // r8
  int v15; // r10
  int v16; // r3
  int *v17; // r5
  bool v18; // zf
  void *v19; // r0
  int *v20; // r6
  glitch::video::CMaterialVertexAttributeMap *v21; // r4
  int v22; // r3
  void *v23; // r0
  void *v24; // r0
  glitch::IReferenceCounted *v25; // r0
  void *v26; // r0
  _DWORD *v27; // r3
  int v28; // r4
  int v29; // r12
  int v30; // r5
  int v31; // r0
  int v32; // r1
  int v33; // r3
  void *v34; // r0
  int *v36; // r2
  void *v37; // r0
  _BOOL4 v38; // [sp+14h] [bp-60h]
  unsigned int v39; // [sp+18h] [bp-5Ch]
  glitch::video::CMaterialVertexAttributeMap ***v40; // [sp+1Ch] [bp-58h]
  int *v42; // [sp+30h] [bp-44h]
  glitch::IReferenceCounted *v44; // [sp+38h] [bp-3Ch]
  glitch::video::CMaterialVertexAttributeMap *v45; // [sp+48h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v46; // [sp+4Ch] [bp-28h]
  glitch::video::CMaterialVertexAttributeMap *v47; // [sp+50h] [bp-24h]
  _DWORD v48[2]; // [sp+54h] [bp-20h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v49; // [sp+5Ch] [bp-18h] BYREF
  glitch::video::CMaterial *v50; // [sp+60h] [bp-14h] BYREF
  int *v51; // [sp+64h] [bp-10h] BYREF
  int *v52; // [sp+68h] [bp-Ch] BYREF
  int *v53; // [sp+6Ch] [bp-8h] BYREF

  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)a1 = off_976818;
  v9 = *a2;
  *(_DWORD *)(a1 + 12) = v9;
  *(_DWORD *)(a1 + 16) = a2[1];
  if ( v9 )
  {
    v10 = *(_DWORD *)(v9 + 4);
    if ( v10 )
      *(_DWORD *)(v9 + 4) = v10 + 1;
  }
  *(_DWORD *)(a1 + 8) = &unk_9F6F08;
  *(_DWORD *)(a1 + 44) = -1082130432;
  *(_DWORD *)(a1 + 56) = 1065353216;
  *(_DWORD *)(a1 + 36) = -1082130432;
  *(_DWORD *)(a1 + 40) = -1082130432;
  *(_DWORD *)(a1 + 48) = 1065353216;
  *(_DWORD *)(a1 + 52) = 1065353216;
  *(_DWORD *)a1 = off_97F068;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 24) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  v40 = (glitch::video::CMaterialVertexAttributeMap ***)(a1 + 24);
  *(_DWORD *)(a1 + 8) = *a4;
  v39 = *(_DWORD *)(a4[3] + 12);
  std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int **)(a1 + 24),
    v39);
  v11 = (_DWORD *)a4[3];
  v12 = *(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32);
  v13 = *(_DWORD *)(v12 + 4);
  v38 = *(_DWORD *)(v12 + 100) > 0;
  if ( v13 )
    v44 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                           + 52)
                                                                             + 12))(
                                         *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                         *(_DWORD *)(v13 + 20));
  else
    v44 = nullptr;
  v48[1] = v44;
  v48[0] = off_978560;
  if ( v38 && *v11 && (glitch::res::onDemand<char>::get(&v53, *(int **)(v11[2] + 36), (int)v48, v11[2]), v53) )
  {
    ++*v53;
    v36 = v53;
    v42 = v53;
    if ( v53 )
    {
      v18 = (*v53)-- == 1;
      if ( v18 )
      {
        v37 = (void *)v36[3];
        if ( v37 )
          operator delete[](v37);
        v42[3] = 0;
      }
      v53 = nullptr;
    }
  }
  else
  {
    v42 = nullptr;
  }
  if ( v39 )
  {
    v14 = 0;
    v15 = 0;
    while ( v38 )
    {
      v16 = v11[4] + v14;
      if ( *(int *)(v16 + 36) <= 0xFFFF )
      {
        glitch::res::onDemand<unsigned short>::get(&v51, *(int **)(v16 + 44), (int)v48, v16);
        if ( !v51 )
          break;
        ++*v51;
        v20 = v51;
        if ( v51 )
        {
          v18 = (*v51)-- == 1;
          if ( v18 )
          {
            v26 = (void *)v20[3];
            if ( v26 )
              operator delete[](v26);
            v20[3] = 0;
          }
          v51 = nullptr;
          v17 = nullptr;
        }
        else
        {
          v17 = nullptr;
        }
      }
      else
      {
        glitch::res::onDemand<unsigned int>::get(&v52, *(int **)(v16 + 44), (int)v48, v16);
        if ( !v52 )
          break;
        ++*v52;
        v17 = v52;
        if ( !v52 )
          goto LABEL_48;
        v18 = (*v52)-- == 1;
        if ( v18 )
        {
          v19 = (void *)v17[3];
          if ( v19 )
            operator delete[](v19);
          v17[3] = 0;
        }
        v52 = nullptr;
        v20 = nullptr;
      }
      if ( !a7 )
        goto LABEL_49;
LABEL_22:
      v21 = *(glitch::video::CMaterialVertexAttributeMap **)(v11[4] + v14 + 52);
      if ( v21 )
        goto LABEL_23;
LABEL_49:
      v21 = (glitch::video::CMaterialVertexAttributeMap *)operator new(0x38u, 0);
      glitch::scene::CMeshBuffer::CMeshBuffer(v21, a3, v11, v15, a5, a6, v38);
      if ( v21 )
LABEL_23:
        ++*((_DWORD *)v21 + 1);
      v50 = nullptr;
      v49 = nullptr;
      v45 = v21;
      if ( v21 )
      {
        ++*((_DWORD *)v21 + 1);
        v46 = v50;
        if ( v50 )
          ++*(_DWORD *)v50;
      }
      else
      {
        v46 = nullptr;
      }
      v47 = v49;
      if ( v49 )
        ++*(_DWORD *)v49;
      std::vector<glitch::collada::CMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v40,
        &v45);
      glitch::collada::CMesh::SBuffer::~SBuffer(&v45);
      boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v49);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v50);
      if ( a7 && (v22 = v11[4] + v14, !*(_DWORD *)(v22 + 52)) )
      {
        if ( !v21 )
        {
          *(_DWORD *)(v22 + 52) = 0;
          goto LABEL_33;
        }
        ++*((_DWORD *)v21 + 1);
        v25 = *(glitch::IReferenceCounted **)(v22 + 52);
        *(_DWORD *)(v22 + 52) = v21;
        if ( v25 )
          glitch::IReferenceCounted::drop(v25);
      }
      else if ( !v21 )
      {
        goto LABEL_33;
      }
      glitch::IReferenceCounted::drop(v21);
LABEL_33:
      if ( v17 )
      {
        v18 = (*v17)-- == 1;
        if ( v18 )
        {
          v23 = (void *)v17[3];
          if ( v23 )
            operator delete[](v23);
          v17[3] = 0;
        }
      }
      if ( v20 )
      {
        v18 = (*v20)-- == 1;
        if ( v18 )
        {
          v24 = (void *)v20[3];
          if ( v24 )
            operator delete[](v24);
          v20[3] = 0;
        }
      }
      ++v15;
      v14 += 56;
      if ( v39 == v15 )
        goto LABEL_65;
    }
    v17 = nullptr;
LABEL_48:
    v20 = v17;
    if ( !a7 )
      goto LABEL_49;
    goto LABEL_22;
  }
LABEL_65:
  if ( v44 )
    glitch::IReferenceCounted::drop(v44);
  v27 = (_DWORD *)a4[3];
  v28 = v27[7];
  v29 = v27[8];
  v30 = v27[5];
  v31 = v27[10];
  v32 = v27[6];
  v33 = v27[9];
  *(_DWORD *)(a1 + 36) = v30;
  *(_DWORD *)(a1 + 40) = v32;
  *(_DWORD *)(a1 + 44) = v28;
  *(_DWORD *)(a1 + 48) = v29;
  *(_DWORD *)(a1 + 52) = v33;
  *(_DWORD *)(a1 + 56) = v31;
  if ( v42 )
  {
    v18 = (*v42)-- == 1;
    if ( v18 )
    {
      v34 = (void *)v42[3];
      if ( v34 )
        operator delete[](v34);
      v42[3] = 0;
    }
  }
  return a1;
}


// ===== 646148 glitch::collada::CMeshSceneNode::getUID(void) =====
int __fastcall glitch::collada::CMeshSceneNode::getUID(int this)
{
  int *v1; // r3
  bool v2; // zf

  v1 = *(int **)(this + 304);
  v2 = v1 == nullptr;
  if ( v1 )
    this = *v1;
  else
    v1 = *(int **)(this + 308);
  if ( v2 )
    return v1[2];
  return this;
}


// ===== 646160 glitch::collada::CMeshSceneNode::getType(void) =====
int __fastcall glitch::collada::CMeshSceneNode::getType(glitch::collada::CMeshSceneNode *this)
{
  return 1835360612;
}


// ===== 64616c glitch::collada::CMeshSceneNode::getMesh(void) =====
_DWORD *__fastcall glitch::collada::CMeshSceneNode::getMesh(_DWORD *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 308);
  *this = v2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  return this;
}


// ===== 646188 glitch::collada::CMeshSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&) =====
void glitch::collada::CMeshSceneNode::setMesh()
{
  ;
}


// ===== 64618c glitch::collada::CMeshSceneNode::getBoundingBox(void) =====
int __fastcall glitch::collada::CMeshSceneNode::getBoundingBox(glitch::collada::CMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 36))(*((_DWORD *)this + 77));
}


// ===== 6461a8 glitch::collada::CMeshSceneNode::getMaterial(uint) =====
glitch::collada::CMeshSceneNode *__fastcall glitch::collada::CMeshSceneNode::getMaterial(
        glitch::collada::CMeshSceneNode *this,
        unsigned int a2)
{
  (*(void (__fastcall **)(glitch::collada::CMeshSceneNode *, _DWORD))(**(_DWORD **)(a2 + 308) + 24))(
    this,
    *(_DWORD *)(a2 + 308));
  return this;
}


// ===== 6461cc glitch::collada::CMeshSceneNode::getMaterialCount(void) =====
int __fastcall glitch::collada::CMeshSceneNode::getMaterialCount(glitch::collada::CMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
}


// ===== 6461e8 `global constructor keyed to'.._source_glitch_collada_CColladaMeshSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaMeshSceneNode.cpp()
{
  dword_9F6FAC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6FA8 = 1056964608;
}


// ===== 646208 glitch::collada::CMeshSceneNode::onAnimate(uint) =====
int __fastcall glitch::collada::CMeshSceneNode::onAnimate(int this, unsigned int a2)
{
  int v2; // r4

  v2 = this;
  if ( (*(_DWORD *)(this + 284) & 1) != 0 )
  {
    glitch::scene::ISceneNode::onAnimate(this, a2);
    return (*(int (__fastcall **)(_DWORD, unsigned int))(**(_DWORD **)(v2 + 308) + 52))(*(_DWORD *)(v2 + 308), a2);
  }
  return this;
}


// ===== 646240 glitch::collada::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall glitch::collada::CMeshSceneNode::~CMeshSceneNode(glitch::collada::CMeshSceneNode *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 77);
  *(_DWORD *)this = off_97F0CC;
  *((_DWORD *)this + 78) = off_97F1D8;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  *(_DWORD *)this = off_97F234;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_97F234;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_97F340;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_97F1F0);
}


// ===== 6462c4 glitch::collada::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall glitch::collada::CMeshSceneNode::~CMeshSceneNode(glitch::collada::CMeshSceneNode *this)
{
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6462e0 glitch::collada::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall glitch::collada::CMeshSceneNode::~CMeshSceneNode(glitch::collada::CMeshSceneNode *this, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0
  int v6; // r3
  int *v7; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  v5 = *((glitch::IReferenceCounted **)this + 77);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  v6 = a2[1];
  v7 = a2 + 1;
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 28)) = v7[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v7[5];
  glitch::scene::ISceneNode::~ISceneNode(this, v7 + 1);
}


// ===== 64635c glitch::collada::CMeshSceneNode::getRenderVertexCount(void *) =====
int __fastcall glitch::collada::CMeshSceneNode::getRenderVertexCount(glitch::collada::CMeshSceneNode *this, char *a2)
{
  glitch::IReferenceCounted *v2; // r4
  glitch::video::CVertexStreams *v3; // r3
  int v4; // r4
  glitch::video::CVertexStreams *v6; // [sp+0h] [bp-8h] BYREF
  glitch::IReferenceCounted *v7; // [sp+4h] [bp-4h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, char *))(**((_DWORD **)this + 77) + 20))(
    &v7,
    *((_DWORD *)this + 77),
    a2 - 1);
  v2 = v7;
  if ( v7 )
    glitch::IReferenceCounted::drop(v7);
  v6 = *((glitch::video::CVertexStreams **)v2 + 5);
  v3 = v6;
  if ( v6 )
  {
    ++*(_DWORD *)v6;
    v3 = v6;
  }
  v4 = *((_DWORD *)v3 + 2);
  boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v6);
  return v4;
}


// ===== 6463c8 glitch::collada::CMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::collada::CMeshSceneNode::onRegisterSceneNode(glitch::collada::CMeshSceneNode *this)
{
  int v1; // r3
  int v3; // r9
  int v4; // r0
  unsigned int v5; // r4
  unsigned int v6; // r8
  int v8; // r0
  bool v9; // zf
  int v10; // r7
  void (__fastcall *v11)(int, glitch::collada::CMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int); // r11
  int v12; // r12
  glitch::video::CMaterial *v14; // [sp+14h] [bp-10h]
  glitch::video::CMaterial *v15; // [sp+18h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v16; // [sp+1Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 77);
  if ( v1 )
  {
    v3 = *(_DWORD *)(*((_DWORD *)this + 68) + 20);
    if ( v3 )
    {
      v4 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*((_DWORD *)this + 77));
      if ( v4 )
      {
        v5 = 1;
        v6 = v4;
        do
        {
          (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 77) + 20))(
            &v16,
            *((_DWORD *)this + 77),
            v5 - 1);
          if ( v16 )
          {
            glitch::IReferenceCounted::drop(v16);
            (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**((_DWORD **)this + 77) + 24))(
              &v15,
              *((_DWORD *)this + 77),
              v5 - 1);
            v8 = (*(int (__fastcall **)(_DWORD, _DWORD, int, unsigned int))(**((_DWORD **)this + 77) + 56))(
                   *((_DWORD *)this + 77),
                   0,
                   v3,
                   v5 - 1);
            v9 = v8 == 4;
            if ( v8 != 4 )
              v9 = v8 == 16;
            if ( v9 )
            {
              v10 = *((_DWORD *)this + 68);
              v11 = *(void (__fastcall **)(int, glitch::collada::CMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(*(_DWORD *)v10 + 36);
              v14 = v15;
              if ( (*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v14 + 1) + 24)
                                          + 12 * glitch::video::CMaterial::getTechnique(v15)
                                          + 8)
                              + 4)
                  & 0x10000) != 0 )
                v12 = 8;
              else
                v12 = 4;
              v11(v10, this, &v15, v5, v12, 0, 0x7FFFFFFF);
              if ( (*((_DWORD *)this + 71) & 0x800) != 0 )
                (*(void (__fastcall **)(_DWORD, glitch::collada::CMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(**((_DWORD **)this + 68) + 36))(
                  *((_DWORD *)this + 68),
                  this,
                  &v15,
                  v5,
                  7,
                  0,
                  0x7FFFFFFF);
            }
            else if ( v8 == 5 )
            {
              (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 36))(*((_DWORD *)this + 77));
            }
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v15);
          }
        }
        while ( v6 > v5++ );
      }
    }
  }
  return 1;
}


// ===== 646588 glitch::collada::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::collada::SNode *,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::collada::CMeshSceneNode::CMeshSceneNode(
        _DWORD *a1,
        int *a2,
        int a3,
        int a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7)
{
  int v10; // r3
  bool v11; // zf

  a1[79] = 1;
  *a1 = off_97F48C;
  a1[78] = off_95B720;
  *(int *)((char *)&elf_hash_bucket[23] + (_DWORD)a1) = (int)off_97F4AC;
  glitch::scene::ISceneNode::ISceneNode((int)a1, (int *)off_97F1F0, a4, a5, a6, a7);
  *a1 = off_97F234;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_97F234;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = off_97F340;
  a1[78] = off_97F1D8;
  *a1 = off_97F0CC;
  a1[76] = a3;
  v10 = *a2;
  v11 = *a2 == 0;
  a1[77] = *a2;
  if ( !v11 )
    ++*(_DWORD *)(v10 + 4);
  glitch::scene::ISceneNode::setAutomaticCulling((int)a1, 2);
  return a1;
}


// ===== 646678 glitch::collada::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::collada::SNode *,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int *__fastcall glitch::collada::CMeshSceneNode::CMeshSceneNode(
        int *a1,
        int *a2,
        int *a3,
        int a4,
        int a5,
        _DWORD *a6,
        _DWORD *a7,
        _DWORD *a8)
{
  _DWORD *v8; // r6
  int v13; // r3
  int v14; // r3
  int v15; // r3
  bool v16; // zf

  v8 = a2 + 1;
  glitch::scene::ISceneNode::ISceneNode((int)a1, a2 + 2, a5, a6, a7, a8);
  v13 = a2[1];
  *a1 = v13;
  *(int *)((char *)a1 + *(_DWORD *)(v13 - 28)) = v8[4];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = v8[5];
  v14 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v14 - 28)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[8];
  a1[76] = a4;
  v15 = *a3;
  v16 = *a3 == 0;
  a1[77] = *a3;
  if ( !v16 )
    ++*(_DWORD *)(v15 + 4);
  glitch::scene::ISceneNode::setAutomaticCulling((int)a1, 2);
  return a1;
}


// ===== 646730 glitch::collada::CMeshSceneNode::render(void *) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CMeshSceneNode::render(
        glitch::IReferenceCounted *this,
        char *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r4
  glitch::video::CVertexStreams **v5; // r5
  char *v6; // r6
  _DWORD *v7; // r3
  int v8; // r8
  const glitch::video::CMaterialRenderer *v9; // r1
  glitch::video::CMaterialVertexAttributeMap **v10; // r10
  bool v11; // zf
  const glitch::video::CMaterialRenderer *v12; // r1
  glitch::video::CMaterialVertexAttributeMap **v13; // r4
  char v14; // r0
  glitch::IReferenceCounted *v15; // [sp+4h] [bp-18h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v16; // [sp+8h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v17; // [sp+Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v18; // [sp+10h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v19; // [sp+14h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 77);
  v3 = this;
  v5 = *(glitch::video::CVertexStreams ***)(*((_DWORD *)this + 68) + 20);
  if ( v2 )
  {
    if ( v5 )
    {
      this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, glitch::video::CVertexStreams **, int))(*(_DWORD *)v2 + 68))(
                                            *((_DWORD *)this + 77),
                                            v5,
                                            (int)this + 36);
      if ( a2 )
      {
        v6 = a2 - 1;
        this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted **, _DWORD, char *))(**((_DWORD **)v3 + 77) + 20))(
                                              &v19,
                                              *((_DWORD *)v3 + 77),
                                              v6);
        if ( v19 )
        {
          v7 = *((_DWORD **)v3 + 77);
          if ( (v7[5] & (1 << ((unsigned __int8)v6 & 0x1F))) != 0 )
          {
            v8 = 0;
          }
          else
          {
            v14 = (*(int (__fastcall **)(_DWORD, int, glitch::video::CVertexStreams **, char *))(*v7 + 56))(
                    *((_DWORD *)v3 + 77),
                    1,
                    v5,
                    v6);
            v7 = *((_DWORD **)v3 + 77);
            v8 = v14 & 4;
          }
          (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD *, char *))(*v7 + 24))(&v18, v7, v6);
          (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, char *))(**((_DWORD **)v3 + 77)
                                                                                                + 28))(
            &v16,
            *((_DWORD *)v3 + 77),
            v6);
          v17 = v16;
          if ( v16 )
          {
            ++*(_DWORD *)v16;
            v10 = (glitch::video::CMaterialVertexAttributeMap **)v16;
            if ( v16 )
            {
              v11 = (*(_DWORD *)v16)-- == 1;
              if ( v11 )
              {
                glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v10, v9);
                LC_API_FREE_0(v10);
              }
            }
          }
          glitch::video::IVideoDriver::setMaterial((int)v5, &v18, (int)&v17);
          v15 = v19;
          if ( v19 )
            ++*((_DWORD *)v19 + 1);
          glitch::video::IVideoDriver::drawMeshBuffer(v5, (int)&v15);
          if ( v15 )
            glitch::IReferenceCounted::drop(v15);
          if ( v8 )
            (*(void (__fastcall **)(_DWORD, glitch::video::CVertexStreams **, char *))(**((_DWORD **)v3 + 77) + 60))(
              *((_DWORD *)v3 + 77),
              v5,
              v6);
          v13 = (glitch::video::CMaterialVertexAttributeMap **)v17;
          if ( v17 )
          {
            v11 = (*(_DWORD *)v17)-- == 1;
            if ( v11 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v13, v12);
              LC_API_FREE_0(v13);
            }
          }
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
          this = v19;
          if ( v19 )
            return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v19);
        }
      }
    }
  }
  return this;
}


// ===== 646928 `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode(
        glitch::collada::CMeshSceneNode *this)
{
  glitch::collada::CMeshSceneNode::~CMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 646938 `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode(
        glitch::collada::CMeshSceneNode *this)
{
  glitch::collada::CMeshSceneNode::~CMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 646948 `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode(
        glitch::collada::CMeshSceneNode *this)
{
  glitch::collada::CMeshSceneNode::~CMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 646958 `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CMeshSceneNode::~CMeshSceneNode(
        glitch::collada::CMeshSceneNode *this)
{
  glitch::collada::CMeshSceneNode::~CMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 646968 glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(void) =====
int __fastcall glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(int this)
{
  *(_BYTE *)(this + 28) = 1;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  return this;
}


// ===== 646994 glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(void) =====
int __fastcall glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(int this)
{
  *(_BYTE *)(this + 28) = 1;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)this = 0;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  return this;
}


// ===== 6469c0 glitch::collada::CModularSkinnedMesh::clone(void) =====
_DWORD *__fastcall glitch::collada::CModularSkinnedMesh::clone(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 6469cc glitch::collada::CModularSkinnedMesh::getCategoryName(int) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getCategoryName(int this, int a2)
{
  _DWORD *v2; // r3
  bool v3; // cc

  v2 = *(_DWORD **)(this + 28);
  v3 = a2 < *v2;
  if ( a2 >= *v2 )
    this = 0;
  else
    v2 = (_DWORD *)v2[1];
  if ( v3 )
    return v2[4 * a2];
  return this;
}


// ===== 6469e8 glitch::collada::CModularSkinnedMesh::getModuleName(int,int) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getModuleName(
        glitch::collada::CModularSkinnedMesh *this,
        int a2,
        int a3)
{
  _DWORD *v3; // r3
  int v4; // r1

  v3 = *((_DWORD **)this + 7);
  if ( a2 < *v3 && (v4 = v3[1] + 16 * a2, a3 < *(_DWORD *)(v4 + 8)) )
    return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 12) + 8 * a3 + 4) + 4);
  else
    return 0;
}


// ===== 646a28 glitch::collada::CModularSkinnedMesh::getCategoryCount(void) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getCategoryCount(glitch::collada::CModularSkinnedMesh *this)
{
  return **((_DWORD **)this + 7);
}


// ===== 646a34 glitch::collada::CModularSkinnedMesh::getCategoryModuleCount(int) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getCategoryModuleCount(
        glitch::collada::CModularSkinnedMesh *this,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 7) + 4) + 16 * a2 + 8);
}


// ===== 646a48 glitch::collada::CModularSkinnedMesh::getCurrentModuleId(int) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getCurrentModuleId(
        glitch::collada::CModularSkinnedMesh *this,
        int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 9) + 8 * a2);
}


// ===== 646a54 glitch::collada::CModularSkinnedMesh::getCurrentModuleName(int) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getCurrentModuleName(
        glitch::collada::CModularSkinnedMesh *this,
        int a2)
{
  int result; // r0
  int v5; // r3
  bool v6; // zf

  result = glitch::collada::CModularSkinnedMesh::getCurrentModuleId(this, a2);
  v6 = result == -1;
  if ( result == -1 )
    result = 0;
  else
    v5 = *((_DWORD *)this + 7);
  if ( !v6 )
    return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v5 + 4) + 16 * a2 + 12) + 8 * result + 4) + 4);
  return result;
}


// ===== 646a8c glitch::collada::CModularSkinnedMesh::reallocate(uint) =====
int __fastcall glitch::collada::CModularSkinnedMesh::reallocate(
        glitch::collada::CModularSkinnedMesh *this,
        unsigned int a2)
{
  return 0;
}


// ===== 646a94 glitch::collada::CModularSkinnedMesh::getType(void) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getType(glitch::collada::CModularSkinnedMesh *this)
{
  return 3;
}


// ===== 646a9c glitch::collada::CModularSkinnedMesh::onAnimate(uint) =====
int __fastcall glitch::collada::CModularSkinnedMesh::onAnimate(int this, unsigned int a2)
{
  int v2; // r4
  int v3; // r5
  int v4; // r7
  int v6; // r3

  v2 = *(_DWORD *)(this + 36);
  v3 = *(_DWORD *)(this + 40);
  v4 = this;
  while ( v2 != v3 )
  {
    while ( 1 )
    {
      v6 = *(_DWORD *)(v2 + 4);
      v2 += 8;
      this = v6;
      if ( !v6 )
        break;
      this = (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v6 + 52))(v6, a2);
      if ( v2 == v3 )
        goto LABEL_5;
    }
  }
LABEL_5:
  *(_BYTE *)(v4 + 89) = 1;
  return this;
}


// ===== 646af0 glitch::collada::CModularSkinnedMesh::needOutputBuffer(void) =====
int __fastcall glitch::collada::CModularSkinnedMesh::needOutputBuffer(glitch::collada::CModularSkinnedMesh *this)
{
  return *((unsigned __int8 *)this + 88);
}


// ===== 646af8 glitch::collada::CModularSkinnedMesh::updateTechnique(uint) =====
int __fastcall glitch::collada::CModularSkinnedMesh::updateTechnique(int this, unsigned int a2)
{
  int v2; // r6
  unsigned int v3; // r3
  int *v4; // r5
  int *v5; // r4
  int v6; // r2
  int v7; // r3

  v2 = this;
  v3 = *(_DWORD *)(this + 48) + 32 * a2;
  v4 = *(int **)(v3 + 16);
  v5 = *(int **)(v3 + 12);
  while ( v5 != v4 )
  {
    while ( 1 )
    {
      v6 = *v5++;
      v7 = *(_DWORD *)(*(_DWORD *)(v2 + 36) + 8 * v6 + 4);
      this = v7;
      if ( !v7 )
        break;
      this = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 72))(v7);
      if ( v5 == v4 )
        return this;
    }
  }
  return this;
}


// ===== 646b54 glitch::collada::CModularSkinnedMesh::getMeshBufferCount(void) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getMeshBufferCount(glitch::collada::CModularSkinnedMesh *this)
{
  return (*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 5;
}


// ===== 646b68 glitch::collada::CModularSkinnedMesh::getMeshBuffer(uint) =====
_DWORD *__fastcall glitch::collada::CModularSkinnedMesh::getMeshBuffer(_DWORD *this, unsigned int a2, int a3)
{
  int v3; // r3
  _DWORD *v4; // r4
  int v5; // r5
  int v6; // r3
  int v7; // r1

  v3 = *(_DWORD *)(a2 + 48);
  v4 = this;
  v5 = v3 + 32 * a3;
  if ( *(_BYTE *)(v5 + 28) )
  {
    v6 = *(_DWORD *)(v3 + 32 * a3);
    *this = v6;
    if ( v6 )
      ++*(_DWORD *)(v6 + 4);
  }
  else
  {
    v7 = *(_DWORD *)(*(_DWORD *)(a2 + 36) + 8 * **(_DWORD **)(v5 + 12) + 4);
    (*(void (__fastcall **)(_DWORD *, int, _DWORD))(*(_DWORD *)v7 + 20))(this, v7, *(unsigned __int8 *)(v5 + 28));
    return v4;
  }
  return this;
}


// ===== 646bd4 glitch::collada::CModularSkinnedMesh::getMaterial(uint) =====
_DWORD *__fastcall glitch::collada::CModularSkinnedMesh::getMaterial(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 48) + 32 * a3 + 4);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 646bf8 glitch::collada::CModularSkinnedMesh::getMaterialVertexAttributeMap(uint) =====
_DWORD *__fastcall glitch::collada::CModularSkinnedMesh::getMaterialVertexAttributeMap(
        _DWORD *this,
        unsigned int a2,
        int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 48) + 32 * a3 + 8);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 646c1c glitch::collada::CModularSkinnedMesh::computeBoundingBox(void) =====
int __fastcall glitch::collada::CModularSkinnedMesh::computeBoundingBox(int this)
{
  int v1; // r4
  int v2; // r5
  int v3; // r7
  int v4; // r3
  int i; // r4
  int v6; // r3
  float *v7; // r0

  v1 = *(_DWORD *)(this + 36);
  v2 = *(_DWORD *)(this + 40);
  v3 = this;
  if ( v1 != v2 )
  {
    while ( 1 )
    {
      v4 = *(_DWORD *)(v1 + 4);
      if ( v4 )
        break;
      v1 += 8;
      if ( v1 == v2 )
        goto LABEL_4;
    }
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 36))(*(_DWORD *)(v1 + 4));
    *(_DWORD *)(v3 + 64) = *(_DWORD *)this;
    *(_DWORD *)(v3 + 68) = *(_DWORD *)(this + 4);
    *(_DWORD *)(v3 + 72) = *(_DWORD *)(this + 8);
    *(_DWORD *)(v3 + 76) = *(_DWORD *)(this + 12);
    *(_DWORD *)(v3 + 80) = *(_DWORD *)(this + 16);
    *(_DWORD *)(v3 + 84) = *(_DWORD *)(this + 20);
  }
LABEL_4:
  for ( i = v1 + 8; i != v2; i += 8 )
  {
    v6 = *(_DWORD *)(i + 4);
    this = v6;
    if ( v6 )
    {
      v7 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 36))(v6);
      this = glitch::core::aabbox3d<float>::addInternalBox((float *)(v3 + 64), v7);
    }
  }
  *(_BYTE *)(v3 + 89) = 0;
  return this;
}


// ===== 646cdc glitch::collada::CModularSkinnedMesh::getBoundingBox(void) =====
char *__fastcall glitch::collada::CModularSkinnedMesh::getBoundingBox(glitch::collada::CModularSkinnedMesh *this)
{
  if ( *((_BYTE *)this + 89) )
    glitch::collada::CModularSkinnedMesh::computeBoundingBox((int)this);
  return (char *)this + 64;
}


// ===== 646cfc std::priv::__copy<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,int>(glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r5
  int v7; // r7
  int v8; // r6
  int v9; // r2
  int v10; // r3
  glitch::IReferenceCounted *v11; // r0

  v3 = a2 - a1;
  v4 = v3 >> 3;
  if ( v3 >> 3 > 0 )
  {
    v7 = v3 >> 3;
    v8 = 0;
    do
    {
      v9 = a3 + v8;
      *(_DWORD *)(a3 + v8) = *(_DWORD *)(a1 + v8);
      v10 = *(_DWORD *)(a1 + v8 + 4);
      v8 += 8;
      if ( v10 )
        ++*(_DWORD *)(v10 + 4);
      v11 = *(glitch::IReferenceCounted **)(v9 + 4);
      *(_DWORD *)(v9 + 4) = v10;
      if ( v11 )
        glitch::IReferenceCounted::drop(v11);
      --v7;
    }
    while ( v7 );
    a3 += 8 * v4;
  }
  return a3;
}


// ===== 646d70 std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::CModularSkinnedMesh::SModule*,glitch::collada::CModularSkinnedMesh::SModule*,std::__false_type const&) =====
int __fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v5; // r0
  int v6; // r7
  int v7; // r8
  int v8; // r6
  glitch::IReferenceCounted *v9; // r0

  v5 = std::priv::__copy<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,int>(
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
      v9 = *(glitch::IReferenceCounted **)(v8 + 4);
      v8 += 8;
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 646de0 std::priv::__copy_backward<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,int>(glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy_backward<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r4
  int v4; // r8
  int v5; // r6
  int v6; // r5
  int v7; // r7
  int v8; // r3
  glitch::IReferenceCounted *v9; // r0

  v3 = (a2 - a1) >> 3;
  v4 = a3;
  if ( v3 > 0 )
  {
    v5 = a2;
    v6 = a3;
    v7 = (a2 - a1) >> 3;
    do
    {
      *(_DWORD *)(v6 - 8) = *(_DWORD *)(v5 - 8);
      v8 = *(_DWORD *)(v5 - 4);
      v5 -= 8;
      if ( v8 )
        ++*(_DWORD *)(v8 + 4);
      v9 = *(glitch::IReferenceCounted **)(v6 - 4);
      *(_DWORD *)(v6 - 4) = v8;
      v6 -= 8;
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
      --v7;
    }
    while ( v7 );
    v4 -= 8 * v3;
  }
  return v4;
}


// ===== 646e54 std::priv::__fill<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule,int>(glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule const&,std::random_access_iterator_tag const&,int *) =====
glitch::IReferenceCounted *__fastcall std::priv::__fill<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule,int>(
        glitch::IReferenceCounted *result,
        int a2,
        _DWORD *a3)
{
  int v3; // r5
  glitch::IReferenceCounted *v4; // r4
  int v6; // r6
  char *v7; // r2
  int v8; // r3

  v3 = (a2 - (int)result) >> 3;
  v4 = result;
  if ( v3 > 0 )
  {
    v6 = 0;
    do
    {
      v7 = (char *)v4 + v6;
      *(_DWORD *)((char *)v4 + v6) = *a3;
      v8 = a3[1];
      v6 += 8;
      if ( v8 )
        ++*(_DWORD *)(v8 + 4);
      result = *((glitch::IReferenceCounted **)v7 + 1);
      *((_DWORD *)v7 + 1) = v8;
      if ( result )
        result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
      --v3;
    }
    while ( v3 );
  }
  return result;
}


// ===== 646eb8 std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::CModularSkinnedMesh::SModule*,uint,glitch::collada::CModularSkinnedMesh::SModule const&,std::__false_type const&) =====
glitch::IReferenceCounted *__fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        glitch::IReferenceCounted *a2,
        unsigned int a3,
        _DWORD *a4)
{
  unsigned int v6; // r3
  glitch::IReferenceCounted *v7; // r3
  glitch::IReferenceCounted *result; // r0
  int v9; // r12
  int v10; // r6
  int v11; // r1
  int v12; // lr
  unsigned int v13; // r2
  int v14; // r7
  int v15; // r12
  int v16; // r2
  unsigned int v17; // r2
  int v18; // r7
  unsigned int v19; // r2
  int v20; // r6
  int v21; // lr
  int v22; // r1
  int v23; // r7
  int v24; // lr
  int v25; // r1
  int v26; // [sp+8h] [bp-18h] BYREF
  glitch::IReferenceCounted *v27; // [sp+Ch] [bp-14h]
  char v28[4]; // [sp+1Ch] [bp-4h] BYREF

  if ( (unsigned int)a4 < *a1 )
  {
    v6 = a1[1];
    goto LABEL_8;
  }
  v6 = a1[1];
  if ( (unsigned int)a4 >= v6 )
  {
LABEL_8:
    v9 = (int)(v6 - (_DWORD)a2) >> 3;
    if ( a3 >= v9 )
    {
      v17 = a3 - v9;
      v18 = (int)(8 * v17) >> 3;
      v19 = v6 + 8 * v17;
      if ( v18 > 0 )
      {
        v20 = 0;
        do
        {
          *(_DWORD *)(v6 + v20) = *a4;
          v21 = v6 + v20;
          v22 = a4[1];
          v20 += 8;
          *(_DWORD *)(v21 + 4) = v22;
          if ( v22 )
            ++*(_DWORD *)(v22 + 4);
          --v18;
        }
        while ( v18 );
      }
      a1[1] = v19;
      if ( v9 > 0 )
      {
        v23 = 0;
        do
        {
          *(_DWORD *)(v19 + v23) = *(_DWORD *)((char *)a2 + v23);
          v24 = v19 + v23;
          v25 = *(_DWORD *)((char *)a2 + v23 + 4);
          v23 += 8;
          *(_DWORD *)(v24 + 4) = v25;
          if ( v25 )
            ++*(_DWORD *)(v25 + 4);
          --v9;
        }
        while ( v9 );
        v19 = a1[1];
      }
      a1[1] = v19 + 8 * ((int)(v6 - (_DWORD)a2) >> 3);
      return std::priv::__fill<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule,int>(
               a2,
               v6,
               a4);
    }
    else
    {
      v10 = 8 * a3;
      v11 = v6 - 8 * a3;
      v12 = (int)(8 * a3) >> 3;
      if ( v12 > 0 )
      {
        v14 = 0;
        do
        {
          *(_DWORD *)(v6 + v14) = *(_DWORD *)(v11 + v14);
          v15 = v6 + v14;
          v16 = *(_DWORD *)(v11 + v14 + 4);
          v14 += 8;
          *(_DWORD *)(v15 + 4) = v16;
          if ( v16 )
            ++*(_DWORD *)(v16 + 4);
          --v12;
        }
        while ( v12 );
        v13 = a1[1];
      }
      else
      {
        v13 = v6;
      }
      a1[1] = v13 + v10;
      std::priv::__copy_backward<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule *,int>(
        (int)a2,
        v11,
        v6);
      return std::priv::__fill<glitch::collada::CModularSkinnedMesh::SModule *,glitch::collada::CModularSkinnedMesh::SModule,int>(
               a2,
               (int)a2 + v10,
               a4);
    }
  }
  v7 = (glitch::IReferenceCounted *)a4[1];
  v26 = *a4;
  v27 = v7;
  if ( v7 )
    ++*((_DWORD *)v7 + 1);
  std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    a1,
    a2,
    a3,
    &v26,
    v28);
  result = v27;
  if ( v27 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v27);
  return result;
}


// ===== 647088 `global constructor keyed to'.._source_glitch_collada_CColladaModularSkinnedMesh.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaModularSkinnedMesh.cpp()
{
  dword_9F6FB8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6FB4 = 1056964608;
}


// ===== 6470a8 glitch::collada::CModularSkinnedMesh::setMaterial(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
glitch::video::CMaterialVertexAttributeMap **__fastcall glitch::collada::CModularSkinnedMesh::setMaterial(
        int a1,
        int a2,
        glitch::video::CMaterial **a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  glitch::video::CMaterial *v4; // r2
  int v6; // r0
  int v7; // r5
  int v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r3
  int v11; // r2
  int v12; // r5
  glitch::video::CMaterialVertexAttributeMap *v14; // [sp+0h] [bp-8h] BYREF
  glitch::video::CMaterial *v15; // [sp+4h] [bp-4h] BYREF

  v4 = *a3;
  v6 = *(_DWORD *)(a1 + 48);
  v15 = v4;
  v7 = 32 * a2;
  if ( v4 )
    a2 = *(_DWORD *)v4;
  v9 = v6 + v7;
  if ( v4 )
  {
    *(_DWORD *)v4 = a2 + 1;
    v4 = v15;
  }
  v15 = *(glitch::video::CMaterial **)(v9 + 4);
  *(_DWORD *)(v9 + 4) = v4;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v15);
  v10 = *a4;
  v11 = *(_DWORD *)(a1 + 48);
  v14 = v10;
  v12 = v11 + v7;
  if ( v10 )
  {
    ++*(_DWORD *)v10;
    v10 = v14;
  }
  v14 = *(glitch::video::CMaterialVertexAttributeMap **)(v12 + 8);
  *(_DWORD *)(v12 + 8) = v10;
  return boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v14);
}


// ===== 647138 glitch::collada::CModularSkinnedMesh::setIsSkinningEnabled(bool) =====
glitch::collada::ISkinnedMesh *__fastcall glitch::collada::CModularSkinnedMesh::setIsSkinningEnabled(
        glitch::collada::ISkinnedMesh *this,
        _BOOL4 a2)
{
  glitch::collada::ISkinnedMesh *v2; // r7
  int v4; // r4
  int v5; // r6
  int v6; // r3

  v2 = this;
  if ( (*((_DWORD *)this + 5) & 1) != 0 )
  {
    v4 = *((_DWORD *)this + 9);
    v5 = *((_DWORD *)this + 10);
    while ( v4 != v5 )
    {
      while ( 1 )
      {
        v6 = *(_DWORD *)(v4 + 4);
        v4 += 8;
        if ( !v6 )
          break;
        (*(void (__fastcall **)(int, _BOOL4))(*(_DWORD *)v6 + 84))(v6, a2);
        if ( v4 == v5 )
          return (glitch::collada::ISkinnedMesh *)glitch::collada::ISkinnedMesh::setIsSkinningEnabled(v2, a2);
      }
    }
    return (glitch::collada::ISkinnedMesh *)glitch::collada::ISkinnedMesh::setIsSkinningEnabled(v2, a2);
  }
  return this;
}


// ===== 6471a0 std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 647200 std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
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
      v4 -= 8;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 647244 std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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
      v1 -= 8;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 647290 std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<uint const*>(uint &,uint const*,uint const*) =====
void *__fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<unsigned int const*>(
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


// ===== 6472cc std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
        int a1,
        int a2)
{
  _BYTE *v4; // r2
  _BYTE *v5; // r3
  _BYTE *v6; // r7
  signed int v7; // r12
  unsigned int v8; // r5
  _BYTE *v9; // r0
  unsigned int v10; // r1
  _BYTE *v11; // r1
  int v13; // r3
  int v14; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = *(_BYTE **)a2;
    v5 = *(_BYTE **)(a2 + 4);
    v6 = *(_BYTE **)a1;
    v7 = (signed int)&v5[-*(_DWORD *)a2];
    v8 = v7 >> 2;
    if ( v7 >> 2 > (unsigned int)((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2) )
    {
      v14 = (int)&v5[-*(_DWORD *)a2] >> 2;
      v6 = std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<unsigned int const*>(
             a1,
             &v14,
             v4,
             v5);
      GlitchFree(*(void **)a1);
      v13 = v14;
      *(_DWORD *)a1 = v6;
      *(_DWORD *)(a1 + 8) = &v6[4 * v13];
    }
    else
    {
      v9 = *(_BYTE **)(a1 + 4);
      v10 = (v9 - v6) >> 2;
      if ( v8 <= v10 )
      {
        if ( v7 )
        {
          memmove(v6, v4, v7);
          v6 = *(_BYTE **)a1;
        }
      }
      else
      {
        v11 = &v4[4 * v10];
        if ( v11 != v4 )
        {
          memmove(v6, v4, v11 - v4);
          v9 = *(_BYTE **)(a1 + 4);
          v6 = *(_BYTE **)a1;
          v5 = *(_BYTE **)(a2 + 4);
          v11 = (_BYTE *)(*(_DWORD *)a2 + ((unsigned int)&v9[-*(_DWORD *)a1] & 0xFFFFFFFC));
        }
        if ( v11 != v5 )
        {
          memcpy(v9, v11, v5 - v11);
          v6 = *(_BYTE **)a1;
        }
      }
    }
    *(_DWORD *)(a1 + 4) = &v6[4 * v8];
  }
  return a1;
}


// ===== 6473c4 std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::vector(
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


// ===== 647430 glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(glitch::collada::CModularSkinnedMesh::SModularBuffer const&) =====
glitch::collada::CModularSkinnedMesh::SModularBuffer *__fastcall glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(
        glitch::collada::CModularSkinnedMesh::SModularBuffer *this,
        const glitch::collada::CModularSkinnedMesh::SModularBuffer *a2,
        int a3)
{
  int v3; // r3
  int *v6; // r3
  int *v7; // r3
  char *v8; // r1
  _DWORD *v9; // r0
  int v10; // r3
  glitch::collada::CModularSkinnedMesh::SModularBuffer *result; // r0

  v3 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  if ( v3 )
  {
    a3 = *(_DWORD *)(v3 + 4) + 1;
    *(_DWORD *)(v3 + 4) = a3;
  }
  v6 = *((int **)a2 + 1);
  *((_DWORD *)this + 1) = v6;
  if ( v6 )
  {
    a3 = *v6 + 1;
    *v6 = a3;
  }
  v7 = *((int **)a2 + 2);
  v8 = (char *)a2 + 12;
  *((_DWORD *)this + 2) = v7;
  if ( v7 )
    a3 = *v7;
  v9 = (_DWORD *)((char *)this + 12);
  if ( v7 )
    *v7 = a3 + 1;
  std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::vector(v9, (int)v8);
  v10 = *((_DWORD *)a2 + 6);
  result = this;
  *((_DWORD *)this + 6) = v10;
  if ( v10 )
    ++*(_DWORD *)(v10 + 4);
  *((_BYTE *)this + 28) = *((_BYTE *)a2 + 28);
  return result;
}


// ===== 6474b8 glitch::collada::CModularSkinnedMesh::getModuleId(char const*) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getModuleId(
        glitch::collada::CModularSkinnedMesh *this,
        const char *a2)
{
  int *v2; // r3
  int v4; // r10
  int v5; // r9
  int v6; // r8
  int v7; // r3
  int v8; // r5
  int v9; // r6
  int v10; // r4

  v2 = *((int **)this + 7);
  v4 = *v2;
  if ( *v2 <= 0 )
    return -1;
  v5 = v2[1];
  v6 = 0;
  while ( 1 )
  {
    v7 = v5 + 16 * v6;
    v8 = *(_DWORD *)(v7 + 8);
    if ( v8 > 0 )
      break;
LABEL_8:
    if ( ++v6 == v4 )
      return -1;
  }
  v9 = *(_DWORD *)(v7 + 12);
  v10 = 0;
  while ( LC_API_STRCMP_0(*(const char **)(*(_DWORD *)(v9 + 8 * v10 + 4) + 4), a2) )
  {
    if ( ++v10 == v8 )
      goto LABEL_8;
  }
  return v10;
}


// ===== 647538 glitch::collada::CModularSkinnedMesh::getCategoryId(char const*) =====
int __fastcall glitch::collada::CModularSkinnedMesh::getCategoryId(
        glitch::collada::CModularSkinnedMesh *this,
        const char *a2)
{
  int *v2; // r3
  int v4; // r5
  int v5; // r7
  int v6; // r4

  v2 = *((int **)this + 7);
  v4 = *v2;
  if ( *v2 <= 0 )
    return -1;
  v5 = v2[1];
  v6 = 0;
  while ( LC_API_STRCMP_0(*(const char **)(v5 + 16 * v6), a2) )
  {
    if ( ++v6 == v4 )
      return -1;
  }
  return v6;
}


// ===== 647590 std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::CModularSkinnedMesh::SModule*,uint,glitch::collada::CModularSkinnedMesh::SModule const&) =====
void __fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        void **a1,
        glitch::IReferenceCounted *a2,
        unsigned int a3,
        _DWORD *a4)
{
  size_t v8; // r8
  _DWORD *v9; // r0
  char *v10; // lr
  _DWORD *v11; // r10
  int v12; // r9
  _DWORD *v13; // r9
  int v14; // r1
  int v15; // r0
  _DWORD *v16; // r2
  int v17; // r3
  int v18; // r1
  _DWORD *v19; // r7
  int v20; // r0
  _DWORD *v21; // r2
  int v22; // r3
  int v23; // lr
  int v24; // r1
  int v25; // r0
  _DWORD *v26; // r2
  int v27; // r3
  int v28; // r3

  if ( a3 )
  {
    if ( a3 <= ((_BYTE *)a1[2] - (_BYTE *)a1[1]) >> 3 )
    {
      std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 2
         * std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = GlitchAlloc(v8 * 4, 0);
      v10 = (char *)*a1;
      v11 = v9;
      v12 = (a2 - (glitch::IReferenceCounted *)*a1) >> 3;
      if ( v12 > 0 )
      {
        v14 = (a2 - (glitch::IReferenceCounted *)*a1) >> 3;
        v15 = 0;
        do
        {
          v11[v15] = *(_DWORD *)&v10[v15 * 4];
          v16 = &v11[v15];
          v17 = *(_DWORD *)&v10[v15 * 4 + 4];
          v15 += 2;
          v16[1] = v17;
          if ( v17 )
            ++*(_DWORD *)(v17 + 4);
          --v14;
        }
        while ( v14 );
        v13 = &v11[2 * v12];
      }
      else
      {
        v13 = v9;
      }
      if ( a3 == 1 )
      {
        v19 = v13 + 2;
        *v13 = *a4;
        v28 = a4[1];
        v13[1] = v28;
        if ( v28 )
          ++*(_DWORD *)(v28 + 4);
      }
      else
      {
        v18 = (int)(8 * a3) >> 3;
        v19 = &v13[2 * a3];
        if ( v18 > 0 )
        {
          v20 = 0;
          do
          {
            v13[v20] = *a4;
            v21 = &v13[v20];
            v22 = a4[1];
            v20 += 2;
            v21[1] = v22;
            if ( v22 )
              ++*(_DWORD *)(v22 + 4);
            --v18;
          }
          while ( v18 );
        }
      }
      v23 = ((_BYTE *)a1[1] - (_BYTE *)a2) >> 3;
      if ( v23 > 0 )
      {
        v24 = ((_BYTE *)a1[1] - (_BYTE *)a2) >> 3;
        v25 = 0;
        do
        {
          v19[v25] = *(_DWORD *)((char *)a2 + v25 * 4);
          v26 = &v19[v25];
          v27 = *(_DWORD *)((char *)a2 + v25 * 4 + 4);
          v25 += 2;
          v26[1] = v27;
          if ( v27 )
            ++*(_DWORD *)(v27 + 4);
          --v24;
        }
        while ( v24 );
        v19 += 2 * v23;
      }
      std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(a1);
      a1[1] = v19;
      a1[2] = &v11[v8];
      *a1 = v11;
    }
  }
}


// ===== 647724 std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::collada::CModularSkinnedMesh::SModule const&) =====
void __fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        _DWORD *a3)
{
  int v3; // r12
  unsigned int v5; // r2
  int v6; // r1

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 3;
  if ( a2 >= v5 )
  {
    std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (void **)a1,
      *(glitch::IReferenceCounted **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 8 * a2;
    if ( v6 != v3 )
      std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v6,
        *(_DWORD *)(a1 + 4));
  }
}


// ===== 647774 glitch::collada::CModularSkinnedMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,uint) =====
int __fastcall glitch::collada::CModularSkinnedMesh::onPrepareBufferForRendering(int a1, int a2, int a3, int a4)
{
  int v7; // r2
  int v8; // r12
  int v9; // r3
  int v10; // r7
  glitch::IReferenceCounted *v12; // r5
  glitch::video::CMaterial *v13; // r3
  _BOOL4 v14; // r8
  int v15; // r10
  int Technique; // r0
  int (__fastcall *v17)(int, _BOOL4, _DWORD, _DWORD, int, char *, char *, _DWORD); // r12
  int v18; // lr

  if ( !*(_BYTE *)(a1 + 24) )
    return 16;
  v7 = *(_DWORD *)(a1 + 48);
  v8 = 32 * a4;
  v9 = v7 + 32 * a4;
  if ( !*(_BYTE *)(v9 + 28) )
  {
    if ( a2 == 1 )
    {
      (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 76))(a1, a4);
      return 16;
    }
    return 16;
  }
  v12 = *(glitch::IReferenceCounted **)(v7 + 32 * a4);
  if ( v12 )
  {
    ++*((_DWORD *)v12 + 1);
    v9 = *(_DWORD *)(a1 + 48) + v8;
  }
  v13 = *(glitch::video::CMaterial **)(v9 + 4);
  v14 = a2 == 0;
  v15 = *((_DWORD *)v13 + 1);
  Technique = glitch::video::CMaterial::getTechnique(v13);
  v17 = *(int (__fastcall **)(int, _BOOL4, _DWORD, _DWORD, int, char *, char *, _DWORD))(*(_DWORD *)a3 + 496);
  v18 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v15 + 24) + 12 * Technique + 8) + 32) + 56);
  ++*((_DWORD *)v12 + 1);
  v10 = v17(a3, v14, *((_DWORD *)v12 + 9), *((_DWORD *)v12 + 10), v18 & 0x20001, (char *)v12 + 20, (char *)v12 + 48, 0);
  glitch::IReferenceCounted::drop(v12);
  if ( (v10 & 4) != 0 )
  {
    *(_DWORD *)(a1 + 20) |= 1 << (a4 & 0x1F);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)a1 + 76))(a1, a4);
  }
  glitch::IReferenceCounted::drop(v12);
  return v10;
}


// ===== 6478c0 std::vector<uint,glitch::core::SAllocator<uint,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(uint *,uint const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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


// ===== 647970 glitch::collada::CModularSkinnedMesh::SModularBuffer::reallocate(uint,uint,bool) =====
int __fastcall glitch::collada::CModularSkinnedMesh::SModularBuffer::reallocate(
        glitch::collada::CModularSkinnedMesh::SModularBuffer *this,
        size_t a2,
        size_t a3,
        int a4)
{
  glitch::video::IBuffer *v4; // r5
  size_t v9; // r3
  void *v10; // r0
  glitch::video::IBuffer *v11; // r5
  size_t v12; // r3
  void *v13; // r0

  v4 = *((glitch::video::IBuffer **)this + 6);
  if ( !*((_DWORD *)v4 + 2) && a2 || (v9 = *((_DWORD *)v4 + 3), a2 != v9) && (a4 || a2 > v9) )
  {
    v10 = operator new[](a2, 0);
    glitch::video::IBuffer::reset(v4, a2, v10, 1);
  }
  v11 = *(glitch::video::IBuffer **)(*(_DWORD *)this + 24);
  if ( v11 )
    ++*((_DWORD *)v11 + 1);
  if ( *((_DWORD *)v11 + 2) )
  {
    v12 = *((_DWORD *)v11 + 3);
    if ( a3 > v12 )
    {
LABEL_10:
      v13 = operator new[](a3, 0);
      glitch::video::IBuffer::reset(v11, a3, v13, 1);
      goto LABEL_16;
    }
  }
  else
  {
    if ( a3 )
      goto LABEL_10;
    v12 = *((_DWORD *)v11 + 3);
  }
  if ( a3 != v12 && a4 )
    goto LABEL_10;
LABEL_16:
  glitch::IReferenceCounted::drop(v11);
  return 0;
}


// ===== 647a68 glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer() =====
void __fastcall glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer(
        glitch::collada::CModularSkinnedMesh::SModularBuffer *this)
{
  glitch::IReferenceCounted *v2; // r0
  void *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 6);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((void **)this + 3);
  if ( v3 )
    GlitchFree(v3);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr((glitch::video::CMaterialVertexAttributeMap **)this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 1);
  if ( *(_DWORD *)this )
    glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)this);
}


// ===== 647ab8 std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::collada::CModularSkinnedMesh::SModularBuffer **__fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::collada::CModularSkinnedMesh::SModularBuffer **a1)
{
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v1; // r4
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v1 - 32);
    glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 647afc glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh() =====
void __fastcall glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh(glitch::collada::CModularSkinnedMesh *this)
{
  *(_DWORD *)this = off_97F4C0;
  std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::collada::CModularSkinnedMesh::SModularBuffer **)this + 12);
  std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 9);
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 647b54 glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh() =====
void __fastcall glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh(glitch::collada::CModularSkinnedMesh *this)
{
  glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh(this);
  LC_API_FREE_0(this);
}


// ===== 647b70 glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh() =====
void __fastcall glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh(glitch::collada::CModularSkinnedMesh *this)
{
  *(_DWORD *)this = off_97F4C0;
  std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::collada::CModularSkinnedMesh::SModularBuffer **)this + 12);
  std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 9);
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 647bc8 std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::collada::CModularSkinnedMesh::SModularBuffer const&) =====
void __fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        glitch::collada::CModularSkinnedMesh::SModularBuffer **a1,
        const glitch::collada::CModularSkinnedMesh::SModularBuffer *a2,
        int a3)
{
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v4; // r4
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v5; // r0
  unsigned int v7; // r3
  unsigned int v8; // r9
  size_t v9; // r9
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v10; // r0
  int v11; // r2
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v12; // r8
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v13; // r7
  int v14; // r4
  int v15; // r11
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v16; // r11
  int v17; // r5
  int v18; // r4
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v19; // r4
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v20; // r5
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v21; // r11

  v4 = a1[2];
  v5 = a1[1];
  if ( v5 == v4 )
  {
    v7 = (v4 - *a1) >> 5;
    if ( v7 )
      v8 = 2 * v7;
    else
      v8 = 1;
    if ( v8 > 0x7FFFFFF || v7 > v8 )
      v9 = -32;
    else
      v9 = 32 * v8;
    v10 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)GlitchAlloc(v9, 0);
    v12 = *a1;
    v13 = v10;
    v14 = v4 - *a1;
    v15 = v14 >> 5;
    if ( v14 >> 5 > 0 )
    {
      v17 = v14 >> 5;
      v18 = 0;
      do
      {
        glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(
          (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v13 + v18),
          (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v12 + v18),
          v11);
        --v17;
        v18 += 32;
      }
      while ( v17 );
      v16 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v13 + 32 * v15);
    }
    else
    {
      v16 = v10;
    }
    glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(v16, a2, v11);
    v19 = a1[1];
    v20 = *a1;
    v21 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v16 + 32);
    if ( v19 != *a1 )
    {
      do
      {
        v19 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v19 - 32);
        glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer(v19);
      }
      while ( v20 != v19 );
      v20 = *a1;
    }
    GlitchFree(v20);
    a1[2] = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v13 + v9);
    *a1 = v13;
    a1[1] = v21;
  }
  else
  {
    glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(v5, a2, a3);
    a1[1] = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)a1[1] + 32);
  }
}


// ===== 647cc8 glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer() =====
void __fastcall glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer(
        glitch::collada::CModularSkinnedMesh::SModularBuffer *this)
{
  glitch::IReferenceCounted *v2; // r0
  void *v3; // r0

  v2 = *((glitch::IReferenceCounted **)this + 6);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((void **)this + 3);
  if ( v3 )
    GlitchFree(v3);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr((glitch::video::CMaterialVertexAttributeMap **)this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 1);
  if ( *(_DWORD *)this )
    glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)this);
}


// ===== 647d18 glitch::collada::CModularSkinnedMesh::SModularBuffer::operator=(glitch::collada::CModularSkinnedMesh::SModularBuffer const&) =====
int __fastcall glitch::collada::CModularSkinnedMesh::SModularBuffer::operator=(int a1, int *a2, int a3)
{
  int v3; // r3
  glitch::IReferenceCounted *v6; // r0
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterial *v8; // r2
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r2
  int v11; // r3
  glitch::IReferenceCounted *v12; // r0
  glitch::video::CMaterialVertexAttributeMap *v14; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v15; // [sp+4h] [bp-8h] BYREF

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
  v15 = v7;
  if ( v7 )
    ++*(_DWORD *)v7;
  v8 = *(glitch::video::CMaterial **)(a1 + 4);
  if ( v7 )
    v7 = v15;
  *(_DWORD *)(a1 + 4) = v7;
  v15 = v8;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v15);
  v9 = (glitch::video::CMaterialVertexAttributeMap *)a2[2];
  v14 = v9;
  if ( v9 )
    ++*(_DWORD *)v9;
  v10 = *(glitch::video::CMaterialVertexAttributeMap **)(a1 + 8);
  if ( v9 )
    v9 = v14;
  *(_DWORD *)(a1 + 8) = v9;
  v14 = v10;
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v14);
  std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
    a1 + 12,
    (int)(a2 + 3));
  v11 = a2[6];
  if ( v11 )
    ++*(_DWORD *)(v11 + 4);
  v12 = *(glitch::IReferenceCounted **)(a1 + 24);
  *(_DWORD *)(a1 + 24) = v11;
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  *(_BYTE *)(a1 + 28) = *((_BYTE *)a2 + 28);
  return a1;
}


// ===== 647dfc std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::CModularSkinnedMesh::SModularBuffer*,glitch::collada::CModularSkinnedMesh::SModularBuffer*,std::__false_type const&) =====
glitch::collada::CModularSkinnedMesh::SModularBuffer *__fastcall std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::collada::CModularSkinnedMesh::SModularBuffer *this,
        int a3)
{
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v3; // r4
  int v6; // r10
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v8; // r10
  int v9; // r6
  int v10; // r4
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v11; // r6
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v12; // r0

  v3 = *(glitch::collada::CModularSkinnedMesh::SModularBuffer **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 5;
  if ( v6 > 0 )
  {
    v9 = ((int)v3 - a3) >> 5;
    v10 = 0;
    do
    {
      glitch::collada::CModularSkinnedMesh::SModularBuffer::operator=((int)this + v10, (int *)(a3 + v10), a3);
      --v9;
      v10 += 32;
    }
    while ( v9 );
    v3 = *(glitch::collada::CModularSkinnedMesh::SModularBuffer **)(a1 + 4);
    v8 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)this + 32 * v6);
  }
  else
  {
    v8 = this;
  }
  if ( v3 != v8 )
  {
    v11 = v8;
    do
    {
      v12 = v11;
      v11 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v11 + 32);
      glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer(v12);
    }
    while ( v3 != v11 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return this;
}


// ===== 647e78 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
int __fastcall glitch::video::CVertexStreams::setStream(glitch::video::CVertexStreams *this, int a2, _DWORD *a3)
{
  int v3; // r3
  _DWORD *v4; // r5
  bool v6; // zf
  glitch::IReferenceCounted *v8; // r0

  v3 = *a3;
  v4 = a3;
  v6 = *a3 == 0;
  if ( *a3 )
    a3 = *(_DWORD **)(v3 + 4);
  if ( !v6 )
    *(_DWORD *)(v3 + 4) = (char *)a3 + 1;
  v8 = *(glitch::IReferenceCounted **)a2;
  *(_DWORD *)a2 = v3;
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  *(_DWORD *)(a2 + 4) = v4[1];
  *(_WORD *)(a2 + 10) = *((_WORD *)v4 + 4);
  *(_WORD *)(a2 + 12) = *((_WORD *)v4 + 6);
  *(_WORD *)(a2 + 14) = *((_WORD *)v4 + 7);
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 647ee0 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStream const&,int,bool) [clone] =====
int __fastcall glitch::video::CVertexStreams::setStream(
        glitch::video::CVertexStreams *this,
        glitch::IReferenceCounted **a2,
        glitch::IReferenceCounted **a3,
        int a4,
        bool a5)
{
  glitch::IReferenceCounted *v6; // r2
  int v7; // r7
  glitch::IReferenceCounted *v10; // r0
  glitch::IReferenceCounted *v11; // r2
  __int16 v12; // r5

  v6 = *a3;
  v7 = a4;
  if ( v6 )
    a4 = *((_DWORD *)v6 + 1);
  if ( v6 )
    *((_DWORD *)v6 + 1) = a4 + 1;
  v10 = *a2;
  *a2 = v6;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  v11 = a3[1];
  a2[1] = v11;
  *((_WORD *)a2 + 5) = *((_WORD *)a3 + 5);
  *((_WORD *)a2 + 6) = *((_WORD *)a3 + 6);
  v12 = *((_WORD *)a3 + 7);
  a2[1] = (glitch::IReferenceCounted *)((char *)v11 + v7);
  *((_WORD *)a2 + 7) = v12;
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 647f54 glitch::video::SVertexStreamData::operator=(glitch::video::SVertexStream &) =====
int __fastcall glitch::video::SVertexStreamData::operator=(int a1, int a2, int a3, int a4)
{
  glitch::IReferenceCounted *v4; // r4
  __int16 v6; // r6
  int v7; // r10
  int v8; // r8
  __int16 v9; // r7
  glitch::IReferenceCounted *v10; // r0

  v4 = *(glitch::IReferenceCounted **)a2;
  if ( *(_DWORD *)a2 )
  {
    a4 = *((_DWORD *)v4 + 1) + 1;
    *((_DWORD *)v4 + 1) = a4;
  }
  if ( v4 )
    a4 = *((_DWORD *)v4 + 1);
  v6 = *(_WORD *)(a2 + 14);
  v7 = *(_DWORD *)(a2 + 4);
  if ( v4 )
    ++a4;
  v8 = *(unsigned __int16 *)(a2 + 10);
  v9 = *(_WORD *)(a2 + 12);
  if ( v4 )
    *((_DWORD *)v4 + 1) = a4;
  v10 = *(glitch::IReferenceCounted **)a1;
  *(_DWORD *)a1 = v4;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  *(_DWORD *)(a1 + 4) = v7;
  *(_DWORD *)(a1 + 8) = v8;
  *(_WORD *)(a1 + 12) = v9;
  *(_WORD *)(a1 + 14) = v6;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  return a1;
}


// ===== 647fcc glitch::collada::CModularSkinnedMesh::skin(uint) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CModularSkinnedMesh::skin(
        glitch::IReferenceCounted *this,
        unsigned int a2)
{
  int v2; // r12
  int v3; // r3
  glitch::IReferenceCounted *v4; // r7
  int v5; // r4
  int *v6; // r5
  int *v7; // r4
  int v8; // r2
  glitch::IReferenceCounted *v9; // r3
  int v10; // r9
  int v11; // r3
  int v12; // r10
  int v13; // r2
  glitch::IReferenceCounted *v14; // r1
  _DWORD *v15; // r11
  _DWORD *v16; // r5
  glitch::IReferenceCounted *v17; // r8
  glitch::IReferenceCounted *v18; // r7
  int v19; // r6
  int v20; // r2
  int v21; // r1
  glitch::IReferenceCounted *v22; // r3
  int v23; // r7
  int v24; // r2
  int v25; // r3
  int v26; // r3
  int v27; // r4
  char v28; // r3
  glitch::IReferenceCounted *v29; // r3
  bool v30; // [sp+0h] [bp-4Ch]
  int v31; // [sp+4h] [bp-48h]
  glitch::IReferenceCounted *v32; // [sp+8h] [bp-44h]
  glitch::IReferenceCounted **v33; // [sp+14h] [bp-38h]
  glitch::IReferenceCounted *v34; // [sp+1Ch] [bp-30h]
  glitch::IReferenceCounted *v35[3]; // [sp+24h] [bp-28h] BYREF
  __int16 v36; // [sp+30h] [bp-1Ch]
  __int16 v37; // [sp+32h] [bp-1Ah]
  glitch::IReferenceCounted *v38[3]; // [sp+34h] [bp-18h] BYREF
  __int16 v39; // [sp+40h] [bp-Ch]
  __int16 v40; // [sp+42h] [bp-Ah]
  glitch::IReferenceCounted *v41; // [sp+44h] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 12);
  v4 = this;
  v5 = v3 + 32 * a2;
  if ( *(_BYTE *)(v5 + 28) )
  {
    v10 = 0;
    v11 = *(_DWORD *)(*(_DWORD *)(v3 + 32 * a2) + 20);
    v12 = v11 + 20;
    v13 = *(_DWORD *)(v11 + 4) & 0x20000;
    if ( v13 )
      v13 = v12 + 16 * (unsigned __int8)(*(_BYTE *)(v11 + 12) + 1);
    v33 = (glitch::IReferenceCounted **)v13;
    v14 = *(glitch::IReferenceCounted **)(v11 + 20);
    v32 = v14;
    if ( v14 )
      v2 = *(_DWORD *)(v11 + 20);
    else
      this = nullptr;
    if ( v14 )
    {
      ++*(_DWORD *)(v2 + 4);
      this = *(glitch::IReferenceCounted **)(v11 + 20);
    }
    this = (glitch::IReferenceCounted *)glitch::video::IBuffer::map((int)this, 4);
    v34 = this;
    v38[2] = (glitch::IReferenceCounted *)(elf_hash_bucket + 35);
    v38[0] = nullptr;
    v38[1] = nullptr;
    v39 = 0;
    v40 = 0;
    v15 = *(_DWORD **)(v5 + 16);
    v16 = *(_DWORD **)(v5 + 12);
    if ( v16 != v15 )
    {
      v17 = v4;
      while ( 1 )
      {
        while ( 1 )
        {
          v26 = *((_DWORD *)v17 + 9) + 8 * *v16;
          v27 = *(_DWORD *)(v26 + 4);
          if ( v27 )
            break;
LABEL_25:
          if ( ++v16 == v15 )
            goto LABEL_29;
        }
        (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v27 + 72))(*(_DWORD *)(v26 + 4), 0);
        if ( (*(int (__fastcall **)(int))(*(_DWORD *)v27 + 80))(v27) )
        {
          (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD))(*(_DWORD *)v27 + 20))(&v41, v27, 0);
          v18 = v41;
          if ( v41 )
            glitch::IReferenceCounted::drop(v41);
          v19 = *((_DWORD *)v18 + 5);
          v20 = *(unsigned __int16 *)(v12 + 14);
          v21 = *((_DWORD *)v18 + 9);
          v22 = *(glitch::IReferenceCounted **)(v19 + 20);
          v23 = v19 + 20;
          v35[0] = v22;
          v31 = v10 - v21 * v20;
          if ( v22 )
            ++*((_DWORD *)v22 + 1);
          v35[1] = *(glitch::IReferenceCounted **)(v19 + 24);
          v35[2] = (glitch::IReferenceCounted *)*(unsigned __int16 *)(v19 + 30);
          v36 = *(_WORD *)(v19 + 32);
          v37 = *(_WORD *)(v19 + 34);
          glitch::video::CVertexStreams::setStream(
            (glitch::video::CVertexStreams *)v19,
            (glitch::IReferenceCounted **)(v19 + 20),
            (glitch::IReferenceCounted **)v12,
            v31,
            v30);
          v25 = *(_DWORD *)(v19 + 4);
          if ( (v25 & 0x20000) != 0 && v33 )
          {
            glitch::video::SVertexStreamData::operator=(
              (int)v38,
              v23 + 16 * (unsigned __int8)(*(_BYTE *)(v19 + 12) + 1),
              v24,
              v25);
            glitch::video::CVertexStreams::setStream(
              (glitch::video::CVertexStreams *)v19,
              (glitch::IReferenceCounted **)(v23 + 16 * (*(unsigned __int8 *)(v19 + 12) + 1)),
              v33,
              v31,
              v30);
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v27 + 76))(v27, 0);
            v10 += *(_DWORD *)(v19 + 8) * *(unsigned __int16 *)(v12 + 14);
            glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v19, v19 + 20, v35);
            glitch::video::CVertexStreams::setStream(
              (glitch::video::CVertexStreams *)v19,
              v23 + 16 * (*(unsigned __int8 *)(v19 + 12) + 1),
              v38);
          }
          else
          {
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v27 + 76))(v27, 0);
            v10 += *(_DWORD *)(v19 + 8) * *(unsigned __int16 *)(v12 + 14);
            glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v19, v19 + 20, v35);
          }
          if ( v35[0] )
            glitch::IReferenceCounted::drop(v35[0]);
          goto LABEL_25;
        }
        ++v16;
        (*(void (__fastcall **)(int))(*(_DWORD *)v27 + 76))(v27);
        if ( v16 == v15 )
        {
LABEL_29:
          this = v38[0];
          if ( v38[0] )
            this = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v38[0]);
          break;
        }
      }
    }
    if ( v34 )
    {
      v28 = *((_BYTE *)v32 + 19);
      if ( (v28 & 0x1Fu) <= 1 )
      {
        if ( (*((_BYTE *)v32 + 18) & 0x20) != 0 )
          this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v32 + 24))(v32);
        *((_BYTE *)v32 + 19) = 0;
        v29 = v32;
        if ( !v32 )
          return this;
        return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v29);
      }
      *((_BYTE *)v32 + 19) = ((v28 & 0x1F) - 1) | v28 & 0xE0;
    }
    v29 = v32;
    if ( !v32 )
      return this;
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v29);
  }
  v6 = *(int **)(v5 + 16);
  v7 = *(int **)(v5 + 12);
  while ( v7 != v6 )
  {
    while ( 1 )
    {
      v8 = *v7++;
      v9 = *(glitch::IReferenceCounted **)(*((_DWORD *)v4 + 9) + 8 * v8 + 4);
      this = v9;
      if ( !v9 )
        break;
      this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v9 + 76))(v9);
      if ( v7 == v6 )
        return this;
    }
  }
  return this;
}


// ===== 64834c glitch::collada::IMesh::getVertexCount(void) =====
glitch::IReferenceCounted *__fastcall glitch::collada::IMesh::getVertexCount(glitch::collada::IMesh *this)
{
  glitch::IReferenceCounted *v1; // r3
  glitch::IReferenceCounted **v2; // r4
  glitch::IReferenceCounted *v3; // r5
  bool v4; // zf
  glitch::IReferenceCounted *v6; // [sp+4h] [bp-8h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::collada::IMesh *, _DWORD))(*(_DWORD *)this + 20))(
    &v6,
    this,
    0);
  v1 = v6;
  v2 = *((glitch::IReferenceCounted ***)v6 + 5);
  if ( v2 )
    v1 = *v2;
  v3 = v2[2];
  if ( v2 )
    *v2 = (glitch::IReferenceCounted *)((char *)v1 + 1);
  v4 = *v2 == (glitch::IReferenceCounted *)((char *)&dword_0 + 1);
  *v2 = (glitch::IReferenceCounted *)((char *)*v2 - 1);
  if ( v4 )
  {
    glitch::video::CVertexStreams::~CVertexStreams((glitch::video::CVertexStreams *)v2);
    LC_API_FREE_0(v2);
  }
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  return v3;
}


// ===== 6483c8 glitch::collada::CModularSkinnedMesh::updateBuffer(bool) =====
int __fastcall glitch::collada::CModularSkinnedMesh::updateBuffer(glitch::collada::CModularSkinnedMesh *this, int a2)
{
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v3; // r3
  int v4; // r2
  unsigned int v5; // r3
  int v6; // r8
  int v7; // r3
  int v8; // r11
  int v9; // r6
  int v10; // r9
  unsigned int *v11; // r1
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v12; // r10
  glitch::collada::CModularSkinnedMesh *v13; // r8
  glitch::video::CMaterial *v14; // r0
  int v15; // r5
  int Technique; // r0
  int v17; // r1
  glitch::IReferenceCounted *v18; // r3
  glitch::IReferenceCounted *v19; // r0
  glitch::IReferenceCounted **v20; // r1
  char *v21; // r1
  _DWORD *v22; // r5
  _DWORD *v23; // r6
  int v24; // r7
  int v25; // r9
  glitch::collada::IMesh *v26; // r4
  int v27; // r3
  size_t v28; // r2
  size_t v29; // r1
  int v30; // r0
  int v31; // r0
  _DWORD *v32; // r7
  int v33; // r9
  int v34; // r4
  int v35; // r11
  _DWORD *v36; // r10
  int v37; // r6
  glitch::video::CVertexStreams *v38; // r0
  unsigned int v39; // r3
  glitch::IReferenceCounted *v40; // r5
  unsigned int *v41; // r5
  glitch::video::CVertexStreams *v42; // r3
  bool v43; // zf
  int *v44; // r6
  int v45; // r0
  unsigned int v46; // r12
  int v47; // r3
  _BYTE *v48; // r6
  char v49; // r3
  _BYTE *v50; // r4
  char v51; // r3
  glitch::video::CVertexStreams *v52; // r4
  int v53; // r5
  int v55; // r2
  int v56; // r0
  int v57; // r6
  unsigned int *v58; // r1
  glitch::video::CVertexStreams *v59; // r2
  int v60; // r0
  size_t v61; // r3
  size_t v62; // r3
  glitch::video::CVertexStreams *v63; // r4
  int v64; // r1
  glitch::IReferenceCounted *v65; // r4
  _DWORD *v66; // r3
  glitch::video::CVertexStreams *v67; // r2
  int v68; // r1
  glitch::IReferenceCounted *v69; // r0
  glitch::video::CVertexStreams *v70; // [sp+14h] [bp-128h]
  unsigned int v71; // [sp+1Ch] [bp-120h]
  int v72; // [sp+28h] [bp-114h]
  glitch::IReferenceCounted *v73; // [sp+28h] [bp-114h]
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v74; // [sp+2Ch] [bp-110h]
  int v75; // [sp+30h] [bp-10Ch]
  glitch::collada::CModularSkinnedMesh::SModularBuffer *v76; // [sp+34h] [bp-108h]
  _BYTE v78[32]; // [sp+4Ch] [bp-F0h] BYREF
  glitch::IReferenceCounted *v79[3]; // [sp+6Ch] [bp-D0h] BYREF
  __int16 v80; // [sp+78h] [bp-C4h]
  __int16 v81; // [sp+7Ah] [bp-C2h]
  glitch::IReferenceCounted *v82[3]; // [sp+7Ch] [bp-C0h] BYREF
  __int16 v83; // [sp+88h] [bp-B4h]
  __int16 v84; // [sp+8Ah] [bp-B2h]
  glitch::video::CMaterial *v85; // [sp+8Ch] [bp-B0h] BYREF
  glitch::IReferenceCounted *v86; // [sp+90h] [bp-ACh] BYREF
  glitch::video::CVertexStreams *v87; // [sp+94h] [bp-A8h] BYREF
  glitch::IReferenceCounted *v88; // [sp+98h] [bp-A4h] BYREF
  glitch::IReferenceCounted *v89; // [sp+9Ch] [bp-A0h] BYREF
  glitch::IReferenceCounted *v90; // [sp+A0h] [bp-9Ch] BYREF
  glitch::IReferenceCounted *v91; // [sp+A4h] [bp-98h] BYREF
  glitch::video::CVertexStreams *v92; // [sp+A8h] [bp-94h] BYREF
  unsigned int i; // [sp+ACh] [bp-90h] BYREF
  char s[128]; // [sp+B4h] [bp-88h] BYREF

  v3 = *((glitch::collada::CModularSkinnedMesh::SModularBuffer **)this + 12);
  v4 = *((_DWORD *)this + 13);
  v71 = (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3;
  if ( v3 != (glitch::collada::CModularSkinnedMesh::SModularBuffer *)v4 )
    std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 48,
      v3,
      v4);
  v5 = 0;
  for ( i = 0; i < v71; ++i )
  {
    v6 = *(_DWORD *)(*((_DWORD *)this + 9) + 8 * v5 + 4);
    if ( v6 )
    {
      (*(void (__fastcall **)(glitch::video::CVertexStreams **, _DWORD, _DWORD))(*(_DWORD *)v6 + 24))(
        &v92,
        *(_DWORD *)(*((_DWORD *)this + 9) + 8 * v5 + 4),
        0);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 80))(v6)
        && (v7 = *((_DWORD *)this + 12), (v8 = (*((_DWORD *)this + 13) - v7) >> 5) != 0) )
      {
        v9 = 0;
        while ( !glitch::video::CMaterial::operator==(*(glitch::video::CMaterial **)(v7 + 32 * v9 + 4), v92) )
        {
          if ( ++v9 == v8 )
            goto LABEL_79;
          v7 = *((_DWORD *)this + 12);
        }
        v10 = *((_DWORD *)this + 12) + 32 * v9;
        v11 = *(unsigned int **)(v10 + 16);
        if ( v11 == *(unsigned int **)(v10 + 20) )
        {
          std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
            v10 + 12,
            (int)v11,
            &i);
        }
        else
        {
          *v11 = i;
          *(_DWORD *)(v10 + 16) += 4;
        }
      }
      else
      {
LABEL_79:
        glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer((int)v78);
        std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
          (glitch::collada::CModularSkinnedMesh::SModularBuffer **)this + 12,
          (const glitch::collada::CModularSkinnedMesh::SModularBuffer *)v78,
          v55);
        glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer((glitch::collada::CModularSkinnedMesh::SModularBuffer *)v78);
        v56 = *((_DWORD *)this + 13);
        v57 = v56 - 32;
        v58 = *(unsigned int **)(v56 - 16);
        if ( v58 == *(unsigned int **)(v56 - 12) )
        {
          std::vector<unsigned int,glitch::core::SAllocator<unsigned int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
            v56 - 20,
            (int)v58,
            &i);
        }
        else
        {
          *v58 = i;
          *(_DWORD *)(v56 - 16) += 4;
        }
        v59 = v92;
        v85 = v92;
        if ( v92 )
        {
          ++*(_DWORD *)v92;
          v59 = v85;
        }
        v85 = *(glitch::video::CMaterial **)(v57 + 4);
        *(_DWORD *)(v57 + 4) = v59;
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v85);
        *(_BYTE *)(v57 + 28) = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 80))(v6);
      }
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v92);
    }
    v5 = i + 1;
  }
  v12 = *((glitch::collada::CModularSkinnedMesh::SModularBuffer **)this + 12);
  v74 = *((glitch::collada::CModularSkinnedMesh::SModularBuffer **)this + 13);
  *((_BYTE *)this + 88) = 0;
  if ( v12 == v74 )
    return 0;
  v13 = this;
  while ( 1 )
  {
    while ( !*((_BYTE *)v12 + 28) )
    {
LABEL_17:
      v12 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v12 + 32);
      if ( v12 == v74 )
        return 0;
    }
    *((_BYTE *)v13 + 88) = 1;
    v14 = *((glitch::video::CMaterial **)v12 + 1);
    v15 = *((_DWORD *)v14 + 1);
    Technique = glitch::video::CMaterial::getTechnique(v14);
    glitch::video::CVertexStreams::allocate(
      &v92,
      *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v15 + 24) + 12 * Technique + 8) + 32) + 56));
    v17 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v12 + 1) + 4) + 4);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)v17 + 120))(
      &v91,
      v17,
      0,
      4,
      0,
      0,
      1);
    v18 = v91;
    if ( v91 )
      ++*((_DWORD *)v91 + 1);
    v19 = *((glitch::IReferenceCounted **)v12 + 6);
    *((_DWORD *)v12 + 6) = v18;
    if ( v19 )
      glitch::IReferenceCounted::drop(v19);
    if ( v91 )
      glitch::IReferenceCounted::drop(v91);
    v20 = (glitch::IReferenceCounted **)((char *)v12 + 24);
    if ( a2 )
    {
      v72 = glitch::video::CVertexStreams::setupStreams((int)v92, v20, -131074);
      v84 = 0;
      v82[0] = nullptr;
      v82[1] = nullptr;
      v82[2] = (glitch::IReferenceCounted *)&byte_6;
      v83 = 3;
      glitch::video::CVertexStreams::setStream(v92, (int)v92 + 20, v82);
      if ( v82[0] )
        glitch::IReferenceCounted::drop(v82[0]);
      if ( (*((_DWORD *)v92 + 1) & 0x20000) != 0 )
      {
        v21 = (char *)v92 + 16 * *((unsigned __int8 *)v92 + 12);
        v79[2] = (glitch::IReferenceCounted *)&byte_6;
        v81 = 0;
        v79[0] = nullptr;
        v79[1] = nullptr;
        v80 = 3;
        glitch::video::CVertexStreams::setStream(v92, (int)(v21 + 36), v79);
        if ( v79[0] )
          glitch::IReferenceCounted::drop(v79[0]);
      }
    }
    else
    {
      v72 = glitch::video::CVertexStreams::setupStreams((int)v92, v20, -1);
    }
    v22 = *((_DWORD **)v12 + 3);
    v23 = *((_DWORD **)v12 + 4);
    if ( v22 == v23 )
    {
      v24 = 0;
      v25 = 0;
    }
    else
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = *(glitch::collada::IMesh **)(*((_DWORD *)v13 + 9) + 8 * *v22 + 4);
        if ( v26
          && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v26 + 80))(*(_DWORD *)(*((_DWORD *)v13 + 9) + 8 * *v22 + 4)) )
        {
          (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::collada::IMesh *, _DWORD))(*(_DWORD *)v26 + 20))(
            &v90,
            v26,
            0);
          v25 += *((_DWORD *)v90 + 8);
          glitch::IReferenceCounted::drop(v90);
          v24 += (int)glitch::collada::IMesh::getVertexCount(v26);
        }
        ++v22;
      }
      while ( v22 != v23 );
    }
    *((_DWORD *)v92 + 2) = v24;
    if ( !*(_DWORD *)v12 )
    {
      v64 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v12 + 1) + 4) + 4);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int, int, _DWORD, _DWORD, int))(*(_DWORD *)v64 + 120))(
        &v89,
        v64,
        1,
        4,
        0,
        0,
        1);
      v65 = v89;
      if ( v89 )
        ++*((_DWORD *)v89 + 1);
      v66 = operator new(0x38u, 0);
      v66[1] = 0;
      *v66 = off_988098;
      v66[4] = 0;
      v66[2] = 0;
      v66[3] = 0;
      v67 = v92;
      v66[5] = v92;
      if ( v67 )
        ++*(_DWORD *)v67;
      v66[6] = v65;
      if ( v65 )
        ++*((_DWORD *)v65 + 1);
      v68 = v66[1];
      v66[12] = 0;
      *((_BYTE *)v66 + 52) = 1;
      v66[1] = v68 + 1;
      v66[7] = 0;
      v66[8] = v25;
      v66[9] = 0;
      v66[10] = v24;
      *((_WORD *)v66 + 22) = 1;
      *((_WORD *)v66 + 23) = 6;
      v69 = *(glitch::IReferenceCounted **)v12;
      *(_DWORD *)v12 = v66;
      if ( v69 )
        glitch::IReferenceCounted::drop(v69);
      if ( v65 )
        glitch::IReferenceCounted::drop(v65);
      if ( v89 )
        glitch::IReferenceCounted::drop(v89);
    }
    v27 = *((_DWORD *)v13 + 15);
    v28 = 2 * v25;
    v29 = v72 * v24;
    if ( v27 == 1 )
      break;
    if ( v27 != 2 )
    {
      if ( v27 )
      {
        v73 = *(glitch::IReferenceCounted **)v12;
        v30 = *(_DWORD *)(*(_DWORD *)v12 + 24);
        goto LABEL_43;
      }
      break;
    }
    v61 = *(_DWORD *)(*((_DWORD *)v12 + 6) + 12);
    if ( v29 > v61 )
    {
      sprintf(s, "failed to allocate buffer of size %u (max set to %u)", v72 * v24, v61);
      glitch::os::Printer::log((int)"updateBuffer", (int)s, 3);
      goto LABEL_95;
    }
    v73 = *(glitch::IReferenceCounted **)v12;
    v30 = *(_DWORD *)(*(_DWORD *)v12 + 24);
    v62 = *(_DWORD *)(v30 + 12);
    if ( v28 > v62 )
    {
      sprintf(s, "failed to allocate buffer of size %u (max set to %u)", v28, v62);
      glitch::os::Printer::log((int)"updateBuffer", (int)s, 3);
LABEL_95:
      v53 = 2;
      goto LABEL_96;
    }
LABEL_43:
    v31 = glitch::video::IBuffer::map(v30, 4);
    v32 = *((_DWORD **)v12 + 3);
    v75 = v31 + *((_DWORD *)v73 + 7);
    if ( v32 != *((_DWORD **)v12 + 4) )
    {
      v33 = 0;
      v76 = v12;
      v34 = v31 + *((_DWORD *)v73 + 7);
      v35 = 0;
      v36 = *((_DWORD **)v12 + 4);
      do
      {
        v37 = *(_DWORD *)(*((_DWORD *)v13 + 9) + 8 * *v32 + 4);
        if ( v37 )
        {
          v38 = (glitch::video::CVertexStreams *)(*(int (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(*(_DWORD *)v37 + 20))(
                                                   &v88,
                                                   *(_DWORD *)(*((_DWORD *)v13 + 9) + 8 * *v32 + 4),
                                                   0);
          v40 = v88;
          if ( v88 )
            v38 = (glitch::video::CVertexStreams *)glitch::IReferenceCounted::drop(v88);
          v41 = *((unsigned int **)v40 + 5);
          if ( v41 )
          {
            v39 = *v41;
          }
          else
          {
            v87 = nullptr;
            v38 = v92;
          }
          if ( v41 )
          {
            *v41 = v39 + 1;
            v87 = (glitch::video::CVertexStreams *)v41;
            v38 = v92;
            ++*v41;
          }
          glitch::video::CVertexStreams::copyStreams((int)v38, (int *)&v87, 0, v41[2], v35, -131074);
          v42 = v87;
          if ( v87 )
          {
            v43 = (*(_DWORD *)v87)-- == 1;
            if ( v43 )
            {
              v70 = v42;
              glitch::video::CVertexStreams::~CVertexStreams(v42);
              LC_API_FREE_0(v70);
            }
          }
          v35 += v41[2];
          (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD))(*(_DWORD *)v37 + 20))(&v86, v37, 0);
          v44 = (int *)v86;
          if ( v86 )
            glitch::IReferenceCounted::drop(v86);
          v45 = glitch::video::IBuffer::map(v44[6], 1) + v44[7];
          if ( v45 + 2 * v44[8] != v45 )
          {
            v46 = ((2 * v44[8] - 2) & 0xFFFFFFFE) + 2;
            v47 = 0;
            do
            {
              *(_WORD *)(v34 + v47) = v33 + *(_WORD *)(v45 + v47);
              v47 += 2;
            }
            while ( v47 != v46 );
            v34 += v47;
          }
          if ( v45 )
          {
            v48 = (_BYTE *)v44[6];
            v49 = v48[19];
            if ( (v49 & 0x1Fu) <= 1 )
            {
              if ( (v48[18] & 0x20) != 0 )
                (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v48 + 24))(v48);
              v48[19] = 0;
            }
            else
            {
              v48[19] = ((v49 & 0x1F) - 1) | v49 & 0xE0;
            }
          }
          v43 = *v41 == 1;
          v33 += v41[2];
          --*v41;
          if ( v43 )
          {
            glitch::video::CVertexStreams::~CVertexStreams((glitch::video::CVertexStreams *)v41);
            LC_API_FREE_0(v41);
          }
        }
        ++v32;
      }
      while ( v32 != v36 );
      v12 = v76;
    }
    if ( v75 )
    {
      v50 = *((_BYTE **)v73 + 6);
      v51 = v50[19];
      if ( (v51 & 0x1Fu) <= 1 )
      {
        if ( (v50[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v50 + 24))(*((_DWORD *)v73 + 6));
        v50[19] = 0;
      }
      else
      {
        v50[19] = ((v51 & 0x1F) - 1) | v51 & 0xE0;
      }
    }
    v52 = v92;
    if ( !v92 )
      goto LABEL_17;
    v43 = (*(_DWORD *)v92)-- == 1;
    if ( !v43 )
      goto LABEL_17;
    glitch::video::CVertexStreams::~CVertexStreams(v52);
    LC_API_FREE_0(v52);
    v12 = (glitch::collada::CModularSkinnedMesh::SModularBuffer *)((char *)v12 + 32);
    if ( v12 == v74 )
      return 0;
  }
  v60 = glitch::collada::CModularSkinnedMesh::SModularBuffer::reallocate(v12, v29, v28, v27);
  if ( !v60 )
  {
    v73 = *(glitch::IReferenceCounted **)v12;
    v30 = *(_DWORD *)(*(_DWORD *)v12 + 24);
    goto LABEL_43;
  }
  v53 = v60;
LABEL_96:
  v63 = v92;
  if ( v92 )
  {
    v43 = (*(_DWORD *)v92)-- == 1;
    if ( v43 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v63);
      LC_API_FREE_0(v63);
    }
  }
  return v53;
}


// ===== 648db4 glitch::collada::CModularSkinnedMesh::setModule(uint,boost::intrusive_ptr<glitch::collada::ISkinnedMesh> const&) =====
int __fastcall glitch::collada::CModularSkinnedMesh::setModule(
        glitch::collada::CModularSkinnedMesh *this,
        int a2,
        glitch::IReferenceCounted **a3)
{
  glitch::IReferenceCounted *v4; // r2
  int v5; // r3
  glitch::IReferenceCounted *v6; // r0

  v4 = *a3;
  v5 = *((_DWORD *)this + 9) + 8 * a2;
  v6 = *(glitch::IReferenceCounted **)(v5 + 4);
  if ( v6 == v4 )
    return 0;
  if ( v4 )
  {
    ++*((_DWORD *)v4 + 1);
    v6 = *(glitch::IReferenceCounted **)(v5 + 4);
  }
  *(_DWORD *)(v5 + 4) = v4;
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  return glitch::collada::CModularSkinnedMesh::updateBuffer(this, ((unsigned __int8)*((_DWORD *)this + 5) ^ 1) & 1);
}


// ===== 648e18 glitch::collada::CModularSkinnedMesh::setModuleCount(uint,bool) =====
int __fastcall glitch::collada::CModularSkinnedMesh::setModuleCount(
        glitch::collada::CModularSkinnedMesh *this,
        unsigned int a2,
        int a3)
{
  int v3; // r8
  unsigned int v5; // r6
  unsigned int v8; // r9
  unsigned int v9; // r10
  _DWORD *v10; // r8
  glitch::IReferenceCounted *v11; // r0
  int v12; // r9
  unsigned int v13; // r10
  _DWORD *v14; // r8
  glitch::IReferenceCounted *v15; // r0
  int v17; // [sp+0h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18; // [sp+4h] [bp-8h]

  v3 = *((_DWORD *)this + 9);
  v5 = (*((_DWORD *)this + 10) - v3) >> 3;
  if ( a2 < v5 )
  {
    v8 = 8 * a2;
    v9 = a2;
    while ( 1 )
    {
      v10 = (_DWORD *)(v3 + v8);
      v11 = (glitch::IReferenceCounted *)v10[1];
      ++v9;
      v10[1] = 0;
      if ( v11 )
        glitch::IReferenceCounted::drop(v11);
      *v10 = -1;
      v8 += 8;
      if ( v9 >= v5 )
        break;
      v3 = *((_DWORD *)this + 9);
    }
  }
  v17 = -1;
  v18 = nullptr;
  std::vector<glitch::collada::CModularSkinnedMesh::SModule,glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModule,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 36,
    a2,
    &v17);
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  if ( a2 > v5 )
  {
    v12 = 8 * v5;
    v13 = v5;
    do
    {
      ++v13;
      v14 = (_DWORD *)(*((_DWORD *)this + 9) + v12);
      v15 = (glitch::IReferenceCounted *)v14[1];
      v12 += 8;
      v14[1] = 0;
      if ( v15 )
        glitch::IReferenceCounted::drop(v15);
      *v14 = -1;
    }
    while ( a2 > v13 );
  }
  if ( a3 && a2 < v5 )
    return glitch::collada::CModularSkinnedMesh::updateBuffer(this, ((unsigned __int8)*((_DWORD *)this + 5) ^ 1) & 1);
  else
    return 0;
}


// ===== 648f34 glitch::collada::CModularSkinnedMesh::setModules(boost::intrusive_ptr<glitch::collada::ISkinnedMesh> const*,uint) =====
int __fastcall glitch::collada::CModularSkinnedMesh::setModules(
        glitch::collada::CModularSkinnedMesh *a1,
        int a2,
        unsigned int a3)
{
  unsigned int v3; // r5
  int v6; // r1
  unsigned int v7; // r7
  int v8; // r3
  int v9; // r2
  glitch::IReferenceCounted *v10; // r0

  v3 = a3;
  if ( a3 )
  {
    glitch::collada::CModularSkinnedMesh::setModuleCount(a1, a3, 0);
  }
  else
  {
    v3 = (*((_DWORD *)a1 + 10) - *((_DWORD *)a1 + 9)) >> 3;
    glitch::collada::CModularSkinnedMesh::setModuleCount(a1, v3, 0);
    if ( !v3 )
      return glitch::collada::CModularSkinnedMesh::updateBuffer(a1, ((unsigned __int8)*((_DWORD *)a1 + 5) ^ 1) & 1);
  }
  v7 = 0;
  do
  {
    v8 = *(_DWORD *)(a2 + 4 * v7);
    if ( v8 )
      v6 = *(_DWORD *)(v8 + 4);
    v9 = *((_DWORD *)a1 + 9) + 8 * v7++;
    if ( v8 )
      *(_DWORD *)(v8 + 4) = ++v6;
    v10 = *(glitch::IReferenceCounted **)(v9 + 4);
    *(_DWORD *)(v9 + 4) = v8;
    if ( v10 )
      glitch::IReferenceCounted::drop(v10);
  }
  while ( v7 < v3 );
  return glitch::collada::CModularSkinnedMesh::updateBuffer(a1, ((unsigned __int8)*((_DWORD *)a1 + 5) ^ 1) & 1);
}


// ===== 648fd0 glitch::collada::CModularSkinnedMesh::setCategoryModule(int,int,bool) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CModularSkinnedMesh::setCategoryModule(
        glitch::collada::CColladaDatabase *this,
        int a2,
        int a3,
        int a4)
{
  int v4; // r5
  glitch::collada::CColladaDatabase *v6; // r6
  _DWORD *v9; // r8
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  glitch::IReferenceCounted *v12; // [sp+Ch] [bp-4h] BYREF

  v4 = *((_DWORD *)this + 9);
  v6 = this;
  v9 = (_DWORD *)(v4 + 8 * a2);
  if ( *v9 != a3 )
  {
    this = (glitch::collada::CColladaDatabase *)v9[1];
    if ( this )
    {
      v9[1] = 0;
      this = (glitch::collada::CColladaDatabase *)glitch::IReferenceCounted::drop(this);
      *(_DWORD *)(v4 + 8 * a2) = -1;
    }
    if ( a3 != -1 )
    {
      this = glitch::collada::CColladaDatabase::constructController(
               (glitch::collada::CColladaDatabase *)&v12,
               (glitch::collada::CColladaDatabase *)((char *)v6 + 12),
               *(const char **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 16),
               *(_DWORD **)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v6 + 7) + 4) + 16 * a2 + 12) + 8 * a3 + 4),
               *((_DWORD *)v6 + 8),
               1u);
      v10 = v12;
      if ( v12 )
      {
        ++*((_DWORD *)v12 + 1);
        v11 = (glitch::IReferenceCounted *)v9[1];
        v9[1] = v10;
        if ( v11 )
          glitch::IReferenceCounted::drop(v11);
        *(_DWORD *)(v4 + 8 * a2) = a3;
        this = v12;
        if ( v12 )
          this = (glitch::collada::CColladaDatabase *)glitch::IReferenceCounted::drop(v12);
      }
    }
    if ( a4 )
      return (glitch::collada::CColladaDatabase *)glitch::collada::CModularSkinnedMesh::updateBuffer(
                                                    v6,
                                                    ((unsigned __int8)*((_DWORD *)v6 + 5) ^ 1) & 1);
  }
  return this;
}


// ===== 6490e4 glitch::collada::CModularSkinnedMesh::setCategoryModule(char const*,char const*,bool) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CModularSkinnedMesh::setCategoryModule(
        glitch::collada::CModularSkinnedMesh *this,
        const char *a2,
        const char *a3,
        int a4)
{
  int CategoryId; // r7
  int ModuleId; // r0

  CategoryId = glitch::collada::CModularSkinnedMesh::getCategoryId(this, a2);
  ModuleId = glitch::collada::CModularSkinnedMesh::getModuleId(this, a3);
  return glitch::collada::CModularSkinnedMesh::setCategoryModule(this, CategoryId, ModuleId, a4);
}


// ===== 649120 glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(glitch::collada::CColladaDatabase const&,glitch::collada::SInstanceModularSkin *,glitch::collada::CRootSceneNode *,int,bool,glitch::video::IVideoDriver *) =====
glitch::collada::CModularSkinnedMesh *__fastcall glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(
        glitch::collada::CModularSkinnedMesh *this,
        int *a2,
        _DWORD *a3,
        int a4,
        int a5,
        unsigned __int8 a6)
{
  int v7; // r0
  int v8; // r1
  unsigned int v9; // r6
  int i; // r5
  int ModuleId; // r0
  int v12; // r1

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v7 = *a2;
  *((_DWORD *)this + 3) = *a2;
  *((_DWORD *)this + 4) = a2[1];
  if ( v7 )
  {
    v8 = *(_DWORD *)(v7 + 4);
    if ( v8 )
      *(_DWORD *)(v7 + 4) = v8 + 1;
  }
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *(_DWORD *)this = off_97F4C0;
  *((_DWORD *)this + 8) = a4;
  *((_DWORD *)this + 18) = -1082130432;
  *((_DWORD *)this + 21) = 1065353216;
  *((_BYTE *)this + 88) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 1;
  *((_DWORD *)this + 7) = a3;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = -1082130432;
  *((_DWORD *)this + 17) = -1082130432;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 20) = 1065353216;
  *((_BYTE *)this + 89) = 1;
  v9 = a3[2] + *a3;
  if ( !a5 )
    *((_DWORD *)this + 15) = 1;
  glitch::collada::CModularSkinnedMesh::setModuleCount(this, v9, 0);
  if ( v9 )
  {
    for ( i = 0; i != v9; ++i )
    {
      ModuleId = glitch::collada::CModularSkinnedMesh::getModuleId(
                   this,
                   *(const char **)(*(_DWORD *)(*((_DWORD *)this + 7) + 4) + 16 * i + 4));
      v12 = i;
      glitch::collada::CModularSkinnedMesh::setCategoryModule(this, v12, ModuleId, 0);
    }
  }
  glitch::collada::CModularSkinnedMesh::updateBuffer(this, a6);
  return this;
}


// ===== 64928c glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(glitch::collada::CColladaDatabase const&,glitch::collada::SInstanceModularSkin *,glitch::collada::CRootSceneNode *,int,bool,glitch::video::IVideoDriver *) =====
glitch::collada::CModularSkinnedMesh *__fastcall glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(
        glitch::collada::CModularSkinnedMesh *this,
        int *a2,
        _DWORD *a3,
        int a4,
        int a5,
        unsigned __int8 a6)
{
  int v7; // r0
  int v8; // r1
  unsigned int v9; // r6
  int i; // r5
  int ModuleId; // r0
  int v12; // r1

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v7 = *a2;
  *((_DWORD *)this + 3) = *a2;
  *((_DWORD *)this + 4) = a2[1];
  if ( v7 )
  {
    v8 = *(_DWORD *)(v7 + 4);
    if ( v8 )
      *(_DWORD *)(v7 + 4) = v8 + 1;
  }
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *(_DWORD *)this = off_97F4C0;
  *((_DWORD *)this + 8) = a4;
  *((_DWORD *)this + 18) = -1082130432;
  *((_DWORD *)this + 21) = 1065353216;
  *((_BYTE *)this + 88) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_BYTE *)this + 24) = 1;
  *((_DWORD *)this + 7) = a3;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = -1082130432;
  *((_DWORD *)this + 17) = -1082130432;
  *((_DWORD *)this + 19) = 1065353216;
  *((_DWORD *)this + 20) = 1065353216;
  *((_BYTE *)this + 89) = 1;
  v9 = a3[2] + *a3;
  if ( !a5 )
    *((_DWORD *)this + 15) = 1;
  glitch::collada::CModularSkinnedMesh::setModuleCount(this, v9, 0);
  if ( v9 )
  {
    for ( i = 0; i != v9; ++i )
    {
      ModuleId = glitch::collada::CModularSkinnedMesh::getModuleId(
                   this,
                   *(const char **)(*(_DWORD *)(*((_DWORD *)this + 7) + 4) + 16 * i + 4));
      v12 = i;
      glitch::collada::CModularSkinnedMesh::setCategoryModule(this, v12, ModuleId, 0);
    }
  }
  glitch::collada::CModularSkinnedMesh::updateBuffer(this, a6);
  return this;
}


// ===== 6493f8 glitch::collada::CModularSkinnedMeshSceneNode::getType(void) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getType(
        glitch::collada::CModularSkinnedMeshSceneNode *this)
{
  return 1298489700;
}


// ===== 649404 `global constructor keyed to'.._source_glitch_collada_CColladaModularSkinnedMeshSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaModularSkinnedMeshSceneNode.cpp()
{
  dword_9F6FC4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6FC0 = 1056964608;
}


// ===== 649424 glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(char const*,char const*) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(
        glitch::collada::CModularSkinnedMesh **this,
        const char *a2,
        const char *a3)
{
  return glitch::collada::CModularSkinnedMesh::setCategoryModule(*(this + 77), a2, a3, 1);
}


// ===== 649430 glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(int,int) =====
glitch::collada::CColladaDatabase *__fastcall glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(
        glitch::collada::CColladaDatabase **this,
        int a2,
        int a3)
{
  return glitch::collada::CModularSkinnedMesh::setCategoryModule(*(this + 77), a2, a3, 1);
}


// ===== 64943c glitch::collada::CModularSkinnedMeshSceneNode::getCategoryModuleCount(int) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getCategoryModuleCount(
        glitch::collada::CModularSkinnedMesh **this,
        int a2)
{
  return glitch::collada::CModularSkinnedMesh::getCategoryModuleCount(*(this + 77), a2);
}


// ===== 649444 glitch::collada::CModularSkinnedMeshSceneNode::getCategoryCount(void) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getCategoryCount(
        glitch::collada::CModularSkinnedMesh **this)
{
  return glitch::collada::CModularSkinnedMesh::getCategoryCount(*(this + 77));
}


// ===== 64944c glitch::collada::CModularSkinnedMeshSceneNode::getModuleName(int,int) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getModuleName(
        glitch::collada::CModularSkinnedMesh **this,
        int a2,
        int a3)
{
  return glitch::collada::CModularSkinnedMesh::getModuleName(*(this + 77), a2, a3);
}


// ===== 649454 glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleName(int) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleName(
        glitch::collada::CModularSkinnedMesh **this,
        int a2)
{
  return glitch::collada::CModularSkinnedMesh::getCurrentModuleName(*(this + 77), a2);
}


// ===== 64945c glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleId(int) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleId(
        glitch::collada::CModularSkinnedMesh **this,
        int a2)
{
  return glitch::collada::CModularSkinnedMesh::getCurrentModuleId(*(this + 77), a2);
}


// ===== 649464 glitch::collada::CModularSkinnedMeshSceneNode::getModuleId(char const*) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getModuleId(
        glitch::collada::CModularSkinnedMesh **this,
        const char *a2)
{
  return glitch::collada::CModularSkinnedMesh::getModuleId(*(this + 77), a2);
}


// ===== 64946c glitch::collada::CModularSkinnedMeshSceneNode::getCategoryName(int) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getCategoryName(
        glitch::collada::CModularSkinnedMeshSceneNode *this,
        int a2)
{
  return glitch::collada::CModularSkinnedMesh::getCategoryName(*((_DWORD *)this + 77), a2);
}


// ===== 649474 glitch::collada::CModularSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
glitch::collada::CModularSkinnedMesh **__fastcall glitch::collada::CModularSkinnedMeshSceneNode::deserializeAttributes(
        glitch::collada::CModularSkinnedMesh **a1,
        int *a2,
        _DWORD *a3)
{
  int v5; // r4
  int (__fastcall *v6)(int *, int); // r7
  int CategoryName; // r0
  const char *v8; // r0
  int ModuleId; // r0
  bool v10; // cc
  glitch::collada::CModularSkinnedMesh **result; // r0

  v5 = 0;
  glitch::scene::ISceneNode::deserializeAttributes((int)a1, a2, a3);
  while ( 1 )
  {
    v10 = v5 < glitch::collada::CModularSkinnedMeshSceneNode::getCategoryCount(a1);
    result = a1;
    if ( !v10 )
      break;
    v6 = *(int (__fastcall **)(int *, int))(*a2 + 252);
    CategoryName = glitch::collada::CModularSkinnedMeshSceneNode::getCategoryName(
                     (glitch::collada::CModularSkinnedMeshSceneNode *)a1,
                     v5);
    v8 = (const char *)v6(a2, CategoryName);
    ModuleId = glitch::collada::CModularSkinnedMeshSceneNode::getModuleId(a1, v8);
    glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(a1, v5++, ModuleId);
  }
  return result;
}


// ===== 6494e0 glitch::collada::CModularSkinnedMeshSceneNode::getCategoryId(char const*) =====
int __fastcall glitch::collada::CModularSkinnedMeshSceneNode::getCategoryId(
        glitch::collada::CModularSkinnedMesh **this,
        const char *a2)
{
  return glitch::collada::CModularSkinnedMesh::getCategoryId(*(this + 77), a2);
}


// ===== 6494e8 glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::collada::SNode *,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode(
        _DWORD *a1,
        int *a2,
        int a3,
        int a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7)
{
  a1[95] = off_95B720;
  *a1 = off_97FB84;
  a1[96] = 1;
  *(int *)((char *)&elf_hash_bucket[40] + (_DWORD)a1) = (int)off_97FBA4;
  glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode((int)a1, (int *)off_97F65C, a2, a3, a4, a5, a6, a7);
  *a1 = off_97F53C;
  a1[95] = off_97F648;
  return a1;
}


// ===== 649594 glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::collada::SNode *,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int *__fastcall glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode(
        int *a1,
        int *a2,
        int *a3,
        int a4,
        int a5,
        _DWORD *a6,
        _DWORD *a7,
        _DWORD *a8)
{
  int v10; // r3

  glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode((int)a1, a2 + 1, a3, a4, a5, a6, a7, a8);
  v10 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v10 - 28)) = a2[13];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[14];
  return a1;
}


// ===== 6495fc std::vector<char const*,glitch::core::SAllocator<char const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(char const**,char const* const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<char const*,glitch::core::SAllocator<char const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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


// ===== 6496ac glitch::collada::CModularSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::collada::CModularSkinnedMeshSceneNode::serializeAttributes(
        glitch::collada::CModularSkinnedMesh **a1,
        int a2,
        _DWORD *a3)
{
  int v5; // r4
  int v6; // r8
  bool v7; // cc
  int v8; // r2
  int v9; // r1
  glitch::collada::CModularSkinnedMesh **j; // r0
  int ModuleName; // r0
  _DWORD *v12; // r1
  void (__fastcall *v14)(int, int, int, void *, _DWORD); // r8
  int CategoryName; // r11
  int CurrentModuleId; // r0
  void *p; // [sp+18h] [bp-1Ch] BYREF
  _DWORD *v18; // [sp+1Ch] [bp-18h]
  _DWORD *i; // [sp+20h] [bp-14h]
  int v20; // [sp+24h] [bp-10h] BYREF
  const char *v21; // [sp+28h] [bp-Ch] BYREF
  int v22; // [sp+2Ch] [bp-8h] BYREF

  glitch::scene::ISceneNode::serializeAttributes((int)a1, a2, a3);
  v5 = 0;
  p = nullptr;
  v18 = nullptr;
  for ( i = nullptr; v5 < glitch::collada::CModularSkinnedMeshSceneNode::getCategoryCount(a1); ++v5 )
  {
    if ( p != v18 )
      v18 = p;
    v6 = 0;
    v7 = glitch::collada::CModularSkinnedMeshSceneNode::getCategoryModuleCount(a1, v5) > 0;
    v8 = 0;
    v9 = v5;
    for ( j = a1; v7; j = a1 )
    {
      ModuleName = glitch::collada::CModularSkinnedMeshSceneNode::getModuleName(j, v9, v8);
      v22 = ModuleName;
      if ( v18 == i )
      {
        std::vector<char const*,glitch::core::SAllocator<char const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (int)&p,
          (int)v18,
          &v22);
        ++v6;
      }
      else
      {
        *v18 = ModuleName;
        ++v6;
        ++v18;
      }
      v7 = v6 < glitch::collada::CModularSkinnedMeshSceneNode::getCategoryModuleCount(a1, v5);
      v8 = v6;
      v9 = v5;
    }
    v21 = "not used (-1)";
    if ( v18 == i )
    {
      std::vector<char const*,glitch::core::SAllocator<char const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        (int)&p,
        (int)v18,
        &v21);
      v12 = v18;
      v20 = 0;
      if ( i == v18 )
      {
LABEL_18:
        std::vector<char const*,glitch::core::SAllocator<char const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (int)&p,
          (int)v12,
          &v20);
        goto LABEL_12;
      }
    }
    else
    {
      *v18 = "not used (-1)";
      v20 = 0;
      v12 = v18 + 1;
      if ( i == ++v18 )
        goto LABEL_18;
    }
    *v12 = 0;
    ++v18;
LABEL_12:
    v14 = *(void (__fastcall **)(int, int, int, void *, _DWORD))(*(_DWORD *)a2 + 244);
    CategoryName = glitch::collada::CModularSkinnedMeshSceneNode::getCategoryName(
                     (glitch::collada::CModularSkinnedMeshSceneNode *)a1,
                     v5);
    CurrentModuleId = glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleId(a1, v5);
    v14(a2, CategoryName, CurrentModuleId, p, 0);
  }
  if ( p )
    GlitchFree(p);
}


// ===== 649880 `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  glitch::collada::CModularSkinnedMeshSceneNode::serializeAttributes(
    (glitch::collada::CModularSkinnedMesh **)((char *)a1 + *(_DWORD *)(*a1 - 16)),
    a2,
    a3);
}


// ===== 649890 `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
glitch::collada::CModularSkinnedMesh **__fastcall `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  return glitch::collada::CModularSkinnedMeshSceneNode::deserializeAttributes(
           (glitch::collada::CModularSkinnedMesh **)((char *)a1 + *(_DWORD *)(*a1 - 20)),
           a2,
           a3);
}


// ===== 6498a0 glitch::video::IVideoDriver::getProcessBuffer(glitch::video::E_PROCESS_BUFFER_TYPE,uint,boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&,bool) =====
int __fastcall glitch::video::IVideoDriver::getProcessBuffer(
        int a1,
        int a2,
        int a3,
        glitch::IReferenceCounted **a4,
        unsigned __int8 a5)
{
  glitch::IReferenceCounted *v5; // r4
  int v6; // lr
  int v7; // r8
  int v8; // r7
  int v9; // r6
  int (__fastcall *v10)(int, int, int, int, int, int, int, _DWORD); // r12
  int v11; // r3
  int v12; // r5

  v5 = *a4;
  v6 = *((_DWORD *)*a4 + 9);
  v7 = *((_DWORD *)*a4 + 1) + 1;
  v8 = (int)*a4 + 20;
  v9 = (int)*a4 + 48;
  v10 = *(int (__fastcall **)(int, int, int, int, int, int, int, _DWORD))(*(_DWORD *)a1 + 496);
  v11 = *((_DWORD *)*a4 + 10);
  *((_DWORD *)v5 + 1) = v7;
  v12 = v10(a1, a2, v6, v11, a3, v8, v9, a5);
  glitch::IReferenceCounted::drop(v5);
  return v12;
}


// ===== 649904 glitch::collada::CMorphingMesh::getType(void) =====
int __fastcall glitch::collada::CMorphingMesh::getType(glitch::collada::CMorphingMesh *this)
{
  return 1;
}


// ===== 64990c glitch::collada::CMorphingMesh::clone(void) =====
_DWORD *__fastcall glitch::collada::CMorphingMesh::clone(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 649918 glitch::collada::CMorphingMesh::getMeshBufferCount(void) =====
int __fastcall glitch::collada::CMorphingMesh::getMeshBufferCount(glitch::collada::CMorphingMesh *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 9) + 16))(**((_DWORD **)this + 9));
}


// ===== 649938 glitch::collada::CMorphingMesh::getMeshBuffer(uint) =====
_DWORD *__fastcall glitch::collada::CMorphingMesh::getMeshBuffer(_DWORD *this, unsigned int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(*(_DWORD *)(a2 + 24) + 12 * a3);
  *this = v3;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  return this;
}


// ===== 649960 glitch::collada::CMorphingMesh::getMaterial(uint) =====
_DWORD *__fastcall glitch::collada::CMorphingMesh::getMaterial(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 24) + 12 * a3 + 4);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 649988 glitch::collada::CMorphingMesh::getMaterialVertexAttributeMap(uint) =====
_DWORD *__fastcall glitch::collada::CMorphingMesh::getMaterialVertexAttributeMap(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 24) + 12 * a3 + 8);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 6499b0 glitch::collada::CMorphingMesh::getBoundingBox(void) =====
int __fastcall glitch::collada::CMorphingMesh::getBoundingBox(glitch::collada::CMorphingMesh *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 9) + 36))(**((_DWORD **)this + 9));
}


// ===== 6499d0 glitch::collada::CMorphingMesh::setBoundingBox(glitch::core::aabbox3d<float> const&) =====
void glitch::collada::CMorphingMesh::setBoundingBox()
{
  ;
}


// ===== 6499d4 std::priv::__uninitialized_fill_n<glitch::collada::CMorphingMesh::SBuffer *,uint,glitch::collada::CMorphingMesh::SBuffer>(glitch::collada::CMorphingMesh::SBuffer *,uint,glitch::collada::CMorphingMesh::SBuffer const&) =====
int *__fastcall std::priv::__uninitialized_fill_n<glitch::collada::CMorphingMesh::SBuffer *,unsigned int,glitch::collada::CMorphingMesh::SBuffer>(
        int *a1,
        int a2,
        int *a3)
{
  int *v3; // r3
  int *result; // r0
  int v5; // r12
  int v6; // r1
  _DWORD *v7; // r1
  _DWORD *v8; // r1

  v3 = a1;
  result = &a1[3 * a2];
  v5 = -1431655765 * (result - v3);
  if ( v5 > 0 )
  {
    while ( 1 )
    {
      v6 = *a3;
      *v3 = *a3;
      if ( v6 )
        ++*(_DWORD *)(v6 + 4);
      v7 = (_DWORD *)a3[1];
      v3[1] = (int)v7;
      if ( v7 )
        ++*v7;
      v8 = (_DWORD *)a3[2];
      v3[2] = (int)v8;
      if ( v8 )
        ++*v8;
      if ( !--v5 )
        break;
      v3 += 3;
    }
  }
  return result;
}


// ===== 649a68 `global constructor keyed to'.._source_glitch_collada_CColladaMorphingMesh.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaMorphingMesh.cpp()
{
  dword_9F6FD0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6FCC = 1056964608;
}


// ===== 649a88 glitch::collada::CMorphingMesh::setMaterial(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
glitch::video::CMaterialVertexAttributeMap **__fastcall glitch::collada::CMorphingMesh::setMaterial(
        int a1,
        int a2,
        glitch::video::CMaterial **a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  int v8; // r1
  glitch::video::CMaterial *v9; // r3
  int v10; // r5
  bool v11; // zf
  int v12; // r2
  int v13; // r2
  glitch::video::CMaterialVertexAttributeMap *v14; // r3
  int v15; // r2
  int v16; // r5
  glitch::video::CMaterialVertexAttributeMap *v18; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v19; // [sp+4h] [bp-8h] BYREF

  (*(void (__fastcall **)(_DWORD))(***(_DWORD ***)(a1 + 36) + 32))(**(_DWORD **)(a1 + 36));
  v9 = *a3;
  v10 = 12 * a2;
  v11 = *a3 == nullptr;
  v12 = *(_DWORD *)(a1 + 24);
  v19 = *a3;
  if ( !v11 )
    v8 = *(_DWORD *)v9;
  v13 = v12 + v10;
  if ( !v11 )
  {
    *(_DWORD *)v9 = v8 + 1;
    v9 = v19;
  }
  v19 = *(glitch::video::CMaterial **)(v13 + 4);
  *(_DWORD *)(v13 + 4) = v9;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v19);
  v14 = *a4;
  v15 = *(_DWORD *)(a1 + 24);
  v18 = v14;
  v16 = v15 + v10;
  if ( v14 )
  {
    ++*(_DWORD *)v14;
    v14 = v18;
  }
  v18 = *(glitch::video::CMaterialVertexAttributeMap **)(v16 + 8);
  *(_DWORD *)(v16 + 8) = v14;
  return boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v18);
}


// ===== 649b3c glitch::collada::setWeightedVertex<glitch::core::vector3d<float>>(glitch::core::vector3d<float> *,uint,glitch::core::vector3d<float> const*,uint,float,uint) =====
float __fastcall glitch::collada::setWeightedVertex<glitch::core::vector3d<float>>(
        float *a1,
        int a2,
        float *a3,
        int a4,
        float a5,
        int a6)
{
  float *v7; // r5
  float result; // r0
  int i; // r7
  float v11; // r9
  float v12; // r0
  float v13; // t1
  float v14; // r10
  bool v15; // zf
  int v16; // r3
  int v17; // r2

  v7 = a3;
  LODWORD(result) = a5 == 0.0;
  if ( a5 != 0.0 )
  {
    LODWORD(result) = a5 == 1.0;
    if ( a5 == 1.0 )
    {
      v15 = a2 == 12;
      if ( a2 == 12 )
        v15 = a4 == 12;
      if ( v15 )
      {
        return COERCE_FLOAT(memcpy(a1, a3, 12 * a6));
      }
      else if ( a6 )
      {
        v16 = 0;
        do
        {
          ++v16;
          *a1 = *v7;
          a1[1] = v7[1];
          v17 = *((_DWORD *)v7 + 2);
          v7 = (float *)((char *)v7 + a4);
          *((_DWORD *)a1 + 2) = v17;
          a1 = (float *)((char *)a1 + a2);
        }
        while ( v16 != a6 );
      }
    }
    else if ( a6 )
    {
      for ( i = 0; i != a6; ++i )
      {
        v11 = a5 * v7[1];
        v12 = a5 * v7[2];
        v13 = *v7;
        v7 = (float *)((char *)v7 + a4);
        v14 = v12;
        result = a5 * v13;
        a1[1] = v11;
        *a1 = a5 * v13;
        a1[2] = v14;
        a1 = (float *)((char *)a1 + a2);
      }
    }
  }
  return result;
}


// ===== 649c50 std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 649cd0 std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear(void) =====
void __fastcall std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear(
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
      v5 = *((glitch::IReferenceCounted **)v4 - 2);
      v4 -= 8;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 649d14 std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
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
      v5 = *((glitch::IReferenceCounted **)v4 - 2);
      v4 -= 8;
      if ( v5 )
        glitch::IReferenceCounted::drop(v5);
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 649d58 std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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
      v4 = *((glitch::IReferenceCounted **)v1 - 2);
      v1 -= 8;
      if ( v4 )
        glitch::IReferenceCounted::drop(v4);
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 649da4 std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CMorphingMesh::STarget*>(uint &,glitch::collada::CMorphingMesh::STarget*,glitch::collada::CMorphingMesh::STarget*) =====
char *__fastcall std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CMorphingMesh::STarget*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v4; // r6
  int v6; // r5
  char *result; // r0
  int v8; // r3
  int v9; // r2
  int v10; // r12
  char *v11; // r1

  v6 = (a4 - a3) >> 3;
  result = (char *)GlitchAlloc(8 * *a2, 0);
  if ( v6 > 0 )
  {
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(a3 + v8);
      v10 = a3 + v8;
      v11 = &result[v8];
      *(_DWORD *)&result[v8] = v9;
      if ( v9 )
        v4 = *(_DWORD *)(v9 + 4);
      v8 += 8;
      if ( v9 )
        *(_DWORD *)(v9 + 4) = ++v4;
      --v6;
      *((_DWORD *)v11 + 1) = *(_DWORD *)(v10 + 4);
    }
    while ( v6 );
  }
  return result;
}


// ===== 649e0c std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        int a1,
        unsigned int a2)
{
  int v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  unsigned int v8; // r3
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v3 = *(_DWORD *)a1;
  v4 = *(_DWORD *)(a1 + 8);
  v9 = a2;
  if ( a2 > (v4 - v3) >> 3 )
  {
    if ( a2 > 0x1FFFFFFF )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = *(_DWORD *)a1;
    }
    v5 = *(_DWORD *)(a1 + 4);
    v6 = (v5 - v3) >> 3;
    if ( v3 )
    {
      v7 = std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::CMorphingMesh::STarget*>(
             a1,
             &v9,
             v3,
             v5);
      std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear((void **)a1);
    }
    else
    {
      v7 = (char *)GlitchAlloc(8 * v9, 0);
    }
    v8 = v9;
    *(_DWORD *)(a1 + 4) = &v7[8 * v6];
    *(_DWORD *)(a1 + 8) = &v7[8 * v8];
    *(_DWORD *)a1 = v7;
  }
}


// ===== 649eb4 glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) [clone] =====
int __fastcall glitch::video::CVertexStreams::setStream(glitch::video::CVertexStreams *this, int a2, _DWORD *a3)
{
  int v3; // r3
  _DWORD *v4; // r5
  bool v6; // zf
  glitch::IReferenceCounted *v8; // r0

  v3 = *a3;
  v4 = a3;
  v6 = *a3 == 0;
  if ( *a3 )
    a3 = *(_DWORD **)(v3 + 4);
  if ( !v6 )
    *(_DWORD *)(v3 + 4) = (char *)a3 + 1;
  v8 = *(glitch::IReferenceCounted **)a2;
  *(_DWORD *)a2 = v3;
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  *(_DWORD *)(a2 + 4) = v4[1];
  *(_WORD *)(a2 + 10) = *((_WORD *)v4 + 4);
  *(_WORD *)(a2 + 12) = *((_WORD *)v4 + 6);
  *(_WORD *)(a2 + 14) = *((_WORD *)v4 + 7);
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 649f1c std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::collada::CMorphingMesh::STarget*,glitch::collada::CMorphingMesh::STarget const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        int *a3)
{
  int v3; // r10
  unsigned int v7; // r3
  unsigned int v8; // r6
  size_t v9; // r6
  int *v10; // r8
  char *v11; // r0
  int v12; // r5
  int *v13; // r5
  int v14; // r1
  int v15; // r3
  int v16; // r2
  char *v17; // lr
  char *v18; // r12
  int v19; // r3
  char *v20; // r6
  bool v21; // zf

  v7 = ((_BYTE *)a1[1] - (_BYTE *)*a1) >> 3;
  if ( v7 )
    v8 = 2 * v7;
  else
    v8 = 1;
  if ( v8 > 0x1FFFFFFF || v7 > v8 )
    v9 = -2;
  else
    v9 = 2 * v8;
  v10 = (int *)GlitchAlloc(v9 * 4, 0);
  v11 = (char *)*a1;
  v12 = (a2 - (int)*a1) >> 3;
  if ( v12 > 0 )
  {
    v14 = v12;
    v15 = 0;
    do
    {
      v16 = *(_DWORD *)&v11[v15 * 4];
      v17 = &v11[v15 * 4];
      v18 = (char *)&v10[v15];
      v10[v15] = v16;
      if ( v16 )
        v3 = *(_DWORD *)(v16 + 4);
      v15 += 2;
      if ( v16 )
        *(_DWORD *)(v16 + 4) = ++v3;
      --v14;
      *((_DWORD *)v18 + 1) = *((_DWORD *)v17 + 1);
    }
    while ( v14 );
    v13 = &v10[2 * v12];
  }
  else
  {
    v13 = v10;
  }
  v19 = *a3;
  v20 = (char *)&v10[v9];
  v21 = *a3 == 0;
  *v13 = *a3;
  if ( !v21 )
    ++*(_DWORD *)(v19 + 4);
  v13[1] = a3[1];
  std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(a1);
  a1[1] = v13 + 2;
  a1[2] = v20;
  *a1 = v10;
}


// ===== 64a008 glitch::collada::CMorphingMesh::SBuffer::operator=(glitch::collada::CMorphingMesh::SBuffer const&) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CMorphingMesh::SBuffer::operator=(
        glitch::IReferenceCounted **a1,
        glitch::IReferenceCounted **a2,
        int a3)
{
  glitch::IReferenceCounted *v3; // r3
  glitch::IReferenceCounted *v6; // r0
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterial *v8; // r2
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r2
  glitch::video::CMaterialVertexAttributeMap *v12; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v13; // [sp+4h] [bp-8h] BYREF

  v3 = *a2;
  if ( *a2 )
    a3 = *((_DWORD *)v3 + 1);
  if ( *a2 )
    *((_DWORD *)v3 + 1) = a3 + 1;
  v6 = *a1;
  *a1 = v3;
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = a2[1];
  v13 = v7;
  if ( v7 )
    ++*(_DWORD *)v7;
  v8 = a1[1];
  if ( v7 )
    v7 = v13;
  a1[1] = v7;
  v13 = v8;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
  v9 = a2[2];
  v12 = v9;
  if ( v9 )
  {
    ++*(_DWORD *)v9;
    v9 = v12;
  }
  v10 = a1[2];
  a1[2] = v9;
  v12 = v10;
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v12);
  return a1;
}


// ===== 64a0b0 glitch::collada::CMorphingMesh::SBuffer::~SBuffer() =====
void __fastcall glitch::collada::CMorphingMesh::SBuffer::~SBuffer(glitch::video::CMaterialVertexAttributeMap **this)
{
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 1);
  if ( *this )
    glitch::IReferenceCounted::drop(*this);
}


// ===== 64a0e0 std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::CMorphingMesh::SBuffer*,glitch::collada::CMorphingMesh::SBuffer*,std::__false_type const&) =====
glitch::collada::CMorphingMesh::SBuffer *__fastcall std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::collada::CMorphingMesh::SBuffer *this,
        int a3)
{
  glitch::collada::CMorphingMesh::SBuffer *v3; // r4
  int v6; // r3
  int v8; // r10
  glitch::collada::CMorphingMesh::SBuffer *v9; // r10
  int v10; // r6
  int v11; // r4
  glitch::video::CMaterialVertexAttributeMap **v12; // r6
  glitch::video::CMaterialVertexAttributeMap **v13; // r0

  v3 = *(glitch::collada::CMorphingMesh::SBuffer **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v8 = -1431655765 * v6;
  if ( -1431655765 * v6 > 0 )
  {
    v10 = -1431655765 * v6;
    v11 = 0;
    do
    {
      glitch::collada::CMorphingMesh::SBuffer::operator=(
        (glitch::IReferenceCounted **)((char *)this + v11),
        (glitch::IReferenceCounted **)(a3 + v11),
        a3);
      --v10;
      v11 += 12;
    }
    while ( v10 );
    v9 = (glitch::collada::CMorphingMesh::SBuffer *)((char *)this + 12 * v8);
    v3 = *(glitch::collada::CMorphingMesh::SBuffer **)(a1 + 4);
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
      v12 += 3;
      glitch::collada::CMorphingMesh::SBuffer::~SBuffer(v13);
    }
    while ( v3 != (glitch::collada::CMorphingMesh::SBuffer *)v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return this;
}


// ===== 64a174 std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterialVertexAttributeMap ***__fastcall std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterialVertexAttributeMap ***a1)
{
  glitch::video::CMaterialVertexAttributeMap **v1; // r4
  glitch::video::CMaterialVertexAttributeMap **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 3;
    glitch::collada::CMorphingMesh::SBuffer::~SBuffer(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 64a1b8 glitch::collada::CMorphingMesh::~CMorphingMesh() =====
void __fastcall glitch::collada::CMorphingMesh::~CMorphingMesh(glitch::collada::CMorphingMesh *this)
{
  glitch::collada::CRootSceneNode *v2; // r0
  glitch::collada::CMorphingMesh::SBuffer *v3; // r1
  int v4; // r2

  v2 = *((glitch::collada::CRootSceneNode **)this + 14);
  *(_DWORD *)this = off_97FBB8;
  glitch::collada::CRootSceneNode::removeMorphingMesh(v2, this);
  v3 = *((glitch::collada::CMorphingMesh::SBuffer **)this + 6);
  v4 = *((_DWORD *)this + 7);
  if ( v3 != (glitch::collada::CMorphingMesh::SBuffer *)v4 )
    std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 24,
      v3,
      v4);
  std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 9);
  std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 6);
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 64a248 glitch::collada::CMorphingMesh::~CMorphingMesh() =====
void __fastcall glitch::collada::CMorphingMesh::~CMorphingMesh(glitch::collada::CMorphingMesh *this)
{
  glitch::collada::CMorphingMesh::~CMorphingMesh(this);
  LC_API_FREE_0(this);
}


// ===== 64a264 glitch::collada::CMorphingMesh::~CMorphingMesh() =====
void __fastcall glitch::collada::CMorphingMesh::~CMorphingMesh(glitch::collada::CMorphingMesh *this)
{
  glitch::collada::CRootSceneNode *v2; // r0
  glitch::collada::CMorphingMesh::SBuffer *v3; // r1
  int v4; // r2

  v2 = *((glitch::collada::CRootSceneNode **)this + 14);
  *(_DWORD *)this = off_97FBB8;
  glitch::collada::CRootSceneNode::removeMorphingMesh(v2, this);
  v3 = *((glitch::collada::CMorphingMesh::SBuffer **)this + 6);
  v4 = *((_DWORD *)this + 7);
  if ( v3 != (glitch::collada::CMorphingMesh::SBuffer *)v4 )
    std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 24,
      v3,
      v4);
  std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 9);
  std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 6);
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 64a2f4 glitch::collada::CMorphingMesh::releaseProcessBuffer(glitch::video::IVideoDriver *,uint) =====
int __fastcall glitch::collada::CMorphingMesh::releaseProcessBuffer(
        glitch::collada::CMorphingMesh *this,
        glitch::video::IVideoDriver *a2,
        unsigned int a3)
{
  glitch::IReferenceCounted *v6; // r8
  int (__fastcall *v7)(glitch::video::IVideoDriver *, _DWORD, char *, int, int, _DWORD); // r10
  glitch::video::CMaterial *v8; // r3
  int v9; // r7
  int v10; // r11
  int Technique; // r0
  int result; // r0
  glitch::IReferenceCounted *v13; // [sp+Ch] [bp-8h] BYREF

  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::collada::CMorphingMesh *))(*(_DWORD *)this + 20))(
    &v13,
    this);
  v6 = v13;
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  v7 = *(int (__fastcall **)(glitch::video::IVideoDriver *, _DWORD, char *, int, int, _DWORD))(*(_DWORD *)a2 + 500);
  v8 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 6) + 12 * a3 + 4);
  v9 = *((_DWORD *)v6 + 9);
  v10 = *((_DWORD *)v8 + 1);
  Technique = glitch::video::CMaterial::getTechnique(v8);
  result = v7(
             a2,
             0,
             (char *)v6 + 20,
             v9,
             *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v10 + 24) + 12 * Technique + 8) + 32) + 56) & 0x20001,
             0);
  *((_DWORD *)this + 5) &= ~(1 << (a3 & 0x1F));
  return result;
}


// ===== 64a3b4 glitch::collada::CMorphingMesh::init(glitch::video::IVideoDriver *,bool) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CMorphingMesh::init(
        glitch::collada::CMorphingMesh *this,
        glitch::video::IVideoDriver *a2,
        glitch::IReferenceCounted *a3)
{
  glitch::IReferenceCounted *result; // r0
  int v5; // r9
  glitch::IReferenceCounted *v6; // r10
  char v7; // r2
  glitch::IReferenceCounted *v8; // r6
  void *v9; // r5
  glitch::video::CVertexStreams *v10; // r3
  int v11; // r4
  int v12; // r1
  char v13; // r2
  unsigned int v14; // r4
  int v15; // r3
  int v16; // r2
  __int16 v17; // r0
  int v18; // r3
  glitch::IReferenceCounted *v19; // r0
  int v20; // [sp+Ch] [bp-60h]
  glitch::IReferenceCounted *v21; // [sp+10h] [bp-5Ch]
  glitch::IReferenceCounted *v24[3]; // [sp+3Ch] [bp-30h] BYREF
  __int16 v25; // [sp+48h] [bp-24h]
  __int16 v26; // [sp+4Ah] [bp-22h]
  glitch::IReferenceCounted *v27[3]; // [sp+4Ch] [bp-20h] BYREF
  __int16 v28; // [sp+58h] [bp-14h]
  __int16 v29; // [sp+5Ah] [bp-12h]
  glitch::video::CVertexStreams *v30; // [sp+5Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v31; // [sp+60h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v32[2]; // [sp+64h] [bp-8h] BYREF

  (*(void (__fastcall **)(_DWORD))(***((_DWORD ***)this + 9) + 64))(**((_DWORD **)this + 9));
  result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 9) + 16))(**((_DWORD **)this + 9));
  v21 = result;
  if ( result )
  {
    v5 = 0;
    v6 = nullptr;
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD))(***((_DWORD ***)this + 9) + 20))(
      v32,
      **((_DWORD **)this + 9),
      0);
    while ( 1 )
    {
      v8 = v32[0];
      if ( v32[0] )
        glitch::IReferenceCounted::drop(v32[0]);
      v9 = *(void **)(*((_DWORD *)this + 6) + v5);
      if ( !v9 )
      {
        v14 = *(_DWORD *)(*((_DWORD *)v8 + 5) + 4);
        v9 = operator new(0x38u, 0);
        *((_DWORD *)v9 + 1) = 0;
        *((_DWORD *)v9 + 2) = 0;
        *((_DWORD *)v9 + 3) = 0;
        *(_DWORD *)v9 = off_988098;
        *((_DWORD *)v9 + 4) = 0;
        glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)v9 + 5, v14);
        v15 = *((_DWORD *)v8 + 6);
        *((_DWORD *)v9 + 6) = v15;
        if ( v15 )
          ++*(_DWORD *)(v15 + 4);
        v16 = *((_DWORD *)v9 + 1);
        *((_DWORD *)v9 + 7) = *((_DWORD *)v8 + 7);
        *((_DWORD *)v9 + 8) = *((_DWORD *)v8 + 8);
        *((_DWORD *)v9 + 9) = *((_DWORD *)v8 + 9);
        *((_DWORD *)v9 + 10) = *((_DWORD *)v8 + 10);
        *((_WORD *)v9 + 22) = *((_WORD *)v8 + 22);
        v17 = *((_WORD *)v8 + 23);
        *((_DWORD *)v9 + 12) = 0;
        *((_BYTE *)v9 + 52) = 1;
        *((_WORD *)v9 + 23) = v17;
        v18 = *((_DWORD *)this + 6);
        *((_DWORD *)v9 + 1) = v16 + 1;
        v19 = *(glitch::IReferenceCounted **)(v18 + v5);
        *(_DWORD *)(v18 + v5) = v9;
        if ( v19 )
          glitch::IReferenceCounted::drop(v19);
      }
      v11 = *((_DWORD *)v9 + 5);
      v30 = *((glitch::video::CVertexStreams **)v8 + 5);
      v10 = v30;
      if ( v30 )
      {
        ++*(_DWORD *)v30;
        v10 = v30;
      }
      v20 = *((_DWORD *)v10 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v30);
      *(_DWORD *)(v11 + 8) = v20;
      glitch::video::CVertexStreams::setStreams((glitch::video::CVertexStreams *)v11, (int *)v8 + 5, -131074, 0, 1u);
      v27[2] = (glitch::IReferenceCounted *)&byte_6;
      v27[0] = nullptr;
      v27[1] = nullptr;
      v28 = 3;
      v29 = 0;
      glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v11, v11 + 20, v27);
      if ( v27[0] )
        glitch::IReferenceCounted::drop(v27[0]);
      if ( (*(_DWORD *)(v11 + 4) & 0x20000) != 0 )
      {
        v12 = *(unsigned __int8 *)(v11 + 12) + 1;
        v24[2] = (glitch::IReferenceCounted *)&byte_6;
        v24[0] = nullptr;
        v24[1] = nullptr;
        v25 = 3;
        v26 = 0;
        glitch::video::CVertexStreams::setStream((glitch::video::CVertexStreams *)v11, v11 + 20 + 16 * v12, v24);
        if ( v24[0] )
          glitch::IReferenceCounted::drop(v24[0]);
      }
      result = a3;
      if ( a3 )
      {
        v7 = (unsigned __int8)v6 & 0x1F;
        v6 = (glitch::IReferenceCounted *)((char *)v6 + 1);
        *((_DWORD *)this + 5) &= ~(1 << v7);
        v5 += 12;
        if ( v6 == v21 )
          return result;
      }
      else
      {
        v31 = (glitch::IReferenceCounted *)v9;
        ++*((_DWORD *)v9 + 1);
        glitch::video::IVideoDriver::getProcessBuffer((int)a2, 1, 131073, &v31, 1u);
        result = v31;
        if ( v31 )
          result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v31);
        v13 = (unsigned __int8)v6 & 0x1F;
        v6 = (glitch::IReferenceCounted *)((char *)v6 + 1);
        *((_DWORD *)this + 5) |= 1 << v13;
        v5 += 12;
        if ( v6 == v21 )
          return result;
      }
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted *))(***((_DWORD ***)this + 9)
                                                                                                + 20))(
        v32,
        **((_DWORD **)this + 9),
        v6);
    }
  }
  return result;
}


// ===== 64a6e4 glitch::collada::CMorphingMesh::morph(uint) =====
int __fastcall glitch::collada::CMorphingMesh::morph(glitch::collada::CMorphingMesh *this, unsigned int a2)
{
  glitch::collada::CMorphingMesh *v2; // r6
  glitch::IReferenceCounted *v3; // r4
  int v4; // r2
  int v5; // r3
  int v6; // r5
  unsigned int v7; // r5
  int i; // r4
  int v9; // r7
  int v10; // r3
  _DWORD *v11; // r10
  int v12; // r7
  unsigned int v13; // r4
  int v14; // r4
  _DWORD *v15; // r8
  int v16; // r10
  _DWORD *v17; // r8
  int v18; // r11
  glitch::IReferenceCounted *v19; // r9
  int v20; // r0
  int v21; // r9
  char v22; // r10
  int v23; // r3
  int v24; // r0
  int v25; // r11
  int v26; // r10
  _DWORD *v27; // r9
  int v28; // r0
  float v29; // r12
  int v30; // r7
  _BYTE *v31; // r7
  char v32; // r2
  int v33; // r7
  int v34; // r5
  _BYTE *v35; // r5
  char v36; // r3
  int v37; // r0
  float v38; // r10
  int v39; // r11
  float *v40; // r5
  float *v41; // r8
  int v42; // r10
  int v43; // r0
  _DWORD *v44; // r5
  int v45; // r11
  int v46; // r0
  float v47; // r10
  int v48; // r5
  float *v49; // r5
  float *v50; // r8
  int v51; // r9
  float v52; // r6
  float v53; // r0
  float v54; // t1
  _BYTE *v55; // r5
  char v56; // r3
  _BYTE *v57; // r4
  char v58; // r3
  int result; // r0
  _BYTE *v60; // r4
  char v61; // r3
  _BYTE *v62; // r4
  char v63; // r3
  float *v64; // r8
  int v65; // r9
  float v66; // r6
  float v67; // r0
  float v68; // t1
  float *v69; // r8
  int v70; // r10
  int v71; // [sp+Ch] [bp-60h]
  int v72; // [sp+Ch] [bp-60h]
  _DWORD *v73; // [sp+10h] [bp-5Ch]
  int v74; // [sp+14h] [bp-58h]
  unsigned int v75; // [sp+18h] [bp-54h]
  int v76; // [sp+1Ch] [bp-50h]
  int v78; // [sp+24h] [bp-48h]
  int v79; // [sp+28h] [bp-44h]
  int v80; // [sp+2Ch] [bp-40h]
  int v81; // [sp+30h] [bp-3Ch]
  float *v82; // [sp+34h] [bp-38h]
  _DWORD *v83; // [sp+3Ch] [bp-30h]
  int v84; // [sp+44h] [bp-28h]
  int v85; // [sp+48h] [bp-24h]
  glitch::collada::CMorphingMesh *v86; // [sp+50h] [bp-1Ch]
  glitch::collada::CMorphingMesh *v87; // [sp+54h] [bp-18h]
  glitch::IReferenceCounted *v88; // [sp+58h] [bp-14h] BYREF
  glitch::IReferenceCounted *v89; // [sp+5Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v90; // [sp+60h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v91; // [sp+64h] [bp-8h] BYREF

  v2 = this;
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(***((_DWORD ***)this + 9) + 20))(
    &v91,
    **((_DWORD **)this + 9),
    a2);
  v3 = v91;
  if ( v91 )
    glitch::IReferenceCounted::drop(v91);
  v4 = *((_DWORD *)v3 + 10);
  v5 = *((_DWORD *)v2 + 9);
  v78 = *((_DWORD *)v3 + 9);
  v6 = *((_DWORD *)v2 + 10);
  *(_DWORD *)(v5 + 4) = 1065353216;
  v7 = (v6 - v5) >> 3;
  v79 = v4 - v78;
  if ( *(_DWORD *)(*((_DWORD *)v2 + 12) + 4) || v7 <= 1 )
  {
    if ( !v7 )
    {
      v11 = *((_DWORD **)v2 + 9);
      v12 = 0;
      v13 = 1;
      goto LABEL_15;
    }
  }
  else
  {
    for ( i = 1; i != v7; ++i )
    {
      v9 = *((_DWORD *)v2 + 9);
      v10 = v9 + 8 * i;
      *(float *)(v9 + 4) = *(float *)(v9 + 4) - *(float *)(v10 + 4);
    }
  }
  v11 = *((_DWORD **)v2 + 9);
  if ( COERCE_FLOAT(v11[1] & 0x7FFFFFFF) <= 0.000001 )
  {
    v14 = 0;
    do
    {
      ++v14;
      v12 = 8 * v14;
      v15 = &v11[2 * v14];
      if ( v14 == v7 )
      {
        v12 = 8 * v7;
        v11 += 2 * v7;
        v13 = v7 + 1;
        goto LABEL_15;
      }
    }
    while ( COERCE_FLOAT(v15[1] & 0x7FFFFFFF) <= 0.000001 );
    v13 = v14 + 1;
    v11 = v15;
  }
  else
  {
    v12 = 0;
    v13 = 1;
  }
LABEL_15:
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(*(_DWORD *)*v11 + 20))(&v90, *v11, a2);
  v16 = *((_DWORD *)v90 + 5);
  glitch::IReferenceCounted::drop(v90);
  v17 = (_DWORD *)(v16 + 20);
  v76 = glitch::video::IBuffer::map(*(_DWORD *)(v16 + 20), 1) + *(_DWORD *)(v16 + 24);
  v18 = *(unsigned __int16 *)(v16 + 34);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::collada::CMorphingMesh *, unsigned int))(*(_DWORD *)v2 + 20))(
    &v89,
    v2,
    a2);
  v19 = v89;
  if ( v89 )
    glitch::IReferenceCounted::drop(v89);
  v80 = *((_DWORD *)v19 + 5);
  v20 = glitch::video::IBuffer::map(*(_DWORD *)(v80 + 20), 4);
  v21 = v80 + 20;
  v74 = *(unsigned __int16 *)(v80 + 34);
  v84 = v20 + *(_DWORD *)(v80 + 24);
  glitch::collada::setWeightedVertex<glitch::core::vector3d<float>>(
    (float *)(v84 + v78 * v74),
    v74,
    (float *)(v76 + v78 * v18),
    v18,
    *(float *)(*((_DWORD *)v2 + 9) + v12 + 4),
    v79);
  if ( (*(_DWORD *)(v80 + 4) & *(_DWORD *)(v16 + 4) & 0x20000) != 0
    && (v22 = *(_BYTE *)(v16 + 12),
        v23 = (unsigned __int8)(*(_BYTE *)(v80 + 12) + 1),
        v24 = *(_DWORD *)(v21 + 16 * v23),
        v25 = v21 + 16 * v23,
        v24)
    && (v26 = (unsigned __int8)(v22 + 1), v27 = &v17[4 * v26], *v27) )
  {
    v85 = glitch::video::IBuffer::map(v24, 4) + *(_DWORD *)(v25 + 4);
    v82 = (float *)(v85 + v78 * *(unsigned __int16 *)(v25 + 14));
    v28 = glitch::video::IBuffer::map(v17[4 * v26], 1);
    v29 = *(float *)(*((_DWORD *)v2 + 9) + v12 + 4);
    v30 = v28 + v27[1];
    glitch::collada::setWeightedVertex<glitch::core::vector3d<float>>(
      v82,
      v74,
      (float *)(v30 + v78 * *((unsigned __int16 *)v27 + 7)),
      *((unsigned __int16 *)v27 + 7),
      v29,
      v79);
    if ( !v30 )
    {
LABEL_23:
      v83 = (_DWORD *)v25;
      goto LABEL_25;
    }
    v31 = (_BYTE *)*v27;
    v32 = *(_BYTE *)(*v27 + 19);
    if ( (v32 & 0x1Fu) > 1 )
    {
      v31[19] = ((v32 & 0x1F) - 1) | v32 & 0xE0;
      goto LABEL_23;
    }
    if ( (v31[18] & 0x20) != 0 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v31 + 24))(*v27);
    v31[19] = 0;
    v83 = (_DWORD *)v25;
  }
  else
  {
    v83 = nullptr;
    v85 = 0;
    v82 = nullptr;
  }
LABEL_25:
  if ( v7 > v13 )
  {
    v33 = 8 * v13;
    v75 = v7;
    do
    {
      while ( 1 )
      {
        v34 = *((_DWORD *)v2 + 9);
        if ( *(float *)(v34 + v33 + 4) != 0.0 )
          break;
LABEL_27:
        ++v13;
        v33 += 8;
        if ( v13 >= v75 )
          goto LABEL_49;
      }
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(v34 + v33) + 20))(
        &v88,
        *(_DWORD *)(v34 + v33),
        a2);
      v71 = *((_DWORD *)v88 + 5);
      glitch::IReferenceCounted::drop(v88);
      v73 = (_DWORD *)(v71 + 20);
      if ( v76 )
      {
        v35 = (_BYTE *)*v17;
        v36 = *(_BYTE *)(*v17 + 19);
        if ( (v36 & 0x1Fu) <= 1 )
        {
          if ( (v35[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v35 + 24))(*v17);
          v35[19] = 0;
        }
        else
        {
          v35[19] = ((v36 & 0x1F) - 1) | v36 & 0xE0;
        }
      }
      v37 = glitch::video::IBuffer::map(*(_DWORD *)(v71 + 20), 1);
      v38 = *(float *)(*((_DWORD *)v2 + 9) + v33 + 4);
      v76 = v37 + *(_DWORD *)(v71 + 24);
      v39 = *(unsigned __int16 *)(v71 + 34);
      if ( v38 != 0.0 )
      {
        v40 = (float *)(v76 + v78 * v39);
        if ( v38 == 1.0 )
        {
          if ( v79 )
          {
            v41 = (float *)(v84 + v78 * v74);
            v42 = 0;
            do
            {
              *v41 = *v41 + *v40;
              v41[1] = v41[1] + v40[1];
              ++v42;
              v41[2] = v41[2] + v40[2];
              v40 = (float *)((char *)v40 + v39);
              v41 = (float *)((char *)v41 + v74);
            }
            while ( v42 != v79 );
          }
        }
        else if ( v79 )
        {
          v64 = (float *)(v84 + v78 * v74);
          v65 = 0;
          v86 = v2;
          do
          {
            v66 = v38 * v40[1];
            v67 = v38 * v40[2];
            v68 = *v40;
            v40 = (float *)((char *)v40 + v39);
            *v64 = *v64 + (float)(v38 * v68);
            v64[1] = v64[1] + v66;
            v64[2] = v64[2] + v67;
            ++v65;
            v64 = (float *)((char *)v64 + v74);
          }
          while ( v65 != v79 );
          v2 = v86;
        }
      }
      if ( !v82 )
        goto LABEL_59;
      if ( (*(_DWORD *)(v71 + 4) & 0x20000) == 0 )
        goto LABEL_59;
      v72 = (unsigned __int8)(*(_BYTE *)(v71 + 12) + 1);
      v43 = v73[4 * v72];
      v44 = &v73[4 * v72];
      if ( !v43 )
        goto LABEL_59;
      v45 = *((unsigned __int16 *)v44 + 7);
      v46 = glitch::video::IBuffer::map(v43, 1);
      v47 = *(float *)(*((_DWORD *)v2 + 9) + v33 + 4);
      v81 = v46 + v44[1];
      v48 = *((unsigned __int16 *)v44 + 7);
      if ( v47 != 0.0 )
      {
        v49 = (float *)(v81 + v78 * v48);
        if ( v47 == 1.0 )
        {
          if ( v79 )
          {
            v69 = v82;
            v70 = 0;
            do
            {
              *v69 = *v69 + *v49;
              v69[1] = v69[1] + v49[1];
              ++v70;
              v69[2] = v69[2] + v49[2];
              v49 = (float *)((char *)v49 + v45);
              v69 = (float *)((char *)v69 + v74);
            }
            while ( v70 != v79 );
          }
        }
        else if ( v79 )
        {
          v50 = v82;
          v51 = 0;
          v87 = v2;
          do
          {
            v52 = v47 * v49[1];
            v53 = v47 * v49[2];
            v54 = *v49;
            v49 = (float *)((char *)v49 + v45);
            *v50 = *v50 + (float)(v47 * v54);
            v50[1] = v50[1] + v52;
            v50[2] = v50[2] + v53;
            ++v51;
            v50 = (float *)((char *)v50 + v74);
          }
          while ( v51 != v79 );
          v2 = v87;
        }
      }
      if ( !v81 )
      {
LABEL_59:
        v17 = v73;
        goto LABEL_27;
      }
      v55 = (_BYTE *)v73[4 * v72];
      v56 = v55[19];
      if ( (v56 & 0x1Fu) <= 1 )
      {
        if ( (v55[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v55 + 24))(v73[4 * v72]);
        v55[19] = 0;
        v17 = v73;
        goto LABEL_27;
      }
      v55[19] = ((v56 & 0x1F) - 1) | v56 & 0xE0;
      ++v13;
      v17 = v73;
      v33 += 8;
    }
    while ( v13 < v75 );
  }
LABEL_49:
  if ( v85 )
  {
    v57 = (_BYTE *)*v83;
    v58 = *(_BYTE *)(*v83 + 19);
    if ( (v58 & 0x1Fu) <= 1 )
    {
      if ( (v57[18] & 0x20) != 0 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v57 + 24))(*v83);
      v57[19] = 0;
    }
    else
    {
      v57[19] = ((v58 & 0x1F) - 1) | v58 & 0xE0;
    }
  }
  result = v84;
  if ( v84 )
  {
    v60 = *(_BYTE **)(v80 + 20);
    v61 = v60[19];
    if ( (v61 & 0x1Fu) <= 1 )
    {
      if ( (v60[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v60 + 24))(*(_DWORD *)(v80 + 20));
      v60[19] = 0;
    }
    else
    {
      v60[19] = ((v61 & 0x1F) - 1) | v61 & 0xE0;
    }
  }
  if ( v76 )
  {
    v62 = (_BYTE *)*v17;
    v63 = *(_BYTE *)(*v17 + 19);
    if ( (v63 & 0x1Fu) <= 1 )
    {
      if ( (v62[18] & 0x20) != 0 )
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v62 + 24))(*v17);
      v62[19] = 0;
    }
    else
    {
      v62[19] = ((v63 & 0x1F) - 1) | v63 & 0xE0;
    }
  }
  return result;
}


// ===== 64afec glitch::collada::CMorphingMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,uint) =====
int __fastcall glitch::collada::CMorphingMesh::onPrepareBufferForRendering(int a1, int a2, int a3, unsigned int a4)
{
  int ProcessBuffer; // r8
  int v9; // r6
  int v10; // r3
  glitch::video::CMaterial *v11; // r0
  int v12; // r6
  int v13; // r0
  int v15; // r3
  glitch::video::CMaterial *v16; // r0
  int v17; // r6
  int Technique; // r0
  glitch::IReferenceCounted *v19; // [sp+Ch] [bp-4h] BYREF

  ProcessBuffer = (*(int (__fastcall **)(_DWORD))(***(_DWORD ***)(a1 + 36) + 56))(**(_DWORD **)(a1 + 36));
  if ( a2 )
  {
    v15 = *(_DWORD *)(a1 + 24);
    v19 = *(glitch::IReferenceCounted **)(v15 + 12 * a4);
    if ( v19 )
    {
      ++*((_DWORD *)v19 + 1);
      v15 = *(_DWORD *)(a1 + 24);
    }
    v16 = *(glitch::video::CMaterial **)(v15 + 12 * a4 + 4);
    v17 = *((_DWORD *)v16 + 1);
    Technique = glitch::video::CMaterial::getTechnique(v16);
    ProcessBuffer = glitch::video::IVideoDriver::getProcessBuffer(
                      a3,
                      0,
                      *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v17 + 24) + 12 * Technique + 8) + 32) + 56)
                    & ((unsigned int)&elf_hash_chain[16302] + 1),
                      &v19,
                      0);
    if ( (ProcessBuffer & 4) == 0 )
      goto LABEL_6;
    *(_DWORD *)(a1 + 20) |= 1 << (a4 & 0x1F);
    goto LABEL_13;
  }
  v9 = 1 << (a4 & 0x1F);
  if ( (v9 & *(_DWORD *)(a1 + 20)) != 0 && (v9 & *(_DWORD *)(a1 + 60)) != 0 )
  {
    glitch::collada::CMorphingMesh::morph((glitch::collada::CMorphingMesh *)a1, a4);
    *(_DWORD *)(a1 + 60) &= ~v9;
    return ProcessBuffer;
  }
  v10 = *(_DWORD *)(a1 + 24);
  v19 = *(glitch::IReferenceCounted **)(v10 + 12 * a4);
  if ( v19 )
  {
    ++*((_DWORD *)v19 + 1);
    v10 = *(_DWORD *)(a1 + 24);
  }
  v11 = *(glitch::video::CMaterial **)(v10 + 12 * a4 + 4);
  v12 = *((_DWORD *)v11 + 1);
  v13 = glitch::video::CMaterial::getTechnique(v11);
  ProcessBuffer = glitch::video::IVideoDriver::getProcessBuffer(
                    a3,
                    1,
                    *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v12 + 24) + 12 * v13 + 8) + 32) + 56)
                  & ((unsigned int)&elf_hash_chain[16302] + 1),
                    &v19,
                    0);
  if ( (ProcessBuffer & 4) != 0 )
LABEL_13:
    glitch::collada::CMorphingMesh::morph((glitch::collada::CMorphingMesh *)a1, a4);
LABEL_6:
  if ( v19 )
    glitch::IReferenceCounted::drop(v19);
  return ProcessBuffer;
}


// ===== 64b1b4 std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::CMorphingMesh::SBuffer*,uint,glitch::collada::CMorphingMesh::SBuffer const&,std::__false_type const&) =====
void __fastcall std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        glitch::IReferenceCounted **a2,
        unsigned int a3,
        int *a4)
{
  glitch::IReferenceCounted **v6; // r6
  int *v7; // r8
  glitch::video::CMaterialVertexAttributeMap *v8; // r3
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  int v10; // r5
  int v11; // r9
  glitch::IReferenceCounted **v12; // r5
  int v13; // r0
  int *v14; // r2
  int *v15; // r3
  int *i; // r2
  int v17; // r1
  _DWORD *v18; // r1
  _DWORD *v19; // r1
  int v20; // r2
  int v21; // r10
  int v22; // r4
  int *v23; // r0
  int v24; // r1
  int *v25; // r3
  int v26; // r2
  _DWORD *v27; // r2
  _DWORD *v28; // r2
  int v29; // r2
  glitch::video::CMaterialVertexAttributeMap *v30[2]; // [sp+8h] [bp-10h] BYREF
  _DWORD *v31; // [sp+10h] [bp-8h]
  char v32[4]; // [sp+14h] [bp-4h] BYREF

  v6 = a2;
  if ( (unsigned int)a4 < *a1 )
  {
    v7 = (int *)a1[1];
    goto LABEL_12;
  }
  v7 = (int *)a1[1];
  if ( a4 >= v7 )
  {
LABEL_12:
    v10 = -1431655765 * (((char *)v7 - (char *)a2) >> 2);
    if ( a3 >= v10 )
    {
      v23 = std::priv::__uninitialized_fill_n<glitch::collada::CMorphingMesh::SBuffer *,unsigned int,glitch::collada::CMorphingMesh::SBuffer>(
              v7,
              a3 - v10,
              a4);
      a1[1] = v23;
      if ( v10 <= 0 )
      {
        a1[1] = &v23[3 * v10];
      }
      else
      {
        v24 = v10;
        v25 = (int *)v6;
        while ( 1 )
        {
          v26 = *v25;
          *v23 = *v25;
          if ( v26 )
            ++*(_DWORD *)(v26 + 4);
          v27 = (_DWORD *)v25[1];
          v23[1] = (int)v27;
          if ( v27 )
            ++*v27;
          v28 = (_DWORD *)v25[2];
          v25 += 3;
          v23[2] = (int)v28;
          if ( v28 )
            ++*v28;
          if ( !--v24 )
            break;
          v23 += 3;
        }
        v29 = 12;
        a1[1] += 12 * v10;
        do
        {
          glitch::collada::CMorphingMesh::SBuffer::operator=(v6, (glitch::IReferenceCounted **)a4, v29);
          --v10;
          v6 += 3;
        }
        while ( v10 );
      }
    }
    else
    {
      v11 = 3 * a3;
      v12 = (glitch::IReferenceCounted **)&v7[-3 * a3];
      v13 = -1431655765 * ((int)(12 * a3) >> 2);
      if ( v13 > 0 )
      {
        v15 = &v7[-3 * a3];
        for ( i = v7; ; i += 3 )
        {
          v17 = *v15;
          *i = *v15;
          if ( v17 )
            ++*(_DWORD *)(v17 + 4);
          v18 = (_DWORD *)v15[1];
          i[1] = (int)v18;
          if ( v18 )
            ++*v18;
          v19 = (_DWORD *)v15[2];
          v15 += 3;
          i[2] = (int)v19;
          if ( v19 )
            ++*v19;
          if ( !--v13 )
            break;
        }
        v14 = (int *)a1[1];
      }
      else
      {
        v14 = v7;
      }
      v20 = (int)&v14[v11];
      a1[1] = v20;
      v21 = -1431655765 * (v12 - v6);
      if ( v21 > 0 )
      {
        do
        {
          v7 -= 3;
          v12 -= 3;
          glitch::collada::CMorphingMesh::SBuffer::operator=((glitch::IReferenceCounted **)v7, v12, v20);
          --v21;
        }
        while ( v21 );
      }
      v22 = -1431655765 * ((v11 * 4) >> 2);
      if ( v22 > 0 )
      {
        do
        {
          glitch::collada::CMorphingMesh::SBuffer::operator=(v6, (glitch::IReferenceCounted **)a4, v20);
          --v22;
          v6 += 3;
        }
        while ( v22 );
      }
    }
    return;
  }
  v8 = (glitch::video::CMaterialVertexAttributeMap *)*a4;
  v30[0] = v8;
  if ( v8 )
    ++*((_DWORD *)v8 + 1);
  v9 = (glitch::video::CMaterialVertexAttributeMap *)a4[1];
  v30[1] = v9;
  if ( v9 )
    ++*(_DWORD *)v9;
  v31 = (_DWORD *)a4[2];
  if ( v31 )
    ++*v31;
  ((void (__fastcall *)(_DWORD *, glitch::IReferenceCounted **, unsigned int, glitch::video::CMaterialVertexAttributeMap **, char *))std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux)(
    a1,
    a2,
    a3,
    v30,
    v32);
  glitch::collada::CMorphingMesh::SBuffer::~SBuffer(v30);
}


// ===== 64b454 std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::CMorphingMesh::SBuffer*,uint,glitch::collada::CMorphingMesh::SBuffer const&) =====
void __fastcall std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        glitch::video::CMaterialVertexAttributeMap ***a1,
        glitch::IReferenceCounted **a2,
        unsigned int a3,
        int *a4)
{
  glitch::IReferenceCounted **v6; // r4
  size_t v8; // r10
  glitch::video::CMaterialVertexAttributeMap **v9; // r0
  int v10; // lr
  glitch::video::CMaterialVertexAttributeMap **v11; // r3
  glitch::video::CMaterialVertexAttributeMap **v12; // r8
  int v13; // r2
  int v14; // r0
  int *v15; // r0
  int v16; // r12
  glitch::video::CMaterialVertexAttributeMap **v17; // r2
  glitch::video::CMaterialVertexAttributeMap *v18; // r1
  int *v19; // r1
  int *v20; // r1
  int *v21; // r7
  glitch::video::CMaterialVertexAttributeMap **v22; // r6
  int v23; // r3
  int v24; // r12
  int v25; // r1
  _DWORD *v26; // r3
  glitch::IReferenceCounted *v27; // r2
  int **v28; // r2
  int **v29; // r2
  glitch::video::CMaterialVertexAttributeMap **v30; // r4
  glitch::video::CMaterialVertexAttributeMap **v31; // r0
  int v32; // r3
  _DWORD *v33; // r3
  _DWORD *v34; // r3

  v6 = a2;
  if ( a3 )
  {
    if ( a3 <= -1431655765 * (a1[2] - a1[1]) )
    {
      std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 3
         * std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = (glitch::video::CMaterialVertexAttributeMap **)GlitchAlloc(v8 * 4, 0);
      v11 = *a1;
      v12 = v9;
      v13 = v6 - *a1;
      v14 = -1431655765 * v13;
      if ( -1431655765 * v13 > 0 )
      {
        v16 = -1431655765 * v13;
        v17 = v12;
        do
        {
          v18 = *v11;
          *v17 = *v11;
          if ( v18 )
          {
            v10 = *((_DWORD *)v18 + 1) + 1;
            *((_DWORD *)v18 + 1) = v10;
          }
          v19 = (int *)v11[1];
          v17[1] = (glitch::video::CMaterialVertexAttributeMap *)v19;
          if ( v19 )
          {
            v10 = *v19 + 1;
            *v19 = v10;
          }
          v20 = (int *)v11[2];
          v11 += 3;
          v17[2] = (glitch::video::CMaterialVertexAttributeMap *)v20;
          if ( v20 )
            v10 = *v20;
          v17 += 3;
          if ( v20 )
            *v20 = ++v10;
          --v16;
        }
        while ( v16 );
        v15 = (int *)&v12[3 * v14];
      }
      else
      {
        v15 = (int *)v12;
      }
      if ( a3 == 1 )
      {
        v32 = *a4;
        *v15 = *a4;
        if ( v32 )
          ++*(_DWORD *)(v32 + 4);
        v33 = (_DWORD *)a4[1];
        v15[1] = (int)v33;
        if ( v33 )
          ++*v33;
        v34 = (_DWORD *)a4[2];
        v21 = v15 + 3;
        v15[2] = (int)v34;
        if ( v34 )
          ++*v34;
      }
      else
      {
        v15 = std::priv::__uninitialized_fill_n<glitch::collada::CMorphingMesh::SBuffer *,unsigned int,glitch::collada::CMorphingMesh::SBuffer>(
                v15,
                a3,
                a4);
        v21 = v15;
      }
      v22 = a1[1];
      v23 = v22 - v6;
      v24 = -1431655765 * v23;
      if ( -1431655765 * v23 > 0 )
      {
        v25 = -1431655765 * v23;
        v26 = v21;
        do
        {
          v27 = *v6;
          *v26 = *v6;
          if ( v27 )
          {
            v15 = (int *)(*((_DWORD *)v27 + 1) + 1);
            *((_DWORD *)v27 + 1) = v15;
          }
          v28 = (int **)v6[1];
          v26[1] = v28;
          if ( v28 )
          {
            v15 = (int *)((char *)*v28 + 1);
            *v28 = v15;
          }
          v29 = (int **)v6[2];
          v6 += 3;
          v26[2] = v29;
          if ( v29 )
            v15 = *v29;
          v26 += 3;
          if ( v29 )
          {
            v15 = (int *)((char *)v15 + 1);
            *v29 = v15;
          }
          --v25;
        }
        while ( v25 );
        v21 += 3 * v24;
        v22 = a1[1];
      }
      v30 = *a1;
      if ( *a1 == v22 )
      {
        v31 = v22;
      }
      else
      {
        do
        {
          v22 -= 3;
          glitch::collada::CMorphingMesh::SBuffer::~SBuffer(v22);
        }
        while ( v30 != v22 );
        v31 = *a1;
      }
      GlitchFree(v31);
      a1[1] = (glitch::video::CMaterialVertexAttributeMap **)v21;
      a1[2] = &v12[v8];
      *a1 = v12;
    }
  }
}


// ===== 64b698 std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::collada::CMorphingMesh::SBuffer const&) =====
void __fastcall std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        glitch::video::CMaterialVertexAttributeMap ***a1,
        unsigned int a2,
        int *a3)
{
  glitch::collada::CMorphingMesh::SBuffer *v3; // r12
  unsigned int v5; // r2
  glitch::collada::CMorphingMesh::SBuffer *v6; // r1

  v3 = (glitch::collada::CMorphingMesh::SBuffer *)a1[1];
  v5 = -1431655765 * ((v3 - (glitch::collada::CMorphingMesh::SBuffer *)*a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (glitch::collada::CMorphingMesh::SBuffer *)&(*a1)[3 * a2];
    if ( v6 != v3 )
      std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)a1,
        v6,
        (int)a1[1]);
  }
}


// ===== 64b700 glitch::collada::CMorphingMesh::instanciateMesh(glitch::video::IVideoDriver *,glitch::collada::CRootSceneNode *) =====
glitch::video::CMaterial **__fastcall glitch::collada::CMorphingMesh::instanciateMesh(
        glitch::collada::CMorphingMesh *this,
        glitch::video::IVideoDriver *a2,
        glitch::collada::CRootSceneNode *a3)
{
  _DWORD *v3; // r3
  char *v6; // r5
  glitch::IReferenceCounted *v8; // r11
  glitch::IReferenceCounted **v9; // r1
  bool v10; // zf
  glitch::IReferenceCounted *v11; // r3
  int v12; // r3
  int v13; // r8
  int v14; // r5
  glitch::IReferenceCounted *v15; // r10
  int v16; // r3
  glitch::IReferenceCounted *v17; // r2
  glitch::IReferenceCounted **v18; // r1
  glitch::IReferenceCounted **v19; // r3
  glitch::IReferenceCounted *v20; // r3
  unsigned int v21; // r0
  glitch::video::CMaterial **result; // r0
  int v23; // r3
  glitch::IReferenceCounted *v24; // r0
  void **v25; // [sp+10h] [bp-3Ch]
  glitch::video::CMaterialVertexAttributeMap *v26[3]; // [sp+18h] [bp-34h] BYREF
  glitch::IReferenceCounted *v27; // [sp+24h] [bp-28h] BYREF
  glitch::IReferenceCounted *v28; // [sp+28h] [bp-24h]
  glitch::IReferenceCounted *v29; // [sp+2Ch] [bp-20h] BYREF
  int v30; // [sp+30h] [bp-1Ch]
  glitch::video::CMaterialVertexAttributeMap *v31; // [sp+34h] [bp-18h] BYREF
  glitch::video::CMaterial *v32; // [sp+38h] [bp-14h] BYREF
  glitch::IReferenceCounted *v33; // [sp+3Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v34; // [sp+40h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v35; // [sp+44h] [bp-8h] BYREF

  v3 = *((_DWORD **)this + 12);
  v25 = (void **)((char *)this + 36);
  v6 = (char *)(*v3 + 1);
  std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)this + 36,
    v3[4] + 1);
  glitch::collada::CColladaDatabase::constructGeometry(
    &v35,
    (glitch::collada::CMorphingMesh *)((char *)this + 12),
    (const char *)a2,
    v6);
  v8 = v35;
  if ( v35 )
  {
    ++*((_DWORD *)v35 + 1);
    if ( v35 )
      glitch::IReferenceCounted::drop(v35);
    if ( v8 )
    {
      v29 = v8;
LABEL_7:
      ++*((_DWORD *)v8 + 1);
      goto LABEL_8;
    }
  }
  glitch::collada::CColladaDatabase::constructController(
    &v34,
    (glitch::collada::CMorphingMesh *)((char *)this + 12),
    (const char *)a2,
    (glitch::collada::CRootSceneNode *)v6,
    a3);
  v24 = v34;
  if ( v34 )
    v23 = *((_DWORD *)v34 + 1);
  v8 = v34;
  if ( v34 )
  {
    *((_DWORD *)v34 + 1) = v23 + 1;
    v24 = v34;
  }
  if ( v24 )
    glitch::IReferenceCounted::drop(v24);
  v29 = v8;
  if ( v8 )
    goto LABEL_7;
LABEL_8:
  v9 = *((glitch::IReferenceCounted ***)this + 10);
  v10 = v9 == *((glitch::IReferenceCounted ***)this + 11);
  v30 = 1065353216;
  if ( v10 )
  {
    std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      v25,
      (int)v9,
      (int *)&v29);
  }
  else
  {
    v11 = v29;
    *v9 = v29;
    if ( v11 )
      ++*((_DWORD *)v11 + 1);
    v9[1] = (glitch::IReferenceCounted *)v30;
    *((_DWORD *)this + 10) += 8;
  }
  if ( v29 )
    glitch::IReferenceCounted::drop(v29);
  v12 = *((_DWORD *)this + 12);
  v13 = *(_DWORD *)(v12 + 16);
  if ( v13 > 0 )
  {
    v14 = 0;
    while ( 1 )
    {
      glitch::collada::CColladaDatabase::constructGeometry(
        &v33,
        (int)this + 12,
        (int)a2,
        *(_DWORD *)(*(_DWORD *)(v12 + 20) + 4 * v14));
      v15 = v33;
      v16 = 4 * v14;
      if ( v33 )
      {
        ++*((_DWORD *)v33 + 1);
        if ( v33 )
        {
          glitch::IReferenceCounted::drop(v33);
          v16 = 4 * v14;
        }
      }
      v17 = *(glitch::IReferenceCounted **)(*(_DWORD *)(*((_DWORD *)this + 12) + 28) + v16);
      v27 = v15;
      if ( v15 )
        ++*((_DWORD *)v15 + 1);
      v18 = *((glitch::IReferenceCounted ***)this + 10);
      v19 = *((glitch::IReferenceCounted ***)this + 11);
      v28 = v17;
      if ( v18 == v19 )
      {
        std::vector<glitch::collada::CMorphingMesh::STarget,glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          v25,
          (int)v18,
          (int *)&v27);
      }
      else
      {
        v20 = v27;
        *v18 = v27;
        if ( v20 )
          ++*((_DWORD *)v20 + 1);
        v18[1] = v28;
        *((_DWORD *)this + 10) += 8;
      }
      if ( v27 )
        glitch::IReferenceCounted::drop(v27);
      if ( v15 )
        glitch::IReferenceCounted::drop(v15);
      if ( ++v14 == v13 )
        break;
      v12 = *((_DWORD *)this + 12);
    }
  }
  v21 = (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 9) + 16))(**((_DWORD **)this + 9));
  v32 = nullptr;
  v31 = nullptr;
  memset(v26, 0, sizeof(v26));
  std::vector<glitch::collada::CMorphingMesh::SBuffer,glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (glitch::video::CMaterialVertexAttributeMap ***)this + 6,
    v21,
    (int *)v26);
  glitch::collada::CMorphingMesh::SBuffer::~SBuffer(v26);
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v31);
  result = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v32);
  if ( v8 )
    return (glitch::video::CMaterial **)glitch::IReferenceCounted::drop(v8);
  return result;
}


// ===== 64b9c8 glitch::collada::CMorphingMesh::CMorphingMesh(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController &,glitch::collada::CRootSceneNode *) =====
glitch::collada::CMorphingMesh *__fastcall glitch::collada::CMorphingMesh::CMorphingMesh(
        glitch::collada::CMorphingMesh *this,
        int *a2,
        glitch::video::IVideoDriver *a3,
        int a4,
        glitch::collada::CRootSceneNode *a5)
{
  int v6; // r0
  int v7; // r1
  int v8; // r1

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v6 = *a2;
  *((_DWORD *)this + 3) = *a2;
  *((_DWORD *)this + 4) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *(_DWORD *)this = off_97FBB8;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  v8 = *(_DWORD *)(a4 + 8);
  *((_DWORD *)this + 15) = -1;
  *((_DWORD *)this + 12) = v8;
  *((_DWORD *)this + 14) = a5;
  *((_DWORD *)this + 2) = *(_DWORD *)(a4 + 4);
  glitch::collada::CMorphingMesh::instanciateMesh(this, a3, a5);
  return this;
}


// ===== 64baa0 glitch::collada::CMorphingMesh::CMorphingMesh(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController &,glitch::collada::CRootSceneNode *) =====
glitch::collada::CMorphingMesh *__fastcall glitch::collada::CMorphingMesh::CMorphingMesh(
        glitch::collada::CMorphingMesh *this,
        int *a2,
        glitch::video::IVideoDriver *a3,
        int a4,
        glitch::collada::CRootSceneNode *a5)
{
  int v6; // r0
  int v7; // r1
  int v8; // r1

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v6 = *a2;
  *((_DWORD *)this + 3) = *a2;
  *((_DWORD *)this + 4) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *(_DWORD *)this = off_97FBB8;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  v8 = *(_DWORD *)(a4 + 8);
  *((_DWORD *)this + 15) = -1;
  *((_DWORD *)this + 12) = v8;
  *((_DWORD *)this + 14) = a5;
  *((_DWORD *)this + 2) = *(_DWORD *)(a4 + 4);
  glitch::collada::CMorphingMesh::instanciateMesh(this, a3, a5);
  return this;
}


// ===== 64bb78 glitch::collada::CParticleSystemSceneNode::getUID(void) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::getUID(glitch::collada::CParticleSystemSceneNode *this)
{
  return **((_DWORD **)this + 99);
}


// ===== 64bb84 glitch::collada::CParticleSystemSceneNode::getType(void) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::getType(glitch::collada::CParticleSystemSceneNode *this)
{
  return 1885692260;
}


// ===== 64bb90 glitch::collada::CParticleSystemSceneNode::getParticleCount(void) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::getParticleCount(
        glitch::collada::CParticleSystemSceneNode *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
  return -1030792151 * ((*(_DWORD *)(v1 + 40) - *(_DWORD *)(v1 + 36)) >> 2);
}


// ===== 64bbc0 glitch::collada::CParticleSystemSceneNode::getTransformedBoundingBox(void) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::getTransformedBoundingBox(
        glitch::collada::CParticleSystemSceneNode *this)
{
  return *((_DWORD *)this + 83);
}


// ===== 64bbc8 glitch::ps::IParticleSystem<glitch::ps::SParticle>::getWorldMatrixPtr(void) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::getWorldMatrixPtr(int a1)
{
  return *(_DWORD *)(a1 + 12);
}


// ===== 64bbd0 `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::getWorldMatrixPtr(void) =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::getWorldMatrixPtr(_DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::SParticle>::getWorldMatrixPtr((int)a1 + *(_DWORD *)(*a1 - 40));
}


// ===== 64bbe0 glitch::ps::IParticleSystem<glitch::ps::SParticle>::init(void) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::init(int *a1)
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


// ===== 64bcf0 glitch::ps::IParticleSystem<glitch::ps::SParticle>::getPRand(void) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::getPRand(int a1)
{
  return a1 + 4;
}


// ===== 64bcf8 `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::getPRand(void) =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::getPRand(_DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::SParticle>::getPRand((int)a1 + *(_DWORD *)(*a1 - 32));
}


// ===== 64bd08 glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSizeModel(void) =====
void glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSizeModel()
{
  ;
}


// ===== 64bd0c `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSizeModel(void) =====
void `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSizeModel()
{
  glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSizeModel();
}


// ===== 64bd1c glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSize(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSize(int a1, int a2, int a3)
{
  glitch::ps::PSRandom *v6; // r10
  float result; // r0
  float i; // r7
  double v9; // r0
  float v10; // r0

  v6 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  result = *(float *)(a1 + 4) * *(float *)(a1 + 8);
  for ( i = result; a3 != a2; a2 += 100 )
  {
    while ( 1 )
    {
      LODWORD(v9) = glitch::ps::PSRandom::Rand(v6);
      *(float *)&v9 = v9;
      v10 = (float)(i * *(float *)&v9) + (float)(i * -0.5);
      if ( *(float *)(a1 + 12) <= 0.0 )
        break;
      *(_DWORD *)(a2 + 68) = 0;
      result = *(float *)(a1 + 4) + v10;
      *(float *)(a2 + 72) = result;
      a2 += 100;
      if ( a3 == a2 )
        return result;
    }
    result = v10 + *(float *)(a1 + 4);
    *(float *)(a2 + 68) = result;
    *(float *)(a2 + 72) = result;
  }
  return result;
}


// ===== 64bdf8 `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSize(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSize(_DWORD *a1, int a2, int a3)
{
  return glitch::ps::PSizeModel<glitch::ps::SParticle>::initPSize((int)a1 + *(_DWORD *)(*a1 - 56), a2, a3);
}


// ===== 64be08 glitch::ps::PSizeModel<glitch::ps::SParticle>::applyPSize(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PSizeModel<glitch::ps::SParticle>::applyPSize(float result, float *a2, float *a3)
{
  float v3; // r7
  float *v4; // r4
  float v5; // r6
  float v6; // r5
  float v7; // r5

  v3 = result;
  if ( a2 != a3 )
  {
    v4 = a2;
    do
    {
      v5 = v4[18];
      v4[17] = v5;
      v6 = *(float *)(LODWORD(v3) + 12);
      if ( v6 > 0.0 && v6 > v4[15] )
        v4[17] = v5 * (float)(v4[15] / v6);
      v7 = *(float *)(LODWORD(v3) + 16);
      LODWORD(result) = v7 > 0.0;
      if ( v7 > 0.0 )
      {
        result = v4[16] - v4[15];
        if ( v7 > result )
        {
          result = v4[18] * (float)((float)(v4[16] - v4[15]) / v7);
          v4[17] = result;
        }
      }
      v4 += 25;
    }
    while ( a3 != v4 );
  }
  return result;
}


// ===== 64bedc `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::applyPSize(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::applyPSize(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::PSizeModel<glitch::ps::SParticle>::applyPSize(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 60))),
           a2,
           a3);
}


// ===== 64beec glitch::ps::PColorModel<glitch::ps::SParticle>::initPColorModel(void) =====
void glitch::ps::PColorModel<glitch::ps::SParticle>::initPColorModel()
{
  ;
}


// ===== 64bef0 `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::initPColorModel(void) =====
void `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::initPColorModel()
{
  glitch::ps::PColorModel<glitch::ps::SParticle>::initPColorModel();
}


// ===== 64bf00 glitch::ps::PColorModel<glitch::ps::SParticle>::initPColor(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PColorModel<glitch::ps::SParticle>::initPColor(float result, int a2, int a3)
{
  float *v3; // r4
  glitch::ps::PSRandom *v6; // r9
  float v7; // r8
  float i; // r7
  float v9; // r6
  float v10; // r11
  double v11; // r0
  double v12; // r0

  v3 = (float *)LODWORD(result);
  if ( *(_DWORD *)(LODWORD(result) + 4) || *(_DWORD *)(LODWORD(result) + 8) )
  {
    v6 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(LODWORD(result)
                                                                        + *(_DWORD *)(*(_DWORD *)LODWORD(result) - 12))
                                                            + 24))(LODWORD(result) + *(_DWORD *)(*(_DWORD *)LODWORD(result)
                                                                                               - 12));
    v7 = v3[4] * v3[5];
    result = v3[6] * v3[7];
    for ( i = result; a3 != a2; a2 += 100 )
    {
      if ( v7 == 0.0 )
      {
        v10 = 0.0;
        if ( i != 0.0 )
        {
LABEL_12:
          LODWORD(v12) = glitch::ps::PSRandom::Rand(v6);
          *(float *)&v12 = v12;
          v9 = (float)(i * *(float *)&v12) + (float)(i * -0.5);
          goto LABEL_7;
        }
        v9 = 0.0;
      }
      else
      {
        LODWORD(v11) = glitch::ps::PSRandom::Rand(v6);
        *(float *)&v11 = v11;
        v10 = (float)(v7 * *(float *)&v11) + (float)(v7 * -0.5);
        if ( i != 0.0 )
          goto LABEL_12;
        v9 = 0.0;
      }
LABEL_7:
      *(float *)(a2 + 52) = v10 + v3[4];
      result = v9 + v3[6];
      *(float *)(a2 + 56) = result;
    }
  }
  return result;
}


// ===== 64c05c `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::initPColor(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::initPColor(
        _DWORD *a1,
        int a2,
        int a3)
{
  return glitch::ps::PColorModel<glitch::ps::SParticle>::initPColor(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 68))),
           a2,
           a3);
}


// ===== 64c06c glitch::ps::PColorModel<glitch::ps::SParticle>::hasColorAnimationTrack(void) =====
bool __fastcall glitch::ps::PColorModel<glitch::ps::SParticle>::hasColorAnimationTrack(int a1)
{
  return *(_DWORD *)(a1 + 8) != 0;
}


// ===== 64c07c `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::hasColorAnimationTrack(void) =====
bool __fastcall `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::hasColorAnimationTrack(_DWORD *a1)
{
  return glitch::ps::PColorModel<glitch::ps::SParticle>::hasColorAnimationTrack((int)a1 + *(_DWORD *)(*a1 - 36));
}


// ===== 64c08c glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPPosition(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
int __fastcall glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPPosition(_DWORD *a1, _DWORD *a2, _DWORD *a3)
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
  for ( ; a3 != a2; a2 += 25 )
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


// ===== 64c16c `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPPosition(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
int __fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPPosition(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3)
{
  return glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPPosition(
           (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 80)),
           a2,
           a3);
}


// ===== 64c17c glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotionModel(void) =====
void glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotionModel()
{
  ;
}


// ===== 64c180 `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotionModel(void) =====
void `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotionModel()
{
  glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotionModel();
}


// ===== 64c190 glitch::ps::PMotionModel<glitch::ps::SParticle>::applyPMotion(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PMotionModel<glitch::ps::SParticle>::applyPMotion(float result, float *a2, float *a3)
{
  float v3; // r6
  float *v4; // r4
  float v5; // r5
  float v6; // r8
  float v7; // r0

  v3 = result;
  if ( a2 != a3 )
  {
    v4 = a2;
    do
    {
      v5 = *(float *)(LODWORD(v3) + *(_DWORD *)(*(_DWORD *)LODWORD(v3) - 12) + 80);
      v6 = v5 * v4[4];
      v7 = v5 * v4[5];
      *v4 = *v4 + (float)(v5 * v4[3]);
      v4[1] = v4[1] + v6;
      result = v4[2] + v7;
      v4[2] = result;
      v4 += 25;
    }
    while ( a3 != v4 );
  }
  return result;
}


// ===== 64c224 `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::applyPMotion(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::applyPMotion(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::PMotionModel<glitch::ps::SParticle>::applyPMotion(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 92))),
           a2,
           a3);
}


// ===== 64c234 glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForces(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
void glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForces()
{
  ;
}


// ===== 64c238 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForces(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
void `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForces()
{
  glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForces();
}


// ===== 64c248 glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpinModel(void) =====
void glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpinModel()
{
  ;
}


// ===== 64c24c `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpinModel(void) =====
void `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpinModel()
{
  glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpinModel();
}


// ===== 64c25c glitch::ps::PSpinModel<glitch::ps::SParticle>::applyPSpin(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PSpinModel<glitch::ps::SParticle>::applyPSpin(float result, int a2, int a3)
{
  float v3; // r8
  int v4; // r4
  float v5; // r1

  v3 = result;
  if ( a2 != a3 )
  {
    v4 = a2;
    do
    {
      if ( *(float *)(v4 + 76) == 0.0 )
        v5 = 0.0;
      else
        v5 = (float)(6.2832 / *(float *)(v4 + 76))
           * *(float *)(LODWORD(v3) + *(_DWORD *)(*(_DWORD *)LODWORD(v3) - 12) + 80);
      result = *(float *)(v4 + 80) + v5;
      *(float *)(v4 + 80) = result;
      v4 += 100;
    }
    while ( a3 != v4 );
  }
  return result;
}


// ===== 64c2d8 `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::applyPSpin(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::applyPSpin(
        _DWORD *a1,
        int a2,
        int a3)
{
  return glitch::ps::PSpinModel<glitch::ps::SParticle>::applyPSpin(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 128))),
           a2,
           a3);
}


// ===== 64c2e8 glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLifeModel(void) =====
void glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLifeModel()
{
  ;
}


// ===== 64c2ec `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLifeModel(void) =====
void `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLifeModel()
{
  glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLifeModel();
}


// ===== 64c2fc glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLife(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLife(int a1, int a2, int a3)
{
  float result; // r0
  glitch::ps::PSRandom *i; // r10
  double v8; // r0
  float v9; // r6
  float v10; // r7
  int v11; // r3
  float v12; // r6

  result = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)));
  for ( i = (glitch::ps::PSRandom *)LODWORD(result); a3 != a2; a2 += 100 )
  {
    LODWORD(v8) = glitch::ps::PSRandom::Rand(i);
    v9 = *(float *)(a1 + 8);
    *(_DWORD *)(a2 + 60) = 0;
    *(float *)&v8 = v8;
    result = (float)((float)(v9 * *(float *)&v8) + (float)(v9 * -0.5)) + *(float *)(a1 + 4);
    *(float *)(a2 + 64) = result;
    v10 = result;
    v11 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
    v12 = *(float *)(v11 + 80);
    if ( result < v12 )
    {
      result = *(float *)(v11 + 80);
      if ( v12 < (float)(v10 * 4.0) )
      {
        result = v12 * 1.5;
        *(float *)(a2 + 64) = v12 * 1.5;
      }
    }
  }
  return result;
}


// ===== 64c3e4 `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLife(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLife(_DWORD *a1, int a2, int a3)
{
  return glitch::ps::PLifeModel<glitch::ps::SParticle>::initPLife((int)a1 + *(_DWORD *)(*a1 - 136), a2, a3);
}


// ===== 64c3f4 glitch::ps::PLifeModel<glitch::ps::SParticle>::applyPLife(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PLifeModel<glitch::ps::SParticle>::applyPLife(float result, int a2, int a3)
{
  int v3; // r4
  float i; // r5

  v3 = a2;
  for ( i = result; a3 != v3; v3 += 100 )
  {
    result = *(float *)(v3 + 60) + *(float *)(LODWORD(i) + *(_DWORD *)(*(_DWORD *)LODWORD(i) - 12) + 80);
    *(float *)(v3 + 60) = result;
  }
  return result;
}


// ===== 64c438 `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::applyPLife(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::applyPLife(
        _DWORD *a1,
        int a2,
        int a3)
{
  return glitch::ps::PLifeModel<glitch::ps::SParticle>::applyPLife(
           COERCE_FLOAT((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 140))),
           a2,
           a3);
}


// ===== 64c448 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(
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


// ===== 64c464 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(
        _DWORD *a1,
        _DWORD *a2)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(
    a1,
    (int)a2 + *(_DWORD *)(*a2 - 20));
  return a1;
}


// ===== 64c484 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(
        int a1)
{
  return *(_DWORD *)(a1 + 152);
}


// ===== 64c48c `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded((int)a1 + *(_DWORD *)(*a1 - 24));
}


// ===== 64c49c glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
void glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData()
{
  ;
}


// ===== 64c4a0 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
void `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData()
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData();
}


// ===== 64c4b0 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(
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


// ===== 64c4cc `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(void) =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(
        _DWORD *a1,
        _DWORD *a2)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderVertexStreams(
    a1,
    (int)a2 + *(_DWORD *)(*a2 - 20));
  return a1;
}


// ===== 64c4ec glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(
        int a1)
{
  return *(_DWORD *)(a1 + 152);
}


// ===== 64c4f4 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(void) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderBufferSizeNeeded((int)a1 + *(_DWORD *)(*a1 - 24));
}


// ===== 64c504 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
void glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData()
{
  ;
}


// ===== 64c508 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
void `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData()
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderData();
}


// ===== 64c518 std::priv::__find_if<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::CompareForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::CompareForce<glitch::ps::SParticle>,std::random_access_iterator_tag const&) =====
_DWORD *__fastcall std::priv::__find_if<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::CompareForce<glitch::ps::SParticle>>(
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


// ===== 64c674 glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::convertVertexPosition(glitch::ps::SParticle const*,uint,uint,glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>> const&) =====
float __fastcall glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::convertVertexPosition(
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
                              * *(float *)glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat)
                      + (float)(v8
                              * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat
                                         + 16)))
              + (float)(*(float *)(v4 + v5 + 8)
                      * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 32)))
      + *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 48);
  v26 = (float)((float)((float)(v6
                              * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat
                                         + 4))
                      + (float)(v8
                              * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat
                                         + 20)))
              + (float)(*(float *)(v4 + v5 + 8)
                      * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 36)))
      + *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 52);
  v9 = (float)((float)((float)(v6
                             * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat
                                        + 8))
                     + (float)(v8
                             * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat
                                        + 24)))
             + (float)(*(float *)(v4 + v5 + 8)
                     * *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 40)))
     + *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 56);
  v10 = v9;
  *(float *)(v4 + v5) = v23;
  *(float *)(v7 + 8) = v9;
  v11 = v23;
  *(float *)(v7 + 4) = v26;
  v12 = *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 52);
  v24 = *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 56);
  v13 = v11 - *(float *)(glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat + 48);
  *(float *)(v4 + v5) = v13;
  v14 = v26 - v12;
  *(float *)(v7 + 4) = v26 - v12;
  *(float *)(v7 + 8) = v10 - v24;
  v25 = (float)((float)(v13 * *(float *)&glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SpinMat)
              + (float)((float)(v26 - v12) * *(float *)&dword_9F7D10))
      + (float)((float)(v10 - v24) * *(float *)&dword_9F7D20);
  *(float *)(v4 + v5) = v25;
  v27 = (float)((float)(v13 * *(float *)&dword_9F7D04) + (float)((float)(v26 - v12) * *(float *)&dword_9F7D14))
      + (float)((float)(v10 - v24) * *(float *)&dword_9F7D24);
  *(float *)(v7 + 4) = v27;
  v15 = (float)((float)(v13 * *(float *)&dword_9F7D08) + (float)(v14 * *(float *)&dword_9F7D18))
      + (float)((float)(v10 - v24) * *(float *)&dword_9F7D28);
  *(float *)(v7 + 8) = v15;
  v16 = v15;
  v17 = (float)((float)(v25 * *(float *)&glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::RotMat)
              + (float)(v27 * *(float *)&dword_9F7D98))
      + (float)(v15 * *(float *)&dword_9F7DA8);
  *(float *)(v4 + v5) = v17;
  v18 = v17;
  v19 = (float)((float)(v25 * *(float *)&dword_9F7D8C) + (float)(v27 * *(float *)&dword_9F7D9C))
      + (float)(v16 * *(float *)&dword_9F7DAC);
  *(float *)(v7 + 4) = v19;
  v20 = v19;
  v21 = (float)((float)(v25 * *(float *)&dword_9F7D90) + (float)(v27 * *(float *)&dword_9F7DA0))
      + (float)(v16 * *(float *)&dword_9F7DB0);
  *(float *)(v7 + 8) = v21;
  *(float *)(v4 + v5) = v18 + *a1;
  *(float *)(v7 + 4) = v20 + a1[1];
  result = v21 + a1[2];
  *(float *)(v7 + 8) = result;
  return result;
}


// ===== 64ca74 std::__push_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,int,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
int __fastcall std::__push_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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


// ===== 64caf0 std::__adjust_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,int,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
int __fastcall std::__adjust_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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
  return std::__push_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
           a1,
           a2,
           v4,
           a4);
}


// ===== 64cb78 std::__make_heap<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>,glitch::ps::PForce<glitch::ps::SParticle> *,int>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>,glitch::ps::PForce<glitch::ps::SParticle> * *,int *) =====
int __fastcall std::__make_heap<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>,glitch::ps::PForce<glitch::ps::SParticle> *,int>(
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
      result = std::__adjust_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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


// ===== 64cbdc std::sort_heap<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
int __fastcall std::sort_heap<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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
      result = std::__adjust_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
                 (int)v3,
                 0,
                 v2 >> 2,
                 v5);
    }
    while ( v2 > 7 );
  }
  return result;
}


// ===== 64cc30 std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> * *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
int __fastcall std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
        int a1,
        unsigned int a2,
        unsigned int a3)
{
  int *v6; // r4
  int v7; // r3

  std::__make_heap<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>,glitch::ps::PForce<glitch::ps::SParticle> *,int>(
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
          return std::sort_heap<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
                   a1,
                   a2);
      }
      *v6++ = *(_DWORD *)a1;
      std::__adjust_heap<glitch::ps::PForce<glitch::ps::SParticle> **,int,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
        a1,
        0,
        (int)(a2 - a1) >> 2,
        v7);
    }
    while ( a3 > (unsigned int)v6 );
  }
  return std::sort_heap<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
           a1,
           a2);
}


// ===== 64ccd4 std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> * *,int,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
int __fastcall std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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
  _DWORD *v15; // r3
  _DWORD *v16; // r8
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
        v15 = (_DWORD *)a2;
        v16 = (_DWORD *)v5;
        while ( 1 )
        {
          if ( v10 < v12 )
          {
            v17 = v16;
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
            v17 = v16;
          }
          v19 = v15 - 1;
          if ( v13 > v12 )
          {
            do
            {
              v14 = *(v15 - 2);
              --v15;
            }
            while ( *(_DWORD *)(v14 + 8) > v12 );
            v19 = v15 - 1;
          }
          if ( v19 <= v17 )
            break;
          *v17 = v14;
          v16 = v17 + 1;
          *v19 = v8;
          v14 = *(v19 - 1);
          v8 = v17[1];
          v15 = v19;
          v13 = *(_DWORD *)(v14 + 8);
          v10 = *(_DWORD *)(v8 + 8);
          v12 = *(_DWORD *)(v11 + 8);
        }
        result = std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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
    return std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
             v5,
             a2,
             a2);
  }
  return result;
}


// ===== 64ce44 glitch::collada::CParticleSystemSceneNode::getBoundingBox(void) =====
int *__fastcall glitch::collada::CParticleSystemSceneNode::getBoundingBox(
        glitch::collada::CParticleSystemSceneNode *this)
{
  float v2; // r9
  float v3; // r8
  float v4; // r0
  int v5; // r3
  float v7; // [sp+4h] [bp-8h]

  if ( (`guard variable for'glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)::bbox & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)::bbox) )
  {
    dword_9F6FE0 = -1082130432;
    dword_9F6FEC = 1065353216;
    glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)const::bbox = -1082130432;
    dword_9F6FDC = -1082130432;
    dword_9F6FE4 = 1065353216;
    dword_9F6FE8 = 1065353216;
    _cxa_guard_release(&`guard variable for'glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)::bbox);
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
  glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)const::bbox = *(_DWORD *)v5;
  dword_9F6FDC = *(_DWORD *)(v5 + 4);
  dword_9F6FE0 = *(_DWORD *)(v5 + 8);
  dword_9F6FE4 = *(_DWORD *)(v5 + 12);
  dword_9F6FE8 = *(_DWORD *)(v5 + 16);
  v7 = *(float *)(v5 + 20);
  *(float *)&dword_9F6FE4 = *(float *)&dword_9F6FE4 - v2;
  *(float *)&dword_9F6FE8 = *(float *)&dword_9F6FE8 - v3;
  *(float *)&dword_9F6FEC = v7 - v4;
  *(float *)&glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)const::bbox = *(float *)&glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)const::bbox
                                                                                        - v2;
  *(float *)&dword_9F6FDC = *(float *)&dword_9F6FDC - v3;
  *(float *)&dword_9F6FE0 = *(float *)&dword_9F6FE0 - v4;
  return &glitch::collada::CParticleSystemSceneNode::getBoundingBox(void)const::bbox;
}


// ===== 64d044 std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int v4; // r3
  unsigned int result; // r0

  v2 = -1030792151 * ((a1[1] - *a1) >> 2);
  if ( 42949672 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  LOWORD(v4) = 23592;
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  HIWORD(v4) = 655;
  if ( result > v4 || result < v2 )
    return 42949672;
  return result;
}


// ===== 64d0bc glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(char const*) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(int a1, char *a2)
{
  size_t v3; // r0
  char *M_data; // r2
  unsigned int v5; // r6
  int v6; // t1
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+4h] [bp-20h] BYREF

  if ( (`guard variable for'glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(char const*)::sStringHash & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(char const*)::sStringHash) )
  {
    _cxa_guard_release(&`guard variable for'glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(char const*)::sStringHash);
    _aeabi_atexit(
      (int)&glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(char const*)::sStringHash,
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


// ===== 64d1d0 glitch::ps::IParticleContext<glitch::ps::SParticle>::IParticleContext(void) =====
int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::IParticleContext(int a1)
{
  _DWORD *v1; // r5
  unsigned int v4[2]; // [sp+0h] [bp-14h] BYREF
  _BYTE v5[12]; // [sp+8h] [bp-Ch] BYREF

  *(_DWORD *)a1 = off_980DA0;
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
  v4[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(a1, "AnimationDatabase");
  v4[1] = a1 + 88;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v5,
    v1,
    v4);
  return a1;
}


// ===== 64d290 glitch::ps::PS_NEW(uint) =====
void *__fastcall glitch::ps::PS_NEW(glitch::ps *this, unsigned int a2)
{
  return GlitchAlloc((size_t)this, 0);
}


// ===== 64d298 glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext() =====
int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(int a1)
{
  int v1; // r1
  void *v3; // r0
  int v5; // r5

  v1 = *(_DWORD *)(a1 + 64);
  *(_DWORD *)a1 = off_980DA0;
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


// ===== 64d30c glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel() =====
_DWORD *__fastcall glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel(_DWORD *a1)
{
  *a1 = off_980E44;
  a1[3] = off_980EF0;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 3));
  return a1;
}


// ===== 64d348 `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel(_DWORD *a1)
{
  return glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d358 glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel() =====
_DWORD *__fastcall glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel(_DWORD *a1)
{
  *a1 = off_980F9C;
  a1[10] = off_981048;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 10));
  return a1;
}


// ===== 64d394 `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel(_DWORD *a1)
{
  return glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d3a4 glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel() =====
_DWORD *__fastcall glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel(_DWORD *a1)
{
  *a1 = off_981254;
  a1[7] = off_981300;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 7));
  return a1;
}


// ===== 64d3e0 `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel(_DWORD *a1)
{
  return glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d3f0 glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel() =====
_DWORD *__fastcall glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel(_DWORD *a1)
{
  int v2; // r5
  int v3; // r2

  *a1 = off_9813AC;
  v2 = (int)(a1 + 6);
  v3 = a1[1];
  a1[6] = off_981454;
  if ( v3 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 28))(v3);
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 64d450 `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel(_DWORD *a1)
{
  return glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d460 glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel() =====
_DWORD *__fastcall glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel(_DWORD *a1)
{
  glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64d47c `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel(_DWORD *a1)
{
  return glitch::ps::PEmitterModel<glitch::ps::SParticle>::~PEmitterModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d48c glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel() =====
_DWORD *__fastcall glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel(_DWORD *a1)
{
  *a1 = off_9814FC;
  a1[10] = off_9815AC;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 10));
  return a1;
}


// ===== 64d4c8 `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel(_DWORD *a1)
{
  return glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d4d8 glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel() =====
_DWORD *__fastcall glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel(_DWORD *a1)
{
  *a1 = off_981654;
  a1[5] = off_981700;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 5));
  return a1;
}


// ===== 64d514 `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel(_DWORD *a1)
{
  return glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d524 glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel() =====
_DWORD *__fastcall glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel(_DWORD *a1)
{
  *a1 = off_9817AC;
  a1[5] = off_981854;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 5));
  return a1;
}


// ===== 64d560 `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel(_DWORD *a1)
{
  return glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel((_DWORD *)((char *)a1
                                                                                         + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d570 glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem() =====
_DWORD *__fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem(_DWORD *a1)
{
  *a1 = off_9818FC;
  a1[4] = off_9819AC;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 4));
  return a1;
}


// ===== 64d5ac `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem(_DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem((_DWORD *)((char *)a1
                                                                                       + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d5bc glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext() =====
int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(int a1)
{
  int v1; // r1
  void *v3; // r0
  int v5; // r5

  v1 = *(_DWORD *)(a1 + 64);
  *(_DWORD *)a1 = off_980DA0;
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


// ===== 64d630 glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext() =====
void *__fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(void *a1)
{
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64d64c glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel() =====
_DWORD *__fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel(_DWORD *a1)
{
  int v2; // r7
  int *v3; // r4
  int *v4; // r5
  int v5; // r3
  void *v6; // r0

  *a1 = off_9810F4;
  v2 = (int)(a1 + 5);
  v3 = (int *)a1[1];
  v4 = (int *)a1[2];
  a1[5] = off_9811AC;
  while ( v4 != v3 )
  {
    v5 = *v3++;
    if ( v5 )
      (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
  }
  v6 = (void *)a1[1];
  if ( v6 )
    GlitchFree(v6);
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 64d6d4 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel(_DWORD *a1)
{
  return glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d6e4 glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel() =====
_DWORD *__fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel(_DWORD *a1)
{
  glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel(a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64d700 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel(_DWORD *a1)
{
  return glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64d710 glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel() =====
int *__fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel(int *a1, int *a2)
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


// ===== 64d778 glitch::ps::PS_FREE(void *) =====
// attributes: thunk
void glitch::ps::PS_FREE(void *p)
{
  GlitchFree(p);
}


// ===== 64d77c std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> * *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
char *__fastcall std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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


// ===== 64d834 std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
char *__fastcall std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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
    return std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
             a1,
             a2);
  v3 = a1 + 64;
  for ( result = std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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


// ===== 64d8d4 std::sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>) =====
char *__fastcall std::sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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
    std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::PForce<glitch::ps::SParticle> *,int,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
      (int)result,
      (unsigned int)a2,
      0,
      v5);
    return std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
             v2,
             a2);
  }
  return result;
}


// ===== 64d948 glitch::ps::PForcesModel<glitch::ps::SParticle>::applyPForces(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
char *__fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::applyPForces(char *result, int a2, int a3)
{
  char *v3; // r5
  int *v6; // r4
  int *i; // r6
  int v8; // t1

  v3 = result;
  if ( result[16] )
  {
    result = std::sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
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


// ===== 64d9c4 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::applyPForces(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
char *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::applyPForces(
        char *a1,
        int a2,
        int a3)
{
  return glitch::ps::PForcesModel<glitch::ps::SParticle>::applyPForces(&a1[*(_DWORD *)(*(_DWORD *)a1 - 116)], a2, a3);
}


// ===== 64d9d4 glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForcesModel(void) =====
char *__fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForcesModel(char *result)
{
  char *v1; // r4

  v1 = result;
  if ( result[16] )
  {
    result = std::sort<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::SortPriorityForce<glitch::ps::SParticle>>(
               *((char **)result + 1),
               *((char **)result + 2));
    v1[16] = 0;
  }
  return result;
}


// ===== 64da0c `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForcesModel(void) =====
char *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForcesModel(char *a1)
{
  return glitch::ps::PForcesModel<glitch::ps::SParticle>::initPForcesModel(&a1[*(_DWORD *)(*(_DWORD *)a1 - 108)]);
}


// ===== 64da1c glitch::collada::CParticleSystemSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::onRegisterSceneNode(
        glitch::collada::CParticleSystemSceneNode *this)
{
  int v2; // r2
  int v3; // r7
  void (__fastcall *v4)(int, glitch::collada::CParticleSystemSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r5
  glitch::video::CMaterial *v6[2]; // [sp+14h] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
  if ( -1030792151 * ((*(_DWORD *)(v2 + 40) - *(_DWORD *)(v2 + 36)) >> 2) )
  {
    v3 = *((_DWORD *)this + 68);
    v4 = *(void (__fastcall **)(int, glitch::collada::CParticleSystemSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v3 + 36);
    (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::CParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
      v6,
      this,
      0);
    v4(v3, this, v6, 0, 8, 0, 0x7FFFFFFF);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v6);
  }
  return 1;
}


// ===== 64dac0 glitch::collada::CParticleSystemSceneNode::onAnimate(uint) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::onAnimate(
        glitch::collada::CParticleSystemSceneNode *this,
        unsigned int a2)
{
  int v4; // r6
  int v5; // r2
  int v7; // [sp+0h] [bp-8h] BYREF
  _BYTE v8[4]; // [sp+4h] [bp-4h] BYREF

  glitch::scene::ISceneNode::onAnimate(this, a2);
  v4 = *((_DWORD *)this + 94);
  *(_DWORD *)(v4 + 12) = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 59) + 56))(*((_DWORD *)this + 59));
  v5 = *((_DWORD *)this + 68);
  *((_DWORD *)this + 81) = a2;
  v8[3] = -1;
  v8[0] = -1;
  v8[1] = -1;
  v8[2] = -1;
  if ( ((*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v5 + 20) + 92))(*(_DWORD *)(v5 + 20)) & 7) != 0 )
  {
    (*(void (__fastcall **)(int *, glitch::collada::CParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
      &v7,
      this,
      0);
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<glitch::video::SColor>(
      v7,
      (unsigned __int16)*((_DWORD *)this + 93),
      0,
      v8);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v7);
  }
  return (*(int (__fastcall **)(_DWORD, _DWORD, _BYTE *))(**((_DWORD **)this + 94) + 16))(
           *((_DWORD *)this + 94),
           (float)*((unsigned int *)this + 81) / 1000.0,
           v8);
}


// ===== 64dba0 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(void) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(
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


// ===== 64dbe8 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(
        int a1,
        void *a2,
        unsigned int a3)
{
  int v6; // r2

  if ( a2 )
  {
    glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(a1);
    v6 = *(_DWORD *)(a1 + 16);
    *(_BYTE *)(a1 + 140) = 0;
    *(_DWORD *)(a1 + 144) = a2;
    *(_DWORD *)(a1 + 148) = a3;
    glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v6 + 20), a3, a2, 0);
  }
}


// ===== 64dc2c `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(
        _DWORD *a1,
        void *a2,
        unsigned int a3)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(
    (int)a1 + *(_DWORD *)(*a1 - 28),
    a2,
    a3);
}


// ===== 64dc3c glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(void) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(
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


// ===== 64dc84 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(
        int a1,
        void *a2,
        unsigned int a3)
{
  int v6; // r2

  if ( a2 )
  {
    glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(a1);
    v6 = *(_DWORD *)(a1 + 16);
    *(_BYTE *)(a1 + 140) = 0;
    *(_DWORD *)(a1 + 144) = a2;
    *(_DWORD *)(a1 + 148) = a3;
    glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v6 + 20), a3, a2, 0);
  }
}


// ===== 64dcc8 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(void *,uint) =====
void __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(
        _DWORD *a1,
        void *a2,
        unsigned int a3)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::setRenderBuffer(
    (int)a1 + *(_DWORD *)(*a1 - 28),
    a2,
    a3);
}


// ===== 64dcd8 glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticleSystemPosition(glitch::ps::IParticleContext<glitch::ps::SParticle> const*,glitch::core::CMatrix4<float> const*) =====
float __fastcall glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticleSystemPosition(
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
  glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::Position = a2[1];
  dword_9F7BE4 = v2;
  dword_9F7BE8 = v3;
  v5 = a2[10] + 0x80000000;
  v6 = a2[6] + 0x80000000;
  dword_9F7BEC = a2[2] + 0x80000000;
  dword_9F7BF0 = v6;
  dword_9F7BF4 = v5;
  v7 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)a1 + 32))(a1);
  if ( *(_BYTE *)(a1 + 33) )
  {
    *(float *)&dword_9F7BF8 = (float)((float)(*(float *)(a1 + 8) * *v7) + (float)(*(float *)(a1 + 12) * v7[4]))
                            + (float)(*(float *)(a1 + 16) * v7[8]);
    *(float *)&dword_9F7BFC = (float)((float)(*(float *)(a1 + 8) * v7[1]) + (float)(*(float *)(a1 + 12) * v7[5]))
                            + (float)(*(float *)(a1 + 16) * v7[9]);
    *(float *)&dword_9F7C00 = (float)((float)(*(float *)(a1 + 8) * v7[2]) + (float)(*(float *)(a1 + 12) * v7[6]))
                            + (float)(*(float *)(a1 + 16) * v7[10]);
    *(float *)&dword_9F7C04 = (float)((float)(*(float *)(a1 + 20) * *v7) + (float)(*(float *)(a1 + 24) * v7[4]))
                            + (float)(*(float *)(a1 + 28) * v7[8]);
    *(float *)&dword_9F7C08 = (float)((float)(*(float *)(a1 + 20) * v7[1]) + (float)(*(float *)(a1 + 24) * v7[5]))
                            + (float)(*(float *)(a1 + 28) * v7[9]);
    *(float *)&dword_9F7C0C = (float)((float)(*(float *)(a1 + 20) * v7[2]) + (float)(*(float *)(a1 + 24) * v7[6]))
                            + (float)(*(float *)(a1 + 28) * v7[10]);
  }
  else
  {
    dword_9F7BF8 = *(_DWORD *)(a1 + 8);
    dword_9F7BFC = *(_DWORD *)(a1 + 12);
    dword_9F7C00 = *(_DWORD *)(a1 + 16);
    dword_9F7C04 = *(_DWORD *)(a1 + 20);
    dword_9F7C08 = *(_DWORD *)(a1 + 24);
    dword_9F7C0C = *(_DWORD *)(a1 + 28);
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
    v38[0] = (float)(COERCE_FLOAT(dword_9F7BF0 + 0x80000000) * *(float *)&dword_9F7BE8)
           + (float)(*(float *)&dword_9F7BF4 * *(float *)&dword_9F7BE4);
    v38[1] = (float)(COERCE_FLOAT(dword_9F7BF4 + 0x80000000)
                   * *(float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::Position)
           + (float)(*(float *)&dword_9F7BE8 * *(float *)&dword_9F7BEC);
    v38[2] = (float)(*(float *)&dword_9F7BE4 * COERCE_FLOAT(dword_9F7BEC + 0x80000000))
           + (float)(*(float *)&dword_9F7BF0
                   * *(float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::Position);
    v14 = glitch::core::vector3d<float>::normalize(v38);
    *(float *)&v15 = v14[1] * 0.5;
    *(float *)&v16 = v14[2] * 0.5;
    *(float *)&v17 = *v14 * 0.5;
    dword_9F7BFC = v15;
    dword_9F7BF8 = v17;
    dword_9F7C00 = v16;
    v18 = glitch::core::vector3d<float>::normalize((float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::Position);
    *(float *)&v19 = *v18 * 0.5;
    *(float *)&v20 = v18[1] * 0.5;
    *(float *)&v21 = v18[2] * 0.5;
    dword_9F7C04 = v19;
    dword_9F7C08 = v20;
    dword_9F7C0C = v21;
    v22 = (float)(*(float *)&v21 * COERCE_FLOAT(dword_9F7BFC + 0x80000000))
        + (float)(*(float *)&v20 * *(float *)&dword_9F7C00);
    v23 = (float)(*(float *)&v19 * COERCE_FLOAT(dword_9F7C00 + 0x80000000))
        + (float)(*(float *)&v21 * *(float *)&dword_9F7BF8);
    result = (float)(*(float *)&v20 * COERCE_FLOAT(dword_9F7BF8 + 0x80000000))
           + (float)(*(float *)&v19 * *(float *)&dword_9F7BFC);
    v24 = result;
    if ( *(_BYTE *)(a1 + 4) )
    {
      v30 = glitch::core::vector3d<float>::normalize(v40);
      *(float *)&v35 = v30[1] * 0.5;
      *(float *)&v31 = v30[2] * 0.5;
      *(float *)&dword_9F7BF8 = *v30 * 0.5;
      dword_9F7C00 = v31;
      dword_9F7BFC = v35;
      v37[0] = (float)(*(float *)&v31 * COERCE_FLOAT(LODWORD(v23) + 0x80000000)) + (float)(v24 * *(float *)&v35);
      v37[1] = (float)(*(float *)&dword_9F7BF8 * COERCE_FLOAT(LODWORD(v24) + 0x80000000))
             + (float)(v22 * *(float *)&v31);
      v37[2] = (float)(*(float *)&v35 * COERCE_FLOAT(LODWORD(v22) + 0x80000000))
             + (float)(v23 * *(float *)&dword_9F7BF8);
      v32 = glitch::core::vector3d<float>::normalize(v37);
      *(float *)&v33 = v32[1] * 0.5;
      *(float *)&v34 = v32[2] * 0.5;
      result = *v32 * 0.5;
      *(float *)&dword_9F7C04 = result;
      dword_9F7C0C = v34;
      dword_9F7C08 = v33;
    }
    if ( *(_BYTE *)(a1 + 5) )
    {
      v25 = glitch::core::vector3d<float>::normalize(v39);
      *(float *)&v26 = v25[1] * 0.5;
      *(float *)&v27 = v25[2] * 0.5;
      *(float *)&dword_9F7C04 = *v25 * 0.5;
      dword_9F7C08 = v26;
      dword_9F7C0C = v27;
      v36[0] = (float)(v24 * COERCE_FLOAT(v26 + 0x80000000)) + (float)(v23 * *(float *)&v27);
      v36[1] = (float)(v22 * COERCE_FLOAT(v27 + 0x80000000)) + (float)(v24 * *(float *)&dword_9F7C04);
      v36[2] = (float)(v23 * COERCE_FLOAT(dword_9F7C04 + 0x80000000)) + (float)(v22 * *(float *)&v26);
      v28 = glitch::core::vector3d<float>::normalize(v36);
      *(float *)&v29 = v28[1] * 0.5;
      result = *v28 * 0.5;
      *(float *)&dword_9F7C00 = v28[2] * 0.5;
      dword_9F7BF8 = LODWORD(result);
      dword_9F7BFC = v29;
    }
  }
  return result;
}


// ===== 64e3c8 glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpin(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
_DWORD *__fastcall glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpin(int a1, int a2, _DWORD *a3)
{
  glitch::ps::PSRandom *v5; // r9
  float v6; // r7
  float v7; // r8
  float v8; // r10
  _DWORD *result; // r0
  float v10; // r0
  float v11; // r0
  int v12; // r3
  _DWORD *v13; // r3
  float *v14; // r0
  unsigned int v15; // r1
  float v16; // r0
  double v17; // r0
  double v18; // r0
  double v19; // r0
  double v20; // r0
  unsigned int v21; // [sp+10h] [bp-74h]
  _DWORD v23[3]; // [sp+38h] [bp-4Ch] BYREF
  _DWORD v24[3]; // [sp+44h] [bp-40h] BYREF
  _DWORD v25[3]; // [sp+50h] [bp-34h] BYREF
  _DWORD v26[3]; // [sp+5Ch] [bp-28h] BYREF
  float v27[3]; // [sp+68h] [bp-1Ch] BYREF
  float v28[4]; // [sp+74h] [bp-10h] BYREF

  v5 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  v6 = *(float *)(a1 + 4) * *(float *)(a1 + 8);
  v7 = *(float *)(a1 + 12) * *(float *)(a1 + 16);
  v8 = *(float *)(a1 + 32) * 180.0;
  result = a3;
  if ( (_DWORD *)a2 != a3 )
  {
    do
    {
      if ( v6 == 0.0 )
      {
        v10 = 0.0;
      }
      else
      {
        LODWORD(v19) = glitch::ps::PSRandom::Rand(v5);
        *(float *)&v19 = v19;
        v10 = (float)(v6 * *(float *)&v19) + (float)(v6 * -0.5);
      }
      *(float *)(a2 + 76) = v10 + *(float *)(a1 + 4);
      if ( v7 == 0.0 )
      {
        v11 = 0.0;
      }
      else
      {
        LODWORD(v20) = glitch::ps::PSRandom::Rand(v5);
        *(float *)&v20 = v20;
        v11 = (float)(v7 * *(float *)&v20) + (float)(v7 * -0.5);
      }
      *(float *)(a2 + 80) = v11 + *(float *)(a1 + 12);
      v12 = *(_DWORD *)(a1 + 36);
      if ( v12 )
      {
        if ( v12 == 2 )
          v13 = (_DWORD *)(a2 + 12);
        else
          v13 = (_DWORD *)(a1 + 20);
        v26[0] = *v13;
        v26[1] = v13[1];
        v26[2] = v13[2];
        if ( v8 > 0.0 )
        {
          v21 = glitch::ps::PSRandom::Rand(v5);
          v16 = COERCE_DOUBLE(__PAIR64__(v15, v21));
          memset(v25, 0, sizeof(v25));
          glitch::core::vector3d<float>::rotateXYBy(
            v26,
            v25,
            COERCE_UNSIGNED_INT64((float)((float)(v8 * v16) + (float)(v8 * -0.5))),
            HIDWORD(COERCE_UNSIGNED_INT64((float)((float)(v8 * v16) + (float)(v8 * -0.5)))),
            v25);
          LODWORD(v17) = glitch::ps::PSRandom::Rand(v5);
          *(float *)&v17 = v17;
          memset(v24, 0, sizeof(v24));
          glitch::core::vector3d<float>::rotateYZBy(
            v26,
            v24,
            COERCE_UNSIGNED_INT64((float)((float)(v8 * -0.5) + (float)(v8 * *(float *)&v17))),
            HIDWORD(COERCE_UNSIGNED_INT64((float)((float)(v8 * -0.5) + (float)(v8 * *(float *)&v17)))),
            v24);
          LODWORD(v18) = glitch::ps::PSRandom::Rand(v5);
          *(float *)&v18 = v18;
          memset(v23, 0, sizeof(v23));
          glitch::core::vector3d<float>::rotateXZBy(
            v26,
            v23,
            COERCE_UNSIGNED_INT64((float)((float)(v8 * -0.5) + (float)(v8 * *(float *)&v18))),
            HIDWORD(COERCE_UNSIGNED_INT64((float)((float)(v8 * -0.5) + (float)(v8 * *(float *)&v18)))),
            v23);
        }
        v14 = (float *)v26;
      }
      else
      {
        glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)v28);
        v27[0] = v28[0] - *(float *)&glitch::ps::vHalf;
        v27[1] = v28[1] - *(float *)&dword_9F6FF4;
        v14 = v27;
        v27[2] = v28[2] - *(float *)&dword_9F6FF8;
      }
      result = (_DWORD *)glitch::core::vector3d<float>::normalize(v14);
      *(_DWORD *)(a2 + 84) = *result;
      *(_DWORD *)(a2 + 88) = result[1];
      *(_DWORD *)(a2 + 92) = result[2];
      a2 += 100;
    }
    while ( a3 != (_DWORD *)a2 );
  }
  return result;
}


// ===== 64e740 `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpin(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpin(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  return glitch::ps::PSpinModel<glitch::ps::SParticle>::initPSpin((int)a1 + *(_DWORD *)(*a1 - 124), a2, a3);
}


// ===== 64e750 glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPEmitterModel(void) =====
int __fastcall glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPEmitterModel(int result)
{
  int v1; // r3
  int v2; // r4
  int v3; // r1
  glitch::ps::PDBox *v4; // r5
  glitch::ps::PDCylinder *v5; // r5
  int v6; // r5
  _DWORD v7[3]; // [sp+4h] [bp-Ch] BYREF

  v1 = *(_DWORD *)(result + 4);
  v2 = result;
  if ( v1 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 28))(*(_DWORD *)(result + 4));
    *(_DWORD *)(v2 + 4) = 0;
  }
  v3 = *(_DWORD *)(v2 + 8);
  switch ( v3 )
  {
    case 1:
      memset(v7, 0, sizeof(v7));
      v6 = operator new(44, 0);
      result = glitch::ps::PDSphere::PDSphere(v6, v7, *(_DWORD *)(v2 + 12), 0);
      *(_DWORD *)(v2 + 4) = v6;
      break;
    case 2:
      v5 = (glitch::ps::PDCylinder *)operator new(88, 0);
      result = glitch::ps::PDCylinder::PDCylinder(v5, *(float *)(v2 + 20), *(float *)(v2 + 12));
      *(_DWORD *)(v2 + 4) = v5;
      break;
    case 0:
      v4 = (glitch::ps::PDBox *)operator new(92, 0);
      result = glitch::ps::PDBox::PDBox(v4, *(float *)(v2 + 16), *(float *)(v2 + 20), *(float *)(v2 + 12));
      *(_DWORD *)(v2 + 4) = v4;
      break;
  }
  return result;
}


// ===== 64e820 `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPEmitterModel(void) =====
int __fastcall `virtual thunk to'glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPEmitterModel(_DWORD *a1)
{
  return glitch::ps::PEmitterModel<glitch::ps::SParticle>::initPEmitterModel((int)a1 + *(_DWORD *)(*a1 - 76));
}


// ===== 64e830 glitch::ps::PColorModel<glitch::ps::SParticle>::applyPColor(glitch::ps::SParticle*,glitch::ps::SParticle*,glitch::video::SColor &) =====
float __fastcall glitch::ps::PColorModel<glitch::ps::SParticle>::applyPColor(float *a1, int a2, int a3, void *a4)
{
  float result; // r0
  int v7; // r4
  float v8; // r1
  float v9; // r0
  float v10; // r0
  float v11; // r6
  int v12; // r2
  float v13; // r11
  float v14; // r7
  float v15; // r0
  int v16; // r3
  int v17; // r3
  int v18; // r7
  float v19; // r3
  int v20; // r3
  int v21; // r4
  void *v22; // r0
  int v24; // [sp+20h] [bp-3Ch] BYREF
  int v25; // [sp+24h] [bp-38h]
  float x; // [sp+28h] [bp-34h]
  float v27; // [sp+2Ch] [bp-30h]
  float v28; // [sp+30h] [bp-2Ch]
  _BYTE v29[16]; // [sp+34h] [bp-28h] BYREF
  int v30; // [sp+44h] [bp-18h] BYREF
  int v31; // [sp+48h] [bp-14h]
  _BYTE *v32; // [sp+4Ch] [bp-10h]
  int v33; // [sp+50h] [bp-Ch] BYREF
  int v34; // [sp+54h] [bp-8h] BYREF

  result = a1[2];
  if ( result != 0.0 || *((_DWORD *)a1 + 1) )
  {
    if ( a2 != a3 )
    {
      v34 = 0;
      v29[13] = 0;
      v7 = a2;
      do
      {
        if ( *((_DWORD *)a1 + 3) == 1 )
        {
          v9 = (float)((float)(*(float *)(v7 + 60) * *(float *)(v7 + 56)) / *(float *)(v7 + 64)) * a1[8];
          v8 = *(float *)(v7 + 52);
        }
        else
        {
          v8 = *(float *)(v7 + 60);
          v9 = *(float *)(v7 + 52);
        }
        v10 = (float)(v9 + v8) * 1000.0;
        v11 = v10;
        if ( *((_DWORD *)a1 + 1) )
        {
          v12 = *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12) + 88);
          v30 = *((_DWORD *)a1 + 1);
          v32 = v29;
          v31 = v12;
          v24 = 0;
          v25 = 0;
          x = 0.0;
          v27 = 1.0;
          v28 = 1.0;
          glitch::collada::SAnimationAccessor::getValue(
            (glitch::collada::SAnimationAccessor *)&v30,
            (int)v10,
            &v24,
            &v34,
            0);
          v13 = x;
          v14 = cosf(x);
          v15 = sinf(v13);
          *(float *)(v7 + 28) = v27 * v14;
          v16 = v24;
          *(float *)(v7 + 32) = COERCE_FLOAT(LODWORD(v15) + 0x80000000) * v27;
          *(_DWORD *)(v7 + 36) = v16;
          *(float *)(v7 + 40) = v28 * v15;
          v17 = v25;
          *(float *)(v7 + 44) = v28 * v14;
          *(_DWORD *)(v7 + 48) = v17;
        }
        v18 = *((_DWORD *)a1 + 2);
        result = v11;
        if ( v18 )
        {
          v19 = *a1;
          v33 = (int)(v11 / 33.333332);
          v20 = *(_DWORD *)((char *)a1 + *(_DWORD *)(LODWORD(v19) - 12) + 88);
          v30 = v18;
          v32 = v29;
          v31 = v20;
          result = COERCE_FLOAT(
                     glitch::collada::SAnimationAccessor::getValue(
                       (glitch::collada::SAnimationAccessor *)&v30,
                       (int)v11,
                       (void *)(v7 + 24),
                       &v33,
                       1));
        }
        v7 += 100;
      }
      while ( a3 != v7 );
    }
  }
  else if ( a2 != a3 )
  {
    v21 = a2;
    do
    {
      v22 = (void *)(v21 + 24);
      v21 += 100;
      result = COERCE_FLOAT(memcpy(v22, a4, 4u));
    }
    while ( a3 != v21 );
  }
  return result;
}


// ===== 64ea74 `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::applyPColor(glitch::ps::SParticle*,glitch::ps::SParticle*,glitch::video::SColor &) =====
float __fastcall `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::applyPColor(
        _DWORD *a1,
        int a2,
        int a3,
        void *a4)
{
  return glitch::ps::PColorModel<glitch::ps::SParticle>::applyPColor(
           (float *)((char *)a1 + *(_DWORD *)(*a1 - 72)),
           a2,
           a3,
           a4);
}


// ===== 64ea84 glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::SParticle> const*,glitch::ps::SParticle const*) =====
float __fastcall glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::getPerParticlePosition(int a1, int a2)
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
  glitch::core::quaternion::getMatrix(v21, (int)&glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::RotMat);
  v11 = *(float *)(a2 + 80);
  v20[3] = 1.0;
  memset(v20, 0, 12);
  LODWORD(result) = v11 > 0.0;
  if ( v11 > 0.0 )
  {
    if ( *(float *)(a2 + 84) > 0.0 )
    {
      v15 = *(_DWORD *)(a2 + 92) + 0x80000000;
      v16 = *(_DWORD *)(a2 + 88) + 0x80000000;
      v22 = *(_DWORD *)(a2 + 84) + 0x80000000;
      v23 = v16;
      v24 = v15;
    }
    else
    {
      v13 = *(_DWORD *)(a2 + 92);
      v14 = *(_DWORD *)(a2 + 88);
      v22 = *(_DWORD *)(a2 + 84);
      v24 = v13;
      v23 = v14;
    }
    glitch::core::quaternion::fromAngleAxis(v20, v11, (float *)&v22);
    return glitch::core::quaternion::getMatrix(
             v20,
             (int)&glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SpinMat);
  }
  return result;
}


// ===== 64ecac glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::collada::CParticleSystemSceneNode *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 94);
  *(_DWORD *)this = off_982BFC;
  *((_DWORD *)this + 100) = off_982D18;
  if ( v1 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 8))(v1);
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(this);
}


// ===== 64ed18 glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::collada::CParticleSystemSceneNode *this)
{
  glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 64ed34 glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::collada::CParticleSystemSceneNode *this,
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


// ===== 64ed94 glitch::collada::CParticleSystemSceneNode::CParticleSystemSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SEmitter &,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
_DWORD *__fastcall glitch::collada::CParticleSystemSceneNode::CParticleSystemSceneNode(_DWORD *a1, int a2, _DWORD *a3)
{
  a1[101] = 1;
  a1[100] = off_95B720;
  *a1 = off_982FDC;
  *(int *)((char *)&elf_hash_bucket[45] + (_DWORD)a1) = (int)off_982FFC;
  glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(a1);
  a1[99] = a3;
  *a1 = off_982BFC;
  a1[100] = off_982D18;
  a1[76] = *a3;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 64ee44 glitch::collada::CParticleSystemSceneNode::CParticleSystemSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SEmitter &,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int *__fastcall glitch::collada::CParticleSystemSceneNode::CParticleSystemSceneNode(int *a1, int *a2, int a3, int *a4)
{
  int v7; // r3

  glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(a1);
  v7 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v7 - 28)) = a2[7];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[8];
  a1[99] = (int)a4;
  a1[76] = *a4;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 64eeb4 `global constructor keyed to'.._source_glitch_collada_CColladaParticleSystemSceneNode.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaParticleSystemSceneNode.cpp()
{
  dword_9F6FF8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F6FF4 = 1056964608;
  glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer = 0;
  _aeabi_atexit(
    (int)&glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer,
    (int)boost::intrusive_ptr<glitch::scene::CMeshBuffer>::~intrusive_ptr,
    (int)&_dso_handle);
  glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer = 0;
  return _aeabi_atexit(
           (int)&glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer,
           (int)boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr,
           (int)&_dso_handle);
}


// ===== 64ef44 glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem() =====
_DWORD *__fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem(_DWORD *a1)
{
  *a1 = off_9818FC;
  a1[4] = off_9819AC;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 4));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64ef88 `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem(_DWORD *a1)
{
  return glitch::ps::IParticleSystem<glitch::ps::SParticle>::~IParticleSystem((_DWORD *)((char *)a1
                                                                                       + *(_DWORD *)(*a1 - 12)));
}


// ===== 64ef98 glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel() =====
_DWORD *__fastcall glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel(_DWORD *a1)
{
  *a1 = off_9817AC;
  a1[5] = off_981854;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 5));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64efdc `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel(_DWORD *a1)
{
  return glitch::ps::PGenerationModel<glitch::ps::SParticle>::~PGenerationModel((_DWORD *)((char *)a1
                                                                                         + *(_DWORD *)(*a1 - 12)));
}


// ===== 64efec glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel() =====
_DWORD *__fastcall glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel(_DWORD *a1)
{
  *a1 = off_981654;
  a1[5] = off_981700;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 5));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64f030 `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel(_DWORD *a1)
{
  return glitch::ps::PSizeModel<glitch::ps::SParticle>::~PSizeModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64f040 glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel() =====
_DWORD *__fastcall glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel(_DWORD *a1)
{
  *a1 = off_9814FC;
  a1[10] = off_9815AC;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 10));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64f084 `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel(_DWORD *a1)
{
  return glitch::ps::PColorModel<glitch::ps::SParticle>::~PColorModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64f094 glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel() =====
_DWORD *__fastcall glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel(_DWORD *a1)
{
  *a1 = off_981254;
  a1[7] = off_981300;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 7));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64f0d8 `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel(_DWORD *a1)
{
  return glitch::ps::PMotionModel<glitch::ps::SParticle>::~PMotionModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64f0e8 glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel() =====
_DWORD *__fastcall glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel(_DWORD *a1)
{
  *a1 = off_980F9C;
  a1[10] = off_981048;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext((int)(a1 + 10));
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64f12c `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel(_DWORD *a1)
{
  return glitch::ps::PSpinModel<glitch::ps::SParticle>::~PSpinModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64f13c glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel() =====
_DWORD *__fastcall glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel(_DWORD *a1)
{
  *a1 = off_980E44;
  a1[3] = off_980EF0;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(a1 + 3);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64f180 `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel() =====
_DWORD *__fastcall `virtual thunk to'glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel(_DWORD *a1)
{
  return glitch::ps::PLifeModel<glitch::ps::SParticle>::~PLifeModel((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 64f190 glitch::ps::PForcesModel<glitch::ps::SParticle>::addPForce(glitch::ps::PForce<glitch::ps::SParticle> *) =====
int __fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::addPForce(int a1, int a2)
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


// ===== 64f268 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::addPForce(glitch::ps::PForce<glitch::ps::SParticle> *) =====
int __fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::addPForce(_DWORD *a1, int a2)
{
  return glitch::ps::PForcesModel<glitch::ps::SParticle>::addPForce((int)a1 + *(_DWORD *)(*a1 - 96), a2);
}


// ===== 64f278 glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(glitch::ps::PForce<glitch::ps::SParticle> *) =====
char *__fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(int a1, int a2)
{
  char *v3; // r5
  char *result; // r0
  char *v5; // r1

  v3 = (char *)std::priv::__find_if<glitch::ps::PForce<glitch::ps::SParticle> **,glitch::ps::CompareForce<glitch::ps::SParticle>>(
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


// ===== 64f308 `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(glitch::ps::PForce<glitch::ps::SParticle> *) =====
char *__fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(_DWORD *a1, int a2)
{
  return glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce((int)a1 + *(_DWORD *)(*a1 - 100), a2);
}


// ===== 64f318 glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(int) =====
int __fastcall glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(int result, int a2)
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


// ===== 64f38c `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(int) =====
int __fastcall `virtual thunk to'glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce(_DWORD *a1, int a2)
{
  return glitch::ps::PForcesModel<glitch::ps::SParticle>::removePForce((int)a1 + *(_DWORD *)(*a1 - 104), a2);
}


// ===== 64f39c glitch::collada::CParticleSystemSceneNode::deleteSharedBuffer(void) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CParticleSystemSceneNode::deleteSharedBuffer(
        glitch::collada::CParticleSystemSceneNode *this)
{
  glitch::IReferenceCounted *v1; // r0
  glitch::IReferenceCounted *result; // r0

  v1 = (glitch::IReferenceCounted *)glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer;
  glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer = 0;
  if ( v1 )
    glitch::IReferenceCounted::drop(v1);
  result = (glitch::IReferenceCounted *)glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer;
  glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer = 0;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  glitch::collada::CParticleSystemSceneNode::BillboardMaxParticles = 0;
  return result;
}


// ===== 64f40c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 220);
}


// ===== 64f414 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 208);
}


// ===== 64f41c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 64f424 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 148);
}


// ===== 64f42c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 120);
}


// ===== 64f434 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 96);
}


// ===== 64f43c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 56);
}


// ===== 64f444 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 36);
}


// ===== 64f44c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 64f454 glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  int v2; // r6
  int v3; // r8
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::video::CVertexStreams *v6; // r10
  int v8; // r3

  *(_DWORD *)a1 = off_97FC8C;
  v2 = a1 + 384;
  *(_DWORD *)(a1 + 36) = off_97FCCC;
  *(_DWORD *)(a1 + 56) = off_97FCEC;
  *(_DWORD *)(a1 + 96) = off_97FD10;
  *(_DWORD *)(a1 + 384) = off_97FE74;
  *(_DWORD *)(a1 + 16) = off_97FCB0;
  *(_DWORD *)(a1 + 120) = off_97FD2C;
  *(_DWORD *)(a1 + 148) = off_97FD4C;
  *(_DWORD *)(a1 + 168) = off_97FD78;
  v3 = a1 + 220;
  *(_DWORD *)(a1 + 208) = off_97FD98;
  *(_DWORD *)(a1 + 220) = off_980ADC;
  *(int *)((char *)&dword_A4 + a1 + 220) = (int)off_980B98;
  LC_API_FREE_0(*(void **)(a1 + 376));
  *(_DWORD *)(v3 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(v3);
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
  *(_DWORD *)(a1 + 208) = off_98098C;
  *(int *)((char *)&dword_B0 + a1 + 208) = (int)off_980A38;
  *(_DWORD *)(a1 + 168) = off_98083C;
  *(int *)((char *)&elf_hash_nchain + a1 + 168) = (int)off_9808E8;
  glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel((int *)(a1 + 148), (int *)off_97FC34);
  *(_DWORD *)(a1 + 120) = off_980594;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_980640;
  *(_DWORD *)(a1 + 96) = off_98044C;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_9804F4;
  v8 = *(_DWORD *)(a1 + 100);
  if ( v8 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 28))(*(_DWORD *)(a1 + 100));
  *(_DWORD *)(a1 + 56) = off_9802FC;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_9803AC;
  *(_DWORD *)(a1 + 36) = off_9801AC;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_980258;
  *(_DWORD *)(a1 + 16) = off_980064;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_98010C;
  *(_DWORD *)a1 = off_97FF14;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_97FFC4;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 64f674 `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 64f684 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 220);
}


// ===== 64f68c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 208);
}


// ===== 64f694 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 64f69c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 148);
}


// ===== 64f6a4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 120);
}


// ===== 64f6ac `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 96);
}


// ===== 64f6b4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 56);
}


// ===== 64f6bc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 36);
}


// ===== 64f6c4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 64f6cc glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        void *a1)
{
  glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 64f6e8 `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 64f6f8 glitch::collada::CParticleSystemSceneNode::attach(glitch::scene::ISceneNode *) =====
void __fastcall glitch::collada::CParticleSystemSceneNode::attach(
        glitch::collada::CParticleSystemSceneNode *this,
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
            (*(void (__fastcall **)(_DWORD *, glitch::collada::CParticleSystemSceneNode *))(*v11 + 244))(v11, this);
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


// ===== 64f7e8 std::priv::__ucopy_ptrs<glitch::ps::SParticle *,glitch::ps::SParticle *>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,std::__false_type const&) =====
_DWORD *__fastcall std::priv::__ucopy_ptrs<glitch::ps::SParticle *,glitch::ps::SParticle *>(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r3
  int v4; // r1
  int v5; // r4
  _DWORD *v6; // r12
  int v7; // r5

  v3 = a1;
  v4 = -1030792151 * ((a2 - (int)a1) >> 2);
  if ( v4 > 0 )
  {
    v5 = v4;
    v6 = a3;
    do
    {
      --v5;
      *v6 = *v3;
      v6[1] = v3[1];
      v6[2] = v3[2];
      v6[3] = v3[3];
      v6[4] = v3[4];
      v6[5] = v3[5];
      v6[6] = v3[6];
      v6[7] = v3[7];
      v6[8] = v3[8];
      v6[9] = v3[9];
      v6[10] = v3[10];
      v6[11] = v3[11];
      v6[12] = v3[12];
      v6[13] = v3[13];
      v6[14] = v3[14];
      v6[15] = v3[15];
      v6[16] = v3[16];
      v6[17] = v3[17];
      v6[18] = v3[18];
      v6[19] = v3[19];
      v6[20] = v3[20];
      v6[21] = v3[21];
      v6[22] = v3[22];
      v6[23] = v3[23];
      v7 = v3[24];
      v3 += 25;
      v6[24] = v7;
      v6 += 25;
    }
    while ( v5 );
    a3 += 25 * v4;
  }
  return a3;
}


// ===== 64f900 std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::ps::SParticle*,glitch::ps::SParticle*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v4; // r0
  _DWORD *v5; // r12
  int v6; // r5
  _DWORD *v7; // r4
  int v8; // r6

  v4 = (*(_DWORD *)(a1 + 4) - (int)a3) >> 2;
  if ( -1030792151 * v4 > 0 )
  {
    v6 = -1030792151 * v4;
    v7 = a2;
    do
    {
      --v6;
      *v7 = *a3;
      v7[1] = a3[1];
      v7[2] = a3[2];
      v7[3] = a3[3];
      v7[4] = a3[4];
      v7[5] = a3[5];
      v7[6] = a3[6];
      v7[7] = a3[7];
      v7[8] = a3[8];
      v7[9] = a3[9];
      v7[10] = a3[10];
      v7[11] = a3[11];
      v7[12] = a3[12];
      v7[13] = a3[13];
      v7[14] = a3[14];
      v7[15] = a3[15];
      v7[16] = a3[16];
      v7[17] = a3[17];
      v7[18] = a3[18];
      v7[19] = a3[19];
      v7[20] = a3[20];
      v7[21] = a3[21];
      v7[22] = a3[22];
      v7[23] = a3[23];
      v8 = a3[24];
      a3 += 25;
      v7[24] = v8;
      v7 += 25;
    }
    while ( v6 );
    v5 = &a2[v4];
  }
  else
  {
    v5 = a2;
  }
  *(_DWORD *)(a1 + 4) = v5;
  return a2;
}


// ===== 64fa24 std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::ps::SParticle*>(uint &,glitch::ps::SParticle*,glitch::ps::SParticle*) =====
_DWORD *__fastcall std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::ps::SParticle*>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *result; // r0
  int v7; // r5
  _DWORD *i; // r3
  int v9; // r2

  result = GlitchAlloc(100 * *a2, 0);
  v7 = -1030792151 * ((a4 - (int)a3) >> 2);
  if ( v7 > 0 )
  {
    for ( i = result; ; i += 25 )
    {
      --v7;
      *i = *a3;
      i[1] = a3[1];
      i[2] = a3[2];
      i[3] = a3[3];
      i[4] = a3[4];
      i[5] = a3[5];
      i[6] = a3[6];
      i[7] = a3[7];
      i[8] = a3[8];
      i[9] = a3[9];
      i[10] = a3[10];
      i[11] = a3[11];
      i[12] = a3[12];
      i[13] = a3[13];
      i[14] = a3[14];
      i[15] = a3[15];
      i[16] = a3[16];
      i[17] = a3[17];
      i[18] = a3[18];
      i[19] = a3[19];
      i[20] = a3[20];
      i[21] = a3[21];
      i[22] = a3[22];
      i[23] = a3[23];
      v9 = a3[24];
      a3 += 25;
      i[24] = v9;
      if ( !v7 )
        break;
    }
  }
  return result;
}


// ===== 64fb44 std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
        _DWORD *a1,
        unsigned int a2)
{
  char *v3; // r2
  int v4; // r0
  int v5; // r3
  int v6; // r5
  char *v7; // r6
  char *v8; // r0
  char *v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v3 = (char *)*a1;
  v4 = (a1[2] - *a1) >> 2;
  v10 = a2;
  if ( a2 > -1030792151 * v4 )
  {
    if ( a2 > 0x28F5C28 )
    {
      __ZSt24__stl_throw_length_errorPKc_veneer("vector");
      v3 = (char *)*a1;
    }
    v5 = a1[1];
    v6 = -1030792151 * ((v5 - (int)v3) >> 2);
    if ( v3 )
    {
      v7 = (char *)std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::ps::SParticle*>(
                     (int)a1,
                     &v10,
                     v3,
                     v5);
      v8 = (char *)a1[1];
      if ( v8 != (char *)*a1 )
        v8 += -100 * ((42949673 * ((unsigned int)&v8[-*a1 - 100] >> 2)) & 0x3FFFFFFF) - 100;
      GlitchFree(v8);
    }
    else
    {
      v7 = (char *)GlitchAlloc(100 * v10, 0);
    }
    v9 = &v7[100 * v10];
    a1[1] = &v7[100 * v6];
    a1[2] = v9;
    *a1 = v7;
  }
}


// ===== 64fc50 glitch::ps::PGenerationModel<glitch::ps::SParticle>::initGenerationModel(void) =====
int __fastcall glitch::ps::PGenerationModel<glitch::ps::SParticle>::initGenerationModel(int *a1)
{
  int v1; // r3
  char *v3; // r0

  v1 = *a1;
  a1[4] = 0;
  v3 = (char *)a1 + *(_DWORD *)(v1 - 12);
  if ( *((_DWORD *)v3 + 9) != *((_DWORD *)v3 + 10) )
  {
    std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(v3 + 36);
    v3 = (char *)a1 + *(_DWORD *)(*a1 - 12);
  }
  return std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
           v3 + 36,
           a1[2]);
}


// ===== 64fcac `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::initGenerationModel(void) =====
int __fastcall `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::initGenerationModel(_DWORD *a1)
{
  return glitch::ps::PGenerationModel<glitch::ps::SParticle>::initGenerationModel((_DWORD *)((char *)a1
                                                                                           + *(_DWORD *)(*a1 - 44)));
}


// ===== 64fcbc glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::collada::SAnimation *>(char const*,glitch::collada::SAnimation *) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::collada::SAnimation *>(
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

  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(a1, a2);
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


// ===== 64fd60 glitch::collada::CParticleSystemSceneNode::init(void) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::init(glitch::collada::CParticleSystemSceneNode *this)
{
  const char **v1; // r10
  int v2; // r4
  int v3; // r7
  const char *v5; // r8
  unsigned int ParameterID; // r0
  unsigned int v7; // r5
  int v8; // r3
  unsigned int v9; // r2
  int v10; // r3
  int v11; // r5
  unsigned int v12; // r0
  _DWORD *v13; // r12
  _DWORD *v14; // r1
  _DWORD *v15; // r2
  unsigned int v16; // r3
  bool v17; // cc
  _DWORD *v18; // r3
  _DWORD *v19; // r3
  glitch::video::CMaterial **v20; // r2
  glitch::video::CMaterial *v21; // r3
  glitch::IReferenceCounted *v23; // r2
  int v24; // r2
  int v25; // r0
  int AnimationClip; // r0
  int v27; // r9
  unsigned int v28; // r0
  _DWORD *v29; // r12
  _DWORD *v30; // r1
  _DWORD *v31; // r2
  unsigned int v32; // r3
  bool v33; // cc
  _DWORD *v34; // r3
  _DWORD *v35; // r3
  _DWORD *v36; // r3
  const char *v37; // r3
  int Animation; // r2
  int v39; // r0
  _DWORD *v40; // r3
  char v41; // r1
  glitch::collada::CAnimationBlock *v42; // r1
  glitch::collada::CColladaDatabase *v43; // [sp+0h] [bp-64h]
  int v44; // [sp+1Ch] [bp-48h]
  glitch::IReferenceCounted *v45[2]; // [sp+20h] [bp-44h] BYREF
  int v46; // [sp+28h] [bp-3Ch]
  int v47; // [sp+2Ch] [bp-38h]
  unsigned int v48[2]; // [sp+30h] [bp-34h] BYREF
  unsigned int v49[2]; // [sp+38h] [bp-2Ch] BYREF
  _DWORD *v50; // [sp+40h] [bp-24h] BYREF
  _DWORD *v51; // [sp+44h] [bp-20h] BYREF
  glitch::video::CMaterial *v52; // [sp+48h] [bp-1Ch] BYREF
  _DWORD *v53; // [sp+4Ch] [bp-18h] BYREF
  _DWORD *v54; // [sp+50h] [bp-14h] BYREF
  glitch::video::CMaterial *v55; // [sp+54h] [bp-10h] BYREF
  glitch::video::CMaterial *v56; // [sp+58h] [bp-Ch] BYREF
  glitch::collada *v57; // [sp+5Ch] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 86);
  v3 = *((_DWORD *)this + 87);
  if ( v2 != v3 )
  {
    v43 = (glitch::collada::CParticleSystemSceneNode *)((char *)this + 308);
    do
    {
      v5 = *(const char **)(*(_DWORD *)v2 + 28);
      if ( v5 )
        v5 += 4;
      ParameterID = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)(*(_DWORD *)v2 + 4), 6, 0);
      v7 = ParameterID;
      v8 = *(_DWORD *)(*(_DWORD *)v2 + 4);
      v9 = *(unsigned __int16 *)(v8 + 14);
      if ( v9 > ParameterID )
        v1 = *(const char ***)(v8 + 32);
      v10 = *((_DWORD *)this + 77);
      if ( v9 > ParameterID )
        v1 += 4 * ParameterID;
      else
        v1 = nullptr;
      if ( !*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v10 + 36) + 32) + 4) )
      {
        v23 = *((glitch::IReferenceCounted **)this + 78);
        v45[0] = *((glitch::IReferenceCounted **)this + 77);
        v45[1] = v23;
        if ( v10 )
        {
          v24 = *(_DWORD *)(v10 + 4);
          if ( v24 )
          {
            *(_DWORD *)(v10 + 4) = v24 + 1;
            v10 = *((_DWORD *)this + 77);
          }
        }
        v46 = 0;
        v25 = *(_DWORD *)(*(_DWORD *)(v10 + 36) + 32);
        if ( *(_DWORD *)(v25 + 52) )
          AnimationClip = glitch::collada::CColladaDatabase::getAnimationClip(v43, 0);
        else
          AnimationClip = v25 + 24;
        v46 = AnimationClip;
        if ( (*(_DWORD *)(AnimationClip + 4) & ~(*(int *)(AnimationClip + 4) >> 31)) > *(_DWORD *)(AnimationClip + 8) )
          v47 = *(_DWORD *)(AnimationClip + 8);
        else
          v47 = *(_DWORD *)(AnimationClip + 4) & ~(*(int *)(AnimationClip + 4) >> 31);
        v57 = nullptr;
        glitch::collada::CAnimationStreamingManager::getAnimationBlock(
          (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
          (glitch::collada::SAnimationBlockSearchKey *)v45,
          &v57);
        if ( v57 )
        {
          v44 = *(_DWORD *)(*(int *)((char *)&dword_14 + (_DWORD)v57) + 12);
          v27 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
          v28 = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v27, "AnimationDatabase");
          v29 = *(_DWORD **)(v27 + 52);
          v30 = (_DWORD *)(v27 + 48);
          if ( v29 )
          {
            v31 = (_DWORD *)(v27 + 48);
            while ( 1 )
            {
              v32 = v29[4];
              v33 = v28 > v32;
              if ( v28 <= v32 )
                v34 = (_DWORD *)v29[2];
              else
                v34 = (_DWORD *)v29[3];
              if ( v33 )
                v29 = v31;
              v31 = v29;
              if ( !v34 )
                break;
              v29 = v34;
            }
          }
          else
          {
            v29 = (_DWORD *)(v27 + 48);
          }
          if ( v30 == v29 || (v35 = v29, v28 < v29[4]) )
          {
            v49[0] = v28;
            v49[1] = 0;
            v54 = v29;
            std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
              &v53,
              v30,
              &v54,
              v49);
            v35 = v53;
          }
          v36 = (_DWORD *)v35[5];
          if ( v36 )
            *v36 = v44;
        }
        if ( v7 == 0xFFFF )
          goto LABEL_64;
        v37 = *v1;
        if ( *v1 )
          v37 += 4;
        Animation = glitch::collada::CColladaDatabase::getAnimation(v43, v5, 86, v37);
        if ( !Animation )
        {
LABEL_64:
          Animation = glitch::collada::CColladaDatabase::getAnimation(v43, v5, 0x19u, 255);
          if ( !Animation )
            Animation = glitch::collada::CColladaDatabase::getAnimation(v43, v5, 86, "__irrlicht_Diffuse_color");
        }
        glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::collada::SAnimation *>(
          *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12),
          "DiffuseColorTrack",
          Animation);
        v39 = glitch::collada::CColladaDatabase::getAnimation(v43, v5, 0x100u, 255);
        v40 = *((_DWORD **)this + 94);
        v41 = v39;
        if ( v39 )
          v41 = 1;
        *((_BYTE *)this + 368) = v41;
        glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::collada::SAnimation *>(
          (int)v40 + *(_DWORD *)(*v40 - 12),
          "TextureTransformTrack",
          v39);
        if ( v57 )
          glitch::collada::intrusive_ptr_release(v57, v42);
        glitch::collada::CColladaDatabase::~CColladaDatabase(v45);
      }
      v2 += 4;
    }
    while ( v2 != v3 );
  }
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::CParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
    &v56,
    this,
    0);
  *((_DWORD *)this + 93) = glitch::video::CMaterialRenderer::getParameterID(*((_DWORD *)v56 + 1), 6, 0);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v56);
  v11 = *((_DWORD *)this + 94) + *(_DWORD *)(**((_DWORD **)this + 94) - 12);
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::CParticleSystemSceneNode *, _DWORD))(*(_DWORD *)this + 132))(
    &v55,
    this,
    0);
  v12 = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v11, "RenderMaterial");
  v13 = *(_DWORD **)(v11 + 52);
  v14 = (_DWORD *)(v11 + 48);
  if ( v13 )
  {
    v15 = (_DWORD *)(v11 + 48);
    while ( 1 )
    {
      v16 = v13[4];
      v17 = v12 > v16;
      if ( v12 <= v16 )
        v18 = (_DWORD *)v13[2];
      else
        v18 = (_DWORD *)v13[3];
      if ( v17 )
        v13 = v15;
      v15 = v13;
      if ( !v18 )
        break;
      v13 = v18;
    }
  }
  else
  {
    v13 = (_DWORD *)(v11 + 48);
  }
  if ( v14 == v13 || (v19 = v13, v12 < v13[4]) )
  {
    v48[0] = v12;
    v48[1] = 0;
    v51 = v13;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v50,
      v14,
      &v51,
      v48);
    v19 = v50;
  }
  v20 = (glitch::video::CMaterial **)v19[5];
  if ( v20 )
  {
    v21 = v55;
    v52 = v55;
    if ( v55 )
    {
      ++*(_DWORD *)v55;
      v21 = v52;
    }
    v52 = *v20;
    *v20 = v21;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v52);
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v55);
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 94) + 12))(*((_DWORD *)this + 94));
}


// ===== 6501d4 glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<int>(char const*,int) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<int>(
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

  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(a1, a2);
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


// ===== 650278 glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::res::SFixedVec<float,3u>>(char const*,glitch::res::SFixedVec<float,3u>) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::res::SFixedVec<float,3u>>(
        int a1,
        char *a2,
        int a3,
        int a4,
        int a5)
{
  _DWORD *v6; // r6
  _DWORD *v7; // r7
  unsigned int result; // r0
  _DWORD *v9; // r12
  _DWORD *v10; // r1
  _DWORD *v11; // r2
  unsigned int v12; // r3
  bool v13; // cc
  _DWORD *v14; // r3
  _DWORD *v15; // r3
  _DWORD *v16; // r3
  unsigned int v17[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v18; // [sp+8h] [bp-8h] BYREF
  _DWORD *var4[9]; // [sp+Ch] [bp-4h] BYREF

  v6 = var4[7];
  v7 = var4[8];
  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(a1, a2);
  v9 = *(_DWORD **)(a1 + 52);
  v10 = (_DWORD *)(a1 + 48);
  if ( v9 )
  {
    v11 = (_DWORD *)(a1 + 48);
    while ( 1 )
    {
      v12 = v9[4];
      v13 = result > v12;
      if ( result <= v12 )
        v14 = (_DWORD *)v9[2];
      else
        v14 = (_DWORD *)v9[3];
      if ( v13 )
        v9 = v11;
      v11 = v9;
      if ( !v14 )
        break;
      v9 = v14;
    }
  }
  else
  {
    v9 = (_DWORD *)(a1 + 48);
  }
  if ( v10 == v9 || (v15 = v9, result < v9[4]) )
  {
    v17[0] = result;
    v17[1] = 0;
    var4[0] = v9;
    result = (unsigned int)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                             &v18,
                             v10,
                             var4,
                             v17);
    v15 = v18;
  }
  v16 = (_DWORD *)v15[5];
  if ( v16 )
  {
    *v16 = v6;
    v16[2] = a5;
    v16[1] = v7;
  }
  return result;
}


// ===== 650340 glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::core::vector3d<float>>(char const*,glitch::core::vector3d<float>) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::core::vector3d<float>>(
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

  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(a1, a2);
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


// ===== 650400 glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(char const*,float) =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
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

  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(a1, a2);
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


// ===== 6504a4 glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<boost::intrusive_ptr<glitch::video::IBuffer>>(char const*,boost::intrusive_ptr<glitch::video::IBuffer>) [clone] =====
glitch::IReferenceCounted *__fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<boost::intrusive_ptr<glitch::video::IBuffer>>(
        int a1,
        glitch::IReferenceCounted **a2)
{
  glitch::IReferenceCounted *result; // r0
  _DWORD *v5; // r3
  _DWORD *v6; // r1
  _DWORD *v7; // r12
  unsigned int v8; // r2
  _DWORD *v9; // r3
  glitch::IReferenceCounted **v10; // r2
  glitch::IReferenceCounted *v11; // r3
  unsigned int v12[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v13; // [sp+8h] [bp-8h] BYREF
  _DWORD *v14; // [sp+Ch] [bp-4h] BYREF

  result = (glitch::IReferenceCounted *)glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(
                                          a1,
                                          "OutIndexBuffer");
  v5 = *(_DWORD **)(a1 + 52);
  v6 = (_DWORD *)(a1 + 48);
  if ( v5 )
  {
    v7 = (_DWORD *)(a1 + 48);
    do
    {
      v8 = v5[4];
      if ( (unsigned int)result > v8 )
        v5 = (_DWORD *)v5[3];
      else
        v7 = v5;
      if ( (unsigned int)result <= v8 )
        v5 = (_DWORD *)v5[2];
    }
    while ( v5 );
  }
  else
  {
    v7 = (_DWORD *)(a1 + 48);
  }
  if ( v6 == v7 || (v9 = v7, (unsigned int)result < v7[4]) )
  {
    v12[0] = (unsigned int)result;
    v12[1] = 0;
    v14 = v7;
    result = (glitch::IReferenceCounted *)std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
                                            &v13,
                                            v6,
                                            &v14,
                                            v12);
    v9 = v13;
  }
  v10 = (glitch::IReferenceCounted **)v9[5];
  if ( v10 )
  {
    v11 = *a2;
    if ( *a2 )
      ++*((_DWORD *)v11 + 1);
    result = *v10;
    *v10 = v11;
    if ( result )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  }
  return result;
}


// ===== 650574 glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::scene::CMeshBuffer *>(char const*,glitch::scene::CMeshBuffer *) [clone] =====
unsigned int __fastcall glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::scene::CMeshBuffer *>(
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

  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(a1, "RenderMesh");
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


// ===== 650618 std::priv::__unguarded_linear_insert<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
bool __fastcall std::priv::__unguarded_linear_insert<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        float *a1,
        float *a2)
{
  float *v2; // r5
  float *v3; // r4
  _BOOL4 result; // r0

  v2 = a1 - 25;
  v3 = a1;
  result = *(a1 - 1) < a2[24];
  if ( result )
  {
    while ( 1 )
    {
      *v3 = *v2;
      v3[1] = v2[1];
      v3[2] = v2[2];
      v3[3] = v2[3];
      v3[4] = v2[4];
      v3[5] = v2[5];
      v3[6] = v2[6];
      v3[7] = v2[7];
      v3[8] = v2[8];
      v3[9] = v2[9];
      v3[10] = v2[10];
      v3[11] = v2[11];
      v3[12] = v2[12];
      v3[13] = v2[13];
      v3[14] = v2[14];
      v3[15] = v2[15];
      v3[16] = v2[16];
      v3[17] = v2[17];
      v3[18] = v2[18];
      v3[19] = v2[19];
      v3[20] = v2[20];
      v3[21] = v2[21];
      v3[22] = v2[22];
      v3[23] = v2[23];
      v3[24] = v2[24];
      result = *(v2 - 1) < a2[24];
      v3 = v2;
      if ( *(v2 - 1) >= a2[24] )
        break;
      v2 -= 25;
    }
  }
  *v3 = *a2;
  v3[1] = a2[1];
  v3[2] = a2[2];
  v3[3] = a2[3];
  v3[4] = a2[4];
  v3[5] = a2[5];
  v3[6] = a2[6];
  v3[7] = a2[7];
  v3[8] = a2[8];
  v3[9] = a2[9];
  v3[10] = a2[10];
  v3[11] = a2[11];
  v3[12] = a2[12];
  v3[13] = a2[13];
  v3[14] = a2[14];
  v3[15] = a2[15];
  v3[16] = a2[16];
  v3[17] = a2[17];
  v3[18] = a2[18];
  v3[19] = a2[19];
  v3[20] = a2[20];
  v3[21] = a2[21];
  v3[22] = a2[22];
  v3[23] = a2[23];
  v3[24] = a2[24];
  return result;
}


// ===== 6507f4 std::priv::__unguarded_insertion_sort_aux<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
float *__fastcall std::priv::__unguarded_insertion_sort_aux<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        float *result,
        float *a2)
{
  float *v2; // r4
  float v3; // r8
  float v4; // r7
  float v5; // r6
  float v6; // r5
  float v7; // lr
  float v8; // r12
  float v9; // r11
  float v10; // r9
  float v11; // r2
  float v12; // r3
  float v13; // r1
  float v14; // r0
  float v15; // r7
  float v16; // r6
  float v17; // r5
  float v18; // lr
  float v19; // r12
  float v20; // r3
  float v21; // r10
  float v22; // [sp+4h] [bp-88h]
  float v23; // [sp+8h] [bp-84h]
  float v24; // [sp+Ch] [bp-80h]
  float v25; // [sp+10h] [bp-7Ch]
  float v27[25]; // [sp+20h] [bp-6Ch] BYREF

  if ( result != a2 )
  {
    v2 = result;
    do
    {
      v3 = v2[4];
      v4 = v2[5];
      v5 = v2[6];
      v6 = v2[7];
      v7 = v2[8];
      v8 = v2[9];
      v9 = v2[1];
      v10 = v2[2];
      v22 = v2[10];
      v11 = v2[12];
      v12 = v2[13];
      v13 = v2[11];
      v23 = v2[14];
      v24 = v2[15];
      v25 = v2[16];
      v14 = *v2;
      v27[3] = v2[3];
      v27[4] = v3;
      v27[0] = v14;
      v27[5] = v4;
      v27[6] = v5;
      v27[7] = v6;
      v27[8] = v7;
      v27[9] = v8;
      v27[10] = v22;
      v27[1] = v9;
      v27[2] = v10;
      v27[11] = v13;
      v27[13] = v12;
      v27[12] = v11;
      v27[14] = v23;
      v27[15] = v24;
      v27[16] = v25;
      v15 = v2[18];
      v16 = v2[19];
      v17 = v2[20];
      v18 = v2[21];
      v19 = v2[22];
      v20 = v2[23];
      v21 = v2[24];
      v27[17] = v2[17];
      v27[18] = v15;
      v27[19] = v16;
      v27[20] = v17;
      v27[21] = v18;
      v27[22] = v19;
      v27[23] = v20;
      v27[24] = v21;
      std::priv::__unguarded_linear_insert<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        v2,
        v27);
      result = a2;
      v2 += 25;
    }
    while ( a2 != v2 );
  }
  return result;
}


// ===== 65092c std::__push_heap<glitch::ps::SParticle *,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,int,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
bool __fastcall std::__push_heap<glitch::ps::SParticle *,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        _BOOL4 result,
        int a2,
        int a3,
        int a4)
{
  int v4; // r4
  _BOOL4 v6; // r5
  _DWORD *v8; // r7
  int v9; // r10
  int v10; // r3
  _DWORD *v11; // r3
  int v12; // r2

  v4 = a2;
  v6 = result;
  if ( a2 > a3 )
  {
    v9 = (a2 - 1) / 2;
    v10 = result + 100 * v9;
    result = *(float *)(a4 + 96) < *(float *)(v10 + 96);
    if ( *(float *)(a4 + 96) < *(float *)(v10 + 96) )
    {
      while ( 1 )
      {
        v8 = (_DWORD *)(v6 + 100 * v9);
        v11 = (_DWORD *)(v6 + 100 * v4);
        *v11 = *v8;
        v11[1] = v8[1];
        v11[2] = v8[2];
        v11[3] = v8[3];
        v4 = v9;
        v11[4] = v8[4];
        v11[5] = v8[5];
        v11[6] = v8[6];
        v11[7] = v8[7];
        v11[8] = v8[8];
        v11[9] = v8[9];
        v11[10] = v8[10];
        v11[11] = v8[11];
        v11[12] = v8[12];
        v11[13] = v8[13];
        v11[14] = v8[14];
        v11[15] = v8[15];
        v11[16] = v8[16];
        v11[17] = v8[17];
        v11[18] = v8[18];
        v11[19] = v8[19];
        v11[20] = v8[20];
        v11[21] = v8[21];
        v11[22] = v8[22];
        v11[23] = v8[23];
        v11[24] = v8[24];
        if ( a3 >= v9 )
          break;
        v12 = v6 + 100 * ((v9 - 1) / 2);
        result = *(float *)(a4 + 96) < *(float *)(v12 + 96);
        if ( *(float *)(a4 + 96) >= *(float *)(v12 + 96) )
          break;
        v9 = (v9 - 1) / 2;
      }
    }
    else
    {
      v8 = (_DWORD *)(v6 + 100 * a2);
    }
  }
  else
  {
    v8 = (_DWORD *)(result + 100 * a2);
  }
  *v8 = *(_DWORD *)a4;
  v8[1] = *(_DWORD *)(a4 + 4);
  v8[2] = *(_DWORD *)(a4 + 8);
  v8[3] = *(_DWORD *)(a4 + 12);
  v8[4] = *(_DWORD *)(a4 + 16);
  v8[5] = *(_DWORD *)(a4 + 20);
  v8[6] = *(_DWORD *)(a4 + 24);
  v8[7] = *(_DWORD *)(a4 + 28);
  v8[8] = *(_DWORD *)(a4 + 32);
  v8[9] = *(_DWORD *)(a4 + 36);
  v8[10] = *(_DWORD *)(a4 + 40);
  v8[11] = *(_DWORD *)(a4 + 44);
  v8[12] = *(_DWORD *)(a4 + 48);
  v8[13] = *(_DWORD *)(a4 + 52);
  v8[14] = *(_DWORD *)(a4 + 56);
  v8[15] = *(_DWORD *)(a4 + 60);
  v8[16] = *(_DWORD *)(a4 + 64);
  v8[17] = *(_DWORD *)(a4 + 68);
  v8[18] = *(_DWORD *)(a4 + 72);
  v8[19] = *(_DWORD *)(a4 + 76);
  v8[20] = *(_DWORD *)(a4 + 80);
  v8[21] = *(_DWORD *)(a4 + 84);
  v8[22] = *(_DWORD *)(a4 + 88);
  v8[23] = *(_DWORD *)(a4 + 92);
  v8[24] = *(_DWORD *)(a4 + 96);
  return result;
}


// ===== 650b5c std::__adjust_heap<glitch::ps::SParticle *,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,int,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
bool __fastcall std::__adjust_heap<glitch::ps::SParticle *,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        int a1,
        int a2,
        int a3,
        int *a4)
{
  int v4; // r4
  int *v6; // r8
  int v7; // r11
  int v8; // r10
  int v9; // r6
  int v10; // r8
  _BOOL4 v11; // r0
  int v12; // r11
  _DWORD *v13; // r3
  int v14; // r11
  int v15; // r10
  int v16; // r7
  int v17; // r6
  int v18; // r4
  int v19; // lr
  int v20; // r12
  int v21; // r0
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r12
  int v26; // r9
  int v27; // r6
  int v28; // r4
  int v29; // lr
  int v30; // r7
  int v31; // r10
  int v32; // r8
  int v34; // r4
  _DWORD *v35; // r2
  _DWORD *v36; // r3
  int v37; // [sp+Ch] [bp-88h]
  int v38; // [sp+10h] [bp-84h]
  int v41; // [sp+18h] [bp-7Ch]
  int v42; // [sp+1Ch] [bp-78h]
  int v43; // [sp+20h] [bp-74h]
  int v44; // [sp+24h] [bp-70h]
  _DWORD v45[25]; // [sp+28h] [bp-6Ch] BYREF

  v4 = 2 * (a2 + 1);
  v6 = a4;
  if ( v4 < a3 )
  {
    v7 = a2;
    do
    {
      v8 = v4 - 1;
      v9 = a1 + 100 * v4;
      v10 = a1 + 100 * (v4 - 1);
      v11 = *(float *)(v10 + 96) < *(float *)(v9 + 96);
      if ( *(float *)(v10 + 96) < *(float *)(v9 + 96) )
        v9 = a1 + 100 * (v4 - 1);
      v12 = 100 * v7;
      if ( !v11 )
        v8 = v4;
      *(_DWORD *)(a1 + v12) = *(_DWORD *)v9;
      v13 = (_DWORD *)(a1 + v12);
      v13[1] = *(_DWORD *)(v9 + 4);
      v4 = 2 * (v8 + 1);
      v13[2] = *(_DWORD *)(v9 + 8);
      v7 = v8;
      v13[3] = *(_DWORD *)(v9 + 12);
      v13[4] = *(_DWORD *)(v9 + 16);
      v13[5] = *(_DWORD *)(v9 + 20);
      v13[6] = *(_DWORD *)(v9 + 24);
      v13[7] = *(_DWORD *)(v9 + 28);
      v13[8] = *(_DWORD *)(v9 + 32);
      v13[9] = *(_DWORD *)(v9 + 36);
      v13[10] = *(_DWORD *)(v9 + 40);
      v13[11] = *(_DWORD *)(v9 + 44);
      v13[12] = *(_DWORD *)(v9 + 48);
      v13[13] = *(_DWORD *)(v9 + 52);
      v13[14] = *(_DWORD *)(v9 + 56);
      v13[15] = *(_DWORD *)(v9 + 60);
      v13[16] = *(_DWORD *)(v9 + 64);
      v13[17] = *(_DWORD *)(v9 + 68);
      v13[18] = *(_DWORD *)(v9 + 72);
      v13[19] = *(_DWORD *)(v9 + 76);
      v13[20] = *(_DWORD *)(v9 + 80);
      v13[21] = *(_DWORD *)(v9 + 84);
      v13[22] = *(_DWORD *)(v9 + 88);
      v13[23] = *(_DWORD *)(v9 + 92);
      v13[24] = *(_DWORD *)(v9 + 96);
    }
    while ( a3 > v4 );
    v6 = a4;
    v38 = v8;
  }
  else
  {
    v38 = a2;
  }
  if ( v4 == a3 )
  {
    v34 = v4 - 1;
    v35 = (_DWORD *)(a1 + 100 * v34);
    v36 = (_DWORD *)(a1 + 100 * v38);
    *v36 = *v35;
    v38 = v34;
    v36[1] = v35[1];
    v36[2] = v35[2];
    v36[3] = v35[3];
    v36[4] = v35[4];
    v36[5] = v35[5];
    v36[6] = v35[6];
    v36[7] = v35[7];
    v36[8] = v35[8];
    v36[9] = v35[9];
    v36[10] = v35[10];
    v36[11] = v35[11];
    v36[12] = v35[12];
    v36[13] = v35[13];
    v36[14] = v35[14];
    v36[15] = v35[15];
    v36[16] = v35[16];
    v36[17] = v35[17];
    v36[18] = v35[18];
    v36[19] = v35[19];
    v36[20] = v35[20];
    v36[21] = v35[21];
    v36[22] = v35[22];
    v36[23] = v35[23];
    v36[24] = v35[24];
  }
  v14 = v6[1];
  v15 = v6[3];
  v16 = v6[4];
  v17 = v6[5];
  v18 = v6[6];
  v19 = v6[7];
  v20 = v6[8];
  v21 = v6[9];
  v37 = v6[10];
  v22 = v6[11];
  v23 = v6[12];
  v41 = v6[13];
  v42 = v6[14];
  v43 = v6[15];
  v44 = v6[16];
  v24 = *v6;
  v45[2] = v6[2];
  v45[3] = v15;
  v45[0] = v24;
  v45[4] = v16;
  v45[5] = v17;
  v45[6] = v18;
  v45[7] = v19;
  v45[8] = v20;
  v45[9] = v21;
  v45[1] = v14;
  v45[10] = v37;
  v45[11] = v22;
  v45[12] = v23;
  v45[13] = v41;
  v45[15] = v43;
  v45[14] = v42;
  v45[16] = v44;
  v25 = v6[20];
  v26 = v6[24];
  v27 = v6[17];
  v28 = v6[18];
  v29 = v6[19];
  v30 = v6[21];
  v31 = v6[22];
  v32 = v6[23];
  v45[20] = v25;
  v45[17] = v27;
  v45[18] = v28;
  v45[19] = v29;
  v45[21] = v30;
  v45[22] = v31;
  v45[23] = v32;
  v45[24] = v26;
  return std::__push_heap<glitch::ps::SParticle *,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
           a1,
           v38,
           a2,
           (int)v45);
}


// ===== 650eb4 std::__make_heap<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>,glitch::ps::SParticle,int>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>,glitch::ps::SParticle *,int *) =====
bool __fastcall std::__make_heap<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>,glitch::ps::SParticle,int>(
        _BOOL4 result,
        int a2)
{
  int v2; // r1
  int v3; // r6
  int v4; // r7
  int v5; // r5
  int *v6; // r4
  int v7; // r12
  int v8[25]; // [sp+8h] [bp-6Ch] BYREF

  v2 = a2 - result;
  v3 = result;
  if ( v2 > 199 )
  {
    v4 = -1030792151 * (v2 >> 2);
    v5 = (v4 - 2) >> 1;
    v6 = (int *)(result + 100 * v5);
    while ( 1 )
    {
      v8[0] = *v6;
      v8[1] = v6[1];
      v8[2] = v6[2];
      v8[3] = v6[3];
      v8[4] = v6[4];
      v8[5] = v6[5];
      v8[6] = v6[6];
      v8[7] = v6[7];
      v8[8] = v6[8];
      v8[9] = v6[9];
      v8[10] = v6[10];
      v8[11] = v6[11];
      v8[12] = v6[12];
      v8[13] = v6[13];
      v8[14] = v6[14];
      v8[15] = v6[15];
      v8[16] = v6[16];
      v8[17] = v6[17];
      v8[18] = v6[18];
      v8[19] = v6[19];
      v8[20] = v6[20];
      v8[21] = v6[21];
      v8[22] = v6[22];
      v8[23] = v6[23];
      v7 = v6[24];
      v6 -= 25;
      v8[24] = v7;
      result = std::__adjust_heap<glitch::ps::SParticle *,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
                 v3,
                 v5,
                 v4,
                 v8);
      if ( !v5 )
        break;
      --v5;
    }
  }
  return result;
}


// ===== 650ff0 std::swap<glitch::ps::SParticle>(glitch::ps::SParticle &,glitch::ps::SParticle &) =====
int *__fastcall std::swap<glitch::ps::SParticle>(int *result, int *a2)
{
  int v2; // r11
  int v3; // r9
  int v4; // r10
  int v5; // r11
  int v6; // r8
  char v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r5
  char v11; // r4
  char v12; // r12
  char v13; // r2
  int v14; // [sp+4h] [bp-4Ch]
  int v15; // [sp+Ch] [bp-44h]
  int v16; // [sp+10h] [bp-40h]
  int v17; // [sp+18h] [bp-38h]
  int v18; // [sp+1Ch] [bp-34h]
  int v19; // [sp+20h] [bp-30h]
  int v20; // [sp+24h] [bp-2Ch]
  int v21; // [sp+28h] [bp-28h]
  int v22; // [sp+2Ch] [bp-24h]
  int v23; // [sp+30h] [bp-20h]
  int v24; // [sp+34h] [bp-1Ch]
  int v25; // [sp+38h] [bp-18h]
  int v26; // [sp+3Ch] [bp-14h]
  int v27; // [sp+40h] [bp-10h]
  int v28; // [sp+44h] [bp-Ch]
  int v29; // [sp+48h] [bp-8h]
  int v30; // [sp+4Ch] [bp-4h]

  v14 = result[7];
  v2 = result[8];
  v3 = *result;
  *result = *a2;
  v15 = v2;
  v4 = result[1];
  v16 = result[9];
  v5 = result[10];
  v6 = result[2];
  result[1] = a2[1];
  v7 = *((_BYTE *)result + 24);
  v8 = result[3];
  v17 = result[11];
  v9 = result[4];
  v10 = result[5];
  v18 = result[12];
  v11 = *((_BYTE *)result + 27);
  v12 = *((_BYTE *)result + 26);
  v19 = result[13];
  v13 = *((_BYTE *)result + 25);
  v20 = result[14];
  v21 = result[15];
  v22 = result[16];
  v23 = result[17];
  v24 = result[18];
  v25 = result[19];
  v26 = result[20];
  v27 = result[21];
  v28 = result[22];
  v29 = result[23];
  v30 = result[24];
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
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  *((_BYTE *)a2 + 24) = v7;
  *((_BYTE *)a2 + 27) = v11;
  a2[7] = v14;
  a2[8] = v15;
  a2[9] = v16;
  a2[10] = v5;
  a2[11] = v17;
  a2[12] = v18;
  a2[13] = v19;
  a2[14] = v20;
  a2[15] = v21;
  a2[16] = v22;
  a2[17] = v23;
  a2[18] = v24;
  a2[19] = v25;
  a2[20] = v26;
  *((_BYTE *)a2 + 26) = v12;
  *((_BYTE *)a2 + 25) = v13;
  a2[24] = v30;
  a2[21] = v27;
  a2[22] = v28;
  a2[23] = v29;
  return result;
}


// ===== 65123c std::__pop_heap<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>,int>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>,int *) =====
bool __fastcall std::__pop_heap<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int *a4)
{
  int v4; // r7
  int v5; // r6
  int v6; // r5
  int v7; // r4
  int v8; // lr
  int v9; // r8
  int v10; // r10
  int v11; // r9
  int v12; // r7
  int v13; // r6
  int v14; // r5
  int v15; // r4
  int v16; // r10
  int v17; // r9
  int v18; // r11
  int v19; // r12
  int v21; // [sp+Ch] [bp-88h]
  int v22; // [sp+10h] [bp-84h]
  int v23; // [sp+14h] [bp-80h]
  int v24; // [sp+18h] [bp-7Ch]
  int v25; // [sp+1Ch] [bp-78h]
  int v26; // [sp+20h] [bp-74h]
  int v27; // [sp+24h] [bp-70h]
  int v28[25]; // [sp+28h] [bp-6Ch] BYREF

  *a3 = *a1;
  a3[1] = a1[1];
  a3[2] = a1[2];
  a3[3] = a1[3];
  a3[4] = a1[4];
  a3[5] = a1[5];
  a3[6] = a1[6];
  a3[7] = a1[7];
  a3[8] = a1[8];
  a3[9] = a1[9];
  a3[10] = a1[10];
  a3[11] = a1[11];
  a3[12] = a1[12];
  a3[13] = a1[13];
  a3[14] = a1[14];
  a3[15] = a1[15];
  a3[16] = a1[16];
  a3[17] = a1[17];
  a3[18] = a1[18];
  a3[19] = a1[19];
  a3[20] = a1[20];
  a3[21] = a1[21];
  a3[22] = a1[22];
  a3[23] = a1[23];
  a3[24] = a1[24];
  v4 = a4[1];
  v5 = a4[2];
  v6 = a4[3];
  v7 = a4[4];
  v8 = a4[5];
  v9 = a4[6];
  v10 = a4[7];
  v11 = a4[8];
  v28[0] = *a4;
  v28[1] = v4;
  v28[2] = v5;
  v28[3] = v6;
  v28[4] = v7;
  v28[5] = v8;
  v28[6] = v9;
  v28[7] = v10;
  v28[8] = v11;
  v27 = a4[24];
  v12 = a4[9];
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v21 = a4[14];
  v16 = a4[15];
  v17 = a4[16];
  v18 = a4[17];
  v22 = a4[18];
  v23 = a4[19];
  v24 = a4[20];
  v25 = a4[21];
  v26 = a4[22];
  v19 = a4[23];
  v28[13] = a4[13];
  v28[9] = v12;
  v28[10] = v13;
  v28[14] = v21;
  v28[11] = v14;
  v28[12] = v15;
  v28[15] = v16;
  v28[16] = v17;
  v28[17] = v18;
  v28[18] = v22;
  v28[23] = v19;
  v28[19] = v23;
  v28[20] = v24;
  v28[24] = v27;
  v28[21] = v25;
  v28[22] = v26;
  return std::__adjust_heap<glitch::ps::SParticle *,int,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
           (int)a1,
           0,
           -1030792151 * ((a2 - (int)a1) >> 2),
           v28);
}


// ===== 651444 std::__pop_heap_aux<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
bool __fastcall std::__pop_heap_aux<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r3
  int v3; // r2
  int v4; // r9
  int v5; // r10
  int v6; // r8
  int v7; // r7
  int v8; // r6
  int v9; // r5
  int v10; // r4
  int v11; // lr
  int v12; // r12
  int v13; // r1
  int v14; // r11
  int v15; // r2
  int v16; // r7
  int v17; // r6
  int v18; // r5
  int v19; // r4
  int v20; // lr
  int v21; // r8
  int v22; // r10
  int v24; // [sp+Ch] [bp-80h]
  int v25; // [sp+10h] [bp-7Ch]
  int v26; // [sp+14h] [bp-78h]
  int v27; // [sp+18h] [bp-74h]
  int v28; // [sp+1Ch] [bp-70h]
  int v29[25]; // [sp+20h] [bp-6Ch] BYREF

  v2 = (_DWORD *)(a2 - 100);
  v3 = *(_DWORD *)(a2 - 60);
  v4 = *(_DWORD *)(a2 - 100);
  v5 = *(_DWORD *)(a2 - 96);
  v6 = *(_DWORD *)(a2 - 92);
  v7 = *(_DWORD *)(a2 - 88);
  v8 = *(_DWORD *)(a2 - 84);
  v9 = *(_DWORD *)(a2 - 80);
  v10 = *(_DWORD *)(a2 - 76);
  v11 = *(_DWORD *)(a2 - 72);
  v12 = *(_DWORD *)(a2 - 68);
  v13 = *(_DWORD *)(a2 - 64);
  v24 = v3;
  v14 = v2[11];
  v25 = v2[12];
  v26 = v2[13];
  v27 = v2[14];
  v28 = v2[15];
  v15 = v2[16];
  v29[1] = v5;
  v29[2] = v6;
  v29[16] = v15;
  v29[3] = v7;
  v29[4] = v8;
  v29[5] = v9;
  v29[6] = v10;
  v29[7] = v11;
  v29[8] = v12;
  v29[0] = v4;
  v29[9] = v13;
  v29[11] = v14;
  v29[10] = v24;
  v29[12] = v25;
  v29[13] = v26;
  v29[14] = v27;
  v29[15] = v28;
  v16 = v2[17];
  v17 = v2[18];
  v18 = v2[19];
  v19 = v2[20];
  v20 = v2[21];
  v21 = v2[23];
  v22 = v2[24];
  v29[22] = v2[22];
  v29[17] = v16;
  v29[18] = v17;
  v29[19] = v18;
  v29[20] = v19;
  v29[21] = v20;
  v29[23] = v21;
  v29[24] = v22;
  return std::__pop_heap<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>,int>(
           a1,
           (int)v2,
           v2,
           v29);
}


// ===== 651568 std::priv::__partial_sort<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
bool __fastcall std::priv::__partial_sort<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        int a1,
        int a2,
        unsigned int a3)
{
  unsigned int v4; // r6
  _BOOL4 result; // r0
  int *v7; // r4
  int v8; // r11
  int v9; // r9
  int v10; // r8
  int v11; // r6
  int v12; // lr
  int v13; // r12
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r0
  int v18; // lr
  int v19; // r6
  int v20; // r8
  int v21; // r9
  int v22; // r11
  int v23; // r10
  int *v24; // r2
  int v25; // r4
  int v26; // r1
  int v27; // [sp+Ch] [bp-98h]
  int v28; // [sp+14h] [bp-90h]
  int v29; // [sp+14h] [bp-90h]
  int v30; // [sp+18h] [bp-8Ch]
  int v31; // [sp+18h] [bp-8Ch]
  int v32; // [sp+1Ch] [bp-88h]
  int v33; // [sp+20h] [bp-84h]
  int v34; // [sp+24h] [bp-80h]
  int v35[25]; // [sp+30h] [bp-74h] BYREF

  v4 = a2;
  result = std::__make_heap<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>,glitch::ps::SParticle,int>(
             a1,
             a2);
  if ( v4 < a3 )
  {
    v7 = (int *)v4;
    v34 = v4;
    do
    {
      while ( 1 )
      {
        result = *(float *)(a1 + 96) < *((float *)v7 + 24);
        if ( *(float *)(a1 + 96) < *((float *)v7 + 24) )
          break;
        v7 += 25;
        if ( a3 <= (unsigned int)v7 )
          goto LABEL_6;
      }
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      v11 = v7[5];
      v12 = v7[6];
      v13 = v7[7];
      v27 = v7[8];
      v14 = v7[9];
      v15 = v7[10];
      v16 = v7[11];
      v28 = v7[12];
      v30 = v7[13];
      v32 = v7[14];
      v33 = v7[15];
      v17 = *v7;
      v35[3] = v7[3];
      v35[0] = v17;
      v35[1] = v8;
      v35[2] = v9;
      v35[4] = v10;
      v35[5] = v11;
      v35[6] = v12;
      v35[7] = v13;
      v35[8] = v27;
      v35[9] = v14;
      v35[10] = v15;
      v35[11] = v16;
      v35[12] = v28;
      v35[13] = v30;
      v35[14] = v32;
      v35[15] = v33;
      v18 = v7[18];
      v19 = v7[17];
      v20 = v7[20];
      v31 = v7[21];
      v21 = v7[22];
      v22 = v7[23];
      v29 = v7[24];
      v23 = v7[16];
      v35[19] = v7[19];
      v35[16] = v23;
      v35[21] = v31;
      v24 = v7;
      v35[24] = v29;
      v7 += 25;
      v35[18] = v18;
      v35[17] = v19;
      v35[20] = v20;
      v35[22] = v21;
      v35[23] = v22;
      result = std::__pop_heap<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>,int>(
                 (_DWORD *)a1,
                 v34,
                 v24,
                 v35);
    }
    while ( a3 > (unsigned int)v7 );
LABEL_6:
    v4 = v34;
  }
  if ( (int)(v4 - a1) > 199 )
  {
    v25 = 0;
    do
    {
      v26 = v4 + v25;
      v25 -= 100;
      result = std::__pop_heap_aux<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
                 (_DWORD *)a1,
                 v26);
    }
    while ( (int)(v4 - a1 + v25) > 199 );
  }
  return result;
}


// ===== 651748 std::priv::__introsort_loop<glitch::ps::SParticle *,glitch::ps::SParticle,int,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,int,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
int __fastcall std::priv::__introsort_loop<glitch::ps::SParticle *,glitch::ps::SParticle,int,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        int result,
        unsigned int a2,
        int a3,
        int a4)
{
  int v4; // r2
  unsigned int v5; // r7
  int v6; // r5
  int v7; // r6
  float v8; // r4
  int v9; // r3
  float v10; // r8
  float v11; // r10
  float v12; // r11
  unsigned int v13; // r8
  int v14; // r9
  unsigned int v15; // r4
  _BYTE v16[8]; // [sp+14h] [bp-8h] BYREF

  v4 = a2 - result;
  v5 = a2;
  v6 = result;
  v7 = a4;
  if ( (int)(a2 - result) > 1699 )
  {
    if ( a4 )
    {
      do
      {
        v8 = *(float *)(v6 + 96);
        v9 = v6 + 100 * ((-1030792151 * (v4 >> 2)) >> 1);
        --v7;
        v10 = *(float *)(v9 + 96);
        if ( v10 >= v8 )
        {
          v11 = *(float *)(v5 - 4);
          if ( v8 <= v11 )
          {
            if ( v10 <= v11 )
            {
LABEL_23:
              v12 = v11;
              v11 = *(float *)(v9 + 96);
              goto LABEL_7;
            }
LABEL_16:
            v12 = v11;
            goto LABEL_7;
          }
        }
        else
        {
          v11 = *(float *)(v5 - 4);
          if ( v10 > v11 )
            goto LABEL_23;
          if ( v8 > v11 )
            goto LABEL_16;
        }
        v12 = v11;
        v11 = *(float *)(v6 + 96);
LABEL_7:
        v13 = v5;
        v14 = v6;
        while ( 1 )
        {
          if ( v11 < v8 )
          {
            v15 = v14;
            do
              v15 += 100;
            while ( *(float *)(v15 + 96) > v11 );
          }
          else
          {
            v15 = v14;
          }
          v13 -= 100;
          if ( v12 < v11 )
          {
            do
              v13 -= 100;
            while ( *(float *)(v13 + 96) < v11 );
          }
          if ( v13 <= v15 )
            break;
          v14 = v15 + 100;
          std::swap<glitch::ps::SParticle>((int *)v15, (int *)v13);
          v8 = *(float *)(v15 + 196);
          v12 = *(float *)(v13 - 4);
        }
        result = std::priv::__introsort_loop<glitch::ps::SParticle *,glitch::ps::SParticle,int,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
                   v15,
                   v5,
                   0,
                   v7,
                   v16);
        v4 = v15 - v6;
        if ( (int)(v15 - v6) <= 1699 )
          return result;
        v5 = v15;
      }
      while ( v7 );
    }
    return std::priv::__partial_sort<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
             v6,
             v5,
             v5);
  }
  return result;
}


// ===== 651924 glitch::collada::CParticleSystemSceneNode::getParticleSystemParameter(char const*) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::getParticleSystemParameter(
        glitch::collada::CParticleSystemSceneNode *this,
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
  v3 = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v2, a2);
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


// ===== 6519cc std::priv::__linear_insert<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
int __fastcall std::priv::__linear_insert<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        int a1,
        int a2,
        float *a3)
{
  _DWORD *v3; // r6
  int v4; // r4
  float *v5; // r5
  int result; // r0
  int v7; // r3
  int v8; // t1
  int v9; // r8
  int v10; // r7
  int v11; // r6
  int v12; // r5
  int v13; // r12
  int v14; // r0
  int v15; // r1
  int v16; // r10
  int v17; // r2
  int v18; // r11
  int v19; // r2
  int v20; // r2
  int v21; // r7
  int v22; // r6
  int v23; // r5
  int v24; // r12
  int v25; // r1
  int v26; // r2
  float v27; // r11
  float v28; // r9
  float v29; // r10
  float v30; // r8
  float v31; // r7
  float v32; // r6
  float v33; // lr
  float v34; // r12
  float v35; // r0
  float v36; // r1
  float v37; // r2
  float v38; // r3
  float v39; // r10
  float v40; // r8
  float v41; // r7
  float v42; // r6
  float v43; // lr
  float v44; // r12
  float v45; // r3
  float v46; // r5
  float v47; // [sp+0h] [bp-84h]
  float v48; // [sp+4h] [bp-80h]
  float v49; // [sp+8h] [bp-7Ch]
  float v50; // [sp+Ch] [bp-78h]
  _DWORD *v51; // [sp+10h] [bp-74h]
  float v52; // [sp+10h] [bp-74h]
  float v54[25]; // [sp+18h] [bp-6Ch] BYREF

  v3 = (_DWORD *)a1;
  v4 = a2;
  v5 = a3;
  result = *(float *)(a1 + 96) < a3[24];
  if ( result )
  {
    v7 = -1030792151 * ((a2 - (int)v3) >> 2);
    if ( v7 > 0 )
    {
      v51 = v3;
      do
      {
        v8 = *(_DWORD *)(v4 - 100);
        v4 -= 100;
        --v7;
        v9 = *(_DWORD *)(v4 + 8);
        v10 = *(_DWORD *)(v4 + 12);
        *(_DWORD *)(v4 + 136) = *(_DWORD *)(v4 + 36);
        v11 = *(_DWORD *)(v4 + 16);
        v12 = *(_DWORD *)(v4 + 20);
        *(_DWORD *)(v4 + 144) = *(_DWORD *)(v4 + 44);
        v13 = *(_DWORD *)(v4 + 24);
        v14 = *(_DWORD *)(v4 + 28);
        *(_DWORD *)(v4 + 148) = *(_DWORD *)(v4 + 48);
        v15 = *(_DWORD *)(v4 + 32);
        v16 = *(_DWORD *)(v4 + 4);
        *(_DWORD *)(v4 + 152) = *(_DWORD *)(v4 + 52);
        v17 = *(_DWORD *)(v4 + 56);
        v18 = *(_DWORD *)(v4 + 40);
        *(_DWORD *)(v4 + 108) = v9;
        *(_DWORD *)(v4 + 156) = v17;
        v19 = *(_DWORD *)(v4 + 60);
        *(_DWORD *)(v4 + 112) = v10;
        *(_DWORD *)(v4 + 116) = v11;
        *(_DWORD *)(v4 + 160) = v19;
        v20 = *(_DWORD *)(v4 + 64);
        *(_DWORD *)(v4 + 120) = v12;
        *(_DWORD *)(v4 + 124) = v13;
        *(_DWORD *)(v4 + 128) = v14;
        *(_DWORD *)(v4 + 132) = v15;
        *(_DWORD *)(v4 + 100) = v8;
        *(_DWORD *)(v4 + 104) = v16;
        *(_DWORD *)(v4 + 140) = v18;
        *(_DWORD *)(v4 + 164) = v20;
        v21 = *(_DWORD *)(v4 + 72);
        v22 = *(_DWORD *)(v4 + 76);
        v23 = *(_DWORD *)(v4 + 80);
        v24 = *(_DWORD *)(v4 + 84);
        result = *(_DWORD *)(v4 + 88);
        v25 = *(_DWORD *)(v4 + 92);
        v26 = *(_DWORD *)(v4 + 96);
        *(_DWORD *)(v4 + 168) = *(_DWORD *)(v4 + 68);
        *(_DWORD *)(v4 + 172) = v21;
        *(_DWORD *)(v4 + 176) = v22;
        *(_DWORD *)(v4 + 180) = v23;
        *(_DWORD *)(v4 + 184) = v24;
        *(_DWORD *)(v4 + 188) = result;
        *(_DWORD *)(v4 + 192) = v25;
        *(_DWORD *)(v4 + 196) = v26;
      }
      while ( v7 );
      v3 = v51;
      v5 = a3;
    }
    *v3 = *(_DWORD *)v5;
    v3[1] = *((_DWORD *)v5 + 1);
    v3[2] = *((_DWORD *)v5 + 2);
    v3[3] = *((_DWORD *)v5 + 3);
    v3[4] = *((_DWORD *)v5 + 4);
    v3[5] = *((_DWORD *)v5 + 5);
    v3[6] = *((_DWORD *)v5 + 6);
    v3[7] = *((_DWORD *)v5 + 7);
    v3[8] = *((_DWORD *)v5 + 8);
    v3[9] = *((_DWORD *)v5 + 9);
    v3[10] = *((_DWORD *)v5 + 10);
    v3[11] = *((_DWORD *)v5 + 11);
    v3[12] = *((_DWORD *)v5 + 12);
    v3[13] = *((_DWORD *)v5 + 13);
    v3[14] = *((_DWORD *)v5 + 14);
    v3[15] = *((_DWORD *)v5 + 15);
    v3[16] = *((_DWORD *)v5 + 16);
    v3[17] = *((_DWORD *)v5 + 17);
    v3[18] = *((_DWORD *)v5 + 18);
    v3[19] = *((_DWORD *)v5 + 19);
    v3[20] = *((_DWORD *)v5 + 20);
    v3[21] = *((_DWORD *)v5 + 21);
    v3[22] = *((_DWORD *)v5 + 22);
    v3[23] = *((_DWORD *)v5 + 23);
    v3[24] = *((_DWORD *)v5 + 24);
  }
  else
  {
    v27 = a3[1];
    v28 = a3[2];
    v29 = a3[3];
    v30 = a3[4];
    v31 = a3[5];
    v32 = a3[6];
    v33 = a3[7];
    v34 = a3[8];
    v35 = a3[9];
    v36 = a3[10];
    v37 = a3[11];
    v52 = v5[12];
    v47 = v5[13];
    v48 = v5[14];
    v49 = v5[15];
    v50 = v5[16];
    v38 = *v5;
    v54[3] = v29;
    v54[4] = v30;
    v54[0] = v38;
    v54[5] = v31;
    v54[6] = v32;
    v54[7] = v33;
    v54[8] = v34;
    v54[9] = v35;
    v54[10] = v36;
    v54[1] = v27;
    v54[2] = v28;
    v54[11] = v37;
    v54[12] = v52;
    v54[13] = v47;
    v54[14] = v48;
    v54[15] = v49;
    v54[16] = v50;
    v39 = v5[24];
    v40 = v5[17];
    v41 = v5[18];
    v42 = v5[19];
    v43 = v5[20];
    v44 = v5[21];
    v45 = v5[22];
    v46 = v5[23];
    v54[17] = v40;
    v54[18] = v41;
    v54[19] = v42;
    v54[20] = v43;
    v54[21] = v44;
    v54[22] = v45;
    v54[23] = v46;
    v54[24] = v39;
    return std::priv::__unguarded_linear_insert<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
             (float *)v4,
             v54);
  }
  return result;
}


// ===== 651cc4 std::priv::__insertion_sort<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
int __fastcall std::priv::__insertion_sort<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        int result,
        int a2)
{
  int i; // r4
  float v3; // r10
  float v4; // r8
  float v5; // r7
  float v6; // r6
  float v7; // r5
  float v8; // lr
  float v9; // r11
  float v10; // r2
  float v11; // r3
  float v12; // r0
  float v13; // r1
  float v14; // r12
  float v15; // r6
  float v16; // r5
  float v17; // lr
  float v18; // r12
  float v19; // r8
  float v20; // r10
  float v21; // r9
  float v22; // [sp+4h] [bp-90h]
  float v23; // [sp+Ch] [bp-88h]
  float v24; // [sp+10h] [bp-84h]
  float v25; // [sp+14h] [bp-80h]
  int v26; // [sp+18h] [bp-7Ch]
  float v28[25]; // [sp+28h] [bp-6Ch] BYREF

  v26 = result;
  if ( result != a2 )
  {
    for ( i = result + 100; a2 != i; i += 100 )
    {
      v3 = *(float *)(i + 12);
      v4 = *(float *)(i + 16);
      v5 = *(float *)(i + 20);
      v6 = *(float *)(i + 24);
      v7 = *(float *)(i + 28);
      v8 = *(float *)(i + 32);
      v9 = *(float *)(i + 4);
      v22 = *(float *)(i + 36);
      v10 = *(float *)(i + 48);
      v11 = *(float *)(i + 52);
      v12 = *(float *)(i + 40);
      v13 = *(float *)(i + 44);
      v23 = *(float *)(i + 56);
      v24 = *(float *)(i + 60);
      v25 = *(float *)(i + 64);
      v14 = *(float *)i;
      v28[2] = *(float *)(i + 8);
      v28[3] = v3;
      v28[0] = v14;
      v28[4] = v4;
      v28[5] = v5;
      v28[6] = v6;
      v28[7] = v7;
      v28[8] = v8;
      v28[9] = v22;
      v28[10] = v12;
      v28[1] = v9;
      v28[11] = v13;
      v28[12] = v10;
      v28[13] = v11;
      v28[14] = v23;
      v28[15] = v24;
      v28[16] = v25;
      v15 = *(float *)(i + 72);
      v16 = *(float *)(i + 76);
      v17 = *(float *)(i + 80);
      v18 = *(float *)(i + 84);
      v19 = *(float *)(i + 88);
      v20 = *(float *)(i + 92);
      v21 = *(float *)(i + 96);
      v28[17] = *(float *)(i + 68);
      v28[18] = v15;
      v28[19] = v16;
      v28[20] = v17;
      v28[21] = v18;
      v28[22] = v19;
      v28[23] = v20;
      v28[24] = v21;
      result = std::priv::__linear_insert<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
                 v26,
                 i,
                 v28);
    }
  }
  return result;
}


// ===== 651e0c std::priv::__final_insertion_sort<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
float *__fastcall std::priv::__final_insertion_sort<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        int a1,
        float *a2)
{
  float *v3; // r5

  if ( (int)a2 - a1 <= 1699 )
    return (float *)std::priv::__insertion_sort<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
                      a1,
                      (int)a2);
  v3 = (float *)(a1 + 1600);
  std::priv::__insertion_sort<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
    a1,
    a1 + 1600);
  return std::priv::__unguarded_insertion_sort_aux<glitch::ps::SParticle *,glitch::ps::SParticle,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
           v3,
           a2);
}


// ===== 651e6c std::sort<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>>(glitch::ps::SParticle *,glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>) =====
float *__fastcall std::sort<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
        float *result,
        float *a2)
{
  int v2; // r5
  int v4; // r2
  int v5; // r3
  int v6; // r3

  v2 = (int)result;
  if ( result != a2 )
  {
    v4 = -1030792151 * (a2 - result);
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
    std::priv::__introsort_loop<glitch::ps::SParticle *,glitch::ps::SParticle,int,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
      (int)result,
      (unsigned int)a2,
      0,
      v5);
    return std::priv::__final_insertion_sort<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>>(
             v2,
             a2);
  }
  return result;
}


// ===== 651eec glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(
        int a1,
        float *a2,
        float *a3)
{
  bool v3; // zf
  float v5; // r2
  float v7; // r9
  float v8; // r11
  float *v9; // r5
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
  char v28[8]; // [sp+Ch] [bp-8h] BYREF

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
    v10 = a2;
    do
    {
      v11 = *v10;
      v10[24] = (float)((float)((float)(v5 - *v10) * (float)(v5 - *v10))
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
      v10 += 25;
      if ( v13 < *(float *)(a1 + 124) )
        *(float *)(a1 + 124) = v13;
    }
    while ( a3 != v10 );
    v9 = &a2[25 * ((42949673 * ((unsigned int)((char *)a3 - (char *)(a2 + 25)) >> 2)) & 0x3FFFFFFF) + 25];
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
  return std::sort<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>>(a2, v9, v28);
}


// ===== 652128 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(
           (int)a1 + *(_DWORD *)(*a1 - 152),
           a2,
           a3);
}


// ===== 652138 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(
        int a1,
        float *a2,
        float *a3)
{
  bool v3; // zf
  float v5; // r2
  float v7; // r9
  float v8; // r11
  float *v9; // r5
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
    v10 = a2;
    do
    {
      v11 = *v10;
      v10[24] = (float)((float)((float)(v5 - *v10) * (float)(v5 - *v10))
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
      v10 += 25;
      if ( v13 < *(float *)(a1 + 124) )
        *(float *)(a1 + 124) = v13;
    }
    while ( a3 != v10 );
    v9 = &a2[25 * ((42949673 * ((unsigned int)((char *)a3 - (char *)(a2 + 25)) >> 2)) & 0x3FFFFFFF) + 25];
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
  return std::sort<glitch::ps::SParticle *,glitch::ps::AlphaSort<glitch::ps::SParticle>>(a2, v9);
}


// ===== 652374 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::applyPRenderData(
           (int)a1 + *(_DWORD *)(*a1 - 152),
           a2,
           a3);
}


// ===== 652384 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(
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
  glitch::scene::CMeshBuffer *v11; // r1
  int v12; // r4
  int v13; // r3
  int v14; // r2
  int v15; // r4
  glitch::IReferenceCounted *v16; // r0
  _DWORD v17[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD *v18; // [sp+8h] [bp-8h] BYREF
  _DWORD *v19; // [sp+Ch] [bp-4h] BYREF

  v2 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v2, "MaxParticles");
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
    result = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
               &v18,
               v5,
               &v19,
               v17);
    v10 = v18;
  }
  v11 = *(glitch::scene::CMeshBuffer **)(a1 + 4);
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


// ===== 6524cc `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel((int)a1 + *(_DWORD *)(*a1 - 144));
}


// ===== 6524dc glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(
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
  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v2, "MaxParticles");
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


// ===== 652624 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(void) =====
unsigned int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::initPRenderDataModel((int)a1 + *(_DWORD *)(*a1 - 144));
}


// ===== 652634 std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::ps::SParticle*,uint,glitch::ps::SParticle const&,std::__false_type const&) =====
int __fastcall std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3,
        _DWORD *a4)
{
  _DWORD *v5; // r5
  _DWORD *v6; // r6
  int result; // r0
  int v8; // r1
  int v9; // r4
  int v10; // r7
  _DWORD *v11; // r2
  _DWORD *v12; // r7
  _DWORD *v13; // r1
  _DWORD *i; // r0
  int v15; // r8
  int v16; // r1
  int v17; // r4
  _DWORD *v18; // r4
  int v19; // r2
  int v20; // r0
  _DWORD *v21; // r2
  int v22; // r6

  v5 = a2;
  if ( (unsigned int)a4 >= *a1 )
  {
    v6 = (_DWORD *)a1[1];
    if ( a4 < v6 )
      return std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(a1);
  }
  else
  {
    v6 = (_DWORD *)a1[1];
  }
  result = -1030792151;
  v8 = -1030792151 * (v6 - a2);
  if ( a3 >= v8 )
  {
    v18 = &v6[25 * (a3 - v8)];
    v19 = -1030792151 * ((int)(100 * (a3 - v8)) >> 2);
    if ( v19 > 0 )
    {
      while ( 1 )
      {
        --v19;
        *v6 = *a4;
        v6[1] = a4[1];
        v6[2] = a4[2];
        v6[3] = a4[3];
        v6[4] = a4[4];
        v6[5] = a4[5];
        v6[6] = a4[6];
        v6[7] = a4[7];
        v6[8] = a4[8];
        v6[9] = a4[9];
        v6[10] = a4[10];
        v6[11] = a4[11];
        v6[12] = a4[12];
        v6[13] = a4[13];
        v6[14] = a4[14];
        v6[15] = a4[15];
        v6[16] = a4[16];
        v6[17] = a4[17];
        v6[18] = a4[18];
        v6[19] = a4[19];
        v6[20] = a4[20];
        v6[21] = a4[21];
        v6[22] = a4[22];
        v6[23] = a4[23];
        result = a4[24];
        v6[24] = result;
        if ( !v19 )
          break;
        v6 += 25;
      }
    }
    a1[1] = v18;
    if ( v8 <= 0 )
    {
      a1[1] = &v18[25 * v8];
    }
    else
    {
      v20 = v8;
      v21 = v5;
      while ( 1 )
      {
        --v20;
        *v18 = *v21;
        v18[1] = v21[1];
        v18[2] = v21[2];
        v18[3] = v21[3];
        v18[4] = v21[4];
        v18[5] = v21[5];
        v18[6] = v21[6];
        v18[7] = v21[7];
        v18[8] = v21[8];
        v18[9] = v21[9];
        v18[10] = v21[10];
        v18[11] = v21[11];
        v18[12] = v21[12];
        v18[13] = v21[13];
        v18[14] = v21[14];
        v18[15] = v21[15];
        v18[16] = v21[16];
        v18[17] = v21[17];
        v18[18] = v21[18];
        v18[19] = v21[19];
        v18[20] = v21[20];
        v18[21] = v21[21];
        v18[22] = v21[22];
        v18[23] = v21[23];
        v22 = v21[24];
        v21 += 25;
        v18[24] = v22;
        if ( !v20 )
          break;
        v18 += 25;
      }
      result = 100;
      a1[1] += 100 * v8;
      do
      {
        --v8;
        *v5 = *a4;
        v5[1] = a4[1];
        v5[2] = a4[2];
        v5[3] = a4[3];
        v5[4] = a4[4];
        v5[5] = a4[5];
        v5[6] = a4[6];
        v5[7] = a4[7];
        v5[8] = a4[8];
        v5[9] = a4[9];
        v5[10] = a4[10];
        v5[11] = a4[11];
        v5[12] = a4[12];
        v5[13] = a4[13];
        v5[14] = a4[14];
        v5[15] = a4[15];
        v5[16] = a4[16];
        v5[17] = a4[17];
        v5[18] = a4[18];
        v5[19] = a4[19];
        v5[20] = a4[20];
        v5[21] = a4[21];
        v5[22] = a4[22];
        v5[23] = a4[23];
        v5[24] = a4[24];
        v5 += 25;
      }
      while ( v8 );
    }
  }
  else
  {
    v9 = 100 * a3;
    v10 = -1030792151 * ((int)(100 * a3) >> 2);
    v11 = &v6[-25 * a3];
    if ( v10 > 0 )
    {
      v13 = &v6[v9 / 0xFFFFFFFC];
      for ( i = v6; ; i += 25 )
      {
        --v10;
        *i = *v13;
        i[1] = v13[1];
        i[2] = v13[2];
        i[3] = v13[3];
        i[4] = v13[4];
        i[5] = v13[5];
        i[6] = v13[6];
        i[7] = v13[7];
        i[8] = v13[8];
        i[9] = v13[9];
        i[10] = v13[10];
        i[11] = v13[11];
        i[12] = v13[12];
        i[13] = v13[13];
        i[14] = v13[14];
        i[15] = v13[15];
        i[16] = v13[16];
        i[17] = v13[17];
        i[18] = v13[18];
        i[19] = v13[19];
        i[20] = v13[20];
        i[21] = v13[21];
        i[22] = v13[22];
        i[23] = v13[23];
        v15 = v13[24];
        v13 += 25;
        i[24] = v15;
        if ( !v10 )
          break;
      }
      v12 = (_DWORD *)a1[1];
    }
    else
    {
      v12 = v6;
    }
    v16 = -1030792151 * (v11 - v5);
    result = (int)&v12[v9 / 4u];
    a1[1] = &v12[v9 / 4u];
    if ( v16 > 0 )
    {
      do
      {
        --v16;
        *(v6 - 25) = *(v11 - 25);
        *(v6 - 24) = *(v11 - 24);
        *(v6 - 23) = *(v11 - 23);
        *(v6 - 22) = *(v11 - 22);
        *(v6 - 21) = *(v11 - 21);
        *(v6 - 20) = *(v11 - 20);
        *(v6 - 19) = *(v11 - 19);
        *(v6 - 18) = *(v11 - 18);
        *(v6 - 17) = *(v11 - 17);
        *(v6 - 16) = *(v11 - 16);
        *(v6 - 15) = *(v11 - 15);
        *(v6 - 14) = *(v11 - 14);
        *(v6 - 13) = *(v11 - 13);
        *(v6 - 12) = *(v11 - 12);
        *(v6 - 11) = *(v11 - 11);
        *(v6 - 10) = *(v11 - 10);
        *(v6 - 9) = *(v11 - 9);
        *(v6 - 8) = *(v11 - 8);
        *(v6 - 7) = *(v11 - 7);
        *(v6 - 6) = *(v11 - 6);
        *(v6 - 5) = *(v11 - 5);
        *(v6 - 4) = *(v11 - 4);
        *(v6 - 3) = *(v11 - 3);
        *(v6 - 2) = *(v11 - 2);
        result = *(v11 - 1);
        v11 -= 25;
        *(v6 - 1) = result;
        v6 -= 25;
      }
      while ( v16 );
    }
    v17 = -1030792151 * (v9 >> 2);
    if ( v17 > 0 )
    {
      do
      {
        --v17;
        *v5 = *a4;
        v5[1] = a4[1];
        v5[2] = a4[2];
        v5[3] = a4[3];
        v5[4] = a4[4];
        v5[5] = a4[5];
        v5[6] = a4[6];
        v5[7] = a4[7];
        v5[8] = a4[8];
        v5[9] = a4[9];
        v5[10] = a4[10];
        v5[11] = a4[11];
        v5[12] = a4[12];
        v5[13] = a4[13];
        v5[14] = a4[14];
        v5[15] = a4[15];
        v5[16] = a4[16];
        v5[17] = a4[17];
        v5[18] = a4[18];
        v5[19] = a4[19];
        v5[20] = a4[20];
        v5[21] = a4[21];
        v5[22] = a4[22];
        v5[23] = a4[23];
        v5[24] = a4[24];
        v5 += 25;
      }
      while ( v17 );
    }
  }
  return result;
}


// ===== 652d6c std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::ps::SParticle*,uint,glitch::ps::SParticle const&) =====
void __fastcall std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        _DWORD *a2,
        unsigned int a3,
        _DWORD *a4)
{
  size_t v8; // r9
  _DWORD *v9; // r0
  char *v10; // r3
  _DWORD *v11; // r8
  int v12; // r6
  _DWORD *v13; // r6
  int v14; // r1
  _DWORD *v15; // r2
  int v16; // r0
  _DWORD *v17; // r2
  int v18; // r3
  _DWORD *v19; // r4
  char *v20; // r0

  if ( a3 )
  {
    if ( a3 <= -1030792151 * ((a1[2] - a1[1]) >> 2) )
    {
      std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 25
         * std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = GlitchAlloc(v8 * 4, 0);
      v10 = (char *)*a1;
      v11 = v9;
      v12 = -1030792151 * (((int)a2 - *a1) >> 2);
      if ( v12 > 0 )
      {
        v14 = -1030792151 * (((int)a2 - *a1) >> 2);
        v15 = v9;
        do
        {
          --v14;
          *v15 = *(_DWORD *)v10;
          v15[1] = *((_DWORD *)v10 + 1);
          v15[2] = *((_DWORD *)v10 + 2);
          v15[3] = *((_DWORD *)v10 + 3);
          v15[4] = *((_DWORD *)v10 + 4);
          v15[5] = *((_DWORD *)v10 + 5);
          v15[6] = *((_DWORD *)v10 + 6);
          v15[7] = *((_DWORD *)v10 + 7);
          v15[8] = *((_DWORD *)v10 + 8);
          v15[9] = *((_DWORD *)v10 + 9);
          v15[10] = *((_DWORD *)v10 + 10);
          v15[11] = *((_DWORD *)v10 + 11);
          v15[12] = *((_DWORD *)v10 + 12);
          v15[13] = *((_DWORD *)v10 + 13);
          v15[14] = *((_DWORD *)v10 + 14);
          v15[15] = *((_DWORD *)v10 + 15);
          v15[16] = *((_DWORD *)v10 + 16);
          v15[17] = *((_DWORD *)v10 + 17);
          v15[18] = *((_DWORD *)v10 + 18);
          v15[19] = *((_DWORD *)v10 + 19);
          v15[20] = *((_DWORD *)v10 + 20);
          v15[21] = *((_DWORD *)v10 + 21);
          v15[22] = *((_DWORD *)v10 + 22);
          v15[23] = *((_DWORD *)v10 + 23);
          v16 = *((_DWORD *)v10 + 24);
          v10 += 100;
          v15[24] = v16;
          v15 += 25;
        }
        while ( v14 );
        v13 = &v11[25 * v12];
      }
      else
      {
        v13 = v9;
      }
      if ( a3 == 1 )
      {
        v17 = v13 + 25;
        *v13 = *a4;
        v13[1] = a4[1];
        v13[2] = a4[2];
        v13[3] = a4[3];
        v13[4] = a4[4];
        v13[5] = a4[5];
        v13[6] = a4[6];
        v13[7] = a4[7];
        v13[8] = a4[8];
        v13[9] = a4[9];
        v13[10] = a4[10];
        v13[11] = a4[11];
        v13[12] = a4[12];
        v13[13] = a4[13];
        v13[14] = a4[14];
        v13[15] = a4[15];
        v13[16] = a4[16];
        v13[17] = a4[17];
        v13[18] = a4[18];
        v13[19] = a4[19];
        v13[20] = a4[20];
        v13[21] = a4[21];
        v13[22] = a4[22];
        v13[23] = a4[23];
        v13[24] = a4[24];
      }
      else
      {
        v17 = &v13[25 * a3];
        v18 = -1030792151 * ((int)(100 * a3) >> 2);
        if ( v18 > 0 )
        {
          while ( 1 )
          {
            --v18;
            *v13 = *a4;
            v13[1] = a4[1];
            v13[2] = a4[2];
            v13[3] = a4[3];
            v13[4] = a4[4];
            v13[5] = a4[5];
            v13[6] = a4[6];
            v13[7] = a4[7];
            v13[8] = a4[8];
            v13[9] = a4[9];
            v13[10] = a4[10];
            v13[11] = a4[11];
            v13[12] = a4[12];
            v13[13] = a4[13];
            v13[14] = a4[14];
            v13[15] = a4[15];
            v13[16] = a4[16];
            v13[17] = a4[17];
            v13[18] = a4[18];
            v13[19] = a4[19];
            v13[20] = a4[20];
            v13[21] = a4[21];
            v13[22] = a4[22];
            v13[23] = a4[23];
            v13[24] = a4[24];
            if ( !v18 )
              break;
            v13 += 25;
          }
        }
      }
      v19 = std::priv::__ucopy_ptrs<glitch::ps::SParticle *,glitch::ps::SParticle *>(a2, a1[1], v17);
      v20 = (char *)a1[1];
      if ( v20 != (char *)*a1 )
        v20 += -100 * ((42949673 * ((unsigned int)&v20[-*a1 - 100] >> 2)) & 0x3FFFFFFF) - 100;
      GlitchFree(v20);
      a1[1] = v19;
      a1[2] = &v11[v8];
      *a1 = v11;
    }
  }
}


// ===== 65311c std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::ps::SParticle const&) =====
void __fastcall std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        _DWORD *a1,
        unsigned int a2,
        _DWORD *a3)
{
  _DWORD *v3; // r12
  unsigned int v4; // r5
  _DWORD *v5; // r1

  v3 = (_DWORD *)a1[1];
  v4 = -1030792151 * (((int)v3 - *a1) >> 2);
  if ( a2 >= v4 )
  {
    std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      (_DWORD *)a1[1],
      a2 - v4,
      a3);
  }
  else
  {
    v5 = (_DWORD *)(*a1 + 100 * a2);
    if ( v5 != v3 )
      std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)a1,
        v5,
        (_DWORD *)a1[1]);
  }
}


// ===== 65317c glitch::ps::PGenerationModel<glitch::ps::SParticle>::generateParticles(void) =====
int __fastcall glitch::ps::PGenerationModel<glitch::ps::SParticle>::generateParticles(float *a1)
{
  float v1; // r6
  int v3; // r3
  int v4; // r8
  int v5; // r5
  float v6; // r0
  float v7; // r1
  float v8; // r10
  int v9; // r0
  int v10; // r5
  int v11; // r1
  int v12; // r0
  _DWORD v14[6]; // [sp+4h] [bp-68h] BYREF
  char v15; // [sp+1Ch] [bp-50h]
  char v16; // [sp+1Dh] [bp-4Fh]
  char v17; // [sp+1Eh] [bp-4Eh]
  char v18; // [sp+1Fh] [bp-4Dh]
  int v19; // [sp+20h] [bp-4Ch]
  int v20; // [sp+24h] [bp-48h]
  int v21; // [sp+28h] [bp-44h]
  int v22; // [sp+2Ch] [bp-40h]
  int v23; // [sp+30h] [bp-3Ch]
  int v24; // [sp+34h] [bp-38h]
  int v25; // [sp+38h] [bp-34h]
  int v26; // [sp+3Ch] [bp-30h]
  int v27; // [sp+58h] [bp-14h]
  int v28; // [sp+5Ch] [bp-10h]
  int v29; // [sp+60h] [bp-Ch]

  v1 = *a1;
  v3 = (int)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v4 = *(_DWORD *)(v3 + 40);
  v5 = *(_DWORD *)(v3 + 36);
  v6 = *(float *)(v3 + 72) - *(float *)(v3 + 76);
  v7 = a1[1];
  a1[3] = v6;
  v8 = (float)(v6 * v7) + a1[4];
  v9 = (int)v8;
  a1[4] = v8 - (float)(int)v8;
  if ( (int)v8 <= 0 )
    return *(_DWORD *)((char *)a1 + *(_DWORD *)(LODWORD(v1) - 12) + 40);
  v10 = -1030792151 * ((v4 - v5) >> 2);
  v11 = *((_DWORD *)a1 + 2);
  if ( v9 + v10 <= v11 || !v11 )
    v11 = v9 + v10;
  v12 = (int)a1 + *(_DWORD *)(LODWORD(v1) - 12) + 36;
  v29 = 0;
  memset(v14, 0, sizeof(v14));
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v18 = -1;
  v23 = 1065353216;
  v15 = -1;
  v16 = -1;
  v17 = -1;
  v19 = 1065353216;
  std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    v12,
    v11,
    v14);
  return *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12) + 36) + 100 * v10;
}


// ===== 6532bc `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::generateParticles(void) =====
int __fastcall `virtual thunk to'glitch::ps::PGenerationModel<glitch::ps::SParticle>::generateParticles(_DWORD *a1)
{
  return glitch::ps::PGenerationModel<glitch::ps::SParticle>::generateParticles((float *)((char *)a1
                                                                                        + *(_DWORD *)(*a1 - 48)));
}


// ===== 6532cc glitch::ps::IParticleSystem<glitch::ps::SParticle>::update(float,glitch::video::SColor &) =====
int __fastcall glitch::ps::IParticleSystem<glitch::ps::SParticle>::update(int *a1, float a2, int a3)
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
  _DWORD v23[6]; // [sp+4h] [bp-68h] BYREF
  char v24; // [sp+1Ch] [bp-50h]
  char v25; // [sp+1Dh] [bp-4Fh]
  char v26; // [sp+1Eh] [bp-4Eh]
  char v27; // [sp+1Fh] [bp-4Dh]
  int v28; // [sp+20h] [bp-4Ch]
  int v29; // [sp+24h] [bp-48h]
  int v30; // [sp+28h] [bp-44h]
  int v31; // [sp+2Ch] [bp-40h]
  int v32; // [sp+30h] [bp-3Ch]
  int v33; // [sp+34h] [bp-38h]
  int v34; // [sp+38h] [bp-34h]
  int v35; // [sp+3Ch] [bp-30h]
  int v36; // [sp+58h] [bp-14h]
  int v37; // [sp+5Ch] [bp-10h]
  int v38; // [sp+60h] [bp-Ch]

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
  v16 = -1030792151 * ((int)(v15 - v14) >> 2);
  if ( v15 != v14 )
  {
    do
    {
      while ( *(float *)(v14 + 60) < *(float *)(v14 + 64) && *(float *)(v14 + 60) >= 0.0 )
      {
        v14 += 100;
        if ( v15 == v14 )
          goto LABEL_13;
      }
      do
      {
        v15 -= 100;
        --v16;
      }
      while ( v15 > v14 && (*(float *)(v15 + 60) >= *(float *)(v15 + 64) || *(float *)(v15 + 60) < 0.0) );
      if ( v14 == v15 )
        break;
      v17 = v14;
      v14 += 100;
      std::swap<glitch::ps::SParticle>(v17, v15);
    }
    while ( v15 != v14 );
LABEL_13:
    v12 = *a1;
  }
  v18 = (int)a1 + *(_DWORD *)(v12 - 12);
  v32 = 1065353216;
  v28 = 1065353216;
  v27 = -1;
  v38 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = -1;
  v25 = -1;
  v26 = -1;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<glitch::ps::SParticle,glitch::core::SAllocator<glitch::ps::SParticle,(glitch::memory::E_MEMORY_HINT)0>>::resize(
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


// ===== 6536bc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 220);
}


// ===== 6536c4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 208);
}


// ===== 6536cc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 6536d4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 148);
}


// ===== 6536dc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 120);
}


// ===== 6536e4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 96);
}


// ===== 6536ec `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 56);
}


// ===== 6536f4 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 36);
}


// ===== 6536fc `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 653704 glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  int v2; // r6
  int v3; // r8
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0
  glitch::video::CVertexStreams *v6; // r10
  int v8; // r3

  *(_DWORD *)a1 = off_981AD4;
  v2 = a1 + 384;
  *(_DWORD *)(a1 + 36) = off_981B14;
  *(_DWORD *)(a1 + 56) = off_981B34;
  *(_DWORD *)(a1 + 96) = off_981B58;
  *(_DWORD *)(a1 + 384) = off_981CBC;
  *(_DWORD *)(a1 + 16) = off_981AF8;
  *(_DWORD *)(a1 + 120) = off_981B74;
  *(_DWORD *)(a1 + 148) = off_981B94;
  *(_DWORD *)(a1 + 168) = off_981BC0;
  v3 = a1 + 220;
  *(_DWORD *)(a1 + 208) = off_981BE0;
  *(_DWORD *)(a1 + 220) = off_982924;
  *(int *)((char *)&dword_A4 + a1 + 220) = (int)off_9829E0;
  LC_API_FREE_0(*(void **)(a1 + 376));
  *(_DWORD *)(v3 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(v3);
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
  *(_DWORD *)(a1 + 208) = off_9827D4;
  *(int *)((char *)&dword_B0 + a1 + 208) = (int)off_982880;
  *(_DWORD *)(a1 + 168) = off_982684;
  *(int *)((char *)&elf_hash_nchain + a1 + 168) = (int)off_982730;
  glitch::ps::PForcesModel<glitch::ps::SParticle>::~PForcesModel((int *)(a1 + 148), (int *)off_981A7C);
  *(_DWORD *)(a1 + 120) = off_9823DC;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_982488;
  *(_DWORD *)(a1 + 96) = off_982294;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_98233C;
  v8 = *(_DWORD *)(a1 + 100);
  if ( v8 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 28))(*(_DWORD *)(a1 + 100));
  *(_DWORD *)(a1 + 56) = off_982144;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_9821F4;
  *(_DWORD *)(a1 + 36) = off_981FF4;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_9820A0;
  *(_DWORD *)(a1 + 16) = off_981EAC;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_981F54;
  *(_DWORD *)a1 = off_981D5C;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_981E0C;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
  return a1;
}


// ===== 653924 `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 653934 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 220);
}


// ===== 65393c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 208);
}


// ===== 653944 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 168);
}


// ===== 65394c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 148);
}


// ===== 653954 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 120);
}


// ===== 65395c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 96);
}


// ===== 653964 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 56);
}


// ===== 65396c `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 36);
}


// ===== 653974 `non-virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
int __fastcall `non-virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        int a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(a1 - 16);
}


// ===== 65397c glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        void *a1)
{
  glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 653998 `virtual thunk to'glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin() =====
void *__fastcall `virtual thunk to'glitch::ps::IParticleSystem<glitch::ps::SParticle> * glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin(
        _DWORD *a1)
{
  return glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::~Mixin((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 6539a8 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        int a1)
{
  int v2; // r6
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  glitch::video::CVertexStreams *v5; // r5
  bool v6; // zf

  *(_DWORD *)a1 = off_980C3C;
  v2 = a1 + 164;
  *(_DWORD *)(a1 + 164) = off_980CF8;
  LC_API_FREE_0(*(void **)(a1 + 156));
  *(_DWORD *)(a1 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(a1);
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
    glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
    return a1;
  }
  else
  {
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(a1 + 8));
    glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
    return a1;
  }
}


// ===== 653a74 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 653a84 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        void *a1)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 653aa0 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 653ab0 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        int a1)
{
  int v2; // r6
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  glitch::video::CVertexStreams *v5; // r5
  bool v6; // zf

  *(_DWORD *)a1 = off_982A84;
  v2 = a1 + 164;
  *(_DWORD *)(a1 + 164) = off_982B40;
  LC_API_FREE_0(*(void **)(a1 + 156));
  *(_DWORD *)(a1 + 156) = 0;
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::deallocateBuffer(a1);
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
    glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
    return a1;
  }
  else
  {
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)(a1 + 8));
    glitch::ps::IParticleContext<glitch::ps::SParticle>::~IParticleContext(v2);
    return a1;
  }
}


// ===== 653b7c `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel((int)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 653b8c glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        void *a1)
{
  glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel((int)a1);
  LC_API_FREE_0(a1);
  return a1;
}


// ===== 653ba8 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel() =====
void *__fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::~PRenderDataBillboardModel((char *)a1 + *(_DWORD *)(*a1 - 12));
}


// ===== 653bb8 glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotion(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotion(int a1, float *a2, float *a3)
{
  int v5; // r1
  const void *v6; // r0
  float result; // r0
  float v8; // r8
  float *v9; // r0
  float v10; // r9
  float *v11; // r3
  float v12; // r0
  float v13; // r10
  float v14; // r7
  float v15; // r0
  float v16; // r7
  float v17; // r10
  float v18; // r2
  float v19; // r3
  unsigned int v20; // r1
  float v21; // r0
  double v22; // r0
  double v23; // r0
  float v24; // r9
  float v25; // r6
  float *v26; // r6
  float v27; // r0
  float v28; // r9
  float v29; // r10
  double v30; // r0
  unsigned int v31; // [sp+10h] [bp-CCh]
  glitch::ps::PSRandom *v32; // [sp+14h] [bp-C8h]
  float v33; // [sp+18h] [bp-C4h]
  float v35[17]; // [sp+40h] [bp-9Ch] BYREF
  _DWORD v36[3]; // [sp+84h] [bp-58h] BYREF
  _DWORD v37[3]; // [sp+90h] [bp-4Ch] BYREF
  _DWORD v38[3]; // [sp+9Ch] [bp-40h] BYREF
  float v39; // [sp+A8h] [bp-34h] BYREF
  float v40; // [sp+ACh] [bp-30h]
  float v41; // [sp+B0h] [bp-2Ch]
  float v42[3]; // [sp+B4h] [bp-28h] BYREF
  float v43[3]; // [sp+C0h] [bp-1Ch] BYREF
  float v44; // [sp+CCh] [bp-10h] BYREF
  float v45; // [sp+D0h] [bp-Ch]
  float v46; // [sp+D4h] [bp-8h]

  v32 = (glitch::ps::PSRandom *)(*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 24))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 32))(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12));
  if ( v5 )
  {
    v6 = (const void *)(*(int (__fastcall **)(int, int))(*(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) + 32))(
                         a1 + *(_DWORD *)(*(_DWORD *)a1 - 12),
                         v5);
    LOBYTE(v35[16]) = 0;
    memcpy(v35, v6, 0x41u);
  }
  else
  {
    LC_API_MEMSET_0(v35, 0, 0x40u);
    LOBYTE(v35[16]) = 1;
    v35[15] = 1.0;
    v35[0] = 1.0;
    v35[5] = 1.0;
    v35[10] = 1.0;
  }
  v33 = *(float *)(a1 + 16) * 180.0;
  result = *(float *)(a1 + 20) * *(float *)(a1 + 24);
  v8 = result;
  if ( a2 != a3 )
  {
    v45 = 0.0;
    v44 = 0.0;
    v46 = 1.0;
    do
    {
      while ( 1 )
      {
        if ( v8 == 0.0 )
        {
          v16 = 0.0;
        }
        else
        {
          LODWORD(v30) = glitch::ps::PSRandom::Rand(v32);
          *(float *)&v30 = v30;
          v16 = (float)(v8 * *(float *)&v30) + (float)(v8 * -0.5);
        }
        v17 = *(float *)(a1 + 4);
        if ( v17 != 0.0 || *(float *)(a1 + 8) != 0.0 || *(float *)(a1 + 12) != 0.0 )
          break;
        glitch::ps::PSRandom::RandVec((glitch::ps::PSRandom *)v43);
        v42[0] = v43[0] - *(float *)&glitch::ps::vHalf;
        v42[1] = v43[1] - *(float *)&dword_9F6FF4;
        v42[2] = v43[2] - *(float *)&dword_9F6FF8;
        v9 = (float *)glitch::core::vector3d<float>::normalize(v42);
        v10 = *v9;
        v11 = v9;
        v12 = v16;
        a2[3] = v10;
        v13 = v11[1];
        a2[4] = v13;
        v14 = v11[2];
        a2[5] = v14;
        v15 = v12 + *(float *)(a1 + 20);
        a2[3] = v15 * v10;
        a2[4] = v15 * v13;
        result = v15 * v14;
        a2[5] = result;
        a2 += 25;
        if ( a3 == a2 )
          return result;
      }
      if ( *(float *)(a1 + 16) <= 0.0 )
      {
        v24 = *(float *)(a1 + 8);
        v25 = *(float *)(a1 + 12);
      }
      else
      {
        v18 = *(float *)(a1 + 8);
        v19 = *(float *)(a1 + 12);
        v39 = *(float *)(a1 + 4);
        v40 = v18;
        v41 = v19;
        v31 = glitch::ps::PSRandom::Rand(v32);
        v21 = COERCE_DOUBLE(__PAIR64__(v20, v31));
        memset(v38, 0, sizeof(v38));
        glitch::core::vector3d<float>::rotateXYBy(
          &v39,
          v38,
          COERCE_UNSIGNED_INT64((float)((float)(v33 * v21) + (float)(v33 * -0.5))),
          HIDWORD(COERCE_UNSIGNED_INT64((float)((float)(v33 * v21) + (float)(v33 * -0.5)))),
          v38);
        LODWORD(v22) = glitch::ps::PSRandom::Rand(v32);
        *(float *)&v22 = v22;
        memset(v37, 0, sizeof(v37));
        glitch::core::vector3d<float>::rotateYZBy(
          &v39,
          v37,
          COERCE_UNSIGNED_INT64((float)((float)(v33 * -0.5) + (float)(v33 * *(float *)&v22))),
          HIDWORD(COERCE_UNSIGNED_INT64((float)((float)(v33 * -0.5) + (float)(v33 * *(float *)&v22)))),
          v37);
        LODWORD(v23) = glitch::ps::PSRandom::Rand(v32);
        *(float *)&v23 = v23;
        memset(v36, 0, sizeof(v36));
        glitch::core::vector3d<float>::rotateXZBy(
          &v39,
          v36,
          COERCE_UNSIGNED_INT64((float)((float)(v33 * -0.5) + (float)(v33 * *(float *)&v23))),
          HIDWORD(COERCE_UNSIGNED_INT64((float)((float)(v33 * -0.5) + (float)(v33 * *(float *)&v23)))),
          v36);
        v17 = v39;
        v24 = v40;
        v25 = v41;
      }
      v44 = (float)((float)(v17 * v35[0]) + (float)(v24 * v35[4])) + (float)(v25 * v35[8]);
      v45 = (float)((float)(v17 * v35[1]) + (float)(v24 * v35[5])) + (float)(v25 * v35[9]);
      v46 = (float)((float)(v17 * v35[2]) + (float)(v24 * v35[6])) + (float)(v25 * v35[10]);
      v26 = (float *)glitch::core::vector3d<float>::normalize(&v44);
      v27 = v16 + *(float *)(a1 + 20);
      v28 = v27 * v26[1];
      v29 = v27 * v26[2];
      result = v27 * *v26;
      a2[4] = v28;
      a2[3] = result;
      a2[5] = v29;
      a2 += 25;
    }
    while ( a3 != a2 );
  }
  return result;
}


// ===== 6540dc `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotion(glitch::ps::SParticle*,glitch::ps::SParticle*) =====
float __fastcall `virtual thunk to'glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotion(
        _DWORD *a1,
        float *a2,
        float *a3)
{
  return glitch::ps::PMotionModel<glitch::ps::SParticle>::initPMotion((int)a1 + *(_DWORD *)(*a1 - 88), a2, a3);
}


// ===== 6540ec glitch::ps::PMotionModel<glitch::ps::SParticle>::PMotionModel(void) =====
int *__fastcall glitch::ps::PMotionModel<glitch::ps::SParticle>::PMotionModel(int *a1, int *a2)
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
  a1[3] = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v16[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v5, "Direction");
  v16[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v17,
    (_DWORD *)(v5 + 48),
    v16);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v14[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v6, "DirectionVariation");
  v14[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v15,
    (_DWORD *)(v6 + 48),
    v14);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v12[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v7, "Speed");
  v12[1] = (unsigned int)(a1 + 5);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v13,
    (_DWORD *)(v7 + 48),
    v12);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v10[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v8, "SpeedVariation");
  v10[1] = (unsigned int)(a1 + 6);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v11,
    (_DWORD *)(v8 + 48),
    v10);
  return a1;
}


// ===== 654218 glitch::ps::PSpinModel<glitch::ps::SParticle>::PSpinModel(void) =====
int *__fastcall glitch::ps::PSpinModel<glitch::ps::SParticle>::PSpinModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r5
  int v6; // r5
  int v7; // r5
  int v8; // r5
  int v9; // r5
  int v10; // r5
  int v11; // r5
  unsigned int v13[2]; // [sp+0h] [bp-74h] BYREF
  _BYTE v14[8]; // [sp+8h] [bp-6Ch] BYREF
  unsigned int v15[2]; // [sp+10h] [bp-64h] BYREF
  _BYTE v16[8]; // [sp+18h] [bp-5Ch] BYREF
  unsigned int v17[2]; // [sp+20h] [bp-54h] BYREF
  _BYTE v18[8]; // [sp+28h] [bp-4Ch] BYREF
  unsigned int v19[2]; // [sp+30h] [bp-44h] BYREF
  _BYTE v20[8]; // [sp+38h] [bp-3Ch] BYREF
  unsigned int v21[2]; // [sp+40h] [bp-34h] BYREF
  _BYTE v22[8]; // [sp+48h] [bp-2Ch] BYREF
  unsigned int v23[2]; // [sp+50h] [bp-24h] BYREF
  _BYTE v24[8]; // [sp+58h] [bp-1Ch] BYREF
  unsigned int v25[2]; // [sp+60h] [bp-14h] BYREF
  _BYTE v26[12]; // [sp+68h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[7] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v21[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v5, "SpinTime");
  v21[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v22,
    (_DWORD *)(v5 + 48),
    v21);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v19[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v6, "SpinVariation");
  v19[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v20,
    (_DWORD *)(v6 + 48),
    v19);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v17[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v7, "SpinPhase");
  v17[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v18,
    (_DWORD *)(v7 + 48),
    v17);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v15[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v8, "SpinPhaseVariation");
  v15[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v16,
    (_DWORD *)(v8 + 48),
    v15);
  v9 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v25[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v9, "SpinAxis");
  v25[1] = (unsigned int)(a1 + 5);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v26,
    (_DWORD *)(v9 + 48),
    v25);
  v10 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v13[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v10, "SpinAxisVariation");
  v13[1] = (unsigned int)(a1 + 8);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v14,
    (_DWORD *)(v10 + 48),
    v13);
  v11 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v23[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v11, "SpinAxisType");
  v23[1] = (unsigned int)(a1 + 9);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v24,
    (_DWORD *)(v11 + 48),
    v23);
  return a1;
}


// ===== 6543f8 glitch::ps::PSizeModel<glitch::ps::SParticle>::PSizeModel(void) =====
int *__fastcall glitch::ps::PSizeModel<glitch::ps::SParticle>::PSizeModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r5
  int v6; // r5
  int v7; // r5
  int v8; // r5
  _DWORD v10[2]; // [sp+0h] [bp-44h] BYREF
  _BYTE v11[8]; // [sp+8h] [bp-3Ch] BYREF
  _DWORD v12[2]; // [sp+10h] [bp-34h] BYREF
  _BYTE v13[8]; // [sp+18h] [bp-2Ch] BYREF
  _DWORD v14[2]; // [sp+20h] [bp-24h] BYREF
  _BYTE v15[8]; // [sp+28h] [bp-1Ch] BYREF
  _DWORD v16[2]; // [sp+30h] [bp-14h] BYREF
  _BYTE v17[12]; // [sp+38h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[1] = 1065353216;
  a1[4] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v16[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v5, "TargetSize");
  v16[1] = a1 + 1;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v17,
    v5 + 48,
    v16);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v14[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v6, "SizeVariation");
  v14[1] = a1 + 2;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v15,
    v6 + 48,
    v14);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v12[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v7, "SizeGrowthTime");
  v12[1] = a1 + 3;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v13,
    v7 + 48,
    v12);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v10[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v8, "SizeFadeTime");
  v10[1] = a1 + 4;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v11,
    v8 + 48,
    v10);
  return a1;
}


// ===== 65452c glitch::ps::PLifeModel<glitch::ps::SParticle>::PLifeModel(void) =====
int *__fastcall glitch::ps::PLifeModel<glitch::ps::SParticle>::PLifeModel(int *a1, int *a2)
{
  int v2; // r3
  char *v4; // r5
  char *v5; // r5
  _DWORD v7[2]; // [sp+0h] [bp-24h] BYREF
  _BYTE v8[8]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v9[2]; // [sp+10h] [bp-14h] BYREF
  _BYTE v10[12]; // [sp+18h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = (char *)a1 + *(_DWORD *)(*a1 - 12);
  v9[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString((int)v4, "Life");
  v9[1] = a1 + 1;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v10,
    v4 + 48,
    v9);
  v5 = (char *)a1 + *(_DWORD *)(*a1 - 12);
  v7[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString((int)v5, "LifeVariation");
  v7[1] = a1 + 2;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v8,
    v5 + 48,
    v7);
  return a1;
}


// ===== 6545d0 glitch::ps::PGenerationModel<glitch::ps::SParticle>::PGenerationModel(void) =====
int *__fastcall glitch::ps::PGenerationModel<glitch::ps::SParticle>::PGenerationModel(int *a1, int *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r5
  int v6; // r5
  _DWORD v8[2]; // [sp+0h] [bp-24h] BYREF
  _BYTE v9[8]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v10[2]; // [sp+10h] [bp-14h] BYREF
  _BYTE v11[12]; // [sp+18h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[1] = 1065353216;
  a1[2] = 1;
  a1[4] = 0;
  a1[3] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v8[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v5, "BirthRate");
  v8[1] = a1 + 1;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v9,
    v5 + 48,
    v8);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v10[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v6, "MaxParticles");
  v10[1] = a1 + 2;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v11,
    v6 + 48,
    v10);
  return a1;
}


// ===== 654690 glitch::ps::PColorModel<glitch::ps::SParticle>::PColorModel(void) =====
int *__fastcall glitch::ps::PColorModel<glitch::ps::SParticle>::PColorModel(int *a1, int *a2)
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
  unsigned int v15[2]; // [sp+0h] [bp-94h] BYREF
  _BYTE v16[8]; // [sp+8h] [bp-8Ch] BYREF
  unsigned int v17[2]; // [sp+10h] [bp-84h] BYREF
  _BYTE v18[8]; // [sp+18h] [bp-7Ch] BYREF
  unsigned int v19[2]; // [sp+20h] [bp-74h] BYREF
  _BYTE v20[8]; // [sp+28h] [bp-6Ch] BYREF
  unsigned int v21[2]; // [sp+30h] [bp-64h] BYREF
  _BYTE v22[8]; // [sp+38h] [bp-5Ch] BYREF
  unsigned int v23[2]; // [sp+40h] [bp-54h] BYREF
  _BYTE v24[8]; // [sp+48h] [bp-4Ch] BYREF
  unsigned int v25[2]; // [sp+50h] [bp-44h] BYREF
  _BYTE v26[8]; // [sp+58h] [bp-3Ch] BYREF
  unsigned int v27[2]; // [sp+60h] [bp-34h] BYREF
  _BYTE v28[8]; // [sp+68h] [bp-2Ch] BYREF
  unsigned int v29[2]; // [sp+70h] [bp-24h] BYREF
  _BYTE v30[8]; // [sp+78h] [bp-1Ch] BYREF
  unsigned int v31[2]; // [sp+80h] [bp-14h] BYREF
  _BYTE v32[12]; // [sp+88h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v4 = *a1;
  a1[3] = 0;
  a1[7] = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v5 = (int)a1 + *(_DWORD *)(v4 - 12);
  v31[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v5, "TextureTransformTrack");
  v31[1] = (unsigned int)(a1 + 1);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v32,
    (_DWORD *)(v5 + 48),
    v31);
  v6 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v29[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v6, "DiffuseColorTrack");
  v29[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v30,
    (_DWORD *)(v6 + 48),
    v29);
  v7 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v27[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v7, "AnimKeyMappingType");
  v27[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v28,
    (_DWORD *)(v7 + 48),
    v27);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v25[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v8, "AnimOffset");
  v25[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v26,
    (_DWORD *)(v8 + 48),
    v25);
  v9 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v23[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v9, "AnimOffsetVariation");
  v23[1] = (unsigned int)(a1 + 5);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v24,
    (_DWORD *)(v9 + 48),
    v23);
  v10 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v21[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v10, "AnimLength");
  v21[1] = (unsigned int)(a1 + 6);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v22,
    (_DWORD *)(v10 + 48),
    v21);
  v11 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v19[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v11, "AnimLengthVariation");
  v19[1] = (unsigned int)(a1 + 7);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v20,
    (_DWORD *)(v11 + 48),
    v19);
  v12 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v17[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v12, "AnimScaleMultiplier");
  v17[1] = (unsigned int)(a1 + 8);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v18,
    (_DWORD *)(v12 + 48),
    v17);
  v13 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v15[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v13, "AnimScaleMultiplierVariation");
  v15[1] = (unsigned int)(a1 + 9);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v16,
    (_DWORD *)(v13 + 48),
    v15);
  return a1;
}


// ===== 6548fc glitch::ps::PEmitterModel<glitch::ps::SParticle>::PEmitterModel(void) =====
int *__fastcall glitch::ps::PEmitterModel<glitch::ps::SParticle>::PEmitterModel(int *a1, int *a2)
{
  int v2; // r3
  void *v4; // r5
  int v5; // r3
  int v6; // r2
  int v7; // r5
  int v8; // r5
  int v9; // r5
  int v10; // r5
  _DWORD v12[3]; // [sp+0h] [bp-5Ch] BYREF
  _DWORD v13[3]; // [sp+Ch] [bp-50h] BYREF
  unsigned int v14[2]; // [sp+18h] [bp-44h] BYREF
  _BYTE v15[8]; // [sp+20h] [bp-3Ch] BYREF
  unsigned int v16[2]; // [sp+28h] [bp-34h] BYREF
  _BYTE v17[8]; // [sp+30h] [bp-2Ch] BYREF
  unsigned int v18[2]; // [sp+38h] [bp-24h] BYREF
  _BYTE v19[8]; // [sp+40h] [bp-1Ch] BYREF
  unsigned int v20[2]; // [sp+48h] [bp-14h] BYREF
  _BYTE v21[12]; // [sp+50h] [bp-Ch] BYREF

  v2 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v2 - 12)) = a2[1];
  v12[2] = 1065353216;
  v12[0] = 1065353216;
  v12[1] = 1065353216;
  v13[2] = -1082130432;
  v13[0] = -1082130432;
  v13[1] = -1082130432;
  v4 = operator new(0x5Cu, 0);
  ((void (__fastcall *)(void *, _DWORD *, _DWORD *, int))glitch::ps::PDBox::PDBox)(v4, v13, v12, v5);
  v6 = *a1;
  a1[2] = 0;
  a1[5] = 0x40000000;
  a1[3] = 0x40000000;
  a1[4] = 0x40000000;
  a1[1] = (int)v4;
  v7 = (int)a1 + *(_DWORD *)(v6 - 12);
  v20[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v7, "EmitterType");
  v20[1] = (unsigned int)(a1 + 2);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v21,
    (_DWORD *)(v7 + 48),
    v20);
  v8 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v18[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v8, "RadiusLength");
  v18[1] = (unsigned int)(a1 + 3);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v19,
    (_DWORD *)(v8 + 48),
    v18);
  v9 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v16[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v9, "Width");
  v16[1] = (unsigned int)(a1 + 4);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v17,
    (_DWORD *)(v9 + 48),
    v16);
  v10 = (int)a1 + *(_DWORD *)(*a1 - 12);
  v14[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v10, "Height");
  v14[1] = (unsigned int)(a1 + 5);
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v15,
    (_DWORD *)(v10 + 48),
    v14);
  return a1;
}


// ===== 654a74 glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::Mixin(void) =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::Mixin(
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

  glitch::ps::IParticleContext<glitch::ps::SParticle>::IParticleContext(a1 + 384);
  *(_DWORD *)a1 = off_97FF14;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_97FFC4;
  *(_DWORD *)(a1 + 8) = 123456789;
  *(_DWORD *)(a1 + 4) = 123456789;
  *(_DWORD *)(a1 + 12) = 0;
  glitch::ps::PGenerationModel<glitch::ps::SParticle>::PGenerationModel((int *)(a1 + 16), (int *)off_97FC0C);
  glitch::ps::PSizeModel<glitch::ps::SParticle>::PSizeModel((int *)(a1 + 36), (int *)off_97FC14);
  glitch::ps::PColorModel<glitch::ps::SParticle>::PColorModel(a1 + 56, off_97FC1C);
  glitch::ps::PEmitterModel<glitch::ps::SParticle>::PEmitterModel(a1 + 96, off_97FC24);
  glitch::ps::PMotionModel<glitch::ps::SParticle>::PMotionModel(a1 + 120, off_97FC2C);
  *(_DWORD *)(a1 + 148) = off_9806E4;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_98079C;
  *(_DWORD *)(a1 + 152) = 0;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 160) = 0;
  *(_BYTE *)(a1 + 164) = 0;
  glitch::ps::PSpinModel<glitch::ps::SParticle>::PSpinModel(a1 + 168, off_97FC3C);
  glitch::ps::PLifeModel<glitch::ps::SParticle>::PLifeModel((int *)(a1 + 208), (int *)off_97FC44);
  *(_DWORD *)(a1 + 220) = off_980ADC;
  v2 = a1 + 220;
  *(int *)((char *)&dword_A4 + a1 + 220) = (int)off_980B98;
  *(_WORD *)(a1 + 260) = 255;
  *(_WORD *)(a1 + 262) = 6;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = 0;
  *(_DWORD *)(a1 + 248) = 0;
  *(_DWORD *)(a1 + 252) = 0;
  *(_DWORD *)(a1 + 256) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_BYTE *)(a1 + 332) = 0;
  LC_API_MEMSET_0((void *)(a1 + 268), 0, 0x40u);
  v3 = *(_DWORD *)(a1 + 220);
  *(_DWORD *)(a1 + 344) = -1082130432;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 268) = 1065353216;
  *(_DWORD *)(a1 + 288) = 1065353216;
  *(_DWORD *)(a1 + 308) = 1065353216;
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_BYTE *)(a1 + 332) = 1;
  *(_DWORD *)(a1 + 336) = -1082130432;
  *(_DWORD *)(a1 + 340) = -1082130432;
  *(_DWORD *)(a1 + 348) = 1065353216;
  *(_DWORD *)(a1 + 352) = 1065353216;
  *(_BYTE *)(a1 + 360) = 1;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  v4 = a1 + 220 + *(_DWORD *)(v3 - 12);
  v29[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v4, "AllocateBuffer");
  v29[1] = a1 + 360;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v30,
    v4 + 48,
    v29);
  v5 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v27[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v5, "RenderMesh");
  v27[1] = a1 + 224;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v28,
    v5 + 48,
    v27);
  v6 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v25[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v6, "OutIndexBuffer");
  v25[1] = a1 + 380;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v26,
    v6 + 48,
    v25);
  v7 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v23[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v7, "RenderMaterial");
  v23[1] = a1 + 228;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v24,
    v7 + 48,
    v23);
  v8 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v21[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v8, "RenderBuffer");
  v21[1] = a1 + 364;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v22,
    v8 + 48,
    v21);
  v9 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v19[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v9, "RBufferSizeNeeded");
  v19[1] = a1 + 372;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v20,
    v9 + 48,
    v19);
  v10 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v17[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v10, "ViewMatrix");
  v17[1] = a1 + 268;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v18,
    v10 + 48,
    v17);
  v11 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v15[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v11, "BBox");
  v15[1] = a1 + 336;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    v16,
    v11 + 48,
    v15);
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12) + 4) = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12) + 5) = 0;
  v12 = (_DWORD *)(a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12));
  v12[2] = 1056964608;
  v12[4] = 0;
  v12[3] = 0;
  v13 = (_DWORD *)(a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12));
  v13[6] = 1056964608;
  v13[7] = 0;
  v13[5] = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12) + 32) = 0;
  *(_DWORD *)(a1 + 376) = operator new(1, 0);
  *(_DWORD *)a1 = off_97FC8C;
  *(_DWORD *)(a1 + 384) = off_97FE74;
  *(_DWORD *)(a1 + 16) = off_97FCB0;
  *(_DWORD *)(a1 + 36) = off_97FCCC;
  *(_DWORD *)(a1 + 56) = off_97FCEC;
  *(_DWORD *)(a1 + 96) = off_97FD10;
  *(_DWORD *)(a1 + 120) = off_97FD2C;
  *(_DWORD *)(a1 + 148) = off_97FD4C;
  *(_DWORD *)(a1 + 168) = off_97FD78;
  *(_DWORD *)(a1 + 208) = off_97FD98;
  *(_DWORD *)(a1 + 220) = off_97FDB8;
  return a1;
}


// ===== 654ec4 glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::Mixin(void) =====
int __fastcall glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::Mixin(
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

  glitch::ps::IParticleContext<glitch::ps::SParticle>::IParticleContext(a1 + 384);
  *(_DWORD *)a1 = off_981D5C;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_981E0C;
  *(_DWORD *)(a1 + 8) = 123456789;
  *(_DWORD *)(a1 + 4) = 123456789;
  *(_DWORD *)(a1 + 12) = 0;
  glitch::ps::PGenerationModel<glitch::ps::SParticle>::PGenerationModel((int *)(a1 + 16), (int *)off_981A54);
  glitch::ps::PSizeModel<glitch::ps::SParticle>::PSizeModel((int *)(a1 + 36), (int *)off_981A5C);
  glitch::ps::PColorModel<glitch::ps::SParticle>::PColorModel((int *)(a1 + 56), (int *)off_981A64);
  glitch::ps::PEmitterModel<glitch::ps::SParticle>::PEmitterModel((int *)(a1 + 96), (int *)off_981A6C);
  glitch::ps::PMotionModel<glitch::ps::SParticle>::PMotionModel((int *)(a1 + 120), (int *)off_981A74);
  *(_DWORD *)(a1 + 148) = off_98252C;
  *(int *)((char *)&elf_hash_bucket[41] + a1) = (int)off_9825E4;
  *(_DWORD *)(a1 + 152) = 0;
  *(_DWORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 160) = 0;
  *(_BYTE *)(a1 + 164) = 0;
  glitch::ps::PSpinModel<glitch::ps::SParticle>::PSpinModel((int *)(a1 + 168), (int *)off_981A84);
  glitch::ps::PLifeModel<glitch::ps::SParticle>::PLifeModel((int *)(a1 + 208), (int *)off_981A8C);
  *(_DWORD *)(a1 + 220) = off_982924;
  v2 = a1 + 220;
  *(int *)((char *)&dword_A4 + a1 + 220) = (int)off_9829E0;
  *(_WORD *)(a1 + 260) = 255;
  *(_WORD *)(a1 + 262) = 6;
  *(_DWORD *)(a1 + 224) = 0;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = 0;
  *(_DWORD *)(a1 + 248) = 0;
  *(_DWORD *)(a1 + 252) = 0;
  *(_DWORD *)(a1 + 256) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_BYTE *)(a1 + 332) = 0;
  LC_API_MEMSET_0((void *)(a1 + 268), 0, 0x40u);
  v3 = *(_DWORD *)(a1 + 220);
  *(_DWORD *)(a1 + 344) = -1082130432;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 268) = 1065353216;
  *(_DWORD *)(a1 + 288) = 1065353216;
  *(_DWORD *)(a1 + 308) = 1065353216;
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_BYTE *)(a1 + 332) = 1;
  *(_DWORD *)(a1 + 336) = -1082130432;
  *(_DWORD *)(a1 + 340) = -1082130432;
  *(_DWORD *)(a1 + 348) = 1065353216;
  *(_DWORD *)(a1 + 352) = 1065353216;
  *(_BYTE *)(a1 + 360) = 1;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  v4 = a1 + 220 + *(_DWORD *)(v3 - 12);
  v29[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v4, "AllocateBuffer");
  v29[1] = a1 + 360;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v30,
    (_DWORD *)(v4 + 48),
    v29);
  v5 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v27[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v5, "RenderMesh");
  v27[1] = a1 + 224;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v28,
    (_DWORD *)(v5 + 48),
    v27);
  v6 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v25[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v6, "OutIndexBuffer");
  v25[1] = a1 + 380;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v26,
    (_DWORD *)(v6 + 48),
    v25);
  v7 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v23[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v7, "RenderMaterial");
  v23[1] = a1 + 228;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v24,
    (_DWORD *)(v7 + 48),
    v23);
  v8 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v21[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v8, "RenderBuffer");
  v21[1] = a1 + 364;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v22,
    (_DWORD *)(v8 + 48),
    v21);
  v9 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v19[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v9, "RBufferSizeNeeded");
  v19[1] = a1 + 372;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v20,
    (_DWORD *)(v9 + 48),
    v19);
  v10 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v17[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v10, "ViewMatrix");
  v17[1] = a1 + 268;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v18,
    (_DWORD *)(v10 + 48),
    v17);
  v11 = a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12);
  v15[0] = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v11, "BBox");
  v15[1] = a1 + 336;
  std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v16,
    (_DWORD *)(v11 + 48),
    v15);
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12) + 4) = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12) + 5) = 0;
  v12 = (_DWORD *)(a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12));
  v12[2] = 1056964608;
  v12[4] = 0;
  v12[3] = 0;
  v13 = (_DWORD *)(a1 + 220 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12));
  v13[6] = 1056964608;
  v13[7] = 0;
  v13[5] = 0;
  *(_BYTE *)(v2 + *(_DWORD *)(*(_DWORD *)(a1 + 220) - 12) + 32) = 0;
  *(_DWORD *)(a1 + 376) = operator new(1u, 0);
  *(_DWORD *)a1 = off_981AD4;
  *(_DWORD *)(a1 + 384) = off_981CBC;
  *(_DWORD *)(a1 + 16) = off_981AF8;
  *(_DWORD *)(a1 + 36) = off_981B14;
  *(_DWORD *)(a1 + 56) = off_981B34;
  *(_DWORD *)(a1 + 96) = off_981B58;
  *(_DWORD *)(a1 + 120) = off_981B74;
  *(_DWORD *)(a1 + 148) = off_981B94;
  *(_DWORD *)(a1 + 168) = off_981BC0;
  *(_DWORD *)(a1 + 208) = off_981BE0;
  *(_DWORD *)(a1 + 220) = off_981C00;
  return a1;
}


// ===== 655314 glitch::ps::PSManager::createPCloudSystem(bool) =====
void *__fastcall glitch::ps::PSManager::createPCloudSystem(glitch::ps::PSManager *this, int a2)
{
  void *v2; // r4

  if ( a2 )
  {
    v2 = operator new(0x1DCu, 0);
    LC_API_MEMSET_0(v2, 0, 0x180u);
    glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::Mixin((int)v2);
  }
  else
  {
    v2 = operator new(0x1DCu, 0);
    LC_API_MEMSET_0(v2, 0, 0x180u);
    glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle,glitch::ps::PGenerationModel<glitch::ps::SParticle>,glitch::ps::PSizeModel<glitch::ps::SParticle>,glitch::ps::PColorModel<glitch::ps::SParticle>,glitch::ps::PEmitterModel<glitch::ps::SParticle>,glitch::ps::PMotionModel<glitch::ps::SParticle>,glitch::ps::PForcesModel<glitch::ps::SParticle>,glitch::ps::PSpinModel<glitch::ps::SParticle>,glitch::ps::PLifeModel<glitch::ps::SParticle>,glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>>(void)::Mixin::Mixin((int)v2);
  }
  return v2;
}


// ===== 655374 glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
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


// ===== 65540c glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float>>::reset(glitch::video::SVertexStream&,glitch::video::E_BUFFER_MAP_ACCESS) [clone] =====
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


// ===== 6554a4 glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>,glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::SParticle> const*,glitch::video::CVertexStreams const*,glitch::video::CVertexStreams*,glitch::core::CMatrix4<float> const*,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
int __fastcall glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>,glitch::ps::PSNullShaderParametersBaker>(
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
  if ( v7[10] - v7[9] > 99 )
  {
    v15 = 0;
    do
    {
      memcpy(v12, v13, v14);
      ++v15;
      v12 += v14;
    }
    while ( v15 < -1030792151 * ((v7[10] - v7[9]) >> 2) );
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
  glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::SceneNodeWorldMat = (*(int (__fastcall **)(_DWORD *))(*v7 + 32))(v7);
  v20 = (float *)v7[9];
  v21 = (float *)v7[10];
  if ( v20 != v21 )
  {
    v22 = 0;
    do
    {
      glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::getPerParticlePosition((int)v7, (int)v20);
      v23 = *(_DWORD *)(a3 + 8);
      if ( v23 )
      {
        v24 = v22;
        for ( i = 0; i != v23; ++i )
        {
          v26 = i;
          glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::convertVertexPosition(v20, v24++, v26, &v41);
        }
        v22 += i;
      }
      v20 += 25;
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


// ===== 6558b0 glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(int) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(
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

  glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>,glitch::ps::PSNullShaderParametersBaker>(
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
  v10 = v4 * -1030792151 * ((v7 - v8) >> 2);
  *(_DWORD *)(*(_DWORD *)(a1 + 16) + 8) = v10;
  v11 = *(_DWORD *)(*(_DWORD *)(a1 + 4) + 32);
  v12 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v13 = *(_DWORD *)(v12 + 36);
  v14 = *(_DWORD *)(v12 + 40);
  *(_DWORD *)(a1 + 36) = v10;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 28) = v11 * -1030792151 * ((v14 - v13) >> 2);
  return a1 + 16;
}


// ===== 6559a0 `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(int) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSNullColorBaker<glitch::ps::SParticle>,glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>,glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>,glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>>::getRenderData((int)a1 + *(_DWORD *)(*a1 - 16));
}


// ===== 6559b0 glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>,glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::SParticle> const*,glitch::video::CVertexStreams const*,glitch::video::CVertexStreams*,glitch::core::CMatrix4<float> const*,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
int __fastcall glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>,glitch::ps::PSNullShaderParametersBaker>(
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
  if ( *(_DWORD *)(a2 + 40) - *(_DWORD *)(a2 + 36) > 99 )
  {
    v15 = 0;
    do
    {
      memcpy(v12, v13, v14);
      ++v15;
      v12 += v14;
    }
    while ( v15 < -1030792151 * ((*(_DWORD *)(a2 + 40) - *(_DWORD *)(a2 + 36)) >> 2) );
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
  glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>::Normal = a5[2] + 0x80000000;
  dword_9F7BD0 = v25;
  dword_9F7BCC = v24;
  glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticleSystemPosition(a2, a5);
  v26 = *(float **)(a2 + 36);
  v59 = *(float **)(a2 + 40);
  if ( v26 != v59 )
  {
    v27 = 0;
    do
    {
      glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>::getPerParticleTexCoords();
      memcpy(&glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>::Color, v26 + 6, 4u);
      glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::getPerParticlePosition(a2, v26);
      v28 = *(_DWORD *)(v58 + 8);
      if ( v28 )
      {
        v29 = (float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::Position;
        v54 = v27 + v28;
        v30 = 0;
        do
        {
          v31 = v26[17];
          v32 = (float)(*v26 + *(float *)&glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>::Pivot)
              + (float)(v31 * v29[12]);
          *(float *)&v53 = (float)(v26[1] + *(float *)&dword_9F7CBC) + (float)(v31 * v29[13]);
          v33 = v31 * v29[14];
          v29 += 3;
          *(float *)&dword_9F7C48 = (float)(v26[2] + *(float *)&dword_9F7CC0) + v33;
          dword_9F7C40 = LODWORD(v32);
          dword_9F7C44 = v53;
          v34 = v67;
          v35 = &glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>::TexCoords[v30];
          v36 = *(unsigned __int16 *)&byte_9[(_DWORD)v66 + 5] * v27;
          *(float *)(v67 + v36) = v32;
          v37 = v34 + v36;
          *(_DWORD *)(v37 + 4) = dword_9F7C44;
          *(_DWORD *)(v37 + 8) = dword_9F7C48;
          v38 = v65;
          v39 = *(unsigned __int16 *)&byte_9[(_DWORD)v64 + 5] * v27;
          *(_DWORD *)(v65 + v39) = glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>::Normal;
          v40 = v38 + v39;
          *(_DWORD *)(v40 + 4) = dword_9F7BCC;
          *(_DWORD *)(v40 + 8) = dword_9F7BD0;
          v41 = v63;
          v42 = glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>::TexCoords[v30];
          v30 += 2;
          v43 = *(unsigned __int16 *)&byte_9[(_DWORD)v62 + 5] * v27;
          *(_DWORD *)(v63 + v43) = v42;
          *(_DWORD *)(v41 + v43 + 4) = v35[1];
          memcpy(
            (void *)(v56 + *((unsigned __int16 *)Stream + 7) * v27++),
            &glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>::Color,
            4u);
        }
        while ( v27 != v54 );
      }
      v26 += 25;
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


// ===== 65605c glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(int) =====
int __fastcall glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(
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

  glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>,glitch::ps::PSNullShaderParametersBaker>(
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
  v10 = v4 * -1030792151 * ((v7 - v8) >> 2);
  *(_DWORD *)(*(_DWORD *)(a1 + 16) + 8) = v10;
  v11 = *(_DWORD *)(*(_DWORD *)(a1 + 4) + 32);
  v12 = a1 + *(_DWORD *)(*(_DWORD *)a1 - 12);
  v13 = *(_DWORD *)(v12 + 36);
  v14 = *(_DWORD *)(v12 + 40);
  *(_DWORD *)(a1 + 36) = v10;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 28) = v11 * -1030792151 * ((v14 - v13) >> 2);
  return a1 + 16;
}


// ===== 65614c `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(int) =====
int __fastcall `virtual thunk to'glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderData(
        _DWORD *a1)
{
  return glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle,glitch::ps::PSNullShaderParametersBaker,glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>,glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>>::getRenderData((int)a1 + *(_DWORD *)(*a1 - 16));
}


// ===== 65615c glitch::collada::CParticleSystemSceneNode::setParticleMesh(boost::intrusive_ptr<glitch::scene::CMeshBuffer>) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::setParticleMesh(int a1, int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v4; // r0
  int v6; // r6
  int v7; // r0
  unsigned int v8; // r1
  glitch::IReferenceCounted *v9; // r7
  int v10; // r3
  int v11; // r5
  int v12; // r8
  int v13; // r8
  unsigned int v14; // r8
  int v15; // r8
  int v16; // r0
  int v17; // r9
  int v18; // r3
  int v19; // r1
  int i; // r11
  int v21; // r1
  unsigned int v22; // r2
  __int16 v23; // r0
  glitch::video::CVertexStreams *v24; // r10
  int v25; // r2
  _DWORD *v27; // r2
  int v28; // r0
  char *v29; // r0
  char v30; // r3
  _BYTE *v31; // r5
  char v32; // r3
  void *v33; // r0
  int v34; // [sp+14h] [bp-18h]
  int v35; // [sp+18h] [bp-14h]
  int v36; // [sp+1Ch] [bp-10h]
  glitch::IReferenceCounted *v37; // [sp+20h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v38; // [sp+24h] [bp-8h] BYREF

  v2 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v2 + 4);
  v4 = *(glitch::IReferenceCounted **)(a1 + 320);
  *(_DWORD *)(a1 + 320) = v2;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  if ( !*(_BYTE *)(a1 + 380) )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, _DWORD, _DWORD, int))(**(_DWORD **)(a1 + 384)
                                                                                                + 120))(
      &v38,
      *(_DWORD *)(a1 + 384),
      1,
      4,
      *(unsigned __int8 *)(a1 + 380),
      *(unsigned __int8 *)(a1 + 380),
      1);
    v36 = *(_DWORD *)(a1 + 320);
    v6 = *(_DWORD *)(*(_DWORD *)(a1 + 396) + 24);
    v7 = glitch::video::IBuffer::map(*(_DWORD *)(v36 + 24), 1);
    v9 = v38;
    v10 = *(_DWORD *)(a1 + 320);
    v11 = v7 + *(_DWORD *)(v36 + 28);
    v12 = *(_DWORD *)(v10 + 32);
    if ( v38 )
      v10 = *((_DWORD *)v38 + 1);
    v13 = 2 * v12;
    if ( v38 )
      *((_DWORD *)v38 + 1) = v10 + 1;
    v14 = v6 * v13;
    if ( v14 > *((_DWORD *)v9 + 3) )
    {
      v33 = (void *)glitch::ps::PS_NEW((glitch::ps *)v14, v8);
      glitch::video::IBuffer::reset(v9, v14, v33, 1);
    }
    v15 = glitch::video::IBuffer::map(v9, 4);
    if ( v6 > 0 )
    {
      v16 = *(_DWORD *)(a1 + 320);
      v17 = 0;
      v18 = 0;
      v19 = *(_DWORD *)(v16 + 32);
      for ( i = 0; ; i += v19 )
      {
        if ( v19 )
        {
          v21 = 2 * i;
          v22 = 0;
          do
          {
            v23 = *(_WORD *)(v11 + 2 * v22++);
            *(_WORD *)(v15 + v21) = v18 + v23;
            v16 = *(_DWORD *)(a1 + 320);
            v21 += 2;
          }
          while ( v22 < *(_DWORD *)(v16 + 32) );
        }
        v24 = *(glitch::video::CVertexStreams **)(v16 + 20);
        if ( v24 )
          ++*(_DWORD *)v24;
        v25 = *((_DWORD *)v24 + 2);
        if ( (*(_DWORD *)v24)-- == 1 )
        {
          v35 = v25;
          v34 = v18;
          glitch::video::CVertexStreams::~CVertexStreams(v24);
          LC_API_FREE_0(v24);
          v18 = v34;
          v25 = v35;
        }
        v16 = *(_DWORD *)(a1 + 320);
        ++v17;
        v19 = *(_DWORD *)(v16 + 32);
        if ( v17 == v6 )
          break;
        v18 += v25;
      }
    }
    v27 = *(_DWORD **)(a1 + 376);
    v28 = *(_DWORD *)(*v27 - 12);
    v37 = v38;
    v29 = (char *)v27 + v28;
    if ( v38 )
      ++*((_DWORD *)v38 + 1);
    glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<boost::intrusive_ptr<glitch::video::IBuffer>>(
      v29,
      &v37);
    if ( v37 )
      glitch::IReferenceCounted::drop(v37);
    *(_DWORD *)(a1 + 388) = 131075;
    if ( v15 )
    {
      v30 = *((_BYTE *)v9 + 19);
      if ( (v30 & 0x1Fu) <= 1 )
      {
        if ( (*((_BYTE *)v9 + 18) & 0x20) != 0 )
          (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v9 + 24))(v9);
        *((_BYTE *)v9 + 19) = 0;
      }
      else
      {
        *((_BYTE *)v9 + 19) = ((v30 & 0x1F) - 1) | v30 & 0xE0;
      }
    }
    if ( v11 )
    {
      v31 = *(_BYTE **)(v36 + 24);
      v32 = v31[19];
      if ( (v32 & 0x1Fu) <= 1 )
      {
        if ( (v31[18] & 0x20) != 0 )
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v31 + 24))(*(_DWORD *)(v36 + 24));
        v31[19] = 0;
      }
      else
      {
        v31[19] = ((v32 & 0x1F) - 1) | v32 & 0xE0;
      }
    }
    glitch::IReferenceCounted::drop(v9);
    if ( v38 )
      glitch::IReferenceCounted::drop(v38);
  }
  return glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::scene::CMeshBuffer *>(
           *(_DWORD *)(a1 + 376) + *(_DWORD *)(**(_DWORD **)(a1 + 376) - 12),
           *(_DWORD *)(a1 + 320));
}


// ===== 656450 glitch::collada::CParticleSystemSceneNode::initParticleSystem(glitch::video::IVideoDriver *,bool) =====
unsigned int __fastcall glitch::collada::CParticleSystemSceneNode::initParticleSystem(
        glitch::IReferenceCounted **this,
        glitch::video::IVideoDriver *a2,
        _BOOL4 a3)
{
  glitch::ps::PSManager *Instance; // r0
  glitch::IReferenceCounted *PCloudSystem; // r0
  int v8; // r2
  int v9; // r3
  int v10; // r2
  int v11; // r3
  int v12; // r8
  int v13; // r10
  unsigned int v14; // r0
  _DWORD *v15; // r12
  _DWORD *v16; // r1
  _DWORD *v17; // r2
  unsigned int v18; // r3
  bool v19; // cc
  _DWORD *v20; // r3
  _DWORD *v21; // r3
  _DWORD *v22; // r3
  int v23; // r3
  _DWORD *v24; // r3
  int v25; // r0
  int v26; // r3
  glitch::IReferenceCounted *v27; // r0
  int v28; // r2
  int v29; // r0
  unsigned int v30; // r1
  int v31; // r8
  int v32; // r2
  _WORD *v33; // r6
  int v34; // r3
  unsigned int v35; // r8
  int v36; // r0
  int v37; // lr
  int v38; // r12
  int v39; // r1
  __int16 v40; // r2
  _WORD *v41; // r3
  char v42; // r3
  _BYTE *v43; // r6
  char v44; // r3
  _DWORD *v45; // r2
  int v46; // r0
  char *v47; // r0
  int v48; // r5
  unsigned int v49; // r0
  _DWORD *v50; // r12
  _DWORD *v51; // r1
  _DWORD *v52; // r2
  unsigned int v53; // r3
  bool v54; // cc
  _DWORD *v55; // r3
  _DWORD *v56; // r3
  glitch::IReferenceCounted *v57; // r2
  _DWORD *v58; // r3
  int v59; // r6
  unsigned int result; // r0
  _DWORD *v61; // r12
  _DWORD *v62; // r1
  _DWORD *v63; // r2
  unsigned int v64; // r3
  bool v65; // cc
  _DWORD *v66; // r3
  _DWORD *v67; // r3
  _DWORD *v68; // r0
  int v69; // r12
  void *v70; // r0
  int v71; // r10
  int v72; // r3
  bool v73; // zf
  __int16 v74; // r1
  int v75; // r3
  int v76; // r10
  unsigned int v77; // r7
  glitch::video::IBuffer *v78; // r8
  void *v79; // r0
  _DWORD *v80; // r3
  _DWORD *v81; // r12
  int v82; // r0
  _DWORD *v83; // r12
  int v84; // r3
  glitch::IReferenceCounted *v85; // r0
  glitch::IReferenceCounted *v86; // [sp+14h] [bp-90h]
  unsigned int v87; // [sp+1Ch] [bp-88h]
  int v88; // [sp+2Ch] [bp-78h] BYREF
  int v89; // [sp+30h] [bp-74h]
  int v90; // [sp+34h] [bp-70h]
  int v91; // [sp+38h] [bp-6Ch]
  int v92; // [sp+3Ch] [bp-68h]
  __int16 v93; // [sp+40h] [bp-64h]
  __int16 v94; // [sp+42h] [bp-62h]
  _DWORD v95[3]; // [sp+44h] [bp-60h] BYREF
  _DWORD v96[3]; // [sp+50h] [bp-54h] BYREF
  _DWORD v97[2]; // [sp+5Ch] [bp-48h] BYREF
  _DWORD v98[2]; // [sp+64h] [bp-40h] BYREF
  _DWORD v99[2]; // [sp+6Ch] [bp-38h] BYREF
  _DWORD *v100; // [sp+74h] [bp-30h] BYREF
  _DWORD *v101; // [sp+78h] [bp-2Ch] BYREF
  _DWORD *v102; // [sp+7Ch] [bp-28h] BYREF
  _DWORD *v103; // [sp+80h] [bp-24h] BYREF
  _DWORD *v104; // [sp+84h] [bp-20h] BYREF
  _DWORD *v105; // [sp+88h] [bp-1Ch] BYREF
  int v106; // [sp+8Ch] [bp-18h] BYREF
  glitch::IReferenceCounted *v107; // [sp+90h] [bp-14h] BYREF
  int v108; // [sp+94h] [bp-10h] BYREF
  glitch::video::IBuffer *v109; // [sp+98h] [bp-Ch] BYREF
  int v110; // [sp+9Ch] [bp-8h] BYREF

  Instance = (glitch::ps::PSManager *)glitch::ps::PSManager::getInstance((glitch::ps::PSManager *)this);
  PCloudSystem = (glitch::IReferenceCounted *)glitch::ps::PSManager::createPCloudSystem(Instance, a3);
  *(this + 94) = PCloudSystem;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<int>(
    (char *)PCloudSystem + *(_DWORD *)(*(_DWORD *)PCloudSystem - 12),
    "EmitterType",
    *((_DWORD *)*(this + 99) + 2));
  v8 = (int)*(this + 99);
  v9 = *(_DWORD *)(v8 + 8);
  switch ( v9 )
  {
    case 1:
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "RadiusLength",
        **(_DWORD **)(v8 + 12));
      v8 = (int)*(this + 99);
      break;
    case 2:
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "RadiusLength",
        **(_DWORD **)(v8 + 12));
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "Height",
        *(_DWORD *)(*((_DWORD *)*(this + 99) + 3) + 4));
      v8 = (int)*(this + 99);
      break;
    case 0:
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "RadiusLength",
        **(_DWORD **)(v8 + 12));
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "Width",
        *(_DWORD *)(*((_DWORD *)*(this + 99) + 3) + 4));
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "Height",
        *(_DWORD *)(*((_DWORD *)*(this + 99) + 3) + 8));
      v8 = (int)*(this + 99);
      break;
  }
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<int>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "MaxParticles",
    *(_DWORD *)(v8 + 24));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "BirthRate",
    *((_DWORD *)*(this + 99) + 8));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "Life",
    *((_DWORD *)*(this + 99) + 10));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "LifeVariation",
    *((_DWORD *)*(this + 99) + 11));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "TargetSize",
    *((_DWORD *)*(this + 99) + 12));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SizeVariation",
    *((_DWORD *)*(this + 99) + 13));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SizeGrowthTime",
    *((_DWORD *)*(this + 99) + 14));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SizeFadeTime",
    *((_DWORD *)*(this + 99) + 15));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "Speed",
    *((_DWORD *)*(this + 99) + 16));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpeedVariation",
    *((_DWORD *)*(this + 99) + 17));
  v10 = (int)*(this + 99);
  v11 = *(_DWORD *)(v10 + 72);
  switch ( v11 )
  {
    case 1:
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::res::SFixedVec<float,3u>>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "Direction",
        **(_DWORD **)(v10 + 76),
        *(_DWORD *)(*(_DWORD *)(v10 + 76) + 4),
        *(_DWORD *)(*(_DWORD *)(v10 + 76) + 8));
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "DirectionVariation",
        *(_DWORD *)(*((_DWORD *)*(this + 99) + 19) + 12));
      v10 = (int)*(this + 99);
      break;
    case 2:
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
        (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
        "DirectionVariation",
        *(_DWORD *)(*(_DWORD *)(v10 + 76) + 4));
      v10 = (int)*(this + 99);
      break;
    case 0:
      v68 = *(this + 94);
      v69 = *(_DWORD *)(*v68 - 12);
      memset(v96, 0, sizeof(v96));
      glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::core::vector3d<float>>(
        (char *)v68 + v69,
        "Direction",
        v96);
      v10 = (int)*(this + 99);
      break;
  }
  v12 = *(_DWORD *)(v10 + 100);
  v13 = (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12);
  v14 = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v13, "AnimKeyMappingType");
  v15 = *(_DWORD **)(v13 + 52);
  v16 = (_DWORD *)(v13 + 48);
  if ( v15 )
  {
    v17 = (_DWORD *)(v13 + 48);
    while ( 1 )
    {
      v18 = v15[4];
      v19 = v14 > v18;
      if ( v14 <= v18 )
        v20 = (_DWORD *)v15[2];
      else
        v20 = (_DWORD *)v15[3];
      if ( v19 )
        v15 = v17;
      v17 = v15;
      if ( !v20 )
        break;
      v15 = v20;
    }
  }
  else
  {
    v15 = (_DWORD *)(v13 + 48);
  }
  if ( v16 == v15 || (v21 = v15, v14 < v15[4]) )
  {
    v99[0] = v14;
    v99[1] = 0;
    v105 = v15;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v104,
      v16,
      &v105,
      v99);
    v21 = v104;
  }
  v22 = (_DWORD *)v21[5];
  if ( v22 )
    *v22 = v12;
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "AnimOffset",
    *((_DWORD *)*(this + 99) + 23));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "AnimOffsetVariation",
    *((_DWORD *)*(this + 99) + 24));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "AnimLength",
    *((_DWORD *)*(this + 99) + 26));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "AnimLengthVariation",
    *((_DWORD *)*(this + 99) + 27));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "AnimScaleMultiplier",
    *((_DWORD *)*(this + 99) + 28));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "AnimScaleMultiplierVariation",
    *((_DWORD *)*(this + 99) + 29));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinTime",
    *((_DWORD *)*(this + 99) + 30));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinVariation",
    *((_DWORD *)*(this + 99) + 31));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinPhase",
    *((_DWORD *)*(this + 99) + 32));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinPhaseVariation",
    *((_DWORD *)*(this + 99) + 33));
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<int>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    "SpinAxisType",
    *((_DWORD *)*(this + 99) + 34));
  v23 = (int)*(this + 99);
  if ( *(_DWORD *)(v23 + 136) == 1 )
  {
    glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::res::SFixedVec<float,3u>>(
      (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
      "SpinAxis",
      **(_DWORD **)(v23 + 140),
      *(_DWORD *)(*(_DWORD *)(v23 + 140) + 4),
      *(_DWORD *)(*(_DWORD *)(v23 + 140) + 8));
    glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
      (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
      "SpinAxisVariation",
      *(_DWORD *)(*((_DWORD *)*(this + 99) + 35) + 12));
  }
  else
  {
    v24 = *(this + 94);
    v25 = *(_DWORD *)(*v24 - 12);
    memset(v95, 0, sizeof(v95));
    glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::core::vector3d<float>>(
      (char *)v24 + v25,
      "SpinAxis",
      v95);
    glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<float>(
      (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
      "SpinAxisVariation",
      0);
  }
  *((_BYTE *)this + 380) = a3;
  *(this + 96) = a2;
  if ( a3 )
  {
    v26 = glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer;
    if ( glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer )
      goto LABEL_27;
    (*(void (__fastcall **)(int *, glitch::video::IVideoDriver *, int, int, int, void *, _DWORD))(*(_DWORD *)a2 + 120))(
      &v110,
      a2,
      1,
      4,
      12,
      &glitch::collada::CParticleSystemSceneNode::initParticleSystem(glitch::video::IVideoDriver *,bool)::indices,
      0);
    v88 = v110;
    if ( v110 )
      ++*(_DWORD *)(v110 + 4);
    v92 = 4;
    v93 = 1;
    v94 = 6;
    v89 = 0;
    v90 = 6;
    v91 = 0;
    v71 = operator new(56, 0);
    *(_DWORD *)(v71 + 16) = 0;
    *(_DWORD *)(v71 + 4) = 0;
    *(_DWORD *)(v71 + 8) = 0;
    *(_DWORD *)v71 = off_988098;
    *(_DWORD *)(v71 + 12) = 0;
    glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams *)(v71 + 20), 0x60003u);
    v72 = v88;
    v73 = v88 == 0;
    *(_DWORD *)(v71 + 24) = v88;
    if ( !v73 )
      ++*(_DWORD *)(v72 + 4);
    *(_DWORD *)(v71 + 28) = v89;
    *(_DWORD *)(v71 + 32) = v90;
    *(_DWORD *)(v71 + 36) = v91;
    *(_DWORD *)(v71 + 40) = v92;
    *(_WORD *)(v71 + 44) = v93;
    v74 = v94;
    *(_DWORD *)(v71 + 48) = 0;
    *(_BYTE *)(v71 + 52) = 0;
    *(_WORD *)(v71 + 46) = v74;
    v106 = v71;
    ++*(_DWORD *)(v71 + 4);
    v75 = v106;
    v106 = glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer;
    glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer = v75;
    boost::intrusive_ptr<glitch::scene::CMeshBuffer>::~intrusive_ptr(&v106);
    boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v88);
    boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v110);
    v76 = *(_DWORD *)(glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer + 20);
    (*(void (__fastcall **)(glitch::video::IBuffer **, glitch::video::IVideoDriver *, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)a2 + 120))(
      &v109,
      a2,
      0,
      4,
      0,
      0,
      1);
    v77 = 4 * glitch::video::CVertexStreams::setupStreams(v76, &v109, -1);
    v78 = v109;
    v79 = (void *)operator new[](v77, 0);
    glitch::video::IBuffer::reset(v78, v77, v79, 1);
    v80 = (_DWORD *)(glitch::video::IBuffer::map(*(_DWORD *)(v76 + 36), 4) + *(_DWORD *)(v76 + 40));
    *v80 = 0;
    v80[1] = 0;
    v81 = (_DWORD *)((char *)v80 + *(unsigned __int16 *)(v76 + 50));
    *v81 = 0;
    v81[1] = 1065353216;
    v82 = *(unsigned __int16 *)(v76 + 50);
    *(_DWORD *)((char *)v80 + 2 * v82) = 1065353216;
    *(_DWORD *)((char *)v80 + 2 * v82 + 4) = 1065353216;
    v83 = (_DWORD *)((char *)v80 + 3 * *(unsigned __int16 *)(v76 + 50));
    *v83 = 1065353216;
    v83[1] = 0;
    *(_DWORD *)(v76 + 8) = 4;
    glitch::video::IBuffer::unmap(*(glitch::video::IBuffer **)(v76 + 36));
    boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v109);
    v26 = glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer;
    if ( glitch::collada::CParticleSystemSceneNode::BillboardMeshBuffer )
LABEL_27:
      ++*(_DWORD *)(v26 + 4);
    v27 = *(this + 80);
    *(this + 80) = (glitch::IReferenceCounted *)v26;
    if ( v27 )
      glitch::IReferenceCounted::drop(v27);
    v28 = *((_DWORD *)*(this + 99) + 6);
    if ( v28 > glitch::collada::CParticleSystemSceneNode::BillboardMaxParticles )
    {
      if ( !glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer )
      {
        (*(void (__fastcall **)(int *, _DWORD, int, int, _DWORD, _DWORD, int))(*(_DWORD *)*(this + 96) + 120))(
          &v108,
          *(this + 96),
          1,
          4,
          0,
          0,
          1);
        v84 = v108;
        if ( v108 )
          ++*(_DWORD *)(v108 + 4);
        v85 = (glitch::IReferenceCounted *)glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer;
        glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer = v84;
        if ( v85 )
          glitch::IReferenceCounted::drop(v85);
        boost::intrusive_ptr<glitch::video::IBuffer>::~intrusive_ptr(&v108);
        v28 = *((_DWORD *)*(this + 99) + 6);
      }
      glitch::collada::CParticleSystemSceneNode::BillboardMaxParticles = v28;
      v87 = (unsigned int)*(this + 80);
      v29 = glitch::video::IBuffer::map(*(_DWORD *)(v87 + 24), 1);
      v30 = v87;
      v31 = glitch::collada::CParticleSystemSceneNode::BillboardMaxParticles;
      v32 = glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer;
      v33 = (_WORD *)(v29 + *(_DWORD *)(v87 + 28));
      v86 = (glitch::IReferenceCounted *)glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer;
      if ( glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer )
      {
        v30 = glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer;
        v32 = *(_DWORD *)(glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer + 4);
      }
      v34 = *((_DWORD *)*(this + 80) + 8);
      if ( glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer )
        *(_DWORD *)(v30 + 4) = v32 + 1;
      v35 = v31 * 2 * v34;
      if ( v35 > *((_DWORD *)v86 + 3) )
      {
        v70 = (void *)glitch::ps::PS_NEW((glitch::ps *)v35, v30);
        glitch::video::IBuffer::reset(v86, v35, v70, 1);
      }
      v36 = glitch::video::IBuffer::map(v86, 4);
      if ( glitch::collada::CParticleSystemSceneNode::BillboardMaxParticles > 0 )
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        do
        {
          v40 = v39;
          *(_WORD *)(v36 + v37) = v39 + *v33;
          v41 = (_WORD *)(v36 + v37);
          ++v38;
          v39 += 4;
          v41[1] = v40 + v33[1];
          v37 += 12;
          v41[2] = v40 + v33[2];
          v41[3] = v40 + v33[3];
          v41[4] = v40 + v33[4];
          v41[5] = v40 + v33[5];
        }
        while ( glitch::collada::CParticleSystemSceneNode::BillboardMaxParticles > v38 );
      }
      if ( v36 )
      {
        v42 = *((_BYTE *)v86 + 19);
        if ( (v42 & 0x1Fu) <= 1 )
        {
          if ( (*((_BYTE *)v86 + 18) & 0x20) != 0 )
            (*(void (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v86 + 24))(v86);
          *((_BYTE *)v86 + 19) = 0;
        }
        else
        {
          *((_BYTE *)v86 + 19) = ((v42 & 0x1F) - 1) | v42 & 0xE0;
        }
      }
      if ( v33 )
      {
        v43 = *(_BYTE **)(v87 + 24);
        v44 = v43[19];
        if ( (v44 & 0x1Fu) <= 1 )
        {
          if ( (v43[18] & 0x20) != 0 )
            (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v43 + 24))(*(_DWORD *)(v87 + 24));
          v43[19] = 0;
        }
        else
        {
          v43[19] = ((v44 & 0x1F) - 1) | v44 & 0xE0;
        }
      }
      glitch::IReferenceCounted::drop(v86);
    }
    v45 = *(this + 94);
    v46 = *(_DWORD *)(*v45 - 12);
    v107 = (glitch::IReferenceCounted *)glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer;
    v47 = (char *)v45 + v46;
    if ( glitch::collada::CParticleSystemSceneNode::OutBillboardIndexBuffer )
      ++*((_DWORD *)v107 + 1);
    glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<boost::intrusive_ptr<glitch::video::IBuffer>>(
      v47,
      &v107);
    if ( v107 )
      glitch::IReferenceCounted::drop(v107);
    *(this + 97) = (glitch::IReferenceCounted *)(&stru_5FFF8 + 11);
  }
  glitch::ps::IParticleContext<glitch::ps::SParticle>::setParameter<glitch::scene::CMeshBuffer *>(
    (char *)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12),
    *(this + 80));
  v48 = (int)*(this + 94) + *(_DWORD *)(*(_DWORD *)*(this + 94) - 12);
  v49 = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v48, "ViewMatrix");
  v50 = *(_DWORD **)(v48 + 52);
  v51 = (_DWORD *)(v48 + 48);
  if ( v50 )
  {
    v52 = (_DWORD *)(v48 + 48);
    while ( 1 )
    {
      v53 = v50[4];
      v54 = v49 > v53;
      if ( v49 <= v53 )
        v55 = (_DWORD *)v50[2];
      else
        v55 = (_DWORD *)v50[3];
      if ( v54 )
        v50 = v52;
      v52 = v50;
      if ( !v55 )
        break;
      v50 = v55;
    }
  }
  else
  {
    v50 = (_DWORD *)(v48 + 48);
  }
  if ( v51 == v50 || (v56 = v50, v49 < v50[4]) )
  {
    v98[0] = v49;
    v98[1] = 0;
    v103 = v50;
    std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v102,
      v51,
      &v103,
      v98);
    v56 = v102;
  }
  v57 = (glitch::IReferenceCounted *)v56[5];
  v58 = *(this + 94);
  *(this + 82) = v57;
  v59 = (int)v58 + *(_DWORD *)(*v58 - 12);
  result = glitch::ps::IParticleContext<glitch::ps::SParticle>::hashString(v59, "BBox");
  v61 = *(_DWORD **)(v59 + 52);
  v62 = (_DWORD *)(v59 + 48);
  if ( v61 )
  {
    v63 = (_DWORD *)(v59 + 48);
    while ( 1 )
    {
      v64 = v61[4];
      v65 = result > v64;
      if ( result <= v64 )
        v66 = (_DWORD *)v61[2];
      else
        v66 = (_DWORD *)v61[3];
      if ( v65 )
        v61 = v63;
      v63 = v61;
      if ( !v66 )
        break;
      v61 = v66;
    }
  }
  else
  {
    v61 = (_DWORD *)(v59 + 48);
  }
  if ( v62 == v61 || (v67 = v61, result < v61[4]) )
  {
    v97[0] = result;
    v97[1] = 0;
    v101 = v61;
    result = std::priv::_Rb_tree<unsigned int,std::less<unsigned int>,std::pair<unsigned int const,void *>,std::priv::_Select1st<std::pair<unsigned int const,void *>>,std::priv::_MapTraitsT<std::pair<unsigned int const,void *>>,glitch::core::SAllocator<std::pair<unsigned int const,void *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
               &v100,
               v62,
               &v101,
               v97);
    v67 = v100;
  }
  *(this + 83) = (glitch::IReferenceCounted *)v67[5];
  return result;
}


// ===== 6572b8 glitch::collada::CParticleSystemSceneNode::render(void *) =====
int __fastcall glitch::collada::CParticleSystemSceneNode::render(int this, void *a2)
{
  int v2; // r3
  int v3; // r5
  _DWORD *v4; // r4
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
  glitch::video::CVertexStreams *v17; // r6
  int v18; // r7
  glitch::video::CVertexStreams *v19; // r6
  int v20; // r3
  _DWORD *v21; // r0
  int v22; // r3
  int v23; // r1
  int v24; // r2
  int v25; // r1
  glitch::video::CVertexStreams *v26; // r6
  int v27; // r0
  glitch::video::CVertexStreams **v28; // r7
  int v29; // r0
  int Technique; // r2
  glitch::video::CVertexStreams *v31; // r3
  void (__fastcall *v32)(int, glitch::video::CVertexStreams **, glitch::video::CVertexStreams **); // r12
  glitch::video::CVertexStreams *v33; // r6
  int (__fastcall *v34)(int, _DWORD, glitch::video::CVertexStreams **, _DWORD, _DWORD, _DWORD); // r6
  int v35; // r1
  glitch::video::CVertexStreams *v36; // r4
  glitch::video::CVertexStreams *v37; // r4
  void *v38; // r8
  int v39; // r1
  _DWORD v40[16]; // [sp+10h] [bp-B4h] BYREF
  char v41; // [sp+50h] [bp-74h]
  _DWORD v42[17]; // [sp+54h] [bp-70h] BYREF
  glitch::IReferenceCounted *v43; // [sp+98h] [bp-2Ch]
  glitch::video::CVertexStreams *v44; // [sp+9Ch] [bp-28h] BYREF
  glitch::video::CVertexStreams *v45; // [sp+A0h] [bp-24h] BYREF
  glitch::video::CVertexStreams *v46; // [sp+A4h] [bp-20h] BYREF
  glitch::video::CMaterial *v47; // [sp+A8h] [bp-1Ch] BYREF
  _BYTE v48[4]; // [sp+ACh] [bp-18h] BYREF
  int v49; // [sp+B0h] [bp-14h] BYREF
  glitch::video::CVertexStreams *v50; // [sp+B4h] [bp-10h] BYREF
  glitch::video::CVertexStreams *v51; // [sp+B8h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v52; // [sp+BCh] [bp-8h] BYREF

  v2 = *(_DWORD *)(this + 272);
  v3 = *(_DWORD *)(v2 + 20);
  v4 = (_DWORD *)this;
  if ( v3 )
  {
    v5 = *(_DWORD *)(v2 + 228);
    if ( v5 )
    {
      v6 = *(void **)(this + 328);
      v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 324))(*(_DWORD *)(v2 + 228));
      memcpy(v6, (const void *)(v7 + 132), 0x41u);
    }
    else
    {
      v38 = *(void **)(this + 328);
      LC_API_MEMSET_0(v42, 0, 0x40u);
      v42[15] = 1065353216;
      LOBYTE(v42[16]) = 1;
      v42[0] = 1065353216;
      v42[5] = 1065353216;
      v42[10] = 1065353216;
      memcpy(v38, v42, 0x41u);
    }
    if ( *(_BYTE *)(v4[94] + *(_DWORD *)(*(_DWORD *)v4[94] - 12) + 84) )
    {
      LC_API_MEMSET_0(v40, 0, 0x40u);
      v20 = v4[94];
      v40[15] = 1065353216;
      v40[0] = 1065353216;
      v40[5] = 1065353216;
      v40[10] = 1065353216;
      v41 = 1;
      v21 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v20 + 20))(v20);
      v22 = v21[14];
      v23 = v21[12];
      v24 = v21[13];
      v41 = 0;
      v40[12] = v23;
      v40[13] = v24;
      v40[14] = v22;
      (*(void (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)v3 + 108))(v3, 1, v40);
    }
    else
    {
      (*(void (__fastcall **)(int, int, int *))(*(_DWORD *)v3 + 108))(v3, 1, &glitch::core::IdentityMatrix);
    }
    v8 = v4[80];
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
    v13 = v4[97];
    v14 = (_DWORD *)(v4[94] + *(_DWORD *)(*(_DWORD *)v4[94] - 12));
    v15 = -1030792151 * ((v14[10] - v14[9]) >> 2);
    (*(void (__fastcall **)(glitch::video::CVertexStreams **))(*v14 + 12))(&v52);
    v16 = v10 * v15;
    v51 = v52;
    if ( v52 )
      ++*(_DWORD *)v52;
    this = v12(v3, 0, 0, v16, v13, &v51, 0, 0);
    v17 = v51;
    v18 = this;
    if ( v51 )
    {
      v11 = (*(_DWORD *)v51)-- == 1;
      if ( v11 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v17);
        this = LC_API_FREE_0(v17);
      }
    }
    v19 = v52;
    if ( v52 )
    {
      v11 = (*(_DWORD *)v52)-- == 1;
      if ( v11 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v19);
        this = LC_API_FREE_0(v19);
      }
    }
    if ( v18 == 4 )
    {
      v25 = v4[94] + *(_DWORD *)(*(_DWORD *)v4[94] - 12);
      (*(void (__fastcall **)(glitch::video::CVertexStreams **, int))(*(_DWORD *)v25 + 12))(&v50, v25);
      glitch::video::CVertexStreams::updateStates(v50, 0);
      v26 = v50;
      if ( v50 )
      {
        v11 = (*(_DWORD *)v50)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v26);
          LC_API_FREE_0(v26);
        }
      }
      v27 = v4[94] + *(_DWORD *)(*(_DWORD *)v4[94] - 12);
      v28 = (glitch::video::CVertexStreams **)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v27 + 8))(v27, 0);
      v29 = v4[94] + *(_DWORD *)(*(_DWORD *)v4[94] - 12);
      if ( (*(int (__fastcall **)(int))(*(_DWORD *)v29 + 28))(v29) )
      {
        (*(void (__fastcall **)(int *, _DWORD *, _DWORD))(*v4 + 132))(&v49, v4, 0);
        v39 = (unsigned __int16)v4[93];
        v48[3] = -1;
        v48[0] = -1;
        v48[1] = -1;
        v48[2] = -1;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColor>(
          v49,
          v39,
          0,
          v48);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v49);
      }
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD *, _DWORD))(*v4 + 132))(&v47, v4, 0);
      if ( v47 )
        Technique = glitch::video::CMaterial::getTechnique(v47);
      else
        Technique = 255;
      glitch::video::IVideoDriver::setMaterial(v3, &v47, Technique, 0);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v47);
      v31 = *v28;
      v46 = *v28;
      if ( v46 )
        ++*(_DWORD *)v31;
      v32 = *(void (__fastcall **)(int, glitch::video::CVertexStreams **, glitch::video::CVertexStreams **))(*(_DWORD *)v3 + 88);
      v43 = nullptr;
      v32(v3, &v46, v28 + 1);
      if ( v43 )
        glitch::IReferenceCounted::drop(v43);
      v33 = v46;
      if ( v46 )
      {
        v11 = (*(_DWORD *)v46)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v33);
          LC_API_FREE_0(v33);
        }
      }
      v34 = *(int (__fastcall **)(int, _DWORD, glitch::video::CVertexStreams **, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v3 + 500);
      v35 = v4[94] + *(_DWORD *)(*(_DWORD *)v4[94] - 12);
      (*(void (__fastcall **)(glitch::video::CVertexStreams **, int))(*(_DWORD *)v35 + 12))(&v45, v35);
      v44 = v45;
      if ( v45 )
        ++*(_DWORD *)v45;
      this = v34(v3, 0, &v44, 0, v4[97], 0);
      v36 = v44;
      if ( v44 )
      {
        v11 = (*(_DWORD *)v44)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v36);
          this = LC_API_FREE_0(v36);
        }
      }
      v37 = v45;
      if ( v45 )
      {
        v11 = (*(_DWORD *)v45)-- == 1;
        if ( v11 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v37);
          return LC_API_FREE_0(v37);
        }
      }
    }
  }
  return this;
}


// ===== 6577d4 `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::collada::CParticleSystemSceneNode *this)
{
  glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::collada::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6577e4 `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::collada::CParticleSystemSceneNode *this)
{
  glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::collada::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6577f4 `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::collada::CParticleSystemSceneNode *this)
{
  glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::collada::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 657804 `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode(
        glitch::collada::CParticleSystemSceneNode *this)
{
  glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode((glitch::collada::CParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 657814 glitch::res::FileReader::~FileReader() =====
void __fastcall glitch::res::FileReader::~FileReader(glitch::res::FileReader *this)
{
  ;
}


// ===== 657818 glitch::collada::CResFileReader::tell(void) =====
int __fastcall glitch::collada::CResFileReader::tell(glitch::collada::CResFileReader *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 36))(*((_DWORD *)this + 1));
}


// ===== 657834 glitch::collada::CResFileReader::read(void *,uint) =====
int __fastcall glitch::collada::CResFileReader::read(glitch::collada::CResFileReader *this, void *a2, unsigned int a3)
{
  return (*(int (__fastcall **)(_DWORD, void *, unsigned int))(**((_DWORD **)this + 1) + 12))(
           *((_DWORD *)this + 1),
           a2,
           a3);
}


// ===== 657850 glitch::collada::CResFileReader::seek(long,bool) =====
int __fastcall glitch::collada::CResFileReader::seek(glitch::collada::CResFileReader *this, int a2, bool a3)
{
  return (*(int (__fastcall **)(_DWORD, int, bool))(**((_DWORD **)this + 1) + 24))(*((_DWORD *)this + 1), a2, a3);
}


// ===== 65786c glitch::collada::CResFileReader::getSize(void) =====
int __fastcall glitch::collada::CResFileReader::getSize(glitch::collada::CResFileReader *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 32))(*((_DWORD *)this + 1));
}


// ===== 657888 glitch::collada::CResFileReader::~CResFileReader() =====
void __fastcall glitch::collada::CResFileReader::~CResFileReader(glitch::collada::CResFileReader *this)
{
  ;
}


// ===== 65788c glitch::collada::CResFactory::~CResFactory() =====
void __fastcall glitch::collada::CResFactory::~CResFactory(glitch::collada::CResFactory *this)
{
  ;
}


// ===== 657890 glitch::collada::CResFactory::~CResFactory() =====
void __fastcall glitch::collada::CResFactory::~CResFactory(glitch::collada::CResFactory *this)
{
  ;
}


// ===== 657894 glitch::collada::CResFileManager::CResFileManager(glitch::IDevice *) =====
int __fastcall glitch::collada::CResFileManager::CResFileManager(int result, int a2)
{
  *(_DWORD *)result = off_983030;
  *(_DWORD *)(result + 4) = 1;
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = result + 8;
  *(_DWORD *)(result + 32) = a2;
  *(_DWORD *)(result + 36) = &glitch::collada::CResFileManager::DefaultResFactory;
  *(_BYTE *)(result + 41) = 0;
  *(_BYTE *)(result + 43) = 1;
  *(_DWORD *)(result + 16) = result + 8;
  *(_DWORD *)(result + 24) = 0;
  *(_BYTE *)(result + 40) = 1;
  *(_BYTE *)(result + 42) = 1;
  glitch::collada::CResFileManager::Inst = result;
  return result;
}


// ===== 657914 glitch::collada::CResFileManager::CResFileManager(glitch::IDevice *) =====
int __fastcall glitch::collada::CResFileManager::CResFileManager(int result, int a2)
{
  *(_DWORD *)result = off_983030;
  *(_DWORD *)(result + 4) = 1;
  *(_DWORD *)(result + 12) = 0;
  *(_BYTE *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = result + 8;
  *(_DWORD *)(result + 32) = a2;
  *(_DWORD *)(result + 36) = &glitch::collada::CResFileManager::DefaultResFactory;
  *(_BYTE *)(result + 41) = 0;
  *(_BYTE *)(result + 43) = 1;
  *(_DWORD *)(result + 16) = result + 8;
  *(_DWORD *)(result + 24) = 0;
  *(_BYTE *)(result + 40) = 1;
  *(_BYTE *)(result + 42) = 1;
  glitch::collada::CResFileManager::Inst = result;
  return result;
}


// ===== 657994 glitch::collada::CResFileManager::checkVersion(glitch::io::IReadFile *) =====
int __fastcall glitch::collada::CResFileManager::checkVersion(
        glitch::collada::CResFileManager *this,
        glitch::io::IReadFile *a2)
{
  return 0;
}


// ===== 65799c glitch::collada::CResFileManager::checkVersion(char const*) =====
int __fastcall glitch::collada::CResFileManager::checkVersion(glitch::collada::CResFileManager *this, const char *a2)
{
  glitch::io::IReadFile *v3; // r4
  int v4; // r5

  v3 = (glitch::io::IReadFile *)(*(int (__fastcall **)(_DWORD, const char *))(**(_DWORD **)(*((_DWORD *)this + 8) + 52)
                                                                            + 12))(
                                  *(_DWORD *)(*((_DWORD *)this + 8) + 52),
                                  a2);
  v4 = glitch::collada::CResFileManager::checkVersion(this, v3);
  glitch::IReferenceCounted::drop(v3);
  return v4;
}


// ===== 6579e0 glitch::collada::CResFileReader::~CResFileReader() =====
void __fastcall glitch::collada::CResFileReader::~CResFileReader(glitch::collada::CResFileReader *this)
{
  LC_API_FREE_0(this);
}


// ===== 6579f4 glitch::res::FileReader::~FileReader() =====
void __fastcall glitch::res::FileReader::~FileReader(glitch::res::FileReader *this)
{
  LC_API_FREE_0(this);
}


// ===== 657a08 glitch::collada::CResFactory::~CResFactory() =====
void __fastcall glitch::collada::CResFactory::~CResFactory(glitch::collada::CResFactory *this)
{
  glitch::collada::CResFactory::~CResFactory(this);
  LC_API_FREE_0(this);
}


// ===== 657a24 `global constructor keyed to'.._source_glitch_collada_CColladaResFileManager.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaResFileManager.cpp()
{
  dword_9F7014 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7010 = 1056964608;
  glitch::collada::CResFileManager::DefaultResFactory = (int)off_983048;
  return _aeabi_atexit(
           (int)&glitch::collada::CResFileManager::DefaultResFactory,
           (int)glitch::collada::CResFactory::~CResFactory,
           (int)&_dso_handle);
}


// ===== 657a94 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(
        int a1,
        int a2)
{
  _DWORD *v3; // r4
  int v4; // r2

  v3 = GlitchAlloc(0x2Cu, 0);
  v3[8] = v3 + 4;
  v3[9] = v3 + 4;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v3 + 4,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  v4 = *(_DWORD *)(a2 + 24);
  v3[3] = 0;
  v3[10] = v4;
  v3[2] = 0;
  return v3;
}


// ===== 657ae0 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
    node = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5
          || (v14 = a4,
              v13 = std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(
                      (int)(a2 + 5),
                      a4,
                      (int)(a3 + 4)),
              a4 = v14,
              v13)) )
  {
    v12 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(
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


// ===== 657bd0 glitch::collada::CResFileManager::getReadFile(glitch::io::IReadFile *) =====
glitch::io::CMemoryReadFile *__fastcall glitch::collada::CResFileManager::getReadFile(
        glitch::collada::CResFileManager *this,
        glitch::io::IReadFile *a2)
{
  glitch::io::CMemoryReadFile *v4; // r6
  _BYTE v6[32]; // [sp+0h] [bp-20h] BYREF

  if ( *((_BYTE *)this + 42) && glitch::io::CZipReader::isValid(a2, a2) )
  {
    (*(void (__fastcall **)(glitch::io::IReadFile *, _DWORD, _DWORD))(*(_DWORD *)a2 + 24))(a2, 0, 0);
    glitch::io::CZipReader::CZipReader((glitch::io::CZipReader *)v6, a2, 1, 1);
    v4 = glitch::io::CZipReader::openFile((glitch::io::CZipReader *)v6, "little_endian_not_quantized.bdae");
    glitch::io::CZipReader::~CZipReader((glitch::io::CZipReader *)v6);
  }
  else
  {
    if ( *((_BYTE *)this + 43) && *((_BYTE *)this + 42) )
      *((_BYTE *)this + 42) = 0;
    v4 = a2;
    ++*((_DWORD *)a2 + 1);
  }
  return v4;
}


// ===== 657c8c glitch::collada::CResFile::releaseBuffer(boost::intrusive_ptr<glitch::video::IBuffer> &) =====
int __fastcall glitch::collada::CResFile::releaseBuffer(int a1, int *a2)
{
  int result; // r0
  unsigned int v4; // r1
  void *v5; // r2

  result = *a2;
  if ( *a2 )
  {
    if ( *(_DWORD *)(result + 4) <= 1u )
    {
      *a2 = 0;
      return glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)result);
    }
    v4 = *(_BYTE *)(result + 18) & 8;
    if ( (*(_BYTE *)(result + 18) & 8) != 0 )
    {
      v4 = *(_DWORD *)(result + 12);
      v5 = nullptr;
    }
    else
    {
      v5 = (void *)(*(_BYTE *)(result + 18) & 8);
    }
    glitch::video::IBuffer::reset((glitch::video::IBuffer *)result, v4, v5, 1);
    result = *a2;
    *a2 = 0;
    if ( result )
      return glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)result);
  }
  else
  {
    *a2 = 0;
  }
  return result;
}


// ===== 657cf8 glitch::collada::CResFile::releaseRemovableBuffer(boost::intrusive_ptr<glitch::video::IBuffer> &) =====
void __fastcall glitch::collada::CResFile::releaseRemovableBuffer(int a1, glitch::video::IBuffer **a2)
{
  glitch::video::IBuffer *v2; // r0

  v2 = *a2;
  if ( *a2 )
  {
    if ( (*((_BYTE *)v2 + 18) & 8) != 0 )
    {
      glitch::video::IBuffer::reset(v2, *((_DWORD *)v2 + 3), nullptr, 1);
    }
    else if ( (*((_BYTE *)v2 + 18) & 1) == 0 )
    {
      glitch::os::Printer::log((int)"Buffer released is not in VRAM", 2);
      glitch::video::IBuffer::copy(*a2);
    }
  }
}


// ===== 657d58 glitch::collada::CResFile::releaseRemovableBuffer(uchar) =====
void __fastcall glitch::collada::CResFile::releaseRemovableBuffer(glitch::collada::CResFile *this, unsigned __int8 a2)
{
  void **v2; // r3
  void **v4; // r2
  _DWORD *v5; // r9
  int v6; // r10
  int v7; // r3
  int *v8; // r5
  int v9; // r4
  int v10; // r11
  int v11; // r7
  int v12; // r11
  int v13; // r4
  int v14; // r7
  int v15; // r7
  int v16; // r4
  int v17; // r5
  int v18; // r3
  int v19; // r2
  int v20; // r3
  int v21; // r4
  void *v22; // r0
  int v23; // r5
  void **v24; // r2
  void *v25; // r0
  int v26; // [sp+0h] [bp-Ch]

  v2 = *((void ***)this + 17);
  v4 = v2;
  if ( !v2 )
    return;
  v5 = *(_DWORD **)(*((_DWORD *)this + 9) + 32);
  v6 = v5[25];
  if ( !v6 )
  {
    if ( (a2 & 1) == 0 )
      goto LABEL_17;
    v26 = v5[26];
    if ( v26 <= 0 )
      goto LABEL_17;
    do
    {
      v7 = v5[27] + 16 * v6;
      if ( !*(_DWORD *)(v7 + 8) )
      {
        v8 = *(int **)(v7 + 12);
        v9 = *v8;
        if ( *v8 )
        {
          glitch::collada::CResFile::releaseRemovableBuffer((int)this, (glitch::video::IBuffer **)(v8[2] + 40));
          *(_DWORD *)(v8[2] + 36) = 0;
        }
        else
        {
          v10 = v8[1];
          if ( v10 > 0 )
          {
            v11 = *v8;
            do
            {
              ++v11;
              glitch::collada::CResFile::releaseRemovableBuffer((int)this, (glitch::video::IBuffer **)(v8[2] + v9 + 16));
              v9 += 20;
              *(_DWORD *)(v8[2] + 36) = 0;
            }
            while ( v11 != v10 );
          }
        }
        v12 = v8[3];
        if ( v12 > 0 )
        {
          v13 = 0;
          v14 = 0;
          do
          {
            ++v14;
            glitch::collada::CResFile::releaseRemovableBuffer((int)this, (glitch::video::IBuffer **)(v8[4] + v13 + 48));
            *(_DWORD *)(v8[4] + v13 + 44) = 0;
            v13 += 56;
          }
          while ( v14 != v12 );
        }
      }
      ++v6;
    }
    while ( v6 != v26 );
    if ( !v5[25] )
    {
LABEL_17:
      if ( (a2 & 2) != 0 )
      {
        v15 = v5[28];
        if ( v15 > 0 )
        {
          v16 = 0;
          v17 = 0;
          do
          {
            while ( 1 )
            {
              v18 = v5[29];
              ++v17;
              v19 = *(_DWORD *)(v18 + v16);
              v20 = v18 + v16;
              v16 += 12;
              if ( !v19 )
                break;
              if ( v17 == v15 )
                goto LABEL_22;
            }
            glitch::collada::CResFile::releaseRemovableBuffer(
              (int)this,
              (glitch::video::IBuffer **)(*(_DWORD *)(v20 + 8) + 148));
          }
          while ( v17 != v15 );
        }
      }
    }
LABEL_22:
    v2 = *((void ***)this + 17);
    v4 = v2;
  }
  if ( !*((_BYTE *)this + 72) )
  {
    if ( !*v2 )
      goto LABEL_32;
    operator delete[](*v2);
    goto LABEL_31;
  }
  if ( *((int *)this + 14) > 0 )
  {
    v21 = 0;
    while ( 1 )
    {
      v22 = v4[v21];
      v23 = 4 * v21;
      v24 = &v4[v21++];
      if ( v22 )
      {
        operator delete[](v22);
        v24 = (void **)(*((_DWORD *)this + 17) + v23);
      }
      *v24 = nullptr;
      if ( *((_DWORD *)this + 14) <= v21 )
        break;
      v4 = *((void ***)this + 17);
    }
LABEL_31:
    v4 = *((void ***)this + 17);
    goto LABEL_32;
  }
  v4 = v2;
LABEL_32:
  if ( v4 )
    operator delete[](v4);
  v25 = *((void **)this + 16);
  *((_DWORD *)this + 17) = 0;
  if ( v25 )
    operator delete[](v25);
  *((_DWORD *)this + 16) = 0;
}


// ===== 657fa0 glitch::res::File::Init(void *) =====
int __fastcall __spoils<R0,R2,R3,R12,LR> glitch::res::File::Init(glitch::res::File *this, void *a2)
{
  _BOOL4 v3; // r0
  int v4; // r9
  int v5; // r8
  int v6; // r7
  int v7; // r6
  int v8; // r5
  int v9; // r12
  int v10; // r2
  char v11; // r3
  int v12; // r10
  int v14; // [sp+4h] [bp-2Ch] BYREF
  bool v15; // [sp+8h] [bp-28h]
  int v16; // [sp+Ch] [bp-24h]
  int v17; // [sp+10h] [bp-20h]
  int v18; // [sp+14h] [bp-1Ch]
  int v19; // [sp+18h] [bp-18h]
  int v20; // [sp+1Ch] [bp-14h]
  int v21; // [sp+20h] [bp-10h]
  int v22; // [sp+24h] [bp-Ch]
  char v23; // [sp+28h] [bp-8h]
  int v24; // [sp+2Ch] [bp-4h]

  v23 = 0;
  v15 = 0;
  v16 = 0;
  v21 = 0;
  v22 = 0;
  if ( a2 )
    v15 = glitch::res::File::Init((glitch::res::File *)&v14) == 0;
  v3 = v15;
  v4 = v16;
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  *((_BYTE *)this + 4) = v15;
  *(_DWORD *)this = a2;
  *((_DWORD *)this + 2) = v4;
  *((_DWORD *)this + 10) = v12;
  *((_DWORD *)this + 3) = v5;
  *((_DWORD *)this + 4) = v6;
  *((_DWORD *)this + 5) = v7;
  *((_DWORD *)this + 6) = v8;
  *((_DWORD *)this + 7) = v9;
  *((_DWORD *)this + 8) = v10;
  *((_BYTE *)this + 36) = v11;
  return !v3;
}


// ===== 658048 glitch::collada::CResFile::CResFile(char const*,glitch::io::IReadFile *,bool) =====
glitch::collada::CResFile *__fastcall glitch::collada::CResFile::CResFile(
        glitch::collada::CResFile *this,
        char *a2,
        glitch::io::IReadFile *a3,
        int a4)
{
  glitch::IReferenceCounted *File; // r5
  void *v9; // r1
  _DWORD v10[2]; // [sp+4h] [bp-Ch] BYREF

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_983060;
  *((_DWORD *)this + 2) = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 3,
    a2);
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 72) = 0;
  if ( a4 && (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a3 + 56))(a3) )
  {
    *((_DWORD *)this + 2) = a3;
    ++*((_DWORD *)a3 + 1);
    v9 = (void *)(*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 2) + 48))(*((_DWORD *)this + 2), 0);
    glitch::res::File::Init((glitch::collada::CResFile *)((char *)this + 36), v9);
  }
  else
  {
    File = glitch::collada::CResFileManager::getReadFile(
             (glitch::collada::CResFileManager *)glitch::collada::CResFileManager::Inst,
             a3);
    v10[1] = File;
    v10[0] = off_983078;
    glitch::res::File::Init((glitch::collada::CResFile *)((char *)this + 36), (glitch::res::FileReader *)v10);
    glitch::IReferenceCounted::drop(File);
  }
  return this;
}


// ===== 65815c glitch::collada::CResFile::CResFile(char const*,glitch::io::IReadFile *,bool) =====
glitch::collada::CResFile *__fastcall glitch::collada::CResFile::CResFile(
        glitch::collada::CResFile *this,
        char *a2,
        glitch::io::IReadFile *a3,
        int a4)
{
  glitch::IReferenceCounted *File; // r5
  void *v9; // r1
  _DWORD v10[2]; // [sp+4h] [bp-Ch] BYREF

  *((_DWORD *)this + 1) = 1;
  *(_DWORD *)this = off_983060;
  *((_DWORD *)this + 2) = 0;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 3,
    a2);
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 40) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 72) = 0;
  if ( a4 && (*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a3 + 56))(a3) )
  {
    *((_DWORD *)this + 2) = a3;
    ++*((_DWORD *)a3 + 1);
    v9 = (void *)(*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 2) + 48))(*((_DWORD *)this + 2), 0);
    glitch::res::File::Init((glitch::collada::CResFile *)((char *)this + 36), v9);
  }
  else
  {
    File = glitch::collada::CResFileManager::getReadFile(
             (glitch::collada::CResFileManager *)glitch::collada::CResFileManager::Inst,
             a3);
    v10[1] = File;
    v10[0] = off_983078;
    glitch::res::File::Init((glitch::collada::CResFile *)((char *)this + 36), (glitch::res::FileReader *)v10);
    glitch::IReferenceCounted::drop(File);
  }
  return this;
}


// ===== 658270 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r3
  int v5; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 36);
      v5 = *(_DWORD *)(v2 + 8);
      if ( v4 != v2 + 16 )
      {
        if ( v4 )
          GlitchFree(*(void **)(v2 + 36));
      }
      GlitchFree((void *)v2);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 6582c4 glitch::collada::CResFileManager::~CResFileManager() =====
void __fastcall glitch::collada::CResFileManager::~CResFileManager(glitch::collada::CResFileManager *this)
{
  int v1; // r6
  char *v3; // r4
  int v4; // r2
  int v5; // r3

  v1 = *((_DWORD *)this + 4);
  v3 = (char *)this + 8;
  *(_DWORD *)this = off_983030;
  while ( v3 != (char *)v1 )
  {
    while ( 1 )
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v1 + 40));
      v4 = *(_DWORD *)(v1 + 12);
      if ( !v4 )
        break;
      while ( *(_DWORD *)(v4 + 8) )
        v4 = *(_DWORD *)(v4 + 8);
      v1 = v4;
      if ( v3 == (char *)v4 )
        goto LABEL_8;
    }
    v5 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v5 + 12) )
    {
      do
      {
        v1 = v5;
        v5 = *(_DWORD *)(v5 + 4);
      }
      while ( v1 == *(_DWORD *)(v5 + 12) );
      v4 = *(_DWORD *)(v1 + 12);
    }
    if ( v4 != v5 )
      v1 = v5;
  }
LABEL_8:
  glitch::collada::CResFileManager::Inst = 0;
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)v3,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = v3;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 6583a8 glitch::collada::CResFileManager::~CResFileManager() =====
void __fastcall glitch::collada::CResFileManager::~CResFileManager(glitch::collada::CResFileManager *this)
{
  glitch::collada::CResFileManager::~CResFileManager(this);
  LC_API_FREE_0(this);
}


// ===== 6583c4 glitch::collada::CResFileManager::~CResFileManager() =====
void __fastcall glitch::collada::CResFileManager::~CResFileManager(glitch::collada::CResFileManager *this)
{
  int v1; // r6
  char *v3; // r4
  int v4; // r2
  int v5; // r3

  v1 = *((_DWORD *)this + 4);
  v3 = (char *)this + 8;
  *(_DWORD *)this = off_983030;
  while ( v3 != (char *)v1 )
  {
    while ( 1 )
    {
      glitch::IReferenceCounted::drop(*(glitch::IReferenceCounted **)(v1 + 40));
      v4 = *(_DWORD *)(v1 + 12);
      if ( !v4 )
        break;
      while ( *(_DWORD *)(v4 + 8) )
        v4 = *(_DWORD *)(v4 + 8);
      v1 = v4;
      if ( v3 == (char *)v4 )
        goto LABEL_8;
    }
    v5 = *(_DWORD *)(v1 + 4);
    if ( v1 == *(_DWORD *)(v5 + 12) )
    {
      do
      {
        v1 = v5;
        v5 = *(_DWORD *)(v5 + 4);
      }
      while ( v1 == *(_DWORD *)(v5 + 12) );
      v4 = *(_DWORD *)(v1 + 12);
    }
    if ( v4 != v5 )
      v1 = v5;
  }
LABEL_8:
  glitch::collada::CResFileManager::Inst = 0;
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)v3,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = v3;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = v3;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 6584a8 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::erase(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>>) =====
void __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0
  unsigned __int8 *v4; // r3
  unsigned __int8 *v5; // r5
  unsigned __int8 *v6; // r0

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = v3 + 16;
  v5 = v3;
  v6 = *((unsigned __int8 **)v3 + 9);
  if ( v6 != v4 && v6 )
    GlitchFree(v6);
  GlitchFree(v5);
  --*(_DWORD *)(a1 + 16);
}


// ===== 6584fc glitch::collada::CResFileManager::unload(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>>,bool) =====
int __fastcall glitch::collada::CResFileManager::unload(int a1, int a2, int a3)
{
  int v3; // r4
  int v5; // r6
  glitch::IReferenceCounted *v6; // r0
  unsigned __int8 *v8; // [sp+4h] [bp-4h] BYREF

  v3 = a1 + 8;
  if ( a1 + 8 != *(_DWORD *)a2 )
  {
    v6 = *(glitch::IReferenceCounted **)(*(_DWORD *)a2 + 40);
    if ( *((_DWORD *)v6 + 1) > 1u )
    {
      if ( !a3 )
        return 2;
      v5 = 1;
    }
    else
    {
      v5 = 0;
    }
    glitch::IReferenceCounted::drop(v6);
    v8 = *(unsigned __int8 **)a2;
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
      v3,
      &v8);
    return v5;
  }
  return 3;
}


// ===== 658564 glitch::collada::CResFileManager::updateExternalResources(glitch::collada::CResFile *,glitch::io::IReadFile *) =====
void __fastcall glitch::collada::CResFileManager::updateExternalResources(
        glitch::collada::CResFileManager *this,
        glitch::collada::CResFile *a2,
        glitch::io::IReadFile *a3)
{
  int v4; // r8
  int v6; // r5
  glitch::os::Printer *v7; // r0
  int v8; // r6
  int v9; // r4
  int LogLevel; // r10
  int v11; // r4
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v13; // r0
  int v14; // [sp+10h] [bp-54h]
  int v15; // [sp+14h] [bp-50h]
  glitch::IReferenceCounted *v17; // [sp+28h] [bp-3Ch] BYREF
  _BYTE v18[16]; // [sp+2Ch] [bp-38h] BYREF
  _BYTE *v19; // [sp+3Ch] [bp-28h]
  void *p; // [sp+40h] [bp-24h]
  _DWORD v21[4]; // [sp+44h] [bp-20h] BYREF
  _BYTE *v22; // [sp+54h] [bp-10h]
  void *v23; // [sp+58h] [bp-Ch]

  v4 = *(_DWORD *)(*((_DWORD *)a2 + 9) + 32);
  v14 = *(_DWORD *)(v4 + 76);
  v22 = v21;
  v23 = v21;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v21,
    0x10u);
  *v22 = 0;
  (*(void (__fastcall **)(_BYTE *, _DWORD, char *))(**(_DWORD **)(*((_DWORD *)this + 8) + 52) + 56))(
    v18,
    *(_DWORD *)(*((_DWORD *)this + 8) + 52),
    (char *)a2 + 12);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v21,
    p,
    v19);
  if ( p != v18 && p )
    GlitchFree(p);
  v15 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 8) + 16) + 224);
  if ( v14 > 0 )
  {
    v6 = 0;
    v7 = (glitch::os::Printer *)&v17;
    v8 = 0;
    while ( 1 )
    {
      v9 = *(_DWORD *)(v4 + 80);
      LogLevel = glitch::os::Printer::getLogLevel(v7);
      glitch::os::Printer::setLogLevel(3);
      v11 = v9 + v6;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, glitch::collada::CResFile *, _DWORD *, glitch::io::IReadFile *, int, int))(**((_DWORD **)this + 9) + 8))(
        &v17,
        *((_DWORD *)this + 9),
        a2,
        v21,
        a3,
        v15,
        v11);
      glitch::os::Printer::setLogLevel(LogLevel);
      v12 = v17;
      if ( !v17 )
        break;
      ++*((_DWORD *)v17 + 1);
      v13 = *(glitch::IReferenceCounted **)(v11 + 16);
      *(_DWORD *)(v11 + 16) = v12;
      if ( v13 )
        goto LABEL_8;
LABEL_9:
      v7 = v17;
      if ( v17 )
        v7 = (glitch::os::Printer *)glitch::IReferenceCounted::drop(v17);
      ++v8;
      v6 += 20;
      if ( v8 == v14 )
        goto LABEL_12;
    }
    v13 = *(glitch::IReferenceCounted **)(v11 + 16);
    *(_DWORD *)(v11 + 16) = 0;
    if ( !v13 )
      goto LABEL_9;
LABEL_8:
    glitch::IReferenceCounted::drop(v13);
    goto LABEL_9;
  }
LABEL_12:
  if ( v23 != v21 )
  {
    if ( v23 )
      GlitchFree(v23);
  }
}


// ===== 658744 glitch::collada::CResFile::releaseObjects(void) =====
void __fastcall glitch::collada::CResFile::releaseObjects(glitch::collada::CResFile *this)
{
  int v1; // r3
  bool v2; // zf
  _DWORD *v3; // r11
  int v4; // r6
  int v6; // r4
  int v7; // r5
  int v8; // r3
  glitch::IReferenceCounted *v9; // r1
  int i; // r4
  int v11; // r3
  int *v12; // r7
  int v13; // r4
  int v14; // r6
  int v15; // r5
  int v16; // r3
  glitch::IReferenceCounted *v17; // r0
  int v18; // r9
  int v19; // r5
  int v20; // r6
  int v21; // r4
  glitch::IReferenceCounted *v22; // r0
  glitch::IReferenceCounted *v23; // r0
  int v24; // r6
  int v25; // r4
  int v26; // r5
  int v27; // r3
  int v28; // r2
  int v29; // r3
  _DWORD *v30; // r4
  _DWORD *v31; // r0
  int v32; // r3
  glitch::IReferenceCounted *v33; // r0
  glitch::video::ITexture *v34; // [sp+4h] [bp-20h]
  glitch::video::CTextureManager *v35; // [sp+8h] [bp-1Ch]
  glitch::video::CTextureManager *j; // [sp+8h] [bp-1Ch]
  int v37; // [sp+Ch] [bp-18h]
  glitch::IReferenceCounted *v38[2]; // [sp+14h] [bp-10h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v39; // [sp+1Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 1);
  v2 = v1 == 0;
  if ( v1 )
    ++v1;
  v3 = *(_DWORD **)(*((_DWORD *)this + 9) + 32);
  v38[1] = (glitch::IReferenceCounted *)&glitch::collada::CColladaDatabase::DefaultFactory;
  v38[0] = this;
  if ( !v2 )
    *((_DWORD *)this + 1) = v1;
  v4 = v3[19];
  v35 = *(glitch::video::CTextureManager **)(*(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 16)
                                           + 224);
  if ( v4 > 0 )
  {
    v6 = 0;
    v7 = 0;
    do
    {
      ++v7;
      v8 = v3[20] + v6;
      v9 = *(glitch::IReferenceCounted **)(v8 + 16);
      v6 += 20;
      if ( v9 )
      {
        *(_DWORD *)(v8 + 16) = 0;
        v34 = v9;
        glitch::IReferenceCounted::drop(v9);
        if ( *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40) )
        {
          if ( *((_DWORD *)v34 + 1) == 1 )
            glitch::video::CTextureManager::removeTexture(v35, v34);
        }
      }
    }
    while ( v7 != v4 );
  }
  for ( i = v3[2]; i; i = *(_DWORD *)(i + 56) )
  {
    if ( *(_DWORD *)(i + 52) )
    {
      v39 = nullptr;
      v39 = *(glitch::video::CMaterialVertexAttributeMap **)(i + 52);
      *(_DWORD *)(i + 52) = 0;
      boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v39);
    }
  }
  v37 = v3[26];
  if ( v37 > 0 )
  {
    for ( j = nullptr; j != (glitch::video::CTextureManager *)v37; j = (glitch::video::CTextureManager *)((char *)j + 1) )
    {
      v11 = v3[27] + 16 * (_DWORD)j;
      if ( !*(_DWORD *)(v11 + 8) )
      {
        v12 = *(int **)(v11 + 12);
        v13 = *v12;
        if ( *v12 )
        {
          glitch::collada::CResFile::releaseBuffer((int)this, (int *)(v12[2] + 40));
          v32 = v12[2];
          v33 = *(glitch::IReferenceCounted **)(v32 + 40);
          *(_DWORD *)(v32 + 40) = 0;
          if ( v33 )
            glitch::IReferenceCounted::drop(v33);
        }
        else
        {
          v14 = v12[1];
          if ( v14 > 0 )
          {
            v15 = *v12;
            do
            {
              ++v15;
              glitch::collada::CResFile::releaseBuffer((int)this, (int *)(v12[2] + v13 + 16));
              v16 = v12[2] + v13;
              v17 = *(glitch::IReferenceCounted **)(v16 + 16);
              v13 += 20;
              *(_DWORD *)(v16 + 16) = 0;
              if ( v17 )
                glitch::IReferenceCounted::drop(v17);
            }
            while ( v15 != v14 );
          }
        }
        v18 = v12[3];
        if ( v18 > 0 )
        {
          v19 = 0;
          v20 = 0;
          do
          {
            ++v20;
            v21 = v12[4] + v19;
            glitch::collada::CResFile::releaseBuffer((int)this, (int *)(v21 + 48));
            v22 = *(glitch::IReferenceCounted **)(v21 + 48);
            v19 += 56;
            *(_DWORD *)(v21 + 48) = 0;
            if ( v22 )
              glitch::IReferenceCounted::drop(v22);
            v23 = *(glitch::IReferenceCounted **)(v21 + 52);
            *(_DWORD *)(v21 + 52) = 0;
            if ( v23 )
              glitch::IReferenceCounted::drop(v23);
          }
          while ( v20 != v18 );
        }
      }
    }
  }
  v24 = v3[28];
  if ( v24 > 0 )
  {
    v25 = 0;
    v26 = 0;
    do
    {
      while ( 1 )
      {
        v27 = v3[29];
        ++v26;
        v28 = *(_DWORD *)(v27 + v25);
        v29 = v27 + v25;
        v25 += 12;
        if ( !v28 )
          break;
        if ( v26 == v24 )
          goto LABEL_38;
      }
      glitch::collada::CResFile::releaseBuffer((int)this, (int *)(*(_DWORD *)(v29 + 8) + 148));
    }
    while ( v26 != v24 );
  }
LABEL_38:
  v30 = (_DWORD *)v3[1];
  if ( v30 )
  {
    v31 = (_DWORD *)v30[5];
    if ( v31 != v30 && v31 )
      GlitchFree(v31);
    LC_API_FREE_0(v30);
  }
  glitch::collada::CColladaDatabase::~CColladaDatabase(v38);
}


// ===== 658a2c glitch::collada::CResFile::~CResFile() =====
void __fastcall glitch::collada::CResFile::~CResFile(void **this)
{
  glitch::IReferenceCounted *v2; // r0
  void **v3; // r0
  void **v4; // r3
  void *v5; // r0
  int v6; // r5
  void *v7; // r7
  void *v8; // r0
  int v9; // r6
  void **v10; // r3

  *this = off_983060;
  glitch::collada::CResFile::releaseObjects((glitch::collada::CResFile *)this);
  v2 = (glitch::IReferenceCounted *)*(this + 2);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop(v2);
    *(this + 2) = nullptr;
    goto LABEL_3;
  }
  v4 = (void **)*(this + 17);
  if ( v4 )
  {
    if ( *((_BYTE *)this + 72) )
    {
      if ( (int)*(this + 14) <= 0 )
        goto LABEL_12;
      v6 = (int)*(this + 2);
      v7 = (void *)v6;
      while ( 1 )
      {
        v8 = v4[v6];
        v9 = 4 * v6;
        v10 = &v4[v6++];
        if ( v8 )
        {
          operator delete[](v8);
          v10 = (void **)((char *)*(this + 17) + v9);
        }
        *v10 = v7;
        if ( (int)*(this + 14) <= v6 )
          break;
        v4 = (void **)*(this + 17);
      }
    }
    else
    {
      if ( !*v4 )
        goto LABEL_12;
      operator delete[](*v4);
    }
    v4 = (void **)*(this + 17);
    if ( !v4 )
    {
LABEL_13:
      v5 = *(this + 16);
      *(this + 17) = nullptr;
      if ( v5 )
        operator delete[](v5);
      *(this + 16) = nullptr;
      goto LABEL_16;
    }
LABEL_12:
    operator delete[](v4);
    goto LABEL_13;
  }
LABEL_16:
  GlitchFree(*(this + 9));
LABEL_3:
  v3 = (void **)*(this + 8);
  if ( v3 != this + 3 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 658b50 glitch::collada::CResFile::~CResFile() =====
void __fastcall glitch::collada::CResFile::~CResFile(void **this)
{
  glitch::collada::CResFile::~CResFile(this);
  LC_API_FREE_0(this);
}


// ===== 658b6c glitch::collada::CResFile::~CResFile() =====
void __fastcall glitch::collada::CResFile::~CResFile(void **this)
{
  glitch::IReferenceCounted *v2; // r0
  void **v3; // r0
  void **v4; // r3
  void *v5; // r0
  int v6; // r5
  void *v7; // r7
  void *v8; // r0
  int v9; // r6
  void **v10; // r3

  *this = off_983060;
  glitch::collada::CResFile::releaseObjects((glitch::collada::CResFile *)this);
  v2 = (glitch::IReferenceCounted *)*(this + 2);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop(v2);
    *(this + 2) = nullptr;
    goto LABEL_3;
  }
  v4 = (void **)*(this + 17);
  if ( v4 )
  {
    if ( *((_BYTE *)this + 72) )
    {
      if ( (int)*(this + 14) <= 0 )
        goto LABEL_12;
      v6 = (int)*(this + 2);
      v7 = (void *)v6;
      while ( 1 )
      {
        v8 = v4[v6];
        v9 = 4 * v6;
        v10 = &v4[v6++];
        if ( v8 )
        {
          operator delete[](v8);
          v10 = (void **)((char *)*(this + 17) + v9);
        }
        *v10 = v7;
        if ( (int)*(this + 14) <= v6 )
          break;
        v4 = (void **)*(this + 17);
      }
    }
    else
    {
      if ( !*v4 )
        goto LABEL_12;
      operator delete[](*v4);
    }
    v4 = (void **)*(this + 17);
    if ( !v4 )
    {
LABEL_13:
      v5 = *(this + 16);
      *(this + 17) = nullptr;
      if ( v5 )
        operator delete[](v5);
      *(this + 16) = nullptr;
      goto LABEL_16;
    }
LABEL_12:
    operator delete[](v4);
    goto LABEL_13;
  }
LABEL_16:
  GlitchFree(*(this + 9));
LABEL_3:
  v3 = (void **)*(this + 8);
  if ( v3 != this + 3 )
  {
    if ( v3 )
      GlitchFree(v3);
  }
}


// ===== 658c90 glitch::collada::CResFileManager::postLoadProcess(glitch::collada::CResFile *,glitch::io::IReadFile *) =====
int __fastcall glitch::collada::CResFileManager::postLoadProcess(
        glitch::collada::CResFileManager *this,
        glitch::collada::CResFile *a2,
        glitch::io::IReadFile *a3)
{
  int v4; // r1
  _DWORD *v5; // r4
  bool v6; // zf
  const char *Version; // r0
  int v9; // r8
  int i; // r6
  _DWORD *v11; // r7
  int v12; // r9
  int v13; // lr
  int v14; // r3
  glitch::IReferenceCounted *v15; // r0
  int v16; // r7
  int v17; // r8
  _DWORD *v18; // r5
  int v19; // r4
  int LogLevel; // r6
  glitch::IReferenceCounted *v21; // r3
  glitch::IReferenceCounted *v22; // r0
  int v23; // r7
  int v24; // r8
  int v25; // r10
  _DWORD *v26; // r5
  int v27; // r3
  int v28; // r1
  int v29; // r3
  int j; // r2
  int v31; // r12
  unsigned int v32; // r0
  int *v33; // r0
  int v34; // r12
  bool v35; // zf
  int v36; // r7
  int v37; // lr
  int k; // r6
  _DWORD *v39; // r3
  int v40; // r8
  int v41; // r2
  int m; // r1
  int v43; // r9
  unsigned int v44; // r10
  int *v45; // r9
  int v46; // r10
  int v47; // r8
  int v48; // r2
  int n; // r1
  int v50; // r9
  unsigned int v51; // r10
  int *v52; // r9
  int v53; // r10
  int v54; // r8
  int v55; // r2
  int ii; // r1
  int v57; // r9
  unsigned int v58; // r10
  int *v59; // r9
  int v60; // r10
  int v61; // r8
  int v62; // r2
  int jj; // r1
  int v64; // r9
  unsigned int v65; // r10
  int *v66; // r9
  int v67; // r10
  glitch::IReferenceCounted *v68; // r3
  int v69; // r11
  int kk; // r8
  _DWORD *Controller; // r0
  int v72; // r9
  int v73; // r10
  int mm; // r6
  int v75; // r7
  unsigned int v76; // r1
  const char *v77; // r1
  int v78; // r7
  int nn; // r6
  int Emitter; // r0
  _DWORD *v81; // r8
  char *v83; // r6
  _DWORD *v84; // r7
  int v85; // r0
  int v87; // [sp+20h] [bp-64h]
  glitch::IReferenceCounted *v88; // [sp+24h] [bp-60h]
  glitch::IReferenceCounted *v89[2]; // [sp+38h] [bp-4Ch] BYREF
  glitch::IReferenceCounted *v90[2]; // [sp+40h] [bp-44h] BYREF
  _BYTE v91[16]; // [sp+4Ch] [bp-38h] BYREF
  _BYTE *v92; // [sp+5Ch] [bp-28h]
  void *p; // [sp+60h] [bp-24h]
  _DWORD v94[4]; // [sp+64h] [bp-20h] BYREF
  _BYTE *v95; // [sp+74h] [bp-10h]
  void *v96; // [sp+78h] [bp-Ch]

  v4 = *((_DWORD *)a2 + 1);
  v5 = *(_DWORD **)(*((_DWORD *)a2 + 9) + 32);
  v6 = v4 == 0;
  if ( v4 )
    ++v4;
  v90[1] = (glitch::IReferenceCounted *)&glitch::collada::CColladaDatabase::DefaultFactory;
  v90[0] = a2;
  if ( !v6 )
    *((_DWORD *)a2 + 1) = v4;
  if ( v5[4] )
  {
    glitch::collada::CResFileManager::updateExternalResources(this, a2, a3);
    goto LABEL_114;
  }
  Version = (const char *)glitch::collada::CColladaDatabase::getVersion((glitch::collada::CColladaDatabase *)v90);
  if ( LC_API_STRCMP_0(Version, "0,0,0,777") )
  {
    glitch::os::Printer::log((int)"- Error - Collada binary version check failed -----", 2);
    glitch::os::Printer::log((int)"- Expected versions : 0,0,0,777", 2);
    glitch::os::Printer::log(*((_DWORD *)a2 + 8), 2);
    v85 = glitch::collada::CColladaDatabase::getVersion((glitch::collada::CColladaDatabase *)v90);
    glitch::os::Printer::log(v85, 2);
    glitch::os::Printer::log((int)"- The file will be loaded\t\t\t\t\t\t\t -", 2);
    glitch::os::Printer::log((int)"- see CColladaDatabase::setVersionCheckBehavior(...) -", 2);
    glitch::os::Printer::log((int)"------------------------------------------------------", 2);
    if ( !*((_DWORD *)a2 + 19) )
    {
      v5[1] = 0;
      goto LABEL_10;
    }
    goto LABEL_116;
  }
  if ( *((_DWORD *)a2 + 19) )
  {
LABEL_116:
    v83 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a3 + 44))(a3);
    v84 = operator new(0x18u, 0);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v84,
      v83);
    v5[1] = v84;
    goto LABEL_10;
  }
  v5[1] = 0;
LABEL_10:
  v9 = v5[9];
  if ( v9 > 0 )
  {
    for ( i = 0; i != v9; ++i )
    {
      v11 = (_DWORD *)(v5[10] + 32 * i);
      v11[5] = glitch::collada::CColladaDatabase::getAnimationTrackEx(v11);
    }
  }
  v12 = v5[19];
  v95 = v94;
  v96 = v94;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    v94,
    0x10u);
  *v95 = 0;
  (*(void (__fastcall **)(_BYTE *, _DWORD, char *))(**(_DWORD **)(*((_DWORD *)this + 8) + 52) + 56))(
    v91,
    *(_DWORD *)(*((_DWORD *)this + 8) + 52),
    (char *)a2 + 12);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v94,
    p,
    v92);
  if ( p != v91 && p )
    GlitchFree(p);
  v14 = *((_DWORD *)this + 8);
  v15 = *(glitch::IReferenceCounted **)(v14 + 52);
  v88 = v15;
  v87 = *(_DWORD *)(*(_DWORD *)(v14 + 16) + 224);
  if ( v15 )
    ++*((_DWORD *)v15 + 1);
  if ( v12 > 0 )
  {
    v16 = 0;
    v17 = 0;
    v18 = v5;
    do
    {
      while ( 1 )
      {
        v19 = v18[20] + v16;
        if ( !*(_DWORD *)(v19 + 12) )
        {
          LogLevel = glitch::os::Printer::getLogLevel(v15);
          glitch::os::Printer::setLogLevel(3);
          (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, glitch::collada::CResFile *, _DWORD *, glitch::io::IReadFile *, int, int))(**((_DWORD **)this + 9) + 8))(
            v89,
            *((_DWORD *)this + 9),
            a2,
            v94,
            a3,
            v87,
            v19);
          v15 = (glitch::IReferenceCounted *)glitch::os::Printer::setLogLevel(LogLevel);
          v21 = v89[0];
          if ( v89[0] )
          {
            ++*((_DWORD *)v89[0] + 1);
            v22 = *(glitch::IReferenceCounted **)(v19 + 16);
            *(_DWORD *)(v19 + 16) = v21;
            if ( v22 )
              glitch::IReferenceCounted::drop(v22);
            v15 = v89[0];
            if ( v89[0] )
              break;
          }
        }
        ++v17;
        v16 += 20;
        if ( v17 == v12 )
          goto LABEL_27;
      }
      ++v17;
      v15 = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v89[0]);
      v16 += 20;
    }
    while ( v17 != v12 );
LABEL_27:
    v5 = v18;
  }
  if ( (int)v5[23] > 0 )
  {
    v23 = 0;
    v24 = 0;
    v25 = v5[23];
    do
    {
      v26 = (_DWORD *)(v5[24] + v23);
      v27 = v26[6];
      if ( v27 <= v5[21] )
      {
        v28 = v26[4];
        if ( v28 > 0 )
        {
          v29 = 0;
          for ( j = 0; j != v28; ++j )
          {
            v31 = v26[5] + v29;
            v32 = *(_DWORD *)(v31 + 8);
            if ( v32 > 0xA && v32 <= 0xE )
            {
              v33 = **(int ***)(v31 + 20);
              v34 = *v33;
              v35 = *v33 == -1;
              if ( *v33 == -1 )
                *v33 = 0;
              else
                v13 = v5[20];
              if ( !v35 )
                *v33 = v13 + 20 * v34;
            }
            v29 += 24;
          }
          v27 = v26[6];
        }
        if ( v27 == -1 )
        {
          v77 = (const char *)v26[2];
          if ( v77 )
          {
            glitch::collada::CColladaDatabase::CColladaDatabase(
              (glitch::collada::CColladaDatabase *)v89,
              v77,
              (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
            if ( v89[0] )
            {
              v26[6] = glitch::collada::CColladaDatabase::getEffect(
                         (glitch::collada::CColladaDatabase *)v89,
                         (const char *)(v26[3] + 1));
            }
            else
            {
              glitch::os::Printer::logf(3, "File : [%s] not found", v26[2]);
              v26[6] = 0;
            }
            glitch::collada::CColladaDatabase::~CColladaDatabase(v89);
          }
          else
          {
            v26[6] = 0;
          }
        }
        else
        {
          v13 = 116;
          v26[6] = v5[22] + 116 * v27;
        }
      }
      else
      {
        v26[6] = 0;
      }
      ++v24;
      v23 += 36;
    }
    while ( v24 != v25 );
  }
  v36 = v5[21];
  if ( v36 > 0 )
  {
    v37 = 0;
    for ( k = 0; k != v36; ++k )
    {
      v39 = (_DWORD *)(v5[22] + v37);
      if ( v39 != (_DWORD *)-8 )
      {
        v40 = v39[4];
        if ( v40 > 0 )
        {
          v41 = 0;
          for ( m = 0; m != v40; ++m )
          {
            v43 = v39[5] + v41;
            v44 = *(_DWORD *)(v43 + 4);
            if ( v44 > 0xA && v44 <= 0xE )
            {
              v45 = **(int ***)(v43 + 20);
              v46 = *v45;
              if ( *v45 == -1 )
              {
                *v45 = 0;
              }
              else if ( v46 < v5[19] )
              {
                *v45 = v5[20] + 20 * v46;
              }
            }
            v41 += 24;
          }
        }
      }
      if ( v39 != (_DWORD *)-32 )
      {
        v47 = v39[10];
        if ( v47 > 0 )
        {
          v48 = 0;
          for ( n = 0; n != v47; ++n )
          {
            v50 = v39[11] + v48;
            v51 = *(_DWORD *)(v50 + 4);
            if ( v51 > 0xA && v51 <= 0xE )
            {
              v52 = **(int ***)(v50 + 20);
              v53 = *v52;
              if ( *v52 == -1 )
              {
                *v52 = 0;
              }
              else if ( v53 < v5[19] )
              {
                *v52 = v5[20] + 20 * v53;
              }
            }
            v48 += 24;
          }
        }
      }
      if ( v39 != (_DWORD *)-60 )
      {
        v54 = v39[17];
        if ( v54 > 0 )
        {
          v55 = 0;
          for ( ii = 0; ii != v54; ++ii )
          {
            v57 = v39[18] + v55;
            v58 = *(_DWORD *)(v57 + 4);
            if ( v58 > 0xA && v58 <= 0xE )
            {
              v59 = **(int ***)(v57 + 20);
              v60 = *v59;
              if ( *v59 == -1 )
              {
                *v59 = 0;
              }
              else if ( v60 < v5[19] )
              {
                *v59 = v5[20] + 20 * v60;
              }
            }
            v55 += 24;
          }
        }
      }
      if ( v39 != (_DWORD *)-88 )
      {
        v61 = v39[24];
        if ( v61 > 0 )
        {
          v62 = 0;
          for ( jj = 0; jj != v61; ++jj )
          {
            v64 = v39[25] + v62;
            v65 = *(_DWORD *)(v64 + 4);
            if ( v65 > 0xA && v65 <= 0xE )
            {
              v66 = **(int ***)(v64 + 20);
              v67 = *v66;
              if ( *v66 == -1 )
              {
                *v66 = 0;
              }
              else if ( v67 < v5[19] )
              {
                *v66 = v5[20] + 20 * v67;
              }
            }
            v62 += 24;
          }
        }
      }
      v37 += 116;
    }
  }
  v68 = v90[0];
  v69 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v90[0] + 9) + 32) + 112);
  if ( v69 > 0 )
  {
    for ( kk = 0; kk != v69; ++kk )
    {
      Controller = (_DWORD *)glitch::collada::CColladaDatabase::getController(
                               (glitch::collada::CColladaDatabase *)v90,
                               kk);
      if ( *Controller == 1 )
      {
        v72 = Controller[2];
        v73 = *(_DWORD *)(v72 + 16);
        if ( v73 > 0 )
        {
          for ( mm = 0; mm != v73; ++mm )
          {
            v75 = *(_DWORD *)(v72 + 20);
            v76 = *(_DWORD *)(v75 + 4 * mm);
            if ( v76 <= *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v90[0] + 9) + 32) + 104) )
              *(_DWORD *)(v75 + 4 * mm) = glitch::collada::CColladaDatabase::getGeometry(
                                            (glitch::collada::CColladaDatabase *)v90,
                                            v76);
          }
        }
      }
    }
    v68 = v90[0];
  }
  v78 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v68 + 9) + 32) + 120);
  if ( v78 > 0 )
  {
    for ( nn = 0; nn != v78; ++nn )
    {
      while ( 1 )
      {
        Emitter = glitch::collada::CColladaDatabase::getEmitter((glitch::collada::CColladaDatabase *)v90, nn);
        if ( *(_DWORD *)(Emitter + 80) == 2 )
          break;
        if ( ++nn == v78 )
          goto LABEL_109;
      }
      v81 = *(_DWORD **)(Emitter + 84);
      v81[1] = *(_DWORD *)(*(_DWORD *)(glitch::collada::CColladaDatabase::getNode(
                                         (glitch::collada::CColladaDatabase *)v90,
                                         (const char *)(*v81 + 1))
                                     + 68)
                         + 4);
    }
  }
LABEL_109:
  v5[4] = 1;
  if ( v88 )
    glitch::IReferenceCounted::drop(v88);
  if ( v96 != v94 && v96 )
    GlitchFree(v96);
LABEL_114:
  glitch::collada::CColladaDatabase::~CColladaDatabase(v90);
  return 0;
}


// ===== 6594a0 glitch::collada::CResFactory::getTextureImpl(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::io::IReadFile *,glitch::video::CTextureManager *,char const*,char const*) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CResFactory::getTextureImpl(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        int a4,
        char *a5,
        char *a6,
        char *a7)
{
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  glitch::IReferenceCounted *v11; // r3
  glitch::IReferenceCounted *v12; // r0
  int v13; // [sp+8h] [bp-84h]
  void *v16; // [sp+10h] [bp-7Ch]
  glitch::IReferenceCounted *v17; // [sp+18h] [bp-74h] BYREF
  int v18; // [sp+1Ch] [bp-70h] BYREF
  glitch::IReferenceCounted *v19; // [sp+20h] [bp-6Ch] BYREF
  _BYTE v20[56]; // [sp+24h] [bp-68h] BYREF
  _DWORD v21[5]; // [sp+5Ch] [bp-30h] BYREF
  char *v22; // [sp+70h] [bp-1Ch]
  void *v23[5]; // [sp+74h] [bp-18h] BYREF
  void *v24; // [sp+88h] [bp-4h]
  void *v25[5]; // [sp+8Ch] [bp+0h] BYREF
  void *p; // [sp+A0h] [bp+14h]
  _DWORD v27[5]; // [sp+A4h] [bp+18h] BYREF
  void *v28; // [sp+B8h] [bp+2Ch]

  std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
    v27,
    a3,
    "/");
  std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
    v25,
    (int)v27,
    a6);
  glitch::video::CTextureManager::getTexture(a1, a5, (char *)p, a7);
  if ( p != v25 && p )
    GlitchFree(p);
  if ( v28 != v27 && v28 )
    GlitchFree(v28);
  if ( !*a1 )
  {
    glitch::video::CTextureManager::getTexture(&v19, a5, a6, a7);
    v9 = v19;
    if ( v19 )
      ++*((_DWORD *)v19 + 1);
    v10 = *a1;
    *a1 = v9;
    if ( v10 )
      glitch::IReferenceCounted::drop(v10);
    if ( v19 )
      glitch::IReferenceCounted::drop(v19);
    if ( !*a1 )
    {
      if ( a4 )
      {
        v16 = (void *)(*(int (__fastcall **)(int, char *, int *))(*(_DWORD *)a4 + 52))(a4, a6, &v18);
        if ( v16 )
        {
          v13 = v18;
          std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
            v23,
            a3,
            "/");
          std::operator+<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>(
            v21,
            (int)v23,
            a6);
          glitch::io::CMemoryReadFile::CMemoryReadFile((glitch::io::CMemoryReadFile *)v20, (int)v16, v13, v22, 0);
          if ( v22 != (char *)v21 && v22 )
            GlitchFree(v22);
          if ( v24 != v23 && v24 )
            GlitchFree(v24);
          glitch::video::CTextureManager::getTexture(
            &v17,
            (glitch::io::IReadFile *)a5,
            (glitch::io::IReadFile *)v20,
            a7);
          v11 = v17;
          if ( v17 )
            ++*((_DWORD *)v17 + 1);
          v12 = *a1;
          *a1 = v11;
          if ( v12 )
            glitch::IReferenceCounted::drop(v12);
          if ( v17 )
            glitch::IReferenceCounted::drop(v17);
          glitch::io::CMemoryReadFile::~CMemoryReadFile((glitch::io::CMemoryReadFile *)v20);
        }
      }
    }
  }
  return a1;
}


// ===== 659704 glitch::collada::CResFactory::getTexture(glitch::collada::CResFile *,std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&,glitch::io::IReadFile *,glitch::video::CTextureManager *,glitch::collada::SImage *) =====
glitch::IReferenceCounted **__fastcall glitch::collada::CResFactory::getTexture(
        glitch::IReferenceCounted **a1,
        int a2,
        int a3,
        int a4,
        int a5,
        char *a6,
        char **a7)
{
  char *v8; // r12

  v8 = (char *)*(unsigned __int8 *)(glitch::collada::CResFileManager::Inst + 41);
  if ( *(_BYTE *)(glitch::collada::CResFileManager::Inst + 41) )
    v8 = *a7;
  glitch::collada::CResFactory::getTextureImpl(a1, a2, a4, a5, a6, a7[2], v8);
  return a1;
}


// ===== 659768 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_lower_bound<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_lower_bound<char const*>(
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


// ===== 659874 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *> const&) =====
int __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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


// ===== 659a8c std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(
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


// ===== 659b60 glitch::collada::CResFileManager::unload(char const*,bool) =====
int __fastcall glitch::collada::CResFileManager::unload(glitch::collada::CResFileManager *this, char *a2, int a3)
{
  int v4; // r8
  void (__fastcall *v6)(_BYTE *, int, _DWORD *); // r10
  int v7; // r7
  _DWORD *v9; // [sp+4h] [bp-40h] BYREF
  _BYTE v10[20]; // [sp+Ch] [bp-38h] BYREF
  void *p; // [sp+20h] [bp-24h]
  _DWORD v12[5]; // [sp+24h] [bp-20h] BYREF
  void *v13; // [sp+38h] [bp-Ch]

  v4 = *(_DWORD *)(*((_DWORD *)this + 8) + 52);
  v6 = *(void (__fastcall **)(_BYTE *, int, _DWORD *))(*(_DWORD *)v4 + 52);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v12,
    a2);
  v6(v10, v4, v12);
  v9 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(
         (_DWORD *)this + 2,
         (int)v10);
  v7 = glitch::collada::CResFileManager::unload((int)this, (int)&v9, a3);
  if ( p != v10 && p )
    GlitchFree(p);
  if ( v13 != v12 && v13 )
    GlitchFree(v13);
  return v7;
}


// ===== 659c3c glitch::collada::CResFileManager::unloadAll(void) =====
int __fastcall glitch::collada::CResFileManager::unloadAll(glitch::collada::CResFileManager *this)
{
  int v1; // r3
  char *v2; // r6
  int v4; // r7
  int v5; // r4
  int v7; // r2
  int v8; // r4
  int v9; // r1

  v1 = *((_DWORD *)this + 4);
  v2 = (char *)this + 8;
  v4 = 0;
  if ( (glitch::collada::CResFileManager *)((char *)this + 8) != (glitch::collada::CResFileManager *)v1 )
  {
    do
    {
      v5 = *(_DWORD *)(v1 + 12);
      if ( v5 )
      {
        while ( *(_DWORD *)(v5 + 8) )
          v5 = *(_DWORD *)(v5 + 8);
        if ( !glitch::collada::CResFileManager::unload(this, *(char **)(v1 + 36), 0) )
          ++v4;
        v1 = v5;
      }
      else
      {
        v7 = *(_DWORD *)(v1 + 4);
        if ( v1 == *(_DWORD *)(v7 + 12) )
        {
          do
          {
            v8 = v7;
            v7 = *(_DWORD *)(v7 + 4);
          }
          while ( *(_DWORD *)(v7 + 12) == v8 );
          v9 = *(_DWORD *)(v8 + 12);
        }
        else
        {
          v8 = v1;
          v9 = 0;
        }
        if ( v9 != v7 )
          v8 = v7;
        if ( !glitch::collada::CResFileManager::unload(this, *(char **)(v1 + 36), 0) )
          ++v4;
        v1 = v8;
      }
    }
    while ( v2 != (char *)v1 );
  }
  return v4;
}


// ===== 659cfc glitch::collada::CResFileManager::unload(glitch::collada::SCollada const*,bool) =====
char *__fastcall glitch::collada::CResFileManager::unload(glitch::collada::CResFileManager *a1, int a2, int a3)
{
  _DWORD *v3; // r3
  _DWORD *v4; // r5
  _DWORD *v5; // r12
  _DWORD *v7; // r4

  v3 = *((_DWORD **)a1 + 4);
  v4 = (_DWORD *)((char *)a1 + 8);
  while ( v4 != v3 )
  {
    while ( 1 )
    {
      if ( a2 == *(_DWORD *)(*(_DWORD *)(v3[10] + 36) + 32) )
        return (char *)glitch::collada::CResFileManager::unload(a1, (char *)v3[9], a3);
      v5 = (_DWORD *)v3[3];
      if ( !v5 )
        break;
      while ( v5[2] )
        v5 = (_DWORD *)v5[2];
      v3 = v5;
      if ( v4 == v5 )
        return (char *)&dword_0 + 3;
    }
    v7 = (_DWORD *)v3[1];
    if ( v3 == (_DWORD *)v7[3] )
    {
      do
      {
        v3 = v7;
        v7 = (_DWORD *)v7[1];
      }
      while ( (_DWORD *)v7[3] == v3 );
      v5 = (_DWORD *)v3[3];
    }
    if ( v5 != v7 )
      v3 = v7;
  }
  return (char *)&dword_0 + 3;
}


// ===== 659d9c std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<char const*>(char const* const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v2; // r5
  _DWORD *v4; // r10
  const void *v5; // r3
  _DWORD *v6; // r4
  int v7; // r7
  int v8; // r6
  size_t v9; // r2
  int v10; // r3
  const void *v11; // r3
  _DWORD *v12; // r4
  int v13; // r7
  int v14; // r6
  size_t v15; // r2
  int v16; // r8
  int v18; // [sp+0h] [bp-54h]
  _DWORD v20[4]; // [sp+1Ch] [bp-38h] BYREF
  int v21; // [sp+2Ch] [bp-28h]
  void *v22; // [sp+30h] [bp-24h]
  _DWORD v23[4]; // [sp+34h] [bp-20h] BYREF
  int v24; // [sp+44h] [bp-10h]
  void *v25; // [sp+48h] [bp-Ch]

  v2 = (_DWORD *)a1[1];
  if ( !v2 )
    return a1;
  v4 = a1;
  do
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v23,
      *a2);
    v5 = (const void *)v2[9];
    v6 = v25;
    v7 = v2[8] - (_DWORD)v5;
    v8 = v24 - (_DWORD)v25;
    if ( v24 - (int)v25 >= v7 )
      v9 = v2[8] - (_DWORD)v5;
    else
      v9 = v24 - (_DWORD)v25;
    v10 = memcmp(v5, v25, v9);
    if ( !v10 )
    {
      if ( v7 >= v8 )
        v10 = v7 > v8;
      else
        v10 = -1;
    }
    if ( v6 != v23 && v6 )
    {
      v18 = v10;
      GlitchFree(v6);
      v10 = v18;
    }
    if ( v10 < 0 )
      v2 = (_DWORD *)v2[3];
    else
      v4 = v2;
    if ( v10 >= 0 )
      v2 = (_DWORD *)v2[2];
  }
  while ( v2 );
  if ( v4 != a1 )
  {
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v20,
      *a2);
    v11 = (const void *)v4[9];
    v12 = v22;
    v13 = v4[8] - (_DWORD)v11;
    v14 = v21 - (_DWORD)v22;
    if ( v13 >= v21 - (int)v22 )
      v15 = v21 - (_DWORD)v22;
    else
      v15 = v4[8] - (_DWORD)v11;
    v16 = memcmp(v22, v11, v15);
    if ( !v16 )
    {
      if ( v14 >= v13 )
        v16 = v14 > v13;
      else
        v16 = -1;
    }
    if ( v12 != v20 && v12 )
      GlitchFree(v12);
    if ( v16 < 0 )
      return a1;
  }
  return v4;
}


// ===== 659f3c std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *> const&) =====
int *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
      if ( !std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>::operator()(
              (int)(a2 + 5),
              a4,
              (int)(v16 + 4)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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


// ===== 65a440 std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _BYTE *v4; // r11
  _BYTE *v5; // r10
  _DWORD *v6; // r8
  int v7; // r7
  const void *v8; // r3
  int v9; // r6
  size_t v10; // r2
  int v11; // r0
  _DWORD *v12; // r3
  const void *v13; // r3
  int v14; // r7
  size_t v15; // r2
  int v16; // r0
  bool v17; // zf
  bool v18; // nf
  _DWORD *v19; // r0
  int v20; // r4
  _DWORD *v22; // [sp+8h] [bp-2Ch] BYREF
  int v23; // [sp+Ch] [bp-28h] BYREF
  void *v24[5]; // [sp+10h] [bp-24h] BYREF
  void *p; // [sp+24h] [bp-10h]
  int v26; // [sp+28h] [bp-Ch]

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *(_BYTE **)(a2 + 16);
    v5 = *(_BYTE **)(a2 + 20);
    v6 = a1;
    v7 = v4 - v5;
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      if ( v7 >= v9 )
        v10 = v2[8] - (_DWORD)v8;
      else
        v10 = v4 - v5;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_8:
          v12 = (_DWORD *)v2[2];
          if ( !v12 )
            goto LABEL_12;
          goto LABEL_9;
        }
      }
      else if ( v9 >= v7 )
      {
        goto LABEL_8;
      }
      v12 = (_DWORD *)v2[3];
      v2 = v6;
      if ( !v12 )
        goto LABEL_12;
LABEL_9:
      v6 = v2;
      v2 = v12;
    }
  }
  v4 = *(_BYTE **)(a2 + 16);
  v5 = *(_BYTE **)(a2 + 20);
  v2 = a1;
LABEL_12:
  if ( a1 != v2 )
  {
    v13 = (const void *)v2[9];
    v14 = v2[8] - (_DWORD)v13;
    if ( v14 >= v4 - v5 )
      v15 = v4 - v5;
    else
      v15 = v2[8] - (_DWORD)v13;
    v16 = memcmp(v5, v13, v15);
    v17 = v16 == 0;
    v18 = v16 < 0;
    v19 = v2;
    if ( v17 )
    {
      if ( v4 - v5 >= v14 )
        return v19 + 10;
    }
    else if ( !v18 )
    {
      return v19 + 10;
    }
  }
  v24[4] = v24;
  p = v24;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v24,
    v5,
    v4);
  v22 = v2;
  v26 = 0;
  std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    &v23,
    a1,
    (int *)&v22,
    (int)v24);
  v20 = v23;
  if ( p != v24 && p )
    GlitchFree(p);
  v19 = (_DWORD *)v20;
  return v19 + 10;
}


// ===== 65a5cc std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(char const* const&) =====
_DWORD *__fastcall std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(
        _DWORD *a1,
        char **a2)
{
  _DWORD *v4; // r5
  const void *v5; // r2
  _DWORD *v6; // r6
  const void *v7; // r1
  int v8; // r11
  int v9; // r9
  size_t v10; // r2
  unsigned int v11; // r0
  _DWORD *v12; // r2
  _BOOL4 v13; // r9
  int v14; // r5
  _DWORD *v16; // [sp+8h] [bp-64h] BYREF
  int v17; // [sp+Ch] [bp-60h] BYREF
  void *v18[5]; // [sp+18h] [bp-54h] BYREF
  void *p; // [sp+2Ch] [bp-40h]
  int v20; // [sp+30h] [bp-3Ch]
  void *v21[5]; // [sp+34h] [bp-38h] BYREF
  void *v22; // [sp+48h] [bp-24h]
  _DWORD v23[4]; // [sp+4Ch] [bp-20h] BYREF
  int v24; // [sp+5Ch] [bp-10h]
  void *v25; // [sp+60h] [bp-Ch]

  v4 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_lower_bound<char const*>(
         a1,
         a2);
  if ( v4 == a1 )
    goto LABEL_12;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v23,
    *a2);
  v5 = (const void *)v4[9];
  v6 = v25;
  v7 = v5;
  v8 = v4[8] - (_DWORD)v5;
  v9 = v24 - (_DWORD)v25;
  if ( v8 >= v24 - (int)v25 )
    v10 = v24 - (_DWORD)v25;
  else
    v10 = v4[8] - (_DWORD)v5;
  v11 = memcmp(v25, v7, v10);
  v12 = v4;
  if ( v11 )
    v13 = v11 >> 31;
  else
    v13 = v9 < v8;
  if ( v6 != v23 && v6 )
  {
    GlitchFree(v6);
    v12 = v4;
  }
  if ( v13 )
  {
LABEL_12:
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
      v21,
      *a2);
    v18[4] = v18;
    p = v18;
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
      v18,
      v22,
      (_BYTE *)v21[4]);
    v16 = v4;
    v20 = 0;
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v17,
      a1,
      (int *)&v16,
      (int)v18);
    v14 = v17;
    if ( p != v18 && p )
      GlitchFree(p);
    if ( v22 != v21 && v22 )
      GlitchFree(v22);
    v12 = (_DWORD *)v14;
  }
  return v12 + 10;
}


// ===== 65a748 glitch::collada::CResFileManager::get(glitch::io::IReadFile *,bool,bool) =====
glitch::collada::CResFile *__fastcall glitch::collada::CResFileManager::get(
        glitch::collada::CResFileManager *this,
        glitch::io::IReadFile *a2,
        int a3,
        int a4)
{
  int v6; // r6
  char *v7; // r0
  _DWORD *v8; // r10
  glitch::collada::CResFile **v9; // r0
  glitch::collada::CResFile *v10; // r6
  glitch::io::IReadFile *File; // r7
  int Process; // r8
  char *v14; // [sp+0h] [bp-54h]
  char *v15; // [sp+0h] [bp-54h]
  char v16; // [sp+4h] [bp-50h]
  char *v19; // [sp+10h] [bp-44h] BYREF
  char *v20; // [sp+14h] [bp-40h] BYREF
  _DWORD v21[5]; // [sp+1Ch] [bp-38h] BYREF
  void *p; // [sp+30h] [bp-24h]
  _BYTE v23[20]; // [sp+34h] [bp-20h] BYREF
  void *v24; // [sp+48h] [bp-Ch]

  v16 = *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40);
  *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40) = 0;
  v6 = *(_DWORD *)(*((_DWORD *)this + 8) + 52);
  v14 = *(char **)(*(_DWORD *)v6 + 52);
  v7 = (char *)(*(int (__fastcall **)(glitch::io::IReadFile *))(*(_DWORD *)a2 + 40))(a2);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v21,
    v7);
  ((void (__fastcall *)(_BYTE *, int, _DWORD *))v14)(v23, v6, v21);
  if ( p != v21 && p )
    GlitchFree(p);
  v8 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(
         (_DWORD *)this + 2,
         (int)v23);
  if ( v8 == (_DWORD *)((char *)this + 8) )
  {
    if ( a3 )
    {
      v15 = (char *)v24;
      v10 = (glitch::collada::CResFile *)operator new(0x50u, 0);
      glitch::collada::CResFile::CResFile(v10, v15, a2, a4);
      v20 = (char *)v24;
      *std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(
         v8,
         &v20) = v10;
      if ( !*(_DWORD *)(*((_DWORD *)v10 + 9) + 20) )
      {
        File = glitch::collada::CResFileManager::getReadFile(this, a2);
        Process = glitch::collada::CResFileManager::postLoadProcess(this, v10, File);
        glitch::IReferenceCounted::drop(File);
        if ( Process )
          v10 = nullptr;
      }
    }
    else
    {
      v10 = nullptr;
    }
  }
  else
  {
    std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>(
      (_DWORD *)this + 2,
      (int)v23);
    v19 = (char *)v24;
    v9 = (glitch::collada::CResFile **)std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(
                                         (_DWORD *)this + 2,
                                         &v19);
    v10 = *v9;
    glitch::res::File::ExternalFilePtr[*(_DWORD *)(*((_DWORD *)*v9 + 9) + 20) >> 31] = *((_DWORD *)*v9 + 9);
    glitch::res::File::ExternalFileOffsetTableSize[*(_DWORD *)(*((_DWORD *)v10 + 9) + 20) >> 31] = glitch::res::File::SizeOfHeader
                                                                                                 + 4
                                                                                                 * *(_DWORD *)(*((_DWORD *)v10 + 9) + 16);
    glitch::res::File::SizeOfHeader = *(_DWORD *)(*((_DWORD *)v10 + 9) + 8);
  }
  if ( v24 != v23 && v24 )
    GlitchFree(v24);
  *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40) = v16;
  return v10;
}


// ===== 65a98c glitch::collada::CResFileManager::load(glitch::io::IReadFile *,bool,void (*)(char const*,glitch::collada::SCollada const*),bool) =====
glitch::collada::CResFile *__fastcall glitch::collada::CResFileManager::load(
        glitch::collada::CResFileManager *a1,
        glitch::io::IReadFile *a2,
        int a3,
        int a4,
        bool a5)
{
  if ( a3 )
    return nullptr;
  else
    return glitch::collada::CResFileManager::get(a1, a2, 1, a5);
}


// ===== 65a9a8 glitch::collada::CResFileManager::get(char const*,bool) =====
glitch::collada::CResFile *__fastcall glitch::collada::CResFileManager::get(
        glitch::collada::CResFileManager *this,
        char *a2,
        int a3)
{
  int v4; // r8
  void (__fastcall *v5)(_BYTE *, int, _DWORD *); // r10
  _DWORD *v6; // r8
  glitch::collada::CResFile **v7; // r0
  glitch::collada::CResFile *v8; // r5
  const char *v10; // r1
  __va_list v11; // r2
  glitch::io::IReadFile *v12; // r10
  int Process; // r0
  glitch::IReferenceCounted *v14; // r12
  const char *v15; // r1
  __va_list v16; // r2
  const char *v17; // r1
  __va_list v18; // r2
  char *v19; // [sp+0h] [bp-3Ch]
  glitch::IReferenceCounted *File; // [sp+0h] [bp-3Ch]
  glitch::IReferenceCounted *v21; // [sp+0h] [bp-3Ch]
  char v22; // [sp+4h] [bp-38h]
  char *v25; // [sp+14h] [bp-28h] BYREF
  char *v26; // [sp+18h] [bp-24h] BYREF
  char *v27; // [sp+1Ch] [bp-20h] BYREF
  _DWORD v28[5]; // [sp+24h] [bp-18h] BYREF
  void *p; // [sp+38h] [bp-4h]
  _BYTE v30[20]; // [sp+3Ch] [bp+0h] BYREF
  char *v31; // [sp+50h] [bp+14h]

  v22 = *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40);
  *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40) = 0;
  v4 = *(_DWORD *)(*((_DWORD *)this + 8) + 52);
  v5 = *(void (__fastcall **)(_BYTE *, int, _DWORD *))(*(_DWORD *)v4 + 52);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    v28,
    a2);
  v5(v30, v4, v28);
  if ( p != v28 && p )
    GlitchFree(p);
  v27 = v31;
  v6 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<char const*>(
         (_DWORD *)this + 2,
         &v27);
  if ( v6 == (_DWORD *)((char *)this + 8) )
  {
    if ( a3 )
    {
      v12 = (glitch::io::IReadFile *)(*(int (__fastcall **)(_DWORD, char *))(**(_DWORD **)(*((_DWORD *)this + 8) + 52)
                                                                           + 12))(
                                       *(_DWORD *)(*((_DWORD *)this + 8) + 52),
                                       a2);
      if ( v12 )
      {
        v19 = v31;
        v8 = (glitch::collada::CResFile *)operator new(0x50u, 0);
        glitch::collada::CResFile::CResFile(v8, v19, v12, 0);
        if ( v8
          && (v26 = v31,
              *std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(
                 v6,
                 &v26) = v8,
              !*(_DWORD *)(*((_DWORD *)v8 + 9) + 20))
          && (File = glitch::collada::CResFileManager::getReadFile(this, v12),
              Process = glitch::collada::CResFileManager::postLoadProcess(this, v8, File),
              v14 = File,
              v21 = (glitch::IReferenceCounted *)Process,
              glitch::IReferenceCounted::drop(v14),
              v21) )
        {
          glitch::collada::CResFileManager::unload(this, v31, 0);
          v8 = nullptr;
          glitch::IReferenceCounted::drop(v12);
        }
        else
        {
          glitch::IReferenceCounted::drop(v12);
        }
      }
      else
      {
        v8 = nullptr;
        glitch::os::Printer::print((glitch::os::Printer *)"- Error - File not found   -", v10, v11);
        glitch::os::Printer::print((glitch::os::Printer *)a2, v15, v16);
        glitch::os::Printer::print((glitch::os::Printer *)"----------------------------", v17, v18);
      }
    }
    else
    {
      v8 = nullptr;
    }
  }
  else
  {
    v25 = v31;
    v7 = (glitch::collada::CResFile **)std::map<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>,glitch::collada::CResFile *,std::less<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>>,glitch::core::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>> const,glitch::collada::CResFile *>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<char const*>(
                                         (_DWORD *)this + 2,
                                         &v25);
    v8 = *v7;
    glitch::res::File::ExternalFilePtr[*(_DWORD *)(*((_DWORD *)*v7 + 9) + 20) >> 31] = *((_DWORD *)*v7 + 9);
    glitch::res::File::ExternalFileOffsetTableSize[*(_DWORD *)(*((_DWORD *)v8 + 9) + 20) >> 31] = glitch::res::File::SizeOfHeader
                                                                                                + 4
                                                                                                * *(_DWORD *)(*((_DWORD *)v8 + 9) + 16);
    glitch::res::File::SizeOfHeader = *(_DWORD *)(*((_DWORD *)v8 + 9) + 8);
  }
  if ( v31 != v30 && v31 )
    GlitchFree(v31);
  *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40) = v22;
  return v8;
}


// ===== 65ac5c glitch::collada::CResFileManager::load(char const*,bool,void (*)(char const*,glitch::collada::SCollada const*)) =====
glitch::collada::CResFile *__fastcall glitch::collada::CResFileManager::load(
        glitch::collada::CResFileManager *a1,
        char *a2,
        int a3)
{
  if ( a3 )
    return nullptr;
  else
    return glitch::collada::CResFileManager::get(a1, a2, 1);
}


// ===== 65ac74 glitch::collada::CResFileManager::get(glitch::collada::CResFile *,char const*,bool) =====
glitch::collada::CResFile *__fastcall glitch::collada::CResFileManager::get(
        glitch::collada::CResFileManager *this,
        glitch::collada::CResFile *a2,
        char *a3,
        int a4)
{
  void *v7; // r1
  int v8; // r3
  int v9; // r10
  glitch::collada::CResFile *v10; // r8
  _DWORD v12[4]; // [sp+4h] [bp-1Ch] BYREF
  char *v13; // [sp+14h] [bp-Ch]
  void *p; // [sp+18h] [bp-8h]

  (*(void (__fastcall **)(_DWORD *, _DWORD, char *))(**(_DWORD **)(*((_DWORD *)this + 8) + 52) + 56))(
    v12,
    *(_DWORD *)(*((_DWORD *)this + 8) + 52),
    (char *)a2 + 12);
  v7 = p;
  if ( p == v13 )
  {
    v10 = glitch::collada::CResFileManager::get(this, a3, a4);
  }
  else
  {
    v8 = *(v13 - 1);
    if ( v8 != 92 && v8 != 47 )
    {
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
        v12,
        "/",
        "");
      v7 = p;
    }
    v9 = (*(int (__fastcall **)(_DWORD, void *, int, int))(**(_DWORD **)(*((_DWORD *)this + 8) + 52) + 28))(
           *(_DWORD *)(*((_DWORD *)this + 8) + 52),
           v7,
           1,
           1);
    v10 = glitch::collada::CResFileManager::get(this, a3, a4);
    if ( v9 )
      (*(void (__fastcall **)(_DWORD, void *))(**(_DWORD **)(*((_DWORD *)this + 8) + 52) + 40))(
        *(_DWORD *)(*((_DWORD *)this + 8) + 52),
        p);
  }
  if ( p != v12 && p )
    GlitchFree(p);
  return v10;
}


// ===== 65adc4 glitch::collada::CRootSceneNode::getUID(void) =====
int __fastcall glitch::collada::CRootSceneNode::getUID(glitch::collada::CRootSceneNode *this)
{
  int result; // r0

  result = *((_DWORD *)this + 83);
  if ( result )
    return *(_DWORD *)(result + 32);
  return result;
}


// ===== 65add4 glitch::collada::CRootSceneNode::removeMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
void glitch::collada::CRootSceneNode::removeMaterial()
{
  ;
}


// ===== 65add8 glitch::collada::CRootSceneNode::getMaterial(uint) =====
_DWORD *__fastcall glitch::collada::CRootSceneNode::getMaterial(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r1
  _DWORD *v4; // r3
  _DWORD *v5; // t1
  _DWORD *v6; // r3
  int v7; // r2

  v5 = *(_DWORD **)(a2 + 376);
  v3 = (_DWORD *)(a2 + 376);
  v4 = v5;
  if ( a3 )
  {
    if ( v4 == v3 )
      goto LABEL_11;
    v7 = a3 - 1;
    while ( 1 )
    {
      v4 = (_DWORD *)*v4;
      if ( !v7 )
        break;
      --v7;
      if ( v3 == v4 )
        goto LABEL_11;
    }
  }
  if ( v4 == v3 )
  {
LABEL_11:
    *this = 0;
    return this;
  }
  v6 = (_DWORD *)v4[3];
  *this = v6;
  if ( v6 )
    ++*v6;
  return this;
}


// ===== 65ae38 glitch::collada::CRootSceneNode::getMaterialCount(void) =====
int __fastcall glitch::collada::CRootSceneNode::getMaterialCount(glitch::collada::CRootSceneNode *this)
{
  char *v1; // r0
  char *v2; // r3
  char *v3; // t1
  int v5; // r2

  v3 = *((char **)this + 94);
  v1 = (char *)this + 376;
  v2 = v3;
  if ( v3 == v1 )
    return 0;
  v5 = 0;
  do
  {
    v2 = *(char **)v2;
    ++v5;
  }
  while ( v1 != v2 );
  return v5;
}


// ===== 65ae64 glitch::collada::CRootSceneNode::getType(void) =====
int __fastcall glitch::collada::CRootSceneNode::getType(glitch::collada::CRootSceneNode *this)
{
  return 1919246692;
}


// ===== 65ae70 glitch::collada::CRootSceneNode::attachParticleSystems(void) =====
int __fastcall glitch::collada::CRootSceneNode::attachParticleSystems(int this)
{
  int v1; // r6
  int *i; // r4
  int v3; // r5

  v1 = this;
  v3 = this + 344;
  for ( i = *(int **)(this + 344); (int *)v3 != i; i = (int *)*i )
    this = (*(int (__fastcall **)(int, int))(*(_DWORD *)i[2] + 264))(i[2], v1);
  return this;
}


// ===== 65aeac `global constructor keyed to'.._source_glitch_collada_CColladaRootSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaRootSceneNode.cpp()
{
  dword_9F7028 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7024 = 1056964608;
}

