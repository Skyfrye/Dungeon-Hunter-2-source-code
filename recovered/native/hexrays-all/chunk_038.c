// ===== 65aecc glitch::collada::CRootSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::CRootSceneNode::serializeAttributes(int a1, int a2, _DWORD *a3)
{
  int v5; // r2

  glitch::scene::ISceneNode::serializeAttributes(a1, a2, a3);
  v5 = *(_DWORD *)(a1 + 332);
  if ( v5 )
    v5 = *(_DWORD *)(v5 + 32);
  return (*(int (__fastcall **)(int, const char *, int, _DWORD))(*(_DWORD *)a2 + 124))(a2, "Source", v5, 0);
}


// ===== 65af0c glitch::collada::CRootSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
// attributes: thunk
int __fastcall glitch::collada::CRootSceneNode::deserializeAttributes(int result, int *a2, _DWORD *a3)
{
  return glitch::scene::ISceneNode::deserializeAttributes(result, a2, a3);
}


// ===== 65af10 glitch::collada::CRootSceneNode::onAnimate(uint) =====
int __fastcall glitch::collada::CRootSceneNode::onAnimate(glitch::collada::CRootSceneNode *this, unsigned int a2)
{
  int result; // r0

  if ( *((_DWORD *)this + 107) == 1 )
    result = glitch::scene::ISceneNode::onAnimate((int)this, a2);
  else
    result = (*(int (__fastcall **)(glitch::collada::CRootSceneNode *, _DWORD))(*(_DWORD *)this + 184))(this, 0);
  *((_DWORD *)this + 108) = a2;
  return result;
}


// ===== 65af4c glitch::collada::CSceneNode::~CSceneNode() =====
void __fastcall glitch::collada::CSceneNode::~CSceneNode(glitch::IReferenceCounted **this, int *a2)
{
  int v2; // r3
  int *v4; // r5
  glitch::IReferenceCounted *v5; // r3

  v2 = *a2;
  v4 = a2;
  *this = (glitch::IReferenceCounted *)*a2;
  *(glitch::IReferenceCounted **)((char *)this + *(_DWORD *)(v2 - 28)) = (glitch::IReferenceCounted *)a2[7];
  *(glitch::IReferenceCounted **)((char *)this + *((_DWORD *)*this - 3)) = (glitch::IReferenceCounted *)a2[8];
  glitch::collada::CColladaDatabase::~CColladaDatabase(this + 83);
  v5 = (glitch::IReferenceCounted *)v4[1];
  ++v4;
  *this = v5;
  *(glitch::IReferenceCounted **)((char *)this + *((_DWORD *)v5 - 7)) = (glitch::IReferenceCounted *)v4[4];
  *(glitch::IReferenceCounted **)((char *)this + *((_DWORD *)*this - 3)) = (glitch::IReferenceCounted *)v4[5];
  glitch::scene::ISceneNode::~ISceneNode((glitch::scene::ISceneNode *)this, v4 + 1);
}


// ===== 65afc0 boost::intrusive_ptr<glitch::video::CMaterialRenderer const>::~intrusive_ptr() =====
glitch::video::CMaterialRenderer **__fastcall boost::intrusive_ptr<glitch::video::CMaterialRenderer const>::~intrusive_ptr(
        glitch::video::CMaterialRenderer **a1)
{
  glitch::video::CMaterialRenderer *v1; // r4

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CMaterialRenderer::~CMaterialRenderer(v1);
      LC_API_FREE_0(v1);
    }
  }
  return a1;
}


// ===== 65b000 glitch::collada::CRootSceneNode::removeMorphingMesh(glitch::collada::CMorphingMesh *) =====
void __fastcall glitch::collada::CRootSceneNode::removeMorphingMesh(
        glitch::collada::CRootSceneNode *this,
        glitch::collada::CMorphingMesh *a2)
{
  glitch::collada::CMorphingMesh **v2; // r0
  glitch::collada::CMorphingMesh **i; // r12
  glitch::collada::CMorphingMesh **v4; // t1
  glitch::collada::CMorphingMesh *v5; // r3
  glitch::collada::CMorphingMesh **v6; // r2

  v4 = *((glitch::collada::CMorphingMesh ***)this + 90);
  v2 = (glitch::collada::CMorphingMesh **)((char *)this + 360);
  for ( i = v4; v2 != i; i = (glitch::collada::CMorphingMesh **)*i )
  {
    if ( i[2] == a2 )
    {
      v5 = *i;
      v6 = (glitch::collada::CMorphingMesh **)i[1];
      *v6 = *i;
      *((_DWORD *)v5 + 1) = v6;
      GlitchFree(i);
      return;
    }
  }
}


// ===== 65b03c std::priv::_List_base<boost::intrusive_ptr<glitch::collada::CImage>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::collada::CImage>,(glitch::memory::E_MEMORY_HINT)0>>::clear(void) =====
void __fastcall std::priv::_List_base<boost::intrusive_ptr<glitch::collada::CImage>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::collada::CImage>,(glitch::memory::E_MEMORY_HINT)0>>::clear(
        _DWORD *a1)
{
  _DWORD *v1; // r4
  glitch::IReferenceCounted *v3; // r0
  _DWORD *v4; // r5

  v1 = (_DWORD *)*a1;
  if ( (_DWORD *)*a1 != a1 )
  {
    while ( 1 )
    {
      v3 = (glitch::IReferenceCounted *)v1[2];
      v4 = (_DWORD *)*v1;
      if ( v3 )
        glitch::IReferenceCounted::drop(v3);
      GlitchFree(v1);
      if ( v4 == a1 )
        break;
      v1 = v4;
    }
    v1 = a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 65b08c glitch::collada::CRootSceneNode::addURLToResolve(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&,ushort,uint,glitch::res::String const&) =====
int __fastcall glitch::collada::CRootSceneNode::addURLToResolve(int a1, int *a2, __int16 a3, int a4, int *a5)
{
  int v6; // r4
  _DWORD *v7; // r0
  _DWORD *v8; // r12
  _DWORD *v9; // r5
  _DWORD *v11; // r3
  int v12; // [sp+Ch] [bp-Ch]
  int v13; // [sp+10h] [bp-8h]

  v6 = *a5;
  LOWORD(v13) = a3;
  v12 = *a2;
  v7 = GlitchAlloc(0x1Cu, 0);
  v8 = v7 + 2;
  v9 = v7;
  *v8 = 1;
  v8[1] = v6;
  v8[2] = v12;
  v8[3] = v13;
  v8[4] = a4;
  v11 = *(_DWORD **)(a1 + 440);
  *v9 = a1 + 436;
  v9[1] = v11;
  *v11 = v9;
  *(_DWORD *)(a1 + 440) = v9;
  return 1;
}


// ===== 65b0fc glitch::collada::CRootSceneNode::addURLToResolve(boost::intrusive_ptr<glitch::video::CMaterial> const&,ushort,uint,glitch::res::String const&) =====
int __fastcall glitch::collada::CRootSceneNode::addURLToResolve(int a1, int *a2, __int16 a3, int a4, int *a5)
{
  int v6; // r4
  _DWORD *v7; // r0
  _DWORD *v8; // r12
  _DWORD *v9; // r5
  _DWORD *v11; // r3
  int v12; // [sp+Ch] [bp-Ch]
  int v13; // [sp+10h] [bp-8h]

  v6 = *a5;
  LOWORD(v13) = a3;
  v12 = *a2;
  v7 = GlitchAlloc(0x1Cu, 0);
  v8 = v7 + 2;
  v9 = v7;
  *v8 = 0;
  v8[1] = v6;
  v8[2] = v12;
  v8[3] = v13;
  v8[4] = a4;
  v11 = *(_DWORD **)(a1 + 440);
  *v9 = a1 + 436;
  v9[1] = v11;
  *v11 = v9;
  *(_DWORD *)(a1 + 440) = v9;
  return 0;
}


// ===== 65b16c std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int *a2)
{
  int v2; // r5
  size_t v4; // r7
  char *v6; // r0
  char *v7; // r7
  int v8; // r1
  char *v9; // r3
  int v10; // r8
  int v11; // r2
  char **v12; // r3
  int v13; // r6
  char *v14; // r12

  v2 = 0;
  v4 = (a2[1] - *a2) & 0xFFFFFFF8;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)GlitchAlloc(v4, 0);
  v7 = &v6[v4];
  a1[2] = v7;
  *a1 = v6;
  a1[1] = v6;
  v8 = *a2;
  v9 = v6;
  v10 = (a2[1] - *a2) >> 3;
  if ( v10 > 0 )
  {
    v11 = (a2[1] - *a2) >> 3;
    do
    {
      v12 = *(char ***)(v8 + v2);
      v13 = v8 + v2;
      v14 = &v6[v2];
      *(_DWORD *)&v6[v2] = v12;
      if ( v12 )
        v7 = *v12;
      v2 += 8;
      if ( v12 )
        *v12 = ++v7;
      --v11;
      *((_WORD *)v14 + 2) = *(_WORD *)(v13 + 4);
    }
    while ( v11 );
    v9 = &v6[8 * v10];
  }
  a1[1] = v9;
  return a1;
}


// ===== 65b210 glitch::collada::CRootSceneNode::addParticleSystem(glitch::collada::IParticleSystemSceneNode *) =====
_DWORD *__fastcall glitch::collada::CRootSceneNode::addParticleSystem(int a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3

  result = GlitchAlloc(0xCu, 0);
  result[2] = a2;
  v5 = *(_DWORD **)(a1 + 348);
  *result = a1 + 344;
  result[1] = v5;
  *v5 = result;
  *(_DWORD *)(a1 + 348) = result;
  return result;
}


// ===== 65b244 glitch::collada::CRootSceneNode::addLight(glitch::collada::CLightSceneNode *) =====
_DWORD *__fastcall glitch::collada::CRootSceneNode::addLight(
        glitch::collada::CRootSceneNode *this,
        glitch::collada::CLightSceneNode *a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3

  result = GlitchAlloc(0xCu, 0);
  result[2] = a2;
  v5 = *((_DWORD **)this + 99);
  *result = (char *)this + 392;
  result[1] = v5;
  *v5 = result;
  *((_DWORD *)this + 99) = result;
  return result;
}


// ===== 65b278 glitch::collada::CRootSceneNode::addMorphingMesh(glitch::collada::CMorphingMesh *) =====
_DWORD *__fastcall glitch::collada::CRootSceneNode::addMorphingMesh(
        glitch::collada::CRootSceneNode *this,
        glitch::collada::CMorphingMesh *a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3

  result = GlitchAlloc(0xCu, 0);
  result[2] = a2;
  v5 = *((_DWORD **)this + 91);
  *result = (char *)this + 360;
  result[1] = v5;
  *v5 = result;
  *((_DWORD *)this + 91) = result;
  return result;
}


// ===== 65b2ac glitch::collada::CRootSceneNode::addCamera(glitch::collada::CCameraSceneNode *) =====
_DWORD *__fastcall glitch::collada::CRootSceneNode::addCamera(int a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3

  result = GlitchAlloc(0xCu, 0);
  result[2] = a2;
  v5 = *(_DWORD **)(a1 + 372);
  *result = a1 + 368;
  result[1] = v5;
  *v5 = result;
  *(_DWORD *)(a1 + 372) = result;
  return result;
}


// ===== 65b2e0 glitch::collada::CCameraSceneNode::attach(glitch::scene::ISceneNode *) =====
glitch::scene::ISceneNode *__fastcall glitch::collada::CCameraSceneNode::attach(
        glitch::scene::ISceneNode *this,
        glitch::scene::ISceneNode *a2)
{
  glitch::scene::ISceneNode *v2; // r4
  int v3; // r3
  glitch::scene::ISceneNode *v4; // r5
  _DWORD *v5; // r3

  v2 = this;
  v3 = *(_DWORD *)(*((_DWORD *)this + 229) + 24);
  if ( *(_BYTE *)v3 )
  {
    this = glitch::scene::ISceneNode::getSceneNodeFromUID(a2, (const char *)(v3 + 1));
    v4 = this;
    if ( this )
      ++*(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12) + 4);
    v5 = *((_DWORD **)v2 + 228);
    if ( v5 )
      this = (glitch::scene::ISceneNode *)glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
    *((_DWORD *)v2 + 228) = v4;
  }
  return this;
}


// ===== 65b350 glitch::collada::CRootSceneNode::attachCameras(void) =====
glitch::scene::ISceneNode *__fastcall glitch::collada::CRootSceneNode::attachCameras(glitch::scene::ISceneNode *this)
{
  glitch::scene::ISceneNode *v1; // r6
  char *i; // r4
  char *v3; // r5

  v1 = this;
  v3 = (char *)this + 368;
  for ( i = *((char **)this + 92); v3 != i; i = *(char **)i )
    this = glitch::collada::CCameraSceneNode::attach(*((glitch::scene::ISceneNode **)i + 2), v1);
  return this;
}


// ===== 65b380 glitch::collada::CRootSceneNode::attachSkin(void) =====
void __fastcall glitch::collada::CRootSceneNode::attachSkin(glitch::collada::CRootSceneNode *this)
{
  char *i; // r4
  char *v3; // r5
  char *v4; // r0
  char *v5; // r4

  v3 = (char *)this + 352;
  for ( i = *((char **)this + 88); v3 != i; i = *(char **)i )
    glitch::collada::CSkinnedMesh::attach(*((glitch::collada::CSkinnedMesh **)i + 2), this);
  v4 = *((char **)this + 88);
  if ( v3 != v4 )
  {
    while ( 1 )
    {
      v5 = *(char **)v4;
      GlitchFree(v4);
      if ( v3 == v5 )
        break;
      v4 = v5;
    }
  }
  *((_DWORD *)this + 89) = v3;
  *((_DWORD *)this + 88) = v3;
}


// ===== 65b3dc glitch::collada::CRootSceneNode::onPostLoad(void) =====
int __fastcall glitch::collada::CRootSceneNode::onPostLoad(glitch::collada::CRootSceneNode *this)
{
  int result; // r0
  int v3; // r3

  glitch::collada::CRootSceneNode::attachSkin(this);
  glitch::collada::CRootSceneNode::attachCameras(this);
  glitch::collada::CRootSceneNode::attachParticleSystems((int)this);
  (*(void (__fastcall **)(glitch::collada::CRootSceneNode *, int))(*(_DWORD *)this + 184))(this, 1);
  result = (*(int (__fastcall **)(glitch::collada::CRootSceneNode *))(*(_DWORD *)this + 244))(this);
  v3 = *((_DWORD *)this + 71);
  *((_BYTE *)this + 424) = 1;
  *((_DWORD *)this + 71) = v3 | 0x100;
  return result;
}


// ===== 65b434 glitch::collada::CRootSceneNode::attachSkin(glitch::collada::CSkinnedMesh *) =====
_DWORD *__fastcall glitch::collada::CRootSceneNode::attachSkin(
        glitch::collada::CRootSceneNode *this,
        glitch::collada::CSkinnedMesh *a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r3

  if ( *((_BYTE *)this + 424) )
    return (_DWORD *)glitch::collada::CSkinnedMesh::attach(a2, this);
  result = GlitchAlloc(0xCu, *((unsigned __int8 *)this + 424));
  result[2] = a2;
  v5 = *((_DWORD **)this + 89);
  *result = (char *)this + 352;
  result[1] = v5;
  *v5 = result;
  *((_DWORD *)this + 89) = result;
  return result;
}


// ===== 65b484 glitch::collada::CRootSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::collada::CRootSceneNode::onRegisterSceneNode(glitch::collada::CRootSceneNode *this)
{
  int v3; // r5
  float *v4; // r0

  if ( !*((_DWORD *)this + 107) )
  {
    if ( *((_DWORD *)this + 70)
      || (v3 = *((_DWORD *)this + 68),
          v4 = (float *)(*(int (__fastcall **)(glitch::collada::CRootSceneNode *))(*(_DWORD *)this + 52))(this),
          !glitch::scene::CSceneManager::isCulled(v3, v4, 2)) )
    {
      glitch::scene::ISceneNode::onAnimate((int)this, *((_DWORD *)this + 108));
    }
  }
  return 1;
}


// ===== 65b4e4 glitch::collada::CRootSceneNode::getParticleSystem(char const*) =====
int __fastcall glitch::collada::CRootSceneNode::getParticleSystem(
        glitch::collada::CRootSceneNode *this,
        const char *a2)
{
  char *i; // r4
  char *v4; // r5
  const char *v5; // r0

  v4 = (char *)this + 344;
  for ( i = *((char **)this + 86); ; i = *(char **)i )
  {
    if ( v4 == i )
      return 0;
    v5 = (const char *)(*(int (__fastcall **)(int))(**((_DWORD **)i + 2) + 84))(*((_DWORD *)i + 2));
    if ( !LC_API_STRCASECMP_0(v5, a2) )
      break;
  }
  return *((_DWORD *)i + 2);
}


// ===== 65b538 glitch::collada::CRootSceneNode::hasMaterial(char const*) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CRootSceneNode::hasMaterial(
        glitch::collada::CRootSceneNode *this,
        const char *a2,
        const char *a3)
{
  const char *v3; // r4
  const char *v4; // r5
  _DWORD *v7; // r3

  v4 = a2 + 376;
  v3 = *((const char **)a2 + 94);
  if ( v3 == a2 + 376 )
  {
LABEL_7:
    *(_DWORD *)this = 0;
  }
  else
  {
    while ( LC_API_STRCMP_0(**((const char ***)v3 + 2), a3) )
    {
      v3 = *(const char **)v3;
      if ( v4 == v3 )
        goto LABEL_7;
    }
    v7 = *((_DWORD **)v3 + 3);
    *(_DWORD *)this = v7;
    if ( v7 )
    {
      ++*v7;
      return this;
    }
  }
  return this;
}


// ===== 65b5b0 glitch::collada::CRootSceneNode::getMorphingMesh(char const*) =====
int __fastcall glitch::collada::CRootSceneNode::getMorphingMesh(glitch::collada::CRootSceneNode *this, const char *a2)
{
  char *i; // r4
  char *v4; // r6
  int v5; // r5

  v4 = (char *)this + 360;
  for ( i = *((char **)this + 90); v4 != i; i = *(char **)i )
  {
    v5 = *((_DWORD *)i + 2);
    if ( !LC_API_STRCMP_0(*(const char **)(v5 + 8), a2) )
      return v5;
  }
  return 0;
}


// ===== 65b5f4 glitch::collada::CRootSceneNode::getLight(char const*) =====
int __fastcall glitch::collada::CRootSceneNode::getLight(glitch::collada::CRootSceneNode *this, const char *a2)
{
  char *i; // r4
  char *v4; // r5
  const char *v5; // r0

  v4 = (char *)this + 392;
  for ( i = *((char **)this + 98); ; i = *(char **)i )
  {
    if ( v4 == i )
      return 0;
    v5 = (const char *)(*(int (__fastcall **)(int))(**((_DWORD **)i + 2) + 84))(*((_DWORD *)i + 2));
    if ( !LC_API_STRCMP_0(v5, a2) )
      break;
  }
  return *((_DWORD *)i + 2);
}


// ===== 65b648 glitch::collada::CRootSceneNode::getImage(char const*) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CRootSceneNode::getImage(
        glitch::collada::CRootSceneNode *this,
        const char *a2,
        char *a3)
{
  const char *i; // r4
  const char *v7; // r7
  int v8; // r8
  _DWORD *v9; // r0
  glitch::IReferenceCounted *v10; // r3
  _DWORD *v11; // r3
  glitch::IReferenceCounted *v12; // r3
  glitch::IReferenceCounted *v14; // [sp+4h] [bp-8h] BYREF

  v7 = a2 + 384;
  for ( i = *((const char **)a2 + 96); i != v7; i = *(const char **)i )
  {
    v8 = *((_DWORD *)i + 2);
    if ( !LC_API_STRCMP_0(*(const char **)(v8 + 8), a3) )
    {
      *(_DWORD *)this = v8;
      ++*(_DWORD *)(v8 + 4);
      return this;
    }
  }
  glitch::collada::CColladaDatabase::constructImage(&v14, (glitch::collada::CColladaDatabase *)(a2 + 332), a3);
  if ( v14 )
  {
    v9 = GlitchAlloc(0xCu, 0);
    v10 = v14;
    v9[2] = v14;
    if ( v10 )
      ++*((_DWORD *)v10 + 1);
    v11 = *((_DWORD **)a2 + 97);
    *v9 = i;
    v9[1] = v11;
    *v11 = v9;
    v12 = v14;
    *((_DWORD *)a2 + 97) = v9;
    *(_DWORD *)this = v12;
    if ( v12 )
    {
      ++*((_DWORD *)v12 + 1);
      v12 = v14;
    }
    if ( v12 )
      glitch::IReferenceCounted::drop(v12);
  }
  else
  {
    *(_DWORD *)this = 0;
  }
  return this;
}


// ===== 65b734 glitch::collada::CRootSceneNode::CRootSceneNode(glitch::collada::CColladaDatabase const&) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CRootSceneNode::CRootSceneNode(
        glitch::collada::CRootSceneNode *this,
        const glitch::collada::CColladaDatabase *a2)
{
  *((_DWORD *)this + 111) = off_95B720;
  *((_DWORD *)this + 112) = 1;
  *(_DWORD *)this = off_983594;
  *(int *)((char *)&elf_hash_bucket[56] + (_DWORD)this) = (int)off_9835B4;
  glitch::collada::CSceneNode::CSceneNode();
  *(_DWORD *)this = off_9830AC;
  *((_DWORD *)this + 99) = (char *)this + 392;
  *((_DWORD *)this + 98) = (char *)this + 392;
  *((_DWORD *)this + 111) = off_9831B4;
  *((_DWORD *)this + 87) = (char *)this + 344;
  *((_DWORD *)this + 89) = (char *)this + 352;
  *((_DWORD *)this + 91) = (char *)this + 360;
  *((_DWORD *)this + 93) = (char *)this + 368;
  *((_DWORD *)this + 95) = (char *)this + 376;
  *((_DWORD *)this + 97) = (char *)this + 384;
  *((_DWORD *)this + 86) = (char *)this + 344;
  *((_DWORD *)this + 88) = (char *)this + 352;
  *((_DWORD *)this + 90) = (char *)this + 360;
  *((_DWORD *)this + 92) = (char *)this + 368;
  *((_DWORD *)this + 94) = (char *)this + 376;
  *((_DWORD *)this + 96) = (char *)this + 384;
  *((_DWORD *)this + 101) = 0;
  *((_BYTE *)this + 400) = 0;
  *((_DWORD *)this + 103) = (char *)this + 400;
  *((_DWORD *)this + 107) = 1;
  *((_DWORD *)this + 110) = (char *)this + 436;
  *((_DWORD *)this + 102) = (char *)this + 400;
  *((_DWORD *)this + 104) = 0;
  *((_BYTE *)this + 424) = 0;
  *((_DWORD *)this + 109) = (char *)this + 436;
  glitch::scene::ISceneNode::setAutomaticCulling((int)this, 0);
  return this;
}


// ===== 65b844 glitch::collada::CRootSceneNode::CRootSceneNode(glitch::collada::CColladaDatabase const&) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CRootSceneNode::CRootSceneNode(
        glitch::collada::CRootSceneNode *this,
        const glitch::collada::CColladaDatabase *a2,
        int a3)
{
  int v5; // r2

  glitch::collada::CSceneNode::CSceneNode(this, (char *)a2 + 4, a3, 0);
  v5 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 28)) = *((_DWORD *)a2 + 10);
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = *((_DWORD *)a2 + 11);
  *((_DWORD *)this + 97) = (char *)this + 384;
  *((_DWORD *)this + 99) = (char *)this + 392;
  *((_DWORD *)this + 96) = (char *)this + 384;
  *((_DWORD *)this + 98) = (char *)this + 392;
  *((_DWORD *)this + 87) = (char *)this + 344;
  *((_DWORD *)this + 89) = (char *)this + 352;
  *((_DWORD *)this + 91) = (char *)this + 360;
  *((_DWORD *)this + 93) = (char *)this + 368;
  *((_DWORD *)this + 95) = (char *)this + 376;
  *((_DWORD *)this + 86) = (char *)this + 344;
  *((_DWORD *)this + 88) = (char *)this + 352;
  *((_DWORD *)this + 90) = (char *)this + 360;
  *((_DWORD *)this + 92) = (char *)this + 368;
  *((_DWORD *)this + 94) = (char *)this + 376;
  *((_DWORD *)this + 101) = 0;
  *((_BYTE *)this + 400) = 0;
  *((_DWORD *)this + 103) = (char *)this + 400;
  *((_DWORD *)this + 107) = 1;
  *((_DWORD *)this + 110) = (char *)this + 436;
  *((_DWORD *)this + 102) = (char *)this + 400;
  *((_DWORD *)this + 104) = 0;
  *((_BYTE *)this + 424) = 0;
  *((_DWORD *)this + 109) = (char *)this + 436;
  glitch::scene::ISceneNode::setAutomaticCulling((int)this, 0);
  return this;
}


// ===== 65b918 std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  int *v11; // r1
  _DWORD *v12; // r7
  _DWORD *v14; // r0
  int *v15; // r1
  _DWORD *v16; // r0
  int *v17; // r1

  if ( a2 == a3 )
  {
    v16 = GlitchAlloc(0x20u, 0);
    v17 = a4 + 1;
    v16[4] = *a4;
    v12 = v16;
    std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v16 + 5,
      v17);
    v12[3] = 0;
    v12[2] = 0;
    a2[2] = v12;
    a2[1] = v12;
    a2[3] = v12;
  }
  else if ( a6 || !a5 && *a4 >= a3[4] )
  {
    v10 = GlitchAlloc(0x20u, 0);
    v11 = a4 + 1;
    v10[4] = *a4;
    v12 = v10;
    std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v10 + 5,
      v11);
    v12[3] = 0;
    v12[2] = 0;
    a3[3] = v12;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v12;
  }
  else
  {
    v14 = GlitchAlloc(0x20u, 0);
    v15 = a4 + 1;
    v14[4] = *a4;
    v12 = v14;
    std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v14 + 5,
      v15);
    v12[3] = 0;
    v12[2] = 0;
    a3[2] = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  v12[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v12, a2 + 1);
  ++a2[4];
  *a1 = v12;
  return a1;
}


// ===== 65ba60 std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>> const&) =====
int __fastcall std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
      std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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


// ===== 65bbe8 std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
      std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
        std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
            std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
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
              std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
    std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 65bf5c std::priv::_List_base<glitch::collada::CRootSceneNode::SMaterialInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::SMaterialInfo,(glitch::memory::E_MEMORY_HINT)0>>::clear(void) =====
void __fastcall std::priv::_List_base<glitch::collada::CRootSceneNode::SMaterialInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::SMaterialInfo,(glitch::memory::E_MEMORY_HINT)0>>::clear(
        _DWORD *a1)
{
  _DWORD *v1; // r4
  glitch::video::CMaterial *v3; // r5
  _DWORD *v4; // r6

  v1 = (_DWORD *)*a1;
  if ( (_DWORD *)*a1 != a1 )
  {
    while ( 1 )
    {
      v3 = (glitch::video::CMaterial *)v1[3];
      v4 = (_DWORD *)*v1;
      if ( v3 )
      {
        if ( (*(_DWORD *)v3)-- == 1 )
        {
          glitch::video::CMaterial::~CMaterial(v3);
          LC_API_FREE_0(v3);
        }
      }
      GlitchFree(v1);
      if ( v4 == a1 )
        break;
      v1 = v4;
    }
    v1 = a1;
  }
  a1[1] = v1;
  *a1 = v1;
}


// ===== 65bfcc std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r6
  glitch::video::CMaterial *v4; // r5

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::video::CMaterial **)v1 - 2);
      v1 -= 8;
      if ( v4 )
      {
        if ( (*(_DWORD *)v4)-- == 1 )
        {
          glitch::video::CMaterial::~CMaterial(v4);
          LC_API_FREE_0(v4);
        }
      }
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 65c038 std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)(v2 + 20));
      GlitchFree((void *)v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 65c074 glitch::collada::CRootSceneNode::~CRootSceneNode() =====
void __fastcall glitch::collada::CRootSceneNode::~CRootSceneNode(glitch::collada::CRootSceneNode *this)
{
  char *v2; // r7
  char *v3; // r0
  char *v4; // r6
  glitch::collada::CRootSceneNode **v5; // r0
  glitch::collada::CRootSceneNode *v6; // r6
  glitch::collada::CRootSceneNode **v7; // r0
  glitch::collada::CRootSceneNode *v8; // r6
  glitch::collada::CRootSceneNode **v9; // r0
  glitch::collada::CRootSceneNode *v10; // r6
  glitch::collada::CRootSceneNode **v11; // r0
  glitch::collada::CRootSceneNode *v12; // r6
  glitch::collada::CRootSceneNode **v13; // r0
  glitch::collada::CRootSceneNode *v14; // r6

  v2 = (char *)this + 436;
  *(_DWORD *)this = off_9830AC;
  *((_DWORD *)this + 111) = off_9831B4;
  glitch::scene::ISceneNode::removeAll(this);
  v3 = *((char **)this + 109);
  if ( v3 != v2 )
  {
    while ( 1 )
    {
      v4 = *(char **)v3;
      GlitchFree(v3);
      if ( v4 == v2 )
        break;
      v3 = v4;
    }
    v3 = v2;
  }
  *((_DWORD *)this + 109) = v3;
  *((_DWORD *)v2 + 1) = v3;
  if ( *((_DWORD *)this + 104) )
  {
    std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 400,
      *((_DWORD *)this + 101));
    *((_DWORD *)this + 103) = (char *)this + 400;
    *((_DWORD *)this + 104) = 0;
    *((_DWORD *)this + 102) = (char *)this + 400;
    *((_DWORD *)this + 101) = 0;
  }
  v5 = *((glitch::collada::CRootSceneNode ***)this + 98);
  if ( v5 != (glitch::collada::CRootSceneNode **)((char *)this + 392) )
  {
    while ( 1 )
    {
      v6 = *v5;
      GlitchFree(v5);
      if ( v6 == (glitch::collada::CRootSceneNode *)((char *)this + 392) )
        break;
      v5 = (glitch::collada::CRootSceneNode **)v6;
    }
    v5 = (glitch::collada::CRootSceneNode **)((char *)this + 392);
  }
  *((_DWORD *)this + 98) = v5;
  *((_DWORD *)this + 99) = v5;
  std::priv::_List_base<boost::intrusive_ptr<glitch::collada::CImage>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::collada::CImage>,(glitch::memory::E_MEMORY_HINT)0>>::clear((_DWORD *)this + 96);
  std::priv::_List_base<glitch::collada::CRootSceneNode::SMaterialInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::SMaterialInfo,(glitch::memory::E_MEMORY_HINT)0>>::clear((_DWORD *)this + 94);
  v7 = *((glitch::collada::CRootSceneNode ***)this + 92);
  if ( v7 != (glitch::collada::CRootSceneNode **)((char *)this + 368) )
  {
    while ( 1 )
    {
      v8 = *v7;
      GlitchFree(v7);
      if ( v8 == (glitch::collada::CRootSceneNode *)((char *)this + 368) )
        break;
      v7 = (glitch::collada::CRootSceneNode **)v8;
    }
    v7 = (glitch::collada::CRootSceneNode **)((char *)this + 368);
  }
  *((_DWORD *)this + 92) = v7;
  *((_DWORD *)this + 93) = v7;
  v9 = *((glitch::collada::CRootSceneNode ***)this + 90);
  if ( v9 != (glitch::collada::CRootSceneNode **)((char *)this + 360) )
  {
    while ( 1 )
    {
      v10 = *v9;
      GlitchFree(v9);
      if ( v10 == (glitch::collada::CRootSceneNode *)((char *)this + 360) )
        break;
      v9 = (glitch::collada::CRootSceneNode **)v10;
    }
    v9 = (glitch::collada::CRootSceneNode **)((char *)this + 360);
  }
  *((_DWORD *)this + 90) = v9;
  *((_DWORD *)this + 91) = v9;
  v11 = *((glitch::collada::CRootSceneNode ***)this + 88);
  if ( v11 != (glitch::collada::CRootSceneNode **)((char *)this + 352) )
  {
    while ( 1 )
    {
      v12 = *v11;
      GlitchFree(v11);
      if ( v12 == (glitch::collada::CRootSceneNode *)((char *)this + 352) )
        break;
      v11 = (glitch::collada::CRootSceneNode **)v12;
    }
    v11 = (glitch::collada::CRootSceneNode **)((char *)this + 352);
  }
  *((_DWORD *)this + 88) = v11;
  *((_DWORD *)this + 89) = v11;
  v13 = *((glitch::collada::CRootSceneNode ***)this + 86);
  if ( v13 != (glitch::collada::CRootSceneNode **)((char *)this + 344) )
  {
    while ( 1 )
    {
      v14 = *v13;
      GlitchFree(v13);
      if ( v14 == (glitch::collada::CRootSceneNode *)((char *)this + 344) )
        break;
      v13 = (glitch::collada::CRootSceneNode **)v14;
    }
    v13 = (glitch::collada::CRootSceneNode **)((char *)this + 344);
  }
  *((_DWORD *)this + 86) = v13;
  *((_DWORD *)this + 87) = v13;
  glitch::collada::CSceneNode::~CSceneNode((glitch::IReferenceCounted **)this, (int *)off_9831C4);
}


// ===== 65c244 glitch::collada::CRootSceneNode::~CRootSceneNode() =====
void __fastcall glitch::collada::CRootSceneNode::~CRootSceneNode(glitch::collada::CRootSceneNode *this)
{
  glitch::collada::CRootSceneNode::~CRootSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 65c260 glitch::collada::CRootSceneNode::~CRootSceneNode() =====
void __fastcall glitch::collada::CRootSceneNode::~CRootSceneNode(glitch::collada::CRootSceneNode *this, int *a2)
{
  int v2; // r3
  char *v4; // r7
  char *v6; // r0
  char *v7; // r6
  glitch::collada::CRootSceneNode **v8; // r0
  glitch::collada::CRootSceneNode *v9; // r6
  glitch::collada::CRootSceneNode **v10; // r0
  glitch::collada::CRootSceneNode *v11; // r6
  glitch::collada::CRootSceneNode **v12; // r0
  glitch::collada::CRootSceneNode *v13; // r6
  glitch::collada::CRootSceneNode **v14; // r0
  glitch::collada::CRootSceneNode *v15; // r6
  glitch::collada::CRootSceneNode **v16; // r0
  glitch::collada::CRootSceneNode *v17; // r6

  v2 = *a2;
  v4 = (char *)this + 436;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[10];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[11];
  glitch::scene::ISceneNode::removeAll(this);
  v6 = *((char **)this + 109);
  if ( v6 != v4 )
  {
    while ( 1 )
    {
      v7 = *(char **)v6;
      GlitchFree(v6);
      if ( v7 == v4 )
        break;
      v6 = v7;
    }
    v6 = v4;
  }
  *((_DWORD *)this + 109) = v6;
  *((_DWORD *)v4 + 1) = v6;
  if ( *((_DWORD *)this + 104) )
  {
    std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 400,
      *((_DWORD *)this + 101));
    *((_DWORD *)this + 103) = (char *)this + 400;
    *((_DWORD *)this + 104) = 0;
    *((_DWORD *)this + 102) = (char *)this + 400;
    *((_DWORD *)this + 101) = 0;
  }
  v8 = *((glitch::collada::CRootSceneNode ***)this + 98);
  if ( v8 != (glitch::collada::CRootSceneNode **)((char *)this + 392) )
  {
    while ( 1 )
    {
      v9 = *v8;
      GlitchFree(v8);
      if ( v9 == (glitch::collada::CRootSceneNode *)((char *)this + 392) )
        break;
      v8 = (glitch::collada::CRootSceneNode **)v9;
    }
    v8 = (glitch::collada::CRootSceneNode **)((char *)this + 392);
  }
  *((_DWORD *)this + 98) = v8;
  *((_DWORD *)this + 99) = v8;
  std::priv::_List_base<boost::intrusive_ptr<glitch::collada::CImage>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::collada::CImage>,(glitch::memory::E_MEMORY_HINT)0>>::clear((_DWORD *)this + 96);
  std::priv::_List_base<glitch::collada::CRootSceneNode::SMaterialInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::SMaterialInfo,(glitch::memory::E_MEMORY_HINT)0>>::clear((_DWORD *)this + 94);
  v10 = *((glitch::collada::CRootSceneNode ***)this + 92);
  if ( v10 != (glitch::collada::CRootSceneNode **)((char *)this + 368) )
  {
    while ( 1 )
    {
      v11 = *v10;
      GlitchFree(v10);
      if ( v11 == (glitch::collada::CRootSceneNode *)((char *)this + 368) )
        break;
      v10 = (glitch::collada::CRootSceneNode **)v11;
    }
    v10 = (glitch::collada::CRootSceneNode **)((char *)this + 368);
  }
  *((_DWORD *)this + 92) = v10;
  *((_DWORD *)this + 93) = v10;
  v12 = *((glitch::collada::CRootSceneNode ***)this + 90);
  if ( v12 != (glitch::collada::CRootSceneNode **)((char *)this + 360) )
  {
    while ( 1 )
    {
      v13 = *v12;
      GlitchFree(v12);
      if ( v13 == (glitch::collada::CRootSceneNode *)((char *)this + 360) )
        break;
      v12 = (glitch::collada::CRootSceneNode **)v13;
    }
    v12 = (glitch::collada::CRootSceneNode **)((char *)this + 360);
  }
  *((_DWORD *)this + 90) = v12;
  *((_DWORD *)this + 91) = v12;
  v14 = *((glitch::collada::CRootSceneNode ***)this + 88);
  if ( v14 != (glitch::collada::CRootSceneNode **)((char *)this + 352) )
  {
    while ( 1 )
    {
      v15 = *v14;
      GlitchFree(v14);
      if ( v15 == (glitch::collada::CRootSceneNode *)((char *)this + 352) )
        break;
      v14 = (glitch::collada::CRootSceneNode **)v15;
    }
    v14 = (glitch::collada::CRootSceneNode **)((char *)this + 352);
  }
  *((_DWORD *)this + 88) = v14;
  *((_DWORD *)this + 89) = v14;
  v16 = *((glitch::collada::CRootSceneNode ***)this + 86);
  if ( v16 != (glitch::collada::CRootSceneNode **)((char *)this + 344) )
  {
    while ( 1 )
    {
      v17 = *v16;
      GlitchFree(v16);
      if ( v17 == (glitch::collada::CRootSceneNode *)((char *)this + 344) )
        break;
      v16 = (glitch::collada::CRootSceneNode **)v17;
    }
    v16 = (glitch::collada::CRootSceneNode **)((char *)this + 344);
  }
  *((_DWORD *)this + 86) = v16;
  *((_DWORD *)this + 87) = v16;
  glitch::collada::CSceneNode::~CSceneNode((glitch::IReferenceCounted **)this, a2 + 1);
}


// ===== 65c424 std::map<glitch::collada::SAnimation *,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>,std::less<glitch::collada::SAnimation *>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<glitch::collada::SAnimation *>(glitch::collada::SAnimation * const&) =====
_DWORD *__fastcall std::map<glitch::collada::SAnimation *,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>,std::less<glitch::collada::SAnimation *>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<glitch::collada::SAnimation *>(
        _DWORD *a1,
        unsigned int *a2)
{
  _DWORD *v2; // r4
  unsigned int v4; // r1
  _DWORD *v5; // r2
  unsigned int v6; // r3
  bool v7; // cc
  _DWORD *v8; // r3
  _DWORD *v9; // r0
  _DWORD *v10; // r4
  unsigned int v12; // [sp+4h] [bp-24h] BYREF
  void *v13[3]; // [sp+8h] [bp-20h] BYREF
  void *v14[3]; // [sp+14h] [bp-14h] BYREF
  _DWORD *v15; // [sp+20h] [bp-8h] BYREF
  _DWORD *v16; // [sp+24h] [bp-4h] BYREF

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *a2;
    v5 = a1;
    while ( 1 )
    {
      v6 = v2[4];
      v7 = v4 > v6;
      if ( v4 <= v6 )
        v8 = (_DWORD *)v2[2];
      else
        v8 = (_DWORD *)v2[3];
      if ( v7 )
        v2 = v5;
      v5 = v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v4 = *a2;
    v2 = a1;
  }
  if ( a1 == v2 || (v9 = v2, v4 < v2[4]) )
  {
    v12 = v4;
    memset(v14, 0, sizeof(v14));
    std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v13,
      (int *)v14);
    v15 = v2;
    std::priv::_Rb_tree<glitch::collada::SAnimation *,std::less<glitch::collada::SAnimation *>,std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,std::priv::_Select1st<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,std::priv::_MapTraitsT<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v16,
      a1,
      &v15,
      &v12);
    v10 = v16;
    std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v13);
    std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v14);
    v9 = v10;
  }
  return v9 + 5;
}


// ===== 65c4f8 glitch::collada::CRootSceneNode::setIFLAnimationValue(glitch::collada::SAnimation *,boost::intrusive_ptr<glitch::video::ITexture>) =====
int *__fastcall glitch::collada::CRootSceneNode::setIFLAnimationValue(int a1, unsigned int a2, int *a3)
{
  int *result; // r0
  int v5; // r4
  int v6; // r5
  _DWORD *v7; // r0
  unsigned int v8; // r1
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v9 = a2;
  result = std::map<glitch::collada::SAnimation *,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>,std::less<glitch::collada::SAnimation *>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<glitch::collada::SAnimation *>(
             (_DWORD *)(a1 + 400),
             &v9);
  v5 = *result;
  v6 = result[1];
  if ( *result != v6 )
  {
    do
    {
      v7 = *(_DWORD **)v5;
      v8 = *(unsigned __int16 *)(v5 + 4);
      v5 += 8;
      result = (int *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                        v7,
                        v8,
                        0,
                        a3);
    }
    while ( v5 != v6 );
  }
  return result;
}


// ===== 65c54c std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(void) =====
void __fastcall std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(
        void **a1)
{
  char *v2; // r6
  char *v3; // r0
  char *v4; // r4
  glitch::video::CMaterial *v5; // r5

  v2 = (char *)*a1;
  v3 = (char *)a1[1];
  if ( v3 != v2 )
  {
    v4 = v3;
    do
    {
      v5 = *((glitch::video::CMaterial **)v4 - 2);
      v4 -= 8;
      if ( v5 )
      {
        if ( (*(_DWORD *)v5)-- == 1 )
        {
          glitch::video::CMaterial::~CMaterial(v5);
          LC_API_FREE_0(v5);
        }
      }
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  GlitchFree(v3);
}


// ===== 65c5b0 glitch::collada::CRootSceneNode::addIFLAnimation(glitch::collada::SAnimation *,boost::intrusive_ptr<glitch::video::CMaterial>,ushort) =====
void __fastcall glitch::collada::CRootSceneNode::addIFLAnimation(
        int a1,
        unsigned int a2,
        glitch::video::CMaterial **a3,
        __int16 a4)
{
  int v4; // r9
  void **v7; // r0
  glitch::video::CMaterial *v8; // r4
  void **v9; // r5
  _BYTE *v10; // r6
  int v11; // r3
  bool v12; // zf
  int v13; // r3
  unsigned int v14; // r3
  unsigned int v15; // r8
  size_t v16; // r8
  int v17; // r3
  char *v18; // r10
  char *v19; // r0
  int v20; // r6
  char *v21; // r6
  int v22; // r1
  int *v23; // r2
  char *v24; // lr
  char *v25; // r12
  char *v26; // r8
  unsigned int v27; // [sp+4h] [bp-4h] BYREF

  v27 = a2;
  v7 = (void **)std::map<glitch::collada::SAnimation *,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>,std::less<glitch::collada::SAnimation *>,glitch::core::SAllocator<std::pair<glitch::collada::SAnimation * const,std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<glitch::collada::SAnimation *>(
                  (_DWORD *)(a1 + 400),
                  &v27);
  v8 = *a3;
  v9 = v7;
  if ( v8 )
    *(_DWORD *)v8 += 2;
  v10 = v7[1];
  if ( v10 == v7[2] )
  {
    v14 = (v10 - (_BYTE *)*v7) >> 3;
    if ( v14 )
      v15 = 2 * v14;
    else
      v15 = 1;
    if ( v15 > 0x1FFFFFFF || v14 > v15 )
      v16 = -8;
    else
      v16 = 8 * v15;
    v18 = (char *)GlitchAlloc(v16, 0);
    v19 = (char *)*v9;
    v20 = (v10 - (_BYTE *)*v9) >> 3;
    if ( v20 > 0 )
    {
      v22 = v20;
      v17 = 0;
      do
      {
        v23 = *(int **)&v19[v17];
        v24 = &v19[v17];
        v25 = &v18[v17];
        *(_DWORD *)&v18[v17] = v23;
        if ( v23 )
          v4 = *v23;
        v17 += 8;
        if ( v23 )
          *v23 = ++v4;
        --v22;
        *((_WORD *)v25 + 2) = *((_WORD *)v24 + 2);
      }
      while ( v22 );
      v21 = &v18[8 * v20];
    }
    else
    {
      v21 = v18;
    }
    *(_DWORD *)v21 = v8;
    if ( v8 )
      v17 = *(_DWORD *)v8;
    v26 = &v18[v16];
    if ( v8 )
      *(_DWORD *)v8 = v17 + 1;
    *((_WORD *)v21 + 2) = a4;
    std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo,glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo,(glitch::memory::E_MEMORY_HINT)0>>::_M_clear_after_move(v9);
    v9[1] = v21 + 8;
    v9[2] = v26;
    *v9 = v18;
  }
  else
  {
    *(_DWORD *)v10 = v8;
    if ( v8 )
      ++*(_DWORD *)v8;
    *((_WORD *)v10 + 2) = a4;
    v7[1] = (char *)v7[1] + 8;
  }
  if ( v8 )
  {
    v11 = *(_DWORD *)v8 - 1;
    v12 = *(_DWORD *)v8 == 1;
    *(_DWORD *)v8 = v11;
    if ( !v12 )
    {
      v13 = v11 - 1;
      *(_DWORD *)v8 = v13;
      if ( v13 )
        return;
LABEL_11:
      glitch::video::CMaterial::~CMaterial(v8);
      LC_API_FREE_0(v8);
      return;
    }
    glitch::video::CMaterial::~CMaterial(v8);
    LC_API_FREE_0(v8);
    v12 = (*(_DWORD *)v8)-- == 1;
    if ( v12 )
      goto LABEL_11;
  }
}


// ===== 65c760 glitch::collada::CRootSceneNode::addMaterial(glitch::collada::SMaterial *,glitch::video::IVideoDriver *) =====
glitch::video::CMaterial **__fastcall glitch::collada::CRootSceneNode::addMaterial(
        glitch::video::CMaterial **a1,
        int a2,
        int a3,
        int a4)
{
  glitch::video::CMaterial *v7; // r7
  _DWORD *v8; // r0
  _DWORD *v9; // r3

  glitch::collada::CColladaDatabase::constructMaterial(a1, (int *)(a2 + 332), a4, a3, a2);
  v7 = *a1;
  if ( *a1 )
  {
    ++*(_DWORD *)v7;
    v8 = GlitchAlloc(0x10u, 0);
    v8[2] = a3;
    v8[3] = v7;
    ++*(_DWORD *)v7;
    v9 = *(_DWORD **)(a2 + 380);
    *v8 = a2 + 376;
    v8[1] = v9;
    *v9 = v8;
    *(_DWORD *)(a2 + 380) = v8;
    if ( (*(_DWORD *)v7)-- == 1 )
    {
      glitch::video::CMaterial::~CMaterial(v7);
      LC_API_FREE_0(v7);
    }
  }
  return a1;
}


// ===== 65c808 glitch::collada::CRootSceneNode::addMaterial(char const*,glitch::video::IVideoDriver *) =====
glitch::video::CMaterial **__fastcall glitch::collada::CRootSceneNode::addMaterial(
        glitch::video::CMaterial **this,
        const char *a2,
        glitch::video::IVideoDriver *a3,
        int a4)
{
  const char **v7; // r2
  unsigned int v9; // [sp+4h] [bp-4h] BYREF

  v9 = 16;
  v7 = glitch::collada::CColladaDatabase::find((glitch::collada::CColladaDatabase *)(a2 + 332), (const char *)a3, &v9);
  if ( v7 && v9 == 16 )
    glitch::collada::CRootSceneNode::addMaterial(this, (int)a2, (int)v7, a4);
  else
    *this = nullptr;
  return this;
}


// ===== 65c874 glitch::collada::CRootSceneNode::resolveURLs(void) =====
void __fastcall glitch::collada::CRootSceneNode::resolveURLs(glitch::collada::CRootSceneNode *this)
{
  char *v1; // r4
  char *v2; // r5
  char *v4; // r7
  int v5; // r1
  int ExternalLightSceneNode; // r0
  glitch::video::CMaterial *v7; // r3
  int Light; // r11
  char *v10; // r0
  char *v11; // r4
  glitch::video::CMaterial *v12; // [sp+Ch] [bp-10h]
  glitch::video::CMaterialRenderer *v13; // [sp+10h] [bp-Ch] BYREF
  glitch::video::CMaterial *v14; // [sp+14h] [bp-8h] BYREF

  v2 = (char *)this + 436;
  v1 = *((char **)this + 109);
  v4 = (char *)this + 332;
  if ( (char *)this + 436 != v1 )
  {
    while ( 1 )
    {
      v5 = *((_DWORD *)v1 + 3);
      if ( *(_BYTE *)v5 == 35 )
      {
        Light = glitch::collada::CRootSceneNode::getLight(this, (const char *)(v5 + 1));
        if ( Light )
          break;
      }
      if ( *((_DWORD *)v1 + 2) )
      {
        v13 = *((glitch::video::CMaterialRenderer **)v1 + 4);
        if ( v13 )
          ++*(_DWORD *)v13;
        Light = glitch::collada::CColladaDatabase::getExternalLightSceneNode(
                  (int)v4,
                  (int)&v13,
                  *((unsigned __int16 *)v1 + 10),
                  *((_DWORD *)v1 + 6),
                  *((_DWORD *)v1 + 3));
        boost::intrusive_ptr<glitch::video::CMaterialRenderer const>::~intrusive_ptr(&v13);
        if ( Light )
          break;
      }
      else
      {
        v14 = *((glitch::video::CMaterial **)v1 + 4);
        if ( v14 )
          ++*(_DWORD *)v14;
        ExternalLightSceneNode = glitch::collada::CColladaDatabase::getExternalLightSceneNode(
                                   (int)v4,
                                   (int)&v14,
                                   *((unsigned __int16 *)v1 + 10),
                                   *((_DWORD *)v1 + 6),
                                   *((_DWORD *)v1 + 3));
        v7 = v14;
        Light = ExternalLightSceneNode;
        if ( v14 )
        {
          if ( (*(_DWORD *)v14)-- == 1 )
          {
            v12 = v7;
            glitch::video::CMaterial::~CMaterial(v7);
            LC_API_FREE_0(v12);
          }
        }
        if ( Light )
          break;
      }
      glitch::os::Printer::log((int)"failed to resolve light parameter", 3);
      v1 = *(char **)v1;
LABEL_13:
      if ( v2 == v1 )
        goto LABEL_14;
    }
    if ( *((_DWORD *)v1 + 2) )
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        *((_DWORD *)v1 + 4),
        *((unsigned __int16 *)v1 + 10),
        *((_DWORD *)v1 + 6),
        (int **)(Light + 308));
    else
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::CLight>>(
        *((_DWORD **)v1 + 4),
        *((unsigned __int16 *)v1 + 10),
        *((_DWORD *)v1 + 6),
        (_DWORD **)(Light + 308));
    v1 = *(char **)v1;
    goto LABEL_13;
  }
LABEL_14:
  v10 = *((char **)this + 109);
  if ( v2 != v10 )
  {
    while ( 1 )
    {
      v11 = *(char **)v10;
      GlitchFree(v10);
      if ( v2 == v11 )
        break;
      v10 = v11;
    }
  }
  *((_DWORD *)this + 110) = v2;
  *((_DWORD *)this + 109) = v2;
}


// ===== 65ca30 glitch::collada::CRootSceneNode::getMaterial(char const*,glitch::video::IVideoDriver *) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CRootSceneNode::getMaterial(
        glitch::collada::CRootSceneNode *this,
        const char *a2,
        glitch::video::IVideoDriver *a3,
        int a4)
{
  glitch::video::CMaterial *v9; // r3
  glitch::video::CMaterial *v10; // r5
  bool v11; // zf
  glitch::video::CMaterial *v12; // r5
  glitch::video::CMaterial *v13; // [sp+4h] [bp-8h] BYREF

  glitch::collada::CRootSceneNode::hasMaterial(this, a2, (const char *)a3);
  if ( !*(_DWORD *)this && a4 )
  {
    glitch::collada::CRootSceneNode::addMaterial(&v13, a2, a3, a4);
    v9 = v13;
    if ( v13 )
      ++*(_DWORD *)v13;
    v10 = *(glitch::video::CMaterial **)this;
    *(_DWORD *)this = v9;
    if ( v10 )
    {
      v11 = (*(_DWORD *)v10)-- == 1;
      if ( v11 )
      {
        glitch::video::CMaterial::~CMaterial(v10);
        LC_API_FREE_0(v10);
      }
    }
    v12 = v13;
    if ( v13 )
    {
      v11 = (*(_DWORD *)v13)-- == 1;
      if ( v11 )
      {
        glitch::video::CMaterial::~CMaterial(v12);
        LC_API_FREE_0(v12);
      }
    }
  }
  return this;
}


// ===== 65cafc glitch::collada::CRootSceneNode::getMaterial(glitch::collada::SMaterial *,glitch::video::IVideoDriver *) =====
glitch::collada::CRootSceneNode *__fastcall glitch::collada::CRootSceneNode::getMaterial(
        glitch::collada::CRootSceneNode *a1,
        const char *a2,
        const char **a3,
        int a4)
{
  glitch::video::CMaterial *v9; // r3
  glitch::video::CMaterial *v10; // r5
  bool v11; // zf
  glitch::video::CMaterial *v12; // r5
  glitch::video::CMaterial *v13; // [sp+4h] [bp-8h] BYREF

  glitch::collada::CRootSceneNode::hasMaterial(a1, a2, *a3);
  if ( !*(_DWORD *)a1 && a4 )
  {
    glitch::collada::CRootSceneNode::addMaterial(&v13, (int)a2, (int)a3, a4);
    v9 = v13;
    if ( v13 )
      ++*(_DWORD *)v13;
    v10 = *(glitch::video::CMaterial **)a1;
    *(_DWORD *)a1 = v9;
    if ( v10 )
    {
      v11 = (*(_DWORD *)v10)-- == 1;
      if ( v11 )
      {
        glitch::video::CMaterial::~CMaterial(v10);
        LC_API_FREE_0(v10);
      }
    }
    v12 = v13;
    if ( v13 )
    {
      v11 = (*(_DWORD *)v13)-- == 1;
      if ( v11 )
      {
        glitch::video::CMaterial::~CMaterial(v12);
        LC_API_FREE_0(v12);
      }
    }
  }
  return a1;
}


// ===== 65cbcc `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode(
        glitch::collada::CRootSceneNode *this)
{
  glitch::collada::CRootSceneNode::~CRootSceneNode((glitch::collada::CRootSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 65cbdc `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode(
        glitch::collada::CRootSceneNode *this)
{
  glitch::collada::CRootSceneNode::~CRootSceneNode((glitch::collada::CRootSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 65cbec `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode(
        glitch::collada::CRootSceneNode *this)
{
  glitch::collada::CRootSceneNode::~CRootSceneNode((glitch::collada::CRootSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 65cbfc `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CRootSceneNode::~CRootSceneNode(
        glitch::collada::CRootSceneNode *this)
{
  glitch::collada::CRootSceneNode::~CRootSceneNode((glitch::collada::CRootSceneNode *)((char *)this
                                                                                     + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 65cc0c `virtual thunk to'glitch::collada::CRootSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::CRootSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  return glitch::collada::CRootSceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2, a3);
}


// ===== 65cc1c `virtual thunk to'glitch::collada::CRootSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::CRootSceneNode::serializeAttributes(_DWORD *a1, int a2, _DWORD *a3)
{
  return glitch::collada::CRootSceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2, a3);
}


// ===== 65cc2c glitch::collada::CSceneNode::resetTransform(bool) =====
_DWORD *__fastcall glitch::collada::CSceneNode::resetTransform(_DWORD *this, int a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r5
  void (__fastcall *v5)(_DWORD *, _DWORD *); // r2
  _DWORD *v6; // r2
  void (__fastcall *v7)(_DWORD *, _DWORD *); // r3
  _DWORD *v8; // r2
  int (__fastcall *v9)(_DWORD *, _DWORD *); // r3
  _DWORD *i; // r4
  _DWORD *v11; // r5
  _DWORD *v12; // t1
  _DWORD *v13; // r3
  _DWORD v14[4]; // [sp+0h] [bp-2Ch] BYREF
  _DWORD v15[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v16[4]; // [sp+1Ch] [bp-10h] BYREF

  v2 = (_DWORD *)*(this + 85);
  v3 = this;
  if ( v2 )
  {
    v5 = *(void (__fastcall **)(_DWORD *, _DWORD *))(*this + 164);
    v16[0] = v2[3];
    v16[1] = v2[4];
    v16[2] = v2[5];
    v5(this, v16);
    v6 = (_DWORD *)v3[85];
    v7 = *(void (__fastcall **)(_DWORD *, _DWORD *))(*v3 + 156);
    v14[0] = v6[6];
    v14[1] = v6[7];
    v14[2] = v6[8];
    v14[3] = v6[9];
    v7(v3, v14);
    v8 = (_DWORD *)v3[85];
    v9 = *(int (__fastcall **)(_DWORD *, _DWORD *))(*v3 + 148);
    v15[0] = v8[10];
    v15[1] = v8[11];
    v15[2] = v8[12];
    this = (_DWORD *)v9(v3, v15);
  }
  if ( a2 )
  {
    v12 = (_DWORD *)v3[61];
    v11 = v3 + 61;
    for ( i = v12; v11 != i; i = (_DWORD *)*i )
    {
      if ( i )
        v13 = i - 1;
      else
        v13 = nullptr;
      this = (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*v13 + 224))(v13, 1);
    }
  }
  return this;
}


// ===== 65cd1c glitch::collada::CSceneNode::getType(void) =====
int __fastcall glitch::collada::CSceneNode::getType(glitch::collada::CSceneNode *this)
{
  return 1852137828;
}


// ===== 65cd28 glitch::collada::CSceneNode::getUID(void) =====
char *__fastcall glitch::collada::CSceneNode::getUID(glitch::collada::CSceneNode *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 85);
  if ( v1 )
    return *(char **)v1;
  else
    return "";
}


// ===== 65cd4c glitch::collada::CSceneNode::getScopeID(void) =====
char *__fastcall glitch::collada::CSceneNode::getScopeID(glitch::collada::CSceneNode *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 85);
  if ( v1 )
    return *(char **)(v1 + 8);
  else
    return "";
}


// ===== 65cd70 glitch::collada::CSceneNode::getUserProperty(void) =====
int __fastcall glitch::collada::CSceneNode::getUserProperty(glitch::collada::CSceneNode *this)
{
  int result; // r0

  result = *((_DWORD *)this + 85);
  if ( result )
    return *(_DWORD *)(result + 72);
  return result;
}


// ===== 65cd80 glitch::collada::CSceneNode::getUserPropertyStr(void) =====
int __fastcall glitch::collada::CSceneNode::getUserPropertyStr(glitch::collada::CSceneNode *this)
{
  int v1; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 85);
  if ( v1 && (v3 = *(_DWORD *)(v1 + 72)) != 0 )
    return *(_DWORD *)v3;
  else
    return 0;
}


// ===== 65cda8 glitch::collada::CSceneNode::computeBoundingBox(void) =====
int __fastcall glitch::collada::CSceneNode::computeBoundingBox(int this)
{
  _DWORD *v1; // r4
  _DWORD *v2; // r7
  _DWORD *v3; // r5
  float *v4; // r11
  int v5; // r9
  _DWORD *v6; // r3
  bool v7; // zf
  bool v8; // zf
  _DWORD *v9; // r3
  _DWORD *v10; // r0
  _DWORD *v11; // r3
  int v12; // r0
  _DWORD *v13; // r3
  float *v14; // r0
  _DWORD *v15; // r3
  int v16; // r0
  _DWORD *v17; // r3
  float v18[7]; // [sp+8h] [bp-1Ch] BYREF

  v2 = (_DWORD *)(this + 244);
  v1 = *(_DWORD **)(this + 244);
  v3 = (_DWORD *)this;
  v4 = (float *)(this + 304);
  v5 = 0;
  if ( (_DWORD *)(this + 244) != v1 )
  {
    do
    {
      if ( v1 )
        v6 = v1 - 1;
      else
        v6 = nullptr;
      this = (*(int (__fastcall **)(_DWORD *))(*v6 + 188))(v6);
      v7 = this == 1835360612;
      if ( this != 1835360612 )
        v7 = this == 1936023908;
      if ( v7 )
        goto LABEL_12;
      v8 = this == 1298489700;
      if ( this != 1298489700 )
        v8 = this == 1852137828;
      if ( v8 )
      {
LABEL_12:
        if ( this == 1852137828 )
        {
          if ( v1 )
            v17 = v1 - 1;
          else
            v17 = nullptr;
          (*(void (__fastcall **)(_DWORD *))(*v17 + 244))(v17);
        }
        if ( v5 )
        {
          if ( v1 )
            v13 = v1 - 1;
          else
            v13 = nullptr;
          v14 = (float *)(*(int (__fastcall **)(_DWORD *))(*v13 + 48))(v13);
          v18[0] = *v14;
          v18[1] = v14[1];
          v18[2] = v14[2];
          v18[3] = v14[3];
          v18[4] = v14[4];
          v18[5] = v14[5];
          if ( v1 )
            v15 = v1 - 1;
          else
            v15 = nullptr;
          v16 = (*(int (__fastcall **)(_DWORD *))(*v15 + 64))(v15);
          glitch::core::CMatrix4<float>::transformBoxEx(v16, v18);
          this = glitch::core::aabbox3d<float>::addInternalBox(v4, v18);
          v1 = (_DWORD *)*v1;
          continue;
        }
        if ( v1 )
          v9 = v1 - 1;
        else
          v9 = nullptr;
        v10 = (_DWORD *)(*(int (__fastcall **)(_DWORD *))(*v9 + 48))(v9);
        v5 = 1;
        v3[76] = *v10;
        v3[77] = v10[1];
        v3[78] = v10[2];
        v3[79] = v10[3];
        v3[80] = v10[4];
        v3[81] = v10[5];
        if ( v1 )
          v11 = v1 - 1;
        else
          v11 = nullptr;
        v12 = (*(int (__fastcall **)(_DWORD *))(*v11 + 64))(v11);
        this = glitch::core::CMatrix4<float>::transformBoxEx(v12, v4);
      }
      v1 = (_DWORD *)*v1;
    }
    while ( v2 != v1 );
  }
  return this;
}


// ===== 65cf6c `global constructor keyed to'.._source_glitch_collada_CColladaSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSceneNode.cpp()
{
  dword_9F7034 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7030 = 1056964608;
}


// ===== 65cf8c glitch::collada::CSceneNode::computeBoundingBox(glitch::core::aabbox3d<float> &) =====
int __fastcall glitch::collada::CSceneNode::computeBoundingBox(glitch::scene::ISceneNode *a1, int a2)
{
  char *v3; // r4
  char *v4; // r6
  int v5; // r10
  char *v6; // r3
  int v7; // r0
  bool v8; // zf
  char *v10; // r0
  int v11; // r12
  int v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r3
  char *v16; // r3
  _DWORD *v17; // r0
  char *v18; // r3
  float *v19; // r0
  int v20; // [sp+8h] [bp-1Ch] BYREF
  int v21; // [sp+Ch] [bp-18h]
  int v22; // [sp+10h] [bp-14h]
  int v23; // [sp+14h] [bp-10h]
  int v24; // [sp+18h] [bp-Ch]
  int v25; // [sp+1Ch] [bp-8h]

  v4 = glitch::scene::ISceneNode::getChildren(a1) + 4;
  v3 = *(char **)v4;
  v5 = 0;
  while ( v4 != v3 )
  {
    if ( v3 )
      v6 = v3 - 4;
    else
      v6 = nullptr;
    v7 = (*(int (__fastcall **)(char *))(*(_DWORD *)v6 + 188))(v6);
    v8 = v7 == 1835360612;
    if ( v7 != 1835360612 )
      v8 = v7 == 1936023908;
    if ( v8 || v7 == 1298489700 )
    {
      if ( v5 )
      {
        if ( v3 )
          v18 = v3 - 4;
        else
          v18 = nullptr;
        v19 = (float *)(*(int (__fastcall **)(char *))(*(_DWORD *)v18 + 52))(v18);
        glitch::core::aabbox3d<float>::addInternalBox((float *)a2, v19);
        v3 = *(char **)v3;
      }
      else
      {
        if ( v3 )
          v16 = v3 - 4;
        else
          v16 = nullptr;
        v17 = (_DWORD *)(*(int (__fastcall **)(char *))(*(_DWORD *)v16 + 52))(v16);
        v5 = 1;
        *(_DWORD *)a2 = *v17;
        *(_DWORD *)(a2 + 4) = v17[1];
        *(_DWORD *)(a2 + 8) = v17[2];
        *(_DWORD *)(a2 + 12) = v17[3];
        *(_DWORD *)(a2 + 16) = v17[4];
        *(_DWORD *)(a2 + 20) = v17[5];
        v3 = *(char **)v3;
      }
    }
    else if ( v7 == 1852137828
           && ((v20 = -1082130432, v21 = -1082130432, v22 = -1082130432, v3) ? (v10 = v3 - 4) : (v10 = nullptr),
               v23 = 1065353216,
               v24 = 1065353216,
               v25 = 1065353216,
               glitch::collada::CSceneNode::computeBoundingBox(v10, &v20)) )
    {
      if ( v5 )
      {
        glitch::core::aabbox3d<float>::addInternalBox((float *)a2, (float *)&v20);
      }
      else
      {
        v11 = v21;
        v12 = v22;
        v13 = v23;
        v14 = v24;
        v15 = v25;
        *(_DWORD *)a2 = v20;
        *(_DWORD *)(a2 + 4) = v11;
        *(_DWORD *)(a2 + 8) = v12;
        *(_DWORD *)(a2 + 12) = v13;
        *(_DWORD *)(a2 + 16) = v14;
        *(_DWORD *)(a2 + 20) = v15;
        v5 = 1;
      }
      v3 = *(char **)v3;
    }
    else
    {
      v3 = *(char **)v3;
    }
  }
  return v5;
}


// ===== 65d150 glitch::collada::CSceneNode::CSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SNode *) =====
glitch::scene::CEmptySceneNode *__fastcall glitch::collada::CSceneNode::CSceneNode(
        glitch::scene::CEmptySceneNode *a1,
        int *a2,
        int a3)
{
  int v6; // r3
  int v7; // r2
  _DWORD *v8; // r3
  _DWORD *v9; // r3
  _DWORD *v10; // r3
  _DWORD v12[4]; // [sp+0h] [bp-2Ch] BYREF
  _DWORD v13[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v14[4]; // [sp+1Ch] [bp-10h] BYREF

  *((_DWORD *)a1 + 87) = 1;
  *(_DWORD *)a1 = off_98398C;
  *((_DWORD *)a1 + 86) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[31] + (_DWORD)a1) = (int)off_9839AC;
  glitch::scene::CEmptySceneNode::CEmptySceneNode(a1, (int *)off_9836F4, -1);
  v6 = *a2;
  *((_DWORD *)a1 + 83) = *a2;
  *((_DWORD *)a1 + 84) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *((_DWORD *)a1 + 85) = a3;
  *((_DWORD *)a1 + 82) = &unk_9F6F08;
  *(_DWORD *)a1 = off_9835DC;
  *((_DWORD *)a1 + 86) = off_9836E4;
  if ( a3 )
  {
    glitch::scene::ISceneNode::setName(a1, *(char **)(a3 + 4));
    v8 = *((_DWORD **)a1 + 85);
    v14[0] = v8[3];
    v14[1] = v8[4];
    v14[2] = v8[5];
    glitch::scene::ISceneNode::setPosition(a1, v14);
    v9 = *((_DWORD **)a1 + 85);
    v12[0] = v9[6];
    v12[1] = v9[7];
    v12[2] = v9[8];
    v12[3] = v9[9];
    glitch::scene::ISceneNode::setRotation(a1, v12);
    v10 = *((_DWORD **)a1 + 85);
    v13[0] = v10[10];
    v13[1] = v10[11];
    v13[2] = v10[12];
    glitch::scene::ISceneNode::setScale(a1, v13);
  }
  return a1;
}


// ===== 65d2b4 glitch::collada::CSceneNode::CSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SNode *) =====
glitch::scene::CEmptySceneNode *__fastcall glitch::collada::CSceneNode::CSceneNode(
        glitch::scene::CEmptySceneNode *a1,
        int *a2,
        int *a3,
        int a4)
{
  int v8; // r2
  int v9; // r1
  int v10; // r3
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  _DWORD *v13; // r3
  _DWORD v15[4]; // [sp+0h] [bp-2Ch] BYREF
  _DWORD v16[3]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v17[4]; // [sp+1Ch] [bp-10h] BYREF

  glitch::scene::CEmptySceneNode::CEmptySceneNode(a1, a2 + 1, -1);
  v8 = *a3;
  *((_DWORD *)a1 + 83) = *a3;
  *((_DWORD *)a1 + 84) = a3[1];
  if ( v8 )
  {
    v9 = *(_DWORD *)(v8 + 4);
    if ( v9 )
      *(_DWORD *)(v8 + 4) = v9 + 1;
  }
  *((_DWORD *)a1 + 82) = &unk_9F6F08;
  v10 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v10 - 28)) = a2[7];
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *((_DWORD *)a1 + 85) = a4;
  if ( a4 )
  {
    glitch::scene::ISceneNode::setName(a1, *(char **)(a4 + 4));
    v11 = *((_DWORD **)a1 + 85);
    v17[0] = v11[3];
    v17[1] = v11[4];
    v17[2] = v11[5];
    glitch::scene::ISceneNode::setPosition(a1, v17);
    v12 = *((_DWORD **)a1 + 85);
    v15[0] = v12[6];
    v15[1] = v12[7];
    v15[2] = v12[8];
    v15[3] = v12[9];
    glitch::scene::ISceneNode::setRotation(a1, v15);
    v13 = *((_DWORD **)a1 + 85);
    v16[0] = v13[10];
    v16[1] = v13[11];
    v16[2] = v13[12];
    glitch::scene::ISceneNode::setScale(a1, v16);
  }
  return a1;
}


// ===== 65d3e8 glitch::collada::CSceneNodeAnimator::getAnimationTrackEx(int) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getAnimationTrackEx(
        glitch::collada::CSceneNodeAnimator *this,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 17) + 16 * a2) + 20);
}


// ===== 65d3f8 glitch::collada::CSceneNodeAnimator::getAnimationTrack(int) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getAnimationTrack(
        glitch::collada::CSceneNodeAnimator *this,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 17) + 16 * a2) + 16);
}


// ===== 65d408 glitch::collada::CSceneNodeAnimator::setTarget(int,void *,glitch::collada::animation_track::CApplicatorInfo const*) =====
int __fastcall glitch::collada::CSceneNodeAnimator::setTarget(int result, int a2, int a3, int a4)
{
  int v4; // r5
  int v6; // r4
  int v7; // r3
  int v8; // r5

  v4 = 16 * a2;
  *(_DWORD *)(*(_DWORD *)(result + 68) + 16 * a2 + 4) = a3;
  v6 = result;
  v7 = *(_DWORD *)(*(_DWORD *)(result + 68) + 16 * a2 + 8);
  if ( v7 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*(_DWORD *)(*(_DWORD *)(result + 68) + 16 * a2 + 8));
    *(_DWORD *)(*(_DWORD *)(v6 + 68) + v4 + 8) = 0;
  }
  if ( a4 )
  {
    v8 = *(_DWORD *)(v6 + 68) + v4;
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 8))(a4);
    *(_DWORD *)(v8 + 8) = result;
  }
  return result;
}


// ===== 65d480 glitch::collada::CSceneNodeAnimator::getBindURI(int) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getBindURI(glitch::collada::CSceneNodeAnimator *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 17) + 16 * a2) + 16) + 4);
}


// ===== 65d494 glitch::collada::CSceneNodeAnimator::getTargetCount(void) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getTargetCount(glitch::collada::CSceneNodeAnimator *this)
{
  return (*((_DWORD *)this + 18) - *((_DWORD *)this + 17)) >> 4;
}


// ===== 65d4a8 glitch::collada::CSceneNodeAnimator::getTargetSize(int) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getTargetSize(glitch::collada::CSceneNodeAnimator *this, int a2)
{
  int v2; // r0

  v2 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimator *, int))(*(_DWORD *)this + 88))(this, a2);
  return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 8))(v2);
}


// ===== 65d4c8 glitch::collada::CSceneNodeAnimator::getTargetsSize(void) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getTargetsSize(glitch::collada::CSceneNodeAnimator *this)
{
  int v2; // r7
  int v3; // r6
  int v4; // r4
  int v5; // r0

  v2 = (*((_DWORD *)this + 18) - *((_DWORD *)this + 17)) >> 4;
  if ( !v2 )
    return 0;
  v4 = 0;
  v3 = 0;
  do
  {
    v5 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimator *, int))(*(_DWORD *)this + 88))(this, v4++);
    v3 += (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 8))(v5);
  }
  while ( v4 != v2 );
  return v3;
}


// ===== 65d528 glitch::collada::CSceneNodeAnimator::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimator::animateNode(
        glitch::collada::CSceneNodeAnimator *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  return (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimator *, unsigned int))(*(_DWORD *)this + 80))(this, a3);
}


// ===== 65d540 glitch::collada::CSceneNodeAnimator::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::collada::CSceneNodeAnimator::deserializeAttributes()
{
  ;
}


// ===== 65d544 glitch::collada::CSceneNodeAnimator::createClone(void) =====
int __fastcall glitch::collada::CSceneNodeAnimator::createClone(glitch::collada::CSceneNodeAnimator *this)
{
  return 0;
}


// ===== 65d54c glitch::collada::CSceneNodeAnimator::removeAnimationTrack(glitch::collada::SAnimation *) =====
int __fastcall glitch::collada::CSceneNodeAnimator::removeAnimationTrack(int result, int a2)
{
  char *v2; // r2
  int *v3; // r3
  int v4; // r6
  int *v5; // r7
  int v6; // r4
  int v7; // r1
  int *v8; // r4
  int *v9; // r12
  int v10; // r5
  int v11; // r1
  int v12; // r2
  int v13; // r3

  v2 = *(char **)(result + 72);
  v3 = *(int **)(result + 68);
  v4 = result;
  if ( (v2 - (char *)v3) >> 4 )
  {
    result = *v3;
    if ( *v3 == a2 )
    {
      v5 = v3;
      v6 = 0;
LABEL_8:
      v7 = v5[2];
      if ( v7 )
      {
        result = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 4))(v5[2]);
        *(_DWORD *)(*(_DWORD *)(v4 + 68) + v6 * 4 + 8) = 0;
        v3 = *(int **)(v4 + 68);
        v2 = *(char **)(v4 + 72);
      }
      v8 = &v3[v6];
      v9 = v8 + 4;
      if ( v8 + 4 != (int *)v2 )
      {
        v10 = (v2 - (char *)v9) >> 4;
        if ( v10 > 0 )
        {
          while ( 1 )
          {
            --v10;
            result = *v9;
            v11 = v9[1];
            v12 = v9[2];
            v13 = v9[3];
            *v8 = *v9;
            v8[1] = v11;
            v8[2] = v12;
            v8[3] = v13;
            v8 = v9;
            if ( !v10 )
              break;
            v9 += 4;
          }
          v2 = *(char **)(v4 + 72);
        }
      }
      *(_DWORD *)(v4 + 72) = v2 - 16;
    }
    else
    {
      result = 0;
      while ( 1 )
      {
        ++result;
        v6 = 4 * result;
        if ( result == (v2 - (char *)v3) >> 4 )
          break;
        v5 = &v3[v6];
        if ( v3[4 * result] == a2 )
          goto LABEL_8;
      }
    }
  }
  return result;
}


// ===== 65d628 glitch::collada::CSceneNodeAnimator::removeAnimationTracks(void) =====
int __fastcall glitch::collada::CSceneNodeAnimator::removeAnimationTracks(int this)
{
  int v1; // r3
  int v2; // r6
  int v3; // r7
  int v4; // r4
  int v5; // r5
  int v6; // r3

  v1 = *(_DWORD *)(this + 68);
  v2 = this;
  v3 = (*(_DWORD *)(this + 72) - v1) >> 4;
  if ( v3 )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = 16 * v4;
      v6 = *(_DWORD *)(v1 + 16 * v4++ + 8);
      if ( v6 )
      {
        this = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 4))(v6);
        *(_DWORD *)(*(_DWORD *)(v2 + 68) + v5 + 8) = 0;
      }
      if ( v4 == v3 )
        break;
      v1 = *(_DWORD *)(v2 + 68);
    }
  }
  return this;
}


// ===== 65d694 `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeAnimator.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeAnimator.cpp()
{
  dword_9F7040 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F703C = 1056964608;
}


// ===== 65d6b4 glitch::collada::CSceneNodeAnimator::updateTime(uint) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::CSceneNodeAnimator::updateTime(
        glitch::collada::ISceneNodeAnimator *this,
        unsigned int a2)
{
  if ( (unsigned int)(*((_DWORD *)this + 18) - *((_DWORD *)this + 17)) >> 4 || *((_DWORD *)this + 20) )
    return (glitch::collada::ISceneNodeAnimator *)glitch::collada::ISceneNodeAnimator::updateTime(this, a2);
  return this;
}


// ===== 65d6d8 glitch::collada::SAnimationBlockSearchKey::SAnimationBlockSearchKey(glitch::collada::CColladaDatabase const&,int,int) =====
glitch::collada::SAnimationBlockSearchKey *__fastcall glitch::collada::SAnimationBlockSearchKey::SAnimationBlockSearchKey(
        glitch::collada::SAnimationBlockSearchKey *this,
        const glitch::collada::CColladaDatabase *a2,
        int a3,
        int a4)
{
  int v4; // r12
  int v7; // r3
  int v8; // r0
  int AnimationClip; // r0
  int v10; // r2
  int v11; // r3
  glitch::collada::SAnimationBlockSearchKey *result; // r0

  v4 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  if ( v4 )
  {
    v7 = *(_DWORD *)(v4 + 4);
    if ( v7 )
      *(_DWORD *)(v4 + 4) = v7 + 1;
  }
  *((_DWORD *)this + 2) = 0;
  v8 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)a2 + 36) + 32);
  if ( *(_DWORD *)(v8 + 52) )
    AnimationClip = glitch::collada::CColladaDatabase::getAnimationClip(a2, a3);
  else
    AnimationClip = v8 + 24;
  *((_DWORD *)this + 2) = AnimationClip;
  v10 = *(_DWORD *)(AnimationClip + 4);
  v11 = *(_DWORD *)(AnimationClip + 8);
  result = this;
  if ( a4 < v10 )
    a4 = v10;
  if ( a4 > v11 )
    *((_DWORD *)this + 3) = v11;
  else
    *((_DWORD *)this + 3) = a4;
  return result;
}


// ===== 65d768 glitch::collada::CSceneNodeAnimator::getAnimationData(int) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getAnimationData(glitch::collada::CAnimationBlock **this, int a2)
{
  int v4; // r2
  int v5; // r0
  int v6; // r4
  glitch::IReferenceCounted *v8[5]; // [sp+0h] [bp-14h] BYREF

  v4 = (*((int (__fastcall **)(glitch::collada::CAnimationBlock **))*this + 17))(this);
  if ( v4 )
  {
    v5 = (*((int (__fastcall **)(glitch::collada::CAnimationBlock **))*this + 17))(this);
    v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 56))(v5);
  }
  glitch::collada::SAnimationBlockSearchKey::SAnimationBlockSearchKey(
    (glitch::collada::SAnimationBlockSearchKey *)v8,
    (const glitch::collada::CColladaDatabase *)(this + 10),
    v4,
    a2);
  glitch::collada::CAnimationStreamingManager::getAnimationBlock(
    (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
    (glitch::collada::SAnimationBlockSearchKey *)v8,
    this + 21);
  v6 = (int)*(this + 21);
  if ( v6 )
    v6 = *(_DWORD *)(*(_DWORD *)(v6 + 20) + 12);
  glitch::collada::CColladaDatabase::~CColladaDatabase(v8);
  return v6;
}


// ===== 65d80c glitch::collada::CSceneNodeAnimator::computeAnimationValues(uint) =====
glitch::collada::CAnimationBlock **__fastcall glitch::collada::CSceneNodeAnimator::computeAnimationValues(
        glitch::collada::CAnimationBlock **this,
        unsigned int a2)
{
  glitch::collada::CAnimationBlock **v2; // r5
  int v4; // r0
  int v5; // r7
  glitch::collada::CAnimationBlock *v6; // r8
  glitch::collada::CAnimationBlock *v7; // r1
  bool v8; // r8
  int v9; // r6
  glitch::collada::CAnimationBlock **v10; // r10
  int v11; // r4
  int v12; // r3
  void *v13; // r2
  int *v14; // r3
  int v15; // r12
  int v16; // r0
  _BYTE v17[16]; // [sp+Ch] [bp-20h] BYREF
  _DWORD v18[4]; // [sp+1Ch] [bp-10h] BYREF

  v2 = this;
  if ( (unsigned int)(*(this + 18) - *(this + 17)) >> 4 || *(this + 20) )
  {
    glitch::collada::ISceneNodeAnimator::updateTime((glitch::collada::ISceneNodeAnimator *)this, a2);
    v4 = (*((int (__fastcall **)(glitch::collada::CAnimationBlock **))*v2 + 17))(v2);
    v5 = v4 ? *(_DWORD *)(v4 + 4) : (int)v2[14] + a2 % (unsigned int)v2[5];
    v6 = v2[3];
    this = (glitch::collada::CAnimationBlock **)glitch::collada::CSceneNodeAnimator::getAnimationData(v2, v5);
    v7 = v2[17];
    v8 = v6 != (glitch::collada::CAnimationBlock *)((char *)&dword_0 + 1);
    v9 = (v2[18] - v7) >> 4;
    v10 = this;
    v17[13] = *((_BYTE *)v2 + 52);
    if ( v9 )
    {
      v11 = 0;
      while ( 1 )
      {
        v12 = (int)v7 + 16 * v11;
        v13 = *(void **)(v12 + 4);
        v14 = (int *)(v12 + 12);
        if ( v13 )
        {
          v15 = *((unsigned __int8 *)v2 + 52);
          v16 = *((_DWORD *)v7 + 4 * v11);
          v18[1] = v10;
          v18[0] = v16;
          if ( v15 )
            v14 = (int *)((char *)v7 + 12);
          v18[2] = v17;
          this = (glitch::collada::CAnimationBlock **)glitch::collada::SAnimationAccessor::getValue(
                                                        (glitch::collada::SAnimationAccessor *)v18,
                                                        v5,
                                                        v13,
                                                        v14,
                                                        v8);
        }
        if ( ++v11 == v9 )
          break;
        v7 = v2[17];
      }
    }
  }
  return this;
}


// ===== 65d91c glitch::collada::CSceneNodeAnimator::applyAnimationValues(uint) =====
glitch::collada::CAnimationBlock **__fastcall glitch::collada::CSceneNodeAnimator::applyAnimationValues(
        glitch::collada::CAnimationBlock **this,
        unsigned int a2)
{
  glitch::collada::CAnimationBlock **v2; // r5
  int v4; // r0
  int v5; // r6
  glitch::collada::CAnimationBlock *v6; // r7
  int AnimationData; // r0
  glitch::collada::CAnimationBlock *v8; // r3
  int v9; // r8
  bool v10; // r7
  unsigned int v11; // r4
  int v12; // r1
  void *v13; // r2
  int *v14; // r12
  int v15; // r0
  int v16; // r3
  _BYTE v17[16]; // [sp+Ch] [bp-1Ch] BYREF
  _DWORD v18[3]; // [sp+1Ch] [bp-Ch] BYREF

  v2 = this;
  if ( (unsigned int)(*(this + 18) - *(this + 17)) >> 4 || *(this + 20) )
  {
    glitch::collada::ISceneNodeAnimator::updateTime((glitch::collada::ISceneNodeAnimator *)this, a2);
    v4 = (*((int (__fastcall **)(glitch::collada::CAnimationBlock **))*v2 + 17))(v2);
    v5 = v4 ? *(_DWORD *)(v4 + 4) : (int)v2[14] + a2 % (unsigned int)v2[5];
    v6 = v2[3];
    AnimationData = glitch::collada::CSceneNodeAnimator::getAnimationData(v2, v5);
    v8 = v2[17];
    v9 = AnimationData;
    this = (glitch::collada::CAnimationBlock **)v2[18];
    v10 = v6 != (glitch::collada::CAnimationBlock *)((char *)&dword_0 + 1);
    v17[13] = *((_BYTE *)v2 + 52);
    if ( (unsigned int)((char *)this - (char *)v8) >> 4 )
    {
      v11 = 0;
      do
      {
        v12 = (int)v8 + 16 * v11;
        v13 = *(void **)(v12 + 4);
        v14 = (int *)((char *)v8 + 12);
        if ( v13 )
        {
          v15 = *((_DWORD *)v8 + 4 * v11);
          v16 = *((unsigned __int8 *)v2 + 52);
          v18[1] = v9;
          v18[0] = v15;
          v18[2] = v17;
          if ( !v16 )
            v14 = (int *)(v12 + 12);
          glitch::collada::SAnimationAccessor::applyValue(
            (glitch::collada::SAnimationAccessor *)v18,
            v5,
            v13,
            *(glitch::collada::animation_track::CApplicatorInfo **)(v12 + 8),
            v14,
            v10);
          this = (glitch::collada::CAnimationBlock **)v2[18];
          v8 = v2[17];
        }
        ++v11;
      }
      while ( v11 < ((char *)this - (char *)v8) >> 4 );
    }
  }
  return this;
}


// ===== 65da38 glitch::collada::CSceneNodeAnimator::getAnimationValue(int,int,void *) =====
int __fastcall glitch::collada::CSceneNodeAnimator::getAnimationValue(
        glitch::collada::CSceneNodeAnimator *this,
        int a2,
        int a3,
        void *a4)
{
  int v4; // r12
  int v6; // r5
  int v8; // r7
  int AnimationData; // r0
  int v11; // lr
  _BYTE v13[16]; // [sp+Ch] [bp-1Ch] BYREF
  _DWORD v14[3]; // [sp+1Ch] [bp-Ch] BYREF

  v4 = *((_DWORD *)this + 17);
  v13[13] = 0;
  v6 = *(_DWORD *)(v4 + 16 * a2);
  v8 = v4 + 16 * a2;
  AnimationData = glitch::collada::CSceneNodeAnimator::getAnimationData((glitch::collada::CAnimationBlock **)this, a3);
  v11 = *((_DWORD *)this + 3);
  v14[1] = AnimationData;
  v14[0] = v6;
  v14[2] = v13;
  return glitch::collada::SAnimationAccessor::getValue(
           (glitch::collada::SAnimationAccessor *)v14,
           a3,
           a4,
           (int *)(v8 + 12),
           v11 != 1);
}


// ===== 65daa8 `non-virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(
        glitch::collada::CSceneNodeAnimator *this)
{
  glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator((glitch::collada::CSceneNodeAnimator *)((char *)this - 4));
}


// ===== 65dab0 glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator() =====
void __fastcall glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(glitch::collada::CSceneNodeAnimator *this)
{
  glitch::collada::CAnimationBlock *v2; // r1
  glitch::collada::CAnimationBlock *v3; // r0
  void *v4; // r0

  *(_DWORD *)this = off_9839C4;
  *((_DWORD *)this + 22) = off_983A7C;
  *((_DWORD *)this + 1) = off_983A60;
  glitch::collada::CSceneNodeAnimator::removeAnimationTracks((int)this);
  v3 = *((glitch::collada::CAnimationBlock **)this + 21);
  if ( v3 )
    glitch::collada::intrusive_ptr_release(v3, v2);
  v4 = *((void **)this + 17);
  if ( v4 )
    GlitchFree(v4);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 10);
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 65db34 `non-virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(
        glitch::collada::CSceneNodeAnimator *this)
{
  glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator((glitch::collada::CSceneNodeAnimator *)((char *)this - 4));
}


// ===== 65db3c glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator() =====
void __fastcall glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(glitch::collada::CSceneNodeAnimator *this)
{
  glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(this);
  LC_API_FREE_0(this);
}


// ===== 65db58 glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator() =====
void __fastcall glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(
        glitch::collada::CSceneNodeAnimator *this,
        int *a2)
{
  int v3; // r1
  glitch::collada::CAnimationBlock *v5; // r1
  glitch::collada::CAnimationBlock *v6; // r0
  void *v7; // r0

  v3 = *a2;
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 12)) = a2[7];
  *((_DWORD *)this + 1) = off_983A60;
  glitch::collada::CSceneNodeAnimator::removeAnimationTracks((int)this);
  v6 = *((glitch::collada::CAnimationBlock **)this + 21);
  if ( v6 )
    glitch::collada::intrusive_ptr_release(v6, v5);
  v7 = *((void **)this + 17);
  if ( v7 )
    GlitchFree(v7);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 10);
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 65dbd8 glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator(glitch::collada::CColladaDatabase const&,glitch::collada::SLibraryAnimationClips &) =====
int __fastcall glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator(int a1, _DWORD *a2, _DWORD *a3)
{
  int v6; // r3
  int v7; // r2
  int v8; // r3
  glitch::collada::CTimelineController *v9; // r5
  _DWORD *v10; // r3
  int v11; // r2
  int v12; // r3
  int v14; // r1

  *(_DWORD *)(a1 + 92) = 1;
  *(_DWORD *)(a1 + 88) = off_95B720;
  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator((glitch::collada::ISceneNodeAnimator *)a1);
  v6 = *a2;
  *(_DWORD *)(a1 + 40) = *a2;
  *(_DWORD *)(a1 + 44) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *(_DWORD *)(a1 + 48) = 1065353216;
  *(_DWORD *)(a1 + 36) = &unk_9F6F08;
  *(_DWORD *)a1 = off_9839C4;
  *(_DWORD *)(a1 + 4) = off_983A60;
  *(_DWORD *)(a1 + 88) = off_983A7C;
  v8 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 20);
  *(_DWORD *)(a1 + 64) = a3;
  *(_DWORD *)(a1 + 68) = 0;
  *(_BYTE *)(a1 + 52) = v8 != 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  v9 = (glitch::collada::CTimelineController *)operator new(0x48u, 0);
  glitch::collada::CTimelineController::CTimelineController(v9);
  if ( *a3 )
  {
    v10 = *(_DWORD **)(a1 + 64);
    *((_DWORD *)v9 + 13) = v10;
    if ( v10 && *v10 )
    {
      (*(void (__fastcall **)(glitch::collada::CTimelineController *, _DWORD))(*(_DWORD *)v9 + 16))(v9, 0);
    }
    else
    {
      *((_DWORD *)v9 + 4) = 0;
      *((_DWORD *)v9 + 5) = 1;
    }
  }
  else
  {
    v14 = *(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32);
    (*(void (__fastcall **)(glitch::collada::CTimelineController *, _DWORD, _DWORD, int))(*(_DWORD *)v9 + 80))(
      v9,
      *(_DWORD *)(v14 + 28),
      *(_DWORD *)(v14 + 32),
      1);
  }
  v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 28);
  *(_DWORD *)(a1 + 56) = v11;
  v12 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 32);
  *(_DWORD *)(a1 + 20) = v12 - v11;
  *(_DWORD *)(a1 + 60) = v12;
  glitch::scene::ISceneNodeAnimator::setTimelineCtrl(a1, v9);
  glitch::IReferenceCounted::drop((glitch::collada::CTimelineController *)((char *)v9 + *(_DWORD *)(*(_DWORD *)v9 - 12)));
  return a1;
}


// ===== 65dda0 glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator(glitch::collada::CColladaDatabase const&,glitch::collada::SLibraryAnimationClips &) =====
int __fastcall glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator(int a1, int *a2, _DWORD *a3, _DWORD *a4)
{
  int v8; // r3
  int v9; // r1
  int v10; // r2
  int v11; // r3
  glitch::collada::CTimelineController *v12; // r5
  _DWORD *v13; // r3
  int v14; // r2
  int v15; // r3
  int v17; // r1

  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator((glitch::collada::ISceneNodeAnimator *)a1);
  v8 = *a3;
  *(_DWORD *)(a1 + 40) = *a3;
  *(_DWORD *)(a1 + 44) = a3[1];
  if ( v8 )
  {
    v9 = *(_DWORD *)(v8 + 4);
    if ( v9 )
      *(_DWORD *)(v8 + 4) = v9 + 1;
  }
  *(_DWORD *)(a1 + 36) = &unk_9F6F08;
  v10 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v10 - 12)) = a2[7];
  *(_DWORD *)(a1 + 4) = off_983A60;
  *(_DWORD *)(a1 + 48) = 1065353216;
  v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a3 + 36) + 32) + 20);
  *(_DWORD *)(a1 + 64) = a4;
  *(_DWORD *)(a1 + 68) = 0;
  *(_BYTE *)(a1 + 52) = v11 != 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  v12 = (glitch::collada::CTimelineController *)operator new(72, 0);
  glitch::collada::CTimelineController::CTimelineController(v12);
  if ( *a4 )
  {
    v13 = *(_DWORD **)(a1 + 64);
    *((_DWORD *)v12 + 13) = v13;
    if ( v13 && *v13 )
    {
      (*(void (__fastcall **)(glitch::collada::CTimelineController *, _DWORD))(*(_DWORD *)v12 + 16))(v12, 0);
    }
    else
    {
      *((_DWORD *)v12 + 4) = 0;
      *((_DWORD *)v12 + 5) = 1;
    }
  }
  else
  {
    v17 = *(_DWORD *)(*(_DWORD *)(*a3 + 36) + 32);
    (*(void (__fastcall **)(glitch::collada::CTimelineController *, _DWORD, _DWORD, int))(*(_DWORD *)v12 + 80))(
      v12,
      *(_DWORD *)(v17 + 28),
      *(_DWORD *)(v17 + 32),
      1);
  }
  v14 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a3 + 36) + 32) + 28);
  *(_DWORD *)(a1 + 56) = v14;
  v15 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a3 + 36) + 32) + 32);
  *(_DWORD *)(a1 + 20) = v15 - v14;
  *(_DWORD *)(a1 + 60) = v15;
  glitch::scene::ISceneNodeAnimator::setTimelineCtrl((glitch::scene::ISceneNodeAnimator *)a1, v12);
  glitch::IReferenceCounted::drop((glitch::collada::CTimelineController *)((char *)v12 + *(_DWORD *)(*(_DWORD *)v12 - 12)));
  return a1;
}


// ===== 65df4c glitch::collada::CSceneNodeAnimator::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::CSceneNodeAnimator::serializeAttributes(int a1, int a2)
{
  int v4; // r6
  int StringsInternal; // r0
  void (__fastcall *v6)(int, const char *, int, int); // r6
  int v7; // r0
  int v8; // r2

  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
    a2,
    "BlendOutWeight",
    *(_DWORD *)(a1 + 48),
    0);
  (*(void (__fastcall **)(int, const char *, _DWORD, int))(*(_DWORD *)a2 + 100))(
    a2,
    "Start",
    (float)*(int *)(a1 + 56) / 1000.0,
    1);
  (*(void (__fastcall **)(int, char *, _DWORD, int))(*(_DWORD *)a2 + 100))(
    a2,
    "End",
    (float)*(int *)(a1 + 60) / 1000.0,
    1);
  (*(void (__fastcall **)(int, char *, _DWORD, int))(*(_DWORD *)a2 + 100))(
    a2,
    "Length",
    (float)*(int *)(a1 + 20) / 1000.0,
    1);
  v4 = *(_DWORD *)(a1 + 12);
  StringsInternal = glitch::collada::getStringsInternal(0);
  (*(void (__fastcall **)(int, const char *, int, int, _DWORD))(*(_DWORD *)a2 + 244))(
    a2,
    "Interpolation Type",
    v4,
    StringsInternal,
    0);
  v6 = *(void (__fastcall **)(int, const char *, int, int))(*(_DWORD *)a2 + 124);
  v7 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 16) + 84))(*(_DWORD *)(a1 + 16));
  v6(a2, "Binded to", v7, 1);
  v8 = *(_DWORD *)(a1 + 40);
  if ( v8 )
    v8 = *(_DWORD *)(v8 + 32);
  return (*(int (__fastcall **)(int, const char *, int, int))(*(_DWORD *)a2 + 124))(a2, "Source", v8, 1);
}


// ===== 65e0d8 glitch::collada::CSceneNodeAnimator::addAnimationTrack(glitch::collada::SAnimation *) =====
void __fastcall glitch::collada::CSceneNodeAnimator::addAnimationTrack(_DWORD *a1, int a2)
{
  _DWORD *v2; // r10
  unsigned int v5; // r3
  unsigned int v6; // r9
  size_t v7; // r9
  _DWORD *v8; // r0
  int v9; // r8
  _DWORD *v10; // r6
  int v11; // r10
  _DWORD *v12; // r10
  int v13; // r7
  unsigned int v14; // lr
  _DWORD *v15; // r12
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  char *v20; // r3
  char *v21; // r0
  _DWORD *v22; // r9

  v2 = (_DWORD *)a1[18];
  if ( v2 == (_DWORD *)a1[19] )
  {
    v5 = ((int)v2 - a1[17]) >> 4;
    if ( v5 )
      v6 = 2 * v5;
    else
      v6 = 1;
    if ( v6 > 0xFFFFFFF || v5 > v6 )
      v7 = -4;
    else
      v7 = 4 * v6;
    v8 = GlitchAlloc(v7 * 4, 0);
    v9 = a1[17];
    v10 = v8;
    v11 = ((int)v2 - v9) >> 4;
    if ( v11 > 0 )
    {
      v13 = v11;
      v14 = 0;
      do
      {
        v15 = &v10[v14 / 4];
        --v13;
        v16 = *(_DWORD *)(v9 + v14);
        v17 = *(_DWORD *)(v9 + v14 + 4);
        v18 = *(_DWORD *)(v9 + v14 + 8);
        v19 = *(_DWORD *)(v9 + v14 + 12);
        v14 += 16;
        *v15 = v16;
        v15[1] = v17;
        v15[2] = v18;
        v15[3] = v19;
      }
      while ( v13 );
      v12 = &v10[4 * v11];
    }
    else
    {
      v12 = v8;
    }
    v12[1] = 0;
    v12[3] = 0;
    v12[2] = 0;
    *v12 = a2;
    v20 = (char *)a1[17];
    v21 = (char *)a1[18];
    v22 = &v10[v7];
    if ( v21 != v20 )
      v21 += 16 * ~((unsigned int)(v21 - 16 - v20) >> 4);
    GlitchFree(v21);
    a1[19] = v22;
    a1[18] = v12 + 4;
    a1[17] = v10;
  }
  else
  {
    *v2 = a2;
    v2[1] = 0;
    v2[3] = 0;
    v2[2] = 0;
    a1[18] += 16;
  }
}


// ===== 65e1e4 `virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(
        glitch::collada::CSceneNodeAnimator *this)
{
  glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator((glitch::collada::CSceneNodeAnimator *)((char *)this
                                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 65e1f4 `virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(
        glitch::collada::CSceneNodeAnimator *this)
{
  glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator((glitch::collada::CSceneNodeAnimator *)((char *)this
                                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 65e204 glitch::collada::CSceneNodeAnimatorBlender::getAnimationTrack(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::getAnimationTrack(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(***((_DWORD ***)this + 10) + 84))(**((_DWORD **)this + 10), a2);
}


// ===== 65e224 glitch::collada::CSceneNodeAnimatorBlender::getAnimationTrackEx(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::getAnimationTrackEx(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(***((_DWORD ***)this + 10) + 88))(**((_DWORD **)this + 10), a2);
}


// ===== 65e244 glitch::collada::CSceneNodeAnimatorBlender::setTarget(int,void *,glitch::collada::animation_track::CApplicatorInfo const*) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::setTarget(int result, int a2, int a3, int a4)
{
  int v5; // r4
  int v7; // r3
  int v8; // r4

  v5 = result;
  *(_DWORD *)(*(_DWORD *)(result + 88) + 4 * a2) = a3;
  v7 = *(_DWORD *)(*(_DWORD *)(result + 100) + 4 * a2);
  if ( v7 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*(_DWORD *)(*(_DWORD *)(result + 100) + 4 * a2));
    *(_DWORD *)(*(_DWORD *)(v5 + 100) + 4 * a2) = 0;
  }
  if ( a4 )
  {
    v8 = *(_DWORD *)(v5 + 100);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 8))(a4);
    *(_DWORD *)(v8 + 4 * a2) = result;
  }
  return result;
}


// ===== 65e2ac glitch::collada::CSceneNodeAnimatorBlender::getBindURI(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::getBindURI(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(***((_DWORD ***)this + 10) + 108))(**((_DWORD **)this + 10), a2);
}


// ===== 65e2cc glitch::collada::CSceneNodeAnimatorBlender::getTargetCount(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::getTargetCount(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 10) + 112))(**((_DWORD **)this + 10));
}


// ===== 65e2ec glitch::collada::CSceneNodeAnimatorBlender::getTargetSize(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::getTargetSize(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(***((_DWORD ***)this + 10) + 116))(**((_DWORD **)this + 10), a2);
}


// ===== 65e30c glitch::collada::CSceneNodeAnimatorBlender::getTargetsSize(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::getTargetsSize(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 10) + 120))(**((_DWORD **)this + 10));
}


// ===== 65e32c glitch::collada::CSceneNodeAnimatorBlender::getLength(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::getLength(glitch::collada::CSceneNodeAnimatorBlender *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 10) + 72))(**((_DWORD **)this + 10));
}


// ===== 65e34c glitch::collada::CSceneNodeAnimatorBlender::getAnimationValue(int,int,void *) =====
void __fastcall glitch::collada::CSceneNodeAnimatorBlender::getAnimationValue(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        int a2,
        int a3,
        void *a4)
{
  ;
}


// ===== 65e350 glitch::collada::CSceneNodeAnimatorBlender::applyAnimationValues(uint) =====
float __fastcall glitch::collada::CSceneNodeAnimatorBlender::applyAnimationValues(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        unsigned int a2)
{
  int v3; // r6
  int i; // r5
  int v6; // r3
  float result; // r0
  int v8; // r5
  int v9; // r3
  int v10; // r0

  v3 = (*((_DWORD *)this + 11) - *((_DWORD *)this + 10)) >> 2;
  if ( v3 )
  {
    for ( i = 0; i != v3; ++i )
    {
      while ( *(float *)(*((_DWORD *)this + 13) + 4 * i) == 0.0 )
      {
        if ( ++i == v3 )
          goto LABEL_6;
      }
      v6 = *(_DWORD *)(*((_DWORD *)this + 10) + 4 * i);
      (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v6 + 76))(v6, a2);
    }
  }
LABEL_6:
  result = glitch::collada::CSceneNodeAnimatorBlender::normalizeWeights(*(float *)&this);
  if ( (unsigned int)(*((_DWORD *)this + 23) - *((_DWORD *)this + 22)) >> 2 )
  {
    v8 = 0;
    while ( 1 )
    {
      result = COERCE_FLOAT(
                 (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorBlender *, int))(*(_DWORD *)this + 128))(
                   this,
                   v8));
      if ( result == 0.0 )
        goto LABEL_11;
      v9 = *((_DWORD *)this + 22);
      if ( *(_DWORD *)(v9 + 4 * v8) )
        break;
LABEL_12:
      if ( ++v8 >= (unsigned int)((*((_DWORD *)this + 23) - v9) >> 2) )
        return result;
    }
    v10 = (*(int (__fastcall **)(_DWORD, int))(***((_DWORD ***)this + 10) + 88))(**((_DWORD **)this + 10), v8);
    result = COERCE_FLOAT(
               (*(int (__fastcall **)(int, _DWORD, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)v10 + 24))(
                 v10,
                 *(_DWORD *)(*((_DWORD *)this + 19) + 4 * v8),
                 *((_DWORD *)this + 13),
                 (*((_DWORD *)this + 14) - *((_DWORD *)this + 13)) >> 2,
                 *(_DWORD *)(*((_DWORD *)this + 22) + 4 * v8),
                 *(_DWORD *)(*((_DWORD *)this + 25) + 4 * v8)));
LABEL_11:
    v9 = *((_DWORD *)this + 22);
    goto LABEL_12;
  }
  return result;
}


// ===== 65e48c glitch::collada::CSceneNodeAnimatorBlender::computeAnimationValues(uint) =====
float __fastcall glitch::collada::CSceneNodeAnimatorBlender::computeAnimationValues(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        unsigned int a2)
{
  int v2; // r6
  int v3; // r7
  unsigned int v6; // r5
  int v7; // r3
  float result; // r0
  int v9; // r5
  int v10; // r3
  int v11; // r0

  v2 = *((_DWORD *)this + 10);
  v3 = *((_DWORD *)this + 11);
  if ( (unsigned int)(v3 - v2) >> 2 )
  {
    v6 = 0;
    do
    {
      while ( *(float *)(*((_DWORD *)this + 13) + 4 * v6) == 0.0 )
      {
        if ( ++v6 >= (v3 - v2) >> 2 )
          goto LABEL_6;
      }
      v7 = *(_DWORD *)(v2 + 4 * v6++);
      (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v7 + 76))(v7, a2);
      v2 = *((_DWORD *)this + 10);
      v3 = *((_DWORD *)this + 11);
    }
    while ( v6 < (v3 - v2) >> 2 );
  }
LABEL_6:
  result = glitch::collada::CSceneNodeAnimatorBlender::normalizeWeights(*(float *)&this);
  if ( (unsigned int)(*((_DWORD *)this + 23) - *((_DWORD *)this + 22)) >> 2 )
  {
    v9 = 0;
    while ( 1 )
    {
      result = COERCE_FLOAT(
                 (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorBlender *, int))(*(_DWORD *)this + 128))(
                   this,
                   v9));
      if ( result == 0.0 )
        goto LABEL_11;
      v10 = *((_DWORD *)this + 22);
      if ( *(_DWORD *)(v10 + 4 * v9) )
        break;
LABEL_12:
      if ( ++v9 >= (unsigned int)((*((_DWORD *)this + 23) - v10) >> 2) )
        return result;
    }
    v11 = (*(int (__fastcall **)(_DWORD, int))(***((_DWORD ***)this + 10) + 88))(**((_DWORD **)this + 10), v9);
    result = COERCE_FLOAT(
               (*(int (__fastcall **)(int, _DWORD, _DWORD, int, _DWORD))(*(_DWORD *)v11 + 16))(
                 v11,
                 *(_DWORD *)(*((_DWORD *)this + 19) + 4 * v9),
                 *((_DWORD *)this + 13),
                 (*((_DWORD *)this + 14) - *((_DWORD *)this + 13)) >> 2,
                 *(_DWORD *)(*((_DWORD *)this + 22) + 4 * v9)));
LABEL_11:
    v10 = *((_DWORD *)this + 22);
    goto LABEL_12;
  }
  return result;
}


// ===== 65e5c8 glitch::collada::CSceneNodeAnimatorBlender::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorBlender::animateNode(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  return (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorBlender *, unsigned int))(*(_DWORD *)this + 80))(
           this,
           a3);
}


// ===== 65e5e0 `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeAnimatorBlender.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeAnimatorBlender.cpp()
{
  dword_9F704C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7048 = 1056964608;
}


// ===== 65e600 std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(void **,uint,void * const&,std::__false_type const&) =====
char *__fastcall std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
      return (char *)std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 65e748 std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::animation_track::CApplicatorInfo **,uint,glitch::collada::animation_track::CApplicatorInfo * const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
      return (char *)std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 65e890 std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 65e8f0 std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 65e950 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender((glitch::collada::CSceneNodeAnimatorBlender *)((char *)this - 4));
}


// ===== 65e958 glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() =====
void __fastcall glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  int v1; // r2
  bool v3; // zf
  unsigned int v4; // r5
  _DWORD *v5; // r3
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0

  v1 = *((_DWORD *)this + 10);
  v3 = (unsigned int)(*((_DWORD *)this + 11) - v1) >> 2 == 0;
  *(_DWORD *)this = off_983C1C;
  *((_DWORD *)this + 28) = off_983CCC;
  *((_DWORD *)this + 1) = off_983CB0;
  if ( !v3 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD **)(v1 + 4 * v4++);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
      v1 = *((_DWORD *)this + 10);
    }
    while ( v4 < (*((_DWORD *)this + 11) - v1) >> 2 );
  }
  v6 = *((void **)this + 25);
  if ( v6 )
    GlitchFree(v6);
  v7 = *((void **)this + 22);
  if ( v7 )
    GlitchFree(v7);
  v8 = *((void **)this + 19);
  if ( v8 )
    GlitchFree(v8);
  v9 = *((void **)this + 16);
  if ( v9 )
    GlitchFree(v9);
  v10 = *((void **)this + 13);
  if ( v10 )
    GlitchFree(v10);
  v11 = *((void **)this + 10);
  if ( v11 )
    GlitchFree(v11);
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 65ea54 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender((glitch::collada::CSceneNodeAnimatorBlender *)((char *)this - 4));
}


// ===== 65ea5c glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() =====
void __fastcall glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(this);
  LC_API_FREE_0(this);
}


// ===== 65ea78 glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() =====
void __fastcall glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        int *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r0
  unsigned int v6; // r5
  _DWORD *v7; // r3
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0
  void *v13; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  v4 = *((_DWORD *)this + 10);
  v5 = *((_DWORD *)this + 11);
  *((_DWORD *)this + 1) = off_983CB0;
  if ( (unsigned int)(v5 - v4) >> 2 )
  {
    v6 = 0;
    do
    {
      v7 = *(_DWORD **)(v4 + 4 * v6++);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v7 + *(_DWORD *)(*v7 - 12)));
      v4 = *((_DWORD *)this + 10);
    }
    while ( v6 < (*((_DWORD *)this + 11) - v4) >> 2 );
  }
  v8 = *((void **)this + 25);
  if ( v8 )
    GlitchFree(v8);
  v9 = *((void **)this + 22);
  if ( v9 )
    GlitchFree(v9);
  v10 = *((void **)this + 19);
  if ( v10 )
    GlitchFree(v10);
  v11 = *((void **)this + 16);
  if ( v11 )
    GlitchFree(v11);
  v12 = *((void **)this + 13);
  if ( v12 )
    GlitchFree(v12);
  v13 = *((void **)this + 10);
  if ( v13 )
    GlitchFree(v13);
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 65eb70 std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(void **,uint,void * const&) =====
void __fastcall std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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
      std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 4
         * std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 65ec40 std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,void * const&) =====
void __fastcall std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
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
    std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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


// ===== 65ec84 std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::animation_track::CApplicatorInfo **,uint,glitch::collada::animation_track::CApplicatorInfo * const&) =====
void __fastcall std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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
      std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 4
         * std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 65ed54 std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::collada::animation_track::CApplicatorInfo * const&) =====
void __fastcall std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
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
    std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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


// ===== 65ed98 glitch::collada::CSceneNodeAnimatorBlender::compile(std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>> *) =====
void __fastcall glitch::collada::CSceneNodeAnimatorBlender::compile(glitch::collada::ISceneNodeAnimator *a1, char *a2)
{
  int v3; // r5
  int v4; // r2
  int v5; // r1
  int v6; // r3
  int v7; // r2
  int v8; // r11
  int v9; // r9
  int v10; // r5
  int v11; // r7
  int v12; // r0
  int v13; // r3
  int v14; // r10
  unsigned int v15; // r8
  int v16; // r7
  int v17; // r6
  int v18; // r3
  int v19; // r2
  int v20; // r3
  int i; // [sp+0h] [bp-2Ch]
  signed int v22; // [sp+4h] [bp-28h]
  unsigned int v24; // [sp+Ch] [bp-20h]
  int v25; // [sp+14h] [bp-18h] BYREF
  int v26; // [sp+18h] [bp-14h] BYREF
  int v27; // [sp+1Ch] [bp-10h] BYREF
  char v28[7]; // [sp+20h] [bp-Ch] BYREF
  char v29; // [sp+27h] [bp-5h] BYREF

  v3 = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *))(*(_DWORD *)a1 + 120))(a1);
  v24 = (*((_DWORD *)a1 + 11) - *((_DWORD *)a1 + 10)) >> 2;
  v22 = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *))(*(_DWORD *)a1 + 112))(a1);
  if ( !a2 )
  {
    v29 = 0;
    a2 = (char *)a1 + 64;
    std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)a1 + 64,
      v24 * v3,
      &v29);
  }
  *(_DWORD *)v28 = 0;
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::resize((int)a1 + 52, v24, v28);
  v4 = *((_DWORD *)a1 + 13);
  v5 = (*((_DWORD *)a1 + 14) - v4) >> 2;
  if ( v5 )
  {
    v6 = 0;
    while ( 1 )
    {
      *(_DWORD *)(v4 + 4 * v6++) = 0;
      if ( v6 == v5 )
        break;
      v4 = *((_DWORD *)a1 + 13);
    }
  }
  v27 = 0;
  std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)a1 + 76,
    v22,
    (char *)&v27);
  v7 = *((_DWORD *)a2 + 1);
  v8 = **((_DWORD **)a1 + 10);
  if ( v7 != *(_DWORD *)a2 )
    LC_API_MEMSET_0(*(void **)a2, 0, v7 - *(_DWORD *)a2);
  if ( v22 > 0 )
  {
    v9 = 0;
    for ( i = 0; ; i += v24 * v10 )
    {
      v10 = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *, int))(*(_DWORD *)a1 + 116))(a1, v9);
      *(_DWORD *)(*((_DWORD *)a1 + 19) + 4 * v9) = *(_DWORD *)a2 + i;
      v11 = *(_DWORD *)(*((_DWORD *)a1 + 19) + 4 * v9);
      (*(void (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)v8 + 104))(v8, v9, v11, 0);
      v12 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 84))(v8, v9);
      v13 = *((_DWORD *)a1 + 10);
      v14 = v12;
      v15 = (*((_DWORD *)a1 + 11) - v13) >> 2;
      if ( v15 > 1 )
      {
        v16 = v11 + v10;
        v17 = 1;
        while ( 1 )
        {
          v18 = *(_DWORD *)(v13 + 4 * v17++);
          (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v18 + 96))(v18, v14, v16);
          v16 += v10;
          if ( v17 == v15 )
            break;
          v13 = *((_DWORD *)a1 + 10);
        }
      }
      if ( ++v9 == v22 )
        break;
    }
  }
  v26 = 0;
  std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)a1 + 88,
    v22,
    (char *)&v26);
  v25 = 0;
  std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)a1 + 100,
    v22,
    (char *)&v25);
  v19 = *((_DWORD *)a1 + 11);
  v20 = *((_DWORD *)a1 + 10);
  *((_BYTE *)a1 + 36) = 0;
  if ( (unsigned int)(v19 - v20) >> 2 )
    glitch::collada::ISceneNodeAnimator::forceBind(a1);
}


// ===== 65efe4 `virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender((glitch::collada::CSceneNodeAnimatorBlender *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 65eff4 `virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this)
{
  glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender((glitch::collada::CSceneNodeAnimatorBlender *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 65f004 glitch::collada::CAnimationSet::remAnimation(glitch::collada::SAnimation const*) =====
int glitch::collada::CAnimationSet::remAnimation()
{
  return 0;
}


// ===== 65f00c glitch::collada::CAnimationSet::getChannel(uint) =====
int __fastcall glitch::collada::CAnimationSet::getChannel(glitch::collada::CAnimationSet *this, unsigned int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 4 * a2);
}


// ===== 65f018 glitch::collada::CAnimationSet::getChannel(uint) =====
int __fastcall glitch::collada::CAnimationSet::getChannel(glitch::collada::CAnimationSet *this, unsigned int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 3) + 4 * a2);
}


// ===== 65f024 glitch::collada::CAnimationSet::getAnimationTrack(int) =====
int __fastcall glitch::collada::CAnimationSet::getAnimationTrack(glitch::collada::CAnimationSet *this, int a2)
{
  return (*(int (__fastcall **)(glitch::collada::CAnimationSet *, int))(*(_DWORD *)this + 24))(this, a2);
}


// ===== 65f038 glitch::collada::CAnimationSet::getAnimationTrackEx(int) =====
int __fastcall glitch::collada::CAnimationSet::getAnimationTrackEx(glitch::collada::CAnimationSet *this, int a2)
{
  return *(_DWORD *)(*((_DWORD *)this + 6) + 4 * a2);
}


// ===== 65f044 glitch::collada::CAnimationSet::getAnimationCount(void) =====
int __fastcall glitch::collada::CAnimationSet::getAnimationCount(glitch::collada::CAnimationSet *this)
{
  return (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3;
}


// ===== 65f058 glitch::collada::CAnimationSet::getAnimatedTrackCount(void) =====
int __fastcall glitch::collada::CAnimationSet::getAnimatedTrackCount(glitch::collada::CAnimationSet *this)
{
  return *((_DWORD *)this + 15);
}


// ===== 65f060 glitch::collada::CAnimationSet::getAnimationLength(uint) =====
int __fastcall glitch::collada::CAnimationSet::getAnimationLength(
        glitch::collada::CAnimationSet *this,
        unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 22);
  if ( a2 < (*((_DWORD *)this + 23) - v2) >> 2 )
    return *(_DWORD *)(v2 + 4 * a2);
  else
    return 0;
}


// ===== 65f07c glitch::collada::CAnimationSet::getAnimationStart(uint) =====
int __fastcall glitch::collada::CAnimationSet::getAnimationStart(glitch::collada::CAnimationSet *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 16);
  if ( a2 < (*((_DWORD *)this + 17) - v2) >> 2 )
    return *(_DWORD *)(v2 + 4 * a2);
  else
    return 0;
}


// ===== 65f098 glitch::collada::CAnimationSet::getAnimationEnd(uint) =====
int __fastcall glitch::collada::CAnimationSet::getAnimationEnd(glitch::collada::CAnimationSet *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 19);
  if ( a2 < (*((_DWORD *)this + 20) - v2) >> 2 )
    return *(_DWORD *)(v2 + 4 * a2);
  else
    return 0;
}


// ===== 65f0b4 glitch::collada::CAnimationSet::getDatabase(int) =====
int __fastcall glitch::collada::CAnimationSet::getDatabase(glitch::collada::CAnimationSet *this, int a2)
{
  return *((_DWORD *)this + 9) + 8 * a2;
}


// ===== 65f0c0 glitch::collada::CAnimationSet::getBinding(int) =====
int __fastcall glitch::collada::CAnimationSet::getBinding(glitch::collada::CAnimationSet *this, int a2)
{
  return *((_DWORD *)this + 12) + 12 * a2;
}


// ===== 65f0d0 glitch::collada::CAnimationSet::remAnimationLibrary(glitch::collada::CColladaDatabase &) =====
void __fastcall glitch::collada::CAnimationSet::remAnimationLibrary(
        glitch::collada::CAnimationSet *this,
        glitch::collada::CColladaDatabase *a2)
{
  ;
}


// ===== 65f0d4 glitch::collada::CAnimationSet::remAnimationLibrary(int) =====
void __fastcall glitch::collada::CAnimationSet::remAnimationLibrary(glitch::collada::CAnimationSet *this, int a2)
{
  ;
}


// ===== 65f0d8 glitch::collada::CAnimationSet::remAnimationTemplate(void) =====
int __fastcall glitch::collada::CAnimationSet::remAnimationTemplate(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 100);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 4))(*(_DWORD *)(this + 100));
  return this;
}


// ===== 65f0fc glitch::collada::CSceneNodeAnimatorSet::getAnimationLength(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationLength(
        glitch::collada::CAnimationSet **this,
        unsigned int a2)
{
  return glitch::collada::CAnimationSet::getAnimationLength(*(this + 9), a2);
}


// ===== 65f104 glitch::collada::CSceneNodeAnimatorSet::getAnimationStart(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationStart(
        glitch::collada::CAnimationSet **this,
        unsigned int a2)
{
  return glitch::collada::CAnimationSet::getAnimationStart(*(this + 9), a2);
}


// ===== 65f10c glitch::collada::CSceneNodeAnimatorSet::getAnimationEnd(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationEnd(
        glitch::collada::CAnimationSet **this,
        unsigned int a2)
{
  return glitch::collada::CAnimationSet::getAnimationEnd(*(this + 9), a2);
}


// ===== 65f114 glitch::collada::CSceneNodeAnimatorSet::getCurrentAnimation(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getCurrentAnimation(
        glitch::collada::CSceneNodeAnimatorSet *this)
{
  return *((_DWORD *)this + 20);
}


// ===== 65f11c glitch::collada::CSceneNodeAnimatorSet::getAnimationCount(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationCount(glitch::collada::CAnimationSet **this)
{
  return glitch::collada::CAnimationSet::getAnimationCount(*(this + 9));
}


// ===== 65f124 glitch::collada::CSceneNodeAnimatorSet::getAnimationTrack(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationTrack(
        glitch::collada::CSceneNodeAnimatorSet *this,
        int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 9) + 32))(*((_DWORD *)this + 9), a2);
}


// ===== 65f140 glitch::collada::CSceneNodeAnimatorSet::getAnimationTrackEx(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationTrackEx(
        glitch::collada::CSceneNodeAnimatorSet *this,
        int a2)
{
  return (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 9) + 36))(*((_DWORD *)this + 9), a2);
}


// ===== 65f15c glitch::collada::CSceneNodeAnimatorSet::getBindURI(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getBindURI(glitch::collada::CSceneNodeAnimatorSet *this, int a2)
{
  return *(_DWORD *)((*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 9) + 20))(*((_DWORD *)this + 9), a2) + 4);
}


// ===== 65f17c glitch::collada::CSceneNodeAnimatorSet::getTargetCount(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getTargetCount(glitch::collada::CSceneNodeAnimatorSet *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 9) + 60);
}


// ===== 65f188 glitch::collada::CSceneNodeAnimatorSet::getTargetSize(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getTargetSize(
        glitch::collada::CSceneNodeAnimatorSet *this,
        int a2)
{
  int v2; // r0

  v2 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 9) + 24) + 4 * a2);
  return (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 8))(v2);
}


// ===== 65f1ac glitch::collada::CSceneNodeAnimatorSet::getTargetsSize(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getTargetsSize(glitch::collada::CSceneNodeAnimatorSet *this)
{
  int v1; // r3
  int v3; // r6
  int v4; // r5
  int v5; // r4
  int v6; // r3

  v1 = *((_DWORD *)this + 9);
  v3 = *(_DWORD *)(v1 + 60);
  if ( !v3 )
    return 0;
  v5 = 0;
  v4 = 0;
  while ( 1 )
  {
    v6 = *(_DWORD *)(*(_DWORD *)(v1 + 24) + 4 * v5++);
    v4 += (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 8))(v6);
    if ( v5 == v3 )
      break;
    v1 = *((_DWORD *)this + 9);
  }
  return v4;
}


// ===== 65f208 glitch::collada::CSceneNodeAnimatorSet::setTarget(int,void *,glitch::collada::animation_track::CApplicatorInfo const*) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::setTarget(int result, int a2, int a3, int a4)
{
  int v5; // r4
  int v7; // r3
  int v8; // r4

  v5 = result;
  *(_DWORD *)(*(_DWORD *)(result + 40) + 4 * a2) = a3;
  v7 = *(_DWORD *)(*(_DWORD *)(result + 52) + 4 * a2);
  if ( v7 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*(_DWORD *)(*(_DWORD *)(result + 52) + 4 * a2));
    *(_DWORD *)(*(_DWORD *)(v5 + 52) + 4 * a2) = 0;
  }
  if ( a4 )
  {
    v8 = *(_DWORD *)(v5 + 52);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 8))(a4);
    *(_DWORD *)(v8 + 4 * a2) = result;
  }
  return result;
}


// ===== 65f270 glitch::collada::CSceneNodeAnimatorSet::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::animateNode(
        glitch::collada::CSceneNodeAnimatorSet *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  return (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSet *, unsigned int))(*(_DWORD *)this + 80))(
           this,
           a3);
}


// ===== 65f288 glitch::collada::CSceneNodeAnimatorSet::getIdentityValue(int,void *) =====
void __fastcall glitch::collada::CSceneNodeAnimatorSet::getIdentityValue(
        glitch::collada::CSceneNodeAnimatorSet *this,
        int a2,
        void *a3)
{
  ;
}


// ===== 65f28c `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeAnimatorSet.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeAnimatorSet.cpp()
{
  dword_9F7058 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7054 = 1056964608;
}


// ===== 65f2ac glitch::collada::CAnimationSet::~CAnimationSet() =====
void __fastcall glitch::collada::CAnimationSet::~CAnimationSet(glitch::collada::CAnimationSet *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0

  *(_DWORD *)this = off_9840C0;
  glitch::collada::CAnimationSet::remAnimationTemplate((int)this);
  v2 = *((void **)this + 22);
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 19);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((void **)this + 16);
  if ( v4 )
    GlitchFree(v4);
  v5 = *((void **)this + 12);
  if ( v5 )
    GlitchFree(v5);
  std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::IReferenceCounted ***)this + 9);
  v6 = *((void **)this + 6);
  if ( v6 )
    GlitchFree(v6);
  v7 = *((void **)this + 3);
  if ( v7 )
    GlitchFree(v7);
}


// ===== 65f348 glitch::collada::CAnimationSet::~CAnimationSet() =====
void __fastcall glitch::collada::CAnimationSet::~CAnimationSet(glitch::collada::CAnimationSet *this)
{
  glitch::collada::CAnimationSet::~CAnimationSet(this);
  LC_API_FREE_0(this);
}


// ===== 65f364 glitch::collada::CSceneNodeAnimatorSet::getAnimationData(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationData(glitch::collada::CAnimationSet **this, int a2)
{
  int v4; // r8
  int v5; // r0
  const glitch::collada::CColladaDatabase *Database; // r0
  int v7; // r4
  glitch::IReferenceCounted *v9[4]; // [sp+0h] [bp-10h] BYREF

  v4 = (*((int (__fastcall **)(glitch::collada::CAnimationSet **))*this + 17))(this);
  if ( v4 )
  {
    v5 = (*((int (__fastcall **)(glitch::collada::CAnimationSet **))*this + 17))(this);
    v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 56))(v5);
  }
  Database = (const glitch::collada::CColladaDatabase *)glitch::collada::CAnimationSet::getDatabase(
                                                          *(this + 9),
                                                          (int)*(this + 20));
  glitch::collada::SAnimationBlockSearchKey::SAnimationBlockSearchKey(
    (glitch::collada::SAnimationBlockSearchKey *)v9,
    Database,
    v4,
    a2);
  glitch::collada::CAnimationStreamingManager::getAnimationBlock(
    (glitch::collada::CAnimationStreamingManager *)glitch::collada::CAnimationStreamingManager::Instance,
    (glitch::collada::SAnimationBlockSearchKey *)v9,
    this + 21);
  v7 = (int)*(this + 21);
  if ( v7 )
    v7 = *(_DWORD *)(*(_DWORD *)(v7 + 20) + 12);
  glitch::collada::CColladaDatabase::~CColladaDatabase(v9);
  return v7;
}


// ===== 65f418 glitch::collada::CSceneNodeAnimatorSet::applyAnimationValues(uint) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::CSceneNodeAnimatorSet::applyAnimationValues(
        glitch::collada::ISceneNodeAnimator *this,
        unsigned int a2)
{
  glitch::collada::CAnimationSet **v2; // r4
  int v4; // r0
  int v5; // r5
  glitch::collada::CAnimationSet *v6; // r3
  int v7; // r11
  int i; // r5
  int v9; // r8
  void *v10; // r6
  glitch::collada::CAnimationSet *v11; // r3
  int v12; // r9
  int v13; // r10
  int v14; // r1
  glitch::collada::CAnimationSet *v15; // r3
  glitch::collada::animation_track::CApplicatorInfo *v16; // r3
  int v17; // [sp+Ch] [bp-38h]
  glitch::collada::ISceneNodeAnimator *v18; // [sp+10h] [bp-34h]
  bool v19; // [sp+14h] [bp-30h]
  _BYTE v20[16]; // [sp+24h] [bp-20h] BYREF
  _DWORD v21[4]; // [sp+34h] [bp-10h] BYREF

  v2 = (glitch::collada::CAnimationSet **)this;
  if ( *(_DWORD *)(*((_DWORD *)this + 9) + 60) || *((_DWORD *)this + 6) )
  {
    glitch::collada::ISceneNodeAnimator::updateTime(this, a2);
    v4 = (*((int (__fastcall **)(glitch::collada::CAnimationSet **))*v2 + 17))(v2);
    v17 = v4 ? *(_DWORD *)(v4 + 4) : a2 % (unsigned int)v2[5];
    v19 = v2[3] != (glitch::collada::CAnimationSet *)((char *)&dword_0 + 1);
    v5 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)glitch::collada::CAnimationSet::getDatabase(v2[9], (int)v2[20])
                                           + 36)
                               + 32)
                   + 20);
    this = (glitch::collada::ISceneNodeAnimator *)glitch::collada::CSceneNodeAnimatorSet::getAnimationData(v2, v17);
    v18 = this;
    v6 = v2[9];
    v20[13] = v5 != 0;
    v7 = *((_DWORD *)v6 + 15);
    if ( v7 )
    {
      for ( i = 0; i != v7; ++i )
      {
        while ( 1 )
        {
          this = (glitch::collada::ISceneNodeAnimator *)(*((int (__fastcall **)(glitch::collada::CAnimationSet **, int))*v2
                                                         + 32))(
                                                          v2,
                                                          i);
          if ( this )
          {
            v9 = 4 * i;
            v10 = *((void **)v2[10] + i);
            if ( v10 )
            {
              v11 = v2[9];
              v12 = 12 * ((_DWORD)v2[19] + i);
              v13 = *((_DWORD *)v11 + 12);
              v14 = *(_DWORD *)(v13 + v12 + 4);
              if ( v14 )
                this = (glitch::collada::ISceneNodeAnimator *)(*(int (__fastcall **)(_DWORD, int, _DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)v11 + 6) + 4 * i) + 112))(
                                                                *(_DWORD *)(*((_DWORD *)v11 + 6) + 4 * i),
                                                                v14,
                                                                *((_DWORD *)v2[10] + i),
                                                                *((_DWORD *)v2[13] + i));
              if ( *(_DWORD *)(v13 + v12) == 2 )
                break;
            }
          }
          if ( ++i == v7 )
            return this;
        }
        v15 = v2[13];
        v21[0] = *(_DWORD *)(v13 + v12 + 8);
        v21[1] = v18;
        v21[2] = v20;
        v16 = *((glitch::collada::animation_track::CApplicatorInfo **)v15 + i);
        this = (glitch::collada::ISceneNodeAnimator *)glitch::collada::SAnimationAccessor::applyValue(
                                                        (glitch::collada::SAnimationAccessor *)v21,
                                                        v17,
                                                        v10,
                                                        v16,
                                                        (int *)((char *)v2[16] + v9),
                                                        v19);
      }
    }
  }
  return this;
}


// ===== 65f5dc glitch::collada::CSceneNodeAnimatorSet::computeAnimationValues(uint) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::CSceneNodeAnimatorSet::computeAnimationValues(
        glitch::collada::ISceneNodeAnimator *this,
        unsigned int a2)
{
  glitch::collada::CAnimationSet **v2; // r5
  int v4; // r0
  glitch::collada::CAnimationSet *v5; // r3
  int v6; // r4
  int v7; // r9
  void *v8; // r6
  glitch::collada::CAnimationSet *v9; // r3
  int v10; // r7
  int v11; // r8
  int v12; // r0
  size_t v13; // r0
  int *v14; // r3
  void *v15; // [sp+Ch] [bp-40h]
  _BOOL4 v16; // [sp+10h] [bp-3Ch]
  int v17; // [sp+14h] [bp-38h]
  glitch::collada::ISceneNodeAnimator *v18; // [sp+18h] [bp-34h]
  bool v19; // [sp+1Ch] [bp-30h]
  _BYTE v20[16]; // [sp+2Ch] [bp-20h] BYREF
  _DWORD v21[4]; // [sp+3Ch] [bp-10h] BYREF

  v2 = (glitch::collada::CAnimationSet **)this;
  if ( *(_DWORD *)(*((_DWORD *)this + 9) + 60) || *((_DWORD *)this + 6) )
  {
    glitch::collada::ISceneNodeAnimator::updateTime(this, a2);
    v4 = (*((int (__fastcall **)(glitch::collada::CAnimationSet **))*v2 + 17))(v2);
    v17 = v4 ? *(_DWORD *)(v4 + 4) : a2 % (unsigned int)v2[5];
    v19 = v2[3] != (glitch::collada::CAnimationSet *)((char *)&dword_0 + 1);
    v16 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)glitch::collada::CAnimationSet::getDatabase(v2[9], (int)v2[20])
                                            + 36)
                                + 32)
                    + 20) != 0;
    this = (glitch::collada::ISceneNodeAnimator *)glitch::collada::CSceneNodeAnimatorSet::getAnimationData(v2, v17);
    v18 = this;
    v5 = v2[9];
    v20[13] = v16;
    if ( *((_DWORD *)v5 + 15) )
    {
      v6 = 0;
      v7 = *((_DWORD *)v5 + 15);
      do
      {
        while ( 1 )
        {
          this = (glitch::collada::ISceneNodeAnimator *)(*((int (__fastcall **)(glitch::collada::CAnimationSet **, int))*v2
                                                         + 32))(
                                                          v2,
                                                          v6);
          if ( this )
          {
            v8 = *((void **)v2[10] + v6);
            if ( v8 )
            {
              v9 = v2[9];
              v10 = 12 * ((_DWORD)v2[19] + v6);
              v11 = *((_DWORD *)v9 + 12);
              if ( *(_DWORD *)(v11 + v10 + 4) )
              {
                v12 = *(_DWORD *)(*((_DWORD *)v9 + 6) + 4 * v6);
                v15 = *(void **)(v11 + v10 + 4);
                v13 = (*(int (__fastcall **)(int))(*(_DWORD *)v12 + 8))(v12);
                this = (glitch::collada::ISceneNodeAnimator *)memcpy(v8, v15, v13);
              }
              if ( *(_DWORD *)(v11 + v10) == 2 )
                break;
            }
          }
          if ( ++v6 == v7 )
            return this;
        }
        v21[0] = *(_DWORD *)(v11 + v10 + 8);
        v21[1] = v18;
        v21[2] = v20;
        v14 = (int *)v2[16];
        if ( !v16 )
          v14 += v6;
        ++v6;
        this = (glitch::collada::ISceneNodeAnimator *)glitch::collada::SAnimationAccessor::getValue(
                                                        (glitch::collada::SAnimationAccessor *)v21,
                                                        v17,
                                                        v8,
                                                        v14,
                                                        v19);
      }
      while ( v6 != v7 );
    }
  }
  return this;
}


// ===== 65f7b4 glitch::collada::CSceneNodeAnimatorSet::getAnimationValue(int,int,void *) =====
void *__fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationValue(
        glitch::collada::CSceneNodeAnimatorSet *this,
        int a2,
        int a3,
        void *a4)
{
  void *result; // r0
  int v9; // r3
  int v10; // r6
  int v11; // r7
  int v12; // r11
  int v13; // r0
  size_t v14; // r0
  int AnimationData; // r0
  int v16; // r3
  int *v17; // r3
  void *v18; // [sp+8h] [bp-2Ch]
  int v19; // [sp+Ch] [bp-28h]
  _BYTE v20[16]; // [sp+14h] [bp-20h] BYREF
  _DWORD v21[4]; // [sp+24h] [bp-10h] BYREF

  v19 = *((_DWORD *)this + 3);
  result = (void *)glitch::collada::CAnimationSet::getDatabase(
                     *((glitch::collada::CAnimationSet **)this + 9),
                     *((_DWORD *)this + 20));
  v9 = *((_DWORD *)this + 9);
  v10 = 12 * (a2 + *((_DWORD *)this + 19));
  v11 = *(_DWORD *)(v9 + 48);
  v12 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)result + 36) + 32) + 20);
  if ( *(_DWORD *)(v11 + v10 + 4) )
  {
    v13 = *(_DWORD *)(*(_DWORD *)(v9 + 24) + 4 * a2);
    v18 = *(void **)(v11 + v10 + 4);
    v14 = (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 8))(v13);
    result = memcpy(a4, v18, v14);
  }
  if ( *(_DWORD *)(v11 + v10) == 2 )
  {
    v20[13] = 0;
    AnimationData = glitch::collada::CSceneNodeAnimatorSet::getAnimationData(
                      (glitch::collada::CAnimationSet **)this,
                      a3);
    v16 = *(_DWORD *)(v11 + v10 + 8);
    v21[1] = AnimationData;
    v21[0] = v16;
    v21[2] = v20;
    v17 = *((int **)this + 16);
    if ( !v12 )
      v17 += a2;
    return (void *)glitch::collada::SAnimationAccessor::getValue(
                     (glitch::collada::SAnimationAccessor *)v21,
                     a3,
                     a4,
                     v17,
                     v19 != 1);
  }
  return result;
}


// ===== 65f8ac glitch::collada::CSceneNodeAnimatorSet::getAnimationVisualSceneID(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::getAnimationVisualSceneID(
        glitch::collada::CAnimationSet **this,
        int a2)
{
  glitch::collada::CColladaDatabase *Database; // r0

  Database = (glitch::collada::CColladaDatabase *)glitch::collada::CAnimationSet::getDatabase(*(this + 9), a2);
  return *(_DWORD *)glitch::collada::CColladaDatabase::getVisualScene(Database, 0);
}


// ===== 65f8c8 glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(int) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(
        glitch::collada::CAnimationSet **this,
        unsigned int a2)
{
  int AnimationLength; // r0
  glitch::collada::CAnimationSet *v5; // r3
  int v6; // r2
  glitch::collada::CColladaDatabase *Database; // r0
  _DWORD *AnimationClipLibrary; // r6
  glitch::IReferenceCounted *result; // r0
  _DWORD *v10; // r0
  _DWORD *v11; // r0
  int v12; // r8
  void (__fastcall *v13)(int, int, int, int); // r6
  int AnimationStart; // r10
  int AnimationEnd; // r0
  int v16; // r3

  AnimationLength = glitch::collada::CSceneNodeAnimatorSet::getAnimationLength(this, a2);
  v5 = *(this + 9);
  *(this + 5) = (glitch::collada::CAnimationSet *)AnimationLength;
  v6 = *((_DWORD *)v5 + 15);
  *(this + 20) = (glitch::collada::CAnimationSet *)a2;
  *(this + 19) = (glitch::collada::CAnimationSet *)(v6 * a2);
  Database = (glitch::collada::CColladaDatabase *)glitch::collada::CAnimationSet::getDatabase(v5, a2);
  AnimationClipLibrary = (_DWORD *)glitch::collada::CColladaDatabase::getAnimationClipLibrary(Database);
  result = (glitch::IReferenceCounted *)(*((int (__fastcall **)(glitch::collada::CAnimationSet **))*this + 17))(this);
  if ( result )
  {
    if ( *AnimationClipLibrary )
    {
      v10 = (_DWORD *)(*((int (__fastcall **)(glitch::collada::CAnimationSet **))*this + 17))(this);
      v10[13] = AnimationClipLibrary;
      if ( *AnimationClipLibrary )
      {
        (*(void (__fastcall **)(_DWORD *, _DWORD))(*v10 + 16))(v10, 0);
      }
      else
      {
        v10[5] = 1;
        v10[4] = 0;
      }
    }
    else
    {
      v11 = (_DWORD *)(*((int (__fastcall **)(glitch::collada::CAnimationSet **))*this + 17))(this);
      v11[4] = 0;
      v11[13] = 0;
      v11[5] = 1;
      v12 = (*((int (__fastcall **)(glitch::collada::CAnimationSet **))*this + 17))(this);
      v13 = *(void (__fastcall **)(int, int, int, int))(*(_DWORD *)v12 + 80);
      AnimationStart = glitch::collada::CSceneNodeAnimatorSet::getAnimationStart(this, a2);
      AnimationEnd = glitch::collada::CSceneNodeAnimatorSet::getAnimationEnd(this, a2);
      v13(v12, AnimationStart, AnimationEnd, 1);
    }
    v16 = *(_DWORD *)glitch::collada::CAnimationSet::getDatabase(*(this + 9), a2);
    return glitch::collada::ISceneNodeAnimator::setEventsTrack(
             this,
             *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v16 + 36) + 32) + 44));
  }
  return result;
}


// ===== 65fa00 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this)
{
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet((glitch::collada::CSceneNodeAnimatorSet *)((char *)this - 4));
}


// ===== 65fa08 glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this)
{
  int v1; // r3
  int v2; // r6
  glitch::collada::CAnimationBlock *v4; // r1
  int v5; // r5
  int v6; // r3
  glitch::collada::CAnimationBlock *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  glitch::IReferenceCounted *v11; // r0

  v1 = *((_DWORD *)this + 13);
  v2 = (*((_DWORD *)this + 14) - v1) >> 2;
  v4 = (glitch::collada::CAnimationBlock *)off_983F04;
  *(_DWORD *)this = off_983E6C;
  *((_DWORD *)this + 22) = off_983F20;
  *((_DWORD *)this + 1) = off_983F04;
  if ( v2 > 0 )
  {
    v5 = 0;
    while ( 1 )
    {
      v6 = *(_DWORD *)(v1 + 4 * v5);
      if ( v6 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 4))(v6);
        *(_DWORD *)(*((_DWORD *)this + 13) + 4 * v5) = 0;
      }
      if ( ++v5 == v2 )
        break;
      v1 = *((_DWORD *)this + 13);
    }
  }
  v7 = *((glitch::collada::CAnimationBlock **)this + 21);
  if ( v7 )
    glitch::collada::intrusive_ptr_release(v7, v4);
  v8 = *((void **)this + 16);
  if ( v8 )
    GlitchFree(v8);
  v9 = *((void **)this + 13);
  if ( v9 )
    GlitchFree(v9);
  v10 = *((void **)this + 10);
  if ( v10 )
    GlitchFree(v10);
  v11 = *((glitch::IReferenceCounted **)this + 9);
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 65fb08 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this)
{
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet((glitch::collada::CSceneNodeAnimatorSet *)((char *)this - 4));
}


// ===== 65fb10 glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this)
{
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(this);
  LC_API_FREE_0(this);
}


// ===== 65fb2c glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this,
        int *a2)
{
  int v2; // r3
  int v4; // r3
  int v5; // r6
  glitch::collada::CAnimationBlock *v6; // r1
  int v7; // r5
  int v8; // r3
  glitch::collada::CAnimationBlock *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0
  glitch::IReferenceCounted *v13; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  v4 = *((_DWORD *)this + 13);
  v5 = (*((_DWORD *)this + 14) - v4) >> 2;
  v6 = (glitch::collada::CAnimationBlock *)off_983F04;
  *((_DWORD *)this + 1) = off_983F04;
  if ( v5 > 0 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v4 + 4 * v7);
      if ( v8 )
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 4))(v8);
        *(_DWORD *)(*((_DWORD *)this + 13) + 4 * v7) = 0;
      }
      if ( ++v7 == v5 )
        break;
      v4 = *((_DWORD *)this + 13);
    }
  }
  v9 = *((glitch::collada::CAnimationBlock **)this + 21);
  if ( v9 )
    glitch::collada::intrusive_ptr_release(v9, v6);
  v10 = *((void **)this + 16);
  if ( v10 )
    GlitchFree(v10);
  v11 = *((void **)this + 13);
  if ( v11 )
    GlitchFree(v11);
  v12 = *((void **)this + 10);
  if ( v12 )
    GlitchFree(v12);
  v13 = *((glitch::IReferenceCounted **)this + 9);
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 65fc28 std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 65fc88 std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<void **>(uint &,void **,void **) =====
void *__fastcall std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<void **>(
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


// ===== 65fcc4 std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
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
      v7 = (char *)std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<void **>(
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


// ===== 65fd6c std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::animation_track::CApplicatorInfo **>(uint &,glitch::collada::animation_track::CApplicatorInfo **,glitch::collada::animation_track::CApplicatorInfo **) =====
void *__fastcall std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::animation_track::CApplicatorInfo **>(
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


// ===== 65fda8 std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
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
      v7 = (char *)std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<glitch::collada::animation_track::CApplicatorInfo **>(
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


// ===== 65fe50 std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<int *>(uint &,int *,int *) =====
void *__fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<int *>(
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


// ===== 65fe8c std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::reserve(uint) =====
void __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
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
      v7 = (char *)std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<int *>(
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


// ===== 65ff34 std::priv::__copy_trivial(void const*,void const*,void *) =====
char *__fastcall std::priv::__copy_trivial(std::priv *this, std::priv *a2, char *a3, void *a4)
{
  bool v4; // zf
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - this;
  v4 = a2 == this;
  result = a3;
  if ( !v4 )
    return (char *)memmove(a3, this, v5) + v5;
  return result;
}


// ===== 65ff5c std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(int *,uint,int const&,std::__false_type const&) =====
char *__fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
      return (char *)std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 6600a4 glitch::collada::CAnimationSet::addAnimationTemplate(glitch::collada::CColladaDatabase *) =====
int __fastcall glitch::collada::CAnimationSet::addAnimationTemplate(
        glitch::collada::CAnimationSet *this,
        glitch::collada::CColladaDatabase *a2)
{
  glitch::collada::CAnimationSetTransformationTemplate *v4; // r5
  int result; // r0

  v4 = (glitch::collada::CAnimationSetTransformationTemplate *)operator new(0x10u, 0);
  result = glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(v4, a2);
  *((_DWORD *)this + 25) = v4;
  return result;
}


// ===== 6600d0 glitch::collada::CAnimationSet::addAnimationTemplate(glitch::collada::CSceneNode *) =====
int __fastcall glitch::collada::CAnimationSet::addAnimationTemplate(
        glitch::collada::CAnimationSet *this,
        glitch::collada::CSceneNode *a2)
{
  glitch::collada::CAnimationSetTransformationTemplate *v4; // r5
  int result; // r0

  v4 = (glitch::collada::CAnimationSetTransformationTemplate *)operator new(0x10u, 0);
  result = glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(v4, a2);
  *((_DWORD *)this + 25) = v4;
  return result;
}


// ===== 6600fc glitch::collada::CAnimationSet::addAnimationLibrary(char const*) =====
int __fastcall glitch::collada::CAnimationSet::addAnimationLibrary(glitch::collada::CAnimationSet *this, char *a2)
{
  glitch::collada::CResFile *v4; // r0
  char v5; // r8
  int v6; // r3
  int v7; // r5
  glitch::IReferenceCounted *v9[2]; // [sp+0h] [bp-8h] BYREF

  v4 = glitch::collada::CResFileManager::load(
         (glitch::collada::CResFileManager *)glitch::collada::CResFileManager::Inst,
         a2,
         0);
  if ( v4 )
  {
    v5 = *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40);
    *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40) = 0;
    v9[0] = v4;
    v9[1] = (glitch::IReferenceCounted *)&glitch::collada::CColladaDatabase::DefaultFactory;
    v6 = *((_DWORD *)v4 + 1);
    if ( v6 )
      *((_DWORD *)v4 + 1) = v6 + 1;
    v7 = (*(int (__fastcall **)(glitch::collada::CAnimationSet *, glitch::IReferenceCounted **))(*(_DWORD *)this + 44))(
           this,
           v9);
    glitch::collada::CColladaDatabase::~CColladaDatabase(v9);
    *(_BYTE *)(glitch::collada::CResFileManager::Inst + 40) = v5;
  }
  else
  {
    printf("ERROR: CAnimationSet::addAnimationLibrary: Unable to add url: %s\n", a2);
    return ((*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3) - 1;
  }
  return v7;
}


// ===== 6601d4 glitch::collada::CAnimationSet::addAnimationLibrary(glitch::collada::CColladaDatabase const&) =====
int __fastcall glitch::collada::CAnimationSet::addAnimationLibrary(
        glitch::IReferenceCounted ***this,
        glitch::IReferenceCounted **a2)
{
  std::vector<glitch::collada::CColladaDatabase,glitch::core::SAllocator<glitch::collada::CColladaDatabase,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
    this + 9,
    a2);
  return (((char *)*(this + 10) - (char *)*(this + 9)) >> 3) - 1;
}


// ===== 6601fc glitch::collada::CAnimationSet::addAnimation(glitch::collada::SAnimation const*) =====
int __fastcall glitch::collada::CAnimationSet::addAnimation(int a1, _DWORD *a2)
{
  int *v2; // r3
  int v3; // r11
  int v5; // r4
  int v6; // r6
  int v7; // r7
  int v8; // r1
  unsigned int v9; // r3
  int v10; // r2
  int v11; // r7
  int v12; // r3
  int *AnimationTrack; // r6
  char *v15; // r10
  char *v16; // r8
  unsigned int v17; // r3
  unsigned int v18; // r8
  size_t v19; // r8
  char *v20; // r0
  _BYTE *v21; // r1
  char *v22; // r7
  size_t v23; // r10
  char *v24; // r10
  unsigned int v25; // r3
  unsigned int v26; // r7
  size_t v27; // r7
  char *v28; // r0
  _BYTE *v29; // r1
  char *v30; // r4
  size_t v31; // r8
  int **v32; // r8
  unsigned int v33; // [sp+0h] [bp-14h]
  int v34; // [sp+4h] [bp-10h]

  v2 = *(int **)(a1 + 12);
  v3 = (*(_DWORD *)(a1 + 16) - (int)v2) >> 2;
  v5 = a2[4];
  if ( v3 )
  {
    v6 = 0;
    v7 = 0;
    v8 = *v2;
    v9 = *(_DWORD *)(v5 + 8);
    v10 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable + 12 * *(_DWORD *)(v8 + 8);
    if ( v9 > 0x5B )
      goto LABEL_11;
    while ( 1 )
    {
      if ( (*(_DWORD *)(v10 + 4 * (v9 >> 5)) & (1 << (v9 & 0x1F))) != 0 )
      {
        v11 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + v7);
        if ( !LC_API_STRCMP_0(*(const char **)(v11 + 4), *(const char **)(v5 + 4)) )
        {
          v12 = *(_DWORD *)(v5 + 8);
          if ( v12 == 14 )
          {
            if ( *(unsigned __int8 *)(v11 + 12) == *(unsigned __int8 *)(v5 + 12) )
              return v6;
          }
          else if ( v12 != 86 || !LC_API_STRCMP_0(*(const char **)(v11 + 12), *(const char **)(v5 + 12)) )
          {
            return v6;
          }
        }
      }
      if ( ++v6 == v3 )
        break;
      v7 = 4 * v6;
      v9 = *(_DWORD *)(v5 + 8);
      v10 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable
          + 12 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 12) + 4 * v6) + 8);
      if ( v9 > 0x5B )
      {
LABEL_11:
        v34 = v10;
        v33 = v9;
        __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
        v9 = v33;
        v10 = v34;
      }
    }
  }
  AnimationTrack = glitch::collada::CColladaDatabase::getAnimationTrackEx(a2);
  if ( !AnimationTrack )
    return -1;
  v15 = *(char **)(a1 + 16);
  if ( v15 == *(char **)(a1 + 20) )
  {
    v17 = (int)&v15[-*(_DWORD *)(a1 + 12)] >> 2;
    if ( v17 )
      v18 = 2 * v17;
    else
      v18 = 1;
    if ( v18 > 0x3FFFFFFF || v17 > v18 )
      v18 = 0x3FFFFFFF;
    v19 = 4 * v18;
    v20 = (char *)GlitchAlloc(v19, 0);
    v21 = *(_BYTE **)(a1 + 12);
    v22 = v20;
    v23 = v15 - v21;
    if ( v23 )
      v24 = (char *)memmove(v20, v21, v23) + v23;
    else
      v24 = v20;
    *(_DWORD *)v24 = v5;
    GlitchFree(*(void **)(a1 + 12));
    *(_DWORD *)(a1 + 16) = v24 + 4;
    *(_DWORD *)(a1 + 20) = &v22[v19];
    *(_DWORD *)(a1 + 12) = v22;
  }
  else
  {
    *(_DWORD *)v15 = v5;
    *(_DWORD *)(a1 + 16) += 4;
  }
  v16 = *(char **)(a1 + 28);
  if ( v16 == *(char **)(a1 + 32) )
  {
    v25 = (int)&v16[-*(_DWORD *)(a1 + 24)] >> 2;
    if ( v25 )
      v26 = 2 * v25;
    else
      v26 = 1;
    if ( v26 > 0x3FFFFFFF || v25 > v26 )
      v26 = 0x3FFFFFFF;
    v27 = 4 * v26;
    v28 = (char *)GlitchAlloc(v27, 0);
    v29 = *(_BYTE **)(a1 + 24);
    v30 = v28;
    v31 = v16 - v29;
    if ( v31 )
      v32 = (int **)((char *)memmove(v28, v29, v31) + v31);
    else
      v32 = (int **)v28;
    *v32 = AnimationTrack;
    GlitchFree(*(void **)(a1 + 24));
    *(_DWORD *)(a1 + 28) = v32 + 1;
    *(_DWORD *)(a1 + 32) = &v30[v27];
    *(_DWORD *)(a1 + 24) = v30;
  }
  else
  {
    *(_DWORD *)v16 = AnimationTrack;
    *(_DWORD *)(a1 + 28) += 4;
  }
  return ((*(_DWORD *)(a1 + 16) - *(_DWORD *)(a1 + 12)) >> 2) - 1;
}


// ===== 6604a8 std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(int *,uint,int const&) =====
void __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        char *a4)
{
  size_t v8; // r9
  char *v9; // r0
  char *v10; // r8
  size_t v11; // r10
  char *v12; // r2
  unsigned int v13; // r1
  char *v14; // r3
  char *v15; // r4

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (char *)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 4
         * std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             (_DWORD *)a1,
             a3);
      v9 = (char *)GlitchAlloc(v8, 0);
      v10 = v9;
      if ( a2 == *(char **)a1 )
      {
        v12 = v9;
      }
      else
      {
        v11 = (size_t)&a2[-*(_DWORD *)a1];
        v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
      }
      v13 = a3;
      v14 = nullptr;
      do
      {
        --v13;
        *(_DWORD *)&v14[(_DWORD)v12] = *(_DWORD *)a4;
        v14 += 4;
      }
      while ( v13 );
      v15 = std::priv::__copy_trivial((std::priv *)a2, *(std::priv **)(a1 + 4), &v12[4 * a3], v14);
      GlitchFree(*(void **)a1);
      *(_DWORD *)(a1 + 4) = v15;
      *(_DWORD *)(a1 + 8) = &v10[v8];
      *(_DWORD *)a1 = v10;
    }
  }
}


// ===== 660568 std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,int const&) =====
void __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
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
    std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
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


// ===== 6605ac glitch::collada::CAnimationSet::CompileInternal(void) =====
void __fastcall glitch::collada::CAnimationSet::CompileInternal(glitch::collada::CAnimationSet *this)
{
  char *v1; // r6
  unsigned int v3; // r5
  int v4; // r1
  int v5; // r3
  int v6; // r1
  int v7; // r3
  int v8; // r1
  int v9; // [sp+4h] [bp-Ch] BYREF
  int v10; // [sp+8h] [bp-8h] BYREF
  int v11; // [sp+Ch] [bp-4h] BYREF

  v1 = (char *)this + 64;
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)this + 64,
    (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3);
  v3 = 0;
  v4 = *((_DWORD *)this + 10) - *((_DWORD *)this + 9);
  v11 = 0;
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)v1,
    v4 >> 3,
    (char *)&v11);
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)this + 76,
    (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3);
  v5 = *((_DWORD *)this + 9);
  v6 = *((_DWORD *)this + 10);
  v10 = 0;
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 76,
    (v6 - v5) >> 3,
    (char *)&v10);
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)this + 88,
    (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3);
  v7 = *((_DWORD *)this + 9);
  v8 = *((_DWORD *)this + 10);
  v9 = 0;
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 88,
    (v8 - v7) >> 3,
    (char *)&v9);
  if ( (unsigned int)(*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3 )
  {
    do
    {
      *(_DWORD *)(*((_DWORD *)this + 16) + 4 * v3) = 0x7FFFFFFF;
      *(_DWORD *)(*((_DWORD *)this + 19) + 4 * v3) = 0x80000000;
      *(_DWORD *)(*((_DWORD *)this + 16) + 4 * v3) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 9) + 8 * v3)
                                                                                       + 36)
                                                                           + 32)
                                                               + 28);
      *(_DWORD *)(*((_DWORD *)this + 19) + 4 * v3) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 9) + 8 * v3)
                                                                                       + 36)
                                                                           + 32)
                                                               + 32);
      *(_DWORD *)(*((_DWORD *)this + 22) + 4 * v3) = *(_DWORD *)(*((_DWORD *)this + 19) + 4 * v3)
                                                   - *(_DWORD *)(*((_DWORD *)this + 16) + 4 * v3);
      ++v3;
    }
    while ( v3 < (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 3 );
  }
}


// ===== 660710 glitch::collada::CAnimationSet::compile(void) =====
void __fastcall glitch::collada::CAnimationSet::compile(glitch::collada::CAnimationSet *this)
{
  glitch::collada::IAnimationSetTemplate *v2; // r0
  int v3; // r3
  int v4; // r2
  unsigned int v5; // r8
  glitch::collada::CColladaDatabase *v6; // r7
  int v7; // r5
  int Animation; // r6
  int v9; // r0
  int v10; // r1
  unsigned int v11; // r8
  int v12; // r0
  int v13; // r12
  glitch::collada::CColladaDatabase *v14; // r6
  unsigned int v15; // r5
  int v16; // r7
  unsigned int v17; // r5
  int v18; // r8
  int v19; // r3
  int v20; // r2
  int v21; // r1
  int v22; // r0
  unsigned int v23; // r11
  glitch::collada::CColladaDatabase *v24; // r10
  int v25; // r6
  unsigned int v26; // r5
  int BlendableAnimation; // r7
  char *DefaultValue; // r0
  int v29; // r3
  int v30; // r3
  char *v31; // r3
  char *v32; // r0
  char *v33; // r1
  char *v34; // r3
  char *v35; // r2
  char *v36; // r0
  char *v37; // r1
  int v38[3]; // [sp+0h] [bp-14h] BYREF
  _DWORD v39[2]; // [sp+Ch] [bp-8h] BYREF

  v2 = *((glitch::collada::IAnimationSetTemplate **)this + 25);
  if ( v2 )
    glitch::collada::IAnimationSetTemplate::setUnAdded(v2);
  v3 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 10);
  if ( (unsigned int)(v4 - v3) >> 3 )
  {
    v5 = 0;
    do
    {
      v6 = (glitch::collada::CColladaDatabase *)(v3 + 8 * v5);
      if ( *(int *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)v6 + 36) + 32) + 36) > 0 )
      {
        v7 = 0;
        do
        {
          while ( 1 )
          {
            Animation = glitch::collada::CColladaDatabase::getAnimation(v6, v7);
            if ( !*((_DWORD *)this + 25)
              || (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 25) + 8))(
                   *((_DWORD *)this + 25),
                   *(_DWORD *)(Animation + 16)) )
            {
              break;
            }
            if ( ++v7 >= *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)v6 + 36) + 32) + 36) )
              goto LABEL_11;
          }
          (*(void (__fastcall **)(glitch::collada::CAnimationSet *, int))(*(_DWORD *)this + 12))(this, Animation);
          ++v7;
        }
        while ( v7 < *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)v6 + 36) + 32) + 36) );
LABEL_11:
        v3 = *((_DWORD *)this + 9);
        v4 = *((_DWORD *)this + 10);
      }
      ++v5;
    }
    while ( v5 < (v4 - v3) >> 3 );
  }
  v9 = *((_DWORD *)this + 25);
  if ( v9 )
  {
    glitch::collada::IAnimationSetTemplate::addChannels(v9, (char *)this + 12, (char *)this + 24);
    v3 = *((_DWORD *)this + 9);
    v4 = *((_DWORD *)this + 10);
  }
  if ( (unsigned int)(v4 - v3) >> 3 )
  {
    v10 = *((_DWORD *)this + 3);
    v11 = 0;
    v12 = *((_DWORD *)this + 4) - v10;
    do
    {
      v13 = v12 >> 2;
      v14 = (glitch::collada::CColladaDatabase *)(v3 + 8 * v11);
      if ( v12 >> 2 )
      {
        v15 = 0;
        do
        {
          v16 = 4 * v15;
          if ( !glitch::collada::CColladaDatabase::getBlendableAnimation(v14, *(_DWORD *)(v10 + 4 * v15))
            && !glitch::collada::CColladaDatabase::getDefaultValue(
                  v14,
                  *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v15),
                  v39) )
          {
            v30 = *((_DWORD *)this + 25);
            if ( (!v30
               || !(*(int (__fastcall **)(_DWORD, _DWORD, _DWORD *))(*(_DWORD *)v30 + 12))(
                     *((_DWORD *)this + 25),
                     *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v15),
                     v39))
              && !*((_DWORD *)this + 2) )
            {
              v31 = *((char **)this + 4);
              v32 = (char *)(*((_DWORD *)this + 3) + v16);
              v33 = v32 + 4;
              if ( v32 + 4 != v31 )
              {
                memmove(v32, v33, v31 - v33);
                v33 = *((char **)this + 4);
              }
              v34 = *((char **)this + 7);
              v35 = v33 - 4;
              v36 = (char *)(*((_DWORD *)this + 6) + v16);
              v37 = v36 + 4;
              *((_DWORD *)this + 4) = v35;
              if ( v36 + 4 != v34 )
              {
                memmove(v36, v37, v34 - v37);
                v37 = *((char **)this + 7);
              }
              *((_DWORD *)this + 7) = v37 - 4;
              --v15;
            }
          }
          v10 = *((_DWORD *)this + 3);
          ++v15;
          v12 = *((_DWORD *)this + 4) - v10;
          v13 = v12 >> 2;
        }
        while ( v15 < v12 >> 2 );
        v3 = *((_DWORD *)this + 9);
        v4 = *((_DWORD *)this + 10);
      }
      ++v11;
    }
    while ( v11 < (v4 - v3) >> 3 );
  }
  else
  {
    v13 = (*((_DWORD *)this + 4) - *((_DWORD *)this + 3)) >> 2;
  }
  v17 = ((v4 - v3) >> 3) * v13;
  *((_DWORD *)this + 15) = v13;
  std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int *)this + 12,
    v17);
  v18 = 0;
  memset(v38, 0, sizeof(v38));
  std::vector<glitch::collada::CAnimationSet::SBinding,glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (_DWORD *)this + 12,
    v17,
    v38);
  v19 = *((_DWORD *)this + 9);
  v20 = *((_DWORD *)this + 10);
  if ( !((unsigned int)(v20 - v19) >> 3) )
    goto LABEL_35;
  v21 = *((_DWORD *)this + 3);
  v22 = *((_DWORD *)this + 4);
  v23 = 0;
  do
  {
    v24 = (glitch::collada::CColladaDatabase *)(v19 + 8 * v23);
    if ( !((unsigned int)(v22 - v21) >> 2) )
      goto LABEL_34;
    v25 = 12 * v18;
    v26 = 0;
    do
    {
      while ( 1 )
      {
        BlendableAnimation = glitch::collada::CColladaDatabase::getBlendableAnimation(v24, *(_DWORD *)(v21 + 4 * v26));
        DefaultValue = glitch::collada::CColladaDatabase::getDefaultValue(
                         v24,
                         *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v26),
                         (_DWORD *)(*((_DWORD *)this + 12) + v25 + 4));
        if ( !BlendableAnimation )
          break;
        *(_DWORD *)(*((_DWORD *)this + 12) + v25) = 2;
        *(_DWORD *)(*((_DWORD *)this + 12) + v25 + 8) = BlendableAnimation;
LABEL_28:
        v21 = *((_DWORD *)this + 3);
        v22 = *((_DWORD *)this + 4);
        ++v26;
        ++v18;
        v25 += 12;
        if ( v26 >= (v22 - v21) >> 2 )
          goto LABEL_33;
      }
      *(_DWORD *)(*((_DWORD *)this + 12) + v25) = 1;
      if ( DefaultValue )
        goto LABEL_28;
      v29 = *((_DWORD *)this + 25);
      if ( !v29 )
        goto LABEL_28;
      (*(void (__fastcall **)(_DWORD, _DWORD, int))(*(_DWORD *)v29 + 12))(
        *((_DWORD *)this + 25),
        *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v26),
        *((_DWORD *)this + 12) + v25 + 4);
      v21 = *((_DWORD *)this + 3);
      v22 = *((_DWORD *)this + 4);
      ++v26;
      ++v18;
      v25 += 12;
    }
    while ( v26 < (v22 - v21) >> 2 );
LABEL_33:
    v19 = *((_DWORD *)this + 9);
    v20 = *((_DWORD *)this + 10);
LABEL_34:
    ++v23;
  }
  while ( v23 < (v20 - v19) >> 3 );
LABEL_35:
  glitch::collada::CAnimationSet::CompileInternal(this);
}


// ===== 660af4 glitch::collada::CSceneNodeAnimatorSet::init(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSet::init(_DWORD *a1, glitch::collada::CAnimationSet **a2)
{
  glitch::collada::CAnimationSet *v2; // r3
  glitch::IReferenceCounted *v4; // r0
  signed int AnimatedTrackCount; // r5
  int v6; // r6
  glitch::collada::CTimelineController *v7; // r5
  int v9; // [sp+4h] [bp-10h] BYREF
  int v10; // [sp+8h] [bp-Ch] BYREF
  int v11; // [sp+Ch] [bp-8h] BYREF

  v2 = *a2;
  if ( *a2 )
    ++*((_DWORD *)v2 + 1);
  v4 = (glitch::IReferenceCounted *)a1[9];
  a1[9] = v2;
  if ( v4 )
  {
    glitch::IReferenceCounted::drop(v4);
    v2 = (glitch::collada::CAnimationSet *)a1[9];
  }
  AnimatedTrackCount = glitch::collada::CAnimationSet::getAnimatedTrackCount(v2);
  std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)(a1 + 10),
    AnimatedTrackCount);
  v6 = 0;
  v11 = 0;
  std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 10),
    AnimatedTrackCount,
    (char *)&v11);
  if ( AnimatedTrackCount > 0 )
  {
    do
      *(_DWORD *)(a1[10] + 4 * v6++) = 0;
    while ( v6 != AnimatedTrackCount );
  }
  std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)(a1 + 13),
    AnimatedTrackCount);
  v10 = 0;
  std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 13),
    AnimatedTrackCount,
    (char *)&v10);
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::reserve(
    (int)(a1 + 16),
    AnimatedTrackCount);
  v9 = 0;
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 16),
    AnimatedTrackCount,
    (char *)&v9);
  v7 = (glitch::collada::CTimelineController *)operator new(0x48u, 0);
  glitch::collada::CTimelineController::CTimelineController(v7);
  (*(void (__fastcall **)(_DWORD *, glitch::collada::CTimelineController *))(*a1 + 60))(a1, v7);
  (*(void (__fastcall **)(_DWORD *, _DWORD))(*a1 + 136))(a1, 0);
  return glitch::IReferenceCounted::drop((glitch::collada::CTimelineController *)((char *)v7
                                                                                + *(_DWORD *)(*(_DWORD *)v7 - 12)));
}


// ===== 660c20 glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(
        glitch::collada::ISceneNodeAnimator *a1,
        glitch::collada::CAnimationSet **a2)
{
  glitch::collada::CAnimationSet *v4; // r3
  bool v5; // zf

  *((_DWORD *)a1 + 23) = 1;
  *((_DWORD *)a1 + 22) = off_95B720;
  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(a1);
  *(_DWORD *)a1 = off_983E6C;
  *((_DWORD *)a1 + 1) = off_983F04;
  *((_DWORD *)a1 + 22) = off_983F20;
  v4 = *a2;
  v5 = *a2 == nullptr;
  *((_DWORD *)a1 + 9) = *a2;
  if ( !v5 )
    ++*((_DWORD *)v4 + 1);
  *((_DWORD *)a1 + 21) = 0;
  *((_DWORD *)a1 + 10) = 0;
  *((_DWORD *)a1 + 11) = 0;
  *((_DWORD *)a1 + 12) = 0;
  *((_DWORD *)a1 + 13) = 0;
  *((_DWORD *)a1 + 14) = 0;
  *((_DWORD *)a1 + 15) = 0;
  *((_DWORD *)a1 + 16) = 0;
  *((_DWORD *)a1 + 17) = 0;
  *((_DWORD *)a1 + 18) = 0;
  *((_DWORD *)a1 + 19) = 0;
  glitch::collada::CSceneNodeAnimatorSet::init(a1, a2);
  return a1;
}


// ===== 660ce4 glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(
        glitch::collada::ISceneNodeAnimator *a1,
        int *a2,
        glitch::collada::CAnimationSet **a3)
{
  int v6; // r2
  glitch::collada::CAnimationSet *v7; // r3
  bool v8; // zf

  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(a1);
  v6 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v6 - 12)) = a2[7];
  *((_DWORD *)a1 + 1) = off_983F04;
  v7 = *a3;
  v8 = *a3 == nullptr;
  *((_DWORD *)a1 + 9) = *a3;
  if ( !v8 )
    ++*((_DWORD *)v7 + 1);
  *((_DWORD *)a1 + 21) = 0;
  *((_DWORD *)a1 + 10) = 0;
  *((_DWORD *)a1 + 11) = 0;
  *((_DWORD *)a1 + 12) = 0;
  *((_DWORD *)a1 + 13) = 0;
  *((_DWORD *)a1 + 14) = 0;
  *((_DWORD *)a1 + 15) = 0;
  *((_DWORD *)a1 + 16) = 0;
  *((_DWORD *)a1 + 17) = 0;
  *((_DWORD *)a1 + 18) = 0;
  *((_DWORD *)a1 + 19) = 0;
  glitch::collada::CSceneNodeAnimatorSet::init(a1, a3);
  return a1;
}


// ===== 660d8c `virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this)
{
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet((glitch::collada::CSceneNodeAnimatorSet *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 660d9c `virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this)
{
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet((glitch::collada::CSceneNodeAnimatorSet *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 660dac glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface::~IColladaSceneNodeSynchronizedAnimatorInterface() =====
void __fastcall glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface::~IColladaSceneNodeSynchronizedAnimatorInterface(
        glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface *this)
{
  ;
}


// ===== 660db0 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationTrack(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationTrack(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2)
{
  int v2; // r0

  v2 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 84))(v2, a2);
}


// ===== 660dd4 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationTrackEx(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationTrackEx(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2)
{
  int v2; // r0

  v2 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 88))(v2, a2);
}


// ===== 660df8 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::setTarget(int,void *,glitch::collada::animation_track::CApplicatorInfo const*) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::setTarget(int result, int a2, int a3, int a4)
{
  int v5; // r4
  int v7; // r3
  int v8; // r4

  v5 = result;
  *(_DWORD *)(*(_DWORD *)(result + 96) + 4 * a2) = a3;
  v7 = *(_DWORD *)(*(_DWORD *)(result + 108) + 4 * a2);
  if ( v7 )
  {
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*(_DWORD *)(*(_DWORD *)(result + 108) + 4 * a2));
    *(_DWORD *)(*(_DWORD *)(v5 + 108) + 4 * a2) = 0;
  }
  if ( a4 )
  {
    v8 = *(_DWORD *)(v5 + 108);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 8))(a4);
    *(_DWORD *)(v8 + 4 * a2) = result;
  }
  return result;
}


// ===== 660e60 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getBindURI(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getBindURI(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2)
{
  int v2; // r0

  v2 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 108))(v2, a2);
}


// ===== 660e84 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetCount(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetCount(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  int v1; // r0

  v1 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
  return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 112))(v1);
}


// ===== 660ea8 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetSize(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetSize(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2)
{
  int v2; // r0

  v2 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 116))(v2, a2);
}


// ===== 660ecc glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetsSize(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetsSize(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  int v1; // r0

  v1 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
  return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 120))(v1);
}


// ===== 660ef0 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getLength(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getLength(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  int v2; // r3
  int result; // r0
  float v4; // r6
  unsigned int v5; // r4
  int v6; // r0
  float v7; // r0

  v2 = *((_DWORD *)this + 12);
  result = (*((_DWORD *)this + 13) - v2) >> 2;
  if ( result )
  {
    v4 = 0.0;
    v5 = 0;
    do
    {
      v6 = *(_DWORD *)(*(_DWORD *)(v2 + 4 * v5) + 4);
      v7 = v4
         + (float)((float)(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 72))(v6)
                 * *(float *)(*((_DWORD *)this + 15) + 4 * v5));
      v2 = *((_DWORD *)this + 12);
      ++v5;
      v4 = v7;
    }
    while ( v5 < (*((_DWORD *)this + 13) - v2) >> 2 );
    return (int)v7;
  }
  return result;
}


// ===== 660f6c glitch::collada::ordering_func(glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const&,glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const&) =====
bool __fastcall glitch::collada::ordering_func(_DWORD *a1, _DWORD *a2)
{
  return *a1 < *a2;
}


// ===== 660f84 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(float) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        float a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2);
}


// ===== 660f8c glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(float) =====
float __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        float a2)
{
  float result; // r0
  int v5; // r3
  int v6; // r6
  int v7; // r4
  int v8; // r3

  result = glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(*(float *)&this);
  v5 = *((_DWORD *)this + 12);
  v6 = (*((_DWORD *)this + 13) - v5) >> 2;
  if ( v6 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(v5 + 4 * v7++);
      result = COERCE_FLOAT((*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v8 + 56))(v8, LODWORD(a2)));
      if ( v7 == v6 )
        break;
      v5 = *((_DWORD *)this + 12);
    }
  }
  return result;
}


// ===== 660fe4 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(float) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        float a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(
           (glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36),
           a2);
}


// ===== 660fec glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(float) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        float a2)
{
  int v4; // r3
  int v5; // r6
  int v6; // r4
  int v7; // r3
  int v8; // r3
  int result; // r0
  unsigned int v10; // r4
  int v11; // r0
  int v12; // r0

  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(*(float *)&this);
  v4 = *((_DWORD *)this + 12);
  v5 = (*((_DWORD *)this + 13) - v4) >> 2;
  if ( v5 )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v4 + 4 * v6++);
      (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v7 + 56))(v7, LODWORD(a2));
      if ( v6 == v5 )
        break;
      v4 = *((_DWORD *)this + 12);
    }
  }
  v8 = *((_DWORD *)this + 24);
  result = *((_DWORD *)this + 25);
  if ( (unsigned int)(result - v8) >> 2 )
  {
    v10 = 0;
    do
    {
      if ( *(_DWORD *)(v8 + 4 * v10) )
      {
        v11 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
        v12 = (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v11 + 88))(v11, v10);
        (*(void (__fastcall **)(int, _DWORD, _DWORD, int, _DWORD))(*(_DWORD *)v12 + 16))(
          v12,
          *(_DWORD *)(*((_DWORD *)this + 21) + 4 * v10),
          *((_DWORD *)this + 15),
          (*((_DWORD *)this + 16) - *((_DWORD *)this + 15)) >> 2,
          *(_DWORD *)(*((_DWORD *)this + 24) + 4 * v10));
        v8 = *((_DWORD *)this + 24);
        result = *((_DWORD *)this + 25);
      }
      ++v10;
    }
    while ( v10 < (result - v8) >> 2 );
  }
  return result;
}


// ===== 6610d8 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::animateNode(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        glitch::scene::ISceneNode *a2,
        unsigned int a3)
{
  return (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *, unsigned int))(*(_DWORD *)this + 80))(
           this,
           a3);
}


// ===== 6610f0 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 6610f8 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 12) + 36))(**((_DWORD **)this + 12));
}


// ===== 661118 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 661120 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart(int this)
{
  int v1; // r3
  _DWORD *v2; // r5
  unsigned int v3; // r4

  v1 = *(_DWORD *)(this + 48);
  v2 = (_DWORD *)this;
  if ( (unsigned int)(*(_DWORD *)(this + 52) - v1) >> 2 )
  {
    v3 = 0;
    do
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 4 * v3) + 40))(*(_DWORD *)(v1 + 4 * v3));
      *(_DWORD *)(v2[40] + 4 * v3) = 0;
      v1 = v2[12];
      ++v3;
    }
    while ( v3 < (v2[13] - v1) >> 2 );
  }
  return this;
}


// ===== 66117c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 661184 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd(int this)
{
  int v1; // r3
  _DWORD *v2; // r5
  unsigned int v3; // r4
  int v4; // r6
  int v5; // r0

  v1 = *(_DWORD *)(this + 48);
  v2 = (_DWORD *)this;
  if ( (unsigned int)(*(_DWORD *)(this + 52) - v1) >> 2 )
  {
    v3 = 0;
    do
    {
      (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 4 * v3) + 44))(*(_DWORD *)(v1 + 4 * v3));
      v4 = v2[40];
      v5 = *(_DWORD *)(*(_DWORD *)(v2[12] + 4 * v3) + 4);
      this = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 72))(v5);
      *(_DWORD *)(v4 + 4 * v3) = this;
      v1 = v2[12];
      ++v3;
    }
    while ( v3 < (v2[13] - v1) >> 2 );
  }
  return this;
}


// ===== 6611f8 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 661200 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime(void) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime(int this)
{
  int v1; // r3
  _DWORD *v2; // r5
  unsigned int v3; // r4
  int v4; // r6
  int v5; // r0
  int v6; // r7
  int v7; // r0
  int v8; // r0
  int v9; // r1

  v1 = *(_DWORD *)(this + 48);
  v2 = (_DWORD *)this;
  if ( (unsigned int)(*(_DWORD *)(this + 52) - v1) >> 2 )
  {
    v3 = 0;
    do
    {
      (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 4 * v3) + 48))(*(_DWORD *)(v1 + 4 * v3));
      v4 = v2[40];
      v5 = *(_DWORD *)(v2[12] + 4 * v3);
      v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 60))(v5);
      v7 = *(_DWORD *)(*(_DWORD *)(v2[12] + 4 * v3) + 4);
      v8 = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 72))(v7);
      v9 = v6 % v8;
      this = v6 / v8;
      *(_DWORD *)(v4 + 4 * v3) = v9;
      v1 = v2[12];
      ++v3;
    }
    while ( v3 < (v2[13] - v1) >> 2 );
  }
  return this;
}


// ===== 66129c `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeSynchronizedAnimatorBlender.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeSynchronizedAnimatorBlender.cpp()
{
  dword_9F7064 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7060 = 1056964608;
}


// ===== 6612bc glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeAnimationValues(uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        unsigned int a2)
{
  int v4; // r3
  int v5; // r8
  int v6; // r7
  int v7; // r6
  int v8; // r0
  float v9; // r0
  int v10; // r2
  int v11; // r3
  int v12; // r5
  int v13; // r7
  float v14; // r6
  int result; // r0

  if ( *((_BYTE *)this + 177) )
  {
    glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(*(float *)&this);
    *((_BYTE *)this + 177) = 0;
  }
  v4 = *((_DWORD *)this + 12);
  v5 = (*((_DWORD *)this + 13) - v4) >> 2;
  if ( v5 )
  {
    v7 = 0;
    v6 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(*(_DWORD *)(v4 + 4 * v7) + 4);
      v9 = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 72))(v8) * *(float *)(*((_DWORD *)this + 15) + 4 * v7++);
      v6 += (int)v9;
      if ( v7 == v5 )
        break;
      v4 = *((_DWORD *)this + 12);
    }
  }
  else
  {
    v6 = 0;
  }
  (*(void (__fastcall **)(_DWORD, _DWORD, int, _DWORD))(**((_DWORD **)this + 30) + 80))(
    *((_DWORD *)this + 30),
    0,
    v6,
    0);
  glitch::collada::ISceneNodeAnimator::updateTime(this, a2);
  v10 = *((_DWORD *)this + 43);
  v11 = *(_DWORD *)this;
  *((_DWORD *)this + 43) = a2;
  v12 = a2 - v10;
  v13 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *))(v11 + 72))(this);
  v14 = COERCE_FLOAT((*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *))(*(_DWORD *)this + 196))(this));
  (*(void (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *, _DWORD))(*(_DWORD *)this + 184))(
    this,
    v14 + (float)((float)(v12 & ~(v12 >> 31)) / (float)v13));
  result = (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 12) + 36))(**((_DWORD **)this + 12));
  *((_BYTE *)this + 176) = result;
  return result;
}


// ===== 661408 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applyAnimationValues(uint) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applyAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        unsigned int a2)
{
  int v4; // r3
  int v5; // r8
  int v6; // r7
  int v7; // r6
  int v8; // r0
  float v9; // r0
  int v10; // r2
  int v11; // r3
  int v12; // r5
  int v13; // r7
  float v14; // r6
  int result; // r0
  int v16; // r3
  int v17; // r2
  unsigned int v18; // r5
  int v19; // r0
  int v20; // r0

  if ( *((_BYTE *)this + 177) )
  {
    glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(*(float *)&this);
    *((_BYTE *)this + 177) = 0;
  }
  v4 = *((_DWORD *)this + 12);
  v5 = (*((_DWORD *)this + 13) - v4) >> 2;
  if ( v5 )
  {
    v7 = 0;
    v6 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(*(_DWORD *)(v4 + 4 * v7) + 4);
      v9 = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v8 + 72))(v8) * *(float *)(*((_DWORD *)this + 15) + 4 * v7++);
      v6 += (int)v9;
      if ( v7 == v5 )
        break;
      v4 = *((_DWORD *)this + 12);
    }
  }
  else
  {
    v6 = 0;
  }
  (*(void (__fastcall **)(_DWORD, _DWORD, int, _DWORD))(**((_DWORD **)this + 30) + 80))(
    *((_DWORD *)this + 30),
    0,
    v6,
    0);
  glitch::collada::ISceneNodeAnimator::updateTime(this, a2);
  v10 = *((_DWORD *)this + 43);
  v11 = *(_DWORD *)this;
  *((_DWORD *)this + 43) = a2;
  v12 = a2 - v10;
  v13 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *))(v11 + 72))(this);
  v14 = COERCE_FLOAT((*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *))(*(_DWORD *)this + 196))(this));
  (*(void (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedBlender *, _DWORD))(*(_DWORD *)this + 184))(
    this,
    v14 + (float)((float)(v12 & ~(v12 >> 31)) / (float)v13));
  result = (*(int (__fastcall **)(_DWORD))(***((_DWORD ***)this + 12) + 36))(**((_DWORD **)this + 12));
  v16 = *((_DWORD *)this + 24);
  v17 = *((_DWORD *)this + 25);
  *((_BYTE *)this + 176) = result;
  if ( (unsigned int)(v17 - v16) >> 2 )
  {
    v18 = 0;
    do
    {
      result = *(_DWORD *)(v16 + 4 * v18);
      if ( result )
      {
        v19 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
        v20 = (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v19 + 88))(v19, v18);
        result = (*(int (__fastcall **)(int, _DWORD, _DWORD, int, _DWORD, _DWORD))(*(_DWORD *)v20 + 24))(
                   v20,
                   *(_DWORD *)(*((_DWORD *)this + 21) + 4 * v18),
                   *((_DWORD *)this + 15),
                   (*((_DWORD *)this + 16) - *((_DWORD *)this + 15)) >> 2,
                   *(_DWORD *)(*((_DWORD *)this + 24) + 4 * v18),
                   *(_DWORD *)(*((_DWORD *)this + 27) + 4 * v18));
        v16 = *((_DWORD *)this + 24);
        v17 = *((_DWORD *)this + 25);
      }
      ++v18;
    }
    while ( v18 < (v17 - v16) >> 2 );
  }
  return result;
}


// ===== 6615f4 glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface::~IColladaSceneNodeSynchronizedAnimatorInterface() =====
void __fastcall glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface::~IColladaSceneNodeSynchronizedAnimatorInterface(
        glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 661608 std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 661688 std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
int __fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        int a1)
{
  int v1; // r4
  void *v2; // r5

  v1 = *(_DWORD *)(a1 + 4);
  v2 = *(void **)a1;
  if ( v1 != *(_DWORD *)a1 )
  {
    do
    {
      v1 -= 36;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v1 + 8));
    }
    while ( v2 != (void *)v1 );
  }
  if ( *(_DWORD *)a1 )
    GlitchFree(*(void **)a1);
  return a1;
}


// ===== 6616cc std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>*,std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>*,std::__true_type const&) =====
_DWORD *__fastcall std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  _DWORD *v3; // r4
  _DWORD *v5; // r6
  _BOOL4 v6; // r11
  bool v7; // zf
  _DWORD *v9; // r8
  _DWORD *v10; // r7
  _DWORD *v11; // r7
  bool v12; // zf
  int v13; // r3
  _DWORD *v14; // r7
  int v15; // r0
  int v16; // r0
  _DWORD *v17; // r4
  int v18; // r0

  v3 = *(_DWORD **)(a1 + 4);
  v5 = a3;
  v6 = a3 != v3;
  v7 = a2 == a3;
  if ( a2 != a3 )
    v7 = a3 == v3;
  if ( v7 )
  {
    v9 = a2;
    v10 = a3;
  }
  else
  {
    v11 = a3 + 3;
    v9 = a2;
    do
    {
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)v9);
      *v9 = *(v11 - 3);
      v9[1] = *(v11 - 2);
      v9[2] = *(v11 - 1);
      v9 += 3;
      v12 = v3 == v11;
      if ( v3 != v11 )
        v12 = v5 == v9;
      v13 = !v12;
      *(v11 - 3) = 0;
      *(v11 - 1) = 0;
      *(v11 - 2) = 0;
      v11 += 3;
    }
    while ( v13 );
    v10 = v11 - 3;
  }
  if ( v9 == v5 )
  {
    for ( ; v10 != v3; v9 += 3 )
    {
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)v9);
      *v9 = *v10;
      v9[1] = v10[1];
      v9[2] = v10[2];
      *v10 = 0;
      v10[2] = 0;
      v10[1] = 0;
      v10 += 3;
    }
    v17 = v9;
    while ( v10 != v9 )
    {
      v18 = (int)v9;
      v9 += 3;
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v18);
    }
  }
  else
  {
    v14 = v9;
    do
    {
      v15 = (int)v14;
      v14 += 3;
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v15);
    }
    while ( v5 != v14 );
    if ( v6 )
    {
      do
      {
        v16 = (int)v5;
        v5 += 3;
        std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v16);
      }
      while ( v3 != v5 );
    }
    v17 = v9;
  }
  *(_DWORD *)(a1 + 4) = v17;
  return a2;
}


// ===== 661818 std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
int __fastcall std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        int a1)
{
  int v1; // r4
  void *v2; // r5

  v1 = *(_DWORD *)(a1 + 4);
  v2 = *(void **)a1;
  if ( v1 != *(_DWORD *)a1 )
  {
    do
    {
      v1 -= 12;
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v1);
    }
    while ( v2 != (void *)v1 );
  }
  if ( *(_DWORD *)a1 )
    GlitchFree(*(void **)a1);
  return a1;
}


// ===== 66185c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 661864 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 4));
}


// ===== 66186c glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  int v1; // r2
  bool v3; // zf
  unsigned int v4; // r5
  int v5; // r3
  int v6; // r3
  void *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0
  void *v13; // r0
  void *v14; // r0
  void *v15; // r0

  v1 = *((_DWORD *)this + 12);
  v3 = (unsigned int)(*((_DWORD *)this + 13) - v1) >> 2 == 0;
  *(_DWORD *)this = off_98415C;
  *((_DWORD *)this + 45) = off_984294;
  *((_DWORD *)this + 1) = off_98422C;
  *((_DWORD *)this + 9) = off_984240;
  if ( !v3 )
  {
    v4 = 0;
    do
    {
      v5 = *(_DWORD *)(v1 + 4 * v4++);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*(_DWORD *)(v5 + 4)
                                                                  + *(_DWORD *)(**(_DWORD **)(v5 + 4) - 12)));
      v1 = *((_DWORD *)this + 12);
    }
    while ( v4 < (*((_DWORD *)this + 13) - v1) >> 2 );
  }
  v6 = *((_DWORD *)this + 30);
  if ( v6 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 8))(*((_DWORD *)this + 30));
  v7 = *((void **)this + 40);
  if ( v7 )
    GlitchFree(v7);
  v8 = *((void **)this + 37);
  if ( v8 )
    GlitchFree(v8);
  v9 = *((void **)this + 34);
  if ( v9 )
    GlitchFree(v9);
  std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)this + 124);
  v10 = *((void **)this + 27);
  if ( v10 )
    GlitchFree(v10);
  v11 = *((void **)this + 24);
  if ( v11 )
    GlitchFree(v11);
  v12 = *((void **)this + 21);
  if ( v12 )
    GlitchFree(v12);
  v13 = *((void **)this + 18);
  if ( v13 )
    GlitchFree(v13);
  v14 = *((void **)this + 15);
  if ( v14 )
    GlitchFree(v14);
  v15 = *((void **)this + 12);
  if ( v15 )
    GlitchFree(v15);
  *((_DWORD *)this + 9) = off_984108;
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 6619dc `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 36));
}


// ===== 6619e4 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this - 4));
}


// ===== 6619ec glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(this);
  LC_API_FREE_0(this);
}


// ===== 661a08 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int *a2)
{
  int v2; // r3
  int v3; // r3
  bool v5; // zf
  unsigned int v6; // r6
  int v7; // r3
  int v8; // r3
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0
  void *v13; // r0
  void *v14; // r0
  void *v15; // r0
  void *v16; // r0
  void *v17; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[7];
  v3 = *((_DWORD *)this + 12);
  v5 = (unsigned int)(*((_DWORD *)this + 13) - v3) >> 2 == 0;
  *((_DWORD *)this + 1) = off_98422C;
  *((_DWORD *)this + 9) = off_984240;
  if ( !v5 )
  {
    v6 = 0;
    do
    {
      v7 = *(_DWORD *)(v3 + 4 * v6++);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*(_DWORD *)(v7 + 4)
                                                                  + *(_DWORD *)(**(_DWORD **)(v7 + 4) - 12)));
      v3 = *((_DWORD *)this + 12);
    }
    while ( v6 < (*((_DWORD *)this + 13) - v3) >> 2 );
  }
  v8 = *((_DWORD *)this + 30);
  if ( v8 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 8))(*((_DWORD *)this + 30));
  v9 = *((void **)this + 40);
  if ( v9 )
    GlitchFree(v9);
  v10 = *((void **)this + 37);
  if ( v10 )
    GlitchFree(v10);
  v11 = *((void **)this + 34);
  if ( v11 )
    GlitchFree(v11);
  std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)this + 124);
  v12 = *((void **)this + 27);
  if ( v12 )
    GlitchFree(v12);
  v13 = *((void **)this + 24);
  if ( v13 )
    GlitchFree(v13);
  v14 = *((void **)this + 21);
  if ( v14 )
    GlitchFree(v14);
  v15 = *((void **)this + 18);
  if ( v15 )
    GlitchFree(v15);
  v16 = *((void **)this + 15);
  if ( v16 )
    GlitchFree(v16);
  v17 = *((void **)this + 12);
  if ( v17 )
    GlitchFree(v17);
  *((_DWORD *)this + 9) = off_984108;
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
}


// ===== 661b74 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender(void) =====
glitch::collada::CSceneNodeAnimatorSynchronizedBlender *__fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  *((_DWORD *)this + 45) = off_95B720;
  *((_DWORD *)this + 46) = 1;
  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(this);
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 45) = off_984294;
  *(_DWORD *)this = off_98415C;
  *((_DWORD *)this + 1) = off_98422C;
  *((_DWORD *)this + 9) = off_984240;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *(_WORD *)((char *)this + 177) = 1;
  *((_DWORD *)this + 42) = 0;
  *((_BYTE *)this + 176) = 0;
  *((_DWORD *)this + 10) = this;
  return this;
}


// ===== 661c78 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender(void) =====
glitch::collada::CSceneNodeAnimatorSynchronizedBlender *__fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int *a2)
{
  int v4; // r0
  int v5; // r12

  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(this);
  *((_DWORD *)this + 9) = off_984108;
  v4 = *a2;
  *(_DWORD *)this = *a2;
  v5 = *(_DWORD *)(v4 - 12);
  *(_DWORD *)((char *)this + v5) = a2[7];
  *((_DWORD *)this + 9) = off_984240;
  *((_DWORD *)this + 1) = off_98422C;
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
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_BYTE *)this + 177) = 1;
  *((_BYTE *)this + 178) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_BYTE *)this + 176) = 0;
  *((_DWORD *)this + 10) = this;
  return this;
}


// ===== 661d74 std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*,glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData*,int>(glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*,glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*,glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*,glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData*,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v5; // r5
  int v6; // r7
  int v7; // r6
  int v8; // r4
  int v9; // r2
  int v10; // r3

  v3 = (a2 - a1) >> 2;
  v5 = a1;
  v6 = 954437177 * v3;
  if ( 954437177 * v3 <= 0 )
    return a3;
  v7 = 954437177 * v3;
  v8 = a3;
  do
  {
    *(_DWORD *)v8 = *(_DWORD *)v5;
    v9 = *(_DWORD *)(v5 + 4);
    *(_DWORD *)(v8 + 24) = v8 + 8;
    *(_DWORD *)(v8 + 28) = v8 + 8;
    *(_DWORD *)(v8 + 4) = v9;
    std::string::_M_range_initialize((std::string *)(v8 + 8), *(const char **)(v5 + 28), *(const char **)(v5 + 24));
    v10 = *(_DWORD *)(v5 + 32);
    --v7;
    v5 += 36;
    *(_DWORD *)(v8 + 32) = v10;
    v8 += 36;
  }
  while ( v7 );
  return a3 + 36 * v6;
}


// ===== 661e0c std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
_DWORD *__fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        _DWORD *a1,
        int *a2)
{
  int v3; // r3
  int v5; // r7
  char *v6; // r0

  v3 = (a2[1] - *a2) >> 2;
  *a1 = 0;
  v5 = 4 * v3;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)GlitchAlloc(4 * v3, 0);
  *a1 = v6;
  a1[1] = v6;
  a1[2] = &v6[v5];
  a1[1] = std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*,glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData*,int>(
            *a2,
            a2[1],
            (int)v6);
  return a1;
}


// ===== 661ea0 std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>*,std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        int *a3,
        unsigned int a4)
{
  size_t v8; // r11
  _DWORD *v9; // r0
  _DWORD *v10; // r9
  int v11; // r2
  int v12; // r6
  _DWORD *v13; // r6
  int v14; // r3
  int v15; // r0
  _DWORD *v16; // r2
  _DWORD *v17; // r5
  int v18; // r7
  int v19; // r6
  int v20; // r3
  int v21; // r12
  int v22; // r4
  int v23; // r1
  _DWORD *v24; // r3
  void *v25; // r4
  void *v26; // r0

  v8 = 3
     * std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a4);
  v9 = GlitchAlloc(v8 * 4, 0);
  v10 = v9;
  v11 = (a2 - (int)*a1) >> 2;
  v12 = -1431655765 * v11;
  if ( -1431655765 * v11 > 0 )
  {
    v14 = (int)*a1 + 12;
    v15 = -1431655765 * v11;
    v16 = v10;
    do
    {
      --v15;
      *v16 = *(_DWORD *)(v14 - 12);
      v16[1] = *(_DWORD *)(v14 - 8);
      v16[2] = *(_DWORD *)(v14 - 4);
      *(_DWORD *)(v14 - 12) = 0;
      *(_DWORD *)(v14 - 4) = 0;
      *(_DWORD *)(v14 - 8) = 0;
      v16 += 3;
      v14 += 12;
    }
    while ( v15 );
    v13 = &v10[3 * v12];
  }
  else
  {
    v13 = v9;
  }
  if ( a4 == 1 )
  {
    std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::vector(
      v13,
      a3);
    v17 = v13 + 3;
  }
  else
  {
    v17 = &v13[3 * a4];
    v18 = -1431655765 * (v17 - v13);
    if ( v18 > 0 )
    {
      do
      {
        std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::vector(
          v13,
          a3);
        --v18;
        v13 += 3;
      }
      while ( v18 );
    }
  }
  v19 = (int)a1[1];
  v20 = (v19 - a2) >> 2;
  v21 = -1431655765 * v20;
  if ( -1431655765 * v20 > 0 )
  {
    v22 = a2 + 12;
    v23 = -1431655765 * v20;
    v24 = v17;
    do
    {
      --v23;
      *v24 = *(_DWORD *)(v22 - 12);
      v24[1] = *(_DWORD *)(v22 - 8);
      v24[2] = *(_DWORD *)(v22 - 4);
      *(_DWORD *)(v22 - 12) = 0;
      *(_DWORD *)(v22 - 4) = 0;
      *(_DWORD *)(v22 - 8) = 0;
      v24 += 3;
      v22 += 12;
    }
    while ( v23 );
    v17 += 3 * v21;
    v19 = (int)a1[1];
  }
  v25 = *a1;
  if ( (void *)v19 == *a1 )
  {
    v26 = (void *)v19;
  }
  else
  {
    do
    {
      v19 -= 12;
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v19);
    }
    while ( v25 != (void *)v19 );
    v26 = *a1;
  }
  GlitchFree(v26);
  a1[1] = v17;
  a1[2] = &v10[v8];
  *a1 = v10;
}


// ===== 662060 std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>*,uint,std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>> const&,std::__true_type const&) =====
int *__fastcall std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        int **a1,
        _DWORD *a2,
        int a3,
        int *a4)
{
  int *result; // r0
  _DWORD *v7; // r6
  unsigned int v8; // r5
  int v9; // r8
  _DWORD *v10; // r5
  _DWORD *i; // r10
  int v12; // r0
  int v13; // r5
  _DWORD v15[3]; // [sp+10h] [bp-10h] BYREF
  _BYTE v16[4]; // [sp+1Ch] [bp-4h] BYREF

  result = *a1;
  v7 = a2;
  if ( a4 >= result )
  {
    v8 = (unsigned int)a1[1];
    if ( (unsigned int)a4 < v8 )
    {
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        v15,
        a4);
      std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        v7,
        a3,
        v15,
        v16);
      return (int *)std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)v15);
    }
  }
  else
  {
    v8 = (unsigned int)a1[1];
  }
  v9 = 12 * a3;
  v10 = (_DWORD *)(v8 - 12);
  if ( a2 <= v10 )
  {
    for ( i = &v10[v9 / 4u]; ; i -= 3 )
    {
      v12 = (int)v10;
      *i = *v10;
      i[1] = v10[1];
      i[2] = v10[2];
      *v10 = 0;
      v10[2] = 0;
      v10[1] = 0;
      v10 -= 3;
      result = (int *)std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(v12);
      if ( v7 > v10 )
        break;
    }
  }
  v13 = -1431655765 * (v9 >> 2);
  if ( v13 > 0 )
  {
    do
    {
      result = std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::vector(
                 v7,
                 a4);
      --v13;
      v7 += 3;
    }
    while ( v13 );
  }
  a1[1] = (int *)((char *)a1[1] + v9);
  return result;
}


// ===== 662174 std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>*,uint,std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
void __fastcall std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        _DWORD *a2,
        unsigned int a3,
        int *a4)
{
  unsigned int v7; // r7
  int v8[3]; // [sp+8h] [bp-10h] BYREF

  if ( a3 )
  {
    v7 = *(_DWORD *)(a1 + 4);
    if ( a3 <= -1431655765 * ((int)(*(_DWORD *)(a1 + 8) - v7) >> 2) )
    {
      std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (int **)a1,
        a2,
        a3,
        a4);
    }
    else if ( (unsigned int)a4 < *(_DWORD *)a1 || v7 <= (unsigned int)a4 )
    {
      std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void **)a1,
        (int)a2,
        a4,
        a3);
    }
    else
    {
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        v8,
        a4);
      std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void **)a1,
        (int)a2,
        v8,
        a3);
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)v8);
    }
  }
}


// ===== 662228 std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
void __fastcall std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        _DWORD *a1,
        unsigned int a2,
        int *a3)
{
  _DWORD *v3; // r12
  unsigned int v5; // r2
  _DWORD *v6; // r1

  v3 = (_DWORD *)a1[1];
  v5 = -1431655765 * (((int)v3 - *a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (int)a1,
      (_DWORD *)a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (_DWORD *)(*a1 + 12 * a2);
    if ( v6 != v3 )
      std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)a1,
        v6,
        (_DWORD *)a1[1]);
  }
}


// ===== 662290 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationValue(int,int,void *) =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationValue(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this,
        int a2,
        int a3,
        void *a4)
{
  int v7; // r5
  int v8; // r0
  int v9; // r9
  signed int v10; // r7
  int v11; // r8
  int i; // r4
  int v13; // r2
  int v14; // r3
  int v15; // r0
  void *p[3]; // [sp+8h] [bp-24h] BYREF
  void *v17[3]; // [sp+14h] [bp-18h] BYREF
  char v18[7]; // [sp+20h] [bp-Ch] BYREF
  char v19[5]; // [sp+27h] [bp-5h] BYREF

  v7 = 0;
  v8 = *(_DWORD *)(**((_DWORD **)this + 12) + 4);
  v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 88))(v8);
  v10 = (*((_DWORD *)this + 13) - *((_DWORD *)this + 12)) >> 2;
  v11 = (*(int (**)(void))(*(_DWORD *)v9 + 8))();
  memset(v17, 0, sizeof(v17));
  v19[0] = 0;
  std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)v17,
    v10 * v11,
    v19);
  memset(p, 0, sizeof(p));
  *(_DWORD *)v18 = 0;
  std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize((int)p, v10, v18);
  if ( v10 > 0 )
  {
    for ( i = 0; i != v10; ++i )
    {
      *((_DWORD *)p[0] + i) = (char *)v17[0] + v7;
      v7 += v11;
      v13 = *(_DWORD *)(*((_DWORD *)this + 40) + 4 * i);
      v14 = *((_DWORD *)p[0] + i);
      v15 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 12) + 4 * i) + 4);
      (*(void (__fastcall **)(int, int, int, int))(*(_DWORD *)v15 + 124))(v15, a2, v13, v14);
    }
  }
  (*(void (__fastcall **)(int, void *, _DWORD, int, void *))(*(_DWORD *)v9 + 16))(
    v9,
    v17[0],
    *((_DWORD *)this + 15),
    (*((_DWORD *)this + 16) - *((_DWORD *)this + 15)) >> 2,
    a4);
  if ( p[0] )
    GlitchFree(p[0]);
  if ( v17[0] )
    GlitchFree(v17[0]);
}


// ===== 6623d4 glitch::collada::CSceneNodeAnimatorSynchronizedBlender::compile(std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>> *) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedBlender::compile(void **a1, void **a2)
{
  int v3; // r5
  _BYTE *v4; // r2
  int v5; // r1
  int v6; // r3
  int v7; // r9
  int v8; // r11
  int v9; // r5
  int v10; // r7
  int v11; // r0
  _BYTE *v12; // r3
  int v13; // r10
  unsigned int v14; // r8
  int v15; // r7
  int v16; // r6
  int v17; // r3
  int v18; // r2
  _BYTE *v19; // r2
  _BYTE *v20; // r3
  glitch::collada::CTimelineController *v21; // r5
  void (__fastcall **v22)(void **, glitch::collada::CTimelineController *); // r3
  int v23; // r5
  _BYTE *v24; // r3
  int v25; // r6
  int v26; // r3
  void *v27; // r3
  int i; // [sp+0h] [bp-44h]
  signed int v30; // [sp+4h] [bp-40h]
  unsigned int v31; // [sp+8h] [bp-3Ch]
  int v33[3]; // [sp+14h] [bp-30h] BYREF
  int v34; // [sp+20h] [bp-24h] BYREF
  int v35; // [sp+24h] [bp-20h] BYREF
  int v36; // [sp+28h] [bp-1Ch] BYREF
  int v37; // [sp+2Ch] [bp-18h] BYREF
  int v38; // [sp+30h] [bp-14h] BYREF
  int v39; // [sp+34h] [bp-10h] BYREF
  int v40; // [sp+38h] [bp-Ch] BYREF
  char v41; // [sp+3Fh] [bp-5h] BYREF

  v3 = (*((int (__fastcall **)(void **))*a1 + 30))(a1);
  v31 = ((_BYTE *)a1[13] - (_BYTE *)a1[12]) >> 2;
  v30 = (*((int (__fastcall **)(void **))*a1 + 28))(a1);
  if ( !a2 )
  {
    v41 = 0;
    a2 = a1 + 18;
    std::vector<unsigned char,glitch::core::SAllocator<unsigned char,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)(a1 + 18),
      v31 * v3,
      &v41);
  }
  v40 = 0;
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 15),
    v31,
    (char *)&v40);
  v4 = a1[15];
  v5 = ((_BYTE *)a1[16] - v4) >> 2;
  if ( v5 )
  {
    v6 = 0;
    while ( 1 )
    {
      *(_DWORD *)&v4[4 * v6++] = 0;
      if ( v6 == v5 )
        break;
      v4 = a1[15];
    }
  }
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights(*(float *)&a1);
  v7 = 0;
  v39 = 0;
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 40),
    v31,
    (char *)&v39);
  v38 = 0;
  std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 21),
    v30,
    (char *)&v38);
  v8 = *(_DWORD *)(*(_DWORD *)a1[12] + 4);
  LC_API_MEMSET_0(*a2, 0, (_BYTE *)a2[1] - (_BYTE *)*a2);
  if ( v30 > 0 )
  {
    for ( i = 0; ; i += v31 * v9 )
    {
      v9 = (*((int (__fastcall **)(void **, int))*a1 + 29))(a1, v7);
      *((_DWORD *)a1[21] + v7) = (char *)*a2 + i;
      v10 = *((_DWORD *)a1[21] + v7);
      (*(void (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)v8 + 104))(v8, v7, v10, 0);
      v11 = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 84))(v8, v7);
      v12 = a1[12];
      v13 = v11;
      v14 = ((_BYTE *)a1[13] - v12) >> 2;
      if ( v14 > 1 )
      {
        v15 = v10 + v9;
        v16 = 1;
        while ( 1 )
        {
          v17 = *(_DWORD *)&v12[4 * v16];
          v18 = v15;
          ++v16;
          v15 += v9;
          (*(void (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v17 + 4) + 96))(*(_DWORD *)(v17 + 4), v13, v18);
          if ( v16 == v14 )
            break;
          v12 = a1[12];
        }
      }
      if ( ++v7 == v30 )
        break;
    }
  }
  v37 = 0;
  std::vector<void *,glitch::core::SAllocator<void *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 24),
    v30,
    (char *)&v37);
  v36 = 0;
  std::vector<glitch::collada::animation_track::CApplicatorInfo *,glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo *,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 27),
    v30,
    (char *)&v36);
  v19 = a1[13];
  v20 = a1[12];
  *((_BYTE *)a1 + 44) = 0;
  if ( (unsigned int)(v19 - v20) >> 2 )
    glitch::collada::ISceneNodeAnimator::forceBind((glitch::collada::ISceneNodeAnimator *)a1);
  v21 = (glitch::collada::CTimelineController *)operator new(0x48u, 0);
  glitch::collada::CTimelineController::CTimelineController(v21);
  v22 = (void (__fastcall **)(void **, glitch::collada::CTimelineController *))*a1;
  a1[30] = v21;
  v22[15](a1, v21);
  v23 = 0;
  memset(v33, 0, sizeof(v33));
  std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    a1 + 31,
    v31,
    v33);
  std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)v33);
  v35 = 0;
  std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 34),
    v31,
    (char *)&v35);
  v34 = 0;
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)(a1 + 37),
    v31,
    (char *)&v34);
  v24 = a1[12];
  v25 = ((_BYTE *)a1[13] - v24) >> 2;
  if ( v25 )
  {
    while ( 1 )
    {
      v26 = *(_DWORD *)&v24[4 * v23++];
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v26 + 4) + 60))(*(_DWORD *)(v26 + 4), 0);
      if ( v23 == v25 )
        break;
      v24 = a1[12];
    }
  }
  v27 = a1[30];
  a1[43] = nullptr;
  return (*(int (__fastcall **)(void *, _DWORD, _DWORD, int))(*(_DWORD *)v27 + 80))(v27, 0, 0, 1);
}


// ===== 662728 `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 662738 `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender(
        glitch::collada::CSceneNodeAnimatorSynchronizedBlender *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender((glitch::collada::CSceneNodeAnimatorSynchronizedBlender *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 662748 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 662750 glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart(void) =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  ;
}


// ===== 662754 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 66275c glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd(void) =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  ;
}


// ===== 662760 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime(void) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 662768 glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime(void) =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  ;
}


// ===== 66276c `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeSynchronizedAnimatorSet.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSceneNodeSynchronizedAnimatorSet.cpp()
{
  dword_9F7070 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F706C = 1056964608;
}


// ===== 66278c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(float) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        float a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2);
}


// ===== 662794 glitch::collada::CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(float) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        float a2)
{
  int v4; // r10
  float v5; // r6
  int v6; // r0
  float v7; // r8
  float v8; // r0

  *((_BYTE *)this + 128) = 0;
  v4 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this);
  v5 = *((float *)this + 31);
  v6 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this);
  v7 = fmodf(v5, (float)v6);
  if ( (float)((float)((int)(float)((float)v4 * a2) - (int)v5) + v7) >= (float)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this) )
    *((_BYTE *)this + 128) = 1;
  v8 = (float)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this)
     * a2;
  *((float *)this + 31) = v8;
  return glitch::collada::CSceneNodeAnimatorSet::computeAnimationValues(this, (unsigned int)v8);
}


// ===== 66287c `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(float) =====
int __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        float a2)
{
  return glitch::collada::CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(
           (glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88),
           a2);
}


// ===== 662884 glitch::collada::CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(float) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        float a2)
{
  int v3; // r5
  float v4; // r6
  int v5; // r0
  float v6; // r8

  *((_BYTE *)this + 128) = 0;
  v3 = (int)(float)((float)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this)
                  * a2);
  v4 = *((float *)this + 31);
  v5 = (*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this);
  v6 = fmodf(v4, (float)v5);
  if ( (float)((float)(v3 - (int)v4) + v6) >= (float)(*(int (__fastcall **)(glitch::collada::CSceneNodeAnimatorSynchronizedSet *))(*(_DWORD *)this + 72))(this) )
    *((_BYTE *)this + 128) = 1;
  *((float *)this + 31) = (float)v3;
  return glitch::collada::CSceneNodeAnimatorSet::applyAnimationValues(this, (unsigned int)(float)v3);
}


// ===== 662950 std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 5;
  if ( 0x7FFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x7FFFFFF || result < v2 )
    return 0x7FFFFFF;
  return result;
}


// ===== 6629b0 std::priv::__ufill<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,int>(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&,std::random_access_iterator_tag const&,int *) =====
char *__fastcall std::priv::__ufill<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,int>(
        char *result,
        int a2,
        int a3)
{
  int v3; // r6
  char *i; // r4
  int v6; // r2

  v3 = (a2 - (int)result) >> 5;
  if ( v3 > 0 )
  {
    for ( i = result; ; i += 32 )
    {
      *(_DWORD *)i = *(_DWORD *)a3;
      v6 = *(_DWORD *)(a3 + 4);
      *((_DWORD *)i + 6) = i + 8;
      *((_DWORD *)i + 7) = i + 8;
      *((_DWORD *)i + 1) = v6;
      result = std::string::_M_range_initialize(
                 (std::string *)(i + 8),
                 *(const char **)(a3 + 28),
                 *(const char **)(a3 + 24));
      if ( !--v3 )
        break;
    }
  }
  return result;
}


// ===== 662a0c std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,int>(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r7
  int v5; // r5
  int v7; // r6
  int v8; // r4
  int v9; // r2

  v3 = a2 - a1;
  v4 = v3 >> 5;
  v5 = a1;
  if ( v3 >> 5 <= 0 )
    return a3;
  v7 = v3 >> 5;
  v8 = a3;
  while ( 1 )
  {
    *(_DWORD *)v8 = *(_DWORD *)v5;
    v9 = *(_DWORD *)(v5 + 4);
    *(_DWORD *)(v8 + 24) = v8 + 8;
    *(_DWORD *)(v8 + 28) = v8 + 8;
    *(_DWORD *)(v8 + 4) = v9;
    std::string::_M_range_initialize((std::string *)(v8 + 8), *(const char **)(v5 + 28), *(const char **)(v5 + 24));
    --v7;
    v8 += 32;
    if ( !v7 )
      break;
    v5 += 32;
  }
  return a3 + 32 * v4;
}


// ===== 662a80 std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::vector(std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
std::string **__fastcall std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::vector(
        std::string **a1,
        int *a2)
{
  int v3; // r3
  int v5; // r7
  std::string *v6; // r0

  v3 = (a2[1] - *a2) >> 3;
  *a1 = nullptr;
  a1[1] = nullptr;
  a1[2] = nullptr;
  v5 = 8 * v3;
  v6 = (std::string *)GlitchAlloc(8 * v3, 0);
  *a1 = v6;
  a1[1] = v6;
  a1[2] = (std::string *)((char *)v6 + v5);
  a1[1] = std::priv::__ucopy<std::string const*,std::string *,int>(*a2, a2[1], v6);
  return a1;
}


// ===== 662b0c std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
int __fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        int a1)
{
  int v1; // r4
  void *v2; // r5

  v1 = *(_DWORD *)(a1 + 4);
  v2 = *(void **)a1;
  if ( v1 != *(_DWORD *)a1 )
  {
    do
    {
      v1 -= 32;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v1 + 8));
    }
    while ( v2 != (void *)v1 );
  }
  if ( *(_DWORD *)a1 )
    GlitchFree(*(void **)a1);
  return a1;
}


// ===== 662b50 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 662b58 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 4));
}


// ===== 662b60 glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  *(_DWORD *)this = off_984434;
  *((_DWORD *)this + 33) = off_984570;
  *((_DWORD *)this + 1) = off_984508;
  *((_DWORD *)this + 22) = off_98451C;
  std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)this + 112);
  std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)this + 96);
  *((_DWORD *)this + 22) = off_984108;
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(this, (int *)off_984584);
}


// ===== 662be4 `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 88));
}


// ===== 662bec `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall `non-virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this - 4));
}


// ===== 662bf4 glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(this);
  LC_API_FREE_0(this);
}


// ===== 662c10 glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this,
        int *a2)
{
  int v2; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[9];
  *((_DWORD *)this + 1) = off_984508;
  *((_DWORD *)this + 22) = off_98451C;
  std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)this + 112);
  std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::~vector((int)this + 96);
  *((_DWORD *)this + 22) = off_984108;
  glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet(this, a2 + 1);
}


// ===== 662c90 glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(void) =====
glitch::collada::CSceneNodeAnimatorSet *__fastcall glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(
        glitch::collada::CSceneNodeAnimatorSet *this,
        int *a2)
{
  int v4; // r2

  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(this);
  v4 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v4 - 12)) = a2[7];
  *((_DWORD *)this + 1) = off_983F04;
  *((_DWORD *)this + 21) = 0;
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
  return this;
}


// ===== 662d10 glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&,std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(
        int a1,
        glitch::collada::CAnimationSet **a2,
        int *a3)
{
  *(_DWORD *)(a1 + 136) = 1;
  *(_DWORD *)(a1 + 132) = off_95B720;
  glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(
    (glitch::collada::CSceneNodeAnimatorSet *)a1,
    (int *)off_984584);
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)a1 = off_984434;
  *(_DWORD *)(a1 + 132) = off_984570;
  *(_DWORD *)(a1 + 4) = off_984508;
  *(_DWORD *)(a1 + 88) = off_98451C;
  *(_DWORD *)(a1 + 108) = -1431655765 * ((a3[1] - *a3) >> 3);
  std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    (std::string **)(a1 + 112),
    a3);
  *(_BYTE *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 92) = a1;
  *(_DWORD *)(a1 + 124) = 0;
  glitch::collada::CSceneNodeAnimatorSet::init((_DWORD *)a1, a2);
  return a1;
}


// ===== 662df0 glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&,std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(
        int a1,
        int *a2,
        glitch::collada::CAnimationSet **a3,
        int *a4)
{
  int v8; // r1

  glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet((glitch::collada::CSceneNodeAnimatorSet *)a1, a2 + 1);
  *(_DWORD *)(a1 + 88) = off_984108;
  v8 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v8 - 12)) = a2[9];
  *(_DWORD *)(a1 + 4) = off_984508;
  *(_DWORD *)(a1 + 88) = off_98451C;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 108) = -1431655765 * ((a4[1] - *a4) >> 3);
  std::vector<std::string,glitch::core::SAllocator<std::string,(glitch::memory::E_MEMORY_HINT)0>>::vector(
    (std::string **)(a1 + 112),
    a4);
  *(_BYTE *)(a1 + 128) = 0;
  *(_DWORD *)(a1 + 92) = a1;
  *(_DWORD *)(a1 + 124) = 0;
  glitch::collada::CSceneNodeAnimatorSet::init((_DWORD *)a1, a3);
  return a1;
}


// ===== 662ec4 std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*,std::__false_type const&) =====
int __fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v3; // r5
  int v5; // r4
  int v6; // r10
  int v8; // r10
  int v9; // r6
  int v10; // r5
  int v11; // r4
  std::priv::_String_base<char,std::allocator<char> > *v12; // r0

  v3 = *(_DWORD *)(a1 + 4);
  v5 = a3;
  v6 = (v3 - a3) >> 5;
  if ( v6 > 0 )
  {
    v9 = (v3 - a3) >> 5;
    v10 = a2;
    while ( 1 )
    {
      *(_DWORD *)v10 = *(_DWORD *)v5;
      *(_DWORD *)(v10 + 4) = *(_DWORD *)(v5 + 4);
      if ( v10 + 8 != v5 + 8 )
        std::string::_M_assign((std::string *const)(v10 + 8), *(const char **)(v5 + 28), *(const char **)(v5 + 24));
      --v9;
      v10 += 32;
      if ( !v9 )
        break;
      v5 += 32;
    }
    v3 = *(_DWORD *)(a1 + 4);
    v8 = a2 + 32 * v6;
  }
  else
  {
    v8 = a2;
  }
  if ( v3 != v8 )
  {
    v11 = v8;
    do
    {
      v12 = (std::priv::_String_base<char,std::allocator<char> > *)(v11 + 8);
      v11 += 32;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v12);
    }
    while ( v3 != v11 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 662f68 std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*,uint,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&,std::__false_type const&) =====
void __fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  int v6; // r4
  unsigned int v8; // r7
  int v9; // r12
  const char *v10; // r2
  const char *v11; // r1
  int v12; // r6
  int v13; // r10
  int v14; // r6
  int v15; // r10
  int v16; // t1
  int v17; // r10
  int v18; // [sp+Ch] [bp-40h]
  _BYTE v19[4]; // [sp+20h] [bp-2Ch] BYREF
  _DWORD v20[2]; // [sp+24h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+2Ch] [bp-20h] BYREF

  v6 = a2;
  if ( a4 >= *a1 )
  {
    v8 = a1[1];
    if ( a4 < v8 )
    {
      v9 = *(_DWORD *)(a4 + 4);
      v10 = *(const char **)(a4 + 24);
      v11 = *(const char **)(a4 + 28);
      v20[0] = *(_DWORD *)a4;
      v20[1] = v9;
      v21._M_finish = (char *)&v21;
      v21._M_start_of_storage._M_data = (char *)&v21;
      std::string::_M_range_initialize((std::string *)&v21, v11, v10);
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        v6,
        a3,
        v20,
        v19);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
      return;
    }
  }
  else
  {
    v8 = a1[1];
  }
  v12 = (int)(v8 - a2) >> 5;
  if ( a3 < v12 )
  {
    v14 = v8 - 32 * a3;
    v18 = 32 * a3;
    std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,int>(
      v14,
      v8,
      v8);
    v15 = (v14 - v6) >> 5;
    a1[1] += v18;
    if ( v15 > 0 )
    {
      do
      {
        v16 = *(_DWORD *)(v14 - 32);
        v14 -= 32;
        *(_DWORD *)(v8 - 32) = v16;
        v8 -= 32;
        *(_DWORD *)(v8 + 4) = *(_DWORD *)(v14 + 4);
        if ( v8 + 8 != v14 + 8 )
          std::string::_M_assign((std::string *const)(v8 + 8), *(const char **)(v14 + 28), *(const char **)(v14 + 24));
        --v15;
      }
      while ( v15 );
    }
    v17 = v18 >> 5;
    if ( v18 >> 5 > 0 )
    {
      while ( 1 )
      {
        *(_DWORD *)v6 = *(_DWORD *)a4;
        *(_DWORD *)(v6 + 4) = *(_DWORD *)(a4 + 4);
        if ( v6 + 8 != a4 + 8 )
          std::string::_M_assign((std::string *const)(v6 + 8), *(const char **)(a4 + 28), *(const char **)(a4 + 24));
        if ( !--v17 )
          break;
        v6 += 32;
      }
    }
  }
  else
  {
    v13 = v8 + 32 * (a3 - v12);
    std::priv::__ufill<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,int>(
      (char *)v8,
      v13,
      a4);
    a1[1] = v13;
    std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,int>(
      v6,
      v8,
      v13);
    a1[1] += 32 * v12;
    if ( v12 > 0 )
    {
      while ( 1 )
      {
        *(_DWORD *)v6 = *(_DWORD *)a4;
        *(_DWORD *)(v6 + 4) = *(_DWORD *)(a4 + 4);
        if ( v6 + 8 != a4 + 8 )
          std::string::_M_assign((std::string *const)(v6 + 8), *(const char **)(a4 + 28), *(const char **)(a4 + 24));
        if ( !--v12 )
          break;
        v6 += 32;
      }
    }
  }
}


// ===== 6631a4 std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*,uint,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&) =====
void __fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int a4)
{
  size_t v8; // r9
  char *v9; // r8
  char *v10; // r0
  char *v11; // r10
  int v12; // r10
  int v13; // r0
  unsigned int v14; // r5
  void *v15; // r6
  int v16; // r7
  std::string *v17; // r0
  int v18; // r2

  if ( a3 )
  {
    if ( a3 <= (int)(a1[2] - a1[1]) >> 5 )
    {
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 32
         * std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = (char *)GlitchAlloc(v8, 0);
      v10 = (char *)std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,int>(
                      *a1,
                      a2,
                      (int)v9);
      v11 = v10;
      if ( a3 == 1 )
      {
        v17 = (std::string *)(v10 + 8);
        *(_DWORD *)v11 = *(_DWORD *)a4;
        v18 = *(_DWORD *)(a4 + 4);
        *((_DWORD *)v11 + 6) = v17;
        *((_DWORD *)v11 + 7) = v17;
        *((_DWORD *)v11 + 1) = v18;
        std::string::_M_range_initialize(v17, *(const char **)(a4 + 28), *(const char **)(a4 + 24));
        v12 = (int)(v11 + 32);
      }
      else
      {
        v12 = (int)&v10[32 * a3];
        std::priv::__ufill<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,int>(
          v10,
          v12,
          a4);
      }
      v13 = std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData *,int>(
              a2,
              a1[1],
              v12);
      v14 = a1[1];
      v15 = (void *)*a1;
      v16 = v13;
      if ( v14 != *a1 )
      {
        do
        {
          v14 -= 32;
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v14 + 8));
        }
        while ( v15 != (void *)v14 );
        v15 = (void *)*a1;
      }
      GlitchFree(v15);
      a1[1] = v16;
      a1[2] = (unsigned int)&v9[v8];
      *a1 = (unsigned int)v9;
    }
  }
}


// ===== 6632d4 std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&) =====
void __fastcall std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        unsigned int a3)
{
  int v3; // r12
  unsigned int v5; // r2
  int v6; // r1

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 5;
  if ( a2 >= v5 )
  {
    std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (unsigned int *)a1,
      *(_DWORD *)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 32 * a2;
    if ( v6 != v3 )
      std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v6,
        *(_DWORD *)(a1 + 4));
  }
}


// ===== 663324 glitch::collada::CSceneNodeAnimatorSynchronizedSet::setCurrentAnimation(int) =====
int __fastcall glitch::collada::CSceneNodeAnimatorSynchronizedSet::setCurrentAnimation(
        glitch::collada::CAnimationSet **this,
        unsigned int a2)
{
  char *v3; // r8
  int v4; // r10
  int v5; // r0
  unsigned int v6; // r11
  int v7; // r7
  int v8; // r9
  int result; // r0
  unsigned int v10; // r6
  char *v11; // r8
  int v12; // r0
  char *v13; // r1
  int v14; // r9
  int v15; // r8
  int v16; // r3
  unsigned int v17; // r1
  unsigned int v18; // r5
  int v19; // r6
  int v20; // r3
  int v21; // r0
  int v22; // r1
  int v23; // [sp+Ch] [bp-70h]
  std::priv::_String_base<char,std::allocator<char> > v24; // [sp+24h] [bp-58h] BYREF
  _DWORD v25[2]; // [sp+3Ch] [bp-40h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v26; // [sp+44h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v27; // [sp+5Ch] [bp-20h] BYREF

  v3 = (char *)(this + 24);
  glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(this, a2);
  v4 = (int)*(this + 6);
  v5 = (*((int (__fastcall **)(glitch::collada::CAnimationSet **))*this + 18))(this);
  v6 = (unsigned int)*(this + 27);
  v7 = 0;
  v8 = v5;
  v25[0] = 0;
  v25[1] = 0;
  std::string::string((std::string *)&v26, "");
  std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)v3,
    v6,
    (unsigned int)v25);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v26);
  if ( *(this + 27) )
  {
    v10 = 0;
    v23 = v8;
    do
    {
      v11 = *(char **)((char *)*(this + 28) + v7 + 20);
      v12 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)v4 + 20))(v4, v11);
      v13 = v11;
      v14 = v12;
      v15 = (int)*(this + 24);
      std::string::string((std::string *)&v27, v13);
      v24._M_finish = (char *)&v24;
      v24._M_start_of_storage._M_data = (char *)&v24;
      std::string::_M_range_initialize((std::string *)&v24, v27._M_start_of_storage._M_data, v27._M_finish);
      v16 = v15 + 32 * v10;
      *(_DWORD *)v16 = v14;
      *(_DWORD *)(v16 + 4) = 0;
      if ( (std::priv::_String_base<char,std::allocator<char> > *)(v16 + 8) != &v24 )
        std::string::_M_assign((std::string *const)(v16 + 8), v24._M_start_of_storage._M_data, v24._M_finish);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v27);
      v17 = (unsigned int)*(this + 27);
      ++v10;
      v7 += 24;
    }
    while ( v17 > v10 );
    if ( v17 )
    {
      v18 = 0;
      do
      {
        v19 = 32 * v18++;
        v20 = (int)*(this + 24);
        v21 = *(_DWORD *)(v20 + 32 * (v18 % v17)) - *(_DWORD *)(v20 + v19) + v23;
        v22 = v21 % v23;
        result = v21 / v23;
        *(_DWORD *)(v20 + v19 + 4) = v22;
        v17 = (unsigned int)*(this + 27);
      }
      while ( v17 > v18 );
    }
  }
  return result;
}


// ===== 663504 `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 663514 `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet(
        glitch::collada::CSceneNodeAnimatorSynchronizedSet *this)
{
  glitch::collada::CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet((glitch::collada::CSceneNodeAnimatorSynchronizedSet *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 663524 glitch::collada::CSkinnedMesh::getType(void) =====
int __fastcall glitch::collada::CSkinnedMesh::getType(glitch::collada::CSkinnedMesh *this)
{
  return 2;
}


// ===== 66352c glitch::collada::CSkinnedMesh::clone(void) =====
_DWORD *__fastcall glitch::collada::CSkinnedMesh::clone(_DWORD *this)
{
  *this = 0;
  return this;
}


// ===== 663538 glitch::collada::CSkinnedMesh::attach(glitch::scene::ISceneNode *) =====
int __fastcall glitch::collada::CSkinnedMesh::attach(
        glitch::collada::CSkinnedMesh *this,
        glitch::scene::ISceneNode *a2)
{
  glitch::collada::CSkinnedMesh *v4; // r5
  int i; // r4
  int result; // r0

  *((_DWORD *)this + 27) = a2;
  v4 = this;
  for ( i = 0; i != 4; ++i )
  {
    result = (*(int (__fastcall **)(_DWORD, glitch::scene::ISceneNode *))(**((_DWORD **)v4 + 15) + 32))(
               *((_DWORD *)v4 + 15),
               a2);
    v4 = (glitch::collada::CSkinnedMesh *)((char *)v4 + 4);
  }
  *((_DWORD *)this + 28) = -1;
  return result;
}


// ===== 663584 glitch::collada::CSkinnedMesh::onAnimate(uint) =====
int __fastcall glitch::collada::CSkinnedMesh::onAnimate(glitch::collada::CSkinnedMesh *this, unsigned int a2)
{
  int result; // r0

  result = (*(int (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 26) + 52))(*((_DWORD *)this + 26), a2);
  *((_DWORD *)this + 28) = ~(~HIWORD(*((_DWORD *)this + 28)) << 16);
  return result;
}


// ===== 6635b4 glitch::collada::CSkinnedMesh::getMeshBufferCount(void) =====
int __fastcall glitch::collada::CSkinnedMesh::getMeshBufferCount(glitch::collada::CSkinnedMesh *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 26) + 16))(*((_DWORD *)this + 26));
}


// ===== 6635d0 glitch::collada::CSkinnedMesh::getMeshBuffer(uint) =====
_DWORD *__fastcall glitch::collada::CSkinnedMesh::getMeshBuffer(_DWORD *this, unsigned int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(*(_DWORD *)(a2 + 92) + 20 * a3);
  *this = v3;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  return this;
}


// ===== 6635f8 glitch::collada::CSkinnedMesh::getMaterial(uint) =====
_DWORD *__fastcall glitch::collada::CSkinnedMesh::getMaterial(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 92) + 20 * a3 + 4);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 663620 glitch::collada::CSkinnedMesh::getMaterialVertexAttributeMap(uint) =====
_DWORD *__fastcall glitch::collada::CSkinnedMesh::getMaterialVertexAttributeMap(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 92) + 20 * a3 + 8);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 663648 glitch::collada::CSkinnedMesh::computeBoundingBox(void) =====
int __fastcall glitch::collada::CSkinnedMesh::computeBoundingBox(glitch::collada::CSkinnedMesh *this)
{
  int v2; // r1
  int v3; // r2
  int v4; // r3
  int result; // r0
  int v6; // r5
  _DWORD v7[7]; // [sp+0h] [bp-1Ch] BYREF

  (*(void (__fastcall **)(_DWORD *, _DWORD))(**((_DWORD **)this + 15) + 8))(v7, *((_DWORD *)this + 15));
  v2 = v7[2];
  v3 = v7[3];
  v4 = v7[4];
  result = v7[5];
  v6 = v7[0];
  *((_DWORD *)this + 10) = v7[1];
  *((_DWORD *)this + 14) = result;
  *((_DWORD *)this + 9) = v6;
  *((_DWORD *)this + 11) = v2;
  *((_DWORD *)this + 12) = v3;
  *((_DWORD *)this + 13) = v4;
  return result;
}


// ===== 6636a4 glitch::collada::CSkinnedMesh::getBoundingBox(void) =====
char *__fastcall glitch::collada::CSkinnedMesh::getBoundingBox(glitch::collada::CSkinnedMesh *this)
{
  if ( (*((_DWORD *)this + 28) & 8) != 0 )
    glitch::collada::CSkinnedMesh::computeBoundingBox(this);
  return (char *)this + 36;
}


// ===== 6636c4 std::priv::__ucopy<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,int>(glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,int>(
        int *a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v5; // r4
  int v6; // r1
  int v7; // r12
  _DWORD *v8; // r12
  _DWORD *v9; // r12
  char v10; // r12

  v3 = -858993459 * ((a2 - (int)a1) >> 2);
  if ( v3 <= 0 )
    return a3;
  v5 = -858993459 * ((a2 - (int)a1) >> 2);
  v6 = a3;
  do
  {
    v7 = *a1;
    *(_DWORD *)v6 = *a1;
    if ( v7 )
      ++*(_DWORD *)(v7 + 4);
    v8 = (_DWORD *)a1[1];
    *(_DWORD *)(v6 + 4) = v8;
    if ( v8 )
      ++*v8;
    v9 = (_DWORD *)a1[2];
    *(_DWORD *)(v6 + 8) = v9;
    if ( v9 )
      ++*v9;
    --v5;
    *(_DWORD *)(v6 + 12) = a1[3];
    *(_BYTE *)(v6 + 16) = *((_BYTE *)a1 + 16);
    *(_BYTE *)(v6 + 17) = *((_BYTE *)a1 + 17);
    v10 = *((_BYTE *)a1 + 18);
    a1 += 5;
    *(_BYTE *)(v6 + 18) = v10;
    v6 += 20;
  }
  while ( v5 );
  return a3 + 20 * v3;
}


// ===== 663780 std::priv::__ufill<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer,int>(glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer const&,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ufill<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer,int>(
        int result,
        int a2,
        int *a3)
{
  int v3; // r3
  int v4; // r1
  _DWORD *v5; // r1
  _DWORD *v6; // r1

  v3 = -858993459 * ((a2 - result) >> 2);
  if ( v3 > 0 )
  {
    while ( 1 )
    {
      v4 = *a3;
      *(_DWORD *)result = *a3;
      if ( v4 )
        ++*(_DWORD *)(v4 + 4);
      v5 = (_DWORD *)a3[1];
      *(_DWORD *)(result + 4) = v5;
      if ( v5 )
        ++*v5;
      v6 = (_DWORD *)a3[2];
      *(_DWORD *)(result + 8) = v6;
      if ( v6 )
        ++*v6;
      --v3;
      *(_DWORD *)(result + 12) = a3[3];
      *(_BYTE *)(result + 16) = *((_BYTE *)a3 + 16);
      *(_BYTE *)(result + 17) = *((_BYTE *)a3 + 17);
      *(_BYTE *)(result + 18) = *((_BYTE *)a3 + 18);
      if ( !v3 )
        break;
      result += 20;
    }
  }
  return result;
}


// ===== 66381c `global constructor keyed to'.._source_glitch_collada_CColladaSkinnedMesh.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSkinnedMesh.cpp()
{
  dword_9F707C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7078 = 1056964608;
}


// ===== 66383c glitch::collada::CSkinnedMesh::reverifySkinTechnique(glitch::collada::SSkinBuffer const&) =====
int __fastcall glitch::collada::CSkinnedMesh::reverifySkinTechnique(int a1, int a2)
{
  int result; // r0
  int v5; // r2
  int v6; // r3
  int v7; // r6
  int v8; // r8
  int v9; // r4

  result = glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(a2 + 4));
  v5 = result;
  if ( *(unsigned __int8 *)(a2 + 16) != result )
  {
    v6 = *(_DWORD *)(a2 + 4);
    *(_BYTE *)(a2 + 16) = result;
    v7 = a1 + 60;
    v8 = *(_DWORD *)(v6 + 4);
    v9 = 0;
    while ( 1 )
    {
      result = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v7 + v9) + 28))(
                 *(_DWORD *)(v7 + v9),
                 *(_DWORD *)(v8 + 24) + 12 * v5);
      if ( result )
        break;
      v9 += 4;
      if ( v9 == 16 )
        return result;
      v5 = *(unsigned __int8 *)(a2 + 16);
    }
    *(_DWORD *)(a2 + 12) = *(_DWORD *)(v7 + v9);
  }
  return result;
}


// ===== 6638bc glitch::collada::CSkinnedMesh::needOutputBuffer(void) =====
int __fastcall glitch::collada::CSkinnedMesh::needOutputBuffer(glitch::collada::CSkinnedMesh *this)
{
  int v1; // r4
  int v3; // r6
  int v4; // r3

  v1 = *((_DWORD *)this + 23);
  if ( v1 == *((_DWORD *)this + 24) )
    return 0;
  LOBYTE(v3) = 0;
  do
  {
    glitch::collada::CSkinnedMesh::reverifySkinTechnique((int)this, v1);
    v4 = *(_DWORD *)(v1 + 12);
    v1 += 20;
    v3 = (unsigned __int8)((*(int (__fastcall **)(int))(*(_DWORD *)v4 + 12))(v4) | v3);
  }
  while ( v1 != *((_DWORD *)this + 24) );
  return v3;
}


// ===== 66391c glitch::collada::CSkinnedMesh::setMaterial(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
int __fastcall glitch::collada::CSkinnedMesh::setMaterial(
        int a1,
        int a2,
        glitch::video::CMaterial **a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  glitch::video::CMaterial *v5; // r2
  int v6; // r5
  int v8; // r1
  glitch::video::CMaterialVertexAttributeMap **v9; // r6
  int v10; // r1
  int v12; // r1
  glitch::video::CMaterialVertexAttributeMap *v13; // r3
  int v14; // r2
  int v15; // r2
  glitch::video::CMaterialVertexAttributeMap *v17; // [sp+0h] [bp-8h] BYREF
  glitch::video::CMaterial *v18; // [sp+4h] [bp-4h] BYREF

  v5 = *a3;
  v6 = 20 * a2;
  v8 = *(_DWORD *)(a1 + 92);
  v18 = v5;
  v9 = a4;
  if ( v5 )
    a4 = *(glitch::video::CMaterialVertexAttributeMap ***)v5;
  v10 = v8 + v6;
  if ( v5 )
  {
    *(_DWORD *)v5 = (char *)a4 + 1;
    v5 = v18;
  }
  v18 = *(glitch::video::CMaterial **)(v10 + 4);
  *(_DWORD *)(v10 + 4) = v5;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
  v13 = *v9;
  v14 = *(_DWORD *)(a1 + 92);
  v17 = v13;
  if ( v13 )
    v12 = *(_DWORD *)v13;
  v15 = v14 + v6;
  if ( v13 )
  {
    *(_DWORD *)v13 = v12 + 1;
    v13 = v17;
  }
  v17 = *(glitch::video::CMaterialVertexAttributeMap **)(v15 + 8);
  *(_DWORD *)(v15 + 8) = v13;
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v17);
  *(_BYTE *)(*(_DWORD *)(a1 + 92) + v6 + 16) = -1;
  *(_BYTE *)(*(_DWORD *)(a1 + 92) + v6 + 17) = -1;
  return (*(int (__fastcall **)(_DWORD, int, glitch::video::CMaterial **, glitch::video::CMaterialVertexAttributeMap **))(**(_DWORD **)(a1 + 104) + 32))(
           *(_DWORD *)(a1 + 104),
           a2,
           a3,
           v9);
}


// ===== 6639f4 glitch::collada::CSkinnedMesh::releaseProcessBuffer(glitch::video::IVideoDriver *,uint) =====
int __fastcall glitch::collada::CSkinnedMesh::releaseProcessBuffer(
        int this,
        glitch::video::IVideoDriver *a2,
        unsigned int a3)
{
  glitch::collada::ISkinnedMesh *v3; // r4

  v3 = (glitch::collada::ISkinnedMesh *)this;
  if ( *(_BYTE *)(this + 35) )
  {
    this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 104) + 60))(*(_DWORD *)(this + 104));
    *((_BYTE *)v3 + 35) = 0;
  }
  if ( *((_BYTE *)v3 + 24) )
    return glitch::collada::ISkinnedMesh::releaseProcessBuffer(v3, a2, a3);
  return this;
}


// ===== 663a54 std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
        _DWORD *a1,
        unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int result; // r0

  v3 = -858993459 * ((a1[1] - *a1) >> 2);
  if ( 214748364 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  if ( result > 0xCCCCCCC || result < v3 )
    return 214748364;
  return result;
}


// ===== 663ad4 std::vector<glitch::res::onDemandPointer<std::pair<float,ushort>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,ushort>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 663b34 std::allocator<glitch::core::CMatrix4<float>>::deallocate(glitch::core::CMatrix4<float>*,uint) =====
void __fastcall std::allocator<glitch::core::CMatrix4<float>>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(68 * a3) > 0x80 )
      LC_API_FREE_0(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 68 * a3);
  }
}


// ===== 663b54 glitch::collada::SSkinCache::~SSkinCache() =====
void __fastcall glitch::collada::SSkinCache::~SSkinCache(glitch::collada::SSkinCache *this)
{
  glitch::IReferenceCounted *v2; // r0
  void *v3; // r0
  void *v4; // r0
  int v5; // r3

  v2 = *((glitch::IReferenceCounted **)this + 10);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *((void **)this + 7);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((void **)this + 4);
  if ( v4 )
    GlitchFree(v4);
  v5 = *((_DWORD *)this + 1);
  if ( v5 )
    std::allocator<glitch::core::CMatrix4<float>>::deallocate(
      (int)this + 12,
      *((void **)this + 1),
      -252645135 * ((*((_DWORD *)this + 3) - v5) >> 2));
}


// ===== 663bd0 glitch::res::onDemand<glitch::collada::SSkinData<float>>::get(glitch::res::onDemandReader &) =====
int **__fastcall glitch::res::onDemand<glitch::collada::SSkinData<float>>::get(int **result, int *a2, int a3, int a4)
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


// ===== 663c3c glitch::res::onDemand<std::pair<float,ushort>>::get(glitch::res::onDemandReader &) =====
int **__fastcall glitch::res::onDemand<std::pair<float,unsigned short>>::get(int **result, int *a2, int a3, int a4)
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


// ===== 663ca8 glitch::video::CVertexStreams::setStreamBuffer(glitch::video::SVertexStream *,boost::intrusive_ptr<glitch::video::IBuffer> const&,bool) [clone] =====
int __fastcall glitch::video::CVertexStreams::setStreamBuffer(
        glitch::video::CVertexStreams *this,
        glitch::IReferenceCounted **a2,
        glitch::IReferenceCounted **a3)
{
  glitch::IReferenceCounted *v3; // r3
  glitch::IReferenceCounted *v5; // r0

  v3 = *a3;
  if ( *a3 )
    ++*((_DWORD *)v3 + 1);
  v5 = *a2;
  *a2 = v3;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, 1);
}


// ===== 663ce8 glitch::core::CMatrix4<float>::getInverse(glitch::core::CMatrix4<float>&) [clone] =====
char *__fastcall glitch::core::CMatrix4<float>::getInverse(float *a1)
{
  int v1; // r2
  float v2; // r7
  float v3; // r8
  float v4; // r9
  float v5; // r10
  int v7; // r4
  float v8; // [sp+8h] [bp-2Ch]
  float v9; // [sp+Ch] [bp-28h]
  float v10; // [sp+10h] [bp-24h]
  float v11; // [sp+14h] [bp-20h]
  float v12; // [sp+18h] [bp-1Ch]
  float v13; // [sp+1Ch] [bp-18h]
  float v14; // [sp+20h] [bp-14h]
  float v15; // [sp+24h] [bp-10h]
  float v16; // [sp+28h] [bp-Ch]

  v1 = (unsigned __int8)byte_9F65B0;
  if ( byte_9F65B0 )
  {
    memcpy(a1, glitch::core::IdentityMatrix, 0x41u);
    return (_BYTE *)(&dword_0 + 1);
  }
  else
  {
    v11 = (float)(*(float *)&dword_9F6598 * *(float *)&dword_9F65AC)
        - (float)(*(float *)&dword_9F659C * *(float *)&dword_9F65A8);
    v12 = (float)(*(float *)&dword_9F65AC * *(float *)&dword_9F6588)
        - (float)(*(float *)&dword_9F65A8 * *(float *)&dword_9F658C);
    v13 = (float)(*(float *)&dword_9F659C * *(float *)&dword_9F6588)
        - (float)(*(float *)&dword_9F6598 * *(float *)&dword_9F658C);
    v14 = (float)(*(float *)&dword_9F65AC * *(float *)&dword_9F6578)
        - (float)(*(float *)&dword_9F65A8 * *(float *)&dword_9F657C);
    v15 = (float)(*(float *)&dword_9F659C * *(float *)&dword_9F6578)
        - (float)(*(float *)&dword_9F6598 * *(float *)&dword_9F657C);
    v8 = (float)(*(float *)&dword_9F658C * *(float *)&dword_9F6578)
       - (float)(*(float *)&dword_9F6588 * *(float *)&dword_9F657C);
    v9 = (float)(*(float *)&dword_9F6590 * *(float *)&dword_9F65A4)
       - (float)(*(float *)&dword_9F6594 * *(float *)&dword_9F65A0);
    v16 = (float)(*(float *)&dword_9F65A4 * *(float *)&dword_9F6580)
        - (float)(*(float *)&dword_9F65A0 * *(float *)&dword_9F6584);
    v2 = (float)(*(float *)&dword_9F6594 * *(float *)&dword_9F6580)
       - (float)(*(float *)&dword_9F6590 * *(float *)&dword_9F6584);
    v3 = (float)(*(float *)&dword_9F65A4 * *(float *)glitch::core::IdentityMatrix)
       - (float)(*(float *)&dword_9F65A0 * *(float *)&dword_9F6574);
    v4 = (float)(*(float *)&dword_9F6594 * *(float *)glitch::core::IdentityMatrix)
       - (float)(*(float *)&dword_9F6590 * *(float *)&dword_9F6574);
    v5 = (float)(*(float *)&dword_9F6584 * *(float *)glitch::core::IdentityMatrix)
       - (float)(*(float *)&dword_9F6580 * *(float *)&dword_9F6574);
    v10 = (float)((float)((float)((float)((float)(v11 * v5) - (float)(v12 * v4)) + (float)(v13 * v3)) + (float)(v14 * v2))
                - (float)(v15 * v16))
        + (float)(v8 * v9);
    if ( fabs(v10) > 0.000001 )
    {
      *((_BYTE *)a1 + 64) = byte_9F65B0;
      *a1 = (float)((float)(v11 * *(float *)&dword_9F6584) - (float)(v12 * *(float *)&dword_9F6594))
          + (float)(v13 * *(float *)&dword_9F65A4);
      a1[1] = (float)((float)(v14 * *(float *)&dword_9F6594) - (float)(v11 * *(float *)&dword_9F6574))
            - (float)(v15 * *(float *)&dword_9F65A4);
      a1[2] = (float)((float)(v12 * *(float *)&dword_9F6574) - (float)(v14 * *(float *)&dword_9F6584))
            + (float)(v8 * *(float *)&dword_9F65A4);
      a1[3] = (float)((float)(v15 * *(float *)&dword_9F6584) - (float)(v13 * *(float *)&dword_9F6574))
            - (float)(v8 * *(float *)&dword_9F6594);
      a1[4] = (float)((float)(v12 * *(float *)&dword_9F6590) - (float)(v11 * *(float *)&dword_9F6580))
            - (float)(v13 * *(float *)&dword_9F65A0);
      a1[5] = (float)((float)(v11 * *(float *)glitch::core::IdentityMatrix) - (float)(v14 * *(float *)&dword_9F6590))
            + (float)(v15 * *(float *)&dword_9F65A0);
      a1[6] = (float)((float)(v14 * *(float *)&dword_9F6580) - (float)(v12 * *(float *)glitch::core::IdentityMatrix))
            - (float)(v8 * *(float *)&dword_9F65A0);
      a1[7] = (float)((float)(v13 * *(float *)glitch::core::IdentityMatrix) - (float)(v15 * *(float *)&dword_9F6580))
            + (float)(v8 * *(float *)&dword_9F6590);
      a1[8] = (float)((float)(v9 * *(float *)&dword_9F658C) - (float)(v16 * *(float *)&dword_9F659C))
            + (float)(v2 * *(float *)&dword_9F65AC);
      a1[9] = (float)((float)(v3 * *(float *)&dword_9F659C) - (float)(v9 * *(float *)&dword_9F657C))
            - (float)(v4 * *(float *)&dword_9F65AC);
      a1[10] = (float)((float)(v16 * *(float *)&dword_9F657C) - (float)(v3 * *(float *)&dword_9F658C))
             + (float)(v5 * *(float *)&dword_9F65AC);
      a1[11] = (float)((float)(v4 * *(float *)&dword_9F658C) - (float)(v2 * *(float *)&dword_9F657C))
             - (float)(v5 * *(float *)&dword_9F659C);
      a1[12] = (float)((float)(v16 * *(float *)&dword_9F6598) - (float)(v9 * *(float *)&dword_9F6588))
             - (float)(v2 * *(float *)&dword_9F65A8);
      a1[13] = (float)((float)(v9 * *(float *)&dword_9F6578) - (float)(v3 * *(float *)&dword_9F6598))
             + (float)(v4 * *(float *)&dword_9F65A8);
      a1[14] = (float)((float)(v3 * *(float *)&dword_9F6588) - (float)(v16 * *(float *)&dword_9F6578))
             - (float)(v5 * *(float *)&dword_9F65A8);
      a1[15] = (float)((float)(v2 * *(float *)&dword_9F6578) - (float)(v4 * *(float *)&dword_9F6588))
             + (float)(v5 * *(float *)&dword_9F6598);
      v7 = v1;
      do
      {
        *(float *)((char *)a1 + v7) = *(float *)((char *)a1 + v7) * (float)(1.0 / v10);
        v7 += 4;
      }
      while ( v7 != 64 );
      *((_BYTE *)a1 + 64) = 0;
      *((_BYTE *)a1 + 64) = byte_9F65B0;
      return (char *)&dword_0 + 1;
    }
    else
    {
      return (char *)(unsigned __int8)byte_9F65B0;
    }
  }
}


// ===== 664530 glitch::collada::SSkinBuffer::operator=(glitch::collada::SSkinBuffer const&) =====
int __fastcall glitch::collada::SSkinBuffer::operator=(int a1, int *a2, int a3)
{
  int v3; // r3
  glitch::IReferenceCounted *v6; // r0
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterial *v8; // r2
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r2
  glitch::video::CMaterialVertexAttributeMap *v12; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v13; // [sp+4h] [bp-8h] BYREF

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
  v13 = v7;
  if ( v7 )
    ++*(_DWORD *)v7;
  v8 = *(glitch::video::CMaterial **)(a1 + 4);
  if ( v7 )
    v7 = v13;
  *(_DWORD *)(a1 + 4) = v7;
  v13 = v8;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
  v9 = (glitch::video::CMaterialVertexAttributeMap *)a2[2];
  v12 = v9;
  if ( v9 )
  {
    ++*(_DWORD *)v9;
    v9 = v12;
  }
  v10 = *(glitch::video::CMaterialVertexAttributeMap **)(a1 + 8);
  *(_DWORD *)(a1 + 8) = v9;
  v12 = v10;
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(&v12);
  *(_DWORD *)(a1 + 12) = a2[3];
  *(_BYTE *)(a1 + 16) = *((_BYTE *)a2 + 16);
  *(_BYTE *)(a1 + 17) = *((_BYTE *)a2 + 17);
  *(_BYTE *)(a1 + 18) = *((_BYTE *)a2 + 18);
  return a1;
}


// ===== 6645f8 glitch::collada::SSkinBuffer::~SSkinBuffer() =====
void __fastcall glitch::collada::SSkinBuffer::~SSkinBuffer(glitch::video::CMaterialVertexAttributeMap **this)
{
  boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>::~intrusive_ptr(this + 2);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(this + 1);
  if ( *this )
    glitch::IReferenceCounted::drop(*this);
}


// ===== 664628 std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::collada::SSkinBuffer*,glitch::collada::SSkinBuffer*,std::__false_type const&) =====
glitch::collada::SSkinBuffer *__fastcall std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        glitch::collada::SSkinBuffer *this,
        int a3)
{
  glitch::collada::SSkinBuffer *v3; // r4
  int v6; // r3
  int v8; // r10
  glitch::collada::SSkinBuffer *v9; // r10
  int v10; // r6
  int v11; // r4
  glitch::video::CMaterialVertexAttributeMap **v12; // r6
  glitch::video::CMaterialVertexAttributeMap **v13; // r0

  v3 = *(glitch::collada::SSkinBuffer **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v8 = -858993459 * v6;
  if ( -858993459 * v6 > 0 )
  {
    v10 = -858993459 * v6;
    v11 = 0;
    do
    {
      glitch::collada::SSkinBuffer::operator=((int)this + v11, (int *)(a3 + v11), a3);
      --v10;
      v11 += 20;
    }
    while ( v10 );
    v9 = (glitch::collada::SSkinBuffer *)((char *)this + 20 * v8);
    v3 = *(glitch::collada::SSkinBuffer **)(a1 + 4);
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
      v12 += 5;
      glitch::collada::SSkinBuffer::~SSkinBuffer(v13);
    }
    while ( v3 != (glitch::collada::SSkinBuffer *)v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return this;
}


// ===== 6646bc std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::collada::SSkinBuffer*,uint,glitch::collada::SSkinBuffer const&,std::__false_type const&) =====
void __fastcall std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        unsigned int *a1,
        int *a2,
        unsigned int a3,
        unsigned int a4)
{
  int *v6; // r4
  unsigned int v7; // r5
  glitch::video::CMaterialVertexAttributeMap *v8; // r3
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r3
  char v11; // r12
  char v12; // r7
  glitch::video::CMaterialVertexAttributeMap *v13; // lr
  char v14; // r6
  int v15; // r7
  int v16; // r10
  int *v17; // r7
  int v18; // r3
  int v19; // r2
  int v20; // r8
  int v21; // r10
  int v22; // r10
  int v23; // r2
  glitch::video::CMaterialVertexAttributeMap *v24[4]; // [sp+Ch] [bp-28h] BYREF
  char v25; // [sp+1Ch] [bp-18h]
  char v26; // [sp+1Dh] [bp-17h]
  char v27; // [sp+1Eh] [bp-16h]
  char v28[8]; // [sp+2Ch] [bp-8h] BYREF

  v6 = a2;
  if ( a4 < *a1 )
  {
    v7 = a1[1];
    goto LABEL_12;
  }
  v7 = a1[1];
  if ( a4 >= v7 )
  {
LABEL_12:
    v15 = -858993459 * ((int)(v7 - (_DWORD)a2) >> 2);
    if ( a3 >= v15 )
    {
      v22 = v7 + 20 * (a3 - v15);
      std::priv::__ufill<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer,int>(v7, v22, (int *)a4);
      a1[1] = v22;
      std::priv::__ucopy<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,int>(v6, v7, v22);
      a1[1] += 20 * v15;
      if ( v15 > 0 )
      {
        do
        {
          glitch::collada::SSkinBuffer::operator=((int)v6, (int *)a4, v23);
          --v15;
          v6 += 5;
        }
        while ( v15 );
      }
    }
    else
    {
      v16 = 20 * a3;
      v17 = (int *)(v7 - 20 * a3);
      std::priv::__ucopy<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,int>(v17, v7, v7);
      v18 = v17 - v6;
      a1[1] += v16;
      v19 = 858993459 * v18;
      v20 = -858993459 * v18;
      if ( -858993459 * v18 > 0 )
      {
        do
        {
          v7 -= 20;
          v17 -= 5;
          glitch::collada::SSkinBuffer::operator=(v7, v17, v19);
          --v20;
        }
        while ( v20 );
      }
      v21 = -858993459 * (v16 >> 2);
      if ( v21 > 0 )
      {
        do
        {
          glitch::collada::SSkinBuffer::operator=((int)v6, (int *)a4, v19);
          --v21;
          v6 += 5;
        }
        while ( v21 );
      }
    }
    return;
  }
  v8 = *(glitch::video::CMaterialVertexAttributeMap **)a4;
  v24[0] = v8;
  if ( v8 )
    ++*((_DWORD *)v8 + 1);
  v9 = *(glitch::video::CMaterialVertexAttributeMap **)(a4 + 4);
  v24[1] = v9;
  if ( v9 )
    ++*(_DWORD *)v9;
  v10 = *(glitch::video::CMaterialVertexAttributeMap **)(a4 + 8);
  v24[2] = v10;
  if ( v10 )
    ++*(_DWORD *)v10;
  v11 = *(_BYTE *)(a4 + 16);
  v12 = *(_BYTE *)(a4 + 18);
  v13 = *(glitch::video::CMaterialVertexAttributeMap **)(a4 + 12);
  v14 = *(_BYTE *)(a4 + 17);
  v25 = v11;
  v24[3] = v13;
  v26 = v14;
  v27 = v12;
  std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    a1,
    a2,
    a3,
    v24,
    v28);
  glitch::collada::SSkinBuffer::~SSkinBuffer(v24);
}


// ===== 6648c8 std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterialVertexAttributeMap ***__fastcall std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterialVertexAttributeMap ***a1)
{
  glitch::video::CMaterialVertexAttributeMap **v1; // r4
  glitch::video::CMaterialVertexAttributeMap **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 5;
    glitch::collada::SSkinBuffer::~SSkinBuffer(v1);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 66490c std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::collada::SSkinBuffer*,uint,glitch::collada::SSkinBuffer const&) =====
void __fastcall std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        unsigned int *a1,
        int *a2,
        unsigned int a3,
        unsigned int a4)
{
  size_t v8; // r10
  char *v9; // r8
  int v10; // r0
  int v11; // r5
  int v12; // r0
  glitch::video::CMaterialVertexAttributeMap **v13; // r5
  glitch::video::CMaterialVertexAttributeMap **v14; // r6
  int v15; // r7
  int v16; // r2
  _DWORD *v17; // r2
  _DWORD *v18; // r2

  if ( a3 )
  {
    if ( a3 <= -858993459 * ((int)(a1[2] - a1[1]) >> 2) )
    {
      std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      v8 = 20
         * std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
             a1,
             a3);
      v9 = (char *)GlitchAlloc(v8, 0);
      v10 = std::priv::__ucopy<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,int>(
              (int *)*a1,
              (int)a2,
              (int)v9);
      if ( a3 == 1 )
      {
        v16 = *(_DWORD *)a4;
        v11 = v10 + 20;
        *(_DWORD *)v10 = *(_DWORD *)a4;
        if ( v16 )
          ++*(_DWORD *)(v16 + 4);
        v17 = *(_DWORD **)(a4 + 4);
        *(_DWORD *)(v10 + 4) = v17;
        if ( v17 )
          ++*v17;
        v18 = *(_DWORD **)(a4 + 8);
        *(_DWORD *)(v10 + 8) = v18;
        if ( v18 )
          ++*v18;
        *(_DWORD *)(v10 + 12) = *(_DWORD *)(a4 + 12);
        *(_BYTE *)(v10 + 16) = *(_BYTE *)(a4 + 16);
        *(_BYTE *)(v10 + 17) = *(_BYTE *)(a4 + 17);
        *(_BYTE *)(v10 + 18) = *(_BYTE *)(a4 + 18);
      }
      else
      {
        v11 = v10 + 20 * a3;
        std::priv::__ufill<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer,int>(v10, v11, (int *)a4);
      }
      v12 = std::priv::__ucopy<glitch::collada::SSkinBuffer *,glitch::collada::SSkinBuffer *,int>(a2, a1[1], v11);
      v13 = (glitch::video::CMaterialVertexAttributeMap **)a1[1];
      v14 = (glitch::video::CMaterialVertexAttributeMap **)*a1;
      v15 = v12;
      if ( v13 != (glitch::video::CMaterialVertexAttributeMap **)*a1 )
      {
        do
        {
          v13 -= 5;
          glitch::collada::SSkinBuffer::~SSkinBuffer(v13);
        }
        while ( v14 != v13 );
        v14 = (glitch::video::CMaterialVertexAttributeMap **)*a1;
      }
      GlitchFree(v14);
      a1[1] = v15;
      a1[2] = (unsigned int)&v9[v8];
      *a1 = (unsigned int)v9;
    }
  }
}


// ===== 664a90 std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::collada::SSkinBuffer const&) =====
void __fastcall std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        unsigned int a3)
{
  glitch::collada::SSkinBuffer *v3; // r12
  unsigned int v5; // r2
  glitch::collada::SSkinBuffer *v6; // r1

  v3 = *(glitch::collada::SSkinBuffer **)(a1 + 4);
  v5 = -858993459 * (((int)v3 - *(_DWORD *)a1) >> 2);
  if ( a2 >= v5 )
  {
    std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (unsigned int *)a1,
      *(int **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (glitch::collada::SSkinBuffer *)(*(_DWORD *)a1 + 20 * a2);
    if ( v6 != v3 )
      std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v6,
        *(_DWORD *)(a1 + 4));
  }
}


// ===== 664af8 glitch::collada::CSkinnedMesh::instanciateMesh(glitch::video::IVideoDriver *,glitch::collada::CRootSceneNode *) =====
void __fastcall glitch::collada::CSkinnedMesh::instanciateMesh(
        glitch::collada::CSkinnedMesh *this,
        glitch::video::IVideoDriver *a2,
        glitch::collada::CRootSceneNode *a3)
{
  glitch::video::IVideoDriver *v4; // r7
  char *v6; // r5
  glitch::IReferenceCounted *v8; // r10
  glitch::IReferenceCounted *v9; // r0
  glitch::IReferenceCounted *v10; // r3
  _DWORD *v11; // r0
  unsigned int v12; // r0
  glitch::video::CMaterialVertexAttributeMap *v13[4]; // [sp+Ch] [bp-20h] BYREF
  char v14; // [sp+1Ch] [bp-10h]
  char v15; // [sp+1Dh] [bp-Fh]
  char v16; // [sp+1Eh] [bp-Eh]
  glitch::IReferenceCounted *v17; // [sp+20h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18; // [sp+24h] [bp-8h] BYREF

  v4 = (glitch::collada::CSkinnedMesh *)((char *)this + 12);
  v6 = (char *)(*(_DWORD *)(*((_DWORD *)this + 7) + 112) + 1);
  glitch::collada::CColladaDatabase::constructGeometry(
    &v18,
    (glitch::collada::CSkinnedMesh *)((char *)this + 12),
    (const char *)a2,
    v6);
  v8 = v18;
  if ( v18 )
  {
    ++*((_DWORD *)v18 + 1);
    if ( v18 )
      glitch::IReferenceCounted::drop(v18);
    if ( v8 )
      goto LABEL_5;
  }
  glitch::collada::CColladaDatabase::constructController(
    &v17,
    v4,
    (const char *)a2,
    (glitch::collada::CRootSceneNode *)v6,
    a3);
  v8 = v17;
  if ( v17 )
  {
    ++*((_DWORD *)v17 + 1);
    if ( v17 )
      glitch::IReferenceCounted::drop(v17);
    if ( v8 )
    {
LABEL_5:
      ++*((_DWORD *)v8 + 1);
      v9 = *((glitch::IReferenceCounted **)this + 26);
      *((_DWORD *)this + 26) = v8;
      if ( v9 )
      {
        glitch::IReferenceCounted::drop(v9);
        v10 = *((glitch::IReferenceCounted **)this + 26);
      }
      else
      {
        v10 = v8;
      }
      v11 = (_DWORD *)(*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v10 + 36))(v10);
      *((_DWORD *)this + 9) = *v11;
      *((_DWORD *)this + 10) = v11[1];
      *((_DWORD *)this + 11) = v11[2];
      *((_DWORD *)this + 12) = v11[3];
      *((_DWORD *)this + 13) = v11[4];
      *((_DWORD *)this + 14) = v11[5];
    }
  }
  v12 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 26) + 16))(*((_DWORD *)this + 26));
  v16 = -1;
  memset(v13, 0, sizeof(v13));
  v14 = -1;
  v15 = -1;
  std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 92,
    v12,
    (unsigned int)v13);
  glitch::collada::SSkinBuffer::~SSkinBuffer(v13);
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
}


// ===== 664c84 glitch::collada::CSkinnedMesh::setIsSkinningEnabled(bool) =====
int __fastcall glitch::collada::CSkinnedMesh::setIsSkinningEnabled(glitch::collada::CSkinnedMesh *this, _BOOL4 a2)
{
  _DWORD **v4; // r4
  _DWORD **i; // r6
  int v6; // r8
  int v7; // r1
  glitch::IReferenceCounted *v8; // r0
  glitch::video::CVertexStreams *v10; // r8
  int *v11; // [sp+14h] [bp-10h] BYREF
  glitch::IReferenceCounted *v12; // [sp+18h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v13; // [sp+1Ch] [bp-8h] BYREF

  if ( !*((_BYTE *)this + 24) && a2 )
    *((_DWORD *)this + 28) = ~(~HIWORD(*((_DWORD *)this + 28)) << 16);
  if ( (*((_DWORD *)this + 5) & 1) == 0 )
  {
    v4 = *((_DWORD ***)this + 23);
    for ( i = *((_DWORD ***)this + 24); v4 != i; v4 += 5 )
    {
      glitch::collada::CSkinnedMesh::reverifySkinTechnique((int)this, (int)v4);
      if ( (*(int (__fastcall **)(_DWORD *))(*v4[3] + 12))(v4[3]) )
      {
        if ( a2 )
        {
          v6 = (*v4)[5];
          v13 = nullptr;
          glitch::video::CVertexStreams::setStreamBuffer(
            (glitch::video::CVertexStreams *)v6,
            (glitch::IReferenceCounted **)(v6 + 20),
            &v13);
          if ( v13 )
            glitch::IReferenceCounted::drop(v13);
          if ( (*(_DWORD *)(v6 + 4) & 0x20000) == 0 )
            continue;
          v7 = *(unsigned __int8 *)(v6 + 12);
          v12 = nullptr;
          glitch::video::CVertexStreams::setStreamBuffer(
            (glitch::video::CVertexStreams *)v6,
            (glitch::IReferenceCounted **)(v6 + 20 + 16 * (v7 + 1)),
            &v12);
          v8 = v12;
          if ( !v12 )
            continue;
        }
        else
        {
          v10 = (glitch::video::CVertexStreams *)(*v4)[5];
          (*(void (__fastcall **)(int **, _DWORD, int))(**((_DWORD **)this + 26) + 20))(
            &v11,
            *((_DWORD *)this + 26),
            -858993459 * (((int)v4 - *((_DWORD *)this + 23)) >> 2));
          glitch::video::CVertexStreams::setStreams(v10, v11 + 5, 131073, 0, 0);
          v8 = (glitch::IReferenceCounted *)v11;
          if ( !v11 )
            continue;
        }
        glitch::IReferenceCounted::drop(v8);
      }
    }
  }
  return glitch::collada::ISkinnedMesh::setIsSkinningEnabled(this, a2);
}


// ===== 664e0c glitch::collada::CSkinnedMesh::updateTechnique(uint) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CSkinnedMesh::updateTechnique(
        glitch::collada::CSkinnedMesh *this,
        unsigned int a2)
{
  unsigned int v2; // r5
  glitch::IReferenceCounted *result; // r0
  unsigned int v6; // r6
  int v7; // r8
  int (__fastcall *v8)(int, unsigned int, glitch::IReferenceCounted *, _DWORD, _DWORD); // r10
  char v9; // r7
  int v10; // r0
  int v11; // r3
  int v12; // r7
  glitch::IReferenceCounted *v13; // [sp+Ch] [bp-8h] BYREF

  v2 = 20 * a2;
  result = (glitch::IReferenceCounted *)glitch::collada::CSkinnedMesh::reverifySkinTechnique(
                                          (int)this,
                                          *((_DWORD *)this + 23) + 20 * a2);
  v6 = *((_DWORD *)this + 23) + v2;
  if ( *(unsigned __int8 *)(v6 + 16) != *(unsigned __int8 *)(v6 + 17) )
  {
    v7 = *(_DWORD *)(v6 + 12);
    v8 = *(int (__fastcall **)(int, unsigned int, glitch::IReferenceCounted *, _DWORD, _DWORD))(*(_DWORD *)v7 + 20);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 26) + 20))(
      &v13,
      *((_DWORD *)this + 26),
      a2);
    v9 = a2 & 0x1F;
    v10 = v8(
            v7,
            v6,
            v13,
            *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 23) + v2 + 4) + 4) + 4),
            *((unsigned __int8 *)this + 32));
    v11 = *((_DWORD *)this + 5);
    if ( v10 )
      v12 = v11 | (1 << v9);
    else
      v12 = v11 & ~(1 << v9);
    *((_DWORD *)this + 5) = v12;
    result = v13;
    if ( v13 )
      result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v13);
    *(_BYTE *)(*((_DWORD *)this + 23) + v2 + 17) = *(_BYTE *)(*((_DWORD *)this + 23) + v2 + 16);
  }
  return result;
}


// ===== 664ee0 glitch::collada::CSkinnedMesh::skin(uint) =====
glitch::IReferenceCounted *__fastcall glitch::collada::CSkinnedMesh::skin(
        glitch::collada::CSkinnedMesh *this,
        unsigned int a2)
{
  unsigned int v2; // r5
  unsigned int v5; // r7
  int v6; // r8
  int (__fastcall *v7)(int, unsigned int, glitch::IReferenceCounted *, _DWORD, _DWORD); // r10
  unsigned int v8; // r1
  char v9; // r7
  int v10; // r0
  int v11; // r3
  int v12; // r7
  int v13; // r5
  int v14; // r1
  void (__fastcall *v15)(int, unsigned int, glitch::IReferenceCounted *); // r4
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v17; // [sp+8h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v18; // [sp+Ch] [bp-8h] BYREF

  v2 = 20 * a2;
  glitch::collada::CSkinnedMesh::reverifySkinTechnique((int)this, *((_DWORD *)this + 23) + 20 * a2);
  v5 = *((_DWORD *)this + 23) + v2;
  if ( *(unsigned __int8 *)(v5 + 16) != *(unsigned __int8 *)(v5 + 17) )
  {
    v6 = *(_DWORD *)(v5 + 12);
    v7 = *(int (__fastcall **)(int, unsigned int, glitch::IReferenceCounted *, _DWORD, _DWORD))(*(_DWORD *)v6 + 20);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 26) + 20))(
      &v18,
      *((_DWORD *)this + 26),
      a2);
    v8 = v5;
    v9 = a2 & 0x1F;
    v10 = v7(
            v6,
            v8,
            v18,
            *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 23) + v2 + 4) + 4) + 4),
            *((unsigned __int8 *)this + 32));
    v11 = *((_DWORD *)this + 5);
    if ( v10 )
      v12 = v11 | (1 << v9);
    else
      v12 = v11 & ~(1 << v9);
    *((_DWORD *)this + 5) = v12;
    if ( v18 )
      glitch::IReferenceCounted::drop(v18);
    *(_BYTE *)(*((_DWORD *)this + 23) + v2 + 17) = *(_BYTE *)(*((_DWORD *)this + 23) + v2 + 16);
    v5 = *((_DWORD *)this + 23) + v2;
  }
  v13 = *(_DWORD *)(v5 + 12);
  v14 = *((_DWORD *)this + 26);
  v15 = *(void (__fastcall **)(int, unsigned int, glitch::IReferenceCounted *))(*(_DWORD *)v13 + 24);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, unsigned int))(*(_DWORD *)v14 + 20))(&v17, v14, a2);
  v15(v13, v5, v17);
  result = v17;
  if ( v17 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v17);
  return result;
}


// ===== 665004 glitch::collada::CSkinnedMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,uint) =====
int __fastcall glitch::collada::CSkinnedMesh::onPrepareBufferForRendering(int a1, int a2, int a3, int a4)
{
  unsigned int v8; // r0
  int v9; // r3
  int v10; // r2
  int v11; // r7
  int v13; // r7
  int v14; // r10
  int v15; // r9
  int (__fastcall *v16)(int, int, glitch::IReferenceCounted *, _DWORD, _DWORD); // r11
  int v17; // r1
  char v18; // r10
  int v19; // r0
  int v20; // r3
  int v21; // r10
  int v22; // r7
  int v23; // r1
  int (__fastcall *v24)(int, int, int, int, glitch::IReferenceCounted *); // r4
  glitch::IReferenceCounted *v25; // [sp+8h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v26; // [sp+Ch] [bp-8h] BYREF

  v8 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 104) + 56))(*(_DWORD *)(a1 + 104));
  v9 = *(unsigned __int8 *)(a1 + 24);
  if ( a2 == 1 )
    v10 = (v8 >> 2) & 1;
  else
    LOBYTE(v10) = 0;
  v11 = v8;
  *(_BYTE *)(a1 + 35) = v10;
  if ( v9 )
  {
    v13 = 20 * a4;
    glitch::collada::CSkinnedMesh::reverifySkinTechnique(a1, *(_DWORD *)(a1 + 92) + 20 * a4);
    v14 = *(_DWORD *)(a1 + 92) + 20 * a4;
    if ( *(unsigned __int8 *)(v14 + 16) != *(unsigned __int8 *)(v14 + 17) )
    {
      v15 = *(_DWORD *)(v14 + 12);
      v16 = *(int (__fastcall **)(int, int, glitch::IReferenceCounted *, _DWORD, _DWORD))(*(_DWORD *)v15 + 20);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**(_DWORD **)(a1 + 104) + 20))(
        &v26,
        *(_DWORD *)(a1 + 104),
        a4);
      v17 = v14;
      v18 = a4 & 0x1F;
      v19 = v16(
              v15,
              v17,
              v26,
              *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 92) + v13 + 4) + 4) + 4),
              *(unsigned __int8 *)(a1 + 32));
      v20 = *(_DWORD *)(a1 + 20);
      if ( v19 )
        v21 = v20 | (1 << v18);
      else
        v21 = v20 & ~(1 << v18);
      *(_DWORD *)(a1 + 20) = v21;
      if ( v26 )
        glitch::IReferenceCounted::drop(v26);
      *(_BYTE *)(*(_DWORD *)(a1 + 92) + v13 + 17) = *(_BYTE *)(*(_DWORD *)(a1 + 92) + v13 + 16);
      v14 = *(_DWORD *)(a1 + 92) + v13;
    }
    v22 = *(_DWORD *)(v14 + 12);
    v23 = *(_DWORD *)(a1 + 104);
    v24 = *(int (__fastcall **)(int, int, int, int, glitch::IReferenceCounted *))(*(_DWORD *)v22 + 36);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, int, int))(*(_DWORD *)v23 + 20))(&v25, v23, a4);
    v11 = v24(v22, a2, a3, v14, v25);
    if ( v25 )
      glitch::IReferenceCounted::drop(v25);
  }
  else if ( *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 92) + 20 * a4) + 48) + 24) )
  {
    return 8;
  }
  return v11;
}


// ===== 6651a0 glitch::core::operator*<float,glitch::collada::SMatrix>(glitch::core::CMatrix4<float> const&,glitch::collada::SMatrix const&) =====
int __fastcall glitch::core::operator*<float,glitch::collada::SMatrix>(int result, int a2, float *a3)
{
  int v3; // r3

  v3 = 0;
  *(_BYTE *)(result + 64) = 0;
  if ( *(_BYTE *)(a2 + 64) )
  {
    do
    {
      *(_BYTE *)(result + 64) = 0;
      *(float *)(result + v3 * 4) = a3[v3];
      ++v3;
    }
    while ( v3 != 16 );
  }
  else
  {
    *(float *)result = (float)((float)(*(float *)a2 * *a3) + (float)(*(float *)(a2 + 16) * a3[1]))
                     + (float)(*(float *)(a2 + 32) * a3[2]);
    *(float *)(result + 4) = (float)((float)(*(float *)(a2 + 4) * *a3) + (float)(*(float *)(a2 + 20) * a3[1]))
                           + (float)(*(float *)(a2 + 36) * a3[2]);
    *(float *)(result + 8) = (float)((float)(*(float *)(a2 + 8) * *a3) + (float)(*(float *)(a2 + 24) * a3[1]))
                           + (float)(*(float *)(a2 + 40) * a3[2]);
    *(_DWORD *)(result + 12) = 0;
    *(float *)(result + 16) = (float)((float)(*(float *)a2 * a3[4]) + (float)(*(float *)(a2 + 16) * a3[5]))
                            + (float)(*(float *)(a2 + 32) * a3[6]);
    *(float *)(result + 20) = (float)((float)(*(float *)(a2 + 4) * a3[4]) + (float)(*(float *)(a2 + 20) * a3[5]))
                            + (float)(*(float *)(a2 + 36) * a3[6]);
    *(float *)(result + 24) = (float)((float)(*(float *)(a2 + 8) * a3[4]) + (float)(*(float *)(a2 + 24) * a3[5]))
                            + (float)(*(float *)(a2 + 40) * a3[6]);
    *(_DWORD *)(result + 28) = 0;
    *(float *)(result + 32) = (float)((float)(*(float *)a2 * a3[8]) + (float)(*(float *)(a2 + 16) * a3[9]))
                            + (float)(*(float *)(a2 + 32) * a3[10]);
    *(float *)(result + 36) = (float)((float)(*(float *)(a2 + 4) * a3[8]) + (float)(*(float *)(a2 + 20) * a3[9]))
                            + (float)(*(float *)(a2 + 36) * a3[10]);
    *(float *)(result + 40) = (float)((float)(*(float *)(a2 + 8) * a3[8]) + (float)(*(float *)(a2 + 24) * a3[9]))
                            + (float)(*(float *)(a2 + 40) * a3[10]);
    *(_DWORD *)(result + 44) = 0;
    *(float *)(result + 48) = (float)((float)((float)(*(float *)a2 * a3[12]) + (float)(*(float *)(a2 + 16) * a3[13]))
                                    + (float)(*(float *)(a2 + 32) * a3[14]))
                            + *(float *)(a2 + 48);
    *(float *)(result + 52) = (float)((float)((float)(*(float *)(a2 + 4) * a3[12])
                                            + (float)(*(float *)(a2 + 20) * a3[13]))
                                    + (float)(*(float *)(a2 + 36) * a3[14]))
                            + *(float *)(a2 + 52);
    *(float *)(result + 56) = (float)((float)((float)(*(float *)(a2 + 8) * a3[12])
                                            + (float)(*(float *)(a2 + 24) * a3[13]))
                                    + (float)(*(float *)(a2 + 40) * a3[14]))
                            + *(float *)(a2 + 56);
    *(_DWORD *)(result + 60) = 1065353216;
  }
  return result;
}


// ===== 665580 glitch::collada::CSkinnedMesh::getTransform(glitch::core::CMatrix4<float> const&) =====
_BYTE *__fastcall glitch::collada::CSkinnedMesh::getTransform(_BYTE *a1, int a2, int a3)
{
  if ( *(_BYTE *)(a2 + 24) || (*(_DWORD *)(a2 + 20) & 1) != 0 )
  {
    a1[64] = 0;
    memcpy(a1, glitch::core::IdentityMatrix, 0x41u);
    return a1;
  }
  else
  {
    glitch::core::operator*<float,glitch::collada::SMatrix>((int)a1, a3, (float *)(*(_DWORD *)(a2 + 28) + 16));
    return a1;
  }
}


// ===== 6655ec glitch::collada::CSkinnedMesh::setTransform(glitch::video::IVideoDriver *,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::collada::CSkinnedMesh::setTransform(int a1, int a2, int a3)
{
  int (__fastcall *v5)(int, int, _BYTE *); // r6
  _BYTE v6[68]; // [sp+4h] [bp-44h] BYREF

  if ( *(_BYTE *)(a1 + 24) || (*(_DWORD *)(a1 + 20) & 1) != 0 )
    return (*(int (__fastcall **)(int, int, int *))(*(_DWORD *)a2 + 108))(a2, 1, glitch::core::IdentityMatrix);
  v5 = *(int (__fastcall **)(int, int, _BYTE *))(*(_DWORD *)a2 + 108);
  glitch::core::operator*<float,glitch::collada::SMatrix>((int)v6, a3, (float *)(*(_DWORD *)(a1 + 28) + 16));
  return v5(a2, 1, v6);
}


// ===== 665678 glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver *,bool) =====
void __fastcall glitch::collada::CSkinnedMesh::init(
        glitch::collada::CSkinnedMesh *this,
        glitch::video::IVideoDriver *a2,
        int a3)
{
  int v5; // r3
  int v6; // r5
  int v7; // r6
  char v8; // r9
  int v9; // r2
  int v10; // r10
  int v11; // r8
  int (__fastcall *v12)(int, int, glitch::IReferenceCounted *, glitch::video::IVideoDriver *, int); // r7
  int v13; // r0
  int v14; // r3
  int v15; // r9
  int v16; // r3
  _DWORD *v17; // r5
  void *v19; // r0
  int v20; // [sp+Ch] [bp-18h]
  glitch::IReferenceCounted *v22; // [sp+1Ch] [bp-8h] BYREF

  (*(void (__fastcall **)(_DWORD, glitch::video::IVideoDriver *, _DWORD))(**((_DWORD **)this + 26) + 64))(
    *((_DWORD *)this + 26),
    a2,
    0);
  v5 = *((_DWORD *)this + 26);
  *((_BYTE *)this + 32) = a3;
  v20 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 16))(v5);
  if ( v20 )
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v7 & 0x1F;
      glitch::collada::CSkinnedMesh::reverifySkinTechnique((int)this, *((_DWORD *)this + 23) + v6);
      v9 = v7;
      v10 = *((_DWORD *)this + 23) + v6;
      v11 = *(_DWORD *)(v10 + 12);
      ++v7;
      v12 = *(int (__fastcall **)(int, int, glitch::IReferenceCounted *, glitch::video::IVideoDriver *, int))(*(_DWORD *)v11 + 20);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**((_DWORD **)this + 26) + 20))(
        &v22,
        *((_DWORD *)this + 26),
        v9);
      v13 = v12(v11, v10, v22, a2, a3);
      v14 = *((_DWORD *)this + 5);
      if ( v13 )
        v15 = v14 | (1 << v8);
      else
        v15 = v14 & ~(1 << v8);
      *((_DWORD *)this + 5) = v15;
      if ( v22 )
        glitch::IReferenceCounted::drop(v22);
      v16 = *((_DWORD *)this + 23) + v6;
      v6 += 20;
      *(_BYTE *)(v16 + 17) = *(_BYTE *)(v16 + 16);
    }
    while ( v7 != v20 );
  }
  v17 = *((_DWORD **)this + 19);
  if ( v17 )
  {
    if ( (*v17)-- == 1 )
    {
      v19 = (void *)v17[3];
      if ( v19 )
        operator delete[](v19);
      v17[3] = 0;
    }
    *((_DWORD *)this + 19) = 0;
  }
}


// ===== 6657c8 std::vector<glitch::res::onDemandPointer<std::pair<float,ushort>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,ushort>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::res::onDemandPointer<std::pair<float,ushort>>*,glitch::res::onDemandPointer<std::pair<float,ushort>>*,std::__false_type const&) =====
_DWORD **__fastcall std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD **a2,
        int a3)
{
  _DWORD **v3; // r4
  int v6; // r11
  _DWORD **v8; // r9
  int v9; // r4
  int v10; // r8
  _DWORD *v11; // r3
  _DWORD *v12; // r7
  bool v13; // zf
  void *v14; // r0
  _DWORD **v15; // r6
  _DWORD *v16; // r7
  void *v17; // r0

  v3 = *(_DWORD ***)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  if ( v6 > 0 )
  {
    v9 = 0;
    v10 = v6;
    do
    {
      v11 = *(_DWORD **)(a3 + v9 * 4);
      if ( v11 )
        ++*v11;
      v12 = a2[v9];
      if ( v12 )
      {
        v13 = (*v12)-- == 1;
        if ( v13 )
        {
          v14 = (void *)v12[3];
          if ( v14 )
            operator delete[](v14);
          v12[3] = 0;
        }
      }
      --v10;
      a2[v9] = *(_DWORD **)(a3 + v9 * 4);
      ++v9;
    }
    while ( v10 );
    v3 = *(_DWORD ***)(a1 + 4);
    v8 = &a2[v6];
  }
  else
  {
    v8 = a2;
  }
  if ( v3 != v8 )
  {
    v15 = v8;
    do
    {
      v16 = *v15;
      if ( *v15 )
      {
        v13 = (*v16)-- == 1;
        if ( v13 )
        {
          v17 = (void *)v16[3];
          if ( v17 )
            operator delete[](v17);
          v16[3] = 0;
        }
        *v15 = nullptr;
      }
      ++v15;
    }
    while ( v3 != v15 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 6658c0 std::vector<glitch::res::onDemandPointer<std::pair<float,ushort>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,ushort>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        void **a1)
{
  char *v1; // r4
  char *v2; // r7
  _DWORD *v4; // r5
  void *v6; // r0

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((_DWORD **)v1 - 1);
      if ( v4 )
      {
        if ( (*v4)-- == 1 )
        {
          v6 = (void *)v4[3];
          if ( v6 )
            operator delete[](v6);
          v4[3] = 0;
        }
        *((_DWORD *)v1 - 1) = 0;
      }
      v1 -= 4;
    }
    while ( v2 != v1 );
  }
  if ( *a1 )
    GlitchFree(*a1);
  return (char **)a1;
}


// ===== 665938 glitch::collada::CSkinnedMesh::~CSkinnedMesh() =====
void __fastcall glitch::collada::CSkinnedMesh::~CSkinnedMesh(glitch::collada::CSkinnedMesh *this)
{
  glitch::IReferenceCounted *v2; // r0
  _DWORD *v3; // r4
  glitch::collada::CSkinnedMesh *v5; // r4
  int v6; // r3
  void *v7; // r0

  *(_DWORD *)this = off_9847D0;
  glitch::collada::SSkinCache::~SSkinCache((glitch::collada::CSkinnedMesh *)((char *)this + 112));
  v2 = *((glitch::IReferenceCounted **)this + 26);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 23);
  std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 20);
  v3 = *((_DWORD **)this + 19);
  if ( v3 )
  {
    if ( (*v3)-- == 1 )
    {
      v7 = (void *)v3[3];
      if ( v7 )
        operator delete[](v7);
      v3[3] = 0;
    }
    *((_DWORD *)this + 19) = 0;
  }
  v5 = (glitch::collada::CSkinnedMesh *)((char *)this + 76);
  do
  {
    v6 = *((_DWORD *)v5 - 1);
    if ( v6 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)v5 - 1));
    v5 = (glitch::collada::CSkinnedMesh *)((char *)v5 - 4);
  }
  while ( v5 != (glitch::collada::CSkinnedMesh *)((char *)this + 60) );
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 665a1c glitch::collada::CSkinnedMesh::~CSkinnedMesh() =====
void __fastcall glitch::collada::CSkinnedMesh::~CSkinnedMesh(glitch::collada::CSkinnedMesh *this)
{
  glitch::collada::CSkinnedMesh::~CSkinnedMesh(this);
  LC_API_FREE_0(this);
}


// ===== 665a38 glitch::collada::CSkinnedMesh::~CSkinnedMesh() =====
void __fastcall glitch::collada::CSkinnedMesh::~CSkinnedMesh(glitch::collada::CSkinnedMesh *this)
{
  glitch::IReferenceCounted *v2; // r0
  _DWORD *v3; // r4
  glitch::collada::CSkinnedMesh *v5; // r4
  int v6; // r3
  void *v7; // r0

  *(_DWORD *)this = off_9847D0;
  glitch::collada::SSkinCache::~SSkinCache((glitch::collada::CSkinnedMesh *)((char *)this + 112));
  v2 = *((glitch::IReferenceCounted **)this + 26);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  std::vector<glitch::collada::SSkinBuffer,glitch::core::SAllocator<glitch::collada::SSkinBuffer,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterialVertexAttributeMap ***)this + 23);
  std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)this + 20);
  v3 = *((_DWORD **)this + 19);
  if ( v3 )
  {
    if ( (*v3)-- == 1 )
    {
      v7 = (void *)v3[3];
      if ( v7 )
        operator delete[](v7);
      v3[3] = 0;
    }
    *((_DWORD *)this + 19) = 0;
  }
  v5 = (glitch::collada::CSkinnedMesh *)((char *)this + 76);
  do
  {
    v6 = *((_DWORD *)v5 - 1);
    if ( v6 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)v5 - 1));
    v5 = (glitch::collada::CSkinnedMesh *)((char *)v5 - 4);
  }
  while ( v5 != (glitch::collada::CSkinnedMesh *)((char *)this + 60) );
  *(_DWORD *)this = off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 3);
}


// ===== 665b1c std::vector<glitch::res::onDemandPointer<std::pair<float,ushort>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,ushort>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::res::onDemandPointer<std::pair<float,ushort>>*,uint,glitch::res::onDemandPointer<std::pair<float,ushort>> const&,std::__false_type const&) =====
void __fastcall std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        int *a1,
        int a2,
        unsigned int a3,
        int **a4)
{
  int v4; // r12
  unsigned int v7; // r10
  int *v8; // r3
  void *v9; // r0
  int v10; // r8
  int v11; // r8
  unsigned int v12; // r9
  int v13; // r1
  unsigned int v14; // r3
  int v15; // r2
  int *v16; // r3
  int v17; // r7
  _DWORD *v18; // r3
  _DWORD *v19; // r6
  void *v20; // r0
  int v21; // t1
  int v22; // r8
  int v23; // r7
  _DWORD *v24; // r6
  void *v25; // r0
  unsigned int v26; // r2
  int v27; // r6
  unsigned int v28; // r2
  int i; // r1
  int *v30; // r3
  bool v31; // zf
  int v32; // r7
  int v33; // r1
  int *v34; // r3
  _DWORD *v35; // r6
  void *v36; // r0
  int *v37; // [sp+8h] [bp-Ch]

  v4 = *a1;
  if ( (unsigned int)a4 < *a1 )
  {
    v7 = a1[1];
    goto LABEL_13;
  }
  v7 = a1[1];
  if ( (unsigned int)a4 >= v7 )
  {
LABEL_13:
    v10 = (int)(v7 - a2) >> 2;
    if ( a3 >= v10 )
    {
      v26 = a3 - v10;
      v27 = (int)(4 * v26) >> 2;
      v28 = v7 + 4 * v26;
      if ( v27 > 0 )
      {
        for ( i = 0; i != v27; ++i )
        {
          v30 = *a4;
          v31 = *a4 == nullptr;
          *(_DWORD *)(v7 + 4 * i) = *a4;
          if ( !v31 )
            v4 = *v30;
          if ( !v31 )
            *v30 = ++v4;
        }
      }
      a1[1] = v28;
      if ( v10 > 0 )
      {
        v32 = (int)(v7 - a2) >> 2;
        v33 = 0;
        do
        {
          v34 = *(int **)(a2 + v33);
          *(_DWORD *)(v28 + v33) = v34;
          if ( v34 )
            v4 = *v34;
          v33 += 4;
          if ( v34 )
            *v34 = ++v4;
          --v32;
        }
        while ( v32 );
        a1[1] += 4 * v10;
        do
        {
          if ( *a4 )
            ++**a4;
          v35 = *(_DWORD **)(a2 + v32);
          if ( v35 )
          {
            v31 = (*v35)-- == 1;
            if ( v31 )
            {
              v36 = (void *)v35[3];
              if ( v36 )
                operator delete[](v36);
              v35[3] = 0;
            }
          }
          --v10;
          *(_DWORD *)(a2 + v32) = *a4;
          v32 += 4;
        }
        while ( v10 );
      }
      else
      {
        a1[1] = v28 + 4 * v10;
      }
    }
    else
    {
      v11 = 4 * a3;
      v12 = v7 - 4 * a3;
      v13 = (int)(4 * a3) >> 2;
      if ( v13 > 0 )
      {
        v15 = 0;
        do
        {
          v16 = *(int **)(v12 + v15);
          *(_DWORD *)(v7 + v15) = v16;
          if ( v16 )
            v4 = *v16;
          v15 += 4;
          if ( v16 )
            *v16 = ++v4;
          --v13;
        }
        while ( v13 );
        v14 = a1[1];
      }
      else
      {
        v14 = v7;
      }
      v17 = (int)(v12 - a2) >> 2;
      a1[1] = v14 + v11;
      if ( v17 > 0 )
      {
        do
        {
          v18 = *(_DWORD **)(v12 - 4);
          if ( v18 )
            ++*v18;
          v19 = *(_DWORD **)(v7 - 4);
          if ( v19 )
          {
            v31 = (*v19)-- == 1;
            if ( v31 )
            {
              v20 = (void *)v19[3];
              if ( v20 )
                operator delete[](v20);
              v19[3] = 0;
            }
          }
          v21 = *(_DWORD *)(v12 - 4);
          v12 -= 4;
          --v17;
          *(_DWORD *)(v7 - 4) = v21;
          v7 -= 4;
        }
        while ( v17 );
      }
      v22 = v11 >> 2;
      if ( v22 > 0 )
      {
        v23 = 0;
        do
        {
          if ( *a4 )
            ++**a4;
          v24 = *(_DWORD **)(a2 + v23);
          if ( v24 )
          {
            v31 = (*v24)-- == 1;
            if ( v31 )
            {
              v25 = (void *)v24[3];
              if ( v25 )
                operator delete[](v25);
              v24[3] = 0;
            }
          }
          --v22;
          *(_DWORD *)(a2 + v23) = *a4;
          v23 += 4;
        }
        while ( v22 );
      }
    }
    return;
  }
  v8 = *a4;
  v37 = v8;
  if ( v8 )
    ++*v8;
  std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(a1);
  if ( v37 )
  {
    v31 = (*v37)-- == 1;
    if ( v31 )
    {
      v9 = (void *)v37[3];
      if ( v9 )
        operator delete[](v9);
      v37[3] = 0;
    }
  }
}


// ===== 665ddc std::vector<glitch::res::onDemandPointer<std::pair<float,ushort>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,ushort>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::res::onDemandPointer<std::pair<float,ushort>>*,uint,glitch::res::onDemandPointer<std::pair<float,ushort>> const&) =====
void __fastcall std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int *a1,
        int a2,
        unsigned int a3,
        int **a4)
{
  size_t size; // r8
  _DWORD *v9; // r0
  int v10; // r1
  int v11; // r12
  _DWORD *v12; // r9
  int v13; // lr
  int v14; // r2
  _DWORD **v15; // r3
  int v16; // r12
  _DWORD *v17; // r7
  int i; // r2
  int *v19; // r3
  bool v20; // zf
  char *v21; // r0
  int v22; // r12
  int v23; // r1
  int v24; // r2
  void **v25; // r3
  int v26; // r11
  char *v27; // r4
  _DWORD *v28; // r6
  void *v29; // r0
  int *v30; // r3

  if ( a3 )
  {
    if ( a3 <= (a1[2] - a1[1]) >> 2 )
    {
      std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    }
    else
    {
      size = std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
               a1,
               a3);
      v9 = GlitchAlloc(size * 4, 0);
      v11 = *a1;
      v12 = v9;
      v13 = (a2 - *a1) >> 2;
      if ( v13 > 0 )
      {
        v10 = (a2 - *a1) >> 2;
        v14 = 0;
        do
        {
          v15 = *(_DWORD ***)(v11 + v14 * 4);
          v12[v14] = v15;
          if ( v15 )
            v9 = *v15;
          ++v14;
          if ( v15 )
          {
            v9 = (_DWORD *)((char *)v9 + 1);
            *v15 = v9;
          }
          --v10;
        }
        while ( v10 );
        v9 = &v12[v13];
      }
      if ( a3 == 1 )
      {
        v30 = *a4;
        v17 = v9 + 1;
        v20 = *a4 == nullptr;
        *v9 = *a4;
        if ( !v20 )
          ++*v30;
      }
      else
      {
        v16 = (int)(4 * a3) >> 2;
        v17 = &v9[a3];
        if ( v16 > 0 )
        {
          for ( i = 0; i != v16; ++i )
          {
            v19 = *a4;
            v20 = *a4 == nullptr;
            v9[i] = *a4;
            if ( !v20 )
              v10 = *v19;
            if ( !v20 )
              *v19 = ++v10;
          }
        }
      }
      v21 = (char *)a1[1];
      v22 = (int)&v21[-a2] >> 2;
      if ( v22 > 0 )
      {
        v23 = (int)&v21[-a2] >> 2;
        v24 = 0;
        do
        {
          v25 = *(void ***)(a2 + v24 * 4);
          v17[v24] = v25;
          if ( v25 )
            v21 = (char *)*v25;
          ++v24;
          if ( v25 )
            *v25 = ++v21;
          --v23;
        }
        while ( v23 );
        v21 = (char *)a1[1];
        v17 += v22;
      }
      v26 = *a1;
      if ( (char *)*a1 != v21 )
      {
        v27 = v21;
        do
        {
          v28 = *((_DWORD **)v27 - 1);
          if ( v28 )
          {
            v20 = (*v28)-- == 1;
            if ( v20 )
            {
              v29 = (void *)v28[3];
              if ( v29 )
                operator delete[](v29);
              v28[3] = 0;
            }
            *((_DWORD *)v27 - 1) = 0;
          }
          v27 -= 4;
        }
        while ( (char *)v26 != v27 );
        v21 = (char *)*a1;
      }
      GlitchFree(v21);
      a1[1] = (int)v17;
      a1[2] = (int)&v12[size];
      *a1 = (int)v12;
    }
  }
}


// ===== 665f98 std::vector<glitch::res::onDemandPointer<std::pair<float,ushort>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,ushort>>,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::res::onDemandPointer<std::pair<float,ushort>> const&) =====
void __fastcall std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int *a1,
        unsigned int a2,
        int **a3)
{
  _DWORD **v3; // r12
  unsigned int v5; // r2
  _DWORD **v6; // r1

  v3 = (_DWORD **)a1[1];
  v5 = ((int)v3 - *a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (_DWORD **)(*a1 + 4 * a2);
    if ( v6 != v3 )
      std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)a1,
        v6,
        a1[1]);
  }
}


// ===== 665fe8 glitch::collada::CSkinnedMesh::CSkinnedMesh(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController &,glitch::collada::CRootSceneNode *) =====
glitch::collada::CSkinnedMesh *__fastcall glitch::collada::CSkinnedMesh::CSkinnedMesh(
        glitch::collada::CSkinnedMesh *this,
        _DWORD *a2,
        glitch::video::IVideoDriver *a3,
        int a4,
        glitch::collada::CRootSceneNode *a5)
{
  int v6; // r0
  int v8; // r1
  int v9; // r3
  glitch::IReferenceCounted *v10; // r9
  _BOOL4 v11; // r6
  void *v12; // r7
  int v13; // r3
  void *v14; // r7
  int v15; // r3
  void *v16; // r7
  int v17; // r3
  void *v18; // r7
  int v19; // r3
  _DWORD *v21; // r5
  bool v22; // zf
  void *v23; // r0
  int *v24; // r5
  void *v25; // r0
  unsigned int v26; // r1
  int *v27; // r5
  int v28; // r3
  int v29; // r5
  int v30; // r7
  int v31; // r2
  _DWORD *v32; // r3
  void *v33; // r0
  int *v34; // r7
  void *v35; // r0
  void *v36; // r0
  _DWORD *v37; // [sp+4h] [bp-20h]
  _DWORD v38[2]; // [sp+Ch] [bp-18h] BYREF
  int *v39; // [sp+14h] [bp-10h] BYREF
  int *v40; // [sp+18h] [bp-Ch] BYREF
  int *v41; // [sp+1Ch] [bp-8h] BYREF

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v6 = *a2;
  *((_DWORD *)this + 3) = *a2;
  *((_DWORD *)this + 4) = a2[1];
  if ( v6 )
  {
    v8 = *(_DWORD *)(v6 + 4);
    if ( v8 )
      *(_DWORD *)(v6 + 4) = v8 + 1;
  }
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *((_BYTE *)this + 24) = 1;
  *(_DWORD *)this = off_9847D0;
  *((_DWORD *)this + 7) = *(_DWORD *)(a4 + 8);
  *((_DWORD *)this + 11) = -1082130432;
  *((_DWORD *)this + 14) = 1065353216;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 34) = 0;
  *((_BYTE *)this + 35) = 0;
  *((_DWORD *)this + 9) = -1082130432;
  *((_DWORD *)this + 10) = -1082130432;
  *((_DWORD *)this + 12) = 1065353216;
  *((_DWORD *)this + 13) = 1065353216;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 2) = *(_DWORD *)(a4 + 4);
  glitch::collada::CSkinnedMesh::instanciateMesh(this, a3, a5);
  v9 = *(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32);
  v10 = *(glitch::IReferenceCounted **)(v9 + 4);
  v11 = *(_DWORD *)(v9 + 100) > 0;
  if ( v10 )
  {
    v10 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                           + 52)
                                                                             + 12))(
                                         *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                         *((_DWORD *)v10 + 5));
    if ( !v10 )
      v10 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                             + 52)
                                                                               + 12))(
                                           *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                           *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 4) + 20));
  }
  v38[1] = v10;
  v38[0] = off_978560;
  if ( v11 )
  {
    glitch::res::onDemand<glitch::collada::SSkinData<float>>::get(
      &v41,
      *(int **)(*((_DWORD *)this + 7) + 128),
      (int)v38,
      *((_DWORD *)this + 7));
    if ( v41 )
      ++*v41;
    v21 = *((_DWORD **)this + 19);
    if ( v21 )
    {
      v22 = (*v21)-- == 1;
      if ( v22 )
      {
        v23 = (void *)v21[3];
        if ( v23 )
          operator delete[](v23);
        v21[3] = 0;
      }
    }
    v24 = v41;
    v22 = v41 == nullptr;
    *((_DWORD *)this + 19) = v41;
    if ( !v22 )
    {
      v22 = (*v24)-- == 1;
      if ( v22 )
      {
        v25 = (void *)v24[3];
        if ( v25 )
          operator delete[](v25);
        v24[3] = 0;
      }
      v41 = nullptr;
    }
    v26 = *(_DWORD *)(*((_DWORD *)this + 7) + 132);
    v40 = nullptr;
    std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int *)this + 20,
      v26,
      &v40);
    v27 = v40;
    if ( v40 )
    {
      v22 = (*v40)-- == 1;
      if ( v22 )
      {
        v36 = (void *)v27[3];
        if ( v36 )
          operator delete[](v36);
        v27[3] = 0;
      }
      v40 = nullptr;
    }
    v28 = *((_DWORD *)this + 7);
    if ( *(int *)(v28 + 132) > 0 )
    {
      v29 = 0;
      do
      {
        v30 = *((_DWORD *)this + 20);
        glitch::res::onDemand<std::pair<float,unsigned short>>::get(
          &v39,
          *(int **)(*(_DWORD *)(v28 + 136) + 8 * v29 + 4),
          (int)v38,
          *(_DWORD *)(v28 + 136) + 8 * v29);
        v31 = 4 * v29;
        if ( v39 )
          ++*v39;
        v32 = *(_DWORD **)(v30 + 4 * v29);
        if ( v32 )
        {
          v22 = (*v32)-- == 1;
          if ( v22 )
          {
            v33 = (void *)v32[3];
            if ( v33 )
            {
              v37 = v32;
              operator delete[](v33);
              v31 = 4 * v29;
              v32 = v37;
            }
            v32[3] = 0;
          }
        }
        *(_DWORD *)(v30 + v31) = v39;
        v34 = v39;
        if ( v39 )
        {
          v22 = (*v39)-- == 1;
          if ( v22 )
          {
            v35 = (void *)v34[3];
            if ( v35 )
              operator delete[](v35);
            v34[3] = 0;
          }
          v39 = nullptr;
        }
        v28 = *((_DWORD *)this + 7);
        ++v29;
      }
      while ( v29 < *(_DWORD *)(v28 + 132) );
    }
  }
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  v12 = operator new(0x38u, 0);
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(
    v12,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v13 = *((_DWORD *)this + 15);
  *((_DWORD *)this + 15) = v12;
  if ( v13 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v13 + 4))(v13);
  v14 = operator new(0x30u, 0);
  glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(
    v14,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v15 = *((_DWORD *)this + 16);
  *((_DWORD *)this + 16) = v14;
  if ( v15 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v15 + 4))(v15);
  v16 = operator new(0x30u, 0);
  glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(
    v16,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v17 = *((_DWORD *)this + 17);
  *((_DWORD *)this + 17) = v16;
  if ( v17 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v17 + 4))(v17);
  v18 = operator new(0x34u, 0);
  glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(
    v18,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v19 = *((_DWORD *)this + 18);
  *((_DWORD *)this + 18) = v18;
  if ( v19 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v19 + 4))(v19);
  return this;
}


// ===== 6664f0 glitch::collada::CSkinnedMesh::CSkinnedMesh(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController &,glitch::collada::CRootSceneNode *) =====
glitch::collada::CSkinnedMesh *__fastcall glitch::collada::CSkinnedMesh::CSkinnedMesh(
        glitch::collada::CSkinnedMesh *this,
        _DWORD *a2,
        glitch::video::IVideoDriver *a3,
        int a4,
        glitch::collada::CRootSceneNode *a5)
{
  int v6; // r0
  int v8; // r1
  int v9; // r3
  glitch::IReferenceCounted *v10; // r9
  _BOOL4 v11; // r6
  void *v12; // r7
  int v13; // r3
  void *v14; // r7
  int v15; // r3
  void *v16; // r7
  int v17; // r3
  void *v18; // r7
  int v19; // r3
  _DWORD *v21; // r5
  bool v22; // zf
  void *v23; // r0
  int *v24; // r5
  void *v25; // r0
  unsigned int v26; // r1
  int *v27; // r5
  int v28; // r3
  int v29; // r5
  int v30; // r7
  int v31; // r2
  _DWORD *v32; // r3
  void *v33; // r0
  int *v34; // r7
  void *v35; // r0
  void *v36; // r0
  _DWORD *v37; // [sp+4h] [bp-20h]
  _DWORD v38[2]; // [sp+Ch] [bp-18h] BYREF
  int *v39; // [sp+14h] [bp-10h] BYREF
  int *v40; // [sp+18h] [bp-Ch] BYREF
  int *v41; // [sp+1Ch] [bp-8h] BYREF

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_976818;
  v6 = *a2;
  *((_DWORD *)this + 3) = *a2;
  *((_DWORD *)this + 4) = a2[1];
  if ( v6 )
  {
    v8 = *(_DWORD *)(v6 + 4);
    if ( v8 )
      *(_DWORD *)(v6 + 4) = v8 + 1;
  }
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 2) = &unk_9F6F08;
  *((_BYTE *)this + 24) = 1;
  *(_DWORD *)this = off_9847D0;
  *((_DWORD *)this + 7) = *(_DWORD *)(a4 + 8);
  *((_DWORD *)this + 11) = -1082130432;
  *((_DWORD *)this + 14) = 1065353216;
  *((_BYTE *)this + 32) = 0;
  *((_BYTE *)this + 34) = 0;
  *((_BYTE *)this + 35) = 0;
  *((_DWORD *)this + 9) = -1082130432;
  *((_DWORD *)this + 10) = -1082130432;
  *((_DWORD *)this + 12) = 1065353216;
  *((_DWORD *)this + 13) = 1065353216;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 36) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 2) = *(_DWORD *)(a4 + 4);
  glitch::collada::CSkinnedMesh::instanciateMesh(this, a3, a5);
  v9 = *(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32);
  v10 = *(glitch::IReferenceCounted **)(v9 + 4);
  v11 = *(_DWORD *)(v9 + 100) > 0;
  if ( v10 )
  {
    v10 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                           + 52)
                                                                             + 12))(
                                         *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                         *((_DWORD *)v10 + 5));
    if ( !v10 )
      v10 = (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32)
                                                                                             + 52)
                                                                               + 12))(
                                           *(_DWORD *)(*(_DWORD *)(glitch::collada::CResFileManager::Inst + 32) + 52),
                                           *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 4) + 20));
  }
  v38[1] = v10;
  v38[0] = off_978560;
  if ( v11 )
  {
    glitch::res::onDemand<glitch::collada::SSkinData<float>>::get(
      &v41,
      *(int **)(*((_DWORD *)this + 7) + 128),
      (int)v38,
      *((_DWORD *)this + 7));
    if ( v41 )
      ++*v41;
    v21 = *((_DWORD **)this + 19);
    if ( v21 )
    {
      v22 = (*v21)-- == 1;
      if ( v22 )
      {
        v23 = (void *)v21[3];
        if ( v23 )
          operator delete[](v23);
        v21[3] = 0;
      }
    }
    v24 = v41;
    v22 = v41 == nullptr;
    *((_DWORD *)this + 19) = v41;
    if ( !v22 )
    {
      v22 = (*v24)-- == 1;
      if ( v22 )
      {
        v25 = (void *)v24[3];
        if ( v25 )
          operator delete[](v25);
        v24[3] = 0;
      }
      v41 = nullptr;
    }
    v26 = *(_DWORD *)(*((_DWORD *)this + 7) + 132);
    v40 = nullptr;
    std::vector<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float,unsigned short>>,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int *)this + 20,
      v26,
      &v40);
    v27 = v40;
    if ( v40 )
    {
      v22 = (*v40)-- == 1;
      if ( v22 )
      {
        v36 = (void *)v27[3];
        if ( v36 )
          operator delete[](v36);
        v27[3] = 0;
      }
      v40 = nullptr;
    }
    v28 = *((_DWORD *)this + 7);
    if ( *(int *)(v28 + 132) > 0 )
    {
      v29 = 0;
      do
      {
        v30 = *((_DWORD *)this + 20);
        glitch::res::onDemand<std::pair<float,unsigned short>>::get(
          &v39,
          *(int **)(*(_DWORD *)(v28 + 136) + 8 * v29 + 4),
          (int)v38,
          *(_DWORD *)(v28 + 136) + 8 * v29);
        v31 = 4 * v29;
        if ( v39 )
          ++*v39;
        v32 = *(_DWORD **)(v30 + 4 * v29);
        if ( v32 )
        {
          v22 = (*v32)-- == 1;
          if ( v22 )
          {
            v33 = (void *)v32[3];
            if ( v33 )
            {
              v37 = v32;
              operator delete[](v33);
              v31 = 4 * v29;
              v32 = v37;
            }
            v32[3] = 0;
          }
        }
        *(_DWORD *)(v30 + v31) = v39;
        v34 = v39;
        if ( v39 )
        {
          v22 = (*v39)-- == 1;
          if ( v22 )
          {
            v35 = (void *)v34[3];
            if ( v35 )
              operator delete[](v35);
            v34[3] = 0;
          }
          v39 = nullptr;
        }
        v28 = *((_DWORD *)this + 7);
        ++v29;
      }
      while ( v29 < *(_DWORD *)(v28 + 132) );
    }
  }
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  v12 = operator new(0x38u, 0);
  glitch::collada::detail::CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(
    v12,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v13 = *((_DWORD *)this + 15);
  *((_DWORD *)this + 15) = v12;
  if ( v13 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v13 + 4))(v13);
  v14 = operator new(0x30u, 0);
  glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(
    v14,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v15 = *((_DWORD *)this + 16);
  *((_DWORD *)this + 16) = v14;
  if ( v15 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v15 + 4))(v15);
  v16 = operator new(0x30u, 0);
  glitch::collada::detail::CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(
    v16,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v17 = *((_DWORD *)this + 17);
  *((_DWORD *)this + 17) = v16;
  if ( v17 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v17 + 4))(v17);
  v18 = operator new(0x34u, 0);
  glitch::collada::detail::CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(
    v18,
    *((_DWORD *)this + 7),
    (char *)this + 112,
    v11);
  v19 = *((_DWORD *)this + 18);
  *((_DWORD *)this + 18) = v18;
  if ( v19 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v19 + 4))(v19);
  return this;
}


// ===== 6669f8 glitch::collada::CSkinnedMeshSceneNode::getType(void) =====
int __fastcall glitch::collada::CSkinnedMeshSceneNode::getType(glitch::collada::CSkinnedMeshSceneNode *this)
{
  return 1936023908;
}


// ===== 666a04 glitch::collada::CSkinnedMeshSceneNode::getTransformedBoundingBox(void) =====
int __fastcall glitch::collada::CSkinnedMeshSceneNode::getTransformedBoundingBox(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(glitch::collada::CSkinnedMeshSceneNode *))(*(_DWORD *)this + 48))(this);
}


// ===== 666a18 glitch::collada::CSkinnedMeshSceneNode::setIsSkinningEnabled(bool) =====
int __fastcall glitch::collada::CSkinnedMeshSceneNode::setIsSkinningEnabled(
        glitch::collada::CSkinnedMeshSceneNode *this,
        bool a2)
{
  return (*(int (__fastcall **)(_DWORD, bool))(**((_DWORD **)this + 77) + 84))(*((_DWORD *)this + 77), a2);
}


// ===== 666a34 `global constructor keyed to'.._source_glitch_collada_CColladaSkinnedMeshSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaSkinnedMeshSceneNode.cpp()
{
  dword_9F7088 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7084 = 1056964608;
}


// ===== 666a54 glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::collada::SNode *,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(
        int a1,
        int *a2,
        int a3,
        int a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7)
{
  *(_DWORD *)(a1 + 380) = off_95B720;
  *(_DWORD *)(a1 + 384) = 1;
  *(_DWORD *)a1 = off_984D4C;
  *(int *)((char *)&elf_hash_bucket[40] + a1) = (int)off_984D6C;
  glitch::collada::CMeshSceneNode::CMeshSceneNode((int *)a1, (int *)off_98496C, a2, a3, a4, a5, a6, a7);
  *(_BYTE *)(a1 + 376) = 0;
  *(_DWORD *)a1 = off_98484C;
  *(_DWORD *)(a1 + 380) = off_984958;
  LC_API_MEMSET_0((void *)(a1 + 312), 0, 0x40u);
  *(_BYTE *)(a1 + 376) = 1;
  *(_DWORD *)(a1 + 372) = 1065353216;
  *(_DWORD *)(a1 + 312) = 1065353216;
  *(_DWORD *)(a1 + 332) = 1065353216;
  *(_DWORD *)(a1 + 352) = 1065353216;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 666b3c glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::collada::SNode *,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(
        int a1,
        int *a2,
        int *a3,
        int a4,
        int a5,
        _DWORD *a6,
        _DWORD *a7,
        _DWORD *a8)
{
  int v10; // r2

  glitch::collada::CMeshSceneNode::CMeshSceneNode((int *)a1, a2 + 1, a3, a4, a5, a6, a7, a8);
  v10 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v10 - 28)) = a2[10];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[11];
  *(_BYTE *)(a1 + 376) = 0;
  LC_API_MEMSET_0((void *)(a1 + 312), 0, 0x40u);
  *(_BYTE *)(a1 + 376) = 1;
  *(_DWORD *)(a1 + 372) = 1065353216;
  *(_DWORD *)(a1 + 312) = 1065353216;
  *(_DWORD *)(a1 + 332) = 1065353216;
  *(_DWORD *)(a1 + 352) = 1065353216;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 666be4 glitch::scene::ITimeController::update(int) =====
void __fastcall glitch::scene::ITimeController::update(glitch::scene::ITimeController *this, int a2)
{
  ;
}


// ===== 666be8 glitch::scene::ITimeController::~ITimeController() =====
void __fastcall glitch::scene::ITimeController::~ITimeController(glitch::scene::ITimeController *this)
{
  ;
}


// ===== 666bec `virtual thunk to'glitch::scene::ITimeController::~ITimeController() =====
void __fastcall `virtual thunk to'glitch::scene::ITimeController::~ITimeController(
        glitch::scene::ITimeController *this)
{
  glitch::scene::ITimeController::~ITimeController((glitch::scene::ITimeController *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 666bfc glitch::scene::ITimelineController::jumpTo(int) =====
int __fastcall glitch::scene::ITimelineController::jumpTo(int this, int a2)
{
  *(_DWORD *)(this + 4) = a2;
  return this;
}


// ===== 666c04 glitch::scene::ITimelineController::getLoop(void) =====
int __fastcall glitch::scene::ITimelineController::getLoop(glitch::scene::ITimelineController *this)
{
  return 0;
}


// ===== 666c0c glitch::scene::ITimelineController::setScale(float) =====
void __fastcall glitch::scene::ITimelineController::setScale(glitch::scene::ITimelineController *this, float a2)
{
  ;
}


// ===== 666c10 glitch::scene::ITimelineController::getScale(void) =====
int __fastcall glitch::scene::ITimelineController::getScale(glitch::scene::ITimelineController *this)
{
  return 1065353216;
}


// ===== 666c18 glitch::collada::CTimelineController::getScale(void) =====
int __fastcall glitch::collada::CTimelineController::getScale(glitch::collada::CTimelineController *this)
{
  return *((_DWORD *)this + 12);
}


// ===== 666c20 glitch::collada::CTimelineController::setScale(float) =====
int __fastcall glitch::collada::CTimelineController::setScale(int this, float a2)
{
  *(float *)(this + 48) = a2;
  return this;
}


// ===== 666c28 glitch::collada::CTimelineController::setLoop(bool) =====
int __fastcall glitch::collada::CTimelineController::setLoop(int this, bool a2)
{
  *(_BYTE *)(this + 24) = a2;
  return this;
}


// ===== 666c30 glitch::collada::CTimelineController::getLoop(void) =====
int __fastcall glitch::collada::CTimelineController::getLoop(glitch::collada::CTimelineController *this)
{
  return *((unsigned __int8 *)this + 24);
}


// ===== 666c38 glitch::collada::CTimelineController::setRange(int,int,bool) =====
float __fastcall glitch::collada::CTimelineController::setRange(float this, int a2, int a3, int a4)
{
  float v4; // r4

  v4 = this;
  if ( !*(_DWORD *)(LODWORD(this) + 52) )
  {
    *(_DWORD *)(LODWORD(this) + 16) = a2;
    *(_DWORD *)(LODWORD(this) + 20) = a3;
    *(float *)(LODWORD(this) + 32) = (float)a2 / 1000.0;
    this = (float)(a3 - a2) / 1000.0;
    *(float *)(LODWORD(v4) + 36) = this;
  }
  if ( a4 )
    return COERCE_FLOAT(
             (*(int (__fastcall **)(float, _DWORD))(*(_DWORD *)LODWORD(v4) + 12))(
               COERCE_FLOAT(LODWORD(v4)),
               *(_DWORD *)(LODWORD(v4) + 16)));
  return this;
}


// ===== 666cc4 glitch::collada::CTimelineController::getClipCount(void) =====
int __fastcall glitch::collada::CTimelineController::getClipCount(glitch::collada::CTimelineController *this)
{
  int result; // r0

  result = *((_DWORD *)this + 13);
  if ( result )
    return *(_DWORD *)result;
  return result;
}


// ===== 666cd4 glitch::collada::CTimelineController::getClipStart(int) =====
int __fastcall glitch::collada::CTimelineController::getClipStart(glitch::collada::CTimelineController *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 13) + 4) + 12 * a2 + 4);
}


// ===== 666cec glitch::collada::CTimelineController::getClipEnd(int) =====
int __fastcall glitch::collada::CTimelineController::getClipEnd(glitch::collada::CTimelineController *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 13) + 4) + 12 * a2 + 8);
}


// ===== 666d04 glitch::collada::CTimelineController::getClipLength(int) =====
int __fastcall glitch::collada::CTimelineController::getClipLength(glitch::collada::CTimelineController *this, int a2)
{
  int v4; // r5

  v4 = (*(int (__fastcall **)(glitch::collada::CTimelineController *))(*(_DWORD *)this + 36))(this);
  return v4 - (*(int (__fastcall **)(glitch::collada::CTimelineController *, int))(*(_DWORD *)this + 32))(this, a2);
}


// ===== 666d3c glitch::collada::CTimelineController::getCurrentClipStart(void) =====
int __fastcall glitch::collada::CTimelineController::getCurrentClipStart(glitch::collada::CTimelineController *this)
{
  return (*(int (__fastcall **)(glitch::collada::CTimelineController *, _DWORD))(*(_DWORD *)this + 32))(
           this,
           *((_DWORD *)this + 14));
}


// ===== 666d54 glitch::collada::CTimelineController::getCurrentClipEnd(void) =====
int __fastcall glitch::collada::CTimelineController::getCurrentClipEnd(glitch::collada::CTimelineController *this)
{
  return (*(int (__fastcall **)(glitch::collada::CTimelineController *, _DWORD))(*(_DWORD *)this + 36))(
           this,
           *((_DWORD *)this + 14));
}


// ===== 666d6c glitch::collada::CTimelineController::getCurrentClipLength(void) =====
int __fastcall glitch::collada::CTimelineController::getCurrentClipLength(glitch::collada::CTimelineController *this)
{
  return (*(int (__fastcall **)(glitch::collada::CTimelineController *, _DWORD))(*(_DWORD *)this + 40))(
           this,
           *((_DWORD *)this + 14));
}


// ===== 666d84 glitch::collada::CTimelineController::getClipName(int) =====
int __fastcall glitch::collada::CTimelineController::getClipName(glitch::collada::CTimelineController *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 13) + 4) + 12 * a2);
}


// ===== 666d9c glitch::collada::CTimelineController::getCurrentClipIndex(void) =====
int __fastcall glitch::collada::CTimelineController::getCurrentClipIndex(glitch::collada::CTimelineController *this)
{
  return *((_DWORD *)this + 14);
}


// ===== 666da4 glitch::scene::ITimelineController::~ITimelineController() =====
void __fastcall glitch::scene::ITimelineController::~ITimelineController(glitch::scene::ITimelineController *this)
{
  ;
}


// ===== 666da8 `virtual thunk to'glitch::scene::ITimelineController::~ITimelineController() =====
void __fastcall `virtual thunk to'glitch::scene::ITimelineController::~ITimelineController(
        glitch::scene::ITimelineController *this)
{
  glitch::scene::ITimelineController::~ITimelineController((glitch::scene::ITimelineController *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 666db8 glitch::collada::CTimelineController::CTimelineController(void) =====
int __fastcall glitch::collada::CTimelineController::CTimelineController(int this, int *a2)
{
  int v2; // r12
  int v3; // r5
  int v4; // r4

  v2 = a2[2];
  *(_DWORD *)this = v2;
  *(_DWORD *)(this + *(_DWORD *)(v2 - 12)) = a2[3];
  *(_DWORD *)(this + 4) = 0;
  v3 = a2[1];
  *(_DWORD *)this = v3;
  *(_DWORD *)(this + *(_DWORD *)(v3 - 12)) = a2[4];
  *(_DWORD *)(this + 8) = 0;
  v4 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)(this + *(_DWORD *)(v4 - 12)) = a2[5];
  *(_BYTE *)(this + 24) = 1;
  *(_BYTE *)(this + 61) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 1065353216;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_BYTE *)(this + 60) = 0;
  return this;
}


// ===== 666e40 glitch::collada::CTimelineController::CTimelineController(void) =====
int __fastcall glitch::collada::CTimelineController::CTimelineController(int this)
{
  *(_DWORD *)(this + 64) = off_95B720;
  *(_DWORD *)this = &off_984FA4;
  *(_DWORD *)(this + 68) = 1;
  *(int *)((char *)&dword_40 + this) = (int)off_984FC0;
  *(_DWORD *)this = &off_984F24;
  *(_DWORD *)(this + 4) = 0;
  *(int *)((char *)&dword_40 + this) = (int)off_984F88;
  *(_DWORD *)this = &off_984E8C;
  *(_BYTE *)(this + 61) = 0;
  *(_DWORD *)(this + 64) = off_984EF0;
  *(_BYTE *)(this + 24) = 1;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 1065353216;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_BYTE *)(this + 60) = 0;
  return this;
}


// ===== 666efc glitch::collada::CTimelineController::~CTimelineController() =====
void __fastcall glitch::collada::CTimelineController::~CTimelineController(glitch::collada::CTimelineController *this)
{
  ;
}


// ===== 666f00 glitch::collada::CTimelineController::~CTimelineController() =====
void __fastcall glitch::collada::CTimelineController::~CTimelineController(glitch::collada::CTimelineController *this)
{
  ;
}


// ===== 666f04 glitch::collada::CTimelineController::init(int,int) =====
int __fastcall glitch::collada::CTimelineController::init(int this, int a2, int a3)
{
  *(_DWORD *)(this + 20) = a3;
  *(_DWORD *)(this + 16) = a2;
  return this;
}


// ===== 666f10 glitch::collada::CTimelineController::jumpTo(int) =====
float __fastcall glitch::collada::CTimelineController::jumpTo(glitch::collada::CTimelineController *this, int a2)
{
  float result; // r0

  *((_DWORD *)this + 1) = a2;
  result = (float)a2 / 1000.0;
  *((_BYTE *)this + 61) = 0;
  *((float *)this + 11) = result;
  *((_BYTE *)this + 60) = 0;
  return result;
}


// ===== 666f44 glitch::collada::CTimelineController::setClip(char const*) =====
int __fastcall glitch::collada::CTimelineController::setClip(
        glitch::collada::CTimelineController *this,
        const char *a2)
{
  int v3; // r5

  v3 = (*(int (__fastcall **)(glitch::collada::CTimelineController *, const char *))(*(_DWORD *)this + 24))(this, a2);
  if ( v3 >= 0 )
    (*(void (__fastcall **)(glitch::collada::CTimelineController *, int))(*(_DWORD *)this + 16))(this, v3);
  return v3;
}


// ===== 666f7c glitch::collada::CTimelineController::setClip(int) =====
float __fastcall glitch::collada::CTimelineController::setClip(glitch::collada::CTimelineController *this, int a2)
{
  int v3; // r0
  int v4; // r3
  int v5; // r0
  int v6; // r6
  float result; // r0

  *((_DWORD *)this + 14) = a2;
  *((_BYTE *)this + 61) = 0;
  *((_BYTE *)this + 60) = 0;
  v3 = (*(int (__fastcall **)(glitch::collada::CTimelineController *))(*(_DWORD *)this + 44))(this);
  v4 = *(_DWORD *)this;
  *((_DWORD *)this + 4) = v3;
  v5 = (*(int (__fastcall **)(glitch::collada::CTimelineController *))(v4 + 48))(this);
  *((_DWORD *)this + 5) = v5;
  v6 = *((_DWORD *)this + 4);
  *((float *)this + 8) = (float)v6 / 1000.0;
  result = (float)(v5 - v6) / 1000.0;
  *((_DWORD *)this + 1) = v6;
  *((float *)this + 9) = result;
  *((float *)this + 11) = (float)v6 / 1000.0;
  return result;
}


// ===== 667000 `global constructor keyed to'.._source_glitch_collada_CColladaTimelineController.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaTimelineController.cpp()
{
  dword_9F7094 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F7090 = 1056964608;
}


// ===== 667020 glitch::scene::ITimeController::~ITimeController() =====
void __fastcall glitch::scene::ITimeController::~ITimeController(glitch::scene::ITimeController *this)
{
  LC_API_FREE_0(this);
}


// ===== 667034 `virtual thunk to'glitch::scene::ITimeController::~ITimeController() =====
void __fastcall `virtual thunk to'glitch::scene::ITimeController::~ITimeController(
        glitch::scene::ITimeController *this)
{
  glitch::scene::ITimeController::~ITimeController((glitch::scene::ITimeController *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 667044 glitch::scene::ITimelineController::~ITimelineController() =====
void __fastcall glitch::scene::ITimelineController::~ITimelineController(glitch::scene::ITimelineController *this)
{
  *(_DWORD *)this = &off_984DC4;
  LC_API_FREE_0(this);
}


// ===== 667078 `virtual thunk to'glitch::scene::ITimelineController::~ITimelineController() =====
void __fastcall `virtual thunk to'glitch::scene::ITimelineController::~ITimelineController(
        glitch::scene::ITimelineController *this)
{
  glitch::scene::ITimelineController::~ITimelineController((glitch::scene::ITimelineController *)((char *)this
                                                                                                + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 667088 glitch::collada::CTimelineController::~CTimelineController() =====
void __fastcall glitch::collada::CTimelineController::~CTimelineController(glitch::collada::CTimelineController *this)
{
  glitch::collada::CTimelineController::~CTimelineController(this);
  LC_API_FREE_0(this);
}


// ===== 6670a4 glitch::collada::CTimelineController::getClipIndex(char const*) =====
int __fastcall glitch::collada::CTimelineController::getClipIndex(
        glitch::collada::CTimelineController *this,
        const char *a2)
{
  int *v2; // r3
  int v4; // r6
  int v5; // r5
  int v6; // r8
  int v7; // r4

  v2 = *((int **)this + 13);
  v4 = *v2;
  if ( *v2 <= 0 )
    return -1;
  v5 = 0;
  v6 = v2[1];
  v7 = 0;
  while ( LC_API_STRCASECMP_0(*(const char **)(v6 + v5), a2) )
  {
    ++v7;
    v5 += 12;
    if ( v7 == v4 )
      return -1;
  }
  return v7;
}


// ===== 667104 glitch::collada::CTimelineController::update(int) =====
int __fastcall glitch::collada::CTimelineController::update(glitch::collada::CTimelineController *this, int a2)
{
  float v3; // r5
  float v4; // r0
  float v5; // r10
  float v6; // r6
  float v7; // r0
  float v8; // r5
  _BOOL4 v9; // r0
  float v10; // r6
  float v11; // r1
  void (__fastcall *v12)(glitch::collada::CTimelineController *, _DWORD); // r3
  float v13; // r8
  float v14; // r0
  float v15; // r7
  float v16; // r0
  int result; // r0
  int v18; // r3
  void (__fastcall *v19)(glitch::collada::CTimelineController *, _DWORD); // r3

  v3 = (float)a2 / 1000.0;
  if ( *((_BYTE *)this + 61) )
  {
    v13 = (float)((float)((float)a2 / 1000.0) - *((float *)this + 10)) * *((float *)this + 12);
    v14 = v13 + *((float *)this + 11);
    *((float *)this + 10) = v3;
    v15 = v14;
    *((float *)this + 11) = v14;
    v5 = v13;
    v6 = v14;
    if ( v13 < 0.0 )
    {
      v16 = (float)*((int *)this + 4) / 1000.0;
      v8 = v16;
      v10 = *((float *)this + 8) + *((float *)this + 9);
      *((_DWORD *)this + 7) = LODWORD(v13) + 0x80000000;
      if ( v15 >= v16 )
        goto LABEL_14;
      goto LABEL_5;
    }
  }
  else
  {
    v4 = *((float *)this + 11);
    *((_BYTE *)this + 61) = 1;
    v5 = 0.0;
    v6 = v4 + 0.0;
    *((float *)this + 10) = v3;
    *((float *)this + 11) = v4 + 0.0;
  }
  v7 = (float)*((int *)this + 5) / 1000.0;
  v8 = v7;
  *((float *)this + 7) = v5;
  v9 = v6 > v7;
  v10 = *((float *)this + 8);
  if ( !v9 )
    goto LABEL_14;
LABEL_5:
  if ( *((_BYTE *)this + 24) )
  {
    if ( *((float *)this + 9) == 0.0 )
      v11 = 0.0;
    else
      v11 = fmodf(*((float *)this + 11) - v8, *((float *)this + 9));
    v12 = *((void (__fastcall **)(glitch::collada::CTimelineController *, _DWORD))this + 2);
    v8 = v10 + v11;
    *((float *)this + 11) = v10 + v11;
    if ( v12 )
    {
      v12(this, *((_DWORD *)this + 3));
      v8 = *((float *)this + 11);
    }
  }
  else
  {
    v18 = *((unsigned __int8 *)this + 60);
    *((float *)this + 11) = v8;
    if ( !v18 )
    {
      v19 = *((void (__fastcall **)(glitch::collada::CTimelineController *, _DWORD))this + 2);
      *((_BYTE *)this + 60) = 1;
      if ( v19 )
      {
        v19(this, *((_DWORD *)this + 3));
LABEL_14:
        v8 = *((float *)this + 11);
      }
    }
  }
  result = (int)(float)(v8 * 1000.0);
  *((_DWORD *)this + 1) = result;
  return result;
}


// ===== 667300 `virtual thunk to'glitch::collada::CTimelineController::~CTimelineController() =====
void __fastcall `virtual thunk to'glitch::collada::CTimelineController::~CTimelineController(
        glitch::collada::CTimelineController *this)
{
  glitch::collada::CTimelineController::~CTimelineController((glitch::collada::CTimelineController *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 667310 `virtual thunk to'glitch::collada::CTimelineController::~CTimelineController() =====
void __fastcall `virtual thunk to'glitch::collada::CTimelineController::~CTimelineController(
        glitch::collada::CTimelineController *this)
{
  glitch::collada::CTimelineController::~CTimelineController((glitch::collada::CTimelineController *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 667320 glitch::collada::IAnimationSetTemplate::setUnAdded(void) =====
int __fastcall glitch::collada::IAnimationSetTemplate::setUnAdded(int this)
{
  int v1; // r2
  unsigned int v2; // r3
  int v3; // r2

  v1 = *(_DWORD *)(this + 4);
  if ( (unsigned int)(*(_DWORD *)(this + 8) - v1) >> 2 )
  {
    v2 = 0;
    do
    {
      **(_BYTE **)(v1 + 4 * v2) = 0;
      v3 = *(_DWORD *)(*(_DWORD *)(this + 4) + 4 * v2++);
      *(_DWORD *)(v3 + 12) = 0;
      v1 = *(_DWORD *)(this + 4);
    }
    while ( v2 < (*(_DWORD *)(this + 8) - v1) >> 2 );
  }
  return this;
}


// ===== 667364 `global constructor keyed to'.._source_glitch_collada_IAnimationSetTemplate.cpp =====
void `global constructor keyed to'.._source_glitch_collada_IAnimationSetTemplate.cpp()
{
  dword_9F70A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F709C = 1056964608;
}


// ===== 667384 glitch::collada::IAnimationSetTemplate::addChannels(std::vector<glitch::collada::SChannel const*,glitch::core::SAllocator<glitch::collada::SChannel const*,(glitch::memory::E_MEMORY_HINT)0>> *,std::vector*<glitch::collada::CAnimationTrackEx const*,glitch::core::SAllocator<glitch::collada::CAnimationTrackEx const,(glitch::memory::E_MEMORY_HINT)0>>) =====
int __fastcall glitch::collada::IAnimationSetTemplate::addChannels(int a1)
{
  int v2; // r3
  int result; // r0
  unsigned int v4; // r4
  _BYTE *v5; // r2
  _DWORD *v6; // r8
  int v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  result = *(_DWORD *)(a1 + 8);
  if ( (unsigned int)(result - v2) >> 2 )
  {
    v4 = 0;
    do
    {
      while ( 1 )
      {
        v5 = *(_BYTE **)(v2 + 4 * v4);
        if ( !*v5 )
          break;
        if ( ++v4 >= (result - v2) >> 2 )
          return result;
      }
      v6 = operator new(0x10u, (unsigned __int8)*v5);
      v6[2] = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 4) + 4 * v4) + 4);
      v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 4) + 4 * v4) + 8);
      v6[1] = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 84))(v7);
      *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 4) + 4 * v4) + 12) = v6;
      switch ( v6[2] )
      {
        case 1:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionMixin<float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 2:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>,0,float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 3:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>,1,float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 4:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>,2,float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 5:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 6:
        case 7:
        case 8:
        case 9:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion,glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 0xA:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 0xB:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>,0,float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 0xC:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>,1,float>>>::getInstance();
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
        case 0xD:
          glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>,glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>,2,float>>>::getInstance();
          goto LABEL_7;
        default:
LABEL_7:
          **(_BYTE **)(*(_DWORD *)(a1 + 4) + 4 * v4) = 1;
          v2 = *(_DWORD *)(a1 + 4);
          result = *(_DWORD *)(a1 + 8);
          break;
      }
      ++v4;
    }
    while ( v4 < (result - v2) >> 2 );
  }
  return result;
}


// ===== 667588 glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate() =====
void __fastcall glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate(
        glitch::collada::IAnimationSetTemplate *this)
{
  _BYTE *v1; // r12
  _DWORD *v2; // r1
  unsigned int v4; // r4
  int v5; // r3
  void *v6; // r0
  glitch::core *v7; // r0

  v1 = *((_BYTE **)this + 2);
  v2 = *((_DWORD **)this + 1);
  *(_DWORD *)this = off_984FD8;
  if ( (unsigned int)(v1 - (_BYTE *)v2) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = v2[v4++];
      v6 = *(void **)(v5 + 12);
      if ( v6 )
      {
        LC_API_FREE_0(v6);
        v2 = *((_DWORD **)this + 1);
        v1 = *((_BYTE **)this + 2);
      }
    }
    while ( v4 < (v1 - (_BYTE *)v2) >> 2 );
  }
  v7 = *((glitch::core **)this + 1);
  if ( v1 != (_BYTE *)v2 )
    *((_DWORD *)this + 2) = v2;
  if ( v7 )
    glitch::core::releaseProcessBuffer(v7, v2);
}


// ===== 667610 glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate() =====
void __fastcall glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate(
        glitch::collada::IAnimationSetTemplate *this)
{
  glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate(this);
  LC_API_FREE_0(this);
}


// ===== 66762c glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate() =====
void __fastcall glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate(
        glitch::collada::IAnimationSetTemplate *this)
{
  _BYTE *v1; // r12
  _DWORD *v2; // r1
  unsigned int v4; // r4
  int v5; // r3
  void *v6; // r0
  glitch::core *v7; // r0

  v1 = *((_BYTE **)this + 2);
  v2 = *((_DWORD **)this + 1);
  *(_DWORD *)this = off_984FD8;
  if ( (unsigned int)(v1 - (_BYTE *)v2) >> 2 )
  {
    v4 = 0;
    do
    {
      v5 = v2[v4++];
      v6 = *(void **)(v5 + 12);
      if ( v6 )
      {
        LC_API_FREE_0(v6);
        v2 = *((_DWORD **)this + 1);
        v1 = *((_BYTE **)this + 2);
      }
    }
    while ( v4 < (v1 - (_BYTE *)v2) >> 2 );
  }
  v7 = *((glitch::core **)this + 1);
  if ( v1 != (_BYTE *)v2 )
    *((_DWORD *)this + 2) = v2;
  if ( v7 )
    glitch::core::releaseProcessBuffer(v7, v2);
}


// ===== 6676b4 glitch::collada::IMesh::onAnimate(uint) =====
void __fastcall glitch::collada::IMesh::onAnimate(glitch::collada::IMesh *this, unsigned int a2)
{
  ;
}


// ===== 6676b8 glitch::collada::IMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,uint) =====
int glitch::collada::IMesh::onPrepareBufferForRendering()
{
  return 16;
}


// ===== 6676c0 glitch::collada::IMesh::releaseProcessBuffer(glitch::video::IVideoDriver *,uint) =====
void __fastcall glitch::collada::IMesh::releaseProcessBuffer(
        glitch::collada::IMesh *this,
        glitch::video::IVideoDriver *a2,
        unsigned int a3)
{
  ;
}


// ===== 6676c4 glitch::collada::IMesh::init(glitch::video::IVideoDriver *,bool) =====
void __fastcall glitch::collada::IMesh::init(glitch::collada::IMesh *this, glitch::video::IVideoDriver *a2, bool a3)
{
  ;
}


// ===== 6676c8 glitch::collada::IMesh::setTransform(glitch::video::IVideoDriver *,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::collada::IMesh::setTransform(int a1, int a2)
{
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 108))(a2, 1);
}


// ===== 6676e4 `global constructor keyed to'.._source_glitch_collada_IColladaMesh.cpp =====
void `global constructor keyed to'.._source_glitch_collada_IColladaMesh.cpp()
{
  dword_9F70AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70A8 = 1056964608;
}


// ===== 667704 glitch::collada::IMesh::~IMesh() =====
void __fastcall glitch::collada::IMesh::~IMesh(glitch::IReferenceCounted **this)
{
  *this = (glitch::IReferenceCounted *)off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase(this + 3);
}


// ===== 667738 glitch::collada::IMesh::~IMesh() =====
void __fastcall glitch::collada::IMesh::~IMesh(glitch::IReferenceCounted **this)
{
  *this = (glitch::IReferenceCounted *)off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase(this + 3);
  LC_API_FREE_0(this);
}


// ===== 667774 glitch::collada::IParticleSystemSceneNode::clone(void) =====
int __fastcall glitch::collada::IParticleSystemSceneNode::clone(glitch::collada::IParticleSystemSceneNode *this)
{
  return 0;
}


// ===== 66777c glitch::collada::IParticleSystemSceneNode::getMaterial(uint) =====
_DWORD *__fastcall glitch::collada::IParticleSystemSceneNode::getMaterial(_DWORD *this, unsigned int a2, int a3)
{
  _DWORD *v3; // r3

  v3 = *(_DWORD **)(*(_DWORD *)(a2 + 344) + 4 * a3);
  *this = v3;
  if ( v3 )
    ++*v3;
  return this;
}


// ===== 66779c glitch::collada::IParticleSystemSceneNode::getMaterialCount(void) =====
int __fastcall glitch::collada::IParticleSystemSceneNode::getMaterialCount(
        glitch::collada::IParticleSystemSceneNode *this)
{
  return (*((_DWORD *)this + 87) - *((_DWORD *)this + 86)) >> 2;
}


// ===== 6677b0 `global constructor keyed to'.._source_glitch_collada_IColladaParticleSystemSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_IColladaParticleSystemSceneNode.cpp()
{
  dword_9F70B8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70B4 = 1056964608;
}


// ===== 6677d0 glitch::collada::IParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
// attributes: thunk
int __fastcall glitch::collada::IParticleSystemSceneNode::serializeAttributes(int result, int a2, _DWORD *a3)
{
  return glitch::scene::ISceneNode::serializeAttributes(result, a2, a3);
}


// ===== 6677d4 glitch::collada::IParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
// attributes: thunk
int __fastcall glitch::collada::IParticleSystemSceneNode::deserializeAttributes(int result, int *a2, _DWORD *a3)
{
  return glitch::scene::ISceneNode::deserializeAttributes(result, a2, a3);
}


// ===== 6677d8 std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CMaterial>,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterial ***__fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CMaterial>,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterial ***a1)
{
  glitch::video::CMaterial **v1; // r4
  glitch::video::CMaterial **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(--v1);
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 66781c glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::collada::IParticleSystemSceneNode *this)
{
  void *v2; // r0
  glitch::IReferenceCounted *v3; // r0

  v2 = *((void **)this + 89);
  *(_DWORD *)this = off_985054;
  *((_DWORD *)this + 94) = off_985170;
  if ( v2 )
    GlitchFree(v2);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CMaterial>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 86);
  v3 = *((glitch::IReferenceCounted **)this + 80);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 77);
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_985184);
}


// ===== 66789c glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::collada::IParticleSystemSceneNode *this)
{
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6678b8 glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::collada::IParticleSystemSceneNode *this,
        int *a2)
{
  int v2; // r3
  void *v5; // r0
  glitch::IReferenceCounted *v6; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  v5 = *((void **)this + 89);
  if ( v5 )
    GlitchFree(v5);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CMaterial>,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 86);
  v6 = *((glitch::IReferenceCounted **)this + 80);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 77);
  glitch::scene::ISceneNode::~ISceneNode(this, a2 + 1);
}


// ===== 66792c glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(glitch::collada::CColladaDatabase const&,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(int a1, int *a2, int a3, int a4)
{
  int v8; // r3
  int v9; // r2
  _DWORD v11[4]; // [sp+8h] [bp+0h] BYREF
  _DWORD v12[3]; // [sp+18h] [bp+10h] BYREF
  _DWORD v13[4]; // [sp+24h] [bp+1Ch] BYREF

  *(_DWORD *)(a1 + 376) = off_95B720;
  *(_DWORD *)a1 = off_9852DC;
  *(_DWORD *)(a1 + 380) = 1;
  *(int *)((char *)&elf_hash_bucket[39] + a1) = (int)off_9852FC;
  v12[2] = 1065353216;
  memset(v13, 0, 12);
  memset(v11, 0, 12);
  v11[3] = 1065353216;
  v12[0] = 1065353216;
  v12[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, (int *)off_985184, -1, v13, v11, v12);
  v8 = *a2;
  *(_DWORD *)(a1 + 308) = *a2;
  *(_DWORD *)(a1 + 312) = a2[1];
  if ( v8 )
  {
    v9 = *(_DWORD *)(v8 + 4);
    if ( v9 )
      *(_DWORD *)(v8 + 4) = v9 + 1;
  }
  *(_BYTE *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 304) = &unk_9F6F08;
  *(_DWORD *)a1 = off_985054;
  *(_DWORD *)(a1 + 376) = off_985170;
  *(_BYTE *)(a1 + 316) = 0;
  *(_BYTE *)(a1 + 317) = 0;
  *(_BYTE *)(a1 + 318) = 0;
  *(_BYTE *)(a1 + 319) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 336) = a3;
  *(_DWORD *)(a1 + 340) = a4;
  glitch::collada::CRootSceneNode::addParticleSystem(a4, a1);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 667a98 glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(glitch::collada::CColladaDatabase const&,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(
        int a1,
        int *a2,
        int *a3,
        int a4,
        int a5)
{
  int v9; // r3
  int v10; // r2
  int v11; // r2
  _DWORD v13[4]; // [sp+8h] [bp-28h] BYREF
  _DWORD v14[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v15[3]; // [sp+24h] [bp-Ch] BYREF

  v14[2] = 1065353216;
  memset(v15, 0, sizeof(v15));
  memset(v13, 0, 12);
  v13[3] = 1065353216;
  v14[0] = 1065353216;
  v14[1] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 1, -1, v15, v13, v14);
  v9 = *a3;
  *(_DWORD *)(a1 + 308) = *a3;
  *(_DWORD *)(a1 + 312) = a3[1];
  if ( v9 )
  {
    v10 = *(_DWORD *)(v9 + 4);
    if ( v10 )
      *(_DWORD *)(v9 + 4) = v10 + 1;
  }
  *(_DWORD *)(a1 + 304) = &unk_9F6F08;
  v11 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 28)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  *(_BYTE *)(a1 + 368) = 0;
  *(_BYTE *)(a1 + 316) = 0;
  *(_BYTE *)(a1 + 317) = 0;
  *(_BYTE *)(a1 + 318) = 0;
  *(_BYTE *)(a1 + 319) = 0;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 336) = a4;
  *(_DWORD *)(a1 + 340) = a5;
  glitch::collada::CRootSceneNode::addParticleSystem(a5, a1);
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 2);
  return a1;
}


// ===== 667bd4 `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::collada::IParticleSystemSceneNode *this)
{
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::collada::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 667be4 `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::collada::IParticleSystemSceneNode *this)
{
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::collada::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 667bf4 `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::collada::IParticleSystemSceneNode *this)
{
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::collada::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 667c04 `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode(
        glitch::collada::IParticleSystemSceneNode *this)
{
  glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode((glitch::collada::IParticleSystemSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 667c14 `virtual thunk to'glitch::collada::IParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::IParticleSystemSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  return glitch::collada::IParticleSystemSceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2, a3);
}


// ===== 667c24 `virtual thunk to'glitch::collada::IParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::IParticleSystemSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  return glitch::collada::IParticleSystemSceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2, a3);
}


// ===== 667c34 glitch::collada::animation_track::CApplicatorInfo::~CApplicatorInfo() =====
void __fastcall glitch::collada::animation_track::CApplicatorInfo::~CApplicatorInfo(
        glitch::collada::animation_track::CApplicatorInfo *this)
{
  ;
}


// ===== 667c38 glitch::collada::getStringsInternal(glitch::collada::ISceneNodeAnimator::E_INTERPOLATION_MODE *) =====
char **glitch::collada::getStringsInternal()
{
  return &glitch::collada::getStringsInternal(glitch::collada::ISceneNodeAnimator::E_INTERPOLATION_MODE *)::strings;
}


// ===== 667c48 glitch::collada::ISceneNodeAnimator::updateTime(uint) =====
int __fastcall glitch::collada::ISceneNodeAnimator::updateTime(
        glitch::collada::ISceneNodeAnimator *this,
        unsigned int a2)
{
  int result; // r0
  _DWORD *v5; // r4
  unsigned int v6; // r1
  int v7; // r6
  int v8; // r12

  result = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *))(*(_DWORD *)this + 68))(this);
  v5 = (_DWORD *)result;
  if ( result )
  {
    v6 = a2;
    v7 = *(_DWORD *)(result + 4);
    result = (**(int (__fastcall ***)(int, unsigned int))result)(result, v6);
    v8 = *((_DWORD *)this + 6);
    if ( v8 )
      return (*(int (__fastcall **)(_DWORD, int, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v8 + 16))(
               *((_DWORD *)this + 6),
               v7,
               v5[1],
               v5[4],
               v5[5]);
  }
  return result;
}


// ===== 667cb4 glitch::collada::ISceneNodeAnimator::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::collada::ISceneNodeAnimator::serializeAttributes()
{
  ;
}


// ===== 667cb8 glitch::collada::ISceneNodeAnimator::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::collada::ISceneNodeAnimator::deserializeAttributes()
{
  ;
}


// ===== 667cbc glitch::collada::ISceneNodeAnimator::createClone(void) =====
int __fastcall glitch::collada::ISceneNodeAnimator::createClone(glitch::collada::ISceneNodeAnimator *this)
{
  return 0;
}


// ===== 667cc4 glitch::collada::ISceneNodeAnimator::getLength(void) =====
int __fastcall glitch::collada::ISceneNodeAnimator::getLength(glitch::collada::ISceneNodeAnimator *this)
{
  return *((_DWORD *)this + 5);
}


// ===== 667ccc glitch::collada::animation_track::CMaterialApplicatorInfo::~CMaterialApplicatorInfo() =====
void __fastcall glitch::collada::animation_track::CMaterialApplicatorInfo::~CMaterialApplicatorInfo(
        glitch::collada::animation_track::CMaterialApplicatorInfo *this)
{
  ;
}


// ===== 667cd0 `global constructor keyed to'.._source_glitch_collada_IColladaSceneNodeAnimator.cpp =====
void `global constructor keyed to'.._source_glitch_collada_IColladaSceneNodeAnimator.cpp()
{
  dword_9F70C4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70C0 = 1056964608;
}


// ===== 667cf0 glitch::collada::animation_track::CApplicatorInfo::~CApplicatorInfo() =====
void __fastcall glitch::collada::animation_track::CApplicatorInfo::~CApplicatorInfo(
        glitch::collada::animation_track::CApplicatorInfo *this)
{
  LC_API_FREE_0(this);
}


// ===== 667d04 glitch::collada::animation_track::CMaterialApplicatorInfo::~CMaterialApplicatorInfo() =====
void __fastcall glitch::collada::animation_track::CMaterialApplicatorInfo::~CMaterialApplicatorInfo(
        glitch::collada::animation_track::CMaterialApplicatorInfo *this)
{
  LC_API_FREE_0(this);
}


// ===== 667d18 glitch::collada::ISceneNodeAnimator::forceUnbind(char const*) =====
int __fastcall glitch::collada::ISceneNodeAnimator::forceUnbind(
        glitch::collada::ISceneNodeAnimator *this,
        const char *a2)
{
  int result; // r0
  int v5; // r7
  int v6; // r4
  int v7; // r0
  int v8; // r1

  result = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *))(*(_DWORD *)this + 112))(this);
  v5 = result;
  if ( result > 0 )
  {
    v6 = 0;
    do
    {
      while ( 1 )
      {
        v7 = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *, int))(*(_DWORD *)this + 84))(this, v6);
        result = LC_API_STRCMP_0(*(const char **)(v7 + 4), a2);
        if ( !result )
          break;
        if ( ++v6 == v5 )
          return result;
      }
      v8 = v6++;
      result = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *, int, _DWORD, _DWORD))(*(_DWORD *)this + 104))(
                 this,
                 v8,
                 0,
                 0);
    }
    while ( v6 != v5 );
  }
  return result;
}


// ===== 667d9c glitch::collada::ISceneNodeAnimator::onUnbind(glitch::scene::ISceneNode *) =====
int __fastcall glitch::collada::ISceneNodeAnimator::onUnbind(
        glitch::collada::ISceneNodeAnimator *this,
        glitch::scene::ISceneNode *a2)
{
  const char *v3; // r1

  v3 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 84))(a2);
  return glitch::collada::ISceneNodeAnimator::forceUnbind(this, v3);
}


// ===== 667dc4 glitch::collada::ISceneNodeAnimator::setTarget(char const*,void *) =====
int __fastcall glitch::collada::ISceneNodeAnimator::setTarget(
        glitch::collada::ISceneNodeAnimator *this,
        const char *a2,
        void *a3)
{
  int result; // r0
  int v7; // r7
  int v8; // r6
  const char *v9; // r0

  result = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *))(*(_DWORD *)this + 112))(this);
  v7 = result;
  if ( result > 0 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = (const char *)(*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *, int))(*(_DWORD *)this + 108))(
                           this,
                           v8);
      result = LC_API_STRCMP_0(v9, a2);
      if ( !result )
        break;
      if ( ++v8 == v7 )
        return result;
    }
    return (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *, int, void *))(*(_DWORD *)this + 104))(
             this,
             v8,
             a3);
  }
  return result;
}


// ===== 667e40 glitch::collada::ISceneNodeAnimator::forceUnbindAll(void) =====
int __fastcall glitch::collada::ISceneNodeAnimator::forceUnbindAll(glitch::collada::ISceneNodeAnimator *this)
{
  glitch::scene::ISceneNode *v2; // r6
  int result; // r0
  int v4; // r7
  int v5; // r5
  const char *v6; // r0
  glitch::scene::ISceneNode *SceneNodeFromUID; // r0
  int v8; // r1

  v2 = *((glitch::scene::ISceneNode **)this + 4);
  result = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *))(*(_DWORD *)this + 112))(this);
  v4 = result;
  if ( result > 0 )
  {
    v5 = 0;
    do
    {
      v6 = (const char *)(*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *, int))(*(_DWORD *)this + 108))(
                           this,
                           v5);
      SceneNodeFromUID = glitch::scene::ISceneNode::getSceneNodeFromUID(v2, v6);
      if ( SceneNodeFromUID )
        (*(void (__fastcall **)(glitch::scene::ISceneNode *, glitch::collada::ISceneNodeAnimator *))(*(_DWORD *)SceneNodeFromUID + 124))(
          SceneNodeFromUID,
          this);
      v8 = v5++;
      result = (*(int (__fastcall **)(glitch::collada::ISceneNodeAnimator *, int, _DWORD, _DWORD))(*(_DWORD *)this + 104))(
                 this,
                 v8,
                 0,
                 0);
    }
    while ( v5 != v4 );
  }
  *((_DWORD *)this + 4) = 0;
  return result;
}


// ===== 667ed0 glitch::collada::animation_track::CMaterialApplicatorInfo::clone(void) =====
_DWORD *__fastcall glitch::collada::animation_track::CMaterialApplicatorInfo::clone(
        glitch::collada::animation_track::CMaterialApplicatorInfo *this)
{
  _DWORD *result; // r0

  result = operator new(0xCu, 0);
  *result = off_985310;
  result[1] = *((_DWORD *)this + 1);
  result[2] = *((_DWORD *)this + 2);
  return result;
}


// ===== 667f18 glitch::collada::ISceneNodeAnimator::forceBind(void) =====
glitch::video::CMaterial **__fastcall glitch::collada::ISceneNodeAnimator::forceBind(glitch::video::CMaterial **this)
{
  glitch::scene::ISceneNode *v1; // r6
  glitch::video::CMaterial **v2; // r4
  glitch::video::CMaterial **v3; // r7
  glitch::video::CMaterial **v4; // r5
  char *v5; // r9
  int v6; // r0
  glitch::scene::ISceneNode *SceneNodeFromUID; // r8
  int MorphingMesh; // r8
  int v9; // r0
  int Light; // r0
  int v11; // r2
  int ParticleSystem; // r0
  int (__fastcall *v13)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v14; // r0
  int v15; // r0
  int (__fastcall *v16)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v17; // r0
  int v18; // r0
  int (__fastcall *v19)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v20; // r0
  int v21; // r0
  int (__fastcall *v22)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v23; // r0
  int v24; // r0
  int (__fastcall *v25)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v26; // r0
  int v27; // r0
  int (__fastcall *v28)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v29; // r0
  int v30; // r0
  int (__fastcall *v31)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v32; // r0
  int v33; // r0
  int (__fastcall *v34)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v35; // r0
  int v36; // r0
  int (__fastcall *v37)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v38; // r0
  int v39; // r0
  int (__fastcall *v40)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v41; // r0
  int v42; // r0
  int (__fastcall *v43)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v44; // r0
  int v45; // r0
  int (__fastcall *v46)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v47; // r0
  int v48; // r0
  int (__fastcall *v49)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v50; // r0
  int v51; // r0
  int (__fastcall *v52)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v53; // r0
  int v54; // r0
  int (__fastcall *v55)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v56; // r0
  int v57; // r0
  int (__fastcall *v58)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v59; // r0
  int v60; // r0
  int (__fastcall *v61)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v62; // r0
  int v63; // r0
  int (__fastcall *v64)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v65; // r0
  int v66; // r0
  int (__fastcall *v67)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v68; // r0
  int v69; // r0
  int (__fastcall *v70)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v71; // r0
  int v72; // r0
  int (__fastcall *v73)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v74; // r0
  int v75; // r0
  int (__fastcall *v76)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v77; // r0
  int v78; // r8
  int (__fastcall *v79)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int); // r9
  int v80; // r0
  int v81; // r8
  int (__fastcall *v82)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int); // r9
  int v83; // r0
  int v84; // r0
  int (__fastcall *v85)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v86; // r0
  int v87; // r0
  int (__fastcall *v88)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v89; // r0
  int v90; // r0
  int (__fastcall *v91)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v92; // r0
  int v93; // r8
  int (__fastcall *v94)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int); // r9
  int v95; // r0
  int v96; // r0
  int (__fastcall *v97)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v98; // r0
  int v99; // r0
  int (__fastcall *v100)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v101; // r0
  int v102; // r0
  int (__fastcall *v103)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD); // r8
  int v104; // r0
  int v105; // r8
  int (__fastcall *v106)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int); // r9
  int v107; // r0
  void (**v108)(glitch::collada::animation_track::CApplicatorInfo *__hidden); // [sp+10h] [bp-14h] BYREF
  int v109; // [sp+14h] [bp-10h]
  int ParameterID; // [sp+18h] [bp-Ch]
  glitch::video::CMaterial *v111[2]; // [sp+1Ch] [bp-8h] BYREF

  v1 = *(this + 4);
  v2 = this;
  if ( v1 )
  {
    this = (glitch::video::CMaterial **)(*((int (__fastcall **)(glitch::video::CMaterial **))*this + 28))(this);
    v3 = this;
    if ( (int)this > 0 )
    {
      v4 = nullptr;
      do
      {
        v5 = (char *)(*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **))*v2 + 27))(
                       v2,
                       v4);
        switch ( *(_DWORD *)((*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **))*v2 + 21))(
                               v2,
                               v4)
                           + 8) )
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0x14:
            SceneNodeFromUID = glitch::scene::ISceneNode::getSceneNodeFromUID(v1, v5);
            this = (glitch::video::CMaterial **)(*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, glitch::scene::ISceneNode *, _DWORD))*v2
                                                 + 26))(
                                                  v2,
                                                  v4,
                                                  SceneNodeFromUID,
                                                  0);
            if ( SceneNodeFromUID )
              this = (glitch::video::CMaterial **)(*(int (__fastcall **)(glitch::scene::ISceneNode *, glitch::video::CMaterial **))(*(_DWORD *)SceneNodeFromUID + 120))(
                                                    SceneNodeFromUID,
                                                    v2);
            break;
          case 0xE:
            MorphingMesh = glitch::collada::CRootSceneNode::getMorphingMesh(v1, v5);
            if ( !MorphingMesh )
              goto LABEL_109;
            v9 = (*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **))*v2 + 21))(v2, v4);
            this = (glitch::video::CMaterial **)(*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2
                                                 + 26))(
                                                  v2,
                                                  v4,
                                                  *(_DWORD *)(MorphingMesh + 36)
                                                + 8 * *(unsigned __int8 *)(v9 + 12)
                                                + 12,
                                                  0);
            break;
          case 0xF:
            this = (glitch::video::CMaterial **)(*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, glitch::scene::ISceneNode *, _DWORD))*v2
                                                 + 26))(
                                                  v2,
                                                  v4,
                                                  v1,
                                                  0);
            break;
          case 0x10:
            Light = glitch::collada::CRootSceneNode::getLight(v1, v5);
            v11 = Light;
            if ( Light )
              v11 = *(_DWORD *)(Light + 308);
            this = (glitch::video::CMaterial **)(*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2
                                                 + 26))(
                                                  v2,
                                                  v4,
                                                  v11,
                                                  0);
            break;
          case 0x1A:
            glitch::collada::CRootSceneNode::getMaterial(
              (glitch::collada::CRootSceneNode *)v111,
              (const char *)v1,
              (glitch::video::IVideoDriver *)v5,
              0);
            (*((void (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, glitch::video::CMaterial *, _DWORD))*v2
             + 26))(
              v2,
              v4,
              v111[0],
              0);
            this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v111);
            break;
          case 0x1C:
            ParticleSystem = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !ParticleSystem )
              goto LABEL_109;
            goto LABEL_20;
          case 0x1D:
            v15 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v15 )
              goto LABEL_22;
            goto LABEL_109;
          case 0x1E:
            v18 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v18 )
              goto LABEL_24;
            goto LABEL_109;
          case 0x1F:
            v21 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v21 )
              goto LABEL_26;
            goto LABEL_109;
          case 0x20:
            v24 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v24 )
              goto LABEL_28;
            goto LABEL_109;
          case 0x21:
            v27 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v27 )
              goto LABEL_30;
            goto LABEL_109;
          case 0x22:
            v30 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v30 )
              goto LABEL_32;
            goto LABEL_109;
          case 0x23:
            v33 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v33 )
              goto LABEL_34;
            goto LABEL_109;
          case 0x24:
            v36 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v36 )
              goto LABEL_36;
            goto LABEL_109;
          case 0x25:
            v39 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v39 )
              goto LABEL_38;
            goto LABEL_109;
          case 0x26:
            v42 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( v42 )
              goto LABEL_40;
            goto LABEL_109;
          case 0x27:
            v45 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v45 )
              goto LABEL_109;
            v46 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v47 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v45 + 252))(v45, "SpinAxis");
            this = (glitch::video::CMaterial **)v46(v2, v4, v47, 0);
            break;
          case 0x28:
            v48 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v48 )
              goto LABEL_109;
            v49 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v50 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v48 + 252))(v48, "SpinAxisVariation");
            this = (glitch::video::CMaterial **)v49(v2, v4, v50, 0);
            break;
          case 0x29:
            v51 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v51 )
              goto LABEL_109;
            v52 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v53 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v51 + 252))(v51, "AnimOffset");
            this = (glitch::video::CMaterial **)v52(v2, v4, v53, 0);
            break;
          case 0x2A:
            v54 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v54 )
              goto LABEL_109;
            v55 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v56 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v54 + 252))(v54, "AnimOffsetVariation");
            this = (glitch::video::CMaterial **)v55(v2, v4, v56, 0);
            break;
          case 0x2B:
            v57 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v57 )
              goto LABEL_109;
            v58 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v59 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v57 + 252))(v57, "AnimLength");
            this = (glitch::video::CMaterial **)v58(v2, v4, v59, 0);
            break;
          case 0x2C:
            v60 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v60 )
              goto LABEL_109;
            v61 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v62 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v60 + 252))(v60, "AnimLengthVariation");
            this = (glitch::video::CMaterial **)v61(v2, v4, v62, 0);
            break;
          case 0x2D:
            v63 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v63 )
              goto LABEL_109;
            v64 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v65 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v63 + 252))(v63, "AnimScaleMultiplier");
            this = (glitch::video::CMaterial **)v64(v2, v4, v65, 0);
            break;
          case 0x2E:
            v66 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v66 )
              goto LABEL_109;
            v67 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v68 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v66 + 252))(v66, "AnimScaleMultiplierVariation");
            this = (glitch::video::CMaterial **)v67(v2, v4, v68, 0);
            break;
          case 0x2F:
            ParticleSystem = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !ParticleSystem )
              goto LABEL_109;
LABEL_20:
            v13 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v14 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)ParticleSystem + 252))(
                    ParticleSystem,
                    "BirthRate");
            this = (glitch::video::CMaterial **)v13(v2, v4, v14, 0);
            break;
          case 0x30:
            v69 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v69 )
              goto LABEL_109;
            v70 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v71 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v69 + 252))(v69, "BirthRateVariation");
            this = (glitch::video::CMaterial **)v70(v2, v4, v71, 0);
            break;
          case 0x31:
            v72 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v72 )
              goto LABEL_109;
            v73 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v74 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v72 + 252))(v72, "Life");
            this = (glitch::video::CMaterial **)v73(v2, v4, v74, 0);
            break;
          case 0x32:
            v75 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v75 )
              goto LABEL_109;
            v76 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v77 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v75 + 252))(v75, "LifeVariation");
            this = (glitch::video::CMaterial **)v76(v2, v4, v77, 0);
            break;
          case 0x33:
            v15 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v15 )
              goto LABEL_109;
LABEL_22:
            v16 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v17 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v15 + 252))(v15, "TargetSize");
            this = (glitch::video::CMaterial **)v16(v2, v4, v17, 0);
            break;
          case 0x34:
            v18 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v18 )
              goto LABEL_109;
LABEL_24:
            v19 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v20 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v18 + 252))(v18, "SizeVariation");
            this = (glitch::video::CMaterial **)v19(v2, v4, v20, 0);
            break;
          case 0x35:
            this = (glitch::video::CMaterial **)glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !this )
              goto LABEL_109;
            v78 = *((unsigned __int8 *)this + 316);
            if ( !*((_BYTE *)this + 316) )
            {
              v79 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int))*v2 + 26);
              v80 = (*((int (__fastcall **)(glitch::video::CMaterial **, const char *))*this + 63))(this, "SizeScale");
              this = (glitch::video::CMaterial **)v79(v2, v4, v80, v78);
            }
            break;
          case 0x36:
            v21 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v21 )
              goto LABEL_109;
LABEL_26:
            v22 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v23 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v21 + 252))(v21, "Speed");
            this = (glitch::video::CMaterial **)v22(v2, v4, v23, 0);
            break;
          case 0x37:
            v24 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v24 )
              goto LABEL_109;
LABEL_28:
            v25 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v26 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v24 + 252))(v24, "SpeedVariation");
            this = (glitch::video::CMaterial **)v25(v2, v4, v26, 0);
            break;
          case 0x38:
            this = (glitch::video::CMaterial **)glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !this )
              goto LABEL_109;
            v81 = *((unsigned __int8 *)this + 317);
            if ( !*((_BYTE *)this + 317) )
            {
              v82 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int))*v2 + 26);
              v83 = (*((int (__fastcall **)(glitch::video::CMaterial **, const char *))*this + 63))(this, "SpeedScale");
              this = (glitch::video::CMaterial **)v82(v2, v4, v83, v81);
            }
            break;
          case 0x39:
            v27 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v27 )
              goto LABEL_109;
LABEL_30:
            v28 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v29 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v27 + 252))(v27, "Direction");
            this = (glitch::video::CMaterial **)v28(v2, v4, v29, 0);
            break;
          case 0x3A:
            v30 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v30 )
              goto LABEL_109;
LABEL_32:
            v31 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v32 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v30 + 252))(v30, "DirectionVariation");
            this = (glitch::video::CMaterial **)v31(v2, v4, v32, 0);
            break;
          case 0x3B:
            v84 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v84 )
              goto LABEL_109;
            v85 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v86 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v84 + 252))(v84, "RadiusLength");
            this = (glitch::video::CMaterial **)v85(v2, v4, v86, 0);
            break;
          case 0x3C:
            v87 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v87 )
              goto LABEL_109;
            v88 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v89 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)v87 + 252))(v87, "Width");
            this = (glitch::video::CMaterial **)v88(v2, v4, v89, 0);
            break;
          case 0x3D:
            v90 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v90 )
              goto LABEL_109;
            v91 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v92 = (*(int (__fastcall **)(int, char *))(*(_DWORD *)v90 + 252))(v90, "Height");
            this = (glitch::video::CMaterial **)v91(v2, v4, v92, 0);
            break;
          case 0x3E:
            v39 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v39 )
              goto LABEL_109;
LABEL_38:
            v40 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v41 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v39 + 252))(v39, "SpinPhase");
            this = (glitch::video::CMaterial **)v40(v2, v4, v41, 0);
            break;
          case 0x3F:
            v42 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v42 )
              goto LABEL_109;
LABEL_40:
            v43 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v44 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v42 + 252))(v42, "SpinPhaseVariation");
            this = (glitch::video::CMaterial **)v43(v2, v4, v44, 0);
            break;
          case 0x40:
            v33 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v33 )
              goto LABEL_109;
LABEL_34:
            v34 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v35 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v33 + 252))(v33, "SpinTime");
            this = (glitch::video::CMaterial **)v34(v2, v4, v35, 0);
            break;
          case 0x41:
            v36 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v36 )
              goto LABEL_109;
LABEL_36:
            v37 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v38 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v36 + 252))(v36, "SpinVariation");
            this = (glitch::video::CMaterial **)v37(v2, v4, v38, 0);
            break;
          case 0x42:
            this = (glitch::video::CMaterial **)glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !this )
              goto LABEL_109;
            v93 = *((unsigned __int8 *)this + 318);
            if ( !*((_BYTE *)this + 318) )
            {
              v94 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int))*v2 + 26);
              v95 = (*((int (__fastcall **)(glitch::video::CMaterial **, const char *))*this + 63))(this, "SpinScale");
              this = (glitch::video::CMaterial **)v94(v2, v4, v95, v93);
            }
            break;
          case 0x43:
            v96 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v96 )
              goto LABEL_109;
            v97 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v98 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v96 + 252))(v96, "SpinPivotPoint");
            this = (glitch::video::CMaterial **)v97(v2, v4, v98, 0);
            break;
          case 0x44:
            v99 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v99 )
              goto LABEL_109;
            v100 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v101 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v99 + 252))(v99, "MotionRandom");
            this = (glitch::video::CMaterial **)v100(v2, v4, v101, 0);
            break;
          case 0x45:
            v102 = glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !v102 )
              goto LABEL_109;
            v103 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, _DWORD))*v2 + 26);
            v104 = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)v102 + 252))(v102, "MotionRandomVariation");
            this = (glitch::video::CMaterial **)v103(v2, v4, v104, 0);
            break;
          case 0x46:
            this = (glitch::video::CMaterial **)glitch::collada::CRootSceneNode::getParticleSystem(v1, v5);
            if ( !this )
              goto LABEL_109;
            v105 = *((unsigned __int8 *)this + 319);
            if ( !*((_BYTE *)this + 319) )
            {
              v106 = *((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, int, int))*v2 + 26);
              v107 = (*((int (__fastcall **)(glitch::video::CMaterial **, const char *))*this + 63))(
                       this,
                       "MotionRandomScale");
              this = (glitch::video::CMaterial **)v106(v2, v4, v107, v105);
            }
            break;
          case 0x56:
          case 0x57:
          case 0x58:
          case 0x59:
          case 0x5A:
          case 0x5B:
            glitch::collada::CRootSceneNode::getMaterial(
              (glitch::collada::CRootSceneNode *)v111,
              (const char *)v1,
              (glitch::video::IVideoDriver *)v5,
              0);
            if ( v111[0] )
            {
              v6 = (*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **))*v2 + 21))(v2, v4);
              v109 = 0;
              ParameterID = -1;
              v108 = off_985310;
              v109 = *(_DWORD *)(v6 + 12);
              ParameterID = (int)glitch::video::CMaterialRenderer::getParameterID(
                                   *((glitch::video::CMaterialRenderer **)v111[0] + 1),
                                   *(glitch::core::detail::SSharedStringHeapEntry::SData **)(v6 + 12),
                                   0);
              (*((void (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, glitch::video::CMaterial *, void (***)(glitch::collada::animation_track::CApplicatorInfo *__hidden)))*v2
               + 26))(
                v2,
                v4,
                v111[0],
                &v108);
              v108 = off_985328;
            }
            else
            {
              (*((void (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, _DWORD, _DWORD))*v2 + 26))(
                v2,
                v4,
                0,
                0);
            }
            this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v111);
            break;
          default:
LABEL_109:
            this = (glitch::video::CMaterial **)(*((int (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial **, _DWORD, _DWORD))*v2
                                                 + 26))(
                                                  v2,
                                                  v4,
                                                  0,
                                                  0);
            break;
        }
        v4 = (glitch::video::CMaterial **)((char *)v4 + 1);
      }
      while ( v4 != v3 );
    }
  }
  return this;
}


// ===== 669538 glitch::collada::ISceneNodeAnimator::onBind(glitch::scene::ISceneNode *) =====
glitch::video::CMaterial **__fastcall glitch::collada::ISceneNodeAnimator::onBind(
        glitch::video::CMaterial **this,
        glitch::scene::ISceneNode *a2)
{
  glitch::video::CMaterial **v2; // r4

  v2 = this;
  if ( *(this + 4) != a2 )
  {
    *(this + 4) = a2;
    this = (glitch::video::CMaterial **)(*((int (__fastcall **)(glitch::video::CMaterial **))*this + 28))(this);
    if ( this )
      return glitch::collada::ISceneNodeAnimator::forceBind(v2);
  }
  return this;
}


// ===== 669574 glitch::collada::ISceneNodeAnimator::setCompatibleTarget(glitch::collada::SChannel const&,void *) =====
int __fastcall glitch::collada::ISceneNodeAnimator::setCompatibleTarget(int a1, int a2, int a3)
{
  const char *v5; // r8
  int v6; // r10
  int v7; // r7
  const char *v8; // r0
  int v9; // r0
  unsigned int v10; // r3
  int v11; // r2
  int v13; // r10
  int v14; // r7
  int v15; // r6
  const char *v16; // r0
  unsigned int v17; // [sp+0h] [bp-14h]
  int v18; // [sp+4h] [bp-10h]

  v5 = *(const char **)(a2 + 4);
  if ( *(_DWORD *)(a2 + 8) != 14 )
  {
    v6 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 112))(a1);
    if ( v6 > 0 )
    {
      v7 = 0;
      while ( 1 )
      {
        v8 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 108))(a1, v7);
        if ( !LC_API_STRCMP_0(v8, v5) )
        {
          v9 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 84))(a1, v7);
          v10 = *(_DWORD *)(a2 + 8);
          v11 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable
              + 12 * *(_DWORD *)(v9 + 8);
          if ( v10 > 0x5B )
          {
            v18 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable
                + 12 * *(_DWORD *)(v9 + 8);
            v17 = *(_DWORD *)(a2 + 8);
            __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
            v10 = v17;
            v11 = v18;
          }
          if ( (*(_DWORD *)(v11 + 4 * (v10 >> 5)) & (1 << (v10 & 0x1F))) != 0 )
            break;
        }
        if ( ++v7 == v6 )
          return 0;
      }
      (*(void (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 104))(a1, v7, a3, 0);
      return 1;
    }
    return 0;
  }
  v13 = *(unsigned __int8 *)(a2 + 12);
  v14 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 112))(a1);
  if ( v14 <= 0 )
    return 0;
  v15 = 0;
  while ( 1 )
  {
    v16 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 108))(a1, v15);
    if ( !LC_API_STRCMP_0(v16, v5)
      && *(unsigned __int8 *)((*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 84))(a1, v15) + 12) == v13 )
    {
      break;
    }
    if ( ++v15 == v14 )
      return 0;
  }
  (*(void (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 104))(a1, v15, a3, 0);
  return 1;
}


// ===== 669730 `non-virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `non-virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::collada::ISceneNodeAnimator *this)
{
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::collada::ISceneNodeAnimator *)((char *)this - 4));
}


// ===== 669738 glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(glitch::collada::ISceneNodeAnimator *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 6);
  *(_DWORD *)this = off_985344;
  *((_DWORD *)this + 9) = off_9853F0;
  *((_DWORD *)this + 1) = off_9853D4;
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, (int *)off_985404);
}


// ===== 6697a0 `non-virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `non-virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::collada::ISceneNodeAnimator *this)
{
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::collada::ISceneNodeAnimator *)((char *)this - 4));
}


// ===== 6697a8 glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(glitch::collada::ISceneNodeAnimator *this)
{
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(this);
  LC_API_FREE_0(this);
}


// ===== 6697c4 glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::collada::ISceneNodeAnimator *this,
        int *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v5; // r0

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[5];
  v5 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 1) = off_9853D4;
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator(this, a2 + 1);
}


// ===== 669828 glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(void) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(
        glitch::collada::ISceneNodeAnimator *this)
{
  *((_DWORD *)this + 10) = 1;
  *(_DWORD *)this = off_9854A4;
  *((_DWORD *)this + 9) = off_95B720;
  *(int *)((char *)&dword_24 + (_DWORD)this) = (int)off_9854C4;
  *((_DWORD *)this + 1) = off_95C300;
  glitch::IObject::IObject(this);
  *(_DWORD *)this = off_985424;
  *(int *)((char *)&dword_24 + (_DWORD)this) = (int)off_985488;
  *((_DWORD *)this + 1) = off_9853D4;
  *(_DWORD *)this = off_985344;
  *((_DWORD *)this + 9) = off_9853F0;
  *((_DWORD *)this + 7) = glitch::collada::FxEchoNotHandledEvents;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  return this;
}


// ===== 6698fc glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(void) =====
glitch::collada::ISceneNodeAnimator *__fastcall glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(
        glitch::collada::ISceneNodeAnimator *this,
        int *a2)
{
  _DWORD *v2; // r7
  int v3; // r2
  int v6; // r1
  int v7; // r0
  int v8; // r12

  v2 = a2 + 1;
  v3 = a2[2];
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 12)) = a2[3];
  *((_DWORD *)this + 1) = off_95C300;
  glitch::IObject::IObject(this);
  v6 = a2[1];
  *(_DWORD *)this = v6;
  *(_DWORD *)((char *)this + *(_DWORD *)(v6 - 12)) = v2[3];
  *((_DWORD *)this + 1) = off_976CF0;
  *((_DWORD *)this + 2) = 0;
  v7 = *a2;
  *(_DWORD *)this = *a2;
  v8 = *(_DWORD *)(v7 - 12);
  *(_DWORD *)((char *)this + v8) = a2[5];
  *((_DWORD *)this + 1) = off_9853D4;
  *((_DWORD *)this + 7) = glitch::collada::FxEchoNotHandledEvents;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  return this;
}


// ===== 6699c4 glitch::collada::ISceneNodeAnimator::hasCompatibleTarget(glitch::collada::SChannel const&) =====
int __fastcall glitch::collada::ISceneNodeAnimator::hasCompatibleTarget(int a1, int a2)
{
  const char *v4; // r6
  int v5; // r7
  int v6; // r4
  const char *v7; // r0
  int v8; // r0
  unsigned int v9; // r3
  int v10; // r2
  int v12; // r8
  int v13; // r7
  int v14; // r4
  const char *v15; // r0
  unsigned int v16; // [sp+4h] [bp-10h]
  int v17; // [sp+8h] [bp-Ch]

  v4 = *(const char **)(a2 + 4);
  if ( *(_DWORD *)(a2 + 8) != 14 )
  {
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 112))(a1);
    if ( v5 > 0 )
    {
      v6 = 0;
      while ( 1 )
      {
        v7 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 108))(a1, v6);
        if ( !LC_API_STRCMP_0(v7, v4) )
        {
          v8 = (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 84))(a1, v6);
          v9 = *(_DWORD *)(a2 + 8);
          v10 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable
              + 12 * *(_DWORD *)(v8 + 8);
          if ( v9 > 0x5B )
          {
            v17 = glitch::collada::detail::IColladaSceneNodeAnimatorChannelType::CompatibilityTable
                + 12 * *(_DWORD *)(v8 + 8);
            v16 = *(_DWORD *)(a2 + 8);
            __ZSt24__stl_throw_out_of_rangePKc_veneer("bitset");
            v9 = v16;
            v10 = v17;
          }
          if ( (*(_DWORD *)(v10 + 4 * (v9 >> 5)) & (1 << (v9 & 0x1F))) != 0 )
            break;
        }
        if ( ++v6 == v5 )
          return 0;
      }
      return 1;
    }
    return 0;
  }
  v12 = *(unsigned __int8 *)(a2 + 12);
  v13 = (*(int (__fastcall **)(int))(*(_DWORD *)a1 + 112))(a1);
  if ( v13 <= 0 )
    return 0;
  v14 = 0;
  while ( 1 )
  {
    v15 = (const char *)(*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 108))(a1, v14);
    if ( !LC_API_STRCMP_0(v15, v4)
      && *(unsigned __int8 *)((*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 84))(a1, v14) + 12) == v12 )
    {
      break;
    }
    if ( ++v14 == v13 )
      return 0;
  }
  return 1;
}


// ===== 669b44 `virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::collada::ISceneNodeAnimator *this)
{
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::collada::ISceneNodeAnimator *)((char *)this
                                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 669b54 `virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator() =====
void __fastcall `virtual thunk to'glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator(
        glitch::collada::ISceneNodeAnimator *this)
{
  glitch::collada::ISceneNodeAnimator::~ISceneNodeAnimator((glitch::collada::ISceneNodeAnimator *)((char *)this
                                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 669b64 glitch::collada::ISkinnedMesh::setIsSkinningEnabled(bool) =====
int __fastcall glitch::collada::ISkinnedMesh::setIsSkinningEnabled(int this, bool a2)
{
  *(_BYTE *)(this + 24) = a2;
  return this;
}


// ===== 669b6c glitch::collada::ISkinnedMesh::setBoundingBox(glitch::core::aabbox3d<float> const&) =====
void glitch::collada::ISkinnedMesh::setBoundingBox()
{
  ;
}


// ===== 669b70 glitch::collada::ISkinnedMesh::setTransform(glitch::video::IVideoDriver *,glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::collada::ISkinnedMesh::setTransform(int a1, int a2)
{
  if ( *(_BYTE *)(a1 + 24) || (*(_DWORD *)(a1 + 20) & 1) != 0 )
    return (*(int (__fastcall **)(int, int, int *))(*(_DWORD *)a2 + 108))(a2, 1, glitch::core::IdentityMatrix);
  else
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)a2 + 108))(a2, 1);
}


// ===== 669bd4 `global constructor keyed to'.._source_glitch_collada_IColladaSkinnedMesh.cpp =====
void `global constructor keyed to'.._source_glitch_collada_IColladaSkinnedMesh.cpp()
{
  dword_9F70D0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70CC = 1056964608;
}


// ===== 669bf4 glitch::collada::ISkinnedMesh::~ISkinnedMesh() =====
void __fastcall glitch::collada::ISkinnedMesh::~ISkinnedMesh(glitch::IReferenceCounted **this)
{
  *this = (glitch::IReferenceCounted *)off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase(this + 3);
}


// ===== 669c28 glitch::collada::ISkinnedMesh::releaseProcessBuffer(glitch::video::IVideoDriver *,uint) =====
glitch::video::CMaterial **__fastcall glitch::collada::ISkinnedMesh::releaseProcessBuffer(
        glitch::collada::ISkinnedMesh *this,
        glitch::video::IVideoDriver *a2,
        unsigned int a3)
{
  int v3; // r8
  glitch::IReferenceCounted *v7; // r7
  void (__fastcall *v8)(glitch::video::IVideoDriver *, _DWORD, char *, int, unsigned int, _DWORD); // r11
  int v9; // r9
  int Technique; // r0
  glitch::video::CMaterial **result; // r0
  int v12; // [sp+Ch] [bp-10h]
  glitch::video::CMaterial *v13; // [sp+10h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v14; // [sp+14h] [bp-8h] BYREF

  v3 = *((unsigned __int8 *)this + 24);
  if ( !*((_BYTE *)this + 24) )
    (*(void (__fastcall **)(glitch::collada::ISkinnedMesh *, int))(*(_DWORD *)this + 84))(this, 1);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::collada::ISkinnedMesh *, unsigned int))(*(_DWORD *)this + 20))(
    &v14,
    this,
    a3);
  v7 = v14;
  if ( v14 )
    glitch::IReferenceCounted::drop(v14);
  v8 = *(void (__fastcall **)(glitch::video::IVideoDriver *, _DWORD, char *, int, unsigned int, _DWORD))(*(_DWORD *)a2 + 500);
  v9 = *((_DWORD *)v7 + 9);
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::collada::ISkinnedMesh *, unsigned int))(*(_DWORD *)this + 24))(
    &v13,
    this,
    a3);
  v12 = *((_DWORD *)v13 + 1);
  Technique = glitch::video::CMaterial::getTechnique(v13);
  v8(
    a2,
    0,
    (char *)v7 + 20,
    v9,
    *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v12 + 24) + 12 * Technique + 8) + 32) + 56)
  & ((unsigned int)&elf_hash_chain[16302] + 1),
    0);
  result = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
  *((_DWORD *)this + 5) &= ~(1 << (a3 & 0x1F));
  if ( !v3 )
    return (glitch::video::CMaterial **)(*(int (__fastcall **)(glitch::collada::ISkinnedMesh *, _DWORD))(*(_DWORD *)this + 84))(
                                          this,
                                          0);
  return result;
}


// ===== 669d4c glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 669d6c glitch::collada::ISkinnedMesh::getTransform(glitch::core::CMatrix4<float> const&) =====
_BYTE *__fastcall glitch::collada::ISkinnedMesh::getTransform(_BYTE *a1, int a2, const void *a3)
{
  if ( *(_BYTE *)(a2 + 24) || (*(_DWORD *)(a2 + 20) & 1) != 0 )
  {
    glitch::core::CMatrix4<float>::CMatrix4(a1, glitch::core::IdentityMatrix);
    return a1;
  }
  else
  {
    glitch::core::CMatrix4<float>::CMatrix4(a1, a3);
    return a1;
  }
}


// ===== 669dc4 glitch::collada::ISkinnedMesh::~ISkinnedMesh() =====
void __fastcall glitch::collada::ISkinnedMesh::~ISkinnedMesh(glitch::IReferenceCounted **this)
{
  *this = (glitch::IReferenceCounted *)off_984FF0;
  glitch::collada::CColladaDatabase::~CColladaDatabase(this + 3);
  LC_API_FREE_0(this);
}


// ===== 669e00 glitch::collada::SAnimationAccessor::getTarget(void) =====
int __fastcall glitch::collada::SAnimationAccessor::getTarget(glitch::collada::SAnimationAccessor *this)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 16) + 4);
}


// ===== 669e10 glitch::collada::SAnimationAccessor::getType(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getType(glitch::collada::SAnimationAccessor *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 16) + 16 * a2 + 8);
}


// ===== 669e24 glitch::collada::SAnimationAccessor::getOutput(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getOutput(glitch::collada::SAnimationAccessor *this, int a2)
{
  return *((_DWORD *)this + 1) + 8 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 8) + 28 * a2 + 24) + 4;
}


// ===== 669e44 glitch::collada::SAnimationAccessor::getChannel(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getChannel(glitch::collada::SAnimationAccessor *this, int a2)
{
  return *(_DWORD *)(*(_DWORD *)this + 16) + 16 * a2;
}


// ===== 669e54 glitch::collada::SAnimationAccessor::hasDefaultValue(void) =====
bool __fastcall glitch::collada::SAnimationAccessor::hasDefaultValue(glitch::collada::SAnimationAccessor *this)
{
  return *(_DWORD *)(*(_DWORD *)this + 24) != 0;
}


// ===== 669e68 glitch::collada::SAnimationAccessor::getDefaultValue(void) =====
int __fastcall glitch::collada::SAnimationAccessor::getDefaultValue(glitch::collada::SAnimationAccessor *this)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 24) + 8);
}


// ===== 669e78 glitch::collada::SAnimationAccessor::getChannelsCount(void) =====
int __fastcall glitch::collada::SAnimationAccessor::getChannelsCount(glitch::collada::SAnimationAccessor *this)
{
  return *(_DWORD *)(*(_DWORD *)this + 12);
}


// ===== 669e84 glitch::collada::SAnimationAccessor::getTimeInternalType(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getTimeInternalType(
        glitch::collada::SAnimationAccessor *this,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 8) + 28 * a2 + 4);
}


// ===== 669e9c glitch::collada::SAnimationAccessor::getInterpolationType(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getInterpolationType(
        glitch::collada::SAnimationAccessor *this,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 8) + 28 * a2);
}


// ===== 669eb4 glitch::collada::SAnimationAccessor::getOffsets(void) =====
int __fastcall glitch::collada::SAnimationAccessor::getOffsets(glitch::collada::SAnimationAccessor *this)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 28) + 8);
}


// ===== 669ec4 glitch::collada::SAnimationAccessor::getScales(void) =====
int __fastcall glitch::collada::SAnimationAccessor::getScales(glitch::collada::SAnimationAccessor *this)
{
  return *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 28) + 4);
}


// ===== 669ed4 glitch::collada::SAnimationAccessor::getOffsetScaleType(void) =====
int __fastcall glitch::collada::SAnimationAccessor::getOffsetScaleType(glitch::collada::SAnimationAccessor *this)
{
  int v1; // r3

  v1 = *(_DWORD *)(*(_DWORD *)this + 28);
  if ( v1 )
    return *(_DWORD *)v1;
  else
    return 2;
}


// ===== 669eec glitch::collada::SAnimationAccessor::getKeyTime(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getKeyTime(glitch::collada::SAnimationAccessor *this, int a2)
{
  return *((_DWORD *)this + 1) + 8 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)this + 8) + 28 * a2 + 12) + 4;
}


// ===== 669f0c glitch::collada::SAnimationAccessor::getKeyTime(int,int) =====
int __fastcall glitch::collada::SAnimationAccessor::getKeyTime(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3)
{
  int TimeInternalType; // r0
  int v8; // r0

  TimeInternalType = glitch::collada::SAnimationAccessor::getTimeInternalType(this, 0);
  if ( TimeInternalType == 3 )
  {
    v8 = *(unsigned __int16 *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getKeyTime(this, a2) + 4) + 2 * a3);
    return (int)((double)v8 * 33.333332);
  }
  if ( TimeInternalType != 4 )
  {
    if ( TimeInternalType != 1 )
      return 0;
    v8 = *(unsigned __int8 *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getKeyTime(this, a2) + 4) + a3);
    return (int)((double)v8 * 33.333332);
  }
  return *(_DWORD *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getKeyTime(this, a2) + 4) + 4 * a3);
}


// ===== 669fac glitch::collada::SAnimationAccessor::getStart(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getStart(glitch::collada::SAnimationAccessor *this, int a2)
{
  return glitch::collada::SAnimationAccessor::getKeyTime(this, a2, 0);
}


// ===== 669fb4 glitch::collada::SAnimationAccessor::getEnd(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getEnd(glitch::collada::SAnimationAccessor *this, int a2)
{
  int v4; // r2

  v4 = *(_DWORD *)glitch::collada::SAnimationAccessor::getKeyTime(this, a2);
  return glitch::collada::SAnimationAccessor::getKeyTime(this, a2, v4 - 1);
}


// ===== 669fdc glitch::collada::SAnimationAccessor::getLength(int) =====
int __fastcall glitch::collada::SAnimationAccessor::getLength(glitch::collada::SAnimationAccessor *this, int a2)
{
  int End; // r4

  End = glitch::collada::SAnimationAccessor::getEnd(this, a2);
  return End - glitch::collada::SAnimationAccessor::getStart(this, a2);
}


// ===== 66a004 glitch::collada::SAnimationAccessor::getAnimator(void) =====
int __fastcall glitch::collada::SAnimationAccessor::getAnimator(glitch::collada::SAnimationAccessor *this)
{
  return *(_DWORD *)(*(_DWORD *)this + 20);
}


// ===== 66a010 glitch::collada::SAnimationAccessor::applyValue(int,int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,bool) =====
int __fastcall glitch::collada::SAnimationAccessor::applyValue(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        void *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        int *a6,
        bool a7)
{
  int Animator; // r0

  Animator = glitch::collada::SAnimationAccessor::getAnimator(this);
  return (*(int (__fastcall **)(int, glitch::collada::SAnimationAccessor *, int, int, void *, glitch::collada::animation_track::CApplicatorInfo *, int *, bool))(*(_DWORD *)Animator + 128))(
           Animator,
           this,
           a2,
           a3,
           a4,
           a5,
           a6,
           a7);
}


// ===== 66a068 glitch::collada::SAnimationAccessor::applyValue(int,int,void *,int &,bool) =====
int __fastcall glitch::collada::SAnimationAccessor::applyValue(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        void *a4,
        int *a5,
        bool a6)
{
  int Animator; // r0

  Animator = glitch::collada::SAnimationAccessor::getAnimator(this);
  return (*(int (__fastcall **)(int, glitch::collada::SAnimationAccessor *, int, int, void *, _DWORD, int *, bool))(*(_DWORD *)Animator + 128))(
           Animator,
           this,
           a2,
           a3,
           a4,
           0,
           a5,
           a6);
}


// ===== 66a0c0 glitch::collada::SAnimationAccessor::applyValue(int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,bool) =====
int __fastcall glitch::collada::SAnimationAccessor::applyValue(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        void *a3,
        glitch::collada::animation_track::CApplicatorInfo *a4,
        int *a5,
        bool a6)
{
  int Animator; // r0

  Animator = glitch::collada::SAnimationAccessor::getAnimator(this);
  return (*(int (__fastcall **)(int, glitch::collada::SAnimationAccessor *, int, void *, glitch::collada::animation_track::CApplicatorInfo *, int *, bool))(*(_DWORD *)Animator + 108))(
           Animator,
           this,
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 66a10c glitch::collada::SAnimationAccessor::applyValue(int,void *,int &,bool) =====
int __fastcall glitch::collada::SAnimationAccessor::applyValue(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        void *a3,
        int *a4,
        bool a5)
{
  int Animator; // r0

  Animator = glitch::collada::SAnimationAccessor::getAnimator(this);
  return (*(int (__fastcall **)(int, glitch::collada::SAnimationAccessor *, int, void *, _DWORD, int *, bool))(*(_DWORD *)Animator + 108))(
           Animator,
           this,
           a2,
           a3,
           0,
           a4,
           a5);
}


// ===== 66a15c glitch::collada::SAnimationAccessor::getValue(int,int,void *,int &,bool) =====
int __fastcall glitch::collada::SAnimationAccessor::getValue(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        void *a4,
        int *a5,
        bool a6)
{
  int Animator; // r0

  Animator = glitch::collada::SAnimationAccessor::getAnimator(this);
  return (*(int (__fastcall **)(int, glitch::collada::SAnimationAccessor *, int, int, void *, int *, bool))(*(_DWORD *)Animator + 116))(
           Animator,
           this,
           a2,
           a3,
           a4,
           a5,
           a6);
}


// ===== 66a1a8 glitch::collada::SAnimationAccessor::getValue(int,void *,int &,bool) =====
int __fastcall glitch::collada::SAnimationAccessor::getValue(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        void *a3,
        int *a4,
        bool a5)
{
  int Animator; // r0

  Animator = glitch::collada::SAnimationAccessor::getAnimator(this);
  return (*(int (__fastcall **)(int, glitch::collada::SAnimationAccessor *, int, void *, int *, bool))(*(_DWORD *)Animator + 104))(
           Animator,
           this,
           a2,
           a3,
           a4,
           a5);
}


// ===== 66a1f0 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(int,glitch::res::vector<int> const&,int,int &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5)
{
  float v6; // r0
  int v7; // r7
  int v8; // r8
  int v9; // r6
  bool v10; // r7

  v6 = (float)a4;
  v7 = *a3 - 1;
  if ( v7 > 0 )
  {
    v8 = 1;
    do
    {
      v9 = (v8 + v7) >> 1;
      if ( v6 >= (float)*(int *)(a3[1] + 4 * v9) )
        v8 = v9 + 1;
      else
        v7 = v9 - 1;
    }
    while ( v8 <= v7 );
  }
  *a5 = v7;
  v10 = v6 != (float)*(int *)(a3[1] + 4 * v7) && v7 != *a3 - 1;
  return glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) && v10;
}


// ===== 66a2ac glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(int,glitch::res::vector<int> const&,int,int &,float &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6)
{
  int KeyFrameNo; // r8
  float v9; // r0
  int v10; // r4

  KeyFrameNo = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(a1, a2, a3, a4, a5);
  if ( KeyFrameNo )
  {
    v9 = (float)(a4 - (int)(float)*(int *)(a3[1] + 4 * *a5))
       / (float)((int)(float)*(int *)(a3[1] + 4 * (*a5 + 1)) - (int)(float)*(int *)(a3[1] + 4 * *a5));
    *a6 = v9;
    v10 = LODWORD(v9);
    if ( v9 >= 0.0 )
    {
      if ( v9 >= 1.0 )
        v10 = 1065353216;
    }
    else
    {
      v10 = 0;
    }
    *(_DWORD *)a6 = v10;
  }
  return KeyFrameNo;
}


// ===== 66a368 glitch::collada::SAnimationAccessor::findKeyFrameNo<int,1000>(glitch::res::vector<int> const&,int,int &,int) =====
bool __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo<int,1000>(
        int a1,
        _DWORD *a2,
        int a3,
        int *a4,
        int a5)
{
  int v7; // r7
  int v8; // r5
  int v9; // r8
  float v10; // r6
  _BOOL4 v11; // r10
  int v12; // r8
  int v13; // r3
  int v14; // r9
  int v15; // r10
  int v16; // r8
  int v18; // r1
  float v19; // [sp+4h] [bp-8h]

  v7 = a2[1];
  v8 = *a2 - 1;
  v9 = a5 & ~(a5 >> 31);
  if ( v9 >= v8 )
    v9 = *a2 - 1;
  v10 = (float)a3;
  v11 = (float)*(int *)(v7 + 4 * v9) > (float)a3;
  if ( (float)*(int *)(v7 + 4 * v9) > (float)a3 && v9 > 0 )
  {
    v12 = v9 - 1;
    goto LABEL_7;
  }
  if ( v8 <= v9 )
  {
    v14 = v9;
    v18 = 4 * v9;
    goto LABEL_25;
  }
  v14 = v9 + 1;
  v19 = (float)*(int *)(v7 + 4 * (v9 + 1));
  v18 = 4 * (v9 + 1);
  if ( v19 >= v10 )
  {
    v14 = v9;
    v13 = 4 * v9;
    goto LABEL_9;
  }
  if ( v8 <= v14 )
  {
LABEL_25:
    v13 = v18;
LABEL_26:
    v12 = v14;
    goto LABEL_27;
  }
  v12 = v9 + 2;
  if ( (float)*(int *)(v7 + 4 * (v14 + 1)) >= v10 )
  {
    v13 = 4 * v14;
    v11 = v10 < v19;
    goto LABEL_9;
  }
LABEL_7:
  if ( v12 < v8 )
  {
    v13 = 4 * v12;
    v11 = v10 < (float)*(int *)(v7 + 4 * v12);
    v14 = v12;
LABEL_9:
    if ( v11 || (float)*(int *)(v7 + 4 * (v14 + 1)) < v10 )
    {
      if ( v8 > 0 )
      {
        v15 = 1;
        do
        {
          v16 = (v15 + v8) >> 1;
          if ( v10 >= (float)*(int *)(v7 + 4 * v16) )
            v15 = v16 + 1;
          else
            v8 = v16 - 1;
        }
        while ( v15 <= v8 );
      }
      *a4 = v8;
      if ( v10 != (float)*(int *)(a2[1] + 4 * v8) )
        return *a2 - 1 != v8;
      return 0;
    }
    goto LABEL_26;
  }
  v13 = 4 * v12;
LABEL_27:
  *a4 = v12;
  if ( v10 != (float)*(int *)(a2[1] + v13) )
    return *a2 - 1 != v12;
  return 0;
}


// ===== 66a594 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(int,glitch::res::vector<int> const&,int,int &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        int a6)
{
  bool KeyFrame; // r6

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<int,1000>((int)a1, a3, a4, a5, a6);
  return glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) && KeyFrame;
}


// ===== 66a5e0 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(int,glitch::res::vector<int> const&,int,int &,float &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6,
        int a7)
{
  bool KeyFrame; // r9
  int v12; // r6
  float v13; // r0
  int v14; // r4

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<int,1000>((int)a1, a3, a4, a5, a7);
  if ( glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) )
    v12 = KeyFrame;
  else
    v12 = 0;
  if ( v12 )
  {
    v13 = (float)(a4 - (int)(float)*(int *)(a3[1] + 4 * *a5))
        / (float)((int)(float)*(int *)(a3[1] + 4 * (*a5 + 1)) - (int)(float)*(int *)(a3[1] + 4 * *a5));
    *a6 = v13;
    v14 = LODWORD(v13);
    if ( v13 >= 0.0 )
    {
      if ( v13 >= 1.0 )
        v14 = 1065353216;
    }
    else
    {
      v14 = 0;
    }
    *(_DWORD *)a6 = v14;
  }
  return v12;
}


// ===== 66a6d0 glitch::collada::SAnimationAccessor::findKeyFrameNo<uchar,30>(glitch::res::vector<int> const&,int,int &) =====
bool __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char,30>(
        int a1,
        _DWORD *a2,
        int a3,
        int *a4)
{
  int v4; // r5
  int v5; // r6
  int v6; // r7

  v4 = *a2 - 1;
  if ( v4 > 0 )
  {
    v5 = 1;
    do
    {
      v6 = (v5 + v4) >> 1;
      if ( (float)*(unsigned __int8 *)(a2[1] + v6) <= (float)((float)a3 / 33.333) )
        v5 = v6 + 1;
      else
        v4 = v6 - 1;
    }
    while ( v5 <= v4 );
  }
  *a4 = v4;
  return (float)a3 != (float)((float)*(unsigned __int8 *)(a2[1] + v4) * 33.333) && v4 != *a2 - 1;
}


// ===== 66a788 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<uchar,30>(int,glitch::res::vector<int> const&,int,int &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5)
{
  bool KeyFrame; // r6

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char,30>((int)a1, a3, a4, a5);
  return glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) && KeyFrame;
}


// ===== 66a7c4 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<uchar,30>(int,glitch::res::vector<int> const&,int,int &,float &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6)
{
  int KeyFrameNo; // r8
  float v9; // r0
  int v10; // r4

  KeyFrameNo = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(a1, a2, a3, a4, a5);
  if ( KeyFrameNo )
  {
    v9 = (float)(a4 - (int)(float)((float)*(unsigned __int8 *)(a3[1] + *a5) * 33.333))
       / (float)((int)(float)((float)*(unsigned __int8 *)(a3[1] + *a5 + 1) * 33.333)
               - (int)(float)((float)*(unsigned __int8 *)(a3[1] + *a5) * 33.333));
    *a6 = v9;
    v10 = LODWORD(v9);
    if ( v9 >= 0.0 )
    {
      if ( v9 >= 1.0 )
        v10 = 1065353216;
    }
    else
    {
      v10 = 0;
    }
    *(_DWORD *)a6 = v10;
  }
  return KeyFrameNo;
}


// ===== 66a894 glitch::collada::SAnimationAccessor::findKeyFrameNo<uchar,30>(glitch::res::vector<int> const&,int,int &,int) =====
bool __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char,30>(
        int a1,
        _DWORD *a2,
        int a3,
        int *a4,
        int a5)
{
  float v5; // r0
  int v6; // r8
  int v7; // r6
  int v8; // r5
  float v9; // r7
  _BOOL4 v10; // r10
  int v11; // r5
  int v12; // r11
  int v13; // r9
  float v16; // [sp+14h] [bp-8h]

  v5 = (float)a3 / 33.333;
  v6 = a2[1];
  v7 = *a2 - 1;
  v8 = a5 & ~(a5 >> 31);
  if ( v8 >= v7 )
    v8 = *a2 - 1;
  v9 = (float)a3 / 33.333;
  v10 = (float)*(unsigned __int8 *)(v6 + v8) > v5;
  if ( (float)*(unsigned __int8 *)(v6 + v8) > v5 && v8 > 0 )
  {
    v11 = v8 - 1;
    goto LABEL_7;
  }
  if ( v7 <= v8 )
  {
    v13 = v8;
    goto LABEL_13;
  }
  v13 = v8 + 1;
  v16 = (float)*(unsigned __int8 *)(v6 + v8 + 1);
  v12 = v8 + 1;
  if ( v16 >= v9 )
  {
    v12 = v8;
    v13 = v8;
    goto LABEL_9;
  }
  if ( v7 <= v13 )
  {
LABEL_13:
    v12 = v13;
    v11 = v13;
    goto LABEL_14;
  }
  v11 = v8 + 2;
  if ( (float)*(unsigned __int8 *)(v6 + v13 + 1) >= v9 )
  {
    v10 = v9 < v16;
    goto LABEL_9;
  }
LABEL_7:
  if ( v11 >= v7 )
  {
    v12 = v11;
    goto LABEL_14;
  }
  v12 = v11;
  v10 = v9 < (float)*(unsigned __int8 *)(v6 + v11);
  v13 = v11;
LABEL_9:
  if ( v10 || (float)*(unsigned __int8 *)(v6 + v13 + 1) < v9 )
    return glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char,30>(a1, a2, a3, a4);
  v11 = v13;
LABEL_14:
  *a4 = v11;
  return (float)a3 != (float)((float)*(unsigned __int8 *)(a2[1] + v12) * 33.333) && v11 != *a2 - 1;
}


// ===== 66aa68 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<uchar,30>(int,glitch::res::vector<int> const&,int,int &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        int a6)
{
  bool KeyFrame; // r6

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char,30>((int)a1, a3, a4, a5, a6);
  return glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) && KeyFrame;
}


// ===== 66aab4 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<uchar,30>(int,glitch::res::vector<int> const&,int,int &,float &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6,
        int a7)
{
  bool KeyFrame; // r9
  int v12; // r6
  float v13; // r0
  int v14; // r4

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned char,30>((int)a1, a3, a4, a5, a7);
  if ( glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) )
    v12 = KeyFrame;
  else
    v12 = 0;
  if ( v12 )
  {
    v13 = (float)(a4 - (int)(float)((float)*(unsigned __int8 *)(a3[1] + *a5) * 33.333))
        / (float)((int)(float)((float)*(unsigned __int8 *)(a3[1] + *a5 + 1) * 33.333)
                - (int)(float)((float)*(unsigned __int8 *)(a3[1] + *a5) * 33.333));
    *a6 = v13;
    v14 = LODWORD(v13);
    if ( v13 >= 0.0 )
    {
      if ( v13 >= 1.0 )
        v14 = 1065353216;
    }
    else
    {
      v14 = 0;
    }
    *(_DWORD *)a6 = v14;
  }
  return v12;
}


// ===== 66abb8 glitch::collada::SAnimationAccessor::findKeyFrameNo<ushort,30>(glitch::res::vector<int> const&,int,int &) =====
bool __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short,30>(
        int a1,
        _DWORD *a2,
        int a3,
        int *a4)
{
  int v4; // r6
  int v5; // r7
  int v6; // r5

  v4 = *a2 - 1;
  if ( v4 > 0 )
  {
    v5 = 1;
    do
    {
      v6 = (v5 + v4) >> 1;
      if ( (float)*(unsigned __int16 *)(a2[1] + 2 * v6) <= (float)((float)a3 / 33.333) )
        v5 = v6 + 1;
      else
        v4 = v6 - 1;
    }
    while ( v5 <= v4 );
  }
  *a4 = v4;
  return (float)a3 != (float)((float)*(unsigned __int16 *)(a2[1] + 2 * v4) * 33.333) && v4 != *a2 - 1;
}


// ===== 66ac78 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<ushort,30>(int,glitch::res::vector<int> const&,int,int &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5)
{
  bool KeyFrame; // r6

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short,30>((int)a1, a3, a4, a5);
  return glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) && KeyFrame;
}


// ===== 66acb4 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<ushort,30>(int,glitch::res::vector<int> const&,int,int &,float &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6)
{
  int KeyFrameNo; // r8
  float v9; // r0
  int v10; // r4

  KeyFrameNo = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(a1, a2, a3, a4, a5);
  if ( KeyFrameNo )
  {
    v9 = (float)(a4 - (int)(float)((float)*(unsigned __int16 *)(a3[1] + 2 * *a5) * 33.333))
       / (float)((int)(float)((float)*(unsigned __int16 *)(a3[1] + 2 * *a5 + 2) * 33.333)
               - (int)(float)((float)*(unsigned __int16 *)(a3[1] + 2 * *a5) * 33.333));
    *a6 = v9;
    v10 = LODWORD(v9);
    if ( v9 >= 0.0 )
    {
      if ( v9 >= 1.0 )
        v10 = 1065353216;
    }
    else
    {
      v10 = 0;
    }
    *(_DWORD *)a6 = v10;
  }
  return KeyFrameNo;
}


// ===== 66ad8c glitch::collada::SAnimationAccessor::findKeyFrameNo(int,glitch::res::vector<int> const&,int,int &,float &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6)
{
  int v6; // r12
  int v8; // r8
  int TimeInternalType; // r0
  int v14; // r0
  int v15; // r8
  int v16; // r8
  int v17; // r8

  v6 = *((_DWORD *)a1 + 2);
  v8 = *(unsigned __int8 *)(v6 + 13);
  if ( *(_BYTE *)(v6 + 13) )
  {
    if ( *(_DWORD *)(v6 + 4) != a4 )
    {
      *(_DWORD *)(v6 + 4) = a4;
      TimeInternalType = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, 0);
      if ( TimeInternalType == 3 )
      {
        v17 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v17 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v17 + 8),
                                 (float *)v17);
        v6 = *((_DWORD *)a1 + 2);
      }
      else if ( TimeInternalType == 4 )
      {
        v16 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v16 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v16 + 8),
                                 (float *)v16);
        v6 = *((_DWORD *)a1 + 2);
      }
      else
      {
        if ( TimeInternalType == 1 )
        {
          v15 = *((_DWORD *)a1 + 2);
          *(_BYTE *)(v15 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
                                   a1,
                                   a2,
                                   a3,
                                   a4,
                                   (int *)(v15 + 8),
                                   (float *)v15);
        }
        v6 = *((_DWORD *)a1 + 2);
      }
    }
    *a6 = *(float *)v6;
    *a5 = *(_DWORD *)(*((_DWORD *)a1 + 2) + 8);
    return *(unsigned __int8 *)(*((_DWORD *)a1 + 2) + 12);
  }
  else
  {
    v14 = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, *(unsigned __int8 *)(v6 + 13));
    switch ( v14 )
    {
      case 3:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(a1, a2, a3, a4, a5, a6);
      case 4:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(a1, a2, a3, a4, a5, a6);
      case 1:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(a1, a2, a3, a4, a5, a6);
      default:
        return v8;
    }
  }
}


// ===== 66af34 glitch::collada::SAnimationAccessor::findKeyFrameNo(int,int,int &,float &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        int *a4,
        float *a5)
{
  _DWORD *KeyTime; // r0

  KeyTime = (_DWORD *)glitch::collada::SAnimationAccessor::getKeyTime(this, a2);
  return glitch::collada::SAnimationAccessor::findKeyFrameNo(this, a2, KeyTime, a3, a4, a5);
}


// ===== 66af74 glitch::collada::SAnimationAccessor::findKeyFrameNo(int,glitch::res::vector<int> const&,int,int &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5)
{
  int v5; // r12
  int v7; // r7
  int TimeInternalType; // r0
  int v13; // r0
  int v14; // r7
  int v15; // r7
  int v16; // r7

  v5 = *((_DWORD *)a1 + 2);
  v7 = *(unsigned __int8 *)(v5 + 13);
  if ( *(_BYTE *)(v5 + 13) )
  {
    if ( *(_DWORD *)(v5 + 4) != a4 )
    {
      *(_DWORD *)(v5 + 4) = a4;
      TimeInternalType = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, 0);
      if ( TimeInternalType == 3 )
      {
        v16 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v16 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v16 + 8));
        v5 = *((_DWORD *)a1 + 2);
      }
      else if ( TimeInternalType == 4 )
      {
        v15 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v15 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v15 + 8));
        v5 = *((_DWORD *)a1 + 2);
      }
      else
      {
        if ( TimeInternalType == 1 )
        {
          v14 = *((_DWORD *)a1 + 2);
          *(_BYTE *)(v14 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
                                   a1,
                                   a2,
                                   a3,
                                   a4,
                                   (int *)(v14 + 8));
        }
        v5 = *((_DWORD *)a1 + 2);
      }
    }
    *a5 = *(_DWORD *)(v5 + 8);
    return *(unsigned __int8 *)(*((_DWORD *)a1 + 2) + 12);
  }
  else
  {
    v13 = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, *(unsigned __int8 *)(v5 + 13));
    switch ( v13 )
    {
      case 3:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(a1, a2, a3, a4, a5);
      case 4:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(a1, a2, a3, a4, a5);
      case 1:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(a1, a2, a3, a4, a5);
      default:
        return v7;
    }
  }
}


// ===== 66b0f4 glitch::collada::SAnimationAccessor::findKeyFrameNo(int,int,int &) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        int *a4)
{
  _DWORD *KeyTime; // r0

  KeyTime = (_DWORD *)glitch::collada::SAnimationAccessor::getKeyTime(this, a2);
  return glitch::collada::SAnimationAccessor::findKeyFrameNo(this, a2, KeyTime, a3, a4);
}


// ===== 66b130 glitch::collada::SAnimationAccessor::findKeyFrameNo<ushort,30>(glitch::res::vector<int> const&,int,int &,int) =====
bool __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short,30>(
        int a1,
        _DWORD *a2,
        int a3,
        int *a4,
        int a5)
{
  float v5; // r0
  int v6; // r8
  int v7; // r6
  int v8; // r5
  float v9; // r7
  _BOOL4 v10; // r10
  int v11; // r5
  int v12; // r3
  int v13; // r9
  int v14; // r11
  int v16; // r3

  v5 = (float)a3 / 33.333;
  v6 = a2[1];
  v7 = *a2 - 1;
  v8 = a5 & ~(a5 >> 31);
  if ( v8 >= v7 )
    v8 = *a2 - 1;
  v9 = (float)a3 / 33.333;
  v10 = (float)*(unsigned __int16 *)(v6 + 2 * v8) > v5;
  if ( (float)*(unsigned __int16 *)(v6 + 2 * v8) > v5 && v8 > 0 )
  {
    v11 = v8 - 1;
    v12 = 2 * v11;
    goto LABEL_7;
  }
  if ( v7 <= v8 )
  {
    v14 = v8;
    v16 = 2 * v8;
    goto LABEL_17;
  }
  v14 = v8 + 1;
  v13 = 2 * (v8 + 1);
  v16 = v13;
  if ( (float)*(unsigned __int16 *)(v6 + v13) >= v9 )
  {
    v13 = 2 * v8;
    v14 = v8;
    goto LABEL_9;
  }
  if ( v7 <= v14 )
  {
LABEL_17:
    v13 = v16;
LABEL_18:
    v11 = v14;
    goto LABEL_19;
  }
  v11 = v8 + 2;
  v12 = 2 * (v14 + 1);
  if ( (float)*(unsigned __int16 *)(v6 + v12) >= v9 )
  {
    v10 = v9 < (float)*(unsigned __int16 *)(v6 + v13);
    goto LABEL_9;
  }
LABEL_7:
  if ( v11 < v7 )
  {
    v13 = v12;
    v10 = v9 < (float)*(unsigned __int16 *)(v6 + v12);
    v14 = v11;
LABEL_9:
    if ( v10 || (float)*(unsigned __int16 *)(v6 + 2 * v14 + 2) < v9 )
      return glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short,30>(a1, a2, a3, a4);
    goto LABEL_18;
  }
  v13 = v12;
LABEL_19:
  *a4 = v11;
  return (float)a3 != (float)((float)*(unsigned __int16 *)(a2[1] + v13) * 33.333) && v11 != *a2 - 1;
}


// ===== 66b328 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<ushort,30>(int,glitch::res::vector<int> const&,int,int &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        int a6)
{
  bool KeyFrame; // r6

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short,30>((int)a1, a3, a4, a5, a6);
  return glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) && KeyFrame;
}


// ===== 66b374 glitch::collada::SAnimationAccessor::findKeyFrameNo(int,glitch::res::vector<int> const&,int,int &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        int a6)
{
  int v6; // r12
  int v8; // r7
  int TimeInternalType; // r0
  int v14; // r0
  int v15; // r7
  int v16; // r7
  int v17; // r7

  v6 = *((_DWORD *)a1 + 2);
  v8 = *(unsigned __int8 *)(v6 + 13);
  if ( *(_BYTE *)(v6 + 13) )
  {
    if ( *(_DWORD *)(v6 + 4) != a4 )
    {
      *(_DWORD *)(v6 + 4) = a4;
      TimeInternalType = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, 0);
      if ( TimeInternalType == 3 )
      {
        v17 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v17 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v17 + 8),
                                 a6);
        v6 = *((_DWORD *)a1 + 2);
      }
      else if ( TimeInternalType == 4 )
      {
        v16 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v16 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v16 + 8),
                                 a6);
        v6 = *((_DWORD *)a1 + 2);
      }
      else
      {
        if ( TimeInternalType == 1 )
        {
          v15 = *((_DWORD *)a1 + 2);
          *(_BYTE *)(v15 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
                                   a1,
                                   a2,
                                   a3,
                                   a4,
                                   (int *)(v15 + 8),
                                   a6);
        }
        v6 = *((_DWORD *)a1 + 2);
      }
    }
    *a5 = *(_DWORD *)(v6 + 8);
    return *(unsigned __int8 *)(*((_DWORD *)a1 + 2) + 12);
  }
  else
  {
    v14 = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, *(unsigned __int8 *)(v6 + 13));
    switch ( v14 )
    {
      case 3:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(a1, a2, a3, a4, a5, a6);
      case 4:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(a1, a2, a3, a4, a5, a6);
      case 1:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(a1, a2, a3, a4, a5, a6);
      default:
        return v8;
    }
  }
}


// ===== 66b510 glitch::collada::SAnimationAccessor::findKeyFrameNo(int,int,int &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        int *a4,
        int a5)
{
  _DWORD *KeyTime; // r0

  KeyTime = (_DWORD *)glitch::collada::SAnimationAccessor::getKeyTime(this, a2);
  return glitch::collada::SAnimationAccessor::findKeyFrameNo(this, a2, KeyTime, a3, a4, a5);
}


// ===== 66b550 glitch::collada::SAnimationAccessor::findKeyFrameNoEx<ushort,30>(int,glitch::res::vector<int> const&,int,int &,float &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6,
        int a7)
{
  bool KeyFrame; // r9
  int v12; // r6
  float v13; // r0
  int v14; // r4

  KeyFrame = glitch::collada::SAnimationAccessor::findKeyFrameNo<unsigned short,30>((int)a1, a3, a4, a5, a7);
  if ( glitch::collada::SAnimationAccessor::getInterpolationType(a1, a2) )
    v12 = KeyFrame;
  else
    v12 = 0;
  if ( v12 )
  {
    v13 = (float)(a4 - (int)(float)((float)*(unsigned __int16 *)(a3[1] + 2 * *a5) * 33.333))
        / (float)((int)(float)((float)*(unsigned __int16 *)(a3[1] + 2 * *a5 + 2) * 33.333)
                - (int)(float)((float)*(unsigned __int16 *)(a3[1] + 2 * *a5) * 33.333));
    *a6 = v13;
    v14 = LODWORD(v13);
    if ( v13 >= 0.0 )
    {
      if ( v13 >= 1.0 )
        v14 = 1065353216;
    }
    else
    {
      v14 = 0;
    }
    *(_DWORD *)a6 = v14;
  }
  return v12;
}


// ===== 66b65c glitch::collada::SAnimationAccessor::findKeyFrameNo(int,glitch::res::vector<int> const&,int,int &,float &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int *a5,
        float *a6,
        int a7)
{
  int v7; // r12
  int v9; // r8
  int TimeInternalType; // r0
  int v15; // r0
  int v16; // r8
  int v17; // r8
  int v18; // r8

  v7 = *((_DWORD *)a1 + 2);
  v9 = *(unsigned __int8 *)(v7 + 13);
  if ( *(_BYTE *)(v7 + 13) )
  {
    if ( *(_DWORD *)(v7 + 4) != a4 )
    {
      *(_DWORD *)(v7 + 4) = a4;
      TimeInternalType = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, 0);
      if ( TimeInternalType == 3 )
      {
        v18 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v18 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v18 + 8),
                                 (float *)v18,
                                 a7);
        v7 = *((_DWORD *)a1 + 2);
      }
      else if ( TimeInternalType == 4 )
      {
        v17 = *((_DWORD *)a1 + 2);
        *(_BYTE *)(v17 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(
                                 a1,
                                 a2,
                                 a3,
                                 a4,
                                 (int *)(v17 + 8),
                                 (float *)v17,
                                 a7);
        v7 = *((_DWORD *)a1 + 2);
      }
      else
      {
        if ( TimeInternalType == 1 )
        {
          v16 = *((_DWORD *)a1 + 2);
          *(_BYTE *)(v16 + 12) = glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(
                                   a1,
                                   a2,
                                   a3,
                                   a4,
                                   (int *)(v16 + 8),
                                   (float *)v16,
                                   a7);
        }
        v7 = *((_DWORD *)a1 + 2);
      }
    }
    *a6 = *(float *)v7;
    *a5 = *(_DWORD *)(*((_DWORD *)a1 + 2) + 8);
    return *(unsigned __int8 *)(*((_DWORD *)a1 + 2) + 12);
  }
  else
  {
    v15 = glitch::collada::SAnimationAccessor::getTimeInternalType(a1, *(unsigned __int8 *)(v7 + 13));
    switch ( v15 )
    {
      case 3:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned short,30>(a1, a2, a3, a4, a5, a6, a7);
      case 4:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<int,1000>(a1, a2, a3, a4, a5, a6, a7);
      case 1:
        return glitch::collada::SAnimationAccessor::findKeyFrameNoEx<unsigned char,30>(a1, a2, a3, a4, a5, a6, a7);
      default:
        return v9;
    }
  }
}


// ===== 66b814 glitch::collada::SAnimationAccessor::findKeyFrameNo(int,int,int &,float &,int) =====
int __fastcall glitch::collada::SAnimationAccessor::findKeyFrameNo(
        glitch::collada::SAnimationAccessor *this,
        int a2,
        int a3,
        int *a4,
        float *a5,
        int a6)
{
  _DWORD *KeyTime; // r0

  KeyTime = (_DWORD *)glitch::collada::SAnimationAccessor::getKeyTime(this, a2);
  return glitch::collada::SAnimationAccessor::findKeyFrameNo(this, a2, KeyTime, a3, a4, a5, a6);
}


// ===== 66b860 `global constructor keyed to'.._source_glitch_collada_SColladaAnimationAccessor.cpp =====
void `global constructor keyed to'.._source_glitch_collada_SColladaAnimationAccessor.cpp()
{
  dword_9F70DC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70D8 = 1056964608;
}


// ===== 66b880 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_985540;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_BYTE *)(result + 24) = 0;
  *(_DWORD *)(result + 36) = result + 24;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 32) = result + 24;
  return result;
}


// ===== 66b8dc glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(glitch::collada::SSkin &,glitch::collada::SSkinCache &,bool) =====
int __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(
        int result,
        int a2,
        int a3,
        char a4)
{
  *(_DWORD *)(result + 12) = a2;
  *(_DWORD *)result = off_985540;
  *(_DWORD *)(result + 16) = a3;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_BYTE *)(result + 24) = 0;
  *(_DWORD *)(result + 36) = result + 24;
  *(_BYTE *)(result + 4) = a4;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 32) = result + 24;
  return result;
}


// ===== 66b938 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::needOutputBuffer(void) =====
int __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::needOutputBuffer(
        glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *this)
{
  return 0;
}


// ===== 66b940 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::attach(glitch::scene::ISceneNode *) =====
int __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::attach(
        int this,
        glitch::scene::ISceneNode *a2)
{
  *(_DWORD *)(this + 20) = a2;
  return this;
}


// ===== 66b948 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP,glitch::video::IVideoDriver *,glitch::collada::SSkinBuffer &,glitch::scene::CMeshBuffer *) =====
int __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::onPrepareBufferForRendering(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  if ( a2 == 1 )
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)a1 + 24))(a1, a4, a5);
  return 16;
}


// ===== 66b978 `global constructor keyed to'.._source_glitch_collada_detail_CColladaHardwareMatrixSkinTechnique.cpp =====
void `global constructor keyed to'.._source_glitch_collada_detail_CColladaHardwareMatrixSkinTechnique.cpp()
{
  dword_9F70E8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F70E4 = 1056964608;
}


// ===== 66b998 std::priv::_Rb_tree<ushort,std::less<ushort>,std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<ushort const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
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
      std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      GlitchFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 66b9cc glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique(
        glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *this)
{
  int v1; // r1
  char *v3; // r5

  v1 = *((_DWORD *)this + 10);
  *(_DWORD *)this = off_985540;
  if ( v1 )
  {
    v3 = (char *)this + 24;
    std::priv::_Rb_tree<unsigned short,std::less<unsigned short>,std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,std::priv::_Select1st<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,std::priv::_MapTraitsT<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>>,glitch::core::SAllocator<std::pair<unsigned short const,glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::SHardwareData>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 24,
      *((_DWORD **)this + 7));
    *((_DWORD *)this + 9) = v3;
    *((_DWORD *)this + 10) = 0;
    *((_DWORD *)this + 8) = v3;
    *((_DWORD *)this + 7) = 0;
  }
  glitch::collada::detail::IColladaSkinTechnique::~IColladaSkinTechnique(this);
}


// ===== 66ba34 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique() =====
void __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique(
        glitch::collada::detail::CColladaHardwareMatrixSkinTechnique *this)
{
  glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique(this);
  LC_API_FREE_0(this);
}


// ===== 66ba50 glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::checkAvailabilityStatic(glitch::video::STechnique const&) =====
bool __fastcall glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::checkAvailabilityStatic(int a1)
{
  int v1; // r4
  int v2; // r3
  int v3; // r2
  int v4; // r12
  int v5; // r1

  v1 = *(unsigned __int8 *)(a1 + 4);
  if ( *(_BYTE *)(a1 + 4) )
  {
    v2 = *(_DWORD *)(a1 + 8);
    v3 = 0;
    v4 = 52 * (unsigned __int8)(v1 - 1) + 52;
    v1 = 0;
    do
    {
      v5 = *(_DWORD *)(v2 + v3 + 32);
      v3 += 52;
      v1 |= *(_DWORD *)(v5 + 56);
    }
    while ( v3 != v4 );
  }
  else
  {
    v2 = *(_DWORD *)(a1 + 8);
  }
  return glitch::video::IShader::getParameterID(*(_DWORD *)(v2 + 32), 11, 0, 0) != 0xFFFF
      && (v1 & 0x30000000) == 805306368;
}


// ===== 66bad8 std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::core::CMatrix4<float> const**,uint,glitch::core::CMatrix4<float> const* const&,std::__false_type const&) =====
char *__fastcall std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
      return (char *)std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
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


// ===== 66bc20 std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::CMatrix4<float> const*,glitch::core::SAllocator<glitch::core::CMatrix4<float> const*,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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

